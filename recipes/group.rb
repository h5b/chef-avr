# group "dialout" to permit access to serial
group "dialout" do
  action :modify
  members "vagrant"
  append true
end
