When("I visit the site") do
    visit root_path
end

Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Given("the following articles exists") do |table|
    table.hashes.each do |article|
        Article.create!(article)
    end
end

When("I click {string}") do |value|
    click_on value
end

When("I fill in {string} with {string}") do |input_field, input_value|
    fill_in input_field, with: 'input_value'
end

# When("I click {string} button") do |button_name|
#     click_button button_name
# end

# Then("I should be on {string} page") do |title|
#     visit articles_path
#     expect(page).to have_selector(title)
# end

# Then("I should be on {string} page") do |title|
#     visit('/article.html')
#     expect(page).to have_selector(title)
# end

# Then("I should be on {string} page") do |string|
#     pending # Write code here that turns the phrase above into concrete actions
# end

Then("show me the page") do
    save_and_open_page
end