class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.integer :balance
      t.integer :credit
      t.integer :debit
      t.date :last_used

      t.timestamps null: false
    end
  end
end
