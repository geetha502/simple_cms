class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|

      t.references 'subject'
      t.string 'name'
      t.string 'permalink'
      t.integer 'position'
      t.boolean 'visible'
      t.timestamps
    end
  end
end
