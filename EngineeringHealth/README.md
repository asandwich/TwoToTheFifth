Engineering Health
==================
'Engineering Health' is an esoteric scripting language with memory, printing, and branching operations. It is a heap based scripting language that uses pointers as variable refrences. After every operation, except branch, the program counter is incremented by 1. Both the program counter is initalized to 0. 

###Usage
The interpreter is built with ruby. It takes in a file name as the only required argument. The interpreter has an optional debug flag that can be specified after the file name.
```
ruby EngineeringHealth.rb <filename> [-d]
```

###Sample script
A [sample script](EngineeringHealth.EngineeringHealth) is provided with the scripting language. The sample is also less than 32 lines of code. 


###Commands
|Command | Operands |
|--------|----------|
| Engineering | operand_0, operand_1, operand_2|
| Health | operand_0, operand_1 |
| Cerner | operand_0 |


####Engineering 
If the value of the heap at the first operand is > 0, set the Program Counter to the second operand. Analogous to 'direct branch greater than'
```
if heap[operand_0] > operand_1
then
	program_counter = operand_2
end
```

####Health
Add the given value to the value at the given heap pointer. If heap at operand zero is uninitialized, set it to zero before doing the operation. Analogous to 'indirect add'. If heap[operand_0] is uninitialized, it is set to 0. Analogous to 'add'.
```heap[operand_0] = heap[operand_0] + operand_1```

####Cerner
Prints the value at the current heap pointer. Analogous to 'print indirect'.
```print heap[heap[operand_0]]```


####Comments
The language supports comments that are prefaced by a '#' symbol.
