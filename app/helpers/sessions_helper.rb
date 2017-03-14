module SessionsHelper
    def logged_in?
        session[:user_id] ? true : false
    end
    def curr_user_name
        if logged_in?
            session[:user_name]
        else
            'null_user'
        end
    end
end
