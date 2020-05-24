class AddCardTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :card_type, :string
  end
end
