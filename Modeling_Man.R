rm(list=ls())
setwd("C:/Users/dudtj/Desktop/2019.01.13 스피드데이트 프로젝트")
man<-read.csv("남자1웨이브수정.csv",header=T,stringsAsFactors=F)
str(man)

names(man)

man$age_o<-ceiling(man$age_o)
man$race_o<-round(man$race_o)
man$attr_o<-round(man$attr_o)
man$sinc_o<-round(man$sinc_o)
man$intel_o<-round(man$intel_o)
man$fun_o<-round(man$fun_o)
man$amb_o<-round(man$amb_o)
man$shar_o<-round(man$shar_o)
man$like_o<-round(man$like_o)
man$prob_o<-round(man$prob_o)
man$met_o<-round(man$met_o)
man$age<-ceiling(man$age)
man$attr<-round(man$attr)
man$sinc<-round(man$sinc)
man$intel<-round(man$intel)
man$fun<-round(man$fun)
man$amb<-round(man$amb)
man$shar<-round(man$shar)
man$like<-round(man$like)
man$prob<-round(man$prob)
man$met<-round(man$met)
man$match_es<-round(man$match_es)
man$satis_2<-round(man$satis_2)
man$length<-round(man$length)
man$numdat_2<-round(man$numdat_2)
man$attr3_2<-round(man$attr3_2)
man$sinc3_2<-round(man$sinc3_2)
man$intel3_2<-round(man$intel3_2)
man$fun3_2<-round(man$fun3_2)
man$amb3_2<-round(man$amb3_2)


man$pf_o_att.rating<-man$pf_o_att.ratings/(man$pf_o_att.ratings+man$pf_o_sin.ratings+man$pf_o_int.ratings+man$pf_o_fun.ratings+man$pf_o_amb.ratings+man$pf_o_sha.ratings)
man$pf_o_sin.rating<-man$pf_o_sin.ratings/(man$pf_o_att.ratings+man$pf_o_sin.ratings+man$pf_o_int.ratings+man$pf_o_fun.ratings+man$pf_o_amb.ratings+man$pf_o_sha.ratings)
man$pf_o_int.rating<-man$pf_o_int.ratings/(man$pf_o_att.ratings+man$pf_o_sin.ratings+man$pf_o_int.ratings+man$pf_o_fun.ratings+man$pf_o_amb.ratings+man$pf_o_sha.ratings)
man$pf_o_fun.rating<-man$pf_o_fun.ratings/(man$pf_o_att.ratings+man$pf_o_sin.ratings+man$pf_o_int.ratings+man$pf_o_fun.ratings+man$pf_o_amb.ratings+man$pf_o_sha.ratings)
man$pf_o_amb.rating<-man$pf_o_amb.ratings/(man$pf_o_att.ratings+man$pf_o_sin.ratings+man$pf_o_int.ratings+man$pf_o_fun.ratings+man$pf_o_amb.ratings+man$pf_o_sha.ratings)
man$pf_o_sha.rating<-man$pf_o_sha.ratings/(man$pf_o_att.ratings+man$pf_o_sin.ratings+man$pf_o_int.ratings+man$pf_o_fun.ratings+man$pf_o_amb.ratings+man$pf_o_sha.ratings)
table(man$pf_o_att.rating+man$pf_o_sin.rating+man$pf_o_int.rating+man$pf_o_fun.rating+man$pf_o_amb.rating+man$pf_o_sha.rating)


