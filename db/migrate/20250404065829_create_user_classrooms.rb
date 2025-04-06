class CreateUserClassrooms < ActiveRecord::Migration[8.0]
  def change
    create_table :user_classrooms do |t|
      t.string :title
      t.text :description
      t.string :teacher
      t.string :role

      t.timestamps
    end
  end
end
