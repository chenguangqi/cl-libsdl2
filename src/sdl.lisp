(in-package #:cl-libsdl2)

(defbitfield (sdl-init-flag :uint32)
  (:timer          #x00000001)
  (:audio          #x00000010)
  (:video          #x00000020)
  (:joystick       #x00000200)
  (:haptic         #x00001000)
  (:gamecontroller #x00002000)
  (:events         #x00004000)
  (:noparachute    #x00100000)
  (:everything     #x00007231))


(defcfun ("SDL_Init" sdl-init) :int
  (flags sdl-init-flag))

(defcfun ("SDL_InitSubSystem" sdl-init-subsystem) :int
  (flags sdl-init-flag))

(defcfun ("SDL_QuitSubSystem" sdl-quit-subsystem) :void
  (flags sdl-init-flag))

(defcfun ("SDL_WasInit" sdl-was-init) sdl-init-flag
  (flags sdl-init-flag))

(defcfun ("SDL_Quit" sdl-quit) :void
  "quit sdl system.")
