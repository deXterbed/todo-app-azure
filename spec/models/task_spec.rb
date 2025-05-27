require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with a title" do
    task = Task.new(title: "Test Task")
    expect(task).to be_valid
  end

  it "is invalid without a title" do
    task = Task.new(title: nil)
    expect(task).not_to be_valid
    expect(task.errors[:title]).to include("can't be blank")
  end

  it "has a default completed status of false" do
    task = Task.new(title: "Test Task")
    expect(task.completed).to be false
  end
end