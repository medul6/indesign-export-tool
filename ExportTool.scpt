FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.2.10     �   "   v e r s i o n   1 . 9 . 2 . 1 0      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ 0 activewindow activeWindow��   5  7 8 7 p       9 9 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   8  : ; : p       < < ������ (0 preservedpagerange preservedPageRange��   ;  = > = p       ? ? ������ 0 stopbool stopBool��   >  @ A @ p       B B ������ 0 splittedrange splittedRange��   A  C D C p       E E ������ (0 splittedrangemagic splittedRangeMagic��   D  F G F p       H H ������ 0 splittedmagic splittedMagic��   G  I J I l     ��������  ��  ��   J  K L K p       M M ������ 0 textoverflows textOverflows��   L  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R  test variables!!!    S � T T " t e s t   v a r i a b l e s ! ! ! Q  U V U l     �� W X��   W  global filePath    X � Y Y  g l o b a l   f i l e P a t h V  Z [ Z l     �� \ ]��   \  global chosenPresetText    ] � ^ ^ . g l o b a l   c h o s e n P r e s e t T e x t [  _ ` _ l     �� a b��   a  global docName    b � c c  g l o b a l   d o c N a m e `  d e d l     �� f g��   f  global newFilePath    g � h h $ g l o b a l   n e w F i l e P a t h e  i j i l     �� k l��   k  global pathItems    l � m m   g l o b a l   p a t h I t e m s j  n o n l     �� p q��   p  global pageRange    q � r r   g l o b a l   p a g e R a n g e o  s t s l     �� u v��   u  global newdocName    v � w w " g l o b a l   n e w d o c N a m e t  x y x l     �� z {��   z  global failedLinks    { � | | $ g l o b a l   f a i l e d L i n k s y  } ~ } l     ��  ���     global textOverflows    � � � � ( g l o b a l   t e x t O v e r f l o w s ~  � � � l     �� � ���   �  global modifiedLinks    � � � � ( g l o b a l   m o d i f i e d L i n k s �  � � � l     �� � ���   �  global missingLinks    � � � � & g l o b a l   m i s s i n g L i n k s �  � � � l     �� � ���   �  global exportPreset    � � � � & g l o b a l   e x p o r t P r e s e t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  properties!    � � � �  p r o p e r t i e s ! �  � � � j     �� ���  0 functionchoice functionChoice � J      � �  ��� � m      � � � � �  P D F - E x p o r t��   �  � � � j    	�� ��� 0 chosenpreset chosenPreset � J     � �  ��� � m     � � � � �  s k - S c r e e n��   �  � � � j   
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
okbt. m    // �00  W e i t e r !�w   o      �v�v  0 functionchoice functionChoice 121 l   �u�t�s�u  �t  �s  2 343 Z    f567�r5 =    #898 l   :�q�p: o    �o�o  0 functionchoice functionChoice�q  �p  9 J    ";; <�n< m     == �>> 2 P D F - E x p o r t   ( E i n z e l s e i t e n )�n  6 n   & 0?@? I   ' 0�mA�l�m .0 pdfexportersinglepage pdfExporterSinglepageA B�kB o   ' ,�j�j  0 functionchoice functionChoice�k  �l  @  f   & '7 CDC =   3 <EFE l  3 8G�i�hG o   3 8�g�g  0 functionchoice functionChoice�i  �h  F J   8 ;HH I�fI m   8 9JJ �KK . P D F - E x p o r t   ( M e h r s e i t i g )�f  D LML n   ? INON I   @ I�eP�d�e ,0 pdfexportermultipage pdfExporterMultipageP Q�cQ o   @ E�b�b  0 functionchoice functionChoice�c  �d  O  f   ? @M RSR =   L UTUT l  L QV�a�`V o   L Q�_�_  0 functionchoice functionChoice�a  �`  U J   Q TWW X�^X m   Q RYY �ZZ  I D M L - E x p o r t�^  S [�][ n   X b\]\ I   Y b�\^�[�\ 0 idmlexporter idmlExporter^ _�Z_ o   Y ^�Y�Y  0 functionchoice functionChoice�Z  �[  ]  f   X Y�]  �r  4 `�X` l  g g�W�V�U�W  �V  �U  �X   aba l     �T�S�R�T  �S  �R  b cdc l     �Qef�Q  e z t �������������������������������������������������������������������������������������������������������������������   f �gg �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "d hih l     �P�O�N�P  �O  �N  i jkj i    lml I      �Mn�L�M .0 pdfexportersinglepage pdfExporterSinglepagen o�Ko o      �J�J  0 functionchoice functionChoice�K  �L  m k    ppp qrq l     �I�H�G�I  �H  �G  r sts O     uvu r    wxw 1    �F
�F 
pacdx o      �E�E 0 opendocuments openDocumentsv 5     �Dy�C
�D 
cappy m    zz �{{ $ c o m . a d o b e . I n D e s i g n
�C kfrmID  t |}| l   �B�A�@�B  �A  �@  } ~~ n   ��� I    �?�>�=�? 0 	linkcheck 	linkCheck�>  �=  �  f     ��� n   ��� I    �<�;�:�< &0 textoverflowcheck textOverflowCheck�;  �:  �  f    � ��9� Z   p���8�� F    .��� =   "��� o     �7�7 0 linkcheckbool linkCheckBool� m     !�6
�6 boovtrue� =  % ,��� o   % *�5�5 0 textcheckbool textCheckBool� m   * +�4
�4 boovtrue� k   1k�� ��� r   1 8��� c   1 6��� b   1 4��� o   1 2�3�3  0 functionchoice functionChoice� m   2 3�� ���  !� m   4 5�2
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
buttonName�*  � o      �(�( 0 chosenpreset chosenPreset� ��'� Z   Ok���&�� >  O V��� o   O T�%�% 0 chosenpreset chosenPreset� m   T U�$
�$ boovfals� k   Yf�� ��� I  Y p�#��
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
�� kfrmID  � MNM l 99��������  ��  ��  N O��O Z  9fPQ����P > 9DRSR o  9>���� 0 chosenpreset chosenPresetS J  >CTT U��U m  >AVV �WW  s k - T e m p o r � r��  Q k  GbXX YZY l GG��[\��  [  my displayTheEnd()   \ �]] $ m y   d i s p l a y T h e E n d ( )Z ^_^ l GG��`a��  ` T Nmy displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)   a �bb � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   " D o k u m e n t :   "   &   n e w d o c N a m e )_ c��c n Gbded I  Hb��f���� 20 displaynotificationlong displayNotificationLongf ghg m  HKii �jj ( P D F   E x p o r t   g e s t a r t e th klk l KYm����m c  KYnon l KUp����p n  KUqrq 4  PU��s
�� 
cobjs m  ST���� r o  KP���� 0 chosenpreset chosenPreset��  ��  o m  UX��
�� 
TEXT��  ��  l t��t b  Y^uvu m  Y\ww �xx  D o k u m e n t :  v o  \]���� 0 
newdocname 
newdocName��  ��  e  f  GH��  ��  ��  ��  �&  � L  ik����  �'  �8  � L  np����  �9  k yzy l     ��������  ��  ��  z {|{ l     ��}~��  } z t �������������������������������������������������������������������������������������������������������������������   ~ � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "| ��� l     ��������  ��  ��  � ��� i    ��� I      ������� ,0 pdfexportermultipage pdfExporterMultipage� ���� o      ����  0 functionchoice functionChoice��  ��  � k    ��� ��� n    ��� I    �������� 0 	linkcheck 	linkCheck��  ��  �  f     � ��� n   ��� I    �������� &0 textoverflowcheck textOverflowCheck��  ��  �  f    � ���� Z   ������� F    ��� =   ��� o    ���� 0 linkcheckbool linkCheckBool� m    ��
�� boovtrue� =   ��� o    ���� 0 textcheckbool textCheckBool� m    ��
�� boovtrue� k   "��� ��� r   " )��� c   " '��� b   " %��� o   " #����  0 functionchoice functionChoice� m   # $�� ���  !� m   % &��
�� 
ctxt� o      ���� 0 
buttonname 
buttonName� ��� r   * ?��� I  * 9����
�� .gtqpchltns    @   @ ns  � o   * +�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer� �~��
�~ 
inSL� o   , 1�}�} 0 chosenpreset chosenPreset� �|��
�| 
prmp� m   2 3�� ��� $ P D F - P r e s e t   w � h l e n :� �{��z
�{ 
okbt� o   4 5�y�y 0 
buttonname 
buttonName�z  � o      �x�x 0 chosenpreset chosenPreset� ��� Z   @ ����w�� >  @ G��� o   @ E�v�v 0 chosenpreset chosenPreset� m   E F�u
�u boovfals� k   J ��� ��� l  J J�t���t  � 1 +if chosenPreset is not {"sk-Tempor�r"} then   � ��� V i f   c h o s e n P r e s e t   i s   n o t   { " s k - T e m p o r � r " }   t h e n� ��� I  J j�s��
�s .sysodlogaskr        TEXT� b   J O��� b   J M��� m   J K�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   K L�r
�r 
ret � m   M N�� ��� : ( W e n n   a l l e ,   d a n n   ' a l l   p a g e s ' )� �q��
�q 
dtxt� o   P U�p�p 0 	pagerange 	pageRange� �o��
�o 
btns� J   X `�� ��� m   X [�� ���  A l l   P a g e s� ��n� m   [ ^�� ���  W e i t e r !�n  � �m��l
�m 
dflt� m   c f�� ���  W e i t e r !�l  � ��k� Z   k ����j�� =  k v��� n   k r��� 1   n r�i
�i 
bhit� 1   k n�h
�h 
rslt� m   r u�� ���  W e i t e r !� r   y ���� l  y ���g�f� n   y ���� 1   | ��e
�e 
ttxt� 1   y |�d
�d 
rslt�g  �f  � o      �c�c 0 	pagerange 	pageRange�j  � r   � ���� m   � ��� ���  a l l   p a g e s� o      �b�b 0 	pagerange 	pageRange�k  �w  � L   � ��a�a  � ��� l  � ��`�_�^�`  �_  �^  � ��� n  � ���� I   � ��]��\�] 0 
pageranger 
pageRanger� ��[� o   � ��Z�Z 0 	pagerange 	pageRange�[  �\  �  f   � �� ��� l  � ��Y�X�W�Y  �X  �W  � ��� O   �w��� k   �v�� ��� l  � ��V�U�T�V  �U  �T  � � � Y   �a�S�R l  �\ k   �\ 	 l  � ��Q�P�O�Q  �P  �O  	 

 r   � � n   � � 1   � ��N
�N 
pnam n  � � 4   � ��M
�M 
cobj o   � ��L�L 0 x   o   � ��K�K 0 opendocuments openDocuments o      �J�J 0 docname docName  r   � � n  � � I   � ��I�H�I ,0 fileextensionremover fileExtensionRemover �G o   � ��F�F 0 docname docName�G  �H    f   � � o      �E�E 0 
newdocname 
newdocName  r   � � l  � ��D�C c   � � !  n   � �"#" 1   � ��B
�B 
path# n  � �$%$ 4   � ��A&
�A 
cobj& o   � ��@�@ 0 x  % o   � ��?�? 0 opendocuments openDocuments! m   � ��>
�> 
TEXT�D  �C   o      �=�= 0 filepath filePath '(' r   � �)*) 4   � ��<+
�< 
PFst+ l  � �,�;�:, c   � �-.- o   � ��9�9 0 chosenpreset chosenPreset. m   � ��8
�8 
TEXT�;  �:  * o      �7�7 0 exportpreset exportPreset( /0/ l  � ��6�5�4�6  �5  �4  0 121 Z   �Z34�353 =  �676 o   ��2�2 0 chosenpreset chosenPreset7 J  88 9�19 m  :: �;;  s k - T e m p o r � r�1  4 k  1<< =>= l �0?@�0  ? M G this is temporarily disabled, because it just doesn't work that way :)   @ �AA �   t h i s   i s   t e m p o r a r i l y   d i s a b l e d ,   b e c a u s e   i t   j u s t   d o e s n ' t   w o r k   t h a t   w a y   : )> BCB l �/DE�/  D � �asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes   E �FF a s y n c h r o n o u s   e x p o r t   f i l e   o p e n D o c u m e n t s ' s   i t e m   x   f o r m a t   P D F   t y p e   t o   ( f i l e P a t h   &   n e w d o c N a m e   &   " . p d f " )   u s i n g   e x p o r t P r e s e t   s h o w i n g   o p t i o n s   y e sC G�.G I 1�-HI
�- .K2  exAscBKT        docuH n JKJ 4  �,L
�, 
cobjL o  �+�+ 0 x  K o  �*�* 0 opendocuments openDocumentsI �)MN
�) 
exftM m  �(
�( eXftt_PDN �'OP
�' 
kfilO l #Q�&�%Q b  #RSR b  TUT o  �$�$ 0 filepath filePathU o  �#�# 0 
newdocname 
newdocNameS m  "VV �WW  . p d f�&  �%  P �"XY
�" 
usngX o  &'�!�! 0 exportpreset exportPresetY � Z�
�  
imotZ m  *+�
� boovfals�  �.  �3  5 I 4Z�[\
� .K2  exAscBKT        docu[ n 4<]^] 4  7<�_
� 
cobj_ o  :;�� 0 x  ^ o  47�� 0 opendocuments openDocuments\ �`a
� 
exft` m  ?B�
� eXftt_PDa �bc
� 
kfilb l ELd��d b  ELefe b  EHghg o  EF�� 0 filepath filePathh o  FG�� 0 
newdocname 
newdocNamef m  HKii �jj  . p d f�  �  c �kl
� 
usngk o  OP�� 0 exportpreset exportPresetl �m�
� 
imotm m  ST�
� boovfals�  2 n�n l [[���
�  �  �
  �   / ) this iterates through all open documents    �oo R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�S 0 x   m   � ��	�	  I  � ��p�
� .corecnte****       ****p o   � ��� 0 opendocuments openDocuments�  �R    qrq l bb����  �  �  r sts l bb��� �  �  �   t uvu O  btwxw l jsyz{y r  js|}| o  jm���� (0 preservedpagerange preservedPageRange} 1  mr��
�� 
pctyz * $ always restore original preferences   { �~~ H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e sx 1  bg��
�� 
DFpfv � l uu��������  ��  ��  � ��� l uu������  �  wait for all tasks   � ��� $ w a i t   f o r   a l l   t a s k s� ���� l uu��������  ��  ��  ��  � 5   � ������
�� 
capp� m   � ��� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ��� l xx��������  ��  ��  � ��� Z  x�������� > x���� o  x}���� 0 chosenpreset chosenPreset� J  }��� ���� m  }��� ���  s k - T e m p o r � r��  � k  ���� ��� l ��������  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l ��������  � x rmy displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )� ���� n ����� I  ��������� 20 displaynotificationlong displayNotificationLong� ��� m  ���� ��� ( P D F   E x p o r t   g e s t a r t e t� ��� l �������� c  ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 chosenpreset chosenPreset��  ��  � m  ����
�� 
TEXT��  ��  � ���� b  ����� l �������� c  ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 opendocuments openDocuments��  ��  ��  � m  ����
�� 
TEXT��  ��  � m  ���� ��� .   D o k u m e n t ( e )   e x p o r t i e r t��  ��  �  f  ����  ��  ��  � ��� l ����������  ��  ��  � ���� l ��������  �  end if   � ���  e n d   i f��  ��  � L  ������  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i    "��� I      ������� 0 idmlexporter idmlExporter� ���� o      ����  0 functionchoice functionChoice��  ��  � k     ��� ��� n    ��� I    �������� 0 	linkcheck 	linkCheck��  ��  �  f     � ��� n   ��� I    �������� &0 textoverflowcheck textOverflowCheck��  ��  �  f    � ���� Z    ������� F    ��� =   ��� o    ���� 0 linkcheckbool linkCheckBool� m    ��
�� boovtrue� =   ��� o    ���� 0 textcheckbool textCheckBool� m    ��
�� boovtrue� k   " ��� ��� O   " q��� Y   * p�������� l  8 k���� k   8 k�� ��� l  8 8��������  ��  ��  � ��� r   8 @��� n   8 >��� 1   < >��
�� 
pnam� n  8 <��� 4   9 <���
�� 
cobj� o   : ;���� 0 x  � o   8 9���� 0 opendocuments openDocuments� o      ���� 0 docname docName� ��� r   A I��� n  A G� � I   B G������ ,0 fileextensionremover fileExtensionRemover �� o   B C���� 0 docname docName��  ��     f   A B� o      ���� 0 
newdocname 
newdocName�  r   J T l  J R���� c   J R	 n   J P

 1   N P��
�� 
path n  J N 4   K N��
�� 
cobj o   L M���� 0 x   o   J K���� 0 opendocuments openDocuments	 m   P Q��
�� 
TEXT��  ��   o      ���� 0 filepath filePath  l  U U��������  ��  ��    I  U i��
�� .K2  exAscBKT        docu n  U Y 4   V Y��
�� 
cobj o   W X���� 0 x   o   U V���� 0 opendocuments openDocuments ��
�� 
exft m   Z [��
�� eXftidml ����
�� 
kfil l  \ c���� b   \ c b   \ _ o   \ ]���� 0 filepath filePath o   ] ^���� 0 
newdocname 
newdocName m   _ b   �!! 
 . i d m l��  ��  ��   "��" l  j j��������  ��  ��  ��  � / ) this iterates through all open documents   � �## R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�� 0 x  � m   - .���� � I  . 3��$��
�� .corecnte****       ****$ o   . /���� 0 opendocuments openDocuments��  ��  � 5   " '��%��
�� 
capp% m   $ %&& �'' $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ()( l  r r��*+��  *  my displayTheEnd()   + �,, $ m y   d i s p l a y T h e E n d ( )) -.- l  r r��/0��  / y smy displayNotificationShort("IDML Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   0 �11 � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " I D M L   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " ). 2��2 n  r �343 I   s ���5���� 20 displaynotificationlong displayNotificationLong5 676 m   s v88 �99 * I D M L   E x p o r t   g e s t a r t e t7 :;: m   v y<< �==  S u b t i t l e   t e x t; >��> b   y �?@? l  y �A����A c   y �BCB l  y ~D���D I  y ~�~E�}
�~ .corecnte****       ****E o   y z�|�| 0 opendocuments openDocuments�}  ��  �  C m   ~ �{
�{ 
TEXT��  ��  @ m   � �FF �GG .   D o k u m e n t ( e )   e x p o r t i e r t��  ��  4  f   r s��  ��  � L   � ��z�z  ��  � HIH l     �y�x�w�y  �x  �w  I JKJ l     �vLM�v  L z t �������������������������������������������������������������������������������������������������������������������   M �NN �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "K OPO l     �u�t�s�u  �t  �s  P QRQ i   # &STS I      �rU�q�r ,0 fileextensionremover fileExtensionRemoverU V�pV o      �o�o 0 docname docName�p  �q  T k     EWW XYX l    Z[\Z r     ]^] n    _`_ 1    �n
�n 
txdl` 1     �m
�m 
ascr^ o      �l�l 0 olddelimiters oldDelimiters[ * $ always preserve original delimiters   \ �aa H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r sY bcb r    ded J    	ff g�kg m    hh �ii  .�k  e n     jkj 1   
 �j
�j 
txdlk 1   	 
�i
�i 
ascrc lml r    non n    pqp 2   �h
�h 
citmq l   r�g�fr c    sts o    �e�e 0 docname docNamet m    �d
�d 
ctxt�g  �f  o o      �c�c 0 	pathitems 	pathItemsm uvu Z    6wx�byw ?    z{z l   |�a�`| I   �_}�^
�_ .corecnte****       ****} o    �]�] 0 	pathitems 	pathItems�^  �a  �`  { m    ~~ �  2x r     -��� n     +��� 7  ! +�\��
�\ 
cobj� m   % '�[�[ � m   ( *�Z�Z��� o     !�Y�Y 0 	pathitems 	pathItems� o      �X�X 0 	pathitems 	pathItems�b  y r   0 6��� n   0 4��� 4   1 4�W�
�W 
cobj� m   2 3�V�V � o   0 1�U�U 0 	pathitems 	pathItems� o      �T�T 0 	pathitems 	pathItemsv ��� r   7 <��� c   7 :��� o   7 8�S�S 0 	pathitems 	pathItems� m   8 9�R
�R 
TEXT� o      �Q�Q 0 
newdocname 
newdocName� ��� l  = B���� r   = B��� o   = >�P�P 0 olddelimiters oldDelimiters� n     ��� 1   ? A�O
�O 
txdl� 1   > ?�N
�N 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��M� L   C E�� o   C D�L�L 0 
newdocname 
newdocName�M  R ��� l     �K�J�I�K  �J  �I  � ��� l     �H���H  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �G�F�E�G  �F  �E  � ��� i   ' *��� I      �D��C�D 0 
pageranger 
pageRanger� ��B� o      �A�A 0 	pagerange 	pageRange�B  �C  � O     ��� k    �� ��� l    �@���@  � � {		tell PDF export preferences			set preservedPageRange to page range -- always preserve original preferences 		end tell   � ��� �  	 	 t e l l   P D F   e x p o r t   p r e f e r e n c e s  	 	 	 s e t   p r e s e r v e d P a g e R a n g e   t o   p a g e   r a n g e   - -   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s    	 	 e n d   t e l l � ��� l   �?�>�=�?  �>  �=  � ��<� O    ��� r    ��� c    ��� o    �;�; 0 	pagerange 	pageRange� m    �:
�: 
TEXT� 1    �9
�9 
pcty� 1    �8
�8 
DFpf�<  � 5     �7��6
�7 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�6 kfrmID  � ��� l     �5�4�3�5  �4  �3  � ��� l     �2���2  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �1�0�/�1  �0  �/  � ��� l     �.���.  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �-�,�+�-  �,  �+  � ��� i   + .��� I      �*�)�(�* 0 	linkcheck 	linkCheck�)  �(  � O     ���� k    ��� ��� l   �'�&�%�'  �&  �%  � ��� r    ��� m    	�$
�$ boovtrue� o      �#�# 0 stopbool stopBool� ��� r    ��� m    �"
�" boovtrue� o      �!�! 0 linkcheckbool linkCheckBool� ��� l   � ���   �  �  � ��� Y    ������� k   " ��� ��� l  " "����  � $ out of date/missing link check   � ��� < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c k� ��� r   " 3��� l  " 1���� 6  " 1��� n   " (��� 2   & (�
� 
clnk� n  " &��� 4   # &��
� 
cobj� o   $ %�� 0 x  � o   " #�� 0 opendocuments openDocuments� E   ) 0��� 1   * ,�
� 
stts� m   - /�
� sttelmis�  �  � o      �� 0 missinglinks missingLinks� ��� r   4 E��� l  4 C ��  6  4 C n   4 : 2   8 :�
� 
clnk n  4 8 4   5 8�
� 
cobj o   6 7�� 0 x   o   4 5�� 0 opendocuments openDocuments E   ; B	 1   < >�
� 
stts	 m   ? A�

�
 sttelood�  �  � o      �	�	 0 modifiedlinks modifiedLinks� 

 r   F K b   F I o   F G�� 0 missinglinks missingLinks o   G H�� 0 modifiedlinks modifiedLinks o      �� 0 failedlinks failedLinks  Z   L a�� >  L S l  L Q�� I  L Q�� 
� .corecnte****       **** o   L M���� 0 failedlinks failedLinks�   �  �   m   Q R����   r   V ] m   V W��
�� boovfals o      ���� 0 linkcheckbool linkCheckBool�  �    Z   b ����� =  b i o   b g���� 0 linkcheckbool linkCheckBool m   g h��
�� boovfals I  l ��� !
�� .sysodlogaskr        TEXT  b   l �"#" b   l �$%$ b   l �&'& b   l |()( b   l z*+* b   l s,-, b   l q./. b   l o010 m   l m22 �33 ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  1 o   m n��
�� 
ret / m   o p44 �55 R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- o   q r��
�� 
ret + l  s y6����6 n   s y787 1   w y��
�� 
pnam8 n  s w9:9 4   t w��;
�� 
cobj; o   u v���� 0 x  : o   s t���� 0 opendocuments openDocuments��  ��  ) o   z {��
�� 
ret ' m   | << �== R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -% o   � ���
�� 
ret # m   � �>> �?? J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !! ��@A
�� 
btns@ J   � �BB CDC m   � �EE �FF 
 S t o p !D G��G m   � �HH �II  W e i t e r !��  A ��J��
�� 
dfltJ m   � �KK �LL  W e i t e r !��  ��  ��   M��M Q   � �NO��N Z   � �PQR��P =  � �STS n   � �UVU 1   � ���
�� 
bhitV 1   � ���
�� 
rsltT m   � �WW �XX 
 S t o p !Q r   � �YZY m   � ���
�� boovfalsZ o      ���� 0 stopbool stopBoolR [\[ =  � �]^] n   � �_`_ 1   � ���
�� 
bhit` 1   � ���
�� 
rslt^ m   � �aa �bb  W e i t e r !\ c��c k   � �dd efe r   � �ghg m   � ���
�� boovtrueh o      ���� 0 stopbool stopBoolf i��i r   � �jkj m   � ���
�� boovtruek o      ���� 0 linkcheckbool linkCheckBool��  ��  ��  O R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  � 0 x  � m    ���� � I   ��l��
�� .corecnte****       ****l o    ���� 0 opendocuments openDocuments��  �  � m��m l  � ���������  ��  ��  ��  � 5     ��n��
�� 
cappn m    oo �pp $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � qrq l     ��������  ��  ��  r sts l     ��uv��  u z t �������������������������������������������������������������������������������������������������������������������   v �ww �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "t xyx l     ��������  ��  ��  y z{z i   / 2|}| I      �������� &0 textoverflowcheck textOverflowCheck��  ��  } O    ~~ k   �� ��� l   ��������  ��  ��  � ��� r    ��� m    	��
�� boovtrue� o      ���� 0 stopbool stopBool� ��� r    ��� m    ��
�� boovtrue� o      ���� 0 textcheckbool textCheckBool� ��� l   ��������  ��  ��  � ��� Y    �������� k   " ��� ��� l  " "������  �  text overflow check   � ��� & t e x t   o v e r f l o w   c h e c k� ��� l  " "������  � � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not   � ��� s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o t� ��� l  " ?���� r   " ?��� l  " =������ 6  " =��� n   " (��� 2   & (��
�� 
txtf� n  " &��� 4   # &���
�� 
cobj� o   $ %���� 0 x  � o   " #���� 0 opendocuments openDocuments� F   ) <��� =  * 1��� 1   + -��
�� 
OVRF� m   . 0��
�� boovtrue� =  2 ;��� n  3 7��� 1   5 7��
�� 
pvis� 1   3 5��
�� 
pilr� m   8 :��
�� boovtrue��  ��  � o      ���� 0 textoverflows textOverflows� % this just checks visible layers   � ��� > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r s� ��� l  @ @������  � c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)   � ��� � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )� ��� l  @ @������  � h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)   � ��� � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )� ��� l  @ @������  � 5 /set failedLinks to missingLinks & modifiedLinks   � ��� ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k s� ��� Z   @ U������� >  @ G��� l  @ E������ I  @ E�����
�� .corecnte****       ****� o   @ A���� 0 textoverflows textOverflows��  ��  ��  � m   E F����  � r   J Q��� m   J K��
�� boovfals� o      ���� 0 textcheckbool textCheckBool��  ��  � ��� Z   V �������� =  V ]��� o   V [���� 0 textcheckbool textCheckBool� m   [ \��
�� boovfals� I  ` �����
�� .sysodlogaskr        TEXT� b   ` |��� b   ` x��� b   ` v��� b   ` r��� b   ` p��� b   ` g��� b   ` e��� b   ` c��� m   ` a�� ��� 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  � o   a b��
�� 
ret � m   c d�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   e f��
�� 
ret � l  g o������ n   g o��� 1   k o��
�� 
pnam� n  g k��� 4   h k���
�� 
cobj� o   i j���� 0 x  � o   g h���� 0 opendocuments openDocuments��  ��  � o   p q��
�� 
ret � m   r u�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   v w��
�� 
ret � m   x {�� ��� " h a t   T e x t � b e r h a n g .� ����
�� 
btns� J    ��� ��� m    ��� ��� , G e h e   z u   e r s t e r   S t e l l e !� ��� m   � ��� ��� 
 S t o p !� ���� m   � �   �  W e i t e r !��  � ����
�� 
dflt m   � � �  W e i t e r !��  ��  ��  � �� Q   � ��� Z   � �	
�� =  � � n   � � 1   � ���
�� 
bhit 1   � ���
�� 
rslt m   � � � 
 S t o p !	 r   � � m   � ���
�� boovfals o      ���� 0 stopbool stopBool
  =  � � n   � � 1   � ���
�� 
bhit 1   � ���
�� 
rslt m   � � � , G e h e   z u   e r s t e r   S t e l l e !  k   � �  n  � � !  I   � ���~�}� $0 textoverflowgoer textOverflowGoer�~  �}  !  f   � � "#" n  � �$%$ I   � ��|&�{�| 0 zoomthepages zoomThePages& '�z' o   � ��y�y 0 activewindow activeWindow�z  �{  %  f   � �# (�x( r   � �)*) m   � ��w
�w boovfals* o      �v�v 0 stopbool stopBool�x   +,+ =  � �-.- n   � �/0/ 1   � ��u
�u 
bhit0 1   � ��t
�t 
rslt. m   � �11 �22  W e i t e r !, 3�s3 k   � �44 565 r   � �787 m   � ��r
�r boovfals8 o      �q�q 0 stopbool stopBool6 9�p9 r   � �:;: m   � ��o
�o boovtrue; o      �n�n 0 textcheckbool textCheckBool�p  �s  ��   R      �m�l�k
�m .ascrerr ****      � ****�l  �k  ��  ��  �� 0 x  � m    �j�j � I   �i<�h
�i .corecnte****       ****< o    �g�g 0 opendocuments openDocuments�h  ��  � =�f= l �e�d�c�e  �d  �c  �f   5     �b>�a
�b 
capp> m    ?? �@@ $ c o m . a d o b e . I n D e s i g n
�a kfrmID  { ABA l     �`�_�^�`  �_  �^  B CDC l     �]EF�]  E z t �������������������������������������������������������������������������������������������������������������������   F �GG �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "D HIH l     �\�[�Z�\  �[  �Z  I JKJ i   3 6LML I      �YN�X�Y (0 inputrangesplitter inputRangeSplitterN O�WO o      �V�V 0 
inputrange 
inputRange�W  �X  M k     PP QRQ l    STUS r     VWV n    XYX 1    �U
�U 
txdlY 1     �T
�T 
ascrW o      �S�S 0 olddelimiters oldDelimitersT * $ always preserve original delimiters   U �ZZ H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r sR [\[ r    ]^] J    	__ `�R` m    aa �bb  ,�R  ^ n     cdc 1   
 �Q
�Q 
txdld 1   	 
�P
�P 
ascr\ efe r    ghg n    iji 2   �O
�O 
citmj o    �N�N 0 
inputrange 
inputRangeh o      �M�M 0 splittedrange splittedRangef klk l   mnom r    pqp o    �L�L 0 olddelimiters oldDelimitersq n     rsr 1    �K
�K 
txdls 1    �J
�J 
ascrn ) # always restore original delimiters   o �tt F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r sl u�Iu L    vv o    �H�H 0 splittedrange splittedRange�I  K wxw l     �G�F�E�G  �F  �E  x yzy l     �D{|�D  { z t �������������������������������������������������������������������������������������������������������������������   | �}} �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "z ~~ l     �C�B�A�C  �B  �A   ��� i   7 :��� I      �@��?�@ >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic� ��>� o      �=�= 0 
inputrange 
inputRange�>  �?  � k     t�� ��� l    ���� r     ��� n    ��� 1    �<
�< 
txdl� 1     �;
�; 
ascr� o      �:�: 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ��9� m    �� ���  -�9  � n     ��� 1   
 �8
�8 
txdl� 1   	 
�7
�7 
ascr� ��� l   �6�5�4�6  �5  �4  � ��� r    ��� n    ��� 2   �3
�3 
citm� o    �2�2 0 
inputrange 
inputRange� o      �1�1 (0 splittedrangemagic splittedRangeMagic� ��� l   �0�/�.�0  �/  �.  � ��� Z    k���-�,� >   #��� l   ��+�*� c    ��� n   ��� 4    �)�
�) 
cobj� m    �(�( � o    �'�' (0 splittedrangemagic splittedRangeMagic� m    �&
�& 
long�+  �*  � l   "��%�$� [    "��� l    ��#�"� c     ��� n   ��� 4    �!�
�! 
cobj� m    � �  � o    �� (0 splittedrangemagic splittedRangeMagic� m    �
� 
long�#  �"  � m     !�� �%  �$  � k   & g�� ��� r   & 0��� [   & .��� l  & ,���� c   & ,��� n  & *��� 4   ' *��
� 
cobj� m   ( )�� � o   & '�� (0 splittedrangemagic splittedRangeMagic� m   * +�
� 
long�  �  � m   , -�� � o      ��  0 incrementvalue incrementValue� ��� r   1 ;��� J   1 9�� ��� l  1 7���� c   1 7��� n  1 5��� 4   2 5��
� 
cobj� m   3 4�� � o   1 2�� (0 splittedrangemagic splittedRangeMagic� m   5 6�
� 
long�  �  �  � o      �� 00 splittedrangemagicloop splittedRangeMagicLoop� ��� l  < <���
�  �  �
  � ��� l  < <�	���	  � � �repeat with x from (splittedRangeMagic's item 1 as integer) to (splittedRangeMagic's item 2 as integer) -- this iterates through   � ���  r e p e a t   w i t h   x   f r o m   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   1   a s   i n t e g e r )   t o   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   2   a s   i n t e g e r )   - -   t h i s   i t e r a t e s   t h r o u g h� ��� l  < <����  � R L	set splittedRangeMagicLoop to splittedRangeMagicLoop & (incrementValue + 1)   � ��� � 	 s e t   s p l i t t e d R a n g e M a g i c L o o p   t o   s p l i t t e d R a n g e M a g i c L o o p   &   ( i n c r e m e n t V a l u e   +   1 )� ��� l  < <����  �  
end repeat   � ���  e n d   r e p e a t� ��� l  < <����  �  �  � ��� r   < K��� \   < I��� l  < B���� c   < B��� n  < @��� 4   = @��
� 
cobj� m   > ?� �  � o   < =���� (0 splittedrangemagic splittedRangeMagic� m   @ A��
�� 
long�  �  � l  B H������ c   B H��� n  B F��� 4   C F���
�� 
cobj� m   D E���� � o   B C���� (0 splittedrangemagic splittedRangeMagic� m   F G��
�� 
long��  ��  � o      ���� 0 repeatnumber repeatNumber� ��� U   L c��� l  S ^���� k   S ^��    r   S X b   S V o   S T���� 00 splittedrangemagicloop splittedRangeMagicLoop o   T U����  0 incrementvalue incrementValue o      ���� 00 splittedrangemagicloop splittedRangeMagicLoop �� r   Y ^ [   Y \	
	 o   Y Z����  0 incrementvalue incrementValue
 m   Z [����  o      ����  0 incrementvalue incrementValue��  �   this iterates through   � � ,   t h i s   i t e r a t e s   t h r o u g h� o   O P���� 0 repeatnumber repeatNumber�  l  d d��������  ��  ��    l  d d��������  ��  ��   �� r   d g o   d e���� 00 splittedrangemagicloop splittedRangeMagicLoop o      ���� (0 splittedrangemagic splittedRangeMagic��  �-  �,  �  l  l l��������  ��  ��    l  l q r   l q o   l m���� 0 olddelimiters oldDelimiters n      1   n p��
�� 
txdl 1   m n��
�� 
ascr ) # always restore original delimiters    � F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s �� L   r t   o   r s���� (0 splittedrangemagic splittedRangeMagic��  � !"! l     ��������  ��  ��  " #$# l     ��%&��  % z t �������������������������������������������������������������������������������������������������������������������   & �'' �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "$ ()( l     ��������  ��  ��  ) *+* i   ; >,-, I      ��.���� 40 inputrangesplitterfromto inputRangeSplitterFromTo. /��/ o      ���� 0 
inputrange 
inputRange��  ��  - k     00 121 l    3453 r     676 n    898 1    ��
�� 
txdl9 1     ��
�� 
ascr7 o      ���� 0 olddelimiters oldDelimiters4 * $ always preserve original delimiters   5 �:: H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s2 ;<; r    =>= J    	?? @��@ m    AA �BB  -��  > n     CDC 1   
 ��
�� 
txdlD 1   	 
��
�� 
ascr< EFE r    GHG n    IJI 2   ��
�� 
citmJ o    ���� 0 
inputrange 
inputRangeH o      ���� 0 splittedrange splittedRangeF KLK l   MNOM r    PQP o    ���� 0 olddelimiters oldDelimitersQ n     RSR 1    ��
�� 
txdlS 1    ��
�� 
ascrN ) # always restore original delimiters   O �TT F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r sL U��U L    VV o    ���� 0 splittedrange splittedRange��  + WXW l     ��������  ��  ��  X YZY l     ��[\��  [ z t �������������������������������������������������������������������������������������������������������������������   \ �]] �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "Z ^_^ l     ��������  ��  ��  _ `a` i   ? Bbcb I      ��d���� 0 magicsplitter MagicSplitterd e��e o      ���� 0 splittedrange splittedRange��  ��  c k     hff ghg l    ijki r     lml n    non 1    ��
�� 
txdlo 1     ��
�� 
ascrm o      ���� 0 olddelimiters oldDelimitersj * $ always preserve original delimiters   k �pp H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r sh qrq l   ��������  ��  ��  r sts r    uvu J    	ww x��x m    yy �zz  -��  v n     {|{ 1   
 ��
�� 
txdl| 1   	 
��
�� 
ascrt }~} r    � J    ����  � o      ���� 0 splittedmagic splittedMagic~ ��� l   ��������  ��  ��  � ��� l   ������  � 6 0set splittedMagic to text items of splittedRange   � ��� ` s e t   s p l i t t e d M a g i c   t o   t e x t   i t e m s   o f   s p l i t t e d R a n g e� ��� l   ��������  ��  ��  � ��� Y    _�������� l  ! Z���� k   ! Z�� ��� Z   ! X������ H   ! (�� E   ! '��� n  ! %��� 4   " %���
�� 
cobj� o   # $���� 0 x  � o   ! "���� 0 splittedrange splittedRange� m   % &�� ���  -� k   + 5�� ��� r   + 3��� b   + 1��� o   + ,���� 0 splittedmagic splittedMagic� n  , 0��� 4   - 0���
�� 
cobj� o   . /���� 0 x  � o   , -���� 0 splittedrange splittedRange� o      ���� 0 splittedmagic splittedMagic� ���� l  4 4������  � 8 2set splittedRange's item x to end of splittedMagic   � ��� d s e t   s p l i t t e d R a n g e ' s   i t e m   x   t o   e n d   o f   s p l i t t e d M a g i c��  � ��� E   8 >��� n  8 <��� 4   9 <���
�� 
cobj� o   : ;���� 0 x  � o   8 9���� 0 splittedrange splittedRange� m   < =�� ���  -� ���� k   A T�� ��� I   A J������� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic� ���� n  B F��� 4   C F���
�� 
cobj� o   D E���� 0 x  � o   B C���� 0 splittedrange splittedRange��  ��  � ��� l  K K������  �  set xxx to splittedRange   � ��� 0 s e t   x x x   t o   s p l i t t e d R a n g e� ��� r   K R��� b   K P��� o   K L���� 0 splittedmagic splittedMagic� n  L O��� 2  M O��
�� 
cobj� o   L M���� (0 splittedrangemagic splittedRangeMagic� o      ���� 0 splittedmagic splittedMagic� ���� l  S S������  � 7 1set splittedRange's items to end of splittedMagic   � ��� b s e t   s p l i t t e d R a n g e ' s   i t e m s   t o   e n d   o f   s p l i t t e d M a g i c��  ��  ��  � ���� l  Y Y��������  ��  ��  ��  �   this iterates through   � ��� ,   t h i s   i t e r a t e s   t h r o u g h�� 0 x  � m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 splittedrange splittedRange��  ��  � ��� l  ` `�������  ��  �  � ��� l  ` e���� r   ` e��� o   ` a�~�~ 0 olddelimiters oldDelimiters� n     ��� 1   b d�}
�} 
txdl� 1   a b�|
�| 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��{� L   f h�� o   f g�z�z 0 splittedmagic splittedMagic�{  a ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �u�t�s�u  �t  �s  � ��� i   C F��� I      �r�q�p�r $0 textoverflowgoer textOverflowGoer�q  �p  � k     2�� ��� O     0��� k    /�� ��� l   �o�n�m�o  �n  �m  � ��l� Z    /���k�� >   ��� l   ��j�i� I   �h��g
�h .corecnte****       ****� o    	�f�f 0 textoverflows textOverflows�g  �j  �i  � m    �e�e  � k    '��    r     n     1    �d
�d 
pnam n     1    �c
�c 
PaPa n    	 4   �b

�b 
cobj
 m    �a�a 	 o    �`�` 0 textoverflows textOverflows o      �_�_ 0 
activepage 
activePage �^ r    ' n    # 4     #�]
�] 
page o   ! "�\�\ 0 
activepage 
activePage n      1     �[
�[ 
pare o    �Z�Z 0 activewindow activeWindow n       1   $ &�Y
�Y 
pacp o   # $�X�X 0 activewindow activeWindow�^  �k  � I  * /�W�V
�W .sysobeepnull��� ��� long l  * +�U�T m   * +�S�S �U  �T  �V  �l  � 5     �R�Q
�R 
capp m     � $ c o m . a d o b e . I n D e s i g n
�Q kfrmID  � �P l  1 1�O�N�M�O  �N  �M  �P  �  l     �L�K�J�L  �K  �J    l     �I �I   z t �������������������������������������������������������������������������������������������������������������������     �!! �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "#" l     �H�G�F�H  �G  �F  # $%$ i   G J&'& I      �E(�D�E 0 zoomthepages zoomThePages( )�C) o      �B�B 0 	thewindow 	theWindow�C  �D  ' O     4*+* k    3,, -.- l   �A�@�?�A  �@  �?  . /0/ O    1121 k    033 454 I   �>6�=
�> .K2  seltnull���     ****6 m    �<
�< senmnada�=  5 787 l   9:;9 I   �;�:<
�; .K2  zmtonull���     Lwin�:  < �9=�8
�9 
givn= m    �7
�7 zopezftp�8  :  spread   ; �>>  s p r e a d8 ?�6? Z    0@A�5�4@ >   !BCB l   D�3�2D I   �1E�0
�1 .corecnte****       ****E o    �/�/ 0 textoverflows textOverflows�0  �3  �2  C m     �.�.  A r   $ ,FGF n   $ (HIH 4  % (�-J
�- 
cobjJ m   & '�,�, I o   $ %�+�+ 0 textoverflows textOverflowsG n      KLK 1   ) +�*
�* 
seleL o   ( )�)�) 0 activewindow activeWindow�5  �4  �6  2 o    	�(�( 0 	thewindow 	theWindow0 M�'M l  2 2�&�%�$�&  �%  �$  �'  + 5     �#N�"
�# 
cappN m    OO �PP $ c o m . a d o b e . I n D e s i g n
�" kfrmID  % QRQ l     �!� ��!  �   �  R STS l     �UV�  U z t �������������������������������������������������������������������������������������������������������������������   V �WW �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "T XYX l     ����  �  �  Y Z[Z i   K N\]\ I      ���� 0 displaytheend displayTheEnd�  �  ] I    �^_
� .sysodlogaskr        TEXT^ m     `` �aa ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t_ �bc
� 
btnsb m    dd �ee  O Kc �fg
� 
dfltf m    hh �ii  O Kg �j�
� 
givuj m    �� �  [ klk l     ����  �  �  l mnm l     �op�  o z t �������������������������������������������������������������������������������������������������������������������   p �qq �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "n rsr l     ����  �  �  s tut l     �
vw�
  v L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   w �xx � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )u yzy i   O R{|{ I      �	}��	 20 displaynotificationlong displayNotificationLong} ~~ o      �� 0 	titletext 	titleText ��� o      �� 0 subtitletext subtitleText� ��� o      �� 0 bodytext bodyText�  �  | k     �� ��� l    	���� I    	���
� .sysonotfnull��� ��� TEXT� o     �� 0 bodytext bodyText� ���
� 
appr� o    � �  0 	titletext 	titleText� �����
�� 
subt� o    ���� 0 subtitletext subtitleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l  
 
������  �  	delay 0.5   � ���  d e l a y   0 . 5��  z ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � < 6my displayNotificationShort("Title text", "Body text")   � ��� l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )� ���� i   S V��� I      ������� 40 displaynotificationshort displayNotificationShort� ��� o      ���� 0 	titletext 	titleText� ���� o      ���� 0 bodytext bodyText��  ��  � k     	�� ��� l    ���� I    ����
�� .sysonotfnull��� ��� TEXT� o     ���� 0 bodytext bodyText� �����
�� 
appr� o    ���� 0 	titletext 	titleText��  �  sound name "default"   � ��� ( s o u n d   n a m e   " d e f a u l t "� ���� l   ������  �  	delay 0.5   � ���  d e l a y   0 . 5��  ��       ����� �������������������������  � ������������������������������������������������  0 functionchoice functionChoice�� 0 chosenpreset chosenPreset�� 0 	pagerange 	pageRange�� 0 linkcheckbool linkCheckBool�� 0 textcheckbool textCheckBool�� "0 functionchooser functionChooser�� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� ,0 fileextensionremover fileExtensionRemover�� 0 
pageranger 
pageRanger�� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck�� (0 inputrangesplitter inputRangeSplitter�� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�� 40 inputrangesplitterfromto inputRangeSplitterFromTo�� 0 magicsplitter MagicSplitter�� $0 textoverflowgoer textOverflowGoer�� 0 zoomthepages zoomThePages�� 0 displaytheend displayTheEnd�� 20 displaynotificationlong displayNotificationLong�� 40 displaynotificationshort displayNotificationShort
�� .aevtoappnull  �   � ****� ����� �   �� ����� �   �
�� boovfals
�� boovfals� ������������ "0 functionchooser functionChooser��  ��  �  � #&����,��/����=��J��Y��
�� 
inSL
�� 
prmp
�� 
okbt�� 
�� .gtqpchltns    @   @ ns  �� .0 pdfexportersinglepage pdfExporterSinglepage�� ,0 pdfexportermultipage pdfExporterMultipage�� 0 idmlexporter idmlExporter�� i���mv�b   ����� 	Ec   Ob   �kv  )b   k+ Y 5b   �kv  )b   k+ Y b   �kv  )b   k+ Y hOP� ��m���������� .0 pdfexportersinglepage pdfExporterSinglepage�� ����� �  ����  0 functionchoice functionChoice��  � ������������������  0 functionchoice functionChoice�� 0 
buttonname 
buttonName�� 0 
inputrange 
inputRange�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath�� 0 exportpreset exportPreset� 6��z����������������������������������������������K��������������������������&,��������������Viw��
�� 
capp
�� kfrmID  
�� 
pacd�� 0 opendocuments openDocuments�� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck
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
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt�� (0 inputrangesplitter inputRangeSplitter�� 0 splittedrange splittedRange�� 0 magicsplitter MagicSplitter�� 0 splittedmagic splittedMagic
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
pcty�� 20 displaynotificationlong displayNotificationLong��q)���0 *�,E�UO)j+ O)j+ Ob  e 	 b  e �&?��%�&E�O��b  ���� Ec  Ob  fa _ %a %a b  l O_ a ,E�O�Ec  O)�k+ O)_ k+ O)�a �0 � �k_ j kh )_ a �/k+ O_  a !,E�O)�k+ "E�O_  a #,a $&E�O*a %b  a $&/E�O_  a &a 'a (��%a )%_ a �/%a *%a +�a ,fa - .OP[OY��O*a /, _ 0*a 1,FUOPUOb  a 2kv  )a 3b  a k/a $&a 4�%m+ 5Y hY hY h� ������������� ,0 pdfexportermultipage pdfExporterMultipage�� ����� �  ��  0 functionchoice functionChoice��  � �~�}�|�{�z�y�x�~  0 functionchoice functionChoice�} 0 
buttonname 
buttonName�| 0 x  �{ 0 docname docName�z 0 
newdocname 
newdocName�y 0 filepath filePath�x 0 exportpreset exportPreset� 8�w�v�u��t�s�r�q��p�o�n��m��l�k���j��i�h�g��f��e�d��c�b�a�`�_�^�]�\�[:�Z�Y�XV�W�V�U�Ti�S�R�Q����P�w 0 	linkcheck 	linkCheck�v &0 textoverflowcheck textOverflowCheck
�u 
bool
�t 
ctxt�s ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�r 
inSL
�q 
prmp
�p 
okbt�o 
�n .gtqpchltns    @   @ ns  
�m 
ret 
�l 
dtxt
�k 
btns
�j 
dflt
�i .sysodlogaskr        TEXT
�h 
rslt
�g 
bhit
�f 
ttxt�e 0 
pageranger 
pageRanger
�d 
capp
�c kfrmID  �b 0 opendocuments openDocuments
�a .corecnte****       ****
�` 
cobj
�_ 
pnam�^ ,0 fileextensionremover fileExtensionRemover
�] 
path
�\ 
TEXT
�[ 
PFst
�Z 
exft
�Y eXftt_PD
�X 
kfil
�W 
usng
�V 
imot�U 
�T .K2  exAscBKT        docu
�S 
DFpf�R (0 preservedpagerange preservedPageRange
�Q 
pcty�P 20 displaynotificationlong displayNotificationLong���)j+  O)j+ Ob  e 	 b  e �&���%�&E�O��b  ���� Ec  Ob  f M��%�%�b  a a a lva a � O_ a ,a   _ a ,Ec  Y a Ec  Y hO)b  k+ O)a a a 0 � �k_ j  kh _ a !�/a ",E�O)�k+ #E�O_ a !�/a $,a %&E�O*a &b  a %&/E�Ob  a 'kv  +_ a !�/a (a )a *��%a +%a ,�a -fa . /Y (_ a !�/a (a )a *��%a 0%a ,�a -fa . /OP[OY�_O*a 1, _ 2*a 3,FUOPUOb  a 4kv *)a 5b  a !k/a %&_ j  a %&a 6%m+ 7Y hOPY h� �O��N�M���L�O 0 idmlexporter idmlExporter�N �K��K �  �J�J  0 functionchoice functionChoice�M  � �I�H�G�F�E�I  0 functionchoice functionChoice�H 0 x  �G 0 docname docName�F 0 
newdocname 
newdocName�E 0 filepath filePath� �D�C�B�A&�@�?�>�=�<�;�:�9�8�7�6 �5�48<F�3�D 0 	linkcheck 	linkCheck�C &0 textoverflowcheck textOverflowCheck
�B 
bool
�A 
capp
�@ kfrmID  �? 0 opendocuments openDocuments
�> .corecnte****       ****
�= 
cobj
�< 
pnam�; ,0 fileextensionremover fileExtensionRemover
�: 
path
�9 
TEXT
�8 
exft
�7 eXftidml
�6 
kfil�5 
�4 .K2  exAscBKT        docu�3 20 displaynotificationlong displayNotificationLong�L �)j+  O)j+ Ob  e 	 b  e �& k)���0 H Ek�j kh ��/�,E�O)�k+ 
E�O��/�,�&E�O��/��藍%a %a  OP[OY��UO)a a �j �&a %m+ Y h� �2T�1�0���/�2 ,0 fileextensionremover fileExtensionRemover�1 �.��. �  �-�- 0 docname docName�0  � �,�+�*�)�, 0 docname docName�+ 0 olddelimiters oldDelimiters�* 0 	pathitems 	pathItems�) 0 
newdocname 
newdocName� 
�(�'h�&�%�$~�#�"�!
�( 
ascr
�' 
txdl
�& 
ctxt
�% 
citm
�$ .corecnte****       ****
�# 
cobj�"��
�! 
TEXT�/ F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO�� � �������  0 
pageranger 
pageRanger� ��� �  �� 0 	pagerange 	pageRange�  � �� 0 	pagerange 	pageRange� ������
� 
capp
� kfrmID  
� 
DFpf
� 
TEXT
� 
pcty� )���0 *�, 	��&*�,FUU� �������� 0 	linkcheck 	linkCheck�  �  � ����� 0 x  � 0 missinglinks missingLinks� 0 modifiedlinks modifiedLinks� 0 failedlinks failedLinks� �o��
�	�������2�4�<>� EH��K��������Wa����
� 
capp
� kfrmID  �
 0 stopbool stopBool�	 0 opendocuments openDocuments
� .corecnte****       ****
� 
cobj
� 
clnk�  
� 
stts
� sttelmis
� sttelood
� 
ret 
� 
pnam
�  
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit��  ��  � �)���0 �eE�OeEc  O �k�j kh  ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fEc  Y hOb  f  6��%�%�%��/�,%�%a %�%a %a a a lva a a  Y hO 6_ a ,a   fE�Y _ a ,a   eE�OeEc  Y hW X  h[OY�=OPU� ��}���������� &0 textoverflowcheck textOverflowCheck��  ��  � ���� 0 x  � %��?��������������������������������� ����������������1����
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
bhit�� $0 textoverflowgoer textOverflowGoer�� 0 activewindow activeWindow�� 0 zoomthepages zoomThePages��  ��  ��)���0 �eE�OeEc  O �k�j kh  ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fEc  Y hOb  f  ;��%�%�%��/a ,%�%a %�%a %a a a a mva a a  Y hO Y_ a ,a   fE�Y B_ a ,a   )j+ O)_  k+ !OfE�Y _ a ,a "  fE�OeEc  Y hW X # $h[OY�!OPU� ��M���������� (0 inputrangesplitter inputRangeSplitter�� ����� �  ���� 0 
inputrange 
inputRange��  � ������ 0 
inputrange 
inputRange�� 0 olddelimiters oldDelimiters� ����a����
�� 
ascr
�� 
txdl
�� 
citm�� 0 splittedrange splittedRange�� ��,E�O�kv��,FO��-E�O���,FO�� ������������� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�� ����� �  ���� 0 
inputrange 
inputRange��  � ������������ 0 
inputrange 
inputRange�� 0 olddelimiters oldDelimiters��  0 incrementvalue incrementValue�� 00 splittedrangemagicloop splittedRangeMagicLoop�� 0 repeatnumber repeatNumber� �������������
�� 
ascr
�� 
txdl
�� 
citm�� (0 splittedrangemagic splittedRangeMagic
�� 
cobj
�� 
long�� u��,E�O�kv��,FO��-E�O��l/�&��k/�&k F��k/�&kE�O��k/�&kvE�O��l/�&��k/�&E�O �kh��%E�O�kE�[OY��O�E�Y hO���,FO�� ��-���������� 40 inputrangesplitterfromto inputRangeSplitterFromTo�� ����� �  ���� 0 
inputrange 
inputRange��  � ������ 0 
inputrange 
inputRange�� 0 olddelimiters oldDelimiters� ����A����
�� 
ascr
�� 
txdl
�� 
citm�� 0 splittedrange splittedRange�� ��,E�O�kv��,FO��-E�O���,FO�� ��c���������� 0 magicsplitter MagicSplitter�� ����� �  ���� 0 splittedrange splittedRange��  � �������� 0 splittedrange splittedRange�� 0 olddelimiters oldDelimiters�� 0 x  � 
����y������������
�� 
ascr
�� 
txdl�� 0 splittedmagic splittedMagic
�� .corecnte****       ****
�� 
cobj�� >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�� (0 splittedrangemagic splittedRangeMagic�� i��,E�O�kv��,FOjvE�O Kk�j kh ��/� à�/%E�OPY "��/� *��/k+ O���-%E�OPY hOP[OY��O���,FO�� ������������� $0 textoverflowgoer textOverflowGoer��  ��  � ���� 0 
activepage 
activePage� ������������������������
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
�� .sysobeepnull��� ��� long�� 3)���0 )�j j ��k/�,�,E�O��,�/��,FY mj UOP� ��'���������� 0 zoomthepages zoomThePages�� ����� �  ���� 0 	thewindow 	theWindow��  � ���� 0 	thewindow 	theWindow� ��O���������������������
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
� 
sele�� 5)���0 -� &�j O*��l O�j 	j ��k/��,FY hUOPU� �~]�}�|���{�~ 0 displaytheend displayTheEnd�}  �|  �  � `�zd�yh�x�w�v
�z 
btns
�y 
dflt
�x 
givu�w 
�v .sysodlogaskr        TEXT�{ ������k� � �u|�t�s���r�u 20 displaynotificationlong displayNotificationLong�t �q��q �  �p�o�n�p 0 	titletext 	titleText�o 0 subtitletext subtitleText�n 0 bodytext bodyText�s  � �m�l�k�m 0 	titletext 	titleText�l 0 subtitletext subtitleText�k 0 bodytext bodyText� �j�i�h�g
�j 
appr
�i 
subt�h 
�g .sysonotfnull��� ��� TEXT�r ���� OP� �f��e�d���c�f 40 displaynotificationshort displayNotificationShort�e �b��b �  �a�`�a 0 	titletext 	titleText�` 0 bodytext bodyText�d  � �_�^�_ 0 	titletext 	titleText�^ 0 bodytext bodyText� �]�\
�] 
appr
�\ .sysonotfnull��� ��� TEXT�c 
��l OP� �[��Z�Y���X
�[ .aevtoappnull  �   � ****� k     N��  ��W�W  �Z  �Y  �  � �V�U�T�S�R�Q�P�O�N�M��L�K�J�I ��H�G
�V 
capp
�U kfrmID  
�T 
pacd�S  0 activedocument activeDocument
�R 
pacw�Q 0 activewindow activeWindow
�P 
DFpf
�O 
pcty�N (0 preservedpagerange preservedPageRange
�M 
docu
�L 
pvis�K 0 opendocuments openDocuments
�J 
PFst
�I 
pnam�H ,0 pdfpresetsoncomputer pdfPresetsOnComputer�G "0 functionchooser functionChooser�X O)���0 G*�,E�O*�,E�O*�, *�,E�UO*�-�[�,\Ze81E�O*�-�,�[�,\Za @C1E` O)j+ OPUascr  ��ޭ