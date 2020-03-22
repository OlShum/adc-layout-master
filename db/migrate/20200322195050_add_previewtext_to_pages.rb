class AddPreviewtextToPages < ActiveRecord::Migration[6.0]
  def change
    add_column :pages, :previewtext, :string
  end
end
