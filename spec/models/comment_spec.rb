require 'rails_helper'

describe Comment do
  context "when a user leaves a comment" do
    let(:comment) {Comment.create(user_id: @user.id, product_id: product.id, body: "Comment here")}

    it "not valid without a rating" do
      expect(comment).to_not be_valid
    end

    it "not valid without a body" do
      expect(comment).to_not be_valid
    end

    it "not valid without a product" do
      expect(product.comments.new(user_id: nil, product_id: product.id, body: "Product")).to_not be_valid
    end

    it "is not valid without a user" do
      expect(product.comments.new(user_id: @user.id, product_id: product.id, body: "User", rating:5)).to be_valid
    end
  end
end