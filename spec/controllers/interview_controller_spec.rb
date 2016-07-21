require 'rails_helper'
require 'spec_helper'

RSpec.describe InterviewController, type: :controller do
  it 'can do stuff with the interview controller' do
    post :create, :q => {:q => "intrex", :position => "dresses"}
    expect(response.code).to eq("200")
    end
end
