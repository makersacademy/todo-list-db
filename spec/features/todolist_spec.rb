require 'capybara/rspec'
require 'pg'
feature 'it can render todo items' do
  before(:all) do
    conn = PG.connect(dbname: 'todolist_test')
    conn.exec("INSERT INTO TODO (title, body) VALUES ('Things', 'Buy stamps');")
    conn.close
  end
  scenario 'visiting the page should show me a success response' do
    visit("/todos")
    expect(page.status_code).to eq(200)
  end

  scenario 'visiting the page should show me a todo items' do
    visit("/todos")
    expect(page).to have_content ('Buy stamps')
  end

  scenario 'I can add a new todo item' do
    visit("/todos")
    fill_in('title', :with => 'Today')
    fill_in('body', :with => 'Fill out taxes')
    click_button('submit')
    expect(page).to have_content ('Fill out taxes')
  end

  after(:all) do
    conn = PG.connect(dbname: 'todolist')
    conn.exec("TRUNCATE TABLE TODO;")
    conn.close
  end
end
