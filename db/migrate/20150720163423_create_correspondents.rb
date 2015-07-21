class CreateCorrespondents < ActiveRecord::Migration
  def change
    create_table :correspondents do |t|
    	t.references :user, index: true
    	t.integer :second_user_id, index: true
    	t.integer  :letter_count, default: 0, null: false

		t.timestamps null: false
    end
  end
end