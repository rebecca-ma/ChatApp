class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.timestamps
    end

    create_table :channels_groups, id: false do |t|
      t.belongs_to :channel, index: true
      t.belongs_to :group, index: true
    end
  end
end
