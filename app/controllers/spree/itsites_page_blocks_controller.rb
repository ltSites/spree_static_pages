class Spree::ItsitesPageBlocksController < Spree::StoreController
  helper 'spree/products'
  respond_to :html

  def show
    @page = Spree::ItsitesPageBlock.where(url: params[:url]).first
  end

end
