class CreateMonsters < ActiveRecord::Migration[7.0]

  def change
    create_table :monsters do |t|
      t.string :name
      t.text :description
      t.integer :scare_level
      t.string :private_account
      t.Date :birthdate

      t.timestamps
    end
  end
end
