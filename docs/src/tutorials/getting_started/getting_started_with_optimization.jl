# # Getting started with optimization

# Getting started with optimization

# Mathematical optimization, in broad terms, is about determining a point (or points) in a set on which a real-valued function obtains an optimum, that is, either a minimum value or a maximum value.

# The general formulation of a mathematical optimization problem considers a real-valued _objective function_ ``f`` defined on a _constraint set_ ``X``, and looks to determine the values of a collection of _decision variables_ ``x = (x_1, \ldots, x_n)`` that are required to lie in ``X`` such that the function evaluation ``f(x)`` is less than or equal to all possible valid alternatives in that set.

# The constraint set ``X`` is often defined implicitly by a set of _constraints_: one or more criteria that each point in ``X`` much satisfy in order to be a member of the set.

# From this broad starting point, we can specialise the formulation to certain _problem classes_. A problem class can be thought of as a restriction of the type of functions that may be used for defining the objective function and the constraints that points in ``X`` must satisfy. Each problem class has its own specialised methods for solving for optimal points. These methods depend on the particular properties of the functions used in describing the class.

# ```math
# \begin{align*}
#    \min_{x \in \mathbb{R}^n} & \quad f_0(x) \\
#    \;\;\text{s.t.} & \quad L_j \le f_j(x) \le U_j & j = 1 \ldots m \\
#    & \quad l_i \le x_i \le u_i & i = 1 \ldots n.
# \end{align*}
# ```
