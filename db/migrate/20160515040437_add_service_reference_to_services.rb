class AddServiceReferenceToServices < ActiveRecord::Migration
  def change
    add_column :services, :service_reference, :string
  end
end
