# jobs_manager_spec.rb
require_relative '../jobs_manager.rb'

describe Jobs_Manager, "#task 0" do
  it " returns an empty string when an empty string is given" do
    jobs_manager = Jobs_Manager.new
    jobs_manager.task0("").should eq("")
  end
end