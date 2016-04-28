class ProductsController < ApplicationController

  def index   #index is to show multiple products
    sort_choice = params[:sort]
    puts "Sort Choice?"
    p sort_choice
    if sort_choice == "price" || sort_choice == "price DESC" #sorting by price
      @products = Product.order(sort_choice)
    elsif sort_choice == "discount"
      @products = Product.where("price <?", 50)      
    else
      @products = Product.all
    end
  end

  def show   #shoe is used to return just one, like random example
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
    end
  end

  def new
  end

  def create
    new_product = Product.new(name: params[:name], price: params[:price], color: params[:color], make: params[:make],model: params[:model], description: params[:description], in_stock: params[:in_stock], supplier_id: params[:supplier][:supplier_id], user_id: current_user)
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

  def search
    search_term = params[:user_search]
    @products = Product.where("name LIKE ? OR description LIKE ?", "%#{search_term}%", "%#{search_term}%")
   render :index
  end
end
