module ApplicationHelper

	def profile_pic(user)
		if user.avatar.url != nil
			user.avatar.url
		else
			'default.png'
		end			
	end


	def suggest
   		@suggestions = []

	    User.all.each do |user|
	      unless current_user.following.include?(user.id.to_s)
	        @suggestions.push(user)
	        @suggestions = @suggestions.shuffle
	      end
	    end
	end
	
end
