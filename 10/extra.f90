program arctangent
    
    implicit none
    integer :: n
    real(8) :: x
    
    write(*,*) "Input n"
    read(*,*) n
    write(*,*) "Input x"
    read(*,*) x
    
    write(*,*) "my arctan(x) is",myatan(n,x)
    write(*,*) "real arctan(x) is",atan(x)
    write(*,*) "relative error is",abs(atan(x)-myatan(n,x))/atan(x)

    stop
    contains
        function myatan(n,x)
            
            integer,intent(in) :: n
            real(8),intent(in) :: x 
            
            integer :: i
            real(8) :: myatan
            myatan = 0

            do i=1,n
                myatan = myatan + (-1)**(i-1)*x**(2*i-1)/(2*i-1)
            end do
        
        end function myatan

end program arctangent
