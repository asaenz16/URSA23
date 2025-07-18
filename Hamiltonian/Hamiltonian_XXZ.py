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
#h2 is old version to test difference
h2 = h + (d/2)*(np.kron(Sz, Sz) - np.kron(Id,Id))
h += (d/2)*(np.kron(Sz, Sz) - (1/2)*np.kron(Id,Id))

# sum of local operators
H = np.kron(h, np.eye(2**(L-2)))
H2 = np.kron(h2, np.eye(2**(L-2)))
for k in range(1, L-3):
    H += np.kron(np.eye(2**k), np.kron(h, np.eye(2**(L-2-k))))
    H2 += np.kron(np.eye(2**k), np.kron(h2, np.eye(2**(L-2-k))))
H += np.kron(np.eye(2**(L-2)), h)
H2 += np.kron(np.eye(2**(L-2)), h2)


# local operator at the ends
h = (1/2)*np.kron(Sy, np.kron(np.eye(2**(L-2)), Sy)) 
h += (1/2)*np.kron(Sx, np.kron(np.eye(2**(L-2)), Sx))
h += (d/2)*(np.kron(Sz, np.kron(np.eye(2**(L-2)), Sz)) - (1/2)*np.eye(2**L))

h2 = (1/2)*np.kron(Sy, np.kron(np.eye(2**(L-2)), Sy)) 
h2 += (1/2)*np.kron(Sx, np.kron(np.eye(2**(L-2)), Sx))
h2 += (d/2)*(np.kron(Sz, np.kron(np.eye(2**(L-2)), Sz)) - np.eye(2**L))

#Hamiltonian for the ring with all particles
H += h
H2 += h2

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

HN2 = np.delete(H2,Nindex, axis=0)
HN2 = np.delete(HN2, Nindex, axis=1)

print("Hamiltonian difference old - new:\n", HN2.real-HN.real)
plt.imshow(HN.real, cmap='viridis', interpolation='nearest')  # or cmap='viridis', 'coolwarm', etc.
plt.colorbar()  # shows the color scale
plt.title(f"Hamiltonian with (L, N ,$\Delta$) = {L,N ,d.real}")
plt.show()
