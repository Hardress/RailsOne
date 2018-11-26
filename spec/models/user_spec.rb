require 'rails_helper'

describe User do
    context "when user is present" do

        it "is valid with email and password" do
            expect(User.new(email: "test@gmail.com", password: "password")).to be_valid
        end

        it "is not valid without email" do
            expect(User.new(email: "", password: "password")).to_not be_valid
        end

        it "is not valid without password" do
            expect(User.new(email: "testgmail.com", password: "")).to_not be_valid
        end

    end
end