require 'spec_helper'
require './app'

feature 'loading home page' do
  scenario 'display welcome string' do
    visit '/'
    expect(page).to have_content 'Hello World!'
  end
end