all: mono_rs.s mono_rs.out mono_cc.s mono_cc.out heterogenous_vector.s heterogenous_vector.out het_vec_with_concepts.s

mono_rs.s: mono.rs
	rustc --emit=asm mono.rs -o mono_rs.s
mono_rs.out: mono.rs
	rustc mono.rs -o mono_rs.out

mono_cc.s: mono.cc
	gcc -S --std=c++20 mono.cc -o mono_cc.s
mono_cc.out: mono.cc
	gcc --std=c++20 mono.cc -o mono_cc.out

mono2_cc.s: mono2.cc
	gcc -S --std=c++20 mono2.cc -o mono2_cc.s
mono2_cc.out: mono2.cc
	gcc --std=c++20 mono2.cc -o mono2_cc.out

heterogenous_vector.s: heterogenous_vector.cc
	gcc -S --std=c++20 heterogenous_vector.cc -o heterogenous_vector.s
heterogenous_vector.out: heterogenous_vector.cc
	g++ --std=c++20 heterogenous_vector.cc -o heterogenous_vector.out

het_vec_with_concepts.s: het_vec_with_concepts.cc
	gcc -S --std=c++20 het_vec_with_concepts.cc -o het_vec_with_concepts.s
