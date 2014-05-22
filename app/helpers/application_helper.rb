module ApplicationHelper

	def is_logged_in

		if session[:user_id] != nil
			user = User.find(session[:user_id])
			if user
				return true
			else
				return false
			end
		else
			return false
		end
	end

end
