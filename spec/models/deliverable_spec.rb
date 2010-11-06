require 'spec_helper'
require 'factory_girl'

describe Deliverable do
  before(:each) do
    @student_person =  Factory.create :student_person

    @individual_deliverable = Factory.build(:valid_individual_deliverable, :person_id => @student_person.id)
    @team_deliverable = Factory.build(:valid_team_deliverable, :person_id => @student_person.id)
  end


   it "is valid with valid attributes" do
     # valid attributes are: submission date, submitter (person id), and file attachment" #Updated on 10/20/2010
     #Note: Not certain if is easy to test the file attachment as a required field (10/20/2010)

    @individual_deliverable.should be_valid
    @team_deliverable.should be_valid
   end

   it "should have delivarable type for all the deliverable" do
     @individual_deliverable.deliverable_type = nil
    @team_deliverable.deliverable_type = nil
    @individual_deliverable.should_not be_valid
    @individual_deliverable.should have(1).error_on(:deliverable_type)
    @team_deliverable.should_not be_valid
    @team_deliverable.should have(1).error_on(:deliverable_type)
   end

=begin
   #Updated on 10/20/2010
   # See RspecExample Code 
   it "is not valid without an submission date" do
    @individual_deliverable = Factory.build(:valid_individual_deliverable, :deliverable_updated_at=>nil)
    @team_deliverable = Factory.build(:valid_team_deliverable,:deliverable_updated_at=>nil)

    @individual_deliverable.should_not be_valid
    @individual_deliverable.should have(1).error_on(:deliverable_updated_at)
    @team_deliverable.should_not be_valid
    @team_deliverable.should have(1).error_on(:deliverable_updated_at)
   end
=end
           

   it "is not valid without an submitter" do
     #Updated on 10/20/2010
     @individual_deliverable.person_id = nil
    @team_deliverable.person_id = nil

    @individual_deliverable.should_not be_valid
    @individual_deliverable.should have(1).error_on(:person_id)
    @team_deliverable.should_not be_valid
    @team_deliverable.should have(1).error_on(:person_id)
   end

=begin
   it "is not valid without a file attachment" do
     #Updated on 10/20/2010
     @individual_deliverable = Factory.build(:valid_individual_deliverable, :deliverable_file_name=>nil)
    @team_deliverable = Factory.build(:valid_team_deliverable,:deliverable_file_name=>nil)

    @individual_deliverable.should_not be_valid
    @individual_deliverable.should have(1).error_on(:deliverable_file_name)
    @team_deliverable.should_not be_valid
    @team_deliverable.should have(1).error_on(:deliverable_file_name)
   end
=end

  it "is not valid without a team id" do
     @individual_deliverable.team_id = nil
    @team_deliverable.team_id = nil

    @individual_deliverable.should_not be_valid
    @individual_deliverable.should have(1).error_on(:team_id)
    @team_deliverable.should_not be_valid
    @team_deliverable.should have(1).error_on(:team_id)
  end

   it "should take an optional course_id and task_number passed in from the curriculum website" do
     @individual_deliverable.course_id = 5
     @individual_deliverable.should be_valid
     @individual_deliverable.course_id = nil
     @individual_deliverable.should be_valid

     @individual_deliverable.task_number = 5
     @individual_deliverable.should be_valid
     @individual_deliverable.task_number = nil
     @individual_deliverable.should be_valid
   end

   it "should allow a team member to upload a zip of their deliverables for a given course for a given task" do
     @team_deliverable.course_id =1
     @team_deliverable.task_number =1
     @team_deliverable.should be_valid
   end

   it "should allow individual team members to be able to upload individual deliverables such as an executive briefing" do
         @individual_deliverable.course_id =1
     @individual_deliverable.task_number =1
         @individual_deliverable.should be_valid
   end

  it "should only allow students to submit a deliverable" do
    @staff_person = Factory.create :staff_person

    @individual_deliverable = Factory.build(:valid_individual_deliverable, :person_id=>@staff_person.id)
    @team_deliverable = Factory.build(:valid_team_deliverable,:person_id=>@staff_person.id)

    @individual_deliverable.should_not be_valid
    @individual_deliverable.should have(1).error_on(:person_id)
    @team_deliverable.should_not be_valid
    @team_deliverable.should have(1).error_on(:person_id)

  end

   it "should not allow any student to see any deliverables submitted by another other team"

   it "should notify the team’s faculty via email that the submission occurred"

end
