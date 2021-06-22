class CreateNginxes < ActiveRecord::Migration[5.2]
  def change
    create_table :nginxes do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
