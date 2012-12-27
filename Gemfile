#source :rubygems

#gem 'rake', '~>0.9'

#chiliproject_file = File.dirname(__FILE__) + "/lib/chili_project.rb"
#chiliproject = File.file?(chiliproject_file)

#deps = Hash.new
#@dependencies.map{|dep| deps[dep.name] = dep }
#rails3 = Gem::Dependency.new('rails', '~>3.0')
#RAILS_VERSION_IS_3 = rails3 =~ deps['rails']

gem "holidays", "=1.0.3"
gem "icalendar"
gem "nokogiri"
gem "prawn"
gem 'json'
#gem "system_timer" if RUBY_VERSION =~ /^1\.8\./ && RUBY_PLATFORM =~ /darwin|linux/
gem "open-uri-cached"

#group :development do
#  gem "inifile"
#end

group :test do
  gem 'chronic'
  gem 'ZenTest', "=4.5.0" # 4.6.0 has a nasty bug that breaks autotest
  gem 'autotest-rails'
  gem 'capybara'
  gem 'cucumber-rails'
  gem "culerity"
  gem "database_cleaner"
  gem "gherkin", "=2.6.8"
  #gem 'hoe', '1.5.1'
  gem "poltergeist", "~>0.6.0"
  gem "rspec", '~>2.11.0'
  gem "rspec-rails", '~> 2.11.0'
  gem "simplecov", "~>0.6"
  gem "ruby-prof", :platforms => [:ruby]
  gem "spork"
  # This version of test-unit conflicts with version used in redmine
  #gem "test-unit", "=1.2.3" if RUBY_VERSION >= "1.9"
  gem "test-unit", :platforms => [:mri_19]
  gem "timecop", '~> 0.3.5'
end

## moved out of the dev group so backlogs can be tested by the user after install. Too many issues of weird setups with apache, nginx, etc.
## thin doesn't work for jruby
#gem "thin", :platforms => [:ruby]
