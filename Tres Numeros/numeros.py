#Escriba un programa que lee tres numeros enteros separados por un espacio y los imprima en una linea separados por un espacio en forma ordenada de menor a mayor.

def tresNumeros():
    # Ingreso los datos
    numeros = input("Ingrese tres numeros separados por un espacio: ")
    numeros = numeros.split(" ")

    # Los convierto a enteros en un bucle
    for i in range(len(numeros)):
        numeros[i] = int(numeros[i])
    # Ordeno los numeros

    numeros.sort()

    # Imprimo los numeros
    print(numeros[0], numeros[1], numeros[2])

def test_tresNumeros():
    assert tresNumeros(1, 2, 3) == 1, 2, 3
    assert tresNumeros(3, 2, 1) == 1, 2, 3
    assert tresNumeros(2, 3, 1) == 1, 2, 3
    assert tresNumeros(1, 3, 2) == 1, 2, 3
    assert tresNumeros(2, 1, 3) == 1, 2, 3
    assert tresNumeros(3, 1, 2) == 1, 2, 3
