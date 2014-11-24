Rails.application.config.assets.version = '1.1'
Rails.application.config.assets.precompile += [ /\w+\.(?!css).+/, /\w+\.js$/ ]
