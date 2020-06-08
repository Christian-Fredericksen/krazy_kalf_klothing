class CustomersController < ApplicationController
    
    def index
        @customer = Customer.all
    end
    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.valid?
            @customer.save
            session[:customer_id] = @customer.id
            @customer.carts.build
            redirect_to customer_path(@customer)
        else
            render :new
        end
    end

    def show
        @customer = Customer.find_by(params[:id])
    end









    private
    def customer_params
        params.require(:customer).permit(:first_name, :last_name, :email, :password)
    end


end
