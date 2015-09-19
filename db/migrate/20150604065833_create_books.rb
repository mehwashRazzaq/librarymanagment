class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :tilte
      t.string :author
      t.string :rakeno
      t.string :subjectcode

      t.timestamps null: false
    end
  end
end
