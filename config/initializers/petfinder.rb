Petfinder.configure do |config|
        config.api_key = ENV["PETFINDER_KEY"]
        config.api_secret = ENV["SECRET_KEY"] # not needed yet, do not use
      end
