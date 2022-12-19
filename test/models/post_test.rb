# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Should not save post without a title' do
    post = Post.new
    assert_not post.save, 'Saved the post without a title'
  end
  test 'Should save post without a title' do
    post = Post.new(title: 'Test')
    assert post.save, 'The words go here'
  end
  test 'Should have views as integer' do
    post = Post.new(title: 'Test', views: 'test')
    assert_not post.save, 'Saved the post with a string for'
  end
end
