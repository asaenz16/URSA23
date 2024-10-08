import numpy as np
import scipy.special as sp
import random
import matplotlib
from matplotlib import pyplot as plt
from itertools import permutations
import os       # to access environment vars 
import sys      # for command line args 
import time     # for timing stuff
import json
import sympy
from sympy import symbols           # to write symbolic math
from sympy.matrices import Matrix   # to write Matrices
from sympy import lambdify          # to convert symbolic functions to python functions

# Entries of the Guadin-like matrix
def M(sym, i, j, d):
    return d*( 1 + sym[i]*sym[i] - d*sym[i] )/((1 + sym[i]*sym[j] - d*sym[j])*(1 + sym[i]*sym[j] - d*sym[i]))

# Gaudin-like matrix, which become part of the coefficients in the spectral decomposition
def Cmat(sym, d, L):
    n = len(sym)
    diag =0
    mat = [[ - M(sym, i, j, d) for i in range(n)] for j in range(n) ]
    for i in range(n):
        diag = sum(mat[i]) +M(sym, i, i, d)
        mat[i][i] = -diag + (L/sym[i])
    return(mat)

# Coefficients for the spectral decomposition (non-commutative Fourier transformation)
def Coeff(y, z, d, L):
    n = len(z)
    terms = [ z[i]**(y[i]+1) for i in range(n)] 
    coeff = np.prod(terms)
    coeff = coeff*np.linalg.det(Cmat(z, d, L))
    coeff = 1/coeff
    return coeff

# Coefficients for to write the configuration basis as a linear combination of Bethe vectors
# this version uses the sympy which 
def Coeff_v2(y, z, d, L):
    n = len(z)
    terms = [ z[i]**(y[i]+1) for i in range(n)] 
    coeff = np.prod(terms)
    mat = sympy.Matrix(Cmat(z, d, L))
    coeff = coeff*mat.det()
    coeff = 1/coeff
    return coeff

# This coefficients doesn't include the normalizing factor for the Bethe vector 
def Coeff_v3(y, z):
    n = len(z)
    mat = sympy.Matrix(Cmat(z, d, L))
    coeff = mat.det()
    coeff = 1/coeff
    return coeff

def Coeff_har( z, d, L):
    mat = sympy.Matrix(Cmat(z, d, L))
    print("hello in Coeff_har")
    print(len(Cmat(z, d, L)[2]))
    coeff = mat.det()
    print("hello in Coeff_har2")
    coeff = 1/coeff
    return coeff

# All the inversion of a permuation s
def inversions(s):
    n = len(s)
    inv = []
    for i in range(n):
        for j in range(i+1, n):
            if s[i] > s[j]:
                inv.append((s[i],s[j]))
    return inv

# Amplitude coefficients for the Bethe vectors
def A(z, s, d):
    n = len(z)
    inv = inversions(s)
    terms = [ -(1 + z[i[0]]*z[i[1]] - d*z[i[0]])/(1 + z[i[0]]*z[i[1]] - d*z[i[1]]) for i in inv]
    return np.prod(terms)

def A_v2(z, s, d):
    n = len(z)
    terms = [ np.where(s[i] > s[j],-(1 + z[s[i]]*z[s[j]] - d*z[s[i]])/(1 + z[s[i]]*z[s[j]] - d*z[s[j]]) ,1 ) for i in range(n) for j in range(i+1, n)]
    return np.prod(terms)

def All_amps(z, d):
    n = len(z)
    per = list(permutations(range(n)))
    amps = [(s, A_v2(z, s, d) ) for s in per]
    return dict(amps)

# Bethe vectors
def eigenfun(x, z, d):
    n = len(z)
    per = list(permutations(range(n)))
    final_term=0
    term = 0
    for s in per:
        term = A(z, s,d)
        for i in range(n):
            term = term*(z[s[i]]**(x[i]))
        final_term = final_term + term
    return final_term

def eigenfun_v2(x, z, d, all_amps):
    n = len(z)
    per = list(permutations(range(n)))
    final_term=0
    term = 0
    for s in per:
        term = all_amps[s]
        for i in range(n):
            term = term*(z[s[i]]**(x[i]))
        final_term = final_term + term
    return final_term

def BE(z,i,d):
    n = len(z)
    term=1
    for j in range(n):
        term= term*(-1)*((1 + z[i]*z[j] - d*z[i])/(1 + z[i]*z[j] - d*z[j]))
    return -term

