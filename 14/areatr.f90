program main

    implicit none
    real(8) :: x1,y1,x2,y2,x3,y3,S

    write(*,*) 'calculate area of triangle'

100 write(*,*) 'Input x1 & y1'
    read(*,*,err=200) x1,y1
    write(*,*) 'Input x2 & y2'
    read(*,*,err=200) x2,y2
    write(*,*) 'Input x3 & y3'
    read(*,*,err=200) x3,y3

    call Heron(x1,y1,x2,y2,x3,y3,S)
    write(*,*) 'Area is ',S

    stop
200 write(*,*) 'INPUT CORRECT VALUE'
    goto 100
    contains
    subroutine Heron(x1,y1,x2,y2,x3,y3,S)
        real(8),intent(in) :: x1,y1,x2,y2,x3,y3
        real(8),intent(out) :: S
        real(8) :: a,b,c,k
        a = sqrt((x2-x1)**2+(y2-y1)**2)
        b = sqrt((x3-x1)**2+(y3-y1)**2)
        c = sqrt((x2-x3)**2+(y2-y3)**2)
        k = (a+b+c)/2
        S = sqrt(k*(k-a)*(k-b)*(k-c))
    end subroutine Heron

end program main
