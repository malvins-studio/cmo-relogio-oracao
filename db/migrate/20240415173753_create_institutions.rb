class CreateInstitutions < ActiveRecord::Migration[7.1]
  def change
    create_table :institutions do |t|
      t.string :name, null: false
      t.string :contact_name, null: false
      t.string :prayer_times, null: false
      t.string :contact_email, null: false
      t.string :contact_phone, null: false
      t.string :address, null: false
      t.string :link
      t.boolean :notification_whatsapp, null: false, default: true
      t.boolean :notification_email, null: false, default: false

      t.timestamps
    end
  end
end
