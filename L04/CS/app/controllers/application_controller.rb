class ApplicationController < ActionController::Base
    def L04
        session[:c] ||= 0
        session[:c] = session[:c].to_i + 1
        render plain: session[:c]
        session.delete(:c)
    end
end
