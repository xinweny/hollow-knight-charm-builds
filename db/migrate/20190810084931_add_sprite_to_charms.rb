class AddSpriteToCharms < ActiveRecord::Migration[5.2]
  def change
    add_column :charms, :sprite, :string
  end
end
