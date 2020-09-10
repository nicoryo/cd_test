require 'rails_helper'

RSpec.describe blog, type: :model do
  describe "バリデーション" do
    it "titleの値が空の場合、エラーを返すこと" do
      blog = Blog.new(title: "", body: "test@example.com")
      expect(blog.valid?).to eq(false)
    end

    it "bodyの値が空の場合、エラーを返すこと" do
      blog = Blog.new(title: "TestBlog", body: "")
      expect(blog.valid?).to eq(false)
    end
  end
end
