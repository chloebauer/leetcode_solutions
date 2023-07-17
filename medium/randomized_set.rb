# https://leetcode.com/problems/insert-delete-getrandom-o1/?envType=study-plan-v2&envId=top-interview-150
class RandomizedSet
  require 'set'
  def initialize()
    @randomized_set =[]
  end

=begin
    :type val: Integer
    :rtype: Boolean
=end
  def insert(val)
    return false if @randomized_set.include? val
    @randomized_set << val
    true
  end

=begin
    :type val: Integer
    :rtype: Boolean
=end
  def remove(val)
    del = @randomized_set.delete(val)
    del == val
  end

=begin
    :rtype: Integer
=end
  def get_random()
    @randomized_set.sample
  end
end

# Your RandomizedSet object will be instantiated and called as such:
obj = RandomizedSet.new()
p obj.insert(1)
p obj.insert(1)
obj.insert(2)
obj.insert(3)
obj.insert(4)
p obj.remove(1)
p obj.remove(7)
p obj.get_random()
p obj.get_random()
p obj.get_random()
p obj.get_random()