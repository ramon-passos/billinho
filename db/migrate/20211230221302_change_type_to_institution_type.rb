class ChangeTypeToInstitutionType < ActiveRecord::Migration[7.0]
  def change
    rename_column :institutions, :type, :institution_type
  end
end
