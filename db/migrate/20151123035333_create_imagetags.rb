class CreateImagetags < ActiveRecord::Migration
  def change
    create_table :imagetags do |t|
    	t.belongs_to :image, index: true
    	t.belongs_to :tag, index: true
      t.timestamps null: false
    end
  end
end
