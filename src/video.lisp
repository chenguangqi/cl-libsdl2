(in-package #:cl-libsdl2)

(cffi:defctype sdl-window :pointer
  "The type used to identify a window")

(cffi:defbitfield (sdl-window-flag :uint32)
  (:fullscreen         #x00000001)
  (:opengl             #x00000002)    
  (:shown              #x00000004)
  (:hidden             #x00000008)
  (:borderless         #x00000010)
  (:resizable          #x00000020)
  (:minimized          #x00000040)
  (:maximized          #x00000080)
  (:input-grabbed      #x00000100)
  (:input-focus        #x00000200)
  (:mouse-focus        #x00000400)
  (:fullscreen-desktop #x00001001)
  (:foreign            #x00000800)
  (:allow-highdpi      #x00002000))


(cffi:defcfun ("SDL_CreateWindow" sdl-create-window) :pointer
  "Create a window with the specified position, dimensions, and flags.
 *               ::SDL_WINDOW_FULLSCREEN,    ::SDL_WINDOW_OPENGL,
 *               ::SDL_WINDOW_HIDDEN,        ::SDL_WINDOW_BORDERLESS,
 *               ::SDL_WINDOW_RESIZABLE,     ::SDL_WINDOW_MAXIMIZED,
 *               ::SDL_WINDOW_MINIMIZED,     ::SDL_WINDOW_INPUT_GRABBED,
 *               ::SDL_WINDOW_ALLOW_HIGHDPI.
 *

extern DECLSPEC SDL_Window * SDLCALL SDL_CreateWindow(const char *title,
                                                      int x, int y, int w,
                                                      int h, Uint32 flags);"
  (title :pointer)
  (x     :int)
  (y     :int)
  (w     :int)
  (h     :int)
  (flags :uint32))

(cffi:defcfun ("SDL_DestroyWindow" sdl-destroy-window) :void
  "Destroy a window."
  (window :pointer))
