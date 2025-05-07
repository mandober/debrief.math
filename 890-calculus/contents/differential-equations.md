# Differential Equations

https://tutorial.math.lamar.edu/Classes/DE/DE.aspx

<!-- TOC -->

- [Basic Concepts](#basic-concepts)
  - [Definitions](#definitions)
  - [Direction Fields](#direction-fields)
  - [Final Thoughts](#final-thoughts)
- [First Order Differential Equations](#first-order-differential-equations)
  - [Linear Equations](#linear-equations)
  - [Separable Equations](#separable-equations)
  - [Exact Equations](#exact-equations)
  - [Bernoulli Differential Equations](#bernoulli-differential-equations)
  - [Substitutions](#substitutions)
  - [Intervals of Validity](#intervals-of-validity)
  - [Modeling with First Order Differential Equations](#modeling-with-first-order-differential-equations)
  - [Equilibrium Solutions](#equilibrium-solutions)
  - [Euler's Method](#eulers-method)
- [Second Order Differential Equations](#second-order-differential-equations)
  - [Basic Concepts](#basic-concepts-1)
  - [Real Roots](#real-roots)
  - [Complex Roots](#complex-roots)
  - [Repeated Roots](#repeated-roots)
  - [Reduction of Order](#reduction-of-order)
  - [Fundamental Sets of Solutions](#fundamental-sets-of-solutions)
  - [More on the Wronskian](#more-on-the-wronskian)
  - [Nonhomogeneous Differential Equations](#nonhomogeneous-differential-equations)
  - [Undetermined Coefficients](#undetermined-coefficients)
  - [Variation of Parameters](#variation-of-parameters)
  - [Mechanical Vibrations](#mechanical-vibrations)
- [Laplace Transforms](#laplace-transforms)
  - [The Definition](#the-definition)
  - [Laplace Transforms](#laplace-transforms-1)
  - [Inverse Laplace Transforms](#inverse-laplace-transforms)
  - [Step Functions](#step-functions)
  - [Solving IVPs with Laplace Transforms](#solving-ivps-with-laplace-transforms)
  - [Nonconstant Coefficient IVPs](#nonconstant-coefficient-ivps)
  - [IVPs with Step Functions](#ivps-with-step-functions)
  - [Dirac Delta Function](#dirac-delta-function)
  - [Convolution Integral](#convolution-integral)
  - [Table of Laplace Transforms](#table-of-laplace-transforms)
- [Systems of Differential Equations](#systems-of-differential-equations)
  - [Review: Systems of Equations](#review-systems-of-equations)
  - [Review: Matrices and Vectors](#review-matrices-and-vectors)
  - [Review: Eigenvalues and Eigenvectors](#review-eigenvalues-and-eigenvectors)
  - [Systems of Differential Equations](#systems-of-differential-equations-1)
  - [Solutions to Systems](#solutions-to-systems)
  - [Phase Plane](#phase-plane)
  - [Real Eigenvalues](#real-eigenvalues)
  - [Complex Eigenvalues](#complex-eigenvalues)
  - [Repeated Eigenvalues](#repeated-eigenvalues)
  - [Nonhomogeneous Systems](#nonhomogeneous-systems)
  - [Laplace Transforms](#laplace-transforms-2)
  - [Modeling](#modeling)
- [Series Solutions to Differential Equations](#series-solutions-to-differential-equations)
  - [Review: Power Series](#review-power-series)
  - [Review: Taylor Series](#review-taylor-series)
  - [Series Solutions](#series-solutions)
  - [Euler Equations](#euler-equations)
- [Higher Order Differential Equations](#higher-order-differential-equations)
  - [Order Linear Equations](#order-linear-equations)
  - [Linear Homogeneous Differential Equations](#linear-homogeneous-differential-equations)
  - [Undetermined Coefficients](#undetermined-coefficients-1)
  - [Variation of Parameters](#variation-of-parameters-1)
  - [Laplace Transforms](#laplace-transforms-3)
  - [Systems of Differential Equations](#systems-of-differential-equations-2)
  - [Series Solutions](#series-solutions-1)
- [Boundary Value Problems and Fourier Series](#boundary-value-problems-and-fourier-series)
  - [Boundary Value Problems](#boundary-value-problems)
  - [Eigenvalues and Eigenfunctions](#eigenvalues-and-eigenfunctions)
  - [Periodic Functions and Orthogonal Functions](#periodic-functions-and-orthogonal-functions)
  - [Fourier Sine Series](#fourier-sine-series)
  - [Fourier Cosine Series](#fourier-cosine-series)
  - [Fourier Series](#fourier-series)
  - [Convergence of Fourier Series](#convergence-of-fourier-series)
- [Partial Differential Equations](#partial-differential-equations)
  - [The Heat Equation](#the-heat-equation)
  - [The Wave Equation](#the-wave-equation)
  - [Terminology](#terminology)
  - [Separation of Variables](#separation-of-variables)
  - [Solving the Heat Equation](#solving-the-heat-equation)
  - [Heat Equation with Non-Zero Temperature Boundaries](#heat-equation-with-non-zero-temperature-boundaries)
  - [Laplace's Equation](#laplaces-equation)
  - [Vibrating String](#vibrating-string)
  - [Summary of Separation of Variables](#summary-of-separation-of-variables)

<!-- /TOC -->

## Basic Concepts

In this chapter we introduce many of the basic concepts and definitions that are encountered in a typical differential equations course. We will also take a look at direction fields and how they can be used to determine some of the behavior of solutions to differential equations.

### Definitions
In this section some of the common definitions and concepts in a differential equations course are introduced including order, linear vs. nonlinear, initial conditions, initial value problem and interval of validity.

### Direction Fields
In this section we discuss direction fields and how to sketch them. We also investigate how direction fields can be used to determine some information about the solution to a differential equation without actually having the solution.

### Final Thoughts
In this section we give a couple of final thoughts on what we will be looking at throughout this course.


## First Order Differential Equations

In this chapter we will look at several of the standard solution methods for first order differential equations including linear, separable, exact and Bernoulli differential equations. We also take a look at intervals of validity, equilibrium solutions and Euler's Method. In addition we model some physical situations with first order differential equations.

### Linear Equations
In this section we solve linear first order differential equations, i.e. differential equations in the form `y′+p(t)y = g(t)`. We give an in depth overview of the process used to solve this type of differential equation as well as a derivation of the formula needed for the integrating factor used in the solution process.

### Separable Equations
In this section we solve separable first order differential equations, i.e. differential equations in the form `N(y)y′=M(x)`. We will give a derivation of the solution process to this type of differential equation. We'll also start looking at finding the interval of validity for the solution to a differential equation.

### Exact Equations
In this section we will discuss identifying and solving exact differential equations. We will develop a test that can be used to identify exact differential equations and give a detailed explanation of the solution process. We will also do a few more interval of validity problems here as well.

### Bernoulli Differential Equations
In this section we solve Bernoulli differential equations, i.e. differential equations in the form `y′+p(t)y = yⁿ`. This section will also introduce the idea of using a substitution to help us solve differential equations.

### Substitutions
In this section we'll pick up where the last section left off and take a look at a couple of other substitutions that can be used to solve some differential equations. In particular we will discuss using solutions to solve differential equations of the form `y′=F(y/x)` and `y′=G(ax+by)`.

### Intervals of Validity
In this section we will give an in depth look at intervals of validity as well as an answer to the existence and uniqueness question for first order differential equations.

### Modeling with First Order Differential Equations
In this section we will use first order differential equations to model physical situations. In particular we will look at mixing problems (modeling the amount of a substance dissolved in a liquid and liquid both enters and exits), population problems (modeling a population under a variety of situations in which the population can enter or exit) and falling objects (modeling the velocity of a falling object under the influence of both gravity and air resistance).

### Equilibrium Solutions
In this section we will define equilibrium solutions (or equilibrium points) for autonomous differential equations, `y′ = f(y)`. We discuss classifying equilibrium solutions as asymptotically stable, unstable or semi-stable equilibrium solutions.

### Euler's Method
In this section we'll take a brief look at a fairly simple method for approximating solutions to differential equations. We derive the formulas used by Euler's Method and give a brief discussion of the errors in the approximations of the solutions.


## Second Order Differential Equations

In this chapter we will start looking at second order differential equations. We will concentrate mostly on constant coefficient second order differential equations. We will derive the solutions for homogeneous differential equations and we will use the methods of undetermined coefficients and variation of parameters to solve non homogeneous differential equations. In addition, we will discuss reduction of order, fundamentals of sets of solutions, Wronskian and mechanical vibrations.

### Basic Concepts
In this section give an in depth discussion on the process used to solve homogeneous, linear, second order differential equations, `ay′′+by′+cy = 0`. We derive the characteristic polynomial and discuss how the Principle of Superposition is used to get the general solution.

### Real Roots
In this section we discuss the solution to homogeneous, linear, second order differential equations, `ay′′ + by′ + cy = 0`, in which the roots of the characteristic polynomial, `ar² + br + c=0`, are real distinct roots.

### Complex Roots
In this section we discuss the solution to homogeneous, linear, second order differential equations, ay′′+by′+cy=0, in which the roots of the characteristic polynomial, ar²+br+c=0, are real distinct roots. We will also derive from the complex roots the standard solution that is typically used in this case that will not involve complex numbers.

### Repeated Roots
In this section we discuss the solution to homogeneous, linear, second order differential equations, ay′′+by′+cy=0, in which the roots of the characteristic polynomial, ar²+br+c=0, are repeated, i.e. double, roots. We will use reduction of order to derive the second solution needed to get a general solution in this case.

### Reduction of Order
In this section we will discuss reduction of order, the process used to derive the solution to the repeated roots case for homogeneous linear second order differential equations, in greater detail. This will be one of the few times in this chapter that non-constant coefficient differential equation will be looked at.

### Fundamental Sets of Solutions
In this section we will a look at some of the theory behind the solution to second order differential equations. We define fundamental sets of solutions and discuss how they can be used to get a general solution to a homogeneous second order differential equation. We will also define the Wronskian and show how it can be used to determine if a pair of solutions are a fundamental set of solutions.

### More on the Wronskian
In this section we will examine how the Wronskian, introduced in the previous section, can be used to determine if two functions are linearly independent or linearly dependent. We will also give and an alternate method for finding the Wronskian.

### Nonhomogeneous Differential Equations
In this section we will discuss the basics of solving nonhomogeneous differential equations. We define the complimentary and particular solution and give the form of the general solution to a nonhomogeneous differential equation.

### Undetermined Coefficients
In this section we introduce the method of undetermined coefficients to find particular solutions to nonhomogeneous differential equation. We work a wide variety of examples illustrating the many guidelines for making the initial guess of the form of the particular solution that is needed for the method.

### Variation of Parameters
In this section we introduce the method of variation of parameters to find particular solutions to nonhomogeneous differential equation. We give a detailed examination of the method as well as derive a formula that can be used to find particular solutions.

### Mechanical Vibrations
In this section we will examine mechanical vibrations. In particular we will model an object connected to a spring and moving up and down. We also allow for the introduction of a damper to the system and for general external forces to act on the object. Note as well that while we example mechanical vibrations in this section a simple change of notation (and corresponding change in what the quantities represent) can move this into almost any other engineering field.


## Laplace Transforms

In this chapter we introduce Laplace Transforms and how they are used to solve Initial Value Problems. With the introduction of Laplace Transforms we will now be able to solve some Initial Value Problems that we wouldn't be able to solve otherwise. We will solve differential equations that involve Heaviside and Dirac Delta functions. We will also give brief overview on using Laplace transforms to solve nonconstant coefficient differential equations. In addition, we will define the convolution integral and show how it can be used to take inverse transforms.

### The Definition
In this section we give the definition of the Laplace transform. We will also compute a couple Laplace transforms using the definition.

### Laplace Transforms
In this section we introduce the way we usually compute Laplace transforms that avoids needing to use the definition. We discuss the table of Laplace transforms used in this material and work a variety of examples illustrating the use of the table of Laplace transforms.

### Inverse Laplace Transforms
In this section we ask the opposite question from the previous section. In other words, given a Laplace transform, what function did we originally have? We again work a variety of examples illustrating how to use the table of Laplace transforms to do this as well as some of the manipulation of the given Laplace transform that is needed in order to use the table.

### Step Functions
In this section we introduce the step or Heaviside function. We illustrate how to write a piecewise function in terms of Heaviside functions. We also work a variety of examples showing how to take Laplace transforms and inverse Laplace transforms that involve Heaviside functions. We also derive the formulas for taking the Laplace transform of functions which involve Heaviside functions.

### Solving IVPs with Laplace Transforms
In this section we will examine how to use Laplace transforms to solve IVP's. The examples in this section are restricted to differential equations that could be solved without using Laplace transform. The advantage of starting out with this type of differential equation is that the work tends to be not as involved and we can always check our answers if we wish to.

### Nonconstant Coefficient IVPs
In this section we will give a brief overview of using Laplace transforms to solve some nonconstant coefficient IVP's. We do not work a great many examples in this section. We only work a couple to illustrate how the process works with Laplace transforms.

### IVPs with Step Functions
This is the section where the reason for using Laplace transforms really becomes apparent. We will use Laplace transforms to solve IVP's that contain Heaviside (or step) functions. Without Laplace transforms solving these would involve quite a bit of work. While we do work one of these examples without Laplace transforms, we do it only to show what would be involved if we did try to solve one of the examples without using Laplace transforms.

### Dirac Delta Function
In this section we introduce the Dirac Delta function and derive the Laplace transform of the Dirac Delta function. We work a couple of examples of solving differential equations involving Dirac Delta functions and unlike problems with Heaviside functions our only real option for this kind of differential equation is to use Laplace transforms. We also give a nice relationship between Heaviside and Dirac Delta functions.

### Convolution Integral
In this section we give a brief introduction to the convolution integral and how it can be used to take inverse Laplace transforms. We also illustrate its use in solving a differential equation in which the forcing function (i.e. the term without any y's in it) is not known.

### Table of Laplace Transforms
This section is the table of Laplace Transforms that we'll be using in the material. We give as wide a variety of Laplace transforms as possible including some that aren't often given in tables of Laplace transforms.


## Systems of Differential Equations

In this chapter we will look at solving systems of differential equations. We will restrict ourselves to systems of two linear differential equations for the purposes of the discussion but many of the techniques will extend to larger systems of linear differential equations. We also examine sketch phase planes/portraits for systems of two differential equations. In addition, we give brief discussions on using Laplace transforms to solve systems and some modeling that gives rise to systems of differential equations.

### Review: Systems of Equations
In this section we will give a review of the traditional starting point for a linear algebra class. We will use linear algebra techniques to solve a system of equations as well as give a couple of useful facts about the number of solutions that a system of equations can have.

### Review: Matrices and Vectors
In this section we will give a brief review of matrices and vectors. We will look at arithmetic involving matrices and vectors, finding the inverse of a matrix, computing the determinant of a matrix, linearly dependent/independent vectors and converting systems of equations into matrix form.

### Review: Eigenvalues and Eigenvectors
In this section we will introduce the concept of eigenvalues and eigenvectors of a matrix. We define the characteristic polynomial and show how it can be used to find the eigenvalues for a matrix. Once we have the eigenvalues for a matrix we also show how to find the corresponding eigenvalues for the matrix.

### Systems of Differential Equations
In this section we will look at some of the basics of systems of differential equations. We show how to convert a system of differential equations into matrix form. In addition, we show how to convert an nth order differential equation into a system of differential equations.

### Solutions to Systems
In this section we will a quick overview on how we solve systems of differential equations that are in matrix form. We also define the Wronskian for systems of differential equations and show how it can be used to determine if we have a general solution to the system of differential equations.

### Phase Plane
In this section we will give a brief introduction to the phase plane and phase portraits. We define the equilibrium solution/point for a homogeneous system of differential equations and how phase portraits can be used to determine the stability of the equilibrium solution. We also show the formal method of how phase portraits are constructed.

### Real Eigenvalues
In this section we will solve systems of two linear differential equations in which the eigenvalues are distinct real numbers. We will also show how to sketch phase portraits associated with real distinct eigenvalues (saddle points and nodes).

### Complex Eigenvalues
In this section we will solve systems of two linear differential equations in which the eigenvalues are complex numbers. This will include illustrating how to get a solution that does not involve complex numbers that we usually are after in these cases. We will also show how to sketch phase portraits associated with complex eigenvalues (centers and spirals).

### Repeated Eigenvalues
In this section we will solve systems of two linear differential equations in which the eigenvalues are real repeated (double in this case) numbers. This will include deriving a second linearly independent solution that we will need to form the general solution to the system. We will also show how to sketch phase portraits associated with real repeated eigenvalues (improper nodes).

### Nonhomogeneous Systems
In this section we will work quick examples illustrating the use of undetermined coefficients and variation of parameters to solve nonhomogeneous systems of differential equations. The method of undetermined coefficients will work pretty much as it does for nth order differential equations, while variation of parameters will need some extra derivation work to get a formula/process we can use on systems.

### Laplace Transforms
In this section we will work a quick example illustrating how Laplace transforms can be used to solve a system of two linear differential equations.

### Modeling
In this section we'll take a quick look at some extensions of some of the modeling we did in previous chapters that lead to systems of differential equations. In particular we will look at mixing problems in which we have two interconnected tanks of water, a predator-prey problem in which populations of both are taken into account and a mechanical vibration problem with two masses, connected with a spring and each connected to a wall with a spring.


## Series Solutions to Differential Equations

In this chapter we are going to take a quick look at how to represent the solution to a differential equation with a power series. We will also look at how to solve Euler's differential equation. In addition, we will do a quick review of power series and Taylor series to help with work in the chapter.

### Review: Power Series
In this section we give a brief review of some of the basics of power series. Included are discussions of using the Ratio Test to determine if a power series will converge, adding/subtracting power series, differentiating power series and index shifts for power series.

### Review: Taylor Series
In this section we give a quick reminder on how to construct the Taylor series for a function. Included are derivations for the Taylor series of eˣ and cos(x) about x=0 as well as showing how to write down the Taylor series for a polynomial.

### Series Solutions
In this section we define ordinary and singular points for a differential equation. We also show who to construct a series solution for a differential equation about an ordinary point. The method illustrated in this section is useful in solving, or at least getting an approximation of the solution, differential equations with coefficients that are not constant.

### Euler Equations
In this section we will discuss how to solve Euler's differential equation, ax2y′′+bxy′+cy=0. Note that while this does not involve a series solution it is included in the series solution chapter because it illustrates how to get a solution to at least one type of differential equation at a singular point.


## Higher Order Differential Equations

In this chapter we will look at extending many of the ideas of the previous chapters to differential equations with order higher that 2nd order. In a few cases this will simply mean working an example to illustrate that the process doesn't really change, but in most cases there are some issues to discuss.
Basic Concepts for nth

### Order Linear Equations
In this section we'll start the chapter off with a quick look at some of the basic ideas behind solving higher order linear differential equations. Included will be updated definitions/facts for the Principle of Superposition, linearly independent functions and the Wronskian.

### Linear Homogeneous Differential Equations
In this section we will extend the ideas behind solving 2nd order, linear, homogeneous differential equations to higher order. As we'll most of the process is identical with a few natural extensions to repeated real roots that occur more than twice. We will also need to discuss how to deal with repeated complex roots, which are now a possibility. In addition, we will see that the main difficulty in the higher order cases is simply finding all the roots of the characteristic polynomial.

### Undetermined Coefficients
In this section we work a quick example to illustrate that using undetermined coefficients on higher order differential equations is no different that when we used it on 2nd order differential equations with only one small natural extension.

### Variation of Parameters
In this section we will give a detailed discussion of the process for using variation of parameters for higher order differential equations. We will also develop a formula that can be used in these cases. We will also see that the work involved in using variation of parameters on higher order differential equations can be quite involved on occasion.

### Laplace Transforms
In this section we will work a quick example using Laplace transforms to solve a differential equation on a 3rd order differential equation just to say that we looked at one with order higher than 2nd. As we'll see, outside of needing a formula for the Laplace transform of y′′′, which we can get from the general formula, there is no real difference in how Laplace transforms are used for higher order differential equations.

### Systems of Differential Equations
In this section we'll take a quick look at extending the ideas we discussed for solving 2×2 systems of differential equations to systems of size 3×3. As we will see they are mostly just natural extensions of what we already know how to do. We will also make a couple of quick comments about 4×4 systems.

### Series Solutions
In this section we are going to work a quick example illustrating that the process of finding series solutions for higher order differential equations is pretty much the same as that used on 2nd order differential equations.

## Boundary Value Problems and Fourier Series

In this chapter we will introduce two topics that are integral to basic partial differential equations solution methods. The first topic, boundary value problems, occur in pretty much every partial differential equation. The second topic, Fourier series, is what makes one of the basic solution techniques work.

### Boundary Value Problems
In this section we'll define boundary conditions (as opposed to initial conditions which we should already be familiar with at this point) and the boundary value problem. We will also work a few examples illustrating some of the interesting differences in using boundary values instead of initial conditions in solving differential equations.

### Eigenvalues and Eigenfunctions
In this section we will define eigenvalues and eigenfunctions for boundary value problems. We will work quite a few examples illustrating how to find eigenvalues and eigenfunctions. In one example the best we will be able to do is estimate the eigenvalues as that is something that will happen on a fairly regular basis with these kinds of problems.

### Periodic Functions and Orthogonal Functions
In this section we will define periodic functions, orthogonal functions and mutually orthogonal functions. We will also work a couple of examples showing intervals on which cos(nπxL) and sin(nπxL) are mutually orthogonal. The results of these examples will be very useful for the rest of this chapter and most of the next chapter.

### Fourier Sine Series
In this section we define the Fourier Sine Series, i.e. representing a function with a series in the form ∞∑n=1 Bnsin(nπxL). We will also define the odd extension for a function and work several examples finding the Fourier Sine Series for a function.

### Fourier Cosine Series
In this section we define the Fourier Cosine Series, i.e. representing a function with a series in the form  ∞∑n=0 Ancos(nπxL). We will also define the even extension for a function and work several examples finding the Fourier Cosine Series for a function.

### Fourier Series
In this section we define the Fourier Series, i.e. representing a function with a series in the form  ∞∑n=0 Ancos(nπxL)+∞∑n=1 Bnsin(nπxL). We will also work several examples finding the Fourier Series for a function.

### Convergence of Fourier Series
In this section we will define piecewise smooth functions and the periodic extension of a function. In addition, we will give a variety of facts about just what a Fourier series will converge to and when we can expect the derivative or integral of a Fourier series to converge to the derivative or integral of the function it represents.


## Partial Differential Equations

In this chapter we introduce Separation of Variables one of the basic solution techniques for solving partial differential equations. Included are partial derivations for the Heat Equation and Wave Equation. In addition, we give solutions to examples for the heat equation, the wave equation and Laplace's equation.

### The Heat Equation
In this section we will do a partial derivation of the heat equation that can be solved to give the temperature in a one dimensional bar of length L. In addition, we give several possible boundary conditions that can be used in this situation. We also define the Laplacian in this section and give a version of the heat equation for two or three dimensional situations.

### The Wave Equation
In this section we do a partial derivation of the wave equation which can be used to find the one dimensional displacement of a vibrating string. In addition, we also give the two and three dimensional version of the wave equation.

### Terminology
In this section we take a quick look at some of the terminology we will be using in the rest of this chapter. In particular we will define a linear operator, a linear partial differential equation and a homogeneous partial differential equation. We also give a quick reminder of the Principle of Superposition.

### Separation of Variables
In this section show how the method of Separation of Variables can be applied to a partial differential equation to reduce the partial differential equation down to two ordinary differential equations. We apply the method to several partial differential equations. We do not, however, go any farther in the solution process for the partial differential equations. That will be done in later sections. The point of this section is only to illustrate how the method works.

### Solving the Heat Equation
In this section we go through the complete separation of variables process, including solving the two ordinary differential equations the process generates. We will do this by solving the heat equation with three different sets of boundary conditions. Included is an example solving the heat equation on a bar of length L but instead on a thin circular ring.

### Heat Equation with Non-Zero Temperature Boundaries
In this section we take a quick look at solving the heat equation in which the boundary conditions are fixed, non-zero temperature. Note that this is in contrast to the previous section when we generally required the boundary conditions to be both fixed and zero.

### Laplace's Equation
In this section we discuss solving Laplace's equation. As we will see this is exactly the equation we would need to solve if we were looking to find the equilibrium solution (i.e. time independent) for the two dimensional heat equation with no sources. We will also convert Laplace's equation to polar coordinates and solve it on a disk of radius a.

### Vibrating String
In this section we solve the one dimensional wave equation to get the displacement of a vibrating string.

### Summary of Separation of Variables
In this final section we give a quick summary of the method of separation of variables for solving partial differential equations.