man$attr1_1.rating<-man$attr1_1.ratings/(man$attr1_1.ratings+man$sinc1_1.ratings+man$intel1_1.ratings+man$fun1_1.ratings+man$amb1_1.ratings+man$shar1_1.ratings)
man$sinc1_1.rating<-man$sinc1_1.ratings/(man$attr1_1.ratings+man$sinc1_1.ratings+man$intel1_1.ratings+man$fun1_1.ratings+man$amb1_1.ratings+man$shar1_1.ratings)
man$intel1_1.rating<-man$intel1_1.ratings/(man$attr1_1.ratings+man$sinc1_1.ratings+man$intel1_1.ratings+man$fun1_1.ratings+man$amb1_1.ratings+man$shar1_1.ratings)
man$fun1_1.rating<-man$fun1_1.ratings/(man$attr1_1.ratings+man$sinc1_1.ratings+man$intel1_1.ratings+man$fun1_1.ratings+man$amb1_1.ratings+man$shar1_1.ratings)
man$amb1_1.rating<-man$amb1_1.ratings/(man$attr1_1.ratings+man$sinc1_1.ratings+man$intel1_1.ratings+man$fun1_1.ratings+man$amb1_1.ratings+man$shar1_1.ratings)
man$shar1_1.rating<-man$shar1_1.ratings/(man$attr1_1.ratings+man$sinc1_1.ratings+man$intel1_1.ratings+man$fun1_1.ratings+man$amb1_1.ratings+man$shar1_1.ratings)
table(man$attr1_1.rating+man$sinc1_1.rating+man$intel1_1.rating+man$fun1_1.rating+man$amb1_1.rating+man$shar1_1.rating)

man$attr2_1.rating<-man$attr2_1.ratings/(man$attr2_1.ratings+man$sinc2_1.ratings+man$intel2_1.ratings+man$fun2_1.ratings+man$amb2_1.ratings+man$shar2_1.ratings)
man$sinc2_1.rating<-man$sinc2_1.ratings/(man$attr2_1.ratings+man$sinc2_1.ratings+man$intel2_1.ratings+man$fun2_1.ratings+man$amb2_1.ratings+man$shar2_1.ratings)
man$intel2_1.rating<-man$intel2_1.ratings/(man$attr2_1.ratings+man$sinc2_1.ratings+man$intel2_1.ratings+man$fun2_1.ratings+man$amb2_1.ratings+man$shar2_1.ratings)
man$fun2_1.rating<-man$fun2_1.ratings/(man$attr2_1.ratings+man$sinc2_1.ratings+man$intel2_1.ratings+man$fun2_1.ratings+man$amb2_1.ratings+man$shar2_1.ratings)
man$amb2_1.rating<-man$amb2_1.ratings/(man$attr2_1.ratings+man$sinc2_1.ratings+man$intel2_1.ratings+man$fun2_1.ratings+man$amb2_1.ratings+man$shar2_1.ratings)
man$shar2_1.rating<-man$shar2_1.ratings/(man$attr2_1.ratings+man$sinc2_1.ratings+man$intel2_1.ratings+man$fun2_1.ratings+man$amb2_1.ratings+man$shar2_1.ratings)
table(man$attr2_1.rating+man$sinc2_1.rating+man$intel2_1.rating+man$fun2_1.rating+man$amb2_1.rating+man$shar2_1.rating)


man$attr1_2.rating<-man$attr1_2.ratings/(man$attr1_2.ratings+man$sinc1_2.ratings+man$intel1_2.ratings+man$fun1_2.ratings+man$amb1_2.ratings+man$shar1_2.ratings)
man$sinc1_2.rating<-man$sinc1_2.ratings/(man$attr1_2.ratings+man$sinc1_2.ratings+man$intel1_2.ratings+man$fun1_2.ratings+man$amb1_2.ratings+man$shar1_2.ratings)
man$intel1_2.rating<-man$intel1_2.ratings/(man$attr1_2.ratings+man$sinc1_2.ratings+man$intel1_2.ratings+man$fun1_2.ratings+man$amb1_2.ratings+man$shar1_2.ratings)
man$fun1_2.rating<-man$fun1_2.ratings/(man$attr1_2.ratings+man$sinc1_2.ratings+man$intel1_2.ratings+man$fun1_2.ratings+man$amb1_2.ratings+man$shar1_2.ratings)
man$amb1_2.rating<-man$amb1_2.ratings/(man$attr1_2.ratings+man$sinc1_2.ratings+man$intel1_2.ratings+man$fun1_2.ratings+man$amb1_2.ratings+man$shar1_2.ratings)
man$shar1_2.rating<-man$shar1_2.ratings/(man$attr1_2.ratings+man$sinc1_2.ratings+man$intel1_2.ratings+man$fun1_2.ratings+man$amb1_2.ratings+man$shar1_2.ratings)
table(man$attr1_2.rating+man$sinc1_2.rating+man$intel1_2.rating+man$fun1_2.rating+man$amb1_2.rating+man$shar1_2.rating)

