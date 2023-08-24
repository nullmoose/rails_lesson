class CreateMicroBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :micro_blogs do |t|
      t.string :blurb

      t.timestamps
    end
  end
end
