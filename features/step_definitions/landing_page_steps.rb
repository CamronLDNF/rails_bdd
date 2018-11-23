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

# Given("I visit the {string} page") do |string|
#     pending # Write code here that turns the phrase above into concrete actions
# end

When("I click {string} link") do |link|
    click_on(link)
end

When("I fill in {string} with {string}") do |title, title_input|
    fill_in('title', with: 'title_input')
end

# Why are we not using the below step for the content field? Now only the title input (above) is being checked.

    # And("I fill in {string} with {string}") do |content, content_input|
    #     fill_in('content', with: 'content_input')
    # end

When("I click {string} button") do |button_name|
    click_button button_name
end

Then("I should be on {string} page") do |title|
    visit('/article.html')
    expect(page).to have_selector(title)
end

