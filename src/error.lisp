(in-package #:cl-libsdl2)


;extern DECLSPEC int SDLCALL SDL_SetError(const char *fmt, ...);

(cffi:defcfun ("SDL_GetError" sdl-get-error) :string)

(cffi:defcfun ("SDL_ClearError" sdl-clear-error) :void)
