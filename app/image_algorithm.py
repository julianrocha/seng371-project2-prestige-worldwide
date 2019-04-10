from PIL import Image, ImageFilter
from PIL.ExifTags import TAGS

# Read image Software is COOl!!
im = Image.open( './app/china_image.jpg' )

# Apply multiple filters to the image
im_edited = im.filter(ImageFilter.SHARPEN)
im_edited = im.filter(ImageFilter.BLUR)
im_edited = im.filter(ImageFilter.CONTOUR)	

# Split the image into its respective bands, i.e. Red, Green, and Blue for RGB
#r,g,b = im_edited.split()

# Save the filtered image to a new file
im_edited.save('china_image_edited.jpg', 'JPEG')

# Set counter for required EXIF data
count = 0;

file = open("output.txt", "w")


# View EXIF data embedded in image
ret = {}
info = im._getexif()
for tag, value in info.items():
	decoded = TAGS.get(tag, tag)
	ret[decoded] = value
	string =  "{}:{}\n".format(decoded, ret[decoded])
	file.write(string)
	count = count + 1
	if count >= 48:
		break
 
