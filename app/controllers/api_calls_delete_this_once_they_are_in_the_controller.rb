
#Glassdoor API ------------------
@data = HTTParty.get "http://api.glassdoor.com/api/api.htm?v=1
&format=json
&t.p=#{ENV['PARTNER_ID']}
&t.k=#{ENV['GLASSDOOR_KEY']}
&action=employers
&q=pharmaceuticals
&userip=192.168.43.42
&useragent=Chrome/%2F4.0"
#this works if you replace the id and key with the ones in the yml file. I don't know why it does not work with env.


#info of company
@data["response"]["employers"].first["name"] #name of company
@data["response"]["employers"].first["industry"] #industry of company


#ratings of company
@data["response"]["employers"].first["overallRating"] #rating of company
@data["response"]["employers"].first["workLifeBalanceRating"] #workLifeBalanceRating
@data["response"]["employers"].first["compensationAndBenefitsRating"]

#Google places API call
place = params[:map][:location]
@place = place.strip.gsub(/\s/,'+')
#current location finder? is there anything else that does this that does not use swift or C??
#https://developers.google.com/places/ios-api/current-place google knows the answer!

#HTML for embeded map. There might be a way that we can do this with javascript but I dont know how easy it is.
#hopefully there will be a way that we find the current users location and replace it with the orign params.
<iframe
  width="600"
  height="450"
  src="https://www.google.com/maps/embed/v1/directions?key=AIzaSyBLPmJuag-Lu0u6U7K-l1UUKBu76Q0kiag
  &origin=Oslo+Norway
  &destination=Telemark+Norway
  &avoid=tolls|highways" allowfullscreen>
</iframe>
#need to replace the origin and destination with user params.
