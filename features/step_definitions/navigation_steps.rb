Given "I visit the sign in page" do
  visit sign_in_path
end

Then "I should be on the admin dashboard" do
  assert_path admins_path
end

def assert_path(path)
    expect(URI.parse(current_url).path).to eq(path)
end
