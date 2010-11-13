class Deliverable < ActiveRecord::Base
  validates_presence_of :person_id, :deliverable_type, :team_id
  validates_attachment_presence :deliverable
  validates_attachment_content_type :deliverable, :content_type=>['application/zip']

  validates_attachment_content_type :feedback, :content_type=>['application/zip'], :if => Proc.new {|d| !Person.find_by_id(d.person_id).is_student}
  validate :is_student

  has_attached_file :feedback,
      :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/amazon_s3.yml",
      :path => "feedback_submissions/Ant/:id/:filename"

  has_attached_file :deliverable,
      :storage => :s3,
      :s3_credentials => "#{RAILS_ROOT}/config/amazon_s3.yml",
      :path => "deliverable_submissions/Ant/:id/:filename"
#      :url => "/deliverables/:basename.:extension",
#      :path => ":rails_root/public/:basename.:extension"

  DELIVERABLE_TYPES = ["Team", "Individual"]

  def is_student
    if person_id.nil?
      return
    end

    if !Person.find_by_id(person_id).is_student
      errors.add :person_id, 'Only a student can submit a deliverable'
    end
  end


  
end
