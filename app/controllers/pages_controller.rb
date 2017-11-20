class PagesController < ApplicationController

  def home
    @designers = Designer.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@designers) do |designer, marker|
      marker.lat designer.latitude
      marker.lng designer.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      marker.infowindow "<div class='marker-card'> <a class='marker-link' href='#{designer_path(designer)}'>
      <img src='#{designer.profile_picture}' alt='Profile picture' class='marker-image'/>
      <br> <h4 class='marker-text'>#{designer.first_name} #{designer.last_name}</h4> </a>
      </div>"
      marker.picture({
        url: "#{view_context.image_path 'minigaia_small.png'}",
        width: 32,
        height: 32
        })

    end
  end

  def buyers
  end

  def designers
  end

  def about
  end

  def faq
  end

  def live_chat
  end
end
