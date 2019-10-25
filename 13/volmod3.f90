module volmod
    implicit none
    real(8),parameter :: pi = acos(-1d0)

    interface volfunc
        module procedure dvolfunc,dmvolfunc
    end interface volfunc

    interface volfunc
        module procedure dvolsub,dmvolsub
    end interface volfunc

    contains

    function dvolfunc(r) result(V)
        real(8),intent(in) :: r
        real(8) :: V
        V = 4d0/3d0*pi*r**3
    end function dvolfunc

    function dmvolfunc(r) result(V)
        real(8),intent(in) :: r(:)
        real(8) :: V(size(r))
        V = 4d0/3d0*pi*r**3
    end function dmvolfunc

    subroutine dvolsub(r,V)
        real(8),intent(in) :: r
        real(8),intent(out) :: V
        V = 4d0/3d0*pi*r**3
    end subroutine dvolsub(r,V)

end module volmod
