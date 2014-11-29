source 'https://rubygems.org'
ruby '2.1.4'
#ruby-gemset=ooslego

gem 'authem'
gem 'addressable'
gem 'coffee-rails'
gem 'formal'
gem 'haml-rails'
gem 'jquery-rails'
gem 'lego_stock_checker', git: "https://#{ENV.fetch("LSC_TOKEN")}@github.com/tmock12/lego_stock_checker.git"
gem 'little_decorator'
gem 'nokogiri'
gem 'pg'
gem 'phantomjs.rb'
gem 'postrank-uri'
gem 'pry-rails'
gem 'puma'
gem 'rails', '4.1.8'
gem 'sass-rails'
gem 'sucker_punch'
gem 'uglifier'

group :test do
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'cucumber-rails'
  gem 'database_cleaner'
end

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'paratrooper'
end
