const std = @import("std");
pub fn main() !void {
    std.debug.print("{s}\n", .{@embedFile(@src().file)});
}
