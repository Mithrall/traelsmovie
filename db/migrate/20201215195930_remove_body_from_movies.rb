class RemoveBodyFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :body, :string
  end
end
