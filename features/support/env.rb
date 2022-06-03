begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'capybara-screenshot/cucumber'

#Login Settings
ENV['USERStart']="voluntario@gmail.com"
ENV['COREUSERStart']="coreteam@gmail.com"
ENV['PSWStart']="123456"
ENV['IncorrectPSWStart']="1234sadf56"

#project Settings
ENV['PUSERStart']="coreteam@gmail.com"
ENV['title']="Proyecto de prueba"
ENV['description']="Proyecto automatizado"
ENV['Edittitle']="Proyecto de prueba editado"
ENV['Editdescription']="Proyecto automatizado editado"

#Register Settings
ENV['name']="Jaimen"
ENV['fname']="Herbas"
ENV['email']="jaimensoherbas@gmail.com"
ENV['password']="jaime123"
ENV['phone']="76909029"



Capybara.default_driver = :selenium

# Set the host the Capybara tests should be run against
Capybara.app_host = ENV["CAPYBARA_HOST"]

# Set the time (in seconds) Capybara should wait for elements to appear on the page
Capybara.default_max_wait_time = 15
Capybara.default_driver = :selenium
Capybara.app_host = "http://www.google.com"

class CapybaraDriverRegistrar
  # register a Selenium driver for the given browser to run on the localhost
  def self.register_selenium_driver(browser)
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, :browser => browser)
    end
  end

end
# Register various Selenium drivers
#CapybaraDriverRegistrar.register_selenium_driver(:internet_explorer)
#CapybaraDriverRegistrar.register_selenium_driver(:firefox)
CapybaraDriverRegistrar.register_selenium_driver(:chrome)
Capybara.run_server = false
#World(Capybara)

