class AddTitleToMicropost < ActiveRecord::Migration[5.2]
  def change
    if column_exists? add_column :microposts,
      remove_column :microposts, :title, :string
    end
end