str(man)
summary(man)

man1<-subset(man,select=-c(pf_o_att.ratings,pf_o_sin.ratings,pf_o_int.ratings,
                           pf_o_fun.ratings,pf_o_amb.ratings,pf_o_sha.ratings,attr1_1.ratings,
                           sinc1_1.ratings,intel1_1.ratings,fun1_1.ratings,amb1_1.ratings,shar1_1.ratings, 
                           attr2_1.ratings,sinc2_1.ratings,intel2_1.ratings,fun2_1.ratings,amb2_1.ratings,
                           shar2_1.ratings,attr1_2.ratings,sinc1_2.ratings,intel1_2.ratings,fun1_2.ratings,
                           amb1_2.ratings,shar1_2.ratings)) 
names(man1)

man2<-subset(man1,select=-c(X,iid,id,gender,idg,partner,pid))
str(man2)
names(man2)

#분산확인
library(caret)
nearZeroVar(man2,names=T)

#연속형변수만 뽑기
man2.numeric<-subset(man2,select=-c(condtn, wave,match, position,samerace, race_o, dec_o, met_o,field_cd, race,goal,
                                    career_c,dec,met,length,numdat_2,date_3,Country))
cor(man2.numeric)
#박스플랏 확인
names(man2)
with(man2,boxplot(shar1_2.rating~match))
t.test(man2$age_o[man2$match==0],man2$age_o[man2$match==1])

#t.검정 실시하기 전에 등분산성 검정이 필요하며 , 정규성은 만족한다고 가정한다.
#등분산성 검정 결과 등분산성을 만족하면 t.test(data,var.equal=T)로 옵션을 넣어준다.(Welch two sample t-test)
str(man2.numeric)
score<-c()
for(i in 1:103){
  score[i]<-var.test(man2.numeric[,i][man2$match==0],man2.numeric[,i][man2$match==1])$p.value
}
equal<-man2.numeric[,score>=0.05]
different<-man2.numeric[,score<0.05]
names(equal)
names(different)

#호텔링 검정 및 t검정
library(Hotelling)
sample1<-subset(man2,match==0,select=c(intel1_2.rating,fun1_2.rating,
                                       amb1_2.rating))
sample2<-subset(man2,match==1,select=c(intel1_2.rating,fun1_2.rating,
                                       amb1_2.rating))
result<-hotelling.test(sample1,sample2)
result

t.test(man2$shar1_2.rating[man2$match==0],man2$shar1_2.rating[man2$match==1],var.equal=T)
t.test(man2$amb1_2.rating[man2$match==0],man2$amb1_2.rating[man2$match==1],var.equal=F)


#범주형 변수 table 및 chisq.test 실시
man2.factor<-subset(man2,select=c(condtn, wave,match, position,samerace, race_o, dec_o, met_o,field_cd, race,goal,
                                  career_c,dec,met,length,numdat_2,date_3,Country))
str(man2.factor)
score<-c()
for(i in 1:18){
  score[i]<-chisq.test(man2.factor[,i],man2.factor$match)$p.value
}
table(score>0.05)
chisq.test(man2$Country,man2$match)

