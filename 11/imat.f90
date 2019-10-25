program main
    implicit none
    real(8) :: I(4,4)
    call eye(I,I)
    write(*,*) 'I =',I
    stop
    contains
        subroutine eye(I,J)
            implicit none
            real(8),intent(in) :: I(4,4)
            real(8),intent(out) :: J(4,4)
            integer :: k
            J(:,:) = 0d0
            do k=1,4
                J(k,k) = 1d0
            end do
        end subroutine eye
end program main
