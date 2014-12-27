(in-package #:cl-libsdl2)

(defcfun ("SDL_RWFromFile" sdl-rw-from-file) :pointer
  (file :string)
  (mode (:pointer :char)))
