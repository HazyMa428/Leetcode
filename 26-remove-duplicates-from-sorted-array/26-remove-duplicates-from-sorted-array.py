class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        size = len(nums)
        insertIndex = 1
        for i in range(1, size):
            if nums[i-1] != nums[i]:
                nums[insertIndex] = nums[i]
                insertIndex += 1
            i += 1
        return insertIndex
    
        
        