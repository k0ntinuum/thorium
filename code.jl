
function encode(p,q)
    k = copy(q)
    printkey(k)
    c = zeros(Int64,length(p))
    for i in eachindex(p)
        if isodd(tr(k))
            c[i] = (p[i] + 1)%2
            spincols(k)
        else
            c[i] = p[i]
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
            spincols(k)
        else
            c[i] = p[i]
            spinrows(k)
        end
    end
    c
end