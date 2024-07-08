const std = @import("std");
const print = @import("std").debug.print;

const decimal_int = 98222;
const hex_int = 0xff;
const another_hex_int = 0xFF;
const octal_int = 0o755;
const binary_int = 0b11110000;

// underscores may be placed between two digits as a visual separator
const one_billion = 1_000_000_000;
const binary_mask = 0b1_1111_1111;
const permissions = 0o7_5_5;
const big_address = 0xFF80_0000_0000_0000;

pub fn main() !void {
    print("decimal_int: {}\n", .{decimal_int});
    print("hex_int: {}\n", .{hex_int});
    print("another_hex_int: {}\n", .{another_hex_int});
    print("octal_int: {}\n", .{octal_int});
    print("binary_int: {}\n", .{binary_int});
    print("one_billion: {}\n", .{one_billion});
    print("binary_mask: {}\n", .{binary_mask});
    print("permissions: {}\n", .{permissions});
    print("big_address: {}\n", .{big_address});
}
