class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :revenue
      t.boolean :customer, :default => false

      t.timestamps
    end
  end
end
