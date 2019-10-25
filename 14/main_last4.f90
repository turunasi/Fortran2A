program main

    use myfunc
    implicit none
    real(8) :: x
    integer :: n

100 write(*,*) 'Input x'
    read(*,*,err=200) x
    write(*,*) 'Input n'
    read(*,*,err=200) n

    write(*,*) 'mytan is',mytan(x,n)
    write(*,*) 'tan is',tan(x)
    write(*,*) 'relative error is',abs(tan(x)-mytan(x,n))/tan(x)

    stop
200 write(*,*) 'INPUT COLLECT VALUE'
    goto 100
end program main
