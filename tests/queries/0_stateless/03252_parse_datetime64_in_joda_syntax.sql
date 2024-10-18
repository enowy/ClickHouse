select parseDateTime64InJodaSyntax('2024-10-09 10:30:10.123', 'yyyy-MM-dd HH:mm:ss.SSS');
select parseDateTime64InJodaSyntax('2024-10-09 10:30:10.123456', 'yyyy-MM-dd HH:mm:ss.SSSSSS');
select parseDateTime64InJodaSyntax('2024-10-09 10:30:10.123456789', 'yyyy-MM-dd HH:mm:ss.SSSSSSSSS'); -- { serverError CANNOT_PARSE_DATETIME }
select parseDateTime64InJodaSyntax('2024-10-09 10:30:10.123456-0800', 'yyyy-MM-dd HH:mm:ss.SSSSSSZ') SETTINGS session_timezone='Asia/Shanghai';
select parseDateTime64InJodaSyntax('2024-10-09 10:30:10.123456Asia/Shanghai', 'yyyy-MM-dd HH:mm:ss.SSSSSSz') SETTINGS session_timezone='Asia/Shanghai';

select parseDateTime64InJodaSyntaxOrZero('2024-10-09 10:30:10.123', 'yyyy-MM-dd HH:mm:ss.SSS');
select parseDateTime64InJodaSyntaxOrZero('2024-10-09 10:30:10.123456', 'yyyy-MM-dd HH:mm:ss.SSSSSS');
select parseDateTime64InJodaSyntaxOrZero('2024-10-09 10:30:10.123456789', 'yyyy-MM-dd HH:mm:ss.SSSSSSSSS') SETTINGS session_timezone='Asia/Shanghai';
select parseDateTime64InJodaSyntaxOrZero('2024-10-09 10:30:10.123456-0800', 'yyyy-MM-dd HH:mm:ss.SSSSSSZ') SETTINGS session_timezone='Asia/Shanghai';
select parseDateTime64InJodaSyntaxOrZero('2024-10-09 10:30:10.123456Asia/Shanghai', 'yyyy-MM-dd HH:mm:ss.SSSSSSz') SETTINGS session_timezone='Asia/Shanghai';

select parseDateTime64InJodaSyntaxOrNull('2024-10-09 10:30:10.123', 'yyyy-MM-dd HH:mm:ss.SSS');
select parseDateTime64InJodaSyntaxOrNull('2024-10-09 10:30:10.123456', 'yyyy-MM-dd HH:mm:ss.SSSSSS');
select parseDateTime64InJodaSyntaxOrNull('2024-10-09 10:30:10.123456789', 'yyyy-MM-dd HH:mm:ss.SSSSSSSSS');
select parseDateTime64InJodaSyntaxOrNull('2024-10-09 10:30:10.123456-0800', 'yyyy-MM-dd HH:mm:ss.SSSSSSZ') SETTINGS session_timezone='Asia/Shanghai';
select parseDateTime64InJodaSyntaxOrNull('2024-10-09 10:30:10.123456Asia/Shanghai', 'yyyy-MM-dd HH:mm:ss.SSSSSSz') SETTINGS session_timezone='Asia/Shanghai';
