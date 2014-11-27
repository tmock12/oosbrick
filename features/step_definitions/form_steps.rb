When 'I fill in the following:' do |table|
  table.rows_hash.each do |name, value|
    if field_labeled(name).tag_name == 'select'
      select value, from: name, visible: false
    else
      fill_in name, with: value
    end
  end
end
