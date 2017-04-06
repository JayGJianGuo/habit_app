class RecordDaysController < ApplicationController
  before_action :set_habit_list
  before_action :find_record_day, except: [:new, :create]

  def new
    @record_day = RecordDay.new
  end

  def create
    @habit_list = HabitList.find(params[:habit_list_id])
    @record_day = RecordDay.new(record_day_params)
    @record_day.habit_list = @habit_list

    if @record_day.save
      redirect_to @habit_list
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @record_day.update(record_day_params)
      redirect_to @habit_list
    else
      render :edit
    end
  end

  def destroy
    @record_day.destroy
    redirect_to @habit_list
  end

  private

  def set_habit_list
    @habit_list = HabitList.find(params[:habit_list_id])
  end

  def find_record_day
    @record_day = RecordDay.find(params[:id])
  end

  def record_day_params
    params.require(:record_day).permit(:day_num, :keyword, :record_content)
  end

end
