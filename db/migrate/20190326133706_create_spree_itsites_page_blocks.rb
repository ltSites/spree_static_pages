class CreateSpreeItsitesPageBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_itsites_page_blocks do |t|
      t.integer :menu_id
      t.string :name, null: false
      t.boolean :active, default: true
      t.string :url, unique: true, null: false
      t.text :text, null: false
      t.string :seo_title
      t.string :seo_keywords
      t.text :seo_description

      t.timestamps
    end
  end
end
