class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]

  def show
    @user_knowledge_domains = @user.user_knowledge_domains.includes(:knowledge_domain, :voters).order(stars: :desc)
    @is_profile_owner = current_user == @user
  end

  def edit
    @knowledge_domains = KnowledgeDomain.order(:name)
  end

  def update
    @user.update(user_params)

    redirect_to user_path(@user), notice: 'Dominios de conhecimento atualizados com sucesso!'
  end

  private

  def user_params
    params.require(:user).permit(knowledge_domain_ids: [])
  end

  def set_user
    @user = User.find(params[:id])
  end
end
