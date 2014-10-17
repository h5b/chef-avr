Chef::Resource::Group.send(:include, Group::Helper)
group "dialout" do
  action :modify
  members "vagrant"
  append true
  only_if { on_vagrant? }
end
