#install.packages("magick")
library(pdftools)
library(magick)
#manual <- image_read_pdf('https://cloud.r-project.org/web/packages/magick/magick.pdf', density = 72)
# modens <- image_read_pdf('rpt/vars_mosaic_segment_density.pdf', density = 72)
# image_info(modens)
# 
# thumb <- image_scale(modens[1],250)
# image_write(thumb,"thing.jpg")



market.comparison <- image_read_pdf('data/PortlandHiTraf_2019_Market_Comparison.pdf',density=72)
market.thumb <- image_scale(market.comparison[1],564)
image_write(market.thumb,"images/scooter-report.png")
