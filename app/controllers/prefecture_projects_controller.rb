# frozen_string_literal: true

class PrefectureProjectsController < ApplicationController
  before_action :tags
  before_action :prefectures

  def index
    @prefecture = params[:prefecture]
    if @prefecture
      @projects = Project.tagged_with(@prefecture)
                      .all
                      .paginate(page: params[:page])
                      .by_end_date
    else
      redirect_to root_path
    end
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
