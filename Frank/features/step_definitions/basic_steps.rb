When /^I touch the Add button$/ do
  touch %Q|view:'UINavigationButton' marked:'Add'|
  wait_for_nothing_to_be_animating
end

When /^I choose CountUp$/ do
  touch %Q|button marked:'CountUp'|
  wait_for_nothing_to_be_animating
end

When /^I enter a group name of "(.*?)"$/ do |group_name|
  touch %Q|view:'UITextFieldLabel' marked:'Group Name'|
  wait_for_nothing_to_be_animating
  type_into_keyboard group_name
end

When /^I enter a counter name of "(.*?)"$/ do |counter_name|
  touch %Q|view:'UITextFieldLabel' marked:'Counter Name'|
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
  wait_for_element_to_exist %Q|view:'UITableViewHeaderFooterView' marked:'#{group_name}'|
end

Then /^I should see the "(.*?)" counter$/ do |counter_name|
  wait_for_element_to_exist %Q|tableViewCell view marked:'#{counter_name}'|
end

