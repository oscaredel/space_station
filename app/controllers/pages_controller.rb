class PagesController < ApplicationController

  def home
    @designers = Designer.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@designers) do |designer, marker|
      marker.lat designer.latitude
      marker.lng designer.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
  end
end
end
