class Article < ApplicationRecord
  # model gives us getters and setters 
  # if this is empty, there are no restrictions on how the article should exist
    # ex: an article shouldn't exist without a title
  # enforce constraints/validations with the Article Model file for the Article class
  validates :title, length: {minimum: 6, maximum: 100}, presence: true # makes sure title is present for an article to be saved and has a minimum length
  validates :description, length: {minimum: 10, maximum: 300}, presence: true # does the same thing for description
end