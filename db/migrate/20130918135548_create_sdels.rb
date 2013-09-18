class CreateSdels < ActiveRecord::Migration
  def change
    create_table :sdels do |t|
    	t.string "hashed_sdel"
      t.timestamps
    end
  end
end
