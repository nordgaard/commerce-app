class ChangeMakeToText < ActiveRecord::Migration
  def change
    change_column :products, :model, :text
  end
end
