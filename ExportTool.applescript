-- ExportTool for InDesign
-- version 1.9.2.11

-- created by medul6, Michael Heck, 2012
-- open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information
-- https://github.com/medul6/indesign-export-tool

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

-- global variables
global activeDocument
global openDocuments
global activeWindow
global pdfPresetsOnComputer
global preservedPageRange
global stopBool
global splittedRange
global splittedRangeMagic
global splittedMagic

global textOverflows

--test variables!!!
--global filePath
--global chosenPresetText
--global docName
--global newFilePath
--global pathItems
--global pageRange
--global newdocName
--global failedLinks
--global textOverflows
--global modifiedLinks
--global missingLinks
--global exportPreset

--properties!
property functionChoice : {"PDF-Export"}
property chosenPreset : {"sk-Screen"}
property pageRange : "all pages"
property linkCheckBool : false
property textCheckBool : false

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

tell application id "com.adobe.InDesign"
	
	-- set up some informations from the current state as variables
	set activeDocument to active document
	set activeWindow to active window
	
	tell PDF export preferences
		set preservedPageRange to page range -- always preserve original preferences 
	end tell
	
	--set openDocuments to every document
	set openDocuments to every document whose visible is true
	
	-- only pdf presets are captured that are not build in. we have our own! remove the whose clause to show all of them, or modify the whose clause to show only them.
	set pdfPresetsOnComputer to name of every PDF export preset whose name does not contain "["
	
	my functionChooser()
	
end tell

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on functionChooser()
	set functionChoice to choose from list {"PDF-Export (Einzelseiten)", "PDF-Export (Mehrseitig)", "IDML-Export"} default items functionChoice with prompt "Funktion wКhlen:" OK button name "Weiter!"
	
	if the functionChoice = {"PDF-Export (Einzelseiten)"} then
		pdfExporterSinglepage(functionChoice) of me
	else if the functionChoice = {"PDF-Export (Mehrseitig)"} then
		pdfExporterMultipage(functionChoice) of me
	else if the functionChoice = {"IDML-Export"} then
		idmlExporter(functionChoice) of me
	end if
	
