class ChangeColumnInStudentClasses < ActiveRecord::Migration[5.0]
  def change
    remove_column :student_classes, :class_number
    add_column :student_classes, :room_number, :integer
  end
end
