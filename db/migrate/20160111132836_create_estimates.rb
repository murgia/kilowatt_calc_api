class CreateEstimates < ActiveRecord::Migration
  def change
    create_table :estimates do |t|
      t.references :appliance, index: true, foreign_key: true
      t.references :electcalc, index: true, foreign_key: true
      t.integer :quantity
    end
  end
end
