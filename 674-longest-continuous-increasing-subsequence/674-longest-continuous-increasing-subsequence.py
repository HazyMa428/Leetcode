class Solution:
    def findLengthOfLCIS(self, nums: List[int]) -> int:
        ans = [1]
        j=1 
        for i in range(len(nums)-1):
            if nums[i+1]>nums[i]:
                j+=1
            else:
                ans.append(j)
                j=1 
                
        ans.append(j)
        return max(ans)
        