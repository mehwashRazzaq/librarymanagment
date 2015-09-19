class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.date :idate
      t.date :rdate
      t.references :book, index: true
      t.references :member, index: true

      t.timestamps null: false
    end
    add_foreign_key :borrows, :books
    add_foreign_key :borrows, :members
  end
end
