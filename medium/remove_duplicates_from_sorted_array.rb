# @param {Integer[]} nums
# @return {Integer}
nums = [1,1,1,2,2,3]
def remove_duplicates(nums)
  pointer_one = 0
  pointer_two = 1
  removal = []
  while pointer_one < nums.size
    if nums[pointer_one] != nums[pointer_two]
      pointer_one = pointer_two
    elsif pointer_two - pointer_one != 1
      removal.append(pointer_one)
      pointer_one+=1
    end
    pointer_two +=1
  end

  removal.reverse_each { | index |
    nums.delete_at(index)
    nums.append('_')
  }
  nums.size - removal.size
end

puts remove_duplicates(nums)