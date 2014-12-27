(in-package #:cl-libsdl2)


(defcstruct sdl-color
  (r :uint8)
  (g :uint8)
  (b :uint8)
  (a :uint8))

(defcstruct sdl-palette
  (ncolors :int)
  (colors (:pointer (:struct sdl-color)))
  (version :uint32)
  (refcount :int))

(defcstruct sdl-pixel-format
  "Everything in the pixel format structure is read-only."
  (format :uint32)
  (palette (:pointer (:struct sdl-palette)))
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