end functionChooser

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on pdfExporterSinglepage(functionChoice)
	
	tell application id "com.adobe.InDesign"
		set openDocuments to active document
	end tell
	
	my linkCheck()
	my textOverflowCheck()
	if linkCheckBool is true and textCheckBool is true then
		set buttonName to functionChoice & "!" as text
		set chosenPreset to choose from list pdfPresetsOnComputer default items chosenPreset with prompt "PDF-Preset wКhlen:" OK button name buttonName
		if chosenPreset is not false then
			display dialog "Welche Seiten sollen exportiert werden?" & return & "Seiten mЯssen nicht zusammenhКngen, z.B. '2-3,8-19'" default answer pageRange
			set inputRange to (text returned of result)
			set pageRange to inputRange
			
			my inputRangeSplitter(inputRange)
			my MagicSplitter(splittedRange)
			
			tell application id "com.adobe.InDesign"
				
				repeat with x from 1 to count splittedMagic -- this iterates through magically splitted pages
					
					my pageRanger(splittedMagic's item x)
					
					set docName to name of activeDocument
					set newdocName to my fileExtensionRemover(docName)
					set filePath to (file path of activeDocument as string)
					set exportPreset to PDF export preset (chosenPreset as string)
					
					asynchronous export file activeDocument format PDF type to (filePath & newdocName & " s" & (splittedMagic's item x) & ".pdf") using exportPreset without showing options
					
				end repeat
				
				
				tell PDF export preferences
					set page range to preservedPageRange -- always restore original preferences
				end tell
				
				--wait for all tasks
				
			end tell
			
			if chosenPreset is not {"sk-TemporКr"} then
				--my displayTheEnd()
				--my displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)
				my displayNotificationLong("PDF Export gestartet", ((item 1 of chosenPreset) as string), "Dokument: " & newdocName)
				tell application id "com.adobe.InDesign"
					if not (exists (every event listener whose event type is equal to "afterExport")) then
						make event listener with properties {event type:"afterExport", handler:my myAfterExportNotificationHandler}
					end if
				end tell
			end if
		else
			return
		end if
	else
		return
	end if
end pdfExporterSinglepage

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on pdfExporterMultipage(functionChoice)
	my linkCheck()
	my textOverflowCheck()
	if linkCheckBool is true and textCheckBool is true then
		set buttonName to functionChoice & "!" as text
		set chosenPreset to choose from list pdfPresetsOnComputer default items chosenPreset with prompt "PDF-Preset wКhlen:" OK button name buttonName
		if chosenPreset is not false then
			--if chosenPreset is not {"sk-TemporКr"} then
			display dialog "Welche Seiten sollen exportiert werden?" & return & "(Wenn alle, dann 'all pages')" default answer pageRange buttons {"All Pages", "Weiter!"} default button "Weiter!"
			if button returned of result is "Weiter!" then
				set pageRange to (text returned of result)
			else
				set pageRange to "all pages"
			end if
		else
			return
		end if
		
		my pageRanger(pageRange)
		
		tell application id "com.adobe.InDesign"
			
			repeat with x from 1 to count openDocuments -- this iterates through all open documents
				
				set docName to name of openDocuments's item x
				set newdocName to my fileExtensionRemover(docName)
				set filePath to (file path of openDocuments's item x as string)
				set exportPreset to PDF export preset (chosenPreset as string)
				
				if chosenPreset is {"sk-TemporКr"} then
					-- this is temporarily disabled, because it just doesn't work that way :)
					--asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes
					asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset without showing options
				else
					asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset without showing options
				end if
				
			end repeat
			
			
			tell PDF export preferences
				set page range to preservedPageRange -- always restore original preferences
			end tell
			
			--wait for all tasks
			
		end tell
		
		if chosenPreset is not {"sk-TemporКr"} then
			--my displayTheEnd()
			--my displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")
			my displayNotificationLong("PDF Export gestartet", ((item 1 of chosenPreset) as string), ((count openDocuments) as string) & " Dokument(e) werden exportiert")
			tell application id "com.adobe.InDesign"
				if not (exists (every event listener whose event type is equal to "afterExport")) then
					make event listener with properties {event type:"afterExport", handler:my myAfterExportNotificationHandler}
				end if
			end tell
		end if
		
		--end if
	else
		return
	end if
end pdfExporterMultipage

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on idmlExporter(functionChoice)
	my linkCheck()
	my textOverflowCheck()
	if linkCheckBool is true and textCheckBool is true then
		tell application id "com.adobe.InDesign"
			repeat with x from 1 to count openDocuments -- this iterates through all open documents
				
				set docName to name of openDocuments's item x
				set newdocName to my fileExtensionRemover(docName)
				set filePath to (file path of openDocuments's item x as string)
				
				asynchronous export file openDocuments's item x format InDesign markup to (filePath & newdocName & ".idml")
				
			end repeat
		end tell
		--my displayTheEnd()
		--my displayNotificationShort("IDML Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")
		my displayNotificationLong("IDML Export gestartet", "Subtitle text", ((count openDocuments) as string) & " Dokument(e) werden exportiert")
		tell application id "com.adobe.InDesign"
			if not (exists (every event listener whose event type is equal to "afterExport")) then
				make event listener with properties {event type:"afterExport", handler:my myAfterExportNotificationHandler}
			end if
		end tell
	else
		return
	end if
end idmlExporter

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on fileExtensionRemover(docName)
	set oldDelimiters to AppleScript's text item delimiters -- always preserve original delimiters
	set AppleScript's text item delimiters to {"."}
	set pathItems to text items of (docName as text)
	if (count pathItems) > "2" then
		set pathItems to items 1 thru -2 of pathItems
	else
		set pathItems to item 1 of pathItems
	end if
	set newdocName to pathItems as string
	set AppleScript's text item delimiters to oldDelimiters -- always restore original delimiters
	return newdocName
end fileExtensionRemover

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on pageRanger(pageRange)
	tell application id "com.adobe.InDesign"
		(*
		tell PDF export preferences
			set preservedPageRange to page range -- always preserve original preferences 
		end tell
*)
		
		tell PDF export preferences
			set page range to pageRange as string
		end tell
	end tell
end pageRanger

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on linkCheck()
	tell application id "com.adobe.InDesign"
		
		set stopBool to true
		set linkCheckBool to true
		
		repeat with x from 1 to count openDocuments
			--out of date/missing link check
			set missingLinks to (every link of openDocuments's item x whose status contains link missing)
			set modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)
			set failedLinks to missingLinks & modifiedLinks
			if (count failedLinks) is not equal to 0 then
				set linkCheckBool to false
			end if
			if linkCheckBool is false then
				display dialog "Dokument hat modifizierte oder fehlende Links! " & return & "-----------------------------------------" & return & (name of openDocuments's item x) & return & "-----------------------------------------" & return & "hat modifizierte oder fehlende Links!" buttons {"Stop!", "Weiter!"} default button "Weiter!"
			end if
			try
				if button returned of result is "Stop!" then
					set stopBool to false
				else if button returned of result is "Weiter!" then
					set stopBool to true
					set linkCheckBool to true
				end if
			end try
		end repeat
		
	end tell
end linkCheck

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on textOverflowCheck()
	tell application id "com.adobe.InDesign"
		
		set stopBool to true
		set textCheckBool to true
		
		repeat with x from 1 to count openDocuments
			--text overflow check
			--set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not
			set textOverflows to (every text frame of openDocuments's item x whose overflows is true and item layer's visible is true) --this just checks visible layers
			--set missingLinks to (every link of openDocuments's item x whose status contains link missing)
			--set modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)
			--set failedLinks to missingLinks & modifiedLinks
			if (count textOverflows) is not equal to 0 then
				set textCheckBool to false
			end if
			if textCheckBool is false then
				display dialog "Dokument hat TextЯberhang! " & return & "-----------------------------------------" & return & (name of openDocuments's item x) & return & "-----------------------------------------" & return & "hat TextЯberhang." buttons {"Gehe zu erster Stelle!", "Stop!", "Weiter!"} default button "Weiter!"
			end if
			try
				if button returned of result is "Stop!" then
					set stopBool to false
				else if button returned of result is "Gehe zu erster Stelle!" then
					my textOverflowGoer()
					my zoomThePages(activeWindow)
					set stopBool to false
				else if button returned of result is "Weiter!" then
					set stopBool to false
					set textCheckBool to true
				end if
			end try
		end repeat
		
	end tell
end textOverflowCheck

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on inputRangeSplitter(inputRange)
	set oldDelimiters to AppleScript's text item delimiters -- always preserve original delimiters
	set AppleScript's text item delimiters to {","}
	set splittedRange to text items of inputRange
	set AppleScript's text item delimiters to oldDelimiters -- always restore original delimiters
	return splittedRange
end inputRangeSplitter

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on inputRangeSplitterFromToMagic(inputRange)
	set oldDelimiters to AppleScript's text item delimiters -- always preserve original delimiters
	set AppleScript's text item delimiters to {"-"}
	
	set splittedRangeMagic to text items of inputRange
	
	if (splittedRangeMagic's item 2 as integer) is not ((splittedRangeMagic's item 1 as integer) + 1) then
		set incrementValue to (splittedRangeMagic's item 1 as integer) + 1
		set splittedRangeMagicLoop to {(splittedRangeMagic's item 1 as integer)}
		
		--repeat with x from (splittedRangeMagic's item 1 as integer) to (splittedRangeMagic's item 2 as integer) -- this iterates through
		--	set splittedRangeMagicLoop to splittedRangeMagicLoop & (incrementValue + 1)
		--end repeat
		
		set repeatNumber to (splittedRangeMagic's item 2 as integer) - (splittedRangeMagic's item 1 as integer)
		repeat repeatNumber times -- this iterates through
			set splittedRangeMagicLoop to splittedRangeMagicLoop & incrementValue
			set incrementValue to incrementValue + 1
		end repeat
		
		
		set splittedRangeMagic to splittedRangeMagicLoop
	end if
	
	set AppleScript's text item delimiters to oldDelimiters -- always restore original delimiters
	return splittedRangeMagic
end inputRangeSplitterFromToMagic

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on inputRangeSplitterFromTo(inputRange)
	set oldDelimiters to AppleScript's text item delimiters -- always preserve original delimiters
	set AppleScript's text item delimiters to {"-"}
	set splittedRange to text items of inputRange
	set AppleScript's text item delimiters to oldDelimiters -- always restore original delimiters
	return splittedRange
end inputRangeSplitterFromTo

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on MagicSplitter(splittedRange)
	set oldDelimiters to AppleScript's text item delimiters -- always preserve original delimiters
	
	set AppleScript's text item delimiters to {"-"}
	set splittedMagic to {}
	
	--set splittedMagic to text items of splittedRange
	
	repeat with x from 1 to count splittedRange -- this iterates through
		if splittedRange's item x does not contain "-" then
			set splittedMagic to splittedMagic & splittedRange's item x
			--set splittedRange's item x to end of splittedMagic
		else if splittedRange's item x contains "-" then
			inputRangeSplitterFromToMagic(splittedRange's item x)
			--set xxx to splittedRange
			set splittedMagic to splittedMagic & splittedRangeMagic's items
			--set splittedRange's items to end of splittedMagic
		end if
		
	end repeat
	
	set AppleScript's text item delimiters to oldDelimiters -- always restore original delimiters
	return splittedMagic
end MagicSplitter

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on textOverflowGoer()
	tell application id "com.adobe.InDesign"
		
		if (count textOverflows) is not equal to 0 then
			set activePage to name of parent page of first item of textOverflows
			set active page of activeWindow to page activePage of parent of activeWindow
		else
			beep (3)
		end if
	end tell
	
end textOverflowGoer

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on zoomThePages(theWindow)
	tell application id "com.adobe.InDesign"
		
		tell theWindow
			select nothing
			zoom given fit page --spread
			if (count textOverflows) is not equal to 0 then
				set selection of activeWindow to first item of textOverflows
			end if
		end tell
		
	end tell
end zoomThePages

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on displayTheEnd()
	display dialog "Der Export wird jetzt im Hintergrund ausgefЯhrt" buttons "OK" default button "OK" giving up after 1
end displayTheEnd

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

--my displayNotificationLong("Title text", "Subtitle text", "Body text")
on displayNotificationLong(titleText, subtitleText, bodyText)
	display notification bodyText with title titleText subtitle subtitleText --sound name "default"
	--delay 0.5
end displayNotificationLong

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

--my displayNotificationShort("Title text", "Body text")
on displayNotificationShort(titleText, bodyText)
	display notification bodyText with title titleText --sound name "default"
	--delay 0.5
end displayNotificationShort

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on myAfterExportNotificationHandler()
	tell application id "com.adobe.InDesign"
		--"evt" is the event passed to this script by the event listener.
		set myEvent to evt
		--display dialog ("This event is the " & event type of myEvent & " event.")
		set myString to "Export beendet: " & name of target of myEvent
		display notification myString --with title "Body text"
	end tell
end myAfterExportNotificationHandler