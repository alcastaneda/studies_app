class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :title
      t.string :investigator_first_name
      t.string :investigator_last_name

      t.timestamps null: false
    end
  end
end
