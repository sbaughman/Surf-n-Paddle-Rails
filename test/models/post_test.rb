require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "a post belongs to an author" do
    author = Author.create(name: "Darth Vader")
    post = Post.create(title: "Test", body: "I find your lack of faith disturbing", author_id: author.id)
    assert post.author.name == "Darth Vader"
  end

  test "a post requires a title" do
    assert_no_difference 'Post.count' do
      Post.create(title: nil, body: "test", author_id: 1)
    end
    assert_difference 'Post.count' do
      Post.create(title: "Success!", body: "test", author_id: 1)
    end
  end

  test "a post requires body text" do
    assert_no_difference 'Post.count' do
      Post.create(title: "Test", body: nil, author_id: 1)
    end
    assert_difference 'Post.count' do
      Post.create(title: "Test", body: "Success!", author_id: 1)
    end
  end

  test "a post requires an author_id" do
    assert_no_difference 'Post.count' do
      Post.create(title: "Test", body: "test test", author_id: nil)
    end
    assert_difference 'Post.count' do
      Post.create(title: "Test", body: "test test", author_id: 1)
    end
  end

end
