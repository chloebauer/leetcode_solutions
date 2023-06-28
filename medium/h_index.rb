# @param {Integer[]} citations
# @return {Integer}
# https://leetcode.com/problems/h-index/?envType=study-plan-v2&envId=top-interview-150
def h_index(citations)
  h = 0
  citations.sort.reverse.each_with_index do | citation, index |
    h+=1 if citation >= (index + 1)
  end
  h
end

p h_index([3,0,6,1,5]) == 3
p h_index([1,3,1]) == 1
p h_index([9,7,6,2,1]) == 3
p h_index([10,8,5,4,3]) == 4
p h_index([25,8,5,3,3]) == 3