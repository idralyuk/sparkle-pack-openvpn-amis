# sparkle-pack-openvpn-amis
SparklePack for Offical OpenVPN AMIs

## Use Cases
This SparklePack provides mappings for official [OpenVPN AMIs](https://aws.amazon.com/marketplace/pp/B00MI40CAE/) in all regions. It is modeled on [sparkle-pack-aws-amis](https://github.com/reverseskate/sparkle-pack-aws-amis). Currently only includes the BYOL (Bring Your Own License) AMIs.

## Usage
Add the pack to your Gemfile and .sfn:

Gemfile:
```ruby
source 'https://rubygems.org'

gem 'sfn'
gem 'sparkle-pack-openvpn-amis', git: 'https://github.com/idralyuk/sparkle-pack-openvpn-amis'
```

.sfn:
```ruby
Configuration.new do
  sparkle_pack [ 'sparkle-pack-openvpn-amis' ]
  ...
end
```

In a SparkleFormation Template/Component/Dynamic:
```ruby
registry!(:openvpn_amis, :name)

resources do
  ec2_instance do
  type 'AWS::EC2::Instance'
  properties do
    image_id map!(:openvpn_amis, region!)
    ...
  end
end
```
