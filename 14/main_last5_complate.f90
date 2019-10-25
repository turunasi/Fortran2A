program arctan
    implicit none
    integer :: n
    real(8) :: x, ans

    n=10
    x=0.5d0
    ans = myatan(n, x)
    write(*,'(A,F3.1,A,F15.10)') 'atan(',x,')=',atan(x)
    write(*,'(A,F3.1,A,F15.10)') 'Maclaurin-s expansion =',ans
    stop

    contains
    function myatan(n,x) result(ans)
    integer,intent(in):: n
    real(8),intent(in):: x
    integer:: i
    real(8):: ans
    ans = 0
    do i = 1,n
        ans = ans + (-1)**(i-1)/(2*i-1)*x**(2*i-1)
    end do
    end function myatan
end program arctan

![ito@localhost ~]$ gfortran main_last5.f90 
![ito@localhost ~]$ ./a.out 
!atan(0.5)=   0.4636476090
!Maclaurin-s expansion =   0.4636476090

