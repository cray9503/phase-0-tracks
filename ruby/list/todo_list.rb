class TodoList
  def initialize(array)
    @this_array = array
  end

  def get_items
    @this_array
  end

  def add_item(stg)
    @this_array << stg
  end

  def delete_item(stg)
    @this_array.delete(stg)
  end

  def get_item(num)
    @this_array[num]
  end
end
