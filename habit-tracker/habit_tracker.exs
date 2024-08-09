# Habit Tracker

# You are going to build some logic for a habit tracking app. Habit tracking apps such as Habitica help users develop healthy habits.
# Each habit is assigned a size such as small, medium, or large. Each size is assigned a different point value. Users earn points based on the habits they complete.
# Large: 30 points
# Medium: 20 points
# Small: 5 points

[small, medium, large] = [5, 20, 30]
total = small + medium + large

# Multiple Habits
# Given a user has completed ten small habits, five medium habits, and three large habits, get the total.

habits = [{small, 10}, {medium, 5}, {large, 3}]

total =
  Enum.reduce(habits, 0, fn {type, val}, acc ->
    type * val + acc
  end)

# Progress Bar
# Users define a a goal number of points to earn each day. Determine what percentage progress have they made if they would like to earn 40 points and have completed a small and a medium habit.
# You can calculate percentage with (points / goal) * 100

goal = 40
percentage_goal_met = (small + medium) / goal * 100

# Penalties And Rewards
# To motivate users to complete their habits quickly, we add a time-limit feature where users will receive a 60% point bonus if they complete their habit early, and a 50% point penalty if they complete their habit late.
# Determine the users total point score when they complete:
#   three early small habits
#   two normal medium habits
#   two late large habits

[early, normal, late] = [1.6, 1, 0.5]

habit_list = [{small, early, 3}, {medium, normal, 2}, {large, late, 2}]

total =
  Enum.reduce(habit_list, 0, fn {size, time, num}, acc ->
    habitScore = size * num * time
    habitScore + acc
  end)
