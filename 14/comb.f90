program main

    implicit none
    integer :: n,m

    write(*,*) 'calculate nCm' 

100 write(*,*) 'Input n & m'
    read(*,*,err=200) n,m
    if ( n < m ) goto 300
    write(*,*) 'Combination is ',combination(n,m)
    stop

200 write(*,*) 'INPUT CORRECT VALUE'
    goto 100
300 write(*,*) 'n >= m !!'
    goto 100

    contains

    function combination(n,m)
        integer,intent(in) :: n,m
        integer :: combination
        
        combination = factrial(n)/(factrial(m)*factrial(n-m))

    end function combination
    
    function factrial(n)
        integer,intent(in) :: n
        integer :: factrial
        integer :: i

        factrial = 1

        do i=1,n
            factrial = factrial*i
        end do
    end function factrial

end program main
