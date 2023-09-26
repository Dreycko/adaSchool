'''
Los años bisiestos tienen 366
 dias y son aquellos que son multiplos de 4
 y no terminan con dos ceros o aquellos que despues de quitar los dos ceros del final son divisibles por 4
 (divisibles por 400
). Por ejemplo 1800
, y 1900
 no son años bisiestos, sin embargo el año 2000
 si lo fue.
 '''

 # Ingresar los datos 

def es_bisiesto(year):
     return year % 4 == 0 and year % 100 != 0 or year % 400 == 0

def test_es_bisiesto():
    assert es_bisiesto(2030) == False
    assert es_bisiesto(2000) == True
    assert es_bisiesto(1988) == True
    assert es_bisiesto(1900) == False
    assert es_bisiesto(1800) == False
    assert es_bisiesto(1600) == True
            
