setwd("C:/Users/dudtj/Desktop/2019.01.13 스피드데이트 프로젝트")
data<-read.csv("Speed_train.csv",header=T,stringsAsFactors=F)
str(data)

#goal 결측치 68개 제거
data<-data[-which(is.na(data$goal)),]

#결측값 비율
pMiss<-function(x){sum(is.na(x))/length(x)*100} 	
apply(data,2,pMiss)

#pf_o_~ 변수 6개 항목의 합으로 각각 나눠서 새로운 변수 만들기
names(data)
data$pf_o_att.ratings<-data$pf_o_att/(data$pf_o_att+data$pf_o_sin+data$pf_o_int+data$pf_o_fun+data$pf_o_amb+data$pf_o_sha)
data$pf_o_sin.ratings<-data$pf_o_sin/(data$pf_o_att+data$pf_o_sin+data$pf_o_int+data$pf_o_fun+data$pf_o_amb+data$pf_o_sha)
data$pf_o_int.ratings<-data$pf_o_int/(data$pf_o_att+data$pf_o_sin+data$pf_o_int+data$pf_o_fun+data$pf_o_amb+data$pf_o_sha)
data$pf_o_fun.ratings<-data$pf_o_fun/(data$pf_o_att+data$pf_o_sin+data$pf_o_int+data$pf_o_fun+data$pf_o_amb+data$pf_o_sha)
data$pf_o_amb.ratings<-data$pf_o_amb/(data$pf_o_att+data$pf_o_sin+data$pf_o_int+data$pf_o_fun+data$pf_o_amb+data$pf_o_sha)
data$pf_o_sha.ratings<-data$pf_o_sha/(data$pf_o_att+data$pf_o_sin+data$pf_o_int+data$pf_o_fun+data$pf_o_amb+data$pf_o_sha)
data$pf_o_att.ratings+data$pf_o_sin.ratings+data$pf_o_int.ratings+data$pf_o_fun.ratings+data$pf_o_amb.ratings+data$pf_o_sha.ratings

#fun_o 0점 1점으로 바꿔주기
summary(data$fun_o)
data$fun_o[data$fun_o==0]<-1

#field_cd 19번으로 None 넣기
table(is.na(data$field_cd))
data$field_cd[is.na(data$field_cd)]<-19
table(data$field_cd)

#field_cd Natural Sciences , Liberal Arts , Engineering , Arts, Teaching, Unknown 으로 바꿔줌
data$field_cd[data$field_cd==2 | data$field_cd==4  | data$field_cd==10 | data$field_cd==17]<-"Natural Sciences"
data$field_cd[data$field_cd==5 | data$field_cd==16 ]<-"Engineering"
data$field_cd[data$field_cd==1 | data$field_cd==3  | data$field_cd==6 | data$field_cd==7 | data$field_cd==8 |
                data$field_cd==11 | data$field_cd==13 | data$field_cd==16]<-"Liberal Arts"
data$field_cd[data$field_cd==14 | data$field_cd==15 ]<-"Arts"
data$field_cd[data$field_cd==9]<-"Teaching"
data$field_cd[data$field_cd==12 | data$field_cd==19 | data$field_cd==18]<-"Unknown other"
data$field_cd[is.na(data$field_cd)]<-"Unknown"
table(data$field_cd)

#imprace 0점 1점으로 바꾸기
summary(data$imprace)
data$imprace[data$imprace==0]<-1

#career_c는 없는데 career가 있는 것들 코드로 바꿔주기
data$career[is.na(data$career_c)]
data$career[which(is.na(data$career_c))]
data$career_c[data$career=="Economist"]<-8
data$career_c[data$career=="law" | data$career=="lawyer"]<-1
data$career_c[data$career=="tech professional"]<-18

#사회 과학 예술/문화 무직 기타
#society =1,2,3,7,8,9,11,13,16
#science=4,5,12,17
#art/culture=6,14
#inoccupation=10
#other=15,18

data$career_c[data$career_c==1 | data$career_c==2 | data$career_c==3 |data$career_c==7 |data$career_c==8 |data$career_c==9 |data$career_c==11 |data$career_c==13 |data$career_c==16]<-"society"
data$career_c[data$career_c==4 |data$career_c==5 |data$career_c==12 |data$career_c==17]<-"art/culture"
data$career_c[data$career_c==6 |data$career_c==14 ]<-"art/culture"
data$career_c[data$career_c==10 ]<-"inoccupation"
data$career_c[data$career_c==15 |data$career_c==18 ]<-"other"

table(data$career_c)

