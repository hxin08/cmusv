require 'spec_helper'

describe "/deliverables/index.html.erb" do
  include DeliverablesHelper

  before(:each) do
    assigns[:deliverables] = [
      stub_model(Deliverable),
      stub_model(Deliverable)
    ]
  end

  it "renders a list of deliverables" do
    render
  end
end
