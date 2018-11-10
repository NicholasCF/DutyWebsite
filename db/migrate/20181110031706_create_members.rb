class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :matric
      t.integer :contact
      t.string :email
      t.string :cell
      t.boolean :MC

      t.timestamps
    end
  end
end
