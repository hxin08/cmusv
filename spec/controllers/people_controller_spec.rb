require 'spec_helper'

describe PeopleController do

  setup :login

  def mock_person(stubs={})
    @mock_person ||= mock_model(Person, stubs)
  end

  describe "GET index" do
    it "assigns all people as @people if no search parameters are available" do
      Person.should_receive(:find).with(:all, :order => "first_name ASC, last_name ASC").and_return(@mock_person)
      get :index, :search => false
      assigns[:people].should == @mock_person
    end
  end

end
