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
    p new_product
    new_product.save
    redirect_to "/products/#{new_product.id}"
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
    @product.name = params[:name]
    @product.price = params[:price]
    @product.color = params[:color]
    @product.make = params[:make]
    @product.model = params[:model]
    @product.save
    flash[:success] = "Product Updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id]).delete
    flash[:warning] = "Product Deleted"
    redirect_to "/products"

  end

end
