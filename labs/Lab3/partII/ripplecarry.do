vlib work

vlog -timescale 1ns/1ns ripplecarry.v

vsim ripplecarry

log {/*}

add wave {/*}

force {SW[8]} 0


# a = 0 (0000); b = 0 (0000); 
# output = 0 (00000)
force {SW[7]} 0
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 0
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0

run 10ns

# a = 15 (1111); b = 15 (1111);
# output = 30 (11110)
force {SW[7]} 1
force {SW[6]} 1
force {SW[5]} 1
force {SW[4]} 1
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1

run 10ns

# a = 8 (1000); b = 8 (1000);
# output = 16 (10000)
force {SW[7]} 0
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 1
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 1

run 10ns

# a = 10(1010); b = 5 (0101);
# output = 15 (01111)
force {SW[7]} 0
force {SW[6]} 1
force {SW[5]} 0
force {SW[4]} 1
force {SW[3]} 1
force {SW[2]} 0
force {SW[1]} 1
force {SW[0]} 0

run 10ns
