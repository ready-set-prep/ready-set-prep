
#GLASSDOOR API ------------------
#this works if you replace the id and key with the ones in the yml file. I don't know why it does not work with env.

#inf

#GOOGLE places API call------------
place = place.strip.gsub(/\s/,'+') #this makes it so it can be used in the HTML.
#current location finder? is there anything else that does this that does not use swift or C??
#https://developers.google.com/places/ios-api/current-place google knows the answer!

<iframe
  width="600"
  height="450"
  src="https://www.google.com/maps/embed/v1/directions?key=KEYGOESHERE
  &origin=Oslo+Norway
  &destination=Telemark+Norway
  &avoid=tolls|highways" allowfullscreen>
</iframe>
#need to replace the origin and destination with user params.
