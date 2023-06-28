require 'assert'
# @param {Integer[]} nums
# @return {Boolean}
# https://leetcode.com/problems/jump-game/?envType=study-plan-v2&envId=top-interview-150
def can_jump(nums)
  i = nums.size - 2
  jumps = 1

  while i >= 0 do
    if nums[i] - jumps >= 0
      jumps = 1
    else
      jumps+=1
    end
    i -= 1
  end

  jumps == 1
end

p can_jump([2, 3, 1, 1, 4])
p can_jump([2,5,0,0])
p can_jump([0])
p can_jump([2,0,0])
p can_jump([1,1,0,1])
p can_jump([3,2,1,0,4])
p can_jump([4,2,0,0,1,1,4,4,4,0,4,0])
p !can_jump([3, 2, 1, 0, 4])