#나라이름 변수 생성
data$Country<-data$from
data$Country<-gsub("Milan, Italy","italy",data$Country)
data$Country<-gsub("Milano, Italy","italy",data$Country)
data$Country<-gsub("Milwaukee, Wisconsin","usa",data$Country)
data$Country<-gsub("Minneapolis","usa",data$Country)
data$Country<-gsub("Minneapolis, MN","usa",data$Country)
data$Country<-gsub("Minnesota","usa",data$Country)
data$Country<-gsub("nashville, TN","usa",data$Country)
data$Country<-gsub("Nebraska","usa",data$Country)
data$Country<-gsub("Nepal","nepal",data$Country)
data$Country<-gsub("New Delhi, India","india",data$Country)
data$Country<-gsub("New Hope, PA","usa",data$Country)
data$Country<-gsub("new jersey","usa",data$Country)
data$Country<-gsub("New Jersey","usa",data$Country)
data$Country<-gsub("New Mexico","usa",data$Country)
data$Country<-gsub("new york","usa",data$Country)
data$Country<-gsub("New York","usa",data$Country)
data$Country<-gsub("New York Area/ New Jersey","usa",data$Country)
data$Country<-gsub("new york city","usa",data$Country)
data$Country<-gsub("New York City","usa",data$Country)
data$Country<-gsub("New York, NY","usa",data$Country)
data$Country<-gsub("NJ","usa",data$Country)
data$Country<-gsub("North Carolina","usa",data$Country)
data$Country<-gsub("Northern California","usa",data$Country)
data$Country<-gsub("Northern New Jersey","usa",data$Country)
data$Country<-gsub("Northern Virginia","usa",data$Country)
data$Country<-gsub("NY","usa",data$Country)
data$Country<-gsub("nyc","usa",data$Country)
data$Country<-gsub("NYC","usa",data$Country)
data$Country<-gsub("NYC-6 yrs. Grew up in Nebraska","usa",data$Country)
data$Country<-gsub("NYC (Staten Island)","usa",data$Country)
data$Country<-gsub("NYC, San Francisco","usa",data$Country)
data$Country<-gsub("Ohio","usa",data$Country)
data$Country<-gsub("Oregon","usa",data$Country)
data$Country<-gsub("ottawa, canada","canada",data$Country)
data$Country<-gsub("Ottawa, Canada","canada",data$Country)
data$Country<-gsub("P. R. China","china",data$Country)
data$Country<-gsub("PA","usa",data$Country)
data$Country<-gsub("Palm Springs, California","usa",data$Country)
data$Country<-gsub("Palo Alto, CA","usa",data$Country)
data$Country<-gsub("Palo Alto, California","usa",data$Country)
data$Country<-gsub("Panama","panama",data$Country)
data$Country<-gsub("Paris","france",data$Country)
data$Country<-gsub("Pennsylvania","usa",data$Country)
data$Country<-gsub("Persia","iran",data$Country)
data$Country<-gsub("Philadelphia","usa",data$Country)
data$Country<-gsub("Philadelphia, PA","usa",data$Country)
data$Country<-gsub("Philippines","philippines",data$Country)
data$Country<-gsub("Pittsburgh","usa",data$Country)
data$Country<-gsub("Pittsburgh, PA","usa",data$Country)
data$Country<-gsub("Portland, OR","usa",data$Country)
data$Country<-gsub("Portland, Oregon","usa",data$Country)
data$Country<-gsub("Pougkeepsie NY","usa",data$Country)
data$Country<-gsub("Puerto Rico","puerto rico",data$Country)
data$Country<-gsub("Queens","usa",data$Country)
data$Country<-gsub("Rochester, NY","usa",data$Country)
data$Country<-gsub("Romania","romania",data$Country)
data$Country<-gsub("Russia","russia",data$Country)
data$Country<-gsub("Salt Lake City","usa",data$Country)
data$Country<-gsub("San Diego","usa",data$Country)
data$Country<-gsub("San Diego, CA","usa",data$Country)
data$Country<-gsub("San Francisco","usa",data$Country)
data$Country<-gsub("San Francisco Bay Area","usa",data$Country)
data$Country<-gsub("San Francisco(home)/Los Angeles(undergrad)","usa",data$Country)
data$Country<-gsub("San Francisco, CA","usa",data$Country)
data$Country<-gsub("San Francisco/LA","usa",data$Country)
data$Country<-gsub("Santa Barbara, California","usa",data$Country)
data$Country<-gsub("Rochester, usa","usa",data$Country)
data$Country<-gsub("Pougkeepsie usa","usa",data$Country)
data$Country<-gsub("Portland, usa","usa",data$Country)
data$Country<-gsub("Northern usa","usa",data$Country)
data$Country<-gsub("Russia/Germany","other",data$Country)
data$Country<-gsub("New York/South Korea/Japan","other",data$Country)

data$Country <- gsub("Saratoga, NY","usa",data$Country)
data$Country <- gsub("Seattle","usa",data$Country)
data$Country <- gsub("SF Bay Area, CA","usa",data$Country)
data$Country <- gsub("Shanghai, China","china",data$Country)
data$Country <- gsub("Siberia","russia",data$Country)
data$Country <- gsub("Silver Spring, MD","usa",data$Country)
data$Country <- gsub("Singapore","singapore",data$Country)
data$Country <- gsub("SIngapore","singapore",data$Country)
data$Country <- gsub("sofia, bg","bulgaria",data$Country)
data$Country <- gsub("south carolina","usa",data$Country)
data$Country <- gsub("SOUTH KOREA","korea",data$Country)
data$Country <- gsub("South Orange, New Jersey","usa",data$Country)
data$Country <- gsub("Southern California","usa",data$Country)
data$Country <- gsub("Spain","spain",data$Country)
data$Country <- gsub("St. Louis, MO","usa",data$Country)
data$Country <- gsub("State College, PA","usa",data$Country)
data$Country <- gsub("Staten Island","usa",data$Country)
data$Country <- gsub("Sweden","sweden",data$Country)
data$Country <- gsub("Switzerland","switzerland",data$Country)
data$Country <- gsub("Taipei, Taiwan","taiwan",data$Country)
data$Country <- gsub("Taiwan","taiwan",data$Country)
data$Country <- gsub("Texas","usa",data$Country)
data$Country <- gsub("Texas & Boston","usa",data$Country)
data$Country <- gsub("Texas/London","usa/uk",data$Country)
data$Country <- gsub("TN","usa",data$Country)
data$Country <- gsub("Tokyo and Texas","japan/usa",data$Country)
data$Country <- gsub("Tokyo, Japan","japan",data$Country)
data$Country <- gsub("Toronto","canada",data$Country)
data$Country <- gsub("Toronto, Canada","canada",data$Country)
data$Country <- gsub("Toronto, London, India","canada/uk/india",data$Country)
data$Country <- gsub("Torrance, CA","canada/usa",data$Country)
data$Country <- gsub("Tuscaloosa, Alabama","usa",data$Country)
data$Country <- gsub("UK","uk",data$Country)
data$Country <- gsub("UK/Turkey ","uk/turkey",data$Country)
data$Country <- gsub("UNCC","un",data$Country)
data$Country <- gsub("Upstate New York","usa",data$Country)
data$Country <- gsub("Uruguay","uruguay",data$Country)
data$Country <- gsub("Vestal","usa",data$Country)
data$Country <- gsub("Virginia","usa",data$Country)
data$Country <- gsub("Warsaw, Poland","poland",data$Country)
data$Country <- gsub("Wash DC (4 yrs)","usa",data$Country)
data$Country <- gsub("Washington DC","usa",data$Country)
data$Country <- gsub("Washington DC Metro Region","usa",data$Country)
data$Country <- gsub("Washington State","usa",data$Country)
data$Country <- gsub("Washington, D.C.","usa",data$Country)
data$Country <- gsub("WASHINGTON, D.C.","usa",data$Country)
data$Country <- gsub("Washington, DC","usa",data$Country)
data$Country <- gsub("way too little space here. world citizen.","earth",data$Country)
data$Country <- gsub("Westchester County, N.Y.","usa",data$Country)
data$Country <- gsub("Westchester, new York","usa",data$Country)
data$Country <- gsub("Westchester, NY","usa",data$Country)
data$Country <- gsub("Wisconsin","usa",data$Country)
data$Country <- gsub("Woburn, MA","usa",data$Country)
data$Country <- gsub("working","earth",data$Country)
data$Country <- gsub("Yugoslavia","yugoslavia",data$Country)