#다중공선성 해결을 위해 설문 항목을 더함, attr_o~prob_o 는 따로 더해줌(상대방에 의한 평가이므로)
names(man2)
man2$attr.s<-with(man2,attr/10+attr3_1/10+attr3_2/10+pf_o_att.rating+attr1_1.rating+attr2_1.rating+attr1_2.rating)
man2$sinc.s<-with(man2,sinc/10+sinc3_1/10+sinc3_2/10+pf_o_sin.rating+sinc1_1.rating+sinc2_1.rating+sinc1_2.rating)
man2$fun.s<-with(man2,fun/10+fun3_1/10+fun3_2/10+pf_o_fun.rating+fun1_1.rating+fun2_1.rating+fun1_2.rating)
man2$amb.s<-with(man2,amb/10+amb3_1/10+amb3_2/10+pf_o_amb.rating+amb1_1.rating+amb2_1.rating+amb1_2.rating)
man2$intel.s<-with(man2,intel/10+intel3_1/10+intel3_2/10+pf_o_int.rating+intel1_1.rating+intel2_1.rating+intel1_2.rating)
man2$shar.s<-with(man2,shar/10+pf_o_sha.rating+shar1_1.rating+shar2_1.rating+shar1_2.rating)

man2$interests<-with(man2,attr_o+sinc_o+intel_o+fun_o+amb_o+shar_o+like_o+prob_o)

man3<-subset(man2,select=-c(attr,attr3_1,attr3_2,pf_o_att.rating,attr1_1.rating,attr2_1.rating,attr1_2.rating,
                            sinc,sinc3_1,sinc3_2,pf_o_sin.rating,sinc1_1.rating,sinc2_1.rating,sinc1_2.rating,
                            fun,fun3_1,fun3_2,pf_o_fun.rating,fun1_1.rating,fun2_1.rating,fun1_2.rating,
                            amb,amb3_1,amb3_2,pf_o_amb.rating,amb1_1.rating,amb2_1.rating,amb1_2.rating,
                            intel,intel3_1,intel3_2,pf_o_int.rating,intel1_1.rating,intel2_1.rating,intel1_2.rating,
                            shar,pf_o_sha.rating,shar1_1.rating,shar2_1.rating,shar1_2.rating,attr_o,sinc_o,
                            intel_o,fun_o,amb_o,shar_o,like_o,prob_o))

str(man3)

#예술항목 더하기
man3$sports.s<-with(man3,sports+tvsports+exercise+hiking+yoga)
man3$art.s<-with(man3,museums+art+theater+movies+concerts+music)
man3$amusement.s<-with(man3,gaming+clubbing)
man3$malling.s<-with(man3,shopping+dining)

man3<-subset(man3,select=-c(sports,tvsports,exercise,hiking,yoga,museums,art,theater,movies,
                            concerts,music,gaming,clubbing,shopping,dining))
str(man3)

#범주형 변수 samerace,date_3,Country chisq검정 결과 제거
man3<-subset(man3,select=-c(samerace,date_3,Country))

#범주형 변수 factor로 바꿔주기
str(man3)
man3$condtn<-as.factor(man3$condtn)
man3$wave<-as.factor(man3$wave)
man3$position<-as.factor(man3$position)
man3$match<-as.factor(man3$match)
man3$race_o<-as.factor(man3$race_o)
man3$met_o<-as.factor(man3$met_o)
man3$field_cd<-as.factor(man3$field_cd)
man3$race<-as.factor(man3$race)
man3$goal<-as.factor(man3$goal)
man3$career_c<-as.factor(man3$career_c)
man3$met<-as.factor(man3$met)
man3$length<-as.factor(man3$length)
man3$numdat_2<-as.factor(man3$numdat_2)
str(man3)

