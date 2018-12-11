.data
Assignment1:.asciiz      "Tower of Hanoi\n"
disk:  .asciiz"Enter the number of disks: "
moves:.asciiz"The number of moves required is "
.text  
li $v0, 4 			
la $a0, Assignment1
syscall
li  $v0, 4 			
la  $a0, disk
syscall
li $v0, 5
syscall
move $t7, $v0 
li $t6,2
li $t0,1
li $t1,0 #counter
li $t2,0
again:
add $t1,$t1,1
mul $t0,$t0,$t6
bne $t7,$t1,again
jal end           
  end:   
  sub $t0,$t0,1               
    li $v0, 4 	
    la $a0, moves
    syscall  
    move $a0,$t0   
    li $v0, 1
    syscall                                          
    li $v0, 10 	
    syscall
    
