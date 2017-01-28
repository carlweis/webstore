class Admin::BaseController < ApplicationController
   before_action :authenticate_admin

   private

   def authenticate_admin
     if !(user_signed_in? && current_user.admin?)
       puts "NOT AUTHORIZED!!!"
       flash[:alert] = "You are not authorized to view that page!"
       redirect_to root_path
     end
   end
end
