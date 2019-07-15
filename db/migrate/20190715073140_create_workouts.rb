class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.datetime :data
      t.string :workout
      t.string :mood
      t.string :length

      t.timestamps null: false
    end
  end
end
