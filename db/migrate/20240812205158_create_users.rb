class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :username
      t.text :first_name
      t.text :last_name
      t.string :linkedin_profile
      t.boolean :mentor
      t.text :biography
      t.boolean :mentee
      t.text :industry
      t.text :interests
      t.text :current_occupation
      t.text :location
      t.text :goals

      t.timestamps
    end
  end
end
