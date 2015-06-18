library(ShortRead)
fastqDir = system.file(package='ShortRead','extdata/E-MTAB-1147')
fq = readFastq(dirPath = fastqDir,pattern='*.fastq.gz')
fq
m = alphabetByCycle(quality(fq))
dim(m) 
head(m[,1:8])
library(gplots)
heatmap.2(log10(m[4:40,]+1),Rowv = NA, Colv=NA,trace="none")
m = alphabetByCycle(sread(fq))
head(m[,1:8])
ms = t(m[c('A','C','G','T','N'),])
matplot(ms,type='l',xlab='cycle',ylab='count',main='Alphabet by Cycle')

