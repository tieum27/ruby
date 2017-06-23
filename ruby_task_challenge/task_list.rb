require_relative 'task'

incomplete_task = []
complete_list = []

class Ary < Task
  def initialize
    @list = []
  end

  def add_item(value)
    @list + [value]
  end

  def separation
    incomplete_task = @list.select {|x| x["status"] == "incomplete" }
  end

end

ary1= Ary.new
ary1.separation
# puts list
# separation(list)
# puts "Incomplete:"
# puts incomplete_task
# puts "completed: "
# puts complete_list
