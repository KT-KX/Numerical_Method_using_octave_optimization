
---

# Numerical Methods Project: Octave Implementation

## Overview

This project is a collection of numerical methods implemented in Octave, designed to solve various mathematical and engineering problems. It serves as a practical supplement to the **Numerical Methods** course, showcasing concepts like root-finding, interpolation, integration, and differential equations.

## Features

- **Root-Finding Methods**: 
  - Bisection Method
  - Newton-Raphson Method
  - Secant Method
- **Interpolation**: 
  - Lagrange Polynomials
  - Newton's Divided Differences
- **Numerical Integration**: 
  - Trapezoidal Rule
  - Simpson’s Rule
- **Solving ODEs**: 
  - Euler’s Method
  - Runge-Kutta Methods

## Requirements

- **Octave Version**: 6.2.0 or later
- Dependencies: None (Uses built-in Octave functions)

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/numerical-methods-octave.git
   ```
2. Navigate to the project directory:
   ```bash
   cd numerical-methods-octave
   ```
3. Run any script to see the methods in action:
   ```bash
   octave bisection_method.m
   ```

## How to Use

Each script is self-contained and demonstrates the algorithm. Input parameters can be modified within the script, and results will be displayed in the console.

## Example

For the **Bisection Method**, edit the `bisection_method.m` file to define the function and initial guesses:
```octave
f = @(x) x^3 - 4*x - 9;
a = 2; 
b = 3; 
tolerance = 1e-6;
```
Run the script to find the root of the function.

## Contributing

Contributions are welcome! If you have additional numerical methods or improvements, feel free to open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

Feel free to adjust based on the actual methods included in your project!
