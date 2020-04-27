class CreateStudentClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :student_classes do |t|
      t.string :title
      t.integer :class_number

      t.timestamps
    end
  end
end
