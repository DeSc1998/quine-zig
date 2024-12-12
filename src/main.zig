const std = @import("std");

pub fn main() !void {
    const stdout_file = std.io.getStdOut().writer();
    var bw = std.io.bufferedWriter(stdout_file);
    const stdout = bw.writer();

    const content = @embedFile("./main.zig");
    try stdout.print("{s}\n", .{content});

    try bw.flush();
}
