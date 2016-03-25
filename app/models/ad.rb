class Ad

  attr_accessor :id, :pic, :url, :headline, :text

  def initialize(args)
    self.id         = args[:id]
    self.pic        = args[:pic]
    self.url        = args[:url]
    self.headline   = args[:headline]
    self.text       = args[:text]
  end

  def self.all
    unless defined?(@ads)
      @ads = [
        Ad.new(
          id: 1,
          pic: ''
        )
      ]
  end

end
