# This migration comes from fae (originally 20140822224029)
class CreateFaeRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :fae_roles do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
