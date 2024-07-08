const std = @import("std");
const print = std.debug.print;
const math = std.math;

pub fn main() void {
    {
        var y: i32 = 5678;

        y += 1;

        print("{d}", .{y});
    }

}
