class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string 'username'
      t.string 'role'
      t.string 'avatar'
      t.belongs_to :round 

      t.timestamps
    end
  end
end
