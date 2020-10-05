class CreateBillings < ActiveRecord::Migration[6.0]
  def change
    create_table :billings do |t|
      t.integer :booking_id
      t.decimal :total_amount_paid, precision: 10, scale: 2
      t.decimal :discount_rate, precision: 10, scale: 2
      t.text :details

      t.timestamps
    end
  end
end
