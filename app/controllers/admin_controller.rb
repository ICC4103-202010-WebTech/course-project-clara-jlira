class AdminController < ApplicationController
  def events_comments_admin
    @comments = Comment.all
  end

  def organizations_admin
    @organizations = Organization.all
  end

  def events_admin
    @events = Event.all
  end

  def users_admin
    @users = User.all
  end

  def new
  end

  def create
  end
end

