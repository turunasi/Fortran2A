program main
    
    implicit none
    integer(8) :: x,collatzResult
    integer,external :: collatz
    collatzResult = collatz()
    write(*,*) "max number is",collatzResult
    stop

end program main
