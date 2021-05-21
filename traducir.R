library(stringr)
library(dplyr)

archivos <- list.files("docs", pattern = ".html")

for (arch in archivos) {
	readLines(paste0("docs/", arch),encoding = "UTF-8") %>% 
		str_replace_all("On this page", "En esta página") %>% 
		str_replace_all("Table of contents", "Tabla de contenidos") %>% 
		writeLines(paste0("docs/", arch), useBytes = T)
}
