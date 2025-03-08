**RUST GENERAL**
___
**INSTALL**

a *linker* is needed (a program Rust uses to join its compiled outputs into one file).Likely already have one. If linker errors:
C Compiler Install (GCC or Clang, according to distribution’s documentation.)
`build-essential`

rust Linux installation
`curl --proto '=https' --tlsv1.2 https`

verify installation is successful
`rustc --version`

(if unsuccessful, check that Rust is in your %PATH% system variable)
`echo $PATH`

update Rust
`rustup update`
___
**CREATING A PROJECT DIRECTORY**

`mkdir ~/projects`
`cd ~/projects`
`mkdir <directory_name>`
`cd <directory_name>`

make a new source file and call it main.rs (rust documentation prefers snake_case over camelCase)
`echo “<Your text content here if any>” > main.rs`

*note, `echo -e ""` (-e means "enable backslash escape interpretation")*
___
**HELLO WORLD**

create a project directory
`mkdir ~/projects`
`cd ~/projects`
`mkdir hello_world`
`cd hello_world`

create main.rs
`echo -e "fn main() {\n\t\tprintln!("Hello, world!");\n\t\t}" > main.rs`

compile
`rustc main.rs`

run
`./main`

*Note, Using `!` means you’re calling a macro instead of a normal function. `println!` calls a Rust macro. `println` calls a Rust function. Macros don’t always follow the same rules as functions.*

*Note, most lines of Rust code end with a semicolon.*
___
