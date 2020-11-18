# frozen_string_literal: true

require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  let(:project) { FactoryBot.create(:project) }

  describe "GET #index" do
    it "renders the index template" do
      get :index

      expect(response).to render_template :index
    end
  end

  describe "GET #show" do
    it "renders the show template" do
      get :show, params: { id: project.id }

      expect(response).to render_template :show
    end
  end
end