#다중공선성 확인을 위해 회귀모형을 만듬
#회귀모형에서의 확인 결과 : wave와 round에서 계수에 NA가 나타나는 다중공선성 문제는 상식적으로
#큰 의미를 갖지 않을 것 같은 wave를 제거하였을 때 round의 다중공선성이 해결되며
#condtn역시 round와 다중공선성이 발생하여 해석이 불가능한 condtn을 제거함.
#dec_o와 dec는 뒤에 로지스틱에서 큰 영향을 미쳐 미리 제거하고 확인 해 보았음.
#dec 표준오차가 매우 크고 p-value가 높아 제거(영향력이 너무 큼)
#position은 범주가 너무 많아 추후에 overfitting될 확률이 커 제거함
man3$match<-as.numeric(man3$match)
vif.fit<-lm(match~.,data=subset(man3,select=-c(wave,condtn,position)))
vif.fit<-lm(match~.,data=subset(man3,select=-c(wave,condtn,position)))

summary(vif.fit)
library(car)
vif(vif.fit)

#condtn,dec_o,dec,wave,position 제거
man3<-subset(man3,select=-c(condtn,dec_o,dec,wave,position))

#범주형 변수간에 독립성 확인
man3.factor<-subset(man3,select=c(wave,career_c,position,race_o,dec_o,met_o,field_cd,race,goal,dec,met,length,numdat_2,Country))
str(man3.factor)
score<-matrix(rep(NA,196),ncol=14)
for(i in 1:14){
  for(j in 1:14){
    score[i,j]<-chisq.test(man3.factor[,i],man3.factor[,j])$p.value
  }
}
table(score>0.05)
colnames(score)<-c("wave","career_c","position","race_o","dec_o","met_o","field_cd","race","goal","dec","met","length","numdat_2","Country")
rownames(score)<-c("wave","career_c","position","race_o","dec_o","met_o","field_cd","race","goal","dec","met","length","numdat_2","Country")
round(score,3)

table(man3$met,man3$met_o)

chisq.test(table(man3$imprace,man3$match))
chisq.test(table(man3$imprelig,man3$match))
chisq.test(table(man3$imprace,man3$imprelig))

#match 끝으로 옮겨줌
names(man3)
man3<-man3[,c(1:2,4:37,3)]

str(man3)

#상관계수 확인
man3.numeric<-subset(man3,select=-c(position,race_o,met_o,field_cd,race,goal,met,length,numdat_2,Country))
str(man3.numeric)
library(corrplot)
corrplot.mixed(cor(man3.numeric))

#match factor로 바꿔줌
str(man3)
man3$match<-as.factor(man3$match)

######
man.test<-man3
str(man.test)

#train set과 test set으로 나눠줌
set.seed(1234)
ind<-sample(2,nrow(man3),replace=T,prob=c(0.7,0.3))
train.m<-man3[ind==1,]
test.m<-man3[ind==2,]
str(train.m)
str(test.m)


#원 데이터로 로지스틱모형 만듦
full.fit.m<-glm(match~.,family=binomial,data=train.m)
summary(full.fit.m)

#다중공선성 확인을 위해 vif 값 확인
#결과 : 가장 큰 값 부터 하나씩 지워가며 모델을 수정해봄
#크게 문제 되는 점이 보이지 않아 그대로 사용함
vif(full.fit.m)

#stepwise로 변수 선택 (다중공선성을 일으키는 변수가 제거 된 모델로 stepwise함.)
slm.m<-step(full.fit.m,direction='both')
summary(slm.m)
vif(slm.m)

#TYPE 3 sum of squares 확인 : 모델에서 자동으로 하나의 변수씩 제거해서 비교해가며 그 변수가 타당한 변수인지 검정함
library(car)
options(contrasts = c("contr.sum", "contr.poly"))
result.m<-Anova(slm2.m,type="III")
result.m

#anova 결과 satis_2,length,met_o가 유의하지 않은 변수로 나옴. 제거 후 예측률 향상 됨
#go_out, reading,exphappy 유의하지 않은 변수로 나옴
#최종모델임.

