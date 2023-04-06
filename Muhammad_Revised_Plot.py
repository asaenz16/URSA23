"""
Program: Muhammad_Revised_Plot 
Author: Muhammad Faks
Date: 4/5/2023
Description: Revisions made to origional code in order to correctly calculate the probabiltiy of L occuring at x at time t 
"""

import numpy as np

#Create 3-D Plot
from mpl_toolkits import mplot3d
import matplotlib.pyplot as plt
plt.style.use('seaborn-poster')

#define probability function 
def probability_function(x, t, L, h):
    results_list = [] #will store the probabilities (should sum to 1)
    result = 0 #will store the resulting probability 
    for lamba_one in range(L): #iterates through the first submation 
        for lamba_two in range(L): #iterates through the second submation
            term = (1/L)*(1/L) * np.exp(2 *np.pi*(x-L-1)*(1/L)*(1j)*(lamba_one+lamba_two)) * np.exp(-2j*t*(1/h)*(np.cos(2*np.pi*(lamba_one/L)) - np.cos(2*np.pi*(lamba_two/L)))) #computer probablity function 
            term = term.real #convert imaginary to read numbers
            result += term #compute the final result with both real and imaginary (now real) numbers
            results_list.append(result) #store each probability into a list
    return result #return the resultant probability

"""
Revisions made to probability function with reference to initial function: 
    1. Attempted to break up the function into two components splitting at each np.exp. I believe that my origional equation failed as it did not account for imaginary numbers when combining both sides 
    2. Did not convert imaginary to real numbers
    3. Did not take the sum of the real numbers and imaginary numbers (now converted to real numbers for computation)
"""

#Check to see if probabilities sum to 1 

#Setting Parameters 
h = 1 
L = 101
t = 0

#Sum each probability appended to the list
vals =[]
for x in range(L):
    vals.append(probability_function(x, t, L, h))
print(sum(vals))

#Test cases:
#Assume h will be 1 (although periods between waves will shrink as h (decreases) approaches zero)
#Value for L: 101
#Values for t: 0, 33, 50, 66, 100

#Setting Parameters
h = 1 
L = 50 #Assign L to 50 to evaluate the probability function at 101 
#evaluating t at 0

#Create 3-D Plot to print
plot = plt.figure(figsize = (12,10))
axes = plt.axes(projection='3d')

x = np.arange(-L+1, L+2, 1) #establishes a range for x from -L+1 to L+2 based on parameter L above  
t = np.arange(0, 1, 0.01) #ranges from 0 up to 1 (inclusive) incrementing by 0.01; Note: the range of t can be modified by modifying the first and second argument in the .arrange() function 

X, T = np.meshgrid(x, t) 
Z = probability_function(X, T, (2*L)+1, h)  #Ex: if we want evaluate the probability function for L = 101, we can assign 50 to L (as (50 * 2) + 1 = 101)

surf = axes.plot_surface(X, T, Z, cmap = plt.cm.cividis)

# Set axes label
axes.set_xlabel('x', labelpad=20)
axes.set_ylabel('t', labelpad=20)
axes.set_zlabel('z', labelpad=20)

plot.colorbar(surf, shrink=0.5, aspect=8)
axes.view_init(25, 35)

plt.show()

