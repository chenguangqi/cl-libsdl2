;;;; cl-libsdl2.asd
(asdf:defsystem #:cl-libsdl2
  :description "Describe cl-libsdl2 here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"

  :depends-on (#:cffi)
  :pathname "src"
  :serial t

  :components
  ((:file "package")
   (:file "library")
   (:file "sdl")
   (:file "version")
   (:file "stdinc")
   (:file "video")
   (:file "rect")
   (:file "render")
   (:file "timer")
   (:file "keycode")
   (:file "scancode")
   (:file "keyboard")
   (:file "events")
   (:file "pixel")
   (:file "surface")
   (:file "rwops")
   (:file "error")))
