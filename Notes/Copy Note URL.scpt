JsOsaDAS1.001.00bplist00�VscriptoU v a r   S y s t e m E v e n t s   =   A p p l i c a t i o n ( ' S y s t e m   E v e n t s ' ) ; 
 v a r   N o t e s A p p   =   A p p l i c a t i o n ( ' N o t e s ' ) ; 
 v a r   N o t e s P r o c e s s   =   S y s t e m E v e n t s . p r o c e s s e s [ ' N o t e s ' ] ; 
 v a r   N o t e s W i n d o w   =   N o t e s P r o c e s s . w i n d o w s [ 0 ] ; 
 
 N o t e s A p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 
 f u n c t i o n   s e l e c t e d F o l d e r N a m e ( )   { 
         c o n s t   f o l d e r s L i s t   =   N o t e s W i n d o w 
                 . s p l i t t e r G r o u p s [ 0 ] 
                 . s c r o l l A r e a s [ 0 ] 
                 . o u t l i n e s [ 0 ] 
 	 	 . r o w s ; 
         c o n s t   s e l e c t e d F o l d e r   =   f o l d e r s L i s t . w h o s e ( {   s e l e c t e d :   t r u e   } ) [ 0 ] ; 
         r e t u r n   s e l e c t e d F o l d e r . u i E l e m e n t s [ 0 ] . u i E l e m e n t s [ 0 ] . n a m e ( )   | |   s e l e c t e d F o l d e r . u i E l e m e n t s [ 0 ] . t e x t F i e l d s [ 0 ] . v a l u e ( ) ; 
 } 
 
 f u n c t i o n   s e l e c t e d N o t e N a m e ( )   { 
         c o n s t   n o t e s L i s t   =   N o t e s W i n d o w 
 	 	 . s p l i t t e r G r o u p s [ 0 ] 
 	 	 . s p l i t t e r G r o u p s [ 0 ] 
 	 	 . g r o u p s [ 0 ] 
 	 	 . s c r o l l A r e a s [ 0 ] 
 	 	 . t a b l e s [ 0 ] 
 	 	 . r o w s ; 
         c o n s t   s e l e c t e d R o w   =   n o t e s L i s t . w h o s e ( {   s e l e c t e d :   t r u e   } ) [ 0 ] ; 
         r e t u r n   s e l e c t e d R o w . u i E l e m e n t s [ 0 ] . s t a t i c T e x t s [ 0 ] . v a l u e ( ) ; 
 } 
 
 f u n c t i o n   r u n ( )   { 
 	 N o t e s A p p . a c t i v a t e ( ) ; 
 
 	 c o n s t   s e a r c h F o l d e r   =   N o t e s A p p . f o l d e r s . w h o s e ( { n a m e :   s e l e c t e d F o l d e r N a m e ( ) } ) ( ) [ 0 ]   | |   N o t e s A p p ; 
 	 c o n s t   s e l e c t e d N o t e   =   s e a r c h F o l d e r 
 	     	 . n o t e s 
         	 . b y N a m e ( s e l e c t e d N o t e N a m e ( ) ) ; 
 	 c o n s t   t i m e s t a m p   = 
 	 	 M a t h . f l o o r ( s e l e c t e d N o t e . c r e a t i o n D a t e ( ) . g e t T i m e ( )   /   1 0 0 0 ) ; 
 	 	 
 	 c o n s t   n a m e   =   s e l e c t e d N o t e . n a m e ( ) . l e n g t h   ?   `  $ { s e l e c t e d N o t e . n a m e ( ) }  \ n \ n `   :   " " 
 	 c o n s t   u r l   =   ` s h o r t c u t s : / / r u n - s h o r t c u t ? n a m e = N o t e U R L & i n p u t = $ { e n c o d e U R I C o m p o n e n t ( t i m e s t a m p ) } ` ; 
 
 	 N o t e s A p p . s e t T h e C l i p b o a r d T o ( ` $ { n a m e } $ { u r l } ` ) ; 
 } 
                              
�jscr  ��ޭ