class CreateBankDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_details do |t|
      t.string :bank_name
      t.string :account_number
      t.string :branch
      t.string :ifsc_code

      t.timestamps
    end
  end
end
