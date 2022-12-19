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
end
