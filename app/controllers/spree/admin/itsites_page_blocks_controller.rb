class Spree::Admin::ItsitesPageBlocksController < Spree::Admin::ResourceController
  respond_to :html

  def index
    @pages = Spree::ItsitesPageBlock.all
  end

  def new
    @page = Spree::ItsitesPageBlock.new
    @menus = Spree::ItsitesPageMenu.all
  end

  def edit
    @page = Spree::ItsitesPageBlock.where(id: params[:id]).first
    @menus = Spree::ItsitesPageMenu.all
  end

  private

  def menu_params
    params.require(:page).permit(:name, :active, :menu_id, :url, :text, :seo_title, :seo_keywords, :seo_description)
  end
end
