require 'rails_helper'

RSpec.describe "styleguide/components/badges.html.slim", type: :view do

  describe "GET badges" do
    before(:each) do
      # you'll need to specify both the template and the layout explicitly
      render template: 'styleguide/components/badges', layout: 'layouts/sub_layout'
    end

    it "rendered layout partials" do
      expect(response.body).to render_template(partial: "_header")
      expect(response.body).to render_template(partial: "_nav_hr")
      expect(response.body).to render_template(partial: "_nav_vr_components")
      expect(response.body).to render_template(partial: "_footer")
    end

    it "rendered page partials" do
      expect(response.body).to render_template(partial: "_small")
      expect(response.body).to render_template(partial: "_standard")
      expect(response.body).to render_template(partial: "_large")
    end

    it "rendered view includes '#WordorPhrase'" do
      expect(response.body).to include("Badges")
    end
  end

end
