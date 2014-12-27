(in-package #:cl-libsdl2)

(defcstruct sdl-keysym
  "The SDL keysym structure, used in key events.

If you are looking for translated character input, see the ::SDL_TEXTINPUT event."
  (scancode sdl-scancode)
  (sym sdl-keycode)
  (mod :uint16)
  (unused :uint32))
