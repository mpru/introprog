#=====================================================
# Función: maximo
#-----------------------------------------------------
# Encuentra el valor máximo y su posición en un vector numérico
# Input:
#		- v, vector numérico
# Output:
#		- vector de largo 2, la primera posición con el máximo de v y la segunda con
#		su posición
#=====================================================
maximo <- function(v) {
	n <- length(v)
	mayor <- v[1]
	pos <- 1
	for (i in 1:n) {
		# Desde i = 1 para que también funcione si n = 1
		if (v[i] > mayor) {
			mayor <- v[i]
			pos <- i
		}
	}
	rtdo <- c(mayor, pos)
	return(rtdo)
}

#=====================================================
# Función: minimo_matriz_col
#-----------------------------------------------------
# Busca el valor mínimo en una columna en particular de la matriz
# Input:
#		- m, matriz numérica
#		- col, número de columna en la que se desea buscar el mínimo
# Output:
#		- vector de largo 2, con el valor mínimo y el número de fila de su
#		posición en la matriz
#=====================================================
minimo_matriz_col <- function(m, col) {
	min <- m[1, col]
	fila <- 1
	for (i in 1:nrow(m)) {
		if (m[i, col] < min) {
			min <- m[i, col]
			fila <- i
		}
	}
	return(c(min, fila))
}