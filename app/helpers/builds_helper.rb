module BuildsHelper
  def set_background(notches)
    image_url 'overcharm.png' if notches > 11
  end
end
