//     while (condition) : (continue expression) {
//         ...
//     }

const std = @import("std");

pub fn main() void {
    var n: u32 = 2;

    while (n < 513) : (n *= 2) {
        // Print the current number
        std.debug.print("{} ", .{n});
    }

    std.debug.print("n={}\n", .{n});
}
