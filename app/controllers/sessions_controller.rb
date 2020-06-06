class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end
 
    def create
        customer = Customer.find_by(email: params[:email])
        if customer && customer.authenticate(params[:password])
            session[:customer_id] = customer.id
          flash[:notice] = "Welcome back"
          redirect_to customer_path(customer)
        else
          render 'new'
          flash[:notice] = "Please try again"
        end
      end
    

    def destroy
        session.clear :name
        redirect_to controller: 'sessions', action: 'new'
    end
end



