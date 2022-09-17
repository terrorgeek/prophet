class AddLocationForMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :city, :string
    add_column :messages, :state, :string
    add_column :messages, :zipcode, :string, default: nil
  end
end
