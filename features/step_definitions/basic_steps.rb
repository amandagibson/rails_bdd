Given("the following articles exists") do |table|
	table.hashes.each do |article|
		Article.create!(article)
	end
end

Given("I visit the {string} page") do |string|
	visit root_path
end

When("I click {string} link") do |link|
	expect(page).to eq new_article
end

When("I fill in {string} with {string}") do |field, input|
	fill_in field, with: input
end

When("I click {string} button") do |string|
	click_button string
end