module Enumerable
  # Your code goes here
  def my_each_with_index
    idx = 0
    self.my_each do |elem|
      yield(elem, idx)
      idx += 1
    end
    self
  end

  def my_select
    arr = []
    self.my_each { |elem| arr << elem if yield(elem) }
    arr
  end

  def my_all?
    arr = []
    self.my_each { |elem| arr << elem if yield(elem) }
    arr.length == self.length ? true : false
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
    self
  end
end