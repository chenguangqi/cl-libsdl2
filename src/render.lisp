(in-package #:cl-libsdl2)


(cffi:defbitfield (sdl-renderer-flag :uint32)
  (:software      #x00000001)
  (:accelerated   #x00000002)
  (:presentvsync  #x00000004)
  (:targettexture #x00000008))

(cffi:defctype sdl-renderer :pointer
  "A structure representing rendering state")

(cffi:defctype sdl-texture :pointer
  "An efficient driver-specific representation of pixel data")

(cffi:defcfun ("SDL_CreateRenderer" sdl-create-renderer) :pointer
    "/**
 *  \brief Create a 2D rendering context for a window.
 *
 *  \param window The window where rendering is displayed.
 *  \param index    The index of the rendering driver to initialize, or -1 to
 *                  initialize the first one supporting the requested flags.
 *  \param flags    ::SDL_RendererFlags.
 *
 *  \return A valid rendering context or NULL if there was an error.
 *
 *  \sa SDL_CreateSoftwareRenderer()
 *  \sa SDL_GetRendererInfo()
 *  \sa SDL_DestroyRenderer()
 */
extern DECLSPEC SDL_Renderer * SDLCALL SDL_CreateRenderer(SDL_Window * window,
                                               int index, Uint32 flags);"
  (window :pointer)
  (index :int)
  (flags :uint32))


(cffi:defcfun ("SDL_SetRenderDrawColor" sdl-set-render-draw-color) :int
  "/**
 *  \brief Set the color used for drawing operations (Rect, Line and Clear).
 *
 *  \param renderer The renderer for which drawing color should be set.
 *  \param r The red value used to draw on the rendering target.
 *  \param g The green value used to draw on the rendering target.
 *  \param b The blue value used to draw on the rendering target.
 *  \param a The alpha value used to draw on the rendering target, usually
 *           ::SDL_ALPHA_OPAQUE (255).
 *
 *  \return 0 on success, or -1 on error
 */
extern DECLSPEC int SDLCALL SDL_SetRenderDrawColor(SDL_Renderer * renderer,
                                           Uint8 r, Uint8 g, Uint8 b,
                                           Uint8 a);"
  (renderer :pointer)
  (r :uint8)
  (g :uint8)
  (b :uint8)
  (a :uint8))


(cffi:defcfun ("SDL_RenderClear" sdl-render-Clear) :int
  "/**
 *  \brief Clear the current rendering target with the drawing color
 *
 *  This function clears the entire rendering target, ignoring the viewport.
 *
 *  \return 0 on success, or -1 on error
 */
extern DECLSPEC int SDLCALL SDL_RenderClear(SDL_Renderer * renderer);"
  (renderer :pointer))


(cffi:defcfun ("SDL_RenderPresent" sdl-render-present) :void
  "/**
 *  \brief Update the screen with rendering performed.
 */
extern DECLSPEC void SDLCALL SDL_RenderPresent(SDL_Renderer * renderer);"
  (renderer :pointer))



(cffi:defcfun ("SDL_DestroyTexture" sdl-destroy-texture) :void
  "/**
 *  \brief Destroy the specified texture.
 *
 *  \sa SDL_CreateTexture()
 *  \sa SDL_CreateTextureFromSurface()
 */
extern DECLSPEC void SDLCALL SDL_DestroyTexture(SDL_Texture * texture);"
  (texture :pointer))

(cffi:defcfun ("SDL_DestroyRenderer" sdl-destroy-renderer) :void
  "/**
 *  \brief Destroy the rendering context for a window and free associated
 *         textures.
 *
 *  \sa SDL_CreateRenderer()
 */
extern DECLSPEC void SDLCALL SDL_DestroyRenderer(SDL_Renderer * renderer);"
  (renderer :pointer))


(cffi:defcfun ("SDL_QueryTexture" sdl-query-texture) :int
  "Query the attributes of a texture"
  (texture :pointer)
  (format :pointer)
  (access :pointer)
  (w :pointer)
  (h :pointer))


(cffi:defcfun ("SDL_CreateTextureFromSurface" sdl-create-texture-from-surface) :pointer
  "Create a texture from an existing surface."
  (renderer :pointer)
  (surface :pointer))

(cffi:defcfun ("SDL_RenderCopy" sdl-render-copy) :int
  "Copy a portion of the texture to the current rendering target."
  (renderer :pointer)
  (texture :pointer)
  (src :pointer)
  (dst :pointer))