def seq_update(z,d,L):
    n = len(z)
    w = []
    for i in range(n):
        pol = [1]
        pol.extend([0]*(L-1))
        pol.append(- BE(z, i, d))
        roots = np.roots(pol)
        roots = [x-z[i] for x in roots]
        w.append(min(roots, key=np.abs) + z[i])
    return w

def BE_sol_initial(I,L):
    n = len(I)
    pol = [1]
    pol.extend([0]*(L-1))
    pol.append((-1)**n)
    roots = np.roots(pol)
    sol =[]
    for i in I:
        sol.append(roots[i])
    return sol

def tuple_combinations(N,L):
    def helper(current_tuple, index):
        
        if index == N:
            result.append(current_tuple)
            return
        if index ==0:
            for i in range(L):
                helper(current_tuple + (i,), index+1)
        else:
            for i in range(current_tuple[-1]+1, L):
                helper(current_tuple + (i,), index+1) 
    result = []
    helper(tuple(), 0)
    return result

def merge(list1, list2):

    merged_list = tuple(zip(list1, list2))
    return merged_list

def tuple_combinations_subs(sx,N,L):
    def helper(current_tuple, index):   
        if index == N:
            result.append(merge(sx, current_tuple))
            return
        if index ==0:
            for i in range(L):
                helper(current_tuple + (i,), index+1)
        else:
            for i in range(current_tuple[-1]+1, L):
                helper(current_tuple + (i,), index+1) 
    result = []
    helper(tuple(), 0)
    return result

def BE_all_sol(N,L,d,updates):
    all_tuples = tuple_combinations(N,L)
    sol = []
    for I in all_tuples:
        initial = BE_sol_initial(I,L)
        for k in range(updates):
            initial = seq_update(initial, d, L)
        sol.append(initial)
    return sol

def BE_all_sol_sub(N,L,d,updates, sz):
    ord_sol = BE_all_sol(N,L, d, updates)
    all_sol = []
    for z in ord_sol:
        all_sol.extend(list(permutations(z)))
    return [merge(sz, sol) for sol in all_sol]

def energy(z,d):
    return sum([i +1/i - 2*d for i in z])

def partition(sol,d,b):
    return sum([np.exp(-b*energy(z,d)) for z in sol])

def sum_energy(sol, d, b):
    return sum([ energy(z,d)*np.exp(-b*energy(z,d))for z in sol] )

#all configurations in that include the index j
def subCv2(j,config):
    sC = []
    N= len(config)
    for n in range(N):
        if j in config[n]:
            sC.append(n)
    return(sC)


#all configurations that have a gap (i.e. no particles) in [j+1, k) and a particle at j
def gap_subC(j, k, Config):
    sC = []
    gap = True
    for con in Config:
        gap = True
        if j in con:
            for x in range(j+1,k):
                gap = gap and not x in con
        else:
            gap= False
        if gap:
            sC.append(con)
    return sC

#all indexes configurations that have a gap (i.e. no particles) in [j+1, k) and a particle at j
def gap_subCv2(j, k, Config):
    sC = []
    N= len(Config)
    gap = True
    for n in range(N):
        gap = True
        if j in Config[n]:
            for x in range(j+1, k):
                gap = gap and not x in Config[n]
        else:
            gap = False
        if gap:
            sC.append(n)
    return sC

#partitions all of the configurations Config based on their last element, as long as the last element are in the range [j,k-1]
def gap_subCv3(j, k, Config):
    sC = [[] for x in range(j, k)]
    N = len(Config)
    for n in range(N):
        last = Config[n][-1]
        if last >= j and last < k:
            sC[last-j].append(n)
    return sC


def sum_terms(y, aS, aC, d, L):
    return [[ Coeff(y, z, d, L)*eigenfun(x, z, d) for x in aC] for z in aS]

# same as sum_terms but with with symbolic math that then then is transformed to  a python function
def sum_terms_v2(y, aS, aC, d, L):
    n = len(y)
    sx = symbols(['x{}'.format(k) for k in range(n)])
    sz = symbols(['z{}'.format(k) for k in range(n)])
    amps = All_amps(sx, d)
    tstart =time.time()
    f = Coeff_v2(y, sz, d, L)*eigenfun_v2(sx, sz, d,amps)
    lam_f = lambdify(sz + sx , f)
    print(time.time()-tstart)
    #return f
    return [[lam_f(*tuple(z) + x ) for x in aC] for z in aS]

