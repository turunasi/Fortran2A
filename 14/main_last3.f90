program main

    use myfunc
    implicit none
    integer :: i,j,k,l,m,n

100 write(*,*) 'Input i,j,k,l'
    read(*,*,err=200) i,j,k,l
    call myfraction(i,j,k,l,m,n)
    write(*,*) 'i/j + k/l is',m,'/',n
    stop
200 write(*,*) 'INPUT INTEGER!'
    goto 100
end program main
