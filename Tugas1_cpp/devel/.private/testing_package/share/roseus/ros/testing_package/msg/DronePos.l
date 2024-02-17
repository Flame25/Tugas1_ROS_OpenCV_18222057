;; Auto-generated. Do not edit!


(when (boundp 'testing_package::DronePos)
  (if (not (find-package "TESTING_PACKAGE"))
    (make-package "TESTING_PACKAGE"))
  (shadow 'DronePos (find-package "TESTING_PACKAGE")))
(unless (find-package "TESTING_PACKAGE::DRONEPOS")
  (make-package "TESTING_PACKAGE::DRONEPOS"))

(in-package "ROS")
;;//! \htmlinclude DronePos.msg.html


(defclass testing_package::DronePos
  :super ros::object
  :slots (_x _y _z _status ))

(defmethod testing_package::DronePos
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _status (string __status))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get testing_package::DronePos :md5sum-) "e6a596adc3bf326d53fab1c9d16f722b")
(setf (get testing_package::DronePos :datatype-) "testing_package/DronePos")
(setf (get testing_package::DronePos :definition-)
      "float64   x
float64   y
float64   z
string    status

")



(provide :testing_package/DronePos "e6a596adc3bf326d53fab1c9d16f722b")


