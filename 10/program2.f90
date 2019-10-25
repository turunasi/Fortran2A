program exponential
    
    implicit none
    integer :: n
    real(8) :: x
    
    write(*,*) "Input n"
    read(*,*) n
    write(*,*) "Input x"
    read(*,*) x
    
    write(*,*) "my exp(x) is",myexp(n,x)
    write(*,*) "real exp(x) is",exp(x)
    write(*,*) "relative error is",abs(exp(x)-myexp(n,x))/exp(x)

    stop
    contains
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

end program exponential
