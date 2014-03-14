require 'pathname'

Given /^I've just launched the app for the first time$/ do
  Pathname.glob("#{ENV['HOME']}/Library/Application Support/iPhone Simulator/*/Applications/*/Documents/CountItOut.sqlite").each do |sqlite_file|
    sqlite_file.delete
  end

  launch_app app_path
end

When /^I touch the Add button$/ do
  touch %Q|view:'UINavigationButton' marked:'Add'|
  wait_for_nothing_to_be_animating
end

When /^I choose CountUp$/ do
  wait_for_nothing_to_be_animating
  touch %Q|button marked:'CountUp'|
  wait_for_nothing_to_be_animating
end

When /^I enter a group name of "(.*?)"$/ do |group_name|
  wait_for_nothing_to_be_animating
  touch %Q|view:'UITextFieldLabel' marked:'Group Name'|
  sleep 0.5
  wait_for_nothing_to_be_animating
  sleep 0.5
  type_into_keyboard group_name
end

When /^I enter a counter name of "(.*?)"$/ do |counter_name|
  wait_for_nothing_to_be_animating
  touch %Q|view:'UITextFieldLabel' marked:'Counter Name'|
  sleep 0.5
  wait_for_nothing_to_be_animating
  type_into_keyboard counter_name
end

When /^I hit Save$/ do
  touch %Q|view:'UINavigationButton' marked:'Save'|
end

Then /^I should be on the main screen$/ do
  wait_for_element_to_exist %Q|view:'UINavigationItemView' marked:'Count it Out'|
end

Then /^I should see the "(.*?)" group$/ do |group_name|
  wait_for_element_to_exist %Q|tableView view marked:'#{group_name}'|
end

Then /^I should see the "(.*?)" counter$/ do |counter_name|
  wait_for_element_to_exist %Q|tableViewCell view marked:'#{counter_name}'|
end

