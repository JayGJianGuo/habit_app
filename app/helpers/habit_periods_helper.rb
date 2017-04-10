module HabitPeriodsHelper
  def render_habit_period_total_day(habit_period)
    sum = 0
    @habit_periods.each do |habit_period|
      if habit_period.period_time?
        sum += habit_period.period_time
      end
    end
    sum
  end

  def count_habit_period_period_time(habit_period)
    sum_one = 0
    sum_two = 0
    sum_three = 0
    @habit_periods.each do |habit_period|
     sum_one = @habit_period.period_time(1) + @habit_period.period_time(2)
     sum_two = sum_one + @habit_period.period_time(3)
     sum_three = sum_two + @habit_period.period_time(4)
   end
   sum_one
   sum_two
   sum_three
  end
end
