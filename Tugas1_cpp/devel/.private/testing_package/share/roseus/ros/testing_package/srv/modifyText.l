;; Auto-generated. Do not edit!


(when (boundp 'testing_package::modifyText)
  (if (not (find-package "TESTING_PACKAGE"))
    (make-package "TESTING_PACKAGE"))
  (shadow 'modifyText (find-package "TESTING_PACKAGE")))
(unless (find-package "TESTING_PACKAGE::MODIFYTEXT")
  (make-package "TESTING_PACKAGE::MODIFYTEXT"))
(unless (find-package "TESTING_PACKAGE::MODIFYTEXTREQUEST")
  (make-package "TESTING_PACKAGE::MODIFYTEXTREQUEST"))
(unless (find-package "TESTING_PACKAGE::MODIFYTEXTRESPONSE")
  (make-package "TESTING_PACKAGE::MODIFYTEXTRESPONSE"))

(in-package "ROS")





(defclass testing_package::modifyTextRequest
  :super ros::object
  :slots (_inputString ))

(defmethod testing_package::modifyTextRequest
  (:init
   (&key
    ((:inputString __inputString) "")
    )
   (send-super :init)
   (setq _inputString (string __inputString))
   self)
  (:inputString
   (&optional __inputString)
   (if __inputString (setq _inputString __inputString)) _inputString)
  (:serialization-length
   ()
   (+
    ;; string _inputString
    4 (length _inputString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _inputString
       (write-long (length _inputString) s) (princ _inputString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _inputString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _inputString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass testing_package::modifyTextResponse
  :super ros::object
  :slots (_modifiedString ))

(defmethod testing_package::modifyTextResponse
  (:init
   (&key
    ((:modifiedString __modifiedString) "")
    )
   (send-super :init)
   (setq _modifiedString (string __modifiedString))
   self)
  (:modifiedString
   (&optional __modifiedString)
   (if __modifiedString (setq _modifiedString __modifiedString)) _modifiedString)
  (:serialization-length
   ()
   (+
    ;; string _modifiedString
    4 (length _modifiedString)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _modifiedString
       (write-long (length _modifiedString) s) (princ _modifiedString s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _modifiedString
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _modifiedString (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass testing_package::modifyText
  :super ros::object
  :slots ())

(setf (get testing_package::modifyText :md5sum-) "2ea50b9bce33ae6fad63d90c193917b0")
(setf (get testing_package::modifyText :datatype-) "testing_package/modifyText")
(setf (get testing_package::modifyText :request) testing_package::modifyTextRequest)
(setf (get testing_package::modifyText :response) testing_package::modifyTextResponse)

(defmethod testing_package::modifyTextRequest
  (:response () (instance testing_package::modifyTextResponse :init)))

(setf (get testing_package::modifyTextRequest :md5sum-) "2ea50b9bce33ae6fad63d90c193917b0")
(setf (get testing_package::modifyTextRequest :datatype-) "testing_package/modifyTextRequest")
(setf (get testing_package::modifyTextRequest :definition-)
      "#request
string inputString
---
#response
string modifiedString

")

(setf (get testing_package::modifyTextResponse :md5sum-) "2ea50b9bce33ae6fad63d90c193917b0")
(setf (get testing_package::modifyTextResponse :datatype-) "testing_package/modifyTextResponse")
(setf (get testing_package::modifyTextResponse :definition-)
      "#request
string inputString
---
#response
string modifiedString

")



(provide :testing_package/modifyText "2ea50b9bce33ae6fad63d90c193917b0")


