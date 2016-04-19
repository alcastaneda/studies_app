class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :title
      t.string :investigator_name
      t.string :status

      t.timestamps null: false
    end
  end
end
