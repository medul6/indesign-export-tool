FasdUAS 1.101.10   ��   ��    k             l     ��  ��      ExportTool for InDesign     � 	 	 0   E x p o r t T o o l   f o r   I n D e s i g n   
  
 l     ��  ��      version 1.9.2.12     �   "   v e r s i o n   1 . 9 . 2 . 1 2      l     ��������  ��  ��        l     ��  ��    , & created by medul6, Michael Heck, 2012     �   L   c r e a t e d   b y   m e d u l 6 ,   M i c h a e l   H e c k ,   2 0 1 2      l     ��  ��    �  open sourced on September 7th, 2012 on Github > check the LICENSE.txt and README.md in the repository for detailed information     �   �   o p e n   s o u r c e d   o n   S e p t e m b e r   7 t h ,   2 0 1 2   o n   G i t h u b   >   c h e c k   t h e   L I C E N S E . t x t   a n d   R E A D M E . m d   i n   t h e   r e p o s i t o r y   f o r   d e t a i l e d   i n f o r m a t i o n      l     ��  ��    5 / https://github.com/medul6/indesign-export-tool     �   ^   h t t p s : / / g i t h u b . c o m / m e d u l 6 / i n d e s i g n - e x p o r t - t o o l     !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ z t �������������������������������������������������������������������������������������������������������������������    % � & & �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   +   global variables    , � - - "   g l o b a l   v a r i a b l e s *  . / . p       0 0 ������  0 activedocument activeDocument��   /  1 2 1 p       3 3 ������ 0 opendocuments openDocuments��   2  4 5 4 p       6 6 ������ 0 activewindow activeWindow��   5  7 8 7 p       9 9 ������ ,0 pdfpresetsoncomputer pdfPresetsOnComputer��   8  : ; : p       < < ������ (0 preservedpagerange preservedPageRange��   ;  = > = p       ? ? ������ 0 stopbool stopBool��   >  @ A @ p       B B ������ 0 splittedrange splittedRange��   A  C D C p       E E ������ (0 splittedrangemagic splittedRangeMagic��   D  F G F p       H H ������ 0 splittedmagic splittedMagic��   G  I J I l     ��������  ��  ��   J  K L K p       M M ������ 0 textoverflows textOverflows��   L  N O N l     ��������  ��  ��   O  P Q P l     �� R S��   R  test variables!!!    S � T T " t e s t   v a r i a b l e s ! ! ! Q  U V U l     �� W X��   W  global filePath    X � Y Y  g l o b a l   f i l e P a t h V  Z [ Z l     �� \ ]��   \  global chosenPresetText    ] � ^ ^ . g l o b a l   c h o s e n P r e s e t T e x t [  _ ` _ l     �� a b��   a  global docName    b � c c  g l o b a l   d o c N a m e `  d e d l     �� f g��   f  global newFilePath    g � h h $ g l o b a l   n e w F i l e P a t h e  i j i l     �� k l��   k  global pathItems    l � m m   g l o b a l   p a t h I t e m s j  n o n l     �� p q��   p  global pageRange    q � r r   g l o b a l   p a g e R a n g e o  s t s l     �� u v��   u  global newdocName    v � w w " g l o b a l   n e w d o c N a m e t  x y x l     �� z {��   z  global failedLinks    { � | | $ g l o b a l   f a i l e d L i n k s y  } ~ } l     ��  ���     global textOverflows    � � � � ( g l o b a l   t e x t O v e r f l o w s ~  � � � l     �� � ���   �  global modifiedLinks    � � � � ( g l o b a l   m o d i f i e d L i n k s �  � � � l     �� � ���   �  global missingLinks    � � � � & g l o b a l   m i s s i n g L i n k s �  � � � l     �� � ���   �  global exportPreset    � � � � & g l o b a l   e x p o r t P r e s e t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  properties!    � � � �  p r o p e r t i e s ! �  � � � j     �� ���  0 functionchoice functionChoice � J      � �  ��� � m      � � � � �  P D F - E x p o r t��   �  � � � j    	�� ��� 0 chosenpreset chosenPreset � J     � �  ��� � m     � � � � �  s k - S c r e e n��   �  � � � j   
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
�$ boovfals� k   Y��� ��� I  Y ��#��
�# .sysodlogaskr        TEXT� b   Y d��� b   Y `��� m   Y \�� ��� N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?� o   \ _�"
�" 
ret � m   ` c�� ��� f S e i t e n   m � s s e n   n i c h t   z u s a m m e n h � n g e n ,   z . B .   ' 2 - 3 , 8 - 1 9 '� �!��
�! 
dtxt� o   g l� �  0 	pagerange 	pageRange� ���
� 
btns� J   o w�� ��� m   o r�� ���  A l l   P a g e s� ��� m   r u�� ���  W e i t e r !�  � ���
� 
dflt� m   z }�� ���  W e i t e r !�  � ��� l  � �����  �  �  � ��� Z   � ������ =  � ���� n   � ���� 1   � ��
� 
bhit� 1   � ��
� 
rslt� m   � ��� ���  W e i t e r !� r   � ���� l  � ����� n   � ���� 1   � ��
� 
ttxt� 1   � ��
� 
rslt�  �  � o      �� 0 
inputrange 
inputRange�  � O   � ���� r   � ���� n   � ���� 1   � ��
� 
pnam� n   � ���� 2   � ��
� 
page� 1   � ��
� 
pacd� o      �� 0 
inputrange 
inputRange� 5   � ����
� 
capp� m   � ��� ��� $ c o m . a d o b e . I n D e s i g n
� kfrmID  � ��� l  � ��
�	��
  �	  �  � ��� r   � ���� o   � ��� 0 
inputrange 
inputRange� o      �� 0 	pagerange 	pageRange� ��� n  � ���� I   � ����� (0 inputrangesplitter inputRangeSplitter� ��� o   � ��� 0 
inputrange 
inputRange�  �  �  f   � �� ��� n  � ���� I   � ���� � 0 magicsplitter MagicSplitter� ���� o   � ����� 0 splittedrange splittedRange��  �   �  f   � �� ��� l  � ���������  ��  ��  � ��� O   �r��� k   �q��    l  � ���������  ��  ��    Y   �\���� l  �W	 k   �W

  l  � ���������  ��  ��    n  � � I   � ������� 0 
pageranger 
pageRanger �� n  � � 4   � ���
�� 
cobj o   � ����� 0 x   o   � ����� 0 splittedmagic splittedMagic��  ��    f   � �  l  � ���������  ��  ��    r   � � n   � � 1   � ���
�� 
pnam o   � �����  0 activedocument activeDocument o      ���� 0 docname docName  r   � !  n  �"#" I   ��$���� ,0 fileextensionremover fileExtensionRemover$ %��% o   ���� 0 docname docName��  ��  #  f   � ! o      ���� 0 
newdocname 
newdocName &'& r  ()( l *����* c  +,+ n  -.- 1  ��
�� 
path. o  ����  0 activedocument activeDocument, m  ��
�� 
TEXT��  ��  ) o      ���� 0 filepath filePath' /0/ r  &121 4  $��3
�� 
PFst3 l #4����4 c  #565 o  ���� 0 chosenpreset chosenPreset6 m  "��
�� 
TEXT��  ��  2 o      ���� 0 exportpreset exportPreset0 787 l ''��������  ��  ��  8 9:9 I 'U��;<
�� .K2  exAscBKT        docu; o  '*����  0 activedocument activeDocument< ��=>
�� 
exft= m  -0��
�� eXftt_PD> ��?@
�� 
kfil? l 3GA����A b  3GBCB b  3CDED b  3:FGF b  36HIH o  34���� 0 filepath filePathI o  45���� 0 
newdocname 
newdocNameG m  69JJ �KK    sE l :BL����L n :BMNM 4  =B��O
�� 
cobjO o  @A���� 0 x  N o  :=���� 0 splittedmagic splittedMagic��  ��  C m  CFPP �QQ  . p d f��  ��  @ ��RS
�� 
usngR o  JK���� 0 exportpreset exportPresetS ��T��
�� 
imotT m  NO��
�� boovfals��  : U��U l VV��������  ��  ��  ��   5 / this iterates through magically splitted pages   	 �VV ^   t h i s   i t e r a t e s   t h r o u g h   m a g i c a l l y   s p l i t t e d   p a g e s�� 0 x   m   � �����  I  � ���W��
�� .corecnte****       ****W o   � ����� 0 splittedmagic splittedMagic��  ��   XYX l ]]��������  ��  ��  Y Z[Z l ]]��������  ��  ��  [ \]\ O  ]o^_^ l en`ab` r  encdc o  eh���� (0 preservedpagerange preservedPageRanged 1  hm��
�� 
pctya * $ always restore original preferences   b �ee H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s_ 1  ]b��
�� 
DFpf] fgf l pp��������  ��  ��  g hih l pp��jk��  j  wait for all tasks   k �ll $ w a i t   f o r   a l l   t a s k si m��m l pp��������  ��  ��  ��  � 5   � ���n��
�� 
cappn m   � �oo �pp $ c o m . a d o b e . I n D e s i g n
�� kfrmID  � qrq l ss��������  ��  ��  r s��s Z  s�tu����t > s~vwv o  sx���� 0 chosenpreset chosenPresetw J  x}xx y��y m  x{zz �{{  s k - T e m p o r � r��  u k  ��|| }~} l �������    my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )~ ��� l ��������  � T Nmy displayNotificationShort("PDF Export gestartet", "Dokument: " & newdocName)   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   " D o k u m e n t :   "   &   n e w d o c N a m e )� ��� n ����� I  ��������� 20 displaynotificationlong displayNotificationLong� ��� m  ���� ��� ( P D F   E x p o r t   g e s t a r t e t� ��� l �������� c  ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 chosenpreset chosenPreset��  ��  � m  ����
�� 
TEXT��  ��  � ���� b  ����� m  ���� ���  D o k u m e n t :  � o  ������ 0 
newdocname 
newdocName��  ��  �  f  ��� ���� O  ����� Z  ��������� H  ���� l �������� I �������
�� .CoRedoexbool        obj � l �������� 6 ����� 2  ����
�� 
EvLi� = ����� 1  ����
�� 
pEvT� m  ���� ���  a f t e r E x p o r t��  ��  ��  ��  ��  � I ������
�� .corecrel****      � null� m  ����
�� 
EvLi� �����
�� 
prdt� K  ���� ���
� 
pEvT� m  ���� ���  a f t e r E x p o r t� �~��}
�~ 
pHnd� n ����� o  ���|�| D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�  f  ���}  ��  ��  ��  � 5  ���{��z
�{ 
capp� m  ���� ��� $ c o m . a d o b e . I n D e s i g n
�z kfrmID  ��  ��  ��  ��  �&  � L  ���y�y  �'  �8  � L  ���x�x  �9  k ��� l     �w�v�u�w  �v  �u  � ��� l     �t���t  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �s�r�q�s  �r  �q  � ��� i    ��� I      �p��o�p ,0 pdfexportermultipage pdfExporterMultipage� ��n� o      �m�m  0 functionchoice functionChoice�n  �o  � k    �� ��� n    ��� I    �l�k�j�l 0 	linkcheck 	linkCheck�k  �j  �  f     � ��� n   ��� I    �i�h�g�i &0 textoverflowcheck textOverflowCheck�h  �g  �  f    � ��f� Z   ���e�� F    ��� =   ��� o    �d�d 0 linkcheckbool linkCheckBool� m    �c
�c boovtrue� =   ��� o    �b�b 0 textcheckbool textCheckBool� m    �a
�a boovtrue� k   "��� ��� r   " )��� c   " '��� b   " %��� o   " #�`�`  0 functionchoice functionChoice� m   # $�� ���  !� m   % &�_
�_ 
ctxt� o      �^�^ 0 
buttonname 
buttonName� ��� r   * ?��� I  * 9�]��
�] .gtqpchltns    @   @ ns  � o   * +�\�\ ,0 pdfpresetsoncomputer pdfPresetsOnComputer� �[��
�[ 
inSL� o   , 1�Z�Z 0 chosenpreset chosenPreset� �Y��
�Y 
prmp� m   2 3�� ��� $ P D F - P r e s e t   w � h l e n :� �X��W
�X 
okbt� o   4 5�V�V 0 
buttonname 
buttonName�W  � o      �U�U 0 chosenpreset chosenPreset� ��� Z   @ ����T�� >  @ G��� o   @ E�S�S 0 chosenpreset chosenPreset� m   E F�R
�R boovfals� k   J ��� ��� l  J J�Q� �Q  � 1 +if chosenPreset is not {"sk-Tempor�r"} then     � V i f   c h o s e n P r e s e t   i s   n o t   { " s k - T e m p o r � r " }   t h e n�  I  J j�P
�P .sysodlogaskr        TEXT b   J O b   J M	 m   J K

 � N W e l c h e   S e i t e n   s o l l e n   e x p o r t i e r t   w e r d e n ?	 o   K L�O
�O 
ret  m   M N � : ( W e n n   a l l e ,   d a n n   ' a l l   p a g e s ' ) �N
�N 
dtxt o   P U�M�M 0 	pagerange 	pageRange �L
�L 
btns J   X `  m   X [ �  A l l   P a g e s �K m   [ ^ �  W e i t e r !�K   �J�I
�J 
dflt m   c f �  W e i t e r !�I   �H Z   k ��G  =  k v!"! n   k r#$# 1   n r�F
�F 
bhit$ 1   k n�E
�E 
rslt" m   r u%% �&&  W e i t e r ! r   y �'(' l  y �)�D�C) n   y �*+* 1   | ��B
�B 
ttxt+ 1   y |�A
�A 
rslt�D  �C  ( o      �@�@ 0 	pagerange 	pageRange�G    r   � �,-, m   � �.. �//  a l l   p a g e s- o      �?�? 0 	pagerange 	pageRange�H  �T  � L   � ��>�>  � 010 l  � ��=�<�;�=  �<  �;  1 232 n  � �454 I   � ��:6�9�: 0 
pageranger 
pageRanger6 7�87 o   � ��7�7 0 	pagerange 	pageRange�8  �9  5  f   � �3 898 l  � ��6�5�4�6  �5  �4  9 :;: O   �w<=< k   �v>> ?@? l  � ��3�2�1�3  �2  �1  @ ABA Y   �aC�0DE�/C l  �\FGHF k   �\II JKJ l  � ��.�-�,�.  �-  �,  K LML r   � �NON n   � �PQP 1   � ��+
�+ 
pnamQ n  � �RSR 4   � ��*T
�* 
cobjT o   � ��)�) 0 x  S o   � ��(�( 0 opendocuments openDocumentsO o      �'�' 0 docname docNameM UVU r   � �WXW n  � �YZY I   � ��&[�%�& ,0 fileextensionremover fileExtensionRemover[ \�$\ o   � ��#�# 0 docname docName�$  �%  Z  f   � �X o      �"�" 0 
newdocname 
newdocNameV ]^] r   � �_`_ l  � �a�!� a c   � �bcb n   � �ded 1   � ��
� 
pathe n  � �fgf 4   � ��h
� 
cobjh o   � ��� 0 x  g o   � ��� 0 opendocuments openDocumentsc m   � ��
� 
TEXT�!  �   ` o      �� 0 filepath filePath^ iji r   � �klk 4   � ��m
� 
PFstm l  � �n��n c   � �opo o   � ��� 0 chosenpreset chosenPresetp m   � ��
� 
TEXT�  �  l o      �� 0 exportpreset exportPresetj qrq l  � �����  �  �  r sts Z   �Zuv�wu =  �xyx o   ��� 0 chosenpreset chosenPresety J  zz {�{ m  || �}}  s k - T e m p o r � r�  v k  1~~ � l ����  � M G this is temporarily disabled, because it just doesn't work that way :)   � ��� �   t h i s   i s   t e m p o r a r i l y   d i s a b l e d ,   b e c a u s e   i t   j u s t   d o e s n ' t   w o r k   t h a t   w a y   : )� ��� l ����  � � �asynchronous export file openDocuments's item x format PDF type to (filePath & newdocName & ".pdf") using exportPreset showing options yes   � ��� a s y n c h r o n o u s   e x p o r t   f i l e   o p e n D o c u m e n t s ' s   i t e m   x   f o r m a t   P D F   t y p e   t o   ( f i l e P a t h   &   n e w d o c N a m e   &   " . p d f " )   u s i n g   e x p o r t P r e s e t   s h o w i n g   o p t i o n s   y e s� ��� I 1�
��
�
 .K2  exAscBKT        docu� n ��� 4  �	�
�	 
cobj� o  �� 0 x  � o  �� 0 opendocuments openDocuments� ���
� 
exft� m  �
� eXftt_PD� ���
� 
kfil� l #���� b  #��� b  ��� o  �� 0 filepath filePath� o  � �  0 
newdocname 
newdocName� m  "�� ���  . p d f�  �  � ����
�� 
usng� o  &'���� 0 exportpreset exportPreset� �����
�� 
imot� m  *+��
�� boovfals��  �  �  w I 4Z����
�� .K2  exAscBKT        docu� n 4<��� 4  7<���
�� 
cobj� o  :;���� 0 x  � o  47���� 0 opendocuments openDocuments� ����
�� 
exft� m  ?B��
�� eXftt_PD� ����
�� 
kfil� l EL������ b  EL��� b  EH��� o  EF���� 0 filepath filePath� o  FG���� 0 
newdocname 
newdocName� m  HK�� ���  . p d f��  ��  � ����
�� 
usng� o  OP���� 0 exportpreset exportPreset� �����
�� 
imot� m  ST��
�� boovfals��  t ���� l [[��������  ��  ��  ��  G / ) this iterates through all open documents   H ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�0 0 x  D m   � ����� E I  � ������
�� .corecnte****       ****� o   � ����� 0 opendocuments openDocuments��  �/  B ��� l bb��������  ��  ��  � ��� l bb��������  ��  ��  � ��� O  bt��� l js���� r  js��� o  jm���� (0 preservedpagerange preservedPageRange� 1  mr��
�� 
pcty� * $ always restore original preferences   � ��� H   a l w a y s   r e s t o r e   o r i g i n a l   p r e f e r e n c e s� 1  bg��
�� 
DFpf� ��� l uu��������  ��  ��  � ��� l uu������  �  wait for all tasks   � ��� $ w a i t   f o r   a l l   t a s k s� ���� l uu��������  ��  ��  ��  = 5   � ������
�� 
capp� m   � ��� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ; ��� l xx��������  ��  ��  � ��� Z  x�������� > x���� o  x}���� 0 chosenpreset chosenPreset� J  }��� ���� m  }��� ���  s k - T e m p o r � r��  � k  ���� ��� l ��������  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l ��������  � x rmy displayNotificationShort("PDF Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " P D F   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )� ��� n ����� I  ��������� 20 displaynotificationlong displayNotificationLong� ��� m  ���� ��� ( P D F   E x p o r t   g e s t a r t e t� ��� l �������� c  ����� l �������� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 chosenpreset chosenPreset��  ��  � m  ����
�� 
TEXT��  ��  � ���� b  ����� l �������� c  ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 opendocuments openDocuments��  ��  ��  � m  ����
�� 
TEXT��  ��  � m  ���� ��� <   D o k u m e n t ( e )   w e r d e n   e x p o r t i e r t��  ��  �  f  ��� ���� O  ��   Z  ������ H  �� l ������ I ������
�� .CoRedoexbool        obj  l ������ 6 ��	 2  ����
�� 
EvLi	 = ��

 1  ����
�� 
pEvT m  �� �  a f t e r E x p o r t��  ��  ��  ��  ��   I ����
�� .corecrel****      � null m  ����
�� 
EvLi ����
�� 
prdt K  �� ��
�� 
pEvT m  �� �  a f t e r E x p o r t ����
�� 
pHnd n �� o  ������ D0  myafterexportnotificationhandler  myAfterExportNotificationHandler  f  ����  ��  ��  ��   5  ������
�� 
capp m  �� � $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��  ��  ��  �  l ����������  ��  ��   �� l ���� ��    end if     �!!  e n d   i f��  �e  � L   ����  �f  � "#" l     ��������  ��  ��  # $%$ l     ��&'��  & z t �������������������������������������������������������������������������������������������������������������������   ' �(( �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "% )*) l     ��������  ��  ��  * +,+ i    "-.- I      ��/���� 0 idmlexporter idmlExporter/ 0��0 o      ����  0 functionchoice functionChoice��  ��  . k     �11 232 n    454 I    �������� 0 	linkcheck 	linkCheck��  ��  5  f     3 676 n   898 I    �������� &0 textoverflowcheck textOverflowCheck��  ��  9  f    7 :��: Z    �;<��=; F    >?> =   @A@ o    ���� 0 linkcheckbool linkCheckBoolA m    ��
�� boovtrue? =   BCB o    ���� 0 textcheckbool textCheckBoolC m    ��
�� boovtrue< k   " �DD EFE O   " qGHG Y   * pI��JK��I l  8 kLMNL k   8 kOO PQP l  8 8��~�}�  �~  �}  Q RSR r   8 @TUT n   8 >VWV 1   < >�|
�| 
pnamW n  8 <XYX 4   9 <�{Z
�{ 
cobjZ o   : ;�z�z 0 x  Y o   8 9�y�y 0 opendocuments openDocumentsU o      �x�x 0 docname docNameS [\[ r   A I]^] n  A G_`_ I   B G�wa�v�w ,0 fileextensionremover fileExtensionRemovera b�ub o   B C�t�t 0 docname docName�u  �v  `  f   A B^ o      �s�s 0 
newdocname 
newdocName\ cdc r   J Tefe l  J Rg�r�qg c   J Rhih n   J Pjkj 1   N P�p
�p 
pathk n  J Nlml 4   K N�on
�o 
cobjn o   L M�n�n 0 x  m o   J K�m�m 0 opendocuments openDocumentsi m   P Q�l
�l 
TEXT�r  �q  f o      �k�k 0 filepath filePathd opo l  U U�j�i�h�j  �i  �h  p qrq I  U i�gst
�g .K2  exAscBKT        docus n  U Yuvu 4   V Y�fw
�f 
cobjw o   W X�e�e 0 x  v o   U V�d�d 0 opendocuments openDocumentst �cxy
�c 
exftx m   Z [�b
�b eXftidmly �az�`
�a 
kfilz l  \ c{�_�^{ b   \ c|}| b   \ _~~ o   \ ]�]�] 0 filepath filePath o   ] ^�\�\ 0 
newdocname 
newdocName} m   _ b�� ��� 
 . i d m l�_  �^  �`  r ��[� l  j j�Z�Y�X�Z  �Y  �X  �[  M / ) this iterates through all open documents   N ��� R   t h i s   i t e r a t e s   t h r o u g h   a l l   o p e n   d o c u m e n t s�� 0 x  J m   - .�W�W K I  . 3�V��U
�V .corecnte****       ****� o   . /�T�T 0 opendocuments openDocuments�U  ��  H 5   " '�S��R
�S 
capp� m   $ %�� ��� $ c o m . a d o b e . I n D e s i g n
�R kfrmID  F ��� l  r r�Q���Q  �  my displayTheEnd()   � ��� $ m y   d i s p l a y T h e E n d ( )� ��� l  r r�P���P  � y smy displayNotificationShort("IDML Export gestartet", ((count openDocuments) as string) & " Dokument(e) exportiert")   � ��� � m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " I D M L   E x p o r t   g e s t a r t e t " ,   ( ( c o u n t   o p e n D o c u m e n t s )   a s   s t r i n g )   &   "   D o k u m e n t ( e )   e x p o r t i e r t " )� ��� n  r ���� I   s ��O��N�O 20 displaynotificationlong displayNotificationLong� ��� m   s v�� ��� * I D M L   E x p o r t   g e s t a r t e t� ��� m   v y�� ���  S u b t i t l e   t e x t� ��M� b   y ���� l  y ���L�K� c   y ���� l  y ~��J�I� I  y ~�H��G
�H .corecnte****       ****� o   y z�F�F 0 opendocuments openDocuments�G  �J  �I  � m   ~ �E
�E 
TEXT�L  �K  � m   � ��� ��� <   D o k u m e n t ( e )   w e r d e n   e x p o r t i e r t�M  �N  �  f   r s� ��D� O   � ���� Z   � ����C�B� H   � ��� l  � ���A�@� I  � ��?��>
�? .CoRedoexbool        obj � l  � ���=�<� 6  � ���� 2   � ��;
�; 
EvLi� =  � ���� 1   � ��:
�: 
pEvT� m   � ��� ���  a f t e r E x p o r t�=  �<  �>  �A  �@  � I  � ��9��
�9 .corecrel****      � null� m   � ��8
�8 
EvLi� �7��6
�7 
prdt� K   � ��� �5��
�5 
pEvT� m   � ��� ���  a f t e r E x p o r t� �4��3
�4 
pHnd� n  � ���� o   � ��2�2 D0  myafterexportnotificationhandler  myAfterExportNotificationHandler�  f   � ��3  �6  �C  �B  � 5   � ��1��0
�1 
capp� m   � ��� ��� $ c o m . a d o b e . I n D e s i g n
�0 kfrmID  �D  ��  = L   � ��/�/  ��  , ��� l     �.�-�,�.  �-  �,  � ��� l     �+���+  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �*�)�(�*  �)  �(  � ��� i   # &��� I      �'��&�' ,0 fileextensionremover fileExtensionRemover� ��%� o      �$�$ 0 docname docName�%  �&  � k     E�� ��� l    ���� r     ��� n    ��� 1    �#
�# 
txdl� 1     �"
�" 
ascr� o      �!�! 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� �� � m    �� ���  .�   � n     ��� 1   
 �
� 
txdl� 1   	 
�
� 
ascr� ��� r    ��� n    ��� 2   �
� 
citm� l   ���� c    ��� o    �� 0 docname docName� m    �
� 
ctxt�  �  � o      �� 0 	pathitems 	pathItems� ��� Z    6����� ?    ��� l   ���� I   ���
� .corecnte****       ****� o    �� 0 	pathitems 	pathItems�  �  �  � m    �� ���  2� r     -��� n     +   7  ! +�
� 
cobj m   % '��  m   ( *���� o     !�� 0 	pathitems 	pathItems� o      �� 0 	pathitems 	pathItems�  � r   0 6 n   0 4 4   1 4�
� 
cobj m   2 3��  o   0 1�
�
 0 	pathitems 	pathItems o      �	�	 0 	pathitems 	pathItems� 	
	 r   7 < c   7 : o   7 8�� 0 	pathitems 	pathItems m   8 9�
� 
TEXT o      �� 0 
newdocname 
newdocName
  l  = B r   = B o   = >�� 0 olddelimiters oldDelimiters n      1   ? A�
� 
txdl 1   > ?�
� 
ascr ) # always restore original delimiters    � F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s � L   C E o   C D�� 0 
newdocname 
newdocName�  �  l     � �����   ��  ��    l     �� ��   z t �������������������������������������������������������������������������������������������������������������������     �!! �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "#" l     ��������  ��  ��  # $%$ i   ' *&'& I      ��(���� 0 
pageranger 
pageRanger( )��) o      ���� 0 	pagerange 	pageRange��  ��  ' O     *+* k    ,, -.- l    ��/0��  / � {
		tell PDF export preferences
			set preservedPageRange to page range -- always preserve original preferences 
		end tell
   0 �11 � 
 	 	 t e l l   P D F   e x p o r t   p r e f e r e n c e s 
 	 	 	 s e t   p r e s e r v e d P a g e R a n g e   t o   p a g e   r a n g e   - -   a l w a y s   p r e s e r v e   o r i g i n a l   p r e f e r e n c e s   
 	 	 e n d   t e l l 
. 232 l   ��������  ��  ��  3 4��4 O    565 r    787 c    9:9 o    ���� 0 	pagerange 	pageRange: m    ��
�� 
TEXT8 1    ��
�� 
pcty6 1    ��
�� 
DFpf��  + 5     ��;��
�� 
capp; m    << �== $ c o m . a d o b e . I n D e s i g n
�� kfrmID  % >?> l     ��������  ��  ��  ? @A@ l     ��BC��  B z t �������������������������������������������������������������������������������������������������������������������   C �DD �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "A EFE l     ��������  ��  ��  F GHG l     ��IJ��  I z t �������������������������������������������������������������������������������������������������������������������   J �KK �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "H LML l     ��������  ��  ��  M NON i   + .PQP I      �������� 0 	linkcheck 	linkCheck��  ��  Q O     �RSR k    �TT UVU l   ��������  ��  ��  V WXW r    YZY m    	��
�� boovtrueZ o      ���� 0 stopbool stopBoolX [\[ r    ]^] m    ��
�� boovtrue^ o      ���� 0 linkcheckbool linkCheckBool\ _`_ l   ��������  ��  ��  ` aba Y    �c��de��c k   " �ff ghg l  " "��ij��  i $ out of date/missing link check   j �kk < o u t   o f   d a t e / m i s s i n g   l i n k   c h e c kh lml r   " 3non l  " 1p����p 6  " 1qrq n   " (sts 2   & (��
�� 
clnkt n  " &uvu 4   # &��w
�� 
cobjw o   $ %���� 0 x  v o   " #���� 0 opendocuments openDocumentsr E   ) 0xyx 1   * ,��
�� 
sttsy m   - /��
�� sttelmis��  ��  o o      ���� 0 missinglinks missingLinksm z{z r   4 E|}| l  4 C~����~ 6  4 C� n   4 :��� 2   8 :��
�� 
clnk� n  4 8��� 4   5 8���
�� 
cobj� o   6 7���� 0 x  � o   4 5���� 0 opendocuments openDocuments� E   ; B��� 1   < >��
�� 
stts� m   ? A��
�� sttelood��  ��  } o      ���� 0 modifiedlinks modifiedLinks{ ��� r   F K��� b   F I��� o   F G���� 0 missinglinks missingLinks� o   G H���� 0 modifiedlinks modifiedLinks� o      ���� 0 failedlinks failedLinks� ��� Z   L a������� >  L S��� l  L Q������ I  L Q�����
�� .corecnte****       ****� o   L M���� 0 failedlinks failedLinks��  ��  ��  � m   Q R����  � r   V ]��� m   V W��
�� boovfals� o      ���� 0 linkcheckbool linkCheckBool��  ��  � ��� Z   b �������� =  b i��� o   b g���� 0 linkcheckbool linkCheckBool� m   g h��
�� boovfals� I  l �����
�� .sysodlogaskr        TEXT� b   l ���� b   l ���� b   l ���� b   l |��� b   l z��� b   l s��� b   l q��� b   l o��� m   l m�� ��� ^ D o k u m e n t   h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !  � o   m n��
�� 
ret � m   o p�� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   q r��
�� 
ret � l  s y������ n   s y��� 1   w y��
�� 
pnam� n  s w��� 4   t w���
�� 
cobj� o   u v���� 0 x  � o   s t���� 0 opendocuments openDocuments��  ��  � o   z {��
�� 
ret � m   | �� ��� R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� o   � ���
�� 
ret � m   � ��� ��� J h a t   m o d i f i z i e r t e   o d e r   f e h l e n d e   L i n k s !� ����
�� 
btns� J   � ��� ��� m   � ��� ��� 
 S t o p !� ���� m   � ��� ���  W e i t e r !��  � �����
�� 
dflt� m   � ��� ���  W e i t e r !��  ��  ��  � ���� Q   � ������ Z   � ������� =  � ���� n   � ���� 1   � ���
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
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 x  d m    ���� e I   �����
�� .corecnte****       ****� o    ���� 0 opendocuments openDocuments��  ��  b ���� l  � ���������  ��  ��  ��  S 5     �����
�� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
�� kfrmID  O ��� l     �������  ��  �  � ��� l     �~���~  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �}�|�{�}  �|  �{  � ��� i   / 2��� I      �z�y�x�z &0 textoverflowcheck textOverflowCheck�y  �x  � O    ��� k   �� � � l   �w�v�u�w  �v  �u     r     m    	�t
�t boovtrue o      �s�s 0 stopbool stopBool  r     m    �r
�r boovtrue o      �q�q 0 textcheckbool textCheckBool 	
	 l   �p�o�n�p  �o  �n  
  Y    �m�l k   " �  l  " "�k�k    text overflow check    � & t e x t   o v e r f l o w   c h e c k  l  " "�j�j   � �set textOverflows to (every text frame of openDocuments's item x whose overflows is true) --this checks all layers, visible or not    � s e t   t e x t O v e r f l o w s   t o   ( e v e r y   t e x t   f r a m e   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   o v e r f l o w s   i s   t r u e )   - - t h i s   c h e c k s   a l l   l a y e r s ,   v i s i b l e   o r   n o t  l  " ? r   " ? !  l  " ="�i�h" 6  " =#$# n   " (%&% 2   & (�g
�g 
txtf& n  " &'(' 4   # &�f)
�f 
cobj) o   $ %�e�e 0 x  ( o   " #�d�d 0 opendocuments openDocuments$ F   ) <*+* =  * 1,-, 1   + -�c
�c 
OVRF- m   . 0�b
�b boovtrue+ =  2 ;./. n  3 7010 1   5 7�a
�a 
pvis1 1   3 5�`
�` 
pilr/ m   8 :�_
�_ boovtrue�i  �h  ! o      �^�^ 0 textoverflows textOverflows % this just checks visible layers    �22 > t h i s   j u s t   c h e c k s   v i s i b l e   l a y e r s 343 l  @ @�]56�]  5 c ]set missingLinks to (every link of openDocuments's item x whose status contains link missing)   6 �77 � s e t   m i s s i n g L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   m i s s i n g )4 898 l  @ @�\:;�\  : h bset modifiedLinks to (every link of openDocuments's item x whose status contains link out of date)   ; �<< � s e t   m o d i f i e d L i n k s   t o   ( e v e r y   l i n k   o f   o p e n D o c u m e n t s ' s   i t e m   x   w h o s e   s t a t u s   c o n t a i n s   l i n k   o u t   o f   d a t e )9 =>= l  @ @�[?@�[  ? 5 /set failedLinks to missingLinks & modifiedLinks   @ �AA ^ s e t   f a i l e d L i n k s   t o   m i s s i n g L i n k s   &   m o d i f i e d L i n k s> BCB Z   @ UDE�Z�YD >  @ GFGF l  @ EH�X�WH I  @ E�VI�U
�V .corecnte****       ****I o   @ A�T�T 0 textoverflows textOverflows�U  �X  �W  G m   E F�S�S  E r   J QJKJ m   J K�R
�R boovfalsK o      �Q�Q 0 textcheckbool textCheckBool�Z  �Y  C LML Z   V �NO�P�ON =  V ]PQP o   V [�N�N 0 textcheckbool textCheckBoolQ m   [ \�M
�M boovfalsO I  ` ��LRS
�L .sysodlogaskr        TEXTR b   ` |TUT b   ` xVWV b   ` vXYX b   ` rZ[Z b   ` p\]\ b   ` g^_^ b   ` e`a` b   ` cbcb m   ` add �ee 6 D o k u m e n t   h a t   T e x t � b e r h a n g !  c o   a b�K
�K 
ret a m   c dff �gg R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -_ o   e f�J
�J 
ret ] l  g oh�I�Hh n   g oiji 1   k o�G
�G 
pnamj n  g kklk 4   h k�Fm
�F 
cobjm o   i j�E�E 0 x  l o   g h�D�D 0 opendocuments openDocuments�I  �H  [ o   p q�C
�C 
ret Y m   r unn �oo R - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -W o   v w�B
�B 
ret U m   x {pp �qq " h a t   T e x t � b e r h a n g .S �Ars
�A 
btnsr J    �tt uvu m    �ww �xx , G e h e   z u   e r s t e r   S t e l l e !v yzy m   � �{{ �|| 
 S t o p !z }�@} m   � �~~ �  W e i t e r !�@  s �?��>
�? 
dflt� m   � ��� ���  W e i t e r !�>  �P  �O  M ��=� Q   � ����<� Z   � �����;� =  � ���� n   � ���� 1   � ��:
�: 
bhit� 1   � ��9
�9 
rslt� m   � ��� ��� 
 S t o p !� r   � ���� m   � ��8
�8 boovfals� o      �7�7 0 stopbool stopBool� ��� =  � ���� n   � ���� 1   � ��6
�6 
bhit� 1   � ��5
�5 
rslt� m   � ��� ��� , G e h e   z u   e r s t e r   S t e l l e !� ��� k   � ��� ��� n  � ���� I   � ��4�3�2�4 $0 textoverflowgoer textOverflowGoer�3  �2  �  f   � �� ��� n  � ���� I   � ��1��0�1 0 zoomthepages zoomThePages� ��/� o   � ��.�. 0 activewindow activeWindow�/  �0  �  f   � �� ��-� r   � ���� m   � ��,
�, boovfals� o      �+�+ 0 stopbool stopBool�-  � ��� =  � ���� n   � ���� 1   � ��*
�* 
bhit� 1   � ��)
�) 
rslt� m   � ��� ���  W e i t e r !� ��(� k   � ��� ��� r   � ���� m   � ��'
�' boovfals� o      �&�& 0 stopbool stopBool� ��%� r   � ���� m   � ��$
�$ boovtrue� o      �#�# 0 textcheckbool textCheckBool�%  �(  �;  � R      �"�!� 
�" .ascrerr ****      � ****�!  �   �<  �=  �m 0 x   m    ��  I   ���
� .corecnte****       ****� o    �� 0 opendocuments openDocuments�  �l   ��� l ����  �  �  �  � 5     ���
� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
� kfrmID  � ��� l     ����  �  �  � ��� l     ����  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ����  �  �  � ��� i   3 6��� I      ���� (0 inputrangesplitter inputRangeSplitter� ��� o      �� 0 
inputrange 
inputRange�  �  � k     �� ��� l    ���� r     ��� n    ��� 1    �

�
 
txdl� 1     �	
�	 
ascr� o      �� 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� r    ��� J    	�� ��� m    �� ���  ,�  � n     ��� 1   
 �
� 
txdl� 1   	 
�
� 
ascr� ��� r    ��� n    ��� 2   �
� 
citm� o    �� 0 
inputrange 
inputRange� o      �� 0 splittedrange splittedRange� ��� l   ���� r    ��� o    �� 0 olddelimiters oldDelimiters� n     ��� 1    � 
�  
txdl� 1    ��
�� 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ���� L    �� o    ���� 0 splittedrange splittedRange��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   7 :   I      ������ >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic �� o      ���� 0 
inputrange 
inputRange��  ��   k     t  l    	 r     

 n     1    ��
�� 
txdl 1     ��
�� 
ascr o      ���� 0 olddelimiters oldDelimiters * $ always preserve original delimiters   	 � H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s  r     J    	 �� m     �  -��   n      1   
 ��
�� 
txdl 1   	 
��
�� 
ascr  l   ��������  ��  ��    r     n      2   ��
�� 
citm  o    ���� 0 
inputrange 
inputRange o      ���� (0 splittedrangemagic splittedRangeMagic !"! l   ��������  ��  ��  " #$# Z    k%&����% >   #'(' l   )����) c    *+* n   ,-, 4    ��.
�� 
cobj. m    ���� - o    ���� (0 splittedrangemagic splittedRangeMagic+ m    ��
�� 
long��  ��  ( l   "/����/ [    "010 l    2����2 c     343 n   565 4    ��7
�� 
cobj7 m    ���� 6 o    ���� (0 splittedrangemagic splittedRangeMagic4 m    ��
�� 
long��  ��  1 m     !���� ��  ��  & k   & g88 9:9 r   & 0;<; [   & .=>= l  & ,?����? c   & ,@A@ n  & *BCB 4   ' *��D
�� 
cobjD m   ( )���� C o   & '���� (0 splittedrangemagic splittedRangeMagicA m   * +��
�� 
long��  ��  > m   , -���� < o      ����  0 incrementvalue incrementValue: EFE r   1 ;GHG J   1 9II J��J l  1 7K����K c   1 7LML n  1 5NON 4   2 5��P
�� 
cobjP m   3 4���� O o   1 2���� (0 splittedrangemagic splittedRangeMagicM m   5 6��
�� 
long��  ��  ��  H o      ���� 00 splittedrangemagicloop splittedRangeMagicLoopF QRQ l  < <��������  ��  ��  R STS l  < <��UV��  U � �repeat with x from (splittedRangeMagic's item 1 as integer) to (splittedRangeMagic's item 2 as integer) -- this iterates through   V �WW  r e p e a t   w i t h   x   f r o m   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   1   a s   i n t e g e r )   t o   ( s p l i t t e d R a n g e M a g i c ' s   i t e m   2   a s   i n t e g e r )   - -   t h i s   i t e r a t e s   t h r o u g hT XYX l  < <��Z[��  Z R L	set splittedRangeMagicLoop to splittedRangeMagicLoop & (incrementValue + 1)   [ �\\ � 	 s e t   s p l i t t e d R a n g e M a g i c L o o p   t o   s p l i t t e d R a n g e M a g i c L o o p   &   ( i n c r e m e n t V a l u e   +   1 )Y ]^] l  < <��_`��  _  
end repeat   ` �aa  e n d   r e p e a t^ bcb l  < <��������  ��  ��  c ded r   < Kfgf \   < Ihih l  < Bj����j c   < Bklk n  < @mnm 4   = @��o
�� 
cobjo m   > ?���� n o   < =���� (0 splittedrangemagic splittedRangeMagicl m   @ A��
�� 
long��  ��  i l  B Hp����p c   B Hqrq n  B Fsts 4   C F��u
�� 
cobju m   D E���� t o   B C���� (0 splittedrangemagic splittedRangeMagicr m   F G��
�� 
long��  ��  g o      ���� 0 repeatnumber repeatNumbere vwv U   L cxyx l  S ^z{|z k   S ^}} ~~ r   S X��� b   S V��� o   S T���� 00 splittedrangemagicloop splittedRangeMagicLoop� o   T U����  0 incrementvalue incrementValue� o      ���� 00 splittedrangemagicloop splittedRangeMagicLoop ���� r   Y ^��� [   Y \��� o   Y Z����  0 incrementvalue incrementValue� m   Z [���� � o      ����  0 incrementvalue incrementValue��  {   this iterates through   | ��� ,   t h i s   i t e r a t e s   t h r o u g hy o   O P���� 0 repeatnumber repeatNumberw ��� l  d d��������  ��  ��  � ��� l  d d��������  ��  ��  � ���� r   d g��� o   d e���� 00 splittedrangemagicloop splittedRangeMagicLoop� o      ���� (0 splittedrangemagic splittedRangeMagic��  ��  ��  $ ��� l  l l��������  ��  ��  � ��� l  l q���� r   l q��� o   l m���� 0 olddelimiters oldDelimiters� n     ��� 1   n p��
�� 
txdl� 1   m n��
�� 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ���� L   r t�� o   r s���� (0 splittedrangemagic splittedRangeMagic��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   ; >��� I      ������� 40 inputrangesplitterfromto inputRangeSplitterFromTo� ���� o      ���� 0 
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
inputRange� o      �� 0 splittedrange splittedRange� ��� l   ���� r    ��� o    �~�~ 0 olddelimiters oldDelimiters� n     ��� 1    �}
�} 
txdl� 1    �|
�| 
ascr� ) # always restore original delimiters   � ��� F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r s� ��{� L    �� o    �z�z 0 splittedrange splittedRange�{  � ��� l     �y�x�w�y  �x  �w  � ��� l     �v���v  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     �u�t�s�u  �t  �s  � ��� i   ? B��� I      �r��q�r 0 magicsplitter MagicSplitter� ��p� o      �o�o 0 splittedrange splittedRange�p  �q  � k     h�� ��� l    ���� r     ��� n    ��� 1    �n
�n 
txdl� 1     �m
�m 
ascr� o      �l�l 0 olddelimiters oldDelimiters� * $ always preserve original delimiters   � ��� H   a l w a y s   p r e s e r v e   o r i g i n a l   d e l i m i t e r s� ��� l   �k�j�i�k  �j  �i  � ��� r    ��� J    	�� ��h� m    �� ���  -�h  � n     ��� 1   
 �g
�g 
txdl� 1   	 
�f
�f 
ascr� ��� r    ��� J    �e�e  � o      �d�d 0 splittedmagic splittedMagic� � � l   �c�b�a�c  �b  �a     l   �`�`   6 0set splittedMagic to text items of splittedRange    � ` s e t   s p l i t t e d M a g i c   t o   t e x t   i t e m s   o f   s p l i t t e d R a n g e  l   �_�^�]�_  �^  �]   	 Y    _
�\�[
 l  ! Z k   ! Z  Z   ! X�Z H   ! ( E   ! ' n  ! % 4   " %�Y
�Y 
cobj o   # $�X�X 0 x   o   ! "�W�W 0 splittedrange splittedRange m   % & �  - k   + 5   r   + 3!"! b   + 1#$# o   + ,�V�V 0 splittedmagic splittedMagic$ n  , 0%&% 4   - 0�U'
�U 
cobj' o   . /�T�T 0 x  & o   , -�S�S 0 splittedrange splittedRange" o      �R�R 0 splittedmagic splittedMagic  (�Q( l  4 4�P)*�P  ) 8 2set splittedRange's item x to end of splittedMagic   * �++ d s e t   s p l i t t e d R a n g e ' s   i t e m   x   t o   e n d   o f   s p l i t t e d M a g i c�Q   ,-, E   8 >./. n  8 <010 4   9 <�O2
�O 
cobj2 o   : ;�N�N 0 x  1 o   8 9�M�M 0 splittedrange splittedRange/ m   < =33 �44  -- 5�L5 k   A T66 787 I   A J�K9�J�K >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic9 :�I: n  B F;<; 4   C F�H=
�H 
cobj= o   D E�G�G 0 x  < o   B C�F�F 0 splittedrange splittedRange�I  �J  8 >?> l  K K�E@A�E  @  set xxx to splittedRange   A �BB 0 s e t   x x x   t o   s p l i t t e d R a n g e? CDC r   K REFE b   K PGHG o   K L�D�D 0 splittedmagic splittedMagicH n  L OIJI 2  M O�C
�C 
cobjJ o   L M�B�B (0 splittedrangemagic splittedRangeMagicF o      �A�A 0 splittedmagic splittedMagicD K�@K l  S S�?LM�?  L 7 1set splittedRange's items to end of splittedMagic   M �NN b s e t   s p l i t t e d R a n g e ' s   i t e m s   t o   e n d   o f   s p l i t t e d M a g i c�@  �L  �Z   O�>O l  Y Y�=�<�;�=  �<  �;  �>     this iterates through    �PP ,   t h i s   i t e r a t e s   t h r o u g h�\ 0 x   m    �:�:  I   �9Q�8
�9 .corecnte****       ****Q o    �7�7 0 splittedrange splittedRange�8  �[  	 RSR l  ` `�6�5�4�6  �5  �4  S TUT l  ` eVWXV r   ` eYZY o   ` a�3�3 0 olddelimiters oldDelimitersZ n     [\[ 1   b d�2
�2 
txdl\ 1   a b�1
�1 
ascrW ) # always restore original delimiters   X �]] F   a l w a y s   r e s t o r e   o r i g i n a l   d e l i m i t e r sU ^�0^ L   f h__ o   f g�/�/ 0 splittedmagic splittedMagic�0  � `a` l     �.�-�,�.  �-  �,  a bcb l     �+de�+  d z t �������������������������������������������������������������������������������������������������������������������   e �ff �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "c ghg l     �*�)�(�*  �)  �(  h iji i   C Fklk I      �'�&�%�' $0 textoverflowgoer textOverflowGoer�&  �%  l k     2mm non O     0pqp k    /rr sts l   �$�#�"�$  �#  �"  t u�!u Z    /vw� xv >   yzy l   {��{ I   �|�
� .corecnte****       ****| o    	�� 0 textoverflows textOverflows�  �  �  z m    ��  w k    '}} ~~ r    ��� n    ��� 1    �
� 
pnam� n    ��� 1    �
� 
PaPa� n    ��� 4   ��
� 
cobj� m    �� � o    �� 0 textoverflows textOverflows� o      �� 0 
activepage 
activePage ��� r    '��� n    #��� 4     #��
� 
page� o   ! "�� 0 
activepage 
activePage� n     ��� 1     �
� 
pare� o    �� 0 activewindow activeWindow� n      ��� 1   $ &�
� 
pacp� o   # $�� 0 activewindow activeWindow�  �   x I  * /���
� .sysobeepnull��� ��� long� l  * +��
�	� m   * +�� �
  �	  �  �!  q 5     ���
� 
capp� m    �� ��� $ c o m . a d o b e . I n D e s i g n
� kfrmID  o ��� l  1 1����  �  �  �  j ��� l     �� ���  �   ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   G J��� I      ������� 0 zoomthepages zoomThePages� ���� o      ���� 0 	thewindow 	theWindow��  ��  � O     4��� k    3�� ��� l   ��������  ��  ��  � ��� O    1��� k    0�� ��� I   �����
�� .K2  seltnull���     ****� m    ��
�� senmnada��  � ��� l   ���� I   �����
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
�� kfrmID  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� i   K N��� I      �������� 0 displaytheend displayTheEnd��  ��  � I    ����
�� .sysodlogaskr        TEXT� m     �� ��� ^ D e r   E x p o r t   w i r d   j e t z t   i m   H i n t e r g r u n d   a u s g e f � h r t� ����
�� 
btns� m    �� ���  O K� ����
�� 
dflt� m    �� ���  O K� �����
�� 
givu� m    ���� ��  � ��� l     ��������  ��  ��  � ��� l     ������  � z t �������������������������������������������������������������������������������������������������������������������   � ��� �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "� ��� l     ��������  ��  ��  � ��� l     ������  � L Fmy displayNotificationLong("Title text", "Subtitle text", "Body text")   � ��� � m y   d i s p l a y N o t i f i c a t i o n L o n g ( " T i t l e   t e x t " ,   " S u b t i t l e   t e x t " ,   " B o d y   t e x t " )� ��� i   O R��� I      ������� 20 displaynotificationlong displayNotificationLong� ��� o      ���� 0 	titletext 	titleText� ��� o      ���� 0 subtitletext subtitleText� 	 ��	  o      ���� 0 bodytext bodyText��  ��  � k     		 			 l    					 I    	��		
�� .sysonotfnull��� ��� TEXT	 o     ���� 0 bodytext bodyText	 ��			

�� 
appr		 o    ���� 0 	titletext 	titleText	
 ��	��
�� 
subt	 o    ���� 0 subtitletext subtitleText��  	  sound name "default"   	 �		 ( s o u n d   n a m e   " d e f a u l t "	 	��	 l  
 
��		��  	  	delay 0.5   	 �		  d e l a y   0 . 5��  � 			 l     ��������  ��  ��  	 			 l     ��		��  	 z t �������������������������������������������������������������������������������������������������������������������   	 �		 �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	 			 l     ��������  ��  ��  	 			 l     ��		��  	 < 6my displayNotificationShort("Title text", "Body text")   	 �		 l m y   d i s p l a y N o t i f i c a t i o n S h o r t ( " T i t l e   t e x t " ,   " B o d y   t e x t " )	 		 	 i   S V	!	"	! I      ��	#���� 40 displaynotificationshort displayNotificationShort	# 	$	%	$ o      ���� 0 	titletext 	titleText	% 	&��	& o      ���� 0 bodytext bodyText��  ��  	" k     		'	' 	(	)	( l    	*	+	,	* I    ��	-	.
�� .sysonotfnull��� ��� TEXT	- o     ���� 0 bodytext bodyText	. ��	/��
�� 
appr	/ o    ���� 0 	titletext 	titleText��  	+  sound name "default"   	, �	0	0 ( s o u n d   n a m e   " d e f a u l t "	) 	1��	1 l   ��	2	3��  	2  	delay 0.5   	3 �	4	4  d e l a y   0 . 5��  	  	5	6	5 l     ��������  ��  ��  	6 	7	8	7 l     ��	9	:��  	9 z t �������������������������������������������������������������������������������������������������������������������   	: �	;	; �   " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " " "	8 	<	=	< l     ��������  ��  ��  	= 	>��	> i   W Z	?	@	? I      �������� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler��  ��  	@ O     	A	B	A k    	C	C 	D	E	D l   ��	F	G��  	F E ?"evt" is the event passed to this script by the event listener.   	G �	H	H ~ " e v t "   i s   t h e   e v e n t   p a s s e d   t o   t h i s   s c r i p t   b y   t h e   e v e n t   l i s t e n e r .	E 	I	J	I r    	K	L	K o    	���� 0 evt  	L o      ���� 0 myevent myEvent	J 	M	N	M l   ��	O	P��  	O O Idisplay dialog ("This event is the " & event type of myEvent & " event.")   	P �	Q	Q � d i s p l a y   d i a l o g   ( " T h i s   e v e n t   i s   t h e   "   &   e v e n t   t y p e   o f   m y E v e n t   &   "   e v e n t . " )	N 	R	S	R r    	T	U	T b    	V	W	V m    	X	X �	Y	Y   E x p o r t   b e e n d e t :  	W n    	Z	[	Z 1    ��
�� 
pnam	[ n    	\	]	\ 1    ��
�� 
Xtrg	] o    ���� 0 myevent myEvent	U o      ���� 0 mystring myString	S 	^��	^ l   	_	`	a	_ I   ��	b��
�� .sysonotfnull��� ��� TEXT	b o    ���� 0 mystring myString��  	`  with title "Body text"   	a �	c	c , w i t h   t i t l e   " B o d y   t e x t "��  	B 5     ��	d��
�� 
capp	d m    	e	e �	f	f $ c o m . a d o b e . I n D e s i g n
�� kfrmID  ��       ��	g	h	i �����	j	k	l	m	n	o	p	q	r	s	t	u	v	w	x	y	z	{	|��  	g ��~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�  0 functionchoice functionChoice�~ 0 chosenpreset chosenPreset�} 0 	pagerange 	pageRange�| 0 linkcheckbool linkCheckBool�{ 0 textcheckbool textCheckBool�z "0 functionchooser functionChooser�y .0 pdfexportersinglepage pdfExporterSinglepage�x ,0 pdfexportermultipage pdfExporterMultipage�w 0 idmlexporter idmlExporter�v ,0 fileextensionremover fileExtensionRemover�u 0 
pageranger 
pageRanger�t 0 	linkcheck 	linkCheck�s &0 textoverflowcheck textOverflowCheck�r (0 inputrangesplitter inputRangeSplitter�q >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�p 40 inputrangesplitterfromto inputRangeSplitterFromTo�o 0 magicsplitter MagicSplitter�n $0 textoverflowgoer textOverflowGoer�m 0 zoomthepages zoomThePages�l 0 displaytheend displayTheEnd�k 20 displaynotificationlong displayNotificationLong�j 40 displaynotificationshort displayNotificationShort�i D0  myafterexportnotificationhandler  myAfterExportNotificationHandler
�h .aevtoappnull  �   � ****	h �g	}�g 	}   �	i �f	~�f 	~   �
�� boovfals
�� boovfals	j �e�d�c		��b�e "0 functionchooser functionChooser�d  �c  	  	� #&�a�`,�_/�^�]=�\J�[Y�Z
�a 
inSL
�` 
prmp
�_ 
okbt�^ 
�] .gtqpchltns    @   @ ns  �\ .0 pdfexportersinglepage pdfExporterSinglepage�[ ,0 pdfexportermultipage pdfExporterMultipage�Z 0 idmlexporter idmlExporter�b i���mv�b   ����� 	Ec   Ob   �kv  )b   k+ Y 5b   �kv  )b   k+ Y b   �kv  )b   k+ Y hOP	k �Ym�X�W	�	��V�Y .0 pdfexportersinglepage pdfExporterSinglepage�X �U	��U 	�  �T�T  0 functionchoice functionChoice�W  	� �S�R�Q�P�O�N�M�L�S  0 functionchoice functionChoice�R 0 
buttonname 
buttonName�Q 0 
inputrange 
inputRange�P 0 x  �O 0 docname docName�N 0 
newdocname 
newdocName�M 0 filepath filePath�L 0 exportpreset exportPreset	� K�Kz�J�I�H�G�F�E��D�C�B�A��@�?�>��=��<�;���:��9�8�7��6��5�4�3�2�1o�0�/�.�-�,�+�*�)�(�'�&�%JP�$�#�"�!� ��z�����	����������
�K 
capp
�J kfrmID  
�I 
pacd�H 0 opendocuments openDocuments�G 0 	linkcheck 	linkCheck�F &0 textoverflowcheck textOverflowCheck
�E 
bool
�D 
ctxt�C ,0 pdfpresetsoncomputer pdfPresetsOnComputer
�B 
inSL
�A 
prmp
�@ 
okbt�? 
�> .gtqpchltns    @   @ ns  
�= 
ret 
�< 
dtxt
�; 
btns
�: 
dflt
�9 .sysodlogaskr        TEXT
�8 
rslt
�7 
bhit
�6 
ttxt
�5 
page
�4 
pnam�3 (0 inputrangesplitter inputRangeSplitter�2 0 splittedrange splittedRange�1 0 magicsplitter MagicSplitter�0 0 splittedmagic splittedMagic
�/ .corecnte****       ****
�. 
cobj�- 0 
pageranger 
pageRanger�,  0 activedocument activeDocument�+ ,0 fileextensionremover fileExtensionRemover
�* 
path
�) 
TEXT
�( 
PFst
�' 
exft
�& eXftt_PD
�% 
kfil
�$ 
usng
�# 
imot�" 
�! .K2  exAscBKT        docu
�  
DFpf� (0 preservedpagerange preservedPageRange
� 
pcty� 20 displaynotificationlong displayNotificationLong
� 
EvLi	�  
� 
pEvT
� .CoRedoexbool        obj 
� 
prdt
� 
pHnd� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler� 
� .corecrel****      � null�V�)���0 *�,E�UO)j+ O)j+ Ob  e 	 b  e �&���%�&E�O��b  ���� Ec  Ob  f�a _ %a %a b  a a a lva a � O_ a ,a   _ a ,E�Y )�a �0 *�,a  -a !,E�UO�Ec  O)�k+ "O)_ #k+ $O)�a %�0 � �k_ &j 'kh )_ &a (�/k+ )O_ *a !,E�O)�k+ +E�O_ *a ,,a -&E�O*a .b  a -&/E�O_ *a /a 0a 1��%a 2%_ &a (�/%a 3%a 4�a 5fa 6 7OP[OY��O*a 8, _ 9*a :,FUOPUOb  a ;kv h)a <b  a (k/a -&a =�%m+ >O)�a ?�0 >*a @-a A[a B,\Za C81j D !a @a Ea Ba Fa G)a H,a Il JY hUY hY hY h	l ����	�	��� ,0 pdfexportermultipage pdfExporterMultipage� �	�� 	�  ��  0 functionchoice functionChoice�  	� �����
�	��  0 functionchoice functionChoice� 0 
buttonname 
buttonName� 0 x  � 0 docname docName�
 0 
newdocname 
newdocName�	 0 filepath filePath� 0 exportpreset exportPreset	� D���������� ����
��������������%��.�����������������������|�����������������������������	���������������� 0 	linkcheck 	linkCheck� &0 textoverflowcheck textOverflowCheck
� 
bool
� 
ctxt� ,0 pdfpresetsoncomputer pdfPresetsOnComputer
� 
inSL
� 
prmp
�  
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
�� .corecrel****      � null�)j+  O)j+ Ob  e 	 b  e �&��%�&E�O��b  ���� Ec  Ob  f M��%�%�b  a a a lva a � O_ a ,a   _ a ,Ec  Y a Ec  Y hO)b  k+ O)a a a 0 � �k_ j  kh _ a !�/a ",E�O)�k+ #E�O_ a !�/a $,a %&E�O*a &b  a %&/E�Ob  a 'kv  +_ a !�/a (a )a *��%a +%a ,�a -fa . /Y (_ a !�/a (a )a *��%a 0%a ,�a -fa . /OP[OY�_O*a 1, _ 2*a 3,FUOPUOb  a 4kv v)a 5b  a !k/a %&_ j  a %&a 6%m+ 7O)a a 8a 0 >*a 9-a :[a ;,\Za <81j = !a 9a >a ;a ?a @)a A,a Bl CY hUY hOPY h	m ��.����	�	����� 0 idmlexporter idmlExporter�� ��	��� 	�  ����  0 functionchoice functionChoice��  	� ������������  0 functionchoice functionChoice�� 0 x  �� 0 docname docName�� 0 
newdocname 
newdocName�� 0 filepath filePath	� "��������������������������������������������	����������������� 0 	linkcheck 	linkCheck�� &0 textoverflowcheck textOverflowCheck
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
E�O��/�,�&E�O��/��藍%a %a  OP[OY��UO)a a �j �&a %m+ O)�a �0 >*a -a [a ,\Za 81j  !a a a a a )a  ,a l !Y hUY h	n �������	�	����� ,0 fileextensionremover fileExtensionRemover�� ��	��� 	�  ���� 0 docname docName��  	� ���������� 0 docname docName�� 0 olddelimiters oldDelimiters�� 0 	pathitems 	pathItems�� 0 
newdocname 
newdocName	� 
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
TEXT�� F��,E�O�kv��,FO��&�-E�O�j � �[�\[Zk\Z�2E�Y ��k/E�O��&E�O���,FO�	o ��'����	�	����� 0 
pageranger 
pageRanger�� ��	��� 	�  ���� 0 	pagerange 	pageRange��  	� ���� 0 	pagerange 	pageRange	� ��<��������
�� 
capp
�� kfrmID  
�� 
DFpf
�� 
TEXT
�� 
pcty�� )���0 *�, 	��&*�,FUU	p ��Q����	�	����� 0 	linkcheck 	linkCheck��  ��  	� ���������� 0 x  �� 0 missinglinks missingLinks�� 0 modifiedlinks modifiedLinks�� 0 failedlinks failedLinks	� ���������������	������������������������~�}�|���{�z
�� 
capp
�� kfrmID  �� 0 stopbool stopBool�� 0 opendocuments openDocuments
�� .corecnte****       ****
�� 
cobj
�� 
clnk
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
dflt� 
�~ .sysodlogaskr        TEXT
�} 
rslt
�| 
bhit�{  �z  �� �)���0 �eE�OeEc  O �k�j kh  ��/�-�[�,\Z�@1E�O��/�-�[�,\Z�@1E�O��%E�O�j j fEc  Y hOb  f  6��%�%�%��/�,%�%a %�%a %a a a lva a a  Y hO 6_ a ,a   fE�Y _ a ,a   eE�OeEc  Y hW X  h[OY�=OPU	q �y��x�w	�	��v�y &0 textoverflowcheck textOverflowCheck�x  �w  	� �u�u 0 x  	� %�t��s�r�q�p�o�n	��m�l�k�jd�if�hnp�gw{~�f��e�d�c�b���a�`�_��^�]
�t 
capp
�s kfrmID  �r 0 stopbool stopBool�q 0 opendocuments openDocuments
�p .corecnte****       ****
�o 
cobj
�n 
txtf
�m 
OVRF
�l 
pilr
�k 
pvis�j 0 textoverflows textOverflows
�i 
ret 
�h 
pnam
�g 
btns
�f 
dflt�e 
�d .sysodlogaskr        TEXT
�c 
rslt
�b 
bhit�a $0 textoverflowgoer textOverflowGoer�` 0 activewindow activeWindow�_ 0 zoomthepages zoomThePages�^  �]  �v)���0 �eE�OeEc  O �k�j kh  ��/�-�[[�,\Ze8\[�,�,\Ze8A1E�O�j j fEc  Y hOb  f  ;��%�%�%��/a ,%�%a %�%a %a a a a mva a a  Y hO Y_ a ,a   fE�Y B_ a ,a   )j+ O)_  k+ !OfE�Y _ a ,a "  fE�OeEc  Y hW X # $h[OY�!OPU	r �\��[�Z	�	��Y�\ (0 inputrangesplitter inputRangeSplitter�[ �X	��X 	�  �W�W 0 
inputrange 
inputRange�Z  	� �V�U�V 0 
inputrange 
inputRange�U 0 olddelimiters oldDelimiters	� �T�S��R�Q
�T 
ascr
�S 
txdl
�R 
citm�Q 0 splittedrange splittedRange�Y ��,E�O�kv��,FO��-E�O���,FO�	s �P�O�N	�	��M�P >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�O �L	��L 	�  �K�K 0 
inputrange 
inputRange�N  	� �J�I�H�G�F�J 0 
inputrange 
inputRange�I 0 olddelimiters oldDelimiters�H  0 incrementvalue incrementValue�G 00 splittedrangemagicloop splittedRangeMagicLoop�F 0 repeatnumber repeatNumber	� �E�D�C�B�A�@
�E 
ascr
�D 
txdl
�C 
citm�B (0 splittedrangemagic splittedRangeMagic
�A 
cobj
�@ 
long�M u��,E�O�kv��,FO��-E�O��l/�&��k/�&k F��k/�&kE�O��k/�&kvE�O��l/�&��k/�&E�O �kh��%E�O�kE�[OY��O�E�Y hO���,FO�	t �?��>�=	�	��<�? 40 inputrangesplitterfromto inputRangeSplitterFromTo�> �;	��; 	�  �:�: 0 
inputrange 
inputRange�=  	� �9�8�9 0 
inputrange 
inputRange�8 0 olddelimiters oldDelimiters	� �7�6��5�4
�7 
ascr
�6 
txdl
�5 
citm�4 0 splittedrange splittedRange�< ��,E�O�kv��,FO��-E�O���,FO�	u �3��2�1	�	��0�3 0 magicsplitter MagicSplitter�2 �/	��/ 	�  �.�. 0 splittedrange splittedRange�1  	� �-�,�+�- 0 splittedrange splittedRange�, 0 olddelimiters oldDelimiters�+ 0 x  	� 
�*�)��(�'�&3�%�$
�* 
ascr
�) 
txdl�( 0 splittedmagic splittedMagic
�' .corecnte****       ****
�& 
cobj�% >0 inputrangesplitterfromtomagic inputRangeSplitterFromToMagic�$ (0 splittedrangemagic splittedRangeMagic�0 i��,E�O�kv��,FOjvE�O Kk�j kh ��/� à�/%E�OPY "��/� *��/k+ O���-%E�OPY hOP[OY��O���,FO�	v �#l�"�!	�	�� �# $0 textoverflowgoer textOverflowGoer�"  �!  	� �� 0 
activepage 
activePage	� �������������
� 
capp
� kfrmID  � 0 textoverflows textOverflows
� .corecnte****       ****
� 
cobj
� 
PaPa
� 
pnam� 0 activewindow activeWindow
� 
pare
� 
page
� 
pacp
� .sysobeepnull��� ��� long�  3)���0 )�j j ��k/�,�,E�O��,�/��,FY mj UOP	w ����	�	��� 0 zoomthepages zoomThePages� �	�� 	�  �� 0 	thewindow 	theWindow�  	� �� 0 	thewindow 	theWindow	� ���
�	��������� 
� 
capp
�
 kfrmID  
�	 senmnada
� .K2  seltnull���     ****
� 
givn
� zopezftp
� .K2  zmtonull���     Lwin� 0 textoverflows textOverflows
� .corecnte****       ****
� 
cobj� 0 activewindow activeWindow
�  
sele� 5)���0 -� &�j O*��l O�j 	j ��k/��,FY hUOPU	x �������	�	����� 0 displaytheend displayTheEnd��  ��  	�  	� �������������
�� 
btns
�� 
dflt
�� 
givu�� 
�� .sysodlogaskr        TEXT�� ������k� 	y �������	�	����� 20 displaynotificationlong displayNotificationLong�� ��	��� 	�  �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText��  	� �������� 0 	titletext 	titleText�� 0 subtitletext subtitleText�� 0 bodytext bodyText	� ��������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� ���� OP	z ��	"����	�	����� 40 displaynotificationshort displayNotificationShort�� ��	��� 	�  ������ 0 	titletext 	titleText�� 0 bodytext bodyText��  	� ������ 0 	titletext 	titleText�� 0 bodytext bodyText	� ����
�� 
appr
�� .sysonotfnull��� ��� TEXT�� 
��l OP	{ ��	@����	�	����� D0  myafterexportnotificationhandler  myAfterExportNotificationHandler��  ��  	� �������� 0 evt  �� 0 myevent myEvent�� 0 mystring myString	� ��	e��	X������
�� 
capp
�� kfrmID  
�� 
Xtrg
�� 
pnam
�� .sysonotfnull��� ��� TEXT�� )���0 �E�O��,�,%E�O�j U	| ��	�����	�	���
�� .aevtoappnull  �   � ****	� k     N	�	�  �����  ��  ��  	�  	� ��������������������	��������� �����
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
pnam�� ,0 pdfpresetsoncomputer pdfPresetsOnComputer�� "0 functionchooser functionChooser�� O)���0 G*�,E�O*�,E�O*�, *�,E�UO*�-�[�,\Ze81E�O*�-�,�[�,\Za @C1E` O)j+ OPU ascr  ��ޭ