class ProductsController < ApplicationController
		before_filter :authenticate_user!

	def index
		@product= session[:product] ||{}
	end
	def create
		id = params[:id]
		product = session[:product] || {}
		product[id] = (product[id] || 0) + 1

		redirect_to :action => :index

	end

end
