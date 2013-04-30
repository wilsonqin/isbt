let main () =
	let str = Sys.argv.(1) in
	let depth = float_of_string str in
	let rec independent_sets (d: float) : float =
		if (d = 0.) then 1.
		else if (d = 1.) then 2.
		else if (d = 2.) then 5.
		else (independent_sets ((d -. 2.) ** 4.)) +. (independent_sets ((d -. 1.) ** 2.))
	in
	print_string (string_of_float (independent_sets depth)) + "\n"
;;

main ();;
