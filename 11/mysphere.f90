program main
    implicit none
    real(8) :: r,s,v
    write(*,*) 'Input r'
    read(*,*) r
    call sphere(r,s,v)
    write(*,*) 's =',s
    write(*,*) 'v =',v
    stop
    contains
        subroutine sphere(r,s,v)
            real(8),intent(in) :: r
            real(8),intent(out) :: s,v

            s = 4*3.14159265359*r**2
            v = 4*3.14159265359*r**3/3
        end subroutine sphere
end program main
