/*******************************************************************************
 * Database character set: utf8
 * Server version: 5.7
 * Server version build: 5.7.19-log
 ******************************************************************************/

/*******************************************************************************
 * Selected metadata objects
 * -------------------------
 * Extracted at 2/28/2021 6:10:34 PM
 ******************************************************************************/

/*******************************************************************************
 * Tables
 * ------
 * Extracted at 2/28/2021 6:10:34 PM
 ******************************************************************************/

CREATE TABLE credentials (
  credential_id SmallInt(5) NOT NULL AUTO_INCREMENT,
  username      NVarChar(45) COLLATE utf8_general_ci NOT NULL,
  passwordhash  NVarChar(45) COLLATE utf8_general_ci NOT NULL,
  user_id       SmallInt(5) NOT NULL, 
  PRIMARY KEY (
      credential_id
  )
) ENGINE=InnoDB AUTO_INCREMENT=32 ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE credentials COMMENT = '';
CREATE TABLE projects (
  project_id   SmallInt(5) NOT NULL AUTO_INCREMENT,
  project_name NVarChar(45) COLLATE utf8_general_ci NOT NULL, 
  PRIMARY KEY (
      project_id
  )
) ENGINE=InnoDB AUTO_INCREMENT=19 ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE projects COMMENT = '';
CREATE TABLE projects_users_references_lists (
  user_id      SmallInt(5) NOT NULL,
  project_id   SmallInt(5) NOT NULL,
  reference_id SmallInt(5) NOT NULL, 
  PRIMARY KEY (
      user_id, 
      project_id, 
      reference_id
  )
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE projects_users_references_lists COMMENT = '';
CREATE TABLE project_users (
  project_id SmallInt(5) NOT NULL,
  user_id    SmallInt(5) NOT NULL, 
  PRIMARY KEY (
      project_id, 
      user_id
  )
) ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE project_users COMMENT = '';
CREATE TABLE referenceslist (
  reference_id          SmallInt(5) NOT NULL AUTO_INCREMENT,
  reftype_id            SmallInt(5) NOT NULL,
  title                 NVarChar(255) COLLATE utf8_general_ci NOT NULL,
  abstract              NVarChar(5000) COLLATE utf8_general_ci,
  external_id           NVarChar(45) COLLATE utf8_general_ci,
  address               NVarChar(45) COLLATE utf8_general_ci,
  link                  NVarChar(45) COLLATE utf8_general_ci,
  authors               NVarChar(1000) COLLATE utf8_general_ci,
  availability          NVarChar(45) COLLATE utf8_general_ci,
  catagories            NVarChar(45) COLLATE utf8_general_ci,
  country               NVarChar(45) COLLATE utf8_general_ci,
  editions              NVarChar(100) COLLATE utf8_general_ci,
  editors               NVarChar(100) COLLATE utf8_general_ci,
  page_end              SmallInt(5),
  page_start            SmallInt(5),
  ISSN_ISBN             NVarChar(100) COLLATE utf8_general_ci,
  keyword               NVarChar(1000) COLLATE utf8_general_ci,
  journal               NVarChar(255) COLLATE utf8_general_ci,
  lpublication_language NVarChar(45) COLLATE utf8_general_ci,
  notes                 NVarChar(5000) COLLATE utf8_general_ci,
  issue                 SmallInt(5),
  publication_year      SmallInt(5),
  publication_month     SmallInt(5),
  publication_day       SmallInt(5),
  publication_place     NVarChar(45) COLLATE utf8_general_ci,
  publisher             NVarChar(100) COLLATE utf8_general_ci,
  URL                   NVarChar(255) COLLATE utf8_general_ci,
  volume                SmallInt(5),
  type_of_medium        NVarChar(45) COLLATE utf8_general_ci,
  publication_date      Date,
  secondary_authors     NVarChar(1000) COLLATE utf8_general_ci,
  tertiary_authors      NVarChar(1000) COLLATE utf8_general_ci,
  misc1                 NVarChar(1000) COLLATE utf8_general_ci,
  misc2                 NVarChar(1000) COLLATE utf8_general_ci, 
  PRIMARY KEY (
      reference_id
  )
) ENGINE=InnoDB AUTO_INCREMENT=1 ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE referenceslist COMMENT = '';
CREATE TABLE reftypes (
  reftype_id SmallInt(5) NOT NULL AUTO_INCREMENT,
  reftype    NVarChar(45) COLLATE utf8_general_ci NOT NULL, 
  PRIMARY KEY (
      reftype_id
  )
) ENGINE=InnoDB AUTO_INCREMENT=79 ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE reftypes COMMENT = '';
CREATE TABLE tokens (
  token_id          SmallInt(5) NOT NULL AUTO_INCREMENT,
  token             NVarChar(255) COLLATE utf8_general_ci,
  creation_dateTime DateTime,
  user_id           SmallInt(5), 
  PRIMARY KEY (
      token_id
  )
) ENGINE=InnoDB AUTO_INCREMENT=4 ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE tokens COMMENT = 'Check if the username and password are in the credentials table. It it is the case pass ist set to 1 if not to 0.
In case of success, the user_id is returned';
CREATE TABLE users (
  user_id     SmallInt(5) NOT NULL AUTO_INCREMENT,
  first_name  NVarChar(45) COLLATE utf8_general_ci NOT NULL,
  last_name   NVarChar(45) COLLATE utf8_general_ci NOT NULL,
  email       NVarChar(45) COLLATE utf8_general_ci NOT NULL,
  usertype_id SmallInt(5), 
  PRIMARY KEY (
      user_id
  )
) ENGINE=InnoDB AUTO_INCREMENT=41 ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE users COMMENT = '';
CREATE TABLE usertypes (
  usertypes_id  SmallInt(5) NOT NULL AUTO_INCREMENT,
  usertype_name NVarChar(45) COLLATE utf8_general_ci NOT NULL, 
  PRIMARY KEY (
      usertypes_id
  )
) ENGINE=InnoDB AUTO_INCREMENT=3 ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE usertypes COMMENT = '';
/*******************************************************************************
 * Tables
 * ------
 * Extracted at 2/28/2021 6:10:35 PM
 ******************************************************************************/

ALTER TABLE credentials
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE projects
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE projects_users_references_lists
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE project_users
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE referenceslist
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE reftypes
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE tokens
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE users
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
ALTER TABLE usertypes
ENGINE=InnoDB ROW_FORMAT=DYNAMIC DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
/*******************************************************************************
 * Views
 * -----
 * Extracted at 2/28/2021 6:10:35 PM
 ******************************************************************************/

CREATE VIEW users_list
(
 first_name,
 last_name,
 email_address,
 usertype_name
) AS
select `citeandref`.`users`.`first_name` AS `first_name`,`citeandref`.`users`.`last_name` AS `last_name`,`citeandref`.`users`.`email` AS `email_address`,`citeandref`.`usertypes`.`usertype_name` AS `usertype_name` from (`citeandref`.`users` join `citeandref`.`usertypes` on((`citeandref`.`usertypes`.`usertypes_id` = `citeandref`.`users`.`usertype_id`)));
CREATE VIEW projects_list
(
 project_name
) AS
select `citeandref`.`projects`.`project_name` AS `project_name` from `citeandref`.`projects`;
/*******************************************************************************
 * Foreign Key Constraints
 * -----------------------
 * Extracted at 2/28/2021 6:10:35 PM
 ******************************************************************************/

ALTER TABLE credentials ADD CONSTRAINT fk_credentials_users FOREIGN KEY (user_id)
  REFERENCES users (user_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE projects_users_references_lists ADD CONSTRAINT fk_projects_users_references_lists_projects8 FOREIGN KEY (project_id)
  REFERENCES projects (project_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE projects_users_references_lists ADD CONSTRAINT fk_projects_users_references_lists_referenceslist7 FOREIGN KEY (reference_id)
  REFERENCES referenceslist (reference_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE projects_users_references_lists ADD CONSTRAINT fk_projects_users_references_lists_users9 FOREIGN KEY (user_id)
  REFERENCES users (user_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE project_users ADD CONSTRAINT fk_project_users_projects1 FOREIGN KEY (project_id)
  REFERENCES projects (project_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE project_users ADD CONSTRAINT fk_project_users_users2 FOREIGN KEY (user_id)
  REFERENCES users (user_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE referenceslist ADD CONSTRAINT fk_referenceslist_reftypes3 FOREIGN KEY (reftype_id)
  REFERENCES reftypes (reftype_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE tokens ADD CONSTRAINT fk_tokens_users6 FOREIGN KEY (user_id)
  REFERENCES users (user_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

ALTER TABLE users ADD CONSTRAINT fk_users_usertypes6 FOREIGN KEY (usertype_id)
  REFERENCES usertypes (usertypes_id)
  ON DELETE NO ACTION 
  ON UPDATE NO ACTION;

/*******************************************************************************
 * Stored Procedures
 * -----------------
 * Extracted at 2/28/2021 6:10:35 PM
 ******************************************************************************/

CREATE PROCEDURE check_email_in_users(email_ext VarChar(45), OUT pass_ext SmallInt(5), OUT user_id_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
  IF EXISTS(SELECT * FROM users WHERE email=email_ext) then  
        SET pass_ext = 1;   
        SELECT user_id into user_id_ext FROM users WHERE email=email_ext;
  ELSE
        SET pass_ext = 0; 
        SET user_id_ext = 0;
  END IF;
end
/
CREATE PROCEDURE Check_if_project_is_assigned_to_user(project_id_ext SmallInt(5), user_id_ext SmallInt(5), OUT is_assigned_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
  
  IF EXISTS(SELECT * FROM project_users WHERE (project_id=project_id_ext) AND (user_id=user_id_ext)) then  
        SET is_assigned_ext = 1;   
  ELSE
        SET is_assigned_ext = 0; 
  END IF;
end
/
CREATE PROCEDURE check_password(username_ext NVarChar(45), password_ext NVarChar(45), OUT pass SmallInt(5), OUT user_id_ext SmallInt(5))
  NO SQL
begin
/* variables */
 /* SELECT * FROM credentials;*/
  IF EXISTS(SELECT * FROM credentials WHERE username=username_ext  AND passwordhash = password_ext) then
        set pass = 1;  
        SELECT user_id into user_id_ext FROM credentials WHERE username=username_ext  AND passwordhash = password_ext;
  ELSE
         set pass = 0;
         set user_id_ext=0;
  END IF;
/* code */
end
/
CREATE PROCEDURE check_project_in_projects(projectname_ext NVarChar(45), OUT pass_ext SmallInt(5), OUT project_id_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
 IF EXISTS(SELECT * FROM projects WHERE project_name=projectname_ext) then  
        SET pass_ext = 1;   
        SELECT project_id into project_id_ext FROM projects WHERE project_name=projectname_ext;
  ELSE
        SET pass_ext = 0; 
        SET project_id_ext = 0;
  END IF;
end
/
CREATE PROCEDURE check_token_in_tokens(token_ext NVarChar(255), OUT does_exist_ext SmallInt(5), OUT user_id_ext SmallInt(5), OUT usertype_id_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
  IF EXISTS(SELECT * FROM tokens WHERE token=token_ext) then
        SET does_exist_ext = 1;
        SELECT user_id INTO user_id_ext FROM tokens WHERE token=token_ext;  
        SELECT usertype_id INTO usertype_id_ext FROM users WHERE user_id=user_id_ext; 
  ELSE
        SET does_exist_ext = 0;      
        SET user_id_ext = 0;
        SET usertype_id_ext =0; 
  END IF;
end
/
CREATE PROCEDURE check_userid_in_tokens(user_id_ext SmallInt(5), OUT does_exist_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
 IF EXISTS(SELECT * FROM tokens WHERE user_id=user_id_ext) then
        set does_exist_ext = 1;  
  ELSE
         set does_exist_ext = 0;
  END IF;
end
/
CREATE PROCEDURE check_username(username_ext NVarChar(45), OUT pass_ext SmallInt(5), OUT user_id_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
  IF EXISTS(SELECT * FROM credentials WHERE username=username_ext) then
        set pass_ext = 1;  
        SELECT user_id into user_id_ext FROM credentials WHERE username=username_ext;
  ELSE
         set pass_ext = 0;
         set user_id_ext=0;
  END IF;
end
/
CREATE PROCEDURE check_user_role(user_id_ext SmallInt(5), usertype_id_ext SmallInt(5), OUT pass_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
  IF EXISTS(SELECT * FROM users WHERE (usertype_id=usertype_id_ext) AND (user_id=user_id_ext)) then  
        SET pass_ext = 1;   
  ELSE
        SET pass_ext = 0; 
  END IF;
  
end
/
CREATE PROCEDURE delete_project_from_projects(projectname_ext NVarChar(45), OUT pass_ext SmallInt(5), OUT project_id_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
 IF EXISTS(SELECT * FROM projects WHERE project_name=projectname_ext) THEN  
        SELECT project_id into project_id_ext FROM projects WHERE project_name=projectname_ext;
        DELETE FROM projects WHERE project_id=project_id_ext;        
        SET pass_ext=1;  
    ELSE
        SET pass_ext=0; 
        SET project_id_ext=0;
    END IF;    
end
/
CREATE PROCEDURE delete_user_from_users(email_ext NVarChar(45), OUT pass_ext SmallInt(5), OUT user_id_ext SmallInt(5))
  NO SQL
begin
/* variables */
       
/* code */
    IF EXISTS(SELECT * FROM users WHERE email=email_ext) THEN  
        SELECT user_id into user_id_ext FROM users WHERE email=email_ext;
        DELETE FROM credentials WHERE user_id=user_id_ext;        
        DELETE FROM users WHERE email=email_ext;
        SET pass_ext=1;  
    ELSE
        SET pass_ext=0; 
        SET user_id_ext=0;
    END IF;    
end
/
CREATE PROCEDURE get_projects_list_from_user_id(user_id_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
  SELECT projects.project_name FROM project_users
  INNER JOIN projects ON projects.project_id=project_users.project_id
  WHERE project_users.user_id=user_id_ext;
end
/
CREATE PROCEDURE Get_UsertypeID_from_String(usertype_name_ext NVarChar(45), OUT does_exist_ext SmallInt(5), OUT usertype_id_ext SmallInt(5))
  NO SQL
begin
/* variables */

/* code */
 IF EXISTS(SELECT * FROM usertypes WHERE usertype_name=usertype_name_ext) then
        SET does_exist_ext = 1;  
        SELECT usertypes_id into usertype_id_ext FROM usertypes WHERE usertype_name=usertype_name_ext;
  ELSE
         SET does_exist_ext = 0;
  END IF;
end
/
CREATE PROCEDURE remove_assignation_project_user(project_id_ext SmallInt(5), user_id_ext SmallInt(5), OUT removed_ext SmallInt(5))
  NO SQL
begin
/* variables */
 IF EXISTS(SELECT * FROM project_users WHERE project_id=project_id_ext AND user_id=user_id_ext) THEN  
        DELETE FROM project_users WHERE project_id=project_id_ext AND user_id=user_id_ext;        
        SET removed_ext=1;  
    ELSE
        SET removed_ext=0; 
    END IF;    
/* code */
end
/
