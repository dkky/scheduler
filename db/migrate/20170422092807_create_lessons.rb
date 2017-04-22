class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.datetime :start_time
      t.datetime :end_time
    end
  end
end
