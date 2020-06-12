class ApplicationController < ActionController::Base
    
    helpers do

        def current_customer
            if @customer != nil
                @customer
            else
            @customer = Customer.find_by_id(session[:user_id])
            end
        end
    end
end
