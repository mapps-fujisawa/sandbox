require 'pp';

case node[:platform_version]
when '14.04'
  p node[:platform_version]
when '16.04'
  p node[:platform_version]
end
