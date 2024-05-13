import time
import threading

acumulador = 0

def sumador():
    global acumulador

    for x in range(1000000):
        acumulador = acumulador + 5

def restador():
    global acumulador

    for x in range(1000000):
        acumulador = acumulador - 5

momento_arranque = time.perf_counter()
hilo1 = threading.Thread(target=sumador)
hilo2 = threading.Thread(target=restador)

hilo1.start()
hilo2.start()

hilo1.join()
hilo2.join()
momento_parada = time.perf_counter()

print(f'El valor calculado final es: {acumulador}')
print(f'Tomó un total de {momento_parada - momento_arranque: 0.5f} segundos completar las tareas.')