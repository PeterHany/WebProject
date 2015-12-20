class CreateProjectModels < ActiveRecord::Migration
  def up
    create_table :project_models do |t|
      t.column "first_name", :string , :limit => 25
      t.string "last_name" , :limit => 50
      t.string "email" , :default => "" , null: false
      t.string "password" , :limit => 40
      t.timestamps 
    end
  end

  def down
  	drop_table :project_models
  end

end
