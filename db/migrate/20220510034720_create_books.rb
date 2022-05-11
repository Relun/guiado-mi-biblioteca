class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :status
      t.date :borrow_date
      t.date :return_date
      t.string :friend

      t.timestamps
    end
  end
end
