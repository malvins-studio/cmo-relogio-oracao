class Institution < ApplicationRecord
  validates :name, presence: true
  validates :contact_name, presence: true
  validates :prayer_times, presence: true
  validates :contact_email, presence: true
  validates :contact_phone, presence: true
  validates :address, presence: true
end
