class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :max_no_of_participants
      t.string :order_id

      t.timestamps null: false
    end
  end
end
