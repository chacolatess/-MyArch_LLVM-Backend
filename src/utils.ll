declare i32 @fprintf(i8*, i8*, ...)

define void @print_error(i8* %message) {
entry:
  %stderr = getelementptr inbounds ([6 x i8], [6 x i8]* @stderr_str, i32 0, i32 0)
  call i32 @fprintf(i8* %stderr, i8* %message)
  ret void
}

@stderr_str = private unnamed_addr constant [6 x i8] c"stderr\00", align 1
