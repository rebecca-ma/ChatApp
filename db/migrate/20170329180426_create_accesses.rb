class CreateAccesses < ActiveRecord::Migration[5.0]
  def change
    create_table :accesses do |t|
      t.belongs_to :channel, index: true
      t.belongs_to :group, index: true
      t.timestamps
    end
  end
end
