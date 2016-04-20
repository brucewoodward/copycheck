
require 'spec_helper'

feature 'Generates a key' do
  scenario 'Users enters name and get a key' do
   visits '/'
   fill_in 'name', with: "name"
   click_button 'Create!'
  end
end 
