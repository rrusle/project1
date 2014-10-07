Owner.destroy_all
Accommodation.destroy_all


o1 = Owner.create(:firstname => 'Rusli', :lastname => 'Lol', :contact => '0412345678', :email => 'ttt@hotmail.com', :image => 'http://www.keralabjp.org/images/No_Image.jpg')

a1 = Accommodation.create(:image => 'http://www.sydneyholidayapartments.com/img/slideshow/slide1.jpg',:bedroom => '2', :bathroom => '1', :carpark => '1',:address => '21 Marriott Road' , :suburb => 'Sydney', :price => '210', :detail => 'TBA')




