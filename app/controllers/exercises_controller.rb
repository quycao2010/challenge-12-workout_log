class ExercisesController < ApplicationController
  def index
      
  end
  
  def update
      
  end
  
  def new
    @exercise = Exercise.find(params[:id])
  end
  
  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.create(exercise_parmas)
    if @exercise.save
      redirect_to :back
    else
      redner :new
    end
  end
  
  def destroy
      
  end
  
  private

  def exercise_parmas
    params[:exercise].permit(:name, :set, :reps)
  end
  
end
