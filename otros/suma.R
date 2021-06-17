cat("==========================================\n")
cat("              SUMA DE NÚMEROS             \n")
cat("==========================================\n\n")
cat("¿Cuántos números va a ingresar?\n")
n <- scan("stdin", n = 1, quiet = TRUE)
cat("\nIngrese los números, presionando Enter luego de cada uno:\n")
v <- scan("stdin", n = n, quiet = TRUE)
suma <- 0
for (i in 1:length(v)) {
	suma <- suma + v[i]
}
cat("\nLa suma de los números es:", suma, "\n")
