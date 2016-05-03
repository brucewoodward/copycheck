
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

  #describe "Adding and review of copy" do
  #  it "renders the show template" do
  #    key = Key.generate
  #    get :show
  #    expect(response).to render_template('show')
  #  end
  #end
end
