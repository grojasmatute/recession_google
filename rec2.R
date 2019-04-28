## set directory ##
setwd("/Users/gustavorojasmatute/Documents/xxxxx")
## read file ##
Prob2 <- read.csv("Data_Probit2.csv")
rec <- Prob2[,2] 
s_prob_g <- Prob2[,11]
jobs <- Prob2[,14]
jobs_cat <-  Prob2[,17]
oil <- Prob2[,15]
shopping <- Prob2[,16]
suv <- Prob2[,19]
un <- Prob2[,20]
who <- Prob2[,21]
coupons <- Prob2[,22]
wu <- Prob2[,23]
re <- Prob2[,24]
apparel <- Prob2[,25]
bankr <- Prob2[,26]
con_1 <- Prob2[,27] ##  control variable for search enging change ##
con_2 <- Prob2[,28] ##  control variable for search enging change ##
machinery <- Prob2[,29]
recession <- Prob2[,30]
epu1 <- Prob2[,31]
epu2 <- Prob2[,32]
creditc <- Prob2[,33]
mort <- Prob2[,34]
aut <- Prob2[,35]
commv <- Prob2[,36]
altene <- Prob2[,37]
oilgas <- Prob2[,38]
constr <- Prob2[,39]
resta <- Prob2[,40]
foodr <- Prob2[,41]
carrent <- Prob2[,42]

## seasonal adj

## seasonal ##
jobs.ts <- ts(jobs, frequency = 12, start=c(2004, 1), end=c(2018, 7))
jobs.stl <- stl(jobs.ts, s.window = "periodic")
job.sa <- jobs.stl$time.series[,2]+jobs.stl$time.series[,3]

