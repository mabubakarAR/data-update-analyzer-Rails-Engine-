require 'test_helper'

module DataUpdateAnalyze
  class BritishDatumControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get british_datum_index_url
      assert_response :success
    end

    test "should get show" do
      get british_datum_show_url
      assert_response :success
    end

  end
end
