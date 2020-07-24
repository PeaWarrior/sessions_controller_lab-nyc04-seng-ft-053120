class SessionsController < ApplicationController
    

    def new
    end

    def create
        return redirect_to login_path if !params[:name] || params[:name].blank?

        session[:name] = params[:name]
        redirect_to root_path
    end

    def destroy
        session.delete :name
    end

end