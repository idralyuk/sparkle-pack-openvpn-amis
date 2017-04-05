Gem::Specification.new do |s|
  s.name = 'sparkle-pack-openvpn-amis'
  s.version = '0.0.1'
  s.licenses = ['MIT']
  s.summary = 'OpenVPN AMI SparklePack'
  s.description = 'SparklePack to provide mappings for Official OpenVPN AMIs by region'
  s.authors = ['Igor Dralyuk']
  s.email = 'igor@buran.us'
  s.homepage = 'https://github.com/idralyuk'
  s.files = Dir[ 'lib/sparkleformation/registry/*' ] + %w(sparkle-pack-openvpn-amis.gemspec lib/sparkle-pack-openvpn-amis.rb)
  s.add_runtime_dependency 'sparkle_formation'
end
  
