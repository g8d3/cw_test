CarrierWave.configure do |config|

aws_access_key_id = 'AKIAILLZ4GNBN52EWO6A'
aws_secret_access_key = 'KdR/+2WYfmN94qra9KdR/+2WYfmN94qra9p+V7U902k/md6xcb2GcmBbMp+V7U902k/md6xcb2GcmBbM'
fog_directory = 'litweaverstaging1' # This is set on server, but I put here for reference


  config.fog_provider = 'fog/aws'               # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     aws_access_key_id,                        # required
    aws_secret_access_key: aws_secret_access_key,                        # required
    #region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
    #host:                  's3.example.com',             # optional, defaults to nil
    #endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = fog_directory                          # required
  #config.fog_public     = false                                        # optional, defaults to true
  #config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end