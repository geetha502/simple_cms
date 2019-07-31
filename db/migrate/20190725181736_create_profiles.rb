class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string 'contact_no'
      t.string 'address'
      t.date 'dob'
      t.references 'author'
      t.timestamps
    end
  end
end
