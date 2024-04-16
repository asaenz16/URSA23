# Same stuff as DetFormula.ipynb but runnable from the console
# Attempts to automate checking initial values so that we can 
# just run this and read the printouts. It starts from n = 1 and 
# L = 2 and iterates through until the designated stop length.

# CHANGEABLE CONSTANTS 
STOP_L = 5
EPSILON = 10**(-5)

STOP_D = 0.03
STEP_SIZE = 0.01


# -----------------------  CODE START  ---------------------------
import numpy as np
import scipy.special as sp
import random
import math 
from matplotlib import pyplot as plt
from itertools import permutations


# used to define L_{ij} when i isn't equal to j
# if i = j, returns 0
def M(z, i, j, d):
    # shortcut if delta is 0 or i = j (we don't care in this case)
    if d == 0 or i == j: return 0
    return d*( 1 + z[i]*z[i] - d*z[i] )/((1 + z[i]*z[j] - d*z[j])*(1 + z[i]*z[j] - d*z[i]))

# gives C(z) proper
def Cmat(z, d, L):
    n = len(z)
    diag = 0
    mat = [[ - M(z, i, j, d) for i in range(n)] for j in range(n) ]
    for i in range(n):
        rowSum = sum(mat[i])
        mat[i][i] = -rowSum + (L/z[i])
    return(mat)

# gives overall coefficients 
def Coeff(y, z, d, L):
    n = len(z)
    terms = [ z[i]**(y[i]+1) for i in range(n)] 
    coeff = np.prod(terms)
    matDet = np.linalg.det(Cmat(z, d, L))
    coeff = coeff*matDet
    
    if matDet == 0: 
        print("Lambda - M is singular, just wanted to let you know")
        # return 0
    
    coeff = 1/coeff
    return coeff

# returns all inversions in the mapping s as a tuple
def inversions(s):
    n = len(s)
    inv = []
    for i in range(n):
        for j in range(i+1, n):
            if s[i] > s[j]:
                inv.append((s[i],s[j]))
    return inv

# part of the term of the eigenfunction
def A(z, s, d):
    n = len(z)
    inv = inversions(s)
    if d == 0: return (-1)**len(inv)
    terms = [
        -(1 + z[i[0]]*z[i[1]] - d*z[i[0]])/(1 + z[i[0]]*z[i[1]] - d*z[i[1]]) 
        for i in inv]
    return np.prod(terms)

# returns the entire eigenfunction
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

# Bethe equations right hand side  
def BE(z,i,d):
    n = len(z)
    term = -1 if n % 2 == 0 else 1             # calculate sign
    for j in range(n):
        term= term*((1 + z[i]*z[j] - d*z[i])/(1 + z[i]*z[j] - d*z[j]))
    return term

# one run of the fixed point method for Bethe equation solutions
def seq_update(z,d,L):
    n = len(z)
    w = []
    for i in range(n):
        pol = [1]
        pol.extend([0]*(L-1))
        pol.append(-BE(z, i, d))
        roots = np.roots(pol)
        roots = [x-z[i] for x in roots]
        w.append(min(roots, key=np.abs) + z[i])
    return w

# initial guess for Bethe equation solutions
# is also the solution for delta = 0
def BE_sol_initial(I,L):
    n = len(I)
    pol = [1]
    pol.extend([0]*(L-1))
    pol.append((-1)**n)
    
    roots = np.roots(pol)
    sol = []
    for i in I:
        sol.append(roots[i])
    return sol

# gives all possible tuple combinations of length N
# of ints between 0 and L-1
def tuple_combinations(N,L):
    def helper(current_tuple, index):
        if index == N:
            result.append(current_tuple)
            return
        if index == 0:
            for i in range(L):
                helper(current_tuple + (i,), index+1)
        else:
            for i in range(current_tuple[-1]+1, L):
                helper(current_tuple + (i,), index+1) 
    result = []
    helper(tuple(), 0)
    return result

# all (ordered) solutions for N, L, and delta 
# uses updates number of iterations
def BE_all_sol(N,L,d,updates):
    all_tuples = tuple_combinations(N,L)
    sol = []
    for I in all_tuples:
        initial = BE_sol_initial(I,L)
        # don't need to run the numerical method if d = 0
        # or if it's an empty product, meaning n = 1 (sol
        # to both are roots of unity)
        if d != 0 and N > 1:
            for k in range(updates):
                initial = seq_update(initial, d, L)
        sol.append(initial)
    return sol

# This function checks whether this matrix looks like
# the identity (plus/minus epsilon, our allowed error).
# Takes a list of lists as the matrix. 
def checkIdentity(matrix, epsilon):
    for i in range(len(matrix)):
        for j in range(len(matrix[i])):
            if (i == j and abs(matrix[i][j] - 1) > epsilon) \
                or (i != j and abs(matrix[i][j]) > epsilon): 
                return False
    return True

# returns the solution matrix 
def solution(n, l, d):
    print("Checking n = {0}, l = {1}, delta = {2}".format(n, l, d))
    ord_sol = BE_all_sol(n, l, d, 10)

    all_sol = []
    for z in ord_sol:
        all_sol.extend(list(permutations(z)))
    all_config = tuple_combinations(n,l)
    trans_mat = [ [ np.abs(sum([Coeff(y, z, d, l)*eigenfun(x, z, d) for z in all_sol])) for y in all_config] for x in all_config]
    return trans_mat

# actually running stuff now 
ERR_FLAG = False
d = 0
while d <= STOP_D:
    # for l in range(1, STOP_L + 1):
    for i in range(1, math.floor((STOP_L+1)/2) + 1):
        l = 2*i-1
        for n in range(1, l+1):
            mat = solution(n, l, d)
            if (checkIdentity(mat, EPSILON)): 
                continue
            else:
                print("ERROR: Initial value check failed for N = {0}, L = {1}, and delta = {2}. Final matrix was".format(n, l, d))
                print(mat)
                ERR_FLAG = True
            break
        if ERR_FLAG: break 
    if ERR_FLAG: break
    d = d + STEP_SIZE

if ERR_FLAG:
    print("\n\nFailed to check initial conditions up to L = {0}".format(STOP_L))
else:
    print("\n\nSuccessfully checked initial conditions up to L = {0}".format(STOP_L))
