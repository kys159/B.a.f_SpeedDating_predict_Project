setwd("C:/Users/dudtj/Desktop/2019.01.13 스피드데이트 프로젝트")
woman<-read.csv("여자1웨이브수정.csv",header=T,stringsAsFactors=F)
str(woman)

names(woman)

woman$age_o<-ceiling(woman$age_o)
woman$race_o<-round(woman$race_o)
woman$attr_o<-round(woman$attr_o)
woman$sinc_o<-round(woman$sinc_o)
woman$intel_o<-round(woman$intel_o)
woman$fun_o<-round(woman$fun_o)
woman$amb_o<-round(woman$amb_o)
woman$shar_o<-round(woman$shar_o)
woman$like_o<-round(woman$like_o)
woman$prob_o<-round(woman$prob_o)
woman$met_o<-round(woman$met_o)
woman$age<-ceiling(woman$age)
woman$attr<-round(woman$attr)
woman$sinc<-round(woman$sinc)
woman$intel<-round(woman$intel)
woman$fun<-round(woman$fun)
woman$amb<-round(woman$amb)
woman$shar<-round(woman$shar)
woman$like<-round(woman$like)
woman$prob<-round(woman$prob)
woman$met<-round(woman$met)
woman$match_es<-round(woman$match_es)
woman$satis_2<-round(woman$satis_2)
woman$length<-round(woman$length)
woman$numdat_2<-round(woman$numdat_2)
woman$attr3_2<-round(woman$attr3_2)
woman$sinc3_2<-round(woman$sinc3_2)
woman$intel3_2<-round(woman$intel3_2)
woman$fun3_2<-round(woman$fun3_2)
woman$amb3_2<-round(woman$amb3_2)


woman$pf_o_att.rating<-woman$pf_o_att.ratings/(woman$pf_o_att.ratings+woman$pf_o_sin.ratings+woman$pf_o_int.ratings+woman$pf_o_fun.ratings+woman$pf_o_amb.ratings+woman$pf_o_sha.ratings)
woman$pf_o_sin.rating<-woman$pf_o_sin.ratings/(woman$pf_o_att.ratings+woman$pf_o_sin.ratings+woman$pf_o_int.ratings+woman$pf_o_fun.ratings+woman$pf_o_amb.ratings+woman$pf_o_sha.ratings)
woman$pf_o_int.rating<-woman$pf_o_int.ratings/(woman$pf_o_att.ratings+woman$pf_o_sin.ratings+woman$pf_o_int.ratings+woman$pf_o_fun.ratings+woman$pf_o_amb.ratings+woman$pf_o_sha.ratings)
woman$pf_o_fun.rating<-woman$pf_o_fun.ratings/(woman$pf_o_att.ratings+woman$pf_o_sin.ratings+woman$pf_o_int.ratings+woman$pf_o_fun.ratings+woman$pf_o_amb.ratings+woman$pf_o_sha.ratings)
woman$pf_o_amb.rating<-woman$pf_o_amb.ratings/(woman$pf_o_att.ratings+woman$pf_o_sin.ratings+woman$pf_o_int.ratings+woman$pf_o_fun.ratings+woman$pf_o_amb.ratings+woman$pf_o_sha.ratings)
woman$pf_o_sha.rating<-woman$pf_o_sha.ratings/(woman$pf_o_att.ratings+woman$pf_o_sin.ratings+woman$pf_o_int.ratings+woman$pf_o_fun.ratings+woman$pf_o_amb.ratings+woman$pf_o_sha.ratings)
table(woman$pf_o_att.rating+woman$pf_o_sin.rating+woman$pf_o_int.rating+woman$pf_o_fun.rating+woman$pf_o_amb.rating+woman$pf_o_sha.rating)


