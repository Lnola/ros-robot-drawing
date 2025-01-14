
(cl:in-package :asdf)

(defsystem "digits-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Segments" :depends-on ("_package_Segments"))
    (:file "_package_Segments" :depends-on ("_package"))
  ))