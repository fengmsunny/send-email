JsOsaDAS1.001.00bplist00�Vscripto / / j a v a s c r i p t 
 / / v e r s i o n   1 . 0 
 / / a u t h o r : d a m o n 
 
 v a r   R e m i n d e r s A p p   =   A p p l i c a t i o n ( ' R e m i n d e r s ' ) ; 
 v a r   r e m i n d e r s   =   R e m i n d e r s A p p . l i s t s . b y N a m e ( ' n s f o c u s ' ) . r e m i n d e r s ; 
 v a r   t o d a y   =   n e w   D a t e ( ) ; 
 / /N�e�[�b 
 v a r   t o d a y R e m i n d e r s   =   [ ] ; 
 / /��l�g	[�b 
 v a r   t o d o R e m i n d e r s   =   [ ] ; 
 
 / /R$e� d a t ef/T&N:N�Y) 
 f u n c t i o n   i s T o d a y ( d a y ) { 
         r e t u r n   t o d a y . g e t D a t e ( )   = = =   d a y . g e t D a t e ( )   & &   t o d a y . g e t M o n t h ( )   = = =   d a y . g e t M o n t h ( )   & &   t o d a y . g e t F u l l Y e a r ( )   = = =   d a y . g e t F u l l Y e a r ( ) ; 
 } 
 
 f o r ( v a r   i = 0 ; i < r e m i n d e r s . l e n g t h ; i + + ) { 
         v a r   r e m i n d e r   =   r e m i n d e r s [ i ] ; 
         i f ( r e m i n d e r . c o m p l e t e d ( ) ) { 
                 i f ( i s T o d a y ( r e m i n d e r . c o m p l e t i o n D a t e ( ) ) ) { 
                         t o d a y R e m i n d e r s . p u s h ( r e m i n d e r ) ; 
                 } 
         } e l s e { 
                 t o d o R e m i n d e r s . p u s h ( r e m i n d e r ) ; 
         } 
 } 
 v a r   m a i l C o n t e n t = " . . . . . . . . . . . . . . " ; 
 f o r ( v a r   i = 0 ; i < t o d a y R e m i n d e r s . l e n g t h ; i + + ) { 
         v a r   r e m i n d e r   =   r e m i n d e r s [ i ] ; 
 	 l i s t _ n u m = i + 1 ; 
 	 i f ( ! r e m i n d e r . b o d y ( ) ) { 
 	 
 	 m a i l C o n t e n t + = l i s t _ n u m + ' . ' + r e m i n d e r . n a m e ( ) + '   ' + ' \ n ' ; 
 	 
 	 } 
 	 e l s e {   
 	 
 	 m a i l C o n t e n t + = l i s t _ n u m + ' . ' + r e m i n d e r . n a m e ( ) + '   ' + r e m i n d e r . b o d y ( ) + ' \ n ' ; 	 
 	 } 
 	 
         
 } 
 
 i f ( ! t o d o R e m i n d e r s . l e n g t h ) { 
 } 
 e l s e { 
 m a i l C o n t e n t + = ' . . . . . . . . . . . ' ; 
 f o r ( v a r   i = 0 ; i < t o d o R e m i n d e r s . l e n g t h ; i + + ) { 
         v a r   r e m i n d e r   =   r e m i n d e r s [ i ] ; 
 	 l i s t _ n u m = i + 1 ; 
         i f ( ! r e m i n d e r . b o d y ( ) ) { 
 	 
 	 m a i l C o n t e n t + = l i s t _ n u m + ' . ' + r e m i n d e r . n a m e ( ) + '   ' + ' \ n ' ; 
 	 
 	 } 
 	 e l s e {   
 	 
 	 m a i l C o n t e n t + = l i s t _ n u m + ' . ' + r e m i n d e r . n a m e ( ) + '   ' + r e m i n d e r . b o d y ( ) + ' \ n ' ; 	 
 	 } 
 } 
 } 
 
 v a r   s i g n = " . . . . . . . . . . . . . " ; 
 
 m a i l C o n t e n t + = s i g n ; 
   
 
 / / v a r   M a i l A p p   =   A p p l i c a t i o n ( ' M a i l ' ) ; 
 / / v a r   o u t M a i l   =   n e w   M a i l A p p . O u t g o i n g M e s s a g e ( { 
 / /         s e n d e r : ' a @ b . c o m ' , 
 / /         s u b j e c t : t o d a y . g e t F u l l Y e a r ( )   +   t o d a y . g e t M o n t h ( ) + 1   +   t o d a y . g e t D a t e ( ) , 
 / /         c o n t e n t : m a i l C o n t e n t , 
 / /         v i s i b l e : t r u e 
 / / } ) ; 
 / / M a i l A p p . o u t g o i n g M e s s a g e s . p u s h ( o u t M a i l ) ; 
 
 
 M a i l A p p   =   A p p l i c a t i o n ( ' M a i l ' ) 
 
 m e s s a g e   =   M a i l A p p . O u t g o i n g M e s s a g e ( ) . m a k e ( ) 
 m e s s a g e . v i s i b l e   =   t r u e 
 m e s s a g e . t o R e c i p i e n t s . p u s h ( M a i l A p p . R e c i p i e n t ( {   a d d r e s s :   " a @ b . c o m "   } ) ) 
 m e s s a g e . c c R e c i p i e n t s . p u s h ( M a i l A p p . R e c i p i e n t ( {   a d d r e s s :   " a @ b . c o m "   } ) ) 
 m e s s a g e . c c R e c i p i e n t s . p u s h ( M a i l A p p . R e c i p i e n t ( {   a d d r e s s :   " a @ b . c o m "   } ) ) 
 m e s s a g e . s u b j e c t   =   t o d a y . g e t F u l l Y e a r ( )   +   ( t o d a y . g e t M o n t h ( ) + 1 )   +   t o d a y . g e t D a t e ( ) , 
 m e s s a g e . c o n t e n t   =   m a i l C o n t e n t 
 M a i l A p p . o u t g o i n g M e s s a g e s . p u s h ( m e s s a g e ) ; 
 
                              Njscr  ��ޭ