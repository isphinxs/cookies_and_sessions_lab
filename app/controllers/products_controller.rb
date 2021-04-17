class ProductsController < ApplicationController
    def index
        @cart = self.cart
    end

    def add
        # byebug
        self.cart << params[:product]
        redirect_to "/"
    end

    def cart_params
        params.permit(:product)
    end
end