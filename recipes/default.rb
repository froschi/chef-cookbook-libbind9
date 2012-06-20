packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libbind9-60
  /
when "precise"
  packages |= %w/
    libbind9-80
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
