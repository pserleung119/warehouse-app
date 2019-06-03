class Item < ApplicationRecord
  belongs_to :warehouse

  def warehouse_name
    Warehouse.find(warehouse_id).name
  end
end
