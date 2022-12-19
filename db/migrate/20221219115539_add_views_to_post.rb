# frozen_string_literal: true

# This are the views mvc for posts model
class AddViewsToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :views, :integer, default: 0
  end
end
