(in-package #:cl-libsdl2)

(defcstruct sdl-version
  (major :uint8)
  (minor :uint8)
  (patch :uint8))

;(defconstant +sdl-major-version+ 2)
;(defconstant +sdl-major-version+ 0)
;(defconstant +sdl-patchlevel+    2)

(defcfun ("SDL_GetVersion" sdl-get-version) :void
  (version (:pointer (:struct sdl-version))))

(defcfun ("SDL_GetRevision" sdl-get-revision) :string)
(defcfun ("SDL_GetRevisionNumber" sdl-get-revision-number) :int)
