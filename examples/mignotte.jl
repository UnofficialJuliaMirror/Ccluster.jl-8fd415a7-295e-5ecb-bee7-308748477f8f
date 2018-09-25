using Nemo

R, x = PolynomialRing(QQ, "x")

d=64
a=14
P = x^d - 2*((2^a)*x-1)^2 #mignotte polynomial

using Ccluster

bInit = [fmpq(0,1),fmpq(0,1),fmpq(4,1)] #box centered in 0 + sqrt(-1)*0 with width 4
eps = fmpq(1,100)                       #eps = 1/100
verbosity = 0                           #nothing printed

Res = ccluster(P, bInit, eps, verbosity)

# using CclusterPlot #only if you have installed CclusterPlot.jl

# plotCcluster(Res, bInit, false) #use true instead of false to focus on clusters