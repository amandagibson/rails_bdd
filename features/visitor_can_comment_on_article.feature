Feature: Visitor can leave a comment on an Article

	As a Visitor
	In order to leave feedback
	I would like to be able to comment on an article

	Background:
			Given the following articles exists
			| title                | content                          |
			| A breaking news item | Some really breaking action      |
			| Learn Rails 5        | Build awesome rails applications |
	When I visit the "landing" page
	Then I click "My Blog"
	Then I click "Show" for "A breaking news item"
	Scenario: Visitor is able to leave comments
