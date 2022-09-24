class Solution:
    def findMin(self, nums: List[int]) -> int:
        if nums != None:
            nums.sort()
            app = nums[0]
            return app
        else:
            return 0
 
       
        