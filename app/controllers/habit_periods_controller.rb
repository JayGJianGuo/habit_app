class HabitPeriodsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_habit_list
  before_action :find_habit_period, except: [:new, :create, :index]

  def index
    @habit_periods = HabitPeriod.all.order("period_type_id DESC").reverse
  end

  def new
    @habit_period = HabitPeriod.new
    @period_types = PeriodType.all
  end

  def create
    @habit_list = HabitList.find(params[:habit_list_id])
    @habit_period = HabitPeriod.new(habit_period_params)
    @habit_period.habit_list_id = @habit_list.id

    @period_type_id = params[:period_type_id]

    if @habit_list.habit_periods.count < 5
      if @habit_period.save
        redirect_to habit_list_habit_periods_path
      else
        render :new
      end
    else
      flash[:warning] = "不能超过四个规定时期！"
    end
  end

  def edit
  end

  def update
    if @habit_period.update(habit_period_params)
      redirect_to habit_list_habit_periods_path
      flash[:notice] = "你的修改已上传"
    else
      render :edit
    end
  end

  def destroy
    @habit_period.destroy
    redirect_to habit_list_habit_periods_path
    flash[:alert] = "已删除"
  end

  private

  def set_habit_list
    @habit_list = HabitList.find(params[:habit_list_id])
  end

  def find_habit_period
    @habit_period = HabitPeriod.find(params[:id])
  end

  def habit_period_params
    params.require(:habit_period).permit(:period_type_id, :period_time, :period_method)
  end
end
