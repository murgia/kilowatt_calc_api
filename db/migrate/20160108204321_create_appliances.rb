class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.string :name
      t.integer :power
    end
  end
end
