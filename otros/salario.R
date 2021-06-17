cat("==========================================\n")
cat("           CÁLCULO DEL SALARIO            \n")
cat("==========================================\n\n")
cat("Ingrese la cantidad de horas trabajadas:\n")
horas <- scan("stdin", n = 1, quiet = TRUE)
cat("\nIngrese el día de la semana (DOM LUN MAR MIE JUE VIE SAB):\n")
dia <- scan("stdin", what = "", n = 1, quiet = TRUE)
cat("\nIngrese el turno (M T N):\n")
turno <- scan("stdin", what = "", n = 1, quiet = TRUE)

salario <- horas * 400
if (turno == "N") {
	salario <- salario + horas * 200
}
if (turno == "DOM") {
	salario <- salario + horas * 100
}
cat("\nEl salario que se debe abonar es $", salario, "\n", sep = "")
