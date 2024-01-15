const lumen = @import("../src/lumen.zig");
const std = @import("std");

const Vehicle = struct {
    allocator: std.mem.Allocator,
    name: []const u8,
    wheels: u8,
    pub fn init(allocator: std.mem.Allocator, name: []const u8, wheels: u8) !Vehicle {
        return Vehicle{
            .allocator = allocator,
            .name = allocator.dupe(u8, name),
            .wheels = wheels,
        };
    }
    pub fn deinit(self: *Vehicle) void {
        std.debug.assert(self.allocator != null);
        self.allocator.free(self.name);
    }
};

pub fn main() !void {}
