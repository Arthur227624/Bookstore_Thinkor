class CreateLoans < ActiveRecord::Migration[8.0]
  def change
    create_table :loans do |t|
      t.date :loan_date
      t.date :delivery_date
      t.string :book_name

      t.timestamps
    end
  end
end
