
#Glassdoor API
data = HTTParty.get "http://api.glassdoor.com/api/api.htm?v=1
&format=json
&t.p=#{ENV['PARTNER_ID']}
&t.k=#{ENV['GLASSDOOR_KEY']}
&action=employers
&q=pharmaceuticals
&userip=192.168.43.42
&useragent=Chrome/%2F4.0"
#this works if you replace the id and key with the ones in the yml file. I don't know why it does not work with env.

#I don't know if we have to replace the ip or what we have to do with that.

#info of company
data["response"]["employers"].first["name"] #name of company
data["response"]["employers"].first["industry"] #industry of company


#ratings of company
data["response"]["employers"].first["overallRating"] #rating of company
data["response"]["employers"].first["workLifeBalanceRating"] #workLifeBalanceRating
data["response"]["employers"].first["compensationAndBenefitsRating"]
