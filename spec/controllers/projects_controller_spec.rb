
require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  #describe "POST #create" do
  #  context "with valid attributes" do
  #    it "create new project" do
  #      post :create, project: attributes_for(:contact)
  #  end
  #end

  describe "Creating a new project" do
    it "renders the new template" do
      get :new
      expect(response).to render_template('new')
    end
  end

  # TODO figure out why the following test doesn't work when it's possible to
  # run wget localhost:3000/projects/show from the command line.
  #describe "Adding and review of copy" do
  #  it "renders the show template" do
  #    get :show
  #    expect(response).to render_template('show')
  #  end
  #end
end
