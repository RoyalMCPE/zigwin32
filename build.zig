const builtin = @import("builtin");
const std = @import("std");

const PACKAGE_NAME = "zigwin32";

pub fn build(b: *std.Build) void {
    _ = b.addModule(PACKAGE_NAME, .{
        .source_file = .{ .path = "win32.zig" },
    });
}
