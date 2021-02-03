class Api::BreedsController < ApplicationController

  def index
    @breeds = HTTP
      .headers({
      "Authorization" => "Bearer #{Rails.application.credentials.third_party_api[:api_key]}"
      })
      .get("https://api.thecatapi.com/v1/images/search?breed_id=beng")
      .parse[0]["breeds"][0]["description"]
    render "index.json.jb"
  end

end