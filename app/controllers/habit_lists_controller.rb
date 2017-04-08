class HabitListsController < ApplicationController
  before_action :set_habit_list, only: [:show, :edit, :update, :destroy]

  # GET /habit_lists
  # GET /habit_lists.json
  def index
    @habit_lists = HabitList.all
  end

  # GET /habit_lists/1
  # GET /habit_lists/1.json
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

  # GET /habit_lists/new
  def new
    @habit_list = HabitList.new
    @categories = Category.all
  end

  # GET /habit_lists/1/edit
  def edit
  end

  # POST /habit_lists
  # POST /habit_lists.json
  def create
    @habit_list = HabitList.new(habit_list_params)

    @category_id = params[:category_id]

      if @habit_list.save
        redirect_to @habit_list, notice: 'Habit list was successfully created.'
      else
        render :new
      end
  end

  # PATCH/PUT /habit_lists/1
  # PATCH/PUT /habit_lists/1.json
  def update
      if @habit_list.update(habit_list_params)
        redirect_to @habit_list, notice: 'Habit list was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /habit_lists/1
  # DELETE /habit_lists/1.json
  def destroy
    @habit_list.destroy
    redirect_to habit_lists_url, notice: 'Habit list was successfully destroyed.'

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habit_list
      @habit_list = HabitList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def habit_list_params
      params.require(:habit_list).permit(:title, :description, :category_id)
    end
end
