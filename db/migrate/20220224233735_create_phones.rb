class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.string :phone
      t.integer :status
      t.text :description
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
