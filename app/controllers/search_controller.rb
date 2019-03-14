class SearchController < ApplicationController



  def index
    @p = Product.all
    

  end


  def product

    puts "hey"
    puts params 
    @product = params["anything"]["name"]
    puts @product
    @prod = Product.find_by(title: @product)



    # @price_fr = @prod.price
    # @price_es = @prod.price_es
    # @price_de = @prod.price_de
    # @price_it = @prod.price_it

    @asin_code = @prod.asin

    # @image = "//ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&MarketPlace=FR&ASIN=#{@asin_code}&ServiceVersion=20070822&ID=AsinImage&WS=1&Format=_SL250_&tag=reckb-21"
    # @lien_fr = "https://www.amazon.fr/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
    # @lien_es = "https://www.amazon.es/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
    # @lien_de = "https://www.amazon.de/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
    # @lien_it = "https://www.amazon.it/gp/product/#{@asin_code}?ie=UTF8&tag=reckb-21&link_code=wql"
    # 

    @image_fr = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=FR&source=ac&ref=tf_til&ad_type=product_link&tracking_id=iraz-21&marketplace=amazon&region=FR&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_es = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=ES&source=ac&ref=tf_til&ad_type=product_link&tracking_id=iraz-21&marketplace=amazon&region=ES&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_de = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=DE&source=ac&ref=tf_til&ad_type=product_link&tracking_id=iraz-21&marketplace=amazon&region=DE&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_it = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IT&source=ac&ref=tf_til&ad_type=product_link&tracking_id=iraz-21&marketplace=amazon&region=IT&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
        
  end

  def countries

  end


end
 