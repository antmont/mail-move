FasdUAS 1.101.10   ��   ��    k             l     ��  ��    0 * applescript to save attachments from mail     � 	 	 T   a p p l e s c r i p t   t o   s a v e   a t t a c h m e n t s   f r o m   m a i l   
  
 l     ��  ��    M G V2 does not try to call shell script (this is run via cron or launchd)     �   �   V 2   d o e s   n o t   t r y   t o   c a l l   s h e l l   s c r i p t   ( t h i s   i s   r u n   v i a   c r o n   o r   l a u n c h d )      l     ��  ��    ; 5 save to ~/Library/Application Scripts/com.apple.mail     �   j   s a v e   t o   ~ / L i b r a r y / A p p l i c a t i o n   S c r i p t s / c o m . a p p l e . m a i l      l     ��  ��      called from mail rules     �   .   c a l l e d   f r o m   m a i l   r u l e s      l     ��  ��       saves into Downloads/mail     �   4   s a v e s   i n t o   D o w n l o a d s / m a i l      l     ��   !��     E ? file name is <rule-name>-<datestamp>-<original-attachmentname>    ! � " " ~   f i l e   n a m e   i s   < r u l e - n a m e > - < d a t e s t a m p > - < o r i g i n a l - a t t a c h m e n t n a m e >   # $ # l     ��������  ��  ��   $  % & % w       ' ( ' i      ) * ) I     �� + ,
