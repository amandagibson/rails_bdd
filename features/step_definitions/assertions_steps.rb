Then("I should see {string}") do |content|
	expect(page).to have_content content
end

Then("I should be on {string} page") do |string|
	expect(page).to have_content string
end

Then("I click {string} for {string}") do |element, value|
	article = Article.find_by(title: value)
	dom_section = "#article_#{article.id}"
	within (dom_section) do
		click_on element
	end
end

# Then("I fill in {string} with {string}") do |input, value|
# fill_in input, with: value
# end