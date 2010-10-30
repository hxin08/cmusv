require 'spec_helper'

describe Deliverable do
  before(:each) do
    @individual_deliverable = Factory.build(:valid_individual_deliverable)
  end


   it "is valid with valid attributes" do
     # valid attributes are: submission date, submitter (person id), and file attachment" #Updated on 10/20/2010
     #Note: Not certain if is easy to test the file attachment as a required field (10/20/2010)
    puts @individual_deliverable.name
    @individual_deliverable.should be_valid
   end


            
   it "is not valid without an submission date" #Updated on 10/20/2010
           # See RspecExample Code

   it "is not valid without an submitter" #Updated on 10/20/2010

   it "is not valid without a file attachment" #Updated on 10/20/2010

   it "should take an optional course_id and task_number passed in from the curriculum website"

   it "should allow a team member to upload a zip of their deliverables for a given course for a given task"

   it "should allow individual team members to be able to upload individual deliverables such as an executive briefing"

   it "should not allow any student to see any deliverables submitted by another other team"

   it "should notify the team’s faculty via email that the submission occurred"

end
