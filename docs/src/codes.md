# Codes

## Lorenz Attractor
```julia
# numerical scheme from https://earth.esa.int/documents/973910/1002056/DA3.pdf/0cb2d2f6-3724-4089-9bc7-f97a2b4c4cdd
using PyPlot

σ,ρ,β = 10, 28, 8/3
function one_step(x, y, z)
    xx = x + σ*Δt/2*(2*(y-x)+Δt*(ρ*x-y-x*z) - σ*Δt*(y-x))
    yy = y + Δt/2 * (ρ*x-y-x*z+ρ*(x+σ*Δt*(y-x))-y
        -Δt*(ρ*x-y-x*z)
        -(x+σ*Δt*(y-z))*(z+Δt*(x*y-β*z)))
    zz = z + Δt/2*(x*y-β*z 
        + (x+Δt*σ*(y-x))*(y+Δt*(ρ*x-y-x*z))
        -β*z -Δt*(x*y-β*z))
    return [xx; yy; zz]
end

x0 = [26.61;-2.74;0.95]
T = 5
NT = 500
Δt = T/NT
X = zeros(3,NT+1)
X[:,1] = x0
for i = 1:NT
    X[:,i+1]= one_step(X[:,i]...)
end
plot3D(X[1,:], X[2,:], X[3,:])
```

![](./assets/lorenz.png)