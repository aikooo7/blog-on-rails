# frozen_string_literal: true

# Database migration for Title and Body.
class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :Title
      t.string :Body

      t.timestamps
    end
  end
end
