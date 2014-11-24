Rails.application.config.assets.version = '1.2'
Rails.application.config.assets.precompile += [ /\w+\.(?!css).+/, /\w+\.js$/ ]
