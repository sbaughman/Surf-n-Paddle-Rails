require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  test "author has many posts" do
    author = Author.create(name: "Steve")
    post1 = Post.create(title: "Test", body: "Luke, at that speed, will you be able to pull out in time?", author_id: author.id)
    post2 = Post.create(title: "Test2", body: "Curse my metal body, I wasn't fast enough!", author_id: author.id)
    assert_equal 2, author.posts.count
  end

  test "a new author requires a name" do
    assert_difference 'Author.count' do
      Author.create(name: "Steve")
    end
    assert_no_difference 'Author.count' do
      Author.create(name: nil)
    end
  end
end
