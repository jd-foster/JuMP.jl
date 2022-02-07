# # Getting started with optimization

# Mathematical optimization, in broad terms, is about determining a point (or points) in a set on which a real-valued function obtains an optimum, that is, either a minimum value or a maximum value. In what follows, we will just consider minimization, although we could equivalently use maximization.

# The general formulation of a mathematical optimization problem considers a real-valued _objective function_ ``f`` defined on a _constraint set_ ``X``, and looks to determine the values of a collection of _decision variables_ ``x = (x_1, \ldots, x_n)`` for some positive integer ``n`` such that
# - the _point_ ``x`` is in ``X`` and 
# -  the function evaluation ``f(x)`` is less than or equal to all possible alternatives in that set, that is, ``f(x) \le f(y)`` for all ``y`` in ``X``.

# The constraint set ``X`` is often defined implicitly or explicitly by a set of _constraints_: a constraint is a criterion that every point in ``X`` much satisfy in order to be a member of the set. When all constraints are satisfied by a point, it is called a _feasible point_ of the problem.

# From this broad starting point, we can specialise the formulation to certain _problem classes_ that have a given structure.
# The term _mathematical programming_ often refers to this approach with greater focus on structured classes of problems.

# Common forms of presentation for a generally structured mathematical programming problem are
# ```math
# \begin{align*}
#    \min_{x \in \mathbb{R}^n} & \quad f_0(x) \\
#    \;\;\text{s.t.} & \quad L_j \le f_j(x) \le U_j & j = 1 \ldots m \\
#    & \quad l_i \le x_i \le u_i & i = 1 \ldots n.
# \end{align*}
# ```
# or
# ```math
# \begin{align*}
#    \min_{x \in \mathbb{R}^n} & \quad f(x) \\
#    \;\;\text{s.t.} & \quad h_j(x)   = 0 & j = 1 \ldots m \\
#                     & \quad g_k(x) \le 0 & k = 1 \ldots r \\
#    & \quad l_i \le x_i \le u_i & i = 1 \ldots n.
# \end{align*}
# ```
# for given objective functions ``f_0``, ``f``, _constraint functions_ ``f_j``, ``h_j`` and ``g_k`` and real vectors of _bounds_ ``l``, ``u``, ``L`` and ``U``. Both presentations can be used interchangeable in order to pose a problem in a particular optimization problem class through a choice of the relevant functions and bounds.

# ### Problem classes in optimization

# A _problem class_ can be thought as all the possible programs we can create once we restrict the allowable types of functions used for the objective function and constraint functions.

# Each problem class has its own specialised methods that are used when solving for optimal values. Such methods depend on the particular properties of the functions used in describing the class.

# Two of the most important function types are _affine_ functions, which are of fundamental use in defining _linear programs_, and the larger family of _convex_ functions used in defining _convex programs_ (which include linear programs as a subtype). More general _nonlinear_ functions define an even larger family known under the heading of _nonlinear programming_. Nonlinear function are often composed from more elementary building blocks such as power functions, polynomials, rational functions and transcendental function families such as trigonometric, exponential and logarithmic functions. The existence of derivatives for the functions involved is also a relevant factor.
# (For a discussion of types of functions not suitable for use which JuMP, see [Should I use JuMP?](@ref))

