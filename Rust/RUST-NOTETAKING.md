## RUST GENERAL
# Contents
## Reference Doc
 - [α Installation](#11-installation)
 - [β Creating a Project Directory](#β-creating-a-project-directory)
 - [γ Cargo Basics](#γ-cargo-basics)

___
## RUST, The Book
 - [The Book](https://doc.rust-lang.org/book/title-page.html)

## Getting Started
 - [1.1 Installation](#11-installation) 
 - [1.2 Hello, World!](#12-hello-world)
 - [1.3 Hello, Cargo!](#13-hello-cargo)

## Programming a Guessing Game
 - [2.0 Programming a Guessing Game](#20-programming-a-guessing-game)

## β Creating a Project Directory
[Return](#reference-doc)

`mkdir ~/projects`
`cd ~/projects`
`mkdir <directory_name>`
`cd <directory_name>`

make a new source file and call it main.rs (rust documentation prefers snake_case over camelCase)
`echo “<Your text content here if any>” > main.rs`

*note, `echo -e ""` (-e means "enable backslash escape interpretation")*

## γ Cargo basics
[Return](#reference-doc)

- create a project using `cargo new`.
- build a project using `cargo build`.
- build and run a project in one step using `cargo run`.
- check for errors w/o producing exe/elf using `cargo check`.
- by default Cargo stores builds in the target/debug directory.
___
___
___
**RUST, THE BOOK**

## 1.1 Installation
[Return](#getting-started)

a *linker* is needed (a program Rust uses to join its compiled outputs into one file). Likely already have one. If linker errors:
C Compiler Install (GCC or Clang, according to distribution’s documentation.)

rust Linux installation
`curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh`

To configure your current shell, you need to source
the corresponding env file under $HOME/.cargo.
`. "$HOME/.cargo/env"`

verify installation is successful
`rustc --version`

(if unsuccessful, check that Rust is in your %PATH% system variable)
`echo $PATH`

update Rust
`rustup update`

## 1.2 Hello World!
[Return](#getting-started)

create a project directory
`mkdir ~/projects`
`cd ~/projects`
`mkdir hello_world`
`cd hello_world`

create main.rs
`echo -e 'fn main() {\n\t\tprintln!("Hello, world!");\n\t\t}' > main.rs`

compile
`rustc main.rs`

run
`./main`

*note, Using `!` means you’re calling a macro instead of a normal function. `println!` calls a Rust macro. `println` calls a Rust function. Macros don’t always follow the same rules as functions.*

*note, most lines of Rust code end with a semicolon.*

move file for Codespace
`sudo mv /home/codespace/projects/hello_world /workspaces/FreeCodeCamp-Certified-Full-Stack-Developer-Curriculum-Projects/Rust`

## 1.3 Hello, Cargo!
[Return](#getting-started)

building and running a Cargo project

cd into directory
`cargo new hello_cargo`

cd into hello_cargo

open Cargo.toml
TOML (Tom’s Obvious, Minimal Language) is Cargo’s config format.

*note, a Cargo.toml file can be created with `cargo init`*

*note, Cargo expects your source files to live inside the src directory. The top-level project directory is just for README files, license information, config files, and anything else not related to your code.*

build executable
`cargo build`

default build is a debug build
`./target/debug/hello_cargo`

to build and run in a single command
`cargo run`

to check compile without producing an executable
`cargo check`

## 2.0 Programming a Guessing Game
[Return](#programming-a-guessing-game)

vocab:\
**:: -** An associated function is a function that’s implemented on a type\
    - **::new -** line in `String::new` indicates that new is an associated function of the String type\
**std::io -** provides several useful features, including the ability to accept user input\
    - **std: -** the rust standard library\
    - **:io -** input/output\
**fn -** declares a new function\
    - **() -** contains the function's parameters\
    - **{} -** contains the body of the function\
**let mut *n* = -** creates a mutable variable, *n*\
    - **mut -** mutable variables can be altered\
**&-** a reference. a way to let multiple parts of your code access one piece of data without needing to copy that data into memory multiple times. references are immutable by default\
**.expect-** a method for handling failure\
**read_line-** returns a *Result* value, an enumeration or enum which is a type that can be in one of multiple possible states. each possible state is called a variant.\
    - returns results `Ok` or `Err`. If expect returns Err, the program is crashed and returns error message.
**{}-** in println, `{}` functions as a placeholder. add comma seperated arguments to fill the placeholders in order\
***crate*-** a collection of Rust source code files\
**rand = "0.8.5"-** Before we can write code that uses rand, we need to modify the Cargo.toml file to include the rand crate as a dependency\
*Crates.io is where people in the Rust ecosystem post their open source Rust projects for others to use.*
**arm-** arm consists of a pattern to match against, and the code that should be run if the value given to match fits that arm’s pattern\