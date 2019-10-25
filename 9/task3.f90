program task3

    implicit none
    real(8) :: a(4),b(4)
    integer :: i,innerProduct=0

    a(:) = (/(i**2,i=1,4)/)
    b(:) = (/(-i,i=1,4)/)

    do i=1,4
        innerProduct = innerProduct + a(i)*b(i)
    end do
    write(*,*) innerProduct
    
    innerProduct = sum(a*b)
    write(*,*) innerProduct
    
    innerProduct = dot_product(a,b) 
    write(*,*) innerProduct

    stop
end program task3