data$Country<-gsub("alabama","usa",data$Country)
data$Country<-gsub("Alabama","usa",data$Country)
data$Country<-gsub("Albania","albania",data$Country)
data$Country<-gsub("Albuquerque, NM","usa",data$Country)
data$Country<-gsub("Ann Arbor","usa",data$Country)
data$Country<-gsub("Ann Arbor, MI","usa",data$Country)
data$Country<-gsub("Argentina","argentina",data$Country)
data$Country<-gsub("Arizona","usa",data$Country)
data$Country<-gsub("Asia, Singapore","singapore",data$Country)
data$Country<-gsub("Atlanta","usa",data$Country)
data$Country<-gsub("atlanta, ga","usa",data$Country)
data$Country<-gsub("Atlanta, GA","usa",data$Country)
data$Country<-gsub("Austin, TX","usa",data$Country)
data$Country<-gsub("Australia","australia",data$Country)
data$Country<-gsub("Azerbaijan","azerbaijan",data$Country)
data$Country<-gsub("Baltimore","usa",data$Country)
data$Country<-gsub("Bangladesh","bangladesh",data$Country)
data$Country<-gsub("BEIJING, CHINA","china",data$Country)
data$Country<-gsub("Belgium","belgium",data$Country)
data$Country<-gsub("Berkeley","usa",data$Country)
data$Country<-gsub("Berkeley, CA","usa",data$Country)
data$Country<-gsub("Bogota, Colombia","colombia",data$Country)
data$Country<-gsub("Bombay, India","india",data$Country)
data$Country<-gsub("Born in Iran","iran",data$Country)
data$Country<-gsub("Born in Montana, raised in South Jersey (nr. Philadelphia)","usa",data$Country)
data$Country<-gsub("Boston","usa",data$Country)
data$Country<-gsub("boston, ma","usa",data$Country)
data$Country<-gsub("Boston, Ma","usa",data$Country)
data$Country<-gsub("Boston, MA","usa",data$Country)
data$Country<-gsub("Boulder, Colorado","usa",data$Country)
data$Country<-gsub("Bowdoin College","usa",data$Country)
data$Country<-gsub("Brandeis University","usa",data$Country)
data$Country<-gsub("Brazil","brazil",data$Country)
data$Country<-gsub("Bronx Science","usa",data$Country)
data$Country<-gsub("Brooklyn","usa",data$Country)
data$Country<-gsub("brooklyn ny","usa",data$Country)
data$Country<-gsub("brooklyn, ny","usa",data$Country)
data$Country<-gsub("Brooklyn, NY","usa",data$Country)
data$Country<-gsub("Budapest","hungary",data$Country)
data$Country<-gsub("Buffalo, NY","usa",data$Country)
data$Country<-gsub("Bulgaria","bulgaria",data$Country)
data$Country<-gsub("Burlington, Vermont","usa",data$Country)
data$Country<-gsub("california","usa",data$Country)
data$Country<-gsub("California","usa",data$Country)
data$Country<-gsub("CALIFORNIA","usa",data$Country)
data$Country<-gsub("California (West Coast)","usa",data$Country)
data$Country<-gsub("California and New York","usa",data$Country)
data$Country<-gsub("California, New Jersey","usa",data$Country)
data$Country<-gsub("Cambridge, MA","usa",data$Country)
data$Country<-gsub("Cambridge, Massachusetts","usa",data$Country)
data$Country<-gsub("Cameroon","cameroon",data$Country)
data$Country<-gsub("Canada","canada",data$Country)
data$Country<-gsub("Cherry Hill, NJ","usa",data$Country)
data$Country<-gsub("Chicago","usa",data$Country)
data$Country<-gsub("Chile","chile",data$Country)
data$Country<-gsub("china","china",data$Country)
data$Country<-gsub("China","china",data$Country)
data$Country<-gsub("Cincinnati, OH","usa",data$Country)
data$Country<-gsub("Cincinnati, Ohio","usa",data$Country)
data$Country<-gsub("Cleveland","usa",data$Country)
data$Country<-gsub("Colombia","colombia",data$Country)
data$Country<-gsub("Colombia, South America","colombia",data$Country)
data$Country<-gsub("colorado","usa",data$Country)
data$Country<-gsub("Colorado","usa",data$Country)
data$Country<-gsub("Connecticut","usa",data$Country)
data$Country<-gsub("Costa Rica","costa rica",data$Country)
data$Country<-gsub("CT, FL, TN","usa",data$Country)
data$Country<-gsub("czech republic","czech republic",data$Country)

