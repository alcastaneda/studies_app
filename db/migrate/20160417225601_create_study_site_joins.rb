class CreateStudySiteJoins < ActiveRecord::Migration
  def change
    create_table :study_site_joins do |t|
      t.integer :site_id
      t.integer :study_id

      t.timestamps null: false
    end
  end
end
