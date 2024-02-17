;; Auto-generated. Do not edit!


(when (boundp 'testing_package::Land)
  (if (not (find-package "TESTING_PACKAGE"))
    (make-package "TESTING_PACKAGE"))
  (shadow 'Land (find-package "TESTING_PACKAGE")))
(unless (find-package "TESTING_PACKAGE::LAND")
  (make-package "TESTING_PACKAGE::LAND"))
(unless (find-package "TESTING_PACKAGE::LANDREQUEST")
  (make-package "TESTING_PACKAGE::LANDREQUEST"))
(unless (find-package "TESTING_PACKAGE::LANDRESPONSE")
  (make-package "TESTING_PACKAGE::LANDRESPONSE"))

(in-package "ROS")





(defclass testing_package::LandRequest
  :super ros::object
  :slots (_command ))

(defmethod testing_package::LandRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass testing_package::LandResponse
  :super ros::object
  :slots (_response ))

(defmethod testing_package::LandResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass testing_package::Land
  :super ros::object
  :slots ())

(setf (get testing_package::Land :md5sum-) "22c7c465d64c7e74c6ae22029c7ca150")
(setf (get testing_package::Land :datatype-) "testing_package/Land")
(setf (get testing_package::Land :request) testing_package::LandRequest)
(setf (get testing_package::Land :response) testing_package::LandResponse)

(defmethod testing_package::LandRequest
  (:response () (instance testing_package::LandResponse :init)))

(setf (get testing_package::LandRequest :md5sum-) "22c7c465d64c7e74c6ae22029c7ca150")
(setf (get testing_package::LandRequest :datatype-) "testing_package/LandRequest")
(setf (get testing_package::LandRequest :definition-)
      "string    command
---
string    response

")

(setf (get testing_package::LandResponse :md5sum-) "22c7c465d64c7e74c6ae22029c7ca150")
(setf (get testing_package::LandResponse :datatype-) "testing_package/LandResponse")
(setf (get testing_package::LandResponse :definition-)
      "string    command
---
string    response

")



(provide :testing_package/Land "22c7c465d64c7e74c6ae22029c7ca150")


