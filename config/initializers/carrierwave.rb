# OWN
  aws_access_key_id = 'AKIAI4KNS32OYWXXZLTA'
  aws_secret_access_key = '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'
  fog_directory = 'litweaver-staging'

# LW
  # aws_access_key_id = 'AKIAICESD4THNTLACUXA'
  # aws_secret_access_key = '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'
  # fog_directory = 'litweaverstaging1' 


CarrierWave.configure do |config|


  # config.fog_provider = 'fog/aws'               # required
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


=begin

CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => aws_access_key_id,                        # required
    :aws_secret_access_key  => aws_secret_access_key,                        # required
    # :region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
    # :host                   => 's3.example.com',             # optional, defaults to nil
    # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = fog_directory                     # required
  # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end

=end
