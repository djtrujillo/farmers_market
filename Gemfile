source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'webpacker'
gem 'responders'
gem 'database_cleaner'
gem 'shoulda-matchers'
gem 'bootstrap'
gem 'omniauth-google-oauth2'
gem 'figaro'
gem 'carrierwave', '~> 1.0'
gem 'mini_magick'
gem 'jquery-rails'


gem 'bcrypt', '~> 3.1.7'



group :development, :test do
  gem "pry"
  gem "rspec-rails"
  gem "factory_girl"
  gem "capybara"
  gem "launchy"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
