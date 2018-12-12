#snp
cairo_pdf(filename="E:/R_workspace/FPGA_tencent_vs_gatk3/snp.pdf",width =8,height =6)

par(mar = c(5,6,2,2))
GATK3 <- read.table("E:/R_workspace/Zebra500_WGS/GATK3/snp_out/snp_rate_roc.tsv")
FPGA_Tencent <- read.table("E:/R_workspace/Zebra500_WGS/FPGA_Tencent/snp_out/eva/snp_rate_roc.tsv")

plot(GATK3$V3,GATK3$V2,xlim=c(0,0.01),ylim=c(0.85,1),col="green",type="l",lwd=1.5,xlab="False positive rate",ylab="True positive rate")
lines(FPGA_Tencent$V3, FPGA_Tencent$V2, col="black", lwd=1.5, type="l")

points(0.00612787739485, 0.994710219299, pch=1,col = "green")
points(0.00612380592361, 0.99458337731, pch=1,col = "black")

legend("bottomright",c("GATK3","FPGA_Tencent"),lty=c(1,1,1), col=c("green","black"),lwd=2,pt.lwd=2,text.font=20,merge = TRUE, bg = 'gray98',box.lwd=0.5,cex=0.9)
dev.off()

