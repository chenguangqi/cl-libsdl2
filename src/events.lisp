(in-package #:cl-libsdl2)

(defcenum sdl-event-type
  "The types of events that can be delivered."
  (:first-event #x0)
  (:quit #x100)
  :app-terminating
  :app-lowmemory
  :app-will-enter-background
  :app-did-enter-background
  :app-will-enter-foreground
  :app-did-enter-foreground
  
  (:window-event #x200)
  :sys-wm-event
  
  (:key-down #x300)
  :key-up
  :text-editing
  :text-input
  
  (:mouse-motion #x400)
  :mouse-button-down
  :mouse-button-up
  :mouse-wheel
  
  (:joy-axis-motion #x600)
  :joy-ball-motion
  :joy-hat-motion
  :joy-button-down
  :joy-button-up
  :joy-device-added
  :joy-device-removed

  (:controller-axis-motion #x650)
  :controller-button-down
  :controller-button-up
  :controller-device-added
  :controller-device-removed
  :controller-device-remapped

  (:finger-down #x700)
  :finger-up
  :finger-motion

  (:dollar-gesture #x800)
  :dollar-record
  :multi-gesture

  (:clipboard-update #x900)

  (:drop-file #x1000)

  (:render-targets-reset #x2000)

  (:user-event #x8000)
  
  (:last-event #xFFFF))



(defcstruct sdl-common-event 
  "Fields shared by every event"
  (type :uint32)
  (timestamp :uint32))

(defcstruct sdl-window-event
  "Window state change event data (event.window.*)"
  (type :uint32)
  (timestamp :uint32)
  (window-id :uint32)
  (event :uint8)
  (data1 :int32 :offset 16)
  (data2 :int32))

(defcstruct sdl-keyboard-event
  "Keyboard button event structure (event.key.*)"
  (type :uint32)
  (timestamp :uint32)
  (window-id :uint32)
  (state :uint8)
  (repeat :uint8)
  (keysym (:struct sdl-keysym) :offset 16))

(defcstruct  sdl-mouse-motion-event
"Mouse motion event structure (event.motion.*)"
    (type :uint32)
    (timestamp :uint32)
    (window-id :uint32)
    (which :uint32)
    (state :uint32)
    (x :int32)
    (y :int32)
    (xrel :int32)
    (yrel :int32))

(defcstruct sdl-mouse-button-event
  "Mouse button event structure (event.button.*)"
    (type :uint32)
    (timestamp :uint32)
    (window-id :uint32)
    (which :uint32)
    (button :uint8)
    (state :uint8)
    (clicks :uint8)
    (x :int32 :offset 20)
    (y :int32))

(defcstruct sdl-mouse-wheel-event 
  "Mouse wheel event structure (event.wheel.*)"
    (type :uint32)
    (timestamp :uint32)
    (window-id :uint32)
    (which :uint32)
    (x :int32)
    (y :int32))

(defcstruct sdl-drop-event
  "An event used to request a file open by the system (event.drop.*)
This event is disabled by default, you can enable it with SDL_EventState()
If you enable this event, you must free the filename in the event."
  (type :uint32)
  (timestamp :uint32)
  (file :string));         /**< The file name, which should be freed with SDL_free() */

(defcstruct sdl-quit-event
  "The \"quit requested\" event"
  (type :uint32)
  (timestamp :uint32))

(defcstruct sdl-user-event
  "A user-defined event type (event.user.*)"
    (type :uint32)
    (timestamp :uint32)
    (window-id :uint32)
    (code :int32)
    (data1 :pointer)
    (data2 :pointer))

(defctype sdl-sys-wm-msg :pointer)

(defcstruct sdl-sys-wm-event
  "A video driver dependent system event (event.syswm.*)
This event is disabled by default, you can enable it with SDL_EventState()

If you want to use this event, you should include SDL_syswm.h."
    (type :uint32)
    (timestamp :uint32)
    (msg sdl-sys-wm-msg))


(defcunion (sdl-event :size 56)
  "General event structure"
  (type :uint32)
  (common (:struct sdl-common-event))
  (window (:struct sdl-window-event))
  (key (:struct sdl-keyboard-event))
  ;(edit text-editing-event)
  ;(text text-input-event)
  (motion (:struct sdl-mouse-motion-event))
  (button (:struct sdl-mouse-button-event))
  (wheel (:struct sdl-mouse-wheel-event))
  ;(jaxis joy-axis-event)
  ;(jball joy-ball-event)
  ;(jhat joy-hat-event)
  ;(jbutton joy-button-event)
  ;(jdevice joy-device-event)
  ;(caxis controller-axis-event)
  ;(cbutton controller-button-event)
  ;(cdevice controller-button-event)
  (quit (:struct sdl-quit-event))
  (user (:struct sdl-user-event))
  (syswm (:struct sdl-sys-wm-event))
  ;(tfinger touch-finger-event)
  ;(mgesture multi-gesture-event)
  ;(dgesture dollar-gesture-event)
  (drop (:struct sdl-drop-event)))


(defcfun ("SDL_PollEvent" sdl-poll-event) :int
  "Polls for currently pending events.
extern DECLSPEC int SDLCALL SDL_PollEvent(SDL_Event * event);"
  (event (:pointer (:union sdl-event))))
