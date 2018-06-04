function random_ip {
	ipsegment[0]=66
	ipsegment[1]=124
	ipsegment[2]=180
	ipsegment[3]=9
	size=${#ipsegment[@]}
	echo ${ipsegment[$(($RANDOM % $size))]}.${ipsegment[$(($RANDOM % $size))]}.${ipsegment[$(($RANDOM % $size))]}.${ipsegment[$(($RANDOM % $size))]}
}

function path {
	samples[0]='"GET /inv/6317.xml.gz HTTP/1.1" 200 32633 "-" "Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)"'
	samples[1]='"GET /metrics HTTP/1.1" 200 6788 "-" "Prometheus/2.2.1"'
	samples[2]='"GET /2017/09/25_1040_google_embed.html HTTP/1.1" 200 273 "http://www.lalasagenda.gr/2017/09/blog-post_89.html?utm_source=dlvr.it&utm_medium=facebook" "Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Googlebot/2.1; +http://www.google.com/bot.html) Safari/537.36"'
	samples[3]='"GET /2015/02/09_1612_TSIPRAS_FAINMAN_thumb.jpg HTTP/1.1" 304 0 "-" "Mozilla/4.0 (compatible;)"'
	samples[4]='"GET /banner?webspace=6461&auto=1&rnd=1455199351886&testcookie=1 HTTP/1.1" 200 43 "https://www.e-lala.gr/orders/thankyou?order_id=7163132" "Mozilla/5.0 (iPad; CPU OS 9_2_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13D15 Safari/601.1"'
	samples[5]='"GET /gbanner/?1455199347387|10048/300x250?33274:=1455199347387@1920x1080x24?/cab=video,webgl,canvas,webrtc,geo,responsive,flash&v=6 HTTP/1.1" 200 569 "https://www.lala.gr/s/6487622/Microsoft-Lumia-640-3G-Dual-8GB.html" "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2564.103 Safari/537.36"'
	samples[6]='"GET /images/logo.svg HTTP/1.1" 200 1718 "https://www.bestprice.gr/" "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36"'
	samples[7]='"GET /item/2155122161/safe-n-beautiful-snails-fleur-collection-daisy-105ml.html HTTP/1.1" 200 8672 "https://www.bestprice.gr/" "Mozilla/5.0 (Windows NT 6.2; rv:55.0) Gecko/20100101 Firefox/55.0"'
	samples[8]='"GET /cat/6332/antallaktika-tablet.html?q=%CE%BC%CF%80%CE%B1%CF%84%CE%B1%CF%81%CE%B9%CE%B1+%CE%B3%CE%B9%CE%B1+ipad HTTP/1.1" 200 29105 "https://www.google.gr/" "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36"'
	samples[9]='"GET /sw.js?v=21 HTTP/1.1" 200 2660 "https://www.bestprice.gr/sw.js?v=21" "Mozilla/5.0 (iPad; CPU OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1"'
	samples[10]='"GET /foo.html HTTP/1.1" 404 142 "https://www.lalakis.gr/bp.html" "Mozilla/5.0 (iPad; CPU OS 11_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.0 Mobile/15E148 Safari/604.1"'

	size=${#samples[@]}
	index=$(($RANDOM % $size))

	echo ${samples[$index]}
}

for i in seq {1..100} ; do
	echo "$(random_ip) [$(date)] $(path)"
done


