class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :short_name
      t.string :full_name
      t.date   :year
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
