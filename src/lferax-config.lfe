(defmodule lferax-config
  (export all))

(defun open ()
  (: openstack-config open
    (: lferax-const config-file)))

(defun get-value (key)
  (: openstack-config open
     (: lferax-const config-file))
  (: openstack-config get-value
     (: lferax-const config-provider) key))

(defun get-username ()
  (get-value '"username"))

(defun get-password ()
  (get-value '"password"))

(defun get-apikey ()
  (get-value '"apikey"))

(defun get-auth-url ()
  (get-value '"auth-url"))