slm2.m<-glm(match ~ order + race_o + age + field_cd + race + 
              goal + go_out + reading + expnum + like + prob + match_es + 
              satis_2 + length + sinc.s + fun.s + amb.s + interests + sports.s + 
              art.s + amusement.s + malling.s + met_o, family = binomial, 
            data = train.m)

#최종모델
slm2.m<-glm(match ~  order + race_o  + age + 
              field_cd + race + goal + expnum + exphappy +
              like + prob + match_es + sinc.s + fun.s + 
              amb.s + interests + sports.s + art.s + amusement.s + malling.s, 
            family = binomial, data = train.m)

summary(slm2.m)

#예측률 확인
library(InformationValue)
train.probs.m<-predict(slm2.m,type="response")
table(round(train.probs.m))
misClassError(train.m$match,train.probs.m)
confusionMatrix(train.m$match,train.probs.m)

#테스트셋에서의 예측률 확인
#200개 중 131 / 69개로써 오버피팅 문제는 없는 듯 함..
test.probs.m<-predict(slm2.m,newdata=test.m,type="response")
table(round(test.probs.m))
misClassError(test.m$match,test.probs.m)
confusionMatrix(test.m$match,test.probs.m)

#match 저장
man.test$match<-round(test.probs.m)
str(man.test)
write.csv(man.test,"1~5웨이브남자match.csv")

#ROC커브 확인 , TPR과 FPR을 이용
library(ROCR)
pred.full.m<-prediction(test.probs.m,test.m$match)
perf.full.m<-performance(pred.full.m,"tpr","fpr")
plot(perf.full.m,main="ROC",col=1)

###랜덤포레스트
str(train.m)
library(randomForest)
set.seed(1234)
rf.match.m<-randomForest(match ~  order + race_o  + age + 
                           field_cd + race + goal + expnum + exphappy +
                           like + prob + match_es + sinc.s + fun.s + 
                           amb.s + interests + sports.s + art.s + amusement.s + malling.s,data=train.m)
rf.match.m
(378+423)/(378+33+5+423)

#트리 갯수 정하기
plot(rf.match.m)
which.min(rf.match.m$err.rate[,1])

#트리 갯수를 수정한 모형
set.seed(1234)
rf.match.2.m<-randomForest(match ~  order + race_o  + age + 
                             field_cd + race + goal + expnum + exphappy +
                             like + prob + match_es + sinc.s + fun.s + 
                             amb.s + interests + sports.s + art.s + amusement.s + malling.s,data=train.m,ntree=496)
rf.match.2.m


#테스트셋에 결과 확인
rf.match.test.m<-predict(rf.match.2.m,newdata=test.m,type="prob")
table(rf.match.test.m,test.m$match)
(173+164)/(173+164+10+2)

man.test$match<-rf.match.test.m
write.csv(man.test,"1웨이브남자랜덤포레스트.csv")

#roc커브
pred.full.m<-prediction(rf.match.test.m[,2],test.m$match)
perf.full.m<-performance(pred.full.m,"tpr","fpr")
plot(perf.full.m,main="ROC",col="red")

##두개 겹쳐 그리는 roc커브
install.packages("plotROC")
library(plotROC)
library(ggplot2)
rf.match.test.m<-predict(rf.match.2.m,newdata=test.m,type="prob")


pred.full.m<-prediction(rf.match.test.m[,2],test.m$match)
perf.full.m<-performance(pred.full.m,"tpr","fpr")
aa<-cbind(unlist(perf.full.m@x.values),unlist(perf.full.m@y.values))
aa<-as.data.frame(aa)

pred.full.m2<-prediction(test.probs.m,test.m$match)
perf.full.m2<-performance(pred.full.m2,"tpr","fpr")
cc<-cbind(unlist(perf.full.m2@x.values),unlist(perf.full.m2@y.values))
cc<-as.data.frame(cc)

aa$group<-"Random Forest"
cc$group<-"Rogistic"
group12<-rbind(aa,cc)

