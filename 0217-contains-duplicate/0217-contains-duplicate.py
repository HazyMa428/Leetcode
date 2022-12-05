class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        if len(nums) == 0:
            return False
        nums.sort()
        prev = nums[0]
        for i in range(1, len(nums)):
            if prev == nums[i]:
                return True
            else:
                prev = nums[i]
        return False

    