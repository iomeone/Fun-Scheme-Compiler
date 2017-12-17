; ModuleID = 'header.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"library run-time error: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@current_mem_used = global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Memory usage exceeded MEM_CAP\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Expected closure (in expect_closure). Non-function value applied.\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Expected value: null (in expect_args0). Prim cannot take arguments.\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"Expected cons value (in expect_args1). Prim applied on an empty argument list.\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Expected null value (in expect_args1). Prim can only take 1 argument.\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Expected a cons value. (expect_cons)\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Expected a vector or special value. (expect_other)\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Too many arguments. (remaining_args)\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"too many args: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"#<procedure>\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"#f\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"#t\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"(print.. v); unrecognized value %lu int %lu\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"(print v); unrecognized value %lu %lu\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"first argument to make-vector must be an integer\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"prim applied on more than 2 arguments.\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"second argument to vector-ref must be an integer\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"first argument to vector-ref must be a vector\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"vector-ref not given a properly formed vector\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"first argument to vector-ref must be an integer\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"prim applied on more than 3 arguments.\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"(prim / a b); b cannot be 0\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

; Function Attrs: uwtable
define void @fatal_err(i8* %msg) #0 {
  %1 = alloca i8*, align 8
  store i8* %msg, i8** %1, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  %3 = load i8*, i8** %1, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: uwtable
define i64* @alloc(i64 %m) #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64, align 8
  store i64 %m, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @current_mem_used, align 8
  %5 = add i64 %4, %3
  store i64 %5, i64* @current_mem_used, align 8
  %6 = load i64, i64* @current_mem_used, align 8
  %7 = icmp ult i64 %6, 268435456
  br i1 %7, label %8, label %12

; <label>:8                                       ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = call noalias i8* @GC_malloc(i64 %9)
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %1, align 8
  br label %13

; <label>:12                                      ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0))
  store i64* null, i64** %1, align 8
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64*, i64** %1, align 8
  ret i64* %14
}

declare noalias i8* @GC_malloc(i64) #1

; Function Attrs: uwtable
define void @print_u64(i64 %i) #0 {
  %1 = alloca i64, align 8
  store i64 %i, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 %2)
  ret void
}

; Function Attrs: uwtable
define i64 @expect_closure(i64* %cloptr) #0 {
  %1 = alloca i64*, align 8
  store i64* %cloptr, i64** %1, align 8
  %2 = load i64*, i64** %1, align 8
  %3 = ptrtoint i64* %2 to i64
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64*, i64** %1, align 8
  %9 = ptrtoint i64* %8 to i64
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @expect_args0(i64 %args) #0 {
  %1 = alloca i64, align 8
  store i64 %args, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

; <label>:4                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i32 0, i32 0))
  br label %5

; <label>:5                                       ; preds = %4, %0
  ret i64 0
}

; Function Attrs: uwtable
define i64 @expect_args1(i64 %args) #0 {
  %1 = alloca i64, align 8
  %p = alloca i64*, align 8
  store i64 %args, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = and i64 %2, 7
  %4 = icmp ne i64 %3, 1
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i32 0, i32 0))
  br label %6

; <label>:6                                       ; preds = %5, %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64* %9, i64** %p, align 8
  %10 = load i64*, i64** %p, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %6
  %16 = load i64*, i64** %p, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  ret i64 %18
}

; Function Attrs: uwtable
define i64 @expect_cons(i64 %p, i64* %rest) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %1, align 8
  store i64* %rest, i64** %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64* %10, i64** %pp, align 8
  %11 = load i64*, i64** %pp, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  ret i64 %17
}

; Function Attrs: uwtable
define i64 @expect_other(i64 %v, i64* %rest) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64*, align 8
  %p = alloca i64*, align 8
  store i64 %v, i64* %1, align 8
  store i64* %rest, i64** %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 6
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, -8
  %10 = inttoptr i64 %9 to i64*
  store i64* %10, i64** %p, align 8
  %11 = load i64*, i64** %p, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64*, i64** %p, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  ret i64 %17
}

; Function Attrs: uwtable
define i64 @remaining_args(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %pp = alloca i64*, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = and i64 %2, -8
  %4 = inttoptr i64 %3 to i64*
  store i64* %4, i64** %pp, align 8
  %5 = load i64, i64* %1, align 8
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64*, i64** %pp, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = and i64 %12, -8
  %14 = lshr i64 %13, 32
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 %15)
  %17 = load i64, i64* %1, align 8
  ret i64 %17
}

; Function Attrs: nounwind uwtable
define i64 @const_init_int(i64 %i) #3 {
  %1 = alloca i64, align 8
  store i64 %i, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = trunc i64 %2 to i32
  %4 = zext i32 %3 to i64
  %5 = shl i64 %4, 32
  %6 = or i64 %5, 2
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @const_init_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind uwtable
define i64 @const_init_null() #3 {
  ret i64 0
}

; Function Attrs: nounwind uwtable
define i64 @const_init_true() #3 {
  ret i64 31
}

; Function Attrs: nounwind uwtable
define i64 @const_init_false() #3 {
  ret i64 15
}

; Function Attrs: nounwind uwtable
define i64 @const_init_string(i8* %s) #3 {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = ptrtoint i8* %2 to i64
  %4 = or i64 %3, 3
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @const_init_symbol(i8* %s) #3 {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = ptrtoint i8* %2 to i64
  %4 = or i64 %3, 4
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @const_init_char(i8* %s) #3 {
  %1 = alloca i8*, align 8
  store i8* %s, i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = ptrtoint i8* %2 to i64
  %4 = or i64 %3, 5
  ret i64 %4
}

; Function Attrs: uwtable
define i64 @prim_string(i64 %v) #0 {
  %1 = alloca i64, align 8
  store i64 %v, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = and i64 %2, -8
  %4 = inttoptr i64 %3 to i8*
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* %4)
  %6 = load i64, i64* %1, align 8
  %7 = or i64 %6, 3
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @prim_print_aux(i64 %v) #0 {
  %1 = alloca i64, align 8
  %p = alloca i64*, align 8
  %vec = alloca i64*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %v, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0))
  br label %141

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0))
  br label %140

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, 7
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %31

; <label>:16                                      ; preds = %12
  %17 = load i64, i64* %1, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %p, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  %21 = load i64*, i64** %p, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @prim_print_aux(i64 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  %26 = load i64*, i64** %p, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %139

; <label>:31                                      ; preds = %12
  %32 = load i64, i64* %1, align 8
  %33 = and i64 %32, 7
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %31
  %36 = load i64, i64* %1, align 8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %38)
  br label %138

; <label>:40                                      ; preds = %31
  %41 = load i64, i64* %1, align 8
  %42 = and i64 %41, 7
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %49

; <label>:44                                      ; preds = %40
  %45 = load i64, i64* %1, align 8
  %46 = and i64 %45, -8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %47)
  br label %137

; <label>:49                                      ; preds = %40
  %50 = load i64, i64* %1, align 8
  %51 = and i64 %50, 7
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %58

; <label>:53                                      ; preds = %49
  %54 = load i64, i64* %1, align 8
  %55 = and i64 %54, -8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %56)
  br label %136

; <label>:58                                      ; preds = %49
  %59 = load i64, i64* %1, align 8
  %60 = and i64 %59, 7
  %61 = icmp eq i64 %60, 6
  br i1 %61, label %62, label %99

; <label>:62                                      ; preds = %58
  %63 = load i64, i64* %1, align 8
  %64 = and i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 7
  %69 = icmp eq i64 1, %68
  br i1 %69, label %70, label %99

; <label>:70                                      ; preds = %62
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  %72 = load i64, i64* %1, align 8
  %73 = and i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64* %74, i64** %vec, align 8
  %75 = load i64*, i64** %vec, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = lshr i64 %77, 3
  store i64 %78, i64* %len, align 8
  %79 = load i64*, i64** %vec, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @prim_print_aux(i64 %81)
  store i64 2, i64* %i, align 8
  br label %83

; <label>:83                                      ; preds = %94, %70
  %84 = load i64, i64* %i, align 8
  %85 = load i64, i64* %len, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %97

; <label>:87                                      ; preds = %83
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %89 = load i64, i64* %i, align 8
  %90 = load i64*, i64** %vec, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 %89
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @prim_print_aux(i64 %92)
  br label %94

; <label>:94                                      ; preds = %87
  %95 = load i64, i64* %i, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %i, align 8
  br label %83

; <label>:97                                      ; preds = %83
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %135

; <label>:99                                      ; preds = %62, %58
  %100 = load i64, i64* %1, align 8
  %101 = and i64 %100, 7
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %103, label %108

; <label>:103                                     ; preds = %99
  %104 = load i64, i64* %1, align 8
  %105 = and i64 %104, -8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %106)
  br label %134

; <label>:108                                     ; preds = %99
  %109 = load i64, i64* %1, align 8
  %110 = icmp eq i64 %109, 39
  br i1 %110, label %111, label %113

; <label>:111                                     ; preds = %108
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0))
  br label %133

; <label>:113                                     ; preds = %108
  %114 = load i64, i64* %1, align 8
  %115 = icmp eq i64 %114, 15
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %132

; <label>:118                                     ; preds = %113
  %119 = load i64, i64* %1, align 8
  %120 = icmp eq i64 %119, 31
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %118
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %131

; <label>:123                                     ; preds = %118
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* %1, align 8
  %126 = trunc i64 %125 to i32
  %127 = zext i32 %126 to i64
  %128 = shl i64 %127, 32
  %129 = or i64 %128, 2
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.26, i32 0, i32 0), i64 %124, i64 %129)
  br label %131

; <label>:131                                     ; preds = %123, %121
  br label %132

; <label>:132                                     ; preds = %131, %116
  br label %133

; <label>:133                                     ; preds = %132, %111
  br label %134

; <label>:134                                     ; preds = %133, %103
  br label %135

; <label>:135                                     ; preds = %134, %97
  br label %136

; <label>:136                                     ; preds = %135, %53
  br label %137

; <label>:137                                     ; preds = %136, %44
  br label %138

; <label>:138                                     ; preds = %137, %35
  br label %139

; <label>:139                                     ; preds = %138, %16
  br label %140

; <label>:140                                     ; preds = %139, %10
  br label %141

; <label>:141                                     ; preds = %140, %4
  ret i64 39
}

; Function Attrs: uwtable
define i64 @prim_print(i64 %v) #0 {
  %1 = alloca i64, align 8
  %p = alloca i64*, align 8
  %vec = alloca i64*, align 8
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %v, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %6

; <label>:4                                       ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0))
  br label %138

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0))
  br label %137

; <label>:12                                      ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, 7
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %31

; <label>:16                                      ; preds = %12
  %17 = load i64, i64* %1, align 8
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %p, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0))
  %21 = load i64*, i64** %p, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @prim_print_aux(i64 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  %26 = load i64*, i64** %p, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %136

; <label>:31                                      ; preds = %12
  %32 = load i64, i64* %1, align 8
  %33 = and i64 %32, 7
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %40

; <label>:35                                      ; preds = %31
  %36 = load i64, i64* %1, align 8
  %37 = lshr i64 %36, 32
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32 %38)
  br label %135

; <label>:40                                      ; preds = %31
  %41 = load i64, i64* %1, align 8
  %42 = and i64 %41, 7
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %49

; <label>:44                                      ; preds = %40
  %45 = load i64, i64* %1, align 8
  %46 = and i64 %45, -8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* %47)
  br label %134

; <label>:49                                      ; preds = %40
  %50 = load i64, i64* %1, align 8
  %51 = and i64 %50, 7
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %53, label %58

; <label>:53                                      ; preds = %49
  %54 = load i64, i64* %1, align 8
  %55 = and i64 %54, -8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* %56)
  br label %133

; <label>:58                                      ; preds = %49
  %59 = load i64, i64* %1, align 8
  %60 = and i64 %59, 7
  %61 = icmp eq i64 %60, 6
  br i1 %61, label %62, label %99

; <label>:62                                      ; preds = %58
  %63 = load i64, i64* %1, align 8
  %64 = and i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = and i64 %67, 7
  %69 = icmp eq i64 1, %68
  br i1 %69, label %70, label %99

; <label>:70                                      ; preds = %62
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0))
  %72 = load i64, i64* %1, align 8
  %73 = and i64 %72, -8
  %74 = inttoptr i64 %73 to i64*
  store i64* %74, i64** %vec, align 8
  %75 = load i64*, i64** %vec, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = load i64, i64* %76, align 8
  %78 = lshr i64 %77, 3
  store i64 %78, i64* %len, align 8
  %79 = load i64*, i64** %vec, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @prim_print(i64 %81)
  store i64 2, i64* %i, align 8
  br label %83

; <label>:83                                      ; preds = %94, %70
  %84 = load i64, i64* %i, align 8
  %85 = load i64, i64* %len, align 8
  %86 = icmp ule i64 %84, %85
  br i1 %86, label %87, label %97

; <label>:87                                      ; preds = %83
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %89 = load i64, i64* %i, align 8
  %90 = load i64*, i64** %vec, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 %89
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @prim_print(i64 %92)
  br label %94

; <label>:94                                      ; preds = %87
  %95 = load i64, i64* %i, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %i, align 8
  br label %83

; <label>:97                                      ; preds = %83
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %132

; <label>:99                                      ; preds = %62, %58
  %100 = load i64, i64* %1, align 8
  %101 = and i64 %100, 7
  %102 = icmp eq i64 %101, 5
  br i1 %102, label %103, label %108

; <label>:103                                     ; preds = %99
  %104 = load i64, i64* %1, align 8
  %105 = and i64 %104, -8
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %106)
  br label %131

; <label>:108                                     ; preds = %99
  %109 = load i64, i64* %1, align 8
  %110 = icmp eq i64 %109, 39
  br i1 %110, label %111, label %113

; <label>:111                                     ; preds = %108
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.23, i32 0, i32 0))
  br label %130

; <label>:113                                     ; preds = %108
  %114 = load i64, i64* %1, align 8
  %115 = icmp eq i64 %114, 15
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %129

; <label>:118                                     ; preds = %113
  %119 = load i64, i64* %1, align 8
  %120 = icmp eq i64 %119, 31
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %118
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0))
  br label %128

; <label>:123                                     ; preds = %118
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* %1, align 8
  %126 = and i64 %125, 7
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0), i64 %124, i64 %126)
  br label %128

; <label>:128                                     ; preds = %123, %121
  br label %129

; <label>:129                                     ; preds = %128, %116
  br label %130

; <label>:130                                     ; preds = %129, %111
  br label %131

; <label>:131                                     ; preds = %130, %103
  br label %132

; <label>:132                                     ; preds = %131, %97
  br label %133

; <label>:133                                     ; preds = %132, %53
  br label %134

; <label>:134                                     ; preds = %133, %44
  br label %135

; <label>:135                                     ; preds = %134, %35
  br label %136

; <label>:136                                     ; preds = %135, %16
  br label %137

; <label>:137                                     ; preds = %136, %10
  br label %138

; <label>:138                                     ; preds = %137, %4
  ret i64 39
}

; Function Attrs: uwtable
define i64 @applyprim_print(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_print(i64 %4)
  ret i64 %5
}

; Function Attrs: uwtable
define i64 @prim_halt(i64 %v) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %v, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i64 @prim_print(i64 %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 0) #6
  unreachable
                                                  ; No predecessors!
  %7 = load i64, i64* %1, align 8
  ret i64 %7
}

; Function Attrs: uwtable
define i64 @applyprim_vector(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %buffer = alloca i64*, align 8
  %l = alloca i64, align 8
  %mem = alloca i64*, align 8
  %i = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = call noalias i8* @malloc(i64 4096) #7
  %3 = bitcast i8* %2 to i64*
  store i64* %3, i64** %buffer, align 8
  store i64 0, i64* %l, align 8
  br label %4

; <label>:4                                       ; preds = %13, %0
  %5 = load i64, i64* %1, align 8
  %6 = and i64 %5, 7
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %4
  %9 = load i64, i64* %l, align 8
  %10 = icmp ult i64 %9, 512
  br label %11

; <label>:11                                      ; preds = %8, %4
  %12 = phi i1 [ false, %4 ], [ %10, %8 ]
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %11
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @expect_cons(i64 %14, i64* %1)
  %16 = load i64, i64* %l, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %l, align 8
  %18 = load i64*, i64** %buffer, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 %16
  store i64 %15, i64* %19, align 8
  br label %4

; <label>:20                                      ; preds = %11
  %21 = load i64, i64* %l, align 8
  %22 = add i64 %21, 1
  %23 = mul i64 %22, 8
  %24 = call i64* @alloc(i64 %23)
  store i64* %24, i64** %mem, align 8
  %25 = load i64, i64* %l, align 8
  %26 = shl i64 %25, 3
  %27 = or i64 %26, 1
  %28 = load i64*, i64** %mem, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %27, i64* %29, align 8
  store i64 0, i64* %i, align 8
  br label %30

; <label>:30                                      ; preds = %43, %20
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %l, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %46

; <label>:34                                      ; preds = %30
  %35 = load i64, i64* %i, align 8
  %36 = load i64*, i64** %buffer, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 %35
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %i, align 8
  %40 = add i64 %39, 1
  %41 = load i64*, i64** %mem, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  store i64 %38, i64* %42, align 8
  br label %43

; <label>:43                                      ; preds = %34
  %44 = load i64, i64* %i, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %i, align 8
  br label %30

; <label>:46                                      ; preds = %30
  %47 = load i64*, i64** %buffer, align 8
  %48 = icmp eq i64* %47, null
  br i1 %48, label %51, label %49

; <label>:49                                      ; preds = %46
  %50 = bitcast i64* %47 to i8*
  call void @_ZdaPv(i8* %50) #8
  br label %51

; <label>:51                                      ; preds = %49, %46
  %52 = load i64*, i64** %mem, align 8
  %53 = ptrtoint i64* %52 to i64
  %54 = or i64 %53, 6
  ret i64 %54
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8*) #5

; Function Attrs: uwtable
define i64 @prim_make_45vector(i64 %lenv, i64 %iv) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %l = alloca i64, align 8
  %vec = alloca i64*, align 8
  %i = alloca i64, align 8
  store i64 %lenv, i64* %1, align 8
  store i64 %iv, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, -8
  %10 = lshr i64 %9, 32
  %11 = trunc i64 %10 to i32
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %l, align 8
  %13 = load i64, i64* %l, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 8
  %16 = call i64* @alloc(i64 %15)
  store i64* %16, i64** %vec, align 8
  %17 = load i64, i64* %l, align 8
  %18 = shl i64 %17, 3
  %19 = or i64 %18, 1
  %20 = load i64*, i64** %vec, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %19, i64* %21, align 8
  store i64 1, i64* %i, align 8
  br label %22

; <label>:22                                      ; preds = %31, %7
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %l, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %34

; <label>:26                                      ; preds = %22
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* %i, align 8
  %29 = load i64*, i64** %vec, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 %28
  store i64 %27, i64* %30, align 8
  br label %31

; <label>:31                                      ; preds = %26
  %32 = load i64, i64* %i, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %i, align 8
  br label %22

; <label>:34                                      ; preds = %22
  %35 = load i64*, i64** %vec, align 8
  %36 = ptrtoint i64* %35 to i64
  %37 = or i64 %36, 6
  ret i64 %37
}

; Function Attrs: uwtable
define i64 @applyprim_make_45vector(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_make_45vector(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @prim_vector_45ref(i64 %v, i64 %i) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %v, i64* %1, align 8
  store i64 %i, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 6
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, 7
  %19 = icmp ne i64 %18, 1
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %12
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0))
  br label %21

; <label>:21                                      ; preds = %20, %12
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, -8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = add nsw i32 1, %25
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %1, align 8
  %29 = and i64 %28, -8
  %30 = inttoptr i64 %29 to i64*
  %31 = getelementptr inbounds i64, i64* %30, i64 %27
  %32 = load i64, i64* %31, align 8
  ret i64 %32
}

; Function Attrs: uwtable
define i64 @applyprim_vector_45ref(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_vector_45ref(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @prim_vector_45set_33(i64 %a, i64 %i, i64 %v) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %i, i64* %2, align 8
  store i64 %v, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %1, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 6
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %1, align 8
  %15 = and i64 %14, -8
  %16 = inttoptr i64 %15 to i64*
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %18, 7
  %20 = icmp ne i64 %19, 1
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %13
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i32 0, i32 0))
  br label %22

; <label>:22                                      ; preds = %21, %13
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* %2, align 8
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 1, %27
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %1, align 8
  %31 = and i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  %33 = getelementptr inbounds i64, i64* %32, i64 %29
  store i64 %23, i64* %33, align 8
  ret i64 39
}

; Function Attrs: uwtable
define i64 @applyprim_vector_45set_33(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  %v2 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = call i64 @expect_cons(i64 %6, i64* %rest)
  store i64 %7, i64* %v2, align 8
  %8 = load i64, i64* %rest, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %0
  %12 = load i64, i64* %v0, align 8
  %13 = load i64, i64* %v1, align 8
  %14 = load i64, i64* %v2, align 8
  %15 = call i64 @prim_vector_45set_33(i64 %12, i64 %13, i64 %14)
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define i64 @prim_void() #3 {
  ret i64 39
}

; Function Attrs: nounwind uwtable
define i64 @prim_eq_63(i64 %a, i64 %b) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %9

; <label>:8                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %1, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_eq_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_eq_63(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @prim_eqv_63(i64 %a, i64 %b) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %9

; <label>:8                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %9

; <label>:9                                       ; preds = %8, %7
  %10 = load i64, i64* %1, align 8
  ret i64 %10
}

; Function Attrs: uwtable
define i64 @applyprim_eqv_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_eqv_63(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define i64 @prim_number_63(i64 %a) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_number_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_number_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_integer_63(i64 %a) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_integer_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_integer_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_void_63(i64 %a) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 39
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %7

; <label>:6                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %7

; <label>:7                                       ; preds = %6, %5
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @applyprim_void_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_void_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_procedure_63(i64 %a) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_procedure_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_procedure_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_null_63(i64 %p) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %7

; <label>:6                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %7

; <label>:7                                       ; preds = %6, %5
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @applyprim_null_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_null_63(i64 %4)
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define i64 @prim_cons_63(i64 %p) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 7
  %5 = icmp eq i64 %4, 1
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %8

; <label>:7                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %8

; <label>:8                                       ; preds = %7, %6
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: uwtable
define i64 @applyprim_cons_63(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_cons_63(i64 %4)
  ret i64 %5
}

; Function Attrs: uwtable
define i64 @prim_cons(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %p = alloca i64*, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = call i64* @alloc(i64 16)
  store i64* %3, i64** %p, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64*, i64** %p, align 8
  %6 = getelementptr inbounds i64, i64* %5, i64 0
  store i64 %4, i64* %6, align 8
  %7 = load i64, i64* %2, align 8
  %8 = load i64*, i64** %p, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  store i64 %7, i64* %9, align 8
  %10 = load i64*, i64** %p, align 8
  %11 = ptrtoint i64* %10 to i64
  %12 = or i64 %11, 1
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @applyprim_cons(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  %5 = call i64 @expect_cons(i64 %4, i64* %rest)
  store i64 %5, i64* %v1, align 8
  %6 = load i64, i64* %rest, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %8, %0
  %10 = load i64, i64* %v0, align 8
  %11 = load i64, i64* %v1, align 8
  %12 = call i64 @prim_cons(i64 %10, i64 %11)
  ret i64 %12
}

; Function Attrs: uwtable
define i64 @prim_car(i64 %p) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %p, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  ret i64 %4
}

; Function Attrs: uwtable
define i64 @applyprim_car(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_car(i64 %4)
  ret i64 %5
}

; Function Attrs: uwtable
define i64 @prim_cdr(i64 %p) #0 {
  %1 = alloca i64, align 8
  %rest = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %p, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_cons(i64 %2, i64* %rest)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %rest, align 8
  ret i64 %4
}

; Function Attrs: uwtable
define i64 @applyprim_cdr(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_cdr(i64 %4)
  ret i64 %5
}

; Function Attrs: uwtable
define i64 @prim__43(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = add nsw i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = or i64 %23, 2
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @applyprim__43(i64 %p) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 2, i64* %1, align 8
  br label %32

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %6
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %pp, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = load i64*, i64** %pp, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @applyprim__43(i64 %23)
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 %20, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %1, align 8
  br label %32

; <label>:32                                      ; preds = %11, %5
  %33 = load i64, i64* %1, align 8
  ret i64 %33
}

; Function Attrs: uwtable
define i64 @prim__45(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = or i64 %23, 2
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @applyprim__45(i64 %p) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 2, i64* %1, align 8
  br label %48

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %6
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %pp, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

; <label>:19                                      ; preds = %11
  %20 = load i64*, i64** %pp, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = and i64 %22, -8
  %24 = lshr i64 %23, 32
  %25 = trunc i64 %24 to i32
  %26 = sub nsw i32 0, %25
  %27 = zext i32 %26 to i64
  %28 = shl i64 %27, 32
  %29 = or i64 %28, 2
  store i64 %29, i64* %1, align 8
  br label %48

; <label>:30                                      ; preds = %11
  %31 = load i64*, i64** %pp, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, -8
  %35 = lshr i64 %34, 32
  %36 = trunc i64 %35 to i32
  %37 = load i64*, i64** %pp, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @applyprim__43(i64 %39)
  %41 = and i64 %40, -8
  %42 = lshr i64 %41, 32
  %43 = trunc i64 %42 to i32
  %44 = sub nsw i32 %36, %43
  %45 = zext i32 %44 to i64
  %46 = shl i64 %45, 32
  %47 = or i64 %46, 2
  store i64 %47, i64* %1, align 8
  br label %48

; <label>:48                                      ; preds = %30, %19, %5
  %49 = load i64, i64* %1, align 8
  ret i64 %49
}

; Function Attrs: uwtable
define i64 @prim__42(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, 7
  %5 = icmp ne i64 %4, 2
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0))
  br label %12

; <label>:12                                      ; preds = %11, %7
  %13 = load i64, i64* %1, align 8
  %14 = and i64 %13, -8
  %15 = lshr i64 %14, 32
  %16 = trunc i64 %15 to i32
  %17 = load i64, i64* %2, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = mul nsw i32 %16, %20
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 32
  %24 = or i64 %23, 2
  ret i64 %24
}

; Function Attrs: uwtable
define i64 @applyprim__42(i64 %p) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %pp = alloca i64*, align 8
  store i64 %p, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 4294967298, i64* %1, align 8
  br label %32

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, 7
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %6
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %10, %6
  %12 = load i64, i64* %2, align 8
  %13 = and i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64* %14, i64** %pp, align 8
  %15 = load i64*, i64** %pp, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %17, -8
  %19 = lshr i64 %18, 32
  %20 = trunc i64 %19 to i32
  %21 = load i64*, i64** %pp, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @applyprim__42(i64 %23)
  %25 = and i64 %24, -8
  %26 = lshr i64 %25, 32
  %27 = trunc i64 %26 to i32
  %28 = mul nsw i32 %20, %27
  %29 = zext i32 %28 to i64
  %30 = shl i64 %29, 32
  %31 = or i64 %30, 2
  store i64 %31, i64* %1, align 8
  br label %32

; <label>:32                                      ; preds = %11, %5
  %33 = load i64, i64* %1, align 8
  ret i64 %33
}

; Function Attrs: uwtable
define i64 @prim__47(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %b_int = alloca i32, align 4
  store i64 %a, i64* %1, align 8
  store i64 %b, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, -8
  %5 = lshr i64 %4, 32
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %b_int, align 4
  %7 = load i32, i32* %b_int, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %0
  %11 = load i64, i64* %1, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %2, align 8
  %17 = and i64 %16, 7
  %18 = icmp ne i64 %17, 2
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0))
  br label %20

; <label>:20                                      ; preds = %19, %15
  %21 = load i64, i64* %1, align 8
  %22 = and i64 %21, -8
  %23 = lshr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %2, align 8
  %26 = and i64 %25, -8
  %27 = lshr i64 %26, 32
  %28 = trunc i64 %27 to i32
  %29 = sdiv i32 %24, %28
  %30 = zext i32 %29 to i64
  %31 = shl i64 %30, 32
  %32 = or i64 %31, 2
  ret i64 %32
}

; Function Attrs: uwtable
define i64 @prim__61(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, -8
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, -8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 31, i64* %1, align 8
  br label %25

; <label>:24                                      ; preds = %13
  store i64 15, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: uwtable
define i64 @prim__60(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.50, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, -8
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, -8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 31, i64* %1, align 8
  br label %25

; <label>:24                                      ; preds = %13
  store i64 15, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: uwtable
define i64 @prim__60_61(i64 %a, i64 %b) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  store i64 %b, i64* %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = and i64 %4, 7
  %6 = icmp ne i64 %5, 2
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %0
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %12, %8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %14, -8
  %16 = lshr i64 %15, 32
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = and i64 %18, -8
  %20 = lshr i64 %19, 32
  %21 = trunc i64 %20 to i32
  %22 = icmp sle i32 %17, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %13
  store i64 31, i64* %1, align 8
  br label %25

; <label>:24                                      ; preds = %13
  store i64 15, i64* %1, align 8
  br label %25

; <label>:25                                      ; preds = %24, %23
  %26 = load i64, i64* %1, align 8
  ret i64 %26
}

; Function Attrs: nounwind uwtable
define i64 @prim_not(i64 %a) #3 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 %a, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 15
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  store i64 31, i64* %1, align 8
  br label %7

; <label>:6                                       ; preds = %0
  store i64 15, i64* %1, align 8
  br label %7

; <label>:7                                       ; preds = %6, %5
  %8 = load i64, i64* %1, align 8
  ret i64 %8
}

; Function Attrs: uwtable
define i64 @applyprim_not(i64 %lst) #0 {
  %1 = alloca i64, align 8
  %v0 = alloca i64, align 8
  store i64 %lst, i64* %1, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i64 @expect_args1(i64 %2)
  store i64 %3, i64* %v0, align 8
  %4 = load i64, i64* %v0, align 8
  %5 = call i64 @prim_not(i64 %4)
  ret i64 %5
}

attributes #0 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"}


;;;;;;

define void @proc_main() {
  %cloptr37700 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37701 = getelementptr inbounds i64, i64* %cloptr37700, i64 0                  ; &cloptr37700[0]
  %f37702 = ptrtoint void(i64,i64,i64)* @lam37698 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37702, i64* %eptr37701                                                 ; store fptr
  %arg36400 = ptrtoint i64* %cloptr37700 to i64                                      ; closure cast; i64* -> i64
  %cloptr37703 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37704 = getelementptr inbounds i64, i64* %cloptr37703, i64 0                  ; &cloptr37703[0]
  %f37705 = ptrtoint void(i64,i64,i64)* @lam37696 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37705, i64* %eptr37704                                                 ; store fptr
  %arg36399 = ptrtoint i64* %cloptr37703 to i64                                      ; closure cast; i64* -> i64
  %cloptr37706 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37707 = getelementptr inbounds i64, i64* %cloptr37706, i64 0                  ; &cloptr37706[0]
  %f37708 = ptrtoint void(i64,i64,i64)* @lam37253 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37708, i64* %eptr37707                                                 ; store fptr
  %arg36398 = ptrtoint i64* %cloptr37706 to i64                                      ; closure cast; i64* -> i64
  %cloptr37709 = inttoptr i64 %arg36400 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37709)                                        ; assert function application
  %i0ptr37710 = getelementptr inbounds i64, i64* %cloptr37709, i64 0                 ; &cloptr37709[0]
  %f37712 = load i64, i64* %i0ptr37710, align 8                                      ; load; *i0ptr37710
  %fptr37711 = inttoptr i64 %f37712 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37711(i64 %arg36400, i64 %arg36399, i64 %arg36398)  ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam37698(i64 %env37699, i64 %cont36390, i64 %iMf$yu) {
  %cloptr37713 = inttoptr i64 %iMf$yu to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37713)                                        ; assert function application
  %i0ptr37714 = getelementptr inbounds i64, i64* %cloptr37713, i64 0                 ; &cloptr37713[0]
  %f37716 = load i64, i64* %i0ptr37714, align 8                                      ; load; *i0ptr37714
  %fptr37715 = inttoptr i64 %f37716 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37715(i64 %iMf$yu, i64 %cont36390, i64 %iMf$yu)     ; tail call
  ret void
}


define void @lam37696(i64 %env37697, i64 %_9536212, i64 %bX5$Ycmb) {
  %cloptr37717 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr37719 = getelementptr inbounds i64, i64* %cloptr37717, i64 1                  ; &eptr37719[1]
  store i64 %bX5$Ycmb, i64* %eptr37719                                               ; *eptr37719 = %bX5$Ycmb
  %eptr37718 = getelementptr inbounds i64, i64* %cloptr37717, i64 0                  ; &cloptr37717[0]
  %f37720 = ptrtoint void(i64,i64,i64)* @lam37694 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37720, i64* %eptr37718                                                 ; store fptr
  %arg36405 = ptrtoint i64* %cloptr37717 to i64                                      ; closure cast; i64* -> i64
  %cloptr37721 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37722 = getelementptr inbounds i64, i64* %cloptr37721, i64 0                  ; &cloptr37721[0]
  %f37723 = ptrtoint void(i64,i64,i64)* @lam37261 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37723, i64* %eptr37722                                                 ; store fptr
  %arg36404 = ptrtoint i64* %cloptr37721 to i64                                      ; closure cast; i64* -> i64
  %cloptr37724 = inttoptr i64 %bX5$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37724)                                        ; assert function application
  %i0ptr37725 = getelementptr inbounds i64, i64* %cloptr37724, i64 0                 ; &cloptr37724[0]
  %f37727 = load i64, i64* %i0ptr37725, align 8                                      ; load; *i0ptr37725
  %fptr37726 = inttoptr i64 %f37727 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37726(i64 %bX5$Ycmb, i64 %arg36405, i64 %arg36404)  ; tail call
  ret void
}


define void @lam37694(i64 %env37695, i64 %_9536213, i64 %ROr$_37foldr1) {
  %envptr37728 = inttoptr i64 %env37695 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37729 = getelementptr inbounds i64, i64* %envptr37728, i64 1                ; &envptr37728[1]
  %bX5$Ycmb = load i64, i64* %envptr37729, align 8                                   ; load; *envptr37729
  %cloptr37730 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr37732 = getelementptr inbounds i64, i64* %cloptr37730, i64 1                  ; &eptr37732[1]
  %eptr37733 = getelementptr inbounds i64, i64* %cloptr37730, i64 2                  ; &eptr37733[2]
  store i64 %ROr$_37foldr1, i64* %eptr37732                                          ; *eptr37732 = %ROr$_37foldr1
  store i64 %bX5$Ycmb, i64* %eptr37733                                               ; *eptr37733 = %bX5$Ycmb
  %eptr37731 = getelementptr inbounds i64, i64* %cloptr37730, i64 0                  ; &cloptr37730[0]
  %f37734 = ptrtoint void(i64,i64,i64)* @lam37692 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37734, i64* %eptr37731                                                 ; store fptr
  %arg36408 = ptrtoint i64* %cloptr37730 to i64                                      ; closure cast; i64* -> i64
  %cloptr37735 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37736 = getelementptr inbounds i64, i64* %cloptr37735, i64 0                  ; &cloptr37735[0]
  %f37737 = ptrtoint void(i64,i64,i64)* @lam37273 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37737, i64* %eptr37736                                                 ; store fptr
  %arg36407 = ptrtoint i64* %cloptr37735 to i64                                      ; closure cast; i64* -> i64
  %cloptr37738 = inttoptr i64 %bX5$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37738)                                        ; assert function application
  %i0ptr37739 = getelementptr inbounds i64, i64* %cloptr37738, i64 0                 ; &cloptr37738[0]
  %f37741 = load i64, i64* %i0ptr37739, align 8                                      ; load; *i0ptr37739
  %fptr37740 = inttoptr i64 %f37741 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37740(i64 %bX5$Ycmb, i64 %arg36408, i64 %arg36407)  ; tail call
  ret void
}


define void @lam37692(i64 %env37693, i64 %_9536214, i64 %aqf$_37map1) {
  %envptr37742 = inttoptr i64 %env37693 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37743 = getelementptr inbounds i64, i64* %envptr37742, i64 2                ; &envptr37742[2]
  %bX5$Ycmb = load i64, i64* %envptr37743, align 8                                   ; load; *envptr37743
  %envptr37744 = inttoptr i64 %env37693 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37745 = getelementptr inbounds i64, i64* %envptr37744, i64 1                ; &envptr37744[1]
  %ROr$_37foldr1 = load i64, i64* %envptr37745, align 8                              ; load; *envptr37745
  %cloptr37746 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr37748 = getelementptr inbounds i64, i64* %cloptr37746, i64 1                  ; &eptr37748[1]
  %eptr37749 = getelementptr inbounds i64, i64* %cloptr37746, i64 2                  ; &eptr37749[2]
  %eptr37750 = getelementptr inbounds i64, i64* %cloptr37746, i64 3                  ; &eptr37750[3]
  store i64 %ROr$_37foldr1, i64* %eptr37748                                          ; *eptr37748 = %ROr$_37foldr1
  store i64 %aqf$_37map1, i64* %eptr37749                                            ; *eptr37749 = %aqf$_37map1
  store i64 %bX5$Ycmb, i64* %eptr37750                                               ; *eptr37750 = %bX5$Ycmb
  %eptr37747 = getelementptr inbounds i64, i64* %cloptr37746, i64 0                  ; &cloptr37746[0]
  %f37751 = ptrtoint void(i64,i64,i64)* @lam37690 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37751, i64* %eptr37747                                                 ; store fptr
  %arg36411 = ptrtoint i64* %cloptr37746 to i64                                      ; closure cast; i64* -> i64
  %cloptr37752 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37753 = getelementptr inbounds i64, i64* %cloptr37752, i64 0                  ; &cloptr37752[0]
  %f37754 = ptrtoint void(i64,i64,i64)* @lam37287 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37754, i64* %eptr37753                                                 ; store fptr
  %arg36410 = ptrtoint i64* %cloptr37752 to i64                                      ; closure cast; i64* -> i64
  %cloptr37755 = inttoptr i64 %bX5$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37755)                                        ; assert function application
  %i0ptr37756 = getelementptr inbounds i64, i64* %cloptr37755, i64 0                 ; &cloptr37755[0]
  %f37758 = load i64, i64* %i0ptr37756, align 8                                      ; load; *i0ptr37756
  %fptr37757 = inttoptr i64 %f37758 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37757(i64 %bX5$Ycmb, i64 %arg36411, i64 %arg36410)  ; tail call
  ret void
}


define void @lam37690(i64 %env37691, i64 %_9536215, i64 %FUK$_37take) {
  %envptr37759 = inttoptr i64 %env37691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37760 = getelementptr inbounds i64, i64* %envptr37759, i64 3                ; &envptr37759[3]
  %bX5$Ycmb = load i64, i64* %envptr37760, align 8                                   ; load; *envptr37760
  %envptr37761 = inttoptr i64 %env37691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37762 = getelementptr inbounds i64, i64* %envptr37761, i64 2                ; &envptr37761[2]
  %aqf$_37map1 = load i64, i64* %envptr37762, align 8                                ; load; *envptr37762
  %envptr37763 = inttoptr i64 %env37691 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37764 = getelementptr inbounds i64, i64* %envptr37763, i64 1                ; &envptr37763[1]
  %ROr$_37foldr1 = load i64, i64* %envptr37764, align 8                              ; load; *envptr37764
  %cloptr37765 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr37767 = getelementptr inbounds i64, i64* %cloptr37765, i64 1                  ; &eptr37767[1]
  %eptr37768 = getelementptr inbounds i64, i64* %cloptr37765, i64 2                  ; &eptr37768[2]
  %eptr37769 = getelementptr inbounds i64, i64* %cloptr37765, i64 3                  ; &eptr37769[3]
  %eptr37770 = getelementptr inbounds i64, i64* %cloptr37765, i64 4                  ; &eptr37770[4]
  store i64 %ROr$_37foldr1, i64* %eptr37767                                          ; *eptr37767 = %ROr$_37foldr1
  store i64 %aqf$_37map1, i64* %eptr37768                                            ; *eptr37768 = %aqf$_37map1
  store i64 %FUK$_37take, i64* %eptr37769                                            ; *eptr37769 = %FUK$_37take
  store i64 %bX5$Ycmb, i64* %eptr37770                                               ; *eptr37770 = %bX5$Ycmb
  %eptr37766 = getelementptr inbounds i64, i64* %cloptr37765, i64 0                  ; &cloptr37765[0]
  %f37771 = ptrtoint void(i64,i64,i64)* @lam37688 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37771, i64* %eptr37766                                                 ; store fptr
  %arg36414 = ptrtoint i64* %cloptr37765 to i64                                      ; closure cast; i64* -> i64
  %cloptr37772 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37773 = getelementptr inbounds i64, i64* %cloptr37772, i64 0                  ; &cloptr37772[0]
  %f37774 = ptrtoint void(i64,i64,i64)* @lam37298 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37774, i64* %eptr37773                                                 ; store fptr
  %arg36413 = ptrtoint i64* %cloptr37772 to i64                                      ; closure cast; i64* -> i64
  %cloptr37775 = inttoptr i64 %bX5$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37775)                                        ; assert function application
  %i0ptr37776 = getelementptr inbounds i64, i64* %cloptr37775, i64 0                 ; &cloptr37775[0]
  %f37778 = load i64, i64* %i0ptr37776, align 8                                      ; load; *i0ptr37776
  %fptr37777 = inttoptr i64 %f37778 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37777(i64 %bX5$Ycmb, i64 %arg36414, i64 %arg36413)  ; tail call
  ret void
}


define void @lam37688(i64 %env37689, i64 %_9536216, i64 %pp0$_37length) {
  %envptr37779 = inttoptr i64 %env37689 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37780 = getelementptr inbounds i64, i64* %envptr37779, i64 4                ; &envptr37779[4]
  %bX5$Ycmb = load i64, i64* %envptr37780, align 8                                   ; load; *envptr37780
  %envptr37781 = inttoptr i64 %env37689 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37782 = getelementptr inbounds i64, i64* %envptr37781, i64 3                ; &envptr37781[3]
  %FUK$_37take = load i64, i64* %envptr37782, align 8                                ; load; *envptr37782
  %envptr37783 = inttoptr i64 %env37689 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37784 = getelementptr inbounds i64, i64* %envptr37783, i64 2                ; &envptr37783[2]
  %aqf$_37map1 = load i64, i64* %envptr37784, align 8                                ; load; *envptr37784
  %envptr37785 = inttoptr i64 %env37689 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37786 = getelementptr inbounds i64, i64* %envptr37785, i64 1                ; &envptr37785[1]
  %ROr$_37foldr1 = load i64, i64* %envptr37786, align 8                              ; load; *envptr37786
  %cloptr37787 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr37789 = getelementptr inbounds i64, i64* %cloptr37787, i64 1                  ; &eptr37789[1]
  %eptr37790 = getelementptr inbounds i64, i64* %cloptr37787, i64 2                  ; &eptr37790[2]
  %eptr37791 = getelementptr inbounds i64, i64* %cloptr37787, i64 3                  ; &eptr37791[3]
  %eptr37792 = getelementptr inbounds i64, i64* %cloptr37787, i64 4                  ; &eptr37792[4]
  %eptr37793 = getelementptr inbounds i64, i64* %cloptr37787, i64 5                  ; &eptr37793[5]
  store i64 %ROr$_37foldr1, i64* %eptr37789                                          ; *eptr37789 = %ROr$_37foldr1
  store i64 %aqf$_37map1, i64* %eptr37790                                            ; *eptr37790 = %aqf$_37map1
  store i64 %FUK$_37take, i64* %eptr37791                                            ; *eptr37791 = %FUK$_37take
  store i64 %pp0$_37length, i64* %eptr37792                                          ; *eptr37792 = %pp0$_37length
  store i64 %bX5$Ycmb, i64* %eptr37793                                               ; *eptr37793 = %bX5$Ycmb
  %eptr37788 = getelementptr inbounds i64, i64* %cloptr37787, i64 0                  ; &cloptr37787[0]
  %f37794 = ptrtoint void(i64,i64,i64)* @lam37686 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37794, i64* %eptr37788                                                 ; store fptr
  %arg36417 = ptrtoint i64* %cloptr37787 to i64                                      ; closure cast; i64* -> i64
  %cloptr37795 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37796 = getelementptr inbounds i64, i64* %cloptr37795, i64 0                  ; &cloptr37795[0]
  %f37797 = ptrtoint void(i64,i64,i64)* @lam37306 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37797, i64* %eptr37796                                                 ; store fptr
  %arg36416 = ptrtoint i64* %cloptr37795 to i64                                      ; closure cast; i64* -> i64
  %cloptr37798 = inttoptr i64 %bX5$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37798)                                        ; assert function application
  %i0ptr37799 = getelementptr inbounds i64, i64* %cloptr37798, i64 0                 ; &cloptr37798[0]
  %f37801 = load i64, i64* %i0ptr37799, align 8                                      ; load; *i0ptr37799
  %fptr37800 = inttoptr i64 %f37801 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37800(i64 %bX5$Ycmb, i64 %arg36417, i64 %arg36416)  ; tail call
  ret void
}


define void @lam37686(i64 %env37687, i64 %_9536217, i64 %Man$_37foldl1) {
  %envptr37802 = inttoptr i64 %env37687 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37803 = getelementptr inbounds i64, i64* %envptr37802, i64 5                ; &envptr37802[5]
  %bX5$Ycmb = load i64, i64* %envptr37803, align 8                                   ; load; *envptr37803
  %envptr37804 = inttoptr i64 %env37687 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37805 = getelementptr inbounds i64, i64* %envptr37804, i64 4                ; &envptr37804[4]
  %pp0$_37length = load i64, i64* %envptr37805, align 8                              ; load; *envptr37805
  %envptr37806 = inttoptr i64 %env37687 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37807 = getelementptr inbounds i64, i64* %envptr37806, i64 3                ; &envptr37806[3]
  %FUK$_37take = load i64, i64* %envptr37807, align 8                                ; load; *envptr37807
  %envptr37808 = inttoptr i64 %env37687 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37809 = getelementptr inbounds i64, i64* %envptr37808, i64 2                ; &envptr37808[2]
  %aqf$_37map1 = load i64, i64* %envptr37809, align 8                                ; load; *envptr37809
  %envptr37810 = inttoptr i64 %env37687 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37811 = getelementptr inbounds i64, i64* %envptr37810, i64 1                ; &envptr37810[1]
  %ROr$_37foldr1 = load i64, i64* %envptr37811, align 8                              ; load; *envptr37811
  %cloptr37812 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr37814 = getelementptr inbounds i64, i64* %cloptr37812, i64 1                  ; &eptr37814[1]
  store i64 %Man$_37foldl1, i64* %eptr37814                                          ; *eptr37814 = %Man$_37foldl1
  %eptr37813 = getelementptr inbounds i64, i64* %cloptr37812, i64 0                  ; &cloptr37812[0]
  %f37815 = ptrtoint void(i64,i64,i64)* @lam37684 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37815, i64* %eptr37813                                                 ; store fptr
  %s6h$_37last = ptrtoint i64* %cloptr37812 to i64                                   ; closure cast; i64* -> i64
  %cloptr37816 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr37818 = getelementptr inbounds i64, i64* %cloptr37816, i64 1                  ; &eptr37818[1]
  %eptr37819 = getelementptr inbounds i64, i64* %cloptr37816, i64 2                  ; &eptr37819[2]
  store i64 %FUK$_37take, i64* %eptr37818                                            ; *eptr37818 = %FUK$_37take
  store i64 %pp0$_37length, i64* %eptr37819                                          ; *eptr37819 = %pp0$_37length
  %eptr37817 = getelementptr inbounds i64, i64* %cloptr37816, i64 0                  ; &cloptr37816[0]
  %f37820 = ptrtoint void(i64,i64,i64,i64)* @lam37678 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f37820, i64* %eptr37817                                                 ; store fptr
  %oxA$_37drop_45right = ptrtoint i64* %cloptr37816 to i64                           ; closure cast; i64* -> i64
  %cloptr37821 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr37823 = getelementptr inbounds i64, i64* %cloptr37821, i64 1                  ; &eptr37823[1]
  %eptr37824 = getelementptr inbounds i64, i64* %cloptr37821, i64 2                  ; &eptr37824[2]
  %eptr37825 = getelementptr inbounds i64, i64* %cloptr37821, i64 3                  ; &eptr37825[3]
  %eptr37826 = getelementptr inbounds i64, i64* %cloptr37821, i64 4                  ; &eptr37826[4]
  %eptr37827 = getelementptr inbounds i64, i64* %cloptr37821, i64 5                  ; &eptr37827[5]
  %eptr37828 = getelementptr inbounds i64, i64* %cloptr37821, i64 6                  ; &eptr37828[6]
  store i64 %ROr$_37foldr1, i64* %eptr37823                                          ; *eptr37823 = %ROr$_37foldr1
  store i64 %s6h$_37last, i64* %eptr37824                                            ; *eptr37824 = %s6h$_37last
  store i64 %oxA$_37drop_45right, i64* %eptr37825                                    ; *eptr37825 = %oxA$_37drop_45right
  store i64 %pp0$_37length, i64* %eptr37826                                          ; *eptr37826 = %pp0$_37length
  store i64 %Man$_37foldl1, i64* %eptr37827                                          ; *eptr37827 = %Man$_37foldl1
  store i64 %bX5$Ycmb, i64* %eptr37828                                               ; *eptr37828 = %bX5$Ycmb
  %eptr37822 = getelementptr inbounds i64, i64* %cloptr37821, i64 0                  ; &cloptr37821[0]
  %f37829 = ptrtoint void(i64,i64,i64)* @lam37674 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37829, i64* %eptr37822                                                 ; store fptr
  %arg36437 = ptrtoint i64* %cloptr37821 to i64                                      ; closure cast; i64* -> i64
  %cloptr37830 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr37832 = getelementptr inbounds i64, i64* %cloptr37830, i64 1                  ; &eptr37832[1]
  %eptr37833 = getelementptr inbounds i64, i64* %cloptr37830, i64 2                  ; &eptr37833[2]
  store i64 %ROr$_37foldr1, i64* %eptr37832                                          ; *eptr37832 = %ROr$_37foldr1
  store i64 %aqf$_37map1, i64* %eptr37833                                            ; *eptr37833 = %aqf$_37map1
  %eptr37831 = getelementptr inbounds i64, i64* %cloptr37830, i64 0                  ; &cloptr37830[0]
  %f37834 = ptrtoint void(i64,i64,i64)* @lam37343 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37834, i64* %eptr37831                                                 ; store fptr
  %arg36436 = ptrtoint i64* %cloptr37830 to i64                                      ; closure cast; i64* -> i64
  %cloptr37835 = inttoptr i64 %bX5$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37835)                                        ; assert function application
  %i0ptr37836 = getelementptr inbounds i64, i64* %cloptr37835, i64 0                 ; &cloptr37835[0]
  %f37838 = load i64, i64* %i0ptr37836, align 8                                      ; load; *i0ptr37836
  %fptr37837 = inttoptr i64 %f37838 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37837(i64 %bX5$Ycmb, i64 %arg36437, i64 %arg36436)  ; tail call
  ret void
}


define void @lam37684(i64 %env37685, i64 %cont36218, i64 %HEi$lst) {
  %envptr37839 = inttoptr i64 %env37685 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37840 = getelementptr inbounds i64, i64* %envptr37839, i64 1                ; &envptr37839[1]
  %Man$_37foldl1 = load i64, i64* %envptr37840, align 8                              ; load; *envptr37840
  %cloptr37841 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr37842 = getelementptr inbounds i64, i64* %cloptr37841, i64 0                  ; &cloptr37841[0]
  %f37843 = ptrtoint void(i64,i64,i64,i64)* @lam37682 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f37843, i64* %eptr37842                                                 ; store fptr
  %arg36421 = ptrtoint i64* %cloptr37841 to i64                                      ; closure cast; i64* -> i64
  %arg36420 = add i64 0, 0                                                           ; quoted ()
  %cloptr37844 = inttoptr i64 %Man$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37844)                                        ; assert function application
  %i0ptr37845 = getelementptr inbounds i64, i64* %cloptr37844, i64 0                 ; &cloptr37844[0]
  %f37847 = load i64, i64* %i0ptr37845, align 8                                      ; load; *i0ptr37845
  %fptr37846 = inttoptr i64 %f37847 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37846(i64 %Man$_37foldl1, i64 %cont36218, i64 %arg36421, i64 %arg36420, i64 %HEi$lst); tail call
  ret void
}


define void @lam37682(i64 %env37683, i64 %cont36219, i64 %UjJ$x, i64 %Yo7$y) {
  %arg36425 = add i64 0, 0                                                           ; quoted ()
  %cloptr37848 = inttoptr i64 %cont36219 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37848)                                        ; assert function application
  %i0ptr37849 = getelementptr inbounds i64, i64* %cloptr37848, i64 0                 ; &cloptr37848[0]
  %f37851 = load i64, i64* %i0ptr37849, align 8                                      ; load; *i0ptr37849
  %fptr37850 = inttoptr i64 %f37851 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37850(i64 %cont36219, i64 %arg36425, i64 %UjJ$x)    ; tail call
  ret void
}


define void @lam37678(i64 %env37679, i64 %cont36220, i64 %SgH$lst, i64 %YBe$n) {
  %envptr37852 = inttoptr i64 %env37679 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37853 = getelementptr inbounds i64, i64* %envptr37852, i64 2                ; &envptr37852[2]
  %pp0$_37length = load i64, i64* %envptr37853, align 8                              ; load; *envptr37853
  %envptr37854 = inttoptr i64 %env37679 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37855 = getelementptr inbounds i64, i64* %envptr37854, i64 1                ; &envptr37854[1]
  %FUK$_37take = load i64, i64* %envptr37855, align 8                                ; load; *envptr37855
  %cloptr37856 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr37858 = getelementptr inbounds i64, i64* %cloptr37856, i64 1                  ; &eptr37858[1]
  %eptr37859 = getelementptr inbounds i64, i64* %cloptr37856, i64 2                  ; &eptr37859[2]
  %eptr37860 = getelementptr inbounds i64, i64* %cloptr37856, i64 3                  ; &eptr37860[3]
  %eptr37861 = getelementptr inbounds i64, i64* %cloptr37856, i64 4                  ; &eptr37861[4]
  store i64 %cont36220, i64* %eptr37858                                              ; *eptr37858 = %cont36220
  store i64 %FUK$_37take, i64* %eptr37859                                            ; *eptr37859 = %FUK$_37take
  store i64 %YBe$n, i64* %eptr37860                                                  ; *eptr37860 = %YBe$n
  store i64 %SgH$lst, i64* %eptr37861                                                ; *eptr37861 = %SgH$lst
  %eptr37857 = getelementptr inbounds i64, i64* %cloptr37856, i64 0                  ; &cloptr37856[0]
  %f37862 = ptrtoint void(i64,i64,i64)* @lam37676 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37862, i64* %eptr37857                                                 ; store fptr
  %arg36428 = ptrtoint i64* %cloptr37856 to i64                                      ; closure cast; i64* -> i64
  %cloptr37863 = inttoptr i64 %pp0$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37863)                                        ; assert function application
  %i0ptr37864 = getelementptr inbounds i64, i64* %cloptr37863, i64 0                 ; &cloptr37863[0]
  %f37866 = load i64, i64* %i0ptr37864, align 8                                      ; load; *i0ptr37864
  %fptr37865 = inttoptr i64 %f37866 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37865(i64 %pp0$_37length, i64 %arg36428, i64 %SgH$lst); tail call
  ret void
}


define void @lam37676(i64 %env37677, i64 %_9536221, i64 %a36117) {
  %envptr37867 = inttoptr i64 %env37677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37868 = getelementptr inbounds i64, i64* %envptr37867, i64 4                ; &envptr37867[4]
  %SgH$lst = load i64, i64* %envptr37868, align 8                                    ; load; *envptr37868
  %envptr37869 = inttoptr i64 %env37677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37870 = getelementptr inbounds i64, i64* %envptr37869, i64 3                ; &envptr37869[3]
  %YBe$n = load i64, i64* %envptr37870, align 8                                      ; load; *envptr37870
  %envptr37871 = inttoptr i64 %env37677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37872 = getelementptr inbounds i64, i64* %envptr37871, i64 2                ; &envptr37871[2]
  %FUK$_37take = load i64, i64* %envptr37872, align 8                                ; load; *envptr37872
  %envptr37873 = inttoptr i64 %env37677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37874 = getelementptr inbounds i64, i64* %envptr37873, i64 1                ; &envptr37873[1]
  %cont36220 = load i64, i64* %envptr37874, align 8                                  ; load; *envptr37874
  %a36118 = call i64 @prim__45(i64 %a36117, i64 %YBe$n)                              ; call prim__45
  %cloptr37875 = inttoptr i64 %FUK$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37875)                                        ; assert function application
  %i0ptr37876 = getelementptr inbounds i64, i64* %cloptr37875, i64 0                 ; &cloptr37875[0]
  %f37878 = load i64, i64* %i0ptr37876, align 8                                      ; load; *i0ptr37876
  %fptr37877 = inttoptr i64 %f37878 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37877(i64 %FUK$_37take, i64 %cont36220, i64 %SgH$lst, i64 %a36118); tail call
  ret void
}


define void @lam37674(i64 %env37675, i64 %_9536222, i64 %Ls1$_37foldr) {
  %envptr37879 = inttoptr i64 %env37675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37880 = getelementptr inbounds i64, i64* %envptr37879, i64 6                ; &envptr37879[6]
  %bX5$Ycmb = load i64, i64* %envptr37880, align 8                                   ; load; *envptr37880
  %envptr37881 = inttoptr i64 %env37675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37882 = getelementptr inbounds i64, i64* %envptr37881, i64 5                ; &envptr37881[5]
  %Man$_37foldl1 = load i64, i64* %envptr37882, align 8                              ; load; *envptr37882
  %envptr37883 = inttoptr i64 %env37675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37884 = getelementptr inbounds i64, i64* %envptr37883, i64 4                ; &envptr37883[4]
  %pp0$_37length = load i64, i64* %envptr37884, align 8                              ; load; *envptr37884
  %envptr37885 = inttoptr i64 %env37675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37886 = getelementptr inbounds i64, i64* %envptr37885, i64 3                ; &envptr37885[3]
  %oxA$_37drop_45right = load i64, i64* %envptr37886, align 8                        ; load; *envptr37886
  %envptr37887 = inttoptr i64 %env37675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37888 = getelementptr inbounds i64, i64* %envptr37887, i64 2                ; &envptr37887[2]
  %s6h$_37last = load i64, i64* %envptr37888, align 8                                ; load; *envptr37888
  %envptr37889 = inttoptr i64 %env37675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37890 = getelementptr inbounds i64, i64* %envptr37889, i64 1                ; &envptr37889[1]
  %ROr$_37foldr1 = load i64, i64* %envptr37890, align 8                              ; load; *envptr37890
  %cloptr37891 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr37893 = getelementptr inbounds i64, i64* %cloptr37891, i64 1                  ; &eptr37893[1]
  store i64 %ROr$_37foldr1, i64* %eptr37893                                          ; *eptr37893 = %ROr$_37foldr1
  %eptr37892 = getelementptr inbounds i64, i64* %cloptr37891, i64 0                  ; &cloptr37891[0]
  %f37894 = ptrtoint void(i64,i64,i64,i64)* @lam37672 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f37894, i64* %eptr37892                                                 ; store fptr
  %ylA$_37map1 = ptrtoint i64* %cloptr37891 to i64                                   ; closure cast; i64* -> i64
  %cloptr37895 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr37897 = getelementptr inbounds i64, i64* %cloptr37895, i64 1                  ; &eptr37897[1]
  %eptr37898 = getelementptr inbounds i64, i64* %cloptr37895, i64 2                  ; &eptr37898[2]
  %eptr37899 = getelementptr inbounds i64, i64* %cloptr37895, i64 3                  ; &eptr37899[3]
  store i64 %Ls1$_37foldr, i64* %eptr37897                                           ; *eptr37897 = %Ls1$_37foldr
  store i64 %s6h$_37last, i64* %eptr37898                                            ; *eptr37898 = %s6h$_37last
  store i64 %oxA$_37drop_45right, i64* %eptr37899                                    ; *eptr37899 = %oxA$_37drop_45right
  %eptr37896 = getelementptr inbounds i64, i64* %cloptr37895, i64 0                  ; &cloptr37895[0]
  %f37900 = ptrtoint void(i64,i64)* @lam37664 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f37900, i64* %eptr37896                                                 ; store fptr
  %KbP$_37map = ptrtoint i64* %cloptr37895 to i64                                    ; closure cast; i64* -> i64
  %cloptr37901 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr37903 = getelementptr inbounds i64, i64* %cloptr37901, i64 1                  ; &eptr37903[1]
  %eptr37904 = getelementptr inbounds i64, i64* %cloptr37901, i64 2                  ; &eptr37904[2]
  store i64 %pp0$_37length, i64* %eptr37903                                          ; *eptr37903 = %pp0$_37length
  store i64 %Man$_37foldl1, i64* %eptr37904                                          ; *eptr37904 = %Man$_37foldl1
  %eptr37902 = getelementptr inbounds i64, i64* %cloptr37901, i64 0                  ; &cloptr37901[0]
  %f37905 = ptrtoint void(i64,i64,i64)* @lam37651 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37905, i64* %eptr37902                                                 ; store fptr
  %arg36479 = ptrtoint i64* %cloptr37901 to i64                                      ; closure cast; i64* -> i64
  %cloptr37906 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr37908 = getelementptr inbounds i64, i64* %cloptr37906, i64 1                  ; &eptr37908[1]
  %eptr37909 = getelementptr inbounds i64, i64* %cloptr37906, i64 2                  ; &eptr37909[2]
  %eptr37910 = getelementptr inbounds i64, i64* %cloptr37906, i64 3                  ; &eptr37910[3]
  store i64 %ROr$_37foldr1, i64* %eptr37908                                          ; *eptr37908 = %ROr$_37foldr1
  store i64 %ylA$_37map1, i64* %eptr37909                                            ; *eptr37909 = %ylA$_37map1
  store i64 %Ls1$_37foldr, i64* %eptr37910                                           ; *eptr37910 = %Ls1$_37foldr
  %eptr37907 = getelementptr inbounds i64, i64* %cloptr37906, i64 0                  ; &cloptr37906[0]
  %f37911 = ptrtoint void(i64,i64,i64)* @lam37380 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37911, i64* %eptr37907                                                 ; store fptr
  %arg36478 = ptrtoint i64* %cloptr37906 to i64                                      ; closure cast; i64* -> i64
  %cloptr37912 = inttoptr i64 %bX5$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37912)                                        ; assert function application
  %i0ptr37913 = getelementptr inbounds i64, i64* %cloptr37912, i64 0                 ; &cloptr37912[0]
  %f37915 = load i64, i64* %i0ptr37913, align 8                                      ; load; *i0ptr37913
  %fptr37914 = inttoptr i64 %f37915 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37914(i64 %bX5$Ycmb, i64 %arg36479, i64 %arg36478)  ; tail call
  ret void
}


define void @lam37672(i64 %env37673, i64 %cont36223, i64 %Qcf$f, i64 %QUg$lst) {
  %envptr37916 = inttoptr i64 %env37673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37917 = getelementptr inbounds i64, i64* %envptr37916, i64 1                ; &envptr37916[1]
  %ROr$_37foldr1 = load i64, i64* %envptr37917, align 8                              ; load; *envptr37917
  %cloptr37918 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr37920 = getelementptr inbounds i64, i64* %cloptr37918, i64 1                  ; &eptr37920[1]
  store i64 %Qcf$f, i64* %eptr37920                                                  ; *eptr37920 = %Qcf$f
  %eptr37919 = getelementptr inbounds i64, i64* %cloptr37918, i64 0                  ; &cloptr37918[0]
  %f37921 = ptrtoint void(i64,i64,i64,i64)* @lam37670 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f37921, i64* %eptr37919                                                 ; store fptr
  %arg36441 = ptrtoint i64* %cloptr37918 to i64                                      ; closure cast; i64* -> i64
  %arg36440 = add i64 0, 0                                                           ; quoted ()
  %cloptr37922 = inttoptr i64 %ROr$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37922)                                        ; assert function application
  %i0ptr37923 = getelementptr inbounds i64, i64* %cloptr37922, i64 0                 ; &cloptr37922[0]
  %f37925 = load i64, i64* %i0ptr37923, align 8                                      ; load; *i0ptr37923
  %fptr37924 = inttoptr i64 %f37925 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37924(i64 %ROr$_37foldr1, i64 %cont36223, i64 %arg36441, i64 %arg36440, i64 %QUg$lst); tail call
  ret void
}


define void @lam37670(i64 %env37671, i64 %cont36224, i64 %icD$v, i64 %Rra$r) {
  %envptr37926 = inttoptr i64 %env37671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37927 = getelementptr inbounds i64, i64* %envptr37926, i64 1                ; &envptr37926[1]
  %Qcf$f = load i64, i64* %envptr37927, align 8                                      ; load; *envptr37927
  %cloptr37928 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr37930 = getelementptr inbounds i64, i64* %cloptr37928, i64 1                  ; &eptr37930[1]
  %eptr37931 = getelementptr inbounds i64, i64* %cloptr37928, i64 2                  ; &eptr37931[2]
  store i64 %cont36224, i64* %eptr37930                                              ; *eptr37930 = %cont36224
  store i64 %Rra$r, i64* %eptr37931                                                  ; *eptr37931 = %Rra$r
  %eptr37929 = getelementptr inbounds i64, i64* %cloptr37928, i64 0                  ; &cloptr37928[0]
  %f37932 = ptrtoint void(i64,i64,i64)* @lam37668 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37932, i64* %eptr37929                                                 ; store fptr
  %arg36445 = ptrtoint i64* %cloptr37928 to i64                                      ; closure cast; i64* -> i64
  %cloptr37933 = inttoptr i64 %Qcf$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37933)                                        ; assert function application
  %i0ptr37934 = getelementptr inbounds i64, i64* %cloptr37933, i64 0                 ; &cloptr37933[0]
  %f37936 = load i64, i64* %i0ptr37934, align 8                                      ; load; *i0ptr37934
  %fptr37935 = inttoptr i64 %f37936 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37935(i64 %Qcf$f, i64 %arg36445, i64 %icD$v)        ; tail call
  ret void
}


define void @lam37668(i64 %env37669, i64 %_9536225, i64 %a36127) {
  %envptr37937 = inttoptr i64 %env37669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37938 = getelementptr inbounds i64, i64* %envptr37937, i64 2                ; &envptr37937[2]
  %Rra$r = load i64, i64* %envptr37938, align 8                                      ; load; *envptr37938
  %envptr37939 = inttoptr i64 %env37669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37940 = getelementptr inbounds i64, i64* %envptr37939, i64 1                ; &envptr37939[1]
  %cont36224 = load i64, i64* %envptr37940, align 8                                  ; load; *envptr37940
  %retprim36226 = call i64 @prim_cons(i64 %a36127, i64 %Rra$r)                       ; call prim_cons
  %arg36450 = add i64 0, 0                                                           ; quoted ()
  %cloptr37941 = inttoptr i64 %cont36224 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37941)                                        ; assert function application
  %i0ptr37942 = getelementptr inbounds i64, i64* %cloptr37941, i64 0                 ; &cloptr37941[0]
  %f37944 = load i64, i64* %i0ptr37942, align 8                                      ; load; *i0ptr37942
  %fptr37943 = inttoptr i64 %f37944 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37943(i64 %cont36224, i64 %arg36450, i64 %retprim36226); tail call
  ret void
}


define void @lam37664(i64 %env37665, i64 %Zfm$args36228) {
  %envptr37945 = inttoptr i64 %env37665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37946 = getelementptr inbounds i64, i64* %envptr37945, i64 3                ; &envptr37945[3]
  %oxA$_37drop_45right = load i64, i64* %envptr37946, align 8                        ; load; *envptr37946
  %envptr37947 = inttoptr i64 %env37665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37948 = getelementptr inbounds i64, i64* %envptr37947, i64 2                ; &envptr37947[2]
  %s6h$_37last = load i64, i64* %envptr37948, align 8                                ; load; *envptr37948
  %envptr37949 = inttoptr i64 %env37665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37950 = getelementptr inbounds i64, i64* %envptr37949, i64 1                ; &envptr37949[1]
  %Ls1$_37foldr = load i64, i64* %envptr37950, align 8                               ; load; *envptr37950
  %cont36227 = call i64 @prim_car(i64 %Zfm$args36228)                                ; call prim_car
  %Zfm$args = call i64 @prim_cdr(i64 %Zfm$args36228)                                 ; call prim_cdr
  %UO7$f = call i64 @prim_car(i64 %Zfm$args)                                         ; call prim_car
  %ocH$lsts = call i64 @prim_cdr(i64 %Zfm$args)                                      ; call prim_cdr
  %arg36457 = add i64 0, 0                                                           ; quoted ()
  %a36131 = call i64 @prim_cons(i64 %arg36457, i64 %ocH$lsts)                        ; call prim_cons
  %cloptr37951 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr37953 = getelementptr inbounds i64, i64* %cloptr37951, i64 1                  ; &eptr37953[1]
  %eptr37954 = getelementptr inbounds i64, i64* %cloptr37951, i64 2                  ; &eptr37954[2]
  %eptr37955 = getelementptr inbounds i64, i64* %cloptr37951, i64 3                  ; &eptr37955[3]
  store i64 %s6h$_37last, i64* %eptr37953                                            ; *eptr37953 = %s6h$_37last
  store i64 %UO7$f, i64* %eptr37954                                                  ; *eptr37954 = %UO7$f
  store i64 %oxA$_37drop_45right, i64* %eptr37955                                    ; *eptr37955 = %oxA$_37drop_45right
  %eptr37952 = getelementptr inbounds i64, i64* %cloptr37951, i64 0                  ; &cloptr37951[0]
  %f37956 = ptrtoint void(i64,i64)* @lam37661 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f37956, i64* %eptr37952                                                 ; store fptr
  %arg36459 = ptrtoint i64* %cloptr37951 to i64                                      ; closure cast; i64* -> i64
  %a36132 = call i64 @prim_cons(i64 %arg36459, i64 %a36131)                          ; call prim_cons
  %cps_45lst36236 = call i64 @prim_cons(i64 %cont36227, i64 %a36132)                 ; call prim_cons
  %cloptr37957 = inttoptr i64 %Ls1$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37957)                                        ; assert function application
  %i0ptr37958 = getelementptr inbounds i64, i64* %cloptr37957, i64 0                 ; &cloptr37957[0]
  %f37960 = load i64, i64* %i0ptr37958, align 8                                      ; load; *i0ptr37958
  %fptr37959 = inttoptr i64 %f37960 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37959(i64 %Ls1$_37foldr, i64 %cps_45lst36236)       ; tail call
  ret void
}


define void @lam37661(i64 %env37662, i64 %LJv$fargs36230) {
  %envptr37961 = inttoptr i64 %env37662 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37962 = getelementptr inbounds i64, i64* %envptr37961, i64 3                ; &envptr37961[3]
  %oxA$_37drop_45right = load i64, i64* %envptr37962, align 8                        ; load; *envptr37962
  %envptr37963 = inttoptr i64 %env37662 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37964 = getelementptr inbounds i64, i64* %envptr37963, i64 2                ; &envptr37963[2]
  %UO7$f = load i64, i64* %envptr37964, align 8                                      ; load; *envptr37964
  %envptr37965 = inttoptr i64 %env37662 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37966 = getelementptr inbounds i64, i64* %envptr37965, i64 1                ; &envptr37965[1]
  %s6h$_37last = load i64, i64* %envptr37966, align 8                                ; load; *envptr37966
  %cont36229 = call i64 @prim_car(i64 %LJv$fargs36230)                               ; call prim_car
  %LJv$fargs = call i64 @prim_cdr(i64 %LJv$fargs36230)                               ; call prim_cdr
  %cloptr37967 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr37969 = getelementptr inbounds i64, i64* %cloptr37967, i64 1                  ; &eptr37969[1]
  %eptr37970 = getelementptr inbounds i64, i64* %cloptr37967, i64 2                  ; &eptr37970[2]
  %eptr37971 = getelementptr inbounds i64, i64* %cloptr37967, i64 3                  ; &eptr37971[3]
  %eptr37972 = getelementptr inbounds i64, i64* %cloptr37967, i64 4                  ; &eptr37972[4]
  store i64 %s6h$_37last, i64* %eptr37969                                            ; *eptr37969 = %s6h$_37last
  store i64 %UO7$f, i64* %eptr37970                                                  ; *eptr37970 = %UO7$f
  store i64 %LJv$fargs, i64* %eptr37971                                              ; *eptr37971 = %LJv$fargs
  store i64 %cont36229, i64* %eptr37972                                              ; *eptr37972 = %cont36229
  %eptr37968 = getelementptr inbounds i64, i64* %cloptr37967, i64 0                  ; &cloptr37967[0]
  %f37973 = ptrtoint void(i64,i64,i64)* @lam37659 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37973, i64* %eptr37968                                                 ; store fptr
  %arg36464 = ptrtoint i64* %cloptr37967 to i64                                      ; closure cast; i64* -> i64
  %arg36462 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %cloptr37974 = inttoptr i64 %oxA$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37974)                                        ; assert function application
  %i0ptr37975 = getelementptr inbounds i64, i64* %cloptr37974, i64 0                 ; &cloptr37974[0]
  %f37977 = load i64, i64* %i0ptr37975, align 8                                      ; load; *i0ptr37975
  %fptr37976 = inttoptr i64 %f37977 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37976(i64 %oxA$_37drop_45right, i64 %arg36464, i64 %LJv$fargs, i64 %arg36462); tail call
  ret void
}


define void @lam37659(i64 %env37660, i64 %_9536231, i64 %a36128) {
  %envptr37978 = inttoptr i64 %env37660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37979 = getelementptr inbounds i64, i64* %envptr37978, i64 4                ; &envptr37978[4]
  %cont36229 = load i64, i64* %envptr37979, align 8                                  ; load; *envptr37979
  %envptr37980 = inttoptr i64 %env37660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37981 = getelementptr inbounds i64, i64* %envptr37980, i64 3                ; &envptr37980[3]
  %LJv$fargs = load i64, i64* %envptr37981, align 8                                  ; load; *envptr37981
  %envptr37982 = inttoptr i64 %env37660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37983 = getelementptr inbounds i64, i64* %envptr37982, i64 2                ; &envptr37982[2]
  %UO7$f = load i64, i64* %envptr37983, align 8                                      ; load; *envptr37983
  %envptr37984 = inttoptr i64 %env37660 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37985 = getelementptr inbounds i64, i64* %envptr37984, i64 1                ; &envptr37984[1]
  %s6h$_37last = load i64, i64* %envptr37985, align 8                                ; load; *envptr37985
  %cloptr37986 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr37988 = getelementptr inbounds i64, i64* %cloptr37986, i64 1                  ; &eptr37988[1]
  %eptr37989 = getelementptr inbounds i64, i64* %cloptr37986, i64 2                  ; &eptr37989[2]
  %eptr37990 = getelementptr inbounds i64, i64* %cloptr37986, i64 3                  ; &eptr37990[3]
  store i64 %s6h$_37last, i64* %eptr37988                                            ; *eptr37988 = %s6h$_37last
  store i64 %LJv$fargs, i64* %eptr37989                                              ; *eptr37989 = %LJv$fargs
  store i64 %cont36229, i64* %eptr37990                                              ; *eptr37990 = %cont36229
  %eptr37987 = getelementptr inbounds i64, i64* %cloptr37986, i64 0                  ; &cloptr37986[0]
  %f37991 = ptrtoint void(i64,i64,i64)* @lam37657 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f37991, i64* %eptr37987                                                 ; store fptr
  %arg36467 = ptrtoint i64* %cloptr37986 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst36235 = call i64 @prim_cons(i64 %arg36467, i64 %a36128)                  ; call prim_cons
  %cloptr37992 = inttoptr i64 %UO7$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr37992)                                        ; assert function application
  %i0ptr37993 = getelementptr inbounds i64, i64* %cloptr37992, i64 0                 ; &cloptr37992[0]
  %f37995 = load i64, i64* %i0ptr37993, align 8                                      ; load; *i0ptr37993
  %fptr37994 = inttoptr i64 %f37995 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr37994(i64 %UO7$f, i64 %cps_45lst36235)              ; tail call
  ret void
}


define void @lam37657(i64 %env37658, i64 %_9536232, i64 %a36129) {
  %envptr37996 = inttoptr i64 %env37658 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37997 = getelementptr inbounds i64, i64* %envptr37996, i64 3                ; &envptr37996[3]
  %cont36229 = load i64, i64* %envptr37997, align 8                                  ; load; *envptr37997
  %envptr37998 = inttoptr i64 %env37658 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr37999 = getelementptr inbounds i64, i64* %envptr37998, i64 2                ; &envptr37998[2]
  %LJv$fargs = load i64, i64* %envptr37999, align 8                                  ; load; *envptr37999
  %envptr38000 = inttoptr i64 %env37658 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38001 = getelementptr inbounds i64, i64* %envptr38000, i64 1                ; &envptr38000[1]
  %s6h$_37last = load i64, i64* %envptr38001, align 8                                ; load; *envptr38001
  %cloptr38002 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38004 = getelementptr inbounds i64, i64* %cloptr38002, i64 1                  ; &eptr38004[1]
  %eptr38005 = getelementptr inbounds i64, i64* %cloptr38002, i64 2                  ; &eptr38005[2]
  store i64 %a36129, i64* %eptr38004                                                 ; *eptr38004 = %a36129
  store i64 %cont36229, i64* %eptr38005                                              ; *eptr38005 = %cont36229
  %eptr38003 = getelementptr inbounds i64, i64* %cloptr38002, i64 0                  ; &cloptr38002[0]
  %f38006 = ptrtoint void(i64,i64,i64)* @lam37655 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38006, i64* %eptr38003                                                 ; store fptr
  %arg36469 = ptrtoint i64* %cloptr38002 to i64                                      ; closure cast; i64* -> i64
  %cloptr38007 = inttoptr i64 %s6h$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38007)                                        ; assert function application
  %i0ptr38008 = getelementptr inbounds i64, i64* %cloptr38007, i64 0                 ; &cloptr38007[0]
  %f38010 = load i64, i64* %i0ptr38008, align 8                                      ; load; *i0ptr38008
  %fptr38009 = inttoptr i64 %f38010 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38009(i64 %s6h$_37last, i64 %arg36469, i64 %LJv$fargs); tail call
  ret void
}


define void @lam37655(i64 %env37656, i64 %_9536233, i64 %a36130) {
  %envptr38011 = inttoptr i64 %env37656 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38012 = getelementptr inbounds i64, i64* %envptr38011, i64 2                ; &envptr38011[2]
  %cont36229 = load i64, i64* %envptr38012, align 8                                  ; load; *envptr38012
  %envptr38013 = inttoptr i64 %env37656 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38014 = getelementptr inbounds i64, i64* %envptr38013, i64 1                ; &envptr38013[1]
  %a36129 = load i64, i64* %envptr38014, align 8                                     ; load; *envptr38014
  %retprim36234 = call i64 @prim_cons(i64 %a36129, i64 %a36130)                      ; call prim_cons
  %arg36474 = add i64 0, 0                                                           ; quoted ()
  %cloptr38015 = inttoptr i64 %cont36229 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38015)                                        ; assert function application
  %i0ptr38016 = getelementptr inbounds i64, i64* %cloptr38015, i64 0                 ; &cloptr38015[0]
  %f38018 = load i64, i64* %i0ptr38016, align 8                                      ; load; *i0ptr38016
  %fptr38017 = inttoptr i64 %f38018 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38017(i64 %cont36229, i64 %arg36474, i64 %retprim36234); tail call
  ret void
}


define void @lam37651(i64 %env37652, i64 %_9536237, i64 %een$_37foldl) {
  %envptr38019 = inttoptr i64 %env37652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38020 = getelementptr inbounds i64, i64* %envptr38019, i64 2                ; &envptr38019[2]
  %Man$_37foldl1 = load i64, i64* %envptr38020, align 8                              ; load; *envptr38020
  %envptr38021 = inttoptr i64 %env37652 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38022 = getelementptr inbounds i64, i64* %envptr38021, i64 1                ; &envptr38021[1]
  %pp0$_37length = load i64, i64* %envptr38022, align 8                              ; load; *envptr38022
  %cloptr38023 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38024 = getelementptr inbounds i64, i64* %cloptr38023, i64 0                  ; &cloptr38023[0]
  %f38025 = ptrtoint void(i64,i64,i64,i64)* @lam37649 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38025, i64* %eptr38024                                                 ; store fptr
  %tkz$_37_62 = ptrtoint i64* %cloptr38023 to i64                                    ; closure cast; i64* -> i64
  %cloptr38026 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38027 = getelementptr inbounds i64, i64* %cloptr38026, i64 0                  ; &cloptr38026[0]
  %f38028 = ptrtoint void(i64,i64,i64,i64)* @lam37646 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38028, i64* %eptr38027                                                 ; store fptr
  %yT2$_37_62_61 = ptrtoint i64* %cloptr38026 to i64                                 ; closure cast; i64* -> i64
  %arg36494 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %arg36493 = add i64 0, 0                                                           ; quoted ()
  %V0c$_37append = call i64 @prim_make_45vector(i64 %arg36494, i64 %arg36493)        ; call prim_make_45vector
  %arg36496 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr38029 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr38031 = getelementptr inbounds i64, i64* %cloptr38029, i64 1                  ; &eptr38031[1]
  store i64 %V0c$_37append, i64* %eptr38031                                          ; *eptr38031 = %V0c$_37append
  %eptr38030 = getelementptr inbounds i64, i64* %cloptr38029, i64 0                  ; &cloptr38029[0]
  %f38032 = ptrtoint void(i64,i64,i64,i64)* @lam37640 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38032, i64* %eptr38030                                                 ; store fptr
  %arg36495 = ptrtoint i64* %cloptr38029 to i64                                      ; closure cast; i64* -> i64
  %mpQ$_950 = call i64 @prim_vector_45set_33(i64 %V0c$_37append, i64 %arg36496, i64 %arg36495); call prim_vector_45set_33
  %arg36515 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36326 = call i64 @prim_vector_45ref(i64 %V0c$_37append, i64 %arg36515)     ; call prim_vector_45ref
  %cloptr38033 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38035 = getelementptr inbounds i64, i64* %cloptr38033, i64 1                  ; &eptr38035[1]
  %eptr38036 = getelementptr inbounds i64, i64* %cloptr38033, i64 2                  ; &eptr38036[2]
  %eptr38037 = getelementptr inbounds i64, i64* %cloptr38033, i64 3                  ; &eptr38037[3]
  store i64 %pp0$_37length, i64* %eptr38035                                          ; *eptr38035 = %pp0$_37length
  store i64 %Man$_37foldl1, i64* %eptr38036                                          ; *eptr38036 = %Man$_37foldl1
  store i64 %tkz$_37_62, i64* %eptr38037                                             ; *eptr38037 = %tkz$_37_62
  %eptr38034 = getelementptr inbounds i64, i64* %cloptr38033, i64 0                  ; &cloptr38033[0]
  %f38038 = ptrtoint void(i64,i64,i64)* @lam37632 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38038, i64* %eptr38034                                                 ; store fptr
  %arg36519 = ptrtoint i64* %cloptr38033 to i64                                      ; closure cast; i64* -> i64
  %arg36518 = add i64 0, 0                                                           ; quoted ()
  %cloptr38039 = inttoptr i64 %arg36519 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38039)                                        ; assert function application
  %i0ptr38040 = getelementptr inbounds i64, i64* %cloptr38039, i64 0                 ; &cloptr38039[0]
  %f38042 = load i64, i64* %i0ptr38040, align 8                                      ; load; *i0ptr38040
  %fptr38041 = inttoptr i64 %f38042 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38041(i64 %arg36519, i64 %arg36518, i64 %retprim36326); tail call
  ret void
}


define void @lam37649(i64 %env37650, i64 %cont36238, i64 %rkR$a, i64 %rZ1$b) {
  %a36140 = call i64 @prim__60_61(i64 %rkR$a, i64 %rZ1$b)                            ; call prim__60_61
  %retprim36239 = call i64 @prim_not(i64 %a36140)                                    ; call prim_not
  %arg36485 = add i64 0, 0                                                           ; quoted ()
  %cloptr38043 = inttoptr i64 %cont36238 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38043)                                        ; assert function application
  %i0ptr38044 = getelementptr inbounds i64, i64* %cloptr38043, i64 0                 ; &cloptr38043[0]
  %f38046 = load i64, i64* %i0ptr38044, align 8                                      ; load; *i0ptr38044
  %fptr38045 = inttoptr i64 %f38046 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38045(i64 %cont36238, i64 %arg36485, i64 %retprim36239); tail call
  ret void
}


define void @lam37646(i64 %env37647, i64 %cont36240, i64 %CI5$a, i64 %pUN$b) {
  %a36141 = call i64 @prim__60(i64 %CI5$a, i64 %pUN$b)                               ; call prim__60
  %retprim36241 = call i64 @prim_not(i64 %a36141)                                    ; call prim_not
  %arg36491 = add i64 0, 0                                                           ; quoted ()
  %cloptr38047 = inttoptr i64 %cont36240 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38047)                                        ; assert function application
  %i0ptr38048 = getelementptr inbounds i64, i64* %cloptr38047, i64 0                 ; &cloptr38047[0]
  %f38050 = load i64, i64* %i0ptr38048, align 8                                      ; load; *i0ptr38048
  %fptr38049 = inttoptr i64 %f38050 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38049(i64 %cont36240, i64 %arg36491, i64 %retprim36241); tail call
  ret void
}


define void @lam37640(i64 %env37641, i64 %cont36323, i64 %iYe$ls0, i64 %cdL$ls1) {
  %envptr38051 = inttoptr i64 %env37641 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38052 = getelementptr inbounds i64, i64* %envptr38051, i64 1                ; &envptr38051[1]
  %V0c$_37append = load i64, i64* %envptr38052, align 8                              ; load; *envptr38052
  %a36142 = call i64 @prim_null_63(i64 %iYe$ls0)                                     ; call prim_null_63
  %cmp38053 = icmp eq i64 %a36142, 15                                                ; false?
  br i1 %cmp38053, label %else38055, label %then38054                                ; if

then38054:
  %arg36500 = add i64 0, 0                                                           ; quoted ()
  %cloptr38056 = inttoptr i64 %cont36323 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38056)                                        ; assert function application
  %i0ptr38057 = getelementptr inbounds i64, i64* %cloptr38056, i64 0                 ; &cloptr38056[0]
  %f38059 = load i64, i64* %i0ptr38057, align 8                                      ; load; *i0ptr38057
  %fptr38058 = inttoptr i64 %f38059 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38058(i64 %cont36323, i64 %arg36500, i64 %cdL$ls1)  ; tail call
  ret void

else38055:
  %a36143 = call i64 @prim_car(i64 %iYe$ls0)                                         ; call prim_car
  %arg36503 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36144 = call i64 @prim_vector_45ref(i64 %V0c$_37append, i64 %arg36503)           ; call prim_vector_45ref
  %a36145 = call i64 @prim_cdr(i64 %iYe$ls0)                                         ; call prim_cdr
  %cloptr38060 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38062 = getelementptr inbounds i64, i64* %cloptr38060, i64 1                  ; &eptr38062[1]
  %eptr38063 = getelementptr inbounds i64, i64* %cloptr38060, i64 2                  ; &eptr38063[2]
  store i64 %cont36323, i64* %eptr38062                                              ; *eptr38062 = %cont36323
  store i64 %a36143, i64* %eptr38063                                                 ; *eptr38063 = %a36143
  %eptr38061 = getelementptr inbounds i64, i64* %cloptr38060, i64 0                  ; &cloptr38060[0]
  %f38064 = ptrtoint void(i64,i64,i64)* @lam37637 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38064, i64* %eptr38061                                                 ; store fptr
  %arg36508 = ptrtoint i64* %cloptr38060 to i64                                      ; closure cast; i64* -> i64
  %cloptr38065 = inttoptr i64 %a36144 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38065)                                        ; assert function application
  %i0ptr38066 = getelementptr inbounds i64, i64* %cloptr38065, i64 0                 ; &cloptr38065[0]
  %f38068 = load i64, i64* %i0ptr38066, align 8                                      ; load; *i0ptr38066
  %fptr38067 = inttoptr i64 %f38068 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38067(i64 %a36144, i64 %arg36508, i64 %a36145, i64 %cdL$ls1); tail call
  ret void
}


define void @lam37637(i64 %env37638, i64 %_9536324, i64 %a36146) {
  %envptr38069 = inttoptr i64 %env37638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38070 = getelementptr inbounds i64, i64* %envptr38069, i64 2                ; &envptr38069[2]
  %a36143 = load i64, i64* %envptr38070, align 8                                     ; load; *envptr38070
  %envptr38071 = inttoptr i64 %env37638 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38072 = getelementptr inbounds i64, i64* %envptr38071, i64 1                ; &envptr38071[1]
  %cont36323 = load i64, i64* %envptr38072, align 8                                  ; load; *envptr38072
  %retprim36325 = call i64 @prim_cons(i64 %a36143, i64 %a36146)                      ; call prim_cons
  %arg36513 = add i64 0, 0                                                           ; quoted ()
  %cloptr38073 = inttoptr i64 %cont36323 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38073)                                        ; assert function application
  %i0ptr38074 = getelementptr inbounds i64, i64* %cloptr38073, i64 0                 ; &cloptr38073[0]
  %f38076 = load i64, i64* %i0ptr38074, align 8                                      ; load; *i0ptr38074
  %fptr38075 = inttoptr i64 %f38076 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38075(i64 %cont36323, i64 %arg36513, i64 %retprim36325); tail call
  ret void
}


define void @lam37632(i64 %env37633, i64 %_9536242, i64 %AhA$_37append) {
  %envptr38077 = inttoptr i64 %env37633 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38078 = getelementptr inbounds i64, i64* %envptr38077, i64 3                ; &envptr38077[3]
  %tkz$_37_62 = load i64, i64* %envptr38078, align 8                                 ; load; *envptr38078
  %envptr38079 = inttoptr i64 %env37633 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38080 = getelementptr inbounds i64, i64* %envptr38079, i64 2                ; &envptr38079[2]
  %Man$_37foldl1 = load i64, i64* %envptr38080, align 8                              ; load; *envptr38080
  %envptr38081 = inttoptr i64 %env37633 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38082 = getelementptr inbounds i64, i64* %envptr38081, i64 1                ; &envptr38081[1]
  %pp0$_37length = load i64, i64* %envptr38082, align 8                              ; load; *envptr38082
  %cloptr38083 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38084 = getelementptr inbounds i64, i64* %cloptr38083, i64 0                  ; &cloptr38083[0]
  %f38085 = ptrtoint void(i64,i64,i64)* @lam37630 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38085, i64* %eptr38084                                                 ; store fptr
  %JYy$_37list_63 = ptrtoint i64* %cloptr38083 to i64                                ; closure cast; i64* -> i64
  %cloptr38086 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38087 = getelementptr inbounds i64, i64* %cloptr38086, i64 0                  ; &cloptr38086[0]
  %f38088 = ptrtoint void(i64,i64,i64,i64)* @lam37590 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38088, i64* %eptr38087                                                 ; store fptr
  %qFM$_37drop = ptrtoint i64* %cloptr38086 to i64                                   ; closure cast; i64* -> i64
  %cloptr38089 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38090 = getelementptr inbounds i64, i64* %cloptr38089, i64 0                  ; &cloptr38089[0]
  %f38091 = ptrtoint void(i64,i64,i64,i64)* @lam37550 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38091, i64* %eptr38090                                                 ; store fptr
  %RSX$_37memv = ptrtoint i64* %cloptr38089 to i64                                   ; closure cast; i64* -> i64
  %cloptr38092 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr38094 = getelementptr inbounds i64, i64* %cloptr38092, i64 1                  ; &eptr38094[1]
  store i64 %Man$_37foldl1, i64* %eptr38094                                          ; *eptr38094 = %Man$_37foldl1
  %eptr38093 = getelementptr inbounds i64, i64* %cloptr38092, i64 0                  ; &cloptr38092[0]
  %f38095 = ptrtoint void(i64,i64)* @lam37519 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f38095, i64* %eptr38093                                                 ; store fptr
  %q1X$_37_47 = ptrtoint i64* %cloptr38092 to i64                                    ; closure cast; i64* -> i64
  %cloptr38096 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38097 = getelementptr inbounds i64, i64* %cloptr38096, i64 0                  ; &cloptr38096[0]
  %f38098 = ptrtoint void(i64,i64,i64)* @lam37511 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38098, i64* %eptr38097                                                 ; store fptr
  %D8n$_37first = ptrtoint i64* %cloptr38096 to i64                                  ; closure cast; i64* -> i64
  %cloptr38099 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38100 = getelementptr inbounds i64, i64* %cloptr38099, i64 0                  ; &cloptr38099[0]
  %f38101 = ptrtoint void(i64,i64,i64)* @lam37508 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38101, i64* %eptr38100                                                 ; store fptr
  %aYj$_37second = ptrtoint i64* %cloptr38099 to i64                                 ; closure cast; i64* -> i64
  %cloptr38102 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38103 = getelementptr inbounds i64, i64* %cloptr38102, i64 0                  ; &cloptr38102[0]
  %f38104 = ptrtoint void(i64,i64,i64)* @lam37505 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38104, i64* %eptr38103                                                 ; store fptr
  %Vlx$_37third = ptrtoint i64* %cloptr38102 to i64                                  ; closure cast; i64* -> i64
  %cloptr38105 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38106 = getelementptr inbounds i64, i64* %cloptr38105, i64 0                  ; &cloptr38105[0]
  %f38107 = ptrtoint void(i64,i64,i64)* @lam37502 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38107, i64* %eptr38106                                                 ; store fptr
  %M7l$_37fourth = ptrtoint i64* %cloptr38105 to i64                                 ; closure cast; i64* -> i64
  %cloptr38108 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38109 = getelementptr inbounds i64, i64* %cloptr38108, i64 0                  ; &cloptr38108[0]
  %f38110 = ptrtoint void(i64,i64,i64)* @lam37499 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38110, i64* %eptr38109                                                 ; store fptr
  %F41$promise_63 = ptrtoint i64* %cloptr38108 to i64                                ; closure cast; i64* -> i64
  %cloptr38111 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38112 = getelementptr inbounds i64, i64* %cloptr38111, i64 0                  ; &cloptr38111[0]
  %f38113 = ptrtoint void(i64,i64)* @lam37493 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f38113, i64* %eptr38112                                                 ; store fptr
  %arg36781 = ptrtoint i64* %cloptr38111 to i64                                      ; closure cast; i64* -> i64
  %cloptr38114 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38116 = getelementptr inbounds i64, i64* %cloptr38114, i64 1                  ; &eptr38116[1]
  %eptr38117 = getelementptr inbounds i64, i64* %cloptr38114, i64 2                  ; &eptr38117[2]
  %eptr38118 = getelementptr inbounds i64, i64* %cloptr38114, i64 3                  ; &eptr38118[3]
  store i64 %qFM$_37drop, i64* %eptr38116                                            ; *eptr38116 = %qFM$_37drop
  store i64 %pp0$_37length, i64* %eptr38117                                          ; *eptr38117 = %pp0$_37length
  store i64 %tkz$_37_62, i64* %eptr38118                                             ; *eptr38118 = %tkz$_37_62
  %eptr38115 = getelementptr inbounds i64, i64* %cloptr38114, i64 0                  ; &cloptr38114[0]
  %f38119 = ptrtoint void(i64,i64,i64)* @lam37490 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38119, i64* %eptr38115                                                 ; store fptr
  %arg36780 = ptrtoint i64* %cloptr38114 to i64                                      ; closure cast; i64* -> i64
  %rva37243 = add i64 0, 0                                                           ; quoted ()
  %rva37242 = call i64 @prim_cons(i64 %arg36780, i64 %rva37243)                      ; call prim_cons
  %cloptr38120 = inttoptr i64 %arg36781 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38120)                                        ; assert function application
  %i0ptr38121 = getelementptr inbounds i64, i64* %cloptr38120, i64 0                 ; &cloptr38120[0]
  %f38123 = load i64, i64* %i0ptr38121, align 8                                      ; load; *i0ptr38121
  %fptr38122 = inttoptr i64 %f38123 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38122(i64 %arg36781, i64 %rva37242)                 ; tail call
  ret void
}


define void @lam37630(i64 %env37631, i64 %cont36243, i64 %qFk$a) {
  %arg36521 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %Fbu$a = call i64 @prim_make_45vector(i64 %arg36521, i64 %qFk$a)                   ; call prim_make_45vector
  %cloptr38124 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38125 = getelementptr inbounds i64, i64* %cloptr38124, i64 0                  ; &cloptr38124[0]
  %f38126 = ptrtoint void(i64,i64,i64)* @lam37627 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38126, i64* %eptr38125                                                 ; store fptr
  %arg36524 = ptrtoint i64* %cloptr38124 to i64                                      ; closure cast; i64* -> i64
  %cloptr38127 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38129 = getelementptr inbounds i64, i64* %cloptr38127, i64 1                  ; &eptr38129[1]
  %eptr38130 = getelementptr inbounds i64, i64* %cloptr38127, i64 2                  ; &eptr38130[2]
  store i64 %Fbu$a, i64* %eptr38129                                                  ; *eptr38129 = %Fbu$a
  store i64 %cont36243, i64* %eptr38130                                              ; *eptr38130 = %cont36243
  %eptr38128 = getelementptr inbounds i64, i64* %cloptr38127, i64 0                  ; &cloptr38127[0]
  %f38131 = ptrtoint void(i64,i64,i64)* @lam37624 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38131, i64* %eptr38128                                                 ; store fptr
  %arg36523 = ptrtoint i64* %cloptr38127 to i64                                      ; closure cast; i64* -> i64
  %cloptr38132 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38134 = getelementptr inbounds i64, i64* %cloptr38132, i64 1                  ; &eptr38134[1]
  %eptr38135 = getelementptr inbounds i64, i64* %cloptr38132, i64 2                  ; &eptr38135[2]
  store i64 %Fbu$a, i64* %eptr38134                                                  ; *eptr38134 = %Fbu$a
  store i64 %cont36243, i64* %eptr38135                                              ; *eptr38135 = %cont36243
  %eptr38133 = getelementptr inbounds i64, i64* %cloptr38132, i64 0                  ; &cloptr38132[0]
  %f38136 = ptrtoint void(i64,i64,i64)* @lam37607 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38136, i64* %eptr38133                                                 ; store fptr
  %arg36522 = ptrtoint i64* %cloptr38132 to i64                                      ; closure cast; i64* -> i64
  %cloptr38137 = inttoptr i64 %arg36524 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38137)                                        ; assert function application
  %i0ptr38138 = getelementptr inbounds i64, i64* %cloptr38137, i64 0                 ; &cloptr38137[0]
  %f38140 = load i64, i64* %i0ptr38138, align 8                                      ; load; *i0ptr38138
  %fptr38139 = inttoptr i64 %f38140 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38139(i64 %arg36524, i64 %arg36523, i64 %arg36522)  ; tail call
  ret void
}


define void @lam37627(i64 %env37628, i64 %cont36249, i64 %u2h$k) {
  %arg36526 = add i64 0, 0                                                           ; quoted ()
  %cloptr38141 = inttoptr i64 %cont36249 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38141)                                        ; assert function application
  %i0ptr38142 = getelementptr inbounds i64, i64* %cloptr38141, i64 0                 ; &cloptr38141[0]
  %f38144 = load i64, i64* %i0ptr38142, align 8                                      ; load; *i0ptr38142
  %fptr38143 = inttoptr i64 %f38144 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38143(i64 %cont36249, i64 %arg36526, i64 %u2h$k)    ; tail call
  ret void
}


define void @lam37624(i64 %env37625, i64 %_9536244, i64 %ini$cc) {
  %envptr38145 = inttoptr i64 %env37625 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38146 = getelementptr inbounds i64, i64* %envptr38145, i64 2                ; &envptr38145[2]
  %cont36243 = load i64, i64* %envptr38146, align 8                                  ; load; *envptr38146
  %envptr38147 = inttoptr i64 %env37625 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38148 = getelementptr inbounds i64, i64* %envptr38147, i64 1                ; &envptr38147[1]
  %Fbu$a = load i64, i64* %envptr38148, align 8                                      ; load; *envptr38148
  %arg36528 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36147 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36528)                   ; call prim_vector_45ref
  %a36148 = call i64 @prim_null_63(i64 %a36147)                                      ; call prim_null_63
  %cmp38149 = icmp eq i64 %a36148, 15                                                ; false?
  br i1 %cmp38149, label %else38151, label %then38150                                ; if

then38150:
  %arg36532 = add i64 0, 0                                                           ; quoted ()
  %arg36531 = call i64 @const_init_true()                                            ; quoted #t
  %cloptr38152 = inttoptr i64 %cont36243 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38152)                                        ; assert function application
  %i0ptr38153 = getelementptr inbounds i64, i64* %cloptr38152, i64 0                 ; &cloptr38152[0]
  %f38155 = load i64, i64* %i0ptr38153, align 8                                      ; load; *i0ptr38153
  %fptr38154 = inttoptr i64 %f38155 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38154(i64 %cont36243, i64 %arg36532, i64 %arg36531) ; tail call
  ret void

else38151:
  %arg36534 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36149 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36534)                   ; call prim_vector_45ref
  %a36150 = call i64 @prim_cons_63(i64 %a36149)                                      ; call prim_cons_63
  %cmp38156 = icmp eq i64 %a36150, 15                                                ; false?
  br i1 %cmp38156, label %else38158, label %then38157                                ; if

then38157:
  %arg36537 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36151 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36537)                   ; call prim_vector_45ref
  %retprim36248 = call i64 @prim_cdr(i64 %a36151)                                    ; call prim_cdr
  %cloptr38159 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38161 = getelementptr inbounds i64, i64* %cloptr38159, i64 1                  ; &eptr38161[1]
  %eptr38162 = getelementptr inbounds i64, i64* %cloptr38159, i64 2                  ; &eptr38162[2]
  %eptr38163 = getelementptr inbounds i64, i64* %cloptr38159, i64 3                  ; &eptr38163[3]
  store i64 %ini$cc, i64* %eptr38161                                                 ; *eptr38161 = %ini$cc
  store i64 %Fbu$a, i64* %eptr38162                                                  ; *eptr38162 = %Fbu$a
  store i64 %cont36243, i64* %eptr38163                                              ; *eptr38163 = %cont36243
  %eptr38160 = getelementptr inbounds i64, i64* %cloptr38159, i64 0                  ; &cloptr38159[0]
  %f38164 = ptrtoint void(i64,i64,i64)* @lam37617 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38164, i64* %eptr38160                                                 ; store fptr
  %arg36542 = ptrtoint i64* %cloptr38159 to i64                                      ; closure cast; i64* -> i64
  %arg36541 = add i64 0, 0                                                           ; quoted ()
  %cloptr38165 = inttoptr i64 %arg36542 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38165)                                        ; assert function application
  %i0ptr38166 = getelementptr inbounds i64, i64* %cloptr38165, i64 0                 ; &cloptr38165[0]
  %f38168 = load i64, i64* %i0ptr38166, align 8                                      ; load; *i0ptr38166
  %fptr38167 = inttoptr i64 %f38168 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38167(i64 %arg36542, i64 %arg36541, i64 %retprim36248); tail call
  ret void

else38158:
  %arg36556 = add i64 0, 0                                                           ; quoted ()
  %arg36555 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr38169 = inttoptr i64 %cont36243 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38169)                                        ; assert function application
  %i0ptr38170 = getelementptr inbounds i64, i64* %cloptr38169, i64 0                 ; &cloptr38169[0]
  %f38172 = load i64, i64* %i0ptr38170, align 8                                      ; load; *i0ptr38170
  %fptr38171 = inttoptr i64 %f38172 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38171(i64 %cont36243, i64 %arg36556, i64 %arg36555) ; tail call
  ret void
}


define void @lam37617(i64 %env37618, i64 %_9536245, i64 %yeb$b) {
  %envptr38173 = inttoptr i64 %env37618 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38174 = getelementptr inbounds i64, i64* %envptr38173, i64 3                ; &envptr38173[3]
  %cont36243 = load i64, i64* %envptr38174, align 8                                  ; load; *envptr38174
  %envptr38175 = inttoptr i64 %env37618 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38176 = getelementptr inbounds i64, i64* %envptr38175, i64 2                ; &envptr38175[2]
  %Fbu$a = load i64, i64* %envptr38176, align 8                                      ; load; *envptr38176
  %envptr38177 = inttoptr i64 %env37618 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38178 = getelementptr inbounds i64, i64* %envptr38177, i64 1                ; &envptr38177[1]
  %ini$cc = load i64, i64* %envptr38178, align 8                                     ; load; *envptr38178
  %arg36543 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36152 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36543)                   ; call prim_vector_45ref
  %a36153 = call i64 @prim_cdr(i64 %a36152)                                          ; call prim_cdr
  %arg36547 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36247 = call i64 @prim_vector_45set_33(i64 %Fbu$a, i64 %arg36547, i64 %a36153); call prim_vector_45set_33
  %cloptr38179 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38181 = getelementptr inbounds i64, i64* %cloptr38179, i64 1                  ; &eptr38181[1]
  %eptr38182 = getelementptr inbounds i64, i64* %cloptr38179, i64 2                  ; &eptr38182[2]
  store i64 %ini$cc, i64* %eptr38181                                                 ; *eptr38181 = %ini$cc
  store i64 %cont36243, i64* %eptr38182                                              ; *eptr38182 = %cont36243
  %eptr38180 = getelementptr inbounds i64, i64* %cloptr38179, i64 0                  ; &cloptr38179[0]
  %f38183 = ptrtoint void(i64,i64,i64)* @lam37613 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38183, i64* %eptr38180                                                 ; store fptr
  %arg36551 = ptrtoint i64* %cloptr38179 to i64                                      ; closure cast; i64* -> i64
  %arg36550 = add i64 0, 0                                                           ; quoted ()
  %cloptr38184 = inttoptr i64 %arg36551 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38184)                                        ; assert function application
  %i0ptr38185 = getelementptr inbounds i64, i64* %cloptr38184, i64 0                 ; &cloptr38184[0]
  %f38187 = load i64, i64* %i0ptr38185, align 8                                      ; load; *i0ptr38185
  %fptr38186 = inttoptr i64 %f38187 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38186(i64 %arg36551, i64 %arg36550, i64 %retprim36247); tail call
  ret void
}


define void @lam37613(i64 %env37614, i64 %_9536246, i64 %RjX$_950) {
  %envptr38188 = inttoptr i64 %env37614 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38189 = getelementptr inbounds i64, i64* %envptr38188, i64 2                ; &envptr38188[2]
  %cont36243 = load i64, i64* %envptr38189, align 8                                  ; load; *envptr38189
  %envptr38190 = inttoptr i64 %env37614 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38191 = getelementptr inbounds i64, i64* %envptr38190, i64 1                ; &envptr38190[1]
  %ini$cc = load i64, i64* %envptr38191, align 8                                     ; load; *envptr38191
  %cloptr38192 = inttoptr i64 %ini$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38192)                                        ; assert function application
  %i0ptr38193 = getelementptr inbounds i64, i64* %cloptr38192, i64 0                 ; &cloptr38192[0]
  %f38195 = load i64, i64* %i0ptr38193, align 8                                      ; load; *i0ptr38193
  %fptr38194 = inttoptr i64 %f38195 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38194(i64 %ini$cc, i64 %cont36243, i64 %ini$cc)     ; tail call
  ret void
}


define void @lam37607(i64 %env37608, i64 %_9536244, i64 %ini$cc) {
  %envptr38196 = inttoptr i64 %env37608 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38197 = getelementptr inbounds i64, i64* %envptr38196, i64 2                ; &envptr38196[2]
  %cont36243 = load i64, i64* %envptr38197, align 8                                  ; load; *envptr38197
  %envptr38198 = inttoptr i64 %env37608 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38199 = getelementptr inbounds i64, i64* %envptr38198, i64 1                ; &envptr38198[1]
  %Fbu$a = load i64, i64* %envptr38199, align 8                                      ; load; *envptr38199
  %arg36558 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36147 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36558)                   ; call prim_vector_45ref
  %a36148 = call i64 @prim_null_63(i64 %a36147)                                      ; call prim_null_63
  %cmp38200 = icmp eq i64 %a36148, 15                                                ; false?
  br i1 %cmp38200, label %else38202, label %then38201                                ; if

then38201:
  %arg36562 = add i64 0, 0                                                           ; quoted ()
  %arg36561 = call i64 @const_init_true()                                            ; quoted #t
  %cloptr38203 = inttoptr i64 %cont36243 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38203)                                        ; assert function application
  %i0ptr38204 = getelementptr inbounds i64, i64* %cloptr38203, i64 0                 ; &cloptr38203[0]
  %f38206 = load i64, i64* %i0ptr38204, align 8                                      ; load; *i0ptr38204
  %fptr38205 = inttoptr i64 %f38206 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38205(i64 %cont36243, i64 %arg36562, i64 %arg36561) ; tail call
  ret void

else38202:
  %arg36564 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36149 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36564)                   ; call prim_vector_45ref
  %a36150 = call i64 @prim_cons_63(i64 %a36149)                                      ; call prim_cons_63
  %cmp38207 = icmp eq i64 %a36150, 15                                                ; false?
  br i1 %cmp38207, label %else38209, label %then38208                                ; if

then38208:
  %arg36567 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36151 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36567)                   ; call prim_vector_45ref
  %retprim36248 = call i64 @prim_cdr(i64 %a36151)                                    ; call prim_cdr
  %cloptr38210 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38212 = getelementptr inbounds i64, i64* %cloptr38210, i64 1                  ; &eptr38212[1]
  %eptr38213 = getelementptr inbounds i64, i64* %cloptr38210, i64 2                  ; &eptr38213[2]
  %eptr38214 = getelementptr inbounds i64, i64* %cloptr38210, i64 3                  ; &eptr38214[3]
  store i64 %ini$cc, i64* %eptr38212                                                 ; *eptr38212 = %ini$cc
  store i64 %Fbu$a, i64* %eptr38213                                                  ; *eptr38213 = %Fbu$a
  store i64 %cont36243, i64* %eptr38214                                              ; *eptr38214 = %cont36243
  %eptr38211 = getelementptr inbounds i64, i64* %cloptr38210, i64 0                  ; &cloptr38210[0]
  %f38215 = ptrtoint void(i64,i64,i64)* @lam37600 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38215, i64* %eptr38211                                                 ; store fptr
  %arg36572 = ptrtoint i64* %cloptr38210 to i64                                      ; closure cast; i64* -> i64
  %arg36571 = add i64 0, 0                                                           ; quoted ()
  %cloptr38216 = inttoptr i64 %arg36572 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38216)                                        ; assert function application
  %i0ptr38217 = getelementptr inbounds i64, i64* %cloptr38216, i64 0                 ; &cloptr38216[0]
  %f38219 = load i64, i64* %i0ptr38217, align 8                                      ; load; *i0ptr38217
  %fptr38218 = inttoptr i64 %f38219 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38218(i64 %arg36572, i64 %arg36571, i64 %retprim36248); tail call
  ret void

else38209:
  %arg36586 = add i64 0, 0                                                           ; quoted ()
  %arg36585 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr38220 = inttoptr i64 %cont36243 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38220)                                        ; assert function application
  %i0ptr38221 = getelementptr inbounds i64, i64* %cloptr38220, i64 0                 ; &cloptr38220[0]
  %f38223 = load i64, i64* %i0ptr38221, align 8                                      ; load; *i0ptr38221
  %fptr38222 = inttoptr i64 %f38223 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38222(i64 %cont36243, i64 %arg36586, i64 %arg36585) ; tail call
  ret void
}


define void @lam37600(i64 %env37601, i64 %_9536245, i64 %yeb$b) {
  %envptr38224 = inttoptr i64 %env37601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38225 = getelementptr inbounds i64, i64* %envptr38224, i64 3                ; &envptr38224[3]
  %cont36243 = load i64, i64* %envptr38225, align 8                                  ; load; *envptr38225
  %envptr38226 = inttoptr i64 %env37601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38227 = getelementptr inbounds i64, i64* %envptr38226, i64 2                ; &envptr38226[2]
  %Fbu$a = load i64, i64* %envptr38227, align 8                                      ; load; *envptr38227
  %envptr38228 = inttoptr i64 %env37601 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38229 = getelementptr inbounds i64, i64* %envptr38228, i64 1                ; &envptr38228[1]
  %ini$cc = load i64, i64* %envptr38229, align 8                                     ; load; *envptr38229
  %arg36573 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36152 = call i64 @prim_vector_45ref(i64 %Fbu$a, i64 %arg36573)                   ; call prim_vector_45ref
  %a36153 = call i64 @prim_cdr(i64 %a36152)                                          ; call prim_cdr
  %arg36577 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36247 = call i64 @prim_vector_45set_33(i64 %Fbu$a, i64 %arg36577, i64 %a36153); call prim_vector_45set_33
  %cloptr38230 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38232 = getelementptr inbounds i64, i64* %cloptr38230, i64 1                  ; &eptr38232[1]
  %eptr38233 = getelementptr inbounds i64, i64* %cloptr38230, i64 2                  ; &eptr38233[2]
  store i64 %ini$cc, i64* %eptr38232                                                 ; *eptr38232 = %ini$cc
  store i64 %cont36243, i64* %eptr38233                                              ; *eptr38233 = %cont36243
  %eptr38231 = getelementptr inbounds i64, i64* %cloptr38230, i64 0                  ; &cloptr38230[0]
  %f38234 = ptrtoint void(i64,i64,i64)* @lam37596 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38234, i64* %eptr38231                                                 ; store fptr
  %arg36581 = ptrtoint i64* %cloptr38230 to i64                                      ; closure cast; i64* -> i64
  %arg36580 = add i64 0, 0                                                           ; quoted ()
  %cloptr38235 = inttoptr i64 %arg36581 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38235)                                        ; assert function application
  %i0ptr38236 = getelementptr inbounds i64, i64* %cloptr38235, i64 0                 ; &cloptr38235[0]
  %f38238 = load i64, i64* %i0ptr38236, align 8                                      ; load; *i0ptr38236
  %fptr38237 = inttoptr i64 %f38238 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38237(i64 %arg36581, i64 %arg36580, i64 %retprim36247); tail call
  ret void
}


define void @lam37596(i64 %env37597, i64 %_9536246, i64 %RjX$_950) {
  %envptr38239 = inttoptr i64 %env37597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38240 = getelementptr inbounds i64, i64* %envptr38239, i64 2                ; &envptr38239[2]
  %cont36243 = load i64, i64* %envptr38240, align 8                                  ; load; *envptr38240
  %envptr38241 = inttoptr i64 %env37597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38242 = getelementptr inbounds i64, i64* %envptr38241, i64 1                ; &envptr38241[1]
  %ini$cc = load i64, i64* %envptr38242, align 8                                     ; load; *envptr38242
  %cloptr38243 = inttoptr i64 %ini$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38243)                                        ; assert function application
  %i0ptr38244 = getelementptr inbounds i64, i64* %cloptr38243, i64 0                 ; &cloptr38243[0]
  %f38246 = load i64, i64* %i0ptr38244, align 8                                      ; load; *i0ptr38244
  %fptr38245 = inttoptr i64 %f38246 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38245(i64 %ini$cc, i64 %cont36243, i64 %ini$cc)     ; tail call
  ret void
}


define void @lam37590(i64 %env37591, i64 %cont36250, i64 %Fcs$lst, i64 %Dvd$n) {
  %arg36589 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %ebr$lst = call i64 @prim_make_45vector(i64 %arg36589, i64 %Fcs$lst)               ; call prim_make_45vector
  %arg36591 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %Y8l$n = call i64 @prim_make_45vector(i64 %arg36591, i64 %Dvd$n)                   ; call prim_make_45vector
  %cloptr38247 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38248 = getelementptr inbounds i64, i64* %cloptr38247, i64 0                  ; &cloptr38247[0]
  %f38249 = ptrtoint void(i64,i64,i64)* @lam37586 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38249, i64* %eptr38248                                                 ; store fptr
  %arg36594 = ptrtoint i64* %cloptr38247 to i64                                      ; closure cast; i64* -> i64
  %cloptr38250 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38252 = getelementptr inbounds i64, i64* %cloptr38250, i64 1                  ; &eptr38252[1]
  %eptr38253 = getelementptr inbounds i64, i64* %cloptr38250, i64 2                  ; &eptr38253[2]
  %eptr38254 = getelementptr inbounds i64, i64* %cloptr38250, i64 3                  ; &eptr38254[3]
  store i64 %cont36250, i64* %eptr38252                                              ; *eptr38252 = %cont36250
  store i64 %Y8l$n, i64* %eptr38253                                                  ; *eptr38253 = %Y8l$n
  store i64 %ebr$lst, i64* %eptr38254                                                ; *eptr38254 = %ebr$lst
  %eptr38251 = getelementptr inbounds i64, i64* %cloptr38250, i64 0                  ; &cloptr38250[0]
  %f38255 = ptrtoint void(i64,i64,i64)* @lam37584 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38255, i64* %eptr38251                                                 ; store fptr
  %arg36593 = ptrtoint i64* %cloptr38250 to i64                                      ; closure cast; i64* -> i64
  %cloptr38256 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38258 = getelementptr inbounds i64, i64* %cloptr38256, i64 1                  ; &eptr38258[1]
  %eptr38259 = getelementptr inbounds i64, i64* %cloptr38256, i64 2                  ; &eptr38259[2]
  %eptr38260 = getelementptr inbounds i64, i64* %cloptr38256, i64 3                  ; &eptr38260[3]
  store i64 %cont36250, i64* %eptr38258                                              ; *eptr38258 = %cont36250
  store i64 %Y8l$n, i64* %eptr38259                                                  ; *eptr38259 = %Y8l$n
  store i64 %ebr$lst, i64* %eptr38260                                                ; *eptr38260 = %ebr$lst
  %eptr38257 = getelementptr inbounds i64, i64* %cloptr38256, i64 0                  ; &cloptr38256[0]
  %f38261 = ptrtoint void(i64,i64,i64)* @lam37567 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38261, i64* %eptr38257                                                 ; store fptr
  %arg36592 = ptrtoint i64* %cloptr38256 to i64                                      ; closure cast; i64* -> i64
  %cloptr38262 = inttoptr i64 %arg36594 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38262)                                        ; assert function application
  %i0ptr38263 = getelementptr inbounds i64, i64* %cloptr38262, i64 0                 ; &cloptr38262[0]
  %f38265 = load i64, i64* %i0ptr38263, align 8                                      ; load; *i0ptr38263
  %fptr38264 = inttoptr i64 %f38265 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38264(i64 %arg36594, i64 %arg36593, i64 %arg36592)  ; tail call
  ret void
}


define void @lam37586(i64 %env37587, i64 %cont36257, i64 %oMs$u) {
  %cloptr38266 = inttoptr i64 %oMs$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38266)                                        ; assert function application
  %i0ptr38267 = getelementptr inbounds i64, i64* %cloptr38266, i64 0                 ; &cloptr38266[0]
  %f38269 = load i64, i64* %i0ptr38267, align 8                                      ; load; *i0ptr38267
  %fptr38268 = inttoptr i64 %f38269 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38268(i64 %oMs$u, i64 %cont36257, i64 %oMs$u)       ; tail call
  ret void
}


define void @lam37584(i64 %env37585, i64 %_9536251, i64 %AsT$cc) {
  %envptr38270 = inttoptr i64 %env37585 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38271 = getelementptr inbounds i64, i64* %envptr38270, i64 3                ; &envptr38270[3]
  %ebr$lst = load i64, i64* %envptr38271, align 8                                    ; load; *envptr38271
  %envptr38272 = inttoptr i64 %env37585 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38273 = getelementptr inbounds i64, i64* %envptr38272, i64 2                ; &envptr38272[2]
  %Y8l$n = load i64, i64* %envptr38273, align 8                                      ; load; *envptr38273
  %envptr38274 = inttoptr i64 %env37585 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38275 = getelementptr inbounds i64, i64* %envptr38274, i64 1                ; &envptr38274[1]
  %cont36250 = load i64, i64* %envptr38275, align 8                                  ; load; *envptr38275
  %arg36598 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36154 = call i64 @prim_vector_45ref(i64 %Y8l$n, i64 %arg36598)                   ; call prim_vector_45ref
  %arg36601 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36155 = call i64 @prim__61(i64 %arg36601, i64 %a36154)                           ; call prim__61
  %cmp38276 = icmp eq i64 %a36155, 15                                                ; false?
  br i1 %cmp38276, label %else38278, label %then38277                                ; if

then38277:
  %arg36602 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36252 = call i64 @prim_vector_45ref(i64 %ebr$lst, i64 %arg36602)           ; call prim_vector_45ref
  %arg36605 = add i64 0, 0                                                           ; quoted ()
  %cloptr38279 = inttoptr i64 %cont36250 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38279)                                        ; assert function application
  %i0ptr38280 = getelementptr inbounds i64, i64* %cloptr38279, i64 0                 ; &cloptr38279[0]
  %f38282 = load i64, i64* %i0ptr38280, align 8                                      ; load; *i0ptr38280
  %fptr38281 = inttoptr i64 %f38282 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38281(i64 %cont36250, i64 %arg36605, i64 %retprim36252); tail call
  ret void

else38278:
  %arg36607 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36156 = call i64 @prim_vector_45ref(i64 %ebr$lst, i64 %arg36607)                 ; call prim_vector_45ref
  %a36157 = call i64 @prim_cdr(i64 %a36156)                                          ; call prim_cdr
  %arg36611 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36256 = call i64 @prim_vector_45set_33(i64 %ebr$lst, i64 %arg36611, i64 %a36157); call prim_vector_45set_33
  %cloptr38283 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38285 = getelementptr inbounds i64, i64* %cloptr38283, i64 1                  ; &eptr38285[1]
  %eptr38286 = getelementptr inbounds i64, i64* %cloptr38283, i64 2                  ; &eptr38286[2]
  %eptr38287 = getelementptr inbounds i64, i64* %cloptr38283, i64 3                  ; &eptr38287[3]
  store i64 %cont36250, i64* %eptr38285                                              ; *eptr38285 = %cont36250
  store i64 %AsT$cc, i64* %eptr38286                                                 ; *eptr38286 = %AsT$cc
  store i64 %Y8l$n, i64* %eptr38287                                                  ; *eptr38287 = %Y8l$n
  %eptr38284 = getelementptr inbounds i64, i64* %cloptr38283, i64 0                  ; &cloptr38283[0]
  %f38288 = ptrtoint void(i64,i64,i64)* @lam37578 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38288, i64* %eptr38284                                                 ; store fptr
  %arg36615 = ptrtoint i64* %cloptr38283 to i64                                      ; closure cast; i64* -> i64
  %arg36614 = add i64 0, 0                                                           ; quoted ()
  %cloptr38289 = inttoptr i64 %arg36615 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38289)                                        ; assert function application
  %i0ptr38290 = getelementptr inbounds i64, i64* %cloptr38289, i64 0                 ; &cloptr38289[0]
  %f38292 = load i64, i64* %i0ptr38290, align 8                                      ; load; *i0ptr38290
  %fptr38291 = inttoptr i64 %f38292 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38291(i64 %arg36615, i64 %arg36614, i64 %retprim36256); tail call
  ret void
}


define void @lam37578(i64 %env37579, i64 %_9536253, i64 %cSB$_950) {
  %envptr38293 = inttoptr i64 %env37579 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38294 = getelementptr inbounds i64, i64* %envptr38293, i64 3                ; &envptr38293[3]
  %Y8l$n = load i64, i64* %envptr38294, align 8                                      ; load; *envptr38294
  %envptr38295 = inttoptr i64 %env37579 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38296 = getelementptr inbounds i64, i64* %envptr38295, i64 2                ; &envptr38295[2]
  %AsT$cc = load i64, i64* %envptr38296, align 8                                     ; load; *envptr38296
  %envptr38297 = inttoptr i64 %env37579 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38298 = getelementptr inbounds i64, i64* %envptr38297, i64 1                ; &envptr38297[1]
  %cont36250 = load i64, i64* %envptr38298, align 8                                  ; load; *envptr38298
  %arg36616 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36158 = call i64 @prim_vector_45ref(i64 %Y8l$n, i64 %arg36616)                   ; call prim_vector_45ref
  %arg36618 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a36159 = call i64 @prim__45(i64 %a36158, i64 %arg36618)                           ; call prim__45
  %arg36621 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36255 = call i64 @prim_vector_45set_33(i64 %Y8l$n, i64 %arg36621, i64 %a36159); call prim_vector_45set_33
  %cloptr38299 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38301 = getelementptr inbounds i64, i64* %cloptr38299, i64 1                  ; &eptr38301[1]
  %eptr38302 = getelementptr inbounds i64, i64* %cloptr38299, i64 2                  ; &eptr38302[2]
  store i64 %cont36250, i64* %eptr38301                                              ; *eptr38301 = %cont36250
  store i64 %AsT$cc, i64* %eptr38302                                                 ; *eptr38302 = %AsT$cc
  %eptr38300 = getelementptr inbounds i64, i64* %cloptr38299, i64 0                  ; &cloptr38299[0]
  %f38303 = ptrtoint void(i64,i64,i64)* @lam37573 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38303, i64* %eptr38300                                                 ; store fptr
  %arg36625 = ptrtoint i64* %cloptr38299 to i64                                      ; closure cast; i64* -> i64
  %arg36624 = add i64 0, 0                                                           ; quoted ()
  %cloptr38304 = inttoptr i64 %arg36625 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38304)                                        ; assert function application
  %i0ptr38305 = getelementptr inbounds i64, i64* %cloptr38304, i64 0                 ; &cloptr38304[0]
  %f38307 = load i64, i64* %i0ptr38305, align 8                                      ; load; *i0ptr38305
  %fptr38306 = inttoptr i64 %f38307 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38306(i64 %arg36625, i64 %arg36624, i64 %retprim36255); tail call
  ret void
}


define void @lam37573(i64 %env37574, i64 %_9536254, i64 %MJB$_951) {
  %envptr38308 = inttoptr i64 %env37574 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38309 = getelementptr inbounds i64, i64* %envptr38308, i64 2                ; &envptr38308[2]
  %AsT$cc = load i64, i64* %envptr38309, align 8                                     ; load; *envptr38309
  %envptr38310 = inttoptr i64 %env37574 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38311 = getelementptr inbounds i64, i64* %envptr38310, i64 1                ; &envptr38310[1]
  %cont36250 = load i64, i64* %envptr38311, align 8                                  ; load; *envptr38311
  %cloptr38312 = inttoptr i64 %AsT$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38312)                                        ; assert function application
  %i0ptr38313 = getelementptr inbounds i64, i64* %cloptr38312, i64 0                 ; &cloptr38312[0]
  %f38315 = load i64, i64* %i0ptr38313, align 8                                      ; load; *i0ptr38313
  %fptr38314 = inttoptr i64 %f38315 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38314(i64 %AsT$cc, i64 %cont36250, i64 %AsT$cc)     ; tail call
  ret void
}


define void @lam37567(i64 %env37568, i64 %_9536251, i64 %AsT$cc) {
  %envptr38316 = inttoptr i64 %env37568 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38317 = getelementptr inbounds i64, i64* %envptr38316, i64 3                ; &envptr38316[3]
  %ebr$lst = load i64, i64* %envptr38317, align 8                                    ; load; *envptr38317
  %envptr38318 = inttoptr i64 %env37568 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38319 = getelementptr inbounds i64, i64* %envptr38318, i64 2                ; &envptr38318[2]
  %Y8l$n = load i64, i64* %envptr38319, align 8                                      ; load; *envptr38319
  %envptr38320 = inttoptr i64 %env37568 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38321 = getelementptr inbounds i64, i64* %envptr38320, i64 1                ; &envptr38320[1]
  %cont36250 = load i64, i64* %envptr38321, align 8                                  ; load; *envptr38321
  %arg36629 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36154 = call i64 @prim_vector_45ref(i64 %Y8l$n, i64 %arg36629)                   ; call prim_vector_45ref
  %arg36632 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36155 = call i64 @prim__61(i64 %arg36632, i64 %a36154)                           ; call prim__61
  %cmp38322 = icmp eq i64 %a36155, 15                                                ; false?
  br i1 %cmp38322, label %else38324, label %then38323                                ; if

then38323:
  %arg36633 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36252 = call i64 @prim_vector_45ref(i64 %ebr$lst, i64 %arg36633)           ; call prim_vector_45ref
  %arg36636 = add i64 0, 0                                                           ; quoted ()
  %cloptr38325 = inttoptr i64 %cont36250 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38325)                                        ; assert function application
  %i0ptr38326 = getelementptr inbounds i64, i64* %cloptr38325, i64 0                 ; &cloptr38325[0]
  %f38328 = load i64, i64* %i0ptr38326, align 8                                      ; load; *i0ptr38326
  %fptr38327 = inttoptr i64 %f38328 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38327(i64 %cont36250, i64 %arg36636, i64 %retprim36252); tail call
  ret void

else38324:
  %arg36638 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36156 = call i64 @prim_vector_45ref(i64 %ebr$lst, i64 %arg36638)                 ; call prim_vector_45ref
  %a36157 = call i64 @prim_cdr(i64 %a36156)                                          ; call prim_cdr
  %arg36642 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36256 = call i64 @prim_vector_45set_33(i64 %ebr$lst, i64 %arg36642, i64 %a36157); call prim_vector_45set_33
  %cloptr38329 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38331 = getelementptr inbounds i64, i64* %cloptr38329, i64 1                  ; &eptr38331[1]
  %eptr38332 = getelementptr inbounds i64, i64* %cloptr38329, i64 2                  ; &eptr38332[2]
  %eptr38333 = getelementptr inbounds i64, i64* %cloptr38329, i64 3                  ; &eptr38333[3]
  store i64 %cont36250, i64* %eptr38331                                              ; *eptr38331 = %cont36250
  store i64 %AsT$cc, i64* %eptr38332                                                 ; *eptr38332 = %AsT$cc
  store i64 %Y8l$n, i64* %eptr38333                                                  ; *eptr38333 = %Y8l$n
  %eptr38330 = getelementptr inbounds i64, i64* %cloptr38329, i64 0                  ; &cloptr38329[0]
  %f38334 = ptrtoint void(i64,i64,i64)* @lam37561 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38334, i64* %eptr38330                                                 ; store fptr
  %arg36646 = ptrtoint i64* %cloptr38329 to i64                                      ; closure cast; i64* -> i64
  %arg36645 = add i64 0, 0                                                           ; quoted ()
  %cloptr38335 = inttoptr i64 %arg36646 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38335)                                        ; assert function application
  %i0ptr38336 = getelementptr inbounds i64, i64* %cloptr38335, i64 0                 ; &cloptr38335[0]
  %f38338 = load i64, i64* %i0ptr38336, align 8                                      ; load; *i0ptr38336
  %fptr38337 = inttoptr i64 %f38338 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38337(i64 %arg36646, i64 %arg36645, i64 %retprim36256); tail call
  ret void
}


define void @lam37561(i64 %env37562, i64 %_9536253, i64 %cSB$_950) {
  %envptr38339 = inttoptr i64 %env37562 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38340 = getelementptr inbounds i64, i64* %envptr38339, i64 3                ; &envptr38339[3]
  %Y8l$n = load i64, i64* %envptr38340, align 8                                      ; load; *envptr38340
  %envptr38341 = inttoptr i64 %env37562 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38342 = getelementptr inbounds i64, i64* %envptr38341, i64 2                ; &envptr38341[2]
  %AsT$cc = load i64, i64* %envptr38342, align 8                                     ; load; *envptr38342
  %envptr38343 = inttoptr i64 %env37562 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38344 = getelementptr inbounds i64, i64* %envptr38343, i64 1                ; &envptr38343[1]
  %cont36250 = load i64, i64* %envptr38344, align 8                                  ; load; *envptr38344
  %arg36647 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36158 = call i64 @prim_vector_45ref(i64 %Y8l$n, i64 %arg36647)                   ; call prim_vector_45ref
  %arg36649 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a36159 = call i64 @prim__45(i64 %a36158, i64 %arg36649)                           ; call prim__45
  %arg36652 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36255 = call i64 @prim_vector_45set_33(i64 %Y8l$n, i64 %arg36652, i64 %a36159); call prim_vector_45set_33
  %cloptr38345 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38347 = getelementptr inbounds i64, i64* %cloptr38345, i64 1                  ; &eptr38347[1]
  %eptr38348 = getelementptr inbounds i64, i64* %cloptr38345, i64 2                  ; &eptr38348[2]
  store i64 %cont36250, i64* %eptr38347                                              ; *eptr38347 = %cont36250
  store i64 %AsT$cc, i64* %eptr38348                                                 ; *eptr38348 = %AsT$cc
  %eptr38346 = getelementptr inbounds i64, i64* %cloptr38345, i64 0                  ; &cloptr38345[0]
  %f38349 = ptrtoint void(i64,i64,i64)* @lam37556 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38349, i64* %eptr38346                                                 ; store fptr
  %arg36656 = ptrtoint i64* %cloptr38345 to i64                                      ; closure cast; i64* -> i64
  %arg36655 = add i64 0, 0                                                           ; quoted ()
  %cloptr38350 = inttoptr i64 %arg36656 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38350)                                        ; assert function application
  %i0ptr38351 = getelementptr inbounds i64, i64* %cloptr38350, i64 0                 ; &cloptr38350[0]
  %f38353 = load i64, i64* %i0ptr38351, align 8                                      ; load; *i0ptr38351
  %fptr38352 = inttoptr i64 %f38353 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38352(i64 %arg36656, i64 %arg36655, i64 %retprim36255); tail call
  ret void
}


define void @lam37556(i64 %env37557, i64 %_9536254, i64 %MJB$_951) {
  %envptr38354 = inttoptr i64 %env37557 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38355 = getelementptr inbounds i64, i64* %envptr38354, i64 2                ; &envptr38354[2]
  %AsT$cc = load i64, i64* %envptr38355, align 8                                     ; load; *envptr38355
  %envptr38356 = inttoptr i64 %env37557 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38357 = getelementptr inbounds i64, i64* %envptr38356, i64 1                ; &envptr38356[1]
  %cont36250 = load i64, i64* %envptr38357, align 8                                  ; load; *envptr38357
  %cloptr38358 = inttoptr i64 %AsT$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38358)                                        ; assert function application
  %i0ptr38359 = getelementptr inbounds i64, i64* %cloptr38358, i64 0                 ; &cloptr38358[0]
  %f38361 = load i64, i64* %i0ptr38359, align 8                                      ; load; *i0ptr38359
  %fptr38360 = inttoptr i64 %f38361 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38360(i64 %AsT$cc, i64 %cont36250, i64 %AsT$cc)     ; tail call
  ret void
}


define void @lam37550(i64 %env37551, i64 %cont36258, i64 %msQ$v, i64 %wbu$lst) {
  %arg36661 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %U7e$lst = call i64 @prim_make_45vector(i64 %arg36661, i64 %wbu$lst)               ; call prim_make_45vector
  %cloptr38362 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38363 = getelementptr inbounds i64, i64* %cloptr38362, i64 0                  ; &cloptr38362[0]
  %f38364 = ptrtoint void(i64,i64,i64)* @lam37547 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38364, i64* %eptr38363                                                 ; store fptr
  %arg36664 = ptrtoint i64* %cloptr38362 to i64                                      ; closure cast; i64* -> i64
  %cloptr38365 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38367 = getelementptr inbounds i64, i64* %cloptr38365, i64 1                  ; &eptr38367[1]
  %eptr38368 = getelementptr inbounds i64, i64* %cloptr38365, i64 2                  ; &eptr38368[2]
  %eptr38369 = getelementptr inbounds i64, i64* %cloptr38365, i64 3                  ; &eptr38369[3]
  store i64 %cont36258, i64* %eptr38367                                              ; *eptr38367 = %cont36258
  store i64 %msQ$v, i64* %eptr38368                                                  ; *eptr38368 = %msQ$v
  store i64 %U7e$lst, i64* %eptr38369                                                ; *eptr38369 = %U7e$lst
  %eptr38366 = getelementptr inbounds i64, i64* %cloptr38365, i64 0                  ; &cloptr38365[0]
  %f38370 = ptrtoint void(i64,i64,i64)* @lam37545 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38370, i64* %eptr38366                                                 ; store fptr
  %arg36663 = ptrtoint i64* %cloptr38365 to i64                                      ; closure cast; i64* -> i64
  %cloptr38371 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38373 = getelementptr inbounds i64, i64* %cloptr38371, i64 1                  ; &eptr38373[1]
  %eptr38374 = getelementptr inbounds i64, i64* %cloptr38371, i64 2                  ; &eptr38374[2]
  %eptr38375 = getelementptr inbounds i64, i64* %cloptr38371, i64 3                  ; &eptr38375[3]
  store i64 %cont36258, i64* %eptr38373                                              ; *eptr38373 = %cont36258
  store i64 %msQ$v, i64* %eptr38374                                                  ; *eptr38374 = %msQ$v
  store i64 %U7e$lst, i64* %eptr38375                                                ; *eptr38375 = %U7e$lst
  %eptr38372 = getelementptr inbounds i64, i64* %cloptr38371, i64 0                  ; &cloptr38371[0]
  %f38376 = ptrtoint void(i64,i64,i64)* @lam37532 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38376, i64* %eptr38372                                                 ; store fptr
  %arg36662 = ptrtoint i64* %cloptr38371 to i64                                      ; closure cast; i64* -> i64
  %cloptr38377 = inttoptr i64 %arg36664 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38377)                                        ; assert function application
  %i0ptr38378 = getelementptr inbounds i64, i64* %cloptr38377, i64 0                 ; &cloptr38377[0]
  %f38380 = load i64, i64* %i0ptr38378, align 8                                      ; load; *i0ptr38378
  %fptr38379 = inttoptr i64 %f38380 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38379(i64 %arg36664, i64 %arg36663, i64 %arg36662)  ; tail call
  ret void
}


define void @lam37547(i64 %env37548, i64 %cont36263, i64 %AQx$u) {
  %cloptr38381 = inttoptr i64 %AQx$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38381)                                        ; assert function application
  %i0ptr38382 = getelementptr inbounds i64, i64* %cloptr38381, i64 0                 ; &cloptr38381[0]
  %f38384 = load i64, i64* %i0ptr38382, align 8                                      ; load; *i0ptr38382
  %fptr38383 = inttoptr i64 %f38384 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38383(i64 %AQx$u, i64 %cont36263, i64 %AQx$u)       ; tail call
  ret void
}


define void @lam37545(i64 %env37546, i64 %_9536259, i64 %jTp$cc) {
  %envptr38385 = inttoptr i64 %env37546 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38386 = getelementptr inbounds i64, i64* %envptr38385, i64 3                ; &envptr38385[3]
  %U7e$lst = load i64, i64* %envptr38386, align 8                                    ; load; *envptr38386
  %envptr38387 = inttoptr i64 %env37546 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38388 = getelementptr inbounds i64, i64* %envptr38387, i64 2                ; &envptr38387[2]
  %msQ$v = load i64, i64* %envptr38388, align 8                                      ; load; *envptr38388
  %envptr38389 = inttoptr i64 %env37546 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38390 = getelementptr inbounds i64, i64* %envptr38389, i64 1                ; &envptr38389[1]
  %cont36258 = load i64, i64* %envptr38390, align 8                                  ; load; *envptr38390
  %arg36668 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36160 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36668)                 ; call prim_vector_45ref
  %a36161 = call i64 @prim_null_63(i64 %a36160)                                      ; call prim_null_63
  %cmp38391 = icmp eq i64 %a36161, 15                                                ; false?
  br i1 %cmp38391, label %else38393, label %then38392                                ; if

then38392:
  %arg36672 = add i64 0, 0                                                           ; quoted ()
  %arg36671 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr38394 = inttoptr i64 %cont36258 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38394)                                        ; assert function application
  %i0ptr38395 = getelementptr inbounds i64, i64* %cloptr38394, i64 0                 ; &cloptr38394[0]
  %f38397 = load i64, i64* %i0ptr38395, align 8                                      ; load; *i0ptr38395
  %fptr38396 = inttoptr i64 %f38397 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38396(i64 %cont36258, i64 %arg36672, i64 %arg36671) ; tail call
  ret void

else38393:
  %arg36674 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36162 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36674)                 ; call prim_vector_45ref
  %a36163 = call i64 @prim_car(i64 %a36162)                                          ; call prim_car
  %a36164 = call i64 @prim_eqv_63(i64 %a36163, i64 %msQ$v)                           ; call prim_eqv_63
  %cmp38398 = icmp eq i64 %a36164, 15                                                ; false?
  br i1 %cmp38398, label %else38400, label %then38399                                ; if

then38399:
  %arg36679 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36260 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36679)           ; call prim_vector_45ref
  %arg36682 = add i64 0, 0                                                           ; quoted ()
  %cloptr38401 = inttoptr i64 %cont36258 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38401)                                        ; assert function application
  %i0ptr38402 = getelementptr inbounds i64, i64* %cloptr38401, i64 0                 ; &cloptr38401[0]
  %f38404 = load i64, i64* %i0ptr38402, align 8                                      ; load; *i0ptr38402
  %fptr38403 = inttoptr i64 %f38404 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38403(i64 %cont36258, i64 %arg36682, i64 %retprim36260); tail call
  ret void

else38400:
  %arg36684 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36165 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36684)                 ; call prim_vector_45ref
  %a36166 = call i64 @prim_cdr(i64 %a36165)                                          ; call prim_cdr
  %arg36688 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36262 = call i64 @prim_vector_45set_33(i64 %U7e$lst, i64 %arg36688, i64 %a36166); call prim_vector_45set_33
  %cloptr38405 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38407 = getelementptr inbounds i64, i64* %cloptr38405, i64 1                  ; &eptr38407[1]
  %eptr38408 = getelementptr inbounds i64, i64* %cloptr38405, i64 2                  ; &eptr38408[2]
  store i64 %cont36258, i64* %eptr38407                                              ; *eptr38407 = %cont36258
  store i64 %jTp$cc, i64* %eptr38408                                                 ; *eptr38408 = %jTp$cc
  %eptr38406 = getelementptr inbounds i64, i64* %cloptr38405, i64 0                  ; &cloptr38405[0]
  %f38409 = ptrtoint void(i64,i64,i64)* @lam37539 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38409, i64* %eptr38406                                                 ; store fptr
  %arg36692 = ptrtoint i64* %cloptr38405 to i64                                      ; closure cast; i64* -> i64
  %arg36691 = add i64 0, 0                                                           ; quoted ()
  %cloptr38410 = inttoptr i64 %arg36692 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38410)                                        ; assert function application
  %i0ptr38411 = getelementptr inbounds i64, i64* %cloptr38410, i64 0                 ; &cloptr38410[0]
  %f38413 = load i64, i64* %i0ptr38411, align 8                                      ; load; *i0ptr38411
  %fptr38412 = inttoptr i64 %f38413 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38412(i64 %arg36692, i64 %arg36691, i64 %retprim36262); tail call
  ret void
}


define void @lam37539(i64 %env37540, i64 %_9536261, i64 %AG6$_950) {
  %envptr38414 = inttoptr i64 %env37540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38415 = getelementptr inbounds i64, i64* %envptr38414, i64 2                ; &envptr38414[2]
  %jTp$cc = load i64, i64* %envptr38415, align 8                                     ; load; *envptr38415
  %envptr38416 = inttoptr i64 %env37540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38417 = getelementptr inbounds i64, i64* %envptr38416, i64 1                ; &envptr38416[1]
  %cont36258 = load i64, i64* %envptr38417, align 8                                  ; load; *envptr38417
  %cloptr38418 = inttoptr i64 %jTp$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38418)                                        ; assert function application
  %i0ptr38419 = getelementptr inbounds i64, i64* %cloptr38418, i64 0                 ; &cloptr38418[0]
  %f38421 = load i64, i64* %i0ptr38419, align 8                                      ; load; *i0ptr38419
  %fptr38420 = inttoptr i64 %f38421 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38420(i64 %jTp$cc, i64 %cont36258, i64 %jTp$cc)     ; tail call
  ret void
}


define void @lam37532(i64 %env37533, i64 %_9536259, i64 %jTp$cc) {
  %envptr38422 = inttoptr i64 %env37533 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38423 = getelementptr inbounds i64, i64* %envptr38422, i64 3                ; &envptr38422[3]
  %U7e$lst = load i64, i64* %envptr38423, align 8                                    ; load; *envptr38423
  %envptr38424 = inttoptr i64 %env37533 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38425 = getelementptr inbounds i64, i64* %envptr38424, i64 2                ; &envptr38424[2]
  %msQ$v = load i64, i64* %envptr38425, align 8                                      ; load; *envptr38425
  %envptr38426 = inttoptr i64 %env37533 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38427 = getelementptr inbounds i64, i64* %envptr38426, i64 1                ; &envptr38426[1]
  %cont36258 = load i64, i64* %envptr38427, align 8                                  ; load; *envptr38427
  %arg36696 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36160 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36696)                 ; call prim_vector_45ref
  %a36161 = call i64 @prim_null_63(i64 %a36160)                                      ; call prim_null_63
  %cmp38428 = icmp eq i64 %a36161, 15                                                ; false?
  br i1 %cmp38428, label %else38430, label %then38429                                ; if

then38429:
  %arg36700 = add i64 0, 0                                                           ; quoted ()
  %arg36699 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr38431 = inttoptr i64 %cont36258 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38431)                                        ; assert function application
  %i0ptr38432 = getelementptr inbounds i64, i64* %cloptr38431, i64 0                 ; &cloptr38431[0]
  %f38434 = load i64, i64* %i0ptr38432, align 8                                      ; load; *i0ptr38432
  %fptr38433 = inttoptr i64 %f38434 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38433(i64 %cont36258, i64 %arg36700, i64 %arg36699) ; tail call
  ret void

else38430:
  %arg36702 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36162 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36702)                 ; call prim_vector_45ref
  %a36163 = call i64 @prim_car(i64 %a36162)                                          ; call prim_car
  %a36164 = call i64 @prim_eqv_63(i64 %a36163, i64 %msQ$v)                           ; call prim_eqv_63
  %cmp38435 = icmp eq i64 %a36164, 15                                                ; false?
  br i1 %cmp38435, label %else38437, label %then38436                                ; if

then38436:
  %arg36707 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36260 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36707)           ; call prim_vector_45ref
  %arg36710 = add i64 0, 0                                                           ; quoted ()
  %cloptr38438 = inttoptr i64 %cont36258 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38438)                                        ; assert function application
  %i0ptr38439 = getelementptr inbounds i64, i64* %cloptr38438, i64 0                 ; &cloptr38438[0]
  %f38441 = load i64, i64* %i0ptr38439, align 8                                      ; load; *i0ptr38439
  %fptr38440 = inttoptr i64 %f38441 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38440(i64 %cont36258, i64 %arg36710, i64 %retprim36260); tail call
  ret void

else38437:
  %arg36712 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36165 = call i64 @prim_vector_45ref(i64 %U7e$lst, i64 %arg36712)                 ; call prim_vector_45ref
  %a36166 = call i64 @prim_cdr(i64 %a36165)                                          ; call prim_cdr
  %arg36716 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36262 = call i64 @prim_vector_45set_33(i64 %U7e$lst, i64 %arg36716, i64 %a36166); call prim_vector_45set_33
  %cloptr38442 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38444 = getelementptr inbounds i64, i64* %cloptr38442, i64 1                  ; &eptr38444[1]
  %eptr38445 = getelementptr inbounds i64, i64* %cloptr38442, i64 2                  ; &eptr38445[2]
  store i64 %cont36258, i64* %eptr38444                                              ; *eptr38444 = %cont36258
  store i64 %jTp$cc, i64* %eptr38445                                                 ; *eptr38445 = %jTp$cc
  %eptr38443 = getelementptr inbounds i64, i64* %cloptr38442, i64 0                  ; &cloptr38442[0]
  %f38446 = ptrtoint void(i64,i64,i64)* @lam37526 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38446, i64* %eptr38443                                                 ; store fptr
  %arg36720 = ptrtoint i64* %cloptr38442 to i64                                      ; closure cast; i64* -> i64
  %arg36719 = add i64 0, 0                                                           ; quoted ()
  %cloptr38447 = inttoptr i64 %arg36720 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38447)                                        ; assert function application
  %i0ptr38448 = getelementptr inbounds i64, i64* %cloptr38447, i64 0                 ; &cloptr38447[0]
  %f38450 = load i64, i64* %i0ptr38448, align 8                                      ; load; *i0ptr38448
  %fptr38449 = inttoptr i64 %f38450 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38449(i64 %arg36720, i64 %arg36719, i64 %retprim36262); tail call
  ret void
}


define void @lam37526(i64 %env37527, i64 %_9536261, i64 %AG6$_950) {
  %envptr38451 = inttoptr i64 %env37527 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38452 = getelementptr inbounds i64, i64* %envptr38451, i64 2                ; &envptr38451[2]
  %jTp$cc = load i64, i64* %envptr38452, align 8                                     ; load; *envptr38452
  %envptr38453 = inttoptr i64 %env37527 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38454 = getelementptr inbounds i64, i64* %envptr38453, i64 1                ; &envptr38453[1]
  %cont36258 = load i64, i64* %envptr38454, align 8                                  ; load; *envptr38454
  %cloptr38455 = inttoptr i64 %jTp$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38455)                                        ; assert function application
  %i0ptr38456 = getelementptr inbounds i64, i64* %cloptr38455, i64 0                 ; &cloptr38455[0]
  %f38458 = load i64, i64* %i0ptr38456, align 8                                      ; load; *i0ptr38456
  %fptr38457 = inttoptr i64 %f38458 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38457(i64 %jTp$cc, i64 %cont36258, i64 %jTp$cc)     ; tail call
  ret void
}


define void @lam37519(i64 %env37520, i64 %P5q$args36265) {
  %envptr38459 = inttoptr i64 %env37520 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38460 = getelementptr inbounds i64, i64* %envptr38459, i64 1                ; &envptr38459[1]
  %Man$_37foldl1 = load i64, i64* %envptr38460, align 8                              ; load; *envptr38460
  %cont36264 = call i64 @prim_car(i64 %P5q$args36265)                                ; call prim_car
  %P5q$args = call i64 @prim_cdr(i64 %P5q$args36265)                                 ; call prim_cdr
  %a36167 = call i64 @prim_null_63(i64 %P5q$args)                                    ; call prim_null_63
  %cmp38461 = icmp eq i64 %a36167, 15                                                ; false?
  br i1 %cmp38461, label %else38463, label %then38462                                ; if

then38462:
  %arg36728 = add i64 0, 0                                                           ; quoted ()
  %arg36727 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %cloptr38464 = inttoptr i64 %cont36264 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38464)                                        ; assert function application
  %i0ptr38465 = getelementptr inbounds i64, i64* %cloptr38464, i64 0                 ; &cloptr38464[0]
  %f38467 = load i64, i64* %i0ptr38465, align 8                                      ; load; *i0ptr38465
  %fptr38466 = inttoptr i64 %f38467 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38466(i64 %cont36264, i64 %arg36728, i64 %arg36727) ; tail call
  ret void

else38463:
  %a36168 = call i64 @prim_cdr(i64 %P5q$args)                                        ; call prim_cdr
  %a36169 = call i64 @prim_null_63(i64 %a36168)                                      ; call prim_null_63
  %cmp38468 = icmp eq i64 %a36169, 15                                                ; false?
  br i1 %cmp38468, label %else38470, label %then38469                                ; if

then38469:
  %retprim36266 = call i64 @prim_car(i64 %P5q$args)                                  ; call prim_car
  %arg36734 = add i64 0, 0                                                           ; quoted ()
  %cloptr38471 = inttoptr i64 %cont36264 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38471)                                        ; assert function application
  %i0ptr38472 = getelementptr inbounds i64, i64* %cloptr38471, i64 0                 ; &cloptr38471[0]
  %f38474 = load i64, i64* %i0ptr38472, align 8                                      ; load; *i0ptr38472
  %fptr38473 = inttoptr i64 %f38474 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38473(i64 %cont36264, i64 %arg36734, i64 %retprim36266); tail call
  ret void

else38470:
  %a36170 = call i64 @prim_car(i64 %P5q$args)                                        ; call prim_car
  %a36171 = call i64 @prim_cdr(i64 %P5q$args)                                        ; call prim_cdr
  %cloptr38475 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38476 = getelementptr inbounds i64, i64* %cloptr38475, i64 0                  ; &cloptr38475[0]
  %f38477 = ptrtoint void(i64,i64,i64,i64)* @lam37517 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38477, i64* %eptr38476                                                 ; store fptr
  %arg36740 = ptrtoint i64* %cloptr38475 to i64                                      ; closure cast; i64* -> i64
  %cloptr38478 = inttoptr i64 %Man$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38478)                                        ; assert function application
  %i0ptr38479 = getelementptr inbounds i64, i64* %cloptr38478, i64 0                 ; &cloptr38478[0]
  %f38481 = load i64, i64* %i0ptr38479, align 8                                      ; load; *i0ptr38479
  %fptr38480 = inttoptr i64 %f38481 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38480(i64 %Man$_37foldl1, i64 %cont36264, i64 %arg36740, i64 %a36170, i64 %a36171); tail call
  ret void
}


define void @lam37517(i64 %env37518, i64 %cont36267, i64 %CUk$n, i64 %uQw$v) {
  %retprim36268 = call i64 @prim__47(i64 %uQw$v, i64 %CUk$n)                         ; call prim__47
  %arg36746 = add i64 0, 0                                                           ; quoted ()
  %cloptr38482 = inttoptr i64 %cont36267 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38482)                                        ; assert function application
  %i0ptr38483 = getelementptr inbounds i64, i64* %cloptr38482, i64 0                 ; &cloptr38482[0]
  %f38485 = load i64, i64* %i0ptr38483, align 8                                      ; load; *i0ptr38483
  %fptr38484 = inttoptr i64 %f38485 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38484(i64 %cont36267, i64 %arg36746, i64 %retprim36268); tail call
  ret void
}


define void @lam37511(i64 %env37512, i64 %cont36269, i64 %AfC$x) {
  %retprim36270 = call i64 @prim_car(i64 %AfC$x)                                     ; call prim_car
  %arg36750 = add i64 0, 0                                                           ; quoted ()
  %cloptr38486 = inttoptr i64 %cont36269 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38486)                                        ; assert function application
  %i0ptr38487 = getelementptr inbounds i64, i64* %cloptr38486, i64 0                 ; &cloptr38486[0]
  %f38489 = load i64, i64* %i0ptr38487, align 8                                      ; load; *i0ptr38487
  %fptr38488 = inttoptr i64 %f38489 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38488(i64 %cont36269, i64 %arg36750, i64 %retprim36270); tail call
  ret void
}


define void @lam37508(i64 %env37509, i64 %cont36271, i64 %E8N$x) {
  %a36172 = call i64 @prim_cdr(i64 %E8N$x)                                           ; call prim_cdr
  %retprim36272 = call i64 @prim_car(i64 %a36172)                                    ; call prim_car
  %arg36755 = add i64 0, 0                                                           ; quoted ()
  %cloptr38490 = inttoptr i64 %cont36271 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38490)                                        ; assert function application
  %i0ptr38491 = getelementptr inbounds i64, i64* %cloptr38490, i64 0                 ; &cloptr38490[0]
  %f38493 = load i64, i64* %i0ptr38491, align 8                                      ; load; *i0ptr38491
  %fptr38492 = inttoptr i64 %f38493 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38492(i64 %cont36271, i64 %arg36755, i64 %retprim36272); tail call
  ret void
}


define void @lam37505(i64 %env37506, i64 %cont36273, i64 %b8T$x) {
  %a36173 = call i64 @prim_cdr(i64 %b8T$x)                                           ; call prim_cdr
  %a36174 = call i64 @prim_cdr(i64 %a36173)                                          ; call prim_cdr
  %retprim36274 = call i64 @prim_car(i64 %a36174)                                    ; call prim_car
  %arg36761 = add i64 0, 0                                                           ; quoted ()
  %cloptr38494 = inttoptr i64 %cont36273 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38494)                                        ; assert function application
  %i0ptr38495 = getelementptr inbounds i64, i64* %cloptr38494, i64 0                 ; &cloptr38494[0]
  %f38497 = load i64, i64* %i0ptr38495, align 8                                      ; load; *i0ptr38495
  %fptr38496 = inttoptr i64 %f38497 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38496(i64 %cont36273, i64 %arg36761, i64 %retprim36274); tail call
  ret void
}


define void @lam37502(i64 %env37503, i64 %cont36275, i64 %gSI$x) {
  %a36175 = call i64 @prim_cdr(i64 %gSI$x)                                           ; call prim_cdr
  %a36176 = call i64 @prim_cdr(i64 %a36175)                                          ; call prim_cdr
  %a36177 = call i64 @prim_cdr(i64 %a36176)                                          ; call prim_cdr
  %retprim36276 = call i64 @prim_car(i64 %a36177)                                    ; call prim_car
  %arg36768 = add i64 0, 0                                                           ; quoted ()
  %cloptr38498 = inttoptr i64 %cont36275 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38498)                                        ; assert function application
  %i0ptr38499 = getelementptr inbounds i64, i64* %cloptr38498, i64 0                 ; &cloptr38498[0]
  %f38501 = load i64, i64* %i0ptr38499, align 8                                      ; load; *i0ptr38499
  %fptr38500 = inttoptr i64 %f38501 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38500(i64 %cont36275, i64 %arg36768, i64 %retprim36276); tail call
  ret void
}


define void @lam37499(i64 %env37500, i64 %cont36277, i64 %H9l$p) {
  %a36178 = call i64 @prim_cons_63(i64 %H9l$p)                                       ; call prim_cons_63
  %cmp38502 = icmp eq i64 %a36178, 15                                                ; false?
  br i1 %cmp38502, label %else38504, label %then38503                                ; if

then38503:
  %a36179 = call i64 @prim_car(i64 %H9l$p)                                           ; call prim_car
  %arg36772 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym38505, i32 0, i32 0)); quoted string
  %retprim36278 = call i64 @prim_eq_63(i64 %a36179, i64 %arg36772)                   ; call prim_eq_63
  %arg36775 = add i64 0, 0                                                           ; quoted ()
  %cloptr38506 = inttoptr i64 %cont36277 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38506)                                        ; assert function application
  %i0ptr38507 = getelementptr inbounds i64, i64* %cloptr38506, i64 0                 ; &cloptr38506[0]
  %f38509 = load i64, i64* %i0ptr38507, align 8                                      ; load; *i0ptr38507
  %fptr38508 = inttoptr i64 %f38509 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38508(i64 %cont36277, i64 %arg36775, i64 %retprim36278); tail call
  ret void

else38504:
  %arg36778 = add i64 0, 0                                                           ; quoted ()
  %arg36777 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr38510 = inttoptr i64 %cont36277 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38510)                                        ; assert function application
  %i0ptr38511 = getelementptr inbounds i64, i64* %cloptr38510, i64 0                 ; &cloptr38510[0]
  %f38513 = load i64, i64* %i0ptr38511, align 8                                      ; load; *i0ptr38511
  %fptr38512 = inttoptr i64 %f38513 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38512(i64 %cont36277, i64 %arg36778, i64 %arg36777) ; tail call
  ret void
}


define void @lam37493(i64 %env37494, i64 %bwL$lst36322) {
  %cont36321 = call i64 @prim_car(i64 %bwL$lst36322)                                 ; call prim_car
  %bwL$lst = call i64 @prim_cdr(i64 %bwL$lst36322)                                   ; call prim_cdr
  %arg36785 = add i64 0, 0                                                           ; quoted ()
  %cloptr38514 = inttoptr i64 %cont36321 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38514)                                        ; assert function application
  %i0ptr38515 = getelementptr inbounds i64, i64* %cloptr38514, i64 0                 ; &cloptr38514[0]
  %f38517 = load i64, i64* %i0ptr38515, align 8                                      ; load; *i0ptr38515
  %fptr38516 = inttoptr i64 %f38517 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38516(i64 %cont36321, i64 %arg36785, i64 %bwL$lst)  ; tail call
  ret void
}


define void @lam37490(i64 %env37491, i64 %_9536279, i64 %pPr$_37raise_45handler) {
  %envptr38518 = inttoptr i64 %env37491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38519 = getelementptr inbounds i64, i64* %envptr38518, i64 3                ; &envptr38518[3]
  %tkz$_37_62 = load i64, i64* %envptr38519, align 8                                 ; load; *envptr38519
  %envptr38520 = inttoptr i64 %env37491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38521 = getelementptr inbounds i64, i64* %envptr38520, i64 2                ; &envptr38520[2]
  %pp0$_37length = load i64, i64* %envptr38521, align 8                              ; load; *envptr38521
  %envptr38522 = inttoptr i64 %env37491 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38523 = getelementptr inbounds i64, i64* %envptr38522, i64 1                ; &envptr38522[1]
  %qFM$_37drop = load i64, i64* %envptr38523, align 8                                ; load; *envptr38523
  %cloptr38524 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38525 = getelementptr inbounds i64, i64* %cloptr38524, i64 0                  ; &cloptr38524[0]
  %f38526 = ptrtoint void(i64,i64)* @lam37488 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f38526, i64* %eptr38525                                                 ; store fptr
  %arg36788 = ptrtoint i64* %cloptr38524 to i64                                      ; closure cast; i64* -> i64
  %cloptr38527 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38529 = getelementptr inbounds i64, i64* %cloptr38527, i64 1                  ; &eptr38529[1]
  %eptr38530 = getelementptr inbounds i64, i64* %cloptr38527, i64 2                  ; &eptr38530[2]
  %eptr38531 = getelementptr inbounds i64, i64* %cloptr38527, i64 3                  ; &eptr38531[3]
  store i64 %qFM$_37drop, i64* %eptr38529                                            ; *eptr38529 = %qFM$_37drop
  store i64 %pp0$_37length, i64* %eptr38530                                          ; *eptr38530 = %pp0$_37length
  store i64 %tkz$_37_62, i64* %eptr38531                                             ; *eptr38531 = %tkz$_37_62
  %eptr38528 = getelementptr inbounds i64, i64* %cloptr38527, i64 0                  ; &cloptr38527[0]
  %f38532 = ptrtoint void(i64,i64,i64)* @lam37485 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38532, i64* %eptr38528                                                 ; store fptr
  %arg36787 = ptrtoint i64* %cloptr38527 to i64                                      ; closure cast; i64* -> i64
  %rva37241 = add i64 0, 0                                                           ; quoted ()
  %rva37240 = call i64 @prim_cons(i64 %arg36787, i64 %rva37241)                      ; call prim_cons
  %cloptr38533 = inttoptr i64 %arg36788 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38533)                                        ; assert function application
  %i0ptr38534 = getelementptr inbounds i64, i64* %cloptr38533, i64 0                 ; &cloptr38533[0]
  %f38536 = load i64, i64* %i0ptr38534, align 8                                      ; load; *i0ptr38534
  %fptr38535 = inttoptr i64 %f38536 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38535(i64 %arg36788, i64 %rva37240)                 ; tail call
  ret void
}


define void @lam37488(i64 %env37489, i64 %ntq$lst36320) {
  %cont36319 = call i64 @prim_car(i64 %ntq$lst36320)                                 ; call prim_car
  %ntq$lst = call i64 @prim_cdr(i64 %ntq$lst36320)                                   ; call prim_cdr
  %arg36792 = add i64 0, 0                                                           ; quoted ()
  %cloptr38537 = inttoptr i64 %cont36319 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38537)                                        ; assert function application
  %i0ptr38538 = getelementptr inbounds i64, i64* %cloptr38537, i64 0                 ; &cloptr38537[0]
  %f38540 = load i64, i64* %i0ptr38538, align 8                                      ; load; *i0ptr38538
  %fptr38539 = inttoptr i64 %f38540 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38539(i64 %cont36319, i64 %arg36792, i64 %ntq$lst)  ; tail call
  ret void
}


define void @lam37485(i64 %env37486, i64 %_9536317, i64 %a36180) {
  %envptr38541 = inttoptr i64 %env37486 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38542 = getelementptr inbounds i64, i64* %envptr38541, i64 3                ; &envptr38541[3]
  %tkz$_37_62 = load i64, i64* %envptr38542, align 8                                 ; load; *envptr38542
  %envptr38543 = inttoptr i64 %env37486 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38544 = getelementptr inbounds i64, i64* %envptr38543, i64 2                ; &envptr38543[2]
  %pp0$_37length = load i64, i64* %envptr38544, align 8                              ; load; *envptr38544
  %envptr38545 = inttoptr i64 %env37486 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38546 = getelementptr inbounds i64, i64* %envptr38545, i64 1                ; &envptr38545[1]
  %qFM$_37drop = load i64, i64* %envptr38546, align 8                                ; load; *envptr38546
  %arg36795 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim36318 = call i64 @prim_make_45vector(i64 %arg36795, i64 %a36180)           ; call prim_make_45vector
  %cloptr38547 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38549 = getelementptr inbounds i64, i64* %cloptr38547, i64 1                  ; &eptr38549[1]
  %eptr38550 = getelementptr inbounds i64, i64* %cloptr38547, i64 2                  ; &eptr38550[2]
  %eptr38551 = getelementptr inbounds i64, i64* %cloptr38547, i64 3                  ; &eptr38551[3]
  store i64 %qFM$_37drop, i64* %eptr38549                                            ; *eptr38549 = %qFM$_37drop
  store i64 %pp0$_37length, i64* %eptr38550                                          ; *eptr38550 = %pp0$_37length
  store i64 %tkz$_37_62, i64* %eptr38551                                             ; *eptr38551 = %tkz$_37_62
  %eptr38548 = getelementptr inbounds i64, i64* %cloptr38547, i64 0                  ; &cloptr38547[0]
  %f38552 = ptrtoint void(i64,i64,i64)* @lam37482 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38552, i64* %eptr38548                                                 ; store fptr
  %arg36798 = ptrtoint i64* %cloptr38547 to i64                                      ; closure cast; i64* -> i64
  %arg36797 = add i64 0, 0                                                           ; quoted ()
  %cloptr38553 = inttoptr i64 %arg36798 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38553)                                        ; assert function application
  %i0ptr38554 = getelementptr inbounds i64, i64* %cloptr38553, i64 0                 ; &cloptr38553[0]
  %f38556 = load i64, i64* %i0ptr38554, align 8                                      ; load; *i0ptr38554
  %fptr38555 = inttoptr i64 %f38556 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38555(i64 %arg36798, i64 %arg36797, i64 %retprim36318); tail call
  ret void
}


define void @lam37482(i64 %env37483, i64 %_9536280, i64 %VvJ$_37wind_45stack) {
  %envptr38557 = inttoptr i64 %env37483 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38558 = getelementptr inbounds i64, i64* %envptr38557, i64 3                ; &envptr38557[3]
  %tkz$_37_62 = load i64, i64* %envptr38558, align 8                                 ; load; *envptr38558
  %envptr38559 = inttoptr i64 %env37483 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38560 = getelementptr inbounds i64, i64* %envptr38559, i64 2                ; &envptr38559[2]
  %pp0$_37length = load i64, i64* %envptr38560, align 8                              ; load; *envptr38560
  %envptr38561 = inttoptr i64 %env37483 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38562 = getelementptr inbounds i64, i64* %envptr38561, i64 1                ; &envptr38561[1]
  %qFM$_37drop = load i64, i64* %envptr38562, align 8                                ; load; *envptr38562
  %cloptr38563 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38565 = getelementptr inbounds i64, i64* %cloptr38563, i64 1                  ; &eptr38565[1]
  %eptr38566 = getelementptr inbounds i64, i64* %cloptr38563, i64 2                  ; &eptr38566[2]
  %eptr38567 = getelementptr inbounds i64, i64* %cloptr38563, i64 3                  ; &eptr38567[3]
  store i64 %qFM$_37drop, i64* %eptr38565                                            ; *eptr38565 = %qFM$_37drop
  store i64 %pp0$_37length, i64* %eptr38566                                          ; *eptr38566 = %pp0$_37length
  store i64 %tkz$_37_62, i64* %eptr38567                                             ; *eptr38567 = %tkz$_37_62
  %eptr38564 = getelementptr inbounds i64, i64* %cloptr38563, i64 0                  ; &cloptr38563[0]
  %f38568 = ptrtoint void(i64,i64,i64,i64)* @lam37480 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38568, i64* %eptr38564                                                 ; store fptr
  %doi$_37common_45tail = ptrtoint i64* %cloptr38563 to i64                          ; closure cast; i64* -> i64
  %cloptr38569 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr38571 = getelementptr inbounds i64, i64* %cloptr38569, i64 1                  ; &eptr38571[1]
  %eptr38572 = getelementptr inbounds i64, i64* %cloptr38569, i64 2                  ; &eptr38572[2]
  store i64 %doi$_37common_45tail, i64* %eptr38571                                   ; *eptr38571 = %doi$_37common_45tail
  store i64 %VvJ$_37wind_45stack, i64* %eptr38572                                    ; *eptr38572 = %VvJ$_37wind_45stack
  %eptr38570 = getelementptr inbounds i64, i64* %cloptr38569, i64 0                  ; &cloptr38569[0]
  %f38573 = ptrtoint void(i64,i64,i64)* @lam37438 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38573, i64* %eptr38570                                                 ; store fptr
  %wFw$_37do_45wind = ptrtoint i64* %cloptr38569 to i64                              ; closure cast; i64* -> i64
  %cloptr38574 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38575 = getelementptr inbounds i64, i64* %cloptr38574, i64 0                  ; &cloptr38574[0]
  %f38576 = ptrtoint void(i64,i64,i64)* @lam37388 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38576, i64* %eptr38575                                                 ; store fptr
  %arg36985 = ptrtoint i64* %cloptr38574 to i64                                      ; closure cast; i64* -> i64
  %arg36984 = add i64 0, 0                                                           ; quoted ()
  %arg36983 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %cloptr38577 = inttoptr i64 %arg36985 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38577)                                        ; assert function application
  %i0ptr38578 = getelementptr inbounds i64, i64* %cloptr38577, i64 0                 ; &cloptr38577[0]
  %f38580 = load i64, i64* %i0ptr38578, align 8                                      ; load; *i0ptr38578
  %fptr38579 = inttoptr i64 %f38580 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38579(i64 %arg36985, i64 %arg36984, i64 %arg36983)  ; tail call
  ret void
}


define void @lam37480(i64 %env37481, i64 %cont36281, i64 %vwY$x, i64 %UNw$y) {
  %envptr38581 = inttoptr i64 %env37481 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38582 = getelementptr inbounds i64, i64* %envptr38581, i64 3                ; &envptr38581[3]
  %tkz$_37_62 = load i64, i64* %envptr38582, align 8                                 ; load; *envptr38582
  %envptr38583 = inttoptr i64 %env37481 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38584 = getelementptr inbounds i64, i64* %envptr38583, i64 2                ; &envptr38583[2]
  %pp0$_37length = load i64, i64* %envptr38584, align 8                              ; load; *envptr38584
  %envptr38585 = inttoptr i64 %env37481 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38586 = getelementptr inbounds i64, i64* %envptr38585, i64 1                ; &envptr38585[1]
  %qFM$_37drop = load i64, i64* %envptr38586, align 8                                ; load; *envptr38586
  %cloptr38587 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr38589 = getelementptr inbounds i64, i64* %cloptr38587, i64 1                  ; &eptr38589[1]
  %eptr38590 = getelementptr inbounds i64, i64* %cloptr38587, i64 2                  ; &eptr38590[2]
  %eptr38591 = getelementptr inbounds i64, i64* %cloptr38587, i64 3                  ; &eptr38591[3]
  %eptr38592 = getelementptr inbounds i64, i64* %cloptr38587, i64 4                  ; &eptr38592[4]
  %eptr38593 = getelementptr inbounds i64, i64* %cloptr38587, i64 5                  ; &eptr38593[5]
  %eptr38594 = getelementptr inbounds i64, i64* %cloptr38587, i64 6                  ; &eptr38594[6]
  store i64 %qFM$_37drop, i64* %eptr38589                                            ; *eptr38589 = %qFM$_37drop
  store i64 %UNw$y, i64* %eptr38590                                                  ; *eptr38590 = %UNw$y
  store i64 %vwY$x, i64* %eptr38591                                                  ; *eptr38591 = %vwY$x
  store i64 %cont36281, i64* %eptr38592                                              ; *eptr38592 = %cont36281
  store i64 %pp0$_37length, i64* %eptr38593                                          ; *eptr38593 = %pp0$_37length
  store i64 %tkz$_37_62, i64* %eptr38594                                             ; *eptr38594 = %tkz$_37_62
  %eptr38588 = getelementptr inbounds i64, i64* %cloptr38587, i64 0                  ; &cloptr38587[0]
  %f38595 = ptrtoint void(i64,i64,i64)* @lam37478 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38595, i64* %eptr38588                                                 ; store fptr
  %arg36800 = ptrtoint i64* %cloptr38587 to i64                                      ; closure cast; i64* -> i64
  %cloptr38596 = inttoptr i64 %pp0$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38596)                                        ; assert function application
  %i0ptr38597 = getelementptr inbounds i64, i64* %cloptr38596, i64 0                 ; &cloptr38596[0]
  %f38599 = load i64, i64* %i0ptr38597, align 8                                      ; load; *i0ptr38597
  %fptr38598 = inttoptr i64 %f38599 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38598(i64 %pp0$_37length, i64 %arg36800, i64 %vwY$x); tail call
  ret void
}


define void @lam37478(i64 %env37479, i64 %_9536282, i64 %ICC$lx) {
  %envptr38600 = inttoptr i64 %env37479 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38601 = getelementptr inbounds i64, i64* %envptr38600, i64 6                ; &envptr38600[6]
  %tkz$_37_62 = load i64, i64* %envptr38601, align 8                                 ; load; *envptr38601
  %envptr38602 = inttoptr i64 %env37479 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38603 = getelementptr inbounds i64, i64* %envptr38602, i64 5                ; &envptr38602[5]
  %pp0$_37length = load i64, i64* %envptr38603, align 8                              ; load; *envptr38603
  %envptr38604 = inttoptr i64 %env37479 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38605 = getelementptr inbounds i64, i64* %envptr38604, i64 4                ; &envptr38604[4]
  %cont36281 = load i64, i64* %envptr38605, align 8                                  ; load; *envptr38605
  %envptr38606 = inttoptr i64 %env37479 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38607 = getelementptr inbounds i64, i64* %envptr38606, i64 3                ; &envptr38606[3]
  %vwY$x = load i64, i64* %envptr38607, align 8                                      ; load; *envptr38607
  %envptr38608 = inttoptr i64 %env37479 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38609 = getelementptr inbounds i64, i64* %envptr38608, i64 2                ; &envptr38608[2]
  %UNw$y = load i64, i64* %envptr38609, align 8                                      ; load; *envptr38609
  %envptr38610 = inttoptr i64 %env37479 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38611 = getelementptr inbounds i64, i64* %envptr38610, i64 1                ; &envptr38610[1]
  %qFM$_37drop = load i64, i64* %envptr38611, align 8                                ; load; *envptr38611
  %cloptr38612 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr38614 = getelementptr inbounds i64, i64* %cloptr38612, i64 1                  ; &eptr38614[1]
  %eptr38615 = getelementptr inbounds i64, i64* %cloptr38612, i64 2                  ; &eptr38615[2]
  %eptr38616 = getelementptr inbounds i64, i64* %cloptr38612, i64 3                  ; &eptr38616[3]
  %eptr38617 = getelementptr inbounds i64, i64* %cloptr38612, i64 4                  ; &eptr38617[4]
  %eptr38618 = getelementptr inbounds i64, i64* %cloptr38612, i64 5                  ; &eptr38618[5]
  %eptr38619 = getelementptr inbounds i64, i64* %cloptr38612, i64 6                  ; &eptr38619[6]
  store i64 %qFM$_37drop, i64* %eptr38614                                            ; *eptr38614 = %qFM$_37drop
  store i64 %ICC$lx, i64* %eptr38615                                                 ; *eptr38615 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38616                                                  ; *eptr38616 = %UNw$y
  store i64 %vwY$x, i64* %eptr38617                                                  ; *eptr38617 = %vwY$x
  store i64 %cont36281, i64* %eptr38618                                              ; *eptr38618 = %cont36281
  store i64 %tkz$_37_62, i64* %eptr38619                                             ; *eptr38619 = %tkz$_37_62
  %eptr38613 = getelementptr inbounds i64, i64* %cloptr38612, i64 0                  ; &cloptr38612[0]
  %f38620 = ptrtoint void(i64,i64,i64)* @lam37476 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38620, i64* %eptr38613                                                 ; store fptr
  %arg36803 = ptrtoint i64* %cloptr38612 to i64                                      ; closure cast; i64* -> i64
  %cloptr38621 = inttoptr i64 %pp0$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38621)                                        ; assert function application
  %i0ptr38622 = getelementptr inbounds i64, i64* %cloptr38621, i64 0                 ; &cloptr38621[0]
  %f38624 = load i64, i64* %i0ptr38622, align 8                                      ; load; *i0ptr38622
  %fptr38623 = inttoptr i64 %f38624 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38623(i64 %pp0$_37length, i64 %arg36803, i64 %UNw$y); tail call
  ret void
}


define void @lam37476(i64 %env37477, i64 %_9536283, i64 %Psn$ly) {
  %envptr38625 = inttoptr i64 %env37477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38626 = getelementptr inbounds i64, i64* %envptr38625, i64 6                ; &envptr38625[6]
  %tkz$_37_62 = load i64, i64* %envptr38626, align 8                                 ; load; *envptr38626
  %envptr38627 = inttoptr i64 %env37477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38628 = getelementptr inbounds i64, i64* %envptr38627, i64 5                ; &envptr38627[5]
  %cont36281 = load i64, i64* %envptr38628, align 8                                  ; load; *envptr38628
  %envptr38629 = inttoptr i64 %env37477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38630 = getelementptr inbounds i64, i64* %envptr38629, i64 4                ; &envptr38629[4]
  %vwY$x = load i64, i64* %envptr38630, align 8                                      ; load; *envptr38630
  %envptr38631 = inttoptr i64 %env37477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38632 = getelementptr inbounds i64, i64* %envptr38631, i64 3                ; &envptr38631[3]
  %UNw$y = load i64, i64* %envptr38632, align 8                                      ; load; *envptr38632
  %envptr38633 = inttoptr i64 %env37477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38634 = getelementptr inbounds i64, i64* %envptr38633, i64 2                ; &envptr38633[2]
  %ICC$lx = load i64, i64* %envptr38634, align 8                                     ; load; *envptr38634
  %envptr38635 = inttoptr i64 %env37477 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38636 = getelementptr inbounds i64, i64* %envptr38635, i64 1                ; &envptr38635[1]
  %qFM$_37drop = load i64, i64* %envptr38636, align 8                                ; load; *envptr38636
  %cloptr38637 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38638 = getelementptr inbounds i64, i64* %cloptr38637, i64 0                  ; &cloptr38637[0]
  %f38639 = ptrtoint void(i64,i64)* @lam37474 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f38639, i64* %eptr38638                                                 ; store fptr
  %arg36806 = ptrtoint i64* %cloptr38637 to i64                                      ; closure cast; i64* -> i64
  %cloptr38640 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr38642 = getelementptr inbounds i64, i64* %cloptr38640, i64 1                  ; &eptr38642[1]
  %eptr38643 = getelementptr inbounds i64, i64* %cloptr38640, i64 2                  ; &eptr38643[2]
  %eptr38644 = getelementptr inbounds i64, i64* %cloptr38640, i64 3                  ; &eptr38644[3]
  %eptr38645 = getelementptr inbounds i64, i64* %cloptr38640, i64 4                  ; &eptr38645[4]
  %eptr38646 = getelementptr inbounds i64, i64* %cloptr38640, i64 5                  ; &eptr38646[5]
  %eptr38647 = getelementptr inbounds i64, i64* %cloptr38640, i64 6                  ; &eptr38647[6]
  %eptr38648 = getelementptr inbounds i64, i64* %cloptr38640, i64 7                  ; &eptr38648[7]
  store i64 %qFM$_37drop, i64* %eptr38642                                            ; *eptr38642 = %qFM$_37drop
  store i64 %Psn$ly, i64* %eptr38643                                                 ; *eptr38643 = %Psn$ly
  store i64 %ICC$lx, i64* %eptr38644                                                 ; *eptr38644 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38645                                                  ; *eptr38645 = %UNw$y
  store i64 %vwY$x, i64* %eptr38646                                                  ; *eptr38646 = %vwY$x
  store i64 %cont36281, i64* %eptr38647                                              ; *eptr38647 = %cont36281
  store i64 %tkz$_37_62, i64* %eptr38648                                             ; *eptr38648 = %tkz$_37_62
  %eptr38641 = getelementptr inbounds i64, i64* %cloptr38640, i64 0                  ; &cloptr38640[0]
  %f38649 = ptrtoint void(i64,i64,i64)* @lam37471 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38649, i64* %eptr38641                                                 ; store fptr
  %arg36805 = ptrtoint i64* %cloptr38640 to i64                                      ; closure cast; i64* -> i64
  %cloptr38650 = inttoptr i64 %arg36806 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38650)                                        ; assert function application
  %i0ptr38651 = getelementptr inbounds i64, i64* %cloptr38650, i64 0                 ; &cloptr38650[0]
  %f38653 = load i64, i64* %i0ptr38651, align 8                                      ; load; *i0ptr38651
  %fptr38652 = inttoptr i64 %f38653 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38652(i64 %arg36806, i64 %arg36805)                 ; tail call
  ret void
}


define void @lam37474(i64 %env37475, i64 %BeW$lst36293) {
  %cont36292 = call i64 @prim_car(i64 %BeW$lst36293)                                 ; call prim_car
  %BeW$lst = call i64 @prim_cdr(i64 %BeW$lst36293)                                   ; call prim_cdr
  %arg36810 = add i64 0, 0                                                           ; quoted ()
  %cloptr38654 = inttoptr i64 %cont36292 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38654)                                        ; assert function application
  %i0ptr38655 = getelementptr inbounds i64, i64* %cloptr38654, i64 0                 ; &cloptr38654[0]
  %f38657 = load i64, i64* %i0ptr38655, align 8                                      ; load; *i0ptr38655
  %fptr38656 = inttoptr i64 %f38657 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38656(i64 %cont36292, i64 %arg36810, i64 %BeW$lst)  ; tail call
  ret void
}


define void @lam37471(i64 %env37472, i64 %_9536290, i64 %a36181) {
  %envptr38658 = inttoptr i64 %env37472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38659 = getelementptr inbounds i64, i64* %envptr38658, i64 7                ; &envptr38658[7]
  %tkz$_37_62 = load i64, i64* %envptr38659, align 8                                 ; load; *envptr38659
  %envptr38660 = inttoptr i64 %env37472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38661 = getelementptr inbounds i64, i64* %envptr38660, i64 6                ; &envptr38660[6]
  %cont36281 = load i64, i64* %envptr38661, align 8                                  ; load; *envptr38661
  %envptr38662 = inttoptr i64 %env37472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38663 = getelementptr inbounds i64, i64* %envptr38662, i64 5                ; &envptr38662[5]
  %vwY$x = load i64, i64* %envptr38663, align 8                                      ; load; *envptr38663
  %envptr38664 = inttoptr i64 %env37472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38665 = getelementptr inbounds i64, i64* %envptr38664, i64 4                ; &envptr38664[4]
  %UNw$y = load i64, i64* %envptr38665, align 8                                      ; load; *envptr38665
  %envptr38666 = inttoptr i64 %env37472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38667 = getelementptr inbounds i64, i64* %envptr38666, i64 3                ; &envptr38666[3]
  %ICC$lx = load i64, i64* %envptr38667, align 8                                     ; load; *envptr38667
  %envptr38668 = inttoptr i64 %env37472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38669 = getelementptr inbounds i64, i64* %envptr38668, i64 2                ; &envptr38668[2]
  %Psn$ly = load i64, i64* %envptr38669, align 8                                     ; load; *envptr38669
  %envptr38670 = inttoptr i64 %env37472 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38671 = getelementptr inbounds i64, i64* %envptr38670, i64 1                ; &envptr38670[1]
  %qFM$_37drop = load i64, i64* %envptr38671, align 8                                ; load; *envptr38671
  %arg36813 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim36291 = call i64 @prim_make_45vector(i64 %arg36813, i64 %a36181)           ; call prim_make_45vector
  %cloptr38672 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr38674 = getelementptr inbounds i64, i64* %cloptr38672, i64 1                  ; &eptr38674[1]
  %eptr38675 = getelementptr inbounds i64, i64* %cloptr38672, i64 2                  ; &eptr38675[2]
  %eptr38676 = getelementptr inbounds i64, i64* %cloptr38672, i64 3                  ; &eptr38676[3]
  %eptr38677 = getelementptr inbounds i64, i64* %cloptr38672, i64 4                  ; &eptr38677[4]
  %eptr38678 = getelementptr inbounds i64, i64* %cloptr38672, i64 5                  ; &eptr38678[5]
  %eptr38679 = getelementptr inbounds i64, i64* %cloptr38672, i64 6                  ; &eptr38679[6]
  %eptr38680 = getelementptr inbounds i64, i64* %cloptr38672, i64 7                  ; &eptr38680[7]
  store i64 %qFM$_37drop, i64* %eptr38674                                            ; *eptr38674 = %qFM$_37drop
  store i64 %Psn$ly, i64* %eptr38675                                                 ; *eptr38675 = %Psn$ly
  store i64 %ICC$lx, i64* %eptr38676                                                 ; *eptr38676 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38677                                                  ; *eptr38677 = %UNw$y
  store i64 %vwY$x, i64* %eptr38678                                                  ; *eptr38678 = %vwY$x
  store i64 %cont36281, i64* %eptr38679                                              ; *eptr38679 = %cont36281
  store i64 %tkz$_37_62, i64* %eptr38680                                             ; *eptr38680 = %tkz$_37_62
  %eptr38673 = getelementptr inbounds i64, i64* %cloptr38672, i64 0                  ; &cloptr38672[0]
  %f38681 = ptrtoint void(i64,i64,i64)* @lam37468 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38681, i64* %eptr38673                                                 ; store fptr
  %arg36816 = ptrtoint i64* %cloptr38672 to i64                                      ; closure cast; i64* -> i64
  %arg36815 = add i64 0, 0                                                           ; quoted ()
  %cloptr38682 = inttoptr i64 %arg36816 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38682)                                        ; assert function application
  %i0ptr38683 = getelementptr inbounds i64, i64* %cloptr38682, i64 0                 ; &cloptr38682[0]
  %f38685 = load i64, i64* %i0ptr38683, align 8                                      ; load; *i0ptr38683
  %fptr38684 = inttoptr i64 %f38685 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38684(i64 %arg36816, i64 %arg36815, i64 %retprim36291); tail call
  ret void
}


define void @lam37468(i64 %env37469, i64 %_9536284, i64 %oty$loop) {
  %envptr38686 = inttoptr i64 %env37469 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38687 = getelementptr inbounds i64, i64* %envptr38686, i64 7                ; &envptr38686[7]
  %tkz$_37_62 = load i64, i64* %envptr38687, align 8                                 ; load; *envptr38687
  %envptr38688 = inttoptr i64 %env37469 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38689 = getelementptr inbounds i64, i64* %envptr38688, i64 6                ; &envptr38688[6]
  %cont36281 = load i64, i64* %envptr38689, align 8                                  ; load; *envptr38689
  %envptr38690 = inttoptr i64 %env37469 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38691 = getelementptr inbounds i64, i64* %envptr38690, i64 5                ; &envptr38690[5]
  %vwY$x = load i64, i64* %envptr38691, align 8                                      ; load; *envptr38691
  %envptr38692 = inttoptr i64 %env37469 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38693 = getelementptr inbounds i64, i64* %envptr38692, i64 4                ; &envptr38692[4]
  %UNw$y = load i64, i64* %envptr38693, align 8                                      ; load; *envptr38693
  %envptr38694 = inttoptr i64 %env37469 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38695 = getelementptr inbounds i64, i64* %envptr38694, i64 3                ; &envptr38694[3]
  %ICC$lx = load i64, i64* %envptr38695, align 8                                     ; load; *envptr38695
  %envptr38696 = inttoptr i64 %env37469 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38697 = getelementptr inbounds i64, i64* %envptr38696, i64 2                ; &envptr38696[2]
  %Psn$ly = load i64, i64* %envptr38697, align 8                                     ; load; *envptr38697
  %envptr38698 = inttoptr i64 %env37469 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38699 = getelementptr inbounds i64, i64* %envptr38698, i64 1                ; &envptr38698[1]
  %qFM$_37drop = load i64, i64* %envptr38699, align 8                                ; load; *envptr38699
  %arg36818 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr38700 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr38702 = getelementptr inbounds i64, i64* %cloptr38700, i64 1                  ; &eptr38702[1]
  store i64 %oty$loop, i64* %eptr38702                                               ; *eptr38702 = %oty$loop
  %eptr38701 = getelementptr inbounds i64, i64* %cloptr38700, i64 0                  ; &cloptr38700[0]
  %f38703 = ptrtoint void(i64,i64,i64,i64)* @lam37465 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f38703, i64* %eptr38701                                                 ; store fptr
  %arg36817 = ptrtoint i64* %cloptr38700 to i64                                      ; closure cast; i64* -> i64
  %KHZ$_9536085 = call i64 @prim_vector_45set_33(i64 %oty$loop, i64 %arg36818, i64 %arg36817); call prim_vector_45set_33
  %arg36833 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36186 = call i64 @prim_vector_45ref(i64 %oty$loop, i64 %arg36833)                ; call prim_vector_45ref
  %cloptr38704 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr38706 = getelementptr inbounds i64, i64* %cloptr38704, i64 1                  ; &eptr38706[1]
  %eptr38707 = getelementptr inbounds i64, i64* %cloptr38704, i64 2                  ; &eptr38707[2]
  %eptr38708 = getelementptr inbounds i64, i64* %cloptr38704, i64 3                  ; &eptr38708[3]
  %eptr38709 = getelementptr inbounds i64, i64* %cloptr38704, i64 4                  ; &eptr38709[4]
  %eptr38710 = getelementptr inbounds i64, i64* %cloptr38704, i64 5                  ; &eptr38710[5]
  %eptr38711 = getelementptr inbounds i64, i64* %cloptr38704, i64 6                  ; &eptr38711[6]
  %eptr38712 = getelementptr inbounds i64, i64* %cloptr38704, i64 7                  ; &eptr38712[7]
  %eptr38713 = getelementptr inbounds i64, i64* %cloptr38704, i64 8                  ; &eptr38713[8]
  store i64 %qFM$_37drop, i64* %eptr38706                                            ; *eptr38706 = %qFM$_37drop
  store i64 %Psn$ly, i64* %eptr38707                                                 ; *eptr38707 = %Psn$ly
  store i64 %ICC$lx, i64* %eptr38708                                                 ; *eptr38708 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38709                                                  ; *eptr38709 = %UNw$y
  store i64 %vwY$x, i64* %eptr38710                                                  ; *eptr38710 = %vwY$x
  store i64 %cont36281, i64* %eptr38711                                              ; *eptr38711 = %cont36281
  store i64 %a36186, i64* %eptr38712                                                 ; *eptr38712 = %a36186
  store i64 %tkz$_37_62, i64* %eptr38713                                             ; *eptr38713 = %tkz$_37_62
  %eptr38705 = getelementptr inbounds i64, i64* %cloptr38704, i64 0                  ; &cloptr38704[0]
  %f38714 = ptrtoint void(i64,i64,i64)* @lam37460 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38714, i64* %eptr38705                                                 ; store fptr
  %arg36837 = ptrtoint i64* %cloptr38704 to i64                                      ; closure cast; i64* -> i64
  %cloptr38715 = inttoptr i64 %tkz$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38715)                                        ; assert function application
  %i0ptr38716 = getelementptr inbounds i64, i64* %cloptr38715, i64 0                 ; &cloptr38715[0]
  %f38718 = load i64, i64* %i0ptr38716, align 8                                      ; load; *i0ptr38716
  %fptr38717 = inttoptr i64 %f38718 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38717(i64 %tkz$_37_62, i64 %arg36837, i64 %ICC$lx, i64 %Psn$ly); tail call
  ret void
}


define void @lam37465(i64 %env37466, i64 %cont36285, i64 %soE$x, i64 %FjO$y) {
  %envptr38719 = inttoptr i64 %env37466 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38720 = getelementptr inbounds i64, i64* %envptr38719, i64 1                ; &envptr38719[1]
  %oty$loop = load i64, i64* %envptr38720, align 8                                   ; load; *envptr38720
  %a36182 = call i64 @prim_eq_63(i64 %soE$x, i64 %FjO$y)                             ; call prim_eq_63
  %cmp38721 = icmp eq i64 %a36182, 15                                                ; false?
  br i1 %cmp38721, label %else38723, label %then38722                                ; if

then38722:
  %arg36823 = add i64 0, 0                                                           ; quoted ()
  %cloptr38724 = inttoptr i64 %cont36285 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38724)                                        ; assert function application
  %i0ptr38725 = getelementptr inbounds i64, i64* %cloptr38724, i64 0                 ; &cloptr38724[0]
  %f38727 = load i64, i64* %i0ptr38725, align 8                                      ; load; *i0ptr38725
  %fptr38726 = inttoptr i64 %f38727 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38726(i64 %cont36285, i64 %arg36823, i64 %soE$x)    ; tail call
  ret void

else38723:
  %arg36825 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36183 = call i64 @prim_vector_45ref(i64 %oty$loop, i64 %arg36825)                ; call prim_vector_45ref
  %a36184 = call i64 @prim_cdr(i64 %soE$x)                                           ; call prim_cdr
  %a36185 = call i64 @prim_cdr(i64 %FjO$y)                                           ; call prim_cdr
  %cloptr38728 = inttoptr i64 %a36183 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38728)                                        ; assert function application
  %i0ptr38729 = getelementptr inbounds i64, i64* %cloptr38728, i64 0                 ; &cloptr38728[0]
  %f38731 = load i64, i64* %i0ptr38729, align 8                                      ; load; *i0ptr38729
  %fptr38730 = inttoptr i64 %f38731 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38730(i64 %a36183, i64 %cont36285, i64 %a36184, i64 %a36185); tail call
  ret void
}


define void @lam37460(i64 %env37461, i64 %_9536286, i64 %a36187) {
  %envptr38732 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38733 = getelementptr inbounds i64, i64* %envptr38732, i64 8                ; &envptr38732[8]
  %tkz$_37_62 = load i64, i64* %envptr38733, align 8                                 ; load; *envptr38733
  %envptr38734 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38735 = getelementptr inbounds i64, i64* %envptr38734, i64 7                ; &envptr38734[7]
  %a36186 = load i64, i64* %envptr38735, align 8                                     ; load; *envptr38735
  %envptr38736 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38737 = getelementptr inbounds i64, i64* %envptr38736, i64 6                ; &envptr38736[6]
  %cont36281 = load i64, i64* %envptr38737, align 8                                  ; load; *envptr38737
  %envptr38738 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38739 = getelementptr inbounds i64, i64* %envptr38738, i64 5                ; &envptr38738[5]
  %vwY$x = load i64, i64* %envptr38739, align 8                                      ; load; *envptr38739
  %envptr38740 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38741 = getelementptr inbounds i64, i64* %envptr38740, i64 4                ; &envptr38740[4]
  %UNw$y = load i64, i64* %envptr38741, align 8                                      ; load; *envptr38741
  %envptr38742 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38743 = getelementptr inbounds i64, i64* %envptr38742, i64 3                ; &envptr38742[3]
  %ICC$lx = load i64, i64* %envptr38743, align 8                                     ; load; *envptr38743
  %envptr38744 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38745 = getelementptr inbounds i64, i64* %envptr38744, i64 2                ; &envptr38744[2]
  %Psn$ly = load i64, i64* %envptr38745, align 8                                     ; load; *envptr38745
  %envptr38746 = inttoptr i64 %env37461 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38747 = getelementptr inbounds i64, i64* %envptr38746, i64 1                ; &envptr38746[1]
  %qFM$_37drop = load i64, i64* %envptr38747, align 8                                ; load; *envptr38747
  %cmp38748 = icmp eq i64 %a36187, 15                                                ; false?
  br i1 %cmp38748, label %else38750, label %then38749                                ; if

then38749:
  %a36188 = call i64 @prim__45(i64 %ICC$lx, i64 %Psn$ly)                             ; call prim__45
  %cloptr38751 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr38753 = getelementptr inbounds i64, i64* %cloptr38751, i64 1                  ; &eptr38753[1]
  %eptr38754 = getelementptr inbounds i64, i64* %cloptr38751, i64 2                  ; &eptr38754[2]
  %eptr38755 = getelementptr inbounds i64, i64* %cloptr38751, i64 3                  ; &eptr38755[3]
  %eptr38756 = getelementptr inbounds i64, i64* %cloptr38751, i64 4                  ; &eptr38756[4]
  %eptr38757 = getelementptr inbounds i64, i64* %cloptr38751, i64 5                  ; &eptr38757[5]
  %eptr38758 = getelementptr inbounds i64, i64* %cloptr38751, i64 6                  ; &eptr38758[6]
  %eptr38759 = getelementptr inbounds i64, i64* %cloptr38751, i64 7                  ; &eptr38759[7]
  store i64 %qFM$_37drop, i64* %eptr38753                                            ; *eptr38753 = %qFM$_37drop
  store i64 %Psn$ly, i64* %eptr38754                                                 ; *eptr38754 = %Psn$ly
  store i64 %ICC$lx, i64* %eptr38755                                                 ; *eptr38755 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38756                                                  ; *eptr38756 = %UNw$y
  store i64 %cont36281, i64* %eptr38757                                              ; *eptr38757 = %cont36281
  store i64 %a36186, i64* %eptr38758                                                 ; *eptr38758 = %a36186
  store i64 %tkz$_37_62, i64* %eptr38759                                             ; *eptr38759 = %tkz$_37_62
  %eptr38752 = getelementptr inbounds i64, i64* %cloptr38751, i64 0                  ; &cloptr38751[0]
  %f38760 = ptrtoint void(i64,i64,i64)* @lam37448 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38760, i64* %eptr38752                                                 ; store fptr
  %arg36843 = ptrtoint i64* %cloptr38751 to i64                                      ; closure cast; i64* -> i64
  %cloptr38761 = inttoptr i64 %qFM$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38761)                                        ; assert function application
  %i0ptr38762 = getelementptr inbounds i64, i64* %cloptr38761, i64 0                 ; &cloptr38761[0]
  %f38764 = load i64, i64* %i0ptr38762, align 8                                      ; load; *i0ptr38762
  %fptr38763 = inttoptr i64 %f38764 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38763(i64 %qFM$_37drop, i64 %arg36843, i64 %vwY$x, i64 %a36188); tail call
  ret void

else38750:
  %cloptr38765 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr38767 = getelementptr inbounds i64, i64* %cloptr38765, i64 1                  ; &eptr38767[1]
  %eptr38768 = getelementptr inbounds i64, i64* %cloptr38765, i64 2                  ; &eptr38768[2]
  %eptr38769 = getelementptr inbounds i64, i64* %cloptr38765, i64 3                  ; &eptr38769[3]
  %eptr38770 = getelementptr inbounds i64, i64* %cloptr38765, i64 4                  ; &eptr38770[4]
  %eptr38771 = getelementptr inbounds i64, i64* %cloptr38765, i64 5                  ; &eptr38771[5]
  %eptr38772 = getelementptr inbounds i64, i64* %cloptr38765, i64 6                  ; &eptr38772[6]
  %eptr38773 = getelementptr inbounds i64, i64* %cloptr38765, i64 7                  ; &eptr38773[7]
  store i64 %qFM$_37drop, i64* %eptr38767                                            ; *eptr38767 = %qFM$_37drop
  store i64 %Psn$ly, i64* %eptr38768                                                 ; *eptr38768 = %Psn$ly
  store i64 %ICC$lx, i64* %eptr38769                                                 ; *eptr38769 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38770                                                  ; *eptr38770 = %UNw$y
  store i64 %cont36281, i64* %eptr38771                                              ; *eptr38771 = %cont36281
  store i64 %a36186, i64* %eptr38772                                                 ; *eptr38772 = %a36186
  store i64 %tkz$_37_62, i64* %eptr38773                                             ; *eptr38773 = %tkz$_37_62
  %eptr38766 = getelementptr inbounds i64, i64* %cloptr38765, i64 0                  ; &cloptr38765[0]
  %f38774 = ptrtoint void(i64,i64,i64)* @lam37458 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38774, i64* %eptr38766                                                 ; store fptr
  %arg36868 = ptrtoint i64* %cloptr38765 to i64                                      ; closure cast; i64* -> i64
  %arg36867 = add i64 0, 0                                                           ; quoted ()
  %cloptr38775 = inttoptr i64 %arg36868 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38775)                                        ; assert function application
  %i0ptr38776 = getelementptr inbounds i64, i64* %cloptr38775, i64 0                 ; &cloptr38775[0]
  %f38778 = load i64, i64* %i0ptr38776, align 8                                      ; load; *i0ptr38776
  %fptr38777 = inttoptr i64 %f38778 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38777(i64 %arg36868, i64 %arg36867, i64 %vwY$x)     ; tail call
  ret void
}


define void @lam37458(i64 %env37459, i64 %_9536287, i64 %a36189) {
  %envptr38779 = inttoptr i64 %env37459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38780 = getelementptr inbounds i64, i64* %envptr38779, i64 7                ; &envptr38779[7]
  %tkz$_37_62 = load i64, i64* %envptr38780, align 8                                 ; load; *envptr38780
  %envptr38781 = inttoptr i64 %env37459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38782 = getelementptr inbounds i64, i64* %envptr38781, i64 6                ; &envptr38781[6]
  %a36186 = load i64, i64* %envptr38782, align 8                                     ; load; *envptr38782
  %envptr38783 = inttoptr i64 %env37459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38784 = getelementptr inbounds i64, i64* %envptr38783, i64 5                ; &envptr38783[5]
  %cont36281 = load i64, i64* %envptr38784, align 8                                  ; load; *envptr38784
  %envptr38785 = inttoptr i64 %env37459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38786 = getelementptr inbounds i64, i64* %envptr38785, i64 4                ; &envptr38785[4]
  %UNw$y = load i64, i64* %envptr38786, align 8                                      ; load; *envptr38786
  %envptr38787 = inttoptr i64 %env37459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38788 = getelementptr inbounds i64, i64* %envptr38787, i64 3                ; &envptr38787[3]
  %ICC$lx = load i64, i64* %envptr38788, align 8                                     ; load; *envptr38788
  %envptr38789 = inttoptr i64 %env37459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38790 = getelementptr inbounds i64, i64* %envptr38789, i64 2                ; &envptr38789[2]
  %Psn$ly = load i64, i64* %envptr38790, align 8                                     ; load; *envptr38790
  %envptr38791 = inttoptr i64 %env37459 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38792 = getelementptr inbounds i64, i64* %envptr38791, i64 1                ; &envptr38791[1]
  %qFM$_37drop = load i64, i64* %envptr38792, align 8                                ; load; *envptr38792
  %cloptr38793 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr38795 = getelementptr inbounds i64, i64* %cloptr38793, i64 1                  ; &eptr38795[1]
  %eptr38796 = getelementptr inbounds i64, i64* %cloptr38793, i64 2                  ; &eptr38796[2]
  %eptr38797 = getelementptr inbounds i64, i64* %cloptr38793, i64 3                  ; &eptr38797[3]
  %eptr38798 = getelementptr inbounds i64, i64* %cloptr38793, i64 4                  ; &eptr38798[4]
  %eptr38799 = getelementptr inbounds i64, i64* %cloptr38793, i64 5                  ; &eptr38799[5]
  %eptr38800 = getelementptr inbounds i64, i64* %cloptr38793, i64 6                  ; &eptr38800[6]
  %eptr38801 = getelementptr inbounds i64, i64* %cloptr38793, i64 7                  ; &eptr38801[7]
  store i64 %qFM$_37drop, i64* %eptr38795                                            ; *eptr38795 = %qFM$_37drop
  store i64 %Psn$ly, i64* %eptr38796                                                 ; *eptr38796 = %Psn$ly
  store i64 %ICC$lx, i64* %eptr38797                                                 ; *eptr38797 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38798                                                  ; *eptr38798 = %UNw$y
  store i64 %cont36281, i64* %eptr38799                                              ; *eptr38799 = %cont36281
  store i64 %a36189, i64* %eptr38800                                                 ; *eptr38800 = %a36189
  store i64 %a36186, i64* %eptr38801                                                 ; *eptr38801 = %a36186
  %eptr38794 = getelementptr inbounds i64, i64* %cloptr38793, i64 0                  ; &cloptr38793[0]
  %f38802 = ptrtoint void(i64,i64,i64)* @lam37456 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38802, i64* %eptr38794                                                 ; store fptr
  %arg36871 = ptrtoint i64* %cloptr38793 to i64                                      ; closure cast; i64* -> i64
  %cloptr38803 = inttoptr i64 %tkz$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38803)                                        ; assert function application
  %i0ptr38804 = getelementptr inbounds i64, i64* %cloptr38803, i64 0                 ; &cloptr38803[0]
  %f38806 = load i64, i64* %i0ptr38804, align 8                                      ; load; *i0ptr38804
  %fptr38805 = inttoptr i64 %f38806 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38805(i64 %tkz$_37_62, i64 %arg36871, i64 %Psn$ly, i64 %ICC$lx); tail call
  ret void
}


define void @lam37456(i64 %env37457, i64 %_9536288, i64 %a36190) {
  %envptr38807 = inttoptr i64 %env37457 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38808 = getelementptr inbounds i64, i64* %envptr38807, i64 7                ; &envptr38807[7]
  %a36186 = load i64, i64* %envptr38808, align 8                                     ; load; *envptr38808
  %envptr38809 = inttoptr i64 %env37457 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38810 = getelementptr inbounds i64, i64* %envptr38809, i64 6                ; &envptr38809[6]
  %a36189 = load i64, i64* %envptr38810, align 8                                     ; load; *envptr38810
  %envptr38811 = inttoptr i64 %env37457 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38812 = getelementptr inbounds i64, i64* %envptr38811, i64 5                ; &envptr38811[5]
  %cont36281 = load i64, i64* %envptr38812, align 8                                  ; load; *envptr38812
  %envptr38813 = inttoptr i64 %env37457 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38814 = getelementptr inbounds i64, i64* %envptr38813, i64 4                ; &envptr38813[4]
  %UNw$y = load i64, i64* %envptr38814, align 8                                      ; load; *envptr38814
  %envptr38815 = inttoptr i64 %env37457 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38816 = getelementptr inbounds i64, i64* %envptr38815, i64 3                ; &envptr38815[3]
  %ICC$lx = load i64, i64* %envptr38816, align 8                                     ; load; *envptr38816
  %envptr38817 = inttoptr i64 %env37457 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38818 = getelementptr inbounds i64, i64* %envptr38817, i64 2                ; &envptr38817[2]
  %Psn$ly = load i64, i64* %envptr38818, align 8                                     ; load; *envptr38818
  %envptr38819 = inttoptr i64 %env37457 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38820 = getelementptr inbounds i64, i64* %envptr38819, i64 1                ; &envptr38819[1]
  %qFM$_37drop = load i64, i64* %envptr38820, align 8                                ; load; *envptr38820
  %cmp38821 = icmp eq i64 %a36190, 15                                                ; false?
  br i1 %cmp38821, label %else38823, label %then38822                                ; if

then38822:
  %a36191 = call i64 @prim__45(i64 %Psn$ly, i64 %ICC$lx)                             ; call prim__45
  %cloptr38824 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38826 = getelementptr inbounds i64, i64* %cloptr38824, i64 1                  ; &eptr38826[1]
  %eptr38827 = getelementptr inbounds i64, i64* %cloptr38824, i64 2                  ; &eptr38827[2]
  %eptr38828 = getelementptr inbounds i64, i64* %cloptr38824, i64 3                  ; &eptr38828[3]
  store i64 %cont36281, i64* %eptr38826                                              ; *eptr38826 = %cont36281
  store i64 %a36189, i64* %eptr38827                                                 ; *eptr38827 = %a36189
  store i64 %a36186, i64* %eptr38828                                                 ; *eptr38828 = %a36186
  %eptr38825 = getelementptr inbounds i64, i64* %cloptr38824, i64 0                  ; &cloptr38824[0]
  %f38829 = ptrtoint void(i64,i64,i64)* @lam37451 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38829, i64* %eptr38825                                                 ; store fptr
  %arg36877 = ptrtoint i64* %cloptr38824 to i64                                      ; closure cast; i64* -> i64
  %cloptr38830 = inttoptr i64 %qFM$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38830)                                        ; assert function application
  %i0ptr38831 = getelementptr inbounds i64, i64* %cloptr38830, i64 0                 ; &cloptr38830[0]
  %f38833 = load i64, i64* %i0ptr38831, align 8                                      ; load; *i0ptr38831
  %fptr38832 = inttoptr i64 %f38833 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38832(i64 %qFM$_37drop, i64 %arg36877, i64 %UNw$y, i64 %a36191); tail call
  ret void

else38823:
  %cloptr38834 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38836 = getelementptr inbounds i64, i64* %cloptr38834, i64 1                  ; &eptr38836[1]
  %eptr38837 = getelementptr inbounds i64, i64* %cloptr38834, i64 2                  ; &eptr38837[2]
  %eptr38838 = getelementptr inbounds i64, i64* %cloptr38834, i64 3                  ; &eptr38838[3]
  store i64 %cont36281, i64* %eptr38836                                              ; *eptr38836 = %cont36281
  store i64 %a36189, i64* %eptr38837                                                 ; *eptr38837 = %a36189
  store i64 %a36186, i64* %eptr38838                                                 ; *eptr38838 = %a36186
  %eptr38835 = getelementptr inbounds i64, i64* %cloptr38834, i64 0                  ; &cloptr38834[0]
  %f38839 = ptrtoint void(i64,i64,i64)* @lam37454 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38839, i64* %eptr38835                                                 ; store fptr
  %arg36885 = ptrtoint i64* %cloptr38834 to i64                                      ; closure cast; i64* -> i64
  %arg36884 = add i64 0, 0                                                           ; quoted ()
  %cloptr38840 = inttoptr i64 %arg36885 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38840)                                        ; assert function application
  %i0ptr38841 = getelementptr inbounds i64, i64* %cloptr38840, i64 0                 ; &cloptr38840[0]
  %f38843 = load i64, i64* %i0ptr38841, align 8                                      ; load; *i0ptr38841
  %fptr38842 = inttoptr i64 %f38843 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38842(i64 %arg36885, i64 %arg36884, i64 %UNw$y)     ; tail call
  ret void
}


define void @lam37454(i64 %env37455, i64 %_9536289, i64 %a36192) {
  %envptr38844 = inttoptr i64 %env37455 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38845 = getelementptr inbounds i64, i64* %envptr38844, i64 3                ; &envptr38844[3]
  %a36186 = load i64, i64* %envptr38845, align 8                                     ; load; *envptr38845
  %envptr38846 = inttoptr i64 %env37455 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38847 = getelementptr inbounds i64, i64* %envptr38846, i64 2                ; &envptr38846[2]
  %a36189 = load i64, i64* %envptr38847, align 8                                     ; load; *envptr38847
  %envptr38848 = inttoptr i64 %env37455 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38849 = getelementptr inbounds i64, i64* %envptr38848, i64 1                ; &envptr38848[1]
  %cont36281 = load i64, i64* %envptr38849, align 8                                  ; load; *envptr38849
  %cloptr38850 = inttoptr i64 %a36186 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38850)                                        ; assert function application
  %i0ptr38851 = getelementptr inbounds i64, i64* %cloptr38850, i64 0                 ; &cloptr38850[0]
  %f38853 = load i64, i64* %i0ptr38851, align 8                                      ; load; *i0ptr38851
  %fptr38852 = inttoptr i64 %f38853 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38852(i64 %a36186, i64 %cont36281, i64 %a36189, i64 %a36192); tail call
  ret void
}


define void @lam37451(i64 %env37452, i64 %_9536289, i64 %a36192) {
  %envptr38854 = inttoptr i64 %env37452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38855 = getelementptr inbounds i64, i64* %envptr38854, i64 3                ; &envptr38854[3]
  %a36186 = load i64, i64* %envptr38855, align 8                                     ; load; *envptr38855
  %envptr38856 = inttoptr i64 %env37452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38857 = getelementptr inbounds i64, i64* %envptr38856, i64 2                ; &envptr38856[2]
  %a36189 = load i64, i64* %envptr38857, align 8                                     ; load; *envptr38857
  %envptr38858 = inttoptr i64 %env37452 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38859 = getelementptr inbounds i64, i64* %envptr38858, i64 1                ; &envptr38858[1]
  %cont36281 = load i64, i64* %envptr38859, align 8                                  ; load; *envptr38859
  %cloptr38860 = inttoptr i64 %a36186 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38860)                                        ; assert function application
  %i0ptr38861 = getelementptr inbounds i64, i64* %cloptr38860, i64 0                 ; &cloptr38860[0]
  %f38863 = load i64, i64* %i0ptr38861, align 8                                      ; load; *i0ptr38861
  %fptr38862 = inttoptr i64 %f38863 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38862(i64 %a36186, i64 %cont36281, i64 %a36189, i64 %a36192); tail call
  ret void
}


define void @lam37448(i64 %env37449, i64 %_9536287, i64 %a36189) {
  %envptr38864 = inttoptr i64 %env37449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38865 = getelementptr inbounds i64, i64* %envptr38864, i64 7                ; &envptr38864[7]
  %tkz$_37_62 = load i64, i64* %envptr38865, align 8                                 ; load; *envptr38865
  %envptr38866 = inttoptr i64 %env37449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38867 = getelementptr inbounds i64, i64* %envptr38866, i64 6                ; &envptr38866[6]
  %a36186 = load i64, i64* %envptr38867, align 8                                     ; load; *envptr38867
  %envptr38868 = inttoptr i64 %env37449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38869 = getelementptr inbounds i64, i64* %envptr38868, i64 5                ; &envptr38868[5]
  %cont36281 = load i64, i64* %envptr38869, align 8                                  ; load; *envptr38869
  %envptr38870 = inttoptr i64 %env37449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38871 = getelementptr inbounds i64, i64* %envptr38870, i64 4                ; &envptr38870[4]
  %UNw$y = load i64, i64* %envptr38871, align 8                                      ; load; *envptr38871
  %envptr38872 = inttoptr i64 %env37449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38873 = getelementptr inbounds i64, i64* %envptr38872, i64 3                ; &envptr38872[3]
  %ICC$lx = load i64, i64* %envptr38873, align 8                                     ; load; *envptr38873
  %envptr38874 = inttoptr i64 %env37449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38875 = getelementptr inbounds i64, i64* %envptr38874, i64 2                ; &envptr38874[2]
  %Psn$ly = load i64, i64* %envptr38875, align 8                                     ; load; *envptr38875
  %envptr38876 = inttoptr i64 %env37449 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38877 = getelementptr inbounds i64, i64* %envptr38876, i64 1                ; &envptr38876[1]
  %qFM$_37drop = load i64, i64* %envptr38877, align 8                                ; load; *envptr38877
  %cloptr38878 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr38880 = getelementptr inbounds i64, i64* %cloptr38878, i64 1                  ; &eptr38880[1]
  %eptr38881 = getelementptr inbounds i64, i64* %cloptr38878, i64 2                  ; &eptr38881[2]
  %eptr38882 = getelementptr inbounds i64, i64* %cloptr38878, i64 3                  ; &eptr38882[3]
  %eptr38883 = getelementptr inbounds i64, i64* %cloptr38878, i64 4                  ; &eptr38883[4]
  %eptr38884 = getelementptr inbounds i64, i64* %cloptr38878, i64 5                  ; &eptr38884[5]
  %eptr38885 = getelementptr inbounds i64, i64* %cloptr38878, i64 6                  ; &eptr38885[6]
  %eptr38886 = getelementptr inbounds i64, i64* %cloptr38878, i64 7                  ; &eptr38886[7]
  store i64 %qFM$_37drop, i64* %eptr38880                                            ; *eptr38880 = %qFM$_37drop
  store i64 %Psn$ly, i64* %eptr38881                                                 ; *eptr38881 = %Psn$ly
  store i64 %ICC$lx, i64* %eptr38882                                                 ; *eptr38882 = %ICC$lx
  store i64 %UNw$y, i64* %eptr38883                                                  ; *eptr38883 = %UNw$y
  store i64 %cont36281, i64* %eptr38884                                              ; *eptr38884 = %cont36281
  store i64 %a36189, i64* %eptr38885                                                 ; *eptr38885 = %a36189
  store i64 %a36186, i64* %eptr38886                                                 ; *eptr38886 = %a36186
  %eptr38879 = getelementptr inbounds i64, i64* %cloptr38878, i64 0                  ; &cloptr38878[0]
  %f38887 = ptrtoint void(i64,i64,i64)* @lam37446 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38887, i64* %eptr38879                                                 ; store fptr
  %arg36847 = ptrtoint i64* %cloptr38878 to i64                                      ; closure cast; i64* -> i64
  %cloptr38888 = inttoptr i64 %tkz$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38888)                                        ; assert function application
  %i0ptr38889 = getelementptr inbounds i64, i64* %cloptr38888, i64 0                 ; &cloptr38888[0]
  %f38891 = load i64, i64* %i0ptr38889, align 8                                      ; load; *i0ptr38889
  %fptr38890 = inttoptr i64 %f38891 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38890(i64 %tkz$_37_62, i64 %arg36847, i64 %Psn$ly, i64 %ICC$lx); tail call
  ret void
}


define void @lam37446(i64 %env37447, i64 %_9536288, i64 %a36190) {
  %envptr38892 = inttoptr i64 %env37447 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38893 = getelementptr inbounds i64, i64* %envptr38892, i64 7                ; &envptr38892[7]
  %a36186 = load i64, i64* %envptr38893, align 8                                     ; load; *envptr38893
  %envptr38894 = inttoptr i64 %env37447 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38895 = getelementptr inbounds i64, i64* %envptr38894, i64 6                ; &envptr38894[6]
  %a36189 = load i64, i64* %envptr38895, align 8                                     ; load; *envptr38895
  %envptr38896 = inttoptr i64 %env37447 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38897 = getelementptr inbounds i64, i64* %envptr38896, i64 5                ; &envptr38896[5]
  %cont36281 = load i64, i64* %envptr38897, align 8                                  ; load; *envptr38897
  %envptr38898 = inttoptr i64 %env37447 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38899 = getelementptr inbounds i64, i64* %envptr38898, i64 4                ; &envptr38898[4]
  %UNw$y = load i64, i64* %envptr38899, align 8                                      ; load; *envptr38899
  %envptr38900 = inttoptr i64 %env37447 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38901 = getelementptr inbounds i64, i64* %envptr38900, i64 3                ; &envptr38900[3]
  %ICC$lx = load i64, i64* %envptr38901, align 8                                     ; load; *envptr38901
  %envptr38902 = inttoptr i64 %env37447 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38903 = getelementptr inbounds i64, i64* %envptr38902, i64 2                ; &envptr38902[2]
  %Psn$ly = load i64, i64* %envptr38903, align 8                                     ; load; *envptr38903
  %envptr38904 = inttoptr i64 %env37447 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38905 = getelementptr inbounds i64, i64* %envptr38904, i64 1                ; &envptr38904[1]
  %qFM$_37drop = load i64, i64* %envptr38905, align 8                                ; load; *envptr38905
  %cmp38906 = icmp eq i64 %a36190, 15                                                ; false?
  br i1 %cmp38906, label %else38908, label %then38907                                ; if

then38907:
  %a36191 = call i64 @prim__45(i64 %Psn$ly, i64 %ICC$lx)                             ; call prim__45
  %cloptr38909 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38911 = getelementptr inbounds i64, i64* %cloptr38909, i64 1                  ; &eptr38911[1]
  %eptr38912 = getelementptr inbounds i64, i64* %cloptr38909, i64 2                  ; &eptr38912[2]
  %eptr38913 = getelementptr inbounds i64, i64* %cloptr38909, i64 3                  ; &eptr38913[3]
  store i64 %cont36281, i64* %eptr38911                                              ; *eptr38911 = %cont36281
  store i64 %a36189, i64* %eptr38912                                                 ; *eptr38912 = %a36189
  store i64 %a36186, i64* %eptr38913                                                 ; *eptr38913 = %a36186
  %eptr38910 = getelementptr inbounds i64, i64* %cloptr38909, i64 0                  ; &cloptr38909[0]
  %f38914 = ptrtoint void(i64,i64,i64)* @lam37441 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38914, i64* %eptr38910                                                 ; store fptr
  %arg36853 = ptrtoint i64* %cloptr38909 to i64                                      ; closure cast; i64* -> i64
  %cloptr38915 = inttoptr i64 %qFM$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38915)                                        ; assert function application
  %i0ptr38916 = getelementptr inbounds i64, i64* %cloptr38915, i64 0                 ; &cloptr38915[0]
  %f38918 = load i64, i64* %i0ptr38916, align 8                                      ; load; *i0ptr38916
  %fptr38917 = inttoptr i64 %f38918 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38917(i64 %qFM$_37drop, i64 %arg36853, i64 %UNw$y, i64 %a36191); tail call
  ret void

else38908:
  %cloptr38919 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38921 = getelementptr inbounds i64, i64* %cloptr38919, i64 1                  ; &eptr38921[1]
  %eptr38922 = getelementptr inbounds i64, i64* %cloptr38919, i64 2                  ; &eptr38922[2]
  %eptr38923 = getelementptr inbounds i64, i64* %cloptr38919, i64 3                  ; &eptr38923[3]
  store i64 %cont36281, i64* %eptr38921                                              ; *eptr38921 = %cont36281
  store i64 %a36189, i64* %eptr38922                                                 ; *eptr38922 = %a36189
  store i64 %a36186, i64* %eptr38923                                                 ; *eptr38923 = %a36186
  %eptr38920 = getelementptr inbounds i64, i64* %cloptr38919, i64 0                  ; &cloptr38919[0]
  %f38924 = ptrtoint void(i64,i64,i64)* @lam37444 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38924, i64* %eptr38920                                                 ; store fptr
  %arg36861 = ptrtoint i64* %cloptr38919 to i64                                      ; closure cast; i64* -> i64
  %arg36860 = add i64 0, 0                                                           ; quoted ()
  %cloptr38925 = inttoptr i64 %arg36861 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38925)                                        ; assert function application
  %i0ptr38926 = getelementptr inbounds i64, i64* %cloptr38925, i64 0                 ; &cloptr38925[0]
  %f38928 = load i64, i64* %i0ptr38926, align 8                                      ; load; *i0ptr38926
  %fptr38927 = inttoptr i64 %f38928 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38927(i64 %arg36861, i64 %arg36860, i64 %UNw$y)     ; tail call
  ret void
}


define void @lam37444(i64 %env37445, i64 %_9536289, i64 %a36192) {
  %envptr38929 = inttoptr i64 %env37445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38930 = getelementptr inbounds i64, i64* %envptr38929, i64 3                ; &envptr38929[3]
  %a36186 = load i64, i64* %envptr38930, align 8                                     ; load; *envptr38930
  %envptr38931 = inttoptr i64 %env37445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38932 = getelementptr inbounds i64, i64* %envptr38931, i64 2                ; &envptr38931[2]
  %a36189 = load i64, i64* %envptr38932, align 8                                     ; load; *envptr38932
  %envptr38933 = inttoptr i64 %env37445 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38934 = getelementptr inbounds i64, i64* %envptr38933, i64 1                ; &envptr38933[1]
  %cont36281 = load i64, i64* %envptr38934, align 8                                  ; load; *envptr38934
  %cloptr38935 = inttoptr i64 %a36186 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38935)                                        ; assert function application
  %i0ptr38936 = getelementptr inbounds i64, i64* %cloptr38935, i64 0                 ; &cloptr38935[0]
  %f38938 = load i64, i64* %i0ptr38936, align 8                                      ; load; *i0ptr38936
  %fptr38937 = inttoptr i64 %f38938 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38937(i64 %a36186, i64 %cont36281, i64 %a36189, i64 %a36192); tail call
  ret void
}


define void @lam37441(i64 %env37442, i64 %_9536289, i64 %a36192) {
  %envptr38939 = inttoptr i64 %env37442 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38940 = getelementptr inbounds i64, i64* %envptr38939, i64 3                ; &envptr38939[3]
  %a36186 = load i64, i64* %envptr38940, align 8                                     ; load; *envptr38940
  %envptr38941 = inttoptr i64 %env37442 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38942 = getelementptr inbounds i64, i64* %envptr38941, i64 2                ; &envptr38941[2]
  %a36189 = load i64, i64* %envptr38942, align 8                                     ; load; *envptr38942
  %envptr38943 = inttoptr i64 %env37442 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38944 = getelementptr inbounds i64, i64* %envptr38943, i64 1                ; &envptr38943[1]
  %cont36281 = load i64, i64* %envptr38944, align 8                                  ; load; *envptr38944
  %cloptr38945 = inttoptr i64 %a36186 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38945)                                        ; assert function application
  %i0ptr38946 = getelementptr inbounds i64, i64* %cloptr38945, i64 0                 ; &cloptr38945[0]
  %f38948 = load i64, i64* %i0ptr38946, align 8                                      ; load; *i0ptr38946
  %fptr38947 = inttoptr i64 %f38948 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38947(i64 %a36186, i64 %cont36281, i64 %a36189, i64 %a36192); tail call
  ret void
}


define void @lam37438(i64 %env37439, i64 %cont36294, i64 %FgB$new) {
  %envptr38949 = inttoptr i64 %env37439 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38950 = getelementptr inbounds i64, i64* %envptr38949, i64 2                ; &envptr38949[2]
  %VvJ$_37wind_45stack = load i64, i64* %envptr38950, align 8                        ; load; *envptr38950
  %envptr38951 = inttoptr i64 %env37439 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38952 = getelementptr inbounds i64, i64* %envptr38951, i64 1                ; &envptr38951[1]
  %doi$_37common_45tail = load i64, i64* %envptr38952, align 8                       ; load; *envptr38952
  %arg36890 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36193 = call i64 @prim_vector_45ref(i64 %VvJ$_37wind_45stack, i64 %arg36890)     ; call prim_vector_45ref
  %cloptr38953 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr38955 = getelementptr inbounds i64, i64* %cloptr38953, i64 1                  ; &eptr38955[1]
  %eptr38956 = getelementptr inbounds i64, i64* %cloptr38953, i64 2                  ; &eptr38956[2]
  %eptr38957 = getelementptr inbounds i64, i64* %cloptr38953, i64 3                  ; &eptr38957[3]
  store i64 %cont36294, i64* %eptr38955                                              ; *eptr38955 = %cont36294
  store i64 %FgB$new, i64* %eptr38956                                                ; *eptr38956 = %FgB$new
  store i64 %VvJ$_37wind_45stack, i64* %eptr38957                                    ; *eptr38957 = %VvJ$_37wind_45stack
  %eptr38954 = getelementptr inbounds i64, i64* %cloptr38953, i64 0                  ; &cloptr38953[0]
  %f38958 = ptrtoint void(i64,i64,i64)* @lam37435 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38958, i64* %eptr38954                                                 ; store fptr
  %arg36894 = ptrtoint i64* %cloptr38953 to i64                                      ; closure cast; i64* -> i64
  %cloptr38959 = inttoptr i64 %doi$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38959)                                        ; assert function application
  %i0ptr38960 = getelementptr inbounds i64, i64* %cloptr38959, i64 0                 ; &cloptr38959[0]
  %f38962 = load i64, i64* %i0ptr38960, align 8                                      ; load; *i0ptr38960
  %fptr38961 = inttoptr i64 %f38962 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38961(i64 %doi$_37common_45tail, i64 %arg36894, i64 %FgB$new, i64 %a36193); tail call
  ret void
}


define void @lam37435(i64 %env37436, i64 %_9536295, i64 %sHn$tail) {
  %envptr38963 = inttoptr i64 %env37436 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38964 = getelementptr inbounds i64, i64* %envptr38963, i64 3                ; &envptr38963[3]
  %VvJ$_37wind_45stack = load i64, i64* %envptr38964, align 8                        ; load; *envptr38964
  %envptr38965 = inttoptr i64 %env37436 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38966 = getelementptr inbounds i64, i64* %envptr38965, i64 2                ; &envptr38965[2]
  %FgB$new = load i64, i64* %envptr38966, align 8                                    ; load; *envptr38966
  %envptr38967 = inttoptr i64 %env37436 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38968 = getelementptr inbounds i64, i64* %envptr38967, i64 1                ; &envptr38967[1]
  %cont36294 = load i64, i64* %envptr38968, align 8                                  ; load; *envptr38968
  %cloptr38969 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr38970 = getelementptr inbounds i64, i64* %cloptr38969, i64 0                  ; &cloptr38969[0]
  %f38971 = ptrtoint void(i64,i64)* @lam37433 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f38971, i64* %eptr38970                                                 ; store fptr
  %arg36897 = ptrtoint i64* %cloptr38969 to i64                                      ; closure cast; i64* -> i64
  %cloptr38972 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr38974 = getelementptr inbounds i64, i64* %cloptr38972, i64 1                  ; &eptr38974[1]
  %eptr38975 = getelementptr inbounds i64, i64* %cloptr38972, i64 2                  ; &eptr38975[2]
  %eptr38976 = getelementptr inbounds i64, i64* %cloptr38972, i64 3                  ; &eptr38976[3]
  %eptr38977 = getelementptr inbounds i64, i64* %cloptr38972, i64 4                  ; &eptr38977[4]
  store i64 %cont36294, i64* %eptr38974                                              ; *eptr38974 = %cont36294
  store i64 %sHn$tail, i64* %eptr38975                                               ; *eptr38975 = %sHn$tail
  store i64 %FgB$new, i64* %eptr38976                                                ; *eptr38976 = %FgB$new
  store i64 %VvJ$_37wind_45stack, i64* %eptr38977                                    ; *eptr38977 = %VvJ$_37wind_45stack
  %eptr38973 = getelementptr inbounds i64, i64* %cloptr38972, i64 0                  ; &cloptr38972[0]
  %f38978 = ptrtoint void(i64,i64,i64)* @lam37430 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f38978, i64* %eptr38973                                                 ; store fptr
  %arg36896 = ptrtoint i64* %cloptr38972 to i64                                      ; closure cast; i64* -> i64
  %cloptr38979 = inttoptr i64 %arg36897 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38979)                                        ; assert function application
  %i0ptr38980 = getelementptr inbounds i64, i64* %cloptr38979, i64 0                 ; &cloptr38979[0]
  %f38982 = load i64, i64* %i0ptr38980, align 8                                      ; load; *i0ptr38980
  %fptr38981 = inttoptr i64 %f38982 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38981(i64 %arg36897, i64 %arg36896)                 ; tail call
  ret void
}


define void @lam37433(i64 %env37434, i64 %dMw$lst36316) {
  %cont36315 = call i64 @prim_car(i64 %dMw$lst36316)                                 ; call prim_car
  %dMw$lst = call i64 @prim_cdr(i64 %dMw$lst36316)                                   ; call prim_cdr
  %arg36901 = add i64 0, 0                                                           ; quoted ()
  %cloptr38983 = inttoptr i64 %cont36315 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr38983)                                        ; assert function application
  %i0ptr38984 = getelementptr inbounds i64, i64* %cloptr38983, i64 0                 ; &cloptr38983[0]
  %f38986 = load i64, i64* %i0ptr38984, align 8                                      ; load; *i0ptr38984
  %fptr38985 = inttoptr i64 %f38986 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr38985(i64 %cont36315, i64 %arg36901, i64 %dMw$lst)  ; tail call
  ret void
}


define void @lam37430(i64 %env37431, i64 %_9536313, i64 %a36194) {
  %envptr38987 = inttoptr i64 %env37431 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38988 = getelementptr inbounds i64, i64* %envptr38987, i64 4                ; &envptr38987[4]
  %VvJ$_37wind_45stack = load i64, i64* %envptr38988, align 8                        ; load; *envptr38988
  %envptr38989 = inttoptr i64 %env37431 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38990 = getelementptr inbounds i64, i64* %envptr38989, i64 3                ; &envptr38989[3]
  %FgB$new = load i64, i64* %envptr38990, align 8                                    ; load; *envptr38990
  %envptr38991 = inttoptr i64 %env37431 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38992 = getelementptr inbounds i64, i64* %envptr38991, i64 2                ; &envptr38991[2]
  %sHn$tail = load i64, i64* %envptr38992, align 8                                   ; load; *envptr38992
  %envptr38993 = inttoptr i64 %env37431 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr38994 = getelementptr inbounds i64, i64* %envptr38993, i64 1                ; &envptr38993[1]
  %cont36294 = load i64, i64* %envptr38994, align 8                                  ; load; *envptr38994
  %arg36904 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim36314 = call i64 @prim_make_45vector(i64 %arg36904, i64 %a36194)           ; call prim_make_45vector
  %cloptr38995 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr38997 = getelementptr inbounds i64, i64* %cloptr38995, i64 1                  ; &eptr38997[1]
  %eptr38998 = getelementptr inbounds i64, i64* %cloptr38995, i64 2                  ; &eptr38998[2]
  %eptr38999 = getelementptr inbounds i64, i64* %cloptr38995, i64 3                  ; &eptr38999[3]
  %eptr39000 = getelementptr inbounds i64, i64* %cloptr38995, i64 4                  ; &eptr39000[4]
  store i64 %cont36294, i64* %eptr38997                                              ; *eptr38997 = %cont36294
  store i64 %sHn$tail, i64* %eptr38998                                               ; *eptr38998 = %sHn$tail
  store i64 %FgB$new, i64* %eptr38999                                                ; *eptr38999 = %FgB$new
  store i64 %VvJ$_37wind_45stack, i64* %eptr39000                                    ; *eptr39000 = %VvJ$_37wind_45stack
  %eptr38996 = getelementptr inbounds i64, i64* %cloptr38995, i64 0                  ; &cloptr38995[0]
  %f39001 = ptrtoint void(i64,i64,i64)* @lam37427 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39001, i64* %eptr38996                                                 ; store fptr
  %arg36907 = ptrtoint i64* %cloptr38995 to i64                                      ; closure cast; i64* -> i64
  %arg36906 = add i64 0, 0                                                           ; quoted ()
  %cloptr39002 = inttoptr i64 %arg36907 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39002)                                        ; assert function application
  %i0ptr39003 = getelementptr inbounds i64, i64* %cloptr39002, i64 0                 ; &cloptr39002[0]
  %f39005 = load i64, i64* %i0ptr39003, align 8                                      ; load; *i0ptr39003
  %fptr39004 = inttoptr i64 %f39005 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39004(i64 %arg36907, i64 %arg36906, i64 %retprim36314); tail call
  ret void
}


define void @lam37427(i64 %env37428, i64 %_9536307, i64 %l8K$f) {
  %envptr39006 = inttoptr i64 %env37428 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39007 = getelementptr inbounds i64, i64* %envptr39006, i64 4                ; &envptr39006[4]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39007, align 8                        ; load; *envptr39007
  %envptr39008 = inttoptr i64 %env37428 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39009 = getelementptr inbounds i64, i64* %envptr39008, i64 3                ; &envptr39008[3]
  %FgB$new = load i64, i64* %envptr39009, align 8                                    ; load; *envptr39009
  %envptr39010 = inttoptr i64 %env37428 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39011 = getelementptr inbounds i64, i64* %envptr39010, i64 2                ; &envptr39010[2]
  %sHn$tail = load i64, i64* %envptr39011, align 8                                   ; load; *envptr39011
  %envptr39012 = inttoptr i64 %env37428 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39013 = getelementptr inbounds i64, i64* %envptr39012, i64 1                ; &envptr39012[1]
  %cont36294 = load i64, i64* %envptr39013, align 8                                  ; load; *envptr39013
  %arg36909 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr39014 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39016 = getelementptr inbounds i64, i64* %cloptr39014, i64 1                  ; &eptr39016[1]
  %eptr39017 = getelementptr inbounds i64, i64* %cloptr39014, i64 2                  ; &eptr39017[2]
  %eptr39018 = getelementptr inbounds i64, i64* %cloptr39014, i64 3                  ; &eptr39018[3]
  store i64 %sHn$tail, i64* %eptr39016                                               ; *eptr39016 = %sHn$tail
  store i64 %l8K$f, i64* %eptr39017                                                  ; *eptr39017 = %l8K$f
  store i64 %VvJ$_37wind_45stack, i64* %eptr39018                                    ; *eptr39018 = %VvJ$_37wind_45stack
  %eptr39015 = getelementptr inbounds i64, i64* %cloptr39014, i64 0                  ; &cloptr39014[0]
  %f39019 = ptrtoint void(i64,i64,i64)* @lam37424 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39019, i64* %eptr39015                                                 ; store fptr
  %arg36908 = ptrtoint i64* %cloptr39014 to i64                                      ; closure cast; i64* -> i64
  %EKf$_9536087 = call i64 @prim_vector_45set_33(i64 %l8K$f, i64 %arg36909, i64 %arg36908); call prim_vector_45set_33
  %arg36934 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36202 = call i64 @prim_vector_45ref(i64 %l8K$f, i64 %arg36934)                   ; call prim_vector_45ref
  %arg36936 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36203 = call i64 @prim_vector_45ref(i64 %VvJ$_37wind_45stack, i64 %arg36936)     ; call prim_vector_45ref
  %cloptr39020 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39022 = getelementptr inbounds i64, i64* %cloptr39020, i64 1                  ; &eptr39022[1]
  %eptr39023 = getelementptr inbounds i64, i64* %cloptr39020, i64 2                  ; &eptr39023[2]
  %eptr39024 = getelementptr inbounds i64, i64* %cloptr39020, i64 3                  ; &eptr39024[3]
  %eptr39025 = getelementptr inbounds i64, i64* %cloptr39020, i64 4                  ; &eptr39025[4]
  store i64 %cont36294, i64* %eptr39022                                              ; *eptr39022 = %cont36294
  store i64 %sHn$tail, i64* %eptr39023                                               ; *eptr39023 = %sHn$tail
  store i64 %FgB$new, i64* %eptr39024                                                ; *eptr39024 = %FgB$new
  store i64 %VvJ$_37wind_45stack, i64* %eptr39025                                    ; *eptr39025 = %VvJ$_37wind_45stack
  %eptr39021 = getelementptr inbounds i64, i64* %cloptr39020, i64 0                  ; &cloptr39020[0]
  %f39026 = ptrtoint void(i64,i64,i64)* @lam37412 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39026, i64* %eptr39021                                                 ; store fptr
  %arg36939 = ptrtoint i64* %cloptr39020 to i64                                      ; closure cast; i64* -> i64
  %cloptr39027 = inttoptr i64 %a36202 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39027)                                        ; assert function application
  %i0ptr39028 = getelementptr inbounds i64, i64* %cloptr39027, i64 0                 ; &cloptr39027[0]
  %f39030 = load i64, i64* %i0ptr39028, align 8                                      ; load; *i0ptr39028
  %fptr39029 = inttoptr i64 %f39030 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39029(i64 %a36202, i64 %arg36939, i64 %a36203)      ; tail call
  ret void
}


define void @lam37424(i64 %env37425, i64 %cont36308, i64 %ivK$l) {
  %envptr39031 = inttoptr i64 %env37425 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39032 = getelementptr inbounds i64, i64* %envptr39031, i64 3                ; &envptr39031[3]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39032, align 8                        ; load; *envptr39032
  %envptr39033 = inttoptr i64 %env37425 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39034 = getelementptr inbounds i64, i64* %envptr39033, i64 2                ; &envptr39033[2]
  %l8K$f = load i64, i64* %envptr39034, align 8                                      ; load; *envptr39034
  %envptr39035 = inttoptr i64 %env37425 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39036 = getelementptr inbounds i64, i64* %envptr39035, i64 1                ; &envptr39035[1]
  %sHn$tail = load i64, i64* %envptr39036, align 8                                   ; load; *envptr39036
  %a36195 = call i64 @prim_eq_63(i64 %ivK$l, i64 %sHn$tail)                          ; call prim_eq_63
  %a36196 = call i64 @prim_not(i64 %a36195)                                          ; call prim_not
  %cmp39037 = icmp eq i64 %a36196, 15                                                ; false?
  br i1 %cmp39037, label %else39039, label %then39038                                ; if

then39038:
  %a36197 = call i64 @prim_cdr(i64 %ivK$l)                                           ; call prim_cdr
  %arg36916 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36311 = call i64 @prim_vector_45set_33(i64 %VvJ$_37wind_45stack, i64 %arg36916, i64 %a36197); call prim_vector_45set_33
  %cloptr39040 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39042 = getelementptr inbounds i64, i64* %cloptr39040, i64 1                  ; &eptr39042[1]
  %eptr39043 = getelementptr inbounds i64, i64* %cloptr39040, i64 2                  ; &eptr39043[2]
  %eptr39044 = getelementptr inbounds i64, i64* %cloptr39040, i64 3                  ; &eptr39044[3]
  store i64 %l8K$f, i64* %eptr39042                                                  ; *eptr39042 = %l8K$f
  store i64 %ivK$l, i64* %eptr39043                                                  ; *eptr39043 = %ivK$l
  store i64 %cont36308, i64* %eptr39044                                              ; *eptr39044 = %cont36308
  %eptr39041 = getelementptr inbounds i64, i64* %cloptr39040, i64 0                  ; &cloptr39040[0]
  %f39045 = ptrtoint void(i64,i64,i64)* @lam37420 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39045, i64* %eptr39041                                                 ; store fptr
  %arg36920 = ptrtoint i64* %cloptr39040 to i64                                      ; closure cast; i64* -> i64
  %arg36919 = add i64 0, 0                                                           ; quoted ()
  %cloptr39046 = inttoptr i64 %arg36920 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39046)                                        ; assert function application
  %i0ptr39047 = getelementptr inbounds i64, i64* %cloptr39046, i64 0                 ; &cloptr39046[0]
  %f39049 = load i64, i64* %i0ptr39047, align 8                                      ; load; *i0ptr39047
  %fptr39048 = inttoptr i64 %f39049 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39048(i64 %arg36920, i64 %arg36919, i64 %retprim36311); tail call
  ret void

else39039:
  %retprim36312 = call i64 @prim_void()                                              ; call prim_void
  %arg36932 = add i64 0, 0                                                           ; quoted ()
  %cloptr39050 = inttoptr i64 %cont36308 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39050)                                        ; assert function application
  %i0ptr39051 = getelementptr inbounds i64, i64* %cloptr39050, i64 0                 ; &cloptr39050[0]
  %f39053 = load i64, i64* %i0ptr39051, align 8                                      ; load; *i0ptr39051
  %fptr39052 = inttoptr i64 %f39053 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39052(i64 %cont36308, i64 %arg36932, i64 %retprim36312); tail call
  ret void
}


define void @lam37420(i64 %env37421, i64 %_9536309, i64 %vI8$_9536088) {
  %envptr39054 = inttoptr i64 %env37421 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39055 = getelementptr inbounds i64, i64* %envptr39054, i64 3                ; &envptr39054[3]
  %cont36308 = load i64, i64* %envptr39055, align 8                                  ; load; *envptr39055
  %envptr39056 = inttoptr i64 %env37421 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39057 = getelementptr inbounds i64, i64* %envptr39056, i64 2                ; &envptr39056[2]
  %ivK$l = load i64, i64* %envptr39057, align 8                                      ; load; *envptr39057
  %envptr39058 = inttoptr i64 %env37421 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39059 = getelementptr inbounds i64, i64* %envptr39058, i64 1                ; &envptr39058[1]
  %l8K$f = load i64, i64* %envptr39059, align 8                                      ; load; *envptr39059
  %a36198 = call i64 @prim_car(i64 %ivK$l)                                           ; call prim_car
  %a36199 = call i64 @prim_cdr(i64 %a36198)                                          ; call prim_cdr
  %cloptr39060 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39062 = getelementptr inbounds i64, i64* %cloptr39060, i64 1                  ; &eptr39062[1]
  %eptr39063 = getelementptr inbounds i64, i64* %cloptr39060, i64 2                  ; &eptr39063[2]
  %eptr39064 = getelementptr inbounds i64, i64* %cloptr39060, i64 3                  ; &eptr39064[3]
  store i64 %l8K$f, i64* %eptr39062                                                  ; *eptr39062 = %l8K$f
  store i64 %ivK$l, i64* %eptr39063                                                  ; *eptr39063 = %ivK$l
  store i64 %cont36308, i64* %eptr39064                                              ; *eptr39064 = %cont36308
  %eptr39061 = getelementptr inbounds i64, i64* %cloptr39060, i64 0                  ; &cloptr39060[0]
  %f39065 = ptrtoint void(i64,i64,i64)* @lam37418 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39065, i64* %eptr39061                                                 ; store fptr
  %arg36923 = ptrtoint i64* %cloptr39060 to i64                                      ; closure cast; i64* -> i64
  %cloptr39066 = inttoptr i64 %a36199 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39066)                                        ; assert function application
  %i0ptr39067 = getelementptr inbounds i64, i64* %cloptr39066, i64 0                 ; &cloptr39066[0]
  %f39069 = load i64, i64* %i0ptr39067, align 8                                      ; load; *i0ptr39067
  %fptr39068 = inttoptr i64 %f39069 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39068(i64 %a36199, i64 %arg36923)                   ; tail call
  ret void
}


define void @lam37418(i64 %env37419, i64 %_9536310, i64 %Dj5$_9536089) {
  %envptr39070 = inttoptr i64 %env37419 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39071 = getelementptr inbounds i64, i64* %envptr39070, i64 3                ; &envptr39070[3]
  %cont36308 = load i64, i64* %envptr39071, align 8                                  ; load; *envptr39071
  %envptr39072 = inttoptr i64 %env37419 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39073 = getelementptr inbounds i64, i64* %envptr39072, i64 2                ; &envptr39072[2]
  %ivK$l = load i64, i64* %envptr39073, align 8                                      ; load; *envptr39073
  %envptr39074 = inttoptr i64 %env37419 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39075 = getelementptr inbounds i64, i64* %envptr39074, i64 1                ; &envptr39074[1]
  %l8K$f = load i64, i64* %envptr39075, align 8                                      ; load; *envptr39075
  %arg36925 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36200 = call i64 @prim_vector_45ref(i64 %l8K$f, i64 %arg36925)                   ; call prim_vector_45ref
  %a36201 = call i64 @prim_cdr(i64 %ivK$l)                                           ; call prim_cdr
  %cloptr39076 = inttoptr i64 %a36200 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39076)                                        ; assert function application
  %i0ptr39077 = getelementptr inbounds i64, i64* %cloptr39076, i64 0                 ; &cloptr39076[0]
  %f39079 = load i64, i64* %i0ptr39077, align 8                                      ; load; *i0ptr39077
  %fptr39078 = inttoptr i64 %f39079 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39078(i64 %a36200, i64 %cont36308, i64 %a36201)     ; tail call
  ret void
}


define void @lam37412(i64 %env37413, i64 %_9536296, i64 %H4g$_9536086) {
  %envptr39080 = inttoptr i64 %env37413 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39081 = getelementptr inbounds i64, i64* %envptr39080, i64 4                ; &envptr39080[4]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39081, align 8                        ; load; *envptr39081
  %envptr39082 = inttoptr i64 %env37413 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39083 = getelementptr inbounds i64, i64* %envptr39082, i64 3                ; &envptr39082[3]
  %FgB$new = load i64, i64* %envptr39083, align 8                                    ; load; *envptr39083
  %envptr39084 = inttoptr i64 %env37413 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39085 = getelementptr inbounds i64, i64* %envptr39084, i64 2                ; &envptr39084[2]
  %sHn$tail = load i64, i64* %envptr39085, align 8                                   ; load; *envptr39085
  %envptr39086 = inttoptr i64 %env37413 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39087 = getelementptr inbounds i64, i64* %envptr39086, i64 1                ; &envptr39086[1]
  %cont36294 = load i64, i64* %envptr39087, align 8                                  ; load; *envptr39087
  %cloptr39088 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39089 = getelementptr inbounds i64, i64* %cloptr39088, i64 0                  ; &cloptr39088[0]
  %f39090 = ptrtoint void(i64,i64)* @lam37410 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f39090, i64* %eptr39089                                                 ; store fptr
  %arg36942 = ptrtoint i64* %cloptr39088 to i64                                      ; closure cast; i64* -> i64
  %cloptr39091 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39093 = getelementptr inbounds i64, i64* %cloptr39091, i64 1                  ; &eptr39093[1]
  %eptr39094 = getelementptr inbounds i64, i64* %cloptr39091, i64 2                  ; &eptr39094[2]
  %eptr39095 = getelementptr inbounds i64, i64* %cloptr39091, i64 3                  ; &eptr39095[3]
  %eptr39096 = getelementptr inbounds i64, i64* %cloptr39091, i64 4                  ; &eptr39096[4]
  store i64 %cont36294, i64* %eptr39093                                              ; *eptr39093 = %cont36294
  store i64 %sHn$tail, i64* %eptr39094                                               ; *eptr39094 = %sHn$tail
  store i64 %FgB$new, i64* %eptr39095                                                ; *eptr39095 = %FgB$new
  store i64 %VvJ$_37wind_45stack, i64* %eptr39096                                    ; *eptr39096 = %VvJ$_37wind_45stack
  %eptr39092 = getelementptr inbounds i64, i64* %cloptr39091, i64 0                  ; &cloptr39091[0]
  %f39097 = ptrtoint void(i64,i64,i64)* @lam37407 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39097, i64* %eptr39092                                                 ; store fptr
  %arg36941 = ptrtoint i64* %cloptr39091 to i64                                      ; closure cast; i64* -> i64
  %cloptr39098 = inttoptr i64 %arg36942 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39098)                                        ; assert function application
  %i0ptr39099 = getelementptr inbounds i64, i64* %cloptr39098, i64 0                 ; &cloptr39098[0]
  %f39101 = load i64, i64* %i0ptr39099, align 8                                      ; load; *i0ptr39099
  %fptr39100 = inttoptr i64 %f39101 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39100(i64 %arg36942, i64 %arg36941)                 ; tail call
  ret void
}


define void @lam37410(i64 %env37411, i64 %aaC$lst36306) {
  %cont36305 = call i64 @prim_car(i64 %aaC$lst36306)                                 ; call prim_car
  %aaC$lst = call i64 @prim_cdr(i64 %aaC$lst36306)                                   ; call prim_cdr
  %arg36946 = add i64 0, 0                                                           ; quoted ()
  %cloptr39102 = inttoptr i64 %cont36305 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39102)                                        ; assert function application
  %i0ptr39103 = getelementptr inbounds i64, i64* %cloptr39102, i64 0                 ; &cloptr39102[0]
  %f39105 = load i64, i64* %i0ptr39103, align 8                                      ; load; *i0ptr39103
  %fptr39104 = inttoptr i64 %f39105 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39104(i64 %cont36305, i64 %arg36946, i64 %aaC$lst)  ; tail call
  ret void
}


define void @lam37407(i64 %env37408, i64 %_9536303, i64 %a36204) {
  %envptr39106 = inttoptr i64 %env37408 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39107 = getelementptr inbounds i64, i64* %envptr39106, i64 4                ; &envptr39106[4]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39107, align 8                        ; load; *envptr39107
  %envptr39108 = inttoptr i64 %env37408 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39109 = getelementptr inbounds i64, i64* %envptr39108, i64 3                ; &envptr39108[3]
  %FgB$new = load i64, i64* %envptr39109, align 8                                    ; load; *envptr39109
  %envptr39110 = inttoptr i64 %env37408 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39111 = getelementptr inbounds i64, i64* %envptr39110, i64 2                ; &envptr39110[2]
  %sHn$tail = load i64, i64* %envptr39111, align 8                                   ; load; *envptr39111
  %envptr39112 = inttoptr i64 %env37408 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39113 = getelementptr inbounds i64, i64* %envptr39112, i64 1                ; &envptr39112[1]
  %cont36294 = load i64, i64* %envptr39113, align 8                                  ; load; *envptr39113
  %arg36949 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim36304 = call i64 @prim_make_45vector(i64 %arg36949, i64 %a36204)           ; call prim_make_45vector
  %cloptr39114 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39116 = getelementptr inbounds i64, i64* %cloptr39114, i64 1                  ; &eptr39116[1]
  %eptr39117 = getelementptr inbounds i64, i64* %cloptr39114, i64 2                  ; &eptr39117[2]
  %eptr39118 = getelementptr inbounds i64, i64* %cloptr39114, i64 3                  ; &eptr39118[3]
  %eptr39119 = getelementptr inbounds i64, i64* %cloptr39114, i64 4                  ; &eptr39119[4]
  store i64 %cont36294, i64* %eptr39116                                              ; *eptr39116 = %cont36294
  store i64 %sHn$tail, i64* %eptr39117                                               ; *eptr39117 = %sHn$tail
  store i64 %FgB$new, i64* %eptr39118                                                ; *eptr39118 = %FgB$new
  store i64 %VvJ$_37wind_45stack, i64* %eptr39119                                    ; *eptr39119 = %VvJ$_37wind_45stack
  %eptr39115 = getelementptr inbounds i64, i64* %cloptr39114, i64 0                  ; &cloptr39114[0]
  %f39120 = ptrtoint void(i64,i64,i64)* @lam37404 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39120, i64* %eptr39115                                                 ; store fptr
  %arg36952 = ptrtoint i64* %cloptr39114 to i64                                      ; closure cast; i64* -> i64
  %arg36951 = add i64 0, 0                                                           ; quoted ()
  %cloptr39121 = inttoptr i64 %arg36952 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39121)                                        ; assert function application
  %i0ptr39122 = getelementptr inbounds i64, i64* %cloptr39121, i64 0                 ; &cloptr39121[0]
  %f39124 = load i64, i64* %i0ptr39122, align 8                                      ; load; *i0ptr39122
  %fptr39123 = inttoptr i64 %f39124 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39123(i64 %arg36952, i64 %arg36951, i64 %retprim36304); tail call
  ret void
}


define void @lam37404(i64 %env37405, i64 %_9536297, i64 %Guq$f) {
  %envptr39125 = inttoptr i64 %env37405 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39126 = getelementptr inbounds i64, i64* %envptr39125, i64 4                ; &envptr39125[4]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39126, align 8                        ; load; *envptr39126
  %envptr39127 = inttoptr i64 %env37405 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39128 = getelementptr inbounds i64, i64* %envptr39127, i64 3                ; &envptr39127[3]
  %FgB$new = load i64, i64* %envptr39128, align 8                                    ; load; *envptr39128
  %envptr39129 = inttoptr i64 %env37405 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39130 = getelementptr inbounds i64, i64* %envptr39129, i64 2                ; &envptr39129[2]
  %sHn$tail = load i64, i64* %envptr39130, align 8                                   ; load; *envptr39130
  %envptr39131 = inttoptr i64 %env37405 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39132 = getelementptr inbounds i64, i64* %envptr39131, i64 1                ; &envptr39131[1]
  %cont36294 = load i64, i64* %envptr39132, align 8                                  ; load; *envptr39132
  %arg36954 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr39133 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39135 = getelementptr inbounds i64, i64* %cloptr39133, i64 1                  ; &eptr39135[1]
  %eptr39136 = getelementptr inbounds i64, i64* %cloptr39133, i64 2                  ; &eptr39136[2]
  %eptr39137 = getelementptr inbounds i64, i64* %cloptr39133, i64 3                  ; &eptr39137[3]
  store i64 %Guq$f, i64* %eptr39135                                                  ; *eptr39135 = %Guq$f
  store i64 %sHn$tail, i64* %eptr39136                                               ; *eptr39136 = %sHn$tail
  store i64 %VvJ$_37wind_45stack, i64* %eptr39137                                    ; *eptr39137 = %VvJ$_37wind_45stack
  %eptr39134 = getelementptr inbounds i64, i64* %cloptr39133, i64 0                  ; &cloptr39133[0]
  %f39138 = ptrtoint void(i64,i64,i64)* @lam37401 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39138, i64* %eptr39134                                                 ; store fptr
  %arg36953 = ptrtoint i64* %cloptr39133 to i64                                      ; closure cast; i64* -> i64
  %TAM$_9536090 = call i64 @prim_vector_45set_33(i64 %Guq$f, i64 %arg36954, i64 %arg36953); call prim_vector_45set_33
  %arg36978 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36211 = call i64 @prim_vector_45ref(i64 %Guq$f, i64 %arg36978)                   ; call prim_vector_45ref
  %cloptr39139 = inttoptr i64 %a36211 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39139)                                        ; assert function application
  %i0ptr39140 = getelementptr inbounds i64, i64* %cloptr39139, i64 0                 ; &cloptr39139[0]
  %f39142 = load i64, i64* %i0ptr39140, align 8                                      ; load; *i0ptr39140
  %fptr39141 = inttoptr i64 %f39142 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39141(i64 %a36211, i64 %cont36294, i64 %FgB$new)    ; tail call
  ret void
}


define void @lam37401(i64 %env37402, i64 %cont36298, i64 %ilO$l) {
  %envptr39143 = inttoptr i64 %env37402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39144 = getelementptr inbounds i64, i64* %envptr39143, i64 3                ; &envptr39143[3]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39144, align 8                        ; load; *envptr39144
  %envptr39145 = inttoptr i64 %env37402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39146 = getelementptr inbounds i64, i64* %envptr39145, i64 2                ; &envptr39145[2]
  %sHn$tail = load i64, i64* %envptr39146, align 8                                   ; load; *envptr39146
  %envptr39147 = inttoptr i64 %env37402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39148 = getelementptr inbounds i64, i64* %envptr39147, i64 1                ; &envptr39147[1]
  %Guq$f = load i64, i64* %envptr39148, align 8                                      ; load; *envptr39148
  %a36205 = call i64 @prim_eq_63(i64 %ilO$l, i64 %sHn$tail)                          ; call prim_eq_63
  %a36206 = call i64 @prim_not(i64 %a36205)                                          ; call prim_not
  %cmp39149 = icmp eq i64 %a36206, 15                                                ; false?
  br i1 %cmp39149, label %else39151, label %then39150                                ; if

then39150:
  %arg36959 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36207 = call i64 @prim_vector_45ref(i64 %Guq$f, i64 %arg36959)                   ; call prim_vector_45ref
  %a36208 = call i64 @prim_cdr(i64 %ilO$l)                                           ; call prim_cdr
  %cloptr39152 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39154 = getelementptr inbounds i64, i64* %cloptr39152, i64 1                  ; &eptr39154[1]
  %eptr39155 = getelementptr inbounds i64, i64* %cloptr39152, i64 2                  ; &eptr39155[2]
  %eptr39156 = getelementptr inbounds i64, i64* %cloptr39152, i64 3                  ; &eptr39156[3]
  store i64 %ilO$l, i64* %eptr39154                                                  ; *eptr39154 = %ilO$l
  store i64 %VvJ$_37wind_45stack, i64* %eptr39155                                    ; *eptr39155 = %VvJ$_37wind_45stack
  store i64 %cont36298, i64* %eptr39156                                              ; *eptr39156 = %cont36298
  %eptr39153 = getelementptr inbounds i64, i64* %cloptr39152, i64 0                  ; &cloptr39152[0]
  %f39157 = ptrtoint void(i64,i64,i64)* @lam37397 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39157, i64* %eptr39153                                                 ; store fptr
  %arg36963 = ptrtoint i64* %cloptr39152 to i64                                      ; closure cast; i64* -> i64
  %cloptr39158 = inttoptr i64 %a36207 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39158)                                        ; assert function application
  %i0ptr39159 = getelementptr inbounds i64, i64* %cloptr39158, i64 0                 ; &cloptr39158[0]
  %f39161 = load i64, i64* %i0ptr39159, align 8                                      ; load; *i0ptr39159
  %fptr39160 = inttoptr i64 %f39161 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39160(i64 %a36207, i64 %arg36963, i64 %a36208)      ; tail call
  ret void

else39151:
  %retprim36302 = call i64 @prim_void()                                              ; call prim_void
  %arg36976 = add i64 0, 0                                                           ; quoted ()
  %cloptr39162 = inttoptr i64 %cont36298 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39162)                                        ; assert function application
  %i0ptr39163 = getelementptr inbounds i64, i64* %cloptr39162, i64 0                 ; &cloptr39162[0]
  %f39165 = load i64, i64* %i0ptr39163, align 8                                      ; load; *i0ptr39163
  %fptr39164 = inttoptr i64 %f39165 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39164(i64 %cont36298, i64 %arg36976, i64 %retprim36302); tail call
  ret void
}


define void @lam37397(i64 %env37398, i64 %_9536299, i64 %YTs$_9536091) {
  %envptr39166 = inttoptr i64 %env37398 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39167 = getelementptr inbounds i64, i64* %envptr39166, i64 3                ; &envptr39166[3]
  %cont36298 = load i64, i64* %envptr39167, align 8                                  ; load; *envptr39167
  %envptr39168 = inttoptr i64 %env37398 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39169 = getelementptr inbounds i64, i64* %envptr39168, i64 2                ; &envptr39168[2]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39169, align 8                        ; load; *envptr39169
  %envptr39170 = inttoptr i64 %env37398 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39171 = getelementptr inbounds i64, i64* %envptr39170, i64 1                ; &envptr39170[1]
  %ilO$l = load i64, i64* %envptr39171, align 8                                      ; load; *envptr39171
  %a36209 = call i64 @prim_car(i64 %ilO$l)                                           ; call prim_car
  %a36210 = call i64 @prim_car(i64 %a36209)                                          ; call prim_car
  %cloptr39172 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39174 = getelementptr inbounds i64, i64* %cloptr39172, i64 1                  ; &eptr39174[1]
  %eptr39175 = getelementptr inbounds i64, i64* %cloptr39172, i64 2                  ; &eptr39175[2]
  %eptr39176 = getelementptr inbounds i64, i64* %cloptr39172, i64 3                  ; &eptr39176[3]
  store i64 %ilO$l, i64* %eptr39174                                                  ; *eptr39174 = %ilO$l
  store i64 %VvJ$_37wind_45stack, i64* %eptr39175                                    ; *eptr39175 = %VvJ$_37wind_45stack
  store i64 %cont36298, i64* %eptr39176                                              ; *eptr39176 = %cont36298
  %eptr39173 = getelementptr inbounds i64, i64* %cloptr39172, i64 0                  ; &cloptr39172[0]
  %f39177 = ptrtoint void(i64,i64,i64)* @lam37395 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39177, i64* %eptr39173                                                 ; store fptr
  %arg36967 = ptrtoint i64* %cloptr39172 to i64                                      ; closure cast; i64* -> i64
  %cloptr39178 = inttoptr i64 %a36210 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39178)                                        ; assert function application
  %i0ptr39179 = getelementptr inbounds i64, i64* %cloptr39178, i64 0                 ; &cloptr39178[0]
  %f39181 = load i64, i64* %i0ptr39179, align 8                                      ; load; *i0ptr39179
  %fptr39180 = inttoptr i64 %f39181 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39180(i64 %a36210, i64 %arg36967)                   ; tail call
  ret void
}


define void @lam37395(i64 %env37396, i64 %_9536300, i64 %nfB$_9536092) {
  %envptr39182 = inttoptr i64 %env37396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39183 = getelementptr inbounds i64, i64* %envptr39182, i64 3                ; &envptr39182[3]
  %cont36298 = load i64, i64* %envptr39183, align 8                                  ; load; *envptr39183
  %envptr39184 = inttoptr i64 %env37396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39185 = getelementptr inbounds i64, i64* %envptr39184, i64 2                ; &envptr39184[2]
  %VvJ$_37wind_45stack = load i64, i64* %envptr39185, align 8                        ; load; *envptr39185
  %envptr39186 = inttoptr i64 %env37396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39187 = getelementptr inbounds i64, i64* %envptr39186, i64 1                ; &envptr39186[1]
  %ilO$l = load i64, i64* %envptr39187, align 8                                      ; load; *envptr39187
  %arg36970 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %retprim36301 = call i64 @prim_vector_45set_33(i64 %VvJ$_37wind_45stack, i64 %arg36970, i64 %ilO$l); call prim_vector_45set_33
  %arg36973 = add i64 0, 0                                                           ; quoted ()
  %cloptr39188 = inttoptr i64 %cont36298 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39188)                                        ; assert function application
  %i0ptr39189 = getelementptr inbounds i64, i64* %cloptr39188, i64 0                 ; &cloptr39188[0]
  %f39191 = load i64, i64* %i0ptr39189, align 8                                      ; load; *i0ptr39189
  %fptr39190 = inttoptr i64 %f39191 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39190(i64 %cont36298, i64 %arg36973, i64 %retprim36301); tail call
  ret void
}


define void @lam37388(i64 %env37389, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr39192 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39192)                                        ; assert function application
  %i0ptr39193 = getelementptr inbounds i64, i64* %cloptr39192, i64 0                 ; &cloptr39192[0]
  %f39195 = load i64, i64* %i0ptr39193, align 8                                      ; load; *i0ptr39193
  %fptr39194 = inttoptr i64 %f39195 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39194(i64 %_951, i64 %_951)                         ; tail call
  ret void
}


define void @lam37380(i64 %env37381, i64 %cont36327, i64 %r11$_37foldl) {
  %envptr39196 = inttoptr i64 %env37381 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39197 = getelementptr inbounds i64, i64* %envptr39196, i64 3                ; &envptr39196[3]
  %Ls1$_37foldr = load i64, i64* %envptr39197, align 8                               ; load; *envptr39197
  %envptr39198 = inttoptr i64 %env37381 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39199 = getelementptr inbounds i64, i64* %envptr39198, i64 2                ; &envptr39198[2]
  %ylA$_37map1 = load i64, i64* %envptr39199, align 8                                ; load; *envptr39199
  %envptr39200 = inttoptr i64 %env37381 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39201 = getelementptr inbounds i64, i64* %envptr39200, i64 1                ; &envptr39200[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39201, align 8                              ; load; *envptr39201
  %arg36990 = add i64 0, 0                                                           ; quoted ()
  %cloptr39202 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39204 = getelementptr inbounds i64, i64* %cloptr39202, i64 1                  ; &eptr39204[1]
  %eptr39205 = getelementptr inbounds i64, i64* %cloptr39202, i64 2                  ; &eptr39205[2]
  %eptr39206 = getelementptr inbounds i64, i64* %cloptr39202, i64 3                  ; &eptr39206[3]
  %eptr39207 = getelementptr inbounds i64, i64* %cloptr39202, i64 4                  ; &eptr39207[4]
  store i64 %ROr$_37foldr1, i64* %eptr39204                                          ; *eptr39204 = %ROr$_37foldr1
  store i64 %ylA$_37map1, i64* %eptr39205                                            ; *eptr39205 = %ylA$_37map1
  store i64 %Ls1$_37foldr, i64* %eptr39206                                           ; *eptr39206 = %Ls1$_37foldr
  store i64 %r11$_37foldl, i64* %eptr39207                                           ; *eptr39207 = %r11$_37foldl
  %eptr39203 = getelementptr inbounds i64, i64* %cloptr39202, i64 0                  ; &cloptr39202[0]
  %f39208 = ptrtoint void(i64,i64)* @lam37377 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f39208, i64* %eptr39203                                                 ; store fptr
  %arg36989 = ptrtoint i64* %cloptr39202 to i64                                      ; closure cast; i64* -> i64
  %cloptr39209 = inttoptr i64 %cont36327 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39209)                                        ; assert function application
  %i0ptr39210 = getelementptr inbounds i64, i64* %cloptr39209, i64 0                 ; &cloptr39209[0]
  %f39212 = load i64, i64* %i0ptr39210, align 8                                      ; load; *i0ptr39210
  %fptr39211 = inttoptr i64 %f39212 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39211(i64 %cont36327, i64 %arg36990, i64 %arg36989) ; tail call
  ret void
}


define void @lam37377(i64 %env37378, i64 %xS2$args36329) {
  %envptr39213 = inttoptr i64 %env37378 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39214 = getelementptr inbounds i64, i64* %envptr39213, i64 4                ; &envptr39213[4]
  %r11$_37foldl = load i64, i64* %envptr39214, align 8                               ; load; *envptr39214
  %envptr39215 = inttoptr i64 %env37378 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39216 = getelementptr inbounds i64, i64* %envptr39215, i64 3                ; &envptr39215[3]
  %Ls1$_37foldr = load i64, i64* %envptr39216, align 8                               ; load; *envptr39216
  %envptr39217 = inttoptr i64 %env37378 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39218 = getelementptr inbounds i64, i64* %envptr39217, i64 2                ; &envptr39217[2]
  %ylA$_37map1 = load i64, i64* %envptr39218, align 8                                ; load; *envptr39218
  %envptr39219 = inttoptr i64 %env37378 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39220 = getelementptr inbounds i64, i64* %envptr39219, i64 1                ; &envptr39219[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39220, align 8                              ; load; *envptr39220
  %cont36328 = call i64 @prim_car(i64 %xS2$args36329)                                ; call prim_car
  %xS2$args = call i64 @prim_cdr(i64 %xS2$args36329)                                 ; call prim_cdr
  %NEE$f = call i64 @prim_car(i64 %xS2$args)                                         ; call prim_car
  %a36133 = call i64 @prim_cdr(i64 %xS2$args)                                        ; call prim_cdr
  %retprim36348 = call i64 @prim_car(i64 %a36133)                                    ; call prim_car
  %cloptr39221 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr39223 = getelementptr inbounds i64, i64* %cloptr39221, i64 1                  ; &eptr39223[1]
  %eptr39224 = getelementptr inbounds i64, i64* %cloptr39221, i64 2                  ; &eptr39224[2]
  %eptr39225 = getelementptr inbounds i64, i64* %cloptr39221, i64 3                  ; &eptr39225[3]
  %eptr39226 = getelementptr inbounds i64, i64* %cloptr39221, i64 4                  ; &eptr39226[4]
  %eptr39227 = getelementptr inbounds i64, i64* %cloptr39221, i64 5                  ; &eptr39227[5]
  %eptr39228 = getelementptr inbounds i64, i64* %cloptr39221, i64 6                  ; &eptr39228[6]
  %eptr39229 = getelementptr inbounds i64, i64* %cloptr39221, i64 7                  ; &eptr39229[7]
  store i64 %ROr$_37foldr1, i64* %eptr39223                                          ; *eptr39223 = %ROr$_37foldr1
  store i64 %ylA$_37map1, i64* %eptr39224                                            ; *eptr39224 = %ylA$_37map1
  store i64 %xS2$args, i64* %eptr39225                                               ; *eptr39225 = %xS2$args
  store i64 %cont36328, i64* %eptr39226                                              ; *eptr39226 = %cont36328
  store i64 %Ls1$_37foldr, i64* %eptr39227                                           ; *eptr39227 = %Ls1$_37foldr
  store i64 %r11$_37foldl, i64* %eptr39228                                           ; *eptr39228 = %r11$_37foldl
  store i64 %NEE$f, i64* %eptr39229                                                  ; *eptr39229 = %NEE$f
  %eptr39222 = getelementptr inbounds i64, i64* %cloptr39221, i64 0                  ; &cloptr39221[0]
  %f39230 = ptrtoint void(i64,i64,i64)* @lam37375 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39230, i64* %eptr39222                                                 ; store fptr
  %arg36999 = ptrtoint i64* %cloptr39221 to i64                                      ; closure cast; i64* -> i64
  %arg36998 = add i64 0, 0                                                           ; quoted ()
  %cloptr39231 = inttoptr i64 %arg36999 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39231)                                        ; assert function application
  %i0ptr39232 = getelementptr inbounds i64, i64* %cloptr39231, i64 0                 ; &cloptr39231[0]
  %f39234 = load i64, i64* %i0ptr39232, align 8                                      ; load; *i0ptr39232
  %fptr39233 = inttoptr i64 %f39234 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39233(i64 %arg36999, i64 %arg36998, i64 %retprim36348); tail call
  ret void
}


define void @lam37375(i64 %env37376, i64 %_9536330, i64 %fcN$acc) {
  %envptr39235 = inttoptr i64 %env37376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39236 = getelementptr inbounds i64, i64* %envptr39235, i64 7                ; &envptr39235[7]
  %NEE$f = load i64, i64* %envptr39236, align 8                                      ; load; *envptr39236
  %envptr39237 = inttoptr i64 %env37376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39238 = getelementptr inbounds i64, i64* %envptr39237, i64 6                ; &envptr39237[6]
  %r11$_37foldl = load i64, i64* %envptr39238, align 8                               ; load; *envptr39238
  %envptr39239 = inttoptr i64 %env37376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39240 = getelementptr inbounds i64, i64* %envptr39239, i64 5                ; &envptr39239[5]
  %Ls1$_37foldr = load i64, i64* %envptr39240, align 8                               ; load; *envptr39240
  %envptr39241 = inttoptr i64 %env37376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39242 = getelementptr inbounds i64, i64* %envptr39241, i64 4                ; &envptr39241[4]
  %cont36328 = load i64, i64* %envptr39242, align 8                                  ; load; *envptr39242
  %envptr39243 = inttoptr i64 %env37376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39244 = getelementptr inbounds i64, i64* %envptr39243, i64 3                ; &envptr39243[3]
  %xS2$args = load i64, i64* %envptr39244, align 8                                   ; load; *envptr39244
  %envptr39245 = inttoptr i64 %env37376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39246 = getelementptr inbounds i64, i64* %envptr39245, i64 2                ; &envptr39245[2]
  %ylA$_37map1 = load i64, i64* %envptr39246, align 8                                ; load; *envptr39246
  %envptr39247 = inttoptr i64 %env37376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39248 = getelementptr inbounds i64, i64* %envptr39247, i64 1                ; &envptr39247[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39248, align 8                              ; load; *envptr39248
  %a36134 = call i64 @prim_cdr(i64 %xS2$args)                                        ; call prim_cdr
  %retprim36347 = call i64 @prim_cdr(i64 %a36134)                                    ; call prim_cdr
  %cloptr39249 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr39251 = getelementptr inbounds i64, i64* %cloptr39249, i64 1                  ; &eptr39251[1]
  %eptr39252 = getelementptr inbounds i64, i64* %cloptr39249, i64 2                  ; &eptr39252[2]
  %eptr39253 = getelementptr inbounds i64, i64* %cloptr39249, i64 3                  ; &eptr39253[3]
  %eptr39254 = getelementptr inbounds i64, i64* %cloptr39249, i64 4                  ; &eptr39254[4]
  %eptr39255 = getelementptr inbounds i64, i64* %cloptr39249, i64 5                  ; &eptr39255[5]
  %eptr39256 = getelementptr inbounds i64, i64* %cloptr39249, i64 6                  ; &eptr39256[6]
  %eptr39257 = getelementptr inbounds i64, i64* %cloptr39249, i64 7                  ; &eptr39257[7]
  store i64 %ROr$_37foldr1, i64* %eptr39251                                          ; *eptr39251 = %ROr$_37foldr1
  store i64 %ylA$_37map1, i64* %eptr39252                                            ; *eptr39252 = %ylA$_37map1
  store i64 %fcN$acc, i64* %eptr39253                                                ; *eptr39253 = %fcN$acc
  store i64 %cont36328, i64* %eptr39254                                              ; *eptr39254 = %cont36328
  store i64 %Ls1$_37foldr, i64* %eptr39255                                           ; *eptr39255 = %Ls1$_37foldr
  store i64 %r11$_37foldl, i64* %eptr39256                                           ; *eptr39256 = %r11$_37foldl
  store i64 %NEE$f, i64* %eptr39257                                                  ; *eptr39257 = %NEE$f
  %eptr39250 = getelementptr inbounds i64, i64* %cloptr39249, i64 0                  ; &cloptr39249[0]
  %f39258 = ptrtoint void(i64,i64,i64)* @lam37373 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39258, i64* %eptr39250                                                 ; store fptr
  %arg37004 = ptrtoint i64* %cloptr39249 to i64                                      ; closure cast; i64* -> i64
  %arg37003 = add i64 0, 0                                                           ; quoted ()
  %cloptr39259 = inttoptr i64 %arg37004 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39259)                                        ; assert function application
  %i0ptr39260 = getelementptr inbounds i64, i64* %cloptr39259, i64 0                 ; &cloptr39259[0]
  %f39262 = load i64, i64* %i0ptr39260, align 8                                      ; load; *i0ptr39260
  %fptr39261 = inttoptr i64 %f39262 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39261(i64 %arg37004, i64 %arg37003, i64 %retprim36347); tail call
  ret void
}


define void @lam37373(i64 %env37374, i64 %_9536331, i64 %ZJt$lsts) {
  %envptr39263 = inttoptr i64 %env37374 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39264 = getelementptr inbounds i64, i64* %envptr39263, i64 7                ; &envptr39263[7]
  %NEE$f = load i64, i64* %envptr39264, align 8                                      ; load; *envptr39264
  %envptr39265 = inttoptr i64 %env37374 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39266 = getelementptr inbounds i64, i64* %envptr39265, i64 6                ; &envptr39265[6]
  %r11$_37foldl = load i64, i64* %envptr39266, align 8                               ; load; *envptr39266
  %envptr39267 = inttoptr i64 %env37374 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39268 = getelementptr inbounds i64, i64* %envptr39267, i64 5                ; &envptr39267[5]
  %Ls1$_37foldr = load i64, i64* %envptr39268, align 8                               ; load; *envptr39268
  %envptr39269 = inttoptr i64 %env37374 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39270 = getelementptr inbounds i64, i64* %envptr39269, i64 4                ; &envptr39269[4]
  %cont36328 = load i64, i64* %envptr39270, align 8                                  ; load; *envptr39270
  %envptr39271 = inttoptr i64 %env37374 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39272 = getelementptr inbounds i64, i64* %envptr39271, i64 3                ; &envptr39271[3]
  %fcN$acc = load i64, i64* %envptr39272, align 8                                    ; load; *envptr39272
  %envptr39273 = inttoptr i64 %env37374 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39274 = getelementptr inbounds i64, i64* %envptr39273, i64 2                ; &envptr39273[2]
  %ylA$_37map1 = load i64, i64* %envptr39274, align 8                                ; load; *envptr39274
  %envptr39275 = inttoptr i64 %env37374 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39276 = getelementptr inbounds i64, i64* %envptr39275, i64 1                ; &envptr39275[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39276, align 8                              ; load; *envptr39276
  %cloptr39277 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr39279 = getelementptr inbounds i64, i64* %cloptr39277, i64 1                  ; &eptr39279[1]
  %eptr39280 = getelementptr inbounds i64, i64* %cloptr39277, i64 2                  ; &eptr39280[2]
  %eptr39281 = getelementptr inbounds i64, i64* %cloptr39277, i64 3                  ; &eptr39281[3]
  %eptr39282 = getelementptr inbounds i64, i64* %cloptr39277, i64 4                  ; &eptr39282[4]
  %eptr39283 = getelementptr inbounds i64, i64* %cloptr39277, i64 5                  ; &eptr39283[5]
  %eptr39284 = getelementptr inbounds i64, i64* %cloptr39277, i64 6                  ; &eptr39284[6]
  %eptr39285 = getelementptr inbounds i64, i64* %cloptr39277, i64 7                  ; &eptr39285[7]
  store i64 %ZJt$lsts, i64* %eptr39279                                               ; *eptr39279 = %ZJt$lsts
  store i64 %ylA$_37map1, i64* %eptr39280                                            ; *eptr39280 = %ylA$_37map1
  store i64 %fcN$acc, i64* %eptr39281                                                ; *eptr39281 = %fcN$acc
  store i64 %cont36328, i64* %eptr39282                                              ; *eptr39282 = %cont36328
  store i64 %Ls1$_37foldr, i64* %eptr39283                                           ; *eptr39283 = %Ls1$_37foldr
  store i64 %r11$_37foldl, i64* %eptr39284                                           ; *eptr39284 = %r11$_37foldl
  store i64 %NEE$f, i64* %eptr39285                                                  ; *eptr39285 = %NEE$f
  %eptr39278 = getelementptr inbounds i64, i64* %cloptr39277, i64 0                  ; &cloptr39277[0]
  %f39286 = ptrtoint void(i64,i64,i64)* @lam37371 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39286, i64* %eptr39278                                                 ; store fptr
  %arg37008 = ptrtoint i64* %cloptr39277 to i64                                      ; closure cast; i64* -> i64
  %cloptr39287 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39288 = getelementptr inbounds i64, i64* %cloptr39287, i64 0                  ; &cloptr39287[0]
  %f39289 = ptrtoint void(i64,i64,i64,i64)* @lam37350 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f39289, i64* %eptr39288                                                 ; store fptr
  %arg37007 = ptrtoint i64* %cloptr39287 to i64                                      ; closure cast; i64* -> i64
  %arg37006 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr39290 = inttoptr i64 %ROr$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39290)                                        ; assert function application
  %i0ptr39291 = getelementptr inbounds i64, i64* %cloptr39290, i64 0                 ; &cloptr39290[0]
  %f39293 = load i64, i64* %i0ptr39291, align 8                                      ; load; *i0ptr39291
  %fptr39292 = inttoptr i64 %f39293 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39292(i64 %ROr$_37foldr1, i64 %arg37008, i64 %arg37007, i64 %arg37006, i64 %ZJt$lsts); tail call
  ret void
}


define void @lam37371(i64 %env37372, i64 %_9536332, i64 %a36135) {
  %envptr39294 = inttoptr i64 %env37372 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39295 = getelementptr inbounds i64, i64* %envptr39294, i64 7                ; &envptr39294[7]
  %NEE$f = load i64, i64* %envptr39295, align 8                                      ; load; *envptr39295
  %envptr39296 = inttoptr i64 %env37372 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39297 = getelementptr inbounds i64, i64* %envptr39296, i64 6                ; &envptr39296[6]
  %r11$_37foldl = load i64, i64* %envptr39297, align 8                               ; load; *envptr39297
  %envptr39298 = inttoptr i64 %env37372 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39299 = getelementptr inbounds i64, i64* %envptr39298, i64 5                ; &envptr39298[5]
  %Ls1$_37foldr = load i64, i64* %envptr39299, align 8                               ; load; *envptr39299
  %envptr39300 = inttoptr i64 %env37372 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39301 = getelementptr inbounds i64, i64* %envptr39300, i64 4                ; &envptr39300[4]
  %cont36328 = load i64, i64* %envptr39301, align 8                                  ; load; *envptr39301
  %envptr39302 = inttoptr i64 %env37372 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39303 = getelementptr inbounds i64, i64* %envptr39302, i64 3                ; &envptr39302[3]
  %fcN$acc = load i64, i64* %envptr39303, align 8                                    ; load; *envptr39303
  %envptr39304 = inttoptr i64 %env37372 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39305 = getelementptr inbounds i64, i64* %envptr39304, i64 2                ; &envptr39304[2]
  %ylA$_37map1 = load i64, i64* %envptr39305, align 8                                ; load; *envptr39305
  %envptr39306 = inttoptr i64 %env37372 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39307 = getelementptr inbounds i64, i64* %envptr39306, i64 1                ; &envptr39306[1]
  %ZJt$lsts = load i64, i64* %envptr39307, align 8                                   ; load; *envptr39307
  %cmp39308 = icmp eq i64 %a36135, 15                                                ; false?
  br i1 %cmp39308, label %else39310, label %then39309                                ; if

then39309:
  %arg37011 = add i64 0, 0                                                           ; quoted ()
  %cloptr39311 = inttoptr i64 %cont36328 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39311)                                        ; assert function application
  %i0ptr39312 = getelementptr inbounds i64, i64* %cloptr39311, i64 0                 ; &cloptr39311[0]
  %f39314 = load i64, i64* %i0ptr39312, align 8                                      ; load; *i0ptr39312
  %fptr39313 = inttoptr i64 %f39314 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39313(i64 %cont36328, i64 %arg37011, i64 %fcN$acc)  ; tail call
  ret void

else39310:
  %cloptr39315 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr39317 = getelementptr inbounds i64, i64* %cloptr39315, i64 1                  ; &eptr39317[1]
  %eptr39318 = getelementptr inbounds i64, i64* %cloptr39315, i64 2                  ; &eptr39318[2]
  %eptr39319 = getelementptr inbounds i64, i64* %cloptr39315, i64 3                  ; &eptr39319[3]
  %eptr39320 = getelementptr inbounds i64, i64* %cloptr39315, i64 4                  ; &eptr39320[4]
  %eptr39321 = getelementptr inbounds i64, i64* %cloptr39315, i64 5                  ; &eptr39321[5]
  %eptr39322 = getelementptr inbounds i64, i64* %cloptr39315, i64 6                  ; &eptr39322[6]
  %eptr39323 = getelementptr inbounds i64, i64* %cloptr39315, i64 7                  ; &eptr39323[7]
  store i64 %ZJt$lsts, i64* %eptr39317                                               ; *eptr39317 = %ZJt$lsts
  store i64 %ylA$_37map1, i64* %eptr39318                                            ; *eptr39318 = %ylA$_37map1
  store i64 %fcN$acc, i64* %eptr39319                                                ; *eptr39319 = %fcN$acc
  store i64 %cont36328, i64* %eptr39320                                              ; *eptr39320 = %cont36328
  store i64 %Ls1$_37foldr, i64* %eptr39321                                           ; *eptr39321 = %Ls1$_37foldr
  store i64 %r11$_37foldl, i64* %eptr39322                                           ; *eptr39322 = %r11$_37foldl
  store i64 %NEE$f, i64* %eptr39323                                                  ; *eptr39323 = %NEE$f
  %eptr39316 = getelementptr inbounds i64, i64* %cloptr39315, i64 0                  ; &cloptr39315[0]
  %f39324 = ptrtoint void(i64,i64,i64)* @lam37369 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39324, i64* %eptr39316                                                 ; store fptr
  %arg37015 = ptrtoint i64* %cloptr39315 to i64                                      ; closure cast; i64* -> i64
  %cloptr39325 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39326 = getelementptr inbounds i64, i64* %cloptr39325, i64 0                  ; &cloptr39325[0]
  %f39327 = ptrtoint void(i64,i64,i64)* @lam37354 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39327, i64* %eptr39326                                                 ; store fptr
  %arg37014 = ptrtoint i64* %cloptr39325 to i64                                      ; closure cast; i64* -> i64
  %cloptr39328 = inttoptr i64 %ylA$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39328)                                        ; assert function application
  %i0ptr39329 = getelementptr inbounds i64, i64* %cloptr39328, i64 0                 ; &cloptr39328[0]
  %f39331 = load i64, i64* %i0ptr39329, align 8                                      ; load; *i0ptr39329
  %fptr39330 = inttoptr i64 %f39331 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39330(i64 %ylA$_37map1, i64 %arg37015, i64 %arg37014, i64 %ZJt$lsts); tail call
  ret void
}


define void @lam37369(i64 %env37370, i64 %_9536333, i64 %MQl$lsts_43) {
  %envptr39332 = inttoptr i64 %env37370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39333 = getelementptr inbounds i64, i64* %envptr39332, i64 7                ; &envptr39332[7]
  %NEE$f = load i64, i64* %envptr39333, align 8                                      ; load; *envptr39333
  %envptr39334 = inttoptr i64 %env37370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39335 = getelementptr inbounds i64, i64* %envptr39334, i64 6                ; &envptr39334[6]
  %r11$_37foldl = load i64, i64* %envptr39335, align 8                               ; load; *envptr39335
  %envptr39336 = inttoptr i64 %env37370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39337 = getelementptr inbounds i64, i64* %envptr39336, i64 5                ; &envptr39336[5]
  %Ls1$_37foldr = load i64, i64* %envptr39337, align 8                               ; load; *envptr39337
  %envptr39338 = inttoptr i64 %env37370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39339 = getelementptr inbounds i64, i64* %envptr39338, i64 4                ; &envptr39338[4]
  %cont36328 = load i64, i64* %envptr39339, align 8                                  ; load; *envptr39339
  %envptr39340 = inttoptr i64 %env37370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39341 = getelementptr inbounds i64, i64* %envptr39340, i64 3                ; &envptr39340[3]
  %fcN$acc = load i64, i64* %envptr39341, align 8                                    ; load; *envptr39341
  %envptr39342 = inttoptr i64 %env37370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39343 = getelementptr inbounds i64, i64* %envptr39342, i64 2                ; &envptr39342[2]
  %ylA$_37map1 = load i64, i64* %envptr39343, align 8                                ; load; *envptr39343
  %envptr39344 = inttoptr i64 %env37370 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39345 = getelementptr inbounds i64, i64* %envptr39344, i64 1                ; &envptr39344[1]
  %ZJt$lsts = load i64, i64* %envptr39345, align 8                                   ; load; *envptr39345
  %cloptr39346 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr39348 = getelementptr inbounds i64, i64* %cloptr39346, i64 1                  ; &eptr39348[1]
  %eptr39349 = getelementptr inbounds i64, i64* %cloptr39346, i64 2                  ; &eptr39349[2]
  %eptr39350 = getelementptr inbounds i64, i64* %cloptr39346, i64 3                  ; &eptr39350[3]
  %eptr39351 = getelementptr inbounds i64, i64* %cloptr39346, i64 4                  ; &eptr39351[4]
  %eptr39352 = getelementptr inbounds i64, i64* %cloptr39346, i64 5                  ; &eptr39352[5]
  %eptr39353 = getelementptr inbounds i64, i64* %cloptr39346, i64 6                  ; &eptr39353[6]
  store i64 %fcN$acc, i64* %eptr39348                                                ; *eptr39348 = %fcN$acc
  store i64 %cont36328, i64* %eptr39349                                              ; *eptr39349 = %cont36328
  store i64 %Ls1$_37foldr, i64* %eptr39350                                           ; *eptr39350 = %Ls1$_37foldr
  store i64 %r11$_37foldl, i64* %eptr39351                                           ; *eptr39351 = %r11$_37foldl
  store i64 %MQl$lsts_43, i64* %eptr39352                                            ; *eptr39352 = %MQl$lsts_43
  store i64 %NEE$f, i64* %eptr39353                                                  ; *eptr39353 = %NEE$f
  %eptr39347 = getelementptr inbounds i64, i64* %cloptr39346, i64 0                  ; &cloptr39346[0]
  %f39354 = ptrtoint void(i64,i64,i64)* @lam37367 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39354, i64* %eptr39347                                                 ; store fptr
  %arg37019 = ptrtoint i64* %cloptr39346 to i64                                      ; closure cast; i64* -> i64
  %cloptr39355 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39356 = getelementptr inbounds i64, i64* %cloptr39355, i64 0                  ; &cloptr39355[0]
  %f39357 = ptrtoint void(i64,i64,i64)* @lam37357 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39357, i64* %eptr39356                                                 ; store fptr
  %arg37018 = ptrtoint i64* %cloptr39355 to i64                                      ; closure cast; i64* -> i64
  %cloptr39358 = inttoptr i64 %ylA$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39358)                                        ; assert function application
  %i0ptr39359 = getelementptr inbounds i64, i64* %cloptr39358, i64 0                 ; &cloptr39358[0]
  %f39361 = load i64, i64* %i0ptr39359, align 8                                      ; load; *i0ptr39359
  %fptr39360 = inttoptr i64 %f39361 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39360(i64 %ylA$_37map1, i64 %arg37019, i64 %arg37018, i64 %ZJt$lsts); tail call
  ret void
}


define void @lam37367(i64 %env37368, i64 %_9536334, i64 %Fxu$vs) {
  %envptr39362 = inttoptr i64 %env37368 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39363 = getelementptr inbounds i64, i64* %envptr39362, i64 6                ; &envptr39362[6]
  %NEE$f = load i64, i64* %envptr39363, align 8                                      ; load; *envptr39363
  %envptr39364 = inttoptr i64 %env37368 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39365 = getelementptr inbounds i64, i64* %envptr39364, i64 5                ; &envptr39364[5]
  %MQl$lsts_43 = load i64, i64* %envptr39365, align 8                                ; load; *envptr39365
  %envptr39366 = inttoptr i64 %env37368 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39367 = getelementptr inbounds i64, i64* %envptr39366, i64 4                ; &envptr39366[4]
  %r11$_37foldl = load i64, i64* %envptr39367, align 8                               ; load; *envptr39367
  %envptr39368 = inttoptr i64 %env37368 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39369 = getelementptr inbounds i64, i64* %envptr39368, i64 3                ; &envptr39368[3]
  %Ls1$_37foldr = load i64, i64* %envptr39369, align 8                               ; load; *envptr39369
  %envptr39370 = inttoptr i64 %env37368 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39371 = getelementptr inbounds i64, i64* %envptr39370, i64 2                ; &envptr39370[2]
  %cont36328 = load i64, i64* %envptr39371, align 8                                  ; load; *envptr39371
  %envptr39372 = inttoptr i64 %env37368 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39373 = getelementptr inbounds i64, i64* %envptr39372, i64 1                ; &envptr39372[1]
  %fcN$acc = load i64, i64* %envptr39373, align 8                                    ; load; *envptr39373
  %arg37021 = add i64 0, 0                                                           ; quoted ()
  %a36136 = call i64 @prim_cons(i64 %fcN$acc, i64 %arg37021)                         ; call prim_cons
  %cloptr39374 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39376 = getelementptr inbounds i64, i64* %cloptr39374, i64 1                  ; &eptr39376[1]
  %eptr39377 = getelementptr inbounds i64, i64* %cloptr39374, i64 2                  ; &eptr39377[2]
  %eptr39378 = getelementptr inbounds i64, i64* %cloptr39374, i64 3                  ; &eptr39378[3]
  %eptr39379 = getelementptr inbounds i64, i64* %cloptr39374, i64 4                  ; &eptr39379[4]
  store i64 %cont36328, i64* %eptr39376                                              ; *eptr39376 = %cont36328
  store i64 %r11$_37foldl, i64* %eptr39377                                           ; *eptr39377 = %r11$_37foldl
  store i64 %MQl$lsts_43, i64* %eptr39378                                            ; *eptr39378 = %MQl$lsts_43
  store i64 %NEE$f, i64* %eptr39379                                                  ; *eptr39379 = %NEE$f
  %eptr39375 = getelementptr inbounds i64, i64* %cloptr39374, i64 0                  ; &cloptr39374[0]
  %f39380 = ptrtoint void(i64,i64,i64)* @lam37364 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39380, i64* %eptr39375                                                 ; store fptr
  %arg37026 = ptrtoint i64* %cloptr39374 to i64                                      ; closure cast; i64* -> i64
  %cloptr39381 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39382 = getelementptr inbounds i64, i64* %cloptr39381, i64 0                  ; &cloptr39381[0]
  %f39383 = ptrtoint void(i64,i64,i64,i64)* @lam37360 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f39383, i64* %eptr39382                                                 ; store fptr
  %arg37025 = ptrtoint i64* %cloptr39381 to i64                                      ; closure cast; i64* -> i64
  %cloptr39384 = inttoptr i64 %Ls1$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39384)                                        ; assert function application
  %i0ptr39385 = getelementptr inbounds i64, i64* %cloptr39384, i64 0                 ; &cloptr39384[0]
  %f39387 = load i64, i64* %i0ptr39385, align 8                                      ; load; *i0ptr39385
  %fptr39386 = inttoptr i64 %f39387 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39386(i64 %Ls1$_37foldr, i64 %arg37026, i64 %arg37025, i64 %a36136, i64 %Fxu$vs); tail call
  ret void
}


define void @lam37364(i64 %env37365, i64 %_9536337, i64 %a36137) {
  %envptr39388 = inttoptr i64 %env37365 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39389 = getelementptr inbounds i64, i64* %envptr39388, i64 4                ; &envptr39388[4]
  %NEE$f = load i64, i64* %envptr39389, align 8                                      ; load; *envptr39389
  %envptr39390 = inttoptr i64 %env37365 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39391 = getelementptr inbounds i64, i64* %envptr39390, i64 3                ; &envptr39390[3]
  %MQl$lsts_43 = load i64, i64* %envptr39391, align 8                                ; load; *envptr39391
  %envptr39392 = inttoptr i64 %env37365 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39393 = getelementptr inbounds i64, i64* %envptr39392, i64 2                ; &envptr39392[2]
  %r11$_37foldl = load i64, i64* %envptr39393, align 8                               ; load; *envptr39393
  %envptr39394 = inttoptr i64 %env37365 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39395 = getelementptr inbounds i64, i64* %envptr39394, i64 1                ; &envptr39394[1]
  %cont36328 = load i64, i64* %envptr39395, align 8                                  ; load; *envptr39395
  %cloptr39396 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39398 = getelementptr inbounds i64, i64* %cloptr39396, i64 1                  ; &eptr39398[1]
  %eptr39399 = getelementptr inbounds i64, i64* %cloptr39396, i64 2                  ; &eptr39399[2]
  %eptr39400 = getelementptr inbounds i64, i64* %cloptr39396, i64 3                  ; &eptr39400[3]
  %eptr39401 = getelementptr inbounds i64, i64* %cloptr39396, i64 4                  ; &eptr39401[4]
  store i64 %cont36328, i64* %eptr39398                                              ; *eptr39398 = %cont36328
  store i64 %r11$_37foldl, i64* %eptr39399                                           ; *eptr39399 = %r11$_37foldl
  store i64 %MQl$lsts_43, i64* %eptr39400                                            ; *eptr39400 = %MQl$lsts_43
  store i64 %NEE$f, i64* %eptr39401                                                  ; *eptr39401 = %NEE$f
  %eptr39397 = getelementptr inbounds i64, i64* %cloptr39396, i64 0                  ; &cloptr39396[0]
  %f39402 = ptrtoint void(i64,i64,i64)* @lam37362 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39402, i64* %eptr39397                                                 ; store fptr
  %arg37029 = ptrtoint i64* %cloptr39396 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst36338 = call i64 @prim_cons(i64 %arg37029, i64 %a36137)                  ; call prim_cons
  %cloptr39403 = inttoptr i64 %NEE$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39403)                                        ; assert function application
  %i0ptr39404 = getelementptr inbounds i64, i64* %cloptr39403, i64 0                 ; &cloptr39403[0]
  %f39406 = load i64, i64* %i0ptr39404, align 8                                      ; load; *i0ptr39404
  %fptr39405 = inttoptr i64 %f39406 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39405(i64 %NEE$f, i64 %cps_45lst36338)              ; tail call
  ret void
}


define void @lam37362(i64 %env37363, i64 %_9536335, i64 %o2Q$acc_43) {
  %envptr39407 = inttoptr i64 %env37363 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39408 = getelementptr inbounds i64, i64* %envptr39407, i64 4                ; &envptr39407[4]
  %NEE$f = load i64, i64* %envptr39408, align 8                                      ; load; *envptr39408
  %envptr39409 = inttoptr i64 %env37363 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39410 = getelementptr inbounds i64, i64* %envptr39409, i64 3                ; &envptr39409[3]
  %MQl$lsts_43 = load i64, i64* %envptr39410, align 8                                ; load; *envptr39410
  %envptr39411 = inttoptr i64 %env37363 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39412 = getelementptr inbounds i64, i64* %envptr39411, i64 2                ; &envptr39411[2]
  %r11$_37foldl = load i64, i64* %envptr39412, align 8                               ; load; *envptr39412
  %envptr39413 = inttoptr i64 %env37363 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39414 = getelementptr inbounds i64, i64* %envptr39413, i64 1                ; &envptr39413[1]
  %cont36328 = load i64, i64* %envptr39414, align 8                                  ; load; *envptr39414
  %a36138 = call i64 @prim_cons(i64 %o2Q$acc_43, i64 %MQl$lsts_43)                   ; call prim_cons
  %a36139 = call i64 @prim_cons(i64 %NEE$f, i64 %a36138)                             ; call prim_cons
  %cps_45lst36336 = call i64 @prim_cons(i64 %cont36328, i64 %a36139)                 ; call prim_cons
  %cloptr39415 = inttoptr i64 %r11$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39415)                                        ; assert function application
  %i0ptr39416 = getelementptr inbounds i64, i64* %cloptr39415, i64 0                 ; &cloptr39415[0]
  %f39418 = load i64, i64* %i0ptr39416, align 8                                      ; load; *i0ptr39416
  %fptr39417 = inttoptr i64 %f39418 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39417(i64 %r11$_37foldl, i64 %cps_45lst36336)       ; tail call
  ret void
}


define void @lam37360(i64 %env37361, i64 %cont36339, i64 %Tlp$a, i64 %Tg1$b) {
  %retprim36340 = call i64 @prim_cons(i64 %Tlp$a, i64 %Tg1$b)                        ; call prim_cons
  %arg37039 = add i64 0, 0                                                           ; quoted ()
  %cloptr39419 = inttoptr i64 %cont36339 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39419)                                        ; assert function application
  %i0ptr39420 = getelementptr inbounds i64, i64* %cloptr39419, i64 0                 ; &cloptr39419[0]
  %f39422 = load i64, i64* %i0ptr39420, align 8                                      ; load; *i0ptr39420
  %fptr39421 = inttoptr i64 %f39422 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39421(i64 %cont36339, i64 %arg37039, i64 %retprim36340); tail call
  ret void
}


define void @lam37357(i64 %env37358, i64 %cont36341, i64 %u8L$x) {
  %retprim36342 = call i64 @prim_car(i64 %u8L$x)                                     ; call prim_car
  %arg37043 = add i64 0, 0                                                           ; quoted ()
  %cloptr39423 = inttoptr i64 %cont36341 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39423)                                        ; assert function application
  %i0ptr39424 = getelementptr inbounds i64, i64* %cloptr39423, i64 0                 ; &cloptr39423[0]
  %f39426 = load i64, i64* %i0ptr39424, align 8                                      ; load; *i0ptr39424
  %fptr39425 = inttoptr i64 %f39426 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39425(i64 %cont36341, i64 %arg37043, i64 %retprim36342); tail call
  ret void
}


define void @lam37354(i64 %env37355, i64 %cont36343, i64 %CeM$x) {
  %retprim36344 = call i64 @prim_cdr(i64 %CeM$x)                                     ; call prim_cdr
  %arg37047 = add i64 0, 0                                                           ; quoted ()
  %cloptr39427 = inttoptr i64 %cont36343 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39427)                                        ; assert function application
  %i0ptr39428 = getelementptr inbounds i64, i64* %cloptr39427, i64 0                 ; &cloptr39427[0]
  %f39430 = load i64, i64* %i0ptr39428, align 8                                      ; load; *i0ptr39428
  %fptr39429 = inttoptr i64 %f39430 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39429(i64 %cont36343, i64 %arg37047, i64 %retprim36344); tail call
  ret void
}


define void @lam37350(i64 %env37351, i64 %cont36345, i64 %Pu6$lst, i64 %UAI$b) {
  %cmp39431 = icmp eq i64 %UAI$b, 15                                                 ; false?
  br i1 %cmp39431, label %else39433, label %then39432                                ; if

then39432:
  %arg37050 = add i64 0, 0                                                           ; quoted ()
  %cloptr39434 = inttoptr i64 %cont36345 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39434)                                        ; assert function application
  %i0ptr39435 = getelementptr inbounds i64, i64* %cloptr39434, i64 0                 ; &cloptr39434[0]
  %f39437 = load i64, i64* %i0ptr39435, align 8                                      ; load; *i0ptr39435
  %fptr39436 = inttoptr i64 %f39437 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39436(i64 %cont36345, i64 %arg37050, i64 %UAI$b)    ; tail call
  ret void

else39433:
  %retprim36346 = call i64 @prim_null_63(i64 %Pu6$lst)                               ; call prim_null_63
  %arg37054 = add i64 0, 0                                                           ; quoted ()
  %cloptr39438 = inttoptr i64 %cont36345 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39438)                                        ; assert function application
  %i0ptr39439 = getelementptr inbounds i64, i64* %cloptr39438, i64 0                 ; &cloptr39438[0]
  %f39441 = load i64, i64* %i0ptr39439, align 8                                      ; load; *i0ptr39439
  %fptr39440 = inttoptr i64 %f39441 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39440(i64 %cont36345, i64 %arg37054, i64 %retprim36346); tail call
  ret void
}


define void @lam37343(i64 %env37344, i64 %cont36349, i64 %UA7$_37foldr) {
  %envptr39442 = inttoptr i64 %env37344 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39443 = getelementptr inbounds i64, i64* %envptr39442, i64 2                ; &envptr39442[2]
  %aqf$_37map1 = load i64, i64* %envptr39443, align 8                                ; load; *envptr39443
  %envptr39444 = inttoptr i64 %env37344 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39445 = getelementptr inbounds i64, i64* %envptr39444, i64 1                ; &envptr39444[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39445, align 8                              ; load; *envptr39445
  %arg37057 = add i64 0, 0                                                           ; quoted ()
  %cloptr39446 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39448 = getelementptr inbounds i64, i64* %cloptr39446, i64 1                  ; &eptr39448[1]
  %eptr39449 = getelementptr inbounds i64, i64* %cloptr39446, i64 2                  ; &eptr39449[2]
  %eptr39450 = getelementptr inbounds i64, i64* %cloptr39446, i64 3                  ; &eptr39450[3]
  store i64 %ROr$_37foldr1, i64* %eptr39448                                          ; *eptr39448 = %ROr$_37foldr1
  store i64 %UA7$_37foldr, i64* %eptr39449                                           ; *eptr39449 = %UA7$_37foldr
  store i64 %aqf$_37map1, i64* %eptr39450                                            ; *eptr39450 = %aqf$_37map1
  %eptr39447 = getelementptr inbounds i64, i64* %cloptr39446, i64 0                  ; &cloptr39446[0]
  %f39451 = ptrtoint void(i64,i64)* @lam37340 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f39451, i64* %eptr39447                                                 ; store fptr
  %arg37056 = ptrtoint i64* %cloptr39446 to i64                                      ; closure cast; i64* -> i64
  %cloptr39452 = inttoptr i64 %cont36349 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39452)                                        ; assert function application
  %i0ptr39453 = getelementptr inbounds i64, i64* %cloptr39452, i64 0                 ; &cloptr39452[0]
  %f39455 = load i64, i64* %i0ptr39453, align 8                                      ; load; *i0ptr39453
  %fptr39454 = inttoptr i64 %f39455 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39454(i64 %cont36349, i64 %arg37057, i64 %arg37056) ; tail call
  ret void
}


define void @lam37340(i64 %env37341, i64 %pb6$args36351) {
  %envptr39456 = inttoptr i64 %env37341 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39457 = getelementptr inbounds i64, i64* %envptr39456, i64 3                ; &envptr39456[3]
  %aqf$_37map1 = load i64, i64* %envptr39457, align 8                                ; load; *envptr39457
  %envptr39458 = inttoptr i64 %env37341 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39459 = getelementptr inbounds i64, i64* %envptr39458, i64 2                ; &envptr39458[2]
  %UA7$_37foldr = load i64, i64* %envptr39459, align 8                               ; load; *envptr39459
  %envptr39460 = inttoptr i64 %env37341 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39461 = getelementptr inbounds i64, i64* %envptr39460, i64 1                ; &envptr39460[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39461, align 8                              ; load; *envptr39461
  %cont36350 = call i64 @prim_car(i64 %pb6$args36351)                                ; call prim_car
  %pb6$args = call i64 @prim_cdr(i64 %pb6$args36351)                                 ; call prim_cdr
  %HoR$f = call i64 @prim_car(i64 %pb6$args)                                         ; call prim_car
  %a36119 = call i64 @prim_cdr(i64 %pb6$args)                                        ; call prim_cdr
  %retprim36370 = call i64 @prim_car(i64 %a36119)                                    ; call prim_car
  %cloptr39462 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr39464 = getelementptr inbounds i64, i64* %cloptr39462, i64 1                  ; &eptr39464[1]
  %eptr39465 = getelementptr inbounds i64, i64* %cloptr39462, i64 2                  ; &eptr39465[2]
  %eptr39466 = getelementptr inbounds i64, i64* %cloptr39462, i64 3                  ; &eptr39466[3]
  %eptr39467 = getelementptr inbounds i64, i64* %cloptr39462, i64 4                  ; &eptr39467[4]
  %eptr39468 = getelementptr inbounds i64, i64* %cloptr39462, i64 5                  ; &eptr39468[5]
  %eptr39469 = getelementptr inbounds i64, i64* %cloptr39462, i64 6                  ; &eptr39469[6]
  store i64 %ROr$_37foldr1, i64* %eptr39464                                          ; *eptr39464 = %ROr$_37foldr1
  store i64 %UA7$_37foldr, i64* %eptr39465                                           ; *eptr39465 = %UA7$_37foldr
  store i64 %HoR$f, i64* %eptr39466                                                  ; *eptr39466 = %HoR$f
  store i64 %aqf$_37map1, i64* %eptr39467                                            ; *eptr39467 = %aqf$_37map1
  store i64 %pb6$args, i64* %eptr39468                                               ; *eptr39468 = %pb6$args
  store i64 %cont36350, i64* %eptr39469                                              ; *eptr39469 = %cont36350
  %eptr39463 = getelementptr inbounds i64, i64* %cloptr39462, i64 0                  ; &cloptr39462[0]
  %f39470 = ptrtoint void(i64,i64,i64)* @lam37338 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39470, i64* %eptr39463                                                 ; store fptr
  %arg37066 = ptrtoint i64* %cloptr39462 to i64                                      ; closure cast; i64* -> i64
  %arg37065 = add i64 0, 0                                                           ; quoted ()
  %cloptr39471 = inttoptr i64 %arg37066 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39471)                                        ; assert function application
  %i0ptr39472 = getelementptr inbounds i64, i64* %cloptr39471, i64 0                 ; &cloptr39471[0]
  %f39474 = load i64, i64* %i0ptr39472, align 8                                      ; load; *i0ptr39472
  %fptr39473 = inttoptr i64 %f39474 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39473(i64 %arg37066, i64 %arg37065, i64 %retprim36370); tail call
  ret void
}


define void @lam37338(i64 %env37339, i64 %_9536352, i64 %czv$acc) {
  %envptr39475 = inttoptr i64 %env37339 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39476 = getelementptr inbounds i64, i64* %envptr39475, i64 6                ; &envptr39475[6]
  %cont36350 = load i64, i64* %envptr39476, align 8                                  ; load; *envptr39476
  %envptr39477 = inttoptr i64 %env37339 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39478 = getelementptr inbounds i64, i64* %envptr39477, i64 5                ; &envptr39477[5]
  %pb6$args = load i64, i64* %envptr39478, align 8                                   ; load; *envptr39478
  %envptr39479 = inttoptr i64 %env37339 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39480 = getelementptr inbounds i64, i64* %envptr39479, i64 4                ; &envptr39479[4]
  %aqf$_37map1 = load i64, i64* %envptr39480, align 8                                ; load; *envptr39480
  %envptr39481 = inttoptr i64 %env37339 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39482 = getelementptr inbounds i64, i64* %envptr39481, i64 3                ; &envptr39481[3]
  %HoR$f = load i64, i64* %envptr39482, align 8                                      ; load; *envptr39482
  %envptr39483 = inttoptr i64 %env37339 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39484 = getelementptr inbounds i64, i64* %envptr39483, i64 2                ; &envptr39483[2]
  %UA7$_37foldr = load i64, i64* %envptr39484, align 8                               ; load; *envptr39484
  %envptr39485 = inttoptr i64 %env37339 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39486 = getelementptr inbounds i64, i64* %envptr39485, i64 1                ; &envptr39485[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39486, align 8                              ; load; *envptr39486
  %a36120 = call i64 @prim_cdr(i64 %pb6$args)                                        ; call prim_cdr
  %retprim36369 = call i64 @prim_cdr(i64 %a36120)                                    ; call prim_cdr
  %cloptr39487 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr39489 = getelementptr inbounds i64, i64* %cloptr39487, i64 1                  ; &eptr39489[1]
  %eptr39490 = getelementptr inbounds i64, i64* %cloptr39487, i64 2                  ; &eptr39490[2]
  %eptr39491 = getelementptr inbounds i64, i64* %cloptr39487, i64 3                  ; &eptr39491[3]
  %eptr39492 = getelementptr inbounds i64, i64* %cloptr39487, i64 4                  ; &eptr39492[4]
  %eptr39493 = getelementptr inbounds i64, i64* %cloptr39487, i64 5                  ; &eptr39493[5]
  %eptr39494 = getelementptr inbounds i64, i64* %cloptr39487, i64 6                  ; &eptr39494[6]
  store i64 %ROr$_37foldr1, i64* %eptr39489                                          ; *eptr39489 = %ROr$_37foldr1
  store i64 %UA7$_37foldr, i64* %eptr39490                                           ; *eptr39490 = %UA7$_37foldr
  store i64 %HoR$f, i64* %eptr39491                                                  ; *eptr39491 = %HoR$f
  store i64 %aqf$_37map1, i64* %eptr39492                                            ; *eptr39492 = %aqf$_37map1
  store i64 %czv$acc, i64* %eptr39493                                                ; *eptr39493 = %czv$acc
  store i64 %cont36350, i64* %eptr39494                                              ; *eptr39494 = %cont36350
  %eptr39488 = getelementptr inbounds i64, i64* %cloptr39487, i64 0                  ; &cloptr39487[0]
  %f39495 = ptrtoint void(i64,i64,i64)* @lam37336 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39495, i64* %eptr39488                                                 ; store fptr
  %arg37071 = ptrtoint i64* %cloptr39487 to i64                                      ; closure cast; i64* -> i64
  %arg37070 = add i64 0, 0                                                           ; quoted ()
  %cloptr39496 = inttoptr i64 %arg37071 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39496)                                        ; assert function application
  %i0ptr39497 = getelementptr inbounds i64, i64* %cloptr39496, i64 0                 ; &cloptr39496[0]
  %f39499 = load i64, i64* %i0ptr39497, align 8                                      ; load; *i0ptr39497
  %fptr39498 = inttoptr i64 %f39499 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39498(i64 %arg37071, i64 %arg37070, i64 %retprim36369); tail call
  ret void
}


define void @lam37336(i64 %env37337, i64 %_9536353, i64 %h31$lsts) {
  %envptr39500 = inttoptr i64 %env37337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39501 = getelementptr inbounds i64, i64* %envptr39500, i64 6                ; &envptr39500[6]
  %cont36350 = load i64, i64* %envptr39501, align 8                                  ; load; *envptr39501
  %envptr39502 = inttoptr i64 %env37337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39503 = getelementptr inbounds i64, i64* %envptr39502, i64 5                ; &envptr39502[5]
  %czv$acc = load i64, i64* %envptr39503, align 8                                    ; load; *envptr39503
  %envptr39504 = inttoptr i64 %env37337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39505 = getelementptr inbounds i64, i64* %envptr39504, i64 4                ; &envptr39504[4]
  %aqf$_37map1 = load i64, i64* %envptr39505, align 8                                ; load; *envptr39505
  %envptr39506 = inttoptr i64 %env37337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39507 = getelementptr inbounds i64, i64* %envptr39506, i64 3                ; &envptr39506[3]
  %HoR$f = load i64, i64* %envptr39507, align 8                                      ; load; *envptr39507
  %envptr39508 = inttoptr i64 %env37337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39509 = getelementptr inbounds i64, i64* %envptr39508, i64 2                ; &envptr39508[2]
  %UA7$_37foldr = load i64, i64* %envptr39509, align 8                               ; load; *envptr39509
  %envptr39510 = inttoptr i64 %env37337 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39511 = getelementptr inbounds i64, i64* %envptr39510, i64 1                ; &envptr39510[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39511, align 8                              ; load; *envptr39511
  %cloptr39512 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr39514 = getelementptr inbounds i64, i64* %cloptr39512, i64 1                  ; &eptr39514[1]
  %eptr39515 = getelementptr inbounds i64, i64* %cloptr39512, i64 2                  ; &eptr39515[2]
  %eptr39516 = getelementptr inbounds i64, i64* %cloptr39512, i64 3                  ; &eptr39516[3]
  %eptr39517 = getelementptr inbounds i64, i64* %cloptr39512, i64 4                  ; &eptr39517[4]
  %eptr39518 = getelementptr inbounds i64, i64* %cloptr39512, i64 5                  ; &eptr39518[5]
  %eptr39519 = getelementptr inbounds i64, i64* %cloptr39512, i64 6                  ; &eptr39519[6]
  %eptr39520 = getelementptr inbounds i64, i64* %cloptr39512, i64 7                  ; &eptr39520[7]
  store i64 %ROr$_37foldr1, i64* %eptr39514                                          ; *eptr39514 = %ROr$_37foldr1
  store i64 %UA7$_37foldr, i64* %eptr39515                                           ; *eptr39515 = %UA7$_37foldr
  store i64 %HoR$f, i64* %eptr39516                                                  ; *eptr39516 = %HoR$f
  store i64 %h31$lsts, i64* %eptr39517                                               ; *eptr39517 = %h31$lsts
  store i64 %aqf$_37map1, i64* %eptr39518                                            ; *eptr39518 = %aqf$_37map1
  store i64 %czv$acc, i64* %eptr39519                                                ; *eptr39519 = %czv$acc
  store i64 %cont36350, i64* %eptr39520                                              ; *eptr39520 = %cont36350
  %eptr39513 = getelementptr inbounds i64, i64* %cloptr39512, i64 0                  ; &cloptr39512[0]
  %f39521 = ptrtoint void(i64,i64,i64)* @lam37334 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39521, i64* %eptr39513                                                 ; store fptr
  %arg37075 = ptrtoint i64* %cloptr39512 to i64                                      ; closure cast; i64* -> i64
  %cloptr39522 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39523 = getelementptr inbounds i64, i64* %cloptr39522, i64 0                  ; &cloptr39522[0]
  %f39524 = ptrtoint void(i64,i64,i64,i64)* @lam37313 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f39524, i64* %eptr39523                                                 ; store fptr
  %arg37074 = ptrtoint i64* %cloptr39522 to i64                                      ; closure cast; i64* -> i64
  %arg37073 = call i64 @const_init_false()                                           ; quoted #f
  %cloptr39525 = inttoptr i64 %ROr$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39525)                                        ; assert function application
  %i0ptr39526 = getelementptr inbounds i64, i64* %cloptr39525, i64 0                 ; &cloptr39525[0]
  %f39528 = load i64, i64* %i0ptr39526, align 8                                      ; load; *i0ptr39526
  %fptr39527 = inttoptr i64 %f39528 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39527(i64 %ROr$_37foldr1, i64 %arg37075, i64 %arg37074, i64 %arg37073, i64 %h31$lsts); tail call
  ret void
}


define void @lam37334(i64 %env37335, i64 %_9536354, i64 %a36121) {
  %envptr39529 = inttoptr i64 %env37335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39530 = getelementptr inbounds i64, i64* %envptr39529, i64 7                ; &envptr39529[7]
  %cont36350 = load i64, i64* %envptr39530, align 8                                  ; load; *envptr39530
  %envptr39531 = inttoptr i64 %env37335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39532 = getelementptr inbounds i64, i64* %envptr39531, i64 6                ; &envptr39531[6]
  %czv$acc = load i64, i64* %envptr39532, align 8                                    ; load; *envptr39532
  %envptr39533 = inttoptr i64 %env37335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39534 = getelementptr inbounds i64, i64* %envptr39533, i64 5                ; &envptr39533[5]
  %aqf$_37map1 = load i64, i64* %envptr39534, align 8                                ; load; *envptr39534
  %envptr39535 = inttoptr i64 %env37335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39536 = getelementptr inbounds i64, i64* %envptr39535, i64 4                ; &envptr39535[4]
  %h31$lsts = load i64, i64* %envptr39536, align 8                                   ; load; *envptr39536
  %envptr39537 = inttoptr i64 %env37335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39538 = getelementptr inbounds i64, i64* %envptr39537, i64 3                ; &envptr39537[3]
  %HoR$f = load i64, i64* %envptr39538, align 8                                      ; load; *envptr39538
  %envptr39539 = inttoptr i64 %env37335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39540 = getelementptr inbounds i64, i64* %envptr39539, i64 2                ; &envptr39539[2]
  %UA7$_37foldr = load i64, i64* %envptr39540, align 8                               ; load; *envptr39540
  %envptr39541 = inttoptr i64 %env37335 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39542 = getelementptr inbounds i64, i64* %envptr39541, i64 1                ; &envptr39541[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39542, align 8                              ; load; *envptr39542
  %cmp39543 = icmp eq i64 %a36121, 15                                                ; false?
  br i1 %cmp39543, label %else39545, label %then39544                                ; if

then39544:
  %arg37078 = add i64 0, 0                                                           ; quoted ()
  %cloptr39546 = inttoptr i64 %cont36350 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39546)                                        ; assert function application
  %i0ptr39547 = getelementptr inbounds i64, i64* %cloptr39546, i64 0                 ; &cloptr39546[0]
  %f39549 = load i64, i64* %i0ptr39547, align 8                                      ; load; *i0ptr39547
  %fptr39548 = inttoptr i64 %f39549 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39548(i64 %cont36350, i64 %arg37078, i64 %czv$acc)  ; tail call
  ret void

else39545:
  %cloptr39550 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr39552 = getelementptr inbounds i64, i64* %cloptr39550, i64 1                  ; &eptr39552[1]
  %eptr39553 = getelementptr inbounds i64, i64* %cloptr39550, i64 2                  ; &eptr39553[2]
  %eptr39554 = getelementptr inbounds i64, i64* %cloptr39550, i64 3                  ; &eptr39554[3]
  %eptr39555 = getelementptr inbounds i64, i64* %cloptr39550, i64 4                  ; &eptr39555[4]
  %eptr39556 = getelementptr inbounds i64, i64* %cloptr39550, i64 5                  ; &eptr39556[5]
  %eptr39557 = getelementptr inbounds i64, i64* %cloptr39550, i64 6                  ; &eptr39557[6]
  %eptr39558 = getelementptr inbounds i64, i64* %cloptr39550, i64 7                  ; &eptr39558[7]
  store i64 %ROr$_37foldr1, i64* %eptr39552                                          ; *eptr39552 = %ROr$_37foldr1
  store i64 %UA7$_37foldr, i64* %eptr39553                                           ; *eptr39553 = %UA7$_37foldr
  store i64 %HoR$f, i64* %eptr39554                                                  ; *eptr39554 = %HoR$f
  store i64 %h31$lsts, i64* %eptr39555                                               ; *eptr39555 = %h31$lsts
  store i64 %aqf$_37map1, i64* %eptr39556                                            ; *eptr39556 = %aqf$_37map1
  store i64 %czv$acc, i64* %eptr39557                                                ; *eptr39557 = %czv$acc
  store i64 %cont36350, i64* %eptr39558                                              ; *eptr39558 = %cont36350
  %eptr39551 = getelementptr inbounds i64, i64* %cloptr39550, i64 0                  ; &cloptr39550[0]
  %f39559 = ptrtoint void(i64,i64,i64)* @lam37332 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39559, i64* %eptr39551                                                 ; store fptr
  %arg37082 = ptrtoint i64* %cloptr39550 to i64                                      ; closure cast; i64* -> i64
  %cloptr39560 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39561 = getelementptr inbounds i64, i64* %cloptr39560, i64 0                  ; &cloptr39560[0]
  %f39562 = ptrtoint void(i64,i64,i64)* @lam37317 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39562, i64* %eptr39561                                                 ; store fptr
  %arg37081 = ptrtoint i64* %cloptr39560 to i64                                      ; closure cast; i64* -> i64
  %cloptr39563 = inttoptr i64 %aqf$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39563)                                        ; assert function application
  %i0ptr39564 = getelementptr inbounds i64, i64* %cloptr39563, i64 0                 ; &cloptr39563[0]
  %f39566 = load i64, i64* %i0ptr39564, align 8                                      ; load; *i0ptr39564
  %fptr39565 = inttoptr i64 %f39566 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39565(i64 %aqf$_37map1, i64 %arg37082, i64 %arg37081, i64 %h31$lsts); tail call
  ret void
}


define void @lam37332(i64 %env37333, i64 %_9536355, i64 %fAF$lsts_43) {
  %envptr39567 = inttoptr i64 %env37333 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39568 = getelementptr inbounds i64, i64* %envptr39567, i64 7                ; &envptr39567[7]
  %cont36350 = load i64, i64* %envptr39568, align 8                                  ; load; *envptr39568
  %envptr39569 = inttoptr i64 %env37333 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39570 = getelementptr inbounds i64, i64* %envptr39569, i64 6                ; &envptr39569[6]
  %czv$acc = load i64, i64* %envptr39570, align 8                                    ; load; *envptr39570
  %envptr39571 = inttoptr i64 %env37333 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39572 = getelementptr inbounds i64, i64* %envptr39571, i64 5                ; &envptr39571[5]
  %aqf$_37map1 = load i64, i64* %envptr39572, align 8                                ; load; *envptr39572
  %envptr39573 = inttoptr i64 %env37333 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39574 = getelementptr inbounds i64, i64* %envptr39573, i64 4                ; &envptr39573[4]
  %h31$lsts = load i64, i64* %envptr39574, align 8                                   ; load; *envptr39574
  %envptr39575 = inttoptr i64 %env37333 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39576 = getelementptr inbounds i64, i64* %envptr39575, i64 3                ; &envptr39575[3]
  %HoR$f = load i64, i64* %envptr39576, align 8                                      ; load; *envptr39576
  %envptr39577 = inttoptr i64 %env37333 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39578 = getelementptr inbounds i64, i64* %envptr39577, i64 2                ; &envptr39577[2]
  %UA7$_37foldr = load i64, i64* %envptr39578, align 8                               ; load; *envptr39578
  %envptr39579 = inttoptr i64 %env37333 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39580 = getelementptr inbounds i64, i64* %envptr39579, i64 1                ; &envptr39579[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39580, align 8                              ; load; *envptr39580
  %cloptr39581 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr39583 = getelementptr inbounds i64, i64* %cloptr39581, i64 1                  ; &eptr39583[1]
  %eptr39584 = getelementptr inbounds i64, i64* %cloptr39581, i64 2                  ; &eptr39584[2]
  %eptr39585 = getelementptr inbounds i64, i64* %cloptr39581, i64 3                  ; &eptr39585[3]
  %eptr39586 = getelementptr inbounds i64, i64* %cloptr39581, i64 4                  ; &eptr39586[4]
  %eptr39587 = getelementptr inbounds i64, i64* %cloptr39581, i64 5                  ; &eptr39587[5]
  %eptr39588 = getelementptr inbounds i64, i64* %cloptr39581, i64 6                  ; &eptr39588[6]
  store i64 %ROr$_37foldr1, i64* %eptr39583                                          ; *eptr39583 = %ROr$_37foldr1
  store i64 %UA7$_37foldr, i64* %eptr39584                                           ; *eptr39584 = %UA7$_37foldr
  store i64 %HoR$f, i64* %eptr39585                                                  ; *eptr39585 = %HoR$f
  store i64 %fAF$lsts_43, i64* %eptr39586                                            ; *eptr39586 = %fAF$lsts_43
  store i64 %czv$acc, i64* %eptr39587                                                ; *eptr39587 = %czv$acc
  store i64 %cont36350, i64* %eptr39588                                              ; *eptr39588 = %cont36350
  %eptr39582 = getelementptr inbounds i64, i64* %cloptr39581, i64 0                  ; &cloptr39581[0]
  %f39589 = ptrtoint void(i64,i64,i64)* @lam37330 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39589, i64* %eptr39582                                                 ; store fptr
  %arg37086 = ptrtoint i64* %cloptr39581 to i64                                      ; closure cast; i64* -> i64
  %cloptr39590 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39591 = getelementptr inbounds i64, i64* %cloptr39590, i64 0                  ; &cloptr39590[0]
  %f39592 = ptrtoint void(i64,i64,i64)* @lam37320 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39592, i64* %eptr39591                                                 ; store fptr
  %arg37085 = ptrtoint i64* %cloptr39590 to i64                                      ; closure cast; i64* -> i64
  %cloptr39593 = inttoptr i64 %aqf$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39593)                                        ; assert function application
  %i0ptr39594 = getelementptr inbounds i64, i64* %cloptr39593, i64 0                 ; &cloptr39593[0]
  %f39596 = load i64, i64* %i0ptr39594, align 8                                      ; load; *i0ptr39594
  %fptr39595 = inttoptr i64 %f39596 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39595(i64 %aqf$_37map1, i64 %arg37086, i64 %arg37085, i64 %h31$lsts); tail call
  ret void
}


define void @lam37330(i64 %env37331, i64 %_9536356, i64 %bTB$vs) {
  %envptr39597 = inttoptr i64 %env37331 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39598 = getelementptr inbounds i64, i64* %envptr39597, i64 6                ; &envptr39597[6]
  %cont36350 = load i64, i64* %envptr39598, align 8                                  ; load; *envptr39598
  %envptr39599 = inttoptr i64 %env37331 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39600 = getelementptr inbounds i64, i64* %envptr39599, i64 5                ; &envptr39599[5]
  %czv$acc = load i64, i64* %envptr39600, align 8                                    ; load; *envptr39600
  %envptr39601 = inttoptr i64 %env37331 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39602 = getelementptr inbounds i64, i64* %envptr39601, i64 4                ; &envptr39601[4]
  %fAF$lsts_43 = load i64, i64* %envptr39602, align 8                                ; load; *envptr39602
  %envptr39603 = inttoptr i64 %env37331 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39604 = getelementptr inbounds i64, i64* %envptr39603, i64 3                ; &envptr39603[3]
  %HoR$f = load i64, i64* %envptr39604, align 8                                      ; load; *envptr39604
  %envptr39605 = inttoptr i64 %env37331 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39606 = getelementptr inbounds i64, i64* %envptr39605, i64 2                ; &envptr39605[2]
  %UA7$_37foldr = load i64, i64* %envptr39606, align 8                               ; load; *envptr39606
  %envptr39607 = inttoptr i64 %env37331 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39608 = getelementptr inbounds i64, i64* %envptr39607, i64 1                ; &envptr39607[1]
  %ROr$_37foldr1 = load i64, i64* %envptr39608, align 8                              ; load; *envptr39608
  %a36122 = call i64 @prim_cons(i64 %czv$acc, i64 %fAF$lsts_43)                      ; call prim_cons
  %a36123 = call i64 @prim_cons(i64 %HoR$f, i64 %a36122)                             ; call prim_cons
  %cloptr39609 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39611 = getelementptr inbounds i64, i64* %cloptr39609, i64 1                  ; &eptr39611[1]
  %eptr39612 = getelementptr inbounds i64, i64* %cloptr39609, i64 2                  ; &eptr39612[2]
  %eptr39613 = getelementptr inbounds i64, i64* %cloptr39609, i64 3                  ; &eptr39613[3]
  %eptr39614 = getelementptr inbounds i64, i64* %cloptr39609, i64 4                  ; &eptr39614[4]
  store i64 %bTB$vs, i64* %eptr39611                                                 ; *eptr39611 = %bTB$vs
  store i64 %ROr$_37foldr1, i64* %eptr39612                                          ; *eptr39612 = %ROr$_37foldr1
  store i64 %HoR$f, i64* %eptr39613                                                  ; *eptr39613 = %HoR$f
  store i64 %cont36350, i64* %eptr39614                                              ; *eptr39614 = %cont36350
  %eptr39610 = getelementptr inbounds i64, i64* %cloptr39609, i64 0                  ; &cloptr39609[0]
  %f39615 = ptrtoint void(i64,i64,i64)* @lam37328 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39615, i64* %eptr39610                                                 ; store fptr
  %arg37093 = ptrtoint i64* %cloptr39609 to i64                                      ; closure cast; i64* -> i64
  %cps_45lst36362 = call i64 @prim_cons(i64 %arg37093, i64 %a36123)                  ; call prim_cons
  %cloptr39616 = inttoptr i64 %UA7$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39616)                                        ; assert function application
  %i0ptr39617 = getelementptr inbounds i64, i64* %cloptr39616, i64 0                 ; &cloptr39616[0]
  %f39619 = load i64, i64* %i0ptr39617, align 8                                      ; load; *i0ptr39617
  %fptr39618 = inttoptr i64 %f39619 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39618(i64 %UA7$_37foldr, i64 %cps_45lst36362)       ; tail call
  ret void
}


define void @lam37328(i64 %env37329, i64 %_9536357, i64 %a36124) {
  %envptr39620 = inttoptr i64 %env37329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39621 = getelementptr inbounds i64, i64* %envptr39620, i64 4                ; &envptr39620[4]
  %cont36350 = load i64, i64* %envptr39621, align 8                                  ; load; *envptr39621
  %envptr39622 = inttoptr i64 %env37329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39623 = getelementptr inbounds i64, i64* %envptr39622, i64 3                ; &envptr39622[3]
  %HoR$f = load i64, i64* %envptr39623, align 8                                      ; load; *envptr39623
  %envptr39624 = inttoptr i64 %env37329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39625 = getelementptr inbounds i64, i64* %envptr39624, i64 2                ; &envptr39624[2]
  %ROr$_37foldr1 = load i64, i64* %envptr39625, align 8                              ; load; *envptr39625
  %envptr39626 = inttoptr i64 %env37329 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39627 = getelementptr inbounds i64, i64* %envptr39626, i64 1                ; &envptr39626[1]
  %bTB$vs = load i64, i64* %envptr39627, align 8                                     ; load; *envptr39627
  %arg37094 = add i64 0, 0                                                           ; quoted ()
  %a36125 = call i64 @prim_cons(i64 %a36124, i64 %arg37094)                          ; call prim_cons
  %cloptr39628 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr39630 = getelementptr inbounds i64, i64* %cloptr39628, i64 1                  ; &eptr39630[1]
  %eptr39631 = getelementptr inbounds i64, i64* %cloptr39628, i64 2                  ; &eptr39631[2]
  store i64 %HoR$f, i64* %eptr39630                                                  ; *eptr39630 = %HoR$f
  store i64 %cont36350, i64* %eptr39631                                              ; *eptr39631 = %cont36350
  %eptr39629 = getelementptr inbounds i64, i64* %cloptr39628, i64 0                  ; &cloptr39628[0]
  %f39632 = ptrtoint void(i64,i64,i64)* @lam37325 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39632, i64* %eptr39629                                                 ; store fptr
  %arg37099 = ptrtoint i64* %cloptr39628 to i64                                      ; closure cast; i64* -> i64
  %cloptr39633 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr39634 = getelementptr inbounds i64, i64* %cloptr39633, i64 0                  ; &cloptr39633[0]
  %f39635 = ptrtoint void(i64,i64,i64,i64)* @lam37323 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f39635, i64* %eptr39634                                                 ; store fptr
  %arg37098 = ptrtoint i64* %cloptr39633 to i64                                      ; closure cast; i64* -> i64
  %cloptr39636 = inttoptr i64 %ROr$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39636)                                        ; assert function application
  %i0ptr39637 = getelementptr inbounds i64, i64* %cloptr39636, i64 0                 ; &cloptr39636[0]
  %f39639 = load i64, i64* %i0ptr39637, align 8                                      ; load; *i0ptr39637
  %fptr39638 = inttoptr i64 %f39639 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39638(i64 %ROr$_37foldr1, i64 %arg37099, i64 %arg37098, i64 %a36125, i64 %bTB$vs); tail call
  ret void
}


define void @lam37325(i64 %env37326, i64 %_9536358, i64 %a36126) {
  %envptr39640 = inttoptr i64 %env37326 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39641 = getelementptr inbounds i64, i64* %envptr39640, i64 2                ; &envptr39640[2]
  %cont36350 = load i64, i64* %envptr39641, align 8                                  ; load; *envptr39641
  %envptr39642 = inttoptr i64 %env37326 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39643 = getelementptr inbounds i64, i64* %envptr39642, i64 1                ; &envptr39642[1]
  %HoR$f = load i64, i64* %envptr39643, align 8                                      ; load; *envptr39643
  %cps_45lst36359 = call i64 @prim_cons(i64 %cont36350, i64 %a36126)                 ; call prim_cons
  %cloptr39644 = inttoptr i64 %HoR$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39644)                                        ; assert function application
  %i0ptr39645 = getelementptr inbounds i64, i64* %cloptr39644, i64 0                 ; &cloptr39644[0]
  %f39647 = load i64, i64* %i0ptr39645, align 8                                      ; load; *i0ptr39645
  %fptr39646 = inttoptr i64 %f39647 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39646(i64 %HoR$f, i64 %cps_45lst36359)              ; tail call
  ret void
}


define void @lam37323(i64 %env37324, i64 %cont36360, i64 %t0M$a, i64 %vB9$b) {
  %retprim36361 = call i64 @prim_cons(i64 %t0M$a, i64 %vB9$b)                        ; call prim_cons
  %arg37106 = add i64 0, 0                                                           ; quoted ()
  %cloptr39648 = inttoptr i64 %cont36360 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39648)                                        ; assert function application
  %i0ptr39649 = getelementptr inbounds i64, i64* %cloptr39648, i64 0                 ; &cloptr39648[0]
  %f39651 = load i64, i64* %i0ptr39649, align 8                                      ; load; *i0ptr39649
  %fptr39650 = inttoptr i64 %f39651 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39650(i64 %cont36360, i64 %arg37106, i64 %retprim36361); tail call
  ret void
}


define void @lam37320(i64 %env37321, i64 %cont36363, i64 %Ln7$x) {
  %retprim36364 = call i64 @prim_car(i64 %Ln7$x)                                     ; call prim_car
  %arg37110 = add i64 0, 0                                                           ; quoted ()
  %cloptr39652 = inttoptr i64 %cont36363 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39652)                                        ; assert function application
  %i0ptr39653 = getelementptr inbounds i64, i64* %cloptr39652, i64 0                 ; &cloptr39652[0]
  %f39655 = load i64, i64* %i0ptr39653, align 8                                      ; load; *i0ptr39653
  %fptr39654 = inttoptr i64 %f39655 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39654(i64 %cont36363, i64 %arg37110, i64 %retprim36364); tail call
  ret void
}


define void @lam37317(i64 %env37318, i64 %cont36365, i64 %ieX$x) {
  %retprim36366 = call i64 @prim_cdr(i64 %ieX$x)                                     ; call prim_cdr
  %arg37114 = add i64 0, 0                                                           ; quoted ()
  %cloptr39656 = inttoptr i64 %cont36365 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39656)                                        ; assert function application
  %i0ptr39657 = getelementptr inbounds i64, i64* %cloptr39656, i64 0                 ; &cloptr39656[0]
  %f39659 = load i64, i64* %i0ptr39657, align 8                                      ; load; *i0ptr39657
  %fptr39658 = inttoptr i64 %f39659 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39658(i64 %cont36365, i64 %arg37114, i64 %retprim36366); tail call
  ret void
}


define void @lam37313(i64 %env37314, i64 %cont36367, i64 %rQ1$lst, i64 %Csf$b) {
  %cmp39660 = icmp eq i64 %Csf$b, 15                                                 ; false?
  br i1 %cmp39660, label %else39662, label %then39661                                ; if

then39661:
  %arg37117 = add i64 0, 0                                                           ; quoted ()
  %cloptr39663 = inttoptr i64 %cont36367 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39663)                                        ; assert function application
  %i0ptr39664 = getelementptr inbounds i64, i64* %cloptr39663, i64 0                 ; &cloptr39663[0]
  %f39666 = load i64, i64* %i0ptr39664, align 8                                      ; load; *i0ptr39664
  %fptr39665 = inttoptr i64 %f39666 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39665(i64 %cont36367, i64 %arg37117, i64 %Csf$b)    ; tail call
  ret void

else39662:
  %retprim36368 = call i64 @prim_null_63(i64 %rQ1$lst)                               ; call prim_null_63
  %arg37121 = add i64 0, 0                                                           ; quoted ()
  %cloptr39667 = inttoptr i64 %cont36367 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39667)                                        ; assert function application
  %i0ptr39668 = getelementptr inbounds i64, i64* %cloptr39667, i64 0                 ; &cloptr39667[0]
  %f39670 = load i64, i64* %i0ptr39668, align 8                                      ; load; *i0ptr39668
  %fptr39669 = inttoptr i64 %f39670 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39669(i64 %cont36367, i64 %arg37121, i64 %retprim36368); tail call
  ret void
}


define void @lam37306(i64 %env37307, i64 %cont36371, i64 %S2X$_37foldl1) {
  %arg37124 = add i64 0, 0                                                           ; quoted ()
  %cloptr39671 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr39673 = getelementptr inbounds i64, i64* %cloptr39671, i64 1                  ; &eptr39673[1]
  store i64 %S2X$_37foldl1, i64* %eptr39673                                          ; *eptr39673 = %S2X$_37foldl1
  %eptr39672 = getelementptr inbounds i64, i64* %cloptr39671, i64 0                  ; &cloptr39671[0]
  %f39674 = ptrtoint void(i64,i64,i64,i64,i64)* @lam37303 to i64                     ; fptr cast; i64(...)* -> i64
  store i64 %f39674, i64* %eptr39672                                                 ; store fptr
  %arg37123 = ptrtoint i64* %cloptr39671 to i64                                      ; closure cast; i64* -> i64
  %cloptr39675 = inttoptr i64 %cont36371 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39675)                                        ; assert function application
  %i0ptr39676 = getelementptr inbounds i64, i64* %cloptr39675, i64 0                 ; &cloptr39675[0]
  %f39678 = load i64, i64* %i0ptr39676, align 8                                      ; load; *i0ptr39676
  %fptr39677 = inttoptr i64 %f39678 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39677(i64 %cont36371, i64 %arg37124, i64 %arg37123) ; tail call
  ret void
}


define void @lam37303(i64 %env37304, i64 %cont36372, i64 %FVn$f, i64 %rsg$acc, i64 %Ou9$lst) {
  %envptr39679 = inttoptr i64 %env37304 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39680 = getelementptr inbounds i64, i64* %envptr39679, i64 1                ; &envptr39679[1]
  %S2X$_37foldl1 = load i64, i64* %envptr39680, align 8                              ; load; *envptr39680
  %a36113 = call i64 @prim_null_63(i64 %Ou9$lst)                                     ; call prim_null_63
  %cmp39681 = icmp eq i64 %a36113, 15                                                ; false?
  br i1 %cmp39681, label %else39683, label %then39682                                ; if

then39682:
  %arg37128 = add i64 0, 0                                                           ; quoted ()
  %cloptr39684 = inttoptr i64 %cont36372 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39684)                                        ; assert function application
  %i0ptr39685 = getelementptr inbounds i64, i64* %cloptr39684, i64 0                 ; &cloptr39684[0]
  %f39687 = load i64, i64* %i0ptr39685, align 8                                      ; load; *i0ptr39685
  %fptr39686 = inttoptr i64 %f39687 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39686(i64 %cont36372, i64 %arg37128, i64 %rsg$acc)  ; tail call
  ret void

else39683:
  %a36114 = call i64 @prim_car(i64 %Ou9$lst)                                         ; call prim_car
  %cloptr39688 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39690 = getelementptr inbounds i64, i64* %cloptr39688, i64 1                  ; &eptr39690[1]
  %eptr39691 = getelementptr inbounds i64, i64* %cloptr39688, i64 2                  ; &eptr39691[2]
  %eptr39692 = getelementptr inbounds i64, i64* %cloptr39688, i64 3                  ; &eptr39692[3]
  %eptr39693 = getelementptr inbounds i64, i64* %cloptr39688, i64 4                  ; &eptr39693[4]
  store i64 %S2X$_37foldl1, i64* %eptr39690                                          ; *eptr39690 = %S2X$_37foldl1
  store i64 %FVn$f, i64* %eptr39691                                                  ; *eptr39691 = %FVn$f
  store i64 %Ou9$lst, i64* %eptr39692                                                ; *eptr39692 = %Ou9$lst
  store i64 %cont36372, i64* %eptr39693                                              ; *eptr39693 = %cont36372
  %eptr39689 = getelementptr inbounds i64, i64* %cloptr39688, i64 0                  ; &cloptr39688[0]
  %f39694 = ptrtoint void(i64,i64,i64)* @lam37301 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39694, i64* %eptr39689                                                 ; store fptr
  %arg37133 = ptrtoint i64* %cloptr39688 to i64                                      ; closure cast; i64* -> i64
  %cloptr39695 = inttoptr i64 %FVn$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39695)                                        ; assert function application
  %i0ptr39696 = getelementptr inbounds i64, i64* %cloptr39695, i64 0                 ; &cloptr39695[0]
  %f39698 = load i64, i64* %i0ptr39696, align 8                                      ; load; *i0ptr39696
  %fptr39697 = inttoptr i64 %f39698 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39697(i64 %FVn$f, i64 %arg37133, i64 %a36114, i64 %rsg$acc); tail call
  ret void
}


define void @lam37301(i64 %env37302, i64 %_9536373, i64 %a36115) {
  %envptr39699 = inttoptr i64 %env37302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39700 = getelementptr inbounds i64, i64* %envptr39699, i64 4                ; &envptr39699[4]
  %cont36372 = load i64, i64* %envptr39700, align 8                                  ; load; *envptr39700
  %envptr39701 = inttoptr i64 %env37302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39702 = getelementptr inbounds i64, i64* %envptr39701, i64 3                ; &envptr39701[3]
  %Ou9$lst = load i64, i64* %envptr39702, align 8                                    ; load; *envptr39702
  %envptr39703 = inttoptr i64 %env37302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39704 = getelementptr inbounds i64, i64* %envptr39703, i64 2                ; &envptr39703[2]
  %FVn$f = load i64, i64* %envptr39704, align 8                                      ; load; *envptr39704
  %envptr39705 = inttoptr i64 %env37302 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39706 = getelementptr inbounds i64, i64* %envptr39705, i64 1                ; &envptr39705[1]
  %S2X$_37foldl1 = load i64, i64* %envptr39706, align 8                              ; load; *envptr39706
  %a36116 = call i64 @prim_cdr(i64 %Ou9$lst)                                         ; call prim_cdr
  %cloptr39707 = inttoptr i64 %S2X$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39707)                                        ; assert function application
  %i0ptr39708 = getelementptr inbounds i64, i64* %cloptr39707, i64 0                 ; &cloptr39707[0]
  %f39710 = load i64, i64* %i0ptr39708, align 8                                      ; load; *i0ptr39708
  %fptr39709 = inttoptr i64 %f39710 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39709(i64 %S2X$_37foldl1, i64 %cont36372, i64 %FVn$f, i64 %a36115, i64 %a36116); tail call
  ret void
}


define void @lam37298(i64 %env37299, i64 %cont36374, i64 %gP5$_37length) {
  %arg37142 = add i64 0, 0                                                           ; quoted ()
  %cloptr39711 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr39713 = getelementptr inbounds i64, i64* %cloptr39711, i64 1                  ; &eptr39713[1]
  store i64 %gP5$_37length, i64* %eptr39713                                          ; *eptr39713 = %gP5$_37length
  %eptr39712 = getelementptr inbounds i64, i64* %cloptr39711, i64 0                  ; &cloptr39711[0]
  %f39714 = ptrtoint void(i64,i64,i64)* @lam37295 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39714, i64* %eptr39712                                                 ; store fptr
  %arg37141 = ptrtoint i64* %cloptr39711 to i64                                      ; closure cast; i64* -> i64
  %cloptr39715 = inttoptr i64 %cont36374 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39715)                                        ; assert function application
  %i0ptr39716 = getelementptr inbounds i64, i64* %cloptr39715, i64 0                 ; &cloptr39715[0]
  %f39718 = load i64, i64* %i0ptr39716, align 8                                      ; load; *i0ptr39716
  %fptr39717 = inttoptr i64 %f39718 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39717(i64 %cont36374, i64 %arg37142, i64 %arg37141) ; tail call
  ret void
}


define void @lam37295(i64 %env37296, i64 %cont36375, i64 %qDi$lst) {
  %envptr39719 = inttoptr i64 %env37296 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39720 = getelementptr inbounds i64, i64* %envptr39719, i64 1                ; &envptr39719[1]
  %gP5$_37length = load i64, i64* %envptr39720, align 8                              ; load; *envptr39720
  %a36110 = call i64 @prim_null_63(i64 %qDi$lst)                                     ; call prim_null_63
  %cmp39721 = icmp eq i64 %a36110, 15                                                ; false?
  br i1 %cmp39721, label %else39723, label %then39722                                ; if

then39722:
  %arg37146 = add i64 0, 0                                                           ; quoted ()
  %arg37145 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %cloptr39724 = inttoptr i64 %cont36375 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39724)                                        ; assert function application
  %i0ptr39725 = getelementptr inbounds i64, i64* %cloptr39724, i64 0                 ; &cloptr39724[0]
  %f39727 = load i64, i64* %i0ptr39725, align 8                                      ; load; *i0ptr39725
  %fptr39726 = inttoptr i64 %f39727 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39726(i64 %cont36375, i64 %arg37146, i64 %arg37145) ; tail call
  ret void

else39723:
  %a36111 = call i64 @prim_cdr(i64 %qDi$lst)                                         ; call prim_cdr
  %cloptr39728 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr39730 = getelementptr inbounds i64, i64* %cloptr39728, i64 1                  ; &eptr39730[1]
  store i64 %cont36375, i64* %eptr39730                                              ; *eptr39730 = %cont36375
  %eptr39729 = getelementptr inbounds i64, i64* %cloptr39728, i64 0                  ; &cloptr39728[0]
  %f39731 = ptrtoint void(i64,i64,i64)* @lam37293 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39731, i64* %eptr39729                                                 ; store fptr
  %arg37150 = ptrtoint i64* %cloptr39728 to i64                                      ; closure cast; i64* -> i64
  %cloptr39732 = inttoptr i64 %gP5$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39732)                                        ; assert function application
  %i0ptr39733 = getelementptr inbounds i64, i64* %cloptr39732, i64 0                 ; &cloptr39732[0]
  %f39735 = load i64, i64* %i0ptr39733, align 8                                      ; load; *i0ptr39733
  %fptr39734 = inttoptr i64 %f39735 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39734(i64 %gP5$_37length, i64 %arg37150, i64 %a36111); tail call
  ret void
}


define void @lam37293(i64 %env37294, i64 %_9536376, i64 %a36112) {
  %envptr39736 = inttoptr i64 %env37294 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39737 = getelementptr inbounds i64, i64* %envptr39736, i64 1                ; &envptr39736[1]
  %cont36375 = load i64, i64* %envptr39737, align 8                                  ; load; *envptr39737
  %arg37153 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %retprim36377 = call i64 @prim__43(i64 %arg37153, i64 %a36112)                     ; call prim__43
  %arg37155 = add i64 0, 0                                                           ; quoted ()
  %cloptr39738 = inttoptr i64 %cont36375 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39738)                                        ; assert function application
  %i0ptr39739 = getelementptr inbounds i64, i64* %cloptr39738, i64 0                 ; &cloptr39738[0]
  %f39741 = load i64, i64* %i0ptr39739, align 8                                      ; load; *i0ptr39739
  %fptr39740 = inttoptr i64 %f39741 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39740(i64 %cont36375, i64 %arg37155, i64 %retprim36377); tail call
  ret void
}


define void @lam37287(i64 %env37288, i64 %cont36378, i64 %okS$_37take) {
  %arg37158 = add i64 0, 0                                                           ; quoted ()
  %cloptr39742 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr39744 = getelementptr inbounds i64, i64* %cloptr39742, i64 1                  ; &eptr39744[1]
  store i64 %okS$_37take, i64* %eptr39744                                            ; *eptr39744 = %okS$_37take
  %eptr39743 = getelementptr inbounds i64, i64* %cloptr39742, i64 0                  ; &cloptr39742[0]
  %f39745 = ptrtoint void(i64,i64,i64,i64)* @lam37284 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f39745, i64* %eptr39743                                                 ; store fptr
  %arg37157 = ptrtoint i64* %cloptr39742 to i64                                      ; closure cast; i64* -> i64
  %cloptr39746 = inttoptr i64 %cont36378 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39746)                                        ; assert function application
  %i0ptr39747 = getelementptr inbounds i64, i64* %cloptr39746, i64 0                 ; &cloptr39746[0]
  %f39749 = load i64, i64* %i0ptr39747, align 8                                      ; load; *i0ptr39747
  %fptr39748 = inttoptr i64 %f39749 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39748(i64 %cont36378, i64 %arg37158, i64 %arg37157) ; tail call
  ret void
}


define void @lam37284(i64 %env37285, i64 %cont36379, i64 %ZDs$lst, i64 %CIh$n) {
  %envptr39750 = inttoptr i64 %env37285 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39751 = getelementptr inbounds i64, i64* %envptr39750, i64 1                ; &envptr39750[1]
  %okS$_37take = load i64, i64* %envptr39751, align 8                                ; load; *envptr39751
  %arg37160 = call i64 @const_init_int(i64 0)                                        ; quoted int
  %a36104 = call i64 @prim__61(i64 %CIh$n, i64 %arg37160)                            ; call prim__61
  %cmp39752 = icmp eq i64 %a36104, 15                                                ; false?
  br i1 %cmp39752, label %else39754, label %then39753                                ; if

then39753:
  %arg37163 = add i64 0, 0                                                           ; quoted ()
  %arg37162 = add i64 0, 0                                                           ; quoted ()
  %cloptr39755 = inttoptr i64 %cont36379 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39755)                                        ; assert function application
  %i0ptr39756 = getelementptr inbounds i64, i64* %cloptr39755, i64 0                 ; &cloptr39755[0]
  %f39758 = load i64, i64* %i0ptr39756, align 8                                      ; load; *i0ptr39756
  %fptr39757 = inttoptr i64 %f39758 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39757(i64 %cont36379, i64 %arg37163, i64 %arg37162) ; tail call
  ret void

else39754:
  %a36105 = call i64 @prim_null_63(i64 %ZDs$lst)                                     ; call prim_null_63
  %cmp39759 = icmp eq i64 %a36105, 15                                                ; false?
  br i1 %cmp39759, label %else39761, label %then39760                                ; if

then39760:
  %arg37167 = add i64 0, 0                                                           ; quoted ()
  %arg37166 = add i64 0, 0                                                           ; quoted ()
  %cloptr39762 = inttoptr i64 %cont36379 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39762)                                        ; assert function application
  %i0ptr39763 = getelementptr inbounds i64, i64* %cloptr39762, i64 0                 ; &cloptr39762[0]
  %f39765 = load i64, i64* %i0ptr39763, align 8                                      ; load; *i0ptr39763
  %fptr39764 = inttoptr i64 %f39765 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39764(i64 %cont36379, i64 %arg37167, i64 %arg37166) ; tail call
  ret void

else39761:
  %a36106 = call i64 @prim_car(i64 %ZDs$lst)                                         ; call prim_car
  %a36107 = call i64 @prim_cdr(i64 %ZDs$lst)                                         ; call prim_cdr
  %arg37171 = call i64 @const_init_int(i64 1)                                        ; quoted int
  %a36108 = call i64 @prim__45(i64 %CIh$n, i64 %arg37171)                            ; call prim__45
  %cloptr39766 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr39768 = getelementptr inbounds i64, i64* %cloptr39766, i64 1                  ; &eptr39768[1]
  %eptr39769 = getelementptr inbounds i64, i64* %cloptr39766, i64 2                  ; &eptr39769[2]
  store i64 %a36106, i64* %eptr39768                                                 ; *eptr39768 = %a36106
  store i64 %cont36379, i64* %eptr39769                                              ; *eptr39769 = %cont36379
  %eptr39767 = getelementptr inbounds i64, i64* %cloptr39766, i64 0                  ; &cloptr39766[0]
  %f39770 = ptrtoint void(i64,i64,i64)* @lam37280 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39770, i64* %eptr39767                                                 ; store fptr
  %arg37175 = ptrtoint i64* %cloptr39766 to i64                                      ; closure cast; i64* -> i64
  %cloptr39771 = inttoptr i64 %okS$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39771)                                        ; assert function application
  %i0ptr39772 = getelementptr inbounds i64, i64* %cloptr39771, i64 0                 ; &cloptr39771[0]
  %f39774 = load i64, i64* %i0ptr39772, align 8                                      ; load; *i0ptr39772
  %fptr39773 = inttoptr i64 %f39774 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39773(i64 %okS$_37take, i64 %arg37175, i64 %a36107, i64 %a36108); tail call
  ret void
}


define void @lam37280(i64 %env37281, i64 %_9536380, i64 %a36109) {
  %envptr39775 = inttoptr i64 %env37281 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39776 = getelementptr inbounds i64, i64* %envptr39775, i64 2                ; &envptr39775[2]
  %cont36379 = load i64, i64* %envptr39776, align 8                                  ; load; *envptr39776
  %envptr39777 = inttoptr i64 %env37281 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39778 = getelementptr inbounds i64, i64* %envptr39777, i64 1                ; &envptr39777[1]
  %a36106 = load i64, i64* %envptr39778, align 8                                     ; load; *envptr39778
  %retprim36381 = call i64 @prim_cons(i64 %a36106, i64 %a36109)                      ; call prim_cons
  %arg37180 = add i64 0, 0                                                           ; quoted ()
  %cloptr39779 = inttoptr i64 %cont36379 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39779)                                        ; assert function application
  %i0ptr39780 = getelementptr inbounds i64, i64* %cloptr39779, i64 0                 ; &cloptr39779[0]
  %f39782 = load i64, i64* %i0ptr39780, align 8                                      ; load; *i0ptr39780
  %fptr39781 = inttoptr i64 %f39782 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39781(i64 %cont36379, i64 %arg37180, i64 %retprim36381); tail call
  ret void
}


define void @lam37273(i64 %env37274, i64 %cont36382, i64 %XuN$_37map) {
  %arg37183 = add i64 0, 0                                                           ; quoted ()
  %cloptr39783 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr39785 = getelementptr inbounds i64, i64* %cloptr39783, i64 1                  ; &eptr39785[1]
  store i64 %XuN$_37map, i64* %eptr39785                                             ; *eptr39785 = %XuN$_37map
  %eptr39784 = getelementptr inbounds i64, i64* %cloptr39783, i64 0                  ; &cloptr39783[0]
  %f39786 = ptrtoint void(i64,i64,i64,i64)* @lam37270 to i64                         ; fptr cast; i64(...)* -> i64
  store i64 %f39786, i64* %eptr39784                                                 ; store fptr
  %arg37182 = ptrtoint i64* %cloptr39783 to i64                                      ; closure cast; i64* -> i64
  %cloptr39787 = inttoptr i64 %cont36382 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39787)                                        ; assert function application
  %i0ptr39788 = getelementptr inbounds i64, i64* %cloptr39787, i64 0                 ; &cloptr39787[0]
  %f39790 = load i64, i64* %i0ptr39788, align 8                                      ; load; *i0ptr39788
  %fptr39789 = inttoptr i64 %f39790 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39789(i64 %cont36382, i64 %arg37183, i64 %arg37182) ; tail call
  ret void
}


define void @lam37270(i64 %env37271, i64 %cont36383, i64 %Lts$f, i64 %KE9$lst) {
  %envptr39791 = inttoptr i64 %env37271 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39792 = getelementptr inbounds i64, i64* %envptr39791, i64 1                ; &envptr39791[1]
  %XuN$_37map = load i64, i64* %envptr39792, align 8                                 ; load; *envptr39792
  %a36099 = call i64 @prim_null_63(i64 %KE9$lst)                                     ; call prim_null_63
  %cmp39793 = icmp eq i64 %a36099, 15                                                ; false?
  br i1 %cmp39793, label %else39795, label %then39794                                ; if

then39794:
  %arg37187 = add i64 0, 0                                                           ; quoted ()
  %arg37186 = add i64 0, 0                                                           ; quoted ()
  %cloptr39796 = inttoptr i64 %cont36383 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39796)                                        ; assert function application
  %i0ptr39797 = getelementptr inbounds i64, i64* %cloptr39796, i64 0                 ; &cloptr39796[0]
  %f39799 = load i64, i64* %i0ptr39797, align 8                                      ; load; *i0ptr39797
  %fptr39798 = inttoptr i64 %f39799 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39798(i64 %cont36383, i64 %arg37187, i64 %arg37186) ; tail call
  ret void

else39795:
  %a36100 = call i64 @prim_car(i64 %KE9$lst)                                         ; call prim_car
  %cloptr39800 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr39802 = getelementptr inbounds i64, i64* %cloptr39800, i64 1                  ; &eptr39802[1]
  %eptr39803 = getelementptr inbounds i64, i64* %cloptr39800, i64 2                  ; &eptr39803[2]
  %eptr39804 = getelementptr inbounds i64, i64* %cloptr39800, i64 3                  ; &eptr39804[3]
  %eptr39805 = getelementptr inbounds i64, i64* %cloptr39800, i64 4                  ; &eptr39805[4]
  store i64 %cont36383, i64* %eptr39802                                              ; *eptr39802 = %cont36383
  store i64 %XuN$_37map, i64* %eptr39803                                             ; *eptr39803 = %XuN$_37map
  store i64 %Lts$f, i64* %eptr39804                                                  ; *eptr39804 = %Lts$f
  store i64 %KE9$lst, i64* %eptr39805                                                ; *eptr39805 = %KE9$lst
  %eptr39801 = getelementptr inbounds i64, i64* %cloptr39800, i64 0                  ; &cloptr39800[0]
  %f39806 = ptrtoint void(i64,i64,i64)* @lam37268 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39806, i64* %eptr39801                                                 ; store fptr
  %arg37191 = ptrtoint i64* %cloptr39800 to i64                                      ; closure cast; i64* -> i64
  %cloptr39807 = inttoptr i64 %Lts$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39807)                                        ; assert function application
  %i0ptr39808 = getelementptr inbounds i64, i64* %cloptr39807, i64 0                 ; &cloptr39807[0]
  %f39810 = load i64, i64* %i0ptr39808, align 8                                      ; load; *i0ptr39808
  %fptr39809 = inttoptr i64 %f39810 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39809(i64 %Lts$f, i64 %arg37191, i64 %a36100)       ; tail call
  ret void
}


define void @lam37268(i64 %env37269, i64 %_9536384, i64 %a36101) {
  %envptr39811 = inttoptr i64 %env37269 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39812 = getelementptr inbounds i64, i64* %envptr39811, i64 4                ; &envptr39811[4]
  %KE9$lst = load i64, i64* %envptr39812, align 8                                    ; load; *envptr39812
  %envptr39813 = inttoptr i64 %env37269 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39814 = getelementptr inbounds i64, i64* %envptr39813, i64 3                ; &envptr39813[3]
  %Lts$f = load i64, i64* %envptr39814, align 8                                      ; load; *envptr39814
  %envptr39815 = inttoptr i64 %env37269 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39816 = getelementptr inbounds i64, i64* %envptr39815, i64 2                ; &envptr39815[2]
  %XuN$_37map = load i64, i64* %envptr39816, align 8                                 ; load; *envptr39816
  %envptr39817 = inttoptr i64 %env37269 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39818 = getelementptr inbounds i64, i64* %envptr39817, i64 1                ; &envptr39817[1]
  %cont36383 = load i64, i64* %envptr39818, align 8                                  ; load; *envptr39818
  %a36102 = call i64 @prim_cdr(i64 %KE9$lst)                                         ; call prim_cdr
  %cloptr39819 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr39821 = getelementptr inbounds i64, i64* %cloptr39819, i64 1                  ; &eptr39821[1]
  %eptr39822 = getelementptr inbounds i64, i64* %cloptr39819, i64 2                  ; &eptr39822[2]
  store i64 %cont36383, i64* %eptr39821                                              ; *eptr39821 = %cont36383
  store i64 %a36101, i64* %eptr39822                                                 ; *eptr39822 = %a36101
  %eptr39820 = getelementptr inbounds i64, i64* %cloptr39819, i64 0                  ; &cloptr39819[0]
  %f39823 = ptrtoint void(i64,i64,i64)* @lam37266 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39823, i64* %eptr39820                                                 ; store fptr
  %arg37196 = ptrtoint i64* %cloptr39819 to i64                                      ; closure cast; i64* -> i64
  %cloptr39824 = inttoptr i64 %XuN$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39824)                                        ; assert function application
  %i0ptr39825 = getelementptr inbounds i64, i64* %cloptr39824, i64 0                 ; &cloptr39824[0]
  %f39827 = load i64, i64* %i0ptr39825, align 8                                      ; load; *i0ptr39825
  %fptr39826 = inttoptr i64 %f39827 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39826(i64 %XuN$_37map, i64 %arg37196, i64 %Lts$f, i64 %a36102); tail call
  ret void
}


define void @lam37266(i64 %env37267, i64 %_9536385, i64 %a36103) {
  %envptr39828 = inttoptr i64 %env37267 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39829 = getelementptr inbounds i64, i64* %envptr39828, i64 2                ; &envptr39828[2]
  %a36101 = load i64, i64* %envptr39829, align 8                                     ; load; *envptr39829
  %envptr39830 = inttoptr i64 %env37267 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39831 = getelementptr inbounds i64, i64* %envptr39830, i64 1                ; &envptr39830[1]
  %cont36383 = load i64, i64* %envptr39831, align 8                                  ; load; *envptr39831
  %retprim36386 = call i64 @prim_cons(i64 %a36101, i64 %a36103)                      ; call prim_cons
  %arg37201 = add i64 0, 0                                                           ; quoted ()
  %cloptr39832 = inttoptr i64 %cont36383 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39832)                                        ; assert function application
  %i0ptr39833 = getelementptr inbounds i64, i64* %cloptr39832, i64 0                 ; &cloptr39832[0]
  %f39835 = load i64, i64* %i0ptr39833, align 8                                      ; load; *i0ptr39833
  %fptr39834 = inttoptr i64 %f39835 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39834(i64 %cont36383, i64 %arg37201, i64 %retprim36386); tail call
  ret void
}


define void @lam37261(i64 %env37262, i64 %cont36387, i64 %b0N$_37foldr1) {
  %arg37204 = add i64 0, 0                                                           ; quoted ()
  %cloptr39836 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr39838 = getelementptr inbounds i64, i64* %cloptr39836, i64 1                  ; &eptr39838[1]
  store i64 %b0N$_37foldr1, i64* %eptr39838                                          ; *eptr39838 = %b0N$_37foldr1
  %eptr39837 = getelementptr inbounds i64, i64* %cloptr39836, i64 0                  ; &cloptr39836[0]
  %f39839 = ptrtoint void(i64,i64,i64,i64,i64)* @lam37258 to i64                     ; fptr cast; i64(...)* -> i64
  store i64 %f39839, i64* %eptr39837                                                 ; store fptr
  %arg37203 = ptrtoint i64* %cloptr39836 to i64                                      ; closure cast; i64* -> i64
  %cloptr39840 = inttoptr i64 %cont36387 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39840)                                        ; assert function application
  %i0ptr39841 = getelementptr inbounds i64, i64* %cloptr39840, i64 0                 ; &cloptr39840[0]
  %f39843 = load i64, i64* %i0ptr39841, align 8                                      ; load; *i0ptr39841
  %fptr39842 = inttoptr i64 %f39843 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39842(i64 %cont36387, i64 %arg37204, i64 %arg37203) ; tail call
  ret void
}


define void @lam37258(i64 %env37259, i64 %cont36388, i64 %JqQ$f, i64 %Wvn$acc, i64 %fC0$lst) {
  %envptr39844 = inttoptr i64 %env37259 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39845 = getelementptr inbounds i64, i64* %envptr39844, i64 1                ; &envptr39844[1]
  %b0N$_37foldr1 = load i64, i64* %envptr39845, align 8                              ; load; *envptr39845
  %a36095 = call i64 @prim_null_63(i64 %fC0$lst)                                     ; call prim_null_63
  %cmp39846 = icmp eq i64 %a36095, 15                                                ; false?
  br i1 %cmp39846, label %else39848, label %then39847                                ; if

then39847:
  %arg37208 = add i64 0, 0                                                           ; quoted ()
  %cloptr39849 = inttoptr i64 %cont36388 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39849)                                        ; assert function application
  %i0ptr39850 = getelementptr inbounds i64, i64* %cloptr39849, i64 0                 ; &cloptr39849[0]
  %f39852 = load i64, i64* %i0ptr39850, align 8                                      ; load; *i0ptr39850
  %fptr39851 = inttoptr i64 %f39852 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39851(i64 %cont36388, i64 %arg37208, i64 %Wvn$acc)  ; tail call
  ret void

else39848:
  %a36096 = call i64 @prim_car(i64 %fC0$lst)                                         ; call prim_car
  %a36097 = call i64 @prim_cdr(i64 %fC0$lst)                                         ; call prim_cdr
  %cloptr39853 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39855 = getelementptr inbounds i64, i64* %cloptr39853, i64 1                  ; &eptr39855[1]
  %eptr39856 = getelementptr inbounds i64, i64* %cloptr39853, i64 2                  ; &eptr39856[2]
  %eptr39857 = getelementptr inbounds i64, i64* %cloptr39853, i64 3                  ; &eptr39857[3]
  store i64 %JqQ$f, i64* %eptr39855                                                  ; *eptr39855 = %JqQ$f
  store i64 %cont36388, i64* %eptr39856                                              ; *eptr39856 = %cont36388
  store i64 %a36096, i64* %eptr39857                                                 ; *eptr39857 = %a36096
  %eptr39854 = getelementptr inbounds i64, i64* %cloptr39853, i64 0                  ; &cloptr39853[0]
  %f39858 = ptrtoint void(i64,i64,i64)* @lam37256 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39858, i64* %eptr39854                                                 ; store fptr
  %arg37215 = ptrtoint i64* %cloptr39853 to i64                                      ; closure cast; i64* -> i64
  %cloptr39859 = inttoptr i64 %b0N$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39859)                                        ; assert function application
  %i0ptr39860 = getelementptr inbounds i64, i64* %cloptr39859, i64 0                 ; &cloptr39859[0]
  %f39862 = load i64, i64* %i0ptr39860, align 8                                      ; load; *i0ptr39860
  %fptr39861 = inttoptr i64 %f39862 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39861(i64 %b0N$_37foldr1, i64 %arg37215, i64 %JqQ$f, i64 %Wvn$acc, i64 %a36097); tail call
  ret void
}


define void @lam37256(i64 %env37257, i64 %_9536389, i64 %a36098) {
  %envptr39863 = inttoptr i64 %env37257 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39864 = getelementptr inbounds i64, i64* %envptr39863, i64 3                ; &envptr39863[3]
  %a36096 = load i64, i64* %envptr39864, align 8                                     ; load; *envptr39864
  %envptr39865 = inttoptr i64 %env37257 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39866 = getelementptr inbounds i64, i64* %envptr39865, i64 2                ; &envptr39865[2]
  %cont36388 = load i64, i64* %envptr39866, align 8                                  ; load; *envptr39866
  %envptr39867 = inttoptr i64 %env37257 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39868 = getelementptr inbounds i64, i64* %envptr39867, i64 1                ; &envptr39867[1]
  %JqQ$f = load i64, i64* %envptr39868, align 8                                      ; load; *envptr39868
  %cloptr39869 = inttoptr i64 %JqQ$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39869)                                        ; assert function application
  %i0ptr39870 = getelementptr inbounds i64, i64* %cloptr39869, i64 0                 ; &cloptr39869[0]
  %f39872 = load i64, i64* %i0ptr39870, align 8                                      ; load; *i0ptr39870
  %fptr39871 = inttoptr i64 %f39872 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39871(i64 %JqQ$f, i64 %cont36388, i64 %a36096, i64 %a36098); tail call
  ret void
}


define void @lam37253(i64 %env37254, i64 %cont36391, i64 %nAG$y) {
  %arg37222 = add i64 0, 0                                                           ; quoted ()
  %cloptr39873 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr39875 = getelementptr inbounds i64, i64* %cloptr39873, i64 1                  ; &eptr39875[1]
  store i64 %nAG$y, i64* %eptr39875                                                  ; *eptr39875 = %nAG$y
  %eptr39874 = getelementptr inbounds i64, i64* %cloptr39873, i64 0                  ; &cloptr39873[0]
  %f39876 = ptrtoint void(i64,i64,i64)* @lam37250 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39876, i64* %eptr39874                                                 ; store fptr
  %arg37221 = ptrtoint i64* %cloptr39873 to i64                                      ; closure cast; i64* -> i64
  %cloptr39877 = inttoptr i64 %cont36391 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39877)                                        ; assert function application
  %i0ptr39878 = getelementptr inbounds i64, i64* %cloptr39877, i64 0                 ; &cloptr39877[0]
  %f39880 = load i64, i64* %i0ptr39878, align 8                                      ; load; *i0ptr39878
  %fptr39879 = inttoptr i64 %f39880 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39879(i64 %cont36391, i64 %arg37222, i64 %arg37221) ; tail call
  ret void
}


define void @lam37250(i64 %env37251, i64 %cont36392, i64 %dJX$f) {
  %envptr39881 = inttoptr i64 %env37251 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39882 = getelementptr inbounds i64, i64* %envptr39881, i64 1                ; &envptr39881[1]
  %nAG$y = load i64, i64* %envptr39882, align 8                                      ; load; *envptr39882
  %cloptr39883 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr39885 = getelementptr inbounds i64, i64* %cloptr39883, i64 1                  ; &eptr39885[1]
  %eptr39886 = getelementptr inbounds i64, i64* %cloptr39883, i64 2                  ; &eptr39886[2]
  store i64 %dJX$f, i64* %eptr39885                                                  ; *eptr39885 = %dJX$f
  store i64 %nAG$y, i64* %eptr39886                                                  ; *eptr39886 = %nAG$y
  %eptr39884 = getelementptr inbounds i64, i64* %cloptr39883, i64 0                  ; &cloptr39883[0]
  %f39887 = ptrtoint void(i64,i64)* @lam37248 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f39887, i64* %eptr39884                                                 ; store fptr
  %arg37224 = ptrtoint i64* %cloptr39883 to i64                                      ; closure cast; i64* -> i64
  %cloptr39888 = inttoptr i64 %dJX$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39888)                                        ; assert function application
  %i0ptr39889 = getelementptr inbounds i64, i64* %cloptr39888, i64 0                 ; &cloptr39888[0]
  %f39891 = load i64, i64* %i0ptr39889, align 8                                      ; load; *i0ptr39889
  %fptr39890 = inttoptr i64 %f39891 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39890(i64 %dJX$f, i64 %cont36392, i64 %arg37224)    ; tail call
  ret void
}


define void @lam37248(i64 %env37249, i64 %R0h$args36394) {
  %envptr39892 = inttoptr i64 %env37249 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39893 = getelementptr inbounds i64, i64* %envptr39892, i64 2                ; &envptr39892[2]
  %nAG$y = load i64, i64* %envptr39893, align 8                                      ; load; *envptr39893
  %envptr39894 = inttoptr i64 %env37249 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39895 = getelementptr inbounds i64, i64* %envptr39894, i64 1                ; &envptr39894[1]
  %dJX$f = load i64, i64* %envptr39895, align 8                                      ; load; *envptr39895
  %cont36393 = call i64 @prim_car(i64 %R0h$args36394)                                ; call prim_car
  %R0h$args = call i64 @prim_cdr(i64 %R0h$args36394)                                 ; call prim_cdr
  %cloptr39896 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr39898 = getelementptr inbounds i64, i64* %cloptr39896, i64 1                  ; &eptr39898[1]
  %eptr39899 = getelementptr inbounds i64, i64* %cloptr39896, i64 2                  ; &eptr39899[2]
  %eptr39900 = getelementptr inbounds i64, i64* %cloptr39896, i64 3                  ; &eptr39900[3]
  store i64 %R0h$args, i64* %eptr39898                                               ; *eptr39898 = %R0h$args
  store i64 %dJX$f, i64* %eptr39899                                                  ; *eptr39899 = %dJX$f
  store i64 %cont36393, i64* %eptr39900                                              ; *eptr39900 = %cont36393
  %eptr39897 = getelementptr inbounds i64, i64* %cloptr39896, i64 0                  ; &cloptr39896[0]
  %f39901 = ptrtoint void(i64,i64,i64)* @lam37246 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39901, i64* %eptr39897                                                 ; store fptr
  %arg37230 = ptrtoint i64* %cloptr39896 to i64                                      ; closure cast; i64* -> i64
  %cloptr39902 = inttoptr i64 %nAG$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39902)                                        ; assert function application
  %i0ptr39903 = getelementptr inbounds i64, i64* %cloptr39902, i64 0                 ; &cloptr39902[0]
  %f39905 = load i64, i64* %i0ptr39903, align 8                                      ; load; *i0ptr39903
  %fptr39904 = inttoptr i64 %f39905 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39904(i64 %nAG$y, i64 %arg37230, i64 %nAG$y)        ; tail call
  ret void
}


define void @lam37246(i64 %env37247, i64 %_9536395, i64 %a36093) {
  %envptr39906 = inttoptr i64 %env37247 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39907 = getelementptr inbounds i64, i64* %envptr39906, i64 3                ; &envptr39906[3]
  %cont36393 = load i64, i64* %envptr39907, align 8                                  ; load; *envptr39907
  %envptr39908 = inttoptr i64 %env37247 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39909 = getelementptr inbounds i64, i64* %envptr39908, i64 2                ; &envptr39908[2]
  %dJX$f = load i64, i64* %envptr39909, align 8                                      ; load; *envptr39909
  %envptr39910 = inttoptr i64 %env37247 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39911 = getelementptr inbounds i64, i64* %envptr39910, i64 1                ; &envptr39910[1]
  %R0h$args = load i64, i64* %envptr39911, align 8                                   ; load; *envptr39911
  %cloptr39912 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr39914 = getelementptr inbounds i64, i64* %cloptr39912, i64 1                  ; &eptr39914[1]
  %eptr39915 = getelementptr inbounds i64, i64* %cloptr39912, i64 2                  ; &eptr39915[2]
  store i64 %R0h$args, i64* %eptr39914                                               ; *eptr39914 = %R0h$args
  store i64 %cont36393, i64* %eptr39915                                              ; *eptr39915 = %cont36393
  %eptr39913 = getelementptr inbounds i64, i64* %cloptr39912, i64 0                  ; &cloptr39912[0]
  %f39916 = ptrtoint void(i64,i64,i64)* @lam37244 to i64                             ; fptr cast; i64(...)* -> i64
  store i64 %f39916, i64* %eptr39913                                                 ; store fptr
  %arg37233 = ptrtoint i64* %cloptr39912 to i64                                      ; closure cast; i64* -> i64
  %cloptr39917 = inttoptr i64 %a36093 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39917)                                        ; assert function application
  %i0ptr39918 = getelementptr inbounds i64, i64* %cloptr39917, i64 0                 ; &cloptr39917[0]
  %f39920 = load i64, i64* %i0ptr39918, align 8                                      ; load; *i0ptr39918
  %fptr39919 = inttoptr i64 %f39920 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39919(i64 %a36093, i64 %arg37233, i64 %dJX$f)       ; tail call
  ret void
}


define void @lam37244(i64 %env37245, i64 %_9536396, i64 %a36094) {
  %envptr39921 = inttoptr i64 %env37245 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39922 = getelementptr inbounds i64, i64* %envptr39921, i64 2                ; &envptr39921[2]
  %cont36393 = load i64, i64* %envptr39922, align 8                                  ; load; *envptr39922
  %envptr39923 = inttoptr i64 %env37245 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr39924 = getelementptr inbounds i64, i64* %envptr39923, i64 1                ; &envptr39923[1]
  %R0h$args = load i64, i64* %envptr39924, align 8                                   ; load; *envptr39924
  %cps_45lst36397 = call i64 @prim_cons(i64 %cont36393, i64 %R0h$args)               ; call prim_cons
  %cloptr39925 = inttoptr i64 %a36094 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr39925)                                        ; assert function application
  %i0ptr39926 = getelementptr inbounds i64, i64* %cloptr39925, i64 0                 ; &cloptr39925[0]
  %f39928 = load i64, i64* %i0ptr39926, align 8                                      ; load; *i0ptr39926
  %fptr39927 = inttoptr i64 %f39928 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr39927(i64 %a36094, i64 %cps_45lst36397)             ; tail call
  ret void
}





@sym38505 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
