Factory.define :valid_individual_deliverable, :class=>'Deliverable' do |d|
  d.name 'Briefing'
  d.deliverable_type 'Individual'
  d.person_id '12'
  d.team_id nil
  d.deliverable_updated_at '10/20/2010'
  d.deliverable_file_name "testfile"
end

Factory.define :valid_team_deliverable, :class=>'Deliverable' do |d|
  d.name 'Briefing'
  d.deliverable_type 'Team'
  d.person_id '12'
  d.team_id '2'
  d.deliverable_updated_at '10/20/2010'
  d.deliverable_file_name "testfile"
end


