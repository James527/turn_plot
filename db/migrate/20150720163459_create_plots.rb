class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
    	t.string :title, null: false, default: "My New Plot"
    	t.text :content, null: false, default: "Hello World!"
    	t.boolean :active_plot, default: false
    	t.references :user, index: true

		t.timestamps null: false
    end
  end
end
