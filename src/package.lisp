;;;; package.lisp

(defpackage #:cl-libsdl2
  (:use #:cl)
  (:export
   
   ; init
   #:sdl-init
   #:sdl-quit

   ; video
   #:sdl-create-window
   #:sdl-destroy-window
   #:sdl-get-window-surface
   #:sdl-update-window-surface

   ; surface
   #:sdl-load-bmp
   #:sdl-blit-surface
   #:sdl-free-surface

   ; events
   #:sdl-poll-event
   #:sdl-event
   #:sdl-event-type
   #:sdl-keyboard-event
   #:sdl-keycode
   
   ; keycode
   #:sdl-keysym

   ;scancode
   #:sdl-scancode

   ;timer
   #:sdl-delay

   ; error
   #:sdl-get-error))

