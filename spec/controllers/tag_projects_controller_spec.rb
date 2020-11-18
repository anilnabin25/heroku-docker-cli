# frozen_string_literal: true

require "rails_helper"

RSpec.describe TagProjectsController, type: :controller do
  let(:project) { FactoryBot.create(:project) }

  describe "GET #index" do
    before do
      project.tag_list.add("tag")
      project.save!
    end

    it "redirect to the root_path" do
      get :index

      expect(response).to redirect_to root_path
    end

    it "renders the index template" do
      tag = project.tag_list.first
      get :index, params: { tag: tag }

      expect(response).to render_template :index
    end

    it "returns the tag" do
      tag = project.tag_list.first
      get :index, params: { tag: tag }

      expect(assigns(:tag)).to eq tag
    end
  end
end
