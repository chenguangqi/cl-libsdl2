(in-package #:cl-libsdl2)

(cffi:defcstruct sdl-keysym
  "The SDL keysym structure, used in key events.

If you are looking for translated character input, see the ::SDL_TEXTINPUT event."
  (scancode sdl-scancode)
  (sym sdl-keycode)
  (mod :uint16)
  (unused :uint32))


(cffi:defcfun ("SDL_GetKeyboardFocus" sdl-get-keyboard-focus) :pointer
  "Get the window which currently has keyboard focus.")

(cffi:defcfun ("SDL_GetKeyboardState" sdl-get-keyboard-state) :pointer
    "Get a snapshot of the current state of the keyboard."
    (numkeys :int))
