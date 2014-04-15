Sequel.migration do
  up do
    create_table(:page) do
      String    :body,          text: true
      Time      :last_modified
      String    :wiki
      String    :name
      Integer   :revision
      Integer   :count
      String    :title
      String    :editor
      String    :references
      String    :keyword
      Integer   :freeze
    end
  end

  down do
    drop_table :page
  end
end
