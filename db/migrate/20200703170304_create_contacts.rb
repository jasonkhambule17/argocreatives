class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :contact_type
      t.string :email
      t.string :phone
      t.string :message
      t.string :name
      t.string :recipient

      t.timestamps
    end
  end
end
