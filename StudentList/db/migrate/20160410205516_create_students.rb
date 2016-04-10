class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Index

      t.timestamps
    end
  end
end
