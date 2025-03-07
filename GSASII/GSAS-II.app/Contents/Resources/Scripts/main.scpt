FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��   GSAS-II AppleScript by B. Toby (brian.toby@anl.gov)
     It can launch GSAS-II by double clicking or by dropping a data file
     or folder over the app.
     It runs GSAS-II in a terminal window.
	 
	 This is intended for use with a conda-based GSAS-II distribution where
	 Python is linked from a file (./Contents/MacOS/GSAS-II) inside the current app, 
	 and where the GSAS-II .py files are located in the same directory as this
	 script. This can be renamed but cannot be moved.
     � 	 	�       G S A S - I I   A p p l e S c r i p t   b y   B .   T o b y   ( b r i a n . t o b y @ a n l . g o v ) 
           I t   c a n   l a u n c h   G S A S - I I   b y   d o u b l e   c l i c k i n g   o r   b y   d r o p p i n g   a   d a t a   f i l e 
           o r   f o l d e r   o v e r   t h e   a p p . 
           I t   r u n s   G S A S - I I   i n   a   t e r m i n a l   w i n d o w . 
 	   
 	   T h i s   i s   i n t e n d e d   f o r   u s e   w i t h   a   c o n d a - b a s e d   G S A S - I I   d i s t r i b u t i o n   w h e r e 
 	   P y t h o n   i s   l i n k e d   f r o m   a   f i l e   ( . / C o n t e n t s / M a c O S / G S A S - I I )   i n s i d e   t h e   c u r r e n t   a p p ,   
 	   a n d   w h e r e   t h e   G S A S - I I   . p y   f i l e s   a r e   l o c a t e d   i n   t h e   s a m e   d i r e c t o r y   a s   t h i s 
 	   s c r i p t .   T h i s   c a n   b e   r e n a m e d   b u t   c a n n o t   b e   m o v e d . 
   
  
 l     ��������  ��  ��        i         I      �������� &0 getpythonlocation GetPythonLocation��  ��    k            l      ��  ��    + % find python in this script's bundle      �   J   f i n d   p y t h o n   i n   t h i s   s c r i p t ' s   b u n d l e        O         r        l    ����  n        1   	 ��
�� 
psxp  l   	 ����  I   	��  ��
�� .earsffdralis        afdr    f    ��  ��  ��  ��  ��    o      ���� 0 
scriptpath    m      ! !�                                                                                  MACS  alis    8  BHT20 HD                       BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    B H T 2 0   H D  &System/Library/CoreServices/Finder.app  / ��     " # " r     $ % $ l    &���� & b     ' ( ' o    ���� 0 
scriptpath   ( m     ) ) � * * , C o n t e n t s / M a c O S / G S A S - I I��  ��   % o      ���� 
0 python   #  + , + I    �� -���� "0 testfilepresent TestFilePresent -  .�� . o    ���� 
0 python  ��  ��   ,  /�� / L     0 0 o    ���� 
0 python  ��     1 2 1 l     ��������  ��  ��   2  3 4 3 i     5 6 5 I      �������� 0 getg2location GetG2Location��  ��   6 k     " 7 7  8 9 8 l      �� : ;��   : F @ find the GSASII.py script in the same directory as this script     ; � < < �   f i n d   t h e   G S A S I I . p y   s c r i p t   i n   t h e   s a m e   d i r e c t o r y   a s   t h i s   s c r i p t   9  = > = O      ? @ ? r     A B A l    C���� C n     D E D 1    ��
�� 
psxp E l    F���� F c     G H G n     I J I m   	 ��
�� 
ctnr J l   	 K���� K I   	�� L��
�� .earsffdralis        afdr L  f    ��  ��  ��   H m    ��
�� 
alis��  ��  ��  ��   B o      ���� 0 	scriptdir   @ m      M M�                                                                                  MACS  alis    8  BHT20 HD                       BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    B H T 2 0   H D  &System/Library/CoreServices/Finder.app  / ��   >  N O N r     P Q P l    R���� R b     S T S o    ���� 0 	scriptdir   T m     U U � V V  G S A S - I I . p y��  ��   Q o      ���� 0 g2script   O  W X W I    �� Y���� "0 testfilepresent TestFilePresent Y  Z�� Z o    ���� 0 g2script  ��  ��   X  [�� [ L     " \ \ o     !���� 0 g2script  ��   4  ] ^ ] l     ��������  ��  ��   ^  _ ` _ i     a b a I      �� c���� "0 testfilepresent TestFilePresent c  d�� d o      ���� 0 filepath  ��  ��   b k     * e e  f g f l      �� h i��   h N H test if a file is present and exit with an error message if it is not      i � j j �   t e s t   i f   a   f i l e   i s   p r e s e n t   a n d   e x i t   w i t h   a n   e r r o r   m e s s a g e   i f   i t   i s   n o t     g  k�� k O     * l m l Z    ) n���� o n l    p���� p I   �� q��
�� .coredoexnull���     **** q 4    �� r
�� 
file r o    ���� 0 filepath  ��  ��  ��  ��  ��   o k    ) s s  t u t I   "�� v w
�� .sysodlogaskr        TEXT v b     x y x b     z { z m     | | � } }  E r r o r :   f i l e   { o    ���� 0 filepath   y m     ~ ~ �   r   n o t   f o u n d .   W a s   t h i s   a p p   m o v e d   f r o m   t h e   G S A S I I   d i r e c t o r y ? w �� � �
�� 
disp � m    ��
�� stic    � �� ���
�� 
btns � J     � �  ��� � m     � � � � �  Q u i t��  ��   u  ��� � R   # )���� �
�� .ascrerr ****      � ****��   � �� ���
�� 
errn � m   % &��������  ��   m m      � ��                                                                                  sevs  alis    T  BHT20 HD                       BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    B H T 2 0   H D  -System/Library/CoreServices/System Events.app   / ��  ��   `  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � � 
----------------------------------------------------------------------------
this section responds to a double-click. No file is supplied to GSAS-II
---------------------------------------------------------------------------- 
    � � � ��   
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 t h i s   s e c t i o n   r e s p o n d s   t o   a   d o u b l e - c l i c k .   N o   f i l e   i s   s u p p l i e d   t o   G S A S - I I 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
 �  � � � i     � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � k     * � �  � � � r      � � � I     �������� &0 getpythonlocation GetPythonLocation��  ��   � o      ���� 