�� .emalcpmanull���     **** + o      ���� 0 themessages theMessages , �� -��
�� 
pmar - o      ���� 0 therule theRule��   * k     � . .  / 0 / l     ��������  ��  ��   0  1 2 1 l     �� 3 4��   3 F @ the ouput folder needs to be hardcoded and must be in Downloads    4 � 5 5 �   t h e   o u p u t   f o l d e r   n e e d s   t o   b e   h a r d c o d e d   a n d   m u s t   b e   i n   D o w n l o a d s 2  6 7 6 l     �� 8 9��   8 ' ! anything else will crash or fail    9 � : : B   a n y t h i n g   e l s e   w i l l   c r a s h   o r   f a i l 7  ; < ; l     �� = >��   = V P Only use hardcoded path! DO NOT USE choose folder. It will crash Mail if you do    > � ? ? �   O n l y   u s e   h a r d c o d e d   p a t h !   D O   N O T   U S E   c h o o s e   f o l d e r .   I t   w i l l   c r a s h   M a i l   i f   y o u   d o <  @ A @ l     �� B C��   B   Note ~ does not work    C � D D *   N o t e   ~   d o e s   n o t   w o r k A  E F E l     �� G H��   G Y S as of Mac OS X 10.8 Mail.app applescripts can only save to the downloads directory    H � I I �   a s   o f   M a c   O S   X   1 0 . 8   M a i l . a p p   a p p l e s c r i p t s   c a n   o n l y   s a v e   t o   t h e   d o w n l o a d s   d i r e c t o r y F  J K J l     �� L M��   L "  the subdirectory must exist    M � N N 8   t h e   s u b d i r e c t o r y   m u s t   e x i s t K  O P O l     �� Q R��   Q ? 9 as of OS X 10.14 must grant Full Disk Access to Mail.app    R � S S r   a s   o f   O S   X   1 0 . 1 4   m u s t   g r a n t   F u l l   D i s k   A c c e s s   t o   M a i l . a p p P  T U T r      V W V c      X Y X l     Z���� Z m      [ [ � \ \ < / U s e r s / a n t h o n y / D o w n l o a d s / m a i l /��  ��   Y m    ��
�� 
ctxt W o      ���� 0 outputfolder outputFolder U  ] ^ ] l   ��������  ��  ��   ^  _ ` _ l   ��������  ��  ��   `  a b a l   �� c d��   c . ( the file prefix in the name of the rule    d � e e P   t h e   f i l e   p r e f i x   i n   t h e   n a m e   o f   t h e   r u l e b  f g f r     h i h c     j k j n    	 l m l 1    	��
�� 
pnam m o    ���� 0 therule theRule k m   	 
��
�� 
ctxt i o      ���� 0 
fileprefix 
filePrefix g  n o n l   ��������  ��  ��   o  p q p l   ��������  ��  ��   q  r s r O    � t u t X    � v�� w v k   " � x x  y z y l  " "�� { |��   { P J display dialog "Processing message with subject: " & theMessage's subject    | � } } �   d i s p l a y   d i a l o g   " P r o c e s s i n g   m e s s a g e   w i t h   s u b j e c t :   "   &   t h e M e s s a g e ' s   s u b j e c t z  ~�� ~ Z   " �  �����  >  " ( � � � n  " % � � � 2  # %��
�� 
attc � o   " #���� 0 
themessage 
theMessage � J   % '����   � k   + � � �  � � � l  + +��������  ��  ��   �  � � � l  + +�� � ���   � ( " Get the date the message was sent    � � � � D   G e t   t h e   d a t e   t h e   m e s s a g e   w a s   s e n t �  � � � r   + M � � � n  + . � � � 1   , .��
�� 
drcv � o   + ,���� 0 
themessage 
theMessage � K       � � �� � �
�� 
year � o      ���� 0 y   � �� � �
�� 
mnth � o      ���� 0 m   � �� � �
�� 
day  � o      ���� 0 d   � �� � �
�� 
hour � o      ���� 0 h   � �� ���
�� 
min  � o      ���� 0 min  ��   �  � � � r   N k � � � l  N i ����� � b   N i � � � b   N b � � � b   N ^ � � � b   N S � � � b   N Q � � � m   N O � � � � �   � o   O P���� 0 y   � m   Q R � � � � �  - � n  S ] � � � I   T ]�� ����� 0 pad   �  ��� � c   T Y � � � o   T U���� 0 m   � m   U X��
�� 
long��  ��   �  f   S T � m   ^ a � � � � �  - � n  b h � � � I   c h�� ����� 0 pad   �  ��� � o   c d���� 0 d  ��  ��   �  f   b c��  ��   � o      ���� 0 	datestamp 	dateStamp �  � � � l  l l��������  ��  ��   �  � � � l  l l�� � ���   � * $ Save each attachment in the message    � � � � H   S a v e   e a c h   a t t a c h m e n t   i n   t h e   m e s s a g e �  ��� � X   l � ��� � � k   ~ � � �  � � � r   ~ � � � � n   ~ � � � � 1    ���
�� 
pnam � o   ~ ���� 0 theattachment theAttachment � o      ���� 0 originalname originalName �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 outputfolder outputFolder � o   � ����� 0 
fileprefix 
filePrefix � m   � � � � � � �  - � o   � ����� 0 	datestamp 	dateStamp � m   � � � � � � �  - � o   � ����� 0 originalname originalName � o      ���� 0 thefilename theFileName �  ��� � Q   � � � � � � I  � ��� � �
�� .coresavenull���     obj  � o   � ����� 0 theattachment theAttachment � �� ���
�� 
kfil � o   � ����� 0 thefilename theFileName��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errnum  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � b S a v e   e r r o r   i n   m a i l - s a v e - a t t a c h m e n t . s c p t ,   e r r n u m :   � o   � ����� 
0 errnum  ��  ��  �� 0 theattachment theAttachment � n  o r � � � 2  p r��
�� 
attc � o   o p���� 0 
themessage 
theMessage��  ��  ��  ��  �� 0 
themessage 
theMessage w o    ���� 0 themessages theMessages u m     � �x                                                                                  emal  alis      Macintosh HD                   BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��   s  ��� � l  � ���������  ��  ��  ��   (x                                                                                  emal  alis      Macintosh HD                   BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��   &  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � , & Adds leading zeros to date components    � � � � L   A d d s   l e a d i n g   z e r o s   t o   d a t e   c o m p o n e n t s �  � � � i     � � � I      �� ����� 0 pad   �  ��� � o      ���� 0 n  ��  ��   � L      � � n      � � � 7   �� 
�� 
ctxt  m    	������ m   
 ������ � l    ��~ b      m      �  0 0 o    �}�} 0 n  �  �~   �  l     �|�{�z�|  �{  �z   	�y	 l     �x�w�v�x  �w  �v  �y       �u
�u  
 �t�s
�t .emalcpmanull���     ****�s 0 pad   �r *�q�p�o
�r .emalcpmanull���     ****�q 0 themessages theMessages�p �n�m�l
�n 
pmar�m 0 therule theRule�l   �k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�k 0 themessages theMessages�j 0 therule theRule�i 0 outputfolder outputFolder�h 0 
fileprefix 
filePrefix�g 0 
themessage 
theMessage�f 0 y  �e 0 m  �d 0 d  �c 0 h  �b 0 min  �a 0 	datestamp 	dateStamp�` 0 theattachment theAttachment�_ 0 originalname originalName�^ 0 thefilename theFileName�] 
0 errnum    [�\�[ ��Z�Y�X�W�V�U�T�S�R�Q � ��P�O � � ��N�M�L�K ��J
�\ 
ctxt
�[ 
pnam
�Z 
kocl
�Y 
cobj
�X .corecnte****       ****
�W 
attc
�V 
drcv
�U 
year
�T 
mnth
�S 
day 
�R 
hour
�Q 
min 
�P 
long�O 0 pad  
�N 
kfil
�M .coresavenull���     obj �L 
0 errnum  �K  
�J .sysodlogaskr        TEXT�o ���&E�O��,�&E�O� � ��[��l kh ��-jv ���,E[�,E�Z[�,E�Z[�,E�Z[�,E�Z[�,E�ZO�%�%)�a &k+ %a %)�k+ %E�O K��-[��l kh ��,E�O��%a %�%a %�%E�O �a �l W X  a �%j [OY��Y h[OY�`UOP �I ��H�G�F�I 0 pad  �H �E�E   �D�D 0 n  �G   �C�C 0 n   �B�A
�B 
ctxt�A���F �%[�\[Z�\Zi2E ascr  ��ޭ