module volmod
    implicit none
    real(8),parameter :: pi = acos(-1d0)
    contains

    function dvolfunc(r) result(V)
        real(8),intent(in) :: r
        real(8) :: V
        V = 4d0/3d0*pi*r**3
    end function dvolfunc

    subroutine dvolsub(r,V)
        real(8),intent(in) ::r
        real(8),intent(out) :: V
        V =4d0/3d0*pi*r**3
    end subroutine dvolsub

end module volmod
