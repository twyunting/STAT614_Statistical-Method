# R rainbow
## 1.1. Rainbow Data
x <- seq(1,180,1)
y <- 10*sin((x/ 180.0) * pi)

## 1.2. Rainbow Color
#n <- 7
n <- 20
rain <- rainbow(n, s = 1, v = 1, start = 0, end = max(1, n - 1)/n, alpha = 1)
ind <- c(16,14,11,8,4,3,1)
color <- rain[ind]
## 1.3. Draw Rainbow with Base Plot System
plot(x, y, type="n", ylim = c(0,20), lwd=10,main='R Rainbow from miner_book github')
for(i in 1:7) {
  lines(x, y+i, col=color[i],lwd=13)
}

# Reference: https://ropenscilabs.github.io/miner_book/building-a-rainbow.html