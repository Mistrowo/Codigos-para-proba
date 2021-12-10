import numpy as np
import matplotlib.pyplot as plt
from random import randint

levels = int(input("Cuantos niveles quiere poner?(minimo 1, 20 esta por default) ") or 20)

if levels >= 1:
    lanes = [0]*(levels)
else:
    print("El valor no puede ser menor a 1.")
    exit()

for h in range((levels)**2*100):
    stored = -1
    for j in range(levels):
        stored += randint(0, 1)
    lanes[stored] += 1
print((levels)**2*100, "bolitas en total.")
print(lanes)

promedio = 0
for i in range(levels):
    promedio = promedio + lanes[i]

print("Varianza: ", np.var(lanes))
print("Promedio: ",promedio/levels)

if len(lanes)%2==0:
    X = np.arange(-((len(lanes)/2)-1), (len(lanes)/2)+1)
else:
    X = np.arange(-((len(lanes)/2)-.5), (len(lanes)/2)+.5)
plt.suptitle('Maquina de Galton')
plt.bar(X + 0.00, lanes, width=0.25)
plt.savefig('maquinadegalton.png')
plt.show()