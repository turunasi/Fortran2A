subroutine bunnsuu (i,j,k,l,m,n)
    implicit none
    integer,intent(in) :: i,j,k,l
    integer,intent(inout) :: m,n
    
    n = j*l
    m = i*l + j*k
end subroutine bunnsuu
