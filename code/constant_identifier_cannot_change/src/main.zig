const x = 1234;

fn foo() void {
    // It works at file scope as well as inside functions.
    const y = 5678;

    // Once assigned, an identifier cannot be changed.
    // y += 1;
    y == 1;
    foo2();
}

fn foo2() void {}

pub fn main() void {
    foo();
}
