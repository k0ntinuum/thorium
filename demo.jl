

function demo()
    k = key(n)
    printkey(k)
    p = text(t)
    c  = encrypt(p,k,r)
    d  = decrypt(c,k,r)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    # @printf "d        "
    # printvec(d)
    # @printf "p == d   "
    # printvec(p .== d)
    # @printf "p != c   "
    # printvec(p .!= c)
    if p != d @printf "ERROR" end
end

function codedemo()
    k = key(n)
    p = text(t)
    c  = encode(p,k)
    d  = decode(c,k)
    @printf "p        "
    printvec(p)
    @printf "c        "
    printvec(c)
    if p != d @printf "ERROR" end
end

function key_spin_demo()
    hide()
    cls()
    c = 'z'
    k = key(n)
    i = 1
    F = Set()
    while c != 'q'
        push!(F,diag(k))
        go(0,0)
        fancy_print_key(k)
        go(n+3,0)
        @printf("unique/total  = %d/%d", length(F),i)
        # go(n+4,0)
        # print(i)
        c = read(stdin, Char)
        k = spin(k,1)
        #if isodd(i) spinrows(k) else spincols(k) end
        # if c == 'r' spinrows(k) end
        # if c == 'c' spincols(k) end 
        i = i + 1
    end
    normal()
end