type migrations = {
  owner: address,
  last_completed_migration: int,
};

let main = ((completed_migration, migrations): (int, migrations)) : (list(operation), migrations) => {
  let migrations : migrations = if (sender != migrations.owner) {
    migrations;
 } else {
    {
      ...migrations,
      last_completed_migration: completed_migration
    };
  };

  (([] : list (operation)), migrations);
}
