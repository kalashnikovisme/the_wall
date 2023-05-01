if Rails.env.production?
  AssetSync.configure do |config|
    config.fog_provider = 'AWS'
    config.aws_access_key_id = ENV.fetch('DO_SPACES_KEY')
    config.aws_secret_access_key = ENV.fetch('DO_SPACES_SECRET')
    config.fog_directory = ENV.fetch('DO_SPACES_BUCKET')
    config.fog_options = {
      endpoint: "https://#{ENV['DO_SPACES_REGION']}.digitaloceanspaces.com"
    }
    config.fog_region = ENV['DO_SPACES_REGION']
  end
end
