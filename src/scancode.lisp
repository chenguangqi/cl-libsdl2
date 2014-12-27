(in-package #:cl-libsdl2)

(defcenum sdl-scancode
  "The SDL keyboard scancode representation.

Values of this type are used to represent keyboard keys, among other places
in the \link SDL_Keysym::scancode key.keysym.scancode \endlink field of the
SDL_Event structure.

The values in this enumeration are based on the USB usage page standard:
http://www.usb.org/developers/devclass_docs/Hut1_12v2.pdf"
  (:scancode-unknown 0)
  (:scancode-a 4)
  (:scancode-b 5)
  (:scancode-c 6)
  (:scancode-d 7)
  (:scancode-e 8)
  (:scancode-f 9)
  (:scancode-g 10)
  (:scancode-h 11)
  (:scancode-i 12)
  (:scancode-j 13)
  (:scancode-k 14)
  (:scancode-l 15)
  (:scancode-m 16)
  (:scancode-n 17)
  (:scancode-o 18)
  (:scancode-p 19)
  (:scancode-q 20)
  (:scancode-r 21)
  (:scancode-s 22)
  (:scancode-t 23)
  (:scancode-u 24)
  (:scancode-v 25)
  (:scancode-w 26)
  (:scancode-x 27)
  (:scancode-y 28)
  (:scancode-z 29)
  (:scancode-1 30)
  (:scancode-2 31)
  (:scancode-3 32)
  (:scancode-4 33)
  (:scancode-5 34)
  (:scancode-6 35)
  (:scancode-7 36)
  (:scancode-8 37)
  (:scancode-9 38)
  (:scancode-0 39)
  (:scancode-return 40)
  (:scancode-escape 41)
  (:scancode-backspace 42)
  (:scancode-tab 43)
  (:scancode-space 44)
  (:scancode-minus 45)
  (:scancode-equals 46)
  (:scancode-leftbracket 47)
  (:scancode-rightbracket 48)
  (:scancode-backslash 49)
  (:scancode-nonushash 50)
  (:scancode-semicolon 51)
  (:scancode-apostrophe 52)
  (:scancode-grave 53)
  (:scancode-comma 54)
  (:scancode-period 55)
  (:scancode-slash 56)
  (:scancode-capslock 57)
  (:scancode-f1 58)
  (:scancode-f2 59)
  (:scancode-f3 60)
  (:scancode-f4 61)
  (:scancode-f5 62)
  (:scancode-f6 63)
  (:scancode-f7 64)
  (:scancode-f8 65)
  (:scancode-f9 66)
  (:scancode-f10 67)
  (:scancode-f11 68)
  (:scancode-f12 69)
  (:scancode-printscreen 70)
  (:scancode-scrolllock 71)
  (:scancode-pause 72)
  (:scancode-insert 73)
  (:scancode-home 74)
  (:scancode-pageup 75)
  (:scancode-delete 76)
  (:scancode-end 77)
  (:scancode-pagedown 78)
  (:scancode-right 79)
  (:scancode-left 80)
  (:scancode-down 81)
  (:scancode-up 82)
  (:scancode-numlockclear 83)
  (:scancode-kp-divide 84)
  (:scancode-kp-multiply 85)
  (:scancode-kp-minus 86)
  (:scancode-kp-plus 87)
  (:scancode-kp-enter 88)
  (:scancode-kp-1 89)
  (:scancode-kp-2 90)
  (:scancode-kp-3 91)
  (:scancode-kp-4 92)
  (:scancode-kp-5 93)
  (:scancode-kp-6 94)
  (:scancode-kp-7 95)
  (:scancode-kp-8 96)
  (:scancode-kp-9 97)
  (:scancode-kp-0 98)
  (:scancode-kp-period 99)
  (:scancode-nonusbackslash 100)
  (:scancode-application 101)
  (:scancode-power 102)
  (:scancode-kp-equals 103)
  (:scancode-f13 104)
  (:scancode-f14 105)
  (:scancode-f15 106)
  (:scancode-f16 107)
  (:scancode-f17 108)
  (:scancode-f18 109)
  (:scancode-f19 110)
  (:scancode-f20 111)
  (:scancode-f21 112)
  (:scancode-f22 113)
  (:scancode-f23 114)
  (:scancode-f24 115)
  (:scancode-execute 116)
  (:scancode-help 117)
  (:scancode-menu 118)
  (:scancode-select 119)
  (:scancode-stop 120)
  (:scancode-again 121)
  (:scancode-undo 122)
  (:scancode-cut 123)
  (:scancode-copy 124)
  (:scancode-paste 125)
  (:scancode-find 126)
  (:scancode-mute 127)
  (:scancode-volumeup 128)
  (:scancode-volumedown 129)
					;(:scancode-lockingcapslock 130)
					;(:scancode-lockingnumlock 131)
					;(:scancode-lockingscrolllock 132)
  (:scancode-kp-comma 133)
  (:scancode-kp-equalsas400 134)
  (:scancode-international1 135)
  (:scancode-international2 136)
  (:scancode-international3 137)
  (:scancode-international4 138)
  (:scancode-international5 139)
  (:scancode-international6 140)
  (:scancode-international7 141)
  (:scancode-international8 142)
  (:scancode-international9 143)
  (:scancode-lang1 144)
  (:scancode-lang2 145)
  (:scancode-lang3 146)
  (:scancode-lang4 147)
  (:scancode-lang5 148)
  (:scancode-lang6 149)
  (:scancode-lang7 150)
  (:scancode-lang8 151)
  (:scancode-lang9 152)
  (:scancode-alterase 153)
  (:scancode-sysreq 154)
  (:scancode-cancel 155)
  (:scancode-clear 156)
  (:scancode-prior 157)
  (:scancode-return2 158)
  (:scancode-separator 159)
  (:scancode-out 160)
  (:scancode-oper 161)
  (:scancode-clearagain 162)
  (:scancode-crsel 163)
  (:scancode-exsel 164)

  (:scancode-kp-00 176)
  (:scancode-kp-000 177)
  (:scancode-thousandsseparator 178)
  (:scancode-decimalseparator 179)
  (:scancode-currencyunit 180)
  (:scancode-currencysubunit 181)
  (:scancode-kp-leftparen 182)
  (:scancode-kp-rightparen 183)
  (:scancode-kp-leftbrace 184)
  (:scancode-kp-rightbrace 185)
  (:scancode-kp-tab 186)
  (:scancode-kp-backspace 187)
  (:scancode-kp-a 188)
  (:scancode-kp-b 189)
  (:scancode-kp-c 190)
  (:scancode-kp-d 191)
  (:scancode-kp-e 192)
  (:scancode-kp-f 193)
  (:scancode-kp-xor 194)
  (:scancode-kp-power 195)
  (:scancode-kp-percent 196)
  (:scancode-kp-less 197)
  (:scancode-kp-greater 198)
  (:scancode-kp-ampersand 199)
  (:scancode-kp-dblampersand 200)
  (:scancode-kp-verticalbar 201)
  (:scancode-kp-dblverticalbar 202)
  (:scancode-kp-colon 203)
  (:scancode-kp-hash 204)
  (:scancode-kp-space 205)
  (:scancode-kp-at 206)
  (:scancode-kp-exclam 207)
  (:scancode-kp-memstore 208)
  (:scancode-kp-memrecall 209)
  (:scancode-kp-memclear 210)
  (:scancode-kp-memadd 211)
  (:scancode-kp-memsubtract 212)
  (:scancode-kp-memmultiply 213)
  (:scancode-kp-memdivide 214)
  (:scancode-kp-plusminus 215)
  (:scancode-kp-clear 216)
  (:scancode-kp-clearentry 217)
  (:scancode-kp-binary 218)
  (:scancode-kp-octal 219)
  (:scancode-kp-decimal 220)
  (:scancode-kp-hexadecimal 221)

  (:scancode-lctrl 224)
  (:scancode-lshift 225)
  (:scancode-lalt 226)
  (:scancode-lgui 227)
  (:scancode-rctrl 228)
  (:scancode-rshift 229)
  (:scancode-ralt 230)
  (:scancode-rgui 231)

  (:scancode-mode 257)
  (:scancode-audionext 258)
  (:scancode-audioprev 259)
  (:scancode-audiostop 260)
  (:scancode-audioplay 261)
  (:scancode-audiomute 262)
  (:scancode-mediaselect 263)
  (:scancode-www 264)
  (:scancode-mail 265)
  (:scancode-calculator 266)
  (:scancode-computer 267)
  (:scancode-ac-search 268)
  (:scancode-ac-home 269)
  (:scancode-ac-back 270)
  (:scancode-ac-forward 271)
  (:scancode-ac-stop 272)
  (:scancode-ac-refresh 273)
  (:scancode-ac-bookmarks 274)
  (:scancode-brightnessdown 275)
  (:scancode-brightnessup 276)
  (:scancode-displayswitch 277)
  (:scancode-kbdillumtoggle 278)
  (:scancode-kbdillumdown 279)
  (:scancode-kbdillumup 280)
  (:scancode-eject 281)
  (:scancode-sleep 282)
  (:scancode-app1 283)
  (:scancode-app2 284)

  (:num-scancodes 512))