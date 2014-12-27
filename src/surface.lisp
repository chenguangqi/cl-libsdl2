(in-package #:cl-libsdl2)

(cffi:defctype sdl-blit-map :pointer)

(cffi:defcstruct sdl-surface
  "A collection of pixels used in software blitting."
  (flags :uint32)
  (format :pointer)
  (w :int)
  (h :int)
  (pitch :int)
  (pixels :pointer)

  (userdata :pointer)
  
  (locked :int)
  (lock-data :pointer)
  
  (clip-rect (:struct sdl-rect))
  (map sdl-blit-map)

  (refcount :int))

(cffi:defcfun ("SDL_LoadBMP_RW" sdl-load-bmp-rw) :pointer
  "Load a surface from a seekable SDL data stream (memory or file)."
  (src :pointer)
  (freesrc :int))

(defun sdl-load-bmp (file)
  "Load a surface from a file."
  (sdl-load-bmp-rw (sdl-rw-from-file file "rb") 1))

(cffi:defcfun ("SDL_FreeSurface" sdl-free-surface) :void
  (surface :pointer))