woman$attr1_1.rating<-woman$attr1_1.ratings/(woman$attr1_1.ratings+woman$sinc1_1.ratings+woman$intel1_1.ratings+woman$fun1_1.ratings+woman$amb1_1.ratings+woman$shar1_1.ratings)
woman$sinc1_1.rating<-woman$sinc1_1.ratings/(woman$attr1_1.ratings+woman$sinc1_1.ratings+woman$intel1_1.ratings+woman$fun1_1.ratings+woman$amb1_1.ratings+woman$shar1_1.ratings)
woman$intel1_1.rating<-woman$intel1_1.ratings/(woman$attr1_1.ratings+woman$sinc1_1.ratings+woman$intel1_1.ratings+woman$fun1_1.ratings+woman$amb1_1.ratings+woman$shar1_1.ratings)
woman$fun1_1.rating<-woman$fun1_1.ratings/(woman$attr1_1.ratings+woman$sinc1_1.ratings+woman$intel1_1.ratings+woman$fun1_1.ratings+woman$amb1_1.ratings+woman$shar1_1.ratings)
woman$amb1_1.rating<-woman$amb1_1.ratings/(woman$attr1_1.ratings+woman$sinc1_1.ratings+woman$intel1_1.ratings+woman$fun1_1.ratings+woman$amb1_1.ratings+woman$shar1_1.ratings)
woman$shar1_1.rating<-woman$shar1_1.ratings/(woman$attr1_1.ratings+woman$sinc1_1.ratings+woman$intel1_1.ratings+woman$fun1_1.ratings+woman$amb1_1.ratings+woman$shar1_1.ratings)
table(woman$attr1_1.rating+woman$sinc1_1.rating+woman$intel1_1.rating+woman$fun1_1.rating+woman$amb1_1.rating+woman$shar1_1.rating)

woman$attr2_1.rating<-woman$attr2_1.ratings/(woman$attr2_1.ratings+woman$sinc2_1.ratings+woman$intel2_1.ratings+woman$fun2_1.ratings+woman$amb2_1.ratings+woman$shar2_1.ratings)
woman$sinc2_1.rating<-woman$sinc2_1.ratings/(woman$attr2_1.ratings+woman$sinc2_1.ratings+woman$intel2_1.ratings+woman$fun2_1.ratings+woman$amb2_1.ratings+woman$shar2_1.ratings)
woman$intel2_1.rating<-woman$intel2_1.ratings/(woman$attr2_1.ratings+woman$sinc2_1.ratings+woman$intel2_1.ratings+woman$fun2_1.ratings+woman$amb2_1.ratings+woman$shar2_1.ratings)
woman$fun2_1.rating<-woman$fun2_1.ratings/(woman$attr2_1.ratings+woman$sinc2_1.ratings+woman$intel2_1.ratings+woman$fun2_1.ratings+woman$amb2_1.ratings+woman$shar2_1.ratings)
woman$amb2_1.rating<-woman$amb2_1.ratings/(woman$attr2_1.ratings+woman$sinc2_1.ratings+woman$intel2_1.ratings+woman$fun2_1.ratings+woman$amb2_1.ratings+woman$shar2_1.ratings)
woman$shar2_1.rating<-woman$shar2_1.ratings/(woman$attr2_1.ratings+woman$sinc2_1.ratings+woman$intel2_1.ratings+woman$fun2_1.ratings+woman$amb2_1.ratings+woman$shar2_1.ratings)
table(woman$attr2_1.rating+woman$sinc2_1.rating+woman$intel2_1.rating+woman$fun2_1.rating+woman$amb2_1.rating+woman$shar2_1.rating)


woman$attr1_2.rating<-woman$attr1_2.ratings/(woman$attr1_2.ratings+woman$sinc1_2.ratings+woman$intel1_2.ratings+woman$fun1_2.ratings+woman$amb1_2.ratings+woman$shar1_2.ratings)
woman$sinc1_2.rating<-woman$sinc1_2.ratings/(woman$attr1_2.ratings+woman$sinc1_2.ratings+woman$intel1_2.ratings+woman$fun1_2.ratings+woman$amb1_2.ratings+woman$shar1_2.ratings)
woman$intel1_2.rating<-woman$intel1_2.ratings/(woman$attr1_2.ratings+woman$sinc1_2.ratings+woman$intel1_2.ratings+woman$fun1_2.ratings+woman$amb1_2.ratings+woman$shar1_2.ratings)
woman$fun1_2.rating<-woman$fun1_2.ratings/(woman$attr1_2.ratings+woman$sinc1_2.ratings+woman$intel1_2.ratings+woman$fun1_2.ratings+woman$amb1_2.ratings+woman$shar1_2.ratings)
woman$amb1_2.rating<-woman$amb1_2.ratings/(woman$attr1_2.ratings+woman$sinc1_2.ratings+woman$intel1_2.ratings+woman$fun1_2.ratings+woman$amb1_2.ratings+woman$shar1_2.ratings)
woman$shar1_2.rating<-woman$shar1_2.ratings/(woman$attr1_2.ratings+woman$sinc1_2.ratings+woman$intel1_2.ratings+woman$fun1_2.ratings+woman$amb1_2.ratings+woman$shar1_2.ratings)
table(woman$attr1_2.rating+woman$sinc1_2.rating+woman$intel1_2.rating+woman$fun1_2.rating+woman$amb1_2.rating+woman$shar1_2.rating)

