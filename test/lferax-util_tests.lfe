(defmodule lferax-util_tests
  (export all)
  (import
    (from lfeunit-util
          (check-failed-assert 2)
          (check-wrong-assert-exception 2))
    (from lfeunit
          (assert 1)
          (assert-not 1)
          (assert-equal 2)
          (assert-not-equal 2)
          (assert-exception 3)
          (assert-error 2)
          (assert-throw 2)
          (assert-exit 2))))


; All the code that was in here was either moved into lfe-openstack or
; lfe-utils. Keeping the file for now, in case we create some Rackspace-specific
; utility functions.
(defun noop ()
  )


