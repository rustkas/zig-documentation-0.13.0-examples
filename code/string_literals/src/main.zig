const print = @import("std").debug.print;
const mem = @import("std").mem; // will be used to compare bytes

pub fn main() void {
    const bytes = "hello";
    print("Type of \"hello\" is {}\n", .{@TypeOf(bytes)}); // *const [5:0]u8
    print("Length of \"hello\" is {d}\n", .{bytes.len}); // 5
    print("Second byte array value of \"hello\" is {c}\n", .{bytes[1]}); // 'e'
    print("{d}\n", .{bytes[5]}); // 0
    print("'e' == '\x65' is {}\n", .{'e' == '\x65'}); // true
    print("\u{1f4a9} {d}\n", .{'\u{1f4a9}'}); // 128169
    const poop_emoji: []const u8 = "\u{1f4a9}";
    print("{s} {d}\n", .{ poop_emoji, poop_emoji[0] });
    print("💯 = {d}\n", .{'💯'}); // 128175
    print("⚡ = {u}\n", .{'⚡'});
    print("\"hello\" == \"h\\x65llo\" {}\n", .{mem.eql(u8, "hello", "h\x65llo")}); // true
    print("{}\n", .{mem.eql(u8, "💯", "\xf0\x9f\x92\xaf")}); // also true
    const invalid_utf8 = "\xff\xfe"; // non-UTF-8 strings are possible with \xNN notation.
    print("0x{x}\n", .{invalid_utf8[1]}); // indexing them returns individual bytes...
    print("0x{x}\n", .{"💯"[1]}); // ...as does indexing part-way through non-ASCII characters
}
