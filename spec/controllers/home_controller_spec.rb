require 'spec_helper'

describe HomeController do
  describe '#index' do
    let(:subject) { get :index }

    it 'renders index template' do
      expect(subject).to render_template :index
    end

    it 'returns 200 status code' do
      expect(subject.status).to eq 200
    end
  end

  describe "routing" do
    it "routes GET / to Home#index" do
      { :get => "/" }.should route_to(
        :controller => "home"  ,
        :action     => "index" )
    end
  end
end
