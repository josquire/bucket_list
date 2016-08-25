class AddIndexToLists < ActiveRecord::Migration[5.0]
  def change
    add_reference :lists, :bucket, foreign_key: true
  end
end
