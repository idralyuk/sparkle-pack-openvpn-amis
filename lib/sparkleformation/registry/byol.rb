SfnRegistry.register(:byol_amis) do
  {
    :license => 'byol',
    :amis => {
      'us-east-1' => {
        :hvm => {
          :ebs =>  'ami-0f8bce65'
        }
      },
      'us-west-2' => {
        :hvm => {
          :ebs =>  'ami-e8d67288'
        }
      },
      'us-west-1' => {
        :hvm => {
          :ebs =>  'ami-f898f698'
        }
      },
      'eu-west-1' => {
        :hvm => {
          :ebs =>  'ami-8d16ccfe'
        }
      },
      'eu-central-1' => {
        :hvm => {
          :ebs =>  'ami-ba2230d6'
        }
      },
      'ap-southeast-1' => {
        :hvm => {
          :ebs =>  'ami-788e4f1b'
        }
      },
      'ap-southeast-2' => {
        :hvm => {
          :ebs =>  'ami-b95d04da'
        }
      },
      'ap-northeast-1' => {
        :hvm => {
          :ebs =>  'ami-37092a59'
        }
      },
      'sa-east-1' => {
        :hvm => {
          :ebs =>  'ami-37092a59'
        }
      }
    }
  }
end
