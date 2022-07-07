const std = @import("std");

pub fn main() void {
    const ziggy = "stardust";

    const d: u8 = ziggy[4];

    const laugh = "ha " ** 3;

    const major = "Major";
    const tom = "Tom";
    const major_tom = major ++ tom;

    std.debug.print("d={u} {s}{s}\n", .{ d, laugh, major_tom });
    // Keen eyes will notice that we've put 'u' and 's' inside the '{}'
    // placeholders in the format string above. This tells the
    // print() function to format the values as a UTF-8 character and
    // UTF-8 strings respectively. If we didn't do this, we'd see '100',
    // which is the decimal number corresponding with the 'd' character
    // in UTF-8. (And an error in the case of the strings.)
    //
    // While we're on this subject, 'c' (ASCII encoded character)
    // would work in place for 'u' because the first 128 characters
    // of UTF-8 are the same as ASCII!
}
