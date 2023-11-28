class UserKnowledgeDomainsController < ApplicationController
  before_action :set_user_knowledge_domain, only: %i[increase_stars]

  def increase_stars
    stars = @user_knowledge_domain.stars + 1
    @user_knowledge_domain.update(stars: stars)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_knowledge_domain
    @user_knowledge_domain = User.find(params[:id])
  end
end
