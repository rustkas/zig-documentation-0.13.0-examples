const std = @import("std");
const print = std.debug.print;

fn divide(a: i32, b: i32) !i32 {
    if (b == 0) return error.DivisionByZero;
    //  return @divTrunc(a, b);
    return @divFloor(a, b);
    // return @divExact(a, b);
}

pub fn main() !void {
    const result1 = try divide(10, 6);
    print("Result: {}\n", .{result1});

    const a: i32 = 2147483647; // максимальное значение i32
    const b: i32 = 1;
    const result2 = a +% b; // результат будет -2147483648 (обёртка)
    print("Result: {}\n", .{result2});

    const a3: i32 = 2147483647;
    const b3: i32 = 1;
    const result3 = a3 +| b3; // результат будет 2147483647 (насыщение)
    print("Result: {}\n", .{result3});
}
