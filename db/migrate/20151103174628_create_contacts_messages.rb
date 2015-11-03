class CreateContactsMessages < ActiveRecord::Migration
  def change
    create_table :contacts_messages do |t|

      t.column :contact_id, :integer
      t.column :message_id, :integer


    end
  end
end
