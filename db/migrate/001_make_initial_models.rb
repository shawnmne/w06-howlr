class MakeInitialModels < ActiveRecord::Migration
	def change
		create_table :wolves do |t|
			t.string :name, null: false
			t.string :image, null: false
			t.string :description
		end

		create_table :howls do |t|
			t.string :text
			t.string :image 
			t.integer :wolf_id
			t.integer :like
			t.timestamps 
		end
	end
end