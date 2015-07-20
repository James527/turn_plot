class AddCorrespondentRefToLetters < ActiveRecord::Migration
  def change
    add_reference :letters, :c_id, index: true, foreign_key: true
  end
end
