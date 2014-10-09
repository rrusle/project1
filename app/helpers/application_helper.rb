module ApplicationHelper
		def intellinav
		nav = ''
		if @current_user.present?
			nav += "<li> Welcome #{ @current_user.firstname } </li>"
			# nav += "<li>" + link_to('Edit profile', edit_owner_path) + "</li> "
			nav += "<li> #{ link_to('Sign Out', login_path, :method => :delete, :data => {:confirm => 'Are you sure?'}) }</li>"
		else 
			nav += "<li>#{ link_to('Join', new_owner_path) }</li>"
			nav += "<li>#{ link_to('Log In', login_path) }</li>"
		end
	end
end
