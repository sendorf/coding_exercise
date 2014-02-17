# jobs_manager.rb
class Jobs_Manager

  def task0(jobs_sequence)
    jobs_sequence 	# Returns the String given as parameter, as long as the string given as parameter is empty 
                  	# the result is the expected.
  end

   def task1(jobs_sequence)
    jobs_sequence.chars.sort.join 	# Returns the String given as parameter, as long as the order does not 
                  					# matter I have decide to order them alphabetically
  end
end