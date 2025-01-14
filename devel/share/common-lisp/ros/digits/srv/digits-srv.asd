
(cl:in-package :asdf)

(defsystem "digits-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Count" :depends-on ("_package_Count"))
    (:file "_package_Count" :depends-on ("_package"))
  ))