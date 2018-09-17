;F1键浏览Chrome文献
;F8键停止键入PgDn
;F1键重新开始浏览Chrome文献
;author: Claude
;date: 22 04 2014
; effects:
; search English words
; emacs + English words + Chrome
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; # Win (Windows logo key) 
;; ! Alt 
;; ^ Control 
;; + Shift 
;; &  An ampersand may be used between any two keys 
;;    or mouse buttons to combine them into a custom hotkey.  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

$F8::
  breakvar=0
  return

$F1::
while GetKeyState("F1", "P")  ; While the F1 key is being held down physically.
Sleep 1000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
{
  breakvar=1
  Loop 100
    {
      Sleep 100
      if breakvar = 1
        {
         ;; 1.
         Sleep 1000
         Send, 3
         Sleep 3000
         Send, {Space}
         Sleep 1000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
         Sleep 1000
;         Send {PgDn}
;         Sleep 10000
;         Send {PgDn}
;         Sleep 10000
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; left page
;; 10 seconds, then Down
        }
      else
        {
          break
        }
    }
    breakvar=1
}
;;
return
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;