function myexp(n,x)
            
    integer,intent(in) :: n
    real(8),intent(in) :: x 
            
    integer :: i,m
    real(8) :: myexp
    m = 1
    myexp = 1

    do i=1,n
        m = m*i
        myexp = myexp + x**i/m
    end do
        
end function myexp

