#install.packages("magick")
library(pdftools)
library(magick)
#manual <- image_read_pdf('https://cloud.r-project.org/web/packages/magick/magick.pdf', density = 72)
# modens <- image_read_pdf('rpt/vars_mosaic_segment_density.pdf', density = 72)
# image_info(modens)
# 
# thumb <- image_scale(modens[1],250)
# image_write(thumb,"thing.jpg")

market.comparison <- image_read_pdf('data/SCBZL06.pdf',density=72)
market.thumb <- image_scale(market.comparison[1],564)
image_write(market.thumb,"images/market-comparison.png")

producethumbnailfrompdf <- function (pdfname, thumbname, infolder = "rpt", outfolder = "images",
                                     horizontalscale=564) {
  infile <- paste0(infolder,'/',pdfname)
  outfile <-paste0(outfolder,'/',thumbname) 
  pdf.page <- image_read_pdf(infile,density=72)  # it is always 72
  image_write(image_scale(pdf.page[1],horizontalscale), outfile)
  }

producethumbnailfrompdf("SCBZL06.pdf","market-comparison.png")
producethumbnailfrompdf("SCBZL04.pdf","SCBZL04.png")
producethumbnailfrompdf("SCBZL01.pdf","SCBZL01.png")
producethumbnailfrompdf("vars_mosaic_segment_density.pdf","vars_mosaic_segment_density.jpg")

producethumbnailfrompdf("rpt_mosaic.pdf","rpt_mosaic_benchmark.jpg")
#producethumbnailfrompdf("SCBZL01.pdf","SCBZL01.jpg")
# bash combinepdf.sh


system("bash combinepdf.sh")

#### Remember there are a couple more pdfs to combine into ...
system("ls -1 *.sh")