woman1<-subset(woman,select=-c(pf_o_att.ratings,pf_o_sin.ratings,pf_o_int.ratings,
                               pf_o_fun.ratings,pf_o_amb.ratings,pf_o_sha.ratings,attr1_1.ratings,
                               sinc1_1.ratings,intel1_1.ratings,fun1_1.ratings,amb1_1.ratings,shar1_1.ratings, 
                               attr2_1.ratings,sinc2_1.ratings,intel2_1.ratings,fun2_1.ratings,amb2_1.ratings,
                               shar2_1.ratings,attr1_2.ratings,sinc1_2.ratings,intel1_2.ratings,fun1_2.ratings,
                               amb1_2.ratings,shar1_2.ratings)) 
names(woman1)

str(woman1)
woman2<-subset(woman1,select=-c(X,iid,id,gender,idg,partner,pid))
str(woman2)
names(woman2)

#분산 확인
library(caret)
nearZeroVar(woman2,names=T)

#연속형변수만 뽑기
woman2.numeric<-subset(woman2,select=-c(condtn, wave,match, position,samerace, race_o, dec_o, met_o,field_cd, race,goal,
                                        career_c,dec,met,length,numdat_2,date_3,Country))

#t.검정 실시하기 전에 등분산성 검정이 필요하며 , 정규성은 만족한다고 가정한다.
#등분산성 검정 결과 등분산성을 만족하면 t.test(data,var.equal=T)로 옵션을 넣어준다.(Welch two sample t-test)
str(woman2.numeric)
score<-c()
for(i in 1:79){
  score[i]<-var.test(woman2.numeric[,i][woman2$match==0],woman2.numeric[,i][woman2$match==1])$p.value
}
equal<-woman2.numeric[,score>=0.05]
different<-woman2.numeric[,score<0.05]
names(equal)
names(different)

#박스플랏 확인 후 호텔링 검정
library(Hotelling)
sample1<-subset(woman2,match==0,select=c(shar2_1.rating,sinc1_2.rating,
                                         fun1_2.rating))
sample2<-subset(woman2,match==1,select=c(shar2_1.rating,sinc1_2.rating,
                                         fun1_2.rating))
result<-hotelling.test(sample1,sample2)
result

t.test(woman2$fun1_2.rating[woman2$match==0],woman2$fun1_2.rating[woman2$match==1],var.equal=T)
t.test(woman2$intel1_1.rating[woman2$match==0],woman2$intel1_1.rating[woman2$match==1],var.equal=F)

#table 확인 및 chisq.test 실시
woman2.factor<-subset(woman2,select=c(condtn, wave,match, position,samerace, race_o, dec_o, met_o,field_cd, race,goal,
                                      career_c,dec,met,length,numdat_2,date_3,Country))
str(woman2.factor)

score<-c()
for(i in 1:18){
  score[i]<-chisq.test(table(woman2.factor[,i],woman2.factor$match))$p.value
}
table(score>0.05)
chisq.test(woman2.factor$date_3,woman2.factor$match)

#다중공선성 해결을 위해 설문 항목을 더함, attr_o~prob_o 는 따로 더해줌(상대방에 의한 평가이므로)
names(woman2)
woman2$attr.s<-with(woman2,attr/10+attr3_1/10+attr3_2/10+pf_o_att.rating+attr1_1.rating+attr2_1.rating+attr1_2.rating)
woman2$sinc.s<-with(woman2,sinc/10+sinc3_1/10+sinc3_2/10+pf_o_sin.rating+sinc1_1.rating+sinc2_1.rating+sinc1_2.rating)
woman2$fun.s<-with(woman2,fun/10+fun3_1/10+fun3_2/10+pf_o_fun.rating+fun1_1.rating+fun2_1.rating+fun1_2.rating)
woman2$amb.s<-with(woman2,amb/10+amb3_1/10+amb3_2/10+pf_o_amb.rating+amb1_1.rating+amb2_1.rating+amb1_2.rating)
woman2$intel.s<-with(woman2,intel/10+intel3_1/10+intel3_2/10+pf_o_int.rating+intel1_1.rating+intel2_1.rating+intel1_2.rating)
woman2$shar.s<-with(woman2,shar/10+pf_o_sha.rating+shar1_1.rating+shar2_1.rating+shar1_2.rating)

