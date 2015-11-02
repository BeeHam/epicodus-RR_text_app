class ChangeMessageColumns < ActiveRecord::Migration
  def change
    change_column :messages, :to, :string
    change_column :messages, :from, :string
  end
end
