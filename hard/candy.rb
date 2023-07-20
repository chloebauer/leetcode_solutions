# https://leetcode.com/problems/candy/?envType=study-plan-v2&envId=top-interview-150
# # @param {Integer[]} ratings
# # @return {Integer}
def candy(ratings)
  candy = [1]* ratings.size
  increased = [false] * ratings.size
  left_neighbor = 0
  right_neighbor = ratings.size - 1

  (1).upto(ratings.size-1) do |index|
    if ratings[left_neighbor] < ratings[index]
      candy[index] += candy[left_neighbor]
      increased[index] = true
    end
    left_neighbor = index
  end

  (ratings.size - 2).downto(0) do |index|
    if ratings[index] > ratings[right_neighbor]
      candy[index] += candy[right_neighbor] unless increased[index]
      candy[index] = (candy[right_neighbor] + 1) if increased[index] && candy[index] <= candy[right_neighbor]
    end
    right_neighbor = index
  end

  candy.sum
end

p candy([1,0,2]) == 5
p candy([1,2,2]) == 4
p candy([1,3,2,2,1]) == 7
p candy([1,2,87,87,87,2,1]) == 13
p candy([1,3,4,5,2]) == 11
p candy([1,6,10,8,7,3,2]) == 18
p candy([1,2,3,5,4,3,2,1]) == 21