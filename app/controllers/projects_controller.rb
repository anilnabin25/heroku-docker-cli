# frozen_string_literal: true

class ProjectsController < ApplicationController
  before_action :tags, except: :show
  before_action :prefectures, except: :show

  def index
    @projects = Project.all.paginate(page: params[:page]).by_end_date
  end

  def show
    @project = Project.friendly.find(params[:id])
    @projects = Project.tagged_with(@project.prefecture_list, any: true).by_end_date
    @related_projects = @projects.reject { |project| project == @project }.first(2)
  end

  private
    def tags
      @tags = ActsAsTaggableOn::Tagging
                  .includes(:tag)
                  .where(context: "tags")
                  .map { |tagging| { "id" => tagging.tag_id.to_s, "name" => tagging.tag.name } }
                  .uniq
    end

    def prefectures
      @prefectures = ActsAsTaggableOn::Tagging
                         .includes(:tag)
                         .where(context: "prefectures")
                         .map { |tagging| { "id" => tagging.tag_id.to_s, "name" => tagging.tag.name } }
                         .uniq
    end
end
