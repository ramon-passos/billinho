class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :cpf
      t.date :birth_day
      t.integer :phone
      t.string :gender
      t.string :payment_mode

      t.timestamps
    end
  end
end
