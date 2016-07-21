require 'rails_helper'

RSpec.describe InterviewController, type: :controller do
  it 'can do stuff with the interview controller' do
    #log in
    post :create, :q => {:q => "intrex", :position => "dresses"}
    #i need this test to somehow test something but I don't really know how to test this.
  end
end
