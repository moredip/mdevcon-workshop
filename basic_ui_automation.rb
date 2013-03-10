#!/usr/bin/env ruby

# fake out Cuke api
def World(_)
end
def AfterConfiguration
end

require 'rubygems'
require 'pathname'

def reset_db
  Pathname.glob("#{ENV['HOME']}/Library/Application Support/iPhone Simulator/*/Applications/*/Documents/CountItOut.sqlite").each do |sqlite_file|
    sqlite_file.delete
  end
end

require 'pry'
Pry.commands.alias_command 'n', 'next'

require 'rspec/expectations'
include RSpec::Matchers

require 'frank-cucumber'
include Frank::Cucumber::FrankHelper
include Frank::Cucumber::Launcher

Frank::Cucumber::FrankHelper.use_shelley_from_now_on


unless ARGV.length > 0
  puts "\n\nRESETTING AND LAUNCHING APP...\n\n\n"
  reset_db
  launch_app File.expand_path( '../Frank/frankified_build/Frankified.app', __FILE__ )
end

wait_for_frank_to_come_up




binding.pry

touch "view marked:'Add'"
touch "label marked:'CountUp'"

touch "view:'UITextFieldLabel' marked:'Group Name'"
type_into_keyboard "My Group"

touch "view:'UITextFieldLabel' marked:'Counter Name'"
type_into_keyboard "My Counter"

touch "button marked:'Save'"

check_element_exists "view marked:'My Group'"
check_element_exists "view marked:'My Counter'"

touch "view marked:'My Counter'"
touch "view marked:'My Counter'"
touch "view marked:'My Counter'"
touch "view marked:'My Counter'"
touch "view marked:'My Counter'"
touch "view marked:'My Counter'"
