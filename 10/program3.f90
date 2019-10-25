program array
    
    implicit none
    integer :: i
    real(8) :: A(3,4),B(4,2)
    real(8) :: C(size(A,1),size(B,2))
    A(:,:) = 2d0
    A(2,:) = 3d0
    A(:,3) = 1d0
    B(:,:) = 6d0
    B(1,:) = 2d0
    B(:,2) = 4d0

    C = mymatmul(A,B)
    write(*,*) "A*B is"
    write(*,100) (C(i,:),i=1,size(C,1))

    stop

100 format(2f5.2)
    
    contains
        function mymatmul(A,B)
            
            real(8),intent(in) :: A(3,4),B(4,2)
            
            integer :: i,j,n,m
            real(8) :: mymatmul(size(A,1),size(B,2))
            n = size(A,1)
            m = size(B,2)
            mymatmul(:,:) = 0d0
            
            do i=1,n
                do j=1,m
                    mymatmul(i,j) = dot_product(A(i,:),B(:,j))
                end do
            end do
        
        end function mymatmul

end program array
