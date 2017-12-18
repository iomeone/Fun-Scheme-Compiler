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
@.str.11 = private unnamed_addr constant [37 x i8] c"Too many arguments passed into prim.\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"#<procedure>\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" . \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"#(\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"#f\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"#t\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"(print.. v); unrecognized value %lu int %lu\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"'()\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"'(\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"'%s\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"(print v); unrecognized value %lu %lu\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"first argument to make-vector must be an integer\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"prim applied on more than 2 arguments.\00", align 1
@.str.32 = private unnamed_addr constant [49 x i8] c"second argument to vector-ref must be an integer\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"first argument to vector-ref must be a vector\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"vector-ref not given a properly formed vector\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"first argument to vector-ref must be an integer\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"prim applied on more than 3 arguments.\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"(prim + a b); a is not an integer\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"(prim + a b); b is not an integer\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Tried to apply + on non list value.\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"(prim - a b); b is not an integer\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"(prim * a b); a is not an integer\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"(prim * a b); b is not an integer\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"(prim / a b); b cannot be 0\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"(prim / a b); a is not an integer\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"(prim / a b); b is not an integer\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"(prim = a b); a is not an integer\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"(prim = a b); b is not an integer\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"(prim < a b); a is not an integer\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"(prim < a b); b is not an integer\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"(prim <= a b); a is not an integer\00", align 1
@.str.51 = private unnamed_addr constant [35 x i8] c"(prim <= a b); b is not an integer\00", align 1

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
define i64 @too_many_args() #0 {
  call void @fatal_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0))
  ret i64 39
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
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %4)
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
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0))
  br label %141

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
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
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  %21 = load i64*, i64** %p, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @prim_print_aux(i64 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %26 = load i64*, i64** %p, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
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
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %38)
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
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %47)
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
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
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
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
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
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
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
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  br label %133

; <label>:113                                     ; preds = %108
  %114 = load i64, i64* %1, align 8
  %115 = icmp eq i64 %114, 15
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %132

; <label>:118                                     ; preds = %113
  %119 = load i64, i64* %1, align 8
  %120 = icmp eq i64 %119, 31
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %118
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %131

; <label>:123                                     ; preds = %118
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* %1, align 8
  %126 = trunc i64 %125 to i32
  %127 = zext i32 %126 to i64
  %128 = shl i64 %127, 32
  %129 = or i64 %128, 2
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0), i64 %124, i64 %129)
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
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  br label %138

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
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
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0))
  %21 = load i64*, i64** %p, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @prim_print_aux(i64 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %26 = load i64*, i64** %p, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @prim_print_aux(i64 %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
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
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 %38)
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
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* %47)
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
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* %56)
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
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0))
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
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
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
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
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
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  br label %130

; <label>:113                                     ; preds = %108
  %114 = load i64, i64* %1, align 8
  %115 = icmp eq i64 %114, 15
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %113
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %129

; <label>:118                                     ; preds = %113
  %119 = load i64, i64* %1, align 8
  %120 = icmp eq i64 %119, 31
  br i1 %120, label %121, label %123

; <label>:121                                     ; preds = %118
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %128

; <label>:123                                     ; preds = %118
  %124 = load i64, i64* %1, align 8
  %125 = load i64, i64* %1, align 8
  %126 = and i64 %125, 7
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), i64 %124, i64 %126)
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
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %1, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 6
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.33, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.32, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %1, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 6
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.34, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.36, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.41, i32 0, i32 0))
  br label %7

; <label>:7                                       ; preds = %6, %0
  %8 = load i64, i64* %2, align 8
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 2
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %7
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  br label %10

; <label>:10                                      ; preds = %9, %0
  %11 = load i64, i64* %1, align 8
  %12 = and i64 %11, 7
  %13 = icmp ne i64 %12, 2
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %10
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %14, %10
  %16 = load i64, i64* %2, align 8
  %17 = and i64 %16, 7
  %18 = icmp ne i64 %17, 2
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %15
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.49, i32 0, i32 0))
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
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %7, %0
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, 7
  %11 = icmp ne i64 %10, 2
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %8
  call void @fatal_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.51, i32 0, i32 0))
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
  %cloptr8551 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8552 = getelementptr inbounds i64, i64* %cloptr8551, i64 0                    ; &cloptr8551[0]
  %f8553 = ptrtoint void(i64,i64,i64)* @lam8549 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8553, i64* %eptr8552                                                   ; store fptr
  %arg7253 = ptrtoint i64* %cloptr8551 to i64                                        ; closure cast; i64* -> i64
  %cloptr8554 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8555 = getelementptr inbounds i64, i64* %cloptr8554, i64 0                    ; &cloptr8554[0]
  %f8556 = ptrtoint void(i64,i64,i64)* @lam8547 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8556, i64* %eptr8555                                                   ; store fptr
  %arg7252 = ptrtoint i64* %cloptr8554 to i64                                        ; closure cast; i64* -> i64
  %cloptr8557 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8558 = getelementptr inbounds i64, i64* %cloptr8557, i64 0                    ; &cloptr8557[0]
  %f8559 = ptrtoint void(i64,i64,i64)* @lam8104 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8559, i64* %eptr8558                                                   ; store fptr
  %arg7251 = ptrtoint i64* %cloptr8557 to i64                                        ; closure cast; i64* -> i64
  %cloptr8560 = inttoptr i64 %arg7253 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8560)                                         ; assert function application
  %i0ptr8561 = getelementptr inbounds i64, i64* %cloptr8560, i64 0                   ; &cloptr8560[0]
  %f8563 = load i64, i64* %i0ptr8561, align 8                                        ; load; *i0ptr8561
  %fptr8562 = inttoptr i64 %f8563 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8562(i64 %arg7253, i64 %arg7252, i64 %arg7251)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam8549(i64 %env8550, i64 %cont7243, i64 %K5U$yu) {
  %cloptr8564 = inttoptr i64 %K5U$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8564)                                         ; assert function application
  %i0ptr8565 = getelementptr inbounds i64, i64* %cloptr8564, i64 0                   ; &cloptr8564[0]
  %f8567 = load i64, i64* %i0ptr8565, align 8                                        ; load; *i0ptr8565
  %fptr8566 = inttoptr i64 %f8567 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8566(i64 %K5U$yu, i64 %cont7243, i64 %K5U$yu)       ; tail call
  ret void
}


define void @lam8547(i64 %env8548, i64 %_957064, i64 %JuO$Ycmb) {
  %cloptr8568 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8570 = getelementptr inbounds i64, i64* %cloptr8568, i64 1                    ; &eptr8570[1]
  store i64 %JuO$Ycmb, i64* %eptr8570                                                ; *eptr8570 = %JuO$Ycmb
  %eptr8569 = getelementptr inbounds i64, i64* %cloptr8568, i64 0                    ; &cloptr8568[0]
  %f8571 = ptrtoint void(i64,i64,i64)* @lam8545 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8571, i64* %eptr8569                                                   ; store fptr
  %arg7258 = ptrtoint i64* %cloptr8568 to i64                                        ; closure cast; i64* -> i64
  %cloptr8572 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8573 = getelementptr inbounds i64, i64* %cloptr8572, i64 0                    ; &cloptr8572[0]
  %f8574 = ptrtoint void(i64,i64,i64)* @lam8112 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8574, i64* %eptr8573                                                   ; store fptr
  %arg7257 = ptrtoint i64* %cloptr8572 to i64                                        ; closure cast; i64* -> i64
  %cloptr8575 = inttoptr i64 %JuO$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8575)                                         ; assert function application
  %i0ptr8576 = getelementptr inbounds i64, i64* %cloptr8575, i64 0                   ; &cloptr8575[0]
  %f8578 = load i64, i64* %i0ptr8576, align 8                                        ; load; *i0ptr8576
  %fptr8577 = inttoptr i64 %f8578 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8577(i64 %JuO$Ycmb, i64 %arg7258, i64 %arg7257)     ; tail call
  ret void
}


define void @lam8545(i64 %env8546, i64 %_957065, i64 %cVJ$_37foldr1) {
  %envptr8579 = inttoptr i64 %env8546 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8580 = getelementptr inbounds i64, i64* %envptr8579, i64 1                  ; &envptr8579[1]
  %JuO$Ycmb = load i64, i64* %envptr8580, align 8                                    ; load; *envptr8580
  %cloptr8581 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8583 = getelementptr inbounds i64, i64* %cloptr8581, i64 1                    ; &eptr8583[1]
  %eptr8584 = getelementptr inbounds i64, i64* %cloptr8581, i64 2                    ; &eptr8584[2]
  store i64 %JuO$Ycmb, i64* %eptr8583                                                ; *eptr8583 = %JuO$Ycmb
  store i64 %cVJ$_37foldr1, i64* %eptr8584                                           ; *eptr8584 = %cVJ$_37foldr1
  %eptr8582 = getelementptr inbounds i64, i64* %cloptr8581, i64 0                    ; &cloptr8581[0]
  %f8585 = ptrtoint void(i64,i64,i64)* @lam8543 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8585, i64* %eptr8582                                                   ; store fptr
  %arg7261 = ptrtoint i64* %cloptr8581 to i64                                        ; closure cast; i64* -> i64
  %cloptr8586 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8587 = getelementptr inbounds i64, i64* %cloptr8586, i64 0                    ; &cloptr8586[0]
  %f8588 = ptrtoint void(i64,i64,i64)* @lam8124 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8588, i64* %eptr8587                                                   ; store fptr
  %arg7260 = ptrtoint i64* %cloptr8586 to i64                                        ; closure cast; i64* -> i64
  %cloptr8589 = inttoptr i64 %JuO$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8589)                                         ; assert function application
  %i0ptr8590 = getelementptr inbounds i64, i64* %cloptr8589, i64 0                   ; &cloptr8589[0]
  %f8592 = load i64, i64* %i0ptr8590, align 8                                        ; load; *i0ptr8590
  %fptr8591 = inttoptr i64 %f8592 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8591(i64 %JuO$Ycmb, i64 %arg7261, i64 %arg7260)     ; tail call
  ret void
}


define void @lam8543(i64 %env8544, i64 %_957066, i64 %TOj$_37map1) {
  %envptr8593 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8594 = getelementptr inbounds i64, i64* %envptr8593, i64 2                  ; &envptr8593[2]
  %cVJ$_37foldr1 = load i64, i64* %envptr8594, align 8                               ; load; *envptr8594
  %envptr8595 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8596 = getelementptr inbounds i64, i64* %envptr8595, i64 1                  ; &envptr8595[1]
  %JuO$Ycmb = load i64, i64* %envptr8596, align 8                                    ; load; *envptr8596
  %cloptr8597 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8599 = getelementptr inbounds i64, i64* %cloptr8597, i64 1                    ; &eptr8599[1]
  %eptr8600 = getelementptr inbounds i64, i64* %cloptr8597, i64 2                    ; &eptr8600[2]
  %eptr8601 = getelementptr inbounds i64, i64* %cloptr8597, i64 3                    ; &eptr8601[3]
  store i64 %JuO$Ycmb, i64* %eptr8599                                                ; *eptr8599 = %JuO$Ycmb
  store i64 %cVJ$_37foldr1, i64* %eptr8600                                           ; *eptr8600 = %cVJ$_37foldr1
  store i64 %TOj$_37map1, i64* %eptr8601                                             ; *eptr8601 = %TOj$_37map1
  %eptr8598 = getelementptr inbounds i64, i64* %cloptr8597, i64 0                    ; &cloptr8597[0]
  %f8602 = ptrtoint void(i64,i64,i64)* @lam8541 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8602, i64* %eptr8598                                                   ; store fptr
  %arg7264 = ptrtoint i64* %cloptr8597 to i64                                        ; closure cast; i64* -> i64
  %cloptr8603 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8604 = getelementptr inbounds i64, i64* %cloptr8603, i64 0                    ; &cloptr8603[0]
  %f8605 = ptrtoint void(i64,i64,i64)* @lam8138 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8605, i64* %eptr8604                                                   ; store fptr
  %arg7263 = ptrtoint i64* %cloptr8603 to i64                                        ; closure cast; i64* -> i64
  %cloptr8606 = inttoptr i64 %JuO$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8606)                                         ; assert function application
  %i0ptr8607 = getelementptr inbounds i64, i64* %cloptr8606, i64 0                   ; &cloptr8606[0]
  %f8609 = load i64, i64* %i0ptr8607, align 8                                        ; load; *i0ptr8607
  %fptr8608 = inttoptr i64 %f8609 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8608(i64 %JuO$Ycmb, i64 %arg7264, i64 %arg7263)     ; tail call
  ret void
}


define void @lam8541(i64 %env8542, i64 %_957067, i64 %y18$_37take) {
  %envptr8610 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8611 = getelementptr inbounds i64, i64* %envptr8610, i64 3                  ; &envptr8610[3]
  %TOj$_37map1 = load i64, i64* %envptr8611, align 8                                 ; load; *envptr8611
  %envptr8612 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8613 = getelementptr inbounds i64, i64* %envptr8612, i64 2                  ; &envptr8612[2]
  %cVJ$_37foldr1 = load i64, i64* %envptr8613, align 8                               ; load; *envptr8613
  %envptr8614 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8615 = getelementptr inbounds i64, i64* %envptr8614, i64 1                  ; &envptr8614[1]
  %JuO$Ycmb = load i64, i64* %envptr8615, align 8                                    ; load; *envptr8615
  %cloptr8616 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8618 = getelementptr inbounds i64, i64* %cloptr8616, i64 1                    ; &eptr8618[1]
  %eptr8619 = getelementptr inbounds i64, i64* %cloptr8616, i64 2                    ; &eptr8619[2]
  %eptr8620 = getelementptr inbounds i64, i64* %cloptr8616, i64 3                    ; &eptr8620[3]
  %eptr8621 = getelementptr inbounds i64, i64* %cloptr8616, i64 4                    ; &eptr8621[4]
  store i64 %y18$_37take, i64* %eptr8618                                             ; *eptr8618 = %y18$_37take
  store i64 %JuO$Ycmb, i64* %eptr8619                                                ; *eptr8619 = %JuO$Ycmb
  store i64 %cVJ$_37foldr1, i64* %eptr8620                                           ; *eptr8620 = %cVJ$_37foldr1
  store i64 %TOj$_37map1, i64* %eptr8621                                             ; *eptr8621 = %TOj$_37map1
  %eptr8617 = getelementptr inbounds i64, i64* %cloptr8616, i64 0                    ; &cloptr8616[0]
  %f8622 = ptrtoint void(i64,i64,i64)* @lam8539 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8622, i64* %eptr8617                                                   ; store fptr
  %arg7267 = ptrtoint i64* %cloptr8616 to i64                                        ; closure cast; i64* -> i64
  %cloptr8623 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8624 = getelementptr inbounds i64, i64* %cloptr8623, i64 0                    ; &cloptr8623[0]
  %f8625 = ptrtoint void(i64,i64,i64)* @lam8149 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8625, i64* %eptr8624                                                   ; store fptr
  %arg7266 = ptrtoint i64* %cloptr8623 to i64                                        ; closure cast; i64* -> i64
  %cloptr8626 = inttoptr i64 %JuO$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8626)                                         ; assert function application
  %i0ptr8627 = getelementptr inbounds i64, i64* %cloptr8626, i64 0                   ; &cloptr8626[0]
  %f8629 = load i64, i64* %i0ptr8627, align 8                                        ; load; *i0ptr8627
  %fptr8628 = inttoptr i64 %f8629 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8628(i64 %JuO$Ycmb, i64 %arg7267, i64 %arg7266)     ; tail call
  ret void
}


define void @lam8539(i64 %env8540, i64 %_957068, i64 %wwG$_37length) {
  %envptr8630 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8631 = getelementptr inbounds i64, i64* %envptr8630, i64 4                  ; &envptr8630[4]
  %TOj$_37map1 = load i64, i64* %envptr8631, align 8                                 ; load; *envptr8631
  %envptr8632 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8633 = getelementptr inbounds i64, i64* %envptr8632, i64 3                  ; &envptr8632[3]
  %cVJ$_37foldr1 = load i64, i64* %envptr8633, align 8                               ; load; *envptr8633
  %envptr8634 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8635 = getelementptr inbounds i64, i64* %envptr8634, i64 2                  ; &envptr8634[2]
  %JuO$Ycmb = load i64, i64* %envptr8635, align 8                                    ; load; *envptr8635
  %envptr8636 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8637 = getelementptr inbounds i64, i64* %envptr8636, i64 1                  ; &envptr8636[1]
  %y18$_37take = load i64, i64* %envptr8637, align 8                                 ; load; *envptr8637
  %cloptr8638 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8640 = getelementptr inbounds i64, i64* %cloptr8638, i64 1                    ; &eptr8640[1]
  %eptr8641 = getelementptr inbounds i64, i64* %cloptr8638, i64 2                    ; &eptr8641[2]
  %eptr8642 = getelementptr inbounds i64, i64* %cloptr8638, i64 3                    ; &eptr8642[3]
  %eptr8643 = getelementptr inbounds i64, i64* %cloptr8638, i64 4                    ; &eptr8643[4]
  %eptr8644 = getelementptr inbounds i64, i64* %cloptr8638, i64 5                    ; &eptr8644[5]
  store i64 %y18$_37take, i64* %eptr8640                                             ; *eptr8640 = %y18$_37take
  store i64 %wwG$_37length, i64* %eptr8641                                           ; *eptr8641 = %wwG$_37length
  store i64 %JuO$Ycmb, i64* %eptr8642                                                ; *eptr8642 = %JuO$Ycmb
  store i64 %cVJ$_37foldr1, i64* %eptr8643                                           ; *eptr8643 = %cVJ$_37foldr1
  store i64 %TOj$_37map1, i64* %eptr8644                                             ; *eptr8644 = %TOj$_37map1
  %eptr8639 = getelementptr inbounds i64, i64* %cloptr8638, i64 0                    ; &cloptr8638[0]
  %f8645 = ptrtoint void(i64,i64,i64)* @lam8537 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8645, i64* %eptr8639                                                   ; store fptr
  %arg7270 = ptrtoint i64* %cloptr8638 to i64                                        ; closure cast; i64* -> i64
  %cloptr8646 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8647 = getelementptr inbounds i64, i64* %cloptr8646, i64 0                    ; &cloptr8646[0]
  %f8648 = ptrtoint void(i64,i64,i64)* @lam8157 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8648, i64* %eptr8647                                                   ; store fptr
  %arg7269 = ptrtoint i64* %cloptr8646 to i64                                        ; closure cast; i64* -> i64
  %cloptr8649 = inttoptr i64 %JuO$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8649)                                         ; assert function application
  %i0ptr8650 = getelementptr inbounds i64, i64* %cloptr8649, i64 0                   ; &cloptr8649[0]
  %f8652 = load i64, i64* %i0ptr8650, align 8                                        ; load; *i0ptr8650
  %fptr8651 = inttoptr i64 %f8652 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8651(i64 %JuO$Ycmb, i64 %arg7270, i64 %arg7269)     ; tail call
  ret void
}


define void @lam8537(i64 %env8538, i64 %_957069, i64 %yoz$_37foldl1) {
  %envptr8653 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8654 = getelementptr inbounds i64, i64* %envptr8653, i64 5                  ; &envptr8653[5]
  %TOj$_37map1 = load i64, i64* %envptr8654, align 8                                 ; load; *envptr8654
  %envptr8655 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8656 = getelementptr inbounds i64, i64* %envptr8655, i64 4                  ; &envptr8655[4]
  %cVJ$_37foldr1 = load i64, i64* %envptr8656, align 8                               ; load; *envptr8656
  %envptr8657 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8658 = getelementptr inbounds i64, i64* %envptr8657, i64 3                  ; &envptr8657[3]
  %JuO$Ycmb = load i64, i64* %envptr8658, align 8                                    ; load; *envptr8658
  %envptr8659 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8660 = getelementptr inbounds i64, i64* %envptr8659, i64 2                  ; &envptr8659[2]
  %wwG$_37length = load i64, i64* %envptr8660, align 8                               ; load; *envptr8660
  %envptr8661 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8662 = getelementptr inbounds i64, i64* %envptr8661, i64 1                  ; &envptr8661[1]
  %y18$_37take = load i64, i64* %envptr8662, align 8                                 ; load; *envptr8662
  %cloptr8663 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8665 = getelementptr inbounds i64, i64* %cloptr8663, i64 1                    ; &eptr8665[1]
  store i64 %yoz$_37foldl1, i64* %eptr8665                                           ; *eptr8665 = %yoz$_37foldl1
  %eptr8664 = getelementptr inbounds i64, i64* %cloptr8663, i64 0                    ; &cloptr8663[0]
  %f8666 = ptrtoint void(i64,i64,i64)* @lam8535 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8666, i64* %eptr8664                                                   ; store fptr
  %LPN$_37last = ptrtoint i64* %cloptr8663 to i64                                    ; closure cast; i64* -> i64
  %cloptr8667 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8669 = getelementptr inbounds i64, i64* %cloptr8667, i64 1                    ; &eptr8669[1]
  %eptr8670 = getelementptr inbounds i64, i64* %cloptr8667, i64 2                    ; &eptr8670[2]
  store i64 %y18$_37take, i64* %eptr8669                                             ; *eptr8669 = %y18$_37take
  store i64 %wwG$_37length, i64* %eptr8670                                           ; *eptr8670 = %wwG$_37length
  %eptr8668 = getelementptr inbounds i64, i64* %cloptr8667, i64 0                    ; &cloptr8667[0]
  %f8671 = ptrtoint void(i64,i64,i64,i64)* @lam8529 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8671, i64* %eptr8668                                                   ; store fptr
  %Lme$_37drop_45right = ptrtoint i64* %cloptr8667 to i64                            ; closure cast; i64* -> i64
  %cloptr8672 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8674 = getelementptr inbounds i64, i64* %cloptr8672, i64 1                    ; &eptr8674[1]
  %eptr8675 = getelementptr inbounds i64, i64* %cloptr8672, i64 2                    ; &eptr8675[2]
  %eptr8676 = getelementptr inbounds i64, i64* %cloptr8672, i64 3                    ; &eptr8676[3]
  %eptr8677 = getelementptr inbounds i64, i64* %cloptr8672, i64 4                    ; &eptr8677[4]
  %eptr8678 = getelementptr inbounds i64, i64* %cloptr8672, i64 5                    ; &eptr8678[5]
  %eptr8679 = getelementptr inbounds i64, i64* %cloptr8672, i64 6                    ; &eptr8679[6]
  store i64 %Lme$_37drop_45right, i64* %eptr8674                                     ; *eptr8674 = %Lme$_37drop_45right
  store i64 %wwG$_37length, i64* %eptr8675                                           ; *eptr8675 = %wwG$_37length
  store i64 %yoz$_37foldl1, i64* %eptr8676                                           ; *eptr8676 = %yoz$_37foldl1
  store i64 %JuO$Ycmb, i64* %eptr8677                                                ; *eptr8677 = %JuO$Ycmb
  store i64 %cVJ$_37foldr1, i64* %eptr8678                                           ; *eptr8678 = %cVJ$_37foldr1
  store i64 %LPN$_37last, i64* %eptr8679                                             ; *eptr8679 = %LPN$_37last
  %eptr8673 = getelementptr inbounds i64, i64* %cloptr8672, i64 0                    ; &cloptr8672[0]
  %f8680 = ptrtoint void(i64,i64,i64)* @lam8525 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8680, i64* %eptr8673                                                   ; store fptr
  %arg7290 = ptrtoint i64* %cloptr8672 to i64                                        ; closure cast; i64* -> i64
  %cloptr8681 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8683 = getelementptr inbounds i64, i64* %cloptr8681, i64 1                    ; &eptr8683[1]
  %eptr8684 = getelementptr inbounds i64, i64* %cloptr8681, i64 2                    ; &eptr8684[2]
  store i64 %cVJ$_37foldr1, i64* %eptr8683                                           ; *eptr8683 = %cVJ$_37foldr1
  store i64 %TOj$_37map1, i64* %eptr8684                                             ; *eptr8684 = %TOj$_37map1
  %eptr8682 = getelementptr inbounds i64, i64* %cloptr8681, i64 0                    ; &cloptr8681[0]
  %f8685 = ptrtoint void(i64,i64,i64)* @lam8194 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8685, i64* %eptr8682                                                   ; store fptr
  %arg7289 = ptrtoint i64* %cloptr8681 to i64                                        ; closure cast; i64* -> i64
  %cloptr8686 = inttoptr i64 %JuO$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8686)                                         ; assert function application
  %i0ptr8687 = getelementptr inbounds i64, i64* %cloptr8686, i64 0                   ; &cloptr8686[0]
  %f8689 = load i64, i64* %i0ptr8687, align 8                                        ; load; *i0ptr8687
  %fptr8688 = inttoptr i64 %f8689 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8688(i64 %JuO$Ycmb, i64 %arg7290, i64 %arg7289)     ; tail call
  ret void
}


define void @lam8535(i64 %env8536, i64 %cont7070, i64 %tWR$lst) {
  %envptr8690 = inttoptr i64 %env8536 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8691 = getelementptr inbounds i64, i64* %envptr8690, i64 1                  ; &envptr8690[1]
  %yoz$_37foldl1 = load i64, i64* %envptr8691, align 8                               ; load; *envptr8691
  %cloptr8692 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8693 = getelementptr inbounds i64, i64* %cloptr8692, i64 0                    ; &cloptr8692[0]
  %f8694 = ptrtoint void(i64,i64,i64,i64)* @lam8533 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8694, i64* %eptr8693                                                   ; store fptr
  %arg7274 = ptrtoint i64* %cloptr8692 to i64                                        ; closure cast; i64* -> i64
  %arg7273 = add i64 0, 0                                                            ; quoted ()
  %cloptr8695 = inttoptr i64 %yoz$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8695)                                         ; assert function application
  %i0ptr8696 = getelementptr inbounds i64, i64* %cloptr8695, i64 0                   ; &cloptr8695[0]
  %f8698 = load i64, i64* %i0ptr8696, align 8                                        ; load; *i0ptr8696
  %fptr8697 = inttoptr i64 %f8698 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8697(i64 %yoz$_37foldl1, i64 %cont7070, i64 %arg7274, i64 %arg7273, i64 %tWR$lst); tail call
  ret void
}


define void @lam8533(i64 %env8534, i64 %cont7071, i64 %J7a$x, i64 %I5x$y) {
  %arg7278 = add i64 0, 0                                                            ; quoted ()
  %cloptr8699 = inttoptr i64 %cont7071 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8699)                                         ; assert function application
  %i0ptr8700 = getelementptr inbounds i64, i64* %cloptr8699, i64 0                   ; &cloptr8699[0]
  %f8702 = load i64, i64* %i0ptr8700, align 8                                        ; load; *i0ptr8700
  %fptr8701 = inttoptr i64 %f8702 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8701(i64 %cont7071, i64 %arg7278, i64 %J7a$x)       ; tail call
  ret void
}


define void @lam8529(i64 %env8530, i64 %cont7072, i64 %wsy$lst, i64 %GZJ$n) {
  %envptr8703 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8704 = getelementptr inbounds i64, i64* %envptr8703, i64 2                  ; &envptr8703[2]
  %wwG$_37length = load i64, i64* %envptr8704, align 8                               ; load; *envptr8704
  %envptr8705 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8706 = getelementptr inbounds i64, i64* %envptr8705, i64 1                  ; &envptr8705[1]
  %y18$_37take = load i64, i64* %envptr8706, align 8                                 ; load; *envptr8706
  %cloptr8707 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8709 = getelementptr inbounds i64, i64* %cloptr8707, i64 1                    ; &eptr8709[1]
  %eptr8710 = getelementptr inbounds i64, i64* %cloptr8707, i64 2                    ; &eptr8710[2]
  %eptr8711 = getelementptr inbounds i64, i64* %cloptr8707, i64 3                    ; &eptr8711[3]
  %eptr8712 = getelementptr inbounds i64, i64* %cloptr8707, i64 4                    ; &eptr8712[4]
  store i64 %y18$_37take, i64* %eptr8709                                             ; *eptr8709 = %y18$_37take
  store i64 %GZJ$n, i64* %eptr8710                                                   ; *eptr8710 = %GZJ$n
  store i64 %wsy$lst, i64* %eptr8711                                                 ; *eptr8711 = %wsy$lst
  store i64 %cont7072, i64* %eptr8712                                                ; *eptr8712 = %cont7072
  %eptr8708 = getelementptr inbounds i64, i64* %cloptr8707, i64 0                    ; &cloptr8707[0]
  %f8713 = ptrtoint void(i64,i64,i64)* @lam8527 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8713, i64* %eptr8708                                                   ; store fptr
  %arg7281 = ptrtoint i64* %cloptr8707 to i64                                        ; closure cast; i64* -> i64
  %cloptr8714 = inttoptr i64 %wwG$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8714)                                         ; assert function application
  %i0ptr8715 = getelementptr inbounds i64, i64* %cloptr8714, i64 0                   ; &cloptr8714[0]
  %f8717 = load i64, i64* %i0ptr8715, align 8                                        ; load; *i0ptr8715
  %fptr8716 = inttoptr i64 %f8717 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8716(i64 %wwG$_37length, i64 %arg7281, i64 %wsy$lst); tail call
  ret void
}


define void @lam8527(i64 %env8528, i64 %_957073, i64 %a6969) {
  %envptr8718 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8719 = getelementptr inbounds i64, i64* %envptr8718, i64 4                  ; &envptr8718[4]
  %cont7072 = load i64, i64* %envptr8719, align 8                                    ; load; *envptr8719
  %envptr8720 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8721 = getelementptr inbounds i64, i64* %envptr8720, i64 3                  ; &envptr8720[3]
  %wsy$lst = load i64, i64* %envptr8721, align 8                                     ; load; *envptr8721
  %envptr8722 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8723 = getelementptr inbounds i64, i64* %envptr8722, i64 2                  ; &envptr8722[2]
  %GZJ$n = load i64, i64* %envptr8723, align 8                                       ; load; *envptr8723
  %envptr8724 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8725 = getelementptr inbounds i64, i64* %envptr8724, i64 1                  ; &envptr8724[1]
  %y18$_37take = load i64, i64* %envptr8725, align 8                                 ; load; *envptr8725
  %a6970 = call i64 @prim__45(i64 %a6969, i64 %GZJ$n)                                ; call prim__45
  %cloptr8726 = inttoptr i64 %y18$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8726)                                         ; assert function application
  %i0ptr8727 = getelementptr inbounds i64, i64* %cloptr8726, i64 0                   ; &cloptr8726[0]
  %f8729 = load i64, i64* %i0ptr8727, align 8                                        ; load; *i0ptr8727
  %fptr8728 = inttoptr i64 %f8729 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8728(i64 %y18$_37take, i64 %cont7072, i64 %wsy$lst, i64 %a6970); tail call
  ret void
}


define void @lam8525(i64 %env8526, i64 %_957074, i64 %Akk$_37foldr) {
  %envptr8730 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8731 = getelementptr inbounds i64, i64* %envptr8730, i64 6                  ; &envptr8730[6]
  %LPN$_37last = load i64, i64* %envptr8731, align 8                                 ; load; *envptr8731
  %envptr8732 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8733 = getelementptr inbounds i64, i64* %envptr8732, i64 5                  ; &envptr8732[5]
  %cVJ$_37foldr1 = load i64, i64* %envptr8733, align 8                               ; load; *envptr8733
  %envptr8734 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8735 = getelementptr inbounds i64, i64* %envptr8734, i64 4                  ; &envptr8734[4]
  %JuO$Ycmb = load i64, i64* %envptr8735, align 8                                    ; load; *envptr8735
  %envptr8736 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8737 = getelementptr inbounds i64, i64* %envptr8736, i64 3                  ; &envptr8736[3]
  %yoz$_37foldl1 = load i64, i64* %envptr8737, align 8                               ; load; *envptr8737
  %envptr8738 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8739 = getelementptr inbounds i64, i64* %envptr8738, i64 2                  ; &envptr8738[2]
  %wwG$_37length = load i64, i64* %envptr8739, align 8                               ; load; *envptr8739
  %envptr8740 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8741 = getelementptr inbounds i64, i64* %envptr8740, i64 1                  ; &envptr8740[1]
  %Lme$_37drop_45right = load i64, i64* %envptr8741, align 8                         ; load; *envptr8741
  %cloptr8742 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8744 = getelementptr inbounds i64, i64* %cloptr8742, i64 1                    ; &eptr8744[1]
  store i64 %cVJ$_37foldr1, i64* %eptr8744                                           ; *eptr8744 = %cVJ$_37foldr1
  %eptr8743 = getelementptr inbounds i64, i64* %cloptr8742, i64 0                    ; &cloptr8742[0]
  %f8745 = ptrtoint void(i64,i64,i64,i64)* @lam8523 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8745, i64* %eptr8743                                                   ; store fptr
  %v77$_37map1 = ptrtoint i64* %cloptr8742 to i64                                    ; closure cast; i64* -> i64
  %cloptr8746 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8748 = getelementptr inbounds i64, i64* %cloptr8746, i64 1                    ; &eptr8748[1]
  %eptr8749 = getelementptr inbounds i64, i64* %cloptr8746, i64 2                    ; &eptr8749[2]
  %eptr8750 = getelementptr inbounds i64, i64* %cloptr8746, i64 3                    ; &eptr8750[3]
  store i64 %Lme$_37drop_45right, i64* %eptr8748                                     ; *eptr8748 = %Lme$_37drop_45right
  store i64 %Akk$_37foldr, i64* %eptr8749                                            ; *eptr8749 = %Akk$_37foldr
  store i64 %LPN$_37last, i64* %eptr8750                                             ; *eptr8750 = %LPN$_37last
  %eptr8747 = getelementptr inbounds i64, i64* %cloptr8746, i64 0                    ; &cloptr8746[0]
  %f8751 = ptrtoint void(i64,i64)* @lam8515 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8751, i64* %eptr8747                                                   ; store fptr
  %cM2$_37map = ptrtoint i64* %cloptr8746 to i64                                     ; closure cast; i64* -> i64
  %cloptr8752 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8754 = getelementptr inbounds i64, i64* %cloptr8752, i64 1                    ; &eptr8754[1]
  %eptr8755 = getelementptr inbounds i64, i64* %cloptr8752, i64 2                    ; &eptr8755[2]
  store i64 %wwG$_37length, i64* %eptr8754                                           ; *eptr8754 = %wwG$_37length
  store i64 %yoz$_37foldl1, i64* %eptr8755                                           ; *eptr8755 = %yoz$_37foldl1
  %eptr8753 = getelementptr inbounds i64, i64* %cloptr8752, i64 0                    ; &cloptr8752[0]
  %f8756 = ptrtoint void(i64,i64,i64)* @lam8502 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8756, i64* %eptr8753                                                   ; store fptr
  %arg7332 = ptrtoint i64* %cloptr8752 to i64                                        ; closure cast; i64* -> i64
  %cloptr8757 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8759 = getelementptr inbounds i64, i64* %cloptr8757, i64 1                    ; &eptr8759[1]
  %eptr8760 = getelementptr inbounds i64, i64* %cloptr8757, i64 2                    ; &eptr8760[2]
  %eptr8761 = getelementptr inbounds i64, i64* %cloptr8757, i64 3                    ; &eptr8761[3]
  store i64 %cVJ$_37foldr1, i64* %eptr8759                                           ; *eptr8759 = %cVJ$_37foldr1
  store i64 %v77$_37map1, i64* %eptr8760                                             ; *eptr8760 = %v77$_37map1
  store i64 %Akk$_37foldr, i64* %eptr8761                                            ; *eptr8761 = %Akk$_37foldr
  %eptr8758 = getelementptr inbounds i64, i64* %cloptr8757, i64 0                    ; &cloptr8757[0]
  %f8762 = ptrtoint void(i64,i64,i64)* @lam8231 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8762, i64* %eptr8758                                                   ; store fptr
  %arg7331 = ptrtoint i64* %cloptr8757 to i64                                        ; closure cast; i64* -> i64
  %cloptr8763 = inttoptr i64 %JuO$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8763)                                         ; assert function application
  %i0ptr8764 = getelementptr inbounds i64, i64* %cloptr8763, i64 0                   ; &cloptr8763[0]
  %f8766 = load i64, i64* %i0ptr8764, align 8                                        ; load; *i0ptr8764
  %fptr8765 = inttoptr i64 %f8766 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8765(i64 %JuO$Ycmb, i64 %arg7332, i64 %arg7331)     ; tail call
  ret void
}


define void @lam8523(i64 %env8524, i64 %cont7075, i64 %yIx$f, i64 %ldK$lst) {
  %envptr8767 = inttoptr i64 %env8524 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8768 = getelementptr inbounds i64, i64* %envptr8767, i64 1                  ; &envptr8767[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr8768, align 8                               ; load; *envptr8768
  %cloptr8769 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8771 = getelementptr inbounds i64, i64* %cloptr8769, i64 1                    ; &eptr8771[1]
  store i64 %yIx$f, i64* %eptr8771                                                   ; *eptr8771 = %yIx$f
  %eptr8770 = getelementptr inbounds i64, i64* %cloptr8769, i64 0                    ; &cloptr8769[0]
  %f8772 = ptrtoint void(i64,i64,i64,i64)* @lam8521 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8772, i64* %eptr8770                                                   ; store fptr
  %arg7294 = ptrtoint i64* %cloptr8769 to i64                                        ; closure cast; i64* -> i64
  %arg7293 = add i64 0, 0                                                            ; quoted ()
  %cloptr8773 = inttoptr i64 %cVJ$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8773)                                         ; assert function application
  %i0ptr8774 = getelementptr inbounds i64, i64* %cloptr8773, i64 0                   ; &cloptr8773[0]
  %f8776 = load i64, i64* %i0ptr8774, align 8                                        ; load; *i0ptr8774
  %fptr8775 = inttoptr i64 %f8776 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8775(i64 %cVJ$_37foldr1, i64 %cont7075, i64 %arg7294, i64 %arg7293, i64 %ldK$lst); tail call
  ret void
}


define void @lam8521(i64 %env8522, i64 %cont7076, i64 %jfV$v, i64 %Fex$r) {
  %envptr8777 = inttoptr i64 %env8522 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8778 = getelementptr inbounds i64, i64* %envptr8777, i64 1                  ; &envptr8777[1]
  %yIx$f = load i64, i64* %envptr8778, align 8                                       ; load; *envptr8778
  %cloptr8779 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8781 = getelementptr inbounds i64, i64* %cloptr8779, i64 1                    ; &eptr8781[1]
  %eptr8782 = getelementptr inbounds i64, i64* %cloptr8779, i64 2                    ; &eptr8782[2]
  store i64 %Fex$r, i64* %eptr8781                                                   ; *eptr8781 = %Fex$r
  store i64 %cont7076, i64* %eptr8782                                                ; *eptr8782 = %cont7076
  %eptr8780 = getelementptr inbounds i64, i64* %cloptr8779, i64 0                    ; &cloptr8779[0]
  %f8783 = ptrtoint void(i64,i64,i64)* @lam8519 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8783, i64* %eptr8780                                                   ; store fptr
  %arg7298 = ptrtoint i64* %cloptr8779 to i64                                        ; closure cast; i64* -> i64
  %cloptr8784 = inttoptr i64 %yIx$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8784)                                         ; assert function application
  %i0ptr8785 = getelementptr inbounds i64, i64* %cloptr8784, i64 0                   ; &cloptr8784[0]
  %f8787 = load i64, i64* %i0ptr8785, align 8                                        ; load; *i0ptr8785
  %fptr8786 = inttoptr i64 %f8787 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8786(i64 %yIx$f, i64 %arg7298, i64 %jfV$v)          ; tail call
  ret void
}


define void @lam8519(i64 %env8520, i64 %_957077, i64 %a6979) {
  %envptr8788 = inttoptr i64 %env8520 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8789 = getelementptr inbounds i64, i64* %envptr8788, i64 2                  ; &envptr8788[2]
  %cont7076 = load i64, i64* %envptr8789, align 8                                    ; load; *envptr8789
  %envptr8790 = inttoptr i64 %env8520 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8791 = getelementptr inbounds i64, i64* %envptr8790, i64 1                  ; &envptr8790[1]
  %Fex$r = load i64, i64* %envptr8791, align 8                                       ; load; *envptr8791
  %retprim7078 = call i64 @prim_cons(i64 %a6979, i64 %Fex$r)                         ; call prim_cons
  %arg7303 = add i64 0, 0                                                            ; quoted ()
  %cloptr8792 = inttoptr i64 %cont7076 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8792)                                         ; assert function application
  %i0ptr8793 = getelementptr inbounds i64, i64* %cloptr8792, i64 0                   ; &cloptr8792[0]
  %f8795 = load i64, i64* %i0ptr8793, align 8                                        ; load; *i0ptr8793
  %fptr8794 = inttoptr i64 %f8795 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8794(i64 %cont7076, i64 %arg7303, i64 %retprim7078) ; tail call
  ret void
}


define void @lam8515(i64 %env8516, i64 %yQC$args7080) {
  %envptr8796 = inttoptr i64 %env8516 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8797 = getelementptr inbounds i64, i64* %envptr8796, i64 3                  ; &envptr8796[3]
  %LPN$_37last = load i64, i64* %envptr8797, align 8                                 ; load; *envptr8797
  %envptr8798 = inttoptr i64 %env8516 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8799 = getelementptr inbounds i64, i64* %envptr8798, i64 2                  ; &envptr8798[2]
  %Akk$_37foldr = load i64, i64* %envptr8799, align 8                                ; load; *envptr8799
  %envptr8800 = inttoptr i64 %env8516 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8801 = getelementptr inbounds i64, i64* %envptr8800, i64 1                  ; &envptr8800[1]
  %Lme$_37drop_45right = load i64, i64* %envptr8801, align 8                         ; load; *envptr8801
  %cont7079 = call i64 @prim_car(i64 %yQC$args7080)                                  ; call prim_car
  %yQC$args = call i64 @prim_cdr(i64 %yQC$args7080)                                  ; call prim_cdr
  %dN1$f = call i64 @prim_car(i64 %yQC$args)                                         ; call prim_car
  %Ovv$lsts = call i64 @prim_cdr(i64 %yQC$args)                                      ; call prim_cdr
  %arg7310 = add i64 0, 0                                                            ; quoted ()
  %a6983 = call i64 @prim_cons(i64 %arg7310, i64 %Ovv$lsts)                          ; call prim_cons
  %cloptr8802 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8804 = getelementptr inbounds i64, i64* %cloptr8802, i64 1                    ; &eptr8804[1]
  %eptr8805 = getelementptr inbounds i64, i64* %cloptr8802, i64 2                    ; &eptr8805[2]
  %eptr8806 = getelementptr inbounds i64, i64* %cloptr8802, i64 3                    ; &eptr8806[3]
  store i64 %Lme$_37drop_45right, i64* %eptr8804                                     ; *eptr8804 = %Lme$_37drop_45right
  store i64 %LPN$_37last, i64* %eptr8805                                             ; *eptr8805 = %LPN$_37last
  store i64 %dN1$f, i64* %eptr8806                                                   ; *eptr8806 = %dN1$f
  %eptr8803 = getelementptr inbounds i64, i64* %cloptr8802, i64 0                    ; &cloptr8802[0]
  %f8807 = ptrtoint void(i64,i64)* @lam8512 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8807, i64* %eptr8803                                                   ; store fptr
  %arg7312 = ptrtoint i64* %cloptr8802 to i64                                        ; closure cast; i64* -> i64
  %a6984 = call i64 @prim_cons(i64 %arg7312, i64 %a6983)                             ; call prim_cons
  %cps_45lst7088 = call i64 @prim_cons(i64 %cont7079, i64 %a6984)                    ; call prim_cons
  %cloptr8808 = inttoptr i64 %Akk$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8808)                                         ; assert function application
  %i0ptr8809 = getelementptr inbounds i64, i64* %cloptr8808, i64 0                   ; &cloptr8808[0]
  %f8811 = load i64, i64* %i0ptr8809, align 8                                        ; load; *i0ptr8809
  %fptr8810 = inttoptr i64 %f8811 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8810(i64 %Akk$_37foldr, i64 %cps_45lst7088)         ; tail call
  ret void
}


define void @lam8512(i64 %env8513, i64 %Jf8$fargs7082) {
  %envptr8812 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8813 = getelementptr inbounds i64, i64* %envptr8812, i64 3                  ; &envptr8812[3]
  %dN1$f = load i64, i64* %envptr8813, align 8                                       ; load; *envptr8813
  %envptr8814 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8815 = getelementptr inbounds i64, i64* %envptr8814, i64 2                  ; &envptr8814[2]
  %LPN$_37last = load i64, i64* %envptr8815, align 8                                 ; load; *envptr8815
  %envptr8816 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8817 = getelementptr inbounds i64, i64* %envptr8816, i64 1                  ; &envptr8816[1]
  %Lme$_37drop_45right = load i64, i64* %envptr8817, align 8                         ; load; *envptr8817
  %cont7081 = call i64 @prim_car(i64 %Jf8$fargs7082)                                 ; call prim_car
  %Jf8$fargs = call i64 @prim_cdr(i64 %Jf8$fargs7082)                                ; call prim_cdr
  %cloptr8818 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8820 = getelementptr inbounds i64, i64* %cloptr8818, i64 1                    ; &eptr8820[1]
  %eptr8821 = getelementptr inbounds i64, i64* %cloptr8818, i64 2                    ; &eptr8821[2]
  %eptr8822 = getelementptr inbounds i64, i64* %cloptr8818, i64 3                    ; &eptr8822[3]
  %eptr8823 = getelementptr inbounds i64, i64* %cloptr8818, i64 4                    ; &eptr8823[4]
  store i64 %Jf8$fargs, i64* %eptr8820                                               ; *eptr8820 = %Jf8$fargs
  store i64 %LPN$_37last, i64* %eptr8821                                             ; *eptr8821 = %LPN$_37last
  store i64 %cont7081, i64* %eptr8822                                                ; *eptr8822 = %cont7081
  store i64 %dN1$f, i64* %eptr8823                                                   ; *eptr8823 = %dN1$f
  %eptr8819 = getelementptr inbounds i64, i64* %cloptr8818, i64 0                    ; &cloptr8818[0]
  %f8824 = ptrtoint void(i64,i64,i64)* @lam8510 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8824, i64* %eptr8819                                                   ; store fptr
  %arg7317 = ptrtoint i64* %cloptr8818 to i64                                        ; closure cast; i64* -> i64
  %arg7315 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8825 = inttoptr i64 %Lme$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8825)                                         ; assert function application
  %i0ptr8826 = getelementptr inbounds i64, i64* %cloptr8825, i64 0                   ; &cloptr8825[0]
  %f8828 = load i64, i64* %i0ptr8826, align 8                                        ; load; *i0ptr8826
  %fptr8827 = inttoptr i64 %f8828 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8827(i64 %Lme$_37drop_45right, i64 %arg7317, i64 %Jf8$fargs, i64 %arg7315); tail call
  ret void
}


define void @lam8510(i64 %env8511, i64 %_957083, i64 %a6980) {
  %envptr8829 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8830 = getelementptr inbounds i64, i64* %envptr8829, i64 4                  ; &envptr8829[4]
  %dN1$f = load i64, i64* %envptr8830, align 8                                       ; load; *envptr8830
  %envptr8831 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8832 = getelementptr inbounds i64, i64* %envptr8831, i64 3                  ; &envptr8831[3]
  %cont7081 = load i64, i64* %envptr8832, align 8                                    ; load; *envptr8832
  %envptr8833 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8834 = getelementptr inbounds i64, i64* %envptr8833, i64 2                  ; &envptr8833[2]
  %LPN$_37last = load i64, i64* %envptr8834, align 8                                 ; load; *envptr8834
  %envptr8835 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8836 = getelementptr inbounds i64, i64* %envptr8835, i64 1                  ; &envptr8835[1]
  %Jf8$fargs = load i64, i64* %envptr8836, align 8                                   ; load; *envptr8836
  %cloptr8837 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8839 = getelementptr inbounds i64, i64* %cloptr8837, i64 1                    ; &eptr8839[1]
  %eptr8840 = getelementptr inbounds i64, i64* %cloptr8837, i64 2                    ; &eptr8840[2]
  %eptr8841 = getelementptr inbounds i64, i64* %cloptr8837, i64 3                    ; &eptr8841[3]
  store i64 %Jf8$fargs, i64* %eptr8839                                               ; *eptr8839 = %Jf8$fargs
  store i64 %LPN$_37last, i64* %eptr8840                                             ; *eptr8840 = %LPN$_37last
  store i64 %cont7081, i64* %eptr8841                                                ; *eptr8841 = %cont7081
  %eptr8838 = getelementptr inbounds i64, i64* %cloptr8837, i64 0                    ; &cloptr8837[0]
  %f8842 = ptrtoint void(i64,i64,i64)* @lam8508 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8842, i64* %eptr8838                                                   ; store fptr
  %arg7320 = ptrtoint i64* %cloptr8837 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst7087 = call i64 @prim_cons(i64 %arg7320, i64 %a6980)                     ; call prim_cons
  %cloptr8843 = inttoptr i64 %dN1$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8843)                                         ; assert function application
  %i0ptr8844 = getelementptr inbounds i64, i64* %cloptr8843, i64 0                   ; &cloptr8843[0]
  %f8846 = load i64, i64* %i0ptr8844, align 8                                        ; load; *i0ptr8844
  %fptr8845 = inttoptr i64 %f8846 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8845(i64 %dN1$f, i64 %cps_45lst7087)                ; tail call
  ret void
}


define void @lam8508(i64 %env8509, i64 %_957084, i64 %a6981) {
  %envptr8847 = inttoptr i64 %env8509 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8848 = getelementptr inbounds i64, i64* %envptr8847, i64 3                  ; &envptr8847[3]
  %cont7081 = load i64, i64* %envptr8848, align 8                                    ; load; *envptr8848
  %envptr8849 = inttoptr i64 %env8509 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8850 = getelementptr inbounds i64, i64* %envptr8849, i64 2                  ; &envptr8849[2]
  %LPN$_37last = load i64, i64* %envptr8850, align 8                                 ; load; *envptr8850
  %envptr8851 = inttoptr i64 %env8509 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8852 = getelementptr inbounds i64, i64* %envptr8851, i64 1                  ; &envptr8851[1]
  %Jf8$fargs = load i64, i64* %envptr8852, align 8                                   ; load; *envptr8852
  %cloptr8853 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8855 = getelementptr inbounds i64, i64* %cloptr8853, i64 1                    ; &eptr8855[1]
  %eptr8856 = getelementptr inbounds i64, i64* %cloptr8853, i64 2                    ; &eptr8856[2]
  store i64 %a6981, i64* %eptr8855                                                   ; *eptr8855 = %a6981
  store i64 %cont7081, i64* %eptr8856                                                ; *eptr8856 = %cont7081
  %eptr8854 = getelementptr inbounds i64, i64* %cloptr8853, i64 0                    ; &cloptr8853[0]
  %f8857 = ptrtoint void(i64,i64,i64)* @lam8506 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8857, i64* %eptr8854                                                   ; store fptr
  %arg7322 = ptrtoint i64* %cloptr8853 to i64                                        ; closure cast; i64* -> i64
  %cloptr8858 = inttoptr i64 %LPN$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8858)                                         ; assert function application
  %i0ptr8859 = getelementptr inbounds i64, i64* %cloptr8858, i64 0                   ; &cloptr8858[0]
  %f8861 = load i64, i64* %i0ptr8859, align 8                                        ; load; *i0ptr8859
  %fptr8860 = inttoptr i64 %f8861 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8860(i64 %LPN$_37last, i64 %arg7322, i64 %Jf8$fargs); tail call
  ret void
}


define void @lam8506(i64 %env8507, i64 %_957085, i64 %a6982) {
  %envptr8862 = inttoptr i64 %env8507 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8863 = getelementptr inbounds i64, i64* %envptr8862, i64 2                  ; &envptr8862[2]
  %cont7081 = load i64, i64* %envptr8863, align 8                                    ; load; *envptr8863
  %envptr8864 = inttoptr i64 %env8507 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8865 = getelementptr inbounds i64, i64* %envptr8864, i64 1                  ; &envptr8864[1]
  %a6981 = load i64, i64* %envptr8865, align 8                                       ; load; *envptr8865
  %retprim7086 = call i64 @prim_cons(i64 %a6981, i64 %a6982)                         ; call prim_cons
  %arg7327 = add i64 0, 0                                                            ; quoted ()
  %cloptr8866 = inttoptr i64 %cont7081 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8866)                                         ; assert function application
  %i0ptr8867 = getelementptr inbounds i64, i64* %cloptr8866, i64 0                   ; &cloptr8866[0]
  %f8869 = load i64, i64* %i0ptr8867, align 8                                        ; load; *i0ptr8867
  %fptr8868 = inttoptr i64 %f8869 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8868(i64 %cont7081, i64 %arg7327, i64 %retprim7086) ; tail call
  ret void
}


define void @lam8502(i64 %env8503, i64 %_957089, i64 %mtF$_37foldl) {
  %envptr8870 = inttoptr i64 %env8503 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8871 = getelementptr inbounds i64, i64* %envptr8870, i64 2                  ; &envptr8870[2]
  %yoz$_37foldl1 = load i64, i64* %envptr8871, align 8                               ; load; *envptr8871
  %envptr8872 = inttoptr i64 %env8503 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8873 = getelementptr inbounds i64, i64* %envptr8872, i64 1                  ; &envptr8872[1]
  %wwG$_37length = load i64, i64* %envptr8873, align 8                               ; load; *envptr8873
  %cloptr8874 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8875 = getelementptr inbounds i64, i64* %cloptr8874, i64 0                    ; &cloptr8874[0]
  %f8876 = ptrtoint void(i64,i64,i64,i64)* @lam8500 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8876, i64* %eptr8875                                                   ; store fptr
  %ja4$_37_62 = ptrtoint i64* %cloptr8874 to i64                                     ; closure cast; i64* -> i64
  %cloptr8877 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8878 = getelementptr inbounds i64, i64* %cloptr8877, i64 0                    ; &cloptr8877[0]
  %f8879 = ptrtoint void(i64,i64,i64,i64)* @lam8497 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8879, i64* %eptr8878                                                   ; store fptr
  %Xyw$_37_62_61 = ptrtoint i64* %cloptr8877 to i64                                  ; closure cast; i64* -> i64
  %arg7347 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7346 = add i64 0, 0                                                            ; quoted ()
  %S1O$_37append = call i64 @prim_make_45vector(i64 %arg7347, i64 %arg7346)          ; call prim_make_45vector
  %arg7349 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8880 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8882 = getelementptr inbounds i64, i64* %cloptr8880, i64 1                    ; &eptr8882[1]
  store i64 %S1O$_37append, i64* %eptr8882                                           ; *eptr8882 = %S1O$_37append
  %eptr8881 = getelementptr inbounds i64, i64* %cloptr8880, i64 0                    ; &cloptr8880[0]
  %f8883 = ptrtoint void(i64,i64,i64,i64)* @lam8491 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8883, i64* %eptr8881                                                   ; store fptr
  %arg7348 = ptrtoint i64* %cloptr8880 to i64                                        ; closure cast; i64* -> i64
  %xFf$_950 = call i64 @prim_vector_45set_33(i64 %S1O$_37append, i64 %arg7349, i64 %arg7348); call prim_vector_45set_33
  %arg7368 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7179 = call i64 @prim_vector_45ref(i64 %S1O$_37append, i64 %arg7368)       ; call prim_vector_45ref
  %cloptr8884 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8886 = getelementptr inbounds i64, i64* %cloptr8884, i64 1                    ; &eptr8886[1]
  %eptr8887 = getelementptr inbounds i64, i64* %cloptr8884, i64 2                    ; &eptr8887[2]
  %eptr8888 = getelementptr inbounds i64, i64* %cloptr8884, i64 3                    ; &eptr8888[3]
  store i64 %wwG$_37length, i64* %eptr8886                                           ; *eptr8886 = %wwG$_37length
  store i64 %yoz$_37foldl1, i64* %eptr8887                                           ; *eptr8887 = %yoz$_37foldl1
  store i64 %ja4$_37_62, i64* %eptr8888                                              ; *eptr8888 = %ja4$_37_62
  %eptr8885 = getelementptr inbounds i64, i64* %cloptr8884, i64 0                    ; &cloptr8884[0]
  %f8889 = ptrtoint void(i64,i64,i64)* @lam8483 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8889, i64* %eptr8885                                                   ; store fptr
  %arg7372 = ptrtoint i64* %cloptr8884 to i64                                        ; closure cast; i64* -> i64
  %arg7371 = add i64 0, 0                                                            ; quoted ()
  %cloptr8890 = inttoptr i64 %arg7372 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8890)                                         ; assert function application
  %i0ptr8891 = getelementptr inbounds i64, i64* %cloptr8890, i64 0                   ; &cloptr8890[0]
  %f8893 = load i64, i64* %i0ptr8891, align 8                                        ; load; *i0ptr8891
  %fptr8892 = inttoptr i64 %f8893 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8892(i64 %arg7372, i64 %arg7371, i64 %retprim7179)  ; tail call
  ret void
}


define void @lam8500(i64 %env8501, i64 %cont7090, i64 %jaA$a, i64 %Vz5$b) {
  %a6992 = call i64 @prim__60_61(i64 %jaA$a, i64 %Vz5$b)                             ; call prim__60_61
  %retprim7091 = call i64 @prim_not(i64 %a6992)                                      ; call prim_not
  %arg7338 = add i64 0, 0                                                            ; quoted ()
  %cloptr8894 = inttoptr i64 %cont7090 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8894)                                         ; assert function application
  %i0ptr8895 = getelementptr inbounds i64, i64* %cloptr8894, i64 0                   ; &cloptr8894[0]
  %f8897 = load i64, i64* %i0ptr8895, align 8                                        ; load; *i0ptr8895
  %fptr8896 = inttoptr i64 %f8897 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8896(i64 %cont7090, i64 %arg7338, i64 %retprim7091) ; tail call
  ret void
}


define void @lam8497(i64 %env8498, i64 %cont7092, i64 %svZ$a, i64 %Gg2$b) {
  %a6993 = call i64 @prim__60(i64 %svZ$a, i64 %Gg2$b)                                ; call prim__60
  %retprim7093 = call i64 @prim_not(i64 %a6993)                                      ; call prim_not
  %arg7344 = add i64 0, 0                                                            ; quoted ()
  %cloptr8898 = inttoptr i64 %cont7092 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8898)                                         ; assert function application
  %i0ptr8899 = getelementptr inbounds i64, i64* %cloptr8898, i64 0                   ; &cloptr8898[0]
  %f8901 = load i64, i64* %i0ptr8899, align 8                                        ; load; *i0ptr8899
  %fptr8900 = inttoptr i64 %f8901 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8900(i64 %cont7092, i64 %arg7344, i64 %retprim7093) ; tail call
  ret void
}


define void @lam8491(i64 %env8492, i64 %cont7176, i64 %uCI$ls0, i64 %muZ$ls1) {
  %envptr8902 = inttoptr i64 %env8492 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8903 = getelementptr inbounds i64, i64* %envptr8902, i64 1                  ; &envptr8902[1]
  %S1O$_37append = load i64, i64* %envptr8903, align 8                               ; load; *envptr8903
  %a6994 = call i64 @prim_null_63(i64 %uCI$ls0)                                      ; call prim_null_63
  %cmp8904 = icmp eq i64 %a6994, 15                                                  ; false?
  br i1 %cmp8904, label %else8906, label %then8905                                   ; if

then8905:
  %arg7353 = add i64 0, 0                                                            ; quoted ()
  %cloptr8907 = inttoptr i64 %cont7176 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8907)                                         ; assert function application
  %i0ptr8908 = getelementptr inbounds i64, i64* %cloptr8907, i64 0                   ; &cloptr8907[0]
  %f8910 = load i64, i64* %i0ptr8908, align 8                                        ; load; *i0ptr8908
  %fptr8909 = inttoptr i64 %f8910 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8909(i64 %cont7176, i64 %arg7353, i64 %muZ$ls1)     ; tail call
  ret void

else8906:
  %a6995 = call i64 @prim_car(i64 %uCI$ls0)                                          ; call prim_car
  %arg7356 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6996 = call i64 @prim_vector_45ref(i64 %S1O$_37append, i64 %arg7356)             ; call prim_vector_45ref
  %a6997 = call i64 @prim_cdr(i64 %uCI$ls0)                                          ; call prim_cdr
  %cloptr8911 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8913 = getelementptr inbounds i64, i64* %cloptr8911, i64 1                    ; &eptr8913[1]
  %eptr8914 = getelementptr inbounds i64, i64* %cloptr8911, i64 2                    ; &eptr8914[2]
  store i64 %cont7176, i64* %eptr8913                                                ; *eptr8913 = %cont7176
  store i64 %a6995, i64* %eptr8914                                                   ; *eptr8914 = %a6995
  %eptr8912 = getelementptr inbounds i64, i64* %cloptr8911, i64 0                    ; &cloptr8911[0]
  %f8915 = ptrtoint void(i64,i64,i64)* @lam8488 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8915, i64* %eptr8912                                                   ; store fptr
  %arg7361 = ptrtoint i64* %cloptr8911 to i64                                        ; closure cast; i64* -> i64
  %cloptr8916 = inttoptr i64 %a6996 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8916)                                         ; assert function application
  %i0ptr8917 = getelementptr inbounds i64, i64* %cloptr8916, i64 0                   ; &cloptr8916[0]
  %f8919 = load i64, i64* %i0ptr8917, align 8                                        ; load; *i0ptr8917
  %fptr8918 = inttoptr i64 %f8919 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8918(i64 %a6996, i64 %arg7361, i64 %a6997, i64 %muZ$ls1); tail call
  ret void
}


define void @lam8488(i64 %env8489, i64 %_957177, i64 %a6998) {
  %envptr8920 = inttoptr i64 %env8489 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8921 = getelementptr inbounds i64, i64* %envptr8920, i64 2                  ; &envptr8920[2]
  %a6995 = load i64, i64* %envptr8921, align 8                                       ; load; *envptr8921
  %envptr8922 = inttoptr i64 %env8489 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8923 = getelementptr inbounds i64, i64* %envptr8922, i64 1                  ; &envptr8922[1]
  %cont7176 = load i64, i64* %envptr8923, align 8                                    ; load; *envptr8923
  %retprim7178 = call i64 @prim_cons(i64 %a6995, i64 %a6998)                         ; call prim_cons
  %arg7366 = add i64 0, 0                                                            ; quoted ()
  %cloptr8924 = inttoptr i64 %cont7176 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8924)                                         ; assert function application
  %i0ptr8925 = getelementptr inbounds i64, i64* %cloptr8924, i64 0                   ; &cloptr8924[0]
  %f8927 = load i64, i64* %i0ptr8925, align 8                                        ; load; *i0ptr8925
  %fptr8926 = inttoptr i64 %f8927 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8926(i64 %cont7176, i64 %arg7366, i64 %retprim7178) ; tail call
  ret void
}


define void @lam8483(i64 %env8484, i64 %_957094, i64 %atm$_37append) {
  %envptr8928 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8929 = getelementptr inbounds i64, i64* %envptr8928, i64 3                  ; &envptr8928[3]
  %ja4$_37_62 = load i64, i64* %envptr8929, align 8                                  ; load; *envptr8929
  %envptr8930 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8931 = getelementptr inbounds i64, i64* %envptr8930, i64 2                  ; &envptr8930[2]
  %yoz$_37foldl1 = load i64, i64* %envptr8931, align 8                               ; load; *envptr8931
  %envptr8932 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8933 = getelementptr inbounds i64, i64* %envptr8932, i64 1                  ; &envptr8932[1]
  %wwG$_37length = load i64, i64* %envptr8933, align 8                               ; load; *envptr8933
  %cloptr8934 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8935 = getelementptr inbounds i64, i64* %cloptr8934, i64 0                    ; &cloptr8934[0]
  %f8936 = ptrtoint void(i64,i64,i64)* @lam8481 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8936, i64* %eptr8935                                                   ; store fptr
  %dlg$_37list_63 = ptrtoint i64* %cloptr8934 to i64                                 ; closure cast; i64* -> i64
  %cloptr8937 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8938 = getelementptr inbounds i64, i64* %cloptr8937, i64 0                    ; &cloptr8937[0]
  %f8939 = ptrtoint void(i64,i64,i64,i64)* @lam8441 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8939, i64* %eptr8938                                                   ; store fptr
  %ZYT$_37drop = ptrtoint i64* %cloptr8937 to i64                                    ; closure cast; i64* -> i64
  %cloptr8940 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8941 = getelementptr inbounds i64, i64* %cloptr8940, i64 0                    ; &cloptr8940[0]
  %f8942 = ptrtoint void(i64,i64,i64,i64)* @lam8401 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8942, i64* %eptr8941                                                   ; store fptr
  %QzR$_37memv = ptrtoint i64* %cloptr8940 to i64                                    ; closure cast; i64* -> i64
  %cloptr8943 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8945 = getelementptr inbounds i64, i64* %cloptr8943, i64 1                    ; &eptr8945[1]
  store i64 %yoz$_37foldl1, i64* %eptr8945                                           ; *eptr8945 = %yoz$_37foldl1
  %eptr8944 = getelementptr inbounds i64, i64* %cloptr8943, i64 0                    ; &cloptr8943[0]
  %f8946 = ptrtoint void(i64,i64)* @lam8370 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8946, i64* %eptr8944                                                   ; store fptr
  %M2y$_37_47 = ptrtoint i64* %cloptr8943 to i64                                     ; closure cast; i64* -> i64
  %cloptr8947 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8948 = getelementptr inbounds i64, i64* %cloptr8947, i64 0                    ; &cloptr8947[0]
  %f8949 = ptrtoint void(i64,i64,i64)* @lam8362 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8949, i64* %eptr8948                                                   ; store fptr
  %gGP$_37first = ptrtoint i64* %cloptr8947 to i64                                   ; closure cast; i64* -> i64
  %cloptr8950 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8951 = getelementptr inbounds i64, i64* %cloptr8950, i64 0                    ; &cloptr8950[0]
  %f8952 = ptrtoint void(i64,i64,i64)* @lam8359 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8952, i64* %eptr8951                                                   ; store fptr
  %FS6$_37second = ptrtoint i64* %cloptr8950 to i64                                  ; closure cast; i64* -> i64
  %cloptr8953 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8954 = getelementptr inbounds i64, i64* %cloptr8953, i64 0                    ; &cloptr8953[0]
  %f8955 = ptrtoint void(i64,i64,i64)* @lam8356 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8955, i64* %eptr8954                                                   ; store fptr
  %gSr$_37third = ptrtoint i64* %cloptr8953 to i64                                   ; closure cast; i64* -> i64
  %cloptr8956 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8957 = getelementptr inbounds i64, i64* %cloptr8956, i64 0                    ; &cloptr8956[0]
  %f8958 = ptrtoint void(i64,i64,i64)* @lam8353 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8958, i64* %eptr8957                                                   ; store fptr
  %PvL$_37fourth = ptrtoint i64* %cloptr8956 to i64                                  ; closure cast; i64* -> i64
  %cloptr8959 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8960 = getelementptr inbounds i64, i64* %cloptr8959, i64 0                    ; &cloptr8959[0]
  %f8961 = ptrtoint void(i64,i64,i64)* @lam8350 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8961, i64* %eptr8960                                                   ; store fptr
  %AuU$promise_63 = ptrtoint i64* %cloptr8959 to i64                                 ; closure cast; i64* -> i64
  %cloptr8962 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8963 = getelementptr inbounds i64, i64* %cloptr8962, i64 0                    ; &cloptr8962[0]
  %f8964 = ptrtoint void(i64,i64)* @lam8344 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8964, i64* %eptr8963                                                   ; store fptr
  %arg7634 = ptrtoint i64* %cloptr8962 to i64                                        ; closure cast; i64* -> i64
  %cloptr8965 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8967 = getelementptr inbounds i64, i64* %cloptr8965, i64 1                    ; &eptr8967[1]
  %eptr8968 = getelementptr inbounds i64, i64* %cloptr8965, i64 2                    ; &eptr8968[2]
  %eptr8969 = getelementptr inbounds i64, i64* %cloptr8965, i64 3                    ; &eptr8969[3]
  store i64 %wwG$_37length, i64* %eptr8967                                           ; *eptr8967 = %wwG$_37length
  store i64 %ja4$_37_62, i64* %eptr8968                                              ; *eptr8968 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr8969                                             ; *eptr8969 = %ZYT$_37drop
  %eptr8966 = getelementptr inbounds i64, i64* %cloptr8965, i64 0                    ; &cloptr8965[0]
  %f8970 = ptrtoint void(i64,i64,i64)* @lam8341 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8970, i64* %eptr8966                                                   ; store fptr
  %arg7633 = ptrtoint i64* %cloptr8965 to i64                                        ; closure cast; i64* -> i64
  %rva8094 = add i64 0, 0                                                            ; quoted ()
  %rva8093 = call i64 @prim_cons(i64 %arg7633, i64 %rva8094)                         ; call prim_cons
  %cloptr8971 = inttoptr i64 %arg7634 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8971)                                         ; assert function application
  %i0ptr8972 = getelementptr inbounds i64, i64* %cloptr8971, i64 0                   ; &cloptr8971[0]
  %f8974 = load i64, i64* %i0ptr8972, align 8                                        ; load; *i0ptr8972
  %fptr8973 = inttoptr i64 %f8974 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8973(i64 %arg7634, i64 %rva8093)                    ; tail call
  ret void
}


define void @lam8481(i64 %env8482, i64 %cont7095, i64 %PPp$a) {
  %arg7374 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %ZQO$a = call i64 @prim_make_45vector(i64 %arg7374, i64 %PPp$a)                    ; call prim_make_45vector
  %cloptr8975 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8976 = getelementptr inbounds i64, i64* %cloptr8975, i64 0                    ; &cloptr8975[0]
  %f8977 = ptrtoint void(i64,i64,i64)* @lam8478 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8977, i64* %eptr8976                                                   ; store fptr
  %arg7377 = ptrtoint i64* %cloptr8975 to i64                                        ; closure cast; i64* -> i64
  %cloptr8978 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8980 = getelementptr inbounds i64, i64* %cloptr8978, i64 1                    ; &eptr8980[1]
  %eptr8981 = getelementptr inbounds i64, i64* %cloptr8978, i64 2                    ; &eptr8981[2]
  store i64 %ZQO$a, i64* %eptr8980                                                   ; *eptr8980 = %ZQO$a
  store i64 %cont7095, i64* %eptr8981                                                ; *eptr8981 = %cont7095
  %eptr8979 = getelementptr inbounds i64, i64* %cloptr8978, i64 0                    ; &cloptr8978[0]
  %f8982 = ptrtoint void(i64,i64,i64)* @lam8475 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8982, i64* %eptr8979                                                   ; store fptr
  %arg7376 = ptrtoint i64* %cloptr8978 to i64                                        ; closure cast; i64* -> i64
  %cloptr8983 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8985 = getelementptr inbounds i64, i64* %cloptr8983, i64 1                    ; &eptr8985[1]
  %eptr8986 = getelementptr inbounds i64, i64* %cloptr8983, i64 2                    ; &eptr8986[2]
  store i64 %ZQO$a, i64* %eptr8985                                                   ; *eptr8985 = %ZQO$a
  store i64 %cont7095, i64* %eptr8986                                                ; *eptr8986 = %cont7095
  %eptr8984 = getelementptr inbounds i64, i64* %cloptr8983, i64 0                    ; &cloptr8983[0]
  %f8987 = ptrtoint void(i64,i64,i64)* @lam8458 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8987, i64* %eptr8984                                                   ; store fptr
  %arg7375 = ptrtoint i64* %cloptr8983 to i64                                        ; closure cast; i64* -> i64
  %cloptr8988 = inttoptr i64 %arg7377 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8988)                                         ; assert function application
  %i0ptr8989 = getelementptr inbounds i64, i64* %cloptr8988, i64 0                   ; &cloptr8988[0]
  %f8991 = load i64, i64* %i0ptr8989, align 8                                        ; load; *i0ptr8989
  %fptr8990 = inttoptr i64 %f8991 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8990(i64 %arg7377, i64 %arg7376, i64 %arg7375)      ; tail call
  ret void
}


define void @lam8478(i64 %env8479, i64 %cont7101, i64 %F21$k) {
  %arg7379 = add i64 0, 0                                                            ; quoted ()
  %cloptr8992 = inttoptr i64 %cont7101 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8992)                                         ; assert function application
  %i0ptr8993 = getelementptr inbounds i64, i64* %cloptr8992, i64 0                   ; &cloptr8992[0]
  %f8995 = load i64, i64* %i0ptr8993, align 8                                        ; load; *i0ptr8993
  %fptr8994 = inttoptr i64 %f8995 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8994(i64 %cont7101, i64 %arg7379, i64 %F21$k)       ; tail call
  ret void
}


define void @lam8475(i64 %env8476, i64 %_957096, i64 %XaX$cc) {
  %envptr8996 = inttoptr i64 %env8476 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8997 = getelementptr inbounds i64, i64* %envptr8996, i64 2                  ; &envptr8996[2]
  %cont7095 = load i64, i64* %envptr8997, align 8                                    ; load; *envptr8997
  %envptr8998 = inttoptr i64 %env8476 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8999 = getelementptr inbounds i64, i64* %envptr8998, i64 1                  ; &envptr8998[1]
  %ZQO$a = load i64, i64* %envptr8999, align 8                                       ; load; *envptr8999
  %arg7381 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7381)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9000 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9000, label %else9002, label %then9001                                   ; if

then9001:
  %arg7385 = add i64 0, 0                                                            ; quoted ()
  %arg7384 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9003 = inttoptr i64 %cont7095 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9003)                                         ; assert function application
  %i0ptr9004 = getelementptr inbounds i64, i64* %cloptr9003, i64 0                   ; &cloptr9003[0]
  %f9006 = load i64, i64* %i0ptr9004, align 8                                        ; load; *i0ptr9004
  %fptr9005 = inttoptr i64 %f9006 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9005(i64 %cont7095, i64 %arg7385, i64 %arg7384)     ; tail call
  ret void

else9002:
  %arg7387 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7387)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9007 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9007, label %else9009, label %then9008                                   ; if

then9008:
  %arg7390 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7390)                     ; call prim_vector_45ref
  %retprim7100 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9010 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9012 = getelementptr inbounds i64, i64* %cloptr9010, i64 1                    ; &eptr9012[1]
  %eptr9013 = getelementptr inbounds i64, i64* %cloptr9010, i64 2                    ; &eptr9013[2]
  %eptr9014 = getelementptr inbounds i64, i64* %cloptr9010, i64 3                    ; &eptr9014[3]
  store i64 %XaX$cc, i64* %eptr9012                                                  ; *eptr9012 = %XaX$cc
  store i64 %ZQO$a, i64* %eptr9013                                                   ; *eptr9013 = %ZQO$a
  store i64 %cont7095, i64* %eptr9014                                                ; *eptr9014 = %cont7095
  %eptr9011 = getelementptr inbounds i64, i64* %cloptr9010, i64 0                    ; &cloptr9010[0]
  %f9015 = ptrtoint void(i64,i64,i64)* @lam8468 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9015, i64* %eptr9011                                                   ; store fptr
  %arg7395 = ptrtoint i64* %cloptr9010 to i64                                        ; closure cast; i64* -> i64
  %arg7394 = add i64 0, 0                                                            ; quoted ()
  %cloptr9016 = inttoptr i64 %arg7395 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9016)                                         ; assert function application
  %i0ptr9017 = getelementptr inbounds i64, i64* %cloptr9016, i64 0                   ; &cloptr9016[0]
  %f9019 = load i64, i64* %i0ptr9017, align 8                                        ; load; *i0ptr9017
  %fptr9018 = inttoptr i64 %f9019 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9018(i64 %arg7395, i64 %arg7394, i64 %retprim7100)  ; tail call
  ret void

else9009:
  %arg7409 = add i64 0, 0                                                            ; quoted ()
  %arg7408 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9020 = inttoptr i64 %cont7095 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9020)                                         ; assert function application
  %i0ptr9021 = getelementptr inbounds i64, i64* %cloptr9020, i64 0                   ; &cloptr9020[0]
  %f9023 = load i64, i64* %i0ptr9021, align 8                                        ; load; *i0ptr9021
  %fptr9022 = inttoptr i64 %f9023 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9022(i64 %cont7095, i64 %arg7409, i64 %arg7408)     ; tail call
  ret void
}


define void @lam8468(i64 %env8469, i64 %_957097, i64 %F4c$b) {
  %envptr9024 = inttoptr i64 %env8469 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9025 = getelementptr inbounds i64, i64* %envptr9024, i64 3                  ; &envptr9024[3]
  %cont7095 = load i64, i64* %envptr9025, align 8                                    ; load; *envptr9025
  %envptr9026 = inttoptr i64 %env8469 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9027 = getelementptr inbounds i64, i64* %envptr9026, i64 2                  ; &envptr9026[2]
  %ZQO$a = load i64, i64* %envptr9027, align 8                                       ; load; *envptr9027
  %envptr9028 = inttoptr i64 %env8469 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9029 = getelementptr inbounds i64, i64* %envptr9028, i64 1                  ; &envptr9028[1]
  %XaX$cc = load i64, i64* %envptr9029, align 8                                      ; load; *envptr9029
  %arg7396 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7396)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7400 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7099 = call i64 @prim_vector_45set_33(i64 %ZQO$a, i64 %arg7400, i64 %a7005); call prim_vector_45set_33
  %cloptr9030 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9032 = getelementptr inbounds i64, i64* %cloptr9030, i64 1                    ; &eptr9032[1]
  %eptr9033 = getelementptr inbounds i64, i64* %cloptr9030, i64 2                    ; &eptr9033[2]
  store i64 %XaX$cc, i64* %eptr9032                                                  ; *eptr9032 = %XaX$cc
  store i64 %cont7095, i64* %eptr9033                                                ; *eptr9033 = %cont7095
  %eptr9031 = getelementptr inbounds i64, i64* %cloptr9030, i64 0                    ; &cloptr9030[0]
  %f9034 = ptrtoint void(i64,i64,i64)* @lam8464 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9034, i64* %eptr9031                                                   ; store fptr
  %arg7404 = ptrtoint i64* %cloptr9030 to i64                                        ; closure cast; i64* -> i64
  %arg7403 = add i64 0, 0                                                            ; quoted ()
  %cloptr9035 = inttoptr i64 %arg7404 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9035)                                         ; assert function application
  %i0ptr9036 = getelementptr inbounds i64, i64* %cloptr9035, i64 0                   ; &cloptr9035[0]
  %f9038 = load i64, i64* %i0ptr9036, align 8                                        ; load; *i0ptr9036
  %fptr9037 = inttoptr i64 %f9038 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9037(i64 %arg7404, i64 %arg7403, i64 %retprim7099)  ; tail call
  ret void
}


define void @lam8464(i64 %env8465, i64 %_957098, i64 %TtG$_950) {
  %envptr9039 = inttoptr i64 %env8465 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9040 = getelementptr inbounds i64, i64* %envptr9039, i64 2                  ; &envptr9039[2]
  %cont7095 = load i64, i64* %envptr9040, align 8                                    ; load; *envptr9040
  %envptr9041 = inttoptr i64 %env8465 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9042 = getelementptr inbounds i64, i64* %envptr9041, i64 1                  ; &envptr9041[1]
  %XaX$cc = load i64, i64* %envptr9042, align 8                                      ; load; *envptr9042
  %cloptr9043 = inttoptr i64 %XaX$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9043)                                         ; assert function application
  %i0ptr9044 = getelementptr inbounds i64, i64* %cloptr9043, i64 0                   ; &cloptr9043[0]
  %f9046 = load i64, i64* %i0ptr9044, align 8                                        ; load; *i0ptr9044
  %fptr9045 = inttoptr i64 %f9046 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9045(i64 %XaX$cc, i64 %cont7095, i64 %XaX$cc)       ; tail call
  ret void
}


define void @lam8458(i64 %env8459, i64 %_957096, i64 %XaX$cc) {
  %envptr9047 = inttoptr i64 %env8459 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9048 = getelementptr inbounds i64, i64* %envptr9047, i64 2                  ; &envptr9047[2]
  %cont7095 = load i64, i64* %envptr9048, align 8                                    ; load; *envptr9048
  %envptr9049 = inttoptr i64 %env8459 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9050 = getelementptr inbounds i64, i64* %envptr9049, i64 1                  ; &envptr9049[1]
  %ZQO$a = load i64, i64* %envptr9050, align 8                                       ; load; *envptr9050
  %arg7411 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7411)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9051 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9051, label %else9053, label %then9052                                   ; if

then9052:
  %arg7415 = add i64 0, 0                                                            ; quoted ()
  %arg7414 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9054 = inttoptr i64 %cont7095 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9054)                                         ; assert function application
  %i0ptr9055 = getelementptr inbounds i64, i64* %cloptr9054, i64 0                   ; &cloptr9054[0]
  %f9057 = load i64, i64* %i0ptr9055, align 8                                        ; load; *i0ptr9055
  %fptr9056 = inttoptr i64 %f9057 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9056(i64 %cont7095, i64 %arg7415, i64 %arg7414)     ; tail call
  ret void

else9053:
  %arg7417 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7417)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9058 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9058, label %else9060, label %then9059                                   ; if

then9059:
  %arg7420 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7420)                     ; call prim_vector_45ref
  %retprim7100 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9061 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9063 = getelementptr inbounds i64, i64* %cloptr9061, i64 1                    ; &eptr9063[1]
  %eptr9064 = getelementptr inbounds i64, i64* %cloptr9061, i64 2                    ; &eptr9064[2]
  %eptr9065 = getelementptr inbounds i64, i64* %cloptr9061, i64 3                    ; &eptr9065[3]
  store i64 %XaX$cc, i64* %eptr9063                                                  ; *eptr9063 = %XaX$cc
  store i64 %ZQO$a, i64* %eptr9064                                                   ; *eptr9064 = %ZQO$a
  store i64 %cont7095, i64* %eptr9065                                                ; *eptr9065 = %cont7095
  %eptr9062 = getelementptr inbounds i64, i64* %cloptr9061, i64 0                    ; &cloptr9061[0]
  %f9066 = ptrtoint void(i64,i64,i64)* @lam8451 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9066, i64* %eptr9062                                                   ; store fptr
  %arg7425 = ptrtoint i64* %cloptr9061 to i64                                        ; closure cast; i64* -> i64
  %arg7424 = add i64 0, 0                                                            ; quoted ()
  %cloptr9067 = inttoptr i64 %arg7425 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9067)                                         ; assert function application
  %i0ptr9068 = getelementptr inbounds i64, i64* %cloptr9067, i64 0                   ; &cloptr9067[0]
  %f9070 = load i64, i64* %i0ptr9068, align 8                                        ; load; *i0ptr9068
  %fptr9069 = inttoptr i64 %f9070 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9069(i64 %arg7425, i64 %arg7424, i64 %retprim7100)  ; tail call
  ret void

else9060:
  %arg7439 = add i64 0, 0                                                            ; quoted ()
  %arg7438 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9071 = inttoptr i64 %cont7095 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9071)                                         ; assert function application
  %i0ptr9072 = getelementptr inbounds i64, i64* %cloptr9071, i64 0                   ; &cloptr9071[0]
  %f9074 = load i64, i64* %i0ptr9072, align 8                                        ; load; *i0ptr9072
  %fptr9073 = inttoptr i64 %f9074 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9073(i64 %cont7095, i64 %arg7439, i64 %arg7438)     ; tail call
  ret void
}


define void @lam8451(i64 %env8452, i64 %_957097, i64 %F4c$b) {
  %envptr9075 = inttoptr i64 %env8452 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9076 = getelementptr inbounds i64, i64* %envptr9075, i64 3                  ; &envptr9075[3]
  %cont7095 = load i64, i64* %envptr9076, align 8                                    ; load; *envptr9076
  %envptr9077 = inttoptr i64 %env8452 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9078 = getelementptr inbounds i64, i64* %envptr9077, i64 2                  ; &envptr9077[2]
  %ZQO$a = load i64, i64* %envptr9078, align 8                                       ; load; *envptr9078
  %envptr9079 = inttoptr i64 %env8452 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9080 = getelementptr inbounds i64, i64* %envptr9079, i64 1                  ; &envptr9079[1]
  %XaX$cc = load i64, i64* %envptr9080, align 8                                      ; load; *envptr9080
  %arg7426 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %ZQO$a, i64 %arg7426)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7430 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7099 = call i64 @prim_vector_45set_33(i64 %ZQO$a, i64 %arg7430, i64 %a7005); call prim_vector_45set_33
  %cloptr9081 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9083 = getelementptr inbounds i64, i64* %cloptr9081, i64 1                    ; &eptr9083[1]
  %eptr9084 = getelementptr inbounds i64, i64* %cloptr9081, i64 2                    ; &eptr9084[2]
  store i64 %XaX$cc, i64* %eptr9083                                                  ; *eptr9083 = %XaX$cc
  store i64 %cont7095, i64* %eptr9084                                                ; *eptr9084 = %cont7095
  %eptr9082 = getelementptr inbounds i64, i64* %cloptr9081, i64 0                    ; &cloptr9081[0]
  %f9085 = ptrtoint void(i64,i64,i64)* @lam8447 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9085, i64* %eptr9082                                                   ; store fptr
  %arg7434 = ptrtoint i64* %cloptr9081 to i64                                        ; closure cast; i64* -> i64
  %arg7433 = add i64 0, 0                                                            ; quoted ()
  %cloptr9086 = inttoptr i64 %arg7434 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9086)                                         ; assert function application
  %i0ptr9087 = getelementptr inbounds i64, i64* %cloptr9086, i64 0                   ; &cloptr9086[0]
  %f9089 = load i64, i64* %i0ptr9087, align 8                                        ; load; *i0ptr9087
  %fptr9088 = inttoptr i64 %f9089 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9088(i64 %arg7434, i64 %arg7433, i64 %retprim7099)  ; tail call
  ret void
}


define void @lam8447(i64 %env8448, i64 %_957098, i64 %TtG$_950) {
  %envptr9090 = inttoptr i64 %env8448 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9091 = getelementptr inbounds i64, i64* %envptr9090, i64 2                  ; &envptr9090[2]
  %cont7095 = load i64, i64* %envptr9091, align 8                                    ; load; *envptr9091
  %envptr9092 = inttoptr i64 %env8448 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9093 = getelementptr inbounds i64, i64* %envptr9092, i64 1                  ; &envptr9092[1]
  %XaX$cc = load i64, i64* %envptr9093, align 8                                      ; load; *envptr9093
  %cloptr9094 = inttoptr i64 %XaX$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9094)                                         ; assert function application
  %i0ptr9095 = getelementptr inbounds i64, i64* %cloptr9094, i64 0                   ; &cloptr9094[0]
  %f9097 = load i64, i64* %i0ptr9095, align 8                                        ; load; *i0ptr9095
  %fptr9096 = inttoptr i64 %f9097 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9096(i64 %XaX$cc, i64 %cont7095, i64 %XaX$cc)       ; tail call
  ret void
}


define void @lam8441(i64 %env8442, i64 %cont7102, i64 %xI8$lst, i64 %Dni$n) {
  %arg7442 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Jl9$lst = call i64 @prim_make_45vector(i64 %arg7442, i64 %xI8$lst)                ; call prim_make_45vector
  %arg7444 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %FE3$n = call i64 @prim_make_45vector(i64 %arg7444, i64 %Dni$n)                    ; call prim_make_45vector
  %cloptr9098 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9099 = getelementptr inbounds i64, i64* %cloptr9098, i64 0                    ; &cloptr9098[0]
  %f9100 = ptrtoint void(i64,i64,i64)* @lam8437 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9100, i64* %eptr9099                                                   ; store fptr
  %arg7447 = ptrtoint i64* %cloptr9098 to i64                                        ; closure cast; i64* -> i64
  %cloptr9101 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9103 = getelementptr inbounds i64, i64* %cloptr9101, i64 1                    ; &eptr9103[1]
  %eptr9104 = getelementptr inbounds i64, i64* %cloptr9101, i64 2                    ; &eptr9104[2]
  %eptr9105 = getelementptr inbounds i64, i64* %cloptr9101, i64 3                    ; &eptr9105[3]
  store i64 %FE3$n, i64* %eptr9103                                                   ; *eptr9103 = %FE3$n
  store i64 %Jl9$lst, i64* %eptr9104                                                 ; *eptr9104 = %Jl9$lst
  store i64 %cont7102, i64* %eptr9105                                                ; *eptr9105 = %cont7102
  %eptr9102 = getelementptr inbounds i64, i64* %cloptr9101, i64 0                    ; &cloptr9101[0]
  %f9106 = ptrtoint void(i64,i64,i64)* @lam8435 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9106, i64* %eptr9102                                                   ; store fptr
  %arg7446 = ptrtoint i64* %cloptr9101 to i64                                        ; closure cast; i64* -> i64
  %cloptr9107 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9109 = getelementptr inbounds i64, i64* %cloptr9107, i64 1                    ; &eptr9109[1]
  %eptr9110 = getelementptr inbounds i64, i64* %cloptr9107, i64 2                    ; &eptr9110[2]
  %eptr9111 = getelementptr inbounds i64, i64* %cloptr9107, i64 3                    ; &eptr9111[3]
  store i64 %FE3$n, i64* %eptr9109                                                   ; *eptr9109 = %FE3$n
  store i64 %Jl9$lst, i64* %eptr9110                                                 ; *eptr9110 = %Jl9$lst
  store i64 %cont7102, i64* %eptr9111                                                ; *eptr9111 = %cont7102
  %eptr9108 = getelementptr inbounds i64, i64* %cloptr9107, i64 0                    ; &cloptr9107[0]
  %f9112 = ptrtoint void(i64,i64,i64)* @lam8418 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9112, i64* %eptr9108                                                   ; store fptr
  %arg7445 = ptrtoint i64* %cloptr9107 to i64                                        ; closure cast; i64* -> i64
  %cloptr9113 = inttoptr i64 %arg7447 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9113)                                         ; assert function application
  %i0ptr9114 = getelementptr inbounds i64, i64* %cloptr9113, i64 0                   ; &cloptr9113[0]
  %f9116 = load i64, i64* %i0ptr9114, align 8                                        ; load; *i0ptr9114
  %fptr9115 = inttoptr i64 %f9116 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9115(i64 %arg7447, i64 %arg7446, i64 %arg7445)      ; tail call
  ret void
}


define void @lam8437(i64 %env8438, i64 %cont7109, i64 %Z8I$u) {
  %cloptr9117 = inttoptr i64 %Z8I$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9117)                                         ; assert function application
  %i0ptr9118 = getelementptr inbounds i64, i64* %cloptr9117, i64 0                   ; &cloptr9117[0]
  %f9120 = load i64, i64* %i0ptr9118, align 8                                        ; load; *i0ptr9118
  %fptr9119 = inttoptr i64 %f9120 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9119(i64 %Z8I$u, i64 %cont7109, i64 %Z8I$u)         ; tail call
  ret void
}


define void @lam8435(i64 %env8436, i64 %_957103, i64 %AIo$cc) {
  %envptr9121 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9122 = getelementptr inbounds i64, i64* %envptr9121, i64 3                  ; &envptr9121[3]
  %cont7102 = load i64, i64* %envptr9122, align 8                                    ; load; *envptr9122
  %envptr9123 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9124 = getelementptr inbounds i64, i64* %envptr9123, i64 2                  ; &envptr9123[2]
  %Jl9$lst = load i64, i64* %envptr9124, align 8                                     ; load; *envptr9124
  %envptr9125 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9126 = getelementptr inbounds i64, i64* %envptr9125, i64 1                  ; &envptr9125[1]
  %FE3$n = load i64, i64* %envptr9126, align 8                                       ; load; *envptr9126
  %arg7451 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %FE3$n, i64 %arg7451)                     ; call prim_vector_45ref
  %arg7454 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7454, i64 %a7006)                              ; call prim__61
  %cmp9127 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9127, label %else9129, label %then9128                                   ; if

then9128:
  %arg7455 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7104 = call i64 @prim_vector_45ref(i64 %Jl9$lst, i64 %arg7455)             ; call prim_vector_45ref
  %arg7458 = add i64 0, 0                                                            ; quoted ()
  %cloptr9130 = inttoptr i64 %cont7102 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9130)                                         ; assert function application
  %i0ptr9131 = getelementptr inbounds i64, i64* %cloptr9130, i64 0                   ; &cloptr9130[0]
  %f9133 = load i64, i64* %i0ptr9131, align 8                                        ; load; *i0ptr9131
  %fptr9132 = inttoptr i64 %f9133 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9132(i64 %cont7102, i64 %arg7458, i64 %retprim7104) ; tail call
  ret void

else9129:
  %arg7460 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %Jl9$lst, i64 %arg7460)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7464 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %Jl9$lst, i64 %arg7464, i64 %a7009); call prim_vector_45set_33
  %cloptr9134 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9136 = getelementptr inbounds i64, i64* %cloptr9134, i64 1                    ; &eptr9136[1]
  %eptr9137 = getelementptr inbounds i64, i64* %cloptr9134, i64 2                    ; &eptr9137[2]
  %eptr9138 = getelementptr inbounds i64, i64* %cloptr9134, i64 3                    ; &eptr9138[3]
  store i64 %FE3$n, i64* %eptr9136                                                   ; *eptr9136 = %FE3$n
  store i64 %cont7102, i64* %eptr9137                                                ; *eptr9137 = %cont7102
  store i64 %AIo$cc, i64* %eptr9138                                                  ; *eptr9138 = %AIo$cc
  %eptr9135 = getelementptr inbounds i64, i64* %cloptr9134, i64 0                    ; &cloptr9134[0]
  %f9139 = ptrtoint void(i64,i64,i64)* @lam8429 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9139, i64* %eptr9135                                                   ; store fptr
  %arg7468 = ptrtoint i64* %cloptr9134 to i64                                        ; closure cast; i64* -> i64
  %arg7467 = add i64 0, 0                                                            ; quoted ()
  %cloptr9140 = inttoptr i64 %arg7468 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9140)                                         ; assert function application
  %i0ptr9141 = getelementptr inbounds i64, i64* %cloptr9140, i64 0                   ; &cloptr9140[0]
  %f9143 = load i64, i64* %i0ptr9141, align 8                                        ; load; *i0ptr9141
  %fptr9142 = inttoptr i64 %f9143 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9142(i64 %arg7468, i64 %arg7467, i64 %retprim7108)  ; tail call
  ret void
}


define void @lam8429(i64 %env8430, i64 %_957105, i64 %eqY$_950) {
  %envptr9144 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9145 = getelementptr inbounds i64, i64* %envptr9144, i64 3                  ; &envptr9144[3]
  %AIo$cc = load i64, i64* %envptr9145, align 8                                      ; load; *envptr9145
  %envptr9146 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9147 = getelementptr inbounds i64, i64* %envptr9146, i64 2                  ; &envptr9146[2]
  %cont7102 = load i64, i64* %envptr9147, align 8                                    ; load; *envptr9147
  %envptr9148 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9149 = getelementptr inbounds i64, i64* %envptr9148, i64 1                  ; &envptr9148[1]
  %FE3$n = load i64, i64* %envptr9149, align 8                                       ; load; *envptr9149
  %arg7469 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %FE3$n, i64 %arg7469)                     ; call prim_vector_45ref
  %arg7471 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7471)                              ; call prim__45
  %arg7474 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7107 = call i64 @prim_vector_45set_33(i64 %FE3$n, i64 %arg7474, i64 %a7011); call prim_vector_45set_33
  %cloptr9150 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9152 = getelementptr inbounds i64, i64* %cloptr9150, i64 1                    ; &eptr9152[1]
  %eptr9153 = getelementptr inbounds i64, i64* %cloptr9150, i64 2                    ; &eptr9153[2]
  store i64 %cont7102, i64* %eptr9152                                                ; *eptr9152 = %cont7102
  store i64 %AIo$cc, i64* %eptr9153                                                  ; *eptr9153 = %AIo$cc
  %eptr9151 = getelementptr inbounds i64, i64* %cloptr9150, i64 0                    ; &cloptr9150[0]
  %f9154 = ptrtoint void(i64,i64,i64)* @lam8424 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9154, i64* %eptr9151                                                   ; store fptr
  %arg7478 = ptrtoint i64* %cloptr9150 to i64                                        ; closure cast; i64* -> i64
  %arg7477 = add i64 0, 0                                                            ; quoted ()
  %cloptr9155 = inttoptr i64 %arg7478 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9155)                                         ; assert function application
  %i0ptr9156 = getelementptr inbounds i64, i64* %cloptr9155, i64 0                   ; &cloptr9155[0]
  %f9158 = load i64, i64* %i0ptr9156, align 8                                        ; load; *i0ptr9156
  %fptr9157 = inttoptr i64 %f9158 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9157(i64 %arg7478, i64 %arg7477, i64 %retprim7107)  ; tail call
  ret void
}


define void @lam8424(i64 %env8425, i64 %_957106, i64 %QUs$_951) {
  %envptr9159 = inttoptr i64 %env8425 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9160 = getelementptr inbounds i64, i64* %envptr9159, i64 2                  ; &envptr9159[2]
  %AIo$cc = load i64, i64* %envptr9160, align 8                                      ; load; *envptr9160
  %envptr9161 = inttoptr i64 %env8425 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9162 = getelementptr inbounds i64, i64* %envptr9161, i64 1                  ; &envptr9161[1]
  %cont7102 = load i64, i64* %envptr9162, align 8                                    ; load; *envptr9162
  %cloptr9163 = inttoptr i64 %AIo$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9163)                                         ; assert function application
  %i0ptr9164 = getelementptr inbounds i64, i64* %cloptr9163, i64 0                   ; &cloptr9163[0]
  %f9166 = load i64, i64* %i0ptr9164, align 8                                        ; load; *i0ptr9164
  %fptr9165 = inttoptr i64 %f9166 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9165(i64 %AIo$cc, i64 %cont7102, i64 %AIo$cc)       ; tail call
  ret void
}


define void @lam8418(i64 %env8419, i64 %_957103, i64 %AIo$cc) {
  %envptr9167 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9168 = getelementptr inbounds i64, i64* %envptr9167, i64 3                  ; &envptr9167[3]
  %cont7102 = load i64, i64* %envptr9168, align 8                                    ; load; *envptr9168
  %envptr9169 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9170 = getelementptr inbounds i64, i64* %envptr9169, i64 2                  ; &envptr9169[2]
  %Jl9$lst = load i64, i64* %envptr9170, align 8                                     ; load; *envptr9170
  %envptr9171 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9172 = getelementptr inbounds i64, i64* %envptr9171, i64 1                  ; &envptr9171[1]
  %FE3$n = load i64, i64* %envptr9172, align 8                                       ; load; *envptr9172
  %arg7482 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %FE3$n, i64 %arg7482)                     ; call prim_vector_45ref
  %arg7485 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7485, i64 %a7006)                              ; call prim__61
  %cmp9173 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9173, label %else9175, label %then9174                                   ; if

then9174:
  %arg7486 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7104 = call i64 @prim_vector_45ref(i64 %Jl9$lst, i64 %arg7486)             ; call prim_vector_45ref
  %arg7489 = add i64 0, 0                                                            ; quoted ()
  %cloptr9176 = inttoptr i64 %cont7102 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9176)                                         ; assert function application
  %i0ptr9177 = getelementptr inbounds i64, i64* %cloptr9176, i64 0                   ; &cloptr9176[0]
  %f9179 = load i64, i64* %i0ptr9177, align 8                                        ; load; *i0ptr9177
  %fptr9178 = inttoptr i64 %f9179 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9178(i64 %cont7102, i64 %arg7489, i64 %retprim7104) ; tail call
  ret void

else9175:
  %arg7491 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %Jl9$lst, i64 %arg7491)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7495 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %Jl9$lst, i64 %arg7495, i64 %a7009); call prim_vector_45set_33
  %cloptr9180 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9182 = getelementptr inbounds i64, i64* %cloptr9180, i64 1                    ; &eptr9182[1]
  %eptr9183 = getelementptr inbounds i64, i64* %cloptr9180, i64 2                    ; &eptr9183[2]
  %eptr9184 = getelementptr inbounds i64, i64* %cloptr9180, i64 3                    ; &eptr9184[3]
  store i64 %FE3$n, i64* %eptr9182                                                   ; *eptr9182 = %FE3$n
  store i64 %cont7102, i64* %eptr9183                                                ; *eptr9183 = %cont7102
  store i64 %AIo$cc, i64* %eptr9184                                                  ; *eptr9184 = %AIo$cc
  %eptr9181 = getelementptr inbounds i64, i64* %cloptr9180, i64 0                    ; &cloptr9180[0]
  %f9185 = ptrtoint void(i64,i64,i64)* @lam8412 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9185, i64* %eptr9181                                                   ; store fptr
  %arg7499 = ptrtoint i64* %cloptr9180 to i64                                        ; closure cast; i64* -> i64
  %arg7498 = add i64 0, 0                                                            ; quoted ()
  %cloptr9186 = inttoptr i64 %arg7499 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9186)                                         ; assert function application
  %i0ptr9187 = getelementptr inbounds i64, i64* %cloptr9186, i64 0                   ; &cloptr9186[0]
  %f9189 = load i64, i64* %i0ptr9187, align 8                                        ; load; *i0ptr9187
  %fptr9188 = inttoptr i64 %f9189 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9188(i64 %arg7499, i64 %arg7498, i64 %retprim7108)  ; tail call
  ret void
}


define void @lam8412(i64 %env8413, i64 %_957105, i64 %eqY$_950) {
  %envptr9190 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9191 = getelementptr inbounds i64, i64* %envptr9190, i64 3                  ; &envptr9190[3]
  %AIo$cc = load i64, i64* %envptr9191, align 8                                      ; load; *envptr9191
  %envptr9192 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9193 = getelementptr inbounds i64, i64* %envptr9192, i64 2                  ; &envptr9192[2]
  %cont7102 = load i64, i64* %envptr9193, align 8                                    ; load; *envptr9193
  %envptr9194 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9195 = getelementptr inbounds i64, i64* %envptr9194, i64 1                  ; &envptr9194[1]
  %FE3$n = load i64, i64* %envptr9195, align 8                                       ; load; *envptr9195
  %arg7500 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %FE3$n, i64 %arg7500)                     ; call prim_vector_45ref
  %arg7502 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7502)                              ; call prim__45
  %arg7505 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7107 = call i64 @prim_vector_45set_33(i64 %FE3$n, i64 %arg7505, i64 %a7011); call prim_vector_45set_33
  %cloptr9196 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9198 = getelementptr inbounds i64, i64* %cloptr9196, i64 1                    ; &eptr9198[1]
  %eptr9199 = getelementptr inbounds i64, i64* %cloptr9196, i64 2                    ; &eptr9199[2]
  store i64 %cont7102, i64* %eptr9198                                                ; *eptr9198 = %cont7102
  store i64 %AIo$cc, i64* %eptr9199                                                  ; *eptr9199 = %AIo$cc
  %eptr9197 = getelementptr inbounds i64, i64* %cloptr9196, i64 0                    ; &cloptr9196[0]
  %f9200 = ptrtoint void(i64,i64,i64)* @lam8407 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9200, i64* %eptr9197                                                   ; store fptr
  %arg7509 = ptrtoint i64* %cloptr9196 to i64                                        ; closure cast; i64* -> i64
  %arg7508 = add i64 0, 0                                                            ; quoted ()
  %cloptr9201 = inttoptr i64 %arg7509 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9201)                                         ; assert function application
  %i0ptr9202 = getelementptr inbounds i64, i64* %cloptr9201, i64 0                   ; &cloptr9201[0]
  %f9204 = load i64, i64* %i0ptr9202, align 8                                        ; load; *i0ptr9202
  %fptr9203 = inttoptr i64 %f9204 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9203(i64 %arg7509, i64 %arg7508, i64 %retprim7107)  ; tail call
  ret void
}


define void @lam8407(i64 %env8408, i64 %_957106, i64 %QUs$_951) {
  %envptr9205 = inttoptr i64 %env8408 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9206 = getelementptr inbounds i64, i64* %envptr9205, i64 2                  ; &envptr9205[2]
  %AIo$cc = load i64, i64* %envptr9206, align 8                                      ; load; *envptr9206
  %envptr9207 = inttoptr i64 %env8408 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9208 = getelementptr inbounds i64, i64* %envptr9207, i64 1                  ; &envptr9207[1]
  %cont7102 = load i64, i64* %envptr9208, align 8                                    ; load; *envptr9208
  %cloptr9209 = inttoptr i64 %AIo$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9209)                                         ; assert function application
  %i0ptr9210 = getelementptr inbounds i64, i64* %cloptr9209, i64 0                   ; &cloptr9209[0]
  %f9212 = load i64, i64* %i0ptr9210, align 8                                        ; load; *i0ptr9210
  %fptr9211 = inttoptr i64 %f9212 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9211(i64 %AIo$cc, i64 %cont7102, i64 %AIo$cc)       ; tail call
  ret void
}


define void @lam8401(i64 %env8402, i64 %cont7110, i64 %hCL$v, i64 %KP4$lst) {
  %arg7514 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %AzZ$lst = call i64 @prim_make_45vector(i64 %arg7514, i64 %KP4$lst)                ; call prim_make_45vector
  %cloptr9213 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9214 = getelementptr inbounds i64, i64* %cloptr9213, i64 0                    ; &cloptr9213[0]
  %f9215 = ptrtoint void(i64,i64,i64)* @lam8398 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9215, i64* %eptr9214                                                   ; store fptr
  %arg7517 = ptrtoint i64* %cloptr9213 to i64                                        ; closure cast; i64* -> i64
  %cloptr9216 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9218 = getelementptr inbounds i64, i64* %cloptr9216, i64 1                    ; &eptr9218[1]
  %eptr9219 = getelementptr inbounds i64, i64* %cloptr9216, i64 2                    ; &eptr9219[2]
  %eptr9220 = getelementptr inbounds i64, i64* %cloptr9216, i64 3                    ; &eptr9220[3]
  store i64 %cont7110, i64* %eptr9218                                                ; *eptr9218 = %cont7110
  store i64 %hCL$v, i64* %eptr9219                                                   ; *eptr9219 = %hCL$v
  store i64 %AzZ$lst, i64* %eptr9220                                                 ; *eptr9220 = %AzZ$lst
  %eptr9217 = getelementptr inbounds i64, i64* %cloptr9216, i64 0                    ; &cloptr9216[0]
  %f9221 = ptrtoint void(i64,i64,i64)* @lam8396 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9221, i64* %eptr9217                                                   ; store fptr
  %arg7516 = ptrtoint i64* %cloptr9216 to i64                                        ; closure cast; i64* -> i64
  %cloptr9222 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9224 = getelementptr inbounds i64, i64* %cloptr9222, i64 1                    ; &eptr9224[1]
  %eptr9225 = getelementptr inbounds i64, i64* %cloptr9222, i64 2                    ; &eptr9225[2]
  %eptr9226 = getelementptr inbounds i64, i64* %cloptr9222, i64 3                    ; &eptr9226[3]
  store i64 %cont7110, i64* %eptr9224                                                ; *eptr9224 = %cont7110
  store i64 %hCL$v, i64* %eptr9225                                                   ; *eptr9225 = %hCL$v
  store i64 %AzZ$lst, i64* %eptr9226                                                 ; *eptr9226 = %AzZ$lst
  %eptr9223 = getelementptr inbounds i64, i64* %cloptr9222, i64 0                    ; &cloptr9222[0]
  %f9227 = ptrtoint void(i64,i64,i64)* @lam8383 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9227, i64* %eptr9223                                                   ; store fptr
  %arg7515 = ptrtoint i64* %cloptr9222 to i64                                        ; closure cast; i64* -> i64
  %cloptr9228 = inttoptr i64 %arg7517 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9228)                                         ; assert function application
  %i0ptr9229 = getelementptr inbounds i64, i64* %cloptr9228, i64 0                   ; &cloptr9228[0]
  %f9231 = load i64, i64* %i0ptr9229, align 8                                        ; load; *i0ptr9229
  %fptr9230 = inttoptr i64 %f9231 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9230(i64 %arg7517, i64 %arg7516, i64 %arg7515)      ; tail call
  ret void
}


define void @lam8398(i64 %env8399, i64 %cont7115, i64 %MiN$u) {
  %cloptr9232 = inttoptr i64 %MiN$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9232)                                         ; assert function application
  %i0ptr9233 = getelementptr inbounds i64, i64* %cloptr9232, i64 0                   ; &cloptr9232[0]
  %f9235 = load i64, i64* %i0ptr9233, align 8                                        ; load; *i0ptr9233
  %fptr9234 = inttoptr i64 %f9235 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9234(i64 %MiN$u, i64 %cont7115, i64 %MiN$u)         ; tail call
  ret void
}


define void @lam8396(i64 %env8397, i64 %_957111, i64 %g8O$cc) {
  %envptr9236 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9237 = getelementptr inbounds i64, i64* %envptr9236, i64 3                  ; &envptr9236[3]
  %AzZ$lst = load i64, i64* %envptr9237, align 8                                     ; load; *envptr9237
  %envptr9238 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9239 = getelementptr inbounds i64, i64* %envptr9238, i64 2                  ; &envptr9238[2]
  %hCL$v = load i64, i64* %envptr9239, align 8                                       ; load; *envptr9239
  %envptr9240 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9241 = getelementptr inbounds i64, i64* %envptr9240, i64 1                  ; &envptr9240[1]
  %cont7110 = load i64, i64* %envptr9241, align 8                                    ; load; *envptr9241
  %arg7521 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7521)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9242 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9242, label %else9244, label %then9243                                   ; if

then9243:
  %arg7525 = add i64 0, 0                                                            ; quoted ()
  %arg7524 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9245 = inttoptr i64 %cont7110 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9245)                                         ; assert function application
  %i0ptr9246 = getelementptr inbounds i64, i64* %cloptr9245, i64 0                   ; &cloptr9245[0]
  %f9248 = load i64, i64* %i0ptr9246, align 8                                        ; load; *i0ptr9246
  %fptr9247 = inttoptr i64 %f9248 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9247(i64 %cont7110, i64 %arg7525, i64 %arg7524)     ; tail call
  ret void

else9244:
  %arg7527 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7527)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %hCL$v)                             ; call prim_eqv_63
  %cmp9249 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9249, label %else9251, label %then9250                                   ; if

then9250:
  %arg7532 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7532)             ; call prim_vector_45ref
  %arg7535 = add i64 0, 0                                                            ; quoted ()
  %cloptr9252 = inttoptr i64 %cont7110 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9252)                                         ; assert function application
  %i0ptr9253 = getelementptr inbounds i64, i64* %cloptr9252, i64 0                   ; &cloptr9252[0]
  %f9255 = load i64, i64* %i0ptr9253, align 8                                        ; load; *i0ptr9253
  %fptr9254 = inttoptr i64 %f9255 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9254(i64 %cont7110, i64 %arg7535, i64 %retprim7112) ; tail call
  ret void

else9251:
  %arg7537 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7537)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7541 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7114 = call i64 @prim_vector_45set_33(i64 %AzZ$lst, i64 %arg7541, i64 %a7018); call prim_vector_45set_33
  %cloptr9256 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9258 = getelementptr inbounds i64, i64* %cloptr9256, i64 1                    ; &eptr9258[1]
  %eptr9259 = getelementptr inbounds i64, i64* %cloptr9256, i64 2                    ; &eptr9259[2]
  store i64 %cont7110, i64* %eptr9258                                                ; *eptr9258 = %cont7110
  store i64 %g8O$cc, i64* %eptr9259                                                  ; *eptr9259 = %g8O$cc
  %eptr9257 = getelementptr inbounds i64, i64* %cloptr9256, i64 0                    ; &cloptr9256[0]
  %f9260 = ptrtoint void(i64,i64,i64)* @lam8390 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9260, i64* %eptr9257                                                   ; store fptr
  %arg7545 = ptrtoint i64* %cloptr9256 to i64                                        ; closure cast; i64* -> i64
  %arg7544 = add i64 0, 0                                                            ; quoted ()
  %cloptr9261 = inttoptr i64 %arg7545 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9261)                                         ; assert function application
  %i0ptr9262 = getelementptr inbounds i64, i64* %cloptr9261, i64 0                   ; &cloptr9261[0]
  %f9264 = load i64, i64* %i0ptr9262, align 8                                        ; load; *i0ptr9262
  %fptr9263 = inttoptr i64 %f9264 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9263(i64 %arg7545, i64 %arg7544, i64 %retprim7114)  ; tail call
  ret void
}


define void @lam8390(i64 %env8391, i64 %_957113, i64 %J2T$_950) {
  %envptr9265 = inttoptr i64 %env8391 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9266 = getelementptr inbounds i64, i64* %envptr9265, i64 2                  ; &envptr9265[2]
  %g8O$cc = load i64, i64* %envptr9266, align 8                                      ; load; *envptr9266
  %envptr9267 = inttoptr i64 %env8391 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9268 = getelementptr inbounds i64, i64* %envptr9267, i64 1                  ; &envptr9267[1]
  %cont7110 = load i64, i64* %envptr9268, align 8                                    ; load; *envptr9268
  %cloptr9269 = inttoptr i64 %g8O$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9269)                                         ; assert function application
  %i0ptr9270 = getelementptr inbounds i64, i64* %cloptr9269, i64 0                   ; &cloptr9269[0]
  %f9272 = load i64, i64* %i0ptr9270, align 8                                        ; load; *i0ptr9270
  %fptr9271 = inttoptr i64 %f9272 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9271(i64 %g8O$cc, i64 %cont7110, i64 %g8O$cc)       ; tail call
  ret void
}


define void @lam8383(i64 %env8384, i64 %_957111, i64 %g8O$cc) {
  %envptr9273 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9274 = getelementptr inbounds i64, i64* %envptr9273, i64 3                  ; &envptr9273[3]
  %AzZ$lst = load i64, i64* %envptr9274, align 8                                     ; load; *envptr9274
  %envptr9275 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9276 = getelementptr inbounds i64, i64* %envptr9275, i64 2                  ; &envptr9275[2]
  %hCL$v = load i64, i64* %envptr9276, align 8                                       ; load; *envptr9276
  %envptr9277 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9278 = getelementptr inbounds i64, i64* %envptr9277, i64 1                  ; &envptr9277[1]
  %cont7110 = load i64, i64* %envptr9278, align 8                                    ; load; *envptr9278
  %arg7549 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7549)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9279 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9279, label %else9281, label %then9280                                   ; if

then9280:
  %arg7553 = add i64 0, 0                                                            ; quoted ()
  %arg7552 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9282 = inttoptr i64 %cont7110 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9282)                                         ; assert function application
  %i0ptr9283 = getelementptr inbounds i64, i64* %cloptr9282, i64 0                   ; &cloptr9282[0]
  %f9285 = load i64, i64* %i0ptr9283, align 8                                        ; load; *i0ptr9283
  %fptr9284 = inttoptr i64 %f9285 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9284(i64 %cont7110, i64 %arg7553, i64 %arg7552)     ; tail call
  ret void

else9281:
  %arg7555 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7555)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %hCL$v)                             ; call prim_eqv_63
  %cmp9286 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9286, label %else9288, label %then9287                                   ; if

then9287:
  %arg7560 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7560)             ; call prim_vector_45ref
  %arg7563 = add i64 0, 0                                                            ; quoted ()
  %cloptr9289 = inttoptr i64 %cont7110 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9289)                                         ; assert function application
  %i0ptr9290 = getelementptr inbounds i64, i64* %cloptr9289, i64 0                   ; &cloptr9289[0]
  %f9292 = load i64, i64* %i0ptr9290, align 8                                        ; load; *i0ptr9290
  %fptr9291 = inttoptr i64 %f9292 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9291(i64 %cont7110, i64 %arg7563, i64 %retprim7112) ; tail call
  ret void

else9288:
  %arg7565 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %AzZ$lst, i64 %arg7565)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7569 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7114 = call i64 @prim_vector_45set_33(i64 %AzZ$lst, i64 %arg7569, i64 %a7018); call prim_vector_45set_33
  %cloptr9293 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9295 = getelementptr inbounds i64, i64* %cloptr9293, i64 1                    ; &eptr9295[1]
  %eptr9296 = getelementptr inbounds i64, i64* %cloptr9293, i64 2                    ; &eptr9296[2]
  store i64 %cont7110, i64* %eptr9295                                                ; *eptr9295 = %cont7110
  store i64 %g8O$cc, i64* %eptr9296                                                  ; *eptr9296 = %g8O$cc
  %eptr9294 = getelementptr inbounds i64, i64* %cloptr9293, i64 0                    ; &cloptr9293[0]
  %f9297 = ptrtoint void(i64,i64,i64)* @lam8377 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9297, i64* %eptr9294                                                   ; store fptr
  %arg7573 = ptrtoint i64* %cloptr9293 to i64                                        ; closure cast; i64* -> i64
  %arg7572 = add i64 0, 0                                                            ; quoted ()
  %cloptr9298 = inttoptr i64 %arg7573 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9298)                                         ; assert function application
  %i0ptr9299 = getelementptr inbounds i64, i64* %cloptr9298, i64 0                   ; &cloptr9298[0]
  %f9301 = load i64, i64* %i0ptr9299, align 8                                        ; load; *i0ptr9299
  %fptr9300 = inttoptr i64 %f9301 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9300(i64 %arg7573, i64 %arg7572, i64 %retprim7114)  ; tail call
  ret void
}


define void @lam8377(i64 %env8378, i64 %_957113, i64 %J2T$_950) {
  %envptr9302 = inttoptr i64 %env8378 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9303 = getelementptr inbounds i64, i64* %envptr9302, i64 2                  ; &envptr9302[2]
  %g8O$cc = load i64, i64* %envptr9303, align 8                                      ; load; *envptr9303
  %envptr9304 = inttoptr i64 %env8378 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9305 = getelementptr inbounds i64, i64* %envptr9304, i64 1                  ; &envptr9304[1]
  %cont7110 = load i64, i64* %envptr9305, align 8                                    ; load; *envptr9305
  %cloptr9306 = inttoptr i64 %g8O$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9306)                                         ; assert function application
  %i0ptr9307 = getelementptr inbounds i64, i64* %cloptr9306, i64 0                   ; &cloptr9306[0]
  %f9309 = load i64, i64* %i0ptr9307, align 8                                        ; load; *i0ptr9307
  %fptr9308 = inttoptr i64 %f9309 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9308(i64 %g8O$cc, i64 %cont7110, i64 %g8O$cc)       ; tail call
  ret void
}


define void @lam8370(i64 %env8371, i64 %fvw$args7117) {
  %envptr9310 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9311 = getelementptr inbounds i64, i64* %envptr9310, i64 1                  ; &envptr9310[1]
  %yoz$_37foldl1 = load i64, i64* %envptr9311, align 8                               ; load; *envptr9311
  %cont7116 = call i64 @prim_car(i64 %fvw$args7117)                                  ; call prim_car
  %fvw$args = call i64 @prim_cdr(i64 %fvw$args7117)                                  ; call prim_cdr
  %a7019 = call i64 @prim_null_63(i64 %fvw$args)                                     ; call prim_null_63
  %cmp9312 = icmp eq i64 %a7019, 15                                                  ; false?
  br i1 %cmp9312, label %else9314, label %then9313                                   ; if

then9313:
  %arg7581 = add i64 0, 0                                                            ; quoted ()
  %arg7580 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr9315 = inttoptr i64 %cont7116 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9315)                                         ; assert function application
  %i0ptr9316 = getelementptr inbounds i64, i64* %cloptr9315, i64 0                   ; &cloptr9315[0]
  %f9318 = load i64, i64* %i0ptr9316, align 8                                        ; load; *i0ptr9316
  %fptr9317 = inttoptr i64 %f9318 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9317(i64 %cont7116, i64 %arg7581, i64 %arg7580)     ; tail call
  ret void

else9314:
  %a7020 = call i64 @prim_cdr(i64 %fvw$args)                                         ; call prim_cdr
  %a7021 = call i64 @prim_null_63(i64 %a7020)                                        ; call prim_null_63
  %cmp9319 = icmp eq i64 %a7021, 15                                                  ; false?
  br i1 %cmp9319, label %else9321, label %then9320                                   ; if

then9320:
  %retprim7118 = call i64 @prim_car(i64 %fvw$args)                                   ; call prim_car
  %arg7587 = add i64 0, 0                                                            ; quoted ()
  %cloptr9322 = inttoptr i64 %cont7116 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9322)                                         ; assert function application
  %i0ptr9323 = getelementptr inbounds i64, i64* %cloptr9322, i64 0                   ; &cloptr9322[0]
  %f9325 = load i64, i64* %i0ptr9323, align 8                                        ; load; *i0ptr9323
  %fptr9324 = inttoptr i64 %f9325 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9324(i64 %cont7116, i64 %arg7587, i64 %retprim7118) ; tail call
  ret void

else9321:
  %a7022 = call i64 @prim_car(i64 %fvw$args)                                         ; call prim_car
  %a7023 = call i64 @prim_cdr(i64 %fvw$args)                                         ; call prim_cdr
  %cloptr9326 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9327 = getelementptr inbounds i64, i64* %cloptr9326, i64 0                    ; &cloptr9326[0]
  %f9328 = ptrtoint void(i64,i64,i64,i64)* @lam8368 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9328, i64* %eptr9327                                                   ; store fptr
  %arg7593 = ptrtoint i64* %cloptr9326 to i64                                        ; closure cast; i64* -> i64
  %cloptr9329 = inttoptr i64 %yoz$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9329)                                         ; assert function application
  %i0ptr9330 = getelementptr inbounds i64, i64* %cloptr9329, i64 0                   ; &cloptr9329[0]
  %f9332 = load i64, i64* %i0ptr9330, align 8                                        ; load; *i0ptr9330
  %fptr9331 = inttoptr i64 %f9332 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9331(i64 %yoz$_37foldl1, i64 %cont7116, i64 %arg7593, i64 %a7022, i64 %a7023); tail call
  ret void
}


define void @lam8368(i64 %env8369, i64 %cont7119, i64 %v1A$n, i64 %PFz$v) {
  %retprim7120 = call i64 @prim__47(i64 %PFz$v, i64 %v1A$n)                          ; call prim__47
  %arg7599 = add i64 0, 0                                                            ; quoted ()
  %cloptr9333 = inttoptr i64 %cont7119 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9333)                                         ; assert function application
  %i0ptr9334 = getelementptr inbounds i64, i64* %cloptr9333, i64 0                   ; &cloptr9333[0]
  %f9336 = load i64, i64* %i0ptr9334, align 8                                        ; load; *i0ptr9334
  %fptr9335 = inttoptr i64 %f9336 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9335(i64 %cont7119, i64 %arg7599, i64 %retprim7120) ; tail call
  ret void
}


define void @lam8362(i64 %env8363, i64 %cont7121, i64 %sPh$x) {
  %retprim7122 = call i64 @prim_car(i64 %sPh$x)                                      ; call prim_car
  %arg7603 = add i64 0, 0                                                            ; quoted ()
  %cloptr9337 = inttoptr i64 %cont7121 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9337)                                         ; assert function application
  %i0ptr9338 = getelementptr inbounds i64, i64* %cloptr9337, i64 0                   ; &cloptr9337[0]
  %f9340 = load i64, i64* %i0ptr9338, align 8                                        ; load; *i0ptr9338
  %fptr9339 = inttoptr i64 %f9340 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9339(i64 %cont7121, i64 %arg7603, i64 %retprim7122) ; tail call
  ret void
}


define void @lam8359(i64 %env8360, i64 %cont7123, i64 %oOr$x) {
  %a7024 = call i64 @prim_cdr(i64 %oOr$x)                                            ; call prim_cdr
  %retprim7124 = call i64 @prim_car(i64 %a7024)                                      ; call prim_car
  %arg7608 = add i64 0, 0                                                            ; quoted ()
  %cloptr9341 = inttoptr i64 %cont7123 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9341)                                         ; assert function application
  %i0ptr9342 = getelementptr inbounds i64, i64* %cloptr9341, i64 0                   ; &cloptr9341[0]
  %f9344 = load i64, i64* %i0ptr9342, align 8                                        ; load; *i0ptr9342
  %fptr9343 = inttoptr i64 %f9344 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9343(i64 %cont7123, i64 %arg7608, i64 %retprim7124) ; tail call
  ret void
}


define void @lam8356(i64 %env8357, i64 %cont7125, i64 %N26$x) {
  %a7025 = call i64 @prim_cdr(i64 %N26$x)                                            ; call prim_cdr
  %a7026 = call i64 @prim_cdr(i64 %a7025)                                            ; call prim_cdr
  %retprim7126 = call i64 @prim_car(i64 %a7026)                                      ; call prim_car
  %arg7614 = add i64 0, 0                                                            ; quoted ()
  %cloptr9345 = inttoptr i64 %cont7125 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9345)                                         ; assert function application
  %i0ptr9346 = getelementptr inbounds i64, i64* %cloptr9345, i64 0                   ; &cloptr9345[0]
  %f9348 = load i64, i64* %i0ptr9346, align 8                                        ; load; *i0ptr9346
  %fptr9347 = inttoptr i64 %f9348 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9347(i64 %cont7125, i64 %arg7614, i64 %retprim7126) ; tail call
  ret void
}


define void @lam8353(i64 %env8354, i64 %cont7127, i64 %oVv$x) {
  %a7027 = call i64 @prim_cdr(i64 %oVv$x)                                            ; call prim_cdr
  %a7028 = call i64 @prim_cdr(i64 %a7027)                                            ; call prim_cdr
  %a7029 = call i64 @prim_cdr(i64 %a7028)                                            ; call prim_cdr
  %retprim7128 = call i64 @prim_car(i64 %a7029)                                      ; call prim_car
  %arg7621 = add i64 0, 0                                                            ; quoted ()
  %cloptr9349 = inttoptr i64 %cont7127 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9349)                                         ; assert function application
  %i0ptr9350 = getelementptr inbounds i64, i64* %cloptr9349, i64 0                   ; &cloptr9349[0]
  %f9352 = load i64, i64* %i0ptr9350, align 8                                        ; load; *i0ptr9350
  %fptr9351 = inttoptr i64 %f9352 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9351(i64 %cont7127, i64 %arg7621, i64 %retprim7128) ; tail call
  ret void
}


define void @lam8350(i64 %env8351, i64 %cont7129, i64 %J8v$p) {
  %a7030 = call i64 @prim_cons_63(i64 %J8v$p)                                        ; call prim_cons_63
  %cmp9353 = icmp eq i64 %a7030, 15                                                  ; false?
  br i1 %cmp9353, label %else9355, label %then9354                                   ; if

then9354:
  %a7031 = call i64 @prim_car(i64 %J8v$p)                                            ; call prim_car
  %arg7625 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym9356, i32 0, i32 0)); quoted string
  %retprim7130 = call i64 @prim_eq_63(i64 %a7031, i64 %arg7625)                      ; call prim_eq_63
  %arg7628 = add i64 0, 0                                                            ; quoted ()
  %cloptr9357 = inttoptr i64 %cont7129 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9357)                                         ; assert function application
  %i0ptr9358 = getelementptr inbounds i64, i64* %cloptr9357, i64 0                   ; &cloptr9357[0]
  %f9360 = load i64, i64* %i0ptr9358, align 8                                        ; load; *i0ptr9358
  %fptr9359 = inttoptr i64 %f9360 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9359(i64 %cont7129, i64 %arg7628, i64 %retprim7130) ; tail call
  ret void

else9355:
  %arg7631 = add i64 0, 0                                                            ; quoted ()
  %arg7630 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9361 = inttoptr i64 %cont7129 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9361)                                         ; assert function application
  %i0ptr9362 = getelementptr inbounds i64, i64* %cloptr9361, i64 0                   ; &cloptr9361[0]
  %f9364 = load i64, i64* %i0ptr9362, align 8                                        ; load; *i0ptr9362
  %fptr9363 = inttoptr i64 %f9364 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9363(i64 %cont7129, i64 %arg7631, i64 %arg7630)     ; tail call
  ret void
}


define void @lam8344(i64 %env8345, i64 %Hug$lst7175) {
  %cont7174 = call i64 @prim_car(i64 %Hug$lst7175)                                   ; call prim_car
  %Hug$lst = call i64 @prim_cdr(i64 %Hug$lst7175)                                    ; call prim_cdr
  %arg7638 = add i64 0, 0                                                            ; quoted ()
  %cloptr9365 = inttoptr i64 %cont7174 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9365)                                         ; assert function application
  %i0ptr9366 = getelementptr inbounds i64, i64* %cloptr9365, i64 0                   ; &cloptr9365[0]
  %f9368 = load i64, i64* %i0ptr9366, align 8                                        ; load; *i0ptr9366
  %fptr9367 = inttoptr i64 %f9368 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9367(i64 %cont7174, i64 %arg7638, i64 %Hug$lst)     ; tail call
  ret void
}


define void @lam8341(i64 %env8342, i64 %_957131, i64 %Eyy$_37raise_45handler) {
  %envptr9369 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9370 = getelementptr inbounds i64, i64* %envptr9369, i64 3                  ; &envptr9369[3]
  %ZYT$_37drop = load i64, i64* %envptr9370, align 8                                 ; load; *envptr9370
  %envptr9371 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9372 = getelementptr inbounds i64, i64* %envptr9371, i64 2                  ; &envptr9371[2]
  %ja4$_37_62 = load i64, i64* %envptr9372, align 8                                  ; load; *envptr9372
  %envptr9373 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9374 = getelementptr inbounds i64, i64* %envptr9373, i64 1                  ; &envptr9373[1]
  %wwG$_37length = load i64, i64* %envptr9374, align 8                               ; load; *envptr9374
  %cloptr9375 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9376 = getelementptr inbounds i64, i64* %cloptr9375, i64 0                    ; &cloptr9375[0]
  %f9377 = ptrtoint void(i64,i64)* @lam8339 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9377, i64* %eptr9376                                                   ; store fptr
  %arg7641 = ptrtoint i64* %cloptr9375 to i64                                        ; closure cast; i64* -> i64
  %cloptr9378 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9380 = getelementptr inbounds i64, i64* %cloptr9378, i64 1                    ; &eptr9380[1]
  %eptr9381 = getelementptr inbounds i64, i64* %cloptr9378, i64 2                    ; &eptr9381[2]
  %eptr9382 = getelementptr inbounds i64, i64* %cloptr9378, i64 3                    ; &eptr9382[3]
  store i64 %wwG$_37length, i64* %eptr9380                                           ; *eptr9380 = %wwG$_37length
  store i64 %ja4$_37_62, i64* %eptr9381                                              ; *eptr9381 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9382                                             ; *eptr9382 = %ZYT$_37drop
  %eptr9379 = getelementptr inbounds i64, i64* %cloptr9378, i64 0                    ; &cloptr9378[0]
  %f9383 = ptrtoint void(i64,i64,i64)* @lam8336 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9383, i64* %eptr9379                                                   ; store fptr
  %arg7640 = ptrtoint i64* %cloptr9378 to i64                                        ; closure cast; i64* -> i64
  %rva8092 = add i64 0, 0                                                            ; quoted ()
  %rva8091 = call i64 @prim_cons(i64 %arg7640, i64 %rva8092)                         ; call prim_cons
  %cloptr9384 = inttoptr i64 %arg7641 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9384)                                         ; assert function application
  %i0ptr9385 = getelementptr inbounds i64, i64* %cloptr9384, i64 0                   ; &cloptr9384[0]
  %f9387 = load i64, i64* %i0ptr9385, align 8                                        ; load; *i0ptr9385
  %fptr9386 = inttoptr i64 %f9387 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9386(i64 %arg7641, i64 %rva8091)                    ; tail call
  ret void
}


define void @lam8339(i64 %env8340, i64 %lfo$lst7173) {
  %cont7172 = call i64 @prim_car(i64 %lfo$lst7173)                                   ; call prim_car
  %lfo$lst = call i64 @prim_cdr(i64 %lfo$lst7173)                                    ; call prim_cdr
  %arg7645 = add i64 0, 0                                                            ; quoted ()
  %cloptr9388 = inttoptr i64 %cont7172 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9388)                                         ; assert function application
  %i0ptr9389 = getelementptr inbounds i64, i64* %cloptr9388, i64 0                   ; &cloptr9388[0]
  %f9391 = load i64, i64* %i0ptr9389, align 8                                        ; load; *i0ptr9389
  %fptr9390 = inttoptr i64 %f9391 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9390(i64 %cont7172, i64 %arg7645, i64 %lfo$lst)     ; tail call
  ret void
}


define void @lam8336(i64 %env8337, i64 %_957170, i64 %a7032) {
  %envptr9392 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9393 = getelementptr inbounds i64, i64* %envptr9392, i64 3                  ; &envptr9392[3]
  %ZYT$_37drop = load i64, i64* %envptr9393, align 8                                 ; load; *envptr9393
  %envptr9394 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9395 = getelementptr inbounds i64, i64* %envptr9394, i64 2                  ; &envptr9394[2]
  %ja4$_37_62 = load i64, i64* %envptr9395, align 8                                  ; load; *envptr9395
  %envptr9396 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9397 = getelementptr inbounds i64, i64* %envptr9396, i64 1                  ; &envptr9396[1]
  %wwG$_37length = load i64, i64* %envptr9397, align 8                               ; load; *envptr9397
  %arg7648 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7171 = call i64 @prim_make_45vector(i64 %arg7648, i64 %a7032)              ; call prim_make_45vector
  %cloptr9398 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9400 = getelementptr inbounds i64, i64* %cloptr9398, i64 1                    ; &eptr9400[1]
  %eptr9401 = getelementptr inbounds i64, i64* %cloptr9398, i64 2                    ; &eptr9401[2]
  %eptr9402 = getelementptr inbounds i64, i64* %cloptr9398, i64 3                    ; &eptr9402[3]
  store i64 %wwG$_37length, i64* %eptr9400                                           ; *eptr9400 = %wwG$_37length
  store i64 %ja4$_37_62, i64* %eptr9401                                              ; *eptr9401 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9402                                             ; *eptr9402 = %ZYT$_37drop
  %eptr9399 = getelementptr inbounds i64, i64* %cloptr9398, i64 0                    ; &cloptr9398[0]
  %f9403 = ptrtoint void(i64,i64,i64)* @lam8333 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9403, i64* %eptr9399                                                   ; store fptr
  %arg7651 = ptrtoint i64* %cloptr9398 to i64                                        ; closure cast; i64* -> i64
  %arg7650 = add i64 0, 0                                                            ; quoted ()
  %cloptr9404 = inttoptr i64 %arg7651 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9404)                                         ; assert function application
  %i0ptr9405 = getelementptr inbounds i64, i64* %cloptr9404, i64 0                   ; &cloptr9404[0]
  %f9407 = load i64, i64* %i0ptr9405, align 8                                        ; load; *i0ptr9405
  %fptr9406 = inttoptr i64 %f9407 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9406(i64 %arg7651, i64 %arg7650, i64 %retprim7171)  ; tail call
  ret void
}


define void @lam8333(i64 %env8334, i64 %_957132, i64 %Jt1$_37wind_45stack) {
  %envptr9408 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9409 = getelementptr inbounds i64, i64* %envptr9408, i64 3                  ; &envptr9408[3]
  %ZYT$_37drop = load i64, i64* %envptr9409, align 8                                 ; load; *envptr9409
  %envptr9410 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9411 = getelementptr inbounds i64, i64* %envptr9410, i64 2                  ; &envptr9410[2]
  %ja4$_37_62 = load i64, i64* %envptr9411, align 8                                  ; load; *envptr9411
  %envptr9412 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9413 = getelementptr inbounds i64, i64* %envptr9412, i64 1                  ; &envptr9412[1]
  %wwG$_37length = load i64, i64* %envptr9413, align 8                               ; load; *envptr9413
  %cloptr9414 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9416 = getelementptr inbounds i64, i64* %cloptr9414, i64 1                    ; &eptr9416[1]
  %eptr9417 = getelementptr inbounds i64, i64* %cloptr9414, i64 2                    ; &eptr9417[2]
  %eptr9418 = getelementptr inbounds i64, i64* %cloptr9414, i64 3                    ; &eptr9418[3]
  store i64 %wwG$_37length, i64* %eptr9416                                           ; *eptr9416 = %wwG$_37length
  store i64 %ja4$_37_62, i64* %eptr9417                                              ; *eptr9417 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9418                                             ; *eptr9418 = %ZYT$_37drop
  %eptr9415 = getelementptr inbounds i64, i64* %cloptr9414, i64 0                    ; &cloptr9414[0]
  %f9419 = ptrtoint void(i64,i64,i64,i64)* @lam8331 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9419, i64* %eptr9415                                                   ; store fptr
  %xZ1$_37common_45tail = ptrtoint i64* %cloptr9414 to i64                           ; closure cast; i64* -> i64
  %cloptr9420 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9422 = getelementptr inbounds i64, i64* %cloptr9420, i64 1                    ; &eptr9422[1]
  %eptr9423 = getelementptr inbounds i64, i64* %cloptr9420, i64 2                    ; &eptr9423[2]
  store i64 %xZ1$_37common_45tail, i64* %eptr9422                                    ; *eptr9422 = %xZ1$_37common_45tail
  store i64 %Jt1$_37wind_45stack, i64* %eptr9423                                     ; *eptr9423 = %Jt1$_37wind_45stack
  %eptr9421 = getelementptr inbounds i64, i64* %cloptr9420, i64 0                    ; &cloptr9420[0]
  %f9424 = ptrtoint void(i64,i64,i64)* @lam8289 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9424, i64* %eptr9421                                                   ; store fptr
  %ZHk$_37do_45wind = ptrtoint i64* %cloptr9420 to i64                               ; closure cast; i64* -> i64
  %arg7836 = call i64 @const_init_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @sym9425, i32 0, i32 0)); quoted character
  call i64 @too_many_args()                                                          ; too many args for string
  ret void                                                                           ; 
}


define void @lam8331(i64 %env8332, i64 %cont7133, i64 %otp$x, i64 %jo9$y) {
  %envptr9426 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9427 = getelementptr inbounds i64, i64* %envptr9426, i64 3                  ; &envptr9426[3]
  %ZYT$_37drop = load i64, i64* %envptr9427, align 8                                 ; load; *envptr9427
  %envptr9428 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9429 = getelementptr inbounds i64, i64* %envptr9428, i64 2                  ; &envptr9428[2]
  %ja4$_37_62 = load i64, i64* %envptr9429, align 8                                  ; load; *envptr9429
  %envptr9430 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9431 = getelementptr inbounds i64, i64* %envptr9430, i64 1                  ; &envptr9430[1]
  %wwG$_37length = load i64, i64* %envptr9431, align 8                               ; load; *envptr9431
  %cloptr9432 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9434 = getelementptr inbounds i64, i64* %cloptr9432, i64 1                    ; &eptr9434[1]
  %eptr9435 = getelementptr inbounds i64, i64* %cloptr9432, i64 2                    ; &eptr9435[2]
  %eptr9436 = getelementptr inbounds i64, i64* %cloptr9432, i64 3                    ; &eptr9436[3]
  %eptr9437 = getelementptr inbounds i64, i64* %cloptr9432, i64 4                    ; &eptr9437[4]
  %eptr9438 = getelementptr inbounds i64, i64* %cloptr9432, i64 5                    ; &eptr9438[5]
  %eptr9439 = getelementptr inbounds i64, i64* %cloptr9432, i64 6                    ; &eptr9439[6]
  store i64 %wwG$_37length, i64* %eptr9434                                           ; *eptr9434 = %wwG$_37length
  store i64 %ja4$_37_62, i64* %eptr9435                                              ; *eptr9435 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9436                                             ; *eptr9436 = %ZYT$_37drop
  store i64 %cont7133, i64* %eptr9437                                                ; *eptr9437 = %cont7133
  store i64 %jo9$y, i64* %eptr9438                                                   ; *eptr9438 = %jo9$y
  store i64 %otp$x, i64* %eptr9439                                                   ; *eptr9439 = %otp$x
  %eptr9433 = getelementptr inbounds i64, i64* %cloptr9432, i64 0                    ; &cloptr9432[0]
  %f9440 = ptrtoint void(i64,i64,i64)* @lam8329 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9440, i64* %eptr9433                                                   ; store fptr
  %arg7653 = ptrtoint i64* %cloptr9432 to i64                                        ; closure cast; i64* -> i64
  %cloptr9441 = inttoptr i64 %wwG$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9441)                                         ; assert function application
  %i0ptr9442 = getelementptr inbounds i64, i64* %cloptr9441, i64 0                   ; &cloptr9441[0]
  %f9444 = load i64, i64* %i0ptr9442, align 8                                        ; load; *i0ptr9442
  %fptr9443 = inttoptr i64 %f9444 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9443(i64 %wwG$_37length, i64 %arg7653, i64 %otp$x)  ; tail call
  ret void
}


define void @lam8329(i64 %env8330, i64 %_957134, i64 %TGQ$lx) {
  %envptr9445 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9446 = getelementptr inbounds i64, i64* %envptr9445, i64 6                  ; &envptr9445[6]
  %otp$x = load i64, i64* %envptr9446, align 8                                       ; load; *envptr9446
  %envptr9447 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9448 = getelementptr inbounds i64, i64* %envptr9447, i64 5                  ; &envptr9447[5]
  %jo9$y = load i64, i64* %envptr9448, align 8                                       ; load; *envptr9448
  %envptr9449 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9450 = getelementptr inbounds i64, i64* %envptr9449, i64 4                  ; &envptr9449[4]
  %cont7133 = load i64, i64* %envptr9450, align 8                                    ; load; *envptr9450
  %envptr9451 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9452 = getelementptr inbounds i64, i64* %envptr9451, i64 3                  ; &envptr9451[3]
  %ZYT$_37drop = load i64, i64* %envptr9452, align 8                                 ; load; *envptr9452
  %envptr9453 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9454 = getelementptr inbounds i64, i64* %envptr9453, i64 2                  ; &envptr9453[2]
  %ja4$_37_62 = load i64, i64* %envptr9454, align 8                                  ; load; *envptr9454
  %envptr9455 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9456 = getelementptr inbounds i64, i64* %envptr9455, i64 1                  ; &envptr9455[1]
  %wwG$_37length = load i64, i64* %envptr9456, align 8                               ; load; *envptr9456
  %cloptr9457 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9459 = getelementptr inbounds i64, i64* %cloptr9457, i64 1                    ; &eptr9459[1]
  %eptr9460 = getelementptr inbounds i64, i64* %cloptr9457, i64 2                    ; &eptr9460[2]
  %eptr9461 = getelementptr inbounds i64, i64* %cloptr9457, i64 3                    ; &eptr9461[3]
  %eptr9462 = getelementptr inbounds i64, i64* %cloptr9457, i64 4                    ; &eptr9462[4]
  %eptr9463 = getelementptr inbounds i64, i64* %cloptr9457, i64 5                    ; &eptr9463[5]
  %eptr9464 = getelementptr inbounds i64, i64* %cloptr9457, i64 6                    ; &eptr9464[6]
  store i64 %ja4$_37_62, i64* %eptr9459                                              ; *eptr9459 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9460                                             ; *eptr9460 = %ZYT$_37drop
  store i64 %TGQ$lx, i64* %eptr9461                                                  ; *eptr9461 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9462                                                ; *eptr9462 = %cont7133
  store i64 %jo9$y, i64* %eptr9463                                                   ; *eptr9463 = %jo9$y
  store i64 %otp$x, i64* %eptr9464                                                   ; *eptr9464 = %otp$x
  %eptr9458 = getelementptr inbounds i64, i64* %cloptr9457, i64 0                    ; &cloptr9457[0]
  %f9465 = ptrtoint void(i64,i64,i64)* @lam8327 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9465, i64* %eptr9458                                                   ; store fptr
  %arg7656 = ptrtoint i64* %cloptr9457 to i64                                        ; closure cast; i64* -> i64
  %cloptr9466 = inttoptr i64 %wwG$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9466)                                         ; assert function application
  %i0ptr9467 = getelementptr inbounds i64, i64* %cloptr9466, i64 0                   ; &cloptr9466[0]
  %f9469 = load i64, i64* %i0ptr9467, align 8                                        ; load; *i0ptr9467
  %fptr9468 = inttoptr i64 %f9469 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9468(i64 %wwG$_37length, i64 %arg7656, i64 %jo9$y)  ; tail call
  ret void
}


define void @lam8327(i64 %env8328, i64 %_957135, i64 %lAf$ly) {
  %envptr9470 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9471 = getelementptr inbounds i64, i64* %envptr9470, i64 6                  ; &envptr9470[6]
  %otp$x = load i64, i64* %envptr9471, align 8                                       ; load; *envptr9471
  %envptr9472 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9473 = getelementptr inbounds i64, i64* %envptr9472, i64 5                  ; &envptr9472[5]
  %jo9$y = load i64, i64* %envptr9473, align 8                                       ; load; *envptr9473
  %envptr9474 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9475 = getelementptr inbounds i64, i64* %envptr9474, i64 4                  ; &envptr9474[4]
  %cont7133 = load i64, i64* %envptr9475, align 8                                    ; load; *envptr9475
  %envptr9476 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9477 = getelementptr inbounds i64, i64* %envptr9476, i64 3                  ; &envptr9476[3]
  %TGQ$lx = load i64, i64* %envptr9477, align 8                                      ; load; *envptr9477
  %envptr9478 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9479 = getelementptr inbounds i64, i64* %envptr9478, i64 2                  ; &envptr9478[2]
  %ZYT$_37drop = load i64, i64* %envptr9479, align 8                                 ; load; *envptr9479
  %envptr9480 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9481 = getelementptr inbounds i64, i64* %envptr9480, i64 1                  ; &envptr9480[1]
  %ja4$_37_62 = load i64, i64* %envptr9481, align 8                                  ; load; *envptr9481
  %cloptr9482 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9483 = getelementptr inbounds i64, i64* %cloptr9482, i64 0                    ; &cloptr9482[0]
  %f9484 = ptrtoint void(i64,i64)* @lam8325 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9484, i64* %eptr9483                                                   ; store fptr
  %arg7659 = ptrtoint i64* %cloptr9482 to i64                                        ; closure cast; i64* -> i64
  %cloptr9485 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9487 = getelementptr inbounds i64, i64* %cloptr9485, i64 1                    ; &eptr9487[1]
  %eptr9488 = getelementptr inbounds i64, i64* %cloptr9485, i64 2                    ; &eptr9488[2]
  %eptr9489 = getelementptr inbounds i64, i64* %cloptr9485, i64 3                    ; &eptr9489[3]
  %eptr9490 = getelementptr inbounds i64, i64* %cloptr9485, i64 4                    ; &eptr9490[4]
  %eptr9491 = getelementptr inbounds i64, i64* %cloptr9485, i64 5                    ; &eptr9491[5]
  %eptr9492 = getelementptr inbounds i64, i64* %cloptr9485, i64 6                    ; &eptr9492[6]
  %eptr9493 = getelementptr inbounds i64, i64* %cloptr9485, i64 7                    ; &eptr9493[7]
  store i64 %ja4$_37_62, i64* %eptr9487                                              ; *eptr9487 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9488                                             ; *eptr9488 = %ZYT$_37drop
  store i64 %lAf$ly, i64* %eptr9489                                                  ; *eptr9489 = %lAf$ly
  store i64 %TGQ$lx, i64* %eptr9490                                                  ; *eptr9490 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9491                                                ; *eptr9491 = %cont7133
  store i64 %jo9$y, i64* %eptr9492                                                   ; *eptr9492 = %jo9$y
  store i64 %otp$x, i64* %eptr9493                                                   ; *eptr9493 = %otp$x
  %eptr9486 = getelementptr inbounds i64, i64* %cloptr9485, i64 0                    ; &cloptr9485[0]
  %f9494 = ptrtoint void(i64,i64,i64)* @lam8322 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9494, i64* %eptr9486                                                   ; store fptr
  %arg7658 = ptrtoint i64* %cloptr9485 to i64                                        ; closure cast; i64* -> i64
  %cloptr9495 = inttoptr i64 %arg7659 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9495)                                         ; assert function application
  %i0ptr9496 = getelementptr inbounds i64, i64* %cloptr9495, i64 0                   ; &cloptr9495[0]
  %f9498 = load i64, i64* %i0ptr9496, align 8                                        ; load; *i0ptr9496
  %fptr9497 = inttoptr i64 %f9498 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9497(i64 %arg7659, i64 %arg7658)                    ; tail call
  ret void
}


define void @lam8325(i64 %env8326, i64 %Ix7$lst7145) {
  %cont7144 = call i64 @prim_car(i64 %Ix7$lst7145)                                   ; call prim_car
  %Ix7$lst = call i64 @prim_cdr(i64 %Ix7$lst7145)                                    ; call prim_cdr
  %arg7663 = add i64 0, 0                                                            ; quoted ()
  %cloptr9499 = inttoptr i64 %cont7144 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9499)                                         ; assert function application
  %i0ptr9500 = getelementptr inbounds i64, i64* %cloptr9499, i64 0                   ; &cloptr9499[0]
  %f9502 = load i64, i64* %i0ptr9500, align 8                                        ; load; *i0ptr9500
  %fptr9501 = inttoptr i64 %f9502 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9501(i64 %cont7144, i64 %arg7663, i64 %Ix7$lst)     ; tail call
  ret void
}


define void @lam8322(i64 %env8323, i64 %_957142, i64 %a7033) {
  %envptr9503 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9504 = getelementptr inbounds i64, i64* %envptr9503, i64 7                  ; &envptr9503[7]
  %otp$x = load i64, i64* %envptr9504, align 8                                       ; load; *envptr9504
  %envptr9505 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9506 = getelementptr inbounds i64, i64* %envptr9505, i64 6                  ; &envptr9505[6]
  %jo9$y = load i64, i64* %envptr9506, align 8                                       ; load; *envptr9506
  %envptr9507 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9508 = getelementptr inbounds i64, i64* %envptr9507, i64 5                  ; &envptr9507[5]
  %cont7133 = load i64, i64* %envptr9508, align 8                                    ; load; *envptr9508
  %envptr9509 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9510 = getelementptr inbounds i64, i64* %envptr9509, i64 4                  ; &envptr9509[4]
  %TGQ$lx = load i64, i64* %envptr9510, align 8                                      ; load; *envptr9510
  %envptr9511 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9512 = getelementptr inbounds i64, i64* %envptr9511, i64 3                  ; &envptr9511[3]
  %lAf$ly = load i64, i64* %envptr9512, align 8                                      ; load; *envptr9512
  %envptr9513 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9514 = getelementptr inbounds i64, i64* %envptr9513, i64 2                  ; &envptr9513[2]
  %ZYT$_37drop = load i64, i64* %envptr9514, align 8                                 ; load; *envptr9514
  %envptr9515 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9516 = getelementptr inbounds i64, i64* %envptr9515, i64 1                  ; &envptr9515[1]
  %ja4$_37_62 = load i64, i64* %envptr9516, align 8                                  ; load; *envptr9516
  %arg7666 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7143 = call i64 @prim_make_45vector(i64 %arg7666, i64 %a7033)              ; call prim_make_45vector
  %cloptr9517 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9519 = getelementptr inbounds i64, i64* %cloptr9517, i64 1                    ; &eptr9519[1]
  %eptr9520 = getelementptr inbounds i64, i64* %cloptr9517, i64 2                    ; &eptr9520[2]
  %eptr9521 = getelementptr inbounds i64, i64* %cloptr9517, i64 3                    ; &eptr9521[3]
  %eptr9522 = getelementptr inbounds i64, i64* %cloptr9517, i64 4                    ; &eptr9522[4]
  %eptr9523 = getelementptr inbounds i64, i64* %cloptr9517, i64 5                    ; &eptr9523[5]
  %eptr9524 = getelementptr inbounds i64, i64* %cloptr9517, i64 6                    ; &eptr9524[6]
  %eptr9525 = getelementptr inbounds i64, i64* %cloptr9517, i64 7                    ; &eptr9525[7]
  store i64 %ja4$_37_62, i64* %eptr9519                                              ; *eptr9519 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9520                                             ; *eptr9520 = %ZYT$_37drop
  store i64 %lAf$ly, i64* %eptr9521                                                  ; *eptr9521 = %lAf$ly
  store i64 %TGQ$lx, i64* %eptr9522                                                  ; *eptr9522 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9523                                                ; *eptr9523 = %cont7133
  store i64 %jo9$y, i64* %eptr9524                                                   ; *eptr9524 = %jo9$y
  store i64 %otp$x, i64* %eptr9525                                                   ; *eptr9525 = %otp$x
  %eptr9518 = getelementptr inbounds i64, i64* %cloptr9517, i64 0                    ; &cloptr9517[0]
  %f9526 = ptrtoint void(i64,i64,i64)* @lam8319 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9526, i64* %eptr9518                                                   ; store fptr
  %arg7669 = ptrtoint i64* %cloptr9517 to i64                                        ; closure cast; i64* -> i64
  %arg7668 = add i64 0, 0                                                            ; quoted ()
  %cloptr9527 = inttoptr i64 %arg7669 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9527)                                         ; assert function application
  %i0ptr9528 = getelementptr inbounds i64, i64* %cloptr9527, i64 0                   ; &cloptr9527[0]
  %f9530 = load i64, i64* %i0ptr9528, align 8                                        ; load; *i0ptr9528
  %fptr9529 = inttoptr i64 %f9530 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9529(i64 %arg7669, i64 %arg7668, i64 %retprim7143)  ; tail call
  ret void
}


define void @lam8319(i64 %env8320, i64 %_957136, i64 %R39$loop) {
  %envptr9531 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9532 = getelementptr inbounds i64, i64* %envptr9531, i64 7                  ; &envptr9531[7]
  %otp$x = load i64, i64* %envptr9532, align 8                                       ; load; *envptr9532
  %envptr9533 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9534 = getelementptr inbounds i64, i64* %envptr9533, i64 6                  ; &envptr9533[6]
  %jo9$y = load i64, i64* %envptr9534, align 8                                       ; load; *envptr9534
  %envptr9535 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9536 = getelementptr inbounds i64, i64* %envptr9535, i64 5                  ; &envptr9535[5]
  %cont7133 = load i64, i64* %envptr9536, align 8                                    ; load; *envptr9536
  %envptr9537 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9538 = getelementptr inbounds i64, i64* %envptr9537, i64 4                  ; &envptr9537[4]
  %TGQ$lx = load i64, i64* %envptr9538, align 8                                      ; load; *envptr9538
  %envptr9539 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9540 = getelementptr inbounds i64, i64* %envptr9539, i64 3                  ; &envptr9539[3]
  %lAf$ly = load i64, i64* %envptr9540, align 8                                      ; load; *envptr9540
  %envptr9541 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9542 = getelementptr inbounds i64, i64* %envptr9541, i64 2                  ; &envptr9541[2]
  %ZYT$_37drop = load i64, i64* %envptr9542, align 8                                 ; load; *envptr9542
  %envptr9543 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9544 = getelementptr inbounds i64, i64* %envptr9543, i64 1                  ; &envptr9543[1]
  %ja4$_37_62 = load i64, i64* %envptr9544, align 8                                  ; load; *envptr9544
  %arg7671 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9545 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9547 = getelementptr inbounds i64, i64* %cloptr9545, i64 1                    ; &eptr9547[1]
  store i64 %R39$loop, i64* %eptr9547                                                ; *eptr9547 = %R39$loop
  %eptr9546 = getelementptr inbounds i64, i64* %cloptr9545, i64 0                    ; &cloptr9545[0]
  %f9548 = ptrtoint void(i64,i64,i64,i64)* @lam8316 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9548, i64* %eptr9546                                                   ; store fptr
  %arg7670 = ptrtoint i64* %cloptr9545 to i64                                        ; closure cast; i64* -> i64
  %y3X$_956937 = call i64 @prim_vector_45set_33(i64 %R39$loop, i64 %arg7671, i64 %arg7670); call prim_vector_45set_33
  %arg7686 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7038 = call i64 @prim_vector_45ref(i64 %R39$loop, i64 %arg7686)                  ; call prim_vector_45ref
  %cloptr9549 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9551 = getelementptr inbounds i64, i64* %cloptr9549, i64 1                    ; &eptr9551[1]
  %eptr9552 = getelementptr inbounds i64, i64* %cloptr9549, i64 2                    ; &eptr9552[2]
  %eptr9553 = getelementptr inbounds i64, i64* %cloptr9549, i64 3                    ; &eptr9553[3]
  %eptr9554 = getelementptr inbounds i64, i64* %cloptr9549, i64 4                    ; &eptr9554[4]
  %eptr9555 = getelementptr inbounds i64, i64* %cloptr9549, i64 5                    ; &eptr9555[5]
  %eptr9556 = getelementptr inbounds i64, i64* %cloptr9549, i64 6                    ; &eptr9556[6]
  %eptr9557 = getelementptr inbounds i64, i64* %cloptr9549, i64 7                    ; &eptr9557[7]
  %eptr9558 = getelementptr inbounds i64, i64* %cloptr9549, i64 8                    ; &eptr9558[8]
  store i64 %a7038, i64* %eptr9551                                                   ; *eptr9551 = %a7038
  store i64 %ja4$_37_62, i64* %eptr9552                                              ; *eptr9552 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9553                                             ; *eptr9553 = %ZYT$_37drop
  store i64 %lAf$ly, i64* %eptr9554                                                  ; *eptr9554 = %lAf$ly
  store i64 %TGQ$lx, i64* %eptr9555                                                  ; *eptr9555 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9556                                                ; *eptr9556 = %cont7133
  store i64 %jo9$y, i64* %eptr9557                                                   ; *eptr9557 = %jo9$y
  store i64 %otp$x, i64* %eptr9558                                                   ; *eptr9558 = %otp$x
  %eptr9550 = getelementptr inbounds i64, i64* %cloptr9549, i64 0                    ; &cloptr9549[0]
  %f9559 = ptrtoint void(i64,i64,i64)* @lam8311 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9559, i64* %eptr9550                                                   ; store fptr
  %arg7690 = ptrtoint i64* %cloptr9549 to i64                                        ; closure cast; i64* -> i64
  %cloptr9560 = inttoptr i64 %ja4$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9560)                                         ; assert function application
  %i0ptr9561 = getelementptr inbounds i64, i64* %cloptr9560, i64 0                   ; &cloptr9560[0]
  %f9563 = load i64, i64* %i0ptr9561, align 8                                        ; load; *i0ptr9561
  %fptr9562 = inttoptr i64 %f9563 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9562(i64 %ja4$_37_62, i64 %arg7690, i64 %TGQ$lx, i64 %lAf$ly); tail call
  ret void
}


define void @lam8316(i64 %env8317, i64 %cont7137, i64 %ab8$x, i64 %Yh2$y) {
  %envptr9564 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9565 = getelementptr inbounds i64, i64* %envptr9564, i64 1                  ; &envptr9564[1]
  %R39$loop = load i64, i64* %envptr9565, align 8                                    ; load; *envptr9565
  %a7034 = call i64 @prim_eq_63(i64 %ab8$x, i64 %Yh2$y)                              ; call prim_eq_63
  %cmp9566 = icmp eq i64 %a7034, 15                                                  ; false?
  br i1 %cmp9566, label %else9568, label %then9567                                   ; if

then9567:
  %arg7676 = add i64 0, 0                                                            ; quoted ()
  %cloptr9569 = inttoptr i64 %cont7137 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9569)                                         ; assert function application
  %i0ptr9570 = getelementptr inbounds i64, i64* %cloptr9569, i64 0                   ; &cloptr9569[0]
  %f9572 = load i64, i64* %i0ptr9570, align 8                                        ; load; *i0ptr9570
  %fptr9571 = inttoptr i64 %f9572 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9571(i64 %cont7137, i64 %arg7676, i64 %ab8$x)       ; tail call
  ret void

else9568:
  %arg7678 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7035 = call i64 @prim_vector_45ref(i64 %R39$loop, i64 %arg7678)                  ; call prim_vector_45ref
  %a7036 = call i64 @prim_cdr(i64 %ab8$x)                                            ; call prim_cdr
  %a7037 = call i64 @prim_cdr(i64 %Yh2$y)                                            ; call prim_cdr
  %cloptr9573 = inttoptr i64 %a7035 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9573)                                         ; assert function application
  %i0ptr9574 = getelementptr inbounds i64, i64* %cloptr9573, i64 0                   ; &cloptr9573[0]
  %f9576 = load i64, i64* %i0ptr9574, align 8                                        ; load; *i0ptr9574
  %fptr9575 = inttoptr i64 %f9576 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9575(i64 %a7035, i64 %cont7137, i64 %a7036, i64 %a7037); tail call
  ret void
}


define void @lam8311(i64 %env8312, i64 %_957138, i64 %a7039) {
  %envptr9577 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9578 = getelementptr inbounds i64, i64* %envptr9577, i64 8                  ; &envptr9577[8]
  %otp$x = load i64, i64* %envptr9578, align 8                                       ; load; *envptr9578
  %envptr9579 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9580 = getelementptr inbounds i64, i64* %envptr9579, i64 7                  ; &envptr9579[7]
  %jo9$y = load i64, i64* %envptr9580, align 8                                       ; load; *envptr9580
  %envptr9581 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9582 = getelementptr inbounds i64, i64* %envptr9581, i64 6                  ; &envptr9581[6]
  %cont7133 = load i64, i64* %envptr9582, align 8                                    ; load; *envptr9582
  %envptr9583 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9584 = getelementptr inbounds i64, i64* %envptr9583, i64 5                  ; &envptr9583[5]
  %TGQ$lx = load i64, i64* %envptr9584, align 8                                      ; load; *envptr9584
  %envptr9585 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9586 = getelementptr inbounds i64, i64* %envptr9585, i64 4                  ; &envptr9585[4]
  %lAf$ly = load i64, i64* %envptr9586, align 8                                      ; load; *envptr9586
  %envptr9587 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9588 = getelementptr inbounds i64, i64* %envptr9587, i64 3                  ; &envptr9587[3]
  %ZYT$_37drop = load i64, i64* %envptr9588, align 8                                 ; load; *envptr9588
  %envptr9589 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9590 = getelementptr inbounds i64, i64* %envptr9589, i64 2                  ; &envptr9589[2]
  %ja4$_37_62 = load i64, i64* %envptr9590, align 8                                  ; load; *envptr9590
  %envptr9591 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9592 = getelementptr inbounds i64, i64* %envptr9591, i64 1                  ; &envptr9591[1]
  %a7038 = load i64, i64* %envptr9592, align 8                                       ; load; *envptr9592
  %cmp9593 = icmp eq i64 %a7039, 15                                                  ; false?
  br i1 %cmp9593, label %else9595, label %then9594                                   ; if

then9594:
  %a7040 = call i64 @prim__45(i64 %TGQ$lx, i64 %lAf$ly)                              ; call prim__45
  %cloptr9596 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9598 = getelementptr inbounds i64, i64* %cloptr9596, i64 1                    ; &eptr9598[1]
  %eptr9599 = getelementptr inbounds i64, i64* %cloptr9596, i64 2                    ; &eptr9599[2]
  %eptr9600 = getelementptr inbounds i64, i64* %cloptr9596, i64 3                    ; &eptr9600[3]
  %eptr9601 = getelementptr inbounds i64, i64* %cloptr9596, i64 4                    ; &eptr9601[4]
  %eptr9602 = getelementptr inbounds i64, i64* %cloptr9596, i64 5                    ; &eptr9602[5]
  %eptr9603 = getelementptr inbounds i64, i64* %cloptr9596, i64 6                    ; &eptr9603[6]
  %eptr9604 = getelementptr inbounds i64, i64* %cloptr9596, i64 7                    ; &eptr9604[7]
  store i64 %a7038, i64* %eptr9598                                                   ; *eptr9598 = %a7038
  store i64 %ja4$_37_62, i64* %eptr9599                                              ; *eptr9599 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9600                                             ; *eptr9600 = %ZYT$_37drop
  store i64 %lAf$ly, i64* %eptr9601                                                  ; *eptr9601 = %lAf$ly
  store i64 %TGQ$lx, i64* %eptr9602                                                  ; *eptr9602 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9603                                                ; *eptr9603 = %cont7133
  store i64 %jo9$y, i64* %eptr9604                                                   ; *eptr9604 = %jo9$y
  %eptr9597 = getelementptr inbounds i64, i64* %cloptr9596, i64 0                    ; &cloptr9596[0]
  %f9605 = ptrtoint void(i64,i64,i64)* @lam8299 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9605, i64* %eptr9597                                                   ; store fptr
  %arg7696 = ptrtoint i64* %cloptr9596 to i64                                        ; closure cast; i64* -> i64
  %cloptr9606 = inttoptr i64 %ZYT$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9606)                                         ; assert function application
  %i0ptr9607 = getelementptr inbounds i64, i64* %cloptr9606, i64 0                   ; &cloptr9606[0]
  %f9609 = load i64, i64* %i0ptr9607, align 8                                        ; load; *i0ptr9607
  %fptr9608 = inttoptr i64 %f9609 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9608(i64 %ZYT$_37drop, i64 %arg7696, i64 %otp$x, i64 %a7040); tail call
  ret void

else9595:
  %cloptr9610 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9612 = getelementptr inbounds i64, i64* %cloptr9610, i64 1                    ; &eptr9612[1]
  %eptr9613 = getelementptr inbounds i64, i64* %cloptr9610, i64 2                    ; &eptr9613[2]
  %eptr9614 = getelementptr inbounds i64, i64* %cloptr9610, i64 3                    ; &eptr9614[3]
  %eptr9615 = getelementptr inbounds i64, i64* %cloptr9610, i64 4                    ; &eptr9615[4]
  %eptr9616 = getelementptr inbounds i64, i64* %cloptr9610, i64 5                    ; &eptr9616[5]
  %eptr9617 = getelementptr inbounds i64, i64* %cloptr9610, i64 6                    ; &eptr9617[6]
  %eptr9618 = getelementptr inbounds i64, i64* %cloptr9610, i64 7                    ; &eptr9618[7]
  store i64 %a7038, i64* %eptr9612                                                   ; *eptr9612 = %a7038
  store i64 %ja4$_37_62, i64* %eptr9613                                              ; *eptr9613 = %ja4$_37_62
  store i64 %ZYT$_37drop, i64* %eptr9614                                             ; *eptr9614 = %ZYT$_37drop
  store i64 %lAf$ly, i64* %eptr9615                                                  ; *eptr9615 = %lAf$ly
  store i64 %TGQ$lx, i64* %eptr9616                                                  ; *eptr9616 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9617                                                ; *eptr9617 = %cont7133
  store i64 %jo9$y, i64* %eptr9618                                                   ; *eptr9618 = %jo9$y
  %eptr9611 = getelementptr inbounds i64, i64* %cloptr9610, i64 0                    ; &cloptr9610[0]
  %f9619 = ptrtoint void(i64,i64,i64)* @lam8309 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9619, i64* %eptr9611                                                   ; store fptr
  %arg7721 = ptrtoint i64* %cloptr9610 to i64                                        ; closure cast; i64* -> i64
  %arg7720 = add i64 0, 0                                                            ; quoted ()
  %cloptr9620 = inttoptr i64 %arg7721 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9620)                                         ; assert function application
  %i0ptr9621 = getelementptr inbounds i64, i64* %cloptr9620, i64 0                   ; &cloptr9620[0]
  %f9623 = load i64, i64* %i0ptr9621, align 8                                        ; load; *i0ptr9621
  %fptr9622 = inttoptr i64 %f9623 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9622(i64 %arg7721, i64 %arg7720, i64 %otp$x)        ; tail call
  ret void
}


define void @lam8309(i64 %env8310, i64 %_957139, i64 %a7041) {
  %envptr9624 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9625 = getelementptr inbounds i64, i64* %envptr9624, i64 7                  ; &envptr9624[7]
  %jo9$y = load i64, i64* %envptr9625, align 8                                       ; load; *envptr9625
  %envptr9626 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9627 = getelementptr inbounds i64, i64* %envptr9626, i64 6                  ; &envptr9626[6]
  %cont7133 = load i64, i64* %envptr9627, align 8                                    ; load; *envptr9627
  %envptr9628 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9629 = getelementptr inbounds i64, i64* %envptr9628, i64 5                  ; &envptr9628[5]
  %TGQ$lx = load i64, i64* %envptr9629, align 8                                      ; load; *envptr9629
  %envptr9630 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9631 = getelementptr inbounds i64, i64* %envptr9630, i64 4                  ; &envptr9630[4]
  %lAf$ly = load i64, i64* %envptr9631, align 8                                      ; load; *envptr9631
  %envptr9632 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9633 = getelementptr inbounds i64, i64* %envptr9632, i64 3                  ; &envptr9632[3]
  %ZYT$_37drop = load i64, i64* %envptr9633, align 8                                 ; load; *envptr9633
  %envptr9634 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9635 = getelementptr inbounds i64, i64* %envptr9634, i64 2                  ; &envptr9634[2]
  %ja4$_37_62 = load i64, i64* %envptr9635, align 8                                  ; load; *envptr9635
  %envptr9636 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9637 = getelementptr inbounds i64, i64* %envptr9636, i64 1                  ; &envptr9636[1]
  %a7038 = load i64, i64* %envptr9637, align 8                                       ; load; *envptr9637
  %cloptr9638 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9640 = getelementptr inbounds i64, i64* %cloptr9638, i64 1                    ; &eptr9640[1]
  %eptr9641 = getelementptr inbounds i64, i64* %cloptr9638, i64 2                    ; &eptr9641[2]
  %eptr9642 = getelementptr inbounds i64, i64* %cloptr9638, i64 3                    ; &eptr9642[3]
  %eptr9643 = getelementptr inbounds i64, i64* %cloptr9638, i64 4                    ; &eptr9643[4]
  %eptr9644 = getelementptr inbounds i64, i64* %cloptr9638, i64 5                    ; &eptr9644[5]
  %eptr9645 = getelementptr inbounds i64, i64* %cloptr9638, i64 6                    ; &eptr9645[6]
  %eptr9646 = getelementptr inbounds i64, i64* %cloptr9638, i64 7                    ; &eptr9646[7]
  store i64 %a7041, i64* %eptr9640                                                   ; *eptr9640 = %a7041
  store i64 %a7038, i64* %eptr9641                                                   ; *eptr9641 = %a7038
  store i64 %ZYT$_37drop, i64* %eptr9642                                             ; *eptr9642 = %ZYT$_37drop
  store i64 %lAf$ly, i64* %eptr9643                                                  ; *eptr9643 = %lAf$ly
  store i64 %TGQ$lx, i64* %eptr9644                                                  ; *eptr9644 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9645                                                ; *eptr9645 = %cont7133
  store i64 %jo9$y, i64* %eptr9646                                                   ; *eptr9646 = %jo9$y
  %eptr9639 = getelementptr inbounds i64, i64* %cloptr9638, i64 0                    ; &cloptr9638[0]
  %f9647 = ptrtoint void(i64,i64,i64)* @lam8307 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9647, i64* %eptr9639                                                   ; store fptr
  %arg7724 = ptrtoint i64* %cloptr9638 to i64                                        ; closure cast; i64* -> i64
  %cloptr9648 = inttoptr i64 %ja4$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9648)                                         ; assert function application
  %i0ptr9649 = getelementptr inbounds i64, i64* %cloptr9648, i64 0                   ; &cloptr9648[0]
  %f9651 = load i64, i64* %i0ptr9649, align 8                                        ; load; *i0ptr9649
  %fptr9650 = inttoptr i64 %f9651 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9650(i64 %ja4$_37_62, i64 %arg7724, i64 %lAf$ly, i64 %TGQ$lx); tail call
  ret void
}


define void @lam8307(i64 %env8308, i64 %_957140, i64 %a7042) {
  %envptr9652 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9653 = getelementptr inbounds i64, i64* %envptr9652, i64 7                  ; &envptr9652[7]
  %jo9$y = load i64, i64* %envptr9653, align 8                                       ; load; *envptr9653
  %envptr9654 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9655 = getelementptr inbounds i64, i64* %envptr9654, i64 6                  ; &envptr9654[6]
  %cont7133 = load i64, i64* %envptr9655, align 8                                    ; load; *envptr9655
  %envptr9656 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9657 = getelementptr inbounds i64, i64* %envptr9656, i64 5                  ; &envptr9656[5]
  %TGQ$lx = load i64, i64* %envptr9657, align 8                                      ; load; *envptr9657
  %envptr9658 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9659 = getelementptr inbounds i64, i64* %envptr9658, i64 4                  ; &envptr9658[4]
  %lAf$ly = load i64, i64* %envptr9659, align 8                                      ; load; *envptr9659
  %envptr9660 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9661 = getelementptr inbounds i64, i64* %envptr9660, i64 3                  ; &envptr9660[3]
  %ZYT$_37drop = load i64, i64* %envptr9661, align 8                                 ; load; *envptr9661
  %envptr9662 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9663 = getelementptr inbounds i64, i64* %envptr9662, i64 2                  ; &envptr9662[2]
  %a7038 = load i64, i64* %envptr9663, align 8                                       ; load; *envptr9663
  %envptr9664 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9665 = getelementptr inbounds i64, i64* %envptr9664, i64 1                  ; &envptr9664[1]
  %a7041 = load i64, i64* %envptr9665, align 8                                       ; load; *envptr9665
  %cmp9666 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9666, label %else9668, label %then9667                                   ; if

then9667:
  %a7043 = call i64 @prim__45(i64 %lAf$ly, i64 %TGQ$lx)                              ; call prim__45
  %cloptr9669 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9671 = getelementptr inbounds i64, i64* %cloptr9669, i64 1                    ; &eptr9671[1]
  %eptr9672 = getelementptr inbounds i64, i64* %cloptr9669, i64 2                    ; &eptr9672[2]
  %eptr9673 = getelementptr inbounds i64, i64* %cloptr9669, i64 3                    ; &eptr9673[3]
  store i64 %a7041, i64* %eptr9671                                                   ; *eptr9671 = %a7041
  store i64 %a7038, i64* %eptr9672                                                   ; *eptr9672 = %a7038
  store i64 %cont7133, i64* %eptr9673                                                ; *eptr9673 = %cont7133
  %eptr9670 = getelementptr inbounds i64, i64* %cloptr9669, i64 0                    ; &cloptr9669[0]
  %f9674 = ptrtoint void(i64,i64,i64)* @lam8302 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9674, i64* %eptr9670                                                   ; store fptr
  %arg7730 = ptrtoint i64* %cloptr9669 to i64                                        ; closure cast; i64* -> i64
  %cloptr9675 = inttoptr i64 %ZYT$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9675)                                         ; assert function application
  %i0ptr9676 = getelementptr inbounds i64, i64* %cloptr9675, i64 0                   ; &cloptr9675[0]
  %f9678 = load i64, i64* %i0ptr9676, align 8                                        ; load; *i0ptr9676
  %fptr9677 = inttoptr i64 %f9678 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9677(i64 %ZYT$_37drop, i64 %arg7730, i64 %jo9$y, i64 %a7043); tail call
  ret void

else9668:
  %cloptr9679 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9681 = getelementptr inbounds i64, i64* %cloptr9679, i64 1                    ; &eptr9681[1]
  %eptr9682 = getelementptr inbounds i64, i64* %cloptr9679, i64 2                    ; &eptr9682[2]
  %eptr9683 = getelementptr inbounds i64, i64* %cloptr9679, i64 3                    ; &eptr9683[3]
  store i64 %a7041, i64* %eptr9681                                                   ; *eptr9681 = %a7041
  store i64 %a7038, i64* %eptr9682                                                   ; *eptr9682 = %a7038
  store i64 %cont7133, i64* %eptr9683                                                ; *eptr9683 = %cont7133
  %eptr9680 = getelementptr inbounds i64, i64* %cloptr9679, i64 0                    ; &cloptr9679[0]
  %f9684 = ptrtoint void(i64,i64,i64)* @lam8305 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9684, i64* %eptr9680                                                   ; store fptr
  %arg7738 = ptrtoint i64* %cloptr9679 to i64                                        ; closure cast; i64* -> i64
  %arg7737 = add i64 0, 0                                                            ; quoted ()
  %cloptr9685 = inttoptr i64 %arg7738 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9685)                                         ; assert function application
  %i0ptr9686 = getelementptr inbounds i64, i64* %cloptr9685, i64 0                   ; &cloptr9685[0]
  %f9688 = load i64, i64* %i0ptr9686, align 8                                        ; load; *i0ptr9686
  %fptr9687 = inttoptr i64 %f9688 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9687(i64 %arg7738, i64 %arg7737, i64 %jo9$y)        ; tail call
  ret void
}


define void @lam8305(i64 %env8306, i64 %_957141, i64 %a7044) {
  %envptr9689 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9690 = getelementptr inbounds i64, i64* %envptr9689, i64 3                  ; &envptr9689[3]
  %cont7133 = load i64, i64* %envptr9690, align 8                                    ; load; *envptr9690
  %envptr9691 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9692 = getelementptr inbounds i64, i64* %envptr9691, i64 2                  ; &envptr9691[2]
  %a7038 = load i64, i64* %envptr9692, align 8                                       ; load; *envptr9692
  %envptr9693 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9694 = getelementptr inbounds i64, i64* %envptr9693, i64 1                  ; &envptr9693[1]
  %a7041 = load i64, i64* %envptr9694, align 8                                       ; load; *envptr9694
  %cloptr9695 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9695)                                         ; assert function application
  %i0ptr9696 = getelementptr inbounds i64, i64* %cloptr9695, i64 0                   ; &cloptr9695[0]
  %f9698 = load i64, i64* %i0ptr9696, align 8                                        ; load; *i0ptr9696
  %fptr9697 = inttoptr i64 %f9698 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9697(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8302(i64 %env8303, i64 %_957141, i64 %a7044) {
  %envptr9699 = inttoptr i64 %env8303 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9700 = getelementptr inbounds i64, i64* %envptr9699, i64 3                  ; &envptr9699[3]
  %cont7133 = load i64, i64* %envptr9700, align 8                                    ; load; *envptr9700
  %envptr9701 = inttoptr i64 %env8303 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9702 = getelementptr inbounds i64, i64* %envptr9701, i64 2                  ; &envptr9701[2]
  %a7038 = load i64, i64* %envptr9702, align 8                                       ; load; *envptr9702
  %envptr9703 = inttoptr i64 %env8303 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9704 = getelementptr inbounds i64, i64* %envptr9703, i64 1                  ; &envptr9703[1]
  %a7041 = load i64, i64* %envptr9704, align 8                                       ; load; *envptr9704
  %cloptr9705 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9705)                                         ; assert function application
  %i0ptr9706 = getelementptr inbounds i64, i64* %cloptr9705, i64 0                   ; &cloptr9705[0]
  %f9708 = load i64, i64* %i0ptr9706, align 8                                        ; load; *i0ptr9706
  %fptr9707 = inttoptr i64 %f9708 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9707(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8299(i64 %env8300, i64 %_957139, i64 %a7041) {
  %envptr9709 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9710 = getelementptr inbounds i64, i64* %envptr9709, i64 7                  ; &envptr9709[7]
  %jo9$y = load i64, i64* %envptr9710, align 8                                       ; load; *envptr9710
  %envptr9711 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9712 = getelementptr inbounds i64, i64* %envptr9711, i64 6                  ; &envptr9711[6]
  %cont7133 = load i64, i64* %envptr9712, align 8                                    ; load; *envptr9712
  %envptr9713 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9714 = getelementptr inbounds i64, i64* %envptr9713, i64 5                  ; &envptr9713[5]
  %TGQ$lx = load i64, i64* %envptr9714, align 8                                      ; load; *envptr9714
  %envptr9715 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9716 = getelementptr inbounds i64, i64* %envptr9715, i64 4                  ; &envptr9715[4]
  %lAf$ly = load i64, i64* %envptr9716, align 8                                      ; load; *envptr9716
  %envptr9717 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9718 = getelementptr inbounds i64, i64* %envptr9717, i64 3                  ; &envptr9717[3]
  %ZYT$_37drop = load i64, i64* %envptr9718, align 8                                 ; load; *envptr9718
  %envptr9719 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9720 = getelementptr inbounds i64, i64* %envptr9719, i64 2                  ; &envptr9719[2]
  %ja4$_37_62 = load i64, i64* %envptr9720, align 8                                  ; load; *envptr9720
  %envptr9721 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9722 = getelementptr inbounds i64, i64* %envptr9721, i64 1                  ; &envptr9721[1]
  %a7038 = load i64, i64* %envptr9722, align 8                                       ; load; *envptr9722
  %cloptr9723 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9725 = getelementptr inbounds i64, i64* %cloptr9723, i64 1                    ; &eptr9725[1]
  %eptr9726 = getelementptr inbounds i64, i64* %cloptr9723, i64 2                    ; &eptr9726[2]
  %eptr9727 = getelementptr inbounds i64, i64* %cloptr9723, i64 3                    ; &eptr9727[3]
  %eptr9728 = getelementptr inbounds i64, i64* %cloptr9723, i64 4                    ; &eptr9728[4]
  %eptr9729 = getelementptr inbounds i64, i64* %cloptr9723, i64 5                    ; &eptr9729[5]
  %eptr9730 = getelementptr inbounds i64, i64* %cloptr9723, i64 6                    ; &eptr9730[6]
  %eptr9731 = getelementptr inbounds i64, i64* %cloptr9723, i64 7                    ; &eptr9731[7]
  store i64 %a7041, i64* %eptr9725                                                   ; *eptr9725 = %a7041
  store i64 %a7038, i64* %eptr9726                                                   ; *eptr9726 = %a7038
  store i64 %ZYT$_37drop, i64* %eptr9727                                             ; *eptr9727 = %ZYT$_37drop
  store i64 %lAf$ly, i64* %eptr9728                                                  ; *eptr9728 = %lAf$ly
  store i64 %TGQ$lx, i64* %eptr9729                                                  ; *eptr9729 = %TGQ$lx
  store i64 %cont7133, i64* %eptr9730                                                ; *eptr9730 = %cont7133
  store i64 %jo9$y, i64* %eptr9731                                                   ; *eptr9731 = %jo9$y
  %eptr9724 = getelementptr inbounds i64, i64* %cloptr9723, i64 0                    ; &cloptr9723[0]
  %f9732 = ptrtoint void(i64,i64,i64)* @lam8297 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9732, i64* %eptr9724                                                   ; store fptr
  %arg7700 = ptrtoint i64* %cloptr9723 to i64                                        ; closure cast; i64* -> i64
  %cloptr9733 = inttoptr i64 %ja4$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9733)                                         ; assert function application
  %i0ptr9734 = getelementptr inbounds i64, i64* %cloptr9733, i64 0                   ; &cloptr9733[0]
  %f9736 = load i64, i64* %i0ptr9734, align 8                                        ; load; *i0ptr9734
  %fptr9735 = inttoptr i64 %f9736 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9735(i64 %ja4$_37_62, i64 %arg7700, i64 %lAf$ly, i64 %TGQ$lx); tail call
  ret void
}


define void @lam8297(i64 %env8298, i64 %_957140, i64 %a7042) {
  %envptr9737 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9738 = getelementptr inbounds i64, i64* %envptr9737, i64 7                  ; &envptr9737[7]
  %jo9$y = load i64, i64* %envptr9738, align 8                                       ; load; *envptr9738
  %envptr9739 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9740 = getelementptr inbounds i64, i64* %envptr9739, i64 6                  ; &envptr9739[6]
  %cont7133 = load i64, i64* %envptr9740, align 8                                    ; load; *envptr9740
  %envptr9741 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9742 = getelementptr inbounds i64, i64* %envptr9741, i64 5                  ; &envptr9741[5]
  %TGQ$lx = load i64, i64* %envptr9742, align 8                                      ; load; *envptr9742
  %envptr9743 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9744 = getelementptr inbounds i64, i64* %envptr9743, i64 4                  ; &envptr9743[4]
  %lAf$ly = load i64, i64* %envptr9744, align 8                                      ; load; *envptr9744
  %envptr9745 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9746 = getelementptr inbounds i64, i64* %envptr9745, i64 3                  ; &envptr9745[3]
  %ZYT$_37drop = load i64, i64* %envptr9746, align 8                                 ; load; *envptr9746
  %envptr9747 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9748 = getelementptr inbounds i64, i64* %envptr9747, i64 2                  ; &envptr9747[2]
  %a7038 = load i64, i64* %envptr9748, align 8                                       ; load; *envptr9748
  %envptr9749 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9750 = getelementptr inbounds i64, i64* %envptr9749, i64 1                  ; &envptr9749[1]
  %a7041 = load i64, i64* %envptr9750, align 8                                       ; load; *envptr9750
  %cmp9751 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9751, label %else9753, label %then9752                                   ; if

then9752:
  %a7043 = call i64 @prim__45(i64 %lAf$ly, i64 %TGQ$lx)                              ; call prim__45
  %cloptr9754 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9756 = getelementptr inbounds i64, i64* %cloptr9754, i64 1                    ; &eptr9756[1]
  %eptr9757 = getelementptr inbounds i64, i64* %cloptr9754, i64 2                    ; &eptr9757[2]
  %eptr9758 = getelementptr inbounds i64, i64* %cloptr9754, i64 3                    ; &eptr9758[3]
  store i64 %a7041, i64* %eptr9756                                                   ; *eptr9756 = %a7041
  store i64 %a7038, i64* %eptr9757                                                   ; *eptr9757 = %a7038
  store i64 %cont7133, i64* %eptr9758                                                ; *eptr9758 = %cont7133
  %eptr9755 = getelementptr inbounds i64, i64* %cloptr9754, i64 0                    ; &cloptr9754[0]
  %f9759 = ptrtoint void(i64,i64,i64)* @lam8292 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9759, i64* %eptr9755                                                   ; store fptr
  %arg7706 = ptrtoint i64* %cloptr9754 to i64                                        ; closure cast; i64* -> i64
  %cloptr9760 = inttoptr i64 %ZYT$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9760)                                         ; assert function application
  %i0ptr9761 = getelementptr inbounds i64, i64* %cloptr9760, i64 0                   ; &cloptr9760[0]
  %f9763 = load i64, i64* %i0ptr9761, align 8                                        ; load; *i0ptr9761
  %fptr9762 = inttoptr i64 %f9763 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9762(i64 %ZYT$_37drop, i64 %arg7706, i64 %jo9$y, i64 %a7043); tail call
  ret void

else9753:
  %cloptr9764 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9766 = getelementptr inbounds i64, i64* %cloptr9764, i64 1                    ; &eptr9766[1]
  %eptr9767 = getelementptr inbounds i64, i64* %cloptr9764, i64 2                    ; &eptr9767[2]
  %eptr9768 = getelementptr inbounds i64, i64* %cloptr9764, i64 3                    ; &eptr9768[3]
  store i64 %a7041, i64* %eptr9766                                                   ; *eptr9766 = %a7041
  store i64 %a7038, i64* %eptr9767                                                   ; *eptr9767 = %a7038
  store i64 %cont7133, i64* %eptr9768                                                ; *eptr9768 = %cont7133
  %eptr9765 = getelementptr inbounds i64, i64* %cloptr9764, i64 0                    ; &cloptr9764[0]
  %f9769 = ptrtoint void(i64,i64,i64)* @lam8295 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9769, i64* %eptr9765                                                   ; store fptr
  %arg7714 = ptrtoint i64* %cloptr9764 to i64                                        ; closure cast; i64* -> i64
  %arg7713 = add i64 0, 0                                                            ; quoted ()
  %cloptr9770 = inttoptr i64 %arg7714 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9770)                                         ; assert function application
  %i0ptr9771 = getelementptr inbounds i64, i64* %cloptr9770, i64 0                   ; &cloptr9770[0]
  %f9773 = load i64, i64* %i0ptr9771, align 8                                        ; load; *i0ptr9771
  %fptr9772 = inttoptr i64 %f9773 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9772(i64 %arg7714, i64 %arg7713, i64 %jo9$y)        ; tail call
  ret void
}


define void @lam8295(i64 %env8296, i64 %_957141, i64 %a7044) {
  %envptr9774 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9775 = getelementptr inbounds i64, i64* %envptr9774, i64 3                  ; &envptr9774[3]
  %cont7133 = load i64, i64* %envptr9775, align 8                                    ; load; *envptr9775
  %envptr9776 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9777 = getelementptr inbounds i64, i64* %envptr9776, i64 2                  ; &envptr9776[2]
  %a7038 = load i64, i64* %envptr9777, align 8                                       ; load; *envptr9777
  %envptr9778 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9779 = getelementptr inbounds i64, i64* %envptr9778, i64 1                  ; &envptr9778[1]
  %a7041 = load i64, i64* %envptr9779, align 8                                       ; load; *envptr9779
  %cloptr9780 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9780)                                         ; assert function application
  %i0ptr9781 = getelementptr inbounds i64, i64* %cloptr9780, i64 0                   ; &cloptr9780[0]
  %f9783 = load i64, i64* %i0ptr9781, align 8                                        ; load; *i0ptr9781
  %fptr9782 = inttoptr i64 %f9783 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9782(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8292(i64 %env8293, i64 %_957141, i64 %a7044) {
  %envptr9784 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9785 = getelementptr inbounds i64, i64* %envptr9784, i64 3                  ; &envptr9784[3]
  %cont7133 = load i64, i64* %envptr9785, align 8                                    ; load; *envptr9785
  %envptr9786 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9787 = getelementptr inbounds i64, i64* %envptr9786, i64 2                  ; &envptr9786[2]
  %a7038 = load i64, i64* %envptr9787, align 8                                       ; load; *envptr9787
  %envptr9788 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9789 = getelementptr inbounds i64, i64* %envptr9788, i64 1                  ; &envptr9788[1]
  %a7041 = load i64, i64* %envptr9789, align 8                                       ; load; *envptr9789
  %cloptr9790 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9790)                                         ; assert function application
  %i0ptr9791 = getelementptr inbounds i64, i64* %cloptr9790, i64 0                   ; &cloptr9790[0]
  %f9793 = load i64, i64* %i0ptr9791, align 8                                        ; load; *i0ptr9791
  %fptr9792 = inttoptr i64 %f9793 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9792(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8289(i64 %env8290, i64 %cont7146, i64 %aBP$new) {
  %envptr9794 = inttoptr i64 %env8290 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9795 = getelementptr inbounds i64, i64* %envptr9794, i64 2                  ; &envptr9794[2]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9795, align 8                         ; load; *envptr9795
  %envptr9796 = inttoptr i64 %env8290 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9797 = getelementptr inbounds i64, i64* %envptr9796, i64 1                  ; &envptr9796[1]
  %xZ1$_37common_45tail = load i64, i64* %envptr9797, align 8                        ; load; *envptr9797
  %arg7743 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7045 = call i64 @prim_vector_45ref(i64 %Jt1$_37wind_45stack, i64 %arg7743)       ; call prim_vector_45ref
  %cloptr9798 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9800 = getelementptr inbounds i64, i64* %cloptr9798, i64 1                    ; &eptr9800[1]
  %eptr9801 = getelementptr inbounds i64, i64* %cloptr9798, i64 2                    ; &eptr9801[2]
  %eptr9802 = getelementptr inbounds i64, i64* %cloptr9798, i64 3                    ; &eptr9802[3]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9800                                     ; *eptr9800 = %Jt1$_37wind_45stack
  store i64 %cont7146, i64* %eptr9801                                                ; *eptr9801 = %cont7146
  store i64 %aBP$new, i64* %eptr9802                                                 ; *eptr9802 = %aBP$new
  %eptr9799 = getelementptr inbounds i64, i64* %cloptr9798, i64 0                    ; &cloptr9798[0]
  %f9803 = ptrtoint void(i64,i64,i64)* @lam8286 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9803, i64* %eptr9799                                                   ; store fptr
  %arg7747 = ptrtoint i64* %cloptr9798 to i64                                        ; closure cast; i64* -> i64
  %cloptr9804 = inttoptr i64 %xZ1$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9804)                                         ; assert function application
  %i0ptr9805 = getelementptr inbounds i64, i64* %cloptr9804, i64 0                   ; &cloptr9804[0]
  %f9807 = load i64, i64* %i0ptr9805, align 8                                        ; load; *i0ptr9805
  %fptr9806 = inttoptr i64 %f9807 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9806(i64 %xZ1$_37common_45tail, i64 %arg7747, i64 %aBP$new, i64 %a7045); tail call
  ret void
}


define void @lam8286(i64 %env8287, i64 %_957147, i64 %EWY$tail) {
  %envptr9808 = inttoptr i64 %env8287 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9809 = getelementptr inbounds i64, i64* %envptr9808, i64 3                  ; &envptr9808[3]
  %aBP$new = load i64, i64* %envptr9809, align 8                                     ; load; *envptr9809
  %envptr9810 = inttoptr i64 %env8287 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9811 = getelementptr inbounds i64, i64* %envptr9810, i64 2                  ; &envptr9810[2]
  %cont7146 = load i64, i64* %envptr9811, align 8                                    ; load; *envptr9811
  %envptr9812 = inttoptr i64 %env8287 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9813 = getelementptr inbounds i64, i64* %envptr9812, i64 1                  ; &envptr9812[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9813, align 8                         ; load; *envptr9813
  %cloptr9814 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9815 = getelementptr inbounds i64, i64* %cloptr9814, i64 0                    ; &cloptr9814[0]
  %f9816 = ptrtoint void(i64,i64)* @lam8284 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9816, i64* %eptr9815                                                   ; store fptr
  %arg7750 = ptrtoint i64* %cloptr9814 to i64                                        ; closure cast; i64* -> i64
  %cloptr9817 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9819 = getelementptr inbounds i64, i64* %cloptr9817, i64 1                    ; &eptr9819[1]
  %eptr9820 = getelementptr inbounds i64, i64* %cloptr9817, i64 2                    ; &eptr9820[2]
  %eptr9821 = getelementptr inbounds i64, i64* %cloptr9817, i64 3                    ; &eptr9821[3]
  %eptr9822 = getelementptr inbounds i64, i64* %cloptr9817, i64 4                    ; &eptr9822[4]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9819                                     ; *eptr9819 = %Jt1$_37wind_45stack
  store i64 %cont7146, i64* %eptr9820                                                ; *eptr9820 = %cont7146
  store i64 %EWY$tail, i64* %eptr9821                                                ; *eptr9821 = %EWY$tail
  store i64 %aBP$new, i64* %eptr9822                                                 ; *eptr9822 = %aBP$new
  %eptr9818 = getelementptr inbounds i64, i64* %cloptr9817, i64 0                    ; &cloptr9817[0]
  %f9823 = ptrtoint void(i64,i64,i64)* @lam8281 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9823, i64* %eptr9818                                                   ; store fptr
  %arg7749 = ptrtoint i64* %cloptr9817 to i64                                        ; closure cast; i64* -> i64
  %cloptr9824 = inttoptr i64 %arg7750 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9824)                                         ; assert function application
  %i0ptr9825 = getelementptr inbounds i64, i64* %cloptr9824, i64 0                   ; &cloptr9824[0]
  %f9827 = load i64, i64* %i0ptr9825, align 8                                        ; load; *i0ptr9825
  %fptr9826 = inttoptr i64 %f9827 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9826(i64 %arg7750, i64 %arg7749)                    ; tail call
  ret void
}


define void @lam8284(i64 %env8285, i64 %SSZ$lst7168) {
  %cont7167 = call i64 @prim_car(i64 %SSZ$lst7168)                                   ; call prim_car
  %SSZ$lst = call i64 @prim_cdr(i64 %SSZ$lst7168)                                    ; call prim_cdr
  %arg7754 = add i64 0, 0                                                            ; quoted ()
  %cloptr9828 = inttoptr i64 %cont7167 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9828)                                         ; assert function application
  %i0ptr9829 = getelementptr inbounds i64, i64* %cloptr9828, i64 0                   ; &cloptr9828[0]
  %f9831 = load i64, i64* %i0ptr9829, align 8                                        ; load; *i0ptr9829
  %fptr9830 = inttoptr i64 %f9831 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9830(i64 %cont7167, i64 %arg7754, i64 %SSZ$lst)     ; tail call
  ret void
}


define void @lam8281(i64 %env8282, i64 %_957165, i64 %a7046) {
  %envptr9832 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9833 = getelementptr inbounds i64, i64* %envptr9832, i64 4                  ; &envptr9832[4]
  %aBP$new = load i64, i64* %envptr9833, align 8                                     ; load; *envptr9833
  %envptr9834 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9835 = getelementptr inbounds i64, i64* %envptr9834, i64 3                  ; &envptr9834[3]
  %EWY$tail = load i64, i64* %envptr9835, align 8                                    ; load; *envptr9835
  %envptr9836 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9837 = getelementptr inbounds i64, i64* %envptr9836, i64 2                  ; &envptr9836[2]
  %cont7146 = load i64, i64* %envptr9837, align 8                                    ; load; *envptr9837
  %envptr9838 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9839 = getelementptr inbounds i64, i64* %envptr9838, i64 1                  ; &envptr9838[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9839, align 8                         ; load; *envptr9839
  %arg7757 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7166 = call i64 @prim_make_45vector(i64 %arg7757, i64 %a7046)              ; call prim_make_45vector
  %cloptr9840 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9842 = getelementptr inbounds i64, i64* %cloptr9840, i64 1                    ; &eptr9842[1]
  %eptr9843 = getelementptr inbounds i64, i64* %cloptr9840, i64 2                    ; &eptr9843[2]
  %eptr9844 = getelementptr inbounds i64, i64* %cloptr9840, i64 3                    ; &eptr9844[3]
  %eptr9845 = getelementptr inbounds i64, i64* %cloptr9840, i64 4                    ; &eptr9845[4]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9842                                     ; *eptr9842 = %Jt1$_37wind_45stack
  store i64 %cont7146, i64* %eptr9843                                                ; *eptr9843 = %cont7146
  store i64 %EWY$tail, i64* %eptr9844                                                ; *eptr9844 = %EWY$tail
  store i64 %aBP$new, i64* %eptr9845                                                 ; *eptr9845 = %aBP$new
  %eptr9841 = getelementptr inbounds i64, i64* %cloptr9840, i64 0                    ; &cloptr9840[0]
  %f9846 = ptrtoint void(i64,i64,i64)* @lam8278 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9846, i64* %eptr9841                                                   ; store fptr
  %arg7760 = ptrtoint i64* %cloptr9840 to i64                                        ; closure cast; i64* -> i64
  %arg7759 = add i64 0, 0                                                            ; quoted ()
  %cloptr9847 = inttoptr i64 %arg7760 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9847)                                         ; assert function application
  %i0ptr9848 = getelementptr inbounds i64, i64* %cloptr9847, i64 0                   ; &cloptr9847[0]
  %f9850 = load i64, i64* %i0ptr9848, align 8                                        ; load; *i0ptr9848
  %fptr9849 = inttoptr i64 %f9850 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9849(i64 %arg7760, i64 %arg7759, i64 %retprim7166)  ; tail call
  ret void
}


define void @lam8278(i64 %env8279, i64 %_957159, i64 %R6y$f) {
  %envptr9851 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9852 = getelementptr inbounds i64, i64* %envptr9851, i64 4                  ; &envptr9851[4]
  %aBP$new = load i64, i64* %envptr9852, align 8                                     ; load; *envptr9852
  %envptr9853 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9854 = getelementptr inbounds i64, i64* %envptr9853, i64 3                  ; &envptr9853[3]
  %EWY$tail = load i64, i64* %envptr9854, align 8                                    ; load; *envptr9854
  %envptr9855 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9856 = getelementptr inbounds i64, i64* %envptr9855, i64 2                  ; &envptr9855[2]
  %cont7146 = load i64, i64* %envptr9856, align 8                                    ; load; *envptr9856
  %envptr9857 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9858 = getelementptr inbounds i64, i64* %envptr9857, i64 1                  ; &envptr9857[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9858, align 8                         ; load; *envptr9858
  %arg7762 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9859 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9861 = getelementptr inbounds i64, i64* %cloptr9859, i64 1                    ; &eptr9861[1]
  %eptr9862 = getelementptr inbounds i64, i64* %cloptr9859, i64 2                    ; &eptr9862[2]
  %eptr9863 = getelementptr inbounds i64, i64* %cloptr9859, i64 3                    ; &eptr9863[3]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9861                                     ; *eptr9861 = %Jt1$_37wind_45stack
  store i64 %EWY$tail, i64* %eptr9862                                                ; *eptr9862 = %EWY$tail
  store i64 %R6y$f, i64* %eptr9863                                                   ; *eptr9863 = %R6y$f
  %eptr9860 = getelementptr inbounds i64, i64* %cloptr9859, i64 0                    ; &cloptr9859[0]
  %f9864 = ptrtoint void(i64,i64,i64)* @lam8275 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9864, i64* %eptr9860                                                   ; store fptr
  %arg7761 = ptrtoint i64* %cloptr9859 to i64                                        ; closure cast; i64* -> i64
  %igk$_956939 = call i64 @prim_vector_45set_33(i64 %R6y$f, i64 %arg7762, i64 %arg7761); call prim_vector_45set_33
  %arg7787 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7054 = call i64 @prim_vector_45ref(i64 %R6y$f, i64 %arg7787)                     ; call prim_vector_45ref
  %arg7789 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7055 = call i64 @prim_vector_45ref(i64 %Jt1$_37wind_45stack, i64 %arg7789)       ; call prim_vector_45ref
  %cloptr9865 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9867 = getelementptr inbounds i64, i64* %cloptr9865, i64 1                    ; &eptr9867[1]
  %eptr9868 = getelementptr inbounds i64, i64* %cloptr9865, i64 2                    ; &eptr9868[2]
  %eptr9869 = getelementptr inbounds i64, i64* %cloptr9865, i64 3                    ; &eptr9869[3]
  %eptr9870 = getelementptr inbounds i64, i64* %cloptr9865, i64 4                    ; &eptr9870[4]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9867                                     ; *eptr9867 = %Jt1$_37wind_45stack
  store i64 %cont7146, i64* %eptr9868                                                ; *eptr9868 = %cont7146
  store i64 %EWY$tail, i64* %eptr9869                                                ; *eptr9869 = %EWY$tail
  store i64 %aBP$new, i64* %eptr9870                                                 ; *eptr9870 = %aBP$new
  %eptr9866 = getelementptr inbounds i64, i64* %cloptr9865, i64 0                    ; &cloptr9865[0]
  %f9871 = ptrtoint void(i64,i64,i64)* @lam8263 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9871, i64* %eptr9866                                                   ; store fptr
  %arg7792 = ptrtoint i64* %cloptr9865 to i64                                        ; closure cast; i64* -> i64
  %cloptr9872 = inttoptr i64 %a7054 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9872)                                         ; assert function application
  %i0ptr9873 = getelementptr inbounds i64, i64* %cloptr9872, i64 0                   ; &cloptr9872[0]
  %f9875 = load i64, i64* %i0ptr9873, align 8                                        ; load; *i0ptr9873
  %fptr9874 = inttoptr i64 %f9875 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9874(i64 %a7054, i64 %arg7792, i64 %a7055)          ; tail call
  ret void
}


define void @lam8275(i64 %env8276, i64 %cont7160, i64 %qDT$l) {
  %envptr9876 = inttoptr i64 %env8276 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9877 = getelementptr inbounds i64, i64* %envptr9876, i64 3                  ; &envptr9876[3]
  %R6y$f = load i64, i64* %envptr9877, align 8                                       ; load; *envptr9877
  %envptr9878 = inttoptr i64 %env8276 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9879 = getelementptr inbounds i64, i64* %envptr9878, i64 2                  ; &envptr9878[2]
  %EWY$tail = load i64, i64* %envptr9879, align 8                                    ; load; *envptr9879
  %envptr9880 = inttoptr i64 %env8276 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9881 = getelementptr inbounds i64, i64* %envptr9880, i64 1                  ; &envptr9880[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9881, align 8                         ; load; *envptr9881
  %a7047 = call i64 @prim_eq_63(i64 %qDT$l, i64 %EWY$tail)                           ; call prim_eq_63
  %a7048 = call i64 @prim_not(i64 %a7047)                                            ; call prim_not
  %cmp9882 = icmp eq i64 %a7048, 15                                                  ; false?
  br i1 %cmp9882, label %else9884, label %then9883                                   ; if

then9883:
  %a7049 = call i64 @prim_cdr(i64 %qDT$l)                                            ; call prim_cdr
  %arg7769 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7163 = call i64 @prim_vector_45set_33(i64 %Jt1$_37wind_45stack, i64 %arg7769, i64 %a7049); call prim_vector_45set_33
  %cloptr9885 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9887 = getelementptr inbounds i64, i64* %cloptr9885, i64 1                    ; &eptr9887[1]
  %eptr9888 = getelementptr inbounds i64, i64* %cloptr9885, i64 2                    ; &eptr9888[2]
  %eptr9889 = getelementptr inbounds i64, i64* %cloptr9885, i64 3                    ; &eptr9889[3]
  store i64 %R6y$f, i64* %eptr9887                                                   ; *eptr9887 = %R6y$f
  store i64 %cont7160, i64* %eptr9888                                                ; *eptr9888 = %cont7160
  store i64 %qDT$l, i64* %eptr9889                                                   ; *eptr9889 = %qDT$l
  %eptr9886 = getelementptr inbounds i64, i64* %cloptr9885, i64 0                    ; &cloptr9885[0]
  %f9890 = ptrtoint void(i64,i64,i64)* @lam8271 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9890, i64* %eptr9886                                                   ; store fptr
  %arg7773 = ptrtoint i64* %cloptr9885 to i64                                        ; closure cast; i64* -> i64
  %arg7772 = add i64 0, 0                                                            ; quoted ()
  %cloptr9891 = inttoptr i64 %arg7773 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9891)                                         ; assert function application
  %i0ptr9892 = getelementptr inbounds i64, i64* %cloptr9891, i64 0                   ; &cloptr9891[0]
  %f9894 = load i64, i64* %i0ptr9892, align 8                                        ; load; *i0ptr9892
  %fptr9893 = inttoptr i64 %f9894 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9893(i64 %arg7773, i64 %arg7772, i64 %retprim7163)  ; tail call
  ret void

else9884:
  %retprim7164 = call i64 @prim_void()                                               ; call prim_void
  %arg7785 = add i64 0, 0                                                            ; quoted ()
  %cloptr9895 = inttoptr i64 %cont7160 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9895)                                         ; assert function application
  %i0ptr9896 = getelementptr inbounds i64, i64* %cloptr9895, i64 0                   ; &cloptr9895[0]
  %f9898 = load i64, i64* %i0ptr9896, align 8                                        ; load; *i0ptr9896
  %fptr9897 = inttoptr i64 %f9898 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9897(i64 %cont7160, i64 %arg7785, i64 %retprim7164) ; tail call
  ret void
}


define void @lam8271(i64 %env8272, i64 %_957161, i64 %K0F$_956940) {
  %envptr9899 = inttoptr i64 %env8272 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9900 = getelementptr inbounds i64, i64* %envptr9899, i64 3                  ; &envptr9899[3]
  %qDT$l = load i64, i64* %envptr9900, align 8                                       ; load; *envptr9900
  %envptr9901 = inttoptr i64 %env8272 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9902 = getelementptr inbounds i64, i64* %envptr9901, i64 2                  ; &envptr9901[2]
  %cont7160 = load i64, i64* %envptr9902, align 8                                    ; load; *envptr9902
  %envptr9903 = inttoptr i64 %env8272 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9904 = getelementptr inbounds i64, i64* %envptr9903, i64 1                  ; &envptr9903[1]
  %R6y$f = load i64, i64* %envptr9904, align 8                                       ; load; *envptr9904
  %a7050 = call i64 @prim_car(i64 %qDT$l)                                            ; call prim_car
  %a7051 = call i64 @prim_cdr(i64 %a7050)                                            ; call prim_cdr
  %cloptr9905 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9907 = getelementptr inbounds i64, i64* %cloptr9905, i64 1                    ; &eptr9907[1]
  %eptr9908 = getelementptr inbounds i64, i64* %cloptr9905, i64 2                    ; &eptr9908[2]
  %eptr9909 = getelementptr inbounds i64, i64* %cloptr9905, i64 3                    ; &eptr9909[3]
  store i64 %R6y$f, i64* %eptr9907                                                   ; *eptr9907 = %R6y$f
  store i64 %cont7160, i64* %eptr9908                                                ; *eptr9908 = %cont7160
  store i64 %qDT$l, i64* %eptr9909                                                   ; *eptr9909 = %qDT$l
  %eptr9906 = getelementptr inbounds i64, i64* %cloptr9905, i64 0                    ; &cloptr9905[0]
  %f9910 = ptrtoint void(i64,i64,i64)* @lam8269 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9910, i64* %eptr9906                                                   ; store fptr
  %arg7776 = ptrtoint i64* %cloptr9905 to i64                                        ; closure cast; i64* -> i64
  %cloptr9911 = inttoptr i64 %a7051 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9911)                                         ; assert function application
  %i0ptr9912 = getelementptr inbounds i64, i64* %cloptr9911, i64 0                   ; &cloptr9911[0]
  %f9914 = load i64, i64* %i0ptr9912, align 8                                        ; load; *i0ptr9912
  %fptr9913 = inttoptr i64 %f9914 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9913(i64 %a7051, i64 %arg7776)                      ; tail call
  ret void
}


define void @lam8269(i64 %env8270, i64 %_957162, i64 %aQL$_956941) {
  %envptr9915 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9916 = getelementptr inbounds i64, i64* %envptr9915, i64 3                  ; &envptr9915[3]
  %qDT$l = load i64, i64* %envptr9916, align 8                                       ; load; *envptr9916
  %envptr9917 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9918 = getelementptr inbounds i64, i64* %envptr9917, i64 2                  ; &envptr9917[2]
  %cont7160 = load i64, i64* %envptr9918, align 8                                    ; load; *envptr9918
  %envptr9919 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9920 = getelementptr inbounds i64, i64* %envptr9919, i64 1                  ; &envptr9919[1]
  %R6y$f = load i64, i64* %envptr9920, align 8                                       ; load; *envptr9920
  %arg7778 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7052 = call i64 @prim_vector_45ref(i64 %R6y$f, i64 %arg7778)                     ; call prim_vector_45ref
  %a7053 = call i64 @prim_cdr(i64 %qDT$l)                                            ; call prim_cdr
  %cloptr9921 = inttoptr i64 %a7052 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9921)                                         ; assert function application
  %i0ptr9922 = getelementptr inbounds i64, i64* %cloptr9921, i64 0                   ; &cloptr9921[0]
  %f9924 = load i64, i64* %i0ptr9922, align 8                                        ; load; *i0ptr9922
  %fptr9923 = inttoptr i64 %f9924 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9923(i64 %a7052, i64 %cont7160, i64 %a7053)         ; tail call
  ret void
}


define void @lam8263(i64 %env8264, i64 %_957148, i64 %SJo$_956938) {
  %envptr9925 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9926 = getelementptr inbounds i64, i64* %envptr9925, i64 4                  ; &envptr9925[4]
  %aBP$new = load i64, i64* %envptr9926, align 8                                     ; load; *envptr9926
  %envptr9927 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9928 = getelementptr inbounds i64, i64* %envptr9927, i64 3                  ; &envptr9927[3]
  %EWY$tail = load i64, i64* %envptr9928, align 8                                    ; load; *envptr9928
  %envptr9929 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9930 = getelementptr inbounds i64, i64* %envptr9929, i64 2                  ; &envptr9929[2]
  %cont7146 = load i64, i64* %envptr9930, align 8                                    ; load; *envptr9930
  %envptr9931 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9932 = getelementptr inbounds i64, i64* %envptr9931, i64 1                  ; &envptr9931[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9932, align 8                         ; load; *envptr9932
  %cloptr9933 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9934 = getelementptr inbounds i64, i64* %cloptr9933, i64 0                    ; &cloptr9933[0]
  %f9935 = ptrtoint void(i64,i64)* @lam8261 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9935, i64* %eptr9934                                                   ; store fptr
  %arg7795 = ptrtoint i64* %cloptr9933 to i64                                        ; closure cast; i64* -> i64
  %cloptr9936 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9938 = getelementptr inbounds i64, i64* %cloptr9936, i64 1                    ; &eptr9938[1]
  %eptr9939 = getelementptr inbounds i64, i64* %cloptr9936, i64 2                    ; &eptr9939[2]
  %eptr9940 = getelementptr inbounds i64, i64* %cloptr9936, i64 3                    ; &eptr9940[3]
  %eptr9941 = getelementptr inbounds i64, i64* %cloptr9936, i64 4                    ; &eptr9941[4]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9938                                     ; *eptr9938 = %Jt1$_37wind_45stack
  store i64 %cont7146, i64* %eptr9939                                                ; *eptr9939 = %cont7146
  store i64 %EWY$tail, i64* %eptr9940                                                ; *eptr9940 = %EWY$tail
  store i64 %aBP$new, i64* %eptr9941                                                 ; *eptr9941 = %aBP$new
  %eptr9937 = getelementptr inbounds i64, i64* %cloptr9936, i64 0                    ; &cloptr9936[0]
  %f9942 = ptrtoint void(i64,i64,i64)* @lam8258 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9942, i64* %eptr9937                                                   ; store fptr
  %arg7794 = ptrtoint i64* %cloptr9936 to i64                                        ; closure cast; i64* -> i64
  %cloptr9943 = inttoptr i64 %arg7795 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9943)                                         ; assert function application
  %i0ptr9944 = getelementptr inbounds i64, i64* %cloptr9943, i64 0                   ; &cloptr9943[0]
  %f9946 = load i64, i64* %i0ptr9944, align 8                                        ; load; *i0ptr9944
  %fptr9945 = inttoptr i64 %f9946 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9945(i64 %arg7795, i64 %arg7794)                    ; tail call
  ret void
}


define void @lam8261(i64 %env8262, i64 %Je3$lst7158) {
  %cont7157 = call i64 @prim_car(i64 %Je3$lst7158)                                   ; call prim_car
  %Je3$lst = call i64 @prim_cdr(i64 %Je3$lst7158)                                    ; call prim_cdr
  %arg7799 = add i64 0, 0                                                            ; quoted ()
  %cloptr9947 = inttoptr i64 %cont7157 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9947)                                         ; assert function application
  %i0ptr9948 = getelementptr inbounds i64, i64* %cloptr9947, i64 0                   ; &cloptr9947[0]
  %f9950 = load i64, i64* %i0ptr9948, align 8                                        ; load; *i0ptr9948
  %fptr9949 = inttoptr i64 %f9950 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9949(i64 %cont7157, i64 %arg7799, i64 %Je3$lst)     ; tail call
  ret void
}


define void @lam8258(i64 %env8259, i64 %_957155, i64 %a7056) {
  %envptr9951 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9952 = getelementptr inbounds i64, i64* %envptr9951, i64 4                  ; &envptr9951[4]
  %aBP$new = load i64, i64* %envptr9952, align 8                                     ; load; *envptr9952
  %envptr9953 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9954 = getelementptr inbounds i64, i64* %envptr9953, i64 3                  ; &envptr9953[3]
  %EWY$tail = load i64, i64* %envptr9954, align 8                                    ; load; *envptr9954
  %envptr9955 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9956 = getelementptr inbounds i64, i64* %envptr9955, i64 2                  ; &envptr9955[2]
  %cont7146 = load i64, i64* %envptr9956, align 8                                    ; load; *envptr9956
  %envptr9957 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9958 = getelementptr inbounds i64, i64* %envptr9957, i64 1                  ; &envptr9957[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9958, align 8                         ; load; *envptr9958
  %arg7802 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7156 = call i64 @prim_make_45vector(i64 %arg7802, i64 %a7056)              ; call prim_make_45vector
  %cloptr9959 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9961 = getelementptr inbounds i64, i64* %cloptr9959, i64 1                    ; &eptr9961[1]
  %eptr9962 = getelementptr inbounds i64, i64* %cloptr9959, i64 2                    ; &eptr9962[2]
  %eptr9963 = getelementptr inbounds i64, i64* %cloptr9959, i64 3                    ; &eptr9963[3]
  %eptr9964 = getelementptr inbounds i64, i64* %cloptr9959, i64 4                    ; &eptr9964[4]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9961                                     ; *eptr9961 = %Jt1$_37wind_45stack
  store i64 %cont7146, i64* %eptr9962                                                ; *eptr9962 = %cont7146
  store i64 %EWY$tail, i64* %eptr9963                                                ; *eptr9963 = %EWY$tail
  store i64 %aBP$new, i64* %eptr9964                                                 ; *eptr9964 = %aBP$new
  %eptr9960 = getelementptr inbounds i64, i64* %cloptr9959, i64 0                    ; &cloptr9959[0]
  %f9965 = ptrtoint void(i64,i64,i64)* @lam8255 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9965, i64* %eptr9960                                                   ; store fptr
  %arg7805 = ptrtoint i64* %cloptr9959 to i64                                        ; closure cast; i64* -> i64
  %arg7804 = add i64 0, 0                                                            ; quoted ()
  %cloptr9966 = inttoptr i64 %arg7805 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9966)                                         ; assert function application
  %i0ptr9967 = getelementptr inbounds i64, i64* %cloptr9966, i64 0                   ; &cloptr9966[0]
  %f9969 = load i64, i64* %i0ptr9967, align 8                                        ; load; *i0ptr9967
  %fptr9968 = inttoptr i64 %f9969 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9968(i64 %arg7805, i64 %arg7804, i64 %retprim7156)  ; tail call
  ret void
}


define void @lam8255(i64 %env8256, i64 %_957149, i64 %QFt$f) {
  %envptr9970 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9971 = getelementptr inbounds i64, i64* %envptr9970, i64 4                  ; &envptr9970[4]
  %aBP$new = load i64, i64* %envptr9971, align 8                                     ; load; *envptr9971
  %envptr9972 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9973 = getelementptr inbounds i64, i64* %envptr9972, i64 3                  ; &envptr9972[3]
  %EWY$tail = load i64, i64* %envptr9973, align 8                                    ; load; *envptr9973
  %envptr9974 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9975 = getelementptr inbounds i64, i64* %envptr9974, i64 2                  ; &envptr9974[2]
  %cont7146 = load i64, i64* %envptr9975, align 8                                    ; load; *envptr9975
  %envptr9976 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9977 = getelementptr inbounds i64, i64* %envptr9976, i64 1                  ; &envptr9976[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9977, align 8                         ; load; *envptr9977
  %arg7807 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9978 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9980 = getelementptr inbounds i64, i64* %cloptr9978, i64 1                    ; &eptr9980[1]
  %eptr9981 = getelementptr inbounds i64, i64* %cloptr9978, i64 2                    ; &eptr9981[2]
  %eptr9982 = getelementptr inbounds i64, i64* %cloptr9978, i64 3                    ; &eptr9982[3]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9980                                     ; *eptr9980 = %Jt1$_37wind_45stack
  store i64 %QFt$f, i64* %eptr9981                                                   ; *eptr9981 = %QFt$f
  store i64 %EWY$tail, i64* %eptr9982                                                ; *eptr9982 = %EWY$tail
  %eptr9979 = getelementptr inbounds i64, i64* %cloptr9978, i64 0                    ; &cloptr9978[0]
  %f9983 = ptrtoint void(i64,i64,i64)* @lam8252 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9983, i64* %eptr9979                                                   ; store fptr
  %arg7806 = ptrtoint i64* %cloptr9978 to i64                                        ; closure cast; i64* -> i64
  %MmD$_956942 = call i64 @prim_vector_45set_33(i64 %QFt$f, i64 %arg7807, i64 %arg7806); call prim_vector_45set_33
  %arg7831 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7063 = call i64 @prim_vector_45ref(i64 %QFt$f, i64 %arg7831)                     ; call prim_vector_45ref
  %cloptr9984 = inttoptr i64 %a7063 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9984)                                         ; assert function application
  %i0ptr9985 = getelementptr inbounds i64, i64* %cloptr9984, i64 0                   ; &cloptr9984[0]
  %f9987 = load i64, i64* %i0ptr9985, align 8                                        ; load; *i0ptr9985
  %fptr9986 = inttoptr i64 %f9987 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9986(i64 %a7063, i64 %cont7146, i64 %aBP$new)       ; tail call
  ret void
}


define void @lam8252(i64 %env8253, i64 %cont7150, i64 %O2i$l) {
  %envptr9988 = inttoptr i64 %env8253 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9989 = getelementptr inbounds i64, i64* %envptr9988, i64 3                  ; &envptr9988[3]
  %EWY$tail = load i64, i64* %envptr9989, align 8                                    ; load; *envptr9989
  %envptr9990 = inttoptr i64 %env8253 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9991 = getelementptr inbounds i64, i64* %envptr9990, i64 2                  ; &envptr9990[2]
  %QFt$f = load i64, i64* %envptr9991, align 8                                       ; load; *envptr9991
  %envptr9992 = inttoptr i64 %env8253 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9993 = getelementptr inbounds i64, i64* %envptr9992, i64 1                  ; &envptr9992[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr9993, align 8                         ; load; *envptr9993
  %a7057 = call i64 @prim_eq_63(i64 %O2i$l, i64 %EWY$tail)                           ; call prim_eq_63
  %a7058 = call i64 @prim_not(i64 %a7057)                                            ; call prim_not
  %cmp9994 = icmp eq i64 %a7058, 15                                                  ; false?
  br i1 %cmp9994, label %else9996, label %then9995                                   ; if

then9995:
  %arg7812 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7059 = call i64 @prim_vector_45ref(i64 %QFt$f, i64 %arg7812)                     ; call prim_vector_45ref
  %a7060 = call i64 @prim_cdr(i64 %O2i$l)                                            ; call prim_cdr
  %cloptr9997 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9999 = getelementptr inbounds i64, i64* %cloptr9997, i64 1                    ; &eptr9999[1]
  %eptr10000 = getelementptr inbounds i64, i64* %cloptr9997, i64 2                   ; &eptr10000[2]
  %eptr10001 = getelementptr inbounds i64, i64* %cloptr9997, i64 3                   ; &eptr10001[3]
  store i64 %Jt1$_37wind_45stack, i64* %eptr9999                                     ; *eptr9999 = %Jt1$_37wind_45stack
  store i64 %O2i$l, i64* %eptr10000                                                  ; *eptr10000 = %O2i$l
  store i64 %cont7150, i64* %eptr10001                                               ; *eptr10001 = %cont7150
  %eptr9998 = getelementptr inbounds i64, i64* %cloptr9997, i64 0                    ; &cloptr9997[0]
  %f10002 = ptrtoint void(i64,i64,i64)* @lam8248 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10002, i64* %eptr9998                                                  ; store fptr
  %arg7816 = ptrtoint i64* %cloptr9997 to i64                                        ; closure cast; i64* -> i64
  %cloptr10003 = inttoptr i64 %a7059 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10003)                                        ; assert function application
  %i0ptr10004 = getelementptr inbounds i64, i64* %cloptr10003, i64 0                 ; &cloptr10003[0]
  %f10006 = load i64, i64* %i0ptr10004, align 8                                      ; load; *i0ptr10004
  %fptr10005 = inttoptr i64 %f10006 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10005(i64 %a7059, i64 %arg7816, i64 %a7060)         ; tail call
  ret void

else9996:
  %retprim7154 = call i64 @prim_void()                                               ; call prim_void
  %arg7829 = add i64 0, 0                                                            ; quoted ()
  %cloptr10007 = inttoptr i64 %cont7150 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10007)                                        ; assert function application
  %i0ptr10008 = getelementptr inbounds i64, i64* %cloptr10007, i64 0                 ; &cloptr10007[0]
  %f10010 = load i64, i64* %i0ptr10008, align 8                                      ; load; *i0ptr10008
  %fptr10009 = inttoptr i64 %f10010 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10009(i64 %cont7150, i64 %arg7829, i64 %retprim7154); tail call
  ret void
}


define void @lam8248(i64 %env8249, i64 %_957151, i64 %zXa$_956943) {
  %envptr10011 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10012 = getelementptr inbounds i64, i64* %envptr10011, i64 3                ; &envptr10011[3]
  %cont7150 = load i64, i64* %envptr10012, align 8                                   ; load; *envptr10012
  %envptr10013 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10014 = getelementptr inbounds i64, i64* %envptr10013, i64 2                ; &envptr10013[2]
  %O2i$l = load i64, i64* %envptr10014, align 8                                      ; load; *envptr10014
  %envptr10015 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10016 = getelementptr inbounds i64, i64* %envptr10015, i64 1                ; &envptr10015[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr10016, align 8                        ; load; *envptr10016
  %a7061 = call i64 @prim_car(i64 %O2i$l)                                            ; call prim_car
  %a7062 = call i64 @prim_car(i64 %a7061)                                            ; call prim_car
  %cloptr10017 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10019 = getelementptr inbounds i64, i64* %cloptr10017, i64 1                  ; &eptr10019[1]
  %eptr10020 = getelementptr inbounds i64, i64* %cloptr10017, i64 2                  ; &eptr10020[2]
  %eptr10021 = getelementptr inbounds i64, i64* %cloptr10017, i64 3                  ; &eptr10021[3]
  store i64 %Jt1$_37wind_45stack, i64* %eptr10019                                    ; *eptr10019 = %Jt1$_37wind_45stack
  store i64 %O2i$l, i64* %eptr10020                                                  ; *eptr10020 = %O2i$l
  store i64 %cont7150, i64* %eptr10021                                               ; *eptr10021 = %cont7150
  %eptr10018 = getelementptr inbounds i64, i64* %cloptr10017, i64 0                  ; &cloptr10017[0]
  %f10022 = ptrtoint void(i64,i64,i64)* @lam8246 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10022, i64* %eptr10018                                                 ; store fptr
  %arg7820 = ptrtoint i64* %cloptr10017 to i64                                       ; closure cast; i64* -> i64
  %cloptr10023 = inttoptr i64 %a7062 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10023)                                        ; assert function application
  %i0ptr10024 = getelementptr inbounds i64, i64* %cloptr10023, i64 0                 ; &cloptr10023[0]
  %f10026 = load i64, i64* %i0ptr10024, align 8                                      ; load; *i0ptr10024
  %fptr10025 = inttoptr i64 %f10026 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10025(i64 %a7062, i64 %arg7820)                     ; tail call
  ret void
}


define void @lam8246(i64 %env8247, i64 %_957152, i64 %pLJ$_956944) {
  %envptr10027 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10028 = getelementptr inbounds i64, i64* %envptr10027, i64 3                ; &envptr10027[3]
  %cont7150 = load i64, i64* %envptr10028, align 8                                   ; load; *envptr10028
  %envptr10029 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10030 = getelementptr inbounds i64, i64* %envptr10029, i64 2                ; &envptr10029[2]
  %O2i$l = load i64, i64* %envptr10030, align 8                                      ; load; *envptr10030
  %envptr10031 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10032 = getelementptr inbounds i64, i64* %envptr10031, i64 1                ; &envptr10031[1]
  %Jt1$_37wind_45stack = load i64, i64* %envptr10032, align 8                        ; load; *envptr10032
  %arg7823 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7153 = call i64 @prim_vector_45set_33(i64 %Jt1$_37wind_45stack, i64 %arg7823, i64 %O2i$l); call prim_vector_45set_33
  %arg7826 = add i64 0, 0                                                            ; quoted ()
  %cloptr10033 = inttoptr i64 %cont7150 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10033)                                        ; assert function application
  %i0ptr10034 = getelementptr inbounds i64, i64* %cloptr10033, i64 0                 ; &cloptr10033[0]
  %f10036 = load i64, i64* %i0ptr10034, align 8                                      ; load; *i0ptr10034
  %fptr10035 = inttoptr i64 %f10036 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10035(i64 %cont7150, i64 %arg7826, i64 %retprim7153); tail call
  ret void
}


define void @lam8238(i64 %env8239, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr10037 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10037)                                        ; assert function application
  %i0ptr10038 = getelementptr inbounds i64, i64* %cloptr10037, i64 0                 ; &cloptr10037[0]
  %f10040 = load i64, i64* %i0ptr10038, align 8                                      ; load; *i0ptr10038
  %fptr10039 = inttoptr i64 %f10040 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10039(i64 %_951, i64 %_951)                         ; tail call
  ret void
}


define void @lam8231(i64 %env8232, i64 %cont7180, i64 %Ch2$_37foldl) {
  %envptr10041 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10042 = getelementptr inbounds i64, i64* %envptr10041, i64 3                ; &envptr10041[3]
  %Akk$_37foldr = load i64, i64* %envptr10042, align 8                               ; load; *envptr10042
  %envptr10043 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10044 = getelementptr inbounds i64, i64* %envptr10043, i64 2                ; &envptr10043[2]
  %v77$_37map1 = load i64, i64* %envptr10044, align 8                                ; load; *envptr10044
  %envptr10045 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10046 = getelementptr inbounds i64, i64* %envptr10045, i64 1                ; &envptr10045[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10046, align 8                              ; load; *envptr10046
  %arg7844 = add i64 0, 0                                                            ; quoted ()
  %cloptr10047 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10049 = getelementptr inbounds i64, i64* %cloptr10047, i64 1                  ; &eptr10049[1]
  %eptr10050 = getelementptr inbounds i64, i64* %cloptr10047, i64 2                  ; &eptr10050[2]
  %eptr10051 = getelementptr inbounds i64, i64* %cloptr10047, i64 3                  ; &eptr10051[3]
  %eptr10052 = getelementptr inbounds i64, i64* %cloptr10047, i64 4                  ; &eptr10052[4]
  store i64 %Ch2$_37foldl, i64* %eptr10049                                           ; *eptr10049 = %Ch2$_37foldl
  store i64 %cVJ$_37foldr1, i64* %eptr10050                                          ; *eptr10050 = %cVJ$_37foldr1
  store i64 %v77$_37map1, i64* %eptr10051                                            ; *eptr10051 = %v77$_37map1
  store i64 %Akk$_37foldr, i64* %eptr10052                                           ; *eptr10052 = %Akk$_37foldr
  %eptr10048 = getelementptr inbounds i64, i64* %cloptr10047, i64 0                  ; &cloptr10047[0]
  %f10053 = ptrtoint void(i64,i64)* @lam8228 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10053, i64* %eptr10048                                                 ; store fptr
  %arg7843 = ptrtoint i64* %cloptr10047 to i64                                       ; closure cast; i64* -> i64
  %cloptr10054 = inttoptr i64 %cont7180 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10054)                                        ; assert function application
  %i0ptr10055 = getelementptr inbounds i64, i64* %cloptr10054, i64 0                 ; &cloptr10054[0]
  %f10057 = load i64, i64* %i0ptr10055, align 8                                      ; load; *i0ptr10055
  %fptr10056 = inttoptr i64 %f10057 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10056(i64 %cont7180, i64 %arg7844, i64 %arg7843)    ; tail call
  ret void
}


define void @lam8228(i64 %env8229, i64 %ZPr$args7182) {
  %envptr10058 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10059 = getelementptr inbounds i64, i64* %envptr10058, i64 4                ; &envptr10058[4]
  %Akk$_37foldr = load i64, i64* %envptr10059, align 8                               ; load; *envptr10059
  %envptr10060 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10061 = getelementptr inbounds i64, i64* %envptr10060, i64 3                ; &envptr10060[3]
  %v77$_37map1 = load i64, i64* %envptr10061, align 8                                ; load; *envptr10061
  %envptr10062 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10063 = getelementptr inbounds i64, i64* %envptr10062, i64 2                ; &envptr10062[2]
  %cVJ$_37foldr1 = load i64, i64* %envptr10063, align 8                              ; load; *envptr10063
  %envptr10064 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10065 = getelementptr inbounds i64, i64* %envptr10064, i64 1                ; &envptr10064[1]
  %Ch2$_37foldl = load i64, i64* %envptr10065, align 8                               ; load; *envptr10065
  %cont7181 = call i64 @prim_car(i64 %ZPr$args7182)                                  ; call prim_car
  %ZPr$args = call i64 @prim_cdr(i64 %ZPr$args7182)                                  ; call prim_cdr
  %a6h$f = call i64 @prim_car(i64 %ZPr$args)                                         ; call prim_car
  %a6985 = call i64 @prim_cdr(i64 %ZPr$args)                                         ; call prim_cdr
  %retprim7201 = call i64 @prim_car(i64 %a6985)                                      ; call prim_car
  %cloptr10066 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10068 = getelementptr inbounds i64, i64* %cloptr10066, i64 1                  ; &eptr10068[1]
  %eptr10069 = getelementptr inbounds i64, i64* %cloptr10066, i64 2                  ; &eptr10069[2]
  %eptr10070 = getelementptr inbounds i64, i64* %cloptr10066, i64 3                  ; &eptr10070[3]
  %eptr10071 = getelementptr inbounds i64, i64* %cloptr10066, i64 4                  ; &eptr10071[4]
  %eptr10072 = getelementptr inbounds i64, i64* %cloptr10066, i64 5                  ; &eptr10072[5]
  %eptr10073 = getelementptr inbounds i64, i64* %cloptr10066, i64 6                  ; &eptr10073[6]
  %eptr10074 = getelementptr inbounds i64, i64* %cloptr10066, i64 7                  ; &eptr10074[7]
  store i64 %Ch2$_37foldl, i64* %eptr10068                                           ; *eptr10068 = %Ch2$_37foldl
  store i64 %a6h$f, i64* %eptr10069                                                  ; *eptr10069 = %a6h$f
  store i64 %cont7181, i64* %eptr10070                                               ; *eptr10070 = %cont7181
  store i64 %cVJ$_37foldr1, i64* %eptr10071                                          ; *eptr10071 = %cVJ$_37foldr1
  store i64 %v77$_37map1, i64* %eptr10072                                            ; *eptr10072 = %v77$_37map1
  store i64 %ZPr$args, i64* %eptr10073                                               ; *eptr10073 = %ZPr$args
  store i64 %Akk$_37foldr, i64* %eptr10074                                           ; *eptr10074 = %Akk$_37foldr
  %eptr10067 = getelementptr inbounds i64, i64* %cloptr10066, i64 0                  ; &cloptr10066[0]
  %f10075 = ptrtoint void(i64,i64,i64)* @lam8226 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10075, i64* %eptr10067                                                 ; store fptr
  %arg7853 = ptrtoint i64* %cloptr10066 to i64                                       ; closure cast; i64* -> i64
  %arg7852 = add i64 0, 0                                                            ; quoted ()
  %cloptr10076 = inttoptr i64 %arg7853 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10076)                                        ; assert function application
  %i0ptr10077 = getelementptr inbounds i64, i64* %cloptr10076, i64 0                 ; &cloptr10076[0]
  %f10079 = load i64, i64* %i0ptr10077, align 8                                      ; load; *i0ptr10077
  %fptr10078 = inttoptr i64 %f10079 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10078(i64 %arg7853, i64 %arg7852, i64 %retprim7201) ; tail call
  ret void
}


define void @lam8226(i64 %env8227, i64 %_957183, i64 %vwE$acc) {
  %envptr10080 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10081 = getelementptr inbounds i64, i64* %envptr10080, i64 7                ; &envptr10080[7]
  %Akk$_37foldr = load i64, i64* %envptr10081, align 8                               ; load; *envptr10081
  %envptr10082 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10083 = getelementptr inbounds i64, i64* %envptr10082, i64 6                ; &envptr10082[6]
  %ZPr$args = load i64, i64* %envptr10083, align 8                                   ; load; *envptr10083
  %envptr10084 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10085 = getelementptr inbounds i64, i64* %envptr10084, i64 5                ; &envptr10084[5]
  %v77$_37map1 = load i64, i64* %envptr10085, align 8                                ; load; *envptr10085
  %envptr10086 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10087 = getelementptr inbounds i64, i64* %envptr10086, i64 4                ; &envptr10086[4]
  %cVJ$_37foldr1 = load i64, i64* %envptr10087, align 8                              ; load; *envptr10087
  %envptr10088 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10089 = getelementptr inbounds i64, i64* %envptr10088, i64 3                ; &envptr10088[3]
  %cont7181 = load i64, i64* %envptr10089, align 8                                   ; load; *envptr10089
  %envptr10090 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10091 = getelementptr inbounds i64, i64* %envptr10090, i64 2                ; &envptr10090[2]
  %a6h$f = load i64, i64* %envptr10091, align 8                                      ; load; *envptr10091
  %envptr10092 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10093 = getelementptr inbounds i64, i64* %envptr10092, i64 1                ; &envptr10092[1]
  %Ch2$_37foldl = load i64, i64* %envptr10093, align 8                               ; load; *envptr10093
  %a6986 = call i64 @prim_cdr(i64 %ZPr$args)                                         ; call prim_cdr
  %retprim7200 = call i64 @prim_cdr(i64 %a6986)                                      ; call prim_cdr
  %cloptr10094 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10096 = getelementptr inbounds i64, i64* %cloptr10094, i64 1                  ; &eptr10096[1]
  %eptr10097 = getelementptr inbounds i64, i64* %cloptr10094, i64 2                  ; &eptr10097[2]
  %eptr10098 = getelementptr inbounds i64, i64* %cloptr10094, i64 3                  ; &eptr10098[3]
  %eptr10099 = getelementptr inbounds i64, i64* %cloptr10094, i64 4                  ; &eptr10099[4]
  %eptr10100 = getelementptr inbounds i64, i64* %cloptr10094, i64 5                  ; &eptr10100[5]
  %eptr10101 = getelementptr inbounds i64, i64* %cloptr10094, i64 6                  ; &eptr10101[6]
  %eptr10102 = getelementptr inbounds i64, i64* %cloptr10094, i64 7                  ; &eptr10102[7]
  store i64 %Ch2$_37foldl, i64* %eptr10096                                           ; *eptr10096 = %Ch2$_37foldl
  store i64 %a6h$f, i64* %eptr10097                                                  ; *eptr10097 = %a6h$f
  store i64 %cont7181, i64* %eptr10098                                               ; *eptr10098 = %cont7181
  store i64 %cVJ$_37foldr1, i64* %eptr10099                                          ; *eptr10099 = %cVJ$_37foldr1
  store i64 %v77$_37map1, i64* %eptr10100                                            ; *eptr10100 = %v77$_37map1
  store i64 %vwE$acc, i64* %eptr10101                                                ; *eptr10101 = %vwE$acc
  store i64 %Akk$_37foldr, i64* %eptr10102                                           ; *eptr10102 = %Akk$_37foldr
  %eptr10095 = getelementptr inbounds i64, i64* %cloptr10094, i64 0                  ; &cloptr10094[0]
  %f10103 = ptrtoint void(i64,i64,i64)* @lam8224 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10103, i64* %eptr10095                                                 ; store fptr
  %arg7858 = ptrtoint i64* %cloptr10094 to i64                                       ; closure cast; i64* -> i64
  %arg7857 = add i64 0, 0                                                            ; quoted ()
  %cloptr10104 = inttoptr i64 %arg7858 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10104)                                        ; assert function application
  %i0ptr10105 = getelementptr inbounds i64, i64* %cloptr10104, i64 0                 ; &cloptr10104[0]
  %f10107 = load i64, i64* %i0ptr10105, align 8                                      ; load; *i0ptr10105
  %fptr10106 = inttoptr i64 %f10107 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10106(i64 %arg7858, i64 %arg7857, i64 %retprim7200) ; tail call
  ret void
}


define void @lam8224(i64 %env8225, i64 %_957184, i64 %Lae$lsts) {
  %envptr10108 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10109 = getelementptr inbounds i64, i64* %envptr10108, i64 7                ; &envptr10108[7]
  %Akk$_37foldr = load i64, i64* %envptr10109, align 8                               ; load; *envptr10109
  %envptr10110 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10111 = getelementptr inbounds i64, i64* %envptr10110, i64 6                ; &envptr10110[6]
  %vwE$acc = load i64, i64* %envptr10111, align 8                                    ; load; *envptr10111
  %envptr10112 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10113 = getelementptr inbounds i64, i64* %envptr10112, i64 5                ; &envptr10112[5]
  %v77$_37map1 = load i64, i64* %envptr10113, align 8                                ; load; *envptr10113
  %envptr10114 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10115 = getelementptr inbounds i64, i64* %envptr10114, i64 4                ; &envptr10114[4]
  %cVJ$_37foldr1 = load i64, i64* %envptr10115, align 8                              ; load; *envptr10115
  %envptr10116 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10117 = getelementptr inbounds i64, i64* %envptr10116, i64 3                ; &envptr10116[3]
  %cont7181 = load i64, i64* %envptr10117, align 8                                   ; load; *envptr10117
  %envptr10118 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10119 = getelementptr inbounds i64, i64* %envptr10118, i64 2                ; &envptr10118[2]
  %a6h$f = load i64, i64* %envptr10119, align 8                                      ; load; *envptr10119
  %envptr10120 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10121 = getelementptr inbounds i64, i64* %envptr10120, i64 1                ; &envptr10120[1]
  %Ch2$_37foldl = load i64, i64* %envptr10121, align 8                               ; load; *envptr10121
  %cloptr10122 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10124 = getelementptr inbounds i64, i64* %cloptr10122, i64 1                  ; &eptr10124[1]
  %eptr10125 = getelementptr inbounds i64, i64* %cloptr10122, i64 2                  ; &eptr10125[2]
  %eptr10126 = getelementptr inbounds i64, i64* %cloptr10122, i64 3                  ; &eptr10126[3]
  %eptr10127 = getelementptr inbounds i64, i64* %cloptr10122, i64 4                  ; &eptr10127[4]
  %eptr10128 = getelementptr inbounds i64, i64* %cloptr10122, i64 5                  ; &eptr10128[5]
  %eptr10129 = getelementptr inbounds i64, i64* %cloptr10122, i64 6                  ; &eptr10129[6]
  %eptr10130 = getelementptr inbounds i64, i64* %cloptr10122, i64 7                  ; &eptr10130[7]
  store i64 %Ch2$_37foldl, i64* %eptr10124                                           ; *eptr10124 = %Ch2$_37foldl
  store i64 %a6h$f, i64* %eptr10125                                                  ; *eptr10125 = %a6h$f
  store i64 %cont7181, i64* %eptr10126                                               ; *eptr10126 = %cont7181
  store i64 %Lae$lsts, i64* %eptr10127                                               ; *eptr10127 = %Lae$lsts
  store i64 %v77$_37map1, i64* %eptr10128                                            ; *eptr10128 = %v77$_37map1
  store i64 %vwE$acc, i64* %eptr10129                                                ; *eptr10129 = %vwE$acc
  store i64 %Akk$_37foldr, i64* %eptr10130                                           ; *eptr10130 = %Akk$_37foldr
  %eptr10123 = getelementptr inbounds i64, i64* %cloptr10122, i64 0                  ; &cloptr10122[0]
  %f10131 = ptrtoint void(i64,i64,i64)* @lam8222 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10131, i64* %eptr10123                                                 ; store fptr
  %arg7862 = ptrtoint i64* %cloptr10122 to i64                                       ; closure cast; i64* -> i64
  %cloptr10132 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10133 = getelementptr inbounds i64, i64* %cloptr10132, i64 0                  ; &cloptr10132[0]
  %f10134 = ptrtoint void(i64,i64,i64,i64)* @lam8201 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10134, i64* %eptr10133                                                 ; store fptr
  %arg7861 = ptrtoint i64* %cloptr10132 to i64                                       ; closure cast; i64* -> i64
  %arg7860 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10135 = inttoptr i64 %cVJ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10135)                                        ; assert function application
  %i0ptr10136 = getelementptr inbounds i64, i64* %cloptr10135, i64 0                 ; &cloptr10135[0]
  %f10138 = load i64, i64* %i0ptr10136, align 8                                      ; load; *i0ptr10136
  %fptr10137 = inttoptr i64 %f10138 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10137(i64 %cVJ$_37foldr1, i64 %arg7862, i64 %arg7861, i64 %arg7860, i64 %Lae$lsts); tail call
  ret void
}


define void @lam8222(i64 %env8223, i64 %_957185, i64 %a6987) {
  %envptr10139 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10140 = getelementptr inbounds i64, i64* %envptr10139, i64 7                ; &envptr10139[7]
  %Akk$_37foldr = load i64, i64* %envptr10140, align 8                               ; load; *envptr10140
  %envptr10141 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10142 = getelementptr inbounds i64, i64* %envptr10141, i64 6                ; &envptr10141[6]
  %vwE$acc = load i64, i64* %envptr10142, align 8                                    ; load; *envptr10142
  %envptr10143 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10144 = getelementptr inbounds i64, i64* %envptr10143, i64 5                ; &envptr10143[5]
  %v77$_37map1 = load i64, i64* %envptr10144, align 8                                ; load; *envptr10144
  %envptr10145 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10146 = getelementptr inbounds i64, i64* %envptr10145, i64 4                ; &envptr10145[4]
  %Lae$lsts = load i64, i64* %envptr10146, align 8                                   ; load; *envptr10146
  %envptr10147 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10148 = getelementptr inbounds i64, i64* %envptr10147, i64 3                ; &envptr10147[3]
  %cont7181 = load i64, i64* %envptr10148, align 8                                   ; load; *envptr10148
  %envptr10149 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10150 = getelementptr inbounds i64, i64* %envptr10149, i64 2                ; &envptr10149[2]
  %a6h$f = load i64, i64* %envptr10150, align 8                                      ; load; *envptr10150
  %envptr10151 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10152 = getelementptr inbounds i64, i64* %envptr10151, i64 1                ; &envptr10151[1]
  %Ch2$_37foldl = load i64, i64* %envptr10152, align 8                               ; load; *envptr10152
  %cmp10153 = icmp eq i64 %a6987, 15                                                 ; false?
  br i1 %cmp10153, label %else10155, label %then10154                                ; if

then10154:
  %arg7865 = add i64 0, 0                                                            ; quoted ()
  %cloptr10156 = inttoptr i64 %cont7181 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10156)                                        ; assert function application
  %i0ptr10157 = getelementptr inbounds i64, i64* %cloptr10156, i64 0                 ; &cloptr10156[0]
  %f10159 = load i64, i64* %i0ptr10157, align 8                                      ; load; *i0ptr10157
  %fptr10158 = inttoptr i64 %f10159 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10158(i64 %cont7181, i64 %arg7865, i64 %vwE$acc)    ; tail call
  ret void

else10155:
  %cloptr10160 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10162 = getelementptr inbounds i64, i64* %cloptr10160, i64 1                  ; &eptr10162[1]
  %eptr10163 = getelementptr inbounds i64, i64* %cloptr10160, i64 2                  ; &eptr10163[2]
  %eptr10164 = getelementptr inbounds i64, i64* %cloptr10160, i64 3                  ; &eptr10164[3]
  %eptr10165 = getelementptr inbounds i64, i64* %cloptr10160, i64 4                  ; &eptr10165[4]
  %eptr10166 = getelementptr inbounds i64, i64* %cloptr10160, i64 5                  ; &eptr10166[5]
  %eptr10167 = getelementptr inbounds i64, i64* %cloptr10160, i64 6                  ; &eptr10167[6]
  %eptr10168 = getelementptr inbounds i64, i64* %cloptr10160, i64 7                  ; &eptr10168[7]
  store i64 %Ch2$_37foldl, i64* %eptr10162                                           ; *eptr10162 = %Ch2$_37foldl
  store i64 %a6h$f, i64* %eptr10163                                                  ; *eptr10163 = %a6h$f
  store i64 %cont7181, i64* %eptr10164                                               ; *eptr10164 = %cont7181
  store i64 %Lae$lsts, i64* %eptr10165                                               ; *eptr10165 = %Lae$lsts
  store i64 %v77$_37map1, i64* %eptr10166                                            ; *eptr10166 = %v77$_37map1
  store i64 %vwE$acc, i64* %eptr10167                                                ; *eptr10167 = %vwE$acc
  store i64 %Akk$_37foldr, i64* %eptr10168                                           ; *eptr10168 = %Akk$_37foldr
  %eptr10161 = getelementptr inbounds i64, i64* %cloptr10160, i64 0                  ; &cloptr10160[0]
  %f10169 = ptrtoint void(i64,i64,i64)* @lam8220 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10169, i64* %eptr10161                                                 ; store fptr
  %arg7869 = ptrtoint i64* %cloptr10160 to i64                                       ; closure cast; i64* -> i64
  %cloptr10170 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10171 = getelementptr inbounds i64, i64* %cloptr10170, i64 0                  ; &cloptr10170[0]
  %f10172 = ptrtoint void(i64,i64,i64)* @lam8205 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10172, i64* %eptr10171                                                 ; store fptr
  %arg7868 = ptrtoint i64* %cloptr10170 to i64                                       ; closure cast; i64* -> i64
  %cloptr10173 = inttoptr i64 %v77$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10173)                                        ; assert function application
  %i0ptr10174 = getelementptr inbounds i64, i64* %cloptr10173, i64 0                 ; &cloptr10173[0]
  %f10176 = load i64, i64* %i0ptr10174, align 8                                      ; load; *i0ptr10174
  %fptr10175 = inttoptr i64 %f10176 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10175(i64 %v77$_37map1, i64 %arg7869, i64 %arg7868, i64 %Lae$lsts); tail call
  ret void
}


define void @lam8220(i64 %env8221, i64 %_957186, i64 %qhP$lsts_43) {
  %envptr10177 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10178 = getelementptr inbounds i64, i64* %envptr10177, i64 7                ; &envptr10177[7]
  %Akk$_37foldr = load i64, i64* %envptr10178, align 8                               ; load; *envptr10178
  %envptr10179 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10180 = getelementptr inbounds i64, i64* %envptr10179, i64 6                ; &envptr10179[6]
  %vwE$acc = load i64, i64* %envptr10180, align 8                                    ; load; *envptr10180
  %envptr10181 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10182 = getelementptr inbounds i64, i64* %envptr10181, i64 5                ; &envptr10181[5]
  %v77$_37map1 = load i64, i64* %envptr10182, align 8                                ; load; *envptr10182
  %envptr10183 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10184 = getelementptr inbounds i64, i64* %envptr10183, i64 4                ; &envptr10183[4]
  %Lae$lsts = load i64, i64* %envptr10184, align 8                                   ; load; *envptr10184
  %envptr10185 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10186 = getelementptr inbounds i64, i64* %envptr10185, i64 3                ; &envptr10185[3]
  %cont7181 = load i64, i64* %envptr10186, align 8                                   ; load; *envptr10186
  %envptr10187 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10188 = getelementptr inbounds i64, i64* %envptr10187, i64 2                ; &envptr10187[2]
  %a6h$f = load i64, i64* %envptr10188, align 8                                      ; load; *envptr10188
  %envptr10189 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10190 = getelementptr inbounds i64, i64* %envptr10189, i64 1                ; &envptr10189[1]
  %Ch2$_37foldl = load i64, i64* %envptr10190, align 8                               ; load; *envptr10190
  %cloptr10191 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10193 = getelementptr inbounds i64, i64* %cloptr10191, i64 1                  ; &eptr10193[1]
  %eptr10194 = getelementptr inbounds i64, i64* %cloptr10191, i64 2                  ; &eptr10194[2]
  %eptr10195 = getelementptr inbounds i64, i64* %cloptr10191, i64 3                  ; &eptr10195[3]
  %eptr10196 = getelementptr inbounds i64, i64* %cloptr10191, i64 4                  ; &eptr10196[4]
  %eptr10197 = getelementptr inbounds i64, i64* %cloptr10191, i64 5                  ; &eptr10197[5]
  %eptr10198 = getelementptr inbounds i64, i64* %cloptr10191, i64 6                  ; &eptr10198[6]
  store i64 %Ch2$_37foldl, i64* %eptr10193                                           ; *eptr10193 = %Ch2$_37foldl
  store i64 %qhP$lsts_43, i64* %eptr10194                                            ; *eptr10194 = %qhP$lsts_43
  store i64 %a6h$f, i64* %eptr10195                                                  ; *eptr10195 = %a6h$f
  store i64 %cont7181, i64* %eptr10196                                               ; *eptr10196 = %cont7181
  store i64 %vwE$acc, i64* %eptr10197                                                ; *eptr10197 = %vwE$acc
  store i64 %Akk$_37foldr, i64* %eptr10198                                           ; *eptr10198 = %Akk$_37foldr
  %eptr10192 = getelementptr inbounds i64, i64* %cloptr10191, i64 0                  ; &cloptr10191[0]
  %f10199 = ptrtoint void(i64,i64,i64)* @lam8218 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10199, i64* %eptr10192                                                 ; store fptr
  %arg7873 = ptrtoint i64* %cloptr10191 to i64                                       ; closure cast; i64* -> i64
  %cloptr10200 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10201 = getelementptr inbounds i64, i64* %cloptr10200, i64 0                  ; &cloptr10200[0]
  %f10202 = ptrtoint void(i64,i64,i64)* @lam8208 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10202, i64* %eptr10201                                                 ; store fptr
  %arg7872 = ptrtoint i64* %cloptr10200 to i64                                       ; closure cast; i64* -> i64
  %cloptr10203 = inttoptr i64 %v77$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10203)                                        ; assert function application
  %i0ptr10204 = getelementptr inbounds i64, i64* %cloptr10203, i64 0                 ; &cloptr10203[0]
  %f10206 = load i64, i64* %i0ptr10204, align 8                                      ; load; *i0ptr10204
  %fptr10205 = inttoptr i64 %f10206 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10205(i64 %v77$_37map1, i64 %arg7873, i64 %arg7872, i64 %Lae$lsts); tail call
  ret void
}


define void @lam8218(i64 %env8219, i64 %_957187, i64 %jia$vs) {
  %envptr10207 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10208 = getelementptr inbounds i64, i64* %envptr10207, i64 6                ; &envptr10207[6]
  %Akk$_37foldr = load i64, i64* %envptr10208, align 8                               ; load; *envptr10208
  %envptr10209 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10210 = getelementptr inbounds i64, i64* %envptr10209, i64 5                ; &envptr10209[5]
  %vwE$acc = load i64, i64* %envptr10210, align 8                                    ; load; *envptr10210
  %envptr10211 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10212 = getelementptr inbounds i64, i64* %envptr10211, i64 4                ; &envptr10211[4]
  %cont7181 = load i64, i64* %envptr10212, align 8                                   ; load; *envptr10212
  %envptr10213 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10214 = getelementptr inbounds i64, i64* %envptr10213, i64 3                ; &envptr10213[3]
  %a6h$f = load i64, i64* %envptr10214, align 8                                      ; load; *envptr10214
  %envptr10215 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10216 = getelementptr inbounds i64, i64* %envptr10215, i64 2                ; &envptr10215[2]
  %qhP$lsts_43 = load i64, i64* %envptr10216, align 8                                ; load; *envptr10216
  %envptr10217 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10218 = getelementptr inbounds i64, i64* %envptr10217, i64 1                ; &envptr10217[1]
  %Ch2$_37foldl = load i64, i64* %envptr10218, align 8                               ; load; *envptr10218
  %arg7875 = add i64 0, 0                                                            ; quoted ()
  %a6988 = call i64 @prim_cons(i64 %vwE$acc, i64 %arg7875)                           ; call prim_cons
  %cloptr10219 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10221 = getelementptr inbounds i64, i64* %cloptr10219, i64 1                  ; &eptr10221[1]
  %eptr10222 = getelementptr inbounds i64, i64* %cloptr10219, i64 2                  ; &eptr10222[2]
  %eptr10223 = getelementptr inbounds i64, i64* %cloptr10219, i64 3                  ; &eptr10223[3]
  %eptr10224 = getelementptr inbounds i64, i64* %cloptr10219, i64 4                  ; &eptr10224[4]
  store i64 %Ch2$_37foldl, i64* %eptr10221                                           ; *eptr10221 = %Ch2$_37foldl
  store i64 %qhP$lsts_43, i64* %eptr10222                                            ; *eptr10222 = %qhP$lsts_43
  store i64 %a6h$f, i64* %eptr10223                                                  ; *eptr10223 = %a6h$f
  store i64 %cont7181, i64* %eptr10224                                               ; *eptr10224 = %cont7181
  %eptr10220 = getelementptr inbounds i64, i64* %cloptr10219, i64 0                  ; &cloptr10219[0]
  %f10225 = ptrtoint void(i64,i64,i64)* @lam8215 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10225, i64* %eptr10220                                                 ; store fptr
  %arg7880 = ptrtoint i64* %cloptr10219 to i64                                       ; closure cast; i64* -> i64
  %cloptr10226 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10227 = getelementptr inbounds i64, i64* %cloptr10226, i64 0                  ; &cloptr10226[0]
  %f10228 = ptrtoint void(i64,i64,i64,i64)* @lam8211 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10228, i64* %eptr10227                                                 ; store fptr
  %arg7879 = ptrtoint i64* %cloptr10226 to i64                                       ; closure cast; i64* -> i64
  %cloptr10229 = inttoptr i64 %Akk$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10229)                                        ; assert function application
  %i0ptr10230 = getelementptr inbounds i64, i64* %cloptr10229, i64 0                 ; &cloptr10229[0]
  %f10232 = load i64, i64* %i0ptr10230, align 8                                      ; load; *i0ptr10230
  %fptr10231 = inttoptr i64 %f10232 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10231(i64 %Akk$_37foldr, i64 %arg7880, i64 %arg7879, i64 %a6988, i64 %jia$vs); tail call
  ret void
}


define void @lam8215(i64 %env8216, i64 %_957190, i64 %a6989) {
  %envptr10233 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10234 = getelementptr inbounds i64, i64* %envptr10233, i64 4                ; &envptr10233[4]
  %cont7181 = load i64, i64* %envptr10234, align 8                                   ; load; *envptr10234
  %envptr10235 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10236 = getelementptr inbounds i64, i64* %envptr10235, i64 3                ; &envptr10235[3]
  %a6h$f = load i64, i64* %envptr10236, align 8                                      ; load; *envptr10236
  %envptr10237 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10238 = getelementptr inbounds i64, i64* %envptr10237, i64 2                ; &envptr10237[2]
  %qhP$lsts_43 = load i64, i64* %envptr10238, align 8                                ; load; *envptr10238
  %envptr10239 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10240 = getelementptr inbounds i64, i64* %envptr10239, i64 1                ; &envptr10239[1]
  %Ch2$_37foldl = load i64, i64* %envptr10240, align 8                               ; load; *envptr10240
  %cloptr10241 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10243 = getelementptr inbounds i64, i64* %cloptr10241, i64 1                  ; &eptr10243[1]
  %eptr10244 = getelementptr inbounds i64, i64* %cloptr10241, i64 2                  ; &eptr10244[2]
  %eptr10245 = getelementptr inbounds i64, i64* %cloptr10241, i64 3                  ; &eptr10245[3]
  %eptr10246 = getelementptr inbounds i64, i64* %cloptr10241, i64 4                  ; &eptr10246[4]
  store i64 %Ch2$_37foldl, i64* %eptr10243                                           ; *eptr10243 = %Ch2$_37foldl
  store i64 %qhP$lsts_43, i64* %eptr10244                                            ; *eptr10244 = %qhP$lsts_43
  store i64 %a6h$f, i64* %eptr10245                                                  ; *eptr10245 = %a6h$f
  store i64 %cont7181, i64* %eptr10246                                               ; *eptr10246 = %cont7181
  %eptr10242 = getelementptr inbounds i64, i64* %cloptr10241, i64 0                  ; &cloptr10241[0]
  %f10247 = ptrtoint void(i64,i64,i64)* @lam8213 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10247, i64* %eptr10242                                                 ; store fptr
  %arg7883 = ptrtoint i64* %cloptr10241 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7191 = call i64 @prim_cons(i64 %arg7883, i64 %a6989)                     ; call prim_cons
  %cloptr10248 = inttoptr i64 %a6h$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10248)                                        ; assert function application
  %i0ptr10249 = getelementptr inbounds i64, i64* %cloptr10248, i64 0                 ; &cloptr10248[0]
  %f10251 = load i64, i64* %i0ptr10249, align 8                                      ; load; *i0ptr10249
  %fptr10250 = inttoptr i64 %f10251 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10250(i64 %a6h$f, i64 %cps_45lst7191)               ; tail call
  ret void
}


define void @lam8213(i64 %env8214, i64 %_957188, i64 %znf$acc_43) {
  %envptr10252 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10253 = getelementptr inbounds i64, i64* %envptr10252, i64 4                ; &envptr10252[4]
  %cont7181 = load i64, i64* %envptr10253, align 8                                   ; load; *envptr10253
  %envptr10254 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10255 = getelementptr inbounds i64, i64* %envptr10254, i64 3                ; &envptr10254[3]
  %a6h$f = load i64, i64* %envptr10255, align 8                                      ; load; *envptr10255
  %envptr10256 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10257 = getelementptr inbounds i64, i64* %envptr10256, i64 2                ; &envptr10256[2]
  %qhP$lsts_43 = load i64, i64* %envptr10257, align 8                                ; load; *envptr10257
  %envptr10258 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10259 = getelementptr inbounds i64, i64* %envptr10258, i64 1                ; &envptr10258[1]
  %Ch2$_37foldl = load i64, i64* %envptr10259, align 8                               ; load; *envptr10259
  %a6990 = call i64 @prim_cons(i64 %znf$acc_43, i64 %qhP$lsts_43)                    ; call prim_cons
  %a6991 = call i64 @prim_cons(i64 %a6h$f, i64 %a6990)                               ; call prim_cons
  %cps_45lst7189 = call i64 @prim_cons(i64 %cont7181, i64 %a6991)                    ; call prim_cons
  %cloptr10260 = inttoptr i64 %Ch2$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10260)                                        ; assert function application
  %i0ptr10261 = getelementptr inbounds i64, i64* %cloptr10260, i64 0                 ; &cloptr10260[0]
  %f10263 = load i64, i64* %i0ptr10261, align 8                                      ; load; *i0ptr10261
  %fptr10262 = inttoptr i64 %f10263 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10262(i64 %Ch2$_37foldl, i64 %cps_45lst7189)        ; tail call
  ret void
}


define void @lam8211(i64 %env8212, i64 %cont7192, i64 %NMA$a, i64 %g04$b) {
  %retprim7193 = call i64 @prim_cons(i64 %NMA$a, i64 %g04$b)                         ; call prim_cons
  %arg7893 = add i64 0, 0                                                            ; quoted ()
  %cloptr10264 = inttoptr i64 %cont7192 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10264)                                        ; assert function application
  %i0ptr10265 = getelementptr inbounds i64, i64* %cloptr10264, i64 0                 ; &cloptr10264[0]
  %f10267 = load i64, i64* %i0ptr10265, align 8                                      ; load; *i0ptr10265
  %fptr10266 = inttoptr i64 %f10267 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10266(i64 %cont7192, i64 %arg7893, i64 %retprim7193); tail call
  ret void
}


define void @lam8208(i64 %env8209, i64 %cont7194, i64 %ejG$x) {
  %retprim7195 = call i64 @prim_car(i64 %ejG$x)                                      ; call prim_car
  %arg7897 = add i64 0, 0                                                            ; quoted ()
  %cloptr10268 = inttoptr i64 %cont7194 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10268)                                        ; assert function application
  %i0ptr10269 = getelementptr inbounds i64, i64* %cloptr10268, i64 0                 ; &cloptr10268[0]
  %f10271 = load i64, i64* %i0ptr10269, align 8                                      ; load; *i0ptr10269
  %fptr10270 = inttoptr i64 %f10271 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10270(i64 %cont7194, i64 %arg7897, i64 %retprim7195); tail call
  ret void
}


define void @lam8205(i64 %env8206, i64 %cont7196, i64 %X6n$x) {
  %retprim7197 = call i64 @prim_cdr(i64 %X6n$x)                                      ; call prim_cdr
  %arg7901 = add i64 0, 0                                                            ; quoted ()
  %cloptr10272 = inttoptr i64 %cont7196 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10272)                                        ; assert function application
  %i0ptr10273 = getelementptr inbounds i64, i64* %cloptr10272, i64 0                 ; &cloptr10272[0]
  %f10275 = load i64, i64* %i0ptr10273, align 8                                      ; load; *i0ptr10273
  %fptr10274 = inttoptr i64 %f10275 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10274(i64 %cont7196, i64 %arg7901, i64 %retprim7197); tail call
  ret void
}


define void @lam8201(i64 %env8202, i64 %cont7198, i64 %ATM$lst, i64 %NVg$b) {
  %cmp10276 = icmp eq i64 %NVg$b, 15                                                 ; false?
  br i1 %cmp10276, label %else10278, label %then10277                                ; if

then10277:
  %arg7904 = add i64 0, 0                                                            ; quoted ()
  %cloptr10279 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10279)                                        ; assert function application
  %i0ptr10280 = getelementptr inbounds i64, i64* %cloptr10279, i64 0                 ; &cloptr10279[0]
  %f10282 = load i64, i64* %i0ptr10280, align 8                                      ; load; *i0ptr10280
  %fptr10281 = inttoptr i64 %f10282 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10281(i64 %cont7198, i64 %arg7904, i64 %NVg$b)      ; tail call
  ret void

else10278:
  %retprim7199 = call i64 @prim_null_63(i64 %ATM$lst)                                ; call prim_null_63
  %arg7908 = add i64 0, 0                                                            ; quoted ()
  %cloptr10283 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10283)                                        ; assert function application
  %i0ptr10284 = getelementptr inbounds i64, i64* %cloptr10283, i64 0                 ; &cloptr10283[0]
  %f10286 = load i64, i64* %i0ptr10284, align 8                                      ; load; *i0ptr10284
  %fptr10285 = inttoptr i64 %f10286 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10285(i64 %cont7198, i64 %arg7908, i64 %retprim7199); tail call
  ret void
}


define void @lam8194(i64 %env8195, i64 %cont7202, i64 %WS9$_37foldr) {
  %envptr10287 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10288 = getelementptr inbounds i64, i64* %envptr10287, i64 2                ; &envptr10287[2]
  %TOj$_37map1 = load i64, i64* %envptr10288, align 8                                ; load; *envptr10288
  %envptr10289 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10290 = getelementptr inbounds i64, i64* %envptr10289, i64 1                ; &envptr10289[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10290, align 8                              ; load; *envptr10290
  %arg7911 = add i64 0, 0                                                            ; quoted ()
  %cloptr10291 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10293 = getelementptr inbounds i64, i64* %cloptr10291, i64 1                  ; &eptr10293[1]
  %eptr10294 = getelementptr inbounds i64, i64* %cloptr10291, i64 2                  ; &eptr10294[2]
  %eptr10295 = getelementptr inbounds i64, i64* %cloptr10291, i64 3                  ; &eptr10295[3]
  store i64 %cVJ$_37foldr1, i64* %eptr10293                                          ; *eptr10293 = %cVJ$_37foldr1
  store i64 %WS9$_37foldr, i64* %eptr10294                                           ; *eptr10294 = %WS9$_37foldr
  store i64 %TOj$_37map1, i64* %eptr10295                                            ; *eptr10295 = %TOj$_37map1
  %eptr10292 = getelementptr inbounds i64, i64* %cloptr10291, i64 0                  ; &cloptr10291[0]
  %f10296 = ptrtoint void(i64,i64)* @lam8191 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10296, i64* %eptr10292                                                 ; store fptr
  %arg7910 = ptrtoint i64* %cloptr10291 to i64                                       ; closure cast; i64* -> i64
  %cloptr10297 = inttoptr i64 %cont7202 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10297)                                        ; assert function application
  %i0ptr10298 = getelementptr inbounds i64, i64* %cloptr10297, i64 0                 ; &cloptr10297[0]
  %f10300 = load i64, i64* %i0ptr10298, align 8                                      ; load; *i0ptr10298
  %fptr10299 = inttoptr i64 %f10300 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10299(i64 %cont7202, i64 %arg7911, i64 %arg7910)    ; tail call
  ret void
}


define void @lam8191(i64 %env8192, i64 %twf$args7204) {
  %envptr10301 = inttoptr i64 %env8192 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10302 = getelementptr inbounds i64, i64* %envptr10301, i64 3                ; &envptr10301[3]
  %TOj$_37map1 = load i64, i64* %envptr10302, align 8                                ; load; *envptr10302
  %envptr10303 = inttoptr i64 %env8192 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10304 = getelementptr inbounds i64, i64* %envptr10303, i64 2                ; &envptr10303[2]
  %WS9$_37foldr = load i64, i64* %envptr10304, align 8                               ; load; *envptr10304
  %envptr10305 = inttoptr i64 %env8192 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10306 = getelementptr inbounds i64, i64* %envptr10305, i64 1                ; &envptr10305[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10306, align 8                              ; load; *envptr10306
  %cont7203 = call i64 @prim_car(i64 %twf$args7204)                                  ; call prim_car
  %twf$args = call i64 @prim_cdr(i64 %twf$args7204)                                  ; call prim_cdr
  %jQI$f = call i64 @prim_car(i64 %twf$args)                                         ; call prim_car
  %a6971 = call i64 @prim_cdr(i64 %twf$args)                                         ; call prim_cdr
  %retprim7223 = call i64 @prim_car(i64 %a6971)                                      ; call prim_car
  %cloptr10307 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10309 = getelementptr inbounds i64, i64* %cloptr10307, i64 1                  ; &eptr10309[1]
  %eptr10310 = getelementptr inbounds i64, i64* %cloptr10307, i64 2                  ; &eptr10310[2]
  %eptr10311 = getelementptr inbounds i64, i64* %cloptr10307, i64 3                  ; &eptr10311[3]
  %eptr10312 = getelementptr inbounds i64, i64* %cloptr10307, i64 4                  ; &eptr10312[4]
  %eptr10313 = getelementptr inbounds i64, i64* %cloptr10307, i64 5                  ; &eptr10313[5]
  %eptr10314 = getelementptr inbounds i64, i64* %cloptr10307, i64 6                  ; &eptr10314[6]
  store i64 %cVJ$_37foldr1, i64* %eptr10309                                          ; *eptr10309 = %cVJ$_37foldr1
  store i64 %WS9$_37foldr, i64* %eptr10310                                           ; *eptr10310 = %WS9$_37foldr
  store i64 %jQI$f, i64* %eptr10311                                                  ; *eptr10311 = %jQI$f
  store i64 %TOj$_37map1, i64* %eptr10312                                            ; *eptr10312 = %TOj$_37map1
  store i64 %cont7203, i64* %eptr10313                                               ; *eptr10313 = %cont7203
  store i64 %twf$args, i64* %eptr10314                                               ; *eptr10314 = %twf$args
  %eptr10308 = getelementptr inbounds i64, i64* %cloptr10307, i64 0                  ; &cloptr10307[0]
  %f10315 = ptrtoint void(i64,i64,i64)* @lam8189 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10315, i64* %eptr10308                                                 ; store fptr
  %arg7920 = ptrtoint i64* %cloptr10307 to i64                                       ; closure cast; i64* -> i64
  %arg7919 = add i64 0, 0                                                            ; quoted ()
  %cloptr10316 = inttoptr i64 %arg7920 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10316)                                        ; assert function application
  %i0ptr10317 = getelementptr inbounds i64, i64* %cloptr10316, i64 0                 ; &cloptr10316[0]
  %f10319 = load i64, i64* %i0ptr10317, align 8                                      ; load; *i0ptr10317
  %fptr10318 = inttoptr i64 %f10319 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10318(i64 %arg7920, i64 %arg7919, i64 %retprim7223) ; tail call
  ret void
}


define void @lam8189(i64 %env8190, i64 %_957205, i64 %uF2$acc) {
  %envptr10320 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10321 = getelementptr inbounds i64, i64* %envptr10320, i64 6                ; &envptr10320[6]
  %twf$args = load i64, i64* %envptr10321, align 8                                   ; load; *envptr10321
  %envptr10322 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10323 = getelementptr inbounds i64, i64* %envptr10322, i64 5                ; &envptr10322[5]
  %cont7203 = load i64, i64* %envptr10323, align 8                                   ; load; *envptr10323
  %envptr10324 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10325 = getelementptr inbounds i64, i64* %envptr10324, i64 4                ; &envptr10324[4]
  %TOj$_37map1 = load i64, i64* %envptr10325, align 8                                ; load; *envptr10325
  %envptr10326 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10327 = getelementptr inbounds i64, i64* %envptr10326, i64 3                ; &envptr10326[3]
  %jQI$f = load i64, i64* %envptr10327, align 8                                      ; load; *envptr10327
  %envptr10328 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10329 = getelementptr inbounds i64, i64* %envptr10328, i64 2                ; &envptr10328[2]
  %WS9$_37foldr = load i64, i64* %envptr10329, align 8                               ; load; *envptr10329
  %envptr10330 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10331 = getelementptr inbounds i64, i64* %envptr10330, i64 1                ; &envptr10330[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10331, align 8                              ; load; *envptr10331
  %a6972 = call i64 @prim_cdr(i64 %twf$args)                                         ; call prim_cdr
  %retprim7222 = call i64 @prim_cdr(i64 %a6972)                                      ; call prim_cdr
  %cloptr10332 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10334 = getelementptr inbounds i64, i64* %cloptr10332, i64 1                  ; &eptr10334[1]
  %eptr10335 = getelementptr inbounds i64, i64* %cloptr10332, i64 2                  ; &eptr10335[2]
  %eptr10336 = getelementptr inbounds i64, i64* %cloptr10332, i64 3                  ; &eptr10336[3]
  %eptr10337 = getelementptr inbounds i64, i64* %cloptr10332, i64 4                  ; &eptr10337[4]
  %eptr10338 = getelementptr inbounds i64, i64* %cloptr10332, i64 5                  ; &eptr10338[5]
  %eptr10339 = getelementptr inbounds i64, i64* %cloptr10332, i64 6                  ; &eptr10339[6]
  store i64 %cVJ$_37foldr1, i64* %eptr10334                                          ; *eptr10334 = %cVJ$_37foldr1
  store i64 %WS9$_37foldr, i64* %eptr10335                                           ; *eptr10335 = %WS9$_37foldr
  store i64 %jQI$f, i64* %eptr10336                                                  ; *eptr10336 = %jQI$f
  store i64 %TOj$_37map1, i64* %eptr10337                                            ; *eptr10337 = %TOj$_37map1
  store i64 %uF2$acc, i64* %eptr10338                                                ; *eptr10338 = %uF2$acc
  store i64 %cont7203, i64* %eptr10339                                               ; *eptr10339 = %cont7203
  %eptr10333 = getelementptr inbounds i64, i64* %cloptr10332, i64 0                  ; &cloptr10332[0]
  %f10340 = ptrtoint void(i64,i64,i64)* @lam8187 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10340, i64* %eptr10333                                                 ; store fptr
  %arg7925 = ptrtoint i64* %cloptr10332 to i64                                       ; closure cast; i64* -> i64
  %arg7924 = add i64 0, 0                                                            ; quoted ()
  %cloptr10341 = inttoptr i64 %arg7925 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10341)                                        ; assert function application
  %i0ptr10342 = getelementptr inbounds i64, i64* %cloptr10341, i64 0                 ; &cloptr10341[0]
  %f10344 = load i64, i64* %i0ptr10342, align 8                                      ; load; *i0ptr10342
  %fptr10343 = inttoptr i64 %f10344 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10343(i64 %arg7925, i64 %arg7924, i64 %retprim7222) ; tail call
  ret void
}


define void @lam8187(i64 %env8188, i64 %_957206, i64 %qvq$lsts) {
  %envptr10345 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10346 = getelementptr inbounds i64, i64* %envptr10345, i64 6                ; &envptr10345[6]
  %cont7203 = load i64, i64* %envptr10346, align 8                                   ; load; *envptr10346
  %envptr10347 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10348 = getelementptr inbounds i64, i64* %envptr10347, i64 5                ; &envptr10347[5]
  %uF2$acc = load i64, i64* %envptr10348, align 8                                    ; load; *envptr10348
  %envptr10349 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10350 = getelementptr inbounds i64, i64* %envptr10349, i64 4                ; &envptr10349[4]
  %TOj$_37map1 = load i64, i64* %envptr10350, align 8                                ; load; *envptr10350
  %envptr10351 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10352 = getelementptr inbounds i64, i64* %envptr10351, i64 3                ; &envptr10351[3]
  %jQI$f = load i64, i64* %envptr10352, align 8                                      ; load; *envptr10352
  %envptr10353 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10354 = getelementptr inbounds i64, i64* %envptr10353, i64 2                ; &envptr10353[2]
  %WS9$_37foldr = load i64, i64* %envptr10354, align 8                               ; load; *envptr10354
  %envptr10355 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10356 = getelementptr inbounds i64, i64* %envptr10355, i64 1                ; &envptr10355[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10356, align 8                              ; load; *envptr10356
  %cloptr10357 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10359 = getelementptr inbounds i64, i64* %cloptr10357, i64 1                  ; &eptr10359[1]
  %eptr10360 = getelementptr inbounds i64, i64* %cloptr10357, i64 2                  ; &eptr10360[2]
  %eptr10361 = getelementptr inbounds i64, i64* %cloptr10357, i64 3                  ; &eptr10361[3]
  %eptr10362 = getelementptr inbounds i64, i64* %cloptr10357, i64 4                  ; &eptr10362[4]
  %eptr10363 = getelementptr inbounds i64, i64* %cloptr10357, i64 5                  ; &eptr10363[5]
  %eptr10364 = getelementptr inbounds i64, i64* %cloptr10357, i64 6                  ; &eptr10364[6]
  %eptr10365 = getelementptr inbounds i64, i64* %cloptr10357, i64 7                  ; &eptr10365[7]
  store i64 %cVJ$_37foldr1, i64* %eptr10359                                          ; *eptr10359 = %cVJ$_37foldr1
  store i64 %WS9$_37foldr, i64* %eptr10360                                           ; *eptr10360 = %WS9$_37foldr
  store i64 %jQI$f, i64* %eptr10361                                                  ; *eptr10361 = %jQI$f
  store i64 %qvq$lsts, i64* %eptr10362                                               ; *eptr10362 = %qvq$lsts
  store i64 %TOj$_37map1, i64* %eptr10363                                            ; *eptr10363 = %TOj$_37map1
  store i64 %uF2$acc, i64* %eptr10364                                                ; *eptr10364 = %uF2$acc
  store i64 %cont7203, i64* %eptr10365                                               ; *eptr10365 = %cont7203
  %eptr10358 = getelementptr inbounds i64, i64* %cloptr10357, i64 0                  ; &cloptr10357[0]
  %f10366 = ptrtoint void(i64,i64,i64)* @lam8185 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10366, i64* %eptr10358                                                 ; store fptr
  %arg7929 = ptrtoint i64* %cloptr10357 to i64                                       ; closure cast; i64* -> i64
  %cloptr10367 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10368 = getelementptr inbounds i64, i64* %cloptr10367, i64 0                  ; &cloptr10367[0]
  %f10369 = ptrtoint void(i64,i64,i64,i64)* @lam8164 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10369, i64* %eptr10368                                                 ; store fptr
  %arg7928 = ptrtoint i64* %cloptr10367 to i64                                       ; closure cast; i64* -> i64
  %arg7927 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10370 = inttoptr i64 %cVJ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10370)                                        ; assert function application
  %i0ptr10371 = getelementptr inbounds i64, i64* %cloptr10370, i64 0                 ; &cloptr10370[0]
  %f10373 = load i64, i64* %i0ptr10371, align 8                                      ; load; *i0ptr10371
  %fptr10372 = inttoptr i64 %f10373 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10372(i64 %cVJ$_37foldr1, i64 %arg7929, i64 %arg7928, i64 %arg7927, i64 %qvq$lsts); tail call
  ret void
}


define void @lam8185(i64 %env8186, i64 %_957207, i64 %a6973) {
  %envptr10374 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10375 = getelementptr inbounds i64, i64* %envptr10374, i64 7                ; &envptr10374[7]
  %cont7203 = load i64, i64* %envptr10375, align 8                                   ; load; *envptr10375
  %envptr10376 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10377 = getelementptr inbounds i64, i64* %envptr10376, i64 6                ; &envptr10376[6]
  %uF2$acc = load i64, i64* %envptr10377, align 8                                    ; load; *envptr10377
  %envptr10378 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10379 = getelementptr inbounds i64, i64* %envptr10378, i64 5                ; &envptr10378[5]
  %TOj$_37map1 = load i64, i64* %envptr10379, align 8                                ; load; *envptr10379
  %envptr10380 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10381 = getelementptr inbounds i64, i64* %envptr10380, i64 4                ; &envptr10380[4]
  %qvq$lsts = load i64, i64* %envptr10381, align 8                                   ; load; *envptr10381
  %envptr10382 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10383 = getelementptr inbounds i64, i64* %envptr10382, i64 3                ; &envptr10382[3]
  %jQI$f = load i64, i64* %envptr10383, align 8                                      ; load; *envptr10383
  %envptr10384 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10385 = getelementptr inbounds i64, i64* %envptr10384, i64 2                ; &envptr10384[2]
  %WS9$_37foldr = load i64, i64* %envptr10385, align 8                               ; load; *envptr10385
  %envptr10386 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10387 = getelementptr inbounds i64, i64* %envptr10386, i64 1                ; &envptr10386[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10387, align 8                              ; load; *envptr10387
  %cmp10388 = icmp eq i64 %a6973, 15                                                 ; false?
  br i1 %cmp10388, label %else10390, label %then10389                                ; if

then10389:
  %arg7932 = add i64 0, 0                                                            ; quoted ()
  %cloptr10391 = inttoptr i64 %cont7203 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10391)                                        ; assert function application
  %i0ptr10392 = getelementptr inbounds i64, i64* %cloptr10391, i64 0                 ; &cloptr10391[0]
  %f10394 = load i64, i64* %i0ptr10392, align 8                                      ; load; *i0ptr10392
  %fptr10393 = inttoptr i64 %f10394 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10393(i64 %cont7203, i64 %arg7932, i64 %uF2$acc)    ; tail call
  ret void

else10390:
  %cloptr10395 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10397 = getelementptr inbounds i64, i64* %cloptr10395, i64 1                  ; &eptr10397[1]
  %eptr10398 = getelementptr inbounds i64, i64* %cloptr10395, i64 2                  ; &eptr10398[2]
  %eptr10399 = getelementptr inbounds i64, i64* %cloptr10395, i64 3                  ; &eptr10399[3]
  %eptr10400 = getelementptr inbounds i64, i64* %cloptr10395, i64 4                  ; &eptr10400[4]
  %eptr10401 = getelementptr inbounds i64, i64* %cloptr10395, i64 5                  ; &eptr10401[5]
  %eptr10402 = getelementptr inbounds i64, i64* %cloptr10395, i64 6                  ; &eptr10402[6]
  %eptr10403 = getelementptr inbounds i64, i64* %cloptr10395, i64 7                  ; &eptr10403[7]
  store i64 %cVJ$_37foldr1, i64* %eptr10397                                          ; *eptr10397 = %cVJ$_37foldr1
  store i64 %WS9$_37foldr, i64* %eptr10398                                           ; *eptr10398 = %WS9$_37foldr
  store i64 %jQI$f, i64* %eptr10399                                                  ; *eptr10399 = %jQI$f
  store i64 %qvq$lsts, i64* %eptr10400                                               ; *eptr10400 = %qvq$lsts
  store i64 %TOj$_37map1, i64* %eptr10401                                            ; *eptr10401 = %TOj$_37map1
  store i64 %uF2$acc, i64* %eptr10402                                                ; *eptr10402 = %uF2$acc
  store i64 %cont7203, i64* %eptr10403                                               ; *eptr10403 = %cont7203
  %eptr10396 = getelementptr inbounds i64, i64* %cloptr10395, i64 0                  ; &cloptr10395[0]
  %f10404 = ptrtoint void(i64,i64,i64)* @lam8183 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10404, i64* %eptr10396                                                 ; store fptr
  %arg7936 = ptrtoint i64* %cloptr10395 to i64                                       ; closure cast; i64* -> i64
  %cloptr10405 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10406 = getelementptr inbounds i64, i64* %cloptr10405, i64 0                  ; &cloptr10405[0]
  %f10407 = ptrtoint void(i64,i64,i64)* @lam8168 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10407, i64* %eptr10406                                                 ; store fptr
  %arg7935 = ptrtoint i64* %cloptr10405 to i64                                       ; closure cast; i64* -> i64
  %cloptr10408 = inttoptr i64 %TOj$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10408)                                        ; assert function application
  %i0ptr10409 = getelementptr inbounds i64, i64* %cloptr10408, i64 0                 ; &cloptr10408[0]
  %f10411 = load i64, i64* %i0ptr10409, align 8                                      ; load; *i0ptr10409
  %fptr10410 = inttoptr i64 %f10411 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10410(i64 %TOj$_37map1, i64 %arg7936, i64 %arg7935, i64 %qvq$lsts); tail call
  ret void
}


define void @lam8183(i64 %env8184, i64 %_957208, i64 %bIl$lsts_43) {
  %envptr10412 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10413 = getelementptr inbounds i64, i64* %envptr10412, i64 7                ; &envptr10412[7]
  %cont7203 = load i64, i64* %envptr10413, align 8                                   ; load; *envptr10413
  %envptr10414 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10415 = getelementptr inbounds i64, i64* %envptr10414, i64 6                ; &envptr10414[6]
  %uF2$acc = load i64, i64* %envptr10415, align 8                                    ; load; *envptr10415
  %envptr10416 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10417 = getelementptr inbounds i64, i64* %envptr10416, i64 5                ; &envptr10416[5]
  %TOj$_37map1 = load i64, i64* %envptr10417, align 8                                ; load; *envptr10417
  %envptr10418 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10419 = getelementptr inbounds i64, i64* %envptr10418, i64 4                ; &envptr10418[4]
  %qvq$lsts = load i64, i64* %envptr10419, align 8                                   ; load; *envptr10419
  %envptr10420 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10421 = getelementptr inbounds i64, i64* %envptr10420, i64 3                ; &envptr10420[3]
  %jQI$f = load i64, i64* %envptr10421, align 8                                      ; load; *envptr10421
  %envptr10422 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10423 = getelementptr inbounds i64, i64* %envptr10422, i64 2                ; &envptr10422[2]
  %WS9$_37foldr = load i64, i64* %envptr10423, align 8                               ; load; *envptr10423
  %envptr10424 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10425 = getelementptr inbounds i64, i64* %envptr10424, i64 1                ; &envptr10424[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10425, align 8                              ; load; *envptr10425
  %cloptr10426 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10428 = getelementptr inbounds i64, i64* %cloptr10426, i64 1                  ; &eptr10428[1]
  %eptr10429 = getelementptr inbounds i64, i64* %cloptr10426, i64 2                  ; &eptr10429[2]
  %eptr10430 = getelementptr inbounds i64, i64* %cloptr10426, i64 3                  ; &eptr10430[3]
  %eptr10431 = getelementptr inbounds i64, i64* %cloptr10426, i64 4                  ; &eptr10431[4]
  %eptr10432 = getelementptr inbounds i64, i64* %cloptr10426, i64 5                  ; &eptr10432[5]
  %eptr10433 = getelementptr inbounds i64, i64* %cloptr10426, i64 6                  ; &eptr10433[6]
  store i64 %cVJ$_37foldr1, i64* %eptr10428                                          ; *eptr10428 = %cVJ$_37foldr1
  store i64 %WS9$_37foldr, i64* %eptr10429                                           ; *eptr10429 = %WS9$_37foldr
  store i64 %jQI$f, i64* %eptr10430                                                  ; *eptr10430 = %jQI$f
  store i64 %bIl$lsts_43, i64* %eptr10431                                            ; *eptr10431 = %bIl$lsts_43
  store i64 %uF2$acc, i64* %eptr10432                                                ; *eptr10432 = %uF2$acc
  store i64 %cont7203, i64* %eptr10433                                               ; *eptr10433 = %cont7203
  %eptr10427 = getelementptr inbounds i64, i64* %cloptr10426, i64 0                  ; &cloptr10426[0]
  %f10434 = ptrtoint void(i64,i64,i64)* @lam8181 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10434, i64* %eptr10427                                                 ; store fptr
  %arg7940 = ptrtoint i64* %cloptr10426 to i64                                       ; closure cast; i64* -> i64
  %cloptr10435 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10436 = getelementptr inbounds i64, i64* %cloptr10435, i64 0                  ; &cloptr10435[0]
  %f10437 = ptrtoint void(i64,i64,i64)* @lam8171 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10437, i64* %eptr10436                                                 ; store fptr
  %arg7939 = ptrtoint i64* %cloptr10435 to i64                                       ; closure cast; i64* -> i64
  %cloptr10438 = inttoptr i64 %TOj$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10438)                                        ; assert function application
  %i0ptr10439 = getelementptr inbounds i64, i64* %cloptr10438, i64 0                 ; &cloptr10438[0]
  %f10441 = load i64, i64* %i0ptr10439, align 8                                      ; load; *i0ptr10439
  %fptr10440 = inttoptr i64 %f10441 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10440(i64 %TOj$_37map1, i64 %arg7940, i64 %arg7939, i64 %qvq$lsts); tail call
  ret void
}


define void @lam8181(i64 %env8182, i64 %_957209, i64 %dVv$vs) {
  %envptr10442 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10443 = getelementptr inbounds i64, i64* %envptr10442, i64 6                ; &envptr10442[6]
  %cont7203 = load i64, i64* %envptr10443, align 8                                   ; load; *envptr10443
  %envptr10444 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10445 = getelementptr inbounds i64, i64* %envptr10444, i64 5                ; &envptr10444[5]
  %uF2$acc = load i64, i64* %envptr10445, align 8                                    ; load; *envptr10445
  %envptr10446 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10447 = getelementptr inbounds i64, i64* %envptr10446, i64 4                ; &envptr10446[4]
  %bIl$lsts_43 = load i64, i64* %envptr10447, align 8                                ; load; *envptr10447
  %envptr10448 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10449 = getelementptr inbounds i64, i64* %envptr10448, i64 3                ; &envptr10448[3]
  %jQI$f = load i64, i64* %envptr10449, align 8                                      ; load; *envptr10449
  %envptr10450 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10451 = getelementptr inbounds i64, i64* %envptr10450, i64 2                ; &envptr10450[2]
  %WS9$_37foldr = load i64, i64* %envptr10451, align 8                               ; load; *envptr10451
  %envptr10452 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10453 = getelementptr inbounds i64, i64* %envptr10452, i64 1                ; &envptr10452[1]
  %cVJ$_37foldr1 = load i64, i64* %envptr10453, align 8                              ; load; *envptr10453
  %a6974 = call i64 @prim_cons(i64 %uF2$acc, i64 %bIl$lsts_43)                       ; call prim_cons
  %a6975 = call i64 @prim_cons(i64 %jQI$f, i64 %a6974)                               ; call prim_cons
  %cloptr10454 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10456 = getelementptr inbounds i64, i64* %cloptr10454, i64 1                  ; &eptr10456[1]
  %eptr10457 = getelementptr inbounds i64, i64* %cloptr10454, i64 2                  ; &eptr10457[2]
  %eptr10458 = getelementptr inbounds i64, i64* %cloptr10454, i64 3                  ; &eptr10458[3]
  %eptr10459 = getelementptr inbounds i64, i64* %cloptr10454, i64 4                  ; &eptr10459[4]
  store i64 %dVv$vs, i64* %eptr10456                                                 ; *eptr10456 = %dVv$vs
  store i64 %cVJ$_37foldr1, i64* %eptr10457                                          ; *eptr10457 = %cVJ$_37foldr1
  store i64 %jQI$f, i64* %eptr10458                                                  ; *eptr10458 = %jQI$f
  store i64 %cont7203, i64* %eptr10459                                               ; *eptr10459 = %cont7203
  %eptr10455 = getelementptr inbounds i64, i64* %cloptr10454, i64 0                  ; &cloptr10454[0]
  %f10460 = ptrtoint void(i64,i64,i64)* @lam8179 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10460, i64* %eptr10455                                                 ; store fptr
  %arg7947 = ptrtoint i64* %cloptr10454 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7215 = call i64 @prim_cons(i64 %arg7947, i64 %a6975)                     ; call prim_cons
  %cloptr10461 = inttoptr i64 %WS9$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10461)                                        ; assert function application
  %i0ptr10462 = getelementptr inbounds i64, i64* %cloptr10461, i64 0                 ; &cloptr10461[0]
  %f10464 = load i64, i64* %i0ptr10462, align 8                                      ; load; *i0ptr10462
  %fptr10463 = inttoptr i64 %f10464 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10463(i64 %WS9$_37foldr, i64 %cps_45lst7215)        ; tail call
  ret void
}


define void @lam8179(i64 %env8180, i64 %_957210, i64 %a6976) {
  %envptr10465 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10466 = getelementptr inbounds i64, i64* %envptr10465, i64 4                ; &envptr10465[4]
  %cont7203 = load i64, i64* %envptr10466, align 8                                   ; load; *envptr10466
  %envptr10467 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10468 = getelementptr inbounds i64, i64* %envptr10467, i64 3                ; &envptr10467[3]
  %jQI$f = load i64, i64* %envptr10468, align 8                                      ; load; *envptr10468
  %envptr10469 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10470 = getelementptr inbounds i64, i64* %envptr10469, i64 2                ; &envptr10469[2]
  %cVJ$_37foldr1 = load i64, i64* %envptr10470, align 8                              ; load; *envptr10470
  %envptr10471 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10472 = getelementptr inbounds i64, i64* %envptr10471, i64 1                ; &envptr10471[1]
  %dVv$vs = load i64, i64* %envptr10472, align 8                                     ; load; *envptr10472
  %arg7948 = add i64 0, 0                                                            ; quoted ()
  %a6977 = call i64 @prim_cons(i64 %a6976, i64 %arg7948)                             ; call prim_cons
  %cloptr10473 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10475 = getelementptr inbounds i64, i64* %cloptr10473, i64 1                  ; &eptr10475[1]
  %eptr10476 = getelementptr inbounds i64, i64* %cloptr10473, i64 2                  ; &eptr10476[2]
  store i64 %jQI$f, i64* %eptr10475                                                  ; *eptr10475 = %jQI$f
  store i64 %cont7203, i64* %eptr10476                                               ; *eptr10476 = %cont7203
  %eptr10474 = getelementptr inbounds i64, i64* %cloptr10473, i64 0                  ; &cloptr10473[0]
  %f10477 = ptrtoint void(i64,i64,i64)* @lam8176 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10477, i64* %eptr10474                                                 ; store fptr
  %arg7953 = ptrtoint i64* %cloptr10473 to i64                                       ; closure cast; i64* -> i64
  %cloptr10478 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10479 = getelementptr inbounds i64, i64* %cloptr10478, i64 0                  ; &cloptr10478[0]
  %f10480 = ptrtoint void(i64,i64,i64,i64)* @lam8174 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10480, i64* %eptr10479                                                 ; store fptr
  %arg7952 = ptrtoint i64* %cloptr10478 to i64                                       ; closure cast; i64* -> i64
  %cloptr10481 = inttoptr i64 %cVJ$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10481)                                        ; assert function application
  %i0ptr10482 = getelementptr inbounds i64, i64* %cloptr10481, i64 0                 ; &cloptr10481[0]
  %f10484 = load i64, i64* %i0ptr10482, align 8                                      ; load; *i0ptr10482
  %fptr10483 = inttoptr i64 %f10484 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10483(i64 %cVJ$_37foldr1, i64 %arg7953, i64 %arg7952, i64 %a6977, i64 %dVv$vs); tail call
  ret void
}


define void @lam8176(i64 %env8177, i64 %_957211, i64 %a6978) {
  %envptr10485 = inttoptr i64 %env8177 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10486 = getelementptr inbounds i64, i64* %envptr10485, i64 2                ; &envptr10485[2]
  %cont7203 = load i64, i64* %envptr10486, align 8                                   ; load; *envptr10486
  %envptr10487 = inttoptr i64 %env8177 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10488 = getelementptr inbounds i64, i64* %envptr10487, i64 1                ; &envptr10487[1]
  %jQI$f = load i64, i64* %envptr10488, align 8                                      ; load; *envptr10488
  %cps_45lst7212 = call i64 @prim_cons(i64 %cont7203, i64 %a6978)                    ; call prim_cons
  %cloptr10489 = inttoptr i64 %jQI$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10489)                                        ; assert function application
  %i0ptr10490 = getelementptr inbounds i64, i64* %cloptr10489, i64 0                 ; &cloptr10489[0]
  %f10492 = load i64, i64* %i0ptr10490, align 8                                      ; load; *i0ptr10490
  %fptr10491 = inttoptr i64 %f10492 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10491(i64 %jQI$f, i64 %cps_45lst7212)               ; tail call
  ret void
}


define void @lam8174(i64 %env8175, i64 %cont7213, i64 %RAC$a, i64 %FgT$b) {
  %retprim7214 = call i64 @prim_cons(i64 %RAC$a, i64 %FgT$b)                         ; call prim_cons
  %arg7960 = add i64 0, 0                                                            ; quoted ()
  %cloptr10493 = inttoptr i64 %cont7213 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10493)                                        ; assert function application
  %i0ptr10494 = getelementptr inbounds i64, i64* %cloptr10493, i64 0                 ; &cloptr10493[0]
  %f10496 = load i64, i64* %i0ptr10494, align 8                                      ; load; *i0ptr10494
  %fptr10495 = inttoptr i64 %f10496 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10495(i64 %cont7213, i64 %arg7960, i64 %retprim7214); tail call
  ret void
}


define void @lam8171(i64 %env8172, i64 %cont7216, i64 %va1$x) {
  %retprim7217 = call i64 @prim_car(i64 %va1$x)                                      ; call prim_car
  %arg7964 = add i64 0, 0                                                            ; quoted ()
  %cloptr10497 = inttoptr i64 %cont7216 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10497)                                        ; assert function application
  %i0ptr10498 = getelementptr inbounds i64, i64* %cloptr10497, i64 0                 ; &cloptr10497[0]
  %f10500 = load i64, i64* %i0ptr10498, align 8                                      ; load; *i0ptr10498
  %fptr10499 = inttoptr i64 %f10500 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10499(i64 %cont7216, i64 %arg7964, i64 %retprim7217); tail call
  ret void
}


define void @lam8168(i64 %env8169, i64 %cont7218, i64 %WZm$x) {
  %retprim7219 = call i64 @prim_cdr(i64 %WZm$x)                                      ; call prim_cdr
  %arg7968 = add i64 0, 0                                                            ; quoted ()
  %cloptr10501 = inttoptr i64 %cont7218 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10501)                                        ; assert function application
  %i0ptr10502 = getelementptr inbounds i64, i64* %cloptr10501, i64 0                 ; &cloptr10501[0]
  %f10504 = load i64, i64* %i0ptr10502, align 8                                      ; load; *i0ptr10502
  %fptr10503 = inttoptr i64 %f10504 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10503(i64 %cont7218, i64 %arg7968, i64 %retprim7219); tail call
  ret void
}


define void @lam8164(i64 %env8165, i64 %cont7220, i64 %lLl$lst, i64 %PH1$b) {
  %cmp10505 = icmp eq i64 %PH1$b, 15                                                 ; false?
  br i1 %cmp10505, label %else10507, label %then10506                                ; if

then10506:
  %arg7971 = add i64 0, 0                                                            ; quoted ()
  %cloptr10508 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10508)                                        ; assert function application
  %i0ptr10509 = getelementptr inbounds i64, i64* %cloptr10508, i64 0                 ; &cloptr10508[0]
  %f10511 = load i64, i64* %i0ptr10509, align 8                                      ; load; *i0ptr10509
  %fptr10510 = inttoptr i64 %f10511 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10510(i64 %cont7220, i64 %arg7971, i64 %PH1$b)      ; tail call
  ret void

else10507:
  %retprim7221 = call i64 @prim_null_63(i64 %lLl$lst)                                ; call prim_null_63
  %arg7975 = add i64 0, 0                                                            ; quoted ()
  %cloptr10512 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10512)                                        ; assert function application
  %i0ptr10513 = getelementptr inbounds i64, i64* %cloptr10512, i64 0                 ; &cloptr10512[0]
  %f10515 = load i64, i64* %i0ptr10513, align 8                                      ; load; *i0ptr10513
  %fptr10514 = inttoptr i64 %f10515 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10514(i64 %cont7220, i64 %arg7975, i64 %retprim7221); tail call
  ret void
}


define void @lam8157(i64 %env8158, i64 %cont7224, i64 %Z9k$_37foldl1) {
  %arg7978 = add i64 0, 0                                                            ; quoted ()
  %cloptr10516 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10518 = getelementptr inbounds i64, i64* %cloptr10516, i64 1                  ; &eptr10518[1]
  store i64 %Z9k$_37foldl1, i64* %eptr10518                                          ; *eptr10518 = %Z9k$_37foldl1
  %eptr10517 = getelementptr inbounds i64, i64* %cloptr10516, i64 0                  ; &cloptr10516[0]
  %f10519 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8154 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10519, i64* %eptr10517                                                 ; store fptr
  %arg7977 = ptrtoint i64* %cloptr10516 to i64                                       ; closure cast; i64* -> i64
  %cloptr10520 = inttoptr i64 %cont7224 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10520)                                        ; assert function application
  %i0ptr10521 = getelementptr inbounds i64, i64* %cloptr10520, i64 0                 ; &cloptr10520[0]
  %f10523 = load i64, i64* %i0ptr10521, align 8                                      ; load; *i0ptr10521
  %fptr10522 = inttoptr i64 %f10523 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10522(i64 %cont7224, i64 %arg7978, i64 %arg7977)    ; tail call
  ret void
}


define void @lam8154(i64 %env8155, i64 %cont7225, i64 %ar2$f, i64 %KA3$acc, i64 %Fo0$lst) {
  %envptr10524 = inttoptr i64 %env8155 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10525 = getelementptr inbounds i64, i64* %envptr10524, i64 1                ; &envptr10524[1]
  %Z9k$_37foldl1 = load i64, i64* %envptr10525, align 8                              ; load; *envptr10525
  %a6965 = call i64 @prim_null_63(i64 %Fo0$lst)                                      ; call prim_null_63
  %cmp10526 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp10526, label %else10528, label %then10527                                ; if

then10527:
  %arg7982 = add i64 0, 0                                                            ; quoted ()
  %cloptr10529 = inttoptr i64 %cont7225 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10529)                                        ; assert function application
  %i0ptr10530 = getelementptr inbounds i64, i64* %cloptr10529, i64 0                 ; &cloptr10529[0]
  %f10532 = load i64, i64* %i0ptr10530, align 8                                      ; load; *i0ptr10530
  %fptr10531 = inttoptr i64 %f10532 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10531(i64 %cont7225, i64 %arg7982, i64 %KA3$acc)    ; tail call
  ret void

else10528:
  %a6966 = call i64 @prim_car(i64 %Fo0$lst)                                          ; call prim_car
  %cloptr10533 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10535 = getelementptr inbounds i64, i64* %cloptr10533, i64 1                  ; &eptr10535[1]
  %eptr10536 = getelementptr inbounds i64, i64* %cloptr10533, i64 2                  ; &eptr10536[2]
  %eptr10537 = getelementptr inbounds i64, i64* %cloptr10533, i64 3                  ; &eptr10537[3]
  %eptr10538 = getelementptr inbounds i64, i64* %cloptr10533, i64 4                  ; &eptr10538[4]
  store i64 %Z9k$_37foldl1, i64* %eptr10535                                          ; *eptr10535 = %Z9k$_37foldl1
  store i64 %ar2$f, i64* %eptr10536                                                  ; *eptr10536 = %ar2$f
  store i64 %Fo0$lst, i64* %eptr10537                                                ; *eptr10537 = %Fo0$lst
  store i64 %cont7225, i64* %eptr10538                                               ; *eptr10538 = %cont7225
  %eptr10534 = getelementptr inbounds i64, i64* %cloptr10533, i64 0                  ; &cloptr10533[0]
  %f10539 = ptrtoint void(i64,i64,i64)* @lam8152 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10539, i64* %eptr10534                                                 ; store fptr
  %arg7987 = ptrtoint i64* %cloptr10533 to i64                                       ; closure cast; i64* -> i64
  %cloptr10540 = inttoptr i64 %ar2$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10540)                                        ; assert function application
  %i0ptr10541 = getelementptr inbounds i64, i64* %cloptr10540, i64 0                 ; &cloptr10540[0]
  %f10543 = load i64, i64* %i0ptr10541, align 8                                      ; load; *i0ptr10541
  %fptr10542 = inttoptr i64 %f10543 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10542(i64 %ar2$f, i64 %arg7987, i64 %a6966, i64 %KA3$acc); tail call
  ret void
}


define void @lam8152(i64 %env8153, i64 %_957226, i64 %a6967) {
  %envptr10544 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10545 = getelementptr inbounds i64, i64* %envptr10544, i64 4                ; &envptr10544[4]
  %cont7225 = load i64, i64* %envptr10545, align 8                                   ; load; *envptr10545
  %envptr10546 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10547 = getelementptr inbounds i64, i64* %envptr10546, i64 3                ; &envptr10546[3]
  %Fo0$lst = load i64, i64* %envptr10547, align 8                                    ; load; *envptr10547
  %envptr10548 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10549 = getelementptr inbounds i64, i64* %envptr10548, i64 2                ; &envptr10548[2]
  %ar2$f = load i64, i64* %envptr10549, align 8                                      ; load; *envptr10549
  %envptr10550 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10551 = getelementptr inbounds i64, i64* %envptr10550, i64 1                ; &envptr10550[1]
  %Z9k$_37foldl1 = load i64, i64* %envptr10551, align 8                              ; load; *envptr10551
  %a6968 = call i64 @prim_cdr(i64 %Fo0$lst)                                          ; call prim_cdr
  %cloptr10552 = inttoptr i64 %Z9k$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10552)                                        ; assert function application
  %i0ptr10553 = getelementptr inbounds i64, i64* %cloptr10552, i64 0                 ; &cloptr10552[0]
  %f10555 = load i64, i64* %i0ptr10553, align 8                                      ; load; *i0ptr10553
  %fptr10554 = inttoptr i64 %f10555 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10554(i64 %Z9k$_37foldl1, i64 %cont7225, i64 %ar2$f, i64 %a6967, i64 %a6968); tail call
  ret void
}


define void @lam8149(i64 %env8150, i64 %cont7227, i64 %ZI5$_37length) {
  %arg7996 = add i64 0, 0                                                            ; quoted ()
  %cloptr10556 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10558 = getelementptr inbounds i64, i64* %cloptr10556, i64 1                  ; &eptr10558[1]
  store i64 %ZI5$_37length, i64* %eptr10558                                          ; *eptr10558 = %ZI5$_37length
  %eptr10557 = getelementptr inbounds i64, i64* %cloptr10556, i64 0                  ; &cloptr10556[0]
  %f10559 = ptrtoint void(i64,i64,i64)* @lam8146 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10559, i64* %eptr10557                                                 ; store fptr
  %arg7995 = ptrtoint i64* %cloptr10556 to i64                                       ; closure cast; i64* -> i64
  %cloptr10560 = inttoptr i64 %cont7227 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10560)                                        ; assert function application
  %i0ptr10561 = getelementptr inbounds i64, i64* %cloptr10560, i64 0                 ; &cloptr10560[0]
  %f10563 = load i64, i64* %i0ptr10561, align 8                                      ; load; *i0ptr10561
  %fptr10562 = inttoptr i64 %f10563 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10562(i64 %cont7227, i64 %arg7996, i64 %arg7995)    ; tail call
  ret void
}


define void @lam8146(i64 %env8147, i64 %cont7228, i64 %sSA$lst) {
  %envptr10564 = inttoptr i64 %env8147 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10565 = getelementptr inbounds i64, i64* %envptr10564, i64 1                ; &envptr10564[1]
  %ZI5$_37length = load i64, i64* %envptr10565, align 8                              ; load; *envptr10565
  %a6962 = call i64 @prim_null_63(i64 %sSA$lst)                                      ; call prim_null_63
  %cmp10566 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp10566, label %else10568, label %then10567                                ; if

then10567:
  %arg8000 = add i64 0, 0                                                            ; quoted ()
  %arg7999 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10569 = inttoptr i64 %cont7228 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10569)                                        ; assert function application
  %i0ptr10570 = getelementptr inbounds i64, i64* %cloptr10569, i64 0                 ; &cloptr10569[0]
  %f10572 = load i64, i64* %i0ptr10570, align 8                                      ; load; *i0ptr10570
  %fptr10571 = inttoptr i64 %f10572 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10571(i64 %cont7228, i64 %arg8000, i64 %arg7999)    ; tail call
  ret void

else10568:
  %a6963 = call i64 @prim_cdr(i64 %sSA$lst)                                          ; call prim_cdr
  %cloptr10573 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10575 = getelementptr inbounds i64, i64* %cloptr10573, i64 1                  ; &eptr10575[1]
  store i64 %cont7228, i64* %eptr10575                                               ; *eptr10575 = %cont7228
  %eptr10574 = getelementptr inbounds i64, i64* %cloptr10573, i64 0                  ; &cloptr10573[0]
  %f10576 = ptrtoint void(i64,i64,i64)* @lam8144 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10576, i64* %eptr10574                                                 ; store fptr
  %arg8004 = ptrtoint i64* %cloptr10573 to i64                                       ; closure cast; i64* -> i64
  %cloptr10577 = inttoptr i64 %ZI5$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10577)                                        ; assert function application
  %i0ptr10578 = getelementptr inbounds i64, i64* %cloptr10577, i64 0                 ; &cloptr10577[0]
  %f10580 = load i64, i64* %i0ptr10578, align 8                                      ; load; *i0ptr10578
  %fptr10579 = inttoptr i64 %f10580 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10579(i64 %ZI5$_37length, i64 %arg8004, i64 %a6963) ; tail call
  ret void
}


define void @lam8144(i64 %env8145, i64 %_957229, i64 %a6964) {
  %envptr10581 = inttoptr i64 %env8145 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10582 = getelementptr inbounds i64, i64* %envptr10581, i64 1                ; &envptr10581[1]
  %cont7228 = load i64, i64* %envptr10582, align 8                                   ; load; *envptr10582
  %arg8007 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7230 = call i64 @prim__43(i64 %arg8007, i64 %a6964)                        ; call prim__43
  %arg8009 = add i64 0, 0                                                            ; quoted ()
  %cloptr10583 = inttoptr i64 %cont7228 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10583)                                        ; assert function application
  %i0ptr10584 = getelementptr inbounds i64, i64* %cloptr10583, i64 0                 ; &cloptr10583[0]
  %f10586 = load i64, i64* %i0ptr10584, align 8                                      ; load; *i0ptr10584
  %fptr10585 = inttoptr i64 %f10586 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10585(i64 %cont7228, i64 %arg8009, i64 %retprim7230); tail call
  ret void
}


define void @lam8138(i64 %env8139, i64 %cont7231, i64 %lHQ$_37take) {
  %arg8012 = add i64 0, 0                                                            ; quoted ()
  %cloptr10587 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10589 = getelementptr inbounds i64, i64* %cloptr10587, i64 1                  ; &eptr10589[1]
  store i64 %lHQ$_37take, i64* %eptr10589                                            ; *eptr10589 = %lHQ$_37take
  %eptr10588 = getelementptr inbounds i64, i64* %cloptr10587, i64 0                  ; &cloptr10587[0]
  %f10590 = ptrtoint void(i64,i64,i64,i64)* @lam8135 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10590, i64* %eptr10588                                                 ; store fptr
  %arg8011 = ptrtoint i64* %cloptr10587 to i64                                       ; closure cast; i64* -> i64
  %cloptr10591 = inttoptr i64 %cont7231 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10591)                                        ; assert function application
  %i0ptr10592 = getelementptr inbounds i64, i64* %cloptr10591, i64 0                 ; &cloptr10591[0]
  %f10594 = load i64, i64* %i0ptr10592, align 8                                      ; load; *i0ptr10592
  %fptr10593 = inttoptr i64 %f10594 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10593(i64 %cont7231, i64 %arg8012, i64 %arg8011)    ; tail call
  ret void
}


define void @lam8135(i64 %env8136, i64 %cont7232, i64 %kzy$lst, i64 %E0u$n) {
  %envptr10595 = inttoptr i64 %env8136 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10596 = getelementptr inbounds i64, i64* %envptr10595, i64 1                ; &envptr10595[1]
  %lHQ$_37take = load i64, i64* %envptr10596, align 8                                ; load; *envptr10596
  %arg8014 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim__61(i64 %E0u$n, i64 %arg8014)                              ; call prim__61
  %cmp10597 = icmp eq i64 %a6956, 15                                                 ; false?
  br i1 %cmp10597, label %else10599, label %then10598                                ; if

then10598:
  %arg8017 = add i64 0, 0                                                            ; quoted ()
  %arg8016 = add i64 0, 0                                                            ; quoted ()
  %cloptr10600 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10600)                                        ; assert function application
  %i0ptr10601 = getelementptr inbounds i64, i64* %cloptr10600, i64 0                 ; &cloptr10600[0]
  %f10603 = load i64, i64* %i0ptr10601, align 8                                      ; load; *i0ptr10601
  %fptr10602 = inttoptr i64 %f10603 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10602(i64 %cont7232, i64 %arg8017, i64 %arg8016)    ; tail call
  ret void

else10599:
  %a6957 = call i64 @prim_null_63(i64 %kzy$lst)                                      ; call prim_null_63
  %cmp10604 = icmp eq i64 %a6957, 15                                                 ; false?
  br i1 %cmp10604, label %else10606, label %then10605                                ; if

then10605:
  %arg8021 = add i64 0, 0                                                            ; quoted ()
  %arg8020 = add i64 0, 0                                                            ; quoted ()
  %cloptr10607 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10607)                                        ; assert function application
  %i0ptr10608 = getelementptr inbounds i64, i64* %cloptr10607, i64 0                 ; &cloptr10607[0]
  %f10610 = load i64, i64* %i0ptr10608, align 8                                      ; load; *i0ptr10608
  %fptr10609 = inttoptr i64 %f10610 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10609(i64 %cont7232, i64 %arg8021, i64 %arg8020)    ; tail call
  ret void

else10606:
  %a6958 = call i64 @prim_car(i64 %kzy$lst)                                          ; call prim_car
  %a6959 = call i64 @prim_cdr(i64 %kzy$lst)                                          ; call prim_cdr
  %arg8025 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6960 = call i64 @prim__45(i64 %E0u$n, i64 %arg8025)                              ; call prim__45
  %cloptr10611 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10613 = getelementptr inbounds i64, i64* %cloptr10611, i64 1                  ; &eptr10613[1]
  %eptr10614 = getelementptr inbounds i64, i64* %cloptr10611, i64 2                  ; &eptr10614[2]
  store i64 %a6958, i64* %eptr10613                                                  ; *eptr10613 = %a6958
  store i64 %cont7232, i64* %eptr10614                                               ; *eptr10614 = %cont7232
  %eptr10612 = getelementptr inbounds i64, i64* %cloptr10611, i64 0                  ; &cloptr10611[0]
  %f10615 = ptrtoint void(i64,i64,i64)* @lam8131 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10615, i64* %eptr10612                                                 ; store fptr
  %arg8029 = ptrtoint i64* %cloptr10611 to i64                                       ; closure cast; i64* -> i64
  %cloptr10616 = inttoptr i64 %lHQ$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10616)                                        ; assert function application
  %i0ptr10617 = getelementptr inbounds i64, i64* %cloptr10616, i64 0                 ; &cloptr10616[0]
  %f10619 = load i64, i64* %i0ptr10617, align 8                                      ; load; *i0ptr10617
  %fptr10618 = inttoptr i64 %f10619 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10618(i64 %lHQ$_37take, i64 %arg8029, i64 %a6959, i64 %a6960); tail call
  ret void
}


define void @lam8131(i64 %env8132, i64 %_957233, i64 %a6961) {
  %envptr10620 = inttoptr i64 %env8132 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10621 = getelementptr inbounds i64, i64* %envptr10620, i64 2                ; &envptr10620[2]
  %cont7232 = load i64, i64* %envptr10621, align 8                                   ; load; *envptr10621
  %envptr10622 = inttoptr i64 %env8132 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10623 = getelementptr inbounds i64, i64* %envptr10622, i64 1                ; &envptr10622[1]
  %a6958 = load i64, i64* %envptr10623, align 8                                      ; load; *envptr10623
  %retprim7234 = call i64 @prim_cons(i64 %a6958, i64 %a6961)                         ; call prim_cons
  %arg8034 = add i64 0, 0                                                            ; quoted ()
  %cloptr10624 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10624)                                        ; assert function application
  %i0ptr10625 = getelementptr inbounds i64, i64* %cloptr10624, i64 0                 ; &cloptr10624[0]
  %f10627 = load i64, i64* %i0ptr10625, align 8                                      ; load; *i0ptr10625
  %fptr10626 = inttoptr i64 %f10627 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10626(i64 %cont7232, i64 %arg8034, i64 %retprim7234); tail call
  ret void
}


define void @lam8124(i64 %env8125, i64 %cont7235, i64 %Tn6$_37map) {
  %arg8037 = add i64 0, 0                                                            ; quoted ()
  %cloptr10628 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10630 = getelementptr inbounds i64, i64* %cloptr10628, i64 1                  ; &eptr10630[1]
  store i64 %Tn6$_37map, i64* %eptr10630                                             ; *eptr10630 = %Tn6$_37map
  %eptr10629 = getelementptr inbounds i64, i64* %cloptr10628, i64 0                  ; &cloptr10628[0]
  %f10631 = ptrtoint void(i64,i64,i64,i64)* @lam8121 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10631, i64* %eptr10629                                                 ; store fptr
  %arg8036 = ptrtoint i64* %cloptr10628 to i64                                       ; closure cast; i64* -> i64
  %cloptr10632 = inttoptr i64 %cont7235 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10632)                                        ; assert function application
  %i0ptr10633 = getelementptr inbounds i64, i64* %cloptr10632, i64 0                 ; &cloptr10632[0]
  %f10635 = load i64, i64* %i0ptr10633, align 8                                      ; load; *i0ptr10633
  %fptr10634 = inttoptr i64 %f10635 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10634(i64 %cont7235, i64 %arg8037, i64 %arg8036)    ; tail call
  ret void
}


define void @lam8121(i64 %env8122, i64 %cont7236, i64 %JxA$f, i64 %y49$lst) {
  %envptr10636 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10637 = getelementptr inbounds i64, i64* %envptr10636, i64 1                ; &envptr10636[1]
  %Tn6$_37map = load i64, i64* %envptr10637, align 8                                 ; load; *envptr10637
  %a6951 = call i64 @prim_null_63(i64 %y49$lst)                                      ; call prim_null_63
  %cmp10638 = icmp eq i64 %a6951, 15                                                 ; false?
  br i1 %cmp10638, label %else10640, label %then10639                                ; if

then10639:
  %arg8041 = add i64 0, 0                                                            ; quoted ()
  %arg8040 = add i64 0, 0                                                            ; quoted ()
  %cloptr10641 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10641)                                        ; assert function application
  %i0ptr10642 = getelementptr inbounds i64, i64* %cloptr10641, i64 0                 ; &cloptr10641[0]
  %f10644 = load i64, i64* %i0ptr10642, align 8                                      ; load; *i0ptr10642
  %fptr10643 = inttoptr i64 %f10644 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10643(i64 %cont7236, i64 %arg8041, i64 %arg8040)    ; tail call
  ret void

else10640:
  %a6952 = call i64 @prim_car(i64 %y49$lst)                                          ; call prim_car
  %cloptr10645 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10647 = getelementptr inbounds i64, i64* %cloptr10645, i64 1                  ; &eptr10647[1]
  %eptr10648 = getelementptr inbounds i64, i64* %cloptr10645, i64 2                  ; &eptr10648[2]
  %eptr10649 = getelementptr inbounds i64, i64* %cloptr10645, i64 3                  ; &eptr10649[3]
  %eptr10650 = getelementptr inbounds i64, i64* %cloptr10645, i64 4                  ; &eptr10650[4]
  store i64 %Tn6$_37map, i64* %eptr10647                                             ; *eptr10647 = %Tn6$_37map
  store i64 %JxA$f, i64* %eptr10648                                                  ; *eptr10648 = %JxA$f
  store i64 %y49$lst, i64* %eptr10649                                                ; *eptr10649 = %y49$lst
  store i64 %cont7236, i64* %eptr10650                                               ; *eptr10650 = %cont7236
  %eptr10646 = getelementptr inbounds i64, i64* %cloptr10645, i64 0                  ; &cloptr10645[0]
  %f10651 = ptrtoint void(i64,i64,i64)* @lam8119 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10651, i64* %eptr10646                                                 ; store fptr
  %arg8045 = ptrtoint i64* %cloptr10645 to i64                                       ; closure cast; i64* -> i64
  %cloptr10652 = inttoptr i64 %JxA$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10652)                                        ; assert function application
  %i0ptr10653 = getelementptr inbounds i64, i64* %cloptr10652, i64 0                 ; &cloptr10652[0]
  %f10655 = load i64, i64* %i0ptr10653, align 8                                      ; load; *i0ptr10653
  %fptr10654 = inttoptr i64 %f10655 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10654(i64 %JxA$f, i64 %arg8045, i64 %a6952)         ; tail call
  ret void
}


define void @lam8119(i64 %env8120, i64 %_957237, i64 %a6953) {
  %envptr10656 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10657 = getelementptr inbounds i64, i64* %envptr10656, i64 4                ; &envptr10656[4]
  %cont7236 = load i64, i64* %envptr10657, align 8                                   ; load; *envptr10657
  %envptr10658 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10659 = getelementptr inbounds i64, i64* %envptr10658, i64 3                ; &envptr10658[3]
  %y49$lst = load i64, i64* %envptr10659, align 8                                    ; load; *envptr10659
  %envptr10660 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10661 = getelementptr inbounds i64, i64* %envptr10660, i64 2                ; &envptr10660[2]
  %JxA$f = load i64, i64* %envptr10661, align 8                                      ; load; *envptr10661
  %envptr10662 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10663 = getelementptr inbounds i64, i64* %envptr10662, i64 1                ; &envptr10662[1]
  %Tn6$_37map = load i64, i64* %envptr10663, align 8                                 ; load; *envptr10663
  %a6954 = call i64 @prim_cdr(i64 %y49$lst)                                          ; call prim_cdr
  %cloptr10664 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10666 = getelementptr inbounds i64, i64* %cloptr10664, i64 1                  ; &eptr10666[1]
  %eptr10667 = getelementptr inbounds i64, i64* %cloptr10664, i64 2                  ; &eptr10667[2]
  store i64 %a6953, i64* %eptr10666                                                  ; *eptr10666 = %a6953
  store i64 %cont7236, i64* %eptr10667                                               ; *eptr10667 = %cont7236
  %eptr10665 = getelementptr inbounds i64, i64* %cloptr10664, i64 0                  ; &cloptr10664[0]
  %f10668 = ptrtoint void(i64,i64,i64)* @lam8117 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10668, i64* %eptr10665                                                 ; store fptr
  %arg8050 = ptrtoint i64* %cloptr10664 to i64                                       ; closure cast; i64* -> i64
  %cloptr10669 = inttoptr i64 %Tn6$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10669)                                        ; assert function application
  %i0ptr10670 = getelementptr inbounds i64, i64* %cloptr10669, i64 0                 ; &cloptr10669[0]
  %f10672 = load i64, i64* %i0ptr10670, align 8                                      ; load; *i0ptr10670
  %fptr10671 = inttoptr i64 %f10672 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10671(i64 %Tn6$_37map, i64 %arg8050, i64 %JxA$f, i64 %a6954); tail call
  ret void
}


define void @lam8117(i64 %env8118, i64 %_957238, i64 %a6955) {
  %envptr10673 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10674 = getelementptr inbounds i64, i64* %envptr10673, i64 2                ; &envptr10673[2]
  %cont7236 = load i64, i64* %envptr10674, align 8                                   ; load; *envptr10674
  %envptr10675 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10676 = getelementptr inbounds i64, i64* %envptr10675, i64 1                ; &envptr10675[1]
  %a6953 = load i64, i64* %envptr10676, align 8                                      ; load; *envptr10676
  %retprim7239 = call i64 @prim_cons(i64 %a6953, i64 %a6955)                         ; call prim_cons
  %arg8055 = add i64 0, 0                                                            ; quoted ()
  %cloptr10677 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10677)                                        ; assert function application
  %i0ptr10678 = getelementptr inbounds i64, i64* %cloptr10677, i64 0                 ; &cloptr10677[0]
  %f10680 = load i64, i64* %i0ptr10678, align 8                                      ; load; *i0ptr10678
  %fptr10679 = inttoptr i64 %f10680 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10679(i64 %cont7236, i64 %arg8055, i64 %retprim7239); tail call
  ret void
}


define void @lam8112(i64 %env8113, i64 %cont7240, i64 %PA7$_37foldr1) {
  %arg8058 = add i64 0, 0                                                            ; quoted ()
  %cloptr10681 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10683 = getelementptr inbounds i64, i64* %cloptr10681, i64 1                  ; &eptr10683[1]
  store i64 %PA7$_37foldr1, i64* %eptr10683                                          ; *eptr10683 = %PA7$_37foldr1
  %eptr10682 = getelementptr inbounds i64, i64* %cloptr10681, i64 0                  ; &cloptr10681[0]
  %f10684 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8109 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10684, i64* %eptr10682                                                 ; store fptr
  %arg8057 = ptrtoint i64* %cloptr10681 to i64                                       ; closure cast; i64* -> i64
  %cloptr10685 = inttoptr i64 %cont7240 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10685)                                        ; assert function application
  %i0ptr10686 = getelementptr inbounds i64, i64* %cloptr10685, i64 0                 ; &cloptr10685[0]
  %f10688 = load i64, i64* %i0ptr10686, align 8                                      ; load; *i0ptr10686
  %fptr10687 = inttoptr i64 %f10688 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10687(i64 %cont7240, i64 %arg8058, i64 %arg8057)    ; tail call
  ret void
}


define void @lam8109(i64 %env8110, i64 %cont7241, i64 %GUz$f, i64 %pzP$acc, i64 %Duo$lst) {
  %envptr10689 = inttoptr i64 %env8110 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10690 = getelementptr inbounds i64, i64* %envptr10689, i64 1                ; &envptr10689[1]
  %PA7$_37foldr1 = load i64, i64* %envptr10690, align 8                              ; load; *envptr10690
  %a6947 = call i64 @prim_null_63(i64 %Duo$lst)                                      ; call prim_null_63
  %cmp10691 = icmp eq i64 %a6947, 15                                                 ; false?
  br i1 %cmp10691, label %else10693, label %then10692                                ; if

then10692:
  %arg8062 = add i64 0, 0                                                            ; quoted ()
  %cloptr10694 = inttoptr i64 %cont7241 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10694)                                        ; assert function application
  %i0ptr10695 = getelementptr inbounds i64, i64* %cloptr10694, i64 0                 ; &cloptr10694[0]
  %f10697 = load i64, i64* %i0ptr10695, align 8                                      ; load; *i0ptr10695
  %fptr10696 = inttoptr i64 %f10697 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10696(i64 %cont7241, i64 %arg8062, i64 %pzP$acc)    ; tail call
  ret void

else10693:
  %a6948 = call i64 @prim_car(i64 %Duo$lst)                                          ; call prim_car
  %a6949 = call i64 @prim_cdr(i64 %Duo$lst)                                          ; call prim_cdr
  %cloptr10698 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10700 = getelementptr inbounds i64, i64* %cloptr10698, i64 1                  ; &eptr10700[1]
  %eptr10701 = getelementptr inbounds i64, i64* %cloptr10698, i64 2                  ; &eptr10701[2]
  %eptr10702 = getelementptr inbounds i64, i64* %cloptr10698, i64 3                  ; &eptr10702[3]
  store i64 %a6948, i64* %eptr10700                                                  ; *eptr10700 = %a6948
  store i64 %GUz$f, i64* %eptr10701                                                  ; *eptr10701 = %GUz$f
  store i64 %cont7241, i64* %eptr10702                                               ; *eptr10702 = %cont7241
  %eptr10699 = getelementptr inbounds i64, i64* %cloptr10698, i64 0                  ; &cloptr10698[0]
  %f10703 = ptrtoint void(i64,i64,i64)* @lam8107 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10703, i64* %eptr10699                                                 ; store fptr
  %arg8069 = ptrtoint i64* %cloptr10698 to i64                                       ; closure cast; i64* -> i64
  %cloptr10704 = inttoptr i64 %PA7$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10704)                                        ; assert function application
  %i0ptr10705 = getelementptr inbounds i64, i64* %cloptr10704, i64 0                 ; &cloptr10704[0]
  %f10707 = load i64, i64* %i0ptr10705, align 8                                      ; load; *i0ptr10705
  %fptr10706 = inttoptr i64 %f10707 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10706(i64 %PA7$_37foldr1, i64 %arg8069, i64 %GUz$f, i64 %pzP$acc, i64 %a6949); tail call
  ret void
}


define void @lam8107(i64 %env8108, i64 %_957242, i64 %a6950) {
  %envptr10708 = inttoptr i64 %env8108 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10709 = getelementptr inbounds i64, i64* %envptr10708, i64 3                ; &envptr10708[3]
  %cont7241 = load i64, i64* %envptr10709, align 8                                   ; load; *envptr10709
  %envptr10710 = inttoptr i64 %env8108 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10711 = getelementptr inbounds i64, i64* %envptr10710, i64 2                ; &envptr10710[2]
  %GUz$f = load i64, i64* %envptr10711, align 8                                      ; load; *envptr10711
  %envptr10712 = inttoptr i64 %env8108 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10713 = getelementptr inbounds i64, i64* %envptr10712, i64 1                ; &envptr10712[1]
  %a6948 = load i64, i64* %envptr10713, align 8                                      ; load; *envptr10713
  %cloptr10714 = inttoptr i64 %GUz$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10714)                                        ; assert function application
  %i0ptr10715 = getelementptr inbounds i64, i64* %cloptr10714, i64 0                 ; &cloptr10714[0]
  %f10717 = load i64, i64* %i0ptr10715, align 8                                      ; load; *i0ptr10715
  %fptr10716 = inttoptr i64 %f10717 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10716(i64 %GUz$f, i64 %cont7241, i64 %a6948, i64 %a6950); tail call
  ret void
}


define void @lam8104(i64 %env8105, i64 %cont7244, i64 %Ej8$y) {
  %arg8076 = add i64 0, 0                                                            ; quoted ()
  %cloptr10718 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10720 = getelementptr inbounds i64, i64* %cloptr10718, i64 1                  ; &eptr10720[1]
  store i64 %Ej8$y, i64* %eptr10720                                                  ; *eptr10720 = %Ej8$y
  %eptr10719 = getelementptr inbounds i64, i64* %cloptr10718, i64 0                  ; &cloptr10718[0]
  %f10721 = ptrtoint void(i64,i64,i64)* @lam8101 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10721, i64* %eptr10719                                                 ; store fptr
  %arg8075 = ptrtoint i64* %cloptr10718 to i64                                       ; closure cast; i64* -> i64
  %cloptr10722 = inttoptr i64 %cont7244 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10722)                                        ; assert function application
  %i0ptr10723 = getelementptr inbounds i64, i64* %cloptr10722, i64 0                 ; &cloptr10722[0]
  %f10725 = load i64, i64* %i0ptr10723, align 8                                      ; load; *i0ptr10723
  %fptr10724 = inttoptr i64 %f10725 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10724(i64 %cont7244, i64 %arg8076, i64 %arg8075)    ; tail call
  ret void
}


define void @lam8101(i64 %env8102, i64 %cont7245, i64 %QTg$f) {
  %envptr10726 = inttoptr i64 %env8102 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10727 = getelementptr inbounds i64, i64* %envptr10726, i64 1                ; &envptr10726[1]
  %Ej8$y = load i64, i64* %envptr10727, align 8                                      ; load; *envptr10727
  %cloptr10728 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10730 = getelementptr inbounds i64, i64* %cloptr10728, i64 1                  ; &eptr10730[1]
  %eptr10731 = getelementptr inbounds i64, i64* %cloptr10728, i64 2                  ; &eptr10731[2]
  store i64 %QTg$f, i64* %eptr10730                                                  ; *eptr10730 = %QTg$f
  store i64 %Ej8$y, i64* %eptr10731                                                  ; *eptr10731 = %Ej8$y
  %eptr10729 = getelementptr inbounds i64, i64* %cloptr10728, i64 0                  ; &cloptr10728[0]
  %f10732 = ptrtoint void(i64,i64)* @lam8099 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10732, i64* %eptr10729                                                 ; store fptr
  %arg8078 = ptrtoint i64* %cloptr10728 to i64                                       ; closure cast; i64* -> i64
  %cloptr10733 = inttoptr i64 %QTg$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10733)                                        ; assert function application
  %i0ptr10734 = getelementptr inbounds i64, i64* %cloptr10733, i64 0                 ; &cloptr10733[0]
  %f10736 = load i64, i64* %i0ptr10734, align 8                                      ; load; *i0ptr10734
  %fptr10735 = inttoptr i64 %f10736 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10735(i64 %QTg$f, i64 %cont7245, i64 %arg8078)      ; tail call
  ret void
}


define void @lam8099(i64 %env8100, i64 %pQO$args7247) {
  %envptr10737 = inttoptr i64 %env8100 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10738 = getelementptr inbounds i64, i64* %envptr10737, i64 2                ; &envptr10737[2]
  %Ej8$y = load i64, i64* %envptr10738, align 8                                      ; load; *envptr10738
  %envptr10739 = inttoptr i64 %env8100 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10740 = getelementptr inbounds i64, i64* %envptr10739, i64 1                ; &envptr10739[1]
  %QTg$f = load i64, i64* %envptr10740, align 8                                      ; load; *envptr10740
  %cont7246 = call i64 @prim_car(i64 %pQO$args7247)                                  ; call prim_car
  %pQO$args = call i64 @prim_cdr(i64 %pQO$args7247)                                  ; call prim_cdr
  %cloptr10741 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10743 = getelementptr inbounds i64, i64* %cloptr10741, i64 1                  ; &eptr10743[1]
  %eptr10744 = getelementptr inbounds i64, i64* %cloptr10741, i64 2                  ; &eptr10744[2]
  %eptr10745 = getelementptr inbounds i64, i64* %cloptr10741, i64 3                  ; &eptr10745[3]
  store i64 %pQO$args, i64* %eptr10743                                               ; *eptr10743 = %pQO$args
  store i64 %QTg$f, i64* %eptr10744                                                  ; *eptr10744 = %QTg$f
  store i64 %cont7246, i64* %eptr10745                                               ; *eptr10745 = %cont7246
  %eptr10742 = getelementptr inbounds i64, i64* %cloptr10741, i64 0                  ; &cloptr10741[0]
  %f10746 = ptrtoint void(i64,i64,i64)* @lam8097 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10746, i64* %eptr10742                                                 ; store fptr
  %arg8084 = ptrtoint i64* %cloptr10741 to i64                                       ; closure cast; i64* -> i64
  %cloptr10747 = inttoptr i64 %Ej8$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10747)                                        ; assert function application
  %i0ptr10748 = getelementptr inbounds i64, i64* %cloptr10747, i64 0                 ; &cloptr10747[0]
  %f10750 = load i64, i64* %i0ptr10748, align 8                                      ; load; *i0ptr10748
  %fptr10749 = inttoptr i64 %f10750 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10749(i64 %Ej8$y, i64 %arg8084, i64 %Ej8$y)         ; tail call
  ret void
}


define void @lam8097(i64 %env8098, i64 %_957248, i64 %a6945) {
  %envptr10751 = inttoptr i64 %env8098 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10752 = getelementptr inbounds i64, i64* %envptr10751, i64 3                ; &envptr10751[3]
  %cont7246 = load i64, i64* %envptr10752, align 8                                   ; load; *envptr10752
  %envptr10753 = inttoptr i64 %env8098 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10754 = getelementptr inbounds i64, i64* %envptr10753, i64 2                ; &envptr10753[2]
  %QTg$f = load i64, i64* %envptr10754, align 8                                      ; load; *envptr10754
  %envptr10755 = inttoptr i64 %env8098 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10756 = getelementptr inbounds i64, i64* %envptr10755, i64 1                ; &envptr10755[1]
  %pQO$args = load i64, i64* %envptr10756, align 8                                   ; load; *envptr10756
  %cloptr10757 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10759 = getelementptr inbounds i64, i64* %cloptr10757, i64 1                  ; &eptr10759[1]
  %eptr10760 = getelementptr inbounds i64, i64* %cloptr10757, i64 2                  ; &eptr10760[2]
  store i64 %pQO$args, i64* %eptr10759                                               ; *eptr10759 = %pQO$args
  store i64 %cont7246, i64* %eptr10760                                               ; *eptr10760 = %cont7246
  %eptr10758 = getelementptr inbounds i64, i64* %cloptr10757, i64 0                  ; &cloptr10757[0]
  %f10761 = ptrtoint void(i64,i64,i64)* @lam8095 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10761, i64* %eptr10758                                                 ; store fptr
  %arg8087 = ptrtoint i64* %cloptr10757 to i64                                       ; closure cast; i64* -> i64
  %cloptr10762 = inttoptr i64 %a6945 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10762)                                        ; assert function application
  %i0ptr10763 = getelementptr inbounds i64, i64* %cloptr10762, i64 0                 ; &cloptr10762[0]
  %f10765 = load i64, i64* %i0ptr10763, align 8                                      ; load; *i0ptr10763
  %fptr10764 = inttoptr i64 %f10765 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10764(i64 %a6945, i64 %arg8087, i64 %QTg$f)         ; tail call
  ret void
}


define void @lam8095(i64 %env8096, i64 %_957249, i64 %a6946) {
  %envptr10766 = inttoptr i64 %env8096 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10767 = getelementptr inbounds i64, i64* %envptr10766, i64 2                ; &envptr10766[2]
  %cont7246 = load i64, i64* %envptr10767, align 8                                   ; load; *envptr10767
  %envptr10768 = inttoptr i64 %env8096 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10769 = getelementptr inbounds i64, i64* %envptr10768, i64 1                ; &envptr10768[1]
  %pQO$args = load i64, i64* %envptr10769, align 8                                   ; load; *envptr10769
  %cps_45lst7250 = call i64 @prim_cons(i64 %cont7246, i64 %pQO$args)                 ; call prim_cons
  %cloptr10770 = inttoptr i64 %a6946 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10770)                                        ; assert function application
  %i0ptr10771 = getelementptr inbounds i64, i64* %cloptr10770, i64 0                 ; &cloptr10770[0]
  %f10773 = load i64, i64* %i0ptr10771, align 8                                      ; load; *i0ptr10771
  %fptr10772 = inttoptr i64 %f10773 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10772(i64 %a6946, i64 %cps_45lst7250)               ; tail call
  ret void
}





@sym9356 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
@sym9425 = private unnamed_addr constant [2 x i8] c"a\00", align 8
