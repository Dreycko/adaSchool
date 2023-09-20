'''
Define una variable de cada tipo de primitivo
Concatena a la cadena las otras variables aplicando la conversión correcta para funcionar, guarda el resultado en una variable
Investiga sobre el límite de los enteros y los flotantes en python y anotar sus descubrimientos como comentarios en el archivo
Aplica la fórmula de la suma de los primeros n números pares (investigar), tomando como n la variable de tipo entero y almacenar el resultado en una variable
Imprimir los resultados de las tareas anteriores
'''

# Variables
# Primitivos
# Enteros
entero = 10
# Flotantes
flotante = 10.5
# Booleanos
booleano = True
# Cadenas
cadena = "Hola mundo"

# Concatenación
concatenacion = cadena + " " + str(entero) + " " + str(flotante) + " " + str(booleano)

# Límite de enteros
# 9223372036854775807

# Límite de flotantes
# 1.7976931348623157e+308

# Suma de los primeros n números pares
n = 100  # Cambia el valor de "n" según lo que quieras 
suma = 0

for i in range(2, n + 1, 2):
    suma += i
print("La suma de los números pares del 1 al", n, "es:", suma)

# Impresión de resultados
print(concatenacion)
print("suma")
print(suma)
print("entero")
print(entero)
print("flotante")
print(flotante)
print("booleano")
print(booleano)
print("cadena")
print(cadena)


