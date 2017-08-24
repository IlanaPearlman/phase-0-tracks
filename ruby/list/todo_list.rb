class TodoList
  def initialize(tasks)
    @tasks = tasks
  end
  def get_items
    @tasks
  end
  def add_item(task)
    @tasks.push(task)
  end
  def delete_item(task)
    @tasks.delete(task)
  end
  def get_item(index)
    @tasks[index]
  end
end