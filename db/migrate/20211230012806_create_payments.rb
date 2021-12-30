class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.float :payment_price
      t.date :payment_due_date
      t.string :status
      t.references :enrollment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
