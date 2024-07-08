const std = @import("std");
const expect = std.testing.expect;

fn foo() i32 {
    const S = struct {
        var x: i32 = 1234;
    };
    S.x += 1;
    return S.x;
}

test "static local variable" {
    try expect(foo() == 1235);
    try expect(foo() == 1236);
}
