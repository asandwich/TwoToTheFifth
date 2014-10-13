#!/usr/bin/env ruby

filename = ARGV[0]
debug = !ARGV[1].nil? && ARGV[1]=='-d'
ptr=0
pc=0
heap = {}
program = {}
file=File.open(ARGV[0],'r')
index = 0;
file.each do |item|
    program[index] = item.chomp unless item[0] == '#'
    index+=1 unless item[0] == '#'
end
puts program if debug
while(pc < program.size and pc > -1)
    command = program[pc]
    operator = command.split(' ')[0]
    operand_0 = command.split(' ')[1]
    operand_1 = command.split(' ')[2]
    operand_2 = command.split(' ')[3]
    puts "#{operator}, #{operand_0}, #{operand_1}, #{operand_2} #{heap}" if debug
    heap[operand_0] = 0 if operator == 'Health' && heap[operand_0].nil?
    heap[operand_0] = heap[operand_0] + operand_1.to_i if operator == 'Health'
    print heap[heap[operand_0].to_s].chr if operator == 'Cerner'
    pc = operand_2.to_i if operator == 'Engineering' && heap[operand_0].to_i < operand_1.to_i
    pc+=1 unless operator == 'Engineering' && heap[operand_0].to_i < operand_1.to_i
end