# FT_PRINTF

This is my implementation of the ft_printf project for the Cursus 42 program. Ft_printf is a function that replicates the functionality of the standard printf function, allowing for formatted output of data.

![image](https://user-images.githubusercontent.com/113030191/226332874-3e2b70a7-f3cb-47e3-9d99-fbfbeaf9759b.png)

## Mandatory Part

<p align="center">
<img width="617" alt="image" src="https://user-images.githubusercontent.com/113030191/226333057-dbb52660-e98f-460e-afdc-68696c993813.png">
</p>

The ft_printf function takes in a format string and a variable number of arguments, and prints formatted output based on the format string. The format string can contain conversion specifiers, which start with the % character and are followed by a letter that specifies the type of conversion.

#### The conversion specifiers supported by ft_printf are:

- **%c**: prints a character
- **%s**: prints a string
- **%p**: prints a pointer address
- **%d**: prints a decimal integer
- **%i**: prints a decimal integer
- **%u**: prints an unsigned decimal integer
- **%x**: prints a hexadecimal integer (lowercase)
- **%X**: prints a hexadecimal integer (uppercase)

In addition to these conversion specifiers, the format string can also contain flags, width, precision, and length modifiers.

## Usage

To compile the libft library, run the following command: **make**.

This will compile the library as **libftprintf.a**, which can be linked with other C programs.

To use the library functions in a program, include the **libftprintf.h** header file and link with the **libftprintf** library

### Links to my other projects at 42:

- **[Main Page](../../../Clocon)**
- **[libft](../../../libft-42)**
- **[get_next_line](../../../get_next_line-42)**
- **[pipex](../../../pipex-42)**
- **[push_swap](../../../push_swap-42)**
- **[so_long](../../../so_long-42)**
- **[philosophers](../../../philosophers-42)**
