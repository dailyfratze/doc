load database
     from      mysql://root:root@localhost/dailyfratze_prod
     into postgresql://dailyfratze_root:pwd_root@localhost:5432/dailyfratze

 WITH include drop, create tables, no truncate,
      create indexes, reset sequences, foreign keys

  SET maintenance_work_mem to '128MB', work_mem to '12MB', search_path to 'dailyfratze_prod'

 AFTER LOAD DO
 $$ ALTER SCHEMA dailyfratze_prod RENAME TO imp; $$;