data$Country<-gsub("Dallas, Texas","usa",data$Country)
data$Country<-gsub("DC","usa",data$Country)
data$Country<-gsub("Detroit","usa",data$Country)
data$Country<-gsub("Detroit suburbs","usa",data$Country)
data$Country<-gsub("Detroit, Michigan, USA","usa",data$Country)
data$Country<-gsub("England","uk",data$Country)
data$Country<-gsub("Erie, PA","usa",data$Country)
data$Country<-gsub("Europe","other",data$Country)
data$Country<-gsub("Florida","usa",data$Country)
data$Country<-gsub("Florida and Virginia","usa",data$Country)
data$Country<-gsub("france","france",data$Country)
data$Country<-gsub("France","france",data$Country)
data$Country<-gsub("France  / New York","other",data$Country) 
data$Country<-gsub("Genova, Italy","italy",data$Country)
data$Country<-gsub("Georgia, USA","usa",data$Country)
data$Country<-gsub("Germany","germany",data$Country)
data$Country<-gsub("Great Neck, NY","usa",data$Country)
data$Country<-gsub("Greece","greece",data$Country)
data$Country<-gsub("Greece/Germany","other",data$Country)
data$Country<-gsub("Greenwich, CT","usa",data$Country)
data$Country<-gsub("Hastings-on-Hudson, NY","usa",data$Country)
data$Country<-gsub("Hawaii","usa",data$Country)
data$Country<-gsub("Hawaii and Los Angeles","usa",data$Country)
data$Country<-gsub("HKG","hongkong",data$Country)
data$Country<-gsub("Hong Kong","hongkong",data$Country)
data$Country<-gsub("Houston","usa",data$Country)
data$Country<-gsub("I am from NYC","usa",data$Country)
data$Country<-gsub("Iceland","iceland",data$Country)
data$Country<-gsub("India","india",data$Country)
data$Country<-gsub("India and NJ","other",data$Country)
data$Country<-gsub("India, Holland","india",data$Country)
data$Country<-gsub("India/Venezuela","other",data$Country)
data$Country<-gsub("Indiana","usa",data$Country)
data$Country<-gsub("Indonesia","indonesia",data$Country)
data$Country<-gsub("International Student","other",data$Country)
data$Country<-gsub("Iowa","usa",data$Country)
data$Country<-gsub("Israel","israel",data$Country)
data$Country<-gsub("Italy","italy",data$Country)
data$Country<-gsub("J.P. Morgan","usa",data$Country)
data$Country<-gsub("japan","japan",data$Country)
data$Country<-gsub("Japan","japan",data$Country)
data$Country<-gsub("Kansas","usa",data$Country)
data$Country<-gsub("Kansas City, Missouri","usa",data$Country)
data$Country<-gsub("Katonah, NY (more recently, Boston)","usa",data$Country)
data$Country<-gsub("Korea","korea",data$Country)
data$Country<-gsub("Las Vegas, Nevada","usa",data$Country)
data$Country<-gsub("Lexington, MA","usa",data$Country)
data$Country<-gsub("London & New York","other",data$Country)
data$Country<-gsub("London, England","uk",data$Country)
data$Country<-gsub("London, UK","uk",data$Country)
data$Country<-gsub("Long Island","usa",data$Country)
data$Country<-gsub("los angeles","usa",data$Country)
data$Country<-gsub("lOS aNGELES","usa",data$Country)
data$Country<-gsub("Los Angeles","usa",data$Country)
data$Country<-gsub("Los Angeles, CA","usa",data$Country)
data$Country<-gsub("Louisiana","usa",data$Country)
data$Country<-gsub("Malaysia, then Massachusetts","other",data$Country)
data$Country<-gsub("Manhattan","usa",data$Country)
data$Country<-gsub("Manila, Philippines","philippines",data$Country)
data$Country<-gsub("Maryland","usa",data$Country)
data$Country<-gsub("Massachusetts","usa",data$Country)
data$Country<-gsub("MD","moldova",data$Country)
data$Country<-gsub("Memphis, TN","usa",data$Country)
data$Country<-gsub("Mexico","mexico",data$Country)
data$Country<-gsub("Miami","usa",data$Country)
data$Country<-gsub("Michigan","usa",data$Country)
data$Country<-gsub("Midwest USA","usa",data$Country)
data$Country<-gsub("Milan ? Italy","italy",data$Country)
data$Country<-gsub("Westchester, usa","usa",data$Country)
data$Country<-gsub("Wash usa (4 yrs)","usa",data$Country)
data$Country<-gsub("Uzbekistan","uzbekistan",data$Country)
data$Country<-gsub("usaC, usa","usa",data$Country)
data$Country<-gsub("usaC (usa)","usa",data$Country)
data$Country<-gsub("usaC-6 yrs. Grew up in usa","usa",data$Country)
data$Country<-gsub("usaC","usa",data$Country)
data$Country<-gsub("usa/South korea/japan","other",data$Country)
data$Country<-gsub("usa/London","other",data$Country)
data$Country<-gsub("usa/LA","usa",data$Country)
data$Country<-gsub("USA/American","usa",data$Country)
data$Country<-gsub("usa, usa, USA","usa",data$Country)
data$Country<-gsub("usa, usa","usa",data$Country)
data$Country<-gsub("usa, MN","usa",data$Country)
data$Country<-gsub("usa, MI","usa",data$Country)
data$Country<-gsub("usa, MA","usa",data$Country)
data$Country<-gsub("usa, Ma","usa",data$Country)
data$Country<-gsub("usa, GA","usa",data$Country)
data$Country<-gsub("usa, CA","usa",data$Country)
data$Country<-gsub("usa(home)/usa(undergrad)","usa",data$Country)
data$Country<-gsub("usa suburbs","usa",data$Country)
data$Country<-gsub("usa Metro Region","usa",data$Country)
data$Country<-gsub("usa City, Missouri","usa",data$Country)
data$Country<-gsub("usa City","usa",data$Country)
data$Country<-gsub("usa city","usa",data$Country)
data$Country<-gsub("usa Bay Area","usa",data$Country)
data$Country<-gsub("usa Area/ usa","usa",data$Country)
data$Country<-gsub("usa and usa","usa",data$Country)
data$Country<-gsub("usa (West Coast)","usa",data$Country)
data$Country<-gsub("usa & usa","usa",data$Country)
data$Country<-gsub("Upstate usa","usa",data$Country)
data$Country<-gsub("un","other",data$Country)
data$Country<-gsub("uk/Turkey","other",data$Country)
data$Country<-gsub("Tokyo and usa","other",data$Country)
data$Country<-gsub("State College, usa","usa",data$Country)
data$Country<-gsub("South Orange, usa","usa",data$Country)
data$Country<-gsub("Saratoga, usa","usa",data$Country)
data$Country<-gsub("russia/germany","other",data$Country)
data$Country<-gsub("Milan - italy","italy",data$Country)
data$Country<-gsub("Memphis, usa","usa",data$Country)
data$Country<-gsub("Manila, philippines","philippines",data$Country)
data$Country<-gsub("London, uk","uk",data$Country)
data$Country<-gsub("London & usa","usa",data$Country)
data$Country<-gsub("Katonah, usa (more recently, usa)","usa",data$Country)
data$Country<-gsub("indiana","usa",data$Country)
data$Country<-gsub("india/Venezuela","other",data$Country)
data$Country<-gsub("india, Holland","other",data$Country)
data$Country<-gsub("india and usa","usa",data$Country)
data$Country<-gsub("I am from usaC","usa",data$Country)
data$Country<-gsub("Hastings-on-Hudson, usa","usa",data$Country)
data$Country<-gsub("greece/germany","other",data$Country)
data$Country<-gsub("Great Neck, usa","usa",data$Country)
data$Country<-gsub("france  / usa","other",data$Country)
data$Country<-gsub("Erie, usa","usa",data$Country)
data$Country<-gsub("earth","other",data$Country)
data$Country<-gsub("Dallas, usa","usa",data$Country)
data$Country<-gsub("CT, FL, usa","usa",data$Country)
data$Country<-gsub("colombia, South America","colombia",data$Country)
data$Country<-gsub("Cincinnati, usa","usa",data$Country)
data$Country<-gsub("Cherry Hill, usa","usa",data$Country)
data$Country<-gsub("canada/usa","other",data$Country)
data$Country<-gsub("canada, London, india","other",data$Country)
data$Country<-gsub("canada, canada","canada",data$Country)
data$Country<-gsub("Buffalo, usa","usa",data$Country)
data$Country<-gsub("Born in Montana, raised in South Jersey (nr. usa)","usa",data$Country)
data$Country<-gsub("Asia, singapore","singapore",data$Country)
data$Country<-gsub("94115","other",data$Country)
data$Country[data$Country=="Wash usa (4 yrs)"]<-"usa"
data$Country[data$Country=="usa(home)/usa(otherdergrad)"]<-"usa"
data$Country[data$Country=="usa (West Coast)"]<-"usa"
data$Country[data$Country=="usa (usa)"]<-"usa"
data$Country[data$Country=="Katonah, usa (more recently, usa)"]<-"usa"
data$Country<-gsub("I am from usa","usa",data$Country)
data$Country<-gsub("hothergary","other",data$Country)
data$Country[data$Country=="Born in Montana, raised in South Jersey (nr. usa)"]<-"usa"
table(data$Country)

