class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.string 'village_name'
      t.timestamps
    end
  end
end
