require 'spec_helper'

feature 'loading home page' do
  scenario 'display welcome string' do
    expect(page).to have_content 'Hello World!'
  end
end