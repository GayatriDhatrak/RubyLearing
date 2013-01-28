module IsBlank

		def blank?(value)
         value.nil? || value.length == 0
		end

		def present?(value)
			!blank?(value)
		end
		
end