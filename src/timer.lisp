(in-package #:cl-libsdl2)

(defcfun ("SDL_GetTicks" sdl-get-ticks) :uint32
  "/**
 * \brief Get the number of milliseconds since the SDL library initialization.
 *
 * \note This value wraps if the program runs for more than ~49 days.
 */
extern DECLSPEC Uint32 SDLCALL SDL_GetTicks(void);")

(defcfun ("SDL_Delay" sdl-delay) :void
  "/**
 * \brief Wait a specified number of milliseconds before returning.
 */
extern DECLSPEC void SDLCALL SDL_Delay(Uint32 ms);"
  (ms :uint32))
