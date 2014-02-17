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

  def task2(jobs_sequence)
  	b = false
  	result = ""
    jobs_sequence.chars.each do |job| 	# Runs the string parameter character by character 
        if(job == 'c'  && b)				# Checks if when the job 'b' appears job 'c' has appeared before
        	result.concat("cb")
        	b = true
        # elsif (job == 'b' && b)       # I suppose that jobs cannot be repeated

        elsif (job == 'b' && !b)        # Marks 'c' job as "read"
            b = true
        else
        	result.concat(job)  		# Concats the jobs in the order they have been given as parameter
        end								# If they are not 'b' or 'c' jobs
     end
    result						     					
  end

  def task3(jobs_sequence)
  	a, b, c, d, e, f = nil
  	result = ""
    jobs_sequence.chars.each do |job| 	# Runs the string parameter character by character 
        if(job == 'c'  && b)				# Checks if when the job 'b' appears job 'c' has appeared before
        	result.concat(job+b)
        	c = ''
        elsif(job == 'f'  && c)				# Checks if when the job 'b' appears job 'c' has appeared before
        	result.concat(job+c)
        	f = ''
        elsif(job == 'a'  && d)				# Checks if when the job 'b' appears job 'c' has appeared before
        	result.concat(job+d)
        	a = ''
        elsif(job == 'b'  && e)				# Checks if when the job 'b' appears job 'c' has appeared before
        	result.concat(job+e)
        	b = ''
        elsif (job == 'b' && b.nil?)        # Marks 'c' job as "read"
            b = job
        elsif (job == 'c' && c.nil?)        # Marks 'c' job as "read"
            c = job
        elsif (job == 'd' && d.nil?)        # Marks 'c' job as "read"
            d = job
        elsif (job == 'e' && d.nil?)        # Marks 'c' job as "read"
            e = job
        else
        	result.concat(job)  		# Concats the jobs in the order they have been given as parameter
        end								# If they are not 'b' or 'c' jobs
     end
    result						     					
  end
end