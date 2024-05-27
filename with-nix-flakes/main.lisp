(defpackage :lisp-webserver
  (:nicknames :lisp-webserver/main)
  (:use :cl)
  (:export :main))

(in-package #lisp-webserver/main)

(defun main (&rest args)
  (format T "Hello, world..."))
