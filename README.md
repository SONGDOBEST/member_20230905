## database
```sql
create table member(
	id bigint auto_increment primary key,
    memberEmail varchar(50) unique,
    memberPassword varchar(20) not null,
    memberName varchar(20) not null,
    memberBirth date not null,
    memberMobile varchar(30) not null
    );
```

## naming rules
```
id, class, function, name
id, class, url : 두 단어 이상 연결시 '-'로 연결 ex) member-email
function : 두 단어 이상 연결시 '_'로 연결 ex) member_update
name : 두 단어 이상 연결시 camel case로 연결 ex) memberEmail

```