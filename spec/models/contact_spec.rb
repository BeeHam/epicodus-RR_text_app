require 'rails_helper'

describe Contact, vcr: true do
  it { should have_and_belong_to_many :messages }
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone_number }
end
