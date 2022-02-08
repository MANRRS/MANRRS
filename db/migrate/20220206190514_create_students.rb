class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first
      t.string :last
      t.string :number
      t.string :email

      t.timestamps
    end
  end
end
