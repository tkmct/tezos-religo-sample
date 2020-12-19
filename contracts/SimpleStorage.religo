let main = ((new_value, stored_value) : (int, int)) : (list (operation), int) => {
  let stored_value = new_value;
  (([] : list (operation)), stored_value);
}
