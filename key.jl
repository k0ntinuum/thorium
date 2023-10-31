function key(n) rand([0, 1], n, n) end

function text(n)  rand([0, 1], n) end

function spinrows(k)
    for j in 1:size(k)[begin]
            k[j,:] = circshift(k[j,:],k[j,j]+1)
    end
end

function spincols(k)
    for j in 1:size(k)[begin]
        k[:,j] = circshift(k[:,j],k[j,j]+1)
    end 
end

# function thresh(k)
#     for j in 1:size(k)[begin]
#         d = k[j,j]
#         k[:,j] = circshift(k[:,j],d+1)
#         k[j,:] = circshift(k[j,:],d+1)
#     end
# end
# function thresh(k,p)
#     for j in 1:size(k)[begin]
#         d = k[j,j]
#         k[:,j] = circshift(k[:,j],d+p+1)
#         k[j,:] = circshift(k[j,:],d+p+1)
#     end
# end


# function spinrows(k)
#     for j in 1:size(k)[begin]
#         if k[j,j] == 0
#             k[j,:] = circshift(k[j,:],-1)
#         else
#             k[j,:] = circshift(k[j,:],1)
#         end
#     end
# end

# function spincols(k) d
#     for j in 1:size(k)[begin]
#         if k[j,j] == 0
#             k[:,j] = circshift(k[:,j],-1)
#         else
#             k[:,j] = circshift(k[:,j],1)
#         end
#     end
# end

function spin(q,n)
    k = copy(q)
    for i in 1:n
        if isodd(tr(k))
            spincols(k)
        else
            spinrows(k)
        end
    end
    k
end


# function spin(q,n)
#     k = copy(q)
#     for i in 1:n
#         thresh(k)
#     end
#     k
# end

function diag(q :: Matrix{Int64})
    print(size(q)[begin])
    d = zeros(Int64,size(q)[begin])
    for i in 1:size(q)[begin]
        d[i] = q[i,i]
    end
    d
end