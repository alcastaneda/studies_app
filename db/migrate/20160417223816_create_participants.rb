class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.datetime :birthdate
      t.string :address

      t.timestamps null: false
    end
  end
end