class UserKnowledgeDomainsController < ApplicationController
  before_action :set_user_knowledge_domain, only: %i[increase_stars]

  def increase_stars
    @user_knowledge_domain.increment!(:stars)
    profile_user = User.find(params[:profile_user])

    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
      format.turbo_stream { render turbo_stream: turbo_stream.replace("domain-#{@user_knowledge_domain.id}", partial: 'users/knowledge_domain_card', locals: { user_knowledge_domain: @user_knowledge_domain, profile_user: profile_user }) }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user_knowledge_domain
    @user_knowledge_domain = UserKnowledgeDomain.find(params[:id])
  end
end
