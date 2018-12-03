source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "bootsnap", require: false
gem "coffee-rails"
gem "jbuilder"
gem "puma"
gem "rails"
gem "sass-rails"
gem "turbolinks"
gem "uglifier"
gem "mysql2"
gem "config"
gem "simple_form"
gem "bootstrap-sass"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "web-console"
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end

group :production do
  gem "pg"
  gem "fog"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
