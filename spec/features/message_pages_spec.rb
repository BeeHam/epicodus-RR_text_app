require 'rails_helper'

describe "adds a message", :vcr => true do
  it "it will add a message" do
    # message = Message.create(body: "Hello World!", :to =>'15005550001', :from => "15005550006")
    visit new_message_path
    fill_in "To", with: '9513683184'
    fill_in "From", with: '15005550006'
    fill_in "Body", with: "Hello World!"
    click_on "Send"
    expect(page).to have_content "Hello World!"
  end

  it "will show all messages" do
    message_1 = Message.create(body: "Hello World!", :to =>'9513683184', :from => "15005550006")
    message_2 = Message.create(body: "Goodbye World!", :to =>'9513683184', :from => "15005550006")
    visit root_path
    expect(page).to have_content "Hello World!"
  end
end