#다시 대륙으로 바꿔줌
data$Country<-gsub("albania","europe",data$Country)
data$Country<-gsub("argentina","america",data$Country)
data$Country<-gsub("australia","oceania",data$Country)
data$Country<-gsub("azerbaijan","europe",data$Country)
data$Country<-gsub("bangladesh","asia",data$Country)
data$Country<-gsub("belgium","europe",data$Country)
data$Country<-gsub("brazil","america",data$Country)
data$Country<-gsub("bulgaria","europe",data$Country)
data$Country<-gsub("cameroon","africa",data$Country)
data$Country<-gsub("canada","america",data$Country)
data$Country<-gsub("chile","america",data$Country)
data$Country<-gsub("china","asia",data$Country)
data$Country<-gsub("colombia","america",data$Country)
data$Country<-gsub("costa rica","america",data$Country)
data$Country<-gsub("czech republic","europe",data$Country)
data$Country<-gsub("france","europe",data$Country)
data$Country<-gsub("germany","europe",data$Country)
data$Country<-gsub("greece","europe",data$Country)
data$Country<-gsub("hongkong","asia",data$Country)
data$Country<-gsub("iceland","europe",data$Country)
data$Country<-gsub("india","asia",data$Country)
data$Country<-gsub("indonesia","asia",data$Country)
data$Country<-gsub("iran","asia",data$Country)
data$Country<-gsub("israel","asia",data$Country)
data$Country<-gsub("italy","europe",data$Country)
data$Country<-gsub("japan","asia",data$Country)
data$Country<-gsub("korea","asia",data$Country)
data$Country<-gsub("mexico","america",data$Country)
data$Country<-gsub("moldova","europe",data$Country)
data$Country<-gsub("nepal","europe",data$Country)
data$Country<-gsub("panama","europe",data$Country)
data$Country<-gsub("philippines","europe",data$Country)
data$Country<-gsub("poland","europe",data$Country)
data$Country<-gsub("puerto rico","europe",data$Country)
data$Country<-gsub("romania","europe",data$Country)
data$Country<-gsub("russia","europe",data$Country)
data$Country<-gsub("singapore","asia",data$Country)
data$Country<-gsub("spain","europe",data$Country)
data$Country<-gsub("sweden","europe",data$Country)
data$Country<-gsub("switzerland","europe",data$Country)
data$Country<-gsub("taiwan","asia",data$Country)
data$Country<-gsub("uk","europe",data$Country)
data$Country<-gsub("uruguay","america",data$Country)
data$Country<-gsub("usa","america",data$Country)
data$Country<-gsub("uzbekistan","america",data$Country)
data$Country<-gsub("yugoslavia","europe",data$Country)
table(data$Country)

#museums, art, hiking, gaming, clubbing, theater, movies, concerts, yoga 0점인 경우 1점으로 교체
#gaming, reading, 최고점 10점 넘어가는 경우 10점으로 바꿔줌
names(data)
summary(data[,52:68])
data[,c(56,57,58,59,60,63,64,65,68)][data[,c(56,57,58,59,60,63,64,65,68)]==0]<-1
table(data$gaming)
data$gaming[data$gaming==14]<-10
table(data$reading)
data$reading[data$reading==13]<-10

