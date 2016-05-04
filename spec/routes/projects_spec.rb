
require 'rails_helper'

RSpec.describe "Routes for Projects", type: :routing do
  it "exercises the default route" do
    expect(get("/")).to route_to("projects#new")
  end

  it "hits the show method" do
    key = Key.generate
    expect(get("/#{key}")).to route_to(controller: "projects", action: "show", id: key)
  end

  it "hits the create method" do
    key = Key.generate
    expect(post("/#{key}")).to route_to(controller: "projects", action: "create", id: key)
  end
end
