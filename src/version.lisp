(in-package #:cl-libsdl2)

(cffi:defcstruct sdl-version
  (major :uint8)
  (minor :uint8)
  (patch :uint8))

;(defconstant +sdl-major-version+ 2)
;(defconstant +sdl-major-version+ 0)
;(defconstant +sdl-patchlevel+    2)

(cffi:defcfun ("SDL_GetVersion" sdl-get-version) :void
  (version (:pointer (:struct sdl-version))))

(cffi:defcfun ("SDL_GetRevision" sdl-get-revision) :string)
(cffi:defcfun ("SDL_GetRevisionNumber" sdl-get-revision-number) :int)
