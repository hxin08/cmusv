class AddFeedbackColumnsToDeliverables < ActiveRecord::Migration
  def self.up
    add_column :deliverables, :feedback_file_name, :string
    add_column :deliverables, :feedback_content_type, :string
    add_column :deliverables, :feedback_file_size, :string
    add_column :deliverables, :feedback_updated_at, :string

    add_column :deliverables, :staff_id, :integer
  end

  def self.down
    remove_column :deliverables, :feedback_file_name
    remove_column :deliverables, :feedback_content_type
    remove_column :deliverables, :feedback_file_size
    remove_column :deliverables, :feedback_updated_at

    remove_column :deliverables, :staff_id
  end
end
