class Spree::ItsitesPageMenu < ApplicationRecord
  validates_presence_of :name, :hash_tag

  has_many :pages, class_name: "Spree::ItsitesPageBlock", foreign_key: :menu_id

end
