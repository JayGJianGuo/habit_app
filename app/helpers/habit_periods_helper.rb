module HabitPeriodsHelper
  def render_habit_period_total_day(habit_list, habit_period)
    sum = 0
    @habit_list.habit_periods.each do |habit_period|
      if habit_period.period_time?
        sum += habit_period.period_time
      end
    end
    sum
  end
end
