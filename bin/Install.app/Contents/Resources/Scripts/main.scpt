FasdUAS 1.101.10   ��   ��    k             l    � ����  Q     �  	 
  k    x       l   ��  ��    &   Get the path of the AppleScript     �   @   G e t   t h e   p a t h   o f   t h e   A p p l e S c r i p t      r    
    I   �� ��
�� .earsffdralis        afdr   f    ��    o      ���� 0 
thisscript 
thisScript      l   ��������  ��  ��        l   ��  ��      Convert to POSIX path     �   ,   C o n v e r t   t o   P O S I X   p a t h      r         n     ! " ! 1    ��
�� 
psxp " o    ���� 0 
thisscript 
thisScript   o      ����  0 thisscriptpath thisScriptPath   # $ # l   ��������  ��  ��   $  % & % l   �� ' (��   ' E ? Construct the path to your script bundled with the AppleScript    ( � ) ) ~   C o n s t r u c t   t h e   p a t h   t o   y o u r   s c r i p t   b u n d l e d   w i t h   t h e   A p p l e S c r i p t &  * + * r     , - , b     . / . o    ����  0 thisscriptpath thisScriptPath / m     0 0 � 1 1 J C o n t e n t s / R e s o u r c e s / c o p y _ k e y l a y o u t s . s h - o      ���� 0 
scriptpath 
scriptPath +  2 3 2 l   ��������  ��  ��   3  4 5 4 l   �� 6 7��   6   Run the script    7 � 8 8    R u n   t h e   s c r i p t 5  9 : 9 I    �� ;��
�� .sysoexecTEXT���     TEXT ; b     < = < m     > > � ? ?  s h   = n     @ A @ 1    ��
�� 
strq A o    ���� 0 
scriptpath 
scriptPath��   :  B C B l  ! !��������  ��  ��   C  D E D l  ! !�� F G��   F 5 / Display a dialog with options and instructions    G � H H ^   D i s p l a y   a   d i a l o g   w i t h   o p t i o n s   a n d   i n s t r u c t i o n s E  I J I r   ! ] K L K n   ! Y M N M 1   U Y��
�� 
bhit N l  ! U O���� O I  ! U�� P Q
�� .sysodlogaskr        TEXT P b   ! @ R S R b   ! < T U T b   ! : V W V b   ! 8 X Y X b   ! 6 Z [ Z b   ! 4 \ ] \ b   ! 2 ^ _ ^ b   ! 0 ` a ` b   ! . b c b b   ! , d e d b   ! * f g f b   ! ( h i h b   ! & j k j b   ! $ l m l m   ! " n n � o o : S c r i p t   e x e c u t e d   s u c c e s s f u l l y ! m o   " #��
�� 
ret  k o   $ %��
�� 
ret  i m   & ' p p � q q D N e x t   s t e p s   t o   a c t i v a t e   t h e   l a y o u t : g o   ( )��
�� 
ret  e m   * + r r � s s r 1 .   G o   t o   S y s t e m   P r e f e r e n c e s   - >   K e y b o a r d   - >   I n p u t   S o u r c e s . c o   , -��
�� 
ret  a m   . / t t � u u 0 2 .   C l i c k   t h e   ' + '   b u t t o n . _ o   0 1��
�� 
ret  ] m   2 3 v v � w w F 3 .   S e l e c t   ' O t h e r '   f r o m   t h e   s i d e b a r . [ o   4 5��
�� 
ret  Y m   6 7 x x � y y N 4 .   C h o o s e   y o u r   d e s i r e d   k e y b o a r d   l a y o u t . W o   8 9��
�� 
ret  U o   : ;��
�� 
ret  S m   < ? z z � { { V D o   y o u   w a n t   t o   o p e n   S y s t e m   P r e f e r e n c e s   n o w ? Q �� | }
�� 
btns | J   C K ~ ~   �  m   C F � � � � �   O p e n   P r e f e r e n c e s �  ��� � m   F I � � � � �  C a n c e l��   } �� ���
�� 
dflt � m   N O���� ��  ��  ��   L o      ���� 0 
userchoice 
userChoice J  � � � l  ^ ^��������  ��  ��   �  � � � l  ^ ^�� � ���   �   Check user's choice    � � � � (   C h e c k   u s e r ' s   c h o i c e �  ��� � Z   ^ x � ����� � =  ^ e � � � o   ^ a���� 0 
userchoice 
userChoice � m   a d � � � � �   O p e n   P r e f e r e n c e s � k   h t � �  � � � l  h h�� � ���   �   Open System Preferences    � � � � 0   O p e n   S y s t e m   P r e f e r e n c e s �  ��� � O   h t � � � I  n s������
�� .miscactvnull��� ��� null��  ��   � m   h k � ��                                                                                  sprf  alis    T  Macintosh HD               �+F�BD ����System Settings.app                                            �����+F�        ����  
 cu             Applications  */:System:Applications:System Settings.app/  (  S y s t e m   S e t t i n g s . a p p    M a c i n t o s h   H D  'System/Applications/System Settings.app   / ��  ��  ��  ��  ��   	 R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errormessage errorMessage��   
 k   � � � �  � � � l  � ��� � ���   � E ? Check if the error message is due to user canceling the dialog    � � � � ~   C h e c k   i f   t h e   e r r o r   m e s s a g e   i s   d u e   t o   u s e r   c a n c e l i n g   t h e   d i a l o g �  ��� � Z   � � � ����� � >  � � � � � o   � ����� 0 errormessage errorMessage � m   � � � � � � �  U s e r   c a n c e l e d . � I  � ��� � �
�� .sysodlogaskr        TEXT � b   � � � � � m   � � � � � � �  E r r o r :   � o   � ����� 0 errormessage errorMessage � �� ���
�� 
btns � J   � � � �  ��� � m   � � � � � � �  O K��  ��  ��  ��  ��  ��  ��     ��� � l     ��������  ��  ��  ��       �� � ���   � ��
�� .aevtoappnull  �   � **** � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �  ����  ��  ��   � ���� 0 errormessage errorMessage � !�������� 0�� >���� n�� p r t v x z�� � ����������� � ������� � � �
�� .earsffdralis        afdr�� 0 
thisscript 
thisScript
�� 
psxp��  0 thisscriptpath thisScriptPath�� 0 
scriptpath 
scriptPath
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
ret 
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 
userchoice 
userChoice
�� .miscactvnull��� ��� null�� 0 errormessage errorMessage��  �� � z)j  E�O��,E�O��%E�O���,%j O��%�%�%�%�%�%�%�%�%�%�%�%�%a %a a a lva ka  a ,E` O_ a   a  *j UY hW $X  �a  a �%a a  kvl Y h ascr  ��ޭ