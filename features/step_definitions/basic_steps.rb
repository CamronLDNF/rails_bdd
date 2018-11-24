When("I visit the site") do
    visit root_path
end

Then("I should see {string}") do |value|
    expect(page).to have_content value
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
    fill_in input_field, with: input_value
end

#parameter is redundant. Refactor when done. Remove quotation marks from the corresponding feature line and replance {string} here with that title hardcoded instead.
Then("I should be on {string} page") do |title|
    expect(page).to have_current_path(article_path("#{Article.last.id}"))
end

Then("show me the page") do
    save_and_open_page
end