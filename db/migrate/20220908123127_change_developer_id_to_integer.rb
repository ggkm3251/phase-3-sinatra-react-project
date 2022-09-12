class ChangeDeveloperIdToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :entries, :developer_id, :integer
  end
end
