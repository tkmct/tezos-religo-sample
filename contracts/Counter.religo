// variant defining pseudo multi-entrypoint actions
type action =
| Increment (int)
| Decrement (int);

let add = ((a, b): (int, int)) : int  => a + b;
let subtract = ((a, b): (int, int)) : int  => a - b;

// real entrypoint that re-routes the flow based on the action provided
let main = ((p, s) : (action, int)) : (list(operation), int) => {
  let storage = switch (p) {
    | Increment (n) => add (s, n)
    | Decrement (n) => subtract (s, n)
  };

  (([] : list (operation)), storage);
};