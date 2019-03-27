class Spree::ItsitesPageBlock < ApplicationRecord
  validates_presence_of :name, :url, :text, :menu_id

  belongs_to :page_menu, class_name: "Spree::ItsitesPageMenu", foreign_key: :menu_id

  scope :active_list, -> {where(active: true)}
end
