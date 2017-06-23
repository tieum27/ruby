require 'rspec'
require_relative 'task'
# Story: As a developer, I can create a Task.
describe "Task thing" do
  it "Should create a new task" do
    expect{Task.new("try", "this is a list", "incomplete")}.to_not raise_error
  end
end

# Story: As a developer, I can give a Task a title and retrieve it.
describe "Task Title" do
  task1 = Task.new("try", "this is a list", "incomplete")
  it "Give task a name and retrive it" do
    expect(task1.task).to be_a String
  end
end

# Story: As a developer, I can give a Task a description and retrieve it.
describe "Task Description" do
  task1 = Task.new("try", "this is a list", "incomplete")
  it "Give task a Description and retrive it" do
    expect(task1.description).to be_a String
  end
end

#
# Story: As a developer, I can mark a Task done.
#describe "Task Description" do
describe "Task Status" do
  task1 = Task.new("try", "this is a list", "incomplete")
  it "Give task a Description and retrive it" do
    expect(task1.status).to eq("completed").or eq ("incomplete")
  end
end

# Story: As a developer, when I print a Task that is done, its status is shown.
# Hint: Implement to_s have it return the features of a Task with labels (for instance, "Title: Buy Food Description: Bananas, milk").

describe "Task Status" do
  task1 = Task.new("try", "this is a list", "completed")
  task1.create_task_hash
  task1.get_task_hash
  it "Give task a Description and retrive it" do
    expect(task1.get_task_hash["status"]).to eq("completed")
    expect(task1.get_task_hash.to_s).to be_a String
  end
end

# Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks

describe "TaskList" do
  task1 = Task.new("try", "this is a list", "completed")
  task1.create_task_hash
  task1.get_task_hash
  it "Will show list of task" do
    expect(task1.list_of_task).not_to be_empty
  end
end

#
# Story: As a developer with a TaskList, I can get the completed items.
describe "TaskList" do
  task1 = Task.new("try", "this is a list", "completed")
  task1.create_task_hash
  task1.get_task_hash
  task1.get_completed
  it "Will show list of task that are completed" do
    expect(task1.get_completed).not_to be_empty
  end
end

#
# Story: As a developer with a TaskList, I can get the incomplete items.
