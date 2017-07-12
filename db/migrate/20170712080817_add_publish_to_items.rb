class AddPublishToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :publish, :boolean
  end
end