#attr1_1~shar1_1 합으로 나눠서 비율로 바꿔줌 (6~9웨이브도 똑같이 설문했기때문에 합쳐서 만듦)
names(data)
data$attr1_1.ratings<-data$attr1_1/(data$attr1_1+data$sinc1_1+data$intel1_1+data$fun1_1+data$amb1_1+data$shar1_1)
data$sinc1_1.ratings<-data$sinc1_1/(data$attr1_1+data$sinc1_1+data$intel1_1+data$fun1_1+data$amb1_1+data$shar1_1)
data$intel1_1.ratings<-data$intel1_1/(data$attr1_1+data$sinc1_1+data$intel1_1+data$fun1_1+data$amb1_1+data$shar1_1)
data$fun1_1.ratings<-data$fun1_1/(data$attr1_1+data$sinc1_1+data$intel1_1+data$fun1_1+data$amb1_1+data$shar1_1)
data$amb1_1.ratings<-data$amb1_1/(data$attr1_1+data$sinc1_1+data$intel1_1+data$fun1_1+data$amb1_1+data$shar1_1)
data$shar1_1.ratings<-data$shar1_1/(data$attr1_1+data$sinc1_1+data$intel1_1+data$fun1_1+data$amb1_1+data$shar1_1)
summary(apply(data[,204:209],1,sum))

#attr2_1~shar2_1 합으로 나눠서 비율로 바꿔줌 (6~9웨이브도 똑같이 설문했기때문에 합쳐서 만듦)
data$attr2_1.ratings<-data$attr2_1/(data$attr2_1+data$sinc2_1+data$intel2_1+data$fun2_1+data$amb2_1+data$shar2_1)
data$sinc2_1.ratings<-data$sinc2_1/(data$attr2_1+data$sinc2_1+data$intel2_1+data$fun2_1+data$amb2_1+data$shar2_1)
data$intel2_1.ratings<-data$intel2_1/(data$attr2_1+data$sinc2_1+data$intel2_1+data$fun2_1+data$amb2_1+data$shar2_1)
data$fun2_1.ratings<-data$fun2_1/(data$attr2_1+data$sinc2_1+data$intel2_1+data$fun2_1+data$amb2_1+data$shar2_1)
data$amb2_1.ratings<-data$amb2_1/(data$attr2_1+data$sinc2_1+data$intel2_1+data$fun2_1+data$amb2_1+data$shar2_1)
data$shar2_1.ratings<-data$shar2_1/(data$attr2_1+data$sinc2_1+data$intel2_1+data$fun2_1+data$amb2_1+data$shar2_1)

#attr, sinc, intel, fun, amb, shar, like, prob : 0점인 애들 1점으로 변경
names(data)
data[,100:107][data[,100:107]==0]<-1
summary(data[,100:107])

#met_o 3,5,6,7,8 1로 바꿔주기
table(data$met_o)
data$met_o[data$met_o==3 | data$met_o==5 | data$met_o==6 | data$met_o==7 | data$met_o==8]<-1

#match_es 0.5, 1.5 , 2.5, 3.4 반올림
table(data$match_es)
data$match_es<-round(data$match_es)

#attr1_2~shar1_2 합으로 나눠서 비율로 바꿔줌 (6~9웨이브도 똑같이 설문했기때문에 합쳐서 만듦)
names(data)
data$attr1_2.ratings<-data$attr1_2/(data$attr1_2+data$sinc1_2+data$intel1_2+data$fun1_2+data$amb1_2+data$shar1_2)
data$sinc1_2.ratings<-data$sinc1_2/(data$attr1_2+data$sinc1_2+data$intel1_2+data$fun1_2+data$amb1_2+data$shar1_2)
data$intel1_2.ratings<-data$intel1_2/(data$attr1_2+data$sinc1_2+data$intel1_2+data$fun1_2+data$amb1_2+data$shar1_2)
data$fun1_2.ratings<-data$fun1_2/(data$attr1_2+data$sinc1_2+data$intel1_2+data$fun1_2+data$amb1_2+data$shar1_2)
data$amb1_2.ratings<-data$amb1_2/(data$attr1_2+data$sinc1_2+data$intel1_2+data$fun1_2+data$amb1_2+data$shar1_2)
data$shar1_2.ratings<-data$shar1_2/(data$attr1_2+data$sinc1_2+data$intel1_2+data$fun1_2+data$amb1_2+data$shar1_2)

#date_3 NA를 0, 나머지 1로 바꿔서 데이트를 했냐 안했냐로 바꿔줌
data$date_3<-ifelse(is.na(data$date_3),0,1)
table(is.na(data$date_3))

#int_corr,field,undergra,mn_sat,tuition,from,zipcode ,income,career
#attr1_s~shar1_s, attr3_s~amb3_s, attr7_2~shar7_2
#you_call, them_cal 그리고 date_3 밑에 있는 모든 변수까지 제거
names(data)
data1<-data[,-c(1,15,19:24,71:76,83:88,130:135,36,38,39,40,44,45,46,50,110:120,124:129,158,159,161:196)]
str(data1)
apply(data1,2,pMiss)
names(data1)

data1[,108][is.na(data1[,108])]<-0
data1[,109][is.na(data1[,109])]<-0
data1[,110][is.na(data1[,110])]<-0
data1[,111][is.na(data1[,111])]<-0
data1[,112][is.na(data1[,112])]<-0
data1[,113][is.na(data1[,113])]<-0
data1[,108:113][apply(data1[,108:113],1,sum)==0,]<-NA
table(is.na(apply(data1[,108:113],1,sum)))

data1[,115][is.na(data1[,115])]<-0
data1[,116][is.na(data1[,116])]<-0
data1[,117][is.na(data1[,117])]<-0
data1[,118][is.na(data1[,118])]<-0
data1[,119][is.na(data1[,119])]<-0
data1[,120][is.na(data1[,120])]<-0
data1[,115:120][apply(data1[,115:120],1,sum)==0,]<-NA
table(is.na(apply(data1[,115:120],1,sum)))

