class AddCityToBankDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :bank_details, :city, :string
  end
end
