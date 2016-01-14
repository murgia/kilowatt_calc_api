class AddNameToElectcalc < ActiveRecord::Migration
  def change
    add_column :electcalcs, :name, :string
  end
end
