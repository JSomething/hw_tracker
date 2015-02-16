class AddLinkColumns < ActiveRecord::Migration
  def change
    add_column :links, :link_url, :text
    add_column :links, :submission_id, :integer
  end
end
