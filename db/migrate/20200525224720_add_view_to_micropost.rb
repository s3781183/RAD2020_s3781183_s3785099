class AddViewToMicropost < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :view, :integer,default: 0
  end
end
