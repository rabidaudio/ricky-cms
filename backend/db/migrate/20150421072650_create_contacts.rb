class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company
      t.string :role
      t.string :office_number
      t.string :cell_number
      t.integer :priority
      t.string :industry
      t.string :origin
      t.text :notes
      t.date :last_contact
      t.date :follow_up
      t.integer :touched
      t.string :funnel

      t.timestamps null: false
    end
  end
end
