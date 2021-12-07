class CreateTasks < ActiveRecord::Migration[6.1]

before_action :set_task, except: [:index, :new, :create]

  def change
    create_table :tasks do |t|
      t.string :title
      t.text :details
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
