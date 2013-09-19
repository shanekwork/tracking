class CreateSords < ActiveRecord::Migration
  def change
    create_table :sords do |t|
    	t.integer "user_id"
    	t.string "sord"
      t.timestamps
    end
  end
end
