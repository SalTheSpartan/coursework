class RemoveImgFromPictures < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :img, :string
  end
end
