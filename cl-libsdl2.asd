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
   (:file "cl-libsdl2")))

