import numpy as np
import matplotlib.pyplot as plt

#Input Values
L = int(input("Lenght of the ring:"))
N = int(input("number of up-spins:"))
d = complex(input("Delta value:"))
# Define spin matrices
Id = np.array([[1, 0],
              [0, 1]])

Sx = np.array([[0, 1],
              [1, 0]])

Sy = np.array([[0, 1j],
              [-1j, 0]])

Sz = np.array([[1, 0],
              [0, -1]])

# local operator
h = (1/2)*np.kron(Sy, Sy) 
h += (1/2)*np.kron(Sx, Sx)
h += (d/2)*(np.kron(Sz, Sz) - np.kron(Id,Id))

# sum of local operators
H = np.kron(h, np.eye(2**(L-2)))
for k in range(1, L-3):
    H += np.kron(np.eye(2**k), np.kron(h, np.eye(2**(L-2-k))))
H += np.kron(np.eye(2**(L-2)), h)

# local operator at the ends
h = (1/2)*np.kron(Sy, np.kron(np.eye(2**(L-2)), Sy)) 
h += (1/2)*np.kron(Sx, np.kron(np.eye(2**(L-2)), Sx))
h += (d/2)*(np.kron(Sz, np.kron(np.eye(2**(L-2)), Sz)) - np.eye(2**L))

#Hamiltonian for the ring with all particles
H += h

#Indexes with not N up-spins
Nindex =[]
for n in range(2**L):
    occ = [int(b) for b in bin(n)[2:]] #occupation configuration
    if sum(occ) != L-N:
        Nindex.append(n)

#print(f"N= {N} up-spin configurations:\n", Nindex)

# Hamiltonian sector with only N up-spins
HN = np.delete(H,Nindex, axis=0)
HN = np.delete(HN, Nindex, axis=1)

#print("Hamiltonian:\n", H)
plt.imshow(HN.real, cmap='viridis', interpolation='nearest')  # or cmap='viridis', 'coolwarm', etc.
plt.colorbar()  # shows the color scale
plt.title(f"Hamiltonian with (L, N ,$\Delta$) = {L,N ,d.real}")
plt.show()