ggplot(group12,aes(x=V1,y=V2,group=group,col=group))+
  geom_line()+xlab("False Positive Rate")+ylab("True Positive Rate")

#한창에 안겹치고 그리기
multiplot(bb,cc)

multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  library(grid)
  
  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)
  
  numPlots = length(plots)
  
  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }
  
  if (numPlots==1) {
    print(plots[[1]])
    
  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))
    
    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))
      
      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }
  }
}


#변수 중요도 - X축은 지니 인덱스 평균 감소에 관한 기여도
varImpPlot(rf.match.2.m)

###랜덤포레스트 변수선택을 통해 골라진 변수들로 다시 한 번 모형 만들기
library(Boruta)
set.seed(1234)
feature.selection.m<-Boruta(match~.,data=train.m,doTrace=1)
feature.selection.m$timeTaken #걸린시간

#변수 선택 결과 확인 , withTentative=T를 넣으면 보류된 것도 포함되어진다.
table(feature.selection.m$finalDecision)
fNames.m<-getSelectedAttributes(feature.selection.m) #withTentative=T
fNames.m

#피처 이름을 통해 새로운 데이터 셋 생성
Sonar.features.m<-train.m[,fNames.m]
dim(Sonar.features.m)
str(Sonar.features.m)
Sonar.features.m$match<-train.m$match

library(randomForest)
set.seed(1234)
rf.pima.m<-randomForest(match~.,data=train.m)
rf.pima.m

#트리 갯수 정하기
plot(rf.pima.m)
which.min(rf.pima.m$err.rate[,1])

#트리 갯수를 수정한 모형
set.seed(1234)
rf.pima.2.m<-randomForest(match~.,data=train.m,ntree=460)
rf.pima.2.m

#테스트셋에 결과 확인
test.features.m<-test.m[,fNames.m]
test.features.m$match<-test.m$match
rf.pima.test.m<-predict(rf.pima.2.m,newdata=test.m,type="response")
table(rf.pima.test.m,test.m$match)
(172+164)/(172+164+11+2)

###서포트벡터머신
str(train.m)
library(e1071)
library(kernlab)

#polynomial 서포트벡터머신
set.seed(1234)
poly.tune.m<-tune.svm(match~.,data=train.m,kernel="polynomial",
                      degree=c(5:15),coef0=c(0.1,0.5,1,2,3,4))
summary(poly.tune.m)

best.poly.m<-poly.tune.m$best.model
poly.test.m<-predict(best.poly.m,newdata=test.m)
table(poly.test.m,test.m$match)
(169+162)/349

#radial 서포트벡터머신
#이정도 변수 넣어야 어느정도 해결 된 것 처럼 보임...
str(train.m)
man3$match<-sample(c(0,1),200,replace=T)
set.seed(1234)
rbf.tune.m<-tune.svm(match ~ round + order + race_o + race  + 
                       goal + go_out  + exphappy + expnum + 
                       like + match_es + satis_2  +
                       amb.s + shar.s + interests  + malling.s,data = train.m,kernel="radial",
                     gamma=c(0.01,0.1,0.5,1,2,3,4))

summary(rbf.tune.m)
best.rbf.m<-rbf.tune.m$best.model
rbf.test.m<-predict(best.rbf.m,man.test)
table(rbf.test.m)
(161+161)/349

#sigmoid 서포트벡터머신
set.seed(1234)
sigmoid.tune.m<-tune.svm(match~.,data=train.m,kernel="sigmoid",
                         gamma=c(0.1,0.5,1,2,3,4),coef0=c(0.01,0.1,0.5,1,2,3,4))
summary(sigmoid.tune.m)

best.sigmoid.m<-sigmoid.tune.m$best.model
sigmoid.test.m<-predict(best.sigmoid.m,newdata=test.m)
table(sigmoid.test.m,test.m$match)
(96+100)/349

