require 'spec_helper'

describe 'App' do
  
  describe "GET '/'" do
    before do
      get '/'
    end
    
    it "displays the name of the bowling alley in an h1 tag" do
      expect(last_response.body).to include("<h1>Buster's Best Bowling Alley</h1>")
    end

    it "displays the bowling alley tagline in an h2" do
      expect(last_response.body).to include("<h2>Bet You Can't Bowl A Strike Every Time</h2>")
    end

    it "displays the bowling alley address in a p tag" do
      expect(last_response.body).to include("<p>97 Bowling Alley Lane, Boulder CO</p>")
    end
    
    it "displays the bowling alley's top teams in an unordered list" do
      expect(last_response.body).to include("<li>I Can't Believe It's Not Gutter</li>")
      expect(last_response.body).to include("<li>Livin' on A Spare</li>")
      expect(last_response.body).to include("<li>Split Happens</li>")
      expect(last_response.body).to include("<li>Gutter Gang</li>")
    end

  end

end