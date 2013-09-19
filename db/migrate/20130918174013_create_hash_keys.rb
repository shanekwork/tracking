class CreateHashKeys < ActiveRecord::Migration
  def change
    create_table :hash_keys do |t|
    	t.string "hash"
      t.timestamps
    end
  end
end
