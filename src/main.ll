@.str = private unnamed_addr constant [14 x i8] c"Hello, World!\00", align 1

; Declare the printf function
declare i32 @printf(i8*, ...)

define i32 @main() {
entry:
  %call = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}
