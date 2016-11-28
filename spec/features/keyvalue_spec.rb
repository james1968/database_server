require 'spec_helper'

feature 'returns a value from a key value pair' do
  scenario 'when I enter a key and value the value is returned' do
    visit '/set'
    fill_in 'key', with: 'Day'
    fill_in 'value', with: 'Monday'
    click_button 'send'
    expect(page).to have_content 'Value is Monday'
  end
end
