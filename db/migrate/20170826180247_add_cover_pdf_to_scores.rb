class AddCoverPdfToScores < ActiveRecord::Migration[5.1]
  def change
    add_column :scores, :cover, :string
    add_column :scores, :pdf, :string
  end
end
