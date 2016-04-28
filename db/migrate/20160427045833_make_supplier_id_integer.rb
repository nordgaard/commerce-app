class MakeSupplierIdInteger < ActiveRecord::Migration
  def change
    change_column :products, :supplier_id, 'integer USING CAST(supplier_id AS integer)'
  end
end
