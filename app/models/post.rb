class Post < ActiveRecord::Base

  belongs_to :author

  validates :title, :body, :author, presence: true
  validate :title_long_enough

  def first_half(text)
    paragraph_array = text.split("\n")
    first_half = paragraph_array.slice(0..paragraph_array.length/2 - 1)
    first_half.join("\n")
  end

  def second_half(text)
    paragraph_array = text.split("\n")
    second_half = paragraph_array.slice(paragraph_array.length/2..-1)
    second_half.join("\n")
  end

  def title_long_enough
    errors.add(:title, " is #{10-title.length} characters too short") if title.length < 10
  end

end
