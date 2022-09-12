class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :API
      t.string :Description
      t.string :Link
      t.string :Category
      t.string :developer_id
    end
  end
end
