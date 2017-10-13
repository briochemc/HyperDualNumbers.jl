using HyperDualNumbers
using Base.Test
#using Test

# Tim Holy's test example
hd10 = Hyper(1//2, 1, 1, 0)
q1(x) = 1 - (96//25)*x^2 + (112//25)*x^4
q2(x) = 1 - (96//25)*x^2.0 + (112//25)*x^4.0
q3(x) = 1 - (96//25)*x^(2//1) + (112//25)*x^(4//1)

@test q1(hd10) == hyper(8//25, - 8//5, - 8//5, + 144//25)
@test q2(hd10) == hyper(0.32000000000000006, -1.5999999999999996, -1.5999999999999996, 5.760000000000002)
@test q2(hd10) == q3(hd10)

println(q1(hd10))