function job_info(job_id::Int64, verbose::Bool = false)
	if verbose
		output = read(`scontrol show job $job_id`, String)
	else
		output = read(`squeue -j $job_id`, String)
	end
	println(output)
	return output
end

function list_jobs()
	user = get_user_name()
	output = read(`squeue -u $user`, String)
	println("Job info:")
	println(output)
	return output
end

function help()
	println("Available commands:")
	println("help: display this help message")
	println("Job info: display information about the current job")
	println("exit: exit the Julia REPL")
	println()
end

function get_user_name()
	return ENV["USER"]
end
