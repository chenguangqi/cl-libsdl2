(in-package #:cl-libsdl2)

(cffi:defcfun ("SDL_RWFromFile" sdl-rw-from-file) :pointer
  (file :pointer)
  (mode :pointer))
