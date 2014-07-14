# jobs_manager_spec.rb
require_relative '../jobs_manager.rb'

describe Jobs_Manager, "#task 0" do
  it "The result should be a sequence consisting of a single job a." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task0("")).to eq("")
  end
end

describe Jobs_Manager, "#task 1" do
  it "The result should be a sequence containing all three jobs abc in no significant order." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task1("cab")).to eq("abc")
  end
end

describe Jobs_Manager, "#task 2" do
  it "The result should be a sequence that positions c before b, containing all three jobs abc." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task2("bca")).to eq("cba")
  end
  it "The result should be a sequence that positions c before b, containing all three jobs abc." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task2("bac")).to eq("acb")
  end
end

describe Jobs_Manager, "#task 3" do
  it "The result should be a sequence that positions f before c, c before b, b before e and a before d containing all six jobs abcdef." do
  	jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task3("abcdef")).to eq("adfcbe")
  end
  it "The result should be a sequence that positions f before c, c before b, b before e and a before d containing all six jobs abcdef." do
  	jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task3("fdecab")).to eq("fcbead")
  end
end

describe Jobs_Manager, "#task 4" do
  it "The result should be an error stating that jobs cannot depend on themselves." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task4("")).to eq("Jobs cannot depend on themselves")
  end
end

describe Jobs_Manager, "#task 5" do
  it "The result should be an error stating that jobs cannot have circular dependencies." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.task5("")).to eq("Jobs cannot have circular dependencies")
  end
end

describe Jobs_Manager, "#manage_jobs task 0" do
  it "The result should be an empty sequence." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.manage_jobs({})).to eq("")
  end
end

describe Jobs_Manager, "#manage_jobs task 1" do
  it "The result should be a sequence consisting of a single job a." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.manage_jobs({:a => ""})).to eq("a")
  end
end

describe Jobs_Manager, "#manage_jobs task 2" do
  it "The result should be a sequence containing all three jobs abc in no significant order." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.manage_jobs({:a => "", :b => "", :c => ""})).to eq("abc")
  end
end

describe Jobs_Manager, "#manage_jobs task 3" do
  it "The result should be a sequence that positions c before b, containing all three jobs abc." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.manage_jobs({:a => "", :b => 'c' , :c => ""})).to eq("acb")
  end
end

describe Jobs_Manager, "#manage_jobs task 4" do
  it "The result should be a sequence that positions f before c, c before b, b before e and a before d containing all six jobs abcdef." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.manage_jobs({:a => "", :b => 'c' , :c => 'f', :d => 'a', :e => 'b', :f => ""})).to eq("adfcbe")
  end
end

describe Jobs_Manager, "#manage_jobs task 5" do
  it "The result should be an error stating that jobs cannot depend on themselves." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.manage_jobs({:a => "", :b => "" , :c => 'c'})).to eq("ERROR: Jobs cannot depend on themselves.")
  end
end

describe Jobs_Manager, "#manage_jobs task 6" do
  it "The result should be a sequence that positions f before c, c before b, b before e and a before d containing all six jobs abcdef." do
    jobs_manager = Jobs_Manager.new
    expect(jobs_manager.manage_jobs({:a => "", :b => 'c' , :c => 'f', :d => 'a', :e => "", :f => 'b'})).to eq("ERROR: Jobs cannot have circular dependencies.")
  end
end