Factory.define :valid_individual_deliverable, :class=>'Deliverable' do |d|
  d.name 'Briefing'
  d.deliverable_type 'Individual'
  d.team_id 1
  d.deliverable_updated_at '10/20/2010'
  d.deliverable_file_name "testfile"
d.deliverable_content_type 'application/zip'
end

Factory.define :valid_team_deliverable, :class=>'Deliverable' do |d|
  d.name 'Briefing'
  d.deliverable_type 'Team'
  d.team_id '2'
  d.deliverable_updated_at '10/20/2010'
  d.deliverable_file_name "testfile"
  d.deliverable_content_type 'application/zip'
end

Factory.define :staff_person, :class => 'Person' do |p|
  p.first_name "Todd"
  p.last_name "Sedano"
  p.human_name "Todd Sedano"
  p.email "todd.sedano@sv.cmu.edu"
  p.is_staff 1
end

Factory.define :student_person, :class => 'Person' do |p|
  p.first_name "Howard"
  p.last_name "Huang"
  p.human_name "Howard Awesome Huang"
  p.email "howard.huang@sv.cmu.edu"
  p.is_student 1
end


