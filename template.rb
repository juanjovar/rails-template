# Gemfile
gem_group :development, :test do
  gem 'rspec-rails', '~> 6.0'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'faker'
  gem 'factory_bot_rails'
end

# Instala las gemas
run 'bundle install'

# Instala RSpec
generate 'rspec:install'

# Crea las carpetas
create_file 'config/env.rb'
create_file 'config/browser_config.rb'
create_file 'config/credentials.yml'
create_file 'config/data.yml'

create_file 'spec/support/helpers.rb'
create_file 'spec/support/hooks.rb'

create_file 'spec/support/page_objects/login_page.rb'
create_file 'spec/support/page_objects/home_page.rb'

create_file 'spec/tests/login_spec.rb'
create_file 'spec/tests/checkout_spec.rb'

create_file 'logs/test_run.log'

create_file 'reports/results.html'

puts "Proyecto creado y configurado exitosamente."