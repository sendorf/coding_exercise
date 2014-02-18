# jobs_manager_spec.rb
require_relative '../jobs_manager.rb'

describe Jobs_Manager, "#task 0" do
  it "The result should be a sequence consisting of a single job a." do
    jobs_manager = Jobs_Manager.new
    jobs_manager.task0("").should eq("")
  end
end

describe Jobs_Manager, "#task 1" do
  it "The result should be a sequence containing all three jobs abc in no significant order." do
    jobs_manager = Jobs_Manager.new
    jobs_manager.task1("cab").should eq("abc")
  end
end

describe Jobs_Manager, "#task 2" do
  it "The result should be a sequence that positions c before b, containing all three jobs abc." do
    jobs_manager = Jobs_Manager.new
    jobs_manager.task2("bca").should eq("cba")
  end
  it "The result should be a sequence that positions c before b, containing all three jobs abc." do
    jobs_manager = Jobs_Manager.new
    jobs_manager.task2("bac").should eq("acb")
  end
end

describe Jobs_Manager, "#task 3" do
  it "The result should be a sequence that positions f before c, c before b, b before e and a before d containing all six jobs abcdef." do
  	jobs_manager = Jobs_Manager.new
    jobs_manager.task3("abcdef").should eq("adfcbe")
  end
  it "The result should be a sequence that positions f before c, c before b, b before e and a before d containing all six jobs abcdef." do
  	jobs_manager = Jobs_Manager.new
    jobs_manager.task3("fdecab").should eq("fcbead")
  end
end

describe Jobs_Manager, "#task 4" do
  it "The result should be an error stating that jobs cannot depend on themselves." do
    jobs_manager = Jobs_Manager.new
    jobs_manager.task4("").should eq("Jobs cannot depend on themselves")
  end
end

describe Jobs_Manager, "#task 5" do
  it "The result should be an error stating that jobs cannot have circular dependencies." do
    jobs_manager = Jobs_Manager.new
    jobs_manager.task5("").should eq("Jobs cannot have circular dependencies")
  end
end