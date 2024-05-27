(defpackage :lisp-webserver
  (:nicknames :lisp-webserver/main)
  (:use :cl
        :clack)
  (:export :main))

(in-package #:lisp-webserver/main)

(defun main (&rest args)
  (clack:clackup
    (lambda (env)
      (declare (ignore env))
      '(200 (:content-type "text/plain") ("Hello, World!")))
    :port 8080))
