class AddBankAccountIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :bank_account_id, :integer
  end
end
