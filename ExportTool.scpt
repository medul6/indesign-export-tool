FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.2.6     �       v e r s i o n   1 . 9 . 2 . 6      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ 0 activewindow activeWindow��   5  7 8 7 p       9 9 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   8  : ; : p       < < ������ (0 preservedpagerange preservedPageRange��   ;  = > = p       ? ? ������ 0 stopbool stopBool��   >  @ A @ p       B B ������ 0 splittedrange splittedRange��   A  C D C l     ��������  ��  ��   D  E F E p       G G ������ 0 textoverflows textOverflows��   F  H I H l     ��������  ��  ��   I  J K J l     �� L M��   L  test variables!!!    M � N N " t e s t   v a r i a b l e s ! ! ! K  O P O l     �� Q R��   Q  global filePath    R � S S  g l o b a l   f i l e P a t h P  T U T l     �� V W��   V  global chosenPresetText    W � X X . g l o b a l   c h o s e n P r e s e t T e x t U  Y Z Y l     �� [ \��   [  global docName    \ � ] ]  g l o b a l   d o c N a m e Z  ^ _ ^ l     �� ` a��   `  global newFilePath    a � b b $ g l o b a l   n e w F i l e P a t h _  c d c l     �� e f��   e  global pathItems    f � g g   g l o b a l   p a t h I t e m s d  h i h l     �� j k��   j  global pageRange    k � l l   g l o b a l   p a g e R a n g e i  m n m l     �� o p��   o  global newdocName    p � q q " g l o b a l   n e w d o c N a m e n  r s r l     �� t u��   t  global failedLinks    u � v v $ g l o b a l   f a i l e d L i n k s s  w x w l     �� y z��   y  global textOverflows    z � { { ( g l o b a l   t e x t O v e r f l o w s x  | } | l     �� ~ ��   ~  global modifiedLinks     � � � ( g l o b a l   m o d i f i e d L i n k s }  � � � l     �� � ���   �  global missingLinks    � � � � & g l o b a l   m i s s i n g L i n k s �  � � � l     �� � ���   �  global exportPreset    � � � � & g l o b a l   e x p o r t P r e s e t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  properties!    � � � �  p r o p e r t i e s ! �  � � � j     �� ���  0 functionchoice functionChoice � J      � �  ��� � m      � � � � �  P D F - E x p o r t��   �  � � � j    	�� ��� 0 chosenpreset chosenPreset � J     � �  ��� � m     � � � � �  s k - S c r e e n��   �  � � � j   
 �� ��� 0 	pagerange 	pageRange � m   
  � � � � �  a l l   p a g e s �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z t �������������������������������������������������������������������������������������������������������������������    � � � � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  � � � l     ��������  ��  ��   �  � � � l    L ����� � O     L � � � k    K � �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � C = set up some informations from the current state as variables    � � � � z   s e t   u p   s o m e   i n f o r m a t i o n s   f r o m   t h e   c u r r e n t   s t a t e   a s   v a r i a b l e s �  � � � r     � � � 1    ��
�� 
pacd � o      ����  0 activedocument activeDocument �  � � � r     � � � 1    ��
�� 
pacw � o      ���� 0 activewindow activeWindow �  � � � r     � � � 2    ��
�� 
docu � o      ���� 0 opendocuments openDocuments �  � � � l   �� � ���   � � � only pdf presets are captured that are not build in. we have our own! remove the whose clause to show all of them, or modify the whose clause to show only them.    � � � �B   o n l y   p d f   p r e s e t s   a r e   c a p t u r e d   t h a t   a r e   n o t   b u i l d   i n .   w e   h a v e   o u r   o w n !   r e m o v e   t h e   w h o s e   c l a u s e   t o   s h o w   a l l   o f   t h e m ,   o r   m o d i f y   t h e   w h o s e   c l a u s e   t o   s h o w   o n l y   t h e m . �  � � � r    + � � � 6   ) � � � n     � � � 1    ��
�� 
pnam � 2    ��
�� 
PFst � H     ( � � E     ' � � � 1   ! #��
�� 
pnam � m   $ & � � � � �  [ � o      ���� ,0 pdfpresetsoncomputer pdfPresetsOnComputer �  � � � l  , ,��������  ��  ��   �  � � � n  , 1 � � � I   - 1�������� 0 	linkcheck 	linkCheck��  ��   �  f   , - �  � � � n  2 7 � � � I   3 7�������� &0 textoverflowcheck textOverflowCheck��  ��   �  f   2 3 �  � � � l  8 8��������  ��  ��   �  � � � Z   8 I � ����� � =  8 = � � � o   8 ;���� 0 stopbool stopBool � m   ; <��
�� boovtrue � n  @ E � � � I   A E�������� "0 functionchooser functionChooser��  ��   �  f   @ A��  ��   �  ��� � l  J J��������  ��  ��  ��   � 5     �� ���
�� 
capp � m     � � � � � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z t �������������������������������������������������������������������������������������������������������������������    � � � � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� "0 functionchooser functionChooser��  ��   � k     h � �  �  � r      I    ��
�� .gtqpchltns    @   @ ns   J       m      �		 2 P D F - E x p o r t   ( E i n z e l s e i t e n ) 

 m     � . P D F - E x p o r t   ( M e h r s e i t i g ) �� m     �  I D M L - E x p o r t��   ��
�� 
inSL o    ����  0 functionchoice functionChoice ��
�� 
prmp m     �   F u n k t i o n   w � h l e n : ����
�� 
okbt m     �  W e i t e r !��   o      ����  0 functionchoice functionChoice   l   ��~�}�  �~  �}    Z    f �| =    #!"! l   #�{�z# o    �y�y  0 functionchoice functionChoice�{  �z  " J    "$$ %�x% m     && �'' 2 P D F - E x p o r t   ( E i n z e l s e i t e n )�x   n   & 0()( I   ' 0�w*�v�w .0 pdfexportersinglepage pdfExporterSinglepage* +�u+ o   ' ,�t�t  0 functionchoice functionChoice�u  �v  )  f   & '  ,-, =   3 <./. l  3 80�s�r0 o   3 8�q�q  0 functionchoice functionChoice�s  �r  / J   8 ;11 2�p2 m   8 933 �44 . P D F - E x p o r t   ( M e h r s e i t i g )�p  - 565 n   ? I787 I   @ I�o9�n�o ,0 pdfexportermultipage pdfExporterMultipage9 :�m: o   @ E�l�l  0 functionchoice functionChoice�m  �n  8  f   ? @6 ;<; =   L U=>= l  L Q?�k�j? o   L Q�i�i  0 functionchoice functionChoice�k  �j  > J   Q T@@ A�hA m   Q RBB �CC  I D M L - E x p o r t�h  < D�gD n   X bEFE I   Y b�fG�e�f 0 idmlexporter idmlExporterG H�dH o   Y ^�c�c  0 functionchoice functionChoice�d  �e  F  f   X Y�g  �|   I�bI l  g g�a�`�_�a  �`  �_  �b   � JKJ l     �^�]�\�^  �]  �\  K LML l     �[NO�[  N z t �������������������������������������������������������������������������������������������������������������������   O �PP �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "M QRQ l     �Z�Y�X�Z  �Y  �X  R STS i    UVU I      �WW�V�W .0 pdfexportersinglepage pdfExporterSinglepageW X�UX o      �T�T  0 functionchoice functionChoice�U  �V  V k    "YY Z[Z r     \]\ c     ^_^ b     `a` o     �S�S  0 functionchoice functionChoicea m    bb �cc  !_ m    �R
�R 
ctxt] o      �Q�Q 0 
buttonname 
buttonName[ ded r    fgf I   �Phi
�P .gtqpchltns    @   @ ns  h o    	�O�O ,0 pdfpresetsoncomputer pdfPresetsOnComputeri �Njk
�N 
inSLj o   
 �M�M 0 chosenpreset chosenPresetk �Llm
�L 
prmpl m    nn �oo $ P D F - P r e s e t   w � h l e n :m �Kp�J
�K 
okbtp o    �I�I 0 
buttonname 
buttonName�J  g o      �H�H 0 chosenpreset chosenPresete q�Gq Z   "rs�F�Er >   %tut o    #�D�D 0 chosenpreset chosenPresetu m   # $�C
�C boovfalss k   (vv wxw I  ( 7�Byz
�B .sysodlogaskr        TEXTy b   ( -{|{ b   ( +}~} m   ( ) ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?~ o   ) *�A
�A 
ret | m   + ,�� ��� f N U R   k o m m a g e s t r e n n t e   W e r t e   e i n t r a g e n !   z . B .   ' 1 , 2 , 5 , 6 'z �@��?
�@ 
dtxt� o   . 3�>�> 0 	pagerange 	pageRange�?  x ��� r   8 =��� l  8 ;��=�<� n   8 ;��� 1   9 ;�;
�; 
ttxt� 1   8 9�:
�: 
rslt�=  �<  � o      �9�9 0 
inputrange 
inputRange� ��� l  > >�8�7�6�8  �7  �6  � ��� I   > D�5��4�5 (0 inputrangesplitter inputRangeSplitter� ��3� o   ? @�2�2 0 
inputrange 
inputRange�3  �4  � ��� l  E E�1�0�/�1  �0  �/  � ��� l  E E�.���.  � 9 3hier sollte die splittedRange noch gecleaned werden   � ��� f h i e r   s o l l t e   d i e   s p l i t t e d R a n g e   n o c h   g e c l e a n e d   w e r d e n� ��� l  E E�-���-  � , &my splittedRangeCleaner(splittedRange)   � ��� L m y   s p l i t t e d R a n g e C l e a n e r ( s p l i t t e d R a n g e )� ��� l  E E�,�+�*�,  �+  �*  � ��� O   E ���� k   S ��� ��� l  S S�)�(�'�)  �(  �'  � ��� Y   S ���&���%� l  c ����� k   c ��� ��� l  c c�$�#�"�$  �#  �"  � ��� n  c p��� I   d p�!�� �! 0 
pageranger 
pageRanger� ��� n  d l��� 4   g l��
� 
cobj� o   j k�� 0 x  � o   d g�� 0 splittedrange splittedRange�  �   �  f   c d� ��� l  q q����  �  �  � ��� r   q z��� n   q x��� 1   t x�
� 
pnam� o   q t��  0 activedocument activeDocument� o      �� 0 docname docName� ��� r   { ���� n  { ���� I   | ����� ,0 fileextensionremover fileExtensionRemover� ��� o   | }�� 0 docname docName�  �  �  f   { |� o      �� 0 
newdocname 
newdocName� ��� r   � ���� l  � ����� c   � ���� n   � ���� 1   � ��
� 
path� o   � ���  0 activedocument activeDocument� m   � ��
� 
TEXT�  �  � o      �� 0 filepath filePath� ��� r   � ���� 4   � ��
�
�
 
PFst� l  � ���	�� c   � ���� o   � ��� 0 chosenpreset chosenPreset� m   � ��
� 
TEXT�	  �  � o      �� 0 exportpreset exportPreset� ��� l  � �����  �  �  � ��� I  � ����
� .K2  exAscBKT        docu� o   � �� �   0 activedocument activeDocument� ����
�� 
exft� m   � ���
�� eXftt_PD� ����
�� 
kfil� l  � ������� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 filepath filePath� o   � ����� 0 
newdocname 
newdocName� m   � ��� ���    s� l  � ������� n  � ���� 4   � ����
�� 
cobj� o   � ����� 0 x  � o   � ����� 0 splittedrange splittedRange��  ��  � m   � ��� ���  . p d f��  ��  � ����
�� 
usng� o   � ����� 0 exportpreset exportPreset� �����
�� 
imot� m   � ���
�� boovfals��  � ���� l  � ���������  ��  ��  ��  � &   this iterates through all pages   � ��� @   t h i s   i t e r a t e s   t h r o u g h   a l l   p a g e s�& 0 x  � m   V W���� � I  W ^�����
�� .corecnte****       ****� o   W Z���� 0 splittedrange splittedRange��  �%  � ��� l  � ���������  ��  ��  � ��� l  � ���������  ��  ��  �    O   � � l  � � r   � � o   � ����� (0 preservedpagerange preservedPageRange 1   � ���
�� 
pcty * $ always restore original preferences    �		 H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s 1   � ���
�� 
DFpf 

 l  � ���������  ��  ��    l  � �����    wait for all tasks    � $ w a i t   f o r   a l l   t a s k s �� l  � ���������  ��  ��  ��  � 5   E P����
�� 
capp m   I L � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  �  l  � ���������  ��  ��    Z   ����� >  � � o   � ����� 0 chosenpreset chosenPreset J   � � �� m   � � �    s k - T e m p o r � r��   k   �!! "#" l  � ���$%��  $  my displayTheEnd()   % �&& $ m y   d i s p l a y T h e E n d ( )# '(' l  � ���)*��  ) T Nmy displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)   * �++ � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   " D o k u m e n t :   "   &   n e w d o c N a m e )( ,��, n  �-.- I   ���/���� 20 displaynotificationlong displayNotificationLong/ 010 m   �22 �33 ( P D F   E x p o r t   g e s t a r t e t1 454 l 6����6 c  787 l 9����9 n  :;: 4  ��<
�� 
cobj< m  	
���� ; o  ���� 0 chosenpreset chosenPreset��  ��  8 m  ��
�� 
TEXT��  ��  5 =��= b  >?> m  @@ �AA  D o k u m e n t :  ? o  ���� 0 
newdocname 
newdocName��  ��  .  f   � ���  ��  ��   B��B l ��������  ��  ��  ��  �F  �E  �G  T CDC l     ��������  ��  ��  D EFE l     ��GH��  G z t �������������������������������������������������������������������������������������������������������������������   H �II �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "F JKJ l     ��������  ��  ��  K LML i    NON I      ��P���� ,0 pdfexportermultipage pdfExporterMultipageP Q��Q o      ����  0 functionchoice functionChoice��  ��  O k    �RR STS r     UVU c     WXW b     YZY o     ����  0 functionchoice functionChoiceZ m    [[ �\\  !X m    ��
�� 
ctxtV o      ���� 0 
buttonname 
buttonNameT ]^] r    _`_ I   ��ab
�� .gtqpchltns    @   @ ns  a o    	���� ,0 pdfpresetsoncomputer pdfPresetsOnComputerb ��cd
�� 
inSLc o   
 ���� 0 chosenpreset chosenPresetd ��ef
�� 
prmpe m    gg �hh $ P D F - P r e s e t   w � h l e n :f ��i��
�� 
okbti o    ���� 0 
buttonname 
buttonName��  ` o      ���� 0 chosenpreset chosenPreset^ j��j Z   �kl����k >   %mnm o    #���� 0 chosenpreset chosenPresetn m   # $��
�� boovfalsl k   (�oo pqp Z   ( �rs��tr >  ( 1uvu o   ( -���� 0 chosenpreset chosenPresetv J   - 0ww x��x m   - .yy �zz  s k - T e m p o r � r��  s k   4 x{{ |}| I  4 P��~
�� .sysodlogaskr        TEXT~ b   4 9��� b   4 7��� m   4 5�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   5 6��
�� 
ret � m   7 8�� ��� : ( W e n n   a l l e ,   d a n n   ' a l l   p a g e s ' ) ����
�� 
dtxt� o   : ?���� 0 	pagerange 	pageRange� ����
�� 
btns� J   @ F�� ��� m   @ A�� ���  A l l   P a g e s� ���� m   A D�� ���  W e i t e r !��  � �����
�� 
dflt� m   I L�� ���  W e i t e r !��  } ���� Z   Q x������ =  Q \��� n   Q X��� 1   T X��
�� 
bhit� 1   Q T��
�� 
rslt� m   X [�� ���  W e i t e r !� r   _ l��� l  _ f������ n   _ f��� 1   b f��
�� 
ttxt� 1   _ b��
�� 
rslt��  ��  � o      ���� 0 	pagerange 	pageRange��  � r   o x��� m   o r�� ���  a l l   p a g e s� o      ���� 0 	pagerange 	pageRange��  ��  t r   { ���� m   { ~�� ���  a l l   p a g e s� o      ���� 0 	pagerange 	pageRangeq ��� l  � ���������  ��  ��  � ��� n  � ���� I   � �������� 0 
pageranger 
pageRanger� ���� o   � ����� 0 	pagerange 	pageRange��  ��  �  f   � �� ��� l  � �����~��  �  �~  � ��� O   �d��� k   �c�� ��� l  � ��}�|�{�}  �|  �{  � ��� Y   �N��z���y� l  �I���� k   �I�� ��� l  � ��x�w�v�x  �w  �v  � ��� r   � ���� n   � ���� 1   � ��u
�u 
pnam� n  � ���� 4   � ��t�
�t 
cobj� o   � ��s�s 0 x  � o   � ��r�r 0 opendocuments openDocuments� o      �q�q 0 docname docName� ��� r   � ���� n  � ���� I   � ��p��o�p ,0 fileextensionremover fileExtensionRemover� ��n� o   � ��m�m 0 docname docName�n  �o  �  f   � �� o      �l�l 0 
newdocname 
newdocName� ��� r   � ���� l  � ���k�j� c   � ���� n   � ���� 1   � ��i
�i 
path� n  � ���� 4   � ��h�
�h 
cobj� o   � ��g�g 0 x  � o   � ��f�f 0 opendocuments openDocuments� m   � ��e
�e 
TEXT�k  �j  � o      �d�d 0 filepath filePath� ��� r   � ���� 4   � ��c�
�c 
PFst� l  � ���b�a� c   � ���� o   � ��`�` 0 chosenpreset chosenPreset� m   � ��_
�_ 
TEXT�b  �a  � o      �^�^ 0 exportpreset exportPreset� ��� l  � ��]�\�[�]  �\  �[  � ��� Z   �G���Z�� =  � ���� o   � ��Y�Y 0 chosenpreset chosenPreset� J   � ��� ��X� m   � ��� ���  s k - T e m p o r � r�X  � k   ��� ��� l  � ��W� �W  � M G this is temporarily disabled, because it just doesn't work that way :)     � �   t h i s   i s   t e m p o r a r i l y   d i s a b l e d ,   b e c a u s e   i t   j u s t   d o e s n ' t   w o r k   t h a t   w a y   : )�  l  � ��V�V   � �asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes    � a s y n c h r o n o u s   e x p o r t   f i l e   o p e n D o c u m e n t s ' s   i t e m   x   f o r m a t   P D F   t y p e   t o   ( f i l e P a t h   &   n e w d o c N a m e   &   " . p d f " )   u s i n g   e x p o r t P r e s e t   s h o w i n g   o p t i o n s   y e s �U I  ��T	
�T .K2  exAscBKT        docu n  � 

 4   � �S
�S 
cobj o   � ��R�R 0 x   o   � ��Q�Q 0 opendocuments openDocuments	 �P
�P 
exft m  �O
�O eXftt_PD �N
�N 
kfil l 	�M�L b  	 b  	 o  	
�K�K 0 filepath filePath o  
�J�J 0 
newdocname 
newdocName m   �  . p d f�M  �L   �I
�I 
usng o  �H�H 0 exportpreset exportPreset �G�F
�G 
imot m  �E
�E boovfals�F  �U  �Z  � I !G�D
�D .K2  exAscBKT        docu n !) 4  $)�C
�C 
cobj o  '(�B�B 0 x   o  !$�A�A 0 opendocuments openDocuments �@ !
�@ 
exft  m  ,/�?
�? eXftt_PD! �>"#
�> 
kfil" l 29$�=�<$ b  29%&% b  25'(' o  23�;�; 0 filepath filePath( o  34�:�: 0 
newdocname 
newdocName& m  58)) �**  . p d f�=  �<  # �9+,
�9 
usng+ o  <=�8�8 0 exportpreset exportPreset, �7-�6
�7 
imot- m  @A�5
�5 boovfals�6  � .�4. l HH�3�2�1�3  �2  �1  �4  � / ) this iterates through all open documents   � �// R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�z 0 x  � m   � ��0�0 � I  � ��/0�.
�/ .corecnte****       ****0 o   � ��-�- 0 opendocuments openDocuments�.  �y  � 121 l OO�,�+�*�,  �+  �*  2 343 l OO�)�(�'�)  �(  �'  4 565 O  Oa787 l W`9:;9 r  W`<=< o  WZ�&�& (0 preservedpagerange preservedPageRange= 1  Z_�%
�% 
pcty: * $ always restore original preferences   ; �>> H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s8 1  OT�$
�$ 
DFpf6 ?@? l bb�#�"�!�#  �"  �!  @ ABA l bb� CD�   C  wait for all tasks   D �EE $ w a i t   f o r   a l l   t a s k sB F�F l bb����  �  �  �  � 5   � ��G�
� 
cappG m   � �HH �II $ c o m . a d o b e . I n D e s i g n
� kfrmID  � JKJ l ee����  �  �  K LML Z  e�NO��N > epPQP o  ej�� 0 chosenpreset chosenPresetQ J  joRR S�S m  jmTT �UU  s k - T e m p o r � r�  O k  s�VV WXW l ss�YZ�  Y  my displayTheEnd()   Z �[[ $ m y   d i s p l a y T h e E n d ( )X \]\ l ss�^_�  ^ x rmy displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   _ �`` � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )] a�a n s�bcb I  t��d�� 20 displaynotificationlong displayNotificationLongd efe m  twgg �hh ( P D F   E x p o r t   g e s t a r t e tf iji l w�k��k c  w�lml l w�n��
n n  w�opo 4  |��	q
�	 
cobjq m  ��� p o  w|�� 0 chosenpreset chosenPreset�  �
  m m  ���
� 
TEXT�  �  j r�r b  ��sts l ��u��u c  ��vwv l ��x��x I ��� y��
�  .corecnte****       ****y o  ������ 0 opendocuments openDocuments��  �  �  w m  ����
�� 
TEXT�  �  t m  ��zz �{{ .   D o k u m e n t ( e )   e x p o r t i e r t�  �  c  f  st�  �  �  M |��| l ����������  ��  ��  ��  ��  ��  ��  M }~} l     ��������  ��  ��  ~ � l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 idmlexporter idmlExporter� ���� o      ����  0 functionchoice functionChoice��  ��  � k     b�� ��� O     K��� Y    J�������� l   E���� k    E�� ��� l   ��������  ��  ��  � ��� r    ��� n    ��� 1    ��
�� 
pnam� n   ��� 4    ���
�� 
cobj� o    ���� 0 x  � o    ���� 0 opendocuments openDocuments� o      ���� 0 docname docName� ��� r    '��� n   %��� I     %������� ,0 fileextensionremover fileExtensionRemover� ���� o     !���� 0 docname docName��  ��  �  f     � o      ���� 0 
newdocname 
newdocName� ��� r   ( 2��� l  ( 0������ c   ( 0��� n   ( .��� 1   , .��
�� 
path� n  ( ,��� 4   ) ,���
�� 
cobj� o   * +���� 0 x  � o   ( )���� 0 opendocuments openDocuments� m   . /��
�� 
TEXT��  ��  � o      ���� 0 filepath filePath� ��� l  3 3��������  ��  ��  � ��� I  3 C����
�� .K2  exAscBKT        docu� n  3 7��� 4   4 7���
�� 
cobj� o   5 6���� 0 x  � o   3 4���� 0 opendocuments openDocuments� ����
�� 
exft� m   8 9��
�� eXftidml� �����
�� 
kfil� l  : ?������ b   : ?��� b   : =��� o   : ;���� 0 filepath filePath� o   ; <���� 0 
newdocname 
newdocName� m   = >�� ��� 
 . i d m l��  ��  ��  � ���� l  D D��������  ��  ��  ��  � / ) this iterates through all open documents   � ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�� 0 x  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  � 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ��� l  L L������  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l  L L������  � y smy displayNotificationShort("IDML Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " I D M L   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )� ���� n  L b��� I   M b������� 20 displaynotificationlong displayNotificationLong� ��� m   M P�� ��� * I D M L   E x p o r t   g e s t a r t e t� ��� m   P S�� ���  S u b t i t l e   t e x t� ���� b   S ^��� l  S Z������ c   S Z��� l  S X������ I  S X�����
�� .corecnte****       ****� o   S T���� 0 opendocuments openDocuments��  ��  ��  � m   X Y��
�� 
TEXT��  ��  � m   Z ]�� ��� .   D o k u m e n t ( e )   e x p o r t i e r t��  ��  �  f   L M��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i     ��� I      ������� ,0 fileextensionremover fileExtensionRemover� ���� o      ���� 0 docname docName��  ��  � k     E��    l     r      n     1    ��
�� 
txdl 1     ��
�� 
ascr o      ���� 0 olddelimiters oldDelimiters * $ always preserve original delimiters    �		 H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s 

 r     J    	 �� m     �  .��   n      1   
 ��
�� 
txdl 1   	 
��
�� 
ascr  r     n     2   ��
�� 
citm l   ���� c     o    ���� 0 docname docName m    ��
�� 
ctxt��  ��   o      ���� 0 	pathitems 	pathItems  Z    6 ��! ?    "#" l   $����$ I   ��%��
�� .corecnte****       ****% o    ���� 0 	pathitems 	pathItems��  ��  ��  # m    && �''  2  r     -()( n     +*+* 7  ! +��,-
�� 
cobj, m   % '���� - m   ( *������+ o     !���� 0 	pathitems 	pathItems) o      ���� 0 	pathitems 	pathItems��  ! r   0 6./. n   0 4010 4   1 4��2
�� 
cobj2 m   2 3���� 1 o   0 1���� 0 	pathitems 	pathItems/ o      ���� 0 	pathitems 	pathItems 343 r   7 <565 c   7 :787 o   7 8���� 0 	pathitems 	pathItems8 m   8 9��
�� 
TEXT6 o      ���� 0 
newdocname 
newdocName4 9:9 l  = B;<=; r   = B>?> o   = >���� 0 olddelimiters oldDelimiters? n     @A@ 1   ? A��
�� 
txdlA 1   > ?��
�� 
ascr< ) # always restore original delimiters   = �BB F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s: C��C L   C EDD o   C D���� 0 
newdocname 
newdocName��  � EFE l     �������  ��  �  F GHG l     �~IJ�~  I z t �������������������������������������������������������������������������������������������������������������������   J �KK �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "H LML l     �}�|�{�}  �|  �{  M NON i   ! $PQP I      �zR�y�z 0 
pageranger 
pageRangerR S�xS o      �w�w 0 	pagerange 	pageRange�x  �y  Q O     "TUT k    !VV WXW O    YZY l   [\][ r    ^_^ 1    �v
�v 
pcty_ o      �u�u (0 preservedpagerange preservedPageRange\ , & always preserve original preferences    ] �`` L   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s  Z 1    �t
�t 
DFpfX aba l   �s�r�q�s  �r  �q  b c�pc O    !ded r     fgf o    �o�o 0 	pagerange 	pageRangeg 1    �n
�n 
pctye 1    �m
�m 
DFpf�p  U 5     �lh�k
�l 
capph m    ii �jj $ c o m . a d o b e . I n D e s i g n
�k kfrmID  O klk l     �j�i�h�j  �i  �h  l mnm l     �gop�g  o z t �������������������������������������������������������������������������������������������������������������������   p �qq �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "n rsr l     �f�e�d�f  �e  �d  s tut l     �cvw�c  v z t �������������������������������������������������������������������������������������������������������������������   w �xx �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "u yzy l     �b�a�`�b  �a  �`  z {|{ i   % (}~} I      �_�^�]�_ 0 	linkcheck 	linkCheck�^  �]  ~ O     �� k    ��� ��� l   �\�[�Z�\  �[  �Z  � ��� r    ��� m    	�Y
�Y boovtrue� o      �X�X 0 stopbool stopBool� ��� r    ��� m    �W
�W boovtrue� o      �V�V 0 linkcheckbool linkCheckBool� ��� l   �U�T�S�U  �T  �S  � ��� Y    ���R���Q� k    ��� ��� l   �P���P  � $ out of date/missing link check   � ��� < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c k� ��� r    /��� l   -��O�N� 6   -��� n    $��� 2   " $�M
�M 
clnk� n   "��� 4    "�L�
�L 
cobj� o     !�K�K 0 x  � o    �J�J 0 opendocuments openDocuments� E   % ,��� 1   & (�I
�I 
stts� m   ) +�H
�H sttelmis�O  �N  � o      �G�G 0 missinglinks missingLinks� ��� r   0 A��� l  0 ?��F�E� 6  0 ?��� n   0 6��� 2   4 6�D
�D 
clnk� n  0 4��� 4   1 4�C�
�C 
cobj� o   2 3�B�B 0 x  � o   0 1�A�A 0 opendocuments openDocuments� E   7 >��� 1   8 :�@
�@ 
stts� m   ; =�?
�? sttelood�F  �E  � o      �>�> 0 modifiedlinks modifiedLinks� ��� r   B G��� b   B E��� o   B C�=�= 0 missinglinks missingLinks� o   C D�<�< 0 modifiedlinks modifiedLinks� o      �;�; 0 failedlinks failedLinks� ��� Z   H Y���:�9� >  H O��� l  H M��8�7� I  H M�6��5
�6 .corecnte****       ****� o   H I�4�4 0 failedlinks failedLinks�5  �8  �7  � m   M N�3�3  � r   R U��� m   R S�2
�2 boovfals� o      �1�1 0 linkcheckbool linkCheckBool�:  �9  � ��� Z   Z ����0�/� =  Z ]��� o   Z [�.�. 0 linkcheckbool linkCheckBool� m   [ \�-
�- boovfals� I  ` ��,��
�, .sysodlogaskr        TEXT� b   ` z��� b   ` v��� b   ` t��� b   ` p��� b   ` n��� b   ` g��� b   ` e��� b   ` c��� m   ` a�� ��� ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  � o   a b�+
�+ 
ret � m   c d�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   e f�*
�* 
ret � l  g m��)�(� n   g m��� 1   k m�'
�' 
pnam� n  g k��� 4   h k�&�
�& 
cobj� o   i j�%�% 0 x  � o   g h�$�$ 0 opendocuments openDocuments�)  �(  � o   n o�#
�# 
ret � m   p s�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   t u�"
�" 
ret � m   v y�� ��� J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !� �!��
�! 
btns� J   } ��� ��� m   } ��� ��� 
 S t o p !� �� � m   � ��� ���  W e i t e r !�   � ���
� 
dflt� m   � ��� ���  W e i t e r !�  �0  �/  � ��� Q   � ����� Z   � ������ =  � ���� n   � �� � 1   � ��
� 
bhit  1   � ��
� 
rslt� m   � � � 
 S t o p !� r   � � m   � ��
� boovfals o      �� 0 stopbool stopBool�  �  � R      ���
� .ascrerr ****      � ****�  �  �  �  �R 0 x  � m    �� � I   ��
� .corecnte****       **** o    �� 0 opendocuments openDocuments�  �Q  � � l  � �����  �  �  �  � 5     �
�	
�
 
capp m     �		 $ c o m . a d o b e . I n D e s i g n
�	 kfrmID  | 

 l     ����  �  �    l     ��   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ����  �  �    i   ) , I      �� ��� &0 textoverflowcheck textOverflowCheck�   ��   O     � k    �  l   ��������  ��  ��    r     m    	��
�� boovtrue o      ���� 0 stopbool stopBool  !  r    "#" m    ��
�� boovtrue# o      ���� 0 textcheckbool textCheckBool! $%$ l   ��������  ��  ��  % &'& Y    �(��)*��( k    �++ ,-, l   ��./��  .  text overflow check   / �00 & t e x t   o v e r f l o w   c h e c k- 121 l   ��34��  3 � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not   4 �55 s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o t2 676 l   ;89:8 r    ;;<; l   9=����= 6   9>?> n    $@A@ 2   " $��
�� 
txtfA n   "BCB 4    "��D
�� 
cobjD o     !���� 0 x  C o    ���� 0 opendocuments openDocuments? F   % 8EFE =  & -GHG 1   ' )��
�� 
OVRFH m   * ,��
�� boovtrueF =  . 7IJI n  / 3KLK 1   1 3��
�� 
pvisL 1   / 1��
�� 
pilrJ m   4 6��
�� boovtrue��  ��  < o      ���� 0 textoverflows textOverflows9 % this just checks visible layers   : �MM > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r s7 NON l  < <��PQ��  P c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)   Q �RR � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )O STS l  < <��UV��  U h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)   V �WW � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )T XYX l  < <��Z[��  Z 5 /set failedLinks to missingLinks & modifiedLinks   [ �\\ ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k sY ]^] Z   < M_`����_ >  < Caba l  < Ac����c I  < A��d��
�� .corecnte****       ****d o   < =���� 0 textoverflows textOverflows��  ��  ��  b m   A B����  ` r   F Iefe m   F G��
�� boovfalsf o      ���� 0 textcheckbool textCheckBool��  ��  ^ ghg Z   N �ij����i =  N Qklk o   N O���� 0 textcheckbool textCheckBooll m   O P��
�� boovfalsj I  T ���mn
�� .sysodlogaskr        TEXTm b   T popo b   T lqrq b   T jsts b   T fuvu b   T dwxw b   T [yzy b   T Y{|{ b   T W}~} m   T U ��� 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  ~ o   U V��
�� 
ret | m   W X�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -z o   Y Z��
�� 
ret x l  [ c������ n   [ c��� 1   _ c��
�� 
pnam� n  [ _��� 4   \ _���
�� 
cobj� o   ] ^���� 0 x  � o   [ \���� 0 opendocuments openDocuments��  ��  v o   d e��
�� 
ret t m   f i�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -r o   j k��
�� 
ret p m   l o�� ��� � h a t   T e x t � b e r h a n g .   D a s   s k - I n D e s i g n - S k r i p t   � g o T o F i r s t T e x t O v e r f l o w �   f i n d e t   � b e r h � n g e !n ����
�� 
btns� J   s ~�� ��� m   s v�� ��� 
 S t o p !� ��� m   v y�� ��� , G e h e   z u   e r s t e r   S t e l l e !� ���� m   y |�� ���  W e i t e r !��  � �����
�� 
dflt� m   � ��� ���  W e i t e r !��  ��  ��  h ���� Q   � ������ Z   � ������� =  � ���� n   � ���� 1   � ���
�� 
bhit� 1   � ���
�� 
rslt� m   � ��� ��� 
 S t o p !� r   � ���� m   � ���
�� boovfals� o      ���� 0 stopbool stopBool� ��� =  � ���� n   � ���� 1   � ���
�� 
bhit� 1   � ���
�� 
rslt� m   � ��� ��� , G e h e   z u   e r s t e r   S t e l l e !� ���� k   � ��� ��� n  � ���� I   � ��������� $0 textoverflowgoer textOverflowGoer��  ��  �  f   � �� ��� n  � ���� I   � �������� 0 zoomthepages zoomThePages� ���� o   � ����� 0 activewindow activeWindow��  ��  �  f   � �� ���� r   � ���� m   � ���
�� boovfals� o      ���� 0 stopbool stopBool��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 x  ) m    ���� * I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  ' ���� l  � ���������  ��  ��  ��   5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID   ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   - 0��� I      ������� (0 inputrangesplitter inputRangeSplitter� ���� o      ���� 0 
inputrange 
inputRange��  ��  � k     �� ��� l    ���� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ���� m    �� ���  ,��  � n     ��� 1   
 ��
�� 
txdl� 1   	 
��
�� 
ascr� ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 
inputrange 
inputRange� o      ���� 0 splittedrange splittedRange� ��� l   ���� r    ��� o    ���� 0 olddelimiters oldDelimiters� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ���� L    �� o    ���� 0 splittedrange splittedRange��  � ��� l     ��������  ��  ��  �    l     ����   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     ��������  ��  ��    i   1 4	
	 I      ������ ,0 splittedrangecleaner splittedRangeCleaner �� o      ���� 0 splittedrange splittedRange��  ��  
 l     ��~�}�  �~  �}    l     �|�{�z�|  �{  �z    l     �y�y   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "  l     �x�w�v�x  �w  �v    i   5 8 I      �u�t�s�u $0 textoverflowgoer textOverflowGoer�t  �s   k     2  O     0 k    /  !  l   �r�q�p�r  �q  �p  ! "�o" Z    /#$�n%# >   &'& l   (�m�l( I   �k)�j
�k .corecnte****       ****) o    	�i�i 0 textoverflows textOverflows�j  �m  �l  ' m    �h�h  $ k    '** +,+ r    -.- n    /0/ 1    �g
�g 
pnam0 n    121 1    �f
�f 
PaPa2 n    343 4   �e5
�e 
cobj5 m    �d�d 4 o    �c�c 0 textoverflows textOverflows. o      �b�b 0 
activepage 
activePage, 6�a6 r    '787 n    #9:9 4     #�`;
�` 
page; o   ! "�_�_ 0 
activepage 
activePage: n     <=< 1     �^
�^ 
pare= o    �]�] 0 activewindow activeWindow8 n      >?> 1   $ &�\
�\ 
pacp? o   # $�[�[ 0 activewindow activeWindow�a  �n  % I  * /�Z@�Y
�Z .sysobeepnull��� ��� long@ l  * +A�X�WA m   * +�V�V �X  �W  �Y  �o   5     �UB�T
�U 
cappB m    CC �DD $ c o m . a d o b e . I n D e s i g n
�T kfrmID   E�SE l  1 1�R�Q�P�R  �Q  �P  �S   FGF l     �O�N�M�O  �N  �M  G HIH l     �LJK�L  J z t �������������������������������������������������������������������������������������������������������������������   K �LL �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "I MNM l     �K�J�I�K  �J  �I  N OPO i   9 <QRQ I      �HS�G�H 0 zoomthepages zoomThePagesS T�FT o      �E�E 0 	thewindow 	theWindow�F  �G  R O     4UVU k    3WW XYX l   �D�C�B�D  �C  �B  Y Z[Z O    1\]\ k    0^^ _`_ I   �Aa�@
�A .K2  seltnull���     ****a m    �?
�? senmnada�@  ` bcb l   defd I   �>�=g
�> .K2  zmtonull���     Lwin�=  g �<h�;
�< 
givnh m    �:
�: zopezftp�;  e  spread   f �ii  s p r e a dc j�9j Z    0kl�8�7k >   !mnm l   o�6�5o I   �4p�3
�4 .corecnte****       ****p o    �2�2 0 textoverflows textOverflows�3  �6  �5  n m     �1�1  l r   $ ,qrq n   $ (sts 4  % (�0u
�0 
cobju m   & '�/�/ t o   $ %�.�. 0 textoverflows textOverflowsr n      vwv 1   ) +�-
�- 
selew o   ( )�,�, 0 activewindow activeWindow�8  �7  �9  ] o    	�+�+ 0 	thewindow 	theWindow[ x�*x l  2 2�)�(�'�)  �(  �'  �*  V 5     �&y�%
�& 
cappy m    zz �{{ $ c o m . a d o b e . I n D e s i g n
�% kfrmID  P |}| l     �$�#�"�$  �#  �"  } ~~ l     �!���!  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " ��� l     � ���   �  �  � ��� i   = @��� I      ���� 0 displaytheend displayTheEnd�  �  � I    ���
� .sysodlogaskr        TEXT� m     �� ��� ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t� ���
� 
btns� m    �� ���  O K� ���
� 
dflt� m    �� ���  O K� ���
� 
givu� m    �� �  � ��� l     ����  �  �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� l     ����  � L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   � ��� � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   A D��� I      ���� 20 displaynotificationlong displayNotificationLong� ��� o      �
�
 0 	titletext 	titleText� ��� o      �	�	 0 subtitletext subtitleText� ��� o      �� 0 bodytext bodyText�  �  � k     �� ��� l    	���� I    	���
� .sysonotfnull��� ��� TEXT� o     �� 0 bodytext bodyText� ���
� 
appr� o    �� 0 	titletext 	titleText� ���
� 
subt� o    � �  0 subtitletext subtitleText�  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l  
 
������  �  	delay 0.5   � ���  d e l a y   0 . 5��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � < 6my displayNotificationShort("Title text", "Body text")   � ��� l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )� ���� i   E H��� I      ������� 40 displaynotificationshort displayNotificationShort� ��� o      ���� 0 	titletext 	titleText� ���� o      ���� 0 bodytext bodyText��  ��  � k     	�� ��� l    ���� I    ����
�� .sysonotfnull��� ��� TEXT� o     ���� 0 bodytext bodyText� �����
�� 
appr� o    ���� 0 	titletext 	titleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l   ������  �  	delay 0.5   � ���  d e l a y   0 . 5��  ��       (���������������������������������������������������������  � &������������������������������������������������������������������������������  0 functionchoice functionChoice�� 0 chosenpreset chosenPreset�� 0 	pagerange 	pageRange�� "0 functionchooser functionChooser�� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� ,0 fileextensionremover fileExtensionRemover�� 0 
pageranger 
pageRanger�� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck�� (0 inputrangesplitter inputRangeSplitter�� ,0 splittedrangecleaner splittedRangeCleaner�� $0 textoverflowgoer textOverflowGoer�� 0 zoomthepages zoomThePages�� 0 displaytheend displayTheEnd�� 20 displaynotificationlong displayNotificationLong�� 40 displaynotificationshort displayNotificationShort
�� .aevtoappnull  �   � ****��  0 activedocument activeDocument�� 0 activewindow activeWindow�� 0 opendocuments openDocuments�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer�� 0 stopbool stopBool�� 0 textoverflows textOverflows�� (0 preservedpagerange preservedPageRange��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  � ����� �  �� ��� . P D F - E x p o r t   ( M e h r s e i t i g )� ����� �  �� ��� > s k - D r u c k d a t e n   X - 3   ( D r u c k b o g e n )� �� ������ ���� "0 functionchooser functionChooser��  ��  �    ����������&��3��B��
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� i���mv�b   ����� 	Ec   Ob   �kv  )b   k+ Y 5b   �kv  )b   k+ Y b   �kv  )b   k+ Y hOP� ��V�������� .0 pdfexportersinglepage pdfExporterSinglepage�� ����   ����  0 functionchoice functionChoice��   ������������������  0 functionchoice functionChoice�� 0 
buttonname 
buttonName�� 0 
inputrange 
inputRange�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath�� 0 exportpreset exportPreset .b��������n�������������������������������������������~�}�|���{�z�y�x�w�v�u2@�t
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
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� (0 inputrangesplitter inputRangeSplitter
�� 
capp
�� kfrmID  �� 0 splittedrange splittedRange
�� .corecnte****       ****
�� 
cobj�� 0 
pageranger 
pageRanger��  0 activedocument activeDocument
�� 
pnam�� ,0 fileextensionremover fileExtensionRemover
�� 
path
�� 
TEXT
� 
PFst
�~ 
exft
�} eXftt_PD
�| 
kfil
�{ 
usng
�z 
imot�y 
�x .K2  exAscBKT        docu
�w 
DFpf�v (0 preservedpagerange preservedPageRange
�u 
pcty�t 20 displaynotificationlong displayNotificationLong��#��%�&E�O��b  ���� Ec  Ob  f ���%�%�b  l O��,E�O*�k+ O)a a a 0 � �k_ j kh )_ a �/k+ O_ a ,E�O)�k+ E�O_ a ,a &E�O*a b  a &/E�O_ a a a  ��%a !%_ a �/%a "%a #�a $fa % &OP[OY��O*a ', _ (*a ),FUOPUOb  a *kv  )a +b  a k/a &a ,�%m+ -Y hOPY h� �sO�r�q�p�s ,0 pdfexportermultipage pdfExporterMultipage�r �o�o   �n�n  0 functionchoice functionChoice�q   �m�l�k�j�i�h�g�m  0 functionchoice functionChoice�l 0 
buttonname 
buttonName�k 0 x  �j 0 docname docName�i 0 
newdocname 
newdocName�h 0 filepath filePath�g 0 exportpreset exportPreset 7[�f�e�d�cg�b�a�`y��_��^�]���\��[�Z�Y��X���W�VH�U�T�S�R�Q�P�O�N�M��L�K�J�I�H�G�F)�E�D�CTgz�B
�f 
ctxt�e ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�d 
inSL
�c 
prmp
�b 
okbt�a 
�` .gtqpchltns    @   @ ns  
�_ 
ret 
�^ 
dtxt
�] 
btns
�\ 
dflt
�[ .sysodlogaskr        TEXT
�Z 
rslt
�Y 
bhit
�X 
ttxt�W 0 
pageranger 
pageRanger
�V 
capp
�U kfrmID  �T 0 opendocuments openDocuments
�S .corecnte****       ****
�R 
cobj
�Q 
pnam�P ,0 fileextensionremover fileExtensionRemover
�O 
path
�N 
TEXT
�M 
PFst
�L 
exft
�K eXftt_PD
�J 
kfil
�I 
usng
�H 
imot�G 
�F .K2  exAscBKT        docu
�E 
DFpf�D (0 preservedpagerange preservedPageRange
�C 
pcty�B 20 displaynotificationlong displayNotificationLong�p���%�&E�O��b  ���� Ec  Ob  f{b  �kv I��%�%�b  ��a lva a � O_ a ,a   _ a ,Ec  Y a Ec  Y a Ec  O)b  k+ O)a a a 0 � �k_ j kh _ a  �/a !,E�O)�k+ "E�O_ a  �/a #,a $&E�O*a %b  a $&/E�Ob  a &kv  +_ a  �/a 'a (a )��%a *%a +�a ,fa - .Y (_ a  �/a 'a (a )��%a /%a +�a ,fa - .OP[OY�_O*a 0, _ 1*a 2,FUOPUOb  a 3kv *)a 4b  a  k/a $&_ j a $&a 5%m+ 6Y hOPY h� �A��@�?�>�A 0 idmlexporter idmlExporter�@ �=	�= 	  �<�<  0 functionchoice functionChoice�?   �;�:�9�8�7�;  0 functionchoice functionChoice�: 0 x  �9 0 docname docName�8 0 
newdocname 
newdocName�7 0 filepath filePath �6��5�4�3�2�1�0�/�.�-�,�+��*�)����(
�6 
capp
�5 kfrmID  �4 0 opendocuments openDocuments
�3 .corecnte****       ****
�2 
cobj
�1 
pnam�0 ,0 fileextensionremover fileExtensionRemover
�/ 
path
�. 
TEXT
�- 
exft
�, eXftidml
�+ 
kfil�* 
�) .K2  exAscBKT        docu�( 20 displaynotificationlong displayNotificationLong�> c)���0 D Ak�j kh ��/�,E�O)�k+ E�O��/�,�&E�O��/��줣%�%� OP[OY��UO)a a �j �&a %m+ � �'��&�%
�$�' ,0 fileextensionremover fileExtensionRemover�& �#�#   �"�" 0 docname docName�%  
 �!� ���! 0 docname docName�  0 olddelimiters oldDelimiters� 0 	pathitems 	pathItems� 0 
newdocname 
newdocName 
�����&���
� 
ascr
� 
txdl
� 
ctxt
� 
citm
� .corecnte****       ****
� 
cobj���
� 
TEXT�$ F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO�� �Q���� 0 
pageranger 
pageRanger� ��   �� 0 	pagerange 	pageRange�   �� 0 	pagerange 	pageRange �i����

� 
capp
� kfrmID  
� 
DFpf
� 
pcty�
 (0 preservedpagerange preservedPageRange� #)���0 *�, *�,E�UO*�, �*�,FUU� �	~����	 0 	linkcheck 	linkCheck�  �   ������ 0 linkcheckbool linkCheckBool� 0 x  � 0 missinglinks missingLinks� 0 modifiedlinks modifiedLinks� 0 failedlinks failedLinks � ���������������������������������������������
�  
capp
�� kfrmID  �� 0 stopbool stopBool�� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
clnk  
�� 
stts
�� sttelmis
�� sttelood
�� 
ret 
�� 
pnam
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit��  ��  � �)���0 �eE�OeE�O �k�j kh ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fE�Y hO�f  6��%�%�%��/�,%�%a %�%a %a a a lva a a  Y hO _ a ,a   fE�Y hW X  h[OY�aOPU� ���������� &0 textoverflowcheck textOverflowCheck��  ��   ������ 0 textcheckbool textCheckBool�� 0 x   $����������������������������������������������������������
�� 
capp
�� kfrmID  �� 0 stopbool stopBool�� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
txtf
�� 
OVRF
�� 
pilr
�� 
pvis�� 0 textoverflows textOverflows
�� 
ret 
�� 
pnam
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� $0 textoverflowgoer textOverflowGoer�� 0 activewindow activeWindow�� 0 zoomthepages zoomThePages��  ��  �� �)���0 �eE�OeE�O �k�j kh ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fE�Y hO�f  ;��%�%�%��/a ,%�%a %�%a %a a a a mva a a  Y hO =_ a ,a   fE�Y &_ a ,a   )j+ O)_  k+ !OfE�Y hW X " #h[OY�EOPU� ����������� (0 inputrangesplitter inputRangeSplitter�� ����   ���� 0 
inputrange 
inputRange��   ������ 0 
inputrange 
inputRange�� 0 olddelimiters oldDelimiters ���������
�� 
ascr
�� 
txdl
�� 
citm�� 0 splittedrange splittedRange�� ��,E�O�kv��,FO��-E�O���,FO�� ��
�������� ,0 splittedrangecleaner splittedRangeCleaner�� ����   ���� 0 splittedrange splittedRange��   ���� 0 splittedrange splittedRange  �� h� ���������� $0 textoverflowgoer textOverflowGoer��  ��   ���� 0 
activepage 
activePage ��C����������������������
�� 
capp
�� kfrmID  �� 0 textoverflows textOverflows
�� .corecnte****       ****
�� 
cobj
�� 
PaPa
�� 
pnam�� 0 activewindow activeWindow
�� 
pare
�� 
page
�� 
pacp
�� .sysobeepnull��� ��� long�� 3)���0 )�j j ��k/�,�,E�O��,�/��,FY mj UOP� ��R�������� 0 zoomthepages zoomThePages�� ����   ���� 0 	thewindow 	theWindow��   ���� 0 	thewindow 	theWindow ��z����������������������
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
sele�� 5)���0 -� &�j O*��l O�j 	j ��k/��,FY hUOPU� ������� !���� 0 displaytheend displayTheEnd��  ��     ! �������������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k� � �������"#���� 20 displaynotificationlong displayNotificationLong�� ��$�� $  �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText��  " �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText# ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ���� OP� ���~�}%&�|� 40 displaynotificationshort displayNotificationShort�~ �{'�{ '  �z�y�z 0 	titletext 	titleText�y 0 bodytext bodyText�}  % �x�w�x 0 	titletext 	titleText�w 0 bodytext bodyText& �v�u
�v 
appr
�u .sysonotfnull��� ��� TEXT�| 
��l OP� �t(�s�r)*�q
�t .aevtoappnull  �   � ****( k     L++  ��p�p  �s  �r  )  * �o ��n�m�l�k�j�i�h�g�f ��e�d�c�b�a
�o 
capp
�n kfrmID  
�m 
pacd�l  0 activedocument activeDocument
�k 
pacw�j 0 activewindow activeWindow
�i 
docu�h 0 opendocuments openDocuments
�g 
PFst
�f 
pnam�e ,0 pdfpresetsoncomputer pdfPresetsOnComputer�d 0 	linkcheck 	linkCheck�c &0 textoverflowcheck textOverflowCheck�b 0 stopbool stopBool�a "0 functionchooser functionChooser�q M)���0 E*�,E�O*�,E�O*�-E�O*�-�,�[�,\Z�@C1E�O)j+ O)j+ O_ e  
)j+ Y hOPU� ,, -�`�_�^-(                                                                                  InDn  alis    �  Macintosh HD               ϓ�[H+   �MrAdobe InDesign CC 2014.app                                      �Ms��_        ����  	                Adobe InDesign CC 2014    ϓ�;      ��?     �Mr   Q  MMacintosh HD:Applications: Adobe InDesign CC 2014: Adobe InDesign CC 2014.app   6  A d o b e   I n D e s i g n   C C   2 0 1 4 . a p p    M a c i n t o s h   H D  >Applications/Adobe InDesign CC 2014/Adobe InDesign CC 2014.app  / ��  
�` 
docu�_ 
�^ kfrmID  � .. /�]�\�[/ -�Z�Y�X
�Z 
docu�Y 
�X kfrmID  
�] 
Lwin�\  H#
�[ kfrmID  � �W0�W 0  11 22 -�V�U�T
�V 
docu�U 
�T kfrmID  � �S3�S 	3 	 456789:;<4 �== 0 ( a l t ) P D F   X - 3   P S O u n c o a t e d5 �>> : s k - D r u c k d a t e n   ( w i e   D i s t i l l e r )6 �?? > s k - D r u c k d a t e n   X - 3   ( D r u c k b o g e n )7 �@@ " s k - D r u c k d a t e n   X - 38 �AA 8 s k - H a n s g r o h e   B l a t t e r k a t a l o g9 �BB ( s k - I n D e s i g n - F a r b s a t z: �CC   s k - M e d i e n n e u t r a l; �DD  s k - S c r e e n< �EE  s k - T e m p o r a r
�� boovtrue� �RF�R  F   
�� ****prna��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   ascr  ��ޭ