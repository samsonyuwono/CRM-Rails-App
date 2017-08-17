class DropUserIdFromLeads < ActiveRecord::Migration[5.1]
  def change
    remove_column :leads, :user_id
  end
end
