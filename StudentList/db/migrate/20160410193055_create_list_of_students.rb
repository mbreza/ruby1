class CreateListOfStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :list_of_students do |t|
      t.text :src
      t.string :lang
      t.string :desc

      t.timestamps
    end
  end
end
