class ProductsController < ApplicationController

  def index
    sort_choice = params[:sort]
    puts "Sort Choice?"
    p sort_choice
    if sort_choice
      @products = Product.order(sort_choice)
    else
    @products = Product.all
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def new
  end

  def create
    new_product = Product.new(name: params[:name], price: params[:price], color: params[:color], make: params[:make],model: params[:model],image_url: params[:image_url], description: params[:description], in_stock: params[:in_stock])
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
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    @product.in_stock = params[:in_stock]
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
