## RUST GENERAL
# Contents
## Reference Doc
 - [α Installation](#11-installation)
 - [β Creating a Project Directory](#β-creating-a-project-directory)
 - [γ Cargo Basics](#γ-cargo-basics)

___
## RUST, The Book
## Getting Started
 - [1.1 Installation](#11-installation) 
 - [1.2 Hello, World!](#12-hello-world)
 - [1.3 Hello, Cargo!](#13-hello-cargo)


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