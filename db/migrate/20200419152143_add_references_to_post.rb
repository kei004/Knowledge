class AddReferencesToPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :categories, foreign_key: true
  end
end