0 python   �  � � � r     � � � I    �������� 0 getg2location GetG2Location��  ��   � o      ���� 0 appwithpath   �  � � � l   ��������  ��  ��   �  ��� � O    * � � � k    ) � �  � � � I   ������
�� .miscactvnull��� ��� null��  ��   �  ��� � I   )�� ���
�� .coredoscnull��� ��� ctxt � b    % � � � b    # � � � b     � � � l    ����� � n     � � � 1    ��
�� 
strq � o    ���� 
0 python  ��  ��   � m     � � � � �    � l   " ����� � n    " � � � 1     "��
�� 
strq � o     ���� 0 appwithpath  ��  ��   � m   # $ � � � � �  ;   e x i t��  ��   � m     � ��                                                                                      @ alis    B  BHT20 HD                       BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    B H T 2 0   H D  *System/Applications/Utilities/Terminal.app  / ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���
-----------------------------------------------------------------------------------------------
this section handles starting with files dragged into the AppleScript
 o it goes through the list of file(s) dragged in
 o then it converts the colon-delimited macintosh file location to a POSIX filename
 o for every non-directory file dragged into the icon, it starts GSAS-II, passing the file name
------------------------------------------------------------------------------------------------
    � � � �� 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 t h i s   s e c t i o n   h a n d l e s   s t a r t i n g   w i t h   f i l e s   d r a g g e d   i n t o   t h e   A p p l e S c r i p t 
   o   i t   g o e s   t h r o u g h   t h e   l i s t   o f   f i l e ( s )   d r a g g e d   i n 
   o   t h e n   i t   c o n v e r t s   t h e   c o l o n - d e l i m i t e d   m a c i n t o s h   f i l e   l o c a t i o n   t o   a   P O S I X   f i l e n a m e 
   o   f o r   e v e r y   n o n - d i r e c t o r y   f i l e   d r a g g e d   i n t o   t h e   i c o n ,   i t   s t a r t s   G S A S - I I ,   p a s s i n g   t h e   f i l e   n a m e 
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 �  � � � i     � � � I     �� ���
�� .aevtodocnull  �    alis � o      ���� 	0 names  ��   � k     W � �  � � � r      � � � I     ������� &0 getpythonlocation GetPythonLocation��  �   � o      �~�~ 
0 python   �  � � � r     � � � I    �}�|�{�} 0 getg2location GetG2Location�|  �{   � o      �z�z 0 appwithpath   �  � � � l   �y�x�w�y  �x  �w   �  ��v � X    W ��u � � k     R � �  � � � r     % � � � l    # ��t�s � c     # � � � o     !�r�r 0 filename   � m   ! "�q
�q 
TEXT�t  �s   � o      �p�p 0 filestr   �  ��o � Z   & R � ��n � � D   & ) � � � o   & '�m�m 0 filestr   � m   ' ( � � � � �  : � l   , ,�l � ��l   � + % should not happen, skip directories     � � � � J   s h o u l d   n o t   h a p p e n ,   s k i p   d i r e c t o r i e s  �n   � k   0 R � �  � � � l   0 0�k � ��k   � ) # if this is an input file, open it     � � � � F   i f   t h i s   i s   a n   i n p u t   f i l e ,   o p e n   i t   �  � � � r   0 7 � � � l  0 5 ��j�i � n   0 5 � � � 1   3 5�h
�h 
strq � l  0 3 ��g�f � n   0 3 � � � 1   1 3�e
�e 
psxp � o   0 1�d�d 0 filename  �g  �f  �j  �i   � o      �c�c 0 filename   �  ��b � O   8 R � � � k   < Q � �  � � � I  < A�a�`�_
�a .miscactvnull��� ��� null�`  �_   �  ��^ � I  B Q�] ��\
�] .coredoscnull��� ��� ctxt � b   B M �  � b   B K b   B I b   B G b   B E o   B C�[�[ 
0 python   m   C D		 �

    o   E F�Z�Z 0 appwithpath   m   G H �    o   I J�Y�Y 0 filename    m   K L �  ;   e x i t�\  �^   � m   8 9�                                                                                      @ alis    B  BHT20 HD                       BD ����Terminal.app                                                   ����            ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    B H T 2 0   H D  *System/Applications/Utilities/Terminal.app  / ��  �b  �o  �u 0 filename   � o    �X�X 	0 names  �v   � �W l     �V�U�T�V  �U  �T  �W       �S�S   �R�Q�P�O�N�R &0 getpythonlocation GetPythonLocation�Q 0 getg2location GetG2Location�P "0 testfilepresent TestFilePresent
�O .aevtoappnull  �   � ****
�N .aevtodocnull  �    alis �M �L�K�J�M &0 getpythonlocation GetPythonLocation�L  �K   �I�H�I 0 
scriptpath  �H 
0 python    !�G�F )�E
�G .earsffdralis        afdr
�F 
psxp�E "0 testfilepresent TestFilePresent�J � )j �,E�UO��%E�O*�k+ O� �D 6�C�B�A�D 0 getg2location GetG2Location�C  �B   �@�?�@ 0 	scriptdir  �? 0 g2script    M�>�=�<�; U�:
�> .earsffdralis        afdr
�= 
ctnr
�< 
alis
�; 
psxp�: "0 testfilepresent TestFilePresent�A #� )j �,�&�,E�UO��%E�O*�k+ O� �9 b�8�7�6�9 "0 testfilepresent TestFilePresent�8 �5�5   �4�4 0 filepath  �7   �3�3 0 filepath    ��2�1 | ~�0�/�. ��-�,�+�*
�2 
file
�1 .coredoexnull���     ****
�0 
disp
�/ stic   
�. 
btns�- 
�, .sysodlogaskr        TEXT
�+ 
errn�*���6 +� '*�/j  hY �%�%����kv� 
O)��lhU �) ��(�'�&
�) .aevtoappnull  �   � ****�(  �'     
�%�$�#�" ��!�  � ���% &0 getpythonlocation GetPythonLocation�$ 
0 python  �# 0 getg2location GetG2Location�" 0 appwithpath  
�! .miscactvnull��� ��� null
�  
strq
� .coredoscnull��� ��� ctxt�& +*j+  E�O*j+ E�O� *j O��,�%��,%�%j 	U � ��� !�
� .aevtodocnull  �    alis� 	0 names  �    ������ 	0 names  � 
0 python  � 0 appwithpath  � 0 filename  � 0 filestr  ! ������ ����	�� &0 getpythonlocation GetPythonLocation� 0 getg2location GetG2Location
� 
kocl
� 
cobj
� .corecnte****       ****
� 
TEXT
� 
psxp
� 
strq
� .miscactvnull��� ��� null
� .coredoscnull��� ��� ctxt� X*j+  E�O*j+ E�O F�[��l kh ��&E�O�� hY $��,�,E�O� *j 
O��%�%�%�%�%j U[OY��ascr  ��ޭ