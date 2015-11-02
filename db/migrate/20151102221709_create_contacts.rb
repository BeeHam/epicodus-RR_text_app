class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|

      t.column :name, :string
      t.column :phone_number, :string

      t.timestamps
    end
  end
end
