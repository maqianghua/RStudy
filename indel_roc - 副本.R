#indel
cairo_pdf(filename="E:/R_workspace/Zebra500_WGS/indel.pdf",width =8,height =6)
par(mar = c(5,6,2,2))
GATK3 <- read.table("E:/R_workspace/Zebra500_WGS/GATK3/indel_out/non_snp_rate_roc.tsv")
GATK3_2 <- read.table("E:/R_workspace/Zebra500_WGS/GATK3_2/indel/non_snp_rate_roc.tsv")
Sentieon <- read.table("E:/R_workspace/Zebra500_WGS/Sentieon/indel_out/non_snp_rate_roc.tsv")
GATK4 <- read.table("E:/R_workspace/Zebra500_WGS/GATK4/indel_out/non_snp_rate_roc.tsv")
Gaea <- read.table("E:/R_workspace/Zebra500_WGS/Gaea/indel/non_snp_rate_roc.tsv")
edico <- read.table("E:/R_workspace/Zebra500_WGS/edico/indel/non_snp_rate_roc.tsv")

plot(GATK3$V3,GATK3$V2,xlim=c(0,0.1),ylim=c(0.85,1),col="green",type="l",lwd=1.5,xlab="False positive rate",ylab="True positive rate")
lines(GATK3_2$V3, GATK3_2$V2, col="black", lwd=1.5, type="l")
lines(Sentieon$V3, Sentieon$V2, col="pink", lwd=1.5, type="l")
lines(GATK4$V3, GATK4$V2, col="yellow", lwd=1.5, type="l")
lines(Gaea$V3, Gaea$V2, col="red", lwd=1.5, type="l")
lines(edico$V3, edico$V2, col="blue", lwd=1.5, type="l")

points(0.0381483115414, 0.965270015346, pch=1,col = "green")
points(0.0381537245689, 0.96527272186, pch=1,col = "black")
points(0.0399481431962, 0.962851745295, pch=1,col = "pink")
points(0.0388087009005, 0.963530187101, pch=1,col = "yellow")
points(0.039057700167,  0.963701130511,pch=1,col = "red")
points(0.0400103930129, 0.961456537449, pch=1,col = "blue")

legend("bottomright",c("GATK3","GATK3_2", "Sentieon", "GATK4", "Gaea",  "edico"),lty=c(1,1,1), col=c("green","black", "pink","yellow","red","blue"),lwd=2,pt.lwd=2,text.font=20,merge = TRUE, bg = 'gray98',box.lwd=0.5,cex=0.9)
dev.off()

