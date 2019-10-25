program sine
    
    implicit none
    real(8) :: deg1,deg2,deg3
    
    write(*,*) "Input deg1"
    read(*,*) deg1
    write(*,*) "Input deg2"
    read(*,*) deg2
    write(*,*) "Input deg3"
    read(*,*) deg3
    
    write(*,*) "sin(deg1) is",sin(trad(deg1))
    write(*,*) "sin(deg2) is",sin(trad(deg2))
    write(*,*) "sin(deg3) is",sin(trad(deg3))

    stop
    contains
        function trad(deg)
            
            real(8),intent(in) :: deg 
            real(8) :: trad

            trad = deg*3.14159265359/180
        
        end function trad

end program sine
