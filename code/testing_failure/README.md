`zig init`

`zig test src/main.zig`

### Skip test
`zig test src/testing_skip.zig`

`zig test --test-filter "expect this to succeed" src/main.zig`

`zig test --test-filter "expect this to fail" src/main.zig`