class SessionsController < ApplicationController
    def new
        # nothing to do here!
    end
 
    def create
        return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
        session[:name] = params[:name]
        redirect_to controller: 'customer', action: 'show'
    end

    def destroy
        session.clear :name
        redirect_to controller: 'sessions', action: 'new'
    end
end



