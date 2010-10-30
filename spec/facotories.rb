Factory.define :valid_individual_deliverable, :class=>'Deliverable' do |d|
  d.name 'Briefing'
  d.deliverable_type 'individual'
  d.person_id '12'
  d.deliverable_updated_at '10/20/2010'

end

Factory.define :valid_team_deliverable, :class=>'Deliverable' do |d|
  d.name 'Briefing'
  d.deliverable_type 'team'
  d.person_id '12'
  d.team_id '2'
  d.deliverable_updated_at '10/20/2010'

end


