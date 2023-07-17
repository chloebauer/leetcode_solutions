# @param {Integer[]} nums
# @return {Integer[]}
# https://leetcode.com/problems/product-of-array-except-self/?envType=study-plan-v2&envId=top-interview-150
def product_except_self(nums)
  result = []
  right_bound = 1
  left_bound = 1

  nums.each do |num|
    result << right_bound
    right_bound *= num
  end

  (nums.size - 1).downto(0) do |index|
    result[index] *= left_bound
    left_bound *= nums[index]
  end

  result
end


p product_except_self([1,2,3,4]) == [24,12,8,6]