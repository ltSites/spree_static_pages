class CreateSpreeItsitesPageMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_itsites_page_menus do |t|
      t.string :name
      t.boolean :active, default: true
      t.string :hash_tag

      t.timestamps
    end
  end
end
