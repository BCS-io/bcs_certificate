#
# Cookbook Name:: bcs_certificate
# Recipe:: default
#
# Copyright (C) 2014 Richard Wigley
#
# All rights reserved - Do Not Redistribute
#
# include_recipe 'certificate::default'

include_recipe 'certificate::manage_by_attributes'

# user "deployer" do
# end

certificate_manage Chef::Config[:node_name] do
  # owner "deployer"
  # group "deployer"
end