woman2$interests<-with(woman2,attr_o+sinc_o+intel_o+fun_o+amb_o+shar_o+like_o+prob_o)

woman3<-subset(woman2,select=-c(attr,attr3_1,attr3_2,pf_o_att.rating,attr1_1.rating,attr2_1.rating,attr1_2.rating,
                                sinc,sinc3_1,sinc3_2,pf_o_sin.rating,sinc1_1.rating,sinc2_1.rating,sinc1_2.rating,
                                fun,fun3_1,fun3_2,pf_o_fun.rating,fun1_1.rating,fun2_1.rating,fun1_2.rating,
                                amb,amb3_1,amb3_2,pf_o_amb.rating,amb1_1.rating,amb2_1.rating,amb1_2.rating,
                                intel,intel3_1,intel3_2,pf_o_int.rating,intel1_1.rating,intel2_1.rating,intel1_2.rating,
                                shar,pf_o_sha.rating,shar1_1.rating,shar2_1.rating,shar1_2.rating,attr_o,sinc_o,
                                intel_o,fun_o,amb_o,shar_o,like_o,prob_o))

str(woman3)

#예술항목 더하기
woman3$sports.s<-with(woman3,sports+tvsports+exercise+hiking+yoga)
woman3$art.s<-with(woman3,museums+art+theater+movies+concerts+music)
woman3$amusement.s<-with(woman3,gaming+clubbing)
woman3$malling.s<-with(woman3,shopping+dining)

woman3<-subset(woman3,select=-c(sports,tvsports,exercise,hiking,yoga,museums,art,theater,movies,
                                concerts,music,gaming,clubbing,shopping,dining))
str(woman3)

#범주형 변수간에 독립성 확인
woman3.factor<-subset(woman3,select=c(condtn, wave, position,match,samerace, race_o, dec_o, met_o,field_cd, race,goal,
                                      career_c,dec,met,length,numdat_2,date_3,Country))
str(woman3.factor)
score<-matrix(rep(NA,324),ncol=18)
for(i in 1:18){
  for(j in 1:18){
    score[i,j]<-chisq.test(woman3.factor[,i],woman3.factor[,j])$p.value
  }
}
table(score>0.05)
colnames(score)<-c("condtn","wave", "position","match","samerace", "race_o", "dec_o", "met_o","field_cd", "race","goal",
                   "career_c","dec","met","length","numdat_2","date_3","Country")
rownames(score)<-c("condtn","wave", "position","match","samerace", "race_o", "dec_o", "met_o","field_cd", "race","goal",
                   "career_c","dec","met","length","numdat_2","date_3","Country")
round(score,3)

table(man3$met,man3$met_o)

chisq.test(table(man3$imprace,man3$match))
chisq.test(table(man3$imprelig,man3$match))
chisq.test(table(man3$imprace,man3$imprelig))

#종속변수와의 chisq 검정결과 제거할 변수 제거 (dec와 dec_o도 제거)
woman3<-subset(woman3,select=-c(numdat_2,date_3,dec,dec_o))

#t.test 결과 제거할 변수 제거
woman3<-subset(woman3,select=-c(round,imprelig))

#범주형 변수 factor로 변경
#condtn, wave, position,match,samerace, race_o, dec_o, met_o,field_cd, race,goal,
#	career_c,dec,met,length,numdat_2,date_3,Country

woman3$condtn<-as.factor(woman3$condtn)
woman3$wave<-as.factor(woman3$wave)
woman3$match<-as.factor(woman3$match)
woman3$samerace<-as.factor(woman3$samerace)
woman3$Country<-as.factor(woman3$Country)
woman3$position<-as.factor(woman3$position)
woman3$match<-as.factor(woman3$match)
woman3$race_o<-as.factor(woman3$race_o)
woman3$met_o<-as.factor(woman3$met_o)
woman3$field_cd<-as.factor(woman3$field_cd)
woman3$race<-as.factor(woman3$race)
woman3$goal<-as.factor(woman3$goal)
woman3$career_c<-as.factor(woman3$career_c)
woman3$met<-as.factor(woman3$met)
woman3$length<-as.factor(woman3$length)
str(woman3)

