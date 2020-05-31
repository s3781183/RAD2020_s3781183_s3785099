class AddTitleToMicropost < ActiveRecord::Migration[5.2]
  def change
    if column_exists? add_column :microposts,
    end
end
