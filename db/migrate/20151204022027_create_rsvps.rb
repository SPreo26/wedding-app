class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :attending
      t.boolean :vegetarian
      t.integer :guests

      t.timestamps null: false
    end
  end
end
