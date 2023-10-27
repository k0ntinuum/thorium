
function encode(p,q)
    k = copy(q)
    printkey(k)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        if isodd(tr(k))
            c[i] = (p[i] + 1)%2
        else
            c[i] = p[i]
        end
        y = (tr(k)+p[i])%2
        if isodd(y)
            spincols(k)
        else
            spinrows(k)
        end
    end
    #printkey(k)
    c
end

function decode(p,q)
    k = copy(q)
    #printkey(k)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        if isodd(tr(k))
            c[i] = (p[i] + 1)%2
        else
            c[i] = p[i]
        end
        y = (tr(k)+c[i])%2
        if isodd(y)
            spincols(k)
        else
            spinrows(k)
        end
    end
    c
end