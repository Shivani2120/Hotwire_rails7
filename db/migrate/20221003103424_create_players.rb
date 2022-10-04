class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.date :date_of_birth
      t.string :place
      t.string :email
      t.integer :contact

      t.timestamps
    end
  end
end
