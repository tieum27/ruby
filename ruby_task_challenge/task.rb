incomplete_task = []
complete_list = []



class Task
  def initialize( t, d, s)
    @task = t
    @description = d
    @status = s
    @list_task = []
  end

  def task
    @task
  end

  def description
    @description
  end

  def status
    @status
  end

  def create_task_hash
    @full_task = { "name" => @task, "description" => @description, "status" => @status}
  end

  def get_task_hash
    @full_task
  end

  def list_of_task
    @list_task << @full_task
  end


  # def get_incomplete
  #   @incomplete_task
  # end
  #
  # def get_completed
  #   @complete_list
  # end

end

class Ary
  def initialize
    @list = []
  end
  #
  # def create_task
  #   puts "Enter New Task: "
  #   task = gets.chomp
  #
  #   puts "Enter the description of the task: "
  #   description = gets.chomp
  #
  #   puts "Enter the status of the task"
  #   status = gets.chomp
  #   task = Task.new(task, description, status)
  #   @list << task
  # end

  def add_item(task)
    @list + [task]
  end

  def separation
    incomplete_task = @list.select {|x| x["status"] == "incomplete" }
    return incomplete_task
  end
end

ary1 = Task.new("task1", "task1 description", "completed").create_task_hash
ary2 = Task.new("task2", "task2 description", "incomplete").create_task_hash
# ary1.list_of_task
puts ary1
puts ary2
