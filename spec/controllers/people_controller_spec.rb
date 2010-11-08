require 'spec_helper'

describe PeopleController do

  def mock_person(stubs={})
    @mock_person ||= mock_model(Person, stubs)
  end

  describe "GET index" do
    it "assigns all people as @people if no search parameters are available" do
      Person.stub(:find).with(:all).and_return(@mock_person)
      get :index
      assigns[:people].should == @mock_person
    end
  end
end
