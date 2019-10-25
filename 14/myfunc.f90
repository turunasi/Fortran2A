module myfunc
    
    implicit none
    contains

    function mygcd(m,n)

        integer,intent(in) :: m,n
        integer :: mygcd
        integer :: a,b,r
        a = abs(m)
        b = abs(n)
        
        if (a < b) then
            call swap(a,b)
        end if

        r = mod(a,b)
        do while (r /= 0)
            a = b
            b = r
            r = mod(a,b)
        end do

        mygcd = b

    end function mygcd

    function mytan(x,n)

        real(8),intent(in) :: x
        integer,intent(in) :: n

        real(8) :: mysin,mycos,mytan
        integer :: i,m
        mysin = 0
        mycos = 0
        
        do i=0,2*n
            if (i==0) then 
                m = 1
            else
                m = m*i
            end if

            if (mod(i,2)==1) then
                mysin = mysin + (-1)**((i-1)/2)*x**n/m
            else
                mycos = mycos + (-1)**(i/2)*x**n/m
            end if
        end do

        mytan = mysin/mycos

    end function mytan

    subroutine myfraction(i,j,k,l,m,n)

        integer,intent(in) :: i,j,k,l
        integer,intent(out) :: m,n 
        integer :: gcd
        
        m = i*l + j*k
        n = j*l
        gcd = mygcd(m,n)
        
        m = m/gcd
        n = n/gcd

    end subroutine myfraction

    subroutine swap(m,n)
        
        integer,intent(inout) :: m,n
        integer :: r

        r = m
        m = n
        n = r

    end subroutine swap

end module myfunc
