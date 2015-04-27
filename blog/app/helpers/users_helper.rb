module UsersHelper
	def is_number?(n)
		if n =~ /^\d+$/
			true
		else 
			false
		end		
	end	
end
