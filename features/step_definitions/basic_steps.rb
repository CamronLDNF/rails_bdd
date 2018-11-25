When("I visit the site") do
    visit root_path
end

Then("I should see {string}") do |value|
    expect(page).to have_content value
end

Given("the following articles exist") do |table|
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

Then("I should be on {string} page") do |title|
    expect(page).to have_current_path(article_path("#{Article.last.id}"))
end

And("I am on the {string} page") do |page|
    
end

Then("show me the page") do
    save_and_open_page
end