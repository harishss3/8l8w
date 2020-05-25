isDiv n x = if (x `mod` (10*n -1) == 0)
          then 1
          else 0



npNum n x = if (n*x /= nIt x)
          then 0
          else 1


nIt x = x `div` 10 + (10 ^ (len x)) * (x `mod` 10)

len x = if x<10
        then 0
        else 1 + len (x `div` 10)

crtNum n x = 10^(x+1) - n

formNum n x d = d + 10 * ((x*d) `div` (10*n-1))

parNum n x d = if (isDiv n (crtNum n x) == 1) && (npNum n (formNum n (crtNum n x) d) == 1)
              then formNum n (crtNum n x) d
              else parNum n (x+1) d