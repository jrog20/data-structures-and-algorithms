
###############################
# PYTHON EXAMPLE FOR BLOG POST

def fib(n):
	if n < 2:
		return n
	else:
		# return the sum of the previous two terms
		return (fib(n - 2) + fib(n - 1))
    
###############################