pub const Typename = struct {
    pub fn get(object: anytype) object {
        return @typeName(@TypeOf(object));
    }
};