#다중공선성 확인을 위해 회귀모형을 만듬
#회귀모형에서의 확인 결과 : 큰 의미를 갖지 않고 다중공선성이 존재하는 wave를 제거했다.
#새로만들어낸 여가생활에 대한 변수에서 계수가 NA로 나타났고 남자 데이터에서 career_c가
#다중공선성문제를 일으켯던 것에 착안하여 career_c를 제거해도 malling과 다중공선성이 발생하여
#condtn을 제거하여 다중공선성 문제를 해결 하였다.
#field_cd와 Country간의 다중공선성으로 인해 Country에 결측으로 나타는 계수가 지속적으로 나타났고
#field_cd가 Country보다 match에 대해 더 유의한 chisq검정값을 보여 Country를 제거함
#dec_o와 dec는 뒤에 로지스틱에서 큰 영향을 미쳐 미리 제거하고 확인 해 보았음.
#dec 표준오차가 매우 크고 p-value가 높아 제거(영향력이 너무 큼)
woman3$match<-as.numeric(woman3$match)
vif.fit<-lm(match~.,data=subset(woman3,select=-c(wave,career_c,condtn,Country)))
vif.fit<-lm(match~.,data=woman3)
summary(vif.fit)
library(car)
vif(vif.fit)

#wave,career_c,condtn,Country 제거
woman4<-subset(woman3,select=-c(wave,career_c,condtn,Country))

#match 끝으로 옮겨줌
names(woman4)
woman4<-woman4[,c(1:2,4:35,3)]
woman4$match<-ifelse(woman4$match==1,0,1)
str(woman4)
woman4$match<-as.factor(woman4$match)
woman4<-subset(woman4,select=-c(position))
#train set과 test set으로 나눠줌
set.seed(1234)
ind<-sample(2,nrow(woman4),replace=T,prob=c(0.7,0.3))
train.w<-woman4[ind==1,]
test.w<-woman4[ind==2,]
str(train.w)
str(test.w)

#훈련용 데이터로 로지스틱모형 만듦
full.fit.w<-glm(match~.,family=binomial,data=train.w)
summary(full.fit.w)

#다중공선성 확인을 위해 vif 값 확인
#결과 : 가장 큰 값 부터 하나씩 지워가며 모델을 수정해봄
#satis_2만 제거 했을 때 다른 변수들의 vif값은 가장 큰값이 10~14 정도
#go_out까지 제거 했을 때 최대로 큰 값이 10까지 줄어 satis_2와 go_out을 제거
vif(full.fit.w)

#stepwise로 변수 선택 (다중공선성을 일으키는 변수가 제거 된 모델로 stepwise함.)
slm.w<-step(full.fit.w,direction='both')
summary(slm.w)
vif(slm.w)

#TYPE 3 sum of squares 확인 : 모델에서 자동으로 하나의 변수씩 제거해서 비교해가며 그 변수가 타당한 변수인지 검정함
#met_o p-value가 0.0545로 애매하긴 했지만 예측율에 있어 더 향상 되지 않아 놔둠.
#일단 현재로써 로지스틱만에서의 최종모델 변수는 slm2의 변수와 같음.
library(car)
options(contrasts = c("contr.sum", "contr.poly"))
result.w<-Anova(slm2.w,type="III")
result.w

#age,imprace,exphappy,attr.s,amb.s,intel.s
slm2.w<-glm( match ~ order + samerace + met_o  + 
               race  + goal + go_out + reading +  expnum + 
               like + prob + met + match_es + sinc.s +
               shar.s + interests + art.s + amusement.s 
             , family = binomial, data = train.w)
summary(slm2.w)

#예측률 확인
library(InformationValue)
train.probs.w<-predict(slm2.w,type="response")
misClassError(train.w$match,train.probs.w)
confusionMatrix(train.w$match,train.probs.w)

#테스트셋에서의 예측률 확인
test.probs.w<-predict(slm2.w,newdata=test.w,type="response")
misClassError(test.w$match,test.probs.w)
confusionMatrix(test.w$match,test.probs.w)

