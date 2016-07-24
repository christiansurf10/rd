class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :email
      t.integer :idade
      t.string :estado
      t.string :cargo

      t.timestamps
    end
  end
end
