(in-package #:cl-libsdl2)

(defvar *running* nil)
(defvar *window* nil)
(defvar *renderer* nil)
(defvar *texture* nil)

(defun init (title xpos ypos height width flags)
  (sdl-init :everything)
  (setf *window* (sdl-create-window title xpos ypos height width flags))
  (setf *renderer* (sdl-create-renderer *window* -1 :accelerated))
  (let ((surface (sdl-load-bmp "assets/rider.bmp")))
    (when (not (cffi:null-pointer-p surface))
      (print "load bmp successful.")
      (setf *texture* (sdl-create-texture-from-surface *renderer* surface))
      (sdl-free-surface surface)))

  (sdl-set-render-draw-color *renderer* 0 0 0 255))

(defun render ()
  (sdl-render-clear *renderer*)
  (print "display bmp")
  (format t "return ~A" (sdl-render-copy *renderer* *texture* (cffi:null-pointer) (cffi:null-pointer)))
  (sdl-render-present *renderer*))

(defun update ()
  
)

(defun handle-events ()
  (cffi:with-foreign-object (event '(:union sdl-event))
    (when (sdl-poll-event event)
      (cffi:with-foreign-slots ((type) event (:union sdl-event))
	(case (cffi:foreign-enum-keyword 'sdl-event-type type)
	  (:quit (setf *running* nil)))))))

(defun clean ()
  (sdl-destroy-window *window*)
  (sdl-destroy-renderer *renderer*)
  (sdl-destroy-texture *texture*)
  (sdl-quit)
  (setf *window* nil)
  (setf *renderer* nil)
  (setf *texture* nil))

(defun main () 
  (if (init "Chapter 1: Setting up SDL" 0 0 640 480 :shown)
      (setf *running* t))
  (loop
     (when (not *running*)
       (return))
     (handle-events)
     (update)
     (render)
     (sdl-delay 100))
  (clean))

