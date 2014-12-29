require "itamae/plugin/recipe/nownabe_nginx/version"

node[:nginx] ||= {}

remote_file "/etc/yum.repos.d/nginx.repo" do
  source File.expand_path("../nownabe_nginx/remote_files/nginx.repo", __FILE__)
  owner "root"
  group "root"
  mode "0644"
end

package "nginx"

actions = []
actions << :start unless false == node[:nginx][:start]
actions << :enable unless false == node[:nginx][:enable]
actions << :nothing if actions.empty?

service "nginx" do
  action actions
end
