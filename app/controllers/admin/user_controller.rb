class Admin::UserController < AdminController
    before_action :get_users

    def show
        respond_to do |format|
            format.html{render 'admin/show'}
            format.json
            format.xml
        end   
    end

    def get_users
        @users = User.joins(:recettes).distinct
    end
end