class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
  end

  def create
    new_product = Product.new(name: params[:name], price: params[:price], color: params[:color], make: params[:make],model: params[:model])
    new_product.save
  end

  def edit
    @product = Product.find_by(id: params[:id])
  end

  def update
    #First Way
    # @product = Product.find_by(id: params[:id])
    # @prodcut.assign_attributes(name: params[:name], price: params[:price], color: params[:color], make: params[:make],model: params[:model])
    # @product.save
  
    #Second Way
    # @product = Product.find_by(id: params[:id])
    # @recipe.update(name: params[:name], price: params[:price], color: params[:color], make: params[:make],model: params[:model])

    #Third Way
    @product = Product.find_by(id: params[:id])
    @product.price = params[:price]
    @product.color = params[:color]
    @product.make = params[:make]
    @product.model = params[:model]
    @product.save
  end

  def destroy
    @product = Product.find_by(id: params[:id]).delete
  end

end
