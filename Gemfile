source 'https://rubygems.org'

gem 'rails', '3.2.13'
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem "mongoid", ">= 3.1.2"
gem "haml-rails", ">= 0.4"
gem "html2haml", ">= 1.0.1", :group => :development
gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
gem "mongoid-rspec", ">= 1.7.0", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "bootstrap-sass", ">= 2.3.0.0"
gem "devise", ">= 2.2.3"
gem "simple_form", ">= 2.1.0"
gem 'oauth2', git: 'git://github.com/rainux/oauth2'
gem 'tencent-weibo', git: 'git://github.com/rainux/tencent-weibo'
gem 'figaro', '>= 0.6.3'

group :development do
  gem 'pry-rails'
  gem 'pry-debugger'
  gem 'pry-stack_explorer'
  gem 'pry-nav'
  gem 'quiet_assets', '>= 1.0.1'
  gem 'better_errors', '>= 0.3.2'
  gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
  gem 'capistrano', require: nil
  gem 'capistrano_colors', require: nil
  gem 'rvm-capistrano', require: nil
end

group :production do
  gem 'unicorn', '>= 4.3.1'
end