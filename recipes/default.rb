#
# Cookbook Name:: bcs_certificate
# Recipe:: default
#
# Copyright (C) 2014 Richard Wigley
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'certificate::manage_by_attributes'

# user "deployer" do
# end

certificate_manage 'logstash_ssl' do
  key_file 'ssl_key.key'
  cert_file 'ssl_certificate.crt'
  # owner "deployer"
  # group "deployer"
end


