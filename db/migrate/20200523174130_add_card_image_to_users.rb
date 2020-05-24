class AddCardImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_image, :string
  end
end
