program task2

    implicit none
    real(8) :: a(10),b(10),c(10)
    integer :: i

    a(:) = (/(2*i,i=1,10)/)
    b(:) = (/(-i,i=11,20)/)

    c = a/b
    write(*,100) c
    c = b**2+3
    write(*,100) c
    c = sqrt(a) - b
    write(*,100) c
100 format(10f15.5)

    stop
end program task2
