program even

   implicit none
   real :: a(100)
   integer :: i

   a(:) = 0e0
   a(2:100:2) = (/(i**2,i=2,100,2)/)
   write(*,*) a
   
   stop
end program even