data1[,121][is.na(data1[,121])]<-0
data1[,122][is.na(data1[,122])]<-0
data1[,123][is.na(data1[,123])]<-0
data1[,124][is.na(data1[,124])]<-0
data1[,125][is.na(data1[,125])]<-0
data1[,126][is.na(data1[,126])]<-0
data1[,121:126][apply(data1[,121:126],1,sum)==0,]<-NA
table(is.na(apply(data1[,121:126],1,sum)))

data1[,127][is.na(data1[,127])]<-0
data1[,128][is.na(data1[,128])]<-0
data1[,129][is.na(data1[,129])]<-0
data1[,130][is.na(data1[,130])]<-0
data1[,131][is.na(data1[,131])]<-0
data1[,132][is.na(data1[,132])]<-0
data1[,127:132][apply(data1[,127:132],1,sum)==0,]<-NA
table(is.na(apply(data1[,127:132],1,sum)))

data1[,55][is.na(data1[,55])]<-0
data1[,56][is.na(data1[,56])]<-0
data1[,57][is.na(data1[,57])]<-0
data1[,58][is.na(data1[,58])]<-0
data1[,59][is.na(data1[,59])]<-0
data1[,60][is.na(data1[,60])]<-0
data1[,55:60][apply(data1[,55:60],1,sum)==0,]<-NA
table(is.na(apply(data1[,55:60],1,sum)))

data1[,66][is.na(data1[,66])]<-0
data1[,67][is.na(data1[,67])]<-0
data1[,68][is.na(data1[,68])]<-0
data1[,69][is.na(data1[,69])]<-0
data1[,70][is.na(data1[,70])]<-0
data1[,66:70][apply(data1[,66:70],1,sum)==0,]<-NA
table(is.na(apply(data1[,66:70],1,sum)))

data1[,85][is.na(data1[,85])]<-0
data1[,86][is.na(data1[,86])]<-0
data1[,87][is.na(data1[,87])]<-0
data1[,88][is.na(data1[,88])]<-0
data1[,89][is.na(data1[,89])]<-0
data1[,90][is.na(data1[,90])]<-0
data1[,85:90][apply(data1[,85:90],1,sum)==0,]<-NA
table(is.na(apply(data1[,85:90],1,sum)))

data1[,91][is.na(data1[,91])]<-0
data1[,92][is.na(data1[,92])]<-0
data1[,93][is.na(data1[,93])]<-0
data1[,94][is.na(data1[,94])]<-0
data1[,95][is.na(data1[,95])]<-0
data1[,96][is.na(data1[,96])]<-0
data1[,91:96][apply(data1[,91:96],1,sum)==0,]<-NA
table(is.na(apply(data1[,91:96],1,sum)))

data1[,97][is.na(data1[,97])]<-0
data1[,98][is.na(data1[,98])]<-0
data1[,99][is.na(data1[,99])]<-0
data1[,100][is.na(data1[,100])]<-0
data1[,101][is.na(data1[,101])]<-0
data1[,97:101][apply(data1[,97:101],1,sum)==0,]<-NA
table(is.na(apply(data1[,97:101],1,sum)))

data1[,102][is.na(data1[,102])]<-0
data1[,103][is.na(data1[,103])]<-0
data1[,104][is.na(data1[,104])]<-0
data1[,105][is.na(data1[,105])]<-0
data1[,106][is.na(data1[,106])]<-0
data1[,102:106][apply(data1[,102:106],1,sum)==0,]<-NA
table(is.na(apply(data1[,102:106],1,sum)))

#범주형 변수들 factor로 변경
#condtn, wave, position,match,samerace, race_o, dec_o, met_o,field_cd, race,goal,
#	career_c,dec,met,length,numdat_2,date_3,Country

data1$condtn<-as.factor(data1$condtn)
data1$position<-as.factor(data1$position)
data1$samerace<-as.factor(data1$samerace)
data1$race_o<-as.factor(data1$race_o)
data1$dec_o<-as.factor(data1$dec_o)
data1$met_o<-as.factor(data1$met_o)
data1$field_cd<-as.factor(data1$field_cd)
data1$race<-as.factor(data1$race)
data1$goal<-as.factor(data1$goal)
data1$career_c<-as.factor(data1$career_c)
data1$dec<-as.factor(data1$dec)
data1$met<-as.factor(data1$met)
data1$length<-as.factor(data1$length)
data1$numdat_2<-as.factor(data1$numdat_2)
data1$date_3<-as.factor(data1$date_3)
data1$Country<-as.factor(data1$Country)


#성별로 나누기
apply(data1,2,pMiss)
data1.M<-data1[data1$gender==1,]
data1.F<-data1[data1$gender==0,]
str(data1.M)
str(data1.F)

#1~5웨이브 , 6~9웨이브, 10~21웨이브로 나누기
data1.M$wave<-as.numeric(data1.M$wave)
data1.F$wave<-as.numeric(data1.F$wave)

data1.M.1<-data1.M[data1.M$wave>=1 & data1.M$wave<=5,]
data1.M.2<-data1.M[data1.M$wave>=6 & data1.M$wave<=9,]
data1.M.3<-data1.M[data1.M$wave>=10,]

data1.F.1<-data1.F[data1.F$wave>=1 & data1.F$wave<=5,]
data1.F.2<-data1.F[data1.F$wave>=6 & data1.F$wave<=9,]
data1.F.3<-data1.F[data1.F$wave>=10,]

#1~5웨이브 attr4_1~shar4_1,attr5_1~amb5_1,attr4_2~shar4_2,attr2_2~shar2_2,attr5_2~amb5_2 모두 결측치여서 제거
#추가로 positin1도 모두 결측이여서 제거      
names(data1.M.1)
apply(data1.M.1,2,pMiss)
apply(data1.F.1,2,pMiss)
data1.M.1<-data1.M.1[,-c(9,55:60,66:70,85:96,102:106)]
data1.F.1<-data1.F.1[,-c(9,55:60,66:70,85:96,102:106)]

