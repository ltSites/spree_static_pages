module Spree
  BaseHelper.class_eval do

    def itsites_pages_menu(hash_tag)
      menu = Spree::ItsitesPageMenu.where(hash_tag: hash_tag).first

      if menu.present?
        content = ""
        menu.pages.active_list.each do |i|
          content += "<li>#{link_to i.name, itsites_static_page_path(i.url)}</li>"
        end
        return raw content
      end
    end

  end
end