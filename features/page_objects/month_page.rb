require 'pry'

class MonthPage
  include PageObject

  def shoes_exist?
    self.get_shoes.count >= 1
  end

  def name_exists?
    self.element_exsits?("shoe_name")
  end

  def price_exists?
    self.element_exsits?("shoe_price")
  end

  def blurb_exists?
    self.element_exsits?("shoe_description")
  end

  def image_exists?
    self.get_images.all? do |image|
      image.src != ""
    end
  end

  def price_valid?
    prices = $browser.elements(:class, "shoe_price")
    prices.all? do |price|
      price_text = price.text =~ /\d+.\d{2}/
      if price_text == 1 && price.text[0] = "$"
        return true
      else
        return false
      end
    end
  end

  def get_images
    listings = $browser.elements(:class, "shoe_image")
    images = []
    listings.each do |listing|
      images.push(listing.img)
    end
    images
  end

  def get_shoes
    results = $browser.elements(:class, "shoe_result")
  end

  def element_exsits?(id)
    self.get_shoes.all? do |shoe|
      element = shoe.element(:class, id)
      element != ""
    end
  end
end
