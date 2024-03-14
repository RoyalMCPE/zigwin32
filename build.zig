const builtin = @import("builtin");
const std = @import("std");

const PACKAGE_NAME = "zigwin32";

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimization = b.standardOptimizeOption(.{});

    const zigwin32 = b.dependency(PACKAGE_NAME, .{
        .target = target,
        .optimization = optimization,
    });

    b.installArtifact(zigwin32);
}
