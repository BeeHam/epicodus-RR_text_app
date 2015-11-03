class Contact < ActiveRecord::Base

  has_many_and_belongs_to :messages

  validates :name, presence: true
  validates :phone_number, presence: true
end
