require 'capybara/rspec'

feature "app" do
 
 scenario 'can call the index page' do 
  visit("/")
  expect(page).to have_content("hello world")
 end

end
