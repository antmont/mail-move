FasdUAS 1.101.10   ��   ��    k             l     ��  ��    0 * applescript to save attachments from mail     � 	 	 T   a p p l e s c r i p t   t o   s a v e   a t t a c h m e n t s   f r o m   m a i l   
  
 l     ��  ��    ; 5 save to ~/Library/Application Scripts/com.apple.mail     �   j   s a v e   t o   ~ / L i b r a r y / A p p l i c a t i o n   S c r i p t s / c o m . a p p l e . m a i l      l     ��  ��      called from mail rules     �   .   c a l l e d   f r o m   m a i l   r u l e s      l     ��  ��       saves into Downloads/mail     �   4   s a v e s   i n t o   D o w n l o a d s / m a i l      l     ��  ��    D >file name is <rule-name>-<datestamp>-<original-attachmentname>     �   | f i l e   n a m e   i s   < r u l e - n a m e > - < d a t e s t a m p > - < o r i g i n a l - a t t a c h m e n t n a m e >      l     ��������  ��  ��       !   w       " # " i      $ % $ I     �� & '
�� .emalcpmanull���     **** & o      ���� 0 themessages theMessages ' �� (��
�� 
pmar ( o      ���� 0 therule theRule��   % k     � ) )  * + * l     ��������  ��  ��   +  , - , l     �� . /��   . F @ the ouput folder needs to be hardcoded and must be in Downloads    / � 0 0 �   t h e   o u p u t   f o l d e r   n e e d s   t o   b e   h a r d c o d e d   a n d   m u s t   b e   i n   D o w n l o a d s -  1 2 1 l     �� 3 4��   3 ' ! anything else will crash or fail    4 � 5 5 B   a n y t h i n g   e l s e   w i l l   c r a s h   o r   f a i l 2  6 7 6 l     �� 8 9��   8 V P Only use hardcoded path! DO NOT USE choose folder. It will crash Mail if you do    9 � : : �   O n l y   u s e   h a r d c o d e d   p a t h !   D O   N O T   U S E   c h o o s e   f o l d e r .   I t   w i l l   c r a s h   M a i l   i f   y o u   d o 7  ; < ; l     �� = >��   =   Note ~ does not work    > � ? ? *   N o t e   ~   d o e s   n o t   w o r k <  @ A @ l     �� B C��   B Y S as of Mac OS X 10.8 Mail.app applescripts can only save to the downloads directory    C � D D �   a s   o f   M a c   O S   X   1 0 . 8   M a i l . a p p   a p p l e s c r i p t s   c a n   o n l y   s a v e   t o   t h e   d o w n l o a d s   d i r e c t o r y A  E F E l     �� G H��   G "  the subdirectory must exist    H � I I 8   t h e   s u b d i r e c t o r y   m u s t   e x i s t F  J K J r      L M L c      N O N l     P���� P m      Q Q � R R < / U s e r s / a n t h o n y / D o w n l o a d s / m a i l /��  ��   O m    ��
�� 
ctxt M o      ���� 0 outputfolder outputFolder K  S T S l   ��������  ��  ��   T  U V U l   ��������  ��  ��   V  W X W l   �� Y Z��   Y . ( the file prefix in the name of the rule    Z � [ [ P   t h e   f i l e   p r e f i x   i n   t h e   n a m e   o f   t h e   r u l e X  \ ] \ r     ^ _ ^ c     ` a ` n    	 b c b 1    	��
�� 
pnam c o    ���� 0 therule theRule a m   	 
��
�� 
ctxt _ o      ���� 0 
fileprefix 
filePrefix ]  d e d l   ��������  ��  ��   e  f g f l   ��������  ��  ��   g  h i h O    � j k j X    � l�� m l k   " � n n  o p o l  " "�� q r��   q P J display dialog "Processing message with subject: " & theMessage's subject    r � s s �   d i s p l a y   d i a l o g   " P r o c e s s i n g   m e s s a g e   w i t h   s u b j e c t :   "   &   t h e M e s s a g e ' s   s u b j e c t p  t�� t Z   " � u v���� u >  " ( w x w n  " % y z y 2  # %��
�� 
attc z o   " #���� 0 
themessage 
theMessage x J   % '����   v k   + � { {  | } | l  + +��������  ��  ��   }  ~  ~ l  + +�� � ���   � ( " Get the date the message was sent    � � � � D   G e t   t h e   d a t e   t h e   m e s s a g e   w a s   s e n t   � � � r   + M � � � n  + . � � � 1   , .��
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
theMessage m o    ���� 0 themessages theMessages k m     � �x                                                                                  emal  alis      Macintosh HD                   BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��   i  � � � l  � ���������  ��  ��   �  � � � Q   � � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � m   � � � � � � � � / U s e r s / a n t h o n y / d e v e l o p - s y n c / a p p l e s c r i p t s / m a i l - m o v e - a t t a c h m e n t s . s h��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 
0 errnum  ��   � I  � ��� ���
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � � r S h e l l   s c r i p t   e r r o r   i n   m a i l - s a v e - a t t a c h m e n t . s c p t ,   e r r n u m :   � o   � ����� 
0 errnum  ��   �  ��� � l  � ���������  ��  ��  ��   #x                                                                                  emal  alis      Macintosh HD                   BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    M a c i n t o s h   H D  Applications/Mail.app   / ��   !  � � � l     �������  ��  �   �  � � � l     �~ � ��~   � , & Adds leading zeros to date components    � � � � L   A d d s   l e a d i n g   z e r o s   t o   d a t e   c o m p o n e n t s �  � � � i     �  � I      �}�|�} 0 pad   �{ o      �z�z 0 n  �{  �|    L      n      7   �y
�y 
ctxt m    	�x�x�� m   
 �w�w�� l    �v�u b     	
	 m      �  0 0
 o    �t�t 0 n  �v  �u   �  l     �s�r�q�s  �r  �q    l     �p�p   &  on perform_mail_action(ruleData)    � @ o n   p e r f o r m _ m a i l _ a c t i o n ( r u l e D a t a )  l     �o�n�m�o  �n  �m    l     �l�l   A ; The folder to save the attachments in (must already exist)    � v   T h e   f o l d e r   t o   s a v e   t h e   a t t a c h m e n t s   i n   ( m u s t   a l r e a d y   e x i s t )  l     �k�k   ` Zset attachmentsFolder to ((path to home folder as text) & "Documents:Attachments") as text    � � s e t   a t t a c h m e n t s F o l d e r   t o   ( ( p a t h   t o   h o m e   f o l d e r   a s   t e x t )   &   " D o c u m e n t s : A t t a c h m e n t s " )   a s   t e x t  !  l     �j�i�h�j  �i  �h  ! "#" l     �g$%�g  $ A ; Save in a sub-folder based on the name of the rule in Mail   % �&& v   S a v e   i n   a   s u b - f o l d e r   b a s e d   o n   t h e   n a m e   o f   t h e   r u l e   i n   M a i l# '(' l     �f)*�f  ) : 4	set subFolder to name of |Rule| of ruleData as text   * �++ h 	 s e t   s u b F o l d e r   t o   n a m e   o f   | R u l e |   o f   r u l e D a t a   a s   t e x t( ,-, l     �e./�e  .   	tell application "Finder"   / �00 4 	 t e l l   a p p l i c a t i o n   " F i n d e r "- 121 l     �d34�d  3 I C		if not (exists folder subFolder of folder attachmentsFolder) then   4 �55 � 	 	 i f   n o t   ( e x i s t s   f o l d e r   s u b F o l d e r   o f   f o l d e r   a t t a c h m e n t s F o l d e r )   t h e n2 676 l     �c89�c  8 N H			make new folder at attachmentsFolder with properties {name:subFolder}   9 �:: � 	 	 	 m a k e   n e w   f o l d e r   a t   a t t a c h m e n t s F o l d e r   w i t h   p r o p e r t i e s   { n a m e : s u b F o l d e r }7 ;<; l     �b=>�b  =  		end if   > �??  	 	 e n d   i f< @A@ l     �aBC�a  B  		end tell   C �DD  	 e n d   t e l lA EFE l     �`�_�^�`  �_  �^  F GHG l     �]IJ�]  I 0 * Get incoming messages that match the rule   J �KK T   G e t   i n c o m i n g   m e s s a g e s   t h a t   m a t c h   t h e   r u l eH LML l     �\NO�\  N  	tell application "Mail"   O �PP 0 	 t e l l   a p p l i c a t i o n   " M a i l "M QRQ l     �[ST�[  S > 8		set selectedMessages to |SelectedMessages| of ruleData   T �UU p 	 	 s e t   s e l e c t e d M e s s a g e s   t o   | S e l e c t e d M e s s a g e s |   o f   r u l e D a t aR VWV l     �ZXY�Z  X 2 ,		repeat with theMessage in selectedMessages   Y �ZZ X 	 	 r e p e a t   w i t h   t h e M e s s a g e   i n   s e l e c t e d M e s s a g e sW [\[ l     �Y�X�W�Y  �X  �W  \ ]^] l     �V_`�V  _ ( " Get the date the message was sent   ` �aa D   G e t   t h e   d a t e   t h e   m e s s a g e   w a s   s e n t^ bcb l     �Ude�U  d U O			set {year:y, month:m, day:d, hours:h, minutes:min} to theMessage's date sent   e �ff � 	 	 	 s e t   { y e a r : y ,   m o n t h : m ,   d a y : d ,   h o u r s : h ,   m i n u t e s : m i n }   t o   t h e M e s s a g e ' s   d a t e   s e n tc ghg l     �Tij�T  i w q			set timeStamp to ("" & y & "-" & my pad(m as integer) & "-" & my pad(d) & "-" & my pad(h) & "-" & my pad(min))   j �kk � 	 	 	 s e t   t i m e S t a m p   t o   ( " "   &   y   &   " - "   &   m y   p a d ( m   a s   i n t e g e r )   &   " - "   &   m y   p a d ( d )   &   " - "   &   m y   p a d ( h )   &   " - "   &   m y   p a d ( m i n ) )h lml l     �S�R�Q�S  �R  �Q  m non l     �Ppq�P  p   Save the attachment   q �rr (   S a v e   t h e   a t t a c h m e n to sts l     �Ouv�O  u C =			repeat with theAttachment in theMessage's mail attachments   v �ww z 	 	 	 r e p e a t   w i t h   t h e A t t a c h m e n t   i n   t h e M e s s a g e ' s   m a i l   a t t a c h m e n t st xyx l     �Nz{�N  z 3 -				set originalName to name of theAttachment   { �|| Z 	 	 	 	 s e t   o r i g i n a l N a m e   t o   n a m e   o f   t h e A t t a c h m e n ty }~} l     �M��M   d ^				set savePath to attachmentsFolder & ":" & subFolder & ":" & timeStamp & " " & originalName   � ��� � 	 	 	 	 s e t   s a v e P a t h   t o   a t t a c h m e n t s F o l d e r   &   " : "   &   s u b F o l d e r   &   " : "   &   t i m e S t a m p   &   "   "   &   o r i g i n a l N a m e~ ��� l     �L���L  �  				try   � ���  	 	 	 	 t r y� ��� l     �K���K  � ) #					save theAttachment in savePath   � ��� F 	 	 	 	 	 s a v e   t h e A t t a c h m e n t   i n   s a v e P a t h� ��� l     �J���J  �  				end try   � ���  	 	 	 	 e n d   t r y� ��� l     �I���I  �  			end repeat   � ���  	 	 	 e n d   r e p e a t� ��� l     �H���H  �  		end repeat   � ���  	 	 e n d   r e p e a t� ��� l     �G���G  �  		end tell   � ���  	 e n d   t e l l� ��� l     �F�E�D�F  �E  �D  � ��� l     �C���C  �  end perform_mail_action   � ��� . e n d   p e r f o r m _ m a i l _ a c t i o n� ��� l     �B�A�@�B  �A  �@  � ��?� l     �>�=�<�>  �=  �<  �?       �;����;  � �:�9
�: .emalcpmanull���     ****�9 0 pad  � �8 %�7�6���5
�8 .emalcpmanull���     ****�7 0 themessages theMessages�6 �4�3�2
�4 
pmar�3 0 therule theRule�2  � �1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�1 0 themessages theMessages�0 0 therule theRule�/ 0 outputfolder outputFolder�. 0 
fileprefix 
filePrefix�- 0 
themessage 
theMessage�, 0 y  �+ 0 m  �* 0 d  �) 0 h  �( 0 min  �' 0 	datestamp 	dateStamp�& 0 theattachment theAttachment�% 0 originalname originalName�$ 0 thefilename theFileName�# 
0 errnum  �  Q�"�! �� ��������� � ��� � � ����� �� �� �
�" 
ctxt
�! 
pnam
�  
kocl
� 
cobj
� .corecnte****       ****
� 
attc
� 
drcv
� 
year
� 
mnth
� 
day 
� 
hour
� 
min 
� 
long� 0 pad  
� 
kfil
� .coresavenull���     obj � 
0 errnum  �  
� .sysodlogaskr        TEXT
� .sysoexecTEXT���     TEXT�5 ���&E�O��,�&E�O� � ��[��l kh ��-jv ���,E[�,E�Z[�,E�Z[�,E�Z[�,E�Z[�,E�ZO�%�%)�a &k+ %a %)�k+ %E�O K��-[��l kh ��,E�O��%a %�%a %�%E�O �a �l W X  a �%j [OY��Y h[OY�`UO a j W X  a �%j OP� � ������ 0 pad  � �
��
 �  �	�	 0 n  �  � �� 0 n  � ��
� 
ctxt���� �%[�\[Z�\Zi2Eascr  ��ޭ