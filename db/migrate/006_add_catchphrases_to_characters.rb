class AddCatchphrasesToCharacters < ActiveRecord::Migration[4.2]
  def change
    add_column :characters, :catchphrases, :string
  end

end
