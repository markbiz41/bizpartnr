CarrierWave.configure do |config|
  if Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  elsif Rails.env.development?
    config.storage = :file
  else
    config.storage = :fog
    config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAJQEEKMNT3QGMP2IA',                        # required
      aws_secret_access_key: '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',                        # required
    }
    config.fog_directory  = 'bizpartnr'                          # require
  end
end