# same as sum_terms but with with symbolic math that then then is transformed to  a python function
def sum_terms_harmonics(y, aS, aC, d, L):
    n = len(y)
    sx = symbols(['x{}'.format(k) for k in range(n)])
    sz = symbols(['z{}'.format(k) for k in range(n)])
    amps = All_amps(sx, d)
    tstart =time.time()
    print("hello before Coeff_har")
    #f = Coeff_har(sz, d, L)*eigenfun_v2(sx, sz, d,amps)
    f = eigenfun_v2(sx, sz, d,amps)
    lam_f = lambdify(sz + sx , f)
    print("hello")
    print(time.time()-tstart)
    #return f
    norms =[1/np.sqrt(sum([np.abs(lam_f(*tuple(z) + x ))**2 for x in aC])) for z in aS]
    sT = [[lam_f(*tuple(z) + x ) for x in aC] for z in aS]
    return np.multiply(norms, sT)

def sum_terms_parts(row_p, col_p, parts, y, aS, aC, d, L):
    n = len(y)
    aC_par = aC[(row_p)*(len(aC)//parts):(row_p+1)*(len(aC)//parts)]
    aS_par = aS[(col_p)*(len(aS)//parts):(col_p+1)*(len(aS)//parts)]
    sx = symbols(['x{}'.format(k) for k in range(n)])
    sz = symbols(['z{}'.format(k) for k in range(n)])
    amps = All_amps(sx, d)
    tstart =time.time()
    f = Coeff_v2(y, sz, d, L)*eigenfun_v2(sx, sz, d,amps)
    lam_f = lambdify(sz + sx , f)
    print(time.time()-tstart)
    return [[lam_f(*tuple(z) + x ) for x in aC_par] for z in aS_par]

def prob_configv2(x_index, t, aS, sT,d):
    N = len(aS)
    a = [sT[k][x_index] for k in range(N)]
    b =[np.exp(-1j*energy(aS[k],d)*t) for k in range(N)]
    term = np.abs(np.dot(a,b))**2
    return(term)
    #terms = [sT[k][x_index]*np.exp(-1j*energy(aS[k],d)*t) for k in range(N)]
    #return(np.abs(sum(terms))**2)

def prob_one_v2(x_one , t,aS, aC, sT,d):
    subConfig = subCv2(x_one, aC)
    terms = [prob_configv2(k, t, aS, sT,d) for k in subConfig]
    return(sum(terms))

# probability that there is a gap (i.e. no particle) in [j+1, k) with a particle at j
def prob_gap(j,k, t, aS, aC, sT, d):
    subConfig = gap_subCv2(j, k, aC)
    terms = [prob_configv2(c, t, aS, sT, d) for c in subConfig]
    return(sum(terms))

# probability vector for the last particle to be at position x in [j, k-1]
def prob_gap_v2(j, k, t, aS, aC, sT, d):
    parConfig = gap_subCv3(j, k, aC)
    probs =[]
    for n in range(k-j):
        terms = [prob_configv2(c, t, aS, sT, d) for c in parConfig[n]]
        probs.append(sum(terms))
    return(probs)

def re_amp_config(x_index, aS, sT):
    N = len(aS)
    a = sum([sT[k][x_index] for k in range(N)])
    term = np.real(a)
    return(term)

def har_one(x_one ,aS, aC, sT):
    subConfig = subCv2(x_one, aC)
    terms = [re_amp_config(k, aS, sT) for k in subConfig]
    return(sum(terms))

def im_amp_config(x_index, aS, sT):
    N = len(aS)
    a = sum([sT[k][x_index] for k in range(N)])
    term = np.imag(a)
    return(term)

def har_one_v2(x_one ,aS, aC, sT):
    subConfig = subCv2(x_one, aC)
    terms = [im_amp_config(k, aS, sT) for k in subConfig]
    return(sum(terms))

# argument checks 
#if len(sys.argv) < 3:
#    print("ERROR: Not enough arguments. Requires L, N, and delta as arguments from the command line.", file=sys.stderr)
#    exit()

# reading in arguments
N = 2
L = 21
d = 0.5

# some integrity checks (for N and initial values) 
if N < 0 or N >= L:
    print("ERROR: N cannot be outside the range [0, L).")
    exit()
#if len(sys.argv) < N + 3:
#    print("ERROR: Not enough arguments. Requires initial conditions after L, N, and delta from the command line.", file=sys.stderr)
#    exit()



IC_one = [1,2]
for initCond in IC_one:
    if initCond < 0 or initCond > L:
        print("ERROR: Invalid initial condition. Every initial value should be in [0, L) (got {} for a chain of length {}).".format(initCond, L), file=sys.stderr)
        exit()

# hardcoded argument (number of updates to numerical method 
# for solving the Bethe Ansatz equations)
# this may be causing a bottle neck? Not really. It's a fixed cost and it doesnt scale
acc = 10

sz =symbols(['z{}'.format(k) for k in range(N)])
sx =symbols(['x{}'.format(k) for k in range(N)])

startTime = time.time()
all_C = tuple_combinations(N,L)
#print(all_C)

''' 
# Energy versus d (anisotropy) paramter
EvD =[]
temp=[]
for d in np.arange(-2,2,.01):
    ord_sol = BE_all_sol(N,L, d, acc)
    temp = sorted([[d, np.real(energy(sol,d))/L] for sol in ord_sol])
    EvD.append(temp)

#EvD = EvD.tolist()

#open file and write it
with open('EvD.json', 'w+') as f:
   json.dump(EvD, f)
print("File written successfully")
f.close()
'''

'''
# Spectral Angle versus d (anisotropy) paramter
SAvD =[]
temp=[]
for d in np.arange(0,0.1,.1):
    ord_sol = BE_all_sol(N,L, d, acc)
    temp = sorted([(np.real(energy(sol,d))/L,np.angle(Coeff_v3(IC_one, sol)) ) for sol in ord_sol])
    SAvD.append(temp)

#EvD = EvD.tolist()

#open file and write it
with open('SAvD.json', 'w+') as f:
   json.dump(SAvD, f)
print("File written successfully")
f.close()
'''

print("hello before all BE sol")
ord_sol = BE_all_sol(N,L, d, acc)

print("hello before sorting solutions")

def sort_fun(sol):
    return np.real(1*energy(sol,d))

#print(ord_sol)
#print(sorted(ord_sol,key=sort_fun))
ord_sol = sorted(ord_sol, key = sort_fun)
ord_sol= [ord_sol[0]]

print(ord_sol)


# PLOT THINGS
all_C2 = tuple_combinations_subs(sx, N, L)


all_sol = []
#for z in ord_sol:
#    all_sol.extend(list(permutations(z)))
##all_sol2 = BE_all_sol_sub(N,L, d, acc,sz)
all_sol =ord_sol

#7 secs
startTime4 = time.time()
##all_T = sum_terms(IC_one, all_sol, all_C, d, L)
print("hello before sum terms harmonics")
all_T = sum_terms_harmonics(IC_one, all_sol, all_C, d, L)
print("hello")

x = np.arange(0, L, 1)
t = np.arange(0, 16, 0.1)


X, T = np.meshgrid(x, t)

#one-point probability function
#print(len(all_T[0]))
#print([[all_C[y] for y in subCv2(x1, all_C)] for x1 in x])
Z = np.array([prob_one_v2(x1,0, all_sol, all_C, all_T,d)  for x1 in x] )
print(Z)
print(sum(Z))


#print(all_sol)
#print(subCv2(L-1, all_C))
#norm = np.sqrt(sum(Z))
#print(norm)
#Z = Z /(norm**2)

#print(sum(Z))

#Z = np.array([har_one(x1, all_sol, all_C, all_T)  for x1 in x] )
#print(Z)

#Z = np.array([har_one_v2(x1, all_sol, all_C, all_T)  for x1 in x] )
#print(Z)


#ord_sol = BE_all_sol(N,L, d, acc)
#print([(energy(sol,d),np.abs(Coeff_v3(IC_one, sol))**2 ) for sol in ord_sol])
#print([(energy(sol,d),np.angle(Coeff_v3(IC_one, sol)) ) for sol in ord_sol])

#print(sorted([[d, np.real(energy(sol,d))/L] for sol in ord_sol]))

#print(np.max([np.abs(np.abs(Coeff_v3(IC_one, sol))**2 - 1) for sol in ord_sol]))

#print(sum([np.abs(Coeff_v3(IC_one, sol))**2 for sol in ord_sol]))

##print(len(ord_sol))


# COMPUTATION END 
print("This computation took {} seconds.".format(time.time()-startTime ))
