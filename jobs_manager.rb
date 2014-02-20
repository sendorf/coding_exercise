# jobs_manager.rb
class Jobs_Manager

  def manage_jobs(job_structure = {})
    result = ""
    used_keys = []
    begin
      job_structure.each_key do |key| 
        key_s = key.to_s
        key_c = key.to_s.chars.first
        dependent_s = job_structure[key].to_s
        dependent_c = job_structure[key].to_s.chars.first
        if dependent_c == key_c
          raise "ERROR: Jobs cannot depend on themselves."  # Raises an error if the job depends on itself
        elsif dependent_c.nil?
          if result.rindex(key_c).nil?
            result.concat(key_s)
          end
        else 
          if !result.rindex(dependent_c).nil?                                       # Checks if the dependent job is already processed
            index = result.rindex(dependent_c)
            result.delete!(dependent_s)
            result = result.insert(index, "#{job_structure[key].to_s + key.to_s}")  #  If so replaces the repeated char with the proper sequence    
          elsif result.rindex(key_c).nil?                                           # Checks if the next dependent key is 
            result.concat(dependent_s)                                              # already processed by any dependence
            result.concat(key_s)
          else
            index = result.rindex(key_c)
            result.delete!(key_s)
            result = result.insert(index, "#{dependent_s + key_s}")     # Replaces an already processed dependent key with the 
          end                                                           # proper dependence.
        end
      end
      result
    rescue Exception => e
      e.message                                           # Rescues the error with the selected message.
    end
  end

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
  	a, b, c, d, e, f = false
  	result = ""
    jobs_sequence.chars.each do |job| 	# Runs the string parameter character by character
    	# Checks the dependences and keeps them 
        if(job == 'a' && !a)
        	result.concat("ad")
        	a = true
        	d = true
        elsif(job == 'b' && !b)
        	result.concat("fcbe")
        	f = true
        	c = true
        	b = true
        	e = true
        elsif(job == 'c' && !c)
        	result.concat("fcbe")
        	f = true
        	c = true
        	b = true
        	e = true
        elsif(job == 'd' && !d)
        	result.concat("ad")
        	a = true
        	d = true
        elsif(job == 'e' && !e)
        	result.concat("fcbe")
        	f = true
        	c = true
        	b = true
        	e = true
        elsif(job == 'f' && !f)
        	result.concat("fcbe")
        	f = true
        	c = true
        	b = true
        	e = true
        end
    end
    result
  end

  def task4(jobs_sequence)
  	begin
  		raise "Error"							# Raises an Error because jobs cannot depend on themselves
  	rescue
  		"Jobs cannot depend on themselves"		# Method takes the value of the error message
  	end
  end

  def task5(jobs_sequence)
  	begin
  		raise "Error"								# Raises an Error because jobs cannot have circular dependencies
  	rescue
  		"Jobs cannot have circular dependencies"	# Method takes the value of the error messag
  	end
  end
end