class CreateDeliverables < ActiveRecord::Migration
  def self.up
    create_table :deliverables do |t|
      t.string :name
      t.text :comments
      t.string :deliverable_type
      t.integer :person_id
      t.integer :team_id
      t.integer :course_id
      t.integer :task_number


      t.string :deliverable_file_name
      t.string :deliverable_content_type
      t.integer :deliverable_file_size
      t.datetime :deliverable_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :deliverables
  end
end
