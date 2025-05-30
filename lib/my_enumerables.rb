module Enumerable
  # Your code goes here
  def my_each_with_index
    idx = 0
    for elem in self
      yield(elem, idx)
      idx += 1
    end

    return self
  end
end 

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for elem in self
      yield(elem)
    end

    return self
  end
end