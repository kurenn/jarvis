class RenameResultColumnFromQueries < ActiveRecord::Migration[7.0]
  def change
    rename_column :queries, :result, :sql
  end
end
