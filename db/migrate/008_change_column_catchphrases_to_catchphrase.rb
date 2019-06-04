class ChangeColumnCatchphrasesToCatchphrase < ActiveRecord::Migration[4.2]
  def change
    rename_column :characters, :catchphrases, :catchphrase
  end
end
