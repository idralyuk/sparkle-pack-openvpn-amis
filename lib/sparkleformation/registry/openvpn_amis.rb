SfnRegistry.register(:openvpn_amis) do |_name, _config = {}|

  virt = _config.fetch(:virt, 'hvm').to_sym
  type = _config.fetch(:type, 'ebs').to_sym
  license_types = _config.fetch(:license_types, ['byol'])

  ami_hash = {}

  license_types.each do |license|
    ami_hash[license] = registry!("#{license}_amis".to_sym)
  end

  ami_hash.each do |license, info|
    info[:amis].each do |region, ids|
      mappings do
        openvpn_amis do
          camel_keys_set!(:auto_disable)
          set!(region) do
            set!(info[:license], ids[virt][type])
          end
        end
      end
    end
  end
end
