class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :name
      t.boolean :contact
      t.integer :company_id

      t.timestamps
    end
  end
end
