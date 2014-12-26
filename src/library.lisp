(in-package #:cl-libsdl2)

(define-foreign-library libsdl2
  (:darwin (:or (:framework "SDL2") (:default "libSDL2")))
  (:unix (:or "libSDL2-2.0.so.0" "libSDL2"))
  (:windows "SDL2.dll")
  (t (:default "libSDL2")))

(use-foreign-library libsdl2)
