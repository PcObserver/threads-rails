class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def show
    @user_knowledge_domains = @user.user_knowledge_domains.includes(:knowledge_domain, :voters).order(stars: :desc)
    @is_profile_owner = current_user == @user
  end

  def edit
  end

  def update
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end
end
