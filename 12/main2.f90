program exponential
    
    implicit none
    integer :: n
    real(8) :: x,myexpRessult
    real(8),external :: myexp
    write(*,*) "Input n"
    read(*,*) n
    write(*,*) "Input x"
    read(*,*) x
    myexpRessult = myexp(n,x)
    write(*,*) "my exp(x) is",myexp(n,x)
    write(*,*) "real exp(x) is",exp(x)
    write(*,*) "relative error is",abs(exp(x)-myexp(n,x))/exp(x)
    stop
end program exponential
