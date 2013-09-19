class CreateUrlHashKeys < ActiveRecord::Migration
  def change
    create_table :url_hash_keys do |t|
    	t.string "url_hash"
      t.timestamps
    end
  end
end
