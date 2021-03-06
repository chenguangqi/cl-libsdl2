(in-package #:cl-libsdl2)

(cffi:defctype sdl-keycode :int32
  "The SDL virtual key representation.

Values of this type are used to represent keyboard keys using the current
layout of the keyboard.  These values include Unicode values representing
the unmodified character that would be generated by pressing the key, or
an SDLK_* constant for those keys that do not generate characters.")
