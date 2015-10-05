class CreateVibeCodes < ActiveRecord::Migration
  def change
    create_table :vibe_codes do |t|
      t.integer :giver_wallet_id
      t.string :code
      t.integer :credit_equiv
      t.boolean :cashed
      t.integer :receiver_wallet_id

      t.timestamps null: false
    end
  end
end
