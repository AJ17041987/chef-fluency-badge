#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
if node["platform_family"] == "rhel"
    package = "httpd"
else
   package="apache2"
end

package package do
	package_name package
	action:install
end

service package do
	service_name package
	action [:enable,:start]
end
