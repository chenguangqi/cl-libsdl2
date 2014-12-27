(in-package #:cl-libsdl2)

(defcstruct sdl-point
  "The structure that defines a point"
  (x :int)
  (y :int))

(defcstruct sdl-rect
  "A rectangle, with the origin at the upper left."
  (x :int)
  (y :int)
  (w :int)
  (h :int))

