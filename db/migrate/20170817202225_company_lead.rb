class CompanyLead < ActiveRecord::Migration[5.1]
  def change
    create_table :company_leads do |t|
      t.integer :lead_id
      t.integer :company_id

      t.timestamps
    end
  end
end
