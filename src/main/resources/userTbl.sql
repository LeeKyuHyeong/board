CREATE TABLE `users` (
  `user_Id` int unsigned NOT NULL,
  `user_loginId` varchar(45) NOT NULL,
  `user_loginPwd` varchar(45) NOT NULL,
  `user_Name` char(10) NOT NULL,
  `user_Email` varchar(100) NOT NULL,
  `user_Phone` varchar(13) NOT NULL,
  `user_Addr` varchar(10) DEFAULT NULL,
  `user_gameId` varchar(45) DEFAULT NULL,
  `user_Type` char(3) DEFAULT NULL,
  `create_loginId` varchar(45) DEFAULT NULL,
  `create_dt` date DEFAULT NULL,
  `upate_loginId` varchar(45) DEFAULT NULL,
  `update_dt` date DEFAULT NULL,
  `use_YN` char(1) DEFAULT NULL,
  PRIMARY KEY (`user_Id`)
)


INSERT INTO `users`
(`user_Id`,
`user_loginId`,
`user_loginPwd`,
`user_Name`,
`user_Email`,
`user_Phone`,
`user_Addr`,
`user_gameId`,
`user_Type`,
`create_loginId`,
`create_dt`,
`upate_loginId`,
`update_dt`,
`use_YN`)
VALUES
(<{user_Id: }>,
<{user_loginId: }>,
<{user_loginPwd: }>,
<{user_Name: }>,
<{user_Email: }>,
<{user_Phone: }>,
<{user_Addr: }>,
<{user_gameId: }>,
<{user_Type: }>,
<{create_loginId: }>,
<{create_dt: }>,
<{upate_loginId: }>,
<{update_dt: }>,
<{use_YN: }>);


user_Id,user_loginId,user_loginPwd,user_Name,user_Email,user_Phone,user_Addr,user_gameId,user_Type,create_loginId,create_dt,upate_loginId,update_dt,use_YN
1,user1,1234,,user@mail.com,010-1111-2222,Seoul,NULL,NULL,NULL,NULL,NULL,NULL,NULL
2,user2,1234,,user2@mail.com,010-2222-3333,Daegu,NULL,NULL,NULL,NULL,NULL,NULL,NULL
