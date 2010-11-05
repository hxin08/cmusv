class Deliverable < ActiveRecord::Base
  validates_presence_of :deliverable_updated_at, :person_id, :deliverable_file_name, :deliverable_type
  validate :team_id_should_be_present


  DELIVERABLE_TYPES = ["Team", "Individual", "Feedback"]

  protected
  def team_id_should_be_present
    if  deliverable_type == "Team" && team_id.nil?
      errors.add(:team_id,"should be selected")
    end
  end
  
end