coupons.ts <- ts(coupons, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
coupons.stl <- stl(coupons.ts, s.window = "periodic")
coupons.sa <- coupons.stl$time.series[,2] + coupons.stl$time.series[,3]

re.ts <- ts(re, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
re.stl <- stl(re.ts, s.window = "periodic")
re.sa <- re.stl$time.series[,2] + re.stl$time.series[,3]

bankr.ts <- ts(bankr, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
bankr.stl <- stl(bankr.ts, s.window = "periodic")
bankr.sa <- bankr.stl$time.series[,2] + bankr.stl$time.series[,3]

machinery.ts <- ts(machinery, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
machinery.stl <- stl(machinery.ts, s.window = "periodic")
machinery.sa <- machinery.stl$time.series[,2]+machinery.stl$time.series[,3]

apparel.ts <- ts(apparel, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
apparel.stl <- stl(apparel.ts, s.window = "periodic")
apparel.sa <- apparel.stl$time.series[,2] + apparel.stl$time.series[,3]

un.ts <- ts(un, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
un.stl <- stl(un.ts, s.window = "periodic")
un.sa <- un.stl$time.series[,2] + un.stl$time.series[,3]

wu.ts <- ts(wu, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
wu.stl <- stl(wu.ts, s.window = "periodic")
wu.sa <- wu.stl$time.series[,2] + un.stl$time.series[,3]

whole.ts <- ts(who, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
who.stl <- stl(whole.ts, s.window = "periodic")
who.sa <- who.stl$time.series[,2] + who.stl$time.series[,3]

creditc.ts <- ts(creditc, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
creditc.stl <- stl(creditc.ts, s.window = "periodic")
creditc.sa <- creditc.stl$time.series[,2] + creditc.stl$time.series[,3]

mort.ts <- ts(mort, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
mort.stl <- stl(mort.ts, s.window = "periodic")
mort.sa <- mort.stl$time.series[,2] + mort.stl$time.series[,3]

aut.ts <- ts(aut, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
aut.stl <- stl(aut.ts, s.window = "periodic")
aut.sa <- aut.stl$time.series[,2] + aut.stl$time.series[,3]

commv.ts <- ts(commv, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
commv.stl <- stl(commv.ts, s.window = "periodic")
commv.sa <- commv.stl$time.series[,2] + commv.stl$time.series[,3]

altene.ts <- ts(altene, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
altene.stl <- stl(altene.ts, s.window = "periodic")
altene.sa <- altene.stl$time.series[,2] + altene.stl$time.series[,3]

oilgas.ts <- ts(oilgas, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
oilgas.stl <- stl(oilgas.ts, s.window = "periodic")
oilgas.sa <- oilgas.stl$time.series[,2] + oilgas.stl$time.series[,3]

constr.ts <- ts(constr, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
constr.stl <- stl(constr.ts, s.window = "periodic")
constr.sa <- constr.stl$time.series[,2] + constr.stl$time.series[,3]

resta.ts <- ts(resta, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
resta.stl <- stl(resta.ts, s.window = "periodic")
resta.sa <- resta.stl$time.series[,2] + resta.stl$time.series[,3]

foodr.ts <- ts(foodr, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
foodr.stl <- stl(foodr.ts, s.window = "periodic")
foodr.sa <- foodr.stl$time.series[,2] + foodr.stl$time.series[,3]

carrent.ts <- ts(carrent, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
carrent.stl <- stl(carrent.ts, s.window = "periodic")
carrent.sa <- carrent.stl$time.series[,2] + carrent.stl$time.series[,3]

suv.ts <- ts(suv, frequency = 12, start=c(2004, 1), end=c(2018, 7) )
suv.stl <- stl(suv.ts, s.window = "periodic")
suv.sa <- suv.stl$time.series[,2] + suv.stl$time.series[,3]

## matrix correlation

## individuals

p1 <- glm(rec ~ job.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p1)
PseudoR2(p1)

p2 <- glm(rec ~ coupons.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p2)
PseudoR2(p2)

p3 <- glm(rec ~ re.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p3)
PseudoR2(p3)

p4 <- glm(rec ~ bankr.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p4)
PseudoR2(p4)

p5 <- glm(rec ~ machinery.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p5)
PseudoR2(p5)

p6 <- glm(rec ~ apparel.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p6)
PseudoR2(p6)


p7 <- glm(rec ~ log(un.sa) + con_1 + con_2, family=binomial(link="probit"))
summary(p7)
PseudoR2(p7)

p8 <- glm(rec ~ wu.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p8)
PseudoR2(p8)

p9 <- glm(rec ~ who.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p9)
PseudoR2(p9)

p10 <- glm(rec ~ creditc.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p10)
PseudoR2(p10)

p11 <- glm(rec ~ mort.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p11)
PseudoR2(p11)

p12 <- glm(rec ~ aut.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p12)
PseudoR2(p12)

p13 <- glm(rec ~ commv.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p13)
PseudoR2(p13)

p14 <- glm(rec ~ altene.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p14)
PseudoR2(p14)

p15 <- glm(rec ~ oilgas.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p15)
PseudoR2(p15)

p16 <- glm(rec ~ constr.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p16)
PseudoR2(p16)

p17 <- glm(rec ~ foodr.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p17)
PseudoR2(p17)

p18 <- glm(rec ~ carrent.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p18)
PseudoR2(p18)


p19 <- glm(rec ~ suv.sa + con_1 + con_2, family=binomial(link="probit"))
summary(p19)
PseudoR2(p19)

p20 <- glm(rec ~ recession + con_1 + con_2, family=binomial(link="probit"))
summary(p20)
PseudoR2(p20)

stargazer(p1, p2, p3, p4, p5, title="Probability of Recession: Google Searches", align=TRUE )
stargazer(p6, p7, p8, p9, p10, title="Probability of Recession: Google Searches", align=TRUE )
stargazer(p11, p12, p13, p14, p15, title="Probability of Recession: Google Searches", align=TRUE )
stargazer(p16, p17, p18, p19, p20, title="Probability of Recession: Google Searches", align=TRUE )





## principal components
pc <- data.frame( log(bankr.sa), log(wu.sa), log(un.sa), log(coupons.sa), log(apparel.sa), log(job.sa), log(re.sa), log(machinery.sa), log(un.sa))
pc_g <- prcomp(pc, center = TRUE, scale. = TRUE)
pc_g
plot(pc_g, type = "l")

pr_pc2 <- glm(rec ~ pc_g$x[,4:5] + con_1 + con_2, family=binomial(link="probit"))
summary(pr_pc2)

pc2 <- data.frame(bankr.sa, wu.sa, un.sa, coupons.sa, apparel.sa, job.sa, re.sa, machinery.sa, who.sa, commv.sa, carrent.sa, suv.sa )
pc2_g <- prcomp(pc2, center = TRUE, scale. = TRUE)
plot(pc2_g, type = "l")

pr_pc2a <- glm(rec ~ pc2_g$x[,1:5] + con_1 + con_2, family=binomial(link="probit"))
summary(pr_pc2a)
stargazer(pr_pc2a, title="Principal Components", align=TRUE )
PseudoR2(pr_pc2a)
pr_pc2b <- glm(rec ~ pc2_g$x[,1]  + pc2_g$x[,4]  + pc2_g$x[,5] + con_1 + con_2, family=binomial(link="probit"))
summary(pr_pc2b)
PseudoR2(pr_pc2b)
stargazer(pr_pc2b, title="Principal Components", align=TRUE )

pcprob <- predict(pr_pc2a, type = 'response')
plot(rec)
lines(pcprob, col = "red2", lwd = 2)


principal_c1b <- ts(( data.frame(pc2_g$x[,1], pc2_g$x[,4],pc2_g$x[,5] )), frequency = 12, start=c(2004, 1), end=c(2018, 7) )
autoplot(principal_c1b)

principal_c1c <- ts(( data.frame(pc2_g$x[,2], pc2_g$x[,3] )), frequency = 12, start=c(2004, 1), end=c(2018, 7) )
autoplot(principal_c1c)

p_pcg <- plot_ly(x = ~datep[1:175]) %>%
  add_trace(y = ~pcprob, name = 'Google PC',mode = 'lines') %>%
  add_trace(y = ~s_prob_g/100, name = 'Smooth Prob', mode = 'lines') %>%
  add_trace(y = ~rec, name = 'Recession', type = 'scatter', mode = 'none', fill = 'tozeroy', fillcolor = 'rgba(255, 212, 96, 0.5)')
p_pcg

chart_link = api_create(p_pcg, filename="Google Principal Components")
write.csv(pcprob, "evaluation8.csv")
