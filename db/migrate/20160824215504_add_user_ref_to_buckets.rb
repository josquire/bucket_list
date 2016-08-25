class AddUserRefToBuckets < ActiveRecord::Migration[5.0]
  def change
    add_reference :buckets, :user, foreign_key: true
  end
end
