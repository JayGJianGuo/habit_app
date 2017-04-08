class HabitPeriodsController < ApplicationController
  before_action :set_habit_list
  before_action :find_habit_period, except: [:new, :create]

  def new
    @habit_period = HabitPeriod.new
  end

  def create
    @habit_list = HabitList.find(params[:habit_list_id])
    @habit_period = HabitPeriod.new(habit_period_params)
    @habit_period.habit_list_id = @habit_list.id

    if @habit_period.save
      redirect_to @habit_list
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @habit_period.update(habit_period_params)
      redirect_to @habit_list
    else
      render :edit
    end
  end

  private

  def set_habit_list
    @habit_list = HabitList.find(params[:habit_list_id])
  end

  def find_habit_period
    @habit_period = HabitPeriod.find(params[:id])
  end

  def habit_period_params
    params.require(:habit_period).permit(:period_type, :period_time, :period_method)
  end
end
