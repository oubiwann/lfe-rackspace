(defmodule lferax-services
  (export all))


(defun get-cloud-servers-v2-endpoints (identity-response)
  (let ((servers-v2 (: dict fetch 'servers-v2 (: lferax-const services))))
    (: openstack-services get-service-endpoints identity-response servers-v2)))

(defun get-cloud-servers-v2-url (identity-response region)
  (binary_to_list
    (car
      (: ej get
        (tuple (tuple 'select (tuple '"region" region)) '"publicURL")
        (get-cloud-servers-v2-endpoints identity-response)))))
