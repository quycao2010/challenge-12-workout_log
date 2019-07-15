class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:edit, :update, :show, :destory]

  def index
    @workouts = Workout.all
  end
  
  def show
  end
  
  def update
    if @workout.update(workout_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end
  
  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.create(workout_params)
    if @workout.save
      redirect_to @workout, notice: "Create successfully"
    else
      redirect_to new_workout_path
    end 
  end
  
  def destroy
    @workout.destroy
    redirect_to root_path
  end
  
  private

  def workout_params
    params.require(:workout).permit(:data, :workout, :mood, :length)
  end
  
  def set_workout
    @workout = Workout.find(params[:id])
  end
  
  
end
