;;; -*- Base: 10; Mode: LISP; Syntax: Common-lisp; Lowercase: T -*-
;;;
;;; A minimal keyboard mapping example (without keypad)
;;;
;;; This is tested with Xmanager on Windows 11
;;; with XKEYBOARD extension disabled
;;; with Microsoft US keyboard (104 keys, US ANSI)
;;; 
;;; This is run on UNIX host after login before running genera
;;; xmodmap -e "keycode 81 = Menu"

(x-screen:define-keyboard-signature :min104
  (:keycode-offset 8
   :vendor-name "NetSarang Computer, Inc.")

  (9    :escape               	:escape                 ) 
  (10   :f1                   	:f1                     )
  (11   :f2                   	:f2                     )
  (12   :f3                   	:f3                     )
  (13   :f4                   	:f4                     )
  (14   :f5                   	:f5                     )
  (15   :f6                   	:f6                     )
  (16   :f7                   	:f7                     )
  (17   :f8                   	:f8                     )
  (18   :f9                   	:f9                     )
  (19   :f10                  	:f10                    )
  (20   :f11                  	:f11                    )
  (21   :f12                  	:f12                    )

  (22   :grave-accent         	:tilde                  )
  (23   :digit-one            	:exclamation-point      )  
  (24   :digit-two            	:commercial-at          )
  (25   :digit-three          	:number-sign            )
  (26   :digit-four           	:dollar-sign            )
  (27   :digit-five           	:percent-sign           )
  (28   :digit-six            	:circumflex-accent      )
  (29   :digit-seven          	:ampersand              )
  (30   :digit-eight          	:asterisk               )
  (31   :digit-nine           	:left-parenthesis       )
  (32   :digit-zero           	:right-parenthesis      )
  (33   :hyphen               	:low-line               )
  (34   :equals-sign          	:plus-sign              )
  (35   :backspace            	:backspace              )

  (36   :tab                  	:tab                    )
  (37   :latin-small-letter-q 	:latin-capital-letter-q ) 
  (38   :latin-small-letter-w 	:latin-capital-letter-w )
  (39   :latin-small-letter-e 	:latin-capital-letter-e ) 
  (40   :latin-small-letter-r 	:latin-capital-letter-r ) 
  (41   :latin-small-letter-t 	:latin-capital-letter-t ) 
  (42   :latin-small-letter-y 	:latin-capital-letter-y )
  (43   :latin-small-letter-u 	:latin-capital-letter-u )
  (44   :latin-small-letter-i 	:latin-capital-letter-i )
  (45   :latin-small-letter-o 	:latin-capital-letter-o )
  (46   :latin-small-letter-p 	:latin-capital-letter-p )
  (47   :right-square-bracket 	:right-curly-bracket    )
  (48   :left-square-bracket  	:left-curly-bracket     )
  (49   :reverse-solidus      	:vertical-line          )

  (50   :caps-lock            	:caps-lock              )
  (51   :latin-small-letter-a 	:latin-capital-letter-a ) 
  (52   :latin-small-letter-s 	:latin-capital-letter-s )
  (53   :latin-small-letter-d 	:latin-capital-letter-d ) 
  (54   :latin-small-letter-f 	:latin-capital-letter-f ) 
  (55   :latin-small-letter-g 	:latin-capital-letter-g ) 
  (56   :latin-small-letter-h 	:latin-capital-letter-h )
  (57   :latin-small-letter-j 	:latin-capital-letter-j )
  (58   :latin-small-letter-k 	:latin-capital-letter-k )
  (59   :latin-small-letter-l 	:latin-capital-letter-l )
  (60   :semicolon            	:colon                  )
  (61   :apostrophe           	:quotation-mark         )
  (62   :return               	:return                 )

  (63   :left-shift           	:left-shift             )
  (64   :latin-small-letter-z 	:latin-capital-letter-z ) 
  (65   :latin-small-letter-x 	:latin-capital-letter-x )
  (66   :latin-small-letter-c 	:latin-capital-letter-c ) 
  (67   :latin-small-letter-v 	:latin-capital-letter-v ) 
  (68   :latin-small-letter-b 	:latin-capital-letter-b ) 
  (69	:latin-small-letter-n 	:latin-capital-letter-n )
  (70   :latin-small-letter-m 	:latin-capital-letter-m )
  (71   :comma                	:less-than-sign         )
  (72   :full-stop            	:greater-than-sign      )
  (73   :solidus              	:question-mark          )
  (74   :right-shift          	:right-shift            )

  (75   :left-control         	:left-control           )
  (76   :left-super		:left-super             ) ; win
  (77   :left-alt             	:left-alt               )
  (78   :space                	:space                  )
  (79   :right-alt           	:right-alt              )
  (80   :right-super         	:right-super            ) ; win
  (81   :menu			:menu            	) ; menu
  (82   :right-control       	:right-control          )

  (83   :print                	:print			) ; print screen
  (84   :scroll-lock            :scroll-lock            ) ; scroll lock
  (85   :pause                 	:pause                  ) ; pause
  (86   :insert               	:insert                 )
  (87   :home                 	:home                   )
  (88   :prior                	:prior                  ) ; page up
  (89  	:delete               	:delete                 )
  (90  	:end                  	:end                    )
  (91  	:next                 	:next                   ) ; page down
  (92   :up                   	:up                     )
  (93  	:left                 	:left                   )
  (94	:down                 	:down                   )
  (95	:right                	:right                  )

)

(x-screen:define-keyboard-mapping :min104 () 

  (:f1 #\Select #\Square)
  (:f2 #\Network #\Circle)
  (:f3 #\Function #\Triangle)
  (:f4 #\Suspend (:mode-lock :locking t))

  (:f5 #\Resume)
  (:f6 #\Abort)
  (:f7 #\Complete)
  (:f8 #\Page)

  (:f9 #\Page)
  (:f10 #\Refresh)
  (:f11 :left-hyper)
  (:f12 :right-hyper)

  (:insert  #\Help)
  (:home    #\Clear-Input)
  (:end     #\End)
  (:prior   #\Keyboard:Back-Scroll)
  (:next    #\Scroll)

  (:up      #\Keyboard:Up)
  (:left    #\Keyboard:Left)
  (:right   #\Keyboard:Right)
  (:down    #\Keyboard:Down)

  (:menu :right-symbol)

)

; empty table
; not sure if this is needed other than layout shape
(defparameter
  *default-min104-keyboard-mapping-table*
  (sys:make-keyboard-table
    '()))

; empty layout shape, 
; not sure if this is needed other than layout shape
(sys:define-keyboard-layout :min104
  (:pretty-name "min104")
  (:default-mapping-table *default-min104-keyboard-mapping-table*)
  (:numeric-id #xFFFFFFFF)
)

; map ESC to Line
; esc is 9
(sys:set-keyboard-table-mapping #\Line 		:min104 1 :all-shifts t)

; map Backspace to Rubout
; backspace is 35
(sys:set-keyboard-table-mapping #\Rubout 	:min104 27 :all-shifts t)

; use this to map Delete
; delete is 89
;(sys:set-keyboard-table-mapping #\Line		:min104 81 :all-shifts t)
