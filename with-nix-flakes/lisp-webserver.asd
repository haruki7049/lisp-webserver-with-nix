(asdf:defsystem :lisp-webserver
  :class :package-inferred-system
  :version "0.1.0"
  :author "haruki7049"
  :license "MIT"
  :build-operation "program-op"
  :build-pathname "bin/lisp-webserver"
  :entry-point "lisp-webserver:main"
  :components ((:file "main")))
