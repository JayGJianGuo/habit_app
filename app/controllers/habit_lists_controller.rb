class HabitListsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_habit_list, only: [:show, :edit, :update, :destroy]

  def index
    @habit_lists = HabitList.all
  end

  def show
    @habit_list = HabitList.find(params[:id])
    @record_days = @habit_list.record_days

    @record_days = case params[:order]
      when 'reverse'
        @record_days.order("day_num DESC").reverse
      else
        @record_days.order("day_num DESC")
      end

    @habit_periods = @habit_list.habit_periods
  end

  def new
      @habit_list = HabitList.new
      @categories = Category.all
  end

  def edit
    if current_user != @habit_list.user
      redirect_to habit_lists_path
      flash[:alert] = "你没有权限操作！"
    end
  end

  def create
    @habit_list = HabitList.new(habit_list_params)
    @habit_list.user = current_user
    @category_id = params[:category_id]

      if @habit_list.save
        redirect_to @habit_list
        flash[:notice] = "创建成功"
      else
        render :new
      end
  end

  def update
      if @habit_list.update(habit_list_params)
        redirect_to @habit_list
        flash[:notice] = "修改已上传"
      else
        render :edit
      end
  end

  def destroy
    @habit_list.destroy
    redirect_to habit_lists_path
    flash[:alert] = "已成功删除"
  end

  private
    def set_habit_list
      @habit_list = HabitList.find(params[:id])
    end

    def habit_list_params
      params.require(:habit_list).permit(:title, :description, :category_id)
    end
end
