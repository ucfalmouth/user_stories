require 'rails_helper'

describe ProjectsController do
  describe "GET #index" do
    it "populates an array of projects" do
      project = FactoryGirl.create(:project)
      get :index

      expect(assigns(:projects)).to include(project)
    end

    it "renders the :index view" do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe "GET #show" do
    it "assigns the requested project to @project" do
      project = FactoryGirl.create(:project)
      get :show, id: project
      expect(assigns(:project)).to eq(project)
    end

    it "renders the :show view" do
      project = FactoryGirl.create(:project)
      get :show, id: project
      expect(response).to render_template('show')
    end

    it "populates an array of user stories associated to @project" do
      project = FactoryGirl.create(:project)
      user_story = FactoryGirl.create(:user_story, project_id: project.id)

      get :show, id: project
      expect(assigns(:user_stories)).to include(user_story)
    end
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new project" do
        expect {
          post :create, project: FactoryGirl.attributes_for(:project)
        }.to change(Project, :count).by(1)
      end

      it "redirects to the project root path" do
        post :create, project: FactoryGirl.attributes_for(:project)
        expect(response).to redirect_to Project.last
      end
    end

    context "with invalid attributes" do

      it "does not save the new project" do
      end

      it "redirects to the new method" do
      end
    end
  end
end
