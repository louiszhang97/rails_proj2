class ReviewGetsUserAndProduct < ActiveRecord::Migration
  def change
    add_reference :reviews, :product, index: true
    add_reference :reviews, :user, index: true
  end
end