#ROC커브 확인 , TPR과 FPR을 이용
library(ROCR)
pred.full.w<-prediction(test.probs.w,test.w$match)
perf.full.w<-performance(pred.full.w,"tpr","fpr")
plot(perf.full.w,main="ROC",col=1)

###랜덤포레스트
library(randomForest)
set.seed(1234)
rf.match.w<-randomForest(match ~ order + samerace + met_o  + 
                           race  + goal + go_out + reading +  expnum + 
                           like + prob + met + match_es + sinc.s +
                           shar.s + interests + art.s + amusement.s 
                         , family = binomial, data = train.w)
rf.match.w

#트리 갯수 정하기
plot(rf.match.w)
which.min(rf.match.w$err.rate[,1])

#트리 갯수를 수정한 모형
set.seed(1234)
rf.match.2.w<-randomForest(match ~ order + samerace + met_o  + 
                             race  + goal + go_out + reading +  expnum + 
                             like + prob + met + match_es + sinc.s +
                             shar.s + interests + art.s + amusement.s 
                           , family = binomial, data = train.w,ntree=405)
rf.match.2.w
(355+407)/800

#테스트셋에 결과 확인
rf.match.test.w<-predict(rf.match.2.w,newdata=test.w,type="response")
table(rf.match.test.w,test.w$match)
(164+160)/340

#변수 중요도 - X축은 지니 인덱스 평균 감소에 관한 기여도
varImpPlot(rf.match.2.w)

###랜덤포레스트 변수선택을 통해 골라진 변수들로 다시 한 번 모형 만들기
library(Boruta)
set.seed(1234)
feature.selection.w<-Boruta(match~.,data=train.w,doTrace=1)
feature.selection.w$timeTaken #걸린시간

#변수 선택 결과 확인 , withTentative=T를 넣으면 보류된 것도 포함되어진다.
table(feature.selection.w$finalDecision)
fNames.w<-getSelectedAttributes(feature.selection.w) #withTentative=T
fNames.w

#피처 이름을 통해 새로운 데이터 셋 생성
Sonar.features.w<-train.w[,fNames.w]
dim(Sonar.features.w)
str(Sonar.features.w)
Sonar.features.w$match<-train.w$match

library(randomForest)
set.seed(1234)
rf.pima.w<-randomForest(match~.,data=Sonar.features.w)
rf.pima.w

#트리 갯수 정하기
plot(rf.pima.w)
which.min(rf.pima.w$err.rate[,1])

#트리 갯수를 수정한 모형
set.seed(1234)
rf.pima.2.w<-randomForest(match~.,data=Sonar.features.w,ntree=383)
rf.pima.2.w

#테스트셋에 결과 확인
test.features.w<-test.w[,fNames.w]
test.features.w$match<-test.w$match
rf.pima.test.w<-predict(rf.pima.2.w,newdata=test.w,type="response")
table(rf.pima.test.w,test.w$match)

###서포트벡터머신
str(train.w)
library(e1071)
library(kernlab)

#polynomial 서포트벡터머신
set.seed(1234)
poly.tune.w<-tune.svm(match~.,data=train.w,kernel="polynomial",
                      degree=c(5:15),coef0=c(0.1,0.5,1,2,3,4))
summary(poly.tune.w)

best.poly.w<-poly.tune.w$best.model
poly.test.w<-predict(best.poly.w,newdata=test.w)
table(poly.test.w,test.w$match)
(149+157)/340

#radial 서포트벡터머신
set.seed(1234)
rbf.tune.w<-tune.svm(match~.,data=train.w,kernel="radial",
                     gamma=c(0.1,0.5,1,2,3,4))
summary(rbf.tune.w)
best.rbf.w<-rbf.tune.w$best.model
rbf.test.w<-predict(best.rbf.w,newdata=test.w)
table(rbf.test.w,test.w$match)
(180+155)/340

#sigmoid 서포트벡터머신
set.seed(1234)
sigmoid.tune.w<-tune.svm(match~.,data=train.w,kernel="sigmoid",
                         gamma=c(0.1,0.5,1,2,3,4),coef0=c(0.01,0.1,0.5,1,2,3,4))
summary(sigmoid.tune.w)

best.sigmoid.w<-sigmoid.tune.w$best.model
sigmoid.test.w<-predict(best.sigmoid.w,newdata=test.w)
table(sigmoid.test.w,test.w$match)
(113+110)/340


