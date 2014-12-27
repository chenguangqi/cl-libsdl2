(in-package #:cl-libsdl2)


(cffi:defcstruct sdl-color
  (r :uint8)
  (g :uint8)
  (b :uint8)
  (a :uint8))

(cffi:defcstruct sdl-palette
  (ncolors :int)
  (colors :pointer)
  (version :uint32)
  (refcount :int))

(cffi:defcstruct sdl-pixel-format
  "Everything in the pixel format structure is read-only."
  (format :uint32)
  (palette :pointer)
  (bits-per-pixel :uint8)
  (bytes-per-pixel :uint8)
  (rmask :uint32 :offset 12)
  (gmask :uint32)
  (bmask :uint32)
  (rloss :uint8)
  (gloss :uint8)
  (bloss :uint8)
  (aloss :uint8)
  (rshift :uint8)
  (gshift :uint8)
  (bshift :uint8)
  (ashift :uint8)
  (refcount :int)
  (next :pointer))
