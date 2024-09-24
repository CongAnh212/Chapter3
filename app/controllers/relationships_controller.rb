class RelationshipsController < ApplicationController
  before_action :logged_in_user
  before_action :load_user, only: %i[create]
  before_action :load_relationship, only: %i[destroy]

  def create
    current_user.follow(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    current_user.unfollow(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  private

  def load_user
    @user = User.find(params[:followed_id])
  end

  def load_relationship
    @user = Relationship.find(params[:id]).followed
  end
end
