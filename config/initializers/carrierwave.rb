CarrierWave.configure do |config|
  if Rails.env.test?
    config.storage = :file
    config.enable_processing = false
  elsif Rails.env.development?
    config.storage = :file
  else
    config.storage = :file
  # else
  #   config.storage = :fog
  #   config.fog_credentials = {
  #     provider:              'AWS',                        # required
  #                      # required
  #   }
  #   config.fog_directory  = 'bizpartnr'                          # require
  end
end
