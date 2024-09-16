contract A {
    uint transient x;
    int y;
}

contract C is A {
    uint w;
    int transient z;

    function f() public returns (uint, int, uint, int) {
        x += 1;
        y += 1;
        w += 2;
        z += 2;

        return (x, y, w, z);
    }
}
// ====
// EVMVersion: >=cancun
// ----
// f() -> 1, 1, 2, 2
