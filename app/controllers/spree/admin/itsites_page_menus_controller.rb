class Spree::Admin::ItsitesPageMenusController < Spree::Admin::ResourceController
  respond_to :html

  def index
    @menus = Spree::ItsitesPageMenu.all
  end

  def new
    @menu = Spree::ItsitesPageMenu.new
  end

  def edit
    @menu = Spree::ItsitesPageMenu.where(id: params[:id]).first
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :active, :hash_tag)
  end
end
