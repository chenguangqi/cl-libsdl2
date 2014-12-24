(in-package #:cl-libsdl2)

(cffi:defbitfield (sdl-init-flags :uint32)
  (:timer          #x00000001)
  (:audio          #x00000010)
  (:video          #x00000020)
  (:joystick       #x00000200)
  (:haptic         #x00001000)
  (:gamecontroller #x00002000)
  (:events         #x00004000)
  (:noparachute    #x00100000)
  (:everything     #x00007231))


(cffi:defcfun ("SDL_Init" sdl-init) :int
  (flags sdl-init-flags))

(cffi:defcfun ("SDL_InitSubSystem" sdl-init-subsystem) :int
  (flags sdl-init-flags))

(cffi:defcfun ("SDL_WasInit" sdl-was-init) sdl-init-flags
  (flags sdl-init-flags))

(cffi:defcfun ("SDL_Quit" sdl-quit) :void
  "quit sdl system.")
