Then("I should see {string}") do |content|
	expect(page).to have_content content
end

Then("I should be on {string} page") do |string|
	expect(page).to have_content string
end

Then("I click {string} link") do |string|
	click_on string
end