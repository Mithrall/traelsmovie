class AddPosterYearPlotToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :poster, :string
    add_column :movies, :year, :string
    add_column :movies, :plot, :string
  end
end
