require 'spec_helper'

feature 'Can access the correct port' do

  it 'can access port 4000' do
    visit 'http://localhost:4000/'
    expect(page).to have_content('Hello')
    end
  end

feature 'Server stores params' do
  it 'can store params' do
    visit 'http://localhost:4000/set?somekey=somevalue'
  expect(page).to have_content ("somekey")
  expect(page).to have_content ("somevalue")
  end
end

feature 'Server can return value of key value pair' do
  it 'can return the value' do
    visit 'http://localhost:4000/set?somekey=somevalue'
    visit 'http://localhost:4000/get?key=somekey'
  expect(page).to have_content('somevalue')
  end
end
