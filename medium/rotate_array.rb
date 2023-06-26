# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate_ideal_solution(nums, k)
  # Due to how leetcode works, it does not like this way of solving the problem as it is not morphing the actual nums object
  break_point = nums.size - k
  nums[break_point..] + nums[..break_point-1]
end

def rotate(nums, k)
  rotations = 0
  while rotations < k
    nums.insert(0, nums.pop())
    rotations +=1
  end
  nums
end

p rotate([1,2,3,4,5,6,7], 3)
p rotate([-1,-100,3,99], 2)