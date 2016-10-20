class AddParticipantsBooleanToItems < ActiveRecord::Migration
  def change
    add_column :items, :participants, :boolean
  end
end
