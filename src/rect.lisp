(in-package #:cl-libsdl2)

(cffi:defcstruct sdl-point
  "The structure that defines a point"
  (x :int)
  (y :int))

(cffi:defcstruct sdl-rect
  "A rectangle, with the origin at the upper left."
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(cffi:defcfun ("SDL_HasIntersection"  sdl-has-intersection) sdl-bool
  "Determine whether two rectangles intersect."
  (a :pointer)
  (b :pointer))

(cffi:defcfun ("IntersectRect" sdl-intersect-rect) sdl-bool
  "Calculate the intersection of two rectangles."
  (a :pointer)
  (b :pointer)
  (result :pointer))

(cffi:defcfun ("SDL_UnionRect" sdl-union-rect) :void
  "Calculate the union of two rectangles."
  (a :pointer)
  (b :pointer)
  (result :pointer))

(cffi:defcfun ("SDL_EnclosePoints" sdl-enclose-points) sdl-bool
  "Calculate a minimal rectangle enclosing a set of points"
  (points :pointer)
  (count :int)
  (clip :pointer)
  (result :pointer))

(cffi:defcfun ("SDL_IntersectRectAndLine" sdl-intersect-rect-and-line) sdl-bool
  "Calculate the intersection of a rectangle and line segment."
  (rect :pointer)
  (x1 :pointer)
  (y1 :pointer)
  (x2 :pointer)
  (y2 :pointer))
