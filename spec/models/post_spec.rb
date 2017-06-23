require "rails_helper"

describe  Post, "#title" do
  it "return me a titte" do
    a = Post.new(title: "this is a title")
    expect(a.title).to eq("this is a title")
  end
  # it "return false if there's no description" do
  #   post = Post.new(title: "first post")
  #   post.save
  #   expect{post}.to change{Post.count}.by(0)
  # end
end

describe Post, "#description" do
  it "return me a description" do
    a = Post.new(description: "this is a description")
    expect(a.description).to eq("this is a description")
  end
  # it "return false if there's no title" do
  #   post = Post.new(description: "first description")
  #   post.save
  #   expect{post}.to change{Post.count}.by(0)
  # end
end

describe Post, "#save" do
  it "will increase Post count by 1 if all columns present" do
    post_count = Post.all.count
    user = User.create(email:"bob@smith.com", password: "12345")

    post = Post.new(description: "first description", title: "bob", user_id: user.id)
    post.save

    expect(Post.all.count).to eq(post_count+1)
  end

end
