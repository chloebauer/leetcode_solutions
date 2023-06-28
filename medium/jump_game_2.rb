# @param {Integer[]} nums
# @return {Integer}
# https://leetcode.com/problems/jump-game-ii/?envType=study-plan-v2&envId=top-interview-150
def jump(nums)
  return 0 if nums.size == 1
  num_of_jumps = 0
  current = 0
  target = 0
  (0..nums.size - 2).each do |index|
    current = [current, index + nums[index]].max
    if index == target
      target = current
      num_of_jumps += 1
    end
  end
  num_of_jumps
end

p jump([2,3,1,1,4]) == 2
p jump([2,3,0,1,4]) == 2
p jump([1,2,1,1,1]) == 3
p jump([2,1]) == 1
p jump([10,9,8,7,6,5,4,3,2,1,1,0]) == 2