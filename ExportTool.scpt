FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.1     �      v e r s i o n   1 . 9 . 1      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   5  7 8 7 p       9 9 ������ (0 preservedpagerange preservedPageRange��   8  : ; : p       < < ������ 0 stopbool stopBool��   ;  = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A  test variables!!!    B � C C " t e s t   v a r i a b l e s ! ! ! @  D E D p       F F ������ 0 filepath filePath��   E  G H G p       I I ������ 0 chosenpreset chosenPreset��   H  J K J p       L L ������ $0 chosenpresettext chosenPresetText��   K  M N M p       O O ������ 0 docname docName��   N  P Q P p       R R ������ 0 newfilepath newFilePath��   Q  S T S p       U U ������ 0 	pathitems 	pathItems��   T  V W V p       X X ������ 0 	pagerange 	pageRange��   W  Y Z Y p       [ [ ������ 0 
newdocname 
newdocName��   Z  \ ] \ p       ^ ^ ������ 0 failedlinks failedLinks��   ]  _ ` _ p       a a ������ 0 textoverflows textOverflows��   `  b c b p       d d ������ 0 modifiedlinks modifiedLinks��   c  e f e p       g g ������ 0 missinglinks missingLinks��   f  h i h p       j j ������ 0 exportpreset exportPreset��   i  k l k l     ��������  ��  ��   l  m n m l     �� o p��   o z t �������������������������������������������������������������������������������������������������������������������    p � q q �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " n  r s r l     ��������  ��  ��   s  t u t l    D v���� v O     D w x w k    C y y  z { z l   ��������  ��  ��   {  | } | l   �� ~ ��   ~ C = set up some informations from the current state as variables     � � � z   s e t   u p   s o m e   i n f o r m a t i o n s   f r o m   t h e   c u r r e n t   s t a t e   a s   v a r i a b l e s }  � � � r     � � � 1    ��
�� 
pacd � o      ����  0 activedocument activeDocument �  � � � r     � � � 2    ��
�� 
docu � o      ���� 0 opendocuments openDocuments �  � � � l   �� � ���   � � � only pdf presets are captured that are not build in. we have our own! remove the whose clause to show all of them, or modify the whose clause to show only them.    � � � �B   o n l y   p d f   p r e s e t s   a r e   c a p t u r e d   t h a t   a r e   n o t   b u i l d   i n .   w e   h a v e   o u r   o w n !   r e m o v e   t h e   w h o s e   c l a u s e   t o   s h o w   a l l   o f   t h e m ,   o r   m o d i f y   t h e   w h o s e   c l a u s e   t o   s h o w   o n l y   t h e m . �  � � � r    % � � � 6   # � � � n     � � � 1    ��
�� 
pnam � 2    ��
�� 
PFst � H    " � � E    ! � � � 1    ��
�� 
pnam � m      � � � � �  [ � o      ���� ,0 pdfpresetsoncomputer pdfPresetsOnComputer �  � � � l  & &��������  ��  ��   �  � � � n  & + � � � I   ' +�������� 0 	linkcheck 	linkCheck��  ��   �  f   & ' �  � � � n  , 1 � � � I   - 1�������� &0 textoverflowcheck textOverflowCheck��  ��   �  f   , - �  � � � l  2 2��������  ��  ��   �  � � � Z   2 A � ����� � =  2 5 � � � o   2 3���� 0 stopbool stopBool � m   3 4��
�� boovtrue � n  8 = � � � I   9 =�������� "0 functionchooser functionChooser��  ��   �  f   8 9��  ��   �  ��� � l  B B��������  ��  ��  ��   x 5     �� ���
�� 
capp � m     � � � � � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��   u  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � z t �������������������������������������������������������������������������������������������������������������������    � � � � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " �  � � � l     ��������  ��  ��   �  � � � i      � � � I      �������� "0 functionchooser functionChooser��  ��   � k     8 � �  � � � r      � � � I    �� � �
�� .gtqpchltns    @   @ ns   � J      � �  � � � m      � � � � �  P D F - E x p o r t �  ��� � m     � � � � �  I D M L - E x p o r t��   � �� � �
�� 
inSL � J     � �  ��� � m     � � � � �  P D F - E x p o r t��   � �� � �
�� 
prmp � m   	 
 � � � � �   F u n k t i o n   w � h l e n : � �� ���
�� 
okbt � m     � � � � �  W e i t e r !��   � o      ����  0 functionchoice functionChoice �  � � � l   ��������  ��  ��   �  � � � Z    6 � � ��� � =     � � � l    ����� � o    ��  0 functionchoice functionChoice��  ��   � J     � �  ��~ � m     � � � � �  P D F - E x p o r t�~   � n    ! � � � I    !�} ��|�} 0 pdfexporter pdfExporter �  ��{ � o    �z�z  0 functionchoice functionChoice�{  �|   �  f     �  � � � =   $ ) � � � l  $ % ��y�x � o   $ %�w�w  0 functionchoice functionChoice�y  �x   � J   % ( � �  ��v � m   % & � � � � �  I D M L - E x p o r t�v   �  ��u � n   , 2 � � � I   - 2�t ��s�t 0 idmlexporter idmlExporter �  ��r � o   - .�q�q  0 functionchoice functionChoice�r  �s   �  f   , -�u  ��   �  ��p � l  7 7�o�n�m�o  �n  �m  �p   �  � � � l     �l�k�j�l  �k  �j   �  �  � l     �i�i   z t �������������������������������������������������������������������������������������������������������������������    � �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "   l     �h�g�f�h  �g  �f    i    	 I      �e
�d�e 0 pdfexporter pdfExporter
 �c o      �b�b  0 functionchoice functionChoice�c  �d  	 k    I  r      c      b      o     �a�a  0 functionchoice functionChoice m     �  ! m    �`
�` 
ctxt o      �_�_ 0 
buttonname 
buttonName  r     I   �^
�^ .gtqpchltns    @   @ ns   o    	�]�] ,0 pdfpresetsoncomputer pdfPresetsOnComputer �\
�\ 
inSL J   
   �[  m   
 !! �""  s k - S c r e e n�[   �Z#$
�Z 
prmp# m    %% �&& $ P D F - P r e s e t   w � h l e n :$ �Y'�X
�Y 
okbt' o    �W�W 0 
buttonname 
buttonName�X   o      �V�V 0 chosenpreset chosenPreset ()( Z   5*+�U�T* >   ,-, o    �S�S 0 chosenpreset chosenPreset- m    �R
�R boovfals+ k   1.. /0/ Z    C12�Q31 >   #454 o    �P�P 0 chosenpreset chosenPreset5 J    "66 7�O7 m     88 �99  s k - T e m p o r � r�O  2 k   & 9:: ;<; I  & -�N=>
�N .sysodlogaskr        TEXT= m   & '?? �@@ N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?> �MA�L
�M 
dtxtA m   ( )BB �CC  a l l   p a g e s�L  < D�KD r   . 9EFE l  . 5G�J�IG n   . 5HIH 1   1 5�H
�H 
ttxtI 1   . 1�G
�G 
rslt�J  �I  F o      �F�F 0 	pagerange 	pageRange�K  �Q  3 r   < CJKJ m   < ?LL �MM  a l l   p a g e sK o      �E�E 0 	pagerange 	pageRange0 NON l  D D�D�C�B�D  �C  �B  O PQP n  D LRSR I   E L�AT�@�A 0 
pageranger 
pageRangerT U�?U o   E H�>�> 0 	pagerange 	pageRange�?  �@  S  f   D EQ VWV l  M M�=�<�;�=  �<  �;  W X�:X O   M1YZY k   [0[[ \]\ l  [ [�9�8�7�9  �8  �7  ] ^_^ Y   [`�6ab�5` l  kcdec k   kff ghg l  k k�4�3�2�4  �3  �2  h iji r   k {klk n   k wmnm 1   s w�1
�1 
pnamn n  k sopo 4   n s�0q
�0 
cobjq o   q r�/�/ 0 x  p o   k n�.�. 0 opendocuments openDocumentsl o      �-�- 0 docname docNamej rsr r   | �tut n  | �vwv I   } ��,x�+�, ,0 fileextensionremover fileExtensionRemoverx y�*y o   } ��)�) 0 docname docName�*  �+  w  f   | }u o      �(�( 0 
newdocname 
newdocNames z{z r   � �|}| l  � �~�'�&~ c   � �� n   � ���� 1   � ��%
�% 
path� n  � ���� 4   � ��$�
�$ 
cobj� o   � ��#�# 0 x  � o   � ��"�" 0 opendocuments openDocuments� m   � ��!
�! 
TEXT�'  �&  } o      � �  0 filepath filePath{ ��� r   � ���� 4   � ���
� 
PFst� l  � ����� c   � ���� o   � ��� 0 chosenpreset chosenPreset� m   � ��
� 
TEXT�  �  � o      �� 0 exportpreset exportPreset� ��� l  � �����  �  �  � ��� Z   ������ =  � ���� o   � ��� 0 chosenpreset chosenPreset� J   � ��� ��� m   � ��� ���  s k - T e m p o r � r�  � I  � ����
� .K2  exAscBKT        docu� n  � ���� 4   � ���
� 
cobj� o   � ��� 0 x  � o   � ��� 0 opendocuments openDocuments� ���
� 
exft� m   � ��
� eXftt_PD� ���
� 
kfil� l  � ����� b   � ���� b   � ���� o   � ��
�
 0 filepath filePath� o   � ��	�	 0 
newdocname 
newdocName� m   � ��� ���  . p d f�  �  � ���
� 
usng� o   � ��� 0 exportpreset exportPreset� ���
� 
imot� m   � ��
� savoyes �  �  � I  ����
� .K2  exAscBKT        docu� n  � ���� 4   � ���
� 
cobj� o   � ��� 0 x  � o   � �� �  0 opendocuments openDocuments� ����
�� 
exft� m   � ���
�� eXftt_PD� ����
�� 
kfil� l  ������� b   ���� b   � ��� o   � ����� 0 filepath filePath� o   � ����� 0 
newdocname 
newdocName� m   �� ���  . p d f��  ��  � ����
�� 
usng� o  
���� 0 exportpreset exportPreset� �����
�� 
imot� m  ��
�� boovfals��  � ���� l ��������  ��  ��  ��  d / ) this iterates through all open documents   e ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�6 0 x  a m   ^ _���� b I  _ f�����
�� .corecnte****       ****� o   _ b���� 0 opendocuments openDocuments��  �5  _ ��� l ��������  ��  ��  � ��� l ��������  ��  ��  � ��� O  .��� l $-���� r  $-��� o  $'���� (0 preservedpagerange preservedPageRange� 1  ',��
�� 
pcty� * $ always restore original preferences   � ��� H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s� 1  !��
�� 
DFpf� ��� l //��������  ��  ��  � ��� l //������  �  wait for all tasks   � ��� $ w a i t   f o r   a l l   t a s k s� ���� l //��������  ��  ��  ��  Z 5   M X�����
�� 
capp� m   Q T�� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  �:  �U  �T  ) ���� Z  6I������� > 6=��� o  67���� 0 chosenpreset chosenPreset� J  7<�� ���� m  7:�� ���  s k - T e m p o r � r��  � n @E��� I  AE�������� 0 displaytheend displayTheEnd��  ��  �  f  @A��  ��  ��   ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 idmlexporter idmlExporter� ���� o      ����  0 functionchoice functionChoice��  ��  � k     U�� ��� O     O��� Y    N�������� l   I� � k    I  l   ��������  ��  ��    r     n    	
	 1    ��
�� 
pnam
 n    4    ��
�� 
cobj o    ���� 0 x   o    ���� 0 opendocuments openDocuments o      ���� 0 docname docName  r    ' n   % I     %������ ,0 fileextensionremover fileExtensionRemover �� o     !���� 0 docname docName��  ��    f      o      ���� 0 
newdocname 
newdocName  r   ( 2 l  ( 0���� c   ( 0 n   ( . 1   , .��
�� 
path n  ( ,  4   ) ,��!
�� 
cobj! o   * +���� 0 x    o   ( )���� 0 opendocuments openDocuments m   . /��
�� 
TEXT��  ��   o      ���� 0 filepath filePath "#" l  3 3��������  ��  ��  # $%$ I  3 G��&'
�� .K2  exAscBKT        docu& n  3 7()( 4   4 7��*
�� 
cobj* o   5 6���� 0 x  ) o   3 4���� 0 opendocuments openDocuments' ��+,
�� 
exft+ m   8 9��
�� eXftidml, ��-��
�� 
kfil- l  : A.����. b   : A/0/ b   : =121 o   : ;���� 0 filepath filePath2 o   ; <���� 0 
newdocname 
newdocName0 m   = @33 �44 
 . i d m l��  ��  ��  % 5��5 l  H H��������  ��  ��  ��    / ) this iterates through all open documents    �66 R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�� 0 x  � m    ���� � I   ��7��
�� .corecnte****       ****7 o    ���� 0 opendocuments openDocuments��  ��  � 5     ��8��
�� 
capp8 m    99 �:: $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � ;��; n  P U<=< I   Q U�������� 0 displaytheend displayTheEnd��  ��  =  f   P Q��  � >?> l     ��������  ��  ��  ? @A@ l     ��BC��  B z t �������������������������������������������������������������������������������������������������������������������   C �DD �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "A EFE l     ��������  ��  ��  F GHG i    IJI I      ��K���� ,0 fileextensionremover fileExtensionRemoverK L��L o      ���� 0 docname docName��  ��  J k     EMM NON l    PQRP r     STS n    UVU 1    ��
�� 
txdlV 1     ��
�� 
ascrT o      ���� 0 olddelimiters oldDelimitersQ * $ always preserve original delimiters   R �WW H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r sO XYX r    Z[Z J    	\\ ]��] m    ^^ �__  .��  [ n     `a` 1   
 ��
�� 
txdla 1   	 
��
�� 
ascrY bcb r    ded n    fgf 2   ��
�� 
citmg l   h��~h c    iji o    �}�} 0 docname docNamej m    �|
�| 
ctxt�  �~  e o      �{�{ 0 	pathitems 	pathItemsc klk Z    6mn�zom ?    pqp l   r�y�xr I   �ws�v
�w .corecnte****       ****s o    �u�u 0 	pathitems 	pathItems�v  �y  �x  q m    tt �uu  2n r     -vwv n     +xyx 7  ! +�tz{
�t 
cobjz m   % '�s�s { m   ( *�r�r��y o     !�q�q 0 	pathitems 	pathItemsw o      �p�p 0 	pathitems 	pathItems�z  o r   0 6|}| n   0 4~~ 4   1 4�o�
�o 
cobj� m   2 3�n�n  o   0 1�m�m 0 	pathitems 	pathItems} o      �l�l 0 	pathitems 	pathItemsl ��� r   7 <��� c   7 :��� o   7 8�k�k 0 	pathitems 	pathItems� m   8 9�j
�j 
TEXT� o      �i�i 0 
newdocname 
newdocName� ��� l  = B���� r   = B��� o   = >�h�h 0 olddelimiters oldDelimiters� n     ��� 1   ? A�g
�g 
txdl� 1   > ?�f
�f 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��e� L   C E�� o   C D�d�d 0 
newdocname 
newdocName�e  H ��� l     �c�b�a�c  �b  �a  � ��� l     �`���`  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �_�^�]�_  �^  �]  � ��� i    ��� I      �\��[�\ 0 
pageranger 
pageRanger� ��Z� o      �Y�Y 0 	pagerange 	pageRange�Z  �[  � O     "��� k    !�� ��� O    ��� l   ���� r    ��� 1    �X
�X 
pcty� o      �W�W (0 preservedpagerange preservedPageRange� , & always preserve original preferences    � ��� L   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s  � 1    �V
�V 
DFpf� ��� l   �U�T�S�U  �T  �S  � ��R� O    !��� r     ��� o    �Q�Q 0 	pagerange 	pageRange� 1    �P
�P 
pcty� 1    �O
�O 
DFpf�R  � 5     �N��M
�N 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�M kfrmID  � ��� l     �L�K�J�L  �K  �J  � ��� l     �I���I  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �H�G�F�H  �G  �F  � ��� l     �E���E  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �D�C�B�D  �C  �B  � ��� i    ��� I      �A�@�?�A 0 	linkcheck 	linkCheck�@  �?  � O     ���� k    ��� ��� l   �>�=�<�>  �=  �<  � ��� r    ��� m    	�;
�; boovtrue� o      �:�: 0 stopbool stopBool� ��� r    ��� m    �9
�9 boovtrue� o      �8�8 0 linkcheckbool linkCheckBool� ��� l   �7�6�5�7  �6  �5  � ��� Y    ���4���3� k    ��� ��� l   �2���2  � $ out of date/missing link check   � ��� < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c k� ��� r    /��� l   -��1�0� 6   -��� n    $��� 2   " $�/
�/ 
clnk� n   "��� 4    "�.�
�. 
cobj� o     !�-�- 0 x  � o    �,�, 0 opendocuments openDocuments� E   % ,��� 1   & (�+
�+ 
stts� m   ) +�*
�* sttelmis�1  �0  � o      �)�) 0 missinglinks missingLinks� ��� r   0 A��� l  0 ?��(�'� 6  0 ?��� n   0 6��� 2   4 6�&
�& 
clnk� n  0 4��� 4   1 4�% 
�% 
cobj  o   2 3�$�$ 0 x  � o   0 1�#�# 0 opendocuments openDocuments� E   7 > 1   8 :�"
�" 
stts m   ; =�!
�! sttelood�(  �'  � o      � �  0 modifiedlinks modifiedLinks�  r   B G b   B E o   B C�� 0 missinglinks missingLinks o   C D�� 0 modifiedlinks modifiedLinks o      �� 0 failedlinks failedLinks 	
	 Z   H Y�� >  H O l  H M�� I  H M��
� .corecnte****       **** o   H I�� 0 failedlinks failedLinks�  �  �   m   M N��   r   R U m   R S�
� boovfals o      �� 0 linkcheckbool linkCheckBool�  �  
  Z   Z ��� =  Z ] o   Z [�� 0 linkcheckbool linkCheckBool m   [ \�
� boovfals I  ` ��
� .sysodlogaskr        TEXT b   ` � b   ` � b   ` ~  b   ` z!"! b   ` v#$# b   ` m%&% b   ` i'(' b   ` e)*) m   ` a++ �,, ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  * o   a d�
� 
ret ( m   e h-- �.. R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -& o   i l�
� 
ret $ l  m u/��
/ n   m u010 1   q u�	
�	 
pnam1 n  m q232 4   n q�4
� 
cobj4 o   o p�� 0 x  3 o   m n�� 0 opendocuments openDocuments�  �
  " o   v y�
� 
ret   m   z }55 �66 R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - o   ~ ��
� 
ret  m   � �77 �88 J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s ! �9:
� 
btns9 J   � �;; <=< m   � �>> �?? 
 S t o p != @�@ m   � �AA �BB  W e i t e r !�  : �C� 
� 
dfltC m   � �DD �EE  W e i t e r !�   �  �   F��F Q   � �GH��G Z   � �IJ����I =  � �KLK n   � �MNM 1   � ���
�� 
bhitN 1   � ���
�� 
rsltL m   � �OO �PP 
 S t o p !J r   � �QRQ m   � ���
�� boovfalsR o      ���� 0 stopbool stopBool��  ��  H R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �4 0 x  � m    ���� � I   ��S��
�� .corecnte****       ****S o    ���� 0 opendocuments openDocuments��  �3  � T��T l  � ���������  ��  ��  ��  � 5     ��U��
�� 
cappU m    VV �WW $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � XYX l     ��������  ��  ��  Y Z[Z l     ��\]��  \ z t �������������������������������������������������������������������������������������������������������������������   ] �^^ �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "[ _`_ l     ��������  ��  ��  ` aba i    cdc I      �������� &0 textoverflowcheck textOverflowCheck��  ��  d O     �efe k    �gg hih l   ��������  ��  ��  i jkj r    lml m    	��
�� boovtruem o      ���� 0 stopbool stopBoolk non r    pqp m    ��
�� boovtrueq o      ���� 0 textcheckbool textCheckBoolo rsr l   ��������  ��  ��  s tut Y    �v��wx��v k    �yy z{z l   ��|}��  |  text overflow check   } �~~ & t e x t   o v e r f l o w   c h e c k{ � l   ������  � � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not   � ��� s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o t� ��� l   ;���� r    ;��� l   9������ 6   9��� n    $��� 2   " $��
�� 
txtf� n   "��� 4    "���
�� 
cobj� o     !���� 0 x  � o    ���� 0 opendocuments openDocuments� F   % 8��� =  & -��� 1   ' )��
�� 
OVRF� m   * ,��
�� boovtrue� =  . 7��� n  / 3��� 1   1 3��
�� 
pvis� 1   / 1��
�� 
pilr� m   4 6��
�� boovtrue��  ��  � o      ���� 0 textoverflows textOverflows� % this just checks visible layers   � ��� > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r s� ��� l  < <������  � c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)   � ��� � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )� ��� l  < <������  � h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)   � ��� � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )� ��� l  < <������  � 5 /set failedLinks to missingLinks & modifiedLinks   � ��� ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k s� ��� Z   < M������� >  < C��� l  < A������ I  < A�����
�� .corecnte****       ****� o   < =���� 0 textoverflows textOverflows��  ��  ��  � m   A B����  � r   F I��� m   F G��
�� boovfals� o      ���� 0 textcheckbool textCheckBool��  ��  � ��� Z   N �������� =  N Q��� o   N O���� 0 textcheckbool textCheckBool� m   O P��
�� boovfals� I  T �����
�� .sysodlogaskr        TEXT� b   T p��� b   T l��� b   T j��� b   T f��� b   T d��� b   T [��� b   T Y��� b   T W��� m   T U�� ��� 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  � o   U V��
�� 
ret � m   W X�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   Y Z��
�� 
ret � l  [ c������ n   [ c��� 1   _ c��
�� 
pnam� n  [ _��� 4   \ _���
�� 
cobj� o   ] ^���� 0 x  � o   [ \���� 0 opendocuments openDocuments��  ��  � o   d e��
�� 
ret � m   f i�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   j k��
�� 
ret � m   l o�� ��� � h a t   T e x t � b e r h a n g .   D a s   s k - I n D e s i g n - S k r i p t   � g o T o F i r s t T e x t O v e r f l o w �   f i n d e t   � b e r h � n g e !� ����
�� 
btns� J   s {�� ��� m   s v�� ��� 
 S t o p !� ���� m   v y�� ���  W e i t e r !��  � �����
�� 
dflt� m   ~ ��� ���  W e i t e r !��  ��  ��  � ���� Q   � ������ Z   � �������� =  � ���� n   � ���� 1   � ���
�� 
bhit� 1   � ���
�� 
rslt� m   � ��� ��� 
 S t o p !� r   � ���� m   � ���
�� boovfals� o      ���� 0 stopbool stopBool��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 x  w m    ���� x I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  u ���� l  � ���������  ��  ��  ��  f 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  b ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � �   �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "�  l     ��������  ��  ��    i     I      �������� 0 displaytheend displayTheEnd��  ��   I    ��
�� .sysodlogaskr        TEXT m     		 �

 ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t ��
�� 
btns m     �  O K ��
�� 
dflt m     �  O K ����
�� 
givu m    ���� ��   �� l     ����~��  �  �~  ��       �}�}   	�|�{�z�y�x�w�v�u�t�| "0 functionchooser functionChooser�{ 0 pdfexporter pdfExporter�z 0 idmlexporter idmlExporter�y ,0 fileextensionremover fileExtensionRemover�x 0 
pageranger 
pageRanger�w 0 	linkcheck 	linkCheck�v &0 textoverflowcheck textOverflowCheck�u 0 displaytheend displayTheEnd
�t .aevtoappnull  �   � **** �s ��r�q �p�s "0 functionchooser functionChooser�r  �q   �o�o  0 functionchoice functionChoice   � ��n ��m ��l ��k�j ��i ��h
�n 
inSL
�m 
prmp
�l 
okbt�k 
�j .gtqpchltns    @   @ ns  �i 0 pdfexporter pdfExporter�h 0 idmlexporter idmlExporter�p 9��lv��kv����� 	E�O��kv  )�k+ Y ��kv  )�k+ Y hOP �g	�f�e!"�d�g 0 pdfexporter pdfExporter�f �c#�c #  �b�b  0 functionchoice functionChoice�e  ! �a�`�_�a  0 functionchoice functionChoice�` 0 
buttonname 
buttonName�_ 0 x  " 4�^�]�\!�[%�Z�Y�X�W8?�VB�U�T�S�RL�Q�P��O�N�M�L�K�J�I�H�G�F�E�D�C��B�A�@��?�>�=�<�;��:�9�8��7
�^ 
ctxt�] ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�\ 
inSL
�[ 
prmp
�Z 
okbt�Y 
�X .gtqpchltns    @   @ ns  �W 0 chosenpreset chosenPreset
�V 
dtxt
�U .sysodlogaskr        TEXT
�T 
rslt
�S 
ttxt�R 0 	pagerange 	pageRange�Q 0 
pageranger 
pageRanger
�P 
capp
�O kfrmID  �N 0 opendocuments openDocuments
�M .corecnte****       ****
�L 
cobj
�K 
pnam�J 0 docname docName�I ,0 fileextensionremover fileExtensionRemover�H 0 
newdocname 
newdocName
�G 
path
�F 
TEXT�E 0 filepath filePath
�D 
PFst�C 0 exportpreset exportPreset
�B 
exft
�A eXftt_PD
�@ 
kfil
�? 
usng
�> 
imot
�= savoyes �< 
�; .K2  exAscBKT        docu
�: 
DFpf�9 (0 preservedpagerange preservedPageRange
�8 
pcty�7 0 displaytheend displayTheEnd�dJ��%�&E�O���kv���� 	E�O�f��kv ���l O_ a ,E` Y 	a E` O)_ k+ O)a a a 0 � �k_ j kh _ a �/a ,E` O)_ k+ E` O_ a �/a ,a  &E` !O*a "�a  &/E` #O�a $kv  3_ a �/a %a &a '_ !_ %a (%a )_ #a *a +a , -Y ._ a �/a %a &a '_ !_ %a .%a )_ #a *fa , -OP[OY�OO*a /, _ 0*a 1,FUOPUY hO�a 2kv 
)j+ 3Y h �6��5�4$%�3�6 0 idmlexporter idmlExporter�5 �2&�2 &  �1�1  0 functionchoice functionChoice�4  $ �0�/�0  0 functionchoice functionChoice�/ 0 x  % �.9�-�,�+�*�)�(�'�&�%�$�#�"�!� 3���
�. 
capp
�- kfrmID  �, 0 opendocuments openDocuments
�+ .corecnte****       ****
�* 
cobj
�) 
pnam�( 0 docname docName�' ,0 fileextensionremover fileExtensionRemover�& 0 
newdocname 
newdocName
�% 
path
�$ 
TEXT�# 0 filepath filePath
�" 
exft
�! eXftidml
�  
kfil� 
� .K2  exAscBKT        docu� 0 displaytheend displayTheEnd�3 V)���0 H Ek�j kh ��/�,E�O)�k+ E�O��/�,�&E�O��/�����%a %a  OP[OY��UO)j+  �J��'(�� ,0 fileextensionremover fileExtensionRemover� �)� )  �� 0 docname docName�  ' ��� 0 docname docName� 0 olddelimiters oldDelimiters( ��^����t����
� 
ascr
� 
txdl
� 
ctxt
� 
citm� 0 	pathitems 	pathItems
� .corecnte****       ****
� 
cobj���
� 
TEXT� 0 
newdocname 
newdocName� F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO� �
��	�*+��
 0 
pageranger 
pageRanger�	 �,� ,  �� 0 	pagerange 	pageRange�  * �� 0 	pagerange 	pageRange+ ����� ��
� 
capp
� kfrmID  
� 
DFpf
�  
pcty�� (0 preservedpagerange preservedPageRange� #)���0 *�, *�,E�UO*�, �*�,FUU �������-.���� 0 	linkcheck 	linkCheck��  ��  - ������ 0 linkcheckbool linkCheckBool�� 0 x  . !��V������������/������������+��-��57��>A��D��������O����
�� 
capp
�� kfrmID  �� 0 stopbool stopBool�� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
clnk/  
�� 
stts
�� sttelmis�� 0 missinglinks missingLinks
�� sttelood�� 0 modifiedlinks modifiedLinks�� 0 failedlinks failedLinks
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
bhit��  ��  �� �)���0 �eE�OeE�O �k�j kh ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fE�Y hO�f  B�_ %a %_ %��/a ,%_ %a %_ %a %a a a lva a a  Y hO _ a ,a   fE�Y hW X   h[OY�UOPU ��d����01���� &0 textoverflowcheck textOverflowCheck��  ��  0 ������ 0 textcheckbool textCheckBool�� 0 x  1 ���������������/������������������������������������
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
bhit��  ��  �� �)���0 �eE�OeE�O �k�j kh ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fE�Y hO�f  8��%�%�%��/a ,%�%a %�%a %a a a lva a a  Y hO _ a ,a   fE�Y hW X  h[OY�kOPU ������23���� 0 displaytheend displayTheEnd��  ��  2  3 	����������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k�  ��4����56��
�� .aevtoappnull  �   � ****4 k     D77  t����  ��  ��  5  6 �� ���������������/ �����������
�� 
capp
�� kfrmID  
�� 
pacd��  0 activedocument activeDocument
�� 
docu�� 0 opendocuments openDocuments
�� 
PFst
�� 
pnam�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer�� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck�� 0 stopbool stopBool�� "0 functionchooser functionChooser�� E)���0 =*�,E�O*�-E�O*�-�,�[�,\Z�@C1E�O)j+ O)j+ O�e  
)j+ Y hOPU ascr  ��ޭ