class HomeController < ApplicationController
  def index
    @items = Item.all.order(:created_at)
    @warehouses = Warehouse.all.order(:created_at)
  end

  def create
    item = Item.create(
      name: params[:name],
      price: params[:price],
      warehouse_id: select_warehouse
    )
    warehouse_name = item.warehouse_name

    render :json => {id: item.id, name: item.name, price: item.price, warehouse_name: warehouse_name}
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render :json => true
  end

  def update
    item = Item.find(params[:id])
    item.update({
      name: params[:name] || item.name,
      price: params[:price] || item.price,
      warehouse_id: select_warehouse(params[:price] || item.price)
    })
    warehouse_name = item.warehouse_name

    render :json => {id: item.id, name: item.name, price: item.price, warehouse_name: warehouse_name}
  end

  private
  def select_warehouse(price = params[:price])
    price.to_i < 5000 ? Warehouse.where(name: 'Shinjuku').first.id : Warehouse.where(name: 'Roppongi').first.id
  end
end
