SYNTAX TO RUN CHISQUARE ON R

data1<-c(8,10,12,178,21,21)
lh<-matrix(data1, nrow=2, ncol=3, byrow=TRUE)
lh
dimnames=list(c("left", "right"), c("none","one","both"))
as.table(lh)
exp<-apply(as.table(lh),1, sum)#0#
apply(as.table(lh), 2, sum)/sum(as.table(lh))
print(exp)
chisq.test(as.table(lh), correct=FALSE)
