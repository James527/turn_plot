class AddUserRefToCorrespondents < ActiveRecord::Migration
  def change
    add_reference :correspondents, :u_id, index: true, foreign_key: true
  end
end
