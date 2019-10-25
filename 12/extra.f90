function collatz()
    
    implicit none
    integer(8) :: i,n,cnt,mx,collatz
    mx = 0
    do i=1,1000000
        n = i
        cnt = 0
        do while (n /= 1)   
            if (mod(n,2)==0) then
                n = n/2
            else
                n = 3*n+1
            endif
            cnt = cnt + 1
        end do
        if (cnt > mx) then
            mx = cnt
            collatz = i
        end if
    end do
        
end function collatz
