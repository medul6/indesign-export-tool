FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.2.11     �   "   v e r s i o n   1 . 9 . 2 . 1 1      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ 0 activewindow activeWindow��   5  7 8 7 p       9 9 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   8  : ; : p       < < ������ (0 preservedpagerange preservedPageRange��   ;  = > = p       ? ? ������ 0 stopbool stopBool��   >  @ A @ p       B B ������ 0 splittedrange splittedRange��   A  C D C p       E E ������ (0 splittedrangemagic splittedRangeMagic��   D  F G F p       H H ������ 0 splittedmagic splittedMagic��   G  I J I l     ��������  ��  ��   J  K L K p       M M ������ 0 textoverflows textOverflows��   L  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R  test variables!!!    S � T T " t e s t   v a r i a b l e s ! ! ! Q  U V U l     �� W X��   W  global filePath    X � Y Y  g l o b a l   f i l e P a t h V  Z [ Z l     �� \ ]��   \  global chosenPresetText    ] � ^ ^ . g l o b a l   c h o s e n P r e s e t T e x t [  _ ` _ l     �� a b��   a  global docName    b � c c  g l o b a l   d o c N a m e `  d e d l     �� f g��   f  global newFilePath    g � h h $ g l o b a l   n e w F i l e P a t h e  i j i l     �� k l��   k  global pathItems    l � m m   g l o b a l   p a t h I t e m s j  n o n l     �� p q��   p  global pageRange    q � r r   g l o b a l   p a g e R a n g e o  s t s l     �� u v��   u  global newdocName    v � w w " g l o b a l   n e w d o c N a m e t  x y x l     �� z {��   z  global failedLinks    { � | | $ g l o b a l   f a i l e d L i n k s y  } ~ } l     ��  ���     global textOverflows    � � � � ( g l o b a l   t e x t O v e r f l o w s ~  � � � l     �� � ���   �  global modifiedLinks    � � � � ( g l o b a l   m o d i f i e d L i n k s �  � � � l     �� � ���   �  global missingLinks    � � � � & g l o b a l   m i s s i n g L i n k s �  � � � l     �� � ���   �  global exportPreset    � � � � & g l o b a l   e x p o r t P r e s e t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  properties!    � � � �  p r o p e r t i e s ! �  � � � j     �� ���  0 functionchoice functionChoice � J      � �  ��� � m      � � � � �  P D F - E x p o r t��   �  � � � j    	�� ��� 0 chosenpreset chosenPreset � J     � �  ��� � m     � � � � �  s k - S c r e e n��   �  � � � j   
 �� ��� 0 	pagerange 	pageRange � m   
  � � � � �  a l l   p a g e s �  � � � j    �� ��� 0 linkcheckbool linkCheckBool � m    ��
�� boovfals �  � � � j    �� ��� 0 textcheckbool textCheckBool � m    ��
�� boovfals �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z t �������������������������������������������������������������������������������������������������������������������    � � � � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  � � � l     ��������  ��  ��   �  � � � l    N ����� � O     N � � � k    M � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � C = set up some informations from the current state as variables    � � � � z   s e t   u p   s o m e   i n f o r m a t i o n s   f r o m   t h e   c u r r e n t   s t a t e   a s   v a r i a b l e s �  � � � r     � � � 1    ��
�� 
pacd � o      ����  0 activedocument activeDocument �  � � � r     � � � 1    ��
�� 
pacw � o      ���� 0 activewindow activeWindow �  � � � l   ��������  ��  ��   �  � � � O      � � � l    � � � � r     � � � 1    ��
�� 
pcty � o      ���� (0 preservedpagerange preservedPageRange � , & always preserve original preferences     � � � � L   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s   � 1    ��
�� 
DFpf �  � � � l  ! !��������  ��  ��   �  � � � l  ! !�� � ���   � ) #set openDocuments to every document    � � � � F s e t   o p e n D o c u m e n t s   t o   e v e r y   d o c u m e n t �  � � � r   ! / � � � 6  ! - � � � 2   ! $��
�� 
docu � =  % , � � � 1   & (��
�� 
pvis � m   ) +��
�� boovtrue � o      ���� 0 opendocuments openDocuments �  � � � l  0 0��������  ��  ��   �  � � � l  0 0�� � ���   � � � only pdf presets are captured that are not build in. we have our own! remove the whose clause to show all of them, or modify the whose clause to show only them.    � � � �B   o n l y   p d f   p r e s e t s   a r e   c a p t u r e d   t h a t   a r e   n o t   b u i l d   i n .   w e   h a v e   o u r   o w n !   r e m o v e   t h e   w h o s e   c l a u s e   t o   s h o w   a l l   o f   t h e m ,   o r   m o d i f y   t h e   w h o s e   c l a u s e   t o   s h o w   o n l y   t h e m . �  � � � r   0 E � � � 6  0 A � � � n   0 5 � � � 1   3 5��
�� 
pnam � 2   0 3��
�� 
PFst � H   6 @ � � E   6 ? � � � 1   7 9��
�� 
pnam � m   : > � � � � �  [ � o      ���� ,0 pdfpresetsoncomputer pdfPresetsOnComputer �  � � � l  F F��������  ��  ��   �    n  F K I   G K�������� "0 functionchooser functionChooser��  ��    f   F G �� l  L L��������  ��  ��  ��   � 5     ����
�� 
capp m     � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��   � 	 l     ��������  ��  ��  	 

 l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ��������  ��  ��    i     I      ����~�� "0 functionchooser functionChooser�  �~   k     h  r      I    �}
�} .gtqpchltns    @   @ ns   J       m      �   2 P D F - E x p o r t   ( E i n z e l s e i t e n ) !"! m    ## �$$ . P D F - E x p o r t   ( M e h r s e i t i g )" %�|% m    && �''  I D M L - E x p o r t�|   �{()
�{ 
inSL( o    �z�z  0 functionchoice functionChoice) �y*+
�y 
prmp* m    ,, �--   F u n k t i o n   w � h l e n :+ �x.�w
�x 
okbt. m    // �00  W e i t e r !�w   o      �v�v  0 functionchoice functionChoice 121 l   �u�t�s�u  �t  �s  2 343 Z    f567�r5 =    #898 l   :�q�p: o    �o�o  0 functionchoice functionChoice�q  �p  9 J    ";; <�n< m     == �>> 2 P D F - E x p o r t   ( E i n z e l s e i t e n )�n  6 n   & 0?@? I   ' 0�mA�l�m .0 pdfexportersinglepage pdfExporterSinglepageA B�kB o   ' ,�j�j  0 functionchoice functionChoice�k  �l  @  f   & '7 CDC =   3 <EFE l  3 8G�i�hG o   3 8�g�g  0 functionchoice functionChoice�i  �h  F J   8 ;HH I�fI m   8 9JJ �KK . P D F - E x p o r t   ( M e h r s e i t i g )�f  D LML n   ? INON I   @ I�eP�d�e ,0 pdfexportermultipage pdfExporterMultipageP Q�cQ o   @ E�b�b  0 functionchoice functionChoice�c  �d  O  f   ? @M RSR =   L UTUT l  L QV�a�`V o   L Q�_�_  0 functionchoice functionChoice�a  �`  U J   Q TWW X�^X m   Q RYY �ZZ  I D M L - E x p o r t�^  S [�][ n   X b\]\ I   Y b�\^�[�\ 0 idmlexporter idmlExporter^ _�Z_ o   Y ^�Y�Y  0 functionchoice functionChoice�Z  �[  ]  f   X Y�]  �r  4 `�X` l  g g�W�V�U�W  �V  �U  �X   aba l     �T�S�R�T  �S  �R  b cdc l     �Qef�Q  e z t �������������������������������������������������������������������������������������������������������������������   f �gg �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "d hih l     �P�O�N�P  �O  �N  i jkj i    lml I      �Mn�L�M .0 pdfexportersinglepage pdfExporterSinglepagen o�Ko o      �J�J  0 functionchoice functionChoice�K  �L  m k    �pp qrq l     �I�H�G�I  �H  �G  r sts O     uvu r    wxw 1    �F
�F 
pacdx o      �E�E 0 opendocuments openDocumentsv 5     �Dy�C
�D 
cappy m    zz �{{ $ c o m . a d o b e . I n D e s i g n
�C kfrmID  t |}| l   �B�A�@�B  �A  �@  } ~~ n   ��� I    �?�>�=�? 0 	linkcheck 	linkCheck�>  �=  �  f     ��� n   ��� I    �<�;�:�< &0 textoverflowcheck textOverflowCheck�;  �:  �  f    � ��9� Z   ����8�� F    .��� =   "��� o     �7�7 0 linkcheckbool linkCheckBool� m     !�6
�6 boovtrue� =  % ,��� o   % *�5�5 0 textcheckbool textCheckBool� m   * +�4
�4 boovtrue� k   1��� ��� r   1 8��� c   1 6��� b   1 4��� o   1 2�3�3  0 functionchoice functionChoice� m   2 3�� ���  !� m   4 5�2
�2 
ctxt� o      �1�1 0 
buttonname 
buttonName� ��� r   9 N��� I  9 H�0��
�0 .gtqpchltns    @   @ ns  � o   9 :�/�/ ,0 pdfpresetsoncomputer pdfPresetsOnComputer� �.��
�. 
inSL� o   ; @�-�- 0 chosenpreset chosenPreset� �,��
�, 
prmp� m   A B�� ��� $ P D F - P r e s e t   w � h l e n :� �+��*
�+ 
okbt� o   C D�)�) 0 
buttonname 
buttonName�*  � o      �(�( 0 chosenpreset chosenPreset� ��'� Z   O����&�� >  O V��� o   O T�%�% 0 chosenpreset chosenPreset� m   T U�$
�$ boovfals� k   Y��� ��� I  Y p�#��
�# .sysodlogaskr        TEXT� b   Y d��� b   Y `��� m   Y \�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   \ _�"
�" 
ret � m   ` c�� ��� f S e i t e n   m � s s e n   n i c h t   z u s a m m e n h � n g e n ,   z . B .   ' 2 - 3 , 8 - 1 9 '� �!�� 
�! 
dtxt� o   g l�� 0 	pagerange 	pageRange�   � ��� r   q z��� l  q x���� n   q x��� 1   t x�
� 
ttxt� 1   q t�
� 
rslt�  �  � o      �� 0 
inputrange 
inputRange� ��� r   { ���� o   { |�� 0 
inputrange 
inputRange� o      �� 0 	pagerange 	pageRange� ��� l  � �����  �  �  � ��� n  � ���� I   � ����� (0 inputrangesplitter inputRangeSplitter� ��� o   � ��� 0 
inputrange 
inputRange�  �  �  f   � �� ��� n  � ���� I   � ����� 0 magicsplitter MagicSplitter� ��� o   � ��� 0 splittedrange splittedRange�  �  �  f   � �� ��� l  � ����
�  �  �
  � ��� O   �8��� k   �7�� ��� l  � ��	���	  �  �  � ��� Y   �"������ l  ����� k   ��� ��� l  � �����  �  �  � ��� n  � ���� I   � ���� � 0 
pageranger 
pageRanger� ���� n  � ���� 4   � ����
�� 
cobj� o   � ����� 0 x  � o   � ����� 0 splittedmagic splittedMagic��  �   �  f   � �� ��� l  � ���������  ��  ��  � ��� r   � ���� n   � ���� 1   � ���
�� 
pnam� o   � �����  0 activedocument activeDocument� o      ���� 0 docname docName� ��� r   � ���� n  � ���� I   � ��� ���� ,0 fileextensionremover fileExtensionRemover  �� o   � ����� 0 docname docName��  ��  �  f   � �� o      ���� 0 
newdocname 
newdocName�  r   � � l  � ����� c   � � n   � �	
	 1   � ���
�� 
path
 o   � �����  0 activedocument activeDocument m   � ���
�� 
TEXT��  ��   o      ���� 0 filepath filePath  r   � � 4   � ���
�� 
PFst l  � ����� c   � � o   � ����� 0 chosenpreset chosenPreset m   � ���
�� 
TEXT��  ��   o      ���� 0 exportpreset exportPreset  l  � ���������  ��  ��    I  ���
�� .K2  exAscBKT        docu o   � �����  0 activedocument activeDocument ��
�� 
exft m   � ���
�� eXftt_PD ��
�� 
kfil l  ����� b   � b   �	 !  b   � "#" b   � �$%$ o   � ����� 0 filepath filePath% o   � ����� 0 
newdocname 
newdocName# m   � �&& �''    s! l  (����( n  )*) 4  ��+
�� 
cobj+ o  ���� 0 x  * o   ���� 0 splittedmagic splittedMagic��  ��   m  	,, �--  . p d f��  ��   ��./
�� 
usng. o  ���� 0 exportpreset exportPreset/ ��0��
�� 
imot0 m  ��
�� boovfals��   1��1 l ��������  ��  ��  ��  � 5 / this iterates through magically splitted pages   � �22 ^   t h i s   i t e r a t e s   t h r o u g h   m a g i c a l l y   s p l i t t e d   p a g e s� 0 x  � m   � ����� � I  � ���3��
�� .corecnte****       ****3 o   � ����� 0 splittedmagic splittedMagic��  �  � 454 l ##��������  ��  ��  5 676 l ##��������  ��  ��  7 898 O  #5:;: l +4<=>< r  +4?@? o  +.���� (0 preservedpagerange preservedPageRange@ 1  .3��
�� 
pcty= * $ always restore original preferences   > �AA H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s; 1  #(��
�� 
DFpf9 BCB l 66��������  ��  ��  C DED l 66��FG��  F  wait for all tasks   G �HH $ w a i t   f o r   a l l   t a s k sE I��I l 66��������  ��  ��  ��  � 5   � ���J��
�� 
cappJ m   � �KK �LL $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � MNM l 99��������  ��  ��  N O��O Z  9�PQ����P > 9DRSR o  9>���� 0 chosenpreset chosenPresetS J  >CTT U��U m  >AVV �WW  s k - T e m p o r � r��  Q k  G�XX YZY l GG��[\��  [  my displayTheEnd()   \ �]] $ m y   d i s p l a y T h e E n d ( )Z ^_^ l GG��`a��  ` T Nmy displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)   a �bb � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   " D o k u m e n t :   "   &   n e w d o c N a m e )_ cdc n Gbefe I  Hb��g���� 20 displaynotificationlong displayNotificationLongg hih m  HKjj �kk ( P D F   E x p o r t   g e s t a r t e ti lml l KYn����n c  KYopo l KUq����q n  KUrsr 4  PU��t
�� 
cobjt m  ST���� s o  KP���� 0 chosenpreset chosenPreset��  ��  p m  UX��
�� 
TEXT��  ��  m u��u b  Y^vwv m  Y\xx �yy  D o k u m e n t :  w o  \]���� 0 
newdocname 
newdocName��  ��  f  f  GHd z��z O  c�{|{ Z  m�}~����} H  m� l m������� I m������
�� .CoRedoexbool        obj � l m������� 6 m���� 2  mr��
�� 
EvLi� = u���� 1  vz��
�� 
pEvT� m  {�� ���  a f t e r E x p o r t��  ��  ��  ��  ��  ~ I ������
�� .corecrel****      � null� m  ����
�� 
EvLi� �����
�� 
prdt� K  ���� ����
�� 
pEvT� m  ���� ���  a f t e r E x p o r t� �����
�� 
pHnd� n ����� o  ������ D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�  f  ����  ��  ��  ��  | 5  cj�����
�� 
capp� m  eh�� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��  ��  ��  �&  � L  ������  �'  �8  � L  ������  �9  k ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i    ��� I      ���~� ,0 pdfexportermultipage pdfExporterMultipage� ��}� o      �|�|  0 functionchoice functionChoice�}  �~  � k    �� ��� n    ��� I    �{�z�y�{ 0 	linkcheck 	linkCheck�z  �y  �  f     � ��� n   ��� I    �x�w�v�x &0 textoverflowcheck textOverflowCheck�w  �v  �  f    � ��u� Z   ���t�� F    ��� =   ��� o    �s�s 0 linkcheckbool linkCheckBool� m    �r
�r boovtrue� =   ��� o    �q�q 0 textcheckbool textCheckBool� m    �p
�p boovtrue� k   "��� ��� r   " )��� c   " '��� b   " %��� o   " #�o�o  0 functionchoice functionChoice� m   # $�� ���  !� m   % &�n
�n 
ctxt� o      �m�m 0 
buttonname 
buttonName� ��� r   * ?��� I  * 9�l��
�l .gtqpchltns    @   @ ns  � o   * +�k�k ,0 pdfpresetsoncomputer pdfPresetsOnComputer� �j��
�j 
inSL� o   , 1�i�i 0 chosenpreset chosenPreset� �h��
�h 
prmp� m   2 3�� ��� $ P D F - P r e s e t   w � h l e n :� �g��f
�g 
okbt� o   4 5�e�e 0 
buttonname 
buttonName�f  � o      �d�d 0 chosenpreset chosenPreset� ��� Z   @ ����c�� >  @ G��� o   @ E�b�b 0 chosenpreset chosenPreset� m   E F�a
�a boovfals� k   J ��� ��� l  J J�`���`  � 1 +if chosenPreset is not {"sk-Tempor�r"} then   � ��� V i f   c h o s e n P r e s e t   i s   n o t   { " s k - T e m p o r � r " }   t h e n� ��� I  J j�_��
�_ .sysodlogaskr        TEXT� b   J O��� b   J M��� m   J K�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   K L�^
�^ 
ret � m   M N�� ��� : ( W e n n   a l l e ,   d a n n   ' a l l   p a g e s ' )� �]��
�] 
dtxt� o   P U�\�\ 0 	pagerange 	pageRange� �[��
�[ 
btns� J   X `�� ��� m   X [�� ���  A l l   P a g e s� ��Z� m   [ ^�� ���  W e i t e r !�Z  � �Y��X
�Y 
dflt� m   c f�� ���  W e i t e r !�X  � ��W� Z   k ����V�� =  k v��� n   k r� � 1   n r�U
�U 
bhit  1   k n�T
�T 
rslt� m   r u �  W e i t e r !� r   y � l  y ��S�R n   y � 1   | ��Q
�Q 
ttxt 1   y |�P
�P 
rslt�S  �R   o      �O�O 0 	pagerange 	pageRange�V  � r   � �	 m   � �

 �  a l l   p a g e s	 o      �N�N 0 	pagerange 	pageRange�W  �c  � L   � ��M�M  �  l  � ��L�K�J�L  �K  �J    n  � � I   � ��I�H�I 0 
pageranger 
pageRanger �G o   � ��F�F 0 	pagerange 	pageRange�G  �H    f   � �  l  � ��E�D�C�E  �D  �C    O   �w k   �v  l  � ��B�A�@�B  �A  �@    Y   �a�? !�> l  �\"#$" k   �\%% &'& l  � ��=�<�;�=  �<  �;  ' ()( r   � �*+* n   � �,-, 1   � ��:
�: 
pnam- n  � �./. 4   � ��90
�9 
cobj0 o   � ��8�8 0 x  / o   � ��7�7 0 opendocuments openDocuments+ o      �6�6 0 docname docName) 121 r   � �343 n  � �565 I   � ��57�4�5 ,0 fileextensionremover fileExtensionRemover7 8�38 o   � ��2�2 0 docname docName�3  �4  6  f   � �4 o      �1�1 0 
newdocname 
newdocName2 9:9 r   � �;<; l  � �=�0�/= c   � �>?> n   � �@A@ 1   � ��.
�. 
pathA n  � �BCB 4   � ��-D
�- 
cobjD o   � ��,�, 0 x  C o   � ��+�+ 0 opendocuments openDocuments? m   � ��*
�* 
TEXT�0  �/  < o      �)�) 0 filepath filePath: EFE r   � �GHG 4   � ��(I
�( 
PFstI l  � �J�'�&J c   � �KLK o   � ��%�% 0 chosenpreset chosenPresetL m   � ��$
�$ 
TEXT�'  �&  H o      �#�# 0 exportpreset exportPresetF MNM l  � ��"�!� �"  �!  �   N OPO Z   �ZQR�SQ =  �TUT o   ��� 0 chosenpreset chosenPresetU J  VV W�W m  XX �YY  s k - T e m p o r � r�  R k  1ZZ [\[ l �]^�  ] M G this is temporarily disabled, because it just doesn't work that way :)   ^ �__ �   t h i s   i s   t e m p o r a r i l y   d i s a b l e d ,   b e c a u s e   i t   j u s t   d o e s n ' t   w o r k   t h a t   w a y   : )\ `a` l �bc�  b � �asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes   c �dd a s y n c h r o n o u s   e x p o r t   f i l e   o p e n D o c u m e n t s ' s   i t e m   x   f o r m a t   P D F   t y p e   t o   ( f i l e P a t h   &   n e w d o c N a m e   &   " . p d f " )   u s i n g   e x p o r t P r e s e t   s h o w i n g   o p t i o n s   y e sa e�e I 1�fg
� .K2  exAscBKT        docuf n hih 4  �j
� 
cobjj o  �� 0 x  i o  �� 0 opendocuments openDocumentsg �kl
� 
exftk m  �
� eXftt_PDl �mn
� 
kfilm l #o��o b  #pqp b  rsr o  �� 0 filepath filePaths o  �� 0 
newdocname 
newdocNameq m  "tt �uu  . p d f�  �  n �vw
� 
usngv o  &'�� 0 exportpreset exportPresetw �x�
� 
imotx m  *+�

�
 boovfals�  �  �  S I 4Z�	yz
�	 .K2  exAscBKT        docuy n 4<{|{ 4  7<�}
� 
cobj} o  :;�� 0 x  | o  47�� 0 opendocuments openDocumentsz �~
� 
exft~ m  ?B�
� eXftt_PD ���
� 
kfil� l EL���� b  EL��� b  EH��� o  EF� �  0 filepath filePath� o  FG���� 0 
newdocname 
newdocName� m  HK�� ���  . p d f�  �  � ����
�� 
usng� o  OP���� 0 exportpreset exportPreset� �����
�� 
imot� m  ST��
�� boovfals��  P ���� l [[��������  ��  ��  ��  # / ) this iterates through all open documents   $ ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�? 0 x    m   � ����� ! I  � ������
�� .corecnte****       ****� o   � ����� 0 opendocuments openDocuments��  �>   ��� l bb��������  ��  ��  � ��� l bb��������  ��  ��  � ��� O  bt��� l js���� r  js��� o  jm���� (0 preservedpagerange preservedPageRange� 1  mr��
�� 
pcty� * $ always restore original preferences   � ��� H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s� 1  bg��
�� 
DFpf� ��� l uu��������  ��  ��  � ��� l uu������  �  wait for all tasks   � ��� $ w a i t   f o r   a l l   t a s k s� ���� l uu��������  ��  ��  ��   5   � ������
�� 
capp� m   � ��� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID   ��� l xx��������  ��  ��  � ��� Z  x�������� > x���� o  x}���� 0 chosenpreset chosenPreset� J  }��� ���� m  }��� ���  s k - T e m p o r � r��  � k  ���� ��� l ��������  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l ��������  � x rmy displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )� ��� n ����� I  ��������� 20 displaynotificationlong displayNotificationLong� ��� m  ���� ��� ( P D F   E x p o r t   g e s t a r t e t� ��� l �������� c  ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 chosenpreset chosenPreset��  ��  � m  ����
�� 
TEXT��  ��  � ���� b  ����� l �������� c  ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 opendocuments openDocuments��  ��  ��  � m  ����
�� 
TEXT��  ��  � m  ���� ��� <   D o k u m e n t ( e )   w e r d e n   e x p o r t i e r t��  ��  �  f  ��� ���� O  ����� Z  ��������� H  ���� l �������� I �������
�� .CoRedoexbool        obj � l �������� 6 ����� 2  ����
�� 
EvLi� = ����� 1  ����
�� 
pEvT� m  ���� ���  a f t e r E x p o r t��  ��  ��  ��  ��  � I ������
�� .corecrel****      � null� m  ����
�� 
EvLi� �����
�� 
prdt� K  ���� ����
�� 
pEvT� m  ���� ���  a f t e r E x p o r t� �����
�� 
pHnd� n ����� o  ������ D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�  f  ����  ��  ��  ��  � 5  �������
�� 
capp� m  ���� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��  ��  � ��� l ����������  ��  ��  � ���� l ��������  �  end if   � ���  e n d   i f��  �t  � L   ����  �u  � ��� l     ��������  ��  ��  �    l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ��������  ��  ��    i    "	
	 I      ������ 0 idmlexporter idmlExporter �� o      ����  0 functionchoice functionChoice��  ��  
 k     �  n     I    �������� 0 	linkcheck 	linkCheck��  ��    f       n    I    �������� &0 textoverflowcheck textOverflowCheck��  ��    f     �� Z    ��� F     =    o    ���� 0 linkcheckbool linkCheckBool m    ��
�� boovtrue =    o    ���� 0 textcheckbool textCheckBool m    ��
�� boovtrue k   " �   !"! O   " q#$# Y   * p%��&'��% l  8 k()*( k   8 k++ ,-, l  8 8��������  ��  ��  - ./. r   8 @010 n   8 >232 1   < >��
�� 
pnam3 n  8 <454 4   9 <��6
�� 
cobj6 o   : ;���� 0 x  5 o   8 9���� 0 opendocuments openDocuments1 o      ���� 0 docname docName/ 787 r   A I9:9 n  A G;<; I   B G��=���� ,0 fileextensionremover fileExtensionRemover= >��> o   B C���� 0 docname docName��  ��  <  f   A B: o      ���� 0 
newdocname 
newdocName8 ?@? r   J TABA l  J RC����C c   J RDED n   J PFGF 1   N P�
� 
pathG n  J NHIH 4   K N�~J
�~ 
cobjJ o   L M�}�} 0 x  I o   J K�|�| 0 opendocuments openDocumentsE m   P Q�{
�{ 
TEXT��  ��  B o      �z�z 0 filepath filePath@ KLK l  U U�y�x�w�y  �x  �w  L MNM I  U i�vOP
�v .K2  exAscBKT        docuO n  U YQRQ 4   V Y�uS
�u 
cobjS o   W X�t�t 0 x  R o   U V�s�s 0 opendocuments openDocumentsP �rTU
�r 
exftT m   Z [�q
�q eXftidmlU �pV�o
�p 
kfilV l  \ cW�n�mW b   \ cXYX b   \ _Z[Z o   \ ]�l�l 0 filepath filePath[ o   ] ^�k�k 0 
newdocname 
newdocNameY m   _ b\\ �]] 
 . i d m l�n  �m  �o  N ^�j^ l  j j�i�h�g�i  �h  �g  �j  ) / ) this iterates through all open documents   * �__ R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�� 0 x  & m   - .�f�f ' I  . 3�e`�d
�e .corecnte****       ****` o   . /�c�c 0 opendocuments openDocuments�d  ��  $ 5   " '�ba�a
�b 
cappa m   $ %bb �cc $ c o m . a d o b e . I n D e s i g n
�a kfrmID  " ded l  r r�`fg�`  f  my displayTheEnd()   g �hh $ m y   d i s p l a y T h e E n d ( )e iji l  r r�_kl�_  k y smy displayNotificationShort("IDML Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   l �mm � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " I D M L   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )j non n  r �pqp I   s ��^r�]�^ 20 displaynotificationlong displayNotificationLongr sts m   s vuu �vv * I D M L   E x p o r t   g e s t a r t e tt wxw m   v yyy �zz  S u b t i t l e   t e x tx {�\{ b   y �|}| l  y �~�[�Z~ c   y �� l  y ~��Y�X� I  y ~�W��V
�W .corecnte****       ****� o   y z�U�U 0 opendocuments openDocuments�V  �Y  �X  � m   ~ �T
�T 
TEXT�[  �Z  } m   � ��� ��� <   D o k u m e n t ( e )   w e r d e n   e x p o r t i e r t�\  �]  q  f   r so ��S� O   � ���� Z   � ����R�Q� H   � ��� l  � ���P�O� I  � ��N��M
�N .CoRedoexbool        obj � l  � ���L�K� 6  � ���� 2   � ��J
�J 
EvLi� =  � ���� 1   � ��I
�I 
pEvT� m   � ��� ���  a f t e r E x p o r t�L  �K  �M  �P  �O  � I  � ��H��
�H .corecrel****      � null� m   � ��G
�G 
EvLi� �F��E
�F 
prdt� K   � ��� �D��
�D 
pEvT� m   � ��� ���  a f t e r E x p o r t� �C��B
�C 
pHnd� n  � ���� o   � ��A�A D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�  f   � ��B  �E  �R  �Q  � 5   � ��@��?
�@ 
capp� m   � ��� ��� $ c o m . a d o b e . I n D e s i g n
�? kfrmID  �S  ��   L   � ��>�>  ��   ��� l     �=�<�;�=  �<  �;  � ��� l     �:���:  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �9�8�7�9  �8  �7  � ��� i   # &��� I      �6��5�6 ,0 fileextensionremover fileExtensionRemover� ��4� o      �3�3 0 docname docName�4  �5  � k     E�� ��� l    ���� r     ��� n    ��� 1    �2
�2 
txdl� 1     �1
�1 
ascr� o      �0�0 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ��/� m    �� ���  .�/  � n     ��� 1   
 �.
�. 
txdl� 1   	 
�-
�- 
ascr� ��� r    ��� n    ��� 2   �,
�, 
citm� l   ��+�*� c    ��� o    �)�) 0 docname docName� m    �(
�( 
ctxt�+  �*  � o      �'�' 0 	pathitems 	pathItems� ��� Z    6���&�� ?    ��� l   ��%�$� I   �#��"
�# .corecnte****       ****� o    �!�! 0 	pathitems 	pathItems�"  �%  �$  � m    �� ���  2� r     -��� n     +��� 7  ! +� ��
�  
cobj� m   % '�� � m   ( *����� o     !�� 0 	pathitems 	pathItems� o      �� 0 	pathitems 	pathItems�&  � r   0 6��� n   0 4��� 4   1 4��
� 
cobj� m   2 3�� � o   0 1�� 0 	pathitems 	pathItems� o      �� 0 	pathitems 	pathItems� ��� r   7 <��� c   7 :��� o   7 8�� 0 	pathitems 	pathItems� m   8 9�
� 
TEXT� o      �� 0 
newdocname 
newdocName� ��� l  = B���� r   = B��� o   = >�� 0 olddelimiters oldDelimiters� n     ��� 1   ? A�
� 
txdl� 1   > ?�
� 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��� L   C E�� o   C D�� 0 
newdocname 
newdocName�  � ��� l     ����  �  �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��
�	�  �
  �	  �    i   ' * I      ��� 0 
pageranger 
pageRanger � o      �� 0 	pagerange 	pageRange�  �   O      k     	
	 l    ��   � {
		tell PDF export preferences
			set preservedPageRange to page range -- always preserve original preferences 
		end tell
    � � 
 	 	 t e l l   P D F   e x p o r t   p r e f e r e n c e s 
 	 	 	 s e t   p r e s e r v e d P a g e R a n g e   t o   p a g e   r a n g e   - -   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s   
 	 	 e n d   t e l l 

  l   ����  �  �   �  O     r     c     o    ���� 0 	pagerange 	pageRange m    ��
�� 
TEXT 1    ��
�� 
pcty 1    ��
�� 
DFpf�    5     ����
�� 
capp m     � $ c o m . a d o b e . I n D e s i g n
�� kfrmID    l     ��������  ��  ��    l     ����   z t �������������������������������������������������������������������������������������������������������������������    �   �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " !"! l     ��������  ��  ��  " #$# l     ��%&��  % z t �������������������������������������������������������������������������������������������������������������������   & �'' �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "$ ()( l     ��������  ��  ��  ) *+* i   + .,-, I      �������� 0 	linkcheck 	linkCheck��  ��  - O     �./. k    �00 121 l   ��������  ��  ��  2 343 r    565 m    	��
�� boovtrue6 o      ���� 0 stopbool stopBool4 787 r    9:9 m    ��
�� boovtrue: o      ���� 0 linkcheckbool linkCheckBool8 ;<; l   ��������  ��  ��  < =>= Y    �?��@A��? k   " �BB CDC l  " "��EF��  E $ out of date/missing link check   F �GG < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c kD HIH r   " 3JKJ l  " 1L����L 6  " 1MNM n   " (OPO 2   & (��
�� 
clnkP n  " &QRQ 4   # &��S
�� 
cobjS o   $ %���� 0 x  R o   " #���� 0 opendocuments openDocumentsN E   ) 0TUT 1   * ,��
�� 
sttsU m   - /��
�� sttelmis��  ��  K o      ���� 0 missinglinks missingLinksI VWV r   4 EXYX l  4 CZ����Z 6  4 C[\[ n   4 :]^] 2   8 :��
�� 
clnk^ n  4 8_`_ 4   5 8��a
�� 
cobja o   6 7���� 0 x  ` o   4 5���� 0 opendocuments openDocuments\ E   ; Bbcb 1   < >��
�� 
sttsc m   ? A��
�� sttelood��  ��  Y o      ���� 0 modifiedlinks modifiedLinksW ded r   F Kfgf b   F Ihih o   F G���� 0 missinglinks missingLinksi o   G H���� 0 modifiedlinks modifiedLinksg o      ���� 0 failedlinks failedLinkse jkj Z   L alm����l >  L Snon l  L Qp����p I  L Q��q��
�� .corecnte****       ****q o   L M���� 0 failedlinks failedLinks��  ��  ��  o m   Q R����  m r   V ]rsr m   V W��
�� boovfalss o      ���� 0 linkcheckbool linkCheckBool��  ��  k tut Z   b �vw����v =  b ixyx o   b g���� 0 linkcheckbool linkCheckBooly m   g h��
�� boovfalsw I  l ���z{
�� .sysodlogaskr        TEXTz b   l �|}| b   l �~~ b   l ���� b   l |��� b   l z��� b   l s��� b   l q��� b   l o��� m   l m�� ��� ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  � o   m n��
�� 
ret � m   o p�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   q r��
�� 
ret � l  s y������ n   s y��� 1   w y��
�� 
pnam� n  s w��� 4   t w���
�� 
cobj� o   u v���� 0 x  � o   s t���� 0 opendocuments openDocuments��  ��  � o   z {��
�� 
ret � m   | �� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - o   � ���
�� 
ret } m   � ��� ��� J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !{ ����
�� 
btns� J   � ��� ��� m   � ��� ��� 
 S t o p !� ���� m   � ��� ���  W e i t e r !��  � �����
�� 
dflt� m   � ��� ���  W e i t e r !��  ��  ��  u ���� Q   � ������ Z   � ������� =  � ���� n   � ���� 1   � ���
�� 
bhit� 1   � ���
�� 
rslt� m   � ��� ��� 
 S t o p !� r   � ���� m   � ���
�� boovfals� o      ���� 0 stopbool stopBool� ��� =  � ���� n   � ���� 1   � ���
�� 
bhit� 1   � ���
�� 
rslt� m   � ��� ���  W e i t e r !� ���� k   � ��� ��� r   � ���� m   � ���
�� boovtrue� o      ���� 0 stopbool stopBool� ���� r   � ���� m   � ���
�� boovtrue� o      ���� 0 linkcheckbool linkCheckBool��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 x  @ m    ���� A I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  > ���� l  � ���������  ��  ��  ��  / 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  + ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   / 2��� I      �������� &0 textoverflowcheck textOverflowCheck��  ��  � O    ��� k   �� ��� l   ��������  ��  ��  � ��� r    ��� m    	��
�� boovtrue� o      ���� 0 stopbool stopBool� ��� r    ��� m    ��
�� boovtrue� o      ���� 0 textcheckbool textCheckBool� ��� l   ��~�}�  �~  �}  � ��� Y    ��|���{� k   " ��� ��� l  " "�z���z  �  text overflow check   � ��� & t e x t   o v e r f l o w   c h e c k� ��� l  " "�y���y  � � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not   � ��� s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o t� ��� l  " ?���� r   " ?��� l  " =��x�w� 6  " =� � n   " ( 2   & (�v
�v 
txtf n  " & 4   # &�u
�u 
cobj o   $ %�t�t 0 x   o   " #�s�s 0 opendocuments openDocuments  F   ) < =  * 1	 1   + -�r
�r 
OVRF	 m   . 0�q
�q boovtrue =  2 ;

 n  3 7 1   5 7�p
�p 
pvis 1   3 5�o
�o 
pilr m   8 :�n
�n boovtrue�x  �w  � o      �m�m 0 textoverflows textOverflows� % this just checks visible layers   � � > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r s�  l  @ @�l�l   c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)    � � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )  l  @ @�k�k   h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)    � � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )  l  @ @�j�j   5 /set failedLinks to missingLinks & modifiedLinks    � ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k s  Z   @ U !�i�h  >  @ G"#" l  @ E$�g�f$ I  @ E�e%�d
�e .corecnte****       ****% o   @ A�c�c 0 textoverflows textOverflows�d  �g  �f  # m   E F�b�b  ! r   J Q&'& m   J K�a
�a boovfals' o      �`�` 0 textcheckbool textCheckBool�i  �h   ()( Z   V �*+�_�^* =  V ],-, o   V [�]�] 0 textcheckbool textCheckBool- m   [ \�\
�\ boovfals+ I  ` ��[./
�[ .sysodlogaskr        TEXT. b   ` |010 b   ` x232 b   ` v454 b   ` r676 b   ` p898 b   ` g:;: b   ` e<=< b   ` c>?> m   ` a@@ �AA 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  ? o   a b�Z
�Z 
ret = m   c dBB �CC R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -; o   e f�Y
�Y 
ret 9 l  g oD�X�WD n   g oEFE 1   k o�V
�V 
pnamF n  g kGHG 4   h k�UI
�U 
cobjI o   i j�T�T 0 x  H o   g h�S�S 0 opendocuments openDocuments�X  �W  7 o   p q�R
�R 
ret 5 m   r uJJ �KK R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -3 o   v w�Q
�Q 
ret 1 m   x {LL �MM " h a t   T e x t � b e r h a n g ./ �PNO
�P 
btnsN J    �PP QRQ m    �SS �TT , G e h e   z u   e r s t e r   S t e l l e !R UVU m   � �WW �XX 
 S t o p !V Y�OY m   � �ZZ �[[  W e i t e r !�O  O �N\�M
�N 
dflt\ m   � �]] �^^  W e i t e r !�M  �_  �^  ) _�L_ Q   � �`a�K` Z   � �bcd�Jb =  � �efe n   � �ghg 1   � ��I
�I 
bhith 1   � ��H
�H 
rsltf m   � �ii �jj 
 S t o p !c r   � �klk m   � ��G
�G boovfalsl o      �F�F 0 stopbool stopBoold mnm =  � �opo n   � �qrq 1   � ��E
�E 
bhitr 1   � ��D
�D 
rsltp m   � �ss �tt , G e h e   z u   e r s t e r   S t e l l e !n uvu k   � �ww xyx n  � �z{z I   � ��C�B�A�C $0 textoverflowgoer textOverflowGoer�B  �A  {  f   � �y |}| n  � �~~ I   � ��@��?�@ 0 zoomthepages zoomThePages� ��>� o   � ��=�= 0 activewindow activeWindow�>  �?    f   � �} ��<� r   � ���� m   � ��;
�; boovfals� o      �:�: 0 stopbool stopBool�<  v ��� =  � ���� n   � ���� 1   � ��9
�9 
bhit� 1   � ��8
�8 
rslt� m   � ��� ���  W e i t e r !� ��7� k   � ��� ��� r   � ���� m   � ��6
�6 boovfals� o      �5�5 0 stopbool stopBool� ��4� r   � ���� m   � ��3
�3 boovtrue� o      �2�2 0 textcheckbool textCheckBool�4  �7  �J  a R      �1�0�/
�1 .ascrerr ****      � ****�0  �/  �K  �L  �| 0 x  � m    �.�. � I   �-��,
�- .corecnte****       ****� o    �+�+ 0 opendocuments openDocuments�,  �{  � ��*� l �)�(�'�)  �(  �'  �*  � 5     �&��%
�& 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�% kfrmID  � ��� l     �$�#�"�$  �#  �"  � ��� l     �!���!  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     � ���   �  �  � ��� i   3 6��� I      ���� (0 inputrangesplitter inputRangeSplitter� ��� o      �� 0 
inputrange 
inputRange�  �  � k     �� ��� l    ���� r     ��� n    ��� 1    �
� 
txdl� 1     �
� 
ascr� o      �� 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ��� m    �� ���  ,�  � n     ��� 1   
 �
� 
txdl� 1   	 
�
� 
ascr� ��� r    ��� n    ��� 2   �
� 
citm� o    �� 0 
inputrange 
inputRange� o      �� 0 splittedrange splittedRange� ��� l   ���� r    ��� o    �� 0 olddelimiters oldDelimiters� n     ��� 1    �
� 
txdl� 1    �
� 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��� L    �� o    �� 0 splittedrange splittedRange�  � ��� l     ��
�	�  �
  �	  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� i   7 :��� I      ���� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic� ��� o      �� 0 
inputrange 
inputRange�  �  � k     t�� ��� l    ���� r     ��� n    ��� 1    � 
�  
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ���� m    �� ���  -��  � n     ��� 1   
 ��
�� 
txdl� 1   	 
��
�� 
ascr� ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 
inputrange 
inputRange� o      ���� (0 splittedrangemagic splittedRangeMagic� ��� l   ��������  ��  ��  � � � Z    k���� >   # l   ���� c     n   	 4    ��

�� 
cobj
 m    ���� 	 o    ���� (0 splittedrangemagic splittedRangeMagic m    ��
�� 
long��  ��   l   "���� [    " l    ���� c      n    4    ��
�� 
cobj m    ����  o    ���� (0 splittedrangemagic splittedRangeMagic m    ��
�� 
long��  ��   m     !���� ��  ��   k   & g  r   & 0 [   & . l  & ,���� c   & , n  & * 4   ' *�� 
�� 
cobj  m   ( )����  o   & '���� (0 splittedrangemagic splittedRangeMagic m   * +��
�� 
long��  ��   m   , -����  o      ����  0 incrementvalue incrementValue !"! r   1 ;#$# J   1 9%% &��& l  1 7'����' c   1 7()( n  1 5*+* 4   2 5��,
�� 
cobj, m   3 4���� + o   1 2���� (0 splittedrangemagic splittedRangeMagic) m   5 6��
�� 
long��  ��  ��  $ o      ���� 00 splittedrangemagicloop splittedRangeMagicLoop" -.- l  < <��������  ��  ��  . /0/ l  < <��12��  1 � �repeat with x from (splittedRangeMagic's item 1 as integer) to (splittedRangeMagic's item 2 as integer) -- this iterates through   2 �33  r e p e a t   w i t h   x   f r o m   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   1   a s   i n t e g e r )   t o   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   2   a s   i n t e g e r )   - -   t h i s   i t e r a t e s   t h r o u g h0 454 l  < <��67��  6 R L	set splittedRangeMagicLoop to splittedRangeMagicLoop & (incrementValue + 1)   7 �88 � 	 s e t   s p l i t t e d R a n g e M a g i c L o o p   t o   s p l i t t e d R a n g e M a g i c L o o p   &   ( i n c r e m e n t V a l u e   +   1 )5 9:9 l  < <��;<��  ;  
end repeat   < �==  e n d   r e p e a t: >?> l  < <��������  ��  ��  ? @A@ r   < KBCB \   < IDED l  < BF����F c   < BGHG n  < @IJI 4   = @��K
�� 
cobjK m   > ?���� J o   < =���� (0 splittedrangemagic splittedRangeMagicH m   @ A��
�� 
long��  ��  E l  B HL����L c   B HMNM n  B FOPO 4   C F��Q
�� 
cobjQ m   D E���� P o   B C���� (0 splittedrangemagic splittedRangeMagicN m   F G��
�� 
long��  ��  C o      ���� 0 repeatnumber repeatNumberA RSR U   L cTUT l  S ^VWXV k   S ^YY Z[Z r   S X\]\ b   S V^_^ o   S T���� 00 splittedrangemagicloop splittedRangeMagicLoop_ o   T U����  0 incrementvalue incrementValue] o      ���� 00 splittedrangemagicloop splittedRangeMagicLoop[ `��` r   Y ^aba [   Y \cdc o   Y Z����  0 incrementvalue incrementValued m   Z [���� b o      ����  0 incrementvalue incrementValue��  W   this iterates through   X �ee ,   t h i s   i t e r a t e s   t h r o u g hU o   O P���� 0 repeatnumber repeatNumberS fgf l  d d��������  ��  ��  g hih l  d d��������  ��  ��  i j��j r   d gklk o   d e���� 00 splittedrangemagicloop splittedRangeMagicLoopl o      ���� (0 splittedrangemagic splittedRangeMagic��  ��  ��    mnm l  l l��������  ��  ��  n opo l  l qqrsq r   l qtut o   l m���� 0 olddelimiters oldDelimitersu n     vwv 1   n p��
�� 
txdlw 1   m n��
�� 
ascrr ) # always restore original delimiters   s �xx F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r sp y��y L   r tzz o   r s���� (0 splittedrangemagic splittedRangeMagic��  � {|{ l     ��������  ��  ��  | }~} l     �����   z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "~ ��� l     ��������  ��  ��  � ��� i   ; >��� I      ������� 40 inputrangesplitterfromto inputRangeSplitterFromTo� ���� o      ���� 0 
inputrange 
inputRange��  ��  � k     �� ��� l    ���� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ���� m    �� ���  -��  � n     ��� 1   
 ��
�� 
txdl� 1   	 
��
�� 
ascr� ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 
inputrange 
inputRange� o      ���� 0 splittedrange splittedRange� ��� l   ���� r    ��� o    ���� 0 olddelimiters oldDelimiters� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ���� L    �� o    ���� 0 splittedrange splittedRange��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   ? B��� I      ������� 0 magicsplitter MagicSplitter� ��� o      �~�~ 0 splittedrange splittedRange�  ��  � k     h�� ��� l    ���� r     ��� n    ��� 1    �}
�} 
txdl� 1     �|
�| 
ascr� o      �{�{ 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� l   �z�y�x�z  �y  �x  � ��� r    ��� J    	�� ��w� m    �� ���  -�w  � n     ��� 1   
 �v
�v 
txdl� 1   	 
�u
�u 
ascr� ��� r    ��� J    �t�t  � o      �s�s 0 splittedmagic splittedMagic� ��� l   �r�q�p�r  �q  �p  � ��� l   �o���o  � 6 0set splittedMagic to text items of splittedRange   � ��� ` s e t   s p l i t t e d M a g i c   t o   t e x t   i t e m s   o f   s p l i t t e d R a n g e� ��� l   �n�m�l�n  �m  �l  � ��� Y    _��k���j� l  ! Z���� k   ! Z�� ��� Z   ! X����i� H   ! (�� E   ! '��� n  ! %��� 4   " %�h�
�h 
cobj� o   # $�g�g 0 x  � o   ! "�f�f 0 splittedrange splittedRange� m   % &�� ���  -� k   + 5�� ��� r   + 3��� b   + 1� � o   + ,�e�e 0 splittedmagic splittedMagic  n  , 0 4   - 0�d
�d 
cobj o   . /�c�c 0 x   o   , -�b�b 0 splittedrange splittedRange� o      �a�a 0 splittedmagic splittedMagic� �` l  4 4�_�_   8 2set splittedRange's item x to end of splittedMagic    � d s e t   s p l i t t e d R a n g e ' s   i t e m   x   t o   e n d   o f   s p l i t t e d M a g i c�`  � 	 E   8 >

 n  8 < 4   9 <�^
�^ 
cobj o   : ;�]�] 0 x   o   8 9�\�\ 0 splittedrange splittedRange m   < = �  -	 �[ k   A T  I   A J�Z�Y�Z >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic �X n  B F 4   C F�W
�W 
cobj o   D E�V�V 0 x   o   B C�U�U 0 splittedrange splittedRange�X  �Y    l  K K�T�T    set xxx to splittedRange    � 0 s e t   x x x   t o   s p l i t t e d R a n g e   r   K R!"! b   K P#$# o   K L�S�S 0 splittedmagic splittedMagic$ n  L O%&% 2  M O�R
�R 
cobj& o   L M�Q�Q (0 splittedrangemagic splittedRangeMagic" o      �P�P 0 splittedmagic splittedMagic  '�O' l  S S�N()�N  ( 7 1set splittedRange's items to end of splittedMagic   ) �** b s e t   s p l i t t e d R a n g e ' s   i t e m s   t o   e n d   o f   s p l i t t e d M a g i c�O  �[  �i  � +�M+ l  Y Y�L�K�J�L  �K  �J  �M  �   this iterates through   � �,, ,   t h i s   i t e r a t e s   t h r o u g h�k 0 x  � m    �I�I � I   �H-�G
�H .corecnte****       ****- o    �F�F 0 splittedrange splittedRange�G  �j  � ./. l  ` `�E�D�C�E  �D  �C  / 010 l  ` e2342 r   ` e565 o   ` a�B�B 0 olddelimiters oldDelimiters6 n     787 1   b d�A
�A 
txdl8 1   a b�@
�@ 
ascr3 ) # always restore original delimiters   4 �99 F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s1 :�?: L   f h;; o   f g�>�> 0 splittedmagic splittedMagic�?  � <=< l     �=�<�;�=  �<  �;  = >?> l     �:@A�:  @ z t �������������������������������������������������������������������������������������������������������������������   A �BB �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "? CDC l     �9�8�7�9  �8  �7  D EFE i   C FGHG I      �6�5�4�6 $0 textoverflowgoer textOverflowGoer�5  �4  H k     2II JKJ O     0LML k    /NN OPO l   �3�2�1�3  �2  �1  P Q�0Q Z    /RS�/TR >   UVU l   W�.�-W I   �,X�+
�, .corecnte****       ****X o    	�*�* 0 textoverflows textOverflows�+  �.  �-  V m    �)�)  S k    'YY Z[Z r    \]\ n    ^_^ 1    �(
�( 
pnam_ n    `a` 1    �'
�' 
PaPaa n    bcb 4   �&d
�& 
cobjd m    �%�% c o    �$�$ 0 textoverflows textOverflows] o      �#�# 0 
activepage 
activePage[ e�"e r    'fgf n    #hih 4     #�!j
�! 
pagej o   ! "� �  0 
activepage 
activePagei n     klk 1     �
� 
parel o    �� 0 activewindow activeWindowg n      mnm 1   $ &�
� 
pacpn o   # $�� 0 activewindow activeWindow�"  �/  T I  * /�o�
� .sysobeepnull��� ��� longo l  * +p��p m   * +�� �  �  �  �0  M 5     �q�
� 
cappq m    rr �ss $ c o m . a d o b e . I n D e s i g n
� kfrmID  K t�t l  1 1����  �  �  �  F uvu l     ����  �  �  v wxw l     �yz�  y z t �������������������������������������������������������������������������������������������������������������������   z �{{ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "x |}| l     ���
�  �  �
  } ~~ i   G J��� I      �	���	 0 zoomthepages zoomThePages� ��� o      �� 0 	thewindow 	theWindow�  �  � O     4��� k    3�� ��� l   ����  �  �  � ��� O    1��� k    0�� ��� I   ���
� .K2  seltnull���     ****� m    � 
�  senmnada�  � ��� l   ���� I   �����
�� .K2  zmtonull���     Lwin��  � �����
�� 
givn� m    ��
�� zopezftp��  �  spread   � ���  s p r e a d� ���� Z    0������� >   !��� l   ������ I   �����
�� .corecnte****       ****� o    ���� 0 textoverflows textOverflows��  ��  ��  � m     ����  � r   $ ,��� n   $ (��� 4  % (���
�� 
cobj� m   & '���� � o   $ %���� 0 textoverflows textOverflows� n      ��� 1   ) +��
�� 
sele� o   ( )���� 0 activewindow activeWindow��  ��  ��  � o    	���� 0 	thewindow 	theWindow� ���� l  2 2��������  ��  ��  ��  � 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID   ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   K N��� I      �������� 0 displaytheend displayTheEnd��  ��  � I    ����
�� .sysodlogaskr        TEXT� m     �� ��� ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t� ����
�� 
btns� m    �� ���  O K� ����
�� 
dflt� m    �� ���  O K� �����
�� 
givu� m    ���� ��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   � ��� � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   O R��� I      ������� 20 displaynotificationlong displayNotificationLong� ��� o      ���� 0 	titletext 	titleText� ��� o      ���� 0 subtitletext subtitleText� ���� o      ���� 0 bodytext bodyText��  ��  � k     �� ��� l    	���� I    	����
�� .sysonotfnull��� ��� TEXT� o     ���� 0 bodytext bodyText� ����
�� 
appr� o    ���� 0 	titletext 	titleText� �����
�� 
subt� o    ���� 0 subtitletext subtitleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l  
 
������  �  	delay 0.5   � ���  d e l a y   0 . 5��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � < 6my displayNotificationShort("Title text", "Body text")   � ��� l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   S V��� I      ������� 40 displaynotificationshort displayNotificationShort� 	 		  o      ���� 0 	titletext 	titleText	 	��	 o      ���� 0 bodytext bodyText��  ��  � k     			 			 l    				 I    ��			

�� .sysonotfnull��� ��� TEXT		 o     ���� 0 bodytext bodyText	
 ��	��
�� 
appr	 o    ���� 0 	titletext 	titleText��  	  sound name "default"   	 �		 ( s o u n d   n a m e   " d e f a u l t "	 	��	 l   ��		��  	  	delay 0.5   	 �		  d e l a y   0 . 5��  � 			 l     ��������  ��  ��  	 			 l     ��		��  	 z t �������������������������������������������������������������������������������������������������������������������   	 �		 �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	 			 l     ��������  ��  ��  	 	��	 i   W Z			 I      �������� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler��  ��  	 O     			 k    		 	 	!	  l   ��	"	#��  	" E ?"evt" is the event passed to this script by the event listener.   	# �	$	$ ~ " e v t "   i s   t h e   e v e n t   p a s s e d   t o   t h i s   s c r i p t   b y   t h e   e v e n t   l i s t e n e r .	! 	%	&	% r    	'	(	' o    	���� 0 evt  	( o      ���� 0 myevent myEvent	& 	)	*	) l   ��	+	,��  	+ O Idisplay dialog ("This event is the " & event type of myEvent & " event.")   	, �	-	- � d i s p l a y   d i a l o g   ( " T h i s   e v e n t   i s   t h e   "   &   e v e n t   t y p e   o f   m y E v e n t   &   "   e v e n t . " )	* 	.	/	. r    	0	1	0 b    	2	3	2 m    	4	4 �	5	5   E x p o r t   b e e n d e t :  	3 n    	6	7	6 1    ��
�� 
pnam	7 n    	8	9	8 1    ��
�� 
Xtrg	9 o    ���� 0 myevent myEvent	1 o      ���� 0 mystring myString	/ 	:��	: l   	;	<	=	; I   ��	>��
�� .sysonotfnull��� ��� TEXT	> o    ���� 0 mystring myString��  	<  with title "Body text"   	= �	?	? , w i t h   t i t l e   " B o d y   t e x t "��  	 5     ��	@��
�� 
capp	@ m    	A	A �	B	B $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��       2��	C	D	E	F����	G	H	I	J	K	L	M	N	O	P	Q	R	S	T	U	V	W	X	Y	Z	[	\	]	^��	_������������������������������~�}��  	C 0�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�|  0 functionchoice functionChoice�{ 0 chosenpreset chosenPreset�z 0 	pagerange 	pageRange�y 0 linkcheckbool linkCheckBool�x 0 textcheckbool textCheckBool�w "0 functionchooser functionChooser�v .0 pdfexportersinglepage pdfExporterSinglepage�u ,0 pdfexportermultipage pdfExporterMultipage�t 0 idmlexporter idmlExporter�s ,0 fileextensionremover fileExtensionRemover�r 0 
pageranger 
pageRanger�q 0 	linkcheck 	linkCheck�p &0 textoverflowcheck textOverflowCheck�o (0 inputrangesplitter inputRangeSplitter�n >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�m 40 inputrangesplitterfromto inputRangeSplitterFromTo�l 0 magicsplitter MagicSplitter�k $0 textoverflowgoer textOverflowGoer�j 0 zoomthepages zoomThePages�i 0 displaytheend displayTheEnd�h 20 displaynotificationlong displayNotificationLong�g 40 displaynotificationshort displayNotificationShort�f D0  myafterexportnotificationhandler  myAfterExportNotificationHandler
�e .aevtoappnull  �   � ****�d  0 activedocument activeDocument�c 0 activewindow activeWindow�b (0 preservedpagerange preservedPageRange�a 0 opendocuments openDocuments�` ,0 pdfpresetsoncomputer pdfPresetsOnComputer�_ 0 stopbool stopBool�^ 0 textoverflows textOverflows�]  �\  �[  �Z  �Y  �X  �W  �V  �U  �T  �S  �R  �Q  �P  �O  �N  �M  	D �L	`�L 	`  	a	a �	b	b . P D F - E x p o r t   ( M e h r s e i t i g )	E �K	c�K 	c  	d	d �	e	e  s k - S c r e e n	F �	f	f  1 - 2 5
�� boovtrue
�� boovtrue	G �J�I�H	g	h�G�J "0 functionchooser functionChooser�I  �H  	g  	h #&�F�E,�D/�C�B=�AJ�@Y�?
�F 
inSL
�E 
prmp
�D 
okbt�C 
�B .gtqpchltns    @   @ ns  �A .0 pdfexportersinglepage pdfExporterSinglepage�@ ,0 pdfexportermultipage pdfExporterMultipage�? 0 idmlexporter idmlExporter�G i���mv�b   ����� 	Ec   Ob   �kv  )b   k+ Y 5b   �kv  )b   k+ Y b   �kv  )b   k+ Y hOP	H �>m�=�<	i	j�;�> .0 pdfexportersinglepage pdfExporterSinglepage�= �:	k�: 	k  �9�9  0 functionchoice functionChoice�<  	i �8�7�6�5�4�3�2�1�8  0 functionchoice functionChoice�7 0 
buttonname 
buttonName�6 0 
inputrange 
inputRange�5 0 x  �4 0 docname docName�3 0 
newdocname 
newdocName�2 0 filepath filePath�1 0 exportpreset exportPreset	j B�0z�/�.�-�,�+�*��)�(�'�&��%�$�#��"��!� �����K�������������&,����
�	��Vjx���	l������� ����
�0 
capp
�/ kfrmID  
�. 
pacd�- 0 opendocuments openDocuments�, 0 	linkcheck 	linkCheck�+ &0 textoverflowcheck textOverflowCheck
�* 
bool
�) 
ctxt�( ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�' 
inSL
�& 
prmp
�% 
okbt�$ 
�# .gtqpchltns    @   @ ns  
�" 
ret 
�! 
dtxt
�  .sysodlogaskr        TEXT
� 
rslt
� 
ttxt� (0 inputrangesplitter inputRangeSplitter� 0 splittedrange splittedRange� 0 magicsplitter MagicSplitter� 0 splittedmagic splittedMagic
� .corecnte****       ****
� 
cobj� 0 
pageranger 
pageRanger�  0 activedocument activeDocument
� 
pnam� ,0 fileextensionremover fileExtensionRemover
� 
path
� 
TEXT
� 
PFst
� 
exft
� eXftt_PD
� 
kfil
� 
usng
� 
imot� 
�
 .K2  exAscBKT        docu
�	 
DFpf� (0 preservedpagerange preservedPageRange
� 
pcty� 20 displaynotificationlong displayNotificationLong
� 
EvLi	l  
� 
pEvT
� .CoRedoexbool        obj 
� 
prdt
� 
pHnd�  D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�� 
�� .corecrel****      � null�;�)���0 *�,E�UO)j+ O)j+ Ob  e 	 b  e �&���%�&E�O��b  ���� Ec  Ob  fZa _ %a %a b  l O_ a ,E�O�Ec  O)�k+ O)_ k+ O)�a �0 � �k_ j kh )_ a �/k+ O_  a !,E�O)�k+ "E�O_  a #,a $&E�O*a %b  a $&/E�O_  a &a 'a (��%a )%_ a �/%a *%a +�a ,fa - .OP[OY��O*a /, _ 0*a 1,FUOPUOb  a 2kv h)a 3b  a k/a $&a 4�%m+ 5O)�a 6�0 >*a 7-a 8[a 9,\Za :81j ; !a 7a <a 9a =a >)a ?,a @l AY hUY hY hY h	I �������	m	n���� ,0 pdfexportermultipage pdfExporterMultipage�� ��	o�� 	o  ����  0 functionchoice functionChoice��  	m ����������������  0 functionchoice functionChoice�� 0 
buttonname 
buttonName�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath�� 0 exportpreset exportPreset	n D�������������������������������������������
�����������������������X������t�����������������������	l������������������ 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck
�� 
bool
�� 
ctxt�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  
�� 
ret 
�� 
dtxt
�� 
btns
�� 
dflt
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
ttxt�� 0 
pageranger 
pageRanger
�� 
capp
�� kfrmID  �� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
pnam�� ,0 fileextensionremover fileExtensionRemover
�� 
path
�� 
TEXT
�� 
PFst
�� 
exft
�� eXftt_PD
�� 
kfil
�� 
usng
�� 
imot�� 
�� .K2  exAscBKT        docu
�� 
DFpf�� (0 preservedpagerange preservedPageRange
�� 
pcty�� 20 displaynotificationlong displayNotificationLong
�� 
EvLi
�� 
pEvT
�� .CoRedoexbool        obj 
�� 
prdt
�� 
pHnd�� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�� 
�� .corecrel****      � null��)j+  O)j+ Ob  e 	 b  e �&��%�&E�O��b  ���� Ec  Ob  f M��%�%�b  a a a lva a � O_ a ,a   _ a ,Ec  Y a Ec  Y hO)b  k+ O)a a a 0 � �k_ j  kh _ a !�/a ",E�O)�k+ #E�O_ a !�/a $,a %&E�O*a &b  a %&/E�Ob  a 'kv  +_ a !�/a (a )a *��%a +%a ,�a -fa . /Y (_ a !�/a (a )a *��%a 0%a ,�a -fa . /OP[OY�_O*a 1, _ 2*a 3,FUOPUOb  a 4kv v)a 5b  a !k/a %&_ j  a %&a 6%m+ 7O)a a 8a 0 >*a 9-a :[a ;,\Za <81j = !a 9a >a ;a ?a @)a A,a Bl CY hUY hOPY h	J ��
����	p	q���� 0 idmlexporter idmlExporter�� ��	r�� 	r  ����  0 functionchoice functionChoice��  	p ������������  0 functionchoice functionChoice�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath	q "��������b����������������������\����uy������	l���������������� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck
�� 
bool
�� 
capp
�� kfrmID  �� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
pnam�� ,0 fileextensionremover fileExtensionRemover
�� 
path
�� 
TEXT
�� 
exft
�� eXftidml
�� 
kfil�� 
�� .K2  exAscBKT        docu�� 20 displaynotificationlong displayNotificationLong
�� 
EvLi
�� 
pEvT
�� .CoRedoexbool        obj 
�� 
prdt
�� 
pHnd�� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler
�� .corecrel****      � null�� �)j+  O)j+ Ob  e 	 b  e �& �)���0 H Ek�j kh ��/�,E�O)�k+ 
E�O��/�,�&E�O��/��藍%a %a  OP[OY��UO)a a �j �&a %m+ O)�a �0 >*a -a [a ,\Za 81j  !a a a a a )a  ,a l !Y hUY h	K �������	s	t���� ,0 fileextensionremover fileExtensionRemover�� ��	u�� 	u  ���� 0 docname docName��  	s ���������� 0 docname docName�� 0 olddelimiters oldDelimiters�� 0 	pathitems 	pathItems�� 0 
newdocname 
newdocName	t 
������������������
�� 
ascr
�� 
txdl
�� 
ctxt
�� 
citm
�� .corecnte****       ****
�� 
cobj����
�� 
TEXT�� F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO�	L ������	v	w���� 0 
pageranger 
pageRanger�� ��	x�� 	x  ���� 0 	pagerange 	pageRange��  	v ���� 0 	pagerange 	pageRange	w ���������
�� 
capp
�� kfrmID  
�� 
DFpf
�� 
TEXT
� 
pcty�� )���0 *�, 	��&*�,FUU	M �~-�}�|	y	z�{�~ 0 	linkcheck 	linkCheck�}  �|  	y �z�y�x�w�z 0 x  �y 0 missinglinks missingLinks�x 0 modifiedlinks modifiedLinks�w 0 failedlinks failedLinks	z �v��u�t�s�r�q�p	l�o�n�m��l��k���j���i��h�g�f�e���d�c
�v 
capp
�u kfrmID  �t 0 stopbool stopBool�s 0 opendocuments openDocuments
�r .corecnte****       ****
�q 
cobj
�p 
clnk
�o 
stts
�n sttelmis
�m sttelood
�l 
ret 
�k 
pnam
�j 
btns
�i 
dflt�h 
�g .sysodlogaskr        TEXT
�f 
rslt
�e 
bhit�d  �c  �{ �)���0 �eE�OeEc  O �k�j kh  ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fEc  Y hOb  f  6��%�%�%��/�,%�%a %�%a %a a a lva a a  Y hO 6_ a ,a   fE�Y _ a ,a   eE�OeEc  Y hW X  h[OY�=OPU	N �b��a�`	{	|�_�b &0 textoverflowcheck textOverflowCheck�a  �`  	{ �^�^ 0 x  	| %�]��\�[�Z�Y�X�W	l�V�U�T�S@�RB�QJL�PSWZ�O]�N�M�L�Kis�J�I�H��G�F
�] 
capp
�\ kfrmID  �[ 0 stopbool stopBool�Z 0 opendocuments openDocuments
�Y .corecnte****       ****
�X 
cobj
�W 
txtf
�V 
OVRF
�U 
pilr
�T 
pvis�S 0 textoverflows textOverflows
�R 
ret 
�Q 
pnam
�P 
btns
�O 
dflt�N 
�M .sysodlogaskr        TEXT
�L 
rslt
�K 
bhit�J $0 textoverflowgoer textOverflowGoer�I 0 activewindow activeWindow�H 0 zoomthepages zoomThePages�G  �F  �_)���0 �eE�OeEc  O �k�j kh  ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fEc  Y hOb  f  ;��%�%�%��/a ,%�%a %�%a %a a a a mva a a  Y hO Y_ a ,a   fE�Y B_ a ,a   )j+ O)_  k+ !OfE�Y _ a ,a "  fE�OeEc  Y hW X # $h[OY�!OPU	O �E��D�C	}	~�B�E (0 inputrangesplitter inputRangeSplitter�D �A	�A 	  �@�@ 0 
inputrange 
inputRange�C  	} �?�>�? 0 
inputrange 
inputRange�> 0 olddelimiters oldDelimiters	~ �=�<��;�:
�= 
ascr
�< 
txdl
�; 
citm�: 0 splittedrange splittedRange�B ��,E�O�kv��,FO��-E�O���,FO�	P �9��8�7	�	��6�9 >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�8 �5	��5 	�  �4�4 0 
inputrange 
inputRange�7  	� �3�2�1�0�/�3 0 
inputrange 
inputRange�2 0 olddelimiters oldDelimiters�1  0 incrementvalue incrementValue�0 00 splittedrangemagicloop splittedRangeMagicLoop�/ 0 repeatnumber repeatNumber	� �.�-��,�+�*�)
�. 
ascr
�- 
txdl
�, 
citm�+ (0 splittedrangemagic splittedRangeMagic
�* 
cobj
�) 
long�6 u��,E�O�kv��,FO��-E�O��l/�&��k/�&k F��k/�&kE�O��k/�&kvE�O��l/�&��k/�&E�O �kh��%E�O�kE�[OY��O�E�Y hO���,FO�	Q �(��'�&	�	��%�( 40 inputrangesplitterfromto inputRangeSplitterFromTo�' �$	��$ 	�  �#�# 0 
inputrange 
inputRange�&  	� �"�!�" 0 
inputrange 
inputRange�! 0 olddelimiters oldDelimiters	� � ����
�  
ascr
� 
txdl
� 
citm� 0 splittedrange splittedRange�% ��,E�O�kv��,FO��-E�O���,FO�	R ����	�	��� 0 magicsplitter MagicSplitter� �	�� 	�  �� 0 splittedrange splittedRange�  	� ���� 0 splittedrange splittedRange� 0 olddelimiters oldDelimiters� 0 x  	� 
���������
� 
ascr
� 
txdl� 0 splittedmagic splittedMagic
� .corecnte****       ****
� 
cobj� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic� (0 splittedrangemagic splittedRangeMagic� i��,E�O�kv��,FOjvE�O Kk�j kh ��/� à�/%E�OPY "��/� *��/k+ O���-%E�OPY hOP[OY��O���,FO�	S �H��
	�	��	� $0 textoverflowgoer textOverflowGoer�  �
  	� �� 0 
activepage 
activePage	� �r������� ��������
� 
capp
� kfrmID  � 0 textoverflows textOverflows
� .corecnte****       ****
� 
cobj
� 
PaPa
� 
pnam�  0 activewindow activeWindow
�� 
pare
�� 
page
�� 
pacp
�� .sysobeepnull��� ��� long�	 3)���0 )�j j ��k/�,�,E�O��,�/��,FY mj UOP	T �������	�	����� 0 zoomthepages zoomThePages�� ��	��� 	�  ���� 0 	thewindow 	theWindow��  	� ���� 0 	thewindow 	theWindow	� �������������������������
�� 
capp
�� kfrmID  
�� senmnada
�� .K2  seltnull���     ****
�� 
givn
�� zopezftp
�� .K2  zmtonull���     Lwin�� 0 textoverflows textOverflows
�� .corecnte****       ****
�� 
cobj�� 0 activewindow activeWindow
�� 
sele�� 5)���0 -� &�j O*��l O�j 	j ��k/��,FY hUOPU	U �������	�	����� 0 displaytheend displayTheEnd��  ��  	�  	� �������������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k� 	V �������	�	����� 20 displaynotificationlong displayNotificationLong�� ��	��� 	�  �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText��  	� �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText	� ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ���� OP	W �������	�	����� 40 displaynotificationshort displayNotificationShort�� ��	��� 	�  ������ 0 	titletext 	titleText�� 0 bodytext bodyText��  	� ������ 0 	titletext 	titleText�� 0 bodytext bodyText	� ����
�� 
appr
�� .sysonotfnull��� ��� TEXT�� 
��l OP	X ��	����	�	����� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler��  ��  	� �������� 0 evt  �� 0 myevent myEvent�� 0 mystring myString	� ��	A��	4������
�� 
capp
�� kfrmID  
�� 
Xtrg
�� 
pnam
�� .sysonotfnull��� ��� TEXT�� )���0 �E�O��,�,%E�O�j U	Y ��	�����	�	���
�� .aevtoappnull  �   � ****	� k     N	�	�  �����  ��  ��  	�  	� ��������������������	l�������� �����
�� 
capp
�� kfrmID  
�� 
pacd��  0 activedocument activeDocument
�� 
pacw�� 0 activewindow activeWindow
�� 
DFpf
�� 
pcty�� (0 preservedpagerange preservedPageRange
�� 
docu
�� 
pvis�� 0 opendocuments openDocuments
�� 
PFst
�� 
pnam�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer�� "0 functionchooser functionChooser�� O)���0 G*�,E�O*�,E�O*�, *�,E�UO*�-�[�,\Ze81E�O*�-�,�[�,\Za @C1E` O)j+ OPU	Z 	�	� 	�������	�(                                                                                  InDn  alis    �  Macintosh HD               ϓ�[H+  �OAdobe InDesign CC 2014.app                                     ����        ����  	                Adobe InDesign CC 2014    ϓ�;      �p    �O ��Y  MMacintosh HD:Applications: Adobe InDesign CC 2014: Adobe InDesign CC 2014.app   6  A d o b e   I n D e s i g n   C C   2 0 1 4 . a p p    M a c i n t o s h   H D  >Applications/Adobe InDesign CC 2014/Adobe InDesign CC 2014.app  / ��  
�� 
docu�� 
�� kfrmID  	[ 	�	� 	�������	� 	�������
�� 
docu�� 
�� kfrmID  
�� 
Lwin��  �
�� kfrmID  	\ �	�	�  1	] ��	��� 	�  	�	�	�	� 	�	� 	�������
�� 
docu�� 
�� kfrmID  	� 	�	� 	�������
�� 
docu�� 
�� kfrmID  	� 	�	� 	�������
�� 
docu�� 
�� kfrmID  	^ ��	��� 	�  	�	�	�	�	�	�	�	�	�	�	�	�	�	� �	�	� J l i b r e k a _ D i s t i l l e r _ K o n f i g u r a t i o n s d a t e i	� �	�	�   s k - A m a z o n   I n s i d e	� �	�	� : s k - D r u c k d a t e n   ( w i e   D i s t i l l e r )	� �	�	� > s k - D r u c k d a t e n   X - 3   ( D r u c k b o g e n )	� �	�	� @ s k - D r u c k d a t e n   X - 3   ( P S O   U n c o a t e d )	� �	�	� " s k - D r u c k d a t e n   X - 3	� �	�	� 8 s k - H a n s g r o h e   B l a t t e r k a t a l o g	� �	�	� ( s k - I n D e s i g n - F a r b s a t z	� �	�	�   s k - M e d i e n n e u t r a l	� �	�	� . s k - S c r e e n   ( D r u c k b o g e n )	� �	�	�   s k - S c r e e n   ( H i F i )	� �	�	�  s k - S c r e e n	� �	�	�  s k - T e m p o r a r
�� boovtrue	_ ��	���  	�   ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  �  �~  �}  ascr  ��ޭ