#
# Cookbook Name:: bcs_certificate
# Recipe:: default
#
# Copyright (C) 2014 Richard Wigley
#
# All rights reserved - Do Not Redistribute
#
# This is just a test. It is used in bcs_logstash
# and bcs_logstash_forwarder.
#
# Installing certificate requires data_bags,
# private key and certificate_manage resource
# reference.
#
certificate_manage 'logstash_ssl' do
  cert_path '/root/ssl'
  key_file 'ssl_key.key'
  cert_file 'ssl_certificate.crt'
  owner 'root'
  group 'root'
end

