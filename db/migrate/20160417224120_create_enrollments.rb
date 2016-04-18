class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :study_id
      t.integer :participant_id

      t.timestamps null: false
    end
  end
end
