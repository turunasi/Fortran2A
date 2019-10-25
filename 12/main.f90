program main
    implicit none
    integer :: i,j,k,l,m,n
    write(*,*) 'Input i,j,k,l'
    read(*,*) i,j,k,l
    call bunnsuu(i,j,k,l,m,n)
    write(*,*) 'm = ',m
    write(*,*) 'n = ',n
end program main
