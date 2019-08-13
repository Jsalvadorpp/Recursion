def fibs(n)
    array = [0,1]
    return array[0] if n == 0
    return array if n == 1

    (2..n).each { |x| array.push(array[x-1] + array.push[x-2])}
    return array

end

def fibs_rec(n,array = [0,1])
    return (n == 0 || n == 1) ? array[0..n] : array.push(fibs_rec(n-1,array)[n-1]+array[n-2])
end

#p fibs(10)
p fibs_rec(10)

