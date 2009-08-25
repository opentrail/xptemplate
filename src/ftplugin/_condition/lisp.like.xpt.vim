XPTemplate priority=like

let [s:f, s:v] = XPTcontainer() 
 
XPTvar $TRUE          1
XPTvar $FALSE         0
XPTvar $NULL          NULL
XPTvar $UNDEFINED     NULL
XPTvar $INDENT_HELPER /* void */;
XPTvar $IF_BRACKET_STL \n

XPTinclude 
      \ _common/common


" ========================= Function and Variables =============================


" ================================= Snippets ===================================
XPTemplateDef 



XPT if hint=(if\ (then)\ (else))
(if [`condition^]
    (`then^)
    `else...{{^(`cursor^)`}}^)

XPT when hint=(when\ cond\ ..)
(when (`cond^)
   (`todo0^)` `...^
   (`todon^)` `...^)


XPT unless hint=(unless\ cond\ ..)
(unless (`cond^)
   (`todo0^)` `...^
   (`todon^)` `...^)

