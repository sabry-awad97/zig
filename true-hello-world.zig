const std = @import("std");

// Take note that this main() definition now returns "!void" rather
// than just "void". Since there's no specific error type, this means
// that Zig will infer the error type.
pub fn main() !void {
    // We get a Writer for Standard Out so we can print() to it.
    const stdout = std.io.getStdOut().writer();

    // Unlike std.debug.print(), the Standard Out writer can fail
    // with an error. We don't care _what_ the error is, we want
    // to be able to pass it up as a return value of main().
    try stdout.print("Hello world!\n", .{});
}
