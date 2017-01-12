##This is simple programme to create a page with link 
##if you have bulk links on mediafire you can shoten them using  bulk link shorten feature in adfly
##copy past the out from adfly into a file link.txt
##run this programm
##copy past output in the HTML editor on your bloag/websire page . you dont have to copy past one by one shotlinks to the page 
##enjoy    


i=0
url=''
File.foreach( 'linklist.txt' ) do |line|
	
	if line.include?"mediafire" 
		i=i+1
		url=line.split(/\//)
	#end

	elsif line.include?"adf.ly"
		if i==1
		line=	line.chomp
			puts "<li><a href=\"#{line}\">" + url[-1].chomp+ "</a></li>"
		else
			i=0
		end
	else 
		i=0
	end


end
