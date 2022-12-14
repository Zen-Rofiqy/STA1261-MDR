# NAMA  : Angga Fathan Rofiqy
# NIM   : G1401211006
# Kelas : Pararel 01

# ============== KULIAH ================
x <- c(1, 2, 3, 4)
x
mode(x)

y <- c("sd", "smp", 'sma')
y
mode(y)

x2 <- c(1+1i, 2+3, 4i)
x2
mode(x2)

x3 <- c(T, T, F, T, TRUE, FALSE)
x3
mode(x3)

xy <- c(x,y)
xy
mode(xy)

xx2 <- c(x,x2)
xx2
mode(xx2)

seq(1,2)
seq(1.1, 5)
seq(5,1)
seq(1,5, by=0.1)
seq(5,1, by=-0.1)
seq(1,5, length=30)

rep(1,4)
rep(c(1,4),4)
rep(c(1,4), c(2,5))
rep(c(1,4), each=2)
rep(c(1,4),2)

1:5
1.1:5

x
names(x)
names(x) <- c('a', 'b', 'c', 'd')
x





# ============ PRAKTIKUM ===============

# [2.6.2 Factor]====
f <- factor(c("SD", "SMA", "SMP", "SD", "SMA", "SMP", "SD", "SMP"))
f

factor(f, levels = c("SD", "SMP", "SMA"), ordered = TRUE)
length(f)
class(f)


# [rbind & cbind di vector]====
x <- 1:3
y <- 10:12
#ingat matrix itu dapat beruba vector kolom dan vector baris, sehingga:
cbind(x,y) #cbind membuat kedua vector menjadi vector kolom dan menggabungkannya
cbind(y,x)

rbind(x,y) #rbind membuat kedua vector menjadi vector baris dan menggabungkannya
rbind(y,x)


# [rbind & cbind di matrix]====
m <- 1:10 
dim(m) <- c(2, 5)
m

n <- 10:1 
dim(n) <- c(2, 5)
n

cbind(m,n)
cbind(n,m)

rbind(m,n)
rbind(n,m)


# [2.6.4 Array]====
v1 <-  c(5, 10, 15, 20)
v2 <-  c(25, 30, 35, 40, 45, 50, 55, 60)

arr <- array(c(v1, v2), dim =c(4,4,3))

dim(arr)



# [2.6.5 Dataframe]====
df <- data.frame(num = 1:4, bool = c(T, T, F, F)) 
df


df2 <- data.frame(num = c(10, 20, 30, 40),
                  char = c("a", "b", "c", "a"))
df2


# [2.6.6 List]====
s <- "A" 
v <- c(1:20)
m <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE) 
df <- data.frame(num = c(10, 20, 30, 40),
                 char = c("a", "b", "c", "a"))

l <- list(s, v, m, df)
l


# [2.7 Missing value]====
x <- c(1, 2, NA, 10, 3)  
is.na(x)   #Not Available (missing value)
is.nan(x)  #Not A Number

x <- c(1, 2, NaN, NA, 4)
is.nan(x)


# [2.8 Penamaan Elemen]====
# -Vektor-====
x <- 1:3
names(x)
names(x) <- c("New York", "Seattle", "Los Angeles") 
x
names(x)

# -list====
names(l) <- c("teks", "vektor", "matriks", "tabel")
l

# -matrix-====
m <- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("i1", "i2"), c("j1", "j2"))   #berbeda dengan yang lainnya, untuk matrix menggunakan fungsi disnames()
m

colnames(m) <- c("h", "f") #atau bisa juga dengan col/rownames
rownames(m) <- c("x", "z")
m

# -dataframe-====
a <- c(10, 20, 30, 40)
b <- c("a", "b", "c", "a")
df <- data.frame(a, b)
df

names(df) <- c("numbers", "chars")
row.names(df) <- c("r1", "r2", "r3", "r4")
df

df1 <- data.frame(c(10, 20, 30, 40), 
                  c("a", "b", "c", "a"))
names(df2)


# [2.9 Struktur Kendali]====
#[2.9.1 Percabangan]====
# -If-====
x <- 5
if(x > 0){
  print("Positive")
}
if(x > 0)
  print("Positive");    #sama kyk di c, kalo cmn 1 perintah bisa cmn pake ;


# -if ??? else-====
x <- -5
if(x > 0){
  print("Non Negative")
} else {
  print("Negative")
}

x <- -5
if(x > 0)
  print("Non Negative");
else
  print("Negative");   #anehnya ini nggak bisa, harus pake { }

x <- -5
if(x > 0){
  print("Non Negative")
} else
  print("Negative");    #ini juga nggak bisa. semuanya harus pake { }


# -if ??? else if ??? else-====
x <- -5
if(x == 0){
  prin("Zero")
} else if(x < 0){
  print("Negative")
} else {
  print("Positive")
}



#[2.9.2 Loop]====
# -For Loop-====
# digunakan untuk mengiterasi vektor
x <- c(2,5,3,9,8,11,6)
count <- 0

for (val in x) {
  if(val %% 2 == 0) {
    count = count+1
  }
}
print(count)

count <- 0

for (v in x) {        #jadi bebas apa aja nggak usah val, ini hanya variabel
  if(v %% 2 == 0) {
    count = count+1
  }
}
print(count)
v                     #v = banyaknya index dari vector

count <- 0

for (val in x){
  if(val %% 2 == 0)
    count = count+2;  #ini bisa
}

print(count)


count <- 0

for (val in x)
  if(val %% 2 == 0)
    count = count+3;  #ini jg bisa, tapi bagusnya langsung diblock

print(count)


# -while loop-====
# loop sampai kondisi tertentu
i <- 1
while (i < 6) { 
  print(i)       #jadi bisa tanpa ; kalo ada { }
  i = i+1
}

i <- 1
while (i < 6) {   
  print(i);
  i = i+1;
}


# -break dan next-====
# break, berhenti pada iterasi ke-3
x <- 1:5
for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}

# next, skip iterasi ke-3
x <- 1:5
for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}


# -repeat loop-====
# hanya akan berhenti jika menemui break
x <- 1
repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}



#====
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
# ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????