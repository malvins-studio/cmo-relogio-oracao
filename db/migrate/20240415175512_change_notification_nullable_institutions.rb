class ChangeNotificationNullableInstitutions < ActiveRecord::Migration[7.1]
  def change
    change_column :institutions, :notification_whatsapp, :boolean, null: true
    change_column :institutions, :notification_email, :boolean, null: true
  end
end
