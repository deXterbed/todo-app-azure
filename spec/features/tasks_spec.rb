require 'rails_helper'

RSpec.feature "Tasks", type: :feature do
  scenario "User sees the task list and can add a task" do
    visit tasks_path
    expect(page).to have_content("Tasks")

    fill_in "Title", with: "New Task"
    click_button "Create Task"
    expect(page).to have_content("New Task")
    expect(page).to have_content("Task was successfully created.")
  end
end