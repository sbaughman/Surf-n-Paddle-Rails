class Ad

  attr_accessor :id, :pic, :url, :headline, :text, :title

  def initialize(args)
    self.title      = args[:title]
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
          title: 'Butter is Delish',
          pic: 'butter',
          url: 'http://www.butter.com',
          headline: 'BUTTER WILL MAKE EVERYONE LIKE YOU',
          text: %q(
            Keffiyeh austin four dollar toast food truck banjo, echo park readymade. Wolf blue bottle hoodie tacos. Organic fanny pack tofu sriracha, kombucha vice small batch actually williamsburg deep v. Pour-over green juice fanny pack chambray. Dreamcatcher raw denim green juice, seitan mumblecore pork belly pinterest flannel 3 wolf moon banjo yuccie. Swag letterpress hashtag, man braid flannel heirloom trust fund kale chips. Pabst ugh DIY keffiyeh, iPhone artisan man bun migas taxidermy wayfarers.
          )
        ),
        Ad.new(
          id: 2,
          title: 'Gillette Razors',
          pic: 'gillette',
          url: 'http://www.gillette.com',
          headline: 'IT IS UNLIKELY YOUR BABY WILL SHAVE ITS FACE OFF',
          text: %q(
            Keffiyeh austin four dollar toast food truck banjo, echo park readymade. Wolf blue bottle hoodie tacos. Organic fanny pack tofu sriracha, kombucha vice small batch actually williamsburg deep v. Pour-over green juice fanny pack chambray. Dreamcatcher raw denim green juice, seitan mumblecore pork belly pinterest flannel 3 wolf moon banjo yuccie. Swag letterpress hashtag, man braid flannel heirloom trust fund kale chips. Pabst ugh DIY keffiyeh, iPhone artisan man bun migas taxidermy wayfarers.
          )
        ),
        Ad.new(
          id: 3,
          title: 'Old Spice smells Great',
          pic: 'old-spice',
          url: 'http://www.oldspice.com',
          headline: 'OLD SPICE IS BETTER THAN A LOBOTOMY',
          text: %q(
            Keffiyeh austin four dollar toast food truck banjo, echo park readymade. Wolf blue bottle hoodie tacos. Organic fanny pack tofu sriracha, kombucha vice small batch actually williamsburg deep v. Pour-over green juice fanny pack chambray. Dreamcatcher raw denim green juice, seitan mumblecore pork belly pinterest flannel 3 wolf moon banjo yuccie. Swag letterpress hashtag, man braid flannel heirloom trust fund kale chips. Pabst ugh DIY keffiyeh, iPhone artisan man bun migas taxidermy wayfarers.
          )
        ),
        Ad.new(
          id: 4,
          title: 'Join the Dark Side',
          pic: 'starwars',
          url: 'http://www.starwars.com',
          headline: "JOIN THE DARK SIDE. IT'S NICE.",
          text: %q(
            Keffiyeh austin four dollar toast food truck banjo, echo park readymade. Wolf blue bottle hoodie tacos. Organic fanny pack tofu sriracha, kombucha vice small batch actually williamsburg deep v. Pour-over green juice fanny pack chambray. Dreamcatcher raw denim green juice, seitan mumblecore pork belly pinterest flannel 3 wolf moon banjo yuccie. Swag letterpress hashtag, man braid flannel heirloom trust fund kale chips. Pabst ugh DIY keffiyeh, iPhone artisan man bun migas taxidermy wayfarers.
          )
        ),
        Ad.new(
          id: 5,
          title: 'Vitameatavegamin - For Your Health',
          pic: 'vitameatavegamin',
          url: 'https://www.youtube.com/watch?v=4AZK2-Tfc84',
          headline: 'ARE YOU RUN DOWN AND LISTLESS?',
          text: %q(
            Keffiyeh austin four dollar toast food truck banjo, echo park readymade. Wolf blue bottle hoodie tacos. Organic fanny pack tofu sriracha, kombucha vice small batch actually williamsburg deep v. Pour-over green juice fanny pack chambray. Dreamcatcher raw denim green juice, seitan mumblecore pork belly pinterest flannel 3 wolf moon banjo yuccie. Swag letterpress hashtag, man braid flannel heirloom trust fund kale chips. Pabst ugh DIY keffiyeh, iPhone artisan man bun migas taxidermy wayfarers.
          )
        ),
        Ad.new(
          id: 6,
          title: 'Youtube',
          pic: 'youtube',
          url: 'http://www.youtube.com',
          headline: 'DIGITAL IS FOREVER',
          text: %q(
            Keffiyeh austin four dollar toast food truck banjo, echo park readymade. Wolf blue bottle hoodie tacos. Organic fanny pack tofu sriracha, kombucha vice small batch actually williamsburg deep v. Pour-over green juice fanny pack chambray. Dreamcatcher raw denim green juice, seitan mumblecore pork belly pinterest flannel 3 wolf moon banjo yuccie. Swag letterpress hashtag, man braid flannel heirloom trust fund kale chips. Pabst ugh DIY keffiyeh, iPhone artisan man bun migas taxidermy wayfarers.
          )
        )
      ]
    end
    @ads
  end

end
