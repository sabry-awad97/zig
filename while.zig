const std = @import("std");

pub fn main() void {
    var n: u32 = 2;

    while (n < 513) {
        // Print the current number
        std.debug.print("{} ", .{n});
        n *= 2;
    }

    // this will print "n=1024"
    std.debug.print("n={}\n", .{n});
}
