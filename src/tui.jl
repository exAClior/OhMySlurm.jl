function welcome()
	println("Welcome to the Julia REPL")
	println("Type ? for help, press backspace to clear the input prompt.")
	println("Press Ctrl+D to exit.")
	println()
end


function prompt()
	print("What would you like to do?: ")
	# wait for user input and execute appropriate function
	input = readline()
	if input == "help"
		help()
	elseif input == "list jobs"
		list_jobs()
	elseif input == "Job info"
		println("Enter job id: ")
		job_id = parse(Int, readline())
		job_info(job_id)
	elseif input == "exit"
		exit()
	elseif input == "?"
		help()
	else
		println("Invalid input, please try again.")
	end
end


function main()
	welcome()
	while true
		prompt()
	end
end
