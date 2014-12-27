(in-package #:cl-libsdl2)

(defctype sdl-blit-map :pointer)

(defcstruct sdl-surface
  "A collection of pixels used in software blitting."
  (flags :uint32)
  (format (:pointer (:struct sdl-pixel-format)))
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

(defcfun ("SDL_LoadBMP_RW" sdl-load-bmp-rw) :pointer
  "Load a surface from a seekable SDL data stream (memory or file)."
  (src :pointer)
  (freesrc :int))

(defun sdl-load-bmp (file)
  "Load a surface from a file."
  (cffi:with-foreign-string (mode "rb")
    (sdl-load-bmp-rw (sdl-rw-from-file file mode) 1)))

(defcfun ("SDL_FreeSurface" sdl-free-surface) :void
  (surface :pointer))


