class ProductController < ApplicationController

 
  def index
    @p = Product.all
    

  end

  def show
    @prod = Product.find(params[:id])
    @asin_code = @prod.asin

    id_fr = "iraz54-21"
    id_es = "iraz540a-21"
    id_de = "iraz540c-21"
    id_it = "iraz540f-21"

    @image_fr = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=FR&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_fr}&marketplace=amazon&region=FR&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_es = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=ES&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_es}&marketplace=amazon&region=ES&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_de = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=DE&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_de}&marketplace=amazon&region=DE&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_it = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IT&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_it}&marketplace=amazon&region=IT&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    
  end


  def producti

    puts "hey"
    puts params 
    @product = params["anything"]["name"]
    puts @product
    @a = Product.where("title ~* ?", "#{@product}")
    if Product.find_by(title: @product)
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

    id_fr = "iraz54-21"
    id_es = "iraz540a-21"
    id_de = "iraz540c-21"
    id_it = "iraz540f-21"

    @image_fr = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=FR&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_fr}&marketplace=amazon&region=FR&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_es = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=ES&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_es}&marketplace=amazon&region=ES&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_de = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=DE&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_de}&marketplace=amazon&region=DE&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    @image_it = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IT&source=ac&ref=tf_til&ad_type=product_link&tracking_id=#{id_it}&marketplace=amazon&region=IT&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
    
    elsif @a.size != 0
      Product.where("title ~* ?", "#{@product}")
      Search.create(name: "#{@product}")
      redirect_to chose_path
    else
      redirect_to no_path
    end

  end

  def chose
    @re = Search.last.name
    @all = Product.where("title ~* ?", "#{@re}")[0..3]
    @po = []
    
    @all.each do |f|
      @ta = {}
      @asin_code = f.asin
      @ta["url"] = f.id
      @image_fr = "//ws-eu.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=FR&source=ac&ref=tf_til&ad_type=product_link&tracking_id=iraz-21&marketplace=amazon&region=FR&placement=#{@asin_code}&asins=#{@asin_code}&linkId=c293a17c261adf84253befaf16ca233a&show_border=false&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff"
      @ta["image"] = @image_fr
      @po << @ta
    end



    @se = Search.all 
  end

  def countries

  end

  def no

  end

  def objet

  end
  
  def mention

  end
  
end
