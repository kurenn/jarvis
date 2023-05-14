class AddResultToQueries < ActiveRecord::Migration[7.0]
  def change
    add_column :queries, :result, :text
  end
end
