class CreateElectcalcs < ActiveRecord::Migration
  def change
    create_table :electcalcs do |t|
      t.string :state
      t.float :avg_cost
    end
  end
end
