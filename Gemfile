source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem "rails", "~> 5.0.1"
gem "pg", "~> 0.18"
gem "puma", "~> 3.0"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "kaminari"
gem "devise"
gem "redis", "~> 3.0"
gem "paperclip", "~> 5.0.0"
gem "aws-sdk", "~> 2"
gem "bootstrap-sass", "~> 3.3.6"
gem "font-awesome-sass", "~> 4.7.0"

group :development, :test do
  gem "dotenv-rails"
  gem "byebug", platform: :mri
  gem "ffaker"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", "~> 3.0.5"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
