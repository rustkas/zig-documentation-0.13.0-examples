const print = std.debug.print;
const std = @import("std");

pub fn main() void {
    // Signed integers
    const signed_8: i8 = -128;
    const signed_16: i16 = -32768;
    const signed_32: i32 = -2147483648;
    const signed_64: i64 = -9223372036854775808;
    const signed_128: i128 = -170141183460469231731687303715884105728;

    // Unsigned integers
    const unsigned_8: u8 = 255;
    const unsigned_16: u16 = 65535;
    const unsigned_32: u32 = 4294967295;
    const unsigned_64: u64 = 18446744073709551615;
    const unsigned_128: u128 = 340282366920938463463374607431768211455;

    // Pointer-sized integers
    const signed_ptr: isize = -1;
    const unsigned_ptr: usize = 1;

    // C ABI compatibility integers
    const c_char_value: c_char = 'A';
    const c_short_value: c_short = -32768;
    const c_ushort_value: c_ushort = 65535;
    const c_int_value: c_int = -2147483648;
    const c_uint_value: c_uint = 4294967295;
    const c_long_value: c_long = -2147483648; // Assuming c_long is 32-bit or 64-bit on your platform
    const c_ulong_value: c_ulong = 4294967295; // Assuming c_ulong is 32-bit or 64-bit on your platform
    const c_longlong_value: c_longlong = -9223372036854775807 - 1; // Minimum value for c_longlong
    const c_ulonglong_value: c_ulonglong = 18446744073709551615;
    const c_longdouble_value: c_longdouble = 1e100;

    // Floating point numbers
    const float_16: f16 = 1.0;
    const float_32: f32 = 3.14159;
    const float_64: f64 = 2.718281828459045;
    const float_80: f80 = 2.7182818284590452353602874713527;
    const float_128: f128 = 1.61803398874989484820458683436563811772030917980576;

    // Boolean
    const boolean: bool = true;

    // Anyopaque
    var signed_32_value = signed_32;
    const some_pointer: *i32 = &signed_32_value;
    const anyopaque_value: *anyopaque = @as(*anyopaque, some_pointer);

    // Void
    const void_value: void = {};

    // Noreturn
    // Note: noreturn type cannot be demonstrated in a variable, but in a function that doesn't return

    // Type
    const type_value: type = i32;

    // Anyerror
    const anyerror_value: anyerror = error.OutOfMemory;

    // Comptime values
    const comptime_int_value: comptime_int = 42;
    const comptime_float_value: comptime_float = 3.14;

    // Printing all values to avoid unused constant warnings
    print("signed_8: {}\n", .{signed_8});
    print("signed_16: {}\n", .{signed_16});
    print("signed_32: {}\n", .{signed_32});
    print("signed_64: {}\n", .{signed_64});
    print("signed_128: {}\n", .{signed_128});
    print("unsigned_8: {}\n", .{unsigned_8});
    print("unsigned_16: {}\n", .{unsigned_16});
    print("unsigned_32: {}\n", .{unsigned_32});
    print("unsigned_64: {}\n", .{unsigned_64});
    print("unsigned_128: {}\n", .{unsigned_128});
    print("signed_ptr: {}\n", .{signed_ptr});
    print("unsigned_ptr: {}\n", .{unsigned_ptr});
    print("c_char_value: {}\n", .{c_char_value});
    print("c_short_value: {}\n", .{c_short_value});
    print("c_ushort_value: {}\n", .{c_ushort_value});
    print("c_int_value: {}\n", .{c_int_value});
    print("c_uint_value: {}\n", .{c_uint_value});
    print("c_long_value: {}\n", .{c_long_value});
    print("c_ulong_value: {}\n", .{c_ulong_value});
    print("c_longlong_value: {}\n", .{c_longlong_value});
    print("c_ulonglong_value: {}\n", .{c_ulonglong_value});
    print("c_longdouble_value: {}\n", .{c_longdouble_value});
    print("float_16: {}\n", .{float_16});
    print("float_32: {}\n", .{float_32});
    print("float_64: {}\n", .{float_64});
    print("float_80: {}\n", .{float_80});
    print("float_128: {}\n", .{float_128});
    print("boolean: {}\n", .{boolean});
    print("anyopaque_value: {any}\n", .{anyopaque_value});
    print("void_value: {}\n", .{void_value});
    print("type_value: {}\n", .{@TypeOf(type_value)});
    print("anyerror_value: {s}\n", .{@errorName(anyerror_value)});
    print("comptime_int_value: {}\n", .{comptime_int_value});
    print("comptime_float_value: {}\n", .{comptime_float_value});
}
