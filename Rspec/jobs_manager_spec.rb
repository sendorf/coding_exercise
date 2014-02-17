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