class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name
      t.string :fb_token
      #whatever fields can be taken from fb token

      t.timestamps null: false
    end
  end
end