#6~9웨이브 expnum,attr5_1~amb5_1,attr5_2~amb5_2 모두 결측이여서 제거, match_es 결측치비율이 높아 제거
apply(data1.M.2,2,pMiss)
apply(data1.F.2,2,pMiss)
names(data1.M.2)
data1.M.2<-data1.M.2[,-c(54,66:70,81,102:106)]
data1.F.2<-data1.F.2[,-c(54,66:70,81,102:106)]
str(data1.F.1)

#10~21웨이브 expnum 모두 결측치
apply(data1.M.3,2,pMiss)
apply(data1.F.3,2,pMiss)
names(data1.M.3)
data1.M.3<-data1.M.3[,-54]
data1.F.3<-data1.F.3[,-54]

#결측치대체 - missForest , 분포를 따지지 않고 다양한 변수 타입에 맞게 결측치를 대체하며
#		이름과 같게 랜덤포레스트 알고리즘을 통해 모델을 생성하여 결측값을 예측하는 비모수적인 방법이다.
#OOBerror는 오류를 보여줌
#NRMSE(normalized mean squared error) : 연속형 변수 잘못 대체되는 확률
#PFC는 proportion of falsely classified (범주형 변수 대체 할 때 잘못 분류될 확률)
#ximp 는 결측치 채워진 값을 보여줌


#1~5웨이브 남자 결측치 대체 (결측치가 있는 변수들이 모두 연속형이여서 굳이 다른 변수들 factor로 바꾸지않음)
library(missForest)
names(data1.M.1)
str(data1.M.1)

set.seed(1234)
imp.m1<-missForest(data1.M.1)
imp.m1
str(imp.m1$ximp)
imp.m1$OOBerror
final.imp.m1<-imp.m1$ximp
str(final.imp.m1)


#1~5웨이브 여자 결측치 대체
set.seed(1234)
imp.f1<-missForest(data1.F.1)
str(imp.f1$ximp)
imp.f1$OOBerror
final.imp.f1<-imp.f1$ximp
str(final.imp.f1)

#6~9웨이브 남자 결측치 대체
set.seed(1234)
imp.m2<-missForest(data1.M.2)
imp.m2
imp.m2$OOBerror
final.imp.m2<-imp.m2$ximp
str(final.imp.m2)

#6~9웨이브 여자 결측치 대체
str(data1.F.2)
set.seed(1234)
imp.f2<-missForest(data1.F.2)
imp.f2
imp.f2$OOBerror
final.imp.f2<-imp.f2$ximp
str(final.imp.f2)

#10~21웨이브 남자 결측치 대체
set.seed(1234)
imp.m3<-missForest(data1.M.3)
imp.m3
imp.m3$OOBerror
final.imp.m3<-imp.m3$ximp
str(final.imp.m3)

#10~21웨이브 여자 결측치 대체
data1.F.3$Country<-as.factor(data1.F.3$Country)
set.seed(1234)
imp.f3<-missForest(data1.F.3)
imp.f3
imp.f3$OOBerror
final.imp.f3<-imp.f3$ximp
str(final.imp.f3)

#부스트랩
#1~5웨이브 남자 부스트랩
table(final.imp.m1$match)
bb<-final.imp.m1[final.imp.m1$match==1,]
str(bb)
set.seed(1234)
results<-sample(1:134,460,replace=T)
cc<-bb[results,]
str(cc)
table(cc$match)
real.final.m1<-rbind(final.imp.m1,cc)
str(real.final.m1)
table(real.final.m1$match)

#1~5웨이브 여자 부스트랩
table(final.imp.f1$match)
bb<-final.imp.f1[final.imp.f1$match==1,]
str(bb)
set.seed(1234)
results<-sample(1:130,440,replace=T)
cc<-bb[results,]
str(cc)
table(cc$match)
real.final.f1<-rbind(final.imp.f1,cc)
str(real.final.f1)
table(real.final.f1$match)

#6~9웨이브 남자 부스트랩
table(final.imp.m2$match)
bb<-final.imp.m2[final.imp.m2$match==1,]
str(bb)
set.seed(1234)
results<-sample(1:105,414,replace=T)
cc<-bb[results,]
str(cc)
table(cc$match)
real.final.m2<-rbind(final.imp.m2,cc)
str(real.final.m2)
table(real.final.m2$match)

#6~9웨이브 여자 부스트랩
table(final.imp.f2$match)
bb<-final.imp.f2[final.imp.f2$match==1,]
str(bb)
set.seed(1234)
results<-sample(1:105,435,replace=T)
cc<-bb[results,]
str(cc)
table(cc$match)
real.final.f2<-rbind(final.imp.f2,cc)
str(real.final.f2)
table(real.final.f2$match)

#10~21웨이브 남자 부스트랩
table(final.imp.m3$match)
bb<-final.imp.m3[final.imp.m3$match==1,]
str(bb)
set.seed(1234)
results<-sample(1:312,1322,replace=T)
cc<-bb[results,]
str(cc)
table(cc$match)
real.final.m3<-rbind(final.imp.m3,cc)
str(real.final.m3)
table(real.final.m3$match)

#10~21웨이브 여자 부스트랩
table(final.imp.f3$match)
bb<-final.imp.f3[final.imp.f3$match==1,]
str(bb)
set.seed(1234)
results<-sample(1:321,1349,replace=T)
cc<-bb[results,]
str(cc)
table(cc$match)
real.final.f3<-rbind(final.imp.f3,cc)
str(real.final.f3)
table(real.final.f3$match)

#엑셀로 작성
write.csv(real.final.m1,"남자1웨이브수정.csv")
write.csv(real.final.m2,"남자2웨이브수정.csv")
write.csv(real.final.m3,"남자3웨이브수정.csv")
write.csv(real.final.f1,"여자1웨이브수정.csv")
write.csv(real.final.f2,"여자2웨이브수정.csv")
write.csv(real.final.f3,"여자3웨이브수정.csv")


