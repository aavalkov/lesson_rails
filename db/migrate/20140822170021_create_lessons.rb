class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
    	t.string :name
    	t.string :information
    end
  end
end
