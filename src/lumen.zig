// TODO: This will be the main library file for the project.
// It will contain all the necessary @imports
const std = @import("std");

const builtin = std.builtin;
const debug = std.debug;
const heap = std.heap;
const io = std.io;
const math = std.math;
const mem = std.mem;
const meta = std.meta;
const process = std.process;
const testing = std.testing;

test "reflect" {
    testing.refAllDecls(@This());
}

pub const Registry = @import("registry/registry.zig").Registry;
