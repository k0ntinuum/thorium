function go(y::Int, x::Int) print("\u1b[$(y);$(x)H") end
function cls() print("\u1b[2J") end
function rgb(r,g,b) print("\u1b[38;2;$(r);$(g);$(b)m") end
function hide() print("\u1b[?25l") end
function normal() print("\u1b[$(0)m") end

function printkey(k)
    n = size(k)[begin]
    for r in 1:n
        for c in 1:n print(alph[k[r,c]+1], " ") end
        print("\n")
    end
    @printf "\n\n"
end

function printvec(v)
    for i in eachindex(v)
        print(alph[v[i]+1])
    end
    @printf "\n"
end


function fancy_print_key(k)
    n = size(k)[begin]
    hue = 100
    rgb(hue,hue,hue)
    for r in 1:n
        for c in 1:n 
            if r == c
                rgb(255,255,255)
            else
                rgb(hue,hue,hue)
            end
            print(alph[k[r,c]+1], " ") 
        end
        print("\n")
    end
    @printf "\n\n"
end