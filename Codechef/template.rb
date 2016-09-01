class ProgramTemplate
	def self.test_cases
		t = gets.to_i
		t.times do 
			yield
		end
	end
end