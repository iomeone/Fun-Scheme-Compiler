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
  %cloptr123860 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123861 = getelementptr inbounds i64, i64* %cloptr123860, i64 0                ; &cloptr123860[0]
  %f123862 = ptrtoint void(i64,i64,i64)* @lam123858 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123862, i64* %eptr123861                                               ; store fptr
  %arg122531 = ptrtoint i64* %cloptr123860 to i64                                    ; closure cast; i64* -> i64
  %cloptr123863 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123864 = getelementptr inbounds i64, i64* %cloptr123863, i64 0                ; &cloptr123863[0]
  %f123865 = ptrtoint void(i64,i64,i64)* @lam123856 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123865, i64* %eptr123864                                               ; store fptr
  %arg122530 = ptrtoint i64* %cloptr123863 to i64                                    ; closure cast; i64* -> i64
  %cloptr123866 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123867 = getelementptr inbounds i64, i64* %cloptr123866, i64 0                ; &cloptr123866[0]
  %f123868 = ptrtoint void(i64,i64,i64)* @lam123404 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123868, i64* %eptr123867                                               ; store fptr
  %arg122529 = ptrtoint i64* %cloptr123866 to i64                                    ; closure cast; i64* -> i64
  %cloptr123869 = inttoptr i64 %arg122531 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123869)                                       ; assert function application
  %i0ptr123870 = getelementptr inbounds i64, i64* %cloptr123869, i64 0               ; &cloptr123869[0]
  %f123872 = load i64, i64* %i0ptr123870, align 8                                    ; load; *i0ptr123870
  %fptr123871 = inttoptr i64 %f123872 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123871(i64 %arg122531, i64 %arg122530, i64 %arg122529); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam123858(i64 %env123859, i64 %cont122521, i64 %EfC$yu) {
  %cloptr123873 = inttoptr i64 %EfC$yu to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123873)                                       ; assert function application
  %i0ptr123874 = getelementptr inbounds i64, i64* %cloptr123873, i64 0               ; &cloptr123873[0]
  %f123876 = load i64, i64* %i0ptr123874, align 8                                    ; load; *i0ptr123874
  %fptr123875 = inttoptr i64 %f123876 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123875(i64 %EfC$yu, i64 %cont122521, i64 %EfC$yu)   ; tail call
  ret void
}


define void @lam123856(i64 %env123857, i64 %_95122339, i64 %B4P$Ycmb) {
  %cloptr123877 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr123879 = getelementptr inbounds i64, i64* %cloptr123877, i64 1                ; &eptr123879[1]
  store i64 %B4P$Ycmb, i64* %eptr123879                                              ; *eptr123879 = %B4P$Ycmb
  %eptr123878 = getelementptr inbounds i64, i64* %cloptr123877, i64 0                ; &cloptr123877[0]
  %f123880 = ptrtoint void(i64,i64,i64)* @lam123854 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123880, i64* %eptr123878                                               ; store fptr
  %arg122536 = ptrtoint i64* %cloptr123877 to i64                                    ; closure cast; i64* -> i64
  %cloptr123881 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123882 = getelementptr inbounds i64, i64* %cloptr123881, i64 0                ; &cloptr123881[0]
  %f123883 = ptrtoint void(i64,i64,i64)* @lam123412 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123883, i64* %eptr123882                                               ; store fptr
  %arg122535 = ptrtoint i64* %cloptr123881 to i64                                    ; closure cast; i64* -> i64
  %cloptr123884 = inttoptr i64 %B4P$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123884)                                       ; assert function application
  %i0ptr123885 = getelementptr inbounds i64, i64* %cloptr123884, i64 0               ; &cloptr123884[0]
  %f123887 = load i64, i64* %i0ptr123885, align 8                                    ; load; *i0ptr123885
  %fptr123886 = inttoptr i64 %f123887 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123886(i64 %B4P$Ycmb, i64 %arg122536, i64 %arg122535); tail call
  ret void
}


define void @lam123854(i64 %env123855, i64 %_95122340, i64 %nDk$_37foldr1) {
  %envptr123888 = inttoptr i64 %env123855 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123889 = getelementptr inbounds i64, i64* %envptr123888, i64 1              ; &envptr123888[1]
  %B4P$Ycmb = load i64, i64* %envptr123889, align 8                                  ; load; *envptr123889
  %cloptr123890 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr123892 = getelementptr inbounds i64, i64* %cloptr123890, i64 1                ; &eptr123892[1]
  %eptr123893 = getelementptr inbounds i64, i64* %cloptr123890, i64 2                ; &eptr123893[2]
  store i64 %nDk$_37foldr1, i64* %eptr123892                                         ; *eptr123892 = %nDk$_37foldr1
  store i64 %B4P$Ycmb, i64* %eptr123893                                              ; *eptr123893 = %B4P$Ycmb
  %eptr123891 = getelementptr inbounds i64, i64* %cloptr123890, i64 0                ; &cloptr123890[0]
  %f123894 = ptrtoint void(i64,i64,i64)* @lam123852 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123894, i64* %eptr123891                                               ; store fptr
  %arg122539 = ptrtoint i64* %cloptr123890 to i64                                    ; closure cast; i64* -> i64
  %cloptr123895 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123896 = getelementptr inbounds i64, i64* %cloptr123895, i64 0                ; &cloptr123895[0]
  %f123897 = ptrtoint void(i64,i64,i64)* @lam123424 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123897, i64* %eptr123896                                               ; store fptr
  %arg122538 = ptrtoint i64* %cloptr123895 to i64                                    ; closure cast; i64* -> i64
  %cloptr123898 = inttoptr i64 %B4P$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123898)                                       ; assert function application
  %i0ptr123899 = getelementptr inbounds i64, i64* %cloptr123898, i64 0               ; &cloptr123898[0]
  %f123901 = load i64, i64* %i0ptr123899, align 8                                    ; load; *i0ptr123899
  %fptr123900 = inttoptr i64 %f123901 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123900(i64 %B4P$Ycmb, i64 %arg122539, i64 %arg122538); tail call
  ret void
}


define void @lam123852(i64 %env123853, i64 %_95122341, i64 %i9N$_37map1) {
  %envptr123902 = inttoptr i64 %env123853 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123903 = getelementptr inbounds i64, i64* %envptr123902, i64 2              ; &envptr123902[2]
  %B4P$Ycmb = load i64, i64* %envptr123903, align 8                                  ; load; *envptr123903
  %envptr123904 = inttoptr i64 %env123853 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123905 = getelementptr inbounds i64, i64* %envptr123904, i64 1              ; &envptr123904[1]
  %nDk$_37foldr1 = load i64, i64* %envptr123905, align 8                             ; load; *envptr123905
  %cloptr123906 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr123908 = getelementptr inbounds i64, i64* %cloptr123906, i64 1                ; &eptr123908[1]
  %eptr123909 = getelementptr inbounds i64, i64* %cloptr123906, i64 2                ; &eptr123909[2]
  %eptr123910 = getelementptr inbounds i64, i64* %cloptr123906, i64 3                ; &eptr123910[3]
  store i64 %nDk$_37foldr1, i64* %eptr123908                                         ; *eptr123908 = %nDk$_37foldr1
  store i64 %i9N$_37map1, i64* %eptr123909                                           ; *eptr123909 = %i9N$_37map1
  store i64 %B4P$Ycmb, i64* %eptr123910                                              ; *eptr123910 = %B4P$Ycmb
  %eptr123907 = getelementptr inbounds i64, i64* %cloptr123906, i64 0                ; &cloptr123906[0]
  %f123911 = ptrtoint void(i64,i64,i64)* @lam123850 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123911, i64* %eptr123907                                               ; store fptr
  %arg122542 = ptrtoint i64* %cloptr123906 to i64                                    ; closure cast; i64* -> i64
  %cloptr123912 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123913 = getelementptr inbounds i64, i64* %cloptr123912, i64 0                ; &cloptr123912[0]
  %f123914 = ptrtoint void(i64,i64,i64)* @lam123438 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123914, i64* %eptr123913                                               ; store fptr
  %arg122541 = ptrtoint i64* %cloptr123912 to i64                                    ; closure cast; i64* -> i64
  %cloptr123915 = inttoptr i64 %B4P$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123915)                                       ; assert function application
  %i0ptr123916 = getelementptr inbounds i64, i64* %cloptr123915, i64 0               ; &cloptr123915[0]
  %f123918 = load i64, i64* %i0ptr123916, align 8                                    ; load; *i0ptr123916
  %fptr123917 = inttoptr i64 %f123918 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123917(i64 %B4P$Ycmb, i64 %arg122542, i64 %arg122541); tail call
  ret void
}


define void @lam123850(i64 %env123851, i64 %_95122342, i64 %iub$_37take) {
  %envptr123919 = inttoptr i64 %env123851 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123920 = getelementptr inbounds i64, i64* %envptr123919, i64 3              ; &envptr123919[3]
  %B4P$Ycmb = load i64, i64* %envptr123920, align 8                                  ; load; *envptr123920
  %envptr123921 = inttoptr i64 %env123851 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123922 = getelementptr inbounds i64, i64* %envptr123921, i64 2              ; &envptr123921[2]
  %i9N$_37map1 = load i64, i64* %envptr123922, align 8                               ; load; *envptr123922
  %envptr123923 = inttoptr i64 %env123851 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123924 = getelementptr inbounds i64, i64* %envptr123923, i64 1              ; &envptr123923[1]
  %nDk$_37foldr1 = load i64, i64* %envptr123924, align 8                             ; load; *envptr123924
  %cloptr123925 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr123927 = getelementptr inbounds i64, i64* %cloptr123925, i64 1                ; &eptr123927[1]
  %eptr123928 = getelementptr inbounds i64, i64* %cloptr123925, i64 2                ; &eptr123928[2]
  %eptr123929 = getelementptr inbounds i64, i64* %cloptr123925, i64 3                ; &eptr123929[3]
  %eptr123930 = getelementptr inbounds i64, i64* %cloptr123925, i64 4                ; &eptr123930[4]
  store i64 %nDk$_37foldr1, i64* %eptr123927                                         ; *eptr123927 = %nDk$_37foldr1
  store i64 %i9N$_37map1, i64* %eptr123928                                           ; *eptr123928 = %i9N$_37map1
  store i64 %iub$_37take, i64* %eptr123929                                           ; *eptr123929 = %iub$_37take
  store i64 %B4P$Ycmb, i64* %eptr123930                                              ; *eptr123930 = %B4P$Ycmb
  %eptr123926 = getelementptr inbounds i64, i64* %cloptr123925, i64 0                ; &cloptr123925[0]
  %f123931 = ptrtoint void(i64,i64,i64)* @lam123848 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123931, i64* %eptr123926                                               ; store fptr
  %arg122545 = ptrtoint i64* %cloptr123925 to i64                                    ; closure cast; i64* -> i64
  %cloptr123932 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123933 = getelementptr inbounds i64, i64* %cloptr123932, i64 0                ; &cloptr123932[0]
  %f123934 = ptrtoint void(i64,i64,i64)* @lam123449 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123934, i64* %eptr123933                                               ; store fptr
  %arg122544 = ptrtoint i64* %cloptr123932 to i64                                    ; closure cast; i64* -> i64
  %cloptr123935 = inttoptr i64 %B4P$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123935)                                       ; assert function application
  %i0ptr123936 = getelementptr inbounds i64, i64* %cloptr123935, i64 0               ; &cloptr123935[0]
  %f123938 = load i64, i64* %i0ptr123936, align 8                                    ; load; *i0ptr123936
  %fptr123937 = inttoptr i64 %f123938 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123937(i64 %B4P$Ycmb, i64 %arg122545, i64 %arg122544); tail call
  ret void
}


define void @lam123848(i64 %env123849, i64 %_95122343, i64 %CcD$_37length) {
  %envptr123939 = inttoptr i64 %env123849 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123940 = getelementptr inbounds i64, i64* %envptr123939, i64 4              ; &envptr123939[4]
  %B4P$Ycmb = load i64, i64* %envptr123940, align 8                                  ; load; *envptr123940
  %envptr123941 = inttoptr i64 %env123849 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123942 = getelementptr inbounds i64, i64* %envptr123941, i64 3              ; &envptr123941[3]
  %iub$_37take = load i64, i64* %envptr123942, align 8                               ; load; *envptr123942
  %envptr123943 = inttoptr i64 %env123849 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123944 = getelementptr inbounds i64, i64* %envptr123943, i64 2              ; &envptr123943[2]
  %i9N$_37map1 = load i64, i64* %envptr123944, align 8                               ; load; *envptr123944
  %envptr123945 = inttoptr i64 %env123849 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123946 = getelementptr inbounds i64, i64* %envptr123945, i64 1              ; &envptr123945[1]
  %nDk$_37foldr1 = load i64, i64* %envptr123946, align 8                             ; load; *envptr123946
  %cloptr123947 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr123949 = getelementptr inbounds i64, i64* %cloptr123947, i64 1                ; &eptr123949[1]
  %eptr123950 = getelementptr inbounds i64, i64* %cloptr123947, i64 2                ; &eptr123950[2]
  %eptr123951 = getelementptr inbounds i64, i64* %cloptr123947, i64 3                ; &eptr123951[3]
  %eptr123952 = getelementptr inbounds i64, i64* %cloptr123947, i64 4                ; &eptr123952[4]
  %eptr123953 = getelementptr inbounds i64, i64* %cloptr123947, i64 5                ; &eptr123953[5]
  store i64 %nDk$_37foldr1, i64* %eptr123949                                         ; *eptr123949 = %nDk$_37foldr1
  store i64 %i9N$_37map1, i64* %eptr123950                                           ; *eptr123950 = %i9N$_37map1
  store i64 %iub$_37take, i64* %eptr123951                                           ; *eptr123951 = %iub$_37take
  store i64 %CcD$_37length, i64* %eptr123952                                         ; *eptr123952 = %CcD$_37length
  store i64 %B4P$Ycmb, i64* %eptr123953                                              ; *eptr123953 = %B4P$Ycmb
  %eptr123948 = getelementptr inbounds i64, i64* %cloptr123947, i64 0                ; &cloptr123947[0]
  %f123954 = ptrtoint void(i64,i64,i64)* @lam123846 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123954, i64* %eptr123948                                               ; store fptr
  %arg122548 = ptrtoint i64* %cloptr123947 to i64                                    ; closure cast; i64* -> i64
  %cloptr123955 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr123956 = getelementptr inbounds i64, i64* %cloptr123955, i64 0                ; &cloptr123955[0]
  %f123957 = ptrtoint void(i64,i64,i64)* @lam123457 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123957, i64* %eptr123956                                               ; store fptr
  %arg122547 = ptrtoint i64* %cloptr123955 to i64                                    ; closure cast; i64* -> i64
  %cloptr123958 = inttoptr i64 %B4P$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123958)                                       ; assert function application
  %i0ptr123959 = getelementptr inbounds i64, i64* %cloptr123958, i64 0               ; &cloptr123958[0]
  %f123961 = load i64, i64* %i0ptr123959, align 8                                    ; load; *i0ptr123959
  %fptr123960 = inttoptr i64 %f123961 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123960(i64 %B4P$Ycmb, i64 %arg122548, i64 %arg122547); tail call
  ret void
}


define void @lam123846(i64 %env123847, i64 %_95122344, i64 %oY7$_37foldl1) {
  %envptr123962 = inttoptr i64 %env123847 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123963 = getelementptr inbounds i64, i64* %envptr123962, i64 5              ; &envptr123962[5]
  %B4P$Ycmb = load i64, i64* %envptr123963, align 8                                  ; load; *envptr123963
  %envptr123964 = inttoptr i64 %env123847 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123965 = getelementptr inbounds i64, i64* %envptr123964, i64 4              ; &envptr123964[4]
  %CcD$_37length = load i64, i64* %envptr123965, align 8                             ; load; *envptr123965
  %envptr123966 = inttoptr i64 %env123847 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123967 = getelementptr inbounds i64, i64* %envptr123966, i64 3              ; &envptr123966[3]
  %iub$_37take = load i64, i64* %envptr123967, align 8                               ; load; *envptr123967
  %envptr123968 = inttoptr i64 %env123847 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123969 = getelementptr inbounds i64, i64* %envptr123968, i64 2              ; &envptr123968[2]
  %i9N$_37map1 = load i64, i64* %envptr123969, align 8                               ; load; *envptr123969
  %envptr123970 = inttoptr i64 %env123847 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr123971 = getelementptr inbounds i64, i64* %envptr123970, i64 1              ; &envptr123970[1]
  %nDk$_37foldr1 = load i64, i64* %envptr123971, align 8                             ; load; *envptr123971
  %cloptr123972 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr123974 = getelementptr inbounds i64, i64* %cloptr123972, i64 1                ; &eptr123974[1]
  store i64 %oY7$_37foldl1, i64* %eptr123974                                         ; *eptr123974 = %oY7$_37foldl1
  %eptr123973 = getelementptr inbounds i64, i64* %cloptr123972, i64 0                ; &cloptr123972[0]
  %f123975 = ptrtoint void(i64,i64,i64)* @lam123844 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123975, i64* %eptr123973                                               ; store fptr
  %LHX$_37last = ptrtoint i64* %cloptr123972 to i64                                  ; closure cast; i64* -> i64
  %cloptr123976 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr123978 = getelementptr inbounds i64, i64* %cloptr123976, i64 1                ; &eptr123978[1]
  %eptr123979 = getelementptr inbounds i64, i64* %cloptr123976, i64 2                ; &eptr123979[2]
  store i64 %iub$_37take, i64* %eptr123978                                           ; *eptr123978 = %iub$_37take
  store i64 %CcD$_37length, i64* %eptr123979                                         ; *eptr123979 = %CcD$_37length
  %eptr123977 = getelementptr inbounds i64, i64* %cloptr123976, i64 0                ; &cloptr123976[0]
  %f123980 = ptrtoint void(i64,i64,i64,i64)* @lam123838 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f123980, i64* %eptr123977                                               ; store fptr
  %Zsr$_37drop_45right = ptrtoint i64* %cloptr123976 to i64                          ; closure cast; i64* -> i64
  %cloptr123981 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr123983 = getelementptr inbounds i64, i64* %cloptr123981, i64 1                ; &eptr123983[1]
  %eptr123984 = getelementptr inbounds i64, i64* %cloptr123981, i64 2                ; &eptr123984[2]
  %eptr123985 = getelementptr inbounds i64, i64* %cloptr123981, i64 3                ; &eptr123985[3]
  %eptr123986 = getelementptr inbounds i64, i64* %cloptr123981, i64 4                ; &eptr123986[4]
  %eptr123987 = getelementptr inbounds i64, i64* %cloptr123981, i64 5                ; &eptr123987[5]
  %eptr123988 = getelementptr inbounds i64, i64* %cloptr123981, i64 6                ; &eptr123988[6]
  store i64 %nDk$_37foldr1, i64* %eptr123983                                         ; *eptr123983 = %nDk$_37foldr1
  store i64 %LHX$_37last, i64* %eptr123984                                           ; *eptr123984 = %LHX$_37last
  store i64 %Zsr$_37drop_45right, i64* %eptr123985                                   ; *eptr123985 = %Zsr$_37drop_45right
  store i64 %CcD$_37length, i64* %eptr123986                                         ; *eptr123986 = %CcD$_37length
  store i64 %oY7$_37foldl1, i64* %eptr123987                                         ; *eptr123987 = %oY7$_37foldl1
  store i64 %B4P$Ycmb, i64* %eptr123988                                              ; *eptr123988 = %B4P$Ycmb
  %eptr123982 = getelementptr inbounds i64, i64* %cloptr123981, i64 0                ; &cloptr123981[0]
  %f123989 = ptrtoint void(i64,i64,i64)* @lam123834 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123989, i64* %eptr123982                                               ; store fptr
  %arg122568 = ptrtoint i64* %cloptr123981 to i64                                    ; closure cast; i64* -> i64
  %cloptr123990 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr123992 = getelementptr inbounds i64, i64* %cloptr123990, i64 1                ; &eptr123992[1]
  %eptr123993 = getelementptr inbounds i64, i64* %cloptr123990, i64 2                ; &eptr123993[2]
  store i64 %nDk$_37foldr1, i64* %eptr123992                                         ; *eptr123992 = %nDk$_37foldr1
  store i64 %i9N$_37map1, i64* %eptr123993                                           ; *eptr123993 = %i9N$_37map1
  %eptr123991 = getelementptr inbounds i64, i64* %cloptr123990, i64 0                ; &cloptr123990[0]
  %f123994 = ptrtoint void(i64,i64,i64)* @lam123494 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f123994, i64* %eptr123991                                               ; store fptr
  %arg122567 = ptrtoint i64* %cloptr123990 to i64                                    ; closure cast; i64* -> i64
  %cloptr123995 = inttoptr i64 %B4P$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr123995)                                       ; assert function application
  %i0ptr123996 = getelementptr inbounds i64, i64* %cloptr123995, i64 0               ; &cloptr123995[0]
  %f123998 = load i64, i64* %i0ptr123996, align 8                                    ; load; *i0ptr123996
  %fptr123997 = inttoptr i64 %f123998 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr123997(i64 %B4P$Ycmb, i64 %arg122568, i64 %arg122567); tail call
  ret void
}


define void @lam123844(i64 %env123845, i64 %cont122345, i64 %Zr1$lst) {
  %envptr123999 = inttoptr i64 %env123845 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124000 = getelementptr inbounds i64, i64* %envptr123999, i64 1              ; &envptr123999[1]
  %oY7$_37foldl1 = load i64, i64* %envptr124000, align 8                             ; load; *envptr124000
  %cloptr124001 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124002 = getelementptr inbounds i64, i64* %cloptr124001, i64 0                ; &cloptr124001[0]
  %f124003 = ptrtoint void(i64,i64,i64,i64)* @lam123842 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124003, i64* %eptr124002                                               ; store fptr
  %arg122552 = ptrtoint i64* %cloptr124001 to i64                                    ; closure cast; i64* -> i64
  %arg122551 = add i64 0, 0                                                          ; quoted ()
  %cloptr124004 = inttoptr i64 %oY7$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124004)                                       ; assert function application
  %i0ptr124005 = getelementptr inbounds i64, i64* %cloptr124004, i64 0               ; &cloptr124004[0]
  %f124007 = load i64, i64* %i0ptr124005, align 8                                    ; load; *i0ptr124005
  %fptr124006 = inttoptr i64 %f124007 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124006(i64 %oY7$_37foldl1, i64 %cont122345, i64 %arg122552, i64 %arg122551, i64 %Zr1$lst); tail call
  ret void
}


define void @lam123842(i64 %env123843, i64 %cont122346, i64 %No9$x, i64 %KdA$y) {
  %arg122556 = add i64 0, 0                                                          ; quoted ()
  %cloptr124008 = inttoptr i64 %cont122346 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124008)                                       ; assert function application
  %i0ptr124009 = getelementptr inbounds i64, i64* %cloptr124008, i64 0               ; &cloptr124008[0]
  %f124011 = load i64, i64* %i0ptr124009, align 8                                    ; load; *i0ptr124009
  %fptr124010 = inttoptr i64 %f124011 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124010(i64 %cont122346, i64 %arg122556, i64 %No9$x) ; tail call
  ret void
}


define void @lam123838(i64 %env123839, i64 %cont122347, i64 %OWG$lst, i64 %l7m$n) {
  %envptr124012 = inttoptr i64 %env123839 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124013 = getelementptr inbounds i64, i64* %envptr124012, i64 2              ; &envptr124012[2]
  %CcD$_37length = load i64, i64* %envptr124013, align 8                             ; load; *envptr124013
  %envptr124014 = inttoptr i64 %env123839 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124015 = getelementptr inbounds i64, i64* %envptr124014, i64 1              ; &envptr124014[1]
  %iub$_37take = load i64, i64* %envptr124015, align 8                               ; load; *envptr124015
  %cloptr124016 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr124018 = getelementptr inbounds i64, i64* %cloptr124016, i64 1                ; &eptr124018[1]
  %eptr124019 = getelementptr inbounds i64, i64* %cloptr124016, i64 2                ; &eptr124019[2]
  %eptr124020 = getelementptr inbounds i64, i64* %cloptr124016, i64 3                ; &eptr124020[3]
  %eptr124021 = getelementptr inbounds i64, i64* %cloptr124016, i64 4                ; &eptr124021[4]
  store i64 %cont122347, i64* %eptr124018                                            ; *eptr124018 = %cont122347
  store i64 %iub$_37take, i64* %eptr124019                                           ; *eptr124019 = %iub$_37take
  store i64 %l7m$n, i64* %eptr124020                                                 ; *eptr124020 = %l7m$n
  store i64 %OWG$lst, i64* %eptr124021                                               ; *eptr124021 = %OWG$lst
  %eptr124017 = getelementptr inbounds i64, i64* %cloptr124016, i64 0                ; &cloptr124016[0]
  %f124022 = ptrtoint void(i64,i64,i64)* @lam123836 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124022, i64* %eptr124017                                               ; store fptr
  %arg122559 = ptrtoint i64* %cloptr124016 to i64                                    ; closure cast; i64* -> i64
  %cloptr124023 = inttoptr i64 %CcD$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124023)                                       ; assert function application
  %i0ptr124024 = getelementptr inbounds i64, i64* %cloptr124023, i64 0               ; &cloptr124023[0]
  %f124026 = load i64, i64* %i0ptr124024, align 8                                    ; load; *i0ptr124024
  %fptr124025 = inttoptr i64 %f124026 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124025(i64 %CcD$_37length, i64 %arg122559, i64 %OWG$lst); tail call
  ret void
}


define void @lam123836(i64 %env123837, i64 %_95122348, i64 %a122243) {
  %envptr124027 = inttoptr i64 %env123837 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124028 = getelementptr inbounds i64, i64* %envptr124027, i64 4              ; &envptr124027[4]
  %OWG$lst = load i64, i64* %envptr124028, align 8                                   ; load; *envptr124028
  %envptr124029 = inttoptr i64 %env123837 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124030 = getelementptr inbounds i64, i64* %envptr124029, i64 3              ; &envptr124029[3]
  %l7m$n = load i64, i64* %envptr124030, align 8                                     ; load; *envptr124030
  %envptr124031 = inttoptr i64 %env123837 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124032 = getelementptr inbounds i64, i64* %envptr124031, i64 2              ; &envptr124031[2]
  %iub$_37take = load i64, i64* %envptr124032, align 8                               ; load; *envptr124032
  %envptr124033 = inttoptr i64 %env123837 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124034 = getelementptr inbounds i64, i64* %envptr124033, i64 1              ; &envptr124033[1]
  %cont122347 = load i64, i64* %envptr124034, align 8                                ; load; *envptr124034
  %a122244 = call i64 @prim__45(i64 %a122243, i64 %l7m$n)                            ; call prim__45
  %cloptr124035 = inttoptr i64 %iub$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124035)                                       ; assert function application
  %i0ptr124036 = getelementptr inbounds i64, i64* %cloptr124035, i64 0               ; &cloptr124035[0]
  %f124038 = load i64, i64* %i0ptr124036, align 8                                    ; load; *i0ptr124036
  %fptr124037 = inttoptr i64 %f124038 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124037(i64 %iub$_37take, i64 %cont122347, i64 %OWG$lst, i64 %a122244); tail call
  ret void
}


define void @lam123834(i64 %env123835, i64 %_95122349, i64 %t6M$_37foldr) {
  %envptr124039 = inttoptr i64 %env123835 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124040 = getelementptr inbounds i64, i64* %envptr124039, i64 6              ; &envptr124039[6]
  %B4P$Ycmb = load i64, i64* %envptr124040, align 8                                  ; load; *envptr124040
  %envptr124041 = inttoptr i64 %env123835 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124042 = getelementptr inbounds i64, i64* %envptr124041, i64 5              ; &envptr124041[5]
  %oY7$_37foldl1 = load i64, i64* %envptr124042, align 8                             ; load; *envptr124042
  %envptr124043 = inttoptr i64 %env123835 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124044 = getelementptr inbounds i64, i64* %envptr124043, i64 4              ; &envptr124043[4]
  %CcD$_37length = load i64, i64* %envptr124044, align 8                             ; load; *envptr124044
  %envptr124045 = inttoptr i64 %env123835 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124046 = getelementptr inbounds i64, i64* %envptr124045, i64 3              ; &envptr124045[3]
  %Zsr$_37drop_45right = load i64, i64* %envptr124046, align 8                       ; load; *envptr124046
  %envptr124047 = inttoptr i64 %env123835 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124048 = getelementptr inbounds i64, i64* %envptr124047, i64 2              ; &envptr124047[2]
  %LHX$_37last = load i64, i64* %envptr124048, align 8                               ; load; *envptr124048
  %envptr124049 = inttoptr i64 %env123835 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124050 = getelementptr inbounds i64, i64* %envptr124049, i64 1              ; &envptr124049[1]
  %nDk$_37foldr1 = load i64, i64* %envptr124050, align 8                             ; load; *envptr124050
  %cloptr124051 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr124053 = getelementptr inbounds i64, i64* %cloptr124051, i64 1                ; &eptr124053[1]
  store i64 %nDk$_37foldr1, i64* %eptr124053                                         ; *eptr124053 = %nDk$_37foldr1
  %eptr124052 = getelementptr inbounds i64, i64* %cloptr124051, i64 0                ; &cloptr124051[0]
  %f124054 = ptrtoint void(i64,i64,i64,i64)* @lam123832 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124054, i64* %eptr124052                                               ; store fptr
  %FTQ$_37map1 = ptrtoint i64* %cloptr124051 to i64                                  ; closure cast; i64* -> i64
  %cloptr124055 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124057 = getelementptr inbounds i64, i64* %cloptr124055, i64 1                ; &eptr124057[1]
  %eptr124058 = getelementptr inbounds i64, i64* %cloptr124055, i64 2                ; &eptr124058[2]
  %eptr124059 = getelementptr inbounds i64, i64* %cloptr124055, i64 3                ; &eptr124059[3]
  store i64 %t6M$_37foldr, i64* %eptr124057                                          ; *eptr124057 = %t6M$_37foldr
  store i64 %LHX$_37last, i64* %eptr124058                                           ; *eptr124058 = %LHX$_37last
  store i64 %Zsr$_37drop_45right, i64* %eptr124059                                   ; *eptr124059 = %Zsr$_37drop_45right
  %eptr124056 = getelementptr inbounds i64, i64* %cloptr124055, i64 0                ; &cloptr124055[0]
  %f124060 = ptrtoint void(i64,i64)* @lam123824 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124060, i64* %eptr124056                                               ; store fptr
  %HHz$_37map = ptrtoint i64* %cloptr124055 to i64                                   ; closure cast; i64* -> i64
  %cloptr124061 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124063 = getelementptr inbounds i64, i64* %cloptr124061, i64 1                ; &eptr124063[1]
  %eptr124064 = getelementptr inbounds i64, i64* %cloptr124061, i64 2                ; &eptr124064[2]
  store i64 %CcD$_37length, i64* %eptr124063                                         ; *eptr124063 = %CcD$_37length
  store i64 %oY7$_37foldl1, i64* %eptr124064                                         ; *eptr124064 = %oY7$_37foldl1
  %eptr124062 = getelementptr inbounds i64, i64* %cloptr124061, i64 0                ; &cloptr124061[0]
  %f124065 = ptrtoint void(i64,i64,i64)* @lam123811 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124065, i64* %eptr124062                                               ; store fptr
  %arg122610 = ptrtoint i64* %cloptr124061 to i64                                    ; closure cast; i64* -> i64
  %cloptr124066 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124068 = getelementptr inbounds i64, i64* %cloptr124066, i64 1                ; &eptr124068[1]
  %eptr124069 = getelementptr inbounds i64, i64* %cloptr124066, i64 2                ; &eptr124069[2]
  %eptr124070 = getelementptr inbounds i64, i64* %cloptr124066, i64 3                ; &eptr124070[3]
  store i64 %nDk$_37foldr1, i64* %eptr124068                                         ; *eptr124068 = %nDk$_37foldr1
  store i64 %FTQ$_37map1, i64* %eptr124069                                           ; *eptr124069 = %FTQ$_37map1
  store i64 %t6M$_37foldr, i64* %eptr124070                                          ; *eptr124070 = %t6M$_37foldr
  %eptr124067 = getelementptr inbounds i64, i64* %cloptr124066, i64 0                ; &cloptr124066[0]
  %f124071 = ptrtoint void(i64,i64,i64)* @lam123531 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124071, i64* %eptr124067                                               ; store fptr
  %arg122609 = ptrtoint i64* %cloptr124066 to i64                                    ; closure cast; i64* -> i64
  %cloptr124072 = inttoptr i64 %B4P$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124072)                                       ; assert function application
  %i0ptr124073 = getelementptr inbounds i64, i64* %cloptr124072, i64 0               ; &cloptr124072[0]
  %f124075 = load i64, i64* %i0ptr124073, align 8                                    ; load; *i0ptr124073
  %fptr124074 = inttoptr i64 %f124075 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124074(i64 %B4P$Ycmb, i64 %arg122610, i64 %arg122609); tail call
  ret void
}


define void @lam123832(i64 %env123833, i64 %cont122350, i64 %kdF$f, i64 %lHe$lst) {
  %envptr124076 = inttoptr i64 %env123833 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124077 = getelementptr inbounds i64, i64* %envptr124076, i64 1              ; &envptr124076[1]
  %nDk$_37foldr1 = load i64, i64* %envptr124077, align 8                             ; load; *envptr124077
  %cloptr124078 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr124080 = getelementptr inbounds i64, i64* %cloptr124078, i64 1                ; &eptr124080[1]
  store i64 %kdF$f, i64* %eptr124080                                                 ; *eptr124080 = %kdF$f
  %eptr124079 = getelementptr inbounds i64, i64* %cloptr124078, i64 0                ; &cloptr124078[0]
  %f124081 = ptrtoint void(i64,i64,i64,i64)* @lam123830 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124081, i64* %eptr124079                                               ; store fptr
  %arg122572 = ptrtoint i64* %cloptr124078 to i64                                    ; closure cast; i64* -> i64
  %arg122571 = add i64 0, 0                                                          ; quoted ()
  %cloptr124082 = inttoptr i64 %nDk$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124082)                                       ; assert function application
  %i0ptr124083 = getelementptr inbounds i64, i64* %cloptr124082, i64 0               ; &cloptr124082[0]
  %f124085 = load i64, i64* %i0ptr124083, align 8                                    ; load; *i0ptr124083
  %fptr124084 = inttoptr i64 %f124085 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124084(i64 %nDk$_37foldr1, i64 %cont122350, i64 %arg122572, i64 %arg122571, i64 %lHe$lst); tail call
  ret void
}


define void @lam123830(i64 %env123831, i64 %cont122351, i64 %fQQ$v, i64 %Xsr$r) {
  %envptr124086 = inttoptr i64 %env123831 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124087 = getelementptr inbounds i64, i64* %envptr124086, i64 1              ; &envptr124086[1]
  %kdF$f = load i64, i64* %envptr124087, align 8                                     ; load; *envptr124087
  %cloptr124088 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124090 = getelementptr inbounds i64, i64* %cloptr124088, i64 1                ; &eptr124090[1]
  %eptr124091 = getelementptr inbounds i64, i64* %cloptr124088, i64 2                ; &eptr124091[2]
  store i64 %Xsr$r, i64* %eptr124090                                                 ; *eptr124090 = %Xsr$r
  store i64 %cont122351, i64* %eptr124091                                            ; *eptr124091 = %cont122351
  %eptr124089 = getelementptr inbounds i64, i64* %cloptr124088, i64 0                ; &cloptr124088[0]
  %f124092 = ptrtoint void(i64,i64,i64)* @lam123828 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124092, i64* %eptr124089                                               ; store fptr
  %arg122576 = ptrtoint i64* %cloptr124088 to i64                                    ; closure cast; i64* -> i64
  %cloptr124093 = inttoptr i64 %kdF$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124093)                                       ; assert function application
  %i0ptr124094 = getelementptr inbounds i64, i64* %cloptr124093, i64 0               ; &cloptr124093[0]
  %f124096 = load i64, i64* %i0ptr124094, align 8                                    ; load; *i0ptr124094
  %fptr124095 = inttoptr i64 %f124096 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124095(i64 %kdF$f, i64 %arg122576, i64 %fQQ$v)      ; tail call
  ret void
}


define void @lam123828(i64 %env123829, i64 %_95122352, i64 %a122253) {
  %envptr124097 = inttoptr i64 %env123829 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124098 = getelementptr inbounds i64, i64* %envptr124097, i64 2              ; &envptr124097[2]
  %cont122351 = load i64, i64* %envptr124098, align 8                                ; load; *envptr124098
  %envptr124099 = inttoptr i64 %env123829 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124100 = getelementptr inbounds i64, i64* %envptr124099, i64 1              ; &envptr124099[1]
  %Xsr$r = load i64, i64* %envptr124100, align 8                                     ; load; *envptr124100
  %retprim122353 = call i64 @prim_cons(i64 %a122253, i64 %Xsr$r)                     ; call prim_cons
  %arg122581 = add i64 0, 0                                                          ; quoted ()
  %cloptr124101 = inttoptr i64 %cont122351 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124101)                                       ; assert function application
  %i0ptr124102 = getelementptr inbounds i64, i64* %cloptr124101, i64 0               ; &cloptr124101[0]
  %f124104 = load i64, i64* %i0ptr124102, align 8                                    ; load; *i0ptr124102
  %fptr124103 = inttoptr i64 %f124104 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124103(i64 %cont122351, i64 %arg122581, i64 %retprim122353); tail call
  ret void
}


define void @lam123824(i64 %env123825, i64 %l40$args122355) {
  %envptr124105 = inttoptr i64 %env123825 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124106 = getelementptr inbounds i64, i64* %envptr124105, i64 3              ; &envptr124105[3]
  %Zsr$_37drop_45right = load i64, i64* %envptr124106, align 8                       ; load; *envptr124106
  %envptr124107 = inttoptr i64 %env123825 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124108 = getelementptr inbounds i64, i64* %envptr124107, i64 2              ; &envptr124107[2]
  %LHX$_37last = load i64, i64* %envptr124108, align 8                               ; load; *envptr124108
  %envptr124109 = inttoptr i64 %env123825 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124110 = getelementptr inbounds i64, i64* %envptr124109, i64 1              ; &envptr124109[1]
  %t6M$_37foldr = load i64, i64* %envptr124110, align 8                              ; load; *envptr124110
  %cont122354 = call i64 @prim_car(i64 %l40$args122355)                              ; call prim_car
  %l40$args = call i64 @prim_cdr(i64 %l40$args122355)                                ; call prim_cdr
  %PWT$f = call i64 @prim_car(i64 %l40$args)                                         ; call prim_car
  %kQp$lsts = call i64 @prim_cdr(i64 %l40$args)                                      ; call prim_cdr
  %arg122588 = add i64 0, 0                                                          ; quoted ()
  %a122257 = call i64 @prim_cons(i64 %arg122588, i64 %kQp$lsts)                      ; call prim_cons
  %cloptr124111 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124113 = getelementptr inbounds i64, i64* %cloptr124111, i64 1                ; &eptr124113[1]
  %eptr124114 = getelementptr inbounds i64, i64* %cloptr124111, i64 2                ; &eptr124114[2]
  %eptr124115 = getelementptr inbounds i64, i64* %cloptr124111, i64 3                ; &eptr124115[3]
  store i64 %LHX$_37last, i64* %eptr124113                                           ; *eptr124113 = %LHX$_37last
  store i64 %PWT$f, i64* %eptr124114                                                 ; *eptr124114 = %PWT$f
  store i64 %Zsr$_37drop_45right, i64* %eptr124115                                   ; *eptr124115 = %Zsr$_37drop_45right
  %eptr124112 = getelementptr inbounds i64, i64* %cloptr124111, i64 0                ; &cloptr124111[0]
  %f124116 = ptrtoint void(i64,i64)* @lam123821 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124116, i64* %eptr124112                                               ; store fptr
  %arg122590 = ptrtoint i64* %cloptr124111 to i64                                    ; closure cast; i64* -> i64
  %a122258 = call i64 @prim_cons(i64 %arg122590, i64 %a122257)                       ; call prim_cons
  %cps_45lst122363 = call i64 @prim_cons(i64 %cont122354, i64 %a122258)              ; call prim_cons
  %cloptr124117 = inttoptr i64 %t6M$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124117)                                       ; assert function application
  %i0ptr124118 = getelementptr inbounds i64, i64* %cloptr124117, i64 0               ; &cloptr124117[0]
  %f124120 = load i64, i64* %i0ptr124118, align 8                                    ; load; *i0ptr124118
  %fptr124119 = inttoptr i64 %f124120 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124119(i64 %t6M$_37foldr, i64 %cps_45lst122363)     ; tail call
  ret void
}


define void @lam123821(i64 %env123822, i64 %KNY$fargs122357) {
  %envptr124121 = inttoptr i64 %env123822 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124122 = getelementptr inbounds i64, i64* %envptr124121, i64 3              ; &envptr124121[3]
  %Zsr$_37drop_45right = load i64, i64* %envptr124122, align 8                       ; load; *envptr124122
  %envptr124123 = inttoptr i64 %env123822 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124124 = getelementptr inbounds i64, i64* %envptr124123, i64 2              ; &envptr124123[2]
  %PWT$f = load i64, i64* %envptr124124, align 8                                     ; load; *envptr124124
  %envptr124125 = inttoptr i64 %env123822 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124126 = getelementptr inbounds i64, i64* %envptr124125, i64 1              ; &envptr124125[1]
  %LHX$_37last = load i64, i64* %envptr124126, align 8                               ; load; *envptr124126
  %cont122356 = call i64 @prim_car(i64 %KNY$fargs122357)                             ; call prim_car
  %KNY$fargs = call i64 @prim_cdr(i64 %KNY$fargs122357)                              ; call prim_cdr
  %cloptr124127 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr124129 = getelementptr inbounds i64, i64* %cloptr124127, i64 1                ; &eptr124129[1]
  %eptr124130 = getelementptr inbounds i64, i64* %cloptr124127, i64 2                ; &eptr124130[2]
  %eptr124131 = getelementptr inbounds i64, i64* %cloptr124127, i64 3                ; &eptr124131[3]
  %eptr124132 = getelementptr inbounds i64, i64* %cloptr124127, i64 4                ; &eptr124132[4]
  store i64 %cont122356, i64* %eptr124129                                            ; *eptr124129 = %cont122356
  store i64 %LHX$_37last, i64* %eptr124130                                           ; *eptr124130 = %LHX$_37last
  store i64 %PWT$f, i64* %eptr124131                                                 ; *eptr124131 = %PWT$f
  store i64 %KNY$fargs, i64* %eptr124132                                             ; *eptr124132 = %KNY$fargs
  %eptr124128 = getelementptr inbounds i64, i64* %cloptr124127, i64 0                ; &cloptr124127[0]
  %f124133 = ptrtoint void(i64,i64,i64)* @lam123819 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124133, i64* %eptr124128                                               ; store fptr
  %arg122595 = ptrtoint i64* %cloptr124127 to i64                                    ; closure cast; i64* -> i64
  %arg122593 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr124134 = inttoptr i64 %Zsr$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124134)                                       ; assert function application
  %i0ptr124135 = getelementptr inbounds i64, i64* %cloptr124134, i64 0               ; &cloptr124134[0]
  %f124137 = load i64, i64* %i0ptr124135, align 8                                    ; load; *i0ptr124135
  %fptr124136 = inttoptr i64 %f124137 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124136(i64 %Zsr$_37drop_45right, i64 %arg122595, i64 %KNY$fargs, i64 %arg122593); tail call
  ret void
}


define void @lam123819(i64 %env123820, i64 %_95122358, i64 %a122254) {
  %envptr124138 = inttoptr i64 %env123820 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124139 = getelementptr inbounds i64, i64* %envptr124138, i64 4              ; &envptr124138[4]
  %KNY$fargs = load i64, i64* %envptr124139, align 8                                 ; load; *envptr124139
  %envptr124140 = inttoptr i64 %env123820 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124141 = getelementptr inbounds i64, i64* %envptr124140, i64 3              ; &envptr124140[3]
  %PWT$f = load i64, i64* %envptr124141, align 8                                     ; load; *envptr124141
  %envptr124142 = inttoptr i64 %env123820 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124143 = getelementptr inbounds i64, i64* %envptr124142, i64 2              ; &envptr124142[2]
  %LHX$_37last = load i64, i64* %envptr124143, align 8                               ; load; *envptr124143
  %envptr124144 = inttoptr i64 %env123820 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124145 = getelementptr inbounds i64, i64* %envptr124144, i64 1              ; &envptr124144[1]
  %cont122356 = load i64, i64* %envptr124145, align 8                                ; load; *envptr124145
  %cloptr124146 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124148 = getelementptr inbounds i64, i64* %cloptr124146, i64 1                ; &eptr124148[1]
  %eptr124149 = getelementptr inbounds i64, i64* %cloptr124146, i64 2                ; &eptr124149[2]
  %eptr124150 = getelementptr inbounds i64, i64* %cloptr124146, i64 3                ; &eptr124150[3]
  store i64 %cont122356, i64* %eptr124148                                            ; *eptr124148 = %cont122356
  store i64 %LHX$_37last, i64* %eptr124149                                           ; *eptr124149 = %LHX$_37last
  store i64 %KNY$fargs, i64* %eptr124150                                             ; *eptr124150 = %KNY$fargs
  %eptr124147 = getelementptr inbounds i64, i64* %cloptr124146, i64 0                ; &cloptr124146[0]
  %f124151 = ptrtoint void(i64,i64,i64)* @lam123817 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124151, i64* %eptr124147                                               ; store fptr
  %arg122598 = ptrtoint i64* %cloptr124146 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst122362 = call i64 @prim_cons(i64 %arg122598, i64 %a122254)               ; call prim_cons
  %cloptr124152 = inttoptr i64 %PWT$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124152)                                       ; assert function application
  %i0ptr124153 = getelementptr inbounds i64, i64* %cloptr124152, i64 0               ; &cloptr124152[0]
  %f124155 = load i64, i64* %i0ptr124153, align 8                                    ; load; *i0ptr124153
  %fptr124154 = inttoptr i64 %f124155 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124154(i64 %PWT$f, i64 %cps_45lst122362)            ; tail call
  ret void
}


define void @lam123817(i64 %env123818, i64 %_95122359, i64 %a122255) {
  %envptr124156 = inttoptr i64 %env123818 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124157 = getelementptr inbounds i64, i64* %envptr124156, i64 3              ; &envptr124156[3]
  %KNY$fargs = load i64, i64* %envptr124157, align 8                                 ; load; *envptr124157
  %envptr124158 = inttoptr i64 %env123818 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124159 = getelementptr inbounds i64, i64* %envptr124158, i64 2              ; &envptr124158[2]
  %LHX$_37last = load i64, i64* %envptr124159, align 8                               ; load; *envptr124159
  %envptr124160 = inttoptr i64 %env123818 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124161 = getelementptr inbounds i64, i64* %envptr124160, i64 1              ; &envptr124160[1]
  %cont122356 = load i64, i64* %envptr124161, align 8                                ; load; *envptr124161
  %cloptr124162 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124164 = getelementptr inbounds i64, i64* %cloptr124162, i64 1                ; &eptr124164[1]
  %eptr124165 = getelementptr inbounds i64, i64* %cloptr124162, i64 2                ; &eptr124165[2]
  store i64 %cont122356, i64* %eptr124164                                            ; *eptr124164 = %cont122356
  store i64 %a122255, i64* %eptr124165                                               ; *eptr124165 = %a122255
  %eptr124163 = getelementptr inbounds i64, i64* %cloptr124162, i64 0                ; &cloptr124162[0]
  %f124166 = ptrtoint void(i64,i64,i64)* @lam123815 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124166, i64* %eptr124163                                               ; store fptr
  %arg122600 = ptrtoint i64* %cloptr124162 to i64                                    ; closure cast; i64* -> i64
  %cloptr124167 = inttoptr i64 %LHX$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124167)                                       ; assert function application
  %i0ptr124168 = getelementptr inbounds i64, i64* %cloptr124167, i64 0               ; &cloptr124167[0]
  %f124170 = load i64, i64* %i0ptr124168, align 8                                    ; load; *i0ptr124168
  %fptr124169 = inttoptr i64 %f124170 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124169(i64 %LHX$_37last, i64 %arg122600, i64 %KNY$fargs); tail call
  ret void
}


define void @lam123815(i64 %env123816, i64 %_95122360, i64 %a122256) {
  %envptr124171 = inttoptr i64 %env123816 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124172 = getelementptr inbounds i64, i64* %envptr124171, i64 2              ; &envptr124171[2]
  %a122255 = load i64, i64* %envptr124172, align 8                                   ; load; *envptr124172
  %envptr124173 = inttoptr i64 %env123816 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124174 = getelementptr inbounds i64, i64* %envptr124173, i64 1              ; &envptr124173[1]
  %cont122356 = load i64, i64* %envptr124174, align 8                                ; load; *envptr124174
  %retprim122361 = call i64 @prim_cons(i64 %a122255, i64 %a122256)                   ; call prim_cons
  %arg122605 = add i64 0, 0                                                          ; quoted ()
  %cloptr124175 = inttoptr i64 %cont122356 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124175)                                       ; assert function application
  %i0ptr124176 = getelementptr inbounds i64, i64* %cloptr124175, i64 0               ; &cloptr124175[0]
  %f124178 = load i64, i64* %i0ptr124176, align 8                                    ; load; *i0ptr124176
  %fptr124177 = inttoptr i64 %f124178 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124177(i64 %cont122356, i64 %arg122605, i64 %retprim122361); tail call
  ret void
}


define void @lam123811(i64 %env123812, i64 %_95122364, i64 %gLH$_37foldl) {
  %envptr124179 = inttoptr i64 %env123812 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124180 = getelementptr inbounds i64, i64* %envptr124179, i64 2              ; &envptr124179[2]
  %oY7$_37foldl1 = load i64, i64* %envptr124180, align 8                             ; load; *envptr124180
  %envptr124181 = inttoptr i64 %env123812 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124182 = getelementptr inbounds i64, i64* %envptr124181, i64 1              ; &envptr124181[1]
  %CcD$_37length = load i64, i64* %envptr124182, align 8                             ; load; *envptr124182
  %cloptr124183 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124184 = getelementptr inbounds i64, i64* %cloptr124183, i64 0                ; &cloptr124183[0]
  %f124185 = ptrtoint void(i64,i64,i64,i64)* @lam123809 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124185, i64* %eptr124184                                               ; store fptr
  %xwR$_37_62 = ptrtoint i64* %cloptr124183 to i64                                   ; closure cast; i64* -> i64
  %cloptr124186 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124187 = getelementptr inbounds i64, i64* %cloptr124186, i64 0                ; &cloptr124186[0]
  %f124188 = ptrtoint void(i64,i64,i64,i64)* @lam123806 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124188, i64* %eptr124187                                               ; store fptr
  %N7a$_37_62_61 = ptrtoint i64* %cloptr124186 to i64                                ; closure cast; i64* -> i64
  %arg122625 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg122624 = add i64 0, 0                                                          ; quoted ()
  %joH$_37append = call i64 @prim_make_45vector(i64 %arg122625, i64 %arg122624)      ; call prim_make_45vector
  %arg122627 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr124189 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr124191 = getelementptr inbounds i64, i64* %cloptr124189, i64 1                ; &eptr124191[1]
  store i64 %joH$_37append, i64* %eptr124191                                         ; *eptr124191 = %joH$_37append
  %eptr124190 = getelementptr inbounds i64, i64* %cloptr124189, i64 0                ; &cloptr124189[0]
  %f124192 = ptrtoint void(i64,i64,i64,i64)* @lam123800 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124192, i64* %eptr124190                                               ; store fptr
  %arg122626 = ptrtoint i64* %cloptr124189 to i64                                    ; closure cast; i64* -> i64
  %rk4$_950 = call i64 @prim_vector_45set_33(i64 %joH$_37append, i64 %arg122627, i64 %arg122626); call prim_vector_45set_33
  %arg122646 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122457 = call i64 @prim_vector_45ref(i64 %joH$_37append, i64 %arg122646)   ; call prim_vector_45ref
  %cloptr124193 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124195 = getelementptr inbounds i64, i64* %cloptr124193, i64 1                ; &eptr124195[1]
  %eptr124196 = getelementptr inbounds i64, i64* %cloptr124193, i64 2                ; &eptr124196[2]
  %eptr124197 = getelementptr inbounds i64, i64* %cloptr124193, i64 3                ; &eptr124197[3]
  store i64 %CcD$_37length, i64* %eptr124195                                         ; *eptr124195 = %CcD$_37length
  store i64 %oY7$_37foldl1, i64* %eptr124196                                         ; *eptr124196 = %oY7$_37foldl1
  store i64 %xwR$_37_62, i64* %eptr124197                                            ; *eptr124197 = %xwR$_37_62
  %eptr124194 = getelementptr inbounds i64, i64* %cloptr124193, i64 0                ; &cloptr124193[0]
  %f124198 = ptrtoint void(i64,i64,i64)* @lam123792 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124198, i64* %eptr124194                                               ; store fptr
  %arg122650 = ptrtoint i64* %cloptr124193 to i64                                    ; closure cast; i64* -> i64
  %arg122649 = add i64 0, 0                                                          ; quoted ()
  %cloptr124199 = inttoptr i64 %arg122650 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124199)                                       ; assert function application
  %i0ptr124200 = getelementptr inbounds i64, i64* %cloptr124199, i64 0               ; &cloptr124199[0]
  %f124202 = load i64, i64* %i0ptr124200, align 8                                    ; load; *i0ptr124200
  %fptr124201 = inttoptr i64 %f124202 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124201(i64 %arg122650, i64 %arg122649, i64 %retprim122457); tail call
  ret void
}


define void @lam123809(i64 %env123810, i64 %cont122365, i64 %jjO$a, i64 %nle$b) {
  %a122266 = call i64 @prim__60_61(i64 %jjO$a, i64 %nle$b)                           ; call prim__60_61
  %retprim122366 = call i64 @prim_not(i64 %a122266)                                  ; call prim_not
  %arg122616 = add i64 0, 0                                                          ; quoted ()
  %cloptr124203 = inttoptr i64 %cont122365 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124203)                                       ; assert function application
  %i0ptr124204 = getelementptr inbounds i64, i64* %cloptr124203, i64 0               ; &cloptr124203[0]
  %f124206 = load i64, i64* %i0ptr124204, align 8                                    ; load; *i0ptr124204
  %fptr124205 = inttoptr i64 %f124206 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124205(i64 %cont122365, i64 %arg122616, i64 %retprim122366); tail call
  ret void
}


define void @lam123806(i64 %env123807, i64 %cont122367, i64 %KLi$a, i64 %M01$b) {
  %a122267 = call i64 @prim__60(i64 %KLi$a, i64 %M01$b)                              ; call prim__60
  %retprim122368 = call i64 @prim_not(i64 %a122267)                                  ; call prim_not
  %arg122622 = add i64 0, 0                                                          ; quoted ()
  %cloptr124207 = inttoptr i64 %cont122367 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124207)                                       ; assert function application
  %i0ptr124208 = getelementptr inbounds i64, i64* %cloptr124207, i64 0               ; &cloptr124207[0]
  %f124210 = load i64, i64* %i0ptr124208, align 8                                    ; load; *i0ptr124208
  %fptr124209 = inttoptr i64 %f124210 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124209(i64 %cont122367, i64 %arg122622, i64 %retprim122368); tail call
  ret void
}


define void @lam123800(i64 %env123801, i64 %cont122454, i64 %Cj4$ls0, i64 %Lj7$ls1) {
  %envptr124211 = inttoptr i64 %env123801 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124212 = getelementptr inbounds i64, i64* %envptr124211, i64 1              ; &envptr124211[1]
  %joH$_37append = load i64, i64* %envptr124212, align 8                             ; load; *envptr124212
  %a122268 = call i64 @prim_null_63(i64 %Cj4$ls0)                                    ; call prim_null_63
  %cmp124213 = icmp eq i64 %a122268, 15                                              ; false?
  br i1 %cmp124213, label %else124215, label %then124214                             ; if

then124214:
  %arg122631 = add i64 0, 0                                                          ; quoted ()
  %cloptr124216 = inttoptr i64 %cont122454 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124216)                                       ; assert function application
  %i0ptr124217 = getelementptr inbounds i64, i64* %cloptr124216, i64 0               ; &cloptr124216[0]
  %f124219 = load i64, i64* %i0ptr124217, align 8                                    ; load; *i0ptr124217
  %fptr124218 = inttoptr i64 %f124219 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124218(i64 %cont122454, i64 %arg122631, i64 %Lj7$ls1); tail call
  ret void

else124215:
  %a122269 = call i64 @prim_car(i64 %Cj4$ls0)                                        ; call prim_car
  %arg122634 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122270 = call i64 @prim_vector_45ref(i64 %joH$_37append, i64 %arg122634)         ; call prim_vector_45ref
  %a122271 = call i64 @prim_cdr(i64 %Cj4$ls0)                                        ; call prim_cdr
  %cloptr124220 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124222 = getelementptr inbounds i64, i64* %cloptr124220, i64 1                ; &eptr124222[1]
  %eptr124223 = getelementptr inbounds i64, i64* %cloptr124220, i64 2                ; &eptr124223[2]
  store i64 %a122269, i64* %eptr124222                                               ; *eptr124222 = %a122269
  store i64 %cont122454, i64* %eptr124223                                            ; *eptr124223 = %cont122454
  %eptr124221 = getelementptr inbounds i64, i64* %cloptr124220, i64 0                ; &cloptr124220[0]
  %f124224 = ptrtoint void(i64,i64,i64)* @lam123797 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124224, i64* %eptr124221                                               ; store fptr
  %arg122639 = ptrtoint i64* %cloptr124220 to i64                                    ; closure cast; i64* -> i64
  %cloptr124225 = inttoptr i64 %a122270 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124225)                                       ; assert function application
  %i0ptr124226 = getelementptr inbounds i64, i64* %cloptr124225, i64 0               ; &cloptr124225[0]
  %f124228 = load i64, i64* %i0ptr124226, align 8                                    ; load; *i0ptr124226
  %fptr124227 = inttoptr i64 %f124228 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124227(i64 %a122270, i64 %arg122639, i64 %a122271, i64 %Lj7$ls1); tail call
  ret void
}


define void @lam123797(i64 %env123798, i64 %_95122455, i64 %a122272) {
  %envptr124229 = inttoptr i64 %env123798 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124230 = getelementptr inbounds i64, i64* %envptr124229, i64 2              ; &envptr124229[2]
  %cont122454 = load i64, i64* %envptr124230, align 8                                ; load; *envptr124230
  %envptr124231 = inttoptr i64 %env123798 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124232 = getelementptr inbounds i64, i64* %envptr124231, i64 1              ; &envptr124231[1]
  %a122269 = load i64, i64* %envptr124232, align 8                                   ; load; *envptr124232
  %retprim122456 = call i64 @prim_cons(i64 %a122269, i64 %a122272)                   ; call prim_cons
  %arg122644 = add i64 0, 0                                                          ; quoted ()
  %cloptr124233 = inttoptr i64 %cont122454 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124233)                                       ; assert function application
  %i0ptr124234 = getelementptr inbounds i64, i64* %cloptr124233, i64 0               ; &cloptr124233[0]
  %f124236 = load i64, i64* %i0ptr124234, align 8                                    ; load; *i0ptr124234
  %fptr124235 = inttoptr i64 %f124236 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124235(i64 %cont122454, i64 %arg122644, i64 %retprim122456); tail call
  ret void
}


define void @lam123792(i64 %env123793, i64 %_95122369, i64 %B18$_37append) {
  %envptr124237 = inttoptr i64 %env123793 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124238 = getelementptr inbounds i64, i64* %envptr124237, i64 3              ; &envptr124237[3]
  %xwR$_37_62 = load i64, i64* %envptr124238, align 8                                ; load; *envptr124238
  %envptr124239 = inttoptr i64 %env123793 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124240 = getelementptr inbounds i64, i64* %envptr124239, i64 2              ; &envptr124239[2]
  %oY7$_37foldl1 = load i64, i64* %envptr124240, align 8                             ; load; *envptr124240
  %envptr124241 = inttoptr i64 %env123793 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124242 = getelementptr inbounds i64, i64* %envptr124241, i64 1              ; &envptr124241[1]
  %CcD$_37length = load i64, i64* %envptr124242, align 8                             ; load; *envptr124242
  %cloptr124243 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124244 = getelementptr inbounds i64, i64* %cloptr124243, i64 0                ; &cloptr124243[0]
  %f124245 = ptrtoint void(i64,i64,i64)* @lam123790 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124245, i64* %eptr124244                                               ; store fptr
  %wVG$_37list_63 = ptrtoint i64* %cloptr124243 to i64                               ; closure cast; i64* -> i64
  %cloptr124246 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124247 = getelementptr inbounds i64, i64* %cloptr124246, i64 0                ; &cloptr124246[0]
  %f124248 = ptrtoint void(i64,i64,i64,i64)* @lam123750 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124248, i64* %eptr124247                                               ; store fptr
  %ClD$_37drop = ptrtoint i64* %cloptr124246 to i64                                  ; closure cast; i64* -> i64
  %cloptr124249 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124250 = getelementptr inbounds i64, i64* %cloptr124249, i64 0                ; &cloptr124249[0]
  %f124251 = ptrtoint void(i64,i64,i64,i64)* @lam123710 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124251, i64* %eptr124250                                               ; store fptr
  %Xmv$_37memv = ptrtoint i64* %cloptr124249 to i64                                  ; closure cast; i64* -> i64
  %cloptr124252 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr124254 = getelementptr inbounds i64, i64* %cloptr124252, i64 1                ; &eptr124254[1]
  store i64 %oY7$_37foldl1, i64* %eptr124254                                         ; *eptr124254 = %oY7$_37foldl1
  %eptr124253 = getelementptr inbounds i64, i64* %cloptr124252, i64 0                ; &cloptr124252[0]
  %f124255 = ptrtoint void(i64,i64)* @lam123679 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124255, i64* %eptr124253                                               ; store fptr
  %Mu0$_37_47 = ptrtoint i64* %cloptr124252 to i64                                   ; closure cast; i64* -> i64
  %cloptr124256 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124257 = getelementptr inbounds i64, i64* %cloptr124256, i64 0                ; &cloptr124256[0]
  %f124258 = ptrtoint void(i64,i64,i64)* @lam123671 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124258, i64* %eptr124257                                               ; store fptr
  %Axa$_37first = ptrtoint i64* %cloptr124256 to i64                                 ; closure cast; i64* -> i64
  %cloptr124259 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124260 = getelementptr inbounds i64, i64* %cloptr124259, i64 0                ; &cloptr124259[0]
  %f124261 = ptrtoint void(i64,i64,i64)* @lam123668 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124261, i64* %eptr124260                                               ; store fptr
  %NPk$_37second = ptrtoint i64* %cloptr124259 to i64                                ; closure cast; i64* -> i64
  %cloptr124262 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124263 = getelementptr inbounds i64, i64* %cloptr124262, i64 0                ; &cloptr124262[0]
  %f124264 = ptrtoint void(i64,i64,i64)* @lam123665 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124264, i64* %eptr124263                                               ; store fptr
  %i1e$_37third = ptrtoint i64* %cloptr124262 to i64                                 ; closure cast; i64* -> i64
  %cloptr124265 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124266 = getelementptr inbounds i64, i64* %cloptr124265, i64 0                ; &cloptr124265[0]
  %f124267 = ptrtoint void(i64,i64,i64)* @lam123662 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124267, i64* %eptr124266                                               ; store fptr
  %M6b$_37fourth = ptrtoint i64* %cloptr124265 to i64                                ; closure cast; i64* -> i64
  %cloptr124268 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124269 = getelementptr inbounds i64, i64* %cloptr124268, i64 0                ; &cloptr124268[0]
  %f124270 = ptrtoint void(i64,i64,i64)* @lam123659 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124270, i64* %eptr124269                                               ; store fptr
  %eRi$promise_63 = ptrtoint i64* %cloptr124268 to i64                               ; closure cast; i64* -> i64
  %cloptr124271 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124272 = getelementptr inbounds i64, i64* %cloptr124271, i64 0                ; &cloptr124271[0]
  %f124273 = ptrtoint void(i64,i64)* @lam123653 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124273, i64* %eptr124272                                               ; store fptr
  %arg122912 = ptrtoint i64* %cloptr124271 to i64                                    ; closure cast; i64* -> i64
  %cloptr124274 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124276 = getelementptr inbounds i64, i64* %cloptr124274, i64 1                ; &eptr124276[1]
  %eptr124277 = getelementptr inbounds i64, i64* %cloptr124274, i64 2                ; &eptr124277[2]
  %eptr124278 = getelementptr inbounds i64, i64* %cloptr124274, i64 3                ; &eptr124278[3]
  store i64 %CcD$_37length, i64* %eptr124276                                         ; *eptr124276 = %CcD$_37length
  store i64 %xwR$_37_62, i64* %eptr124277                                            ; *eptr124277 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124278                                           ; *eptr124278 = %ClD$_37drop
  %eptr124275 = getelementptr inbounds i64, i64* %cloptr124274, i64 0                ; &cloptr124274[0]
  %f124279 = ptrtoint void(i64,i64,i64)* @lam123650 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124279, i64* %eptr124275                                               ; store fptr
  %arg122911 = ptrtoint i64* %cloptr124274 to i64                                    ; closure cast; i64* -> i64
  %rva123394 = add i64 0, 0                                                          ; quoted ()
  %rva123393 = call i64 @prim_cons(i64 %arg122911, i64 %rva123394)                   ; call prim_cons
  %cloptr124280 = inttoptr i64 %arg122912 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124280)                                       ; assert function application
  %i0ptr124281 = getelementptr inbounds i64, i64* %cloptr124280, i64 0               ; &cloptr124280[0]
  %f124283 = load i64, i64* %i0ptr124281, align 8                                    ; load; *i0ptr124281
  %fptr124282 = inttoptr i64 %f124283 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124282(i64 %arg122912, i64 %rva123393)              ; tail call
  ret void
}


define void @lam123790(i64 %env123791, i64 %cont122370, i64 %Lq2$a) {
  %arg122652 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %rSL$a = call i64 @prim_make_45vector(i64 %arg122652, i64 %Lq2$a)                  ; call prim_make_45vector
  %cloptr124284 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124285 = getelementptr inbounds i64, i64* %cloptr124284, i64 0                ; &cloptr124284[0]
  %f124286 = ptrtoint void(i64,i64,i64)* @lam123787 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124286, i64* %eptr124285                                               ; store fptr
  %arg122655 = ptrtoint i64* %cloptr124284 to i64                                    ; closure cast; i64* -> i64
  %cloptr124287 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124289 = getelementptr inbounds i64, i64* %cloptr124287, i64 1                ; &eptr124289[1]
  %eptr124290 = getelementptr inbounds i64, i64* %cloptr124287, i64 2                ; &eptr124290[2]
  store i64 %rSL$a, i64* %eptr124289                                                 ; *eptr124289 = %rSL$a
  store i64 %cont122370, i64* %eptr124290                                            ; *eptr124290 = %cont122370
  %eptr124288 = getelementptr inbounds i64, i64* %cloptr124287, i64 0                ; &cloptr124287[0]
  %f124291 = ptrtoint void(i64,i64,i64)* @lam123784 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124291, i64* %eptr124288                                               ; store fptr
  %arg122654 = ptrtoint i64* %cloptr124287 to i64                                    ; closure cast; i64* -> i64
  %cloptr124292 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124294 = getelementptr inbounds i64, i64* %cloptr124292, i64 1                ; &eptr124294[1]
  %eptr124295 = getelementptr inbounds i64, i64* %cloptr124292, i64 2                ; &eptr124295[2]
  store i64 %rSL$a, i64* %eptr124294                                                 ; *eptr124294 = %rSL$a
  store i64 %cont122370, i64* %eptr124295                                            ; *eptr124295 = %cont122370
  %eptr124293 = getelementptr inbounds i64, i64* %cloptr124292, i64 0                ; &cloptr124292[0]
  %f124296 = ptrtoint void(i64,i64,i64)* @lam123767 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124296, i64* %eptr124293                                               ; store fptr
  %arg122653 = ptrtoint i64* %cloptr124292 to i64                                    ; closure cast; i64* -> i64
  %cloptr124297 = inttoptr i64 %arg122655 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124297)                                       ; assert function application
  %i0ptr124298 = getelementptr inbounds i64, i64* %cloptr124297, i64 0               ; &cloptr124297[0]
  %f124300 = load i64, i64* %i0ptr124298, align 8                                    ; load; *i0ptr124298
  %fptr124299 = inttoptr i64 %f124300 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124299(i64 %arg122655, i64 %arg122654, i64 %arg122653); tail call
  ret void
}


define void @lam123787(i64 %env123788, i64 %cont122376, i64 %uwi$k) {
  %arg122657 = add i64 0, 0                                                          ; quoted ()
  %cloptr124301 = inttoptr i64 %cont122376 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124301)                                       ; assert function application
  %i0ptr124302 = getelementptr inbounds i64, i64* %cloptr124301, i64 0               ; &cloptr124301[0]
  %f124304 = load i64, i64* %i0ptr124302, align 8                                    ; load; *i0ptr124302
  %fptr124303 = inttoptr i64 %f124304 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124303(i64 %cont122376, i64 %arg122657, i64 %uwi$k) ; tail call
  ret void
}


define void @lam123784(i64 %env123785, i64 %_95122371, i64 %RD3$cc) {
  %envptr124305 = inttoptr i64 %env123785 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124306 = getelementptr inbounds i64, i64* %envptr124305, i64 2              ; &envptr124305[2]
  %cont122370 = load i64, i64* %envptr124306, align 8                                ; load; *envptr124306
  %envptr124307 = inttoptr i64 %env123785 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124308 = getelementptr inbounds i64, i64* %envptr124307, i64 1              ; &envptr124307[1]
  %rSL$a = load i64, i64* %envptr124308, align 8                                     ; load; *envptr124308
  %arg122659 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122273 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122659)                 ; call prim_vector_45ref
  %a122274 = call i64 @prim_null_63(i64 %a122273)                                    ; call prim_null_63
  %cmp124309 = icmp eq i64 %a122274, 15                                              ; false?
  br i1 %cmp124309, label %else124311, label %then124310                             ; if

then124310:
  %arg122663 = add i64 0, 0                                                          ; quoted ()
  %arg122662 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr124312 = inttoptr i64 %cont122370 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124312)                                       ; assert function application
  %i0ptr124313 = getelementptr inbounds i64, i64* %cloptr124312, i64 0               ; &cloptr124312[0]
  %f124315 = load i64, i64* %i0ptr124313, align 8                                    ; load; *i0ptr124313
  %fptr124314 = inttoptr i64 %f124315 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124314(i64 %cont122370, i64 %arg122663, i64 %arg122662); tail call
  ret void

else124311:
  %arg122665 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122275 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122665)                 ; call prim_vector_45ref
  %a122276 = call i64 @prim_cons_63(i64 %a122275)                                    ; call prim_cons_63
  %cmp124316 = icmp eq i64 %a122276, 15                                              ; false?
  br i1 %cmp124316, label %else124318, label %then124317                             ; if

then124317:
  %arg122668 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122277 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122668)                 ; call prim_vector_45ref
  %retprim122375 = call i64 @prim_cdr(i64 %a122277)                                  ; call prim_cdr
  %cloptr124319 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124321 = getelementptr inbounds i64, i64* %cloptr124319, i64 1                ; &eptr124321[1]
  %eptr124322 = getelementptr inbounds i64, i64* %cloptr124319, i64 2                ; &eptr124322[2]
  %eptr124323 = getelementptr inbounds i64, i64* %cloptr124319, i64 3                ; &eptr124323[3]
  store i64 %RD3$cc, i64* %eptr124321                                                ; *eptr124321 = %RD3$cc
  store i64 %rSL$a, i64* %eptr124322                                                 ; *eptr124322 = %rSL$a
  store i64 %cont122370, i64* %eptr124323                                            ; *eptr124323 = %cont122370
  %eptr124320 = getelementptr inbounds i64, i64* %cloptr124319, i64 0                ; &cloptr124319[0]
  %f124324 = ptrtoint void(i64,i64,i64)* @lam123777 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124324, i64* %eptr124320                                               ; store fptr
  %arg122673 = ptrtoint i64* %cloptr124319 to i64                                    ; closure cast; i64* -> i64
  %arg122672 = add i64 0, 0                                                          ; quoted ()
  %cloptr124325 = inttoptr i64 %arg122673 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124325)                                       ; assert function application
  %i0ptr124326 = getelementptr inbounds i64, i64* %cloptr124325, i64 0               ; &cloptr124325[0]
  %f124328 = load i64, i64* %i0ptr124326, align 8                                    ; load; *i0ptr124326
  %fptr124327 = inttoptr i64 %f124328 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124327(i64 %arg122673, i64 %arg122672, i64 %retprim122375); tail call
  ret void

else124318:
  %arg122687 = add i64 0, 0                                                          ; quoted ()
  %arg122686 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr124329 = inttoptr i64 %cont122370 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124329)                                       ; assert function application
  %i0ptr124330 = getelementptr inbounds i64, i64* %cloptr124329, i64 0               ; &cloptr124329[0]
  %f124332 = load i64, i64* %i0ptr124330, align 8                                    ; load; *i0ptr124330
  %fptr124331 = inttoptr i64 %f124332 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124331(i64 %cont122370, i64 %arg122687, i64 %arg122686); tail call
  ret void
}


define void @lam123777(i64 %env123778, i64 %_95122372, i64 %App$b) {
  %envptr124333 = inttoptr i64 %env123778 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124334 = getelementptr inbounds i64, i64* %envptr124333, i64 3              ; &envptr124333[3]
  %cont122370 = load i64, i64* %envptr124334, align 8                                ; load; *envptr124334
  %envptr124335 = inttoptr i64 %env123778 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124336 = getelementptr inbounds i64, i64* %envptr124335, i64 2              ; &envptr124335[2]
  %rSL$a = load i64, i64* %envptr124336, align 8                                     ; load; *envptr124336
  %envptr124337 = inttoptr i64 %env123778 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124338 = getelementptr inbounds i64, i64* %envptr124337, i64 1              ; &envptr124337[1]
  %RD3$cc = load i64, i64* %envptr124338, align 8                                    ; load; *envptr124338
  %arg122674 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122278 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122674)                 ; call prim_vector_45ref
  %a122279 = call i64 @prim_cdr(i64 %a122278)                                        ; call prim_cdr
  %arg122678 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122374 = call i64 @prim_vector_45set_33(i64 %rSL$a, i64 %arg122678, i64 %a122279); call prim_vector_45set_33
  %cloptr124339 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124341 = getelementptr inbounds i64, i64* %cloptr124339, i64 1                ; &eptr124341[1]
  %eptr124342 = getelementptr inbounds i64, i64* %cloptr124339, i64 2                ; &eptr124342[2]
  store i64 %RD3$cc, i64* %eptr124341                                                ; *eptr124341 = %RD3$cc
  store i64 %cont122370, i64* %eptr124342                                            ; *eptr124342 = %cont122370
  %eptr124340 = getelementptr inbounds i64, i64* %cloptr124339, i64 0                ; &cloptr124339[0]
  %f124343 = ptrtoint void(i64,i64,i64)* @lam123773 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124343, i64* %eptr124340                                               ; store fptr
  %arg122682 = ptrtoint i64* %cloptr124339 to i64                                    ; closure cast; i64* -> i64
  %arg122681 = add i64 0, 0                                                          ; quoted ()
  %cloptr124344 = inttoptr i64 %arg122682 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124344)                                       ; assert function application
  %i0ptr124345 = getelementptr inbounds i64, i64* %cloptr124344, i64 0               ; &cloptr124344[0]
  %f124347 = load i64, i64* %i0ptr124345, align 8                                    ; load; *i0ptr124345
  %fptr124346 = inttoptr i64 %f124347 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124346(i64 %arg122682, i64 %arg122681, i64 %retprim122374); tail call
  ret void
}


define void @lam123773(i64 %env123774, i64 %_95122373, i64 %g0y$_950) {
  %envptr124348 = inttoptr i64 %env123774 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124349 = getelementptr inbounds i64, i64* %envptr124348, i64 2              ; &envptr124348[2]
  %cont122370 = load i64, i64* %envptr124349, align 8                                ; load; *envptr124349
  %envptr124350 = inttoptr i64 %env123774 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124351 = getelementptr inbounds i64, i64* %envptr124350, i64 1              ; &envptr124350[1]
  %RD3$cc = load i64, i64* %envptr124351, align 8                                    ; load; *envptr124351
  %cloptr124352 = inttoptr i64 %RD3$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124352)                                       ; assert function application
  %i0ptr124353 = getelementptr inbounds i64, i64* %cloptr124352, i64 0               ; &cloptr124352[0]
  %f124355 = load i64, i64* %i0ptr124353, align 8                                    ; load; *i0ptr124353
  %fptr124354 = inttoptr i64 %f124355 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124354(i64 %RD3$cc, i64 %cont122370, i64 %RD3$cc)   ; tail call
  ret void
}


define void @lam123767(i64 %env123768, i64 %_95122371, i64 %RD3$cc) {
  %envptr124356 = inttoptr i64 %env123768 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124357 = getelementptr inbounds i64, i64* %envptr124356, i64 2              ; &envptr124356[2]
  %cont122370 = load i64, i64* %envptr124357, align 8                                ; load; *envptr124357
  %envptr124358 = inttoptr i64 %env123768 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124359 = getelementptr inbounds i64, i64* %envptr124358, i64 1              ; &envptr124358[1]
  %rSL$a = load i64, i64* %envptr124359, align 8                                     ; load; *envptr124359
  %arg122689 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122273 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122689)                 ; call prim_vector_45ref
  %a122274 = call i64 @prim_null_63(i64 %a122273)                                    ; call prim_null_63
  %cmp124360 = icmp eq i64 %a122274, 15                                              ; false?
  br i1 %cmp124360, label %else124362, label %then124361                             ; if

then124361:
  %arg122693 = add i64 0, 0                                                          ; quoted ()
  %arg122692 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr124363 = inttoptr i64 %cont122370 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124363)                                       ; assert function application
  %i0ptr124364 = getelementptr inbounds i64, i64* %cloptr124363, i64 0               ; &cloptr124363[0]
  %f124366 = load i64, i64* %i0ptr124364, align 8                                    ; load; *i0ptr124364
  %fptr124365 = inttoptr i64 %f124366 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124365(i64 %cont122370, i64 %arg122693, i64 %arg122692); tail call
  ret void

else124362:
  %arg122695 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122275 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122695)                 ; call prim_vector_45ref
  %a122276 = call i64 @prim_cons_63(i64 %a122275)                                    ; call prim_cons_63
  %cmp124367 = icmp eq i64 %a122276, 15                                              ; false?
  br i1 %cmp124367, label %else124369, label %then124368                             ; if

then124368:
  %arg122698 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122277 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122698)                 ; call prim_vector_45ref
  %retprim122375 = call i64 @prim_cdr(i64 %a122277)                                  ; call prim_cdr
  %cloptr124370 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124372 = getelementptr inbounds i64, i64* %cloptr124370, i64 1                ; &eptr124372[1]
  %eptr124373 = getelementptr inbounds i64, i64* %cloptr124370, i64 2                ; &eptr124373[2]
  %eptr124374 = getelementptr inbounds i64, i64* %cloptr124370, i64 3                ; &eptr124374[3]
  store i64 %RD3$cc, i64* %eptr124372                                                ; *eptr124372 = %RD3$cc
  store i64 %rSL$a, i64* %eptr124373                                                 ; *eptr124373 = %rSL$a
  store i64 %cont122370, i64* %eptr124374                                            ; *eptr124374 = %cont122370
  %eptr124371 = getelementptr inbounds i64, i64* %cloptr124370, i64 0                ; &cloptr124370[0]
  %f124375 = ptrtoint void(i64,i64,i64)* @lam123760 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124375, i64* %eptr124371                                               ; store fptr
  %arg122703 = ptrtoint i64* %cloptr124370 to i64                                    ; closure cast; i64* -> i64
  %arg122702 = add i64 0, 0                                                          ; quoted ()
  %cloptr124376 = inttoptr i64 %arg122703 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124376)                                       ; assert function application
  %i0ptr124377 = getelementptr inbounds i64, i64* %cloptr124376, i64 0               ; &cloptr124376[0]
  %f124379 = load i64, i64* %i0ptr124377, align 8                                    ; load; *i0ptr124377
  %fptr124378 = inttoptr i64 %f124379 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124378(i64 %arg122703, i64 %arg122702, i64 %retprim122375); tail call
  ret void

else124369:
  %arg122717 = add i64 0, 0                                                          ; quoted ()
  %arg122716 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr124380 = inttoptr i64 %cont122370 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124380)                                       ; assert function application
  %i0ptr124381 = getelementptr inbounds i64, i64* %cloptr124380, i64 0               ; &cloptr124380[0]
  %f124383 = load i64, i64* %i0ptr124381, align 8                                    ; load; *i0ptr124381
  %fptr124382 = inttoptr i64 %f124383 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124382(i64 %cont122370, i64 %arg122717, i64 %arg122716); tail call
  ret void
}


define void @lam123760(i64 %env123761, i64 %_95122372, i64 %App$b) {
  %envptr124384 = inttoptr i64 %env123761 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124385 = getelementptr inbounds i64, i64* %envptr124384, i64 3              ; &envptr124384[3]
  %cont122370 = load i64, i64* %envptr124385, align 8                                ; load; *envptr124385
  %envptr124386 = inttoptr i64 %env123761 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124387 = getelementptr inbounds i64, i64* %envptr124386, i64 2              ; &envptr124386[2]
  %rSL$a = load i64, i64* %envptr124387, align 8                                     ; load; *envptr124387
  %envptr124388 = inttoptr i64 %env123761 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124389 = getelementptr inbounds i64, i64* %envptr124388, i64 1              ; &envptr124388[1]
  %RD3$cc = load i64, i64* %envptr124389, align 8                                    ; load; *envptr124389
  %arg122704 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122278 = call i64 @prim_vector_45ref(i64 %rSL$a, i64 %arg122704)                 ; call prim_vector_45ref
  %a122279 = call i64 @prim_cdr(i64 %a122278)                                        ; call prim_cdr
  %arg122708 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122374 = call i64 @prim_vector_45set_33(i64 %rSL$a, i64 %arg122708, i64 %a122279); call prim_vector_45set_33
  %cloptr124390 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124392 = getelementptr inbounds i64, i64* %cloptr124390, i64 1                ; &eptr124392[1]
  %eptr124393 = getelementptr inbounds i64, i64* %cloptr124390, i64 2                ; &eptr124393[2]
  store i64 %RD3$cc, i64* %eptr124392                                                ; *eptr124392 = %RD3$cc
  store i64 %cont122370, i64* %eptr124393                                            ; *eptr124393 = %cont122370
  %eptr124391 = getelementptr inbounds i64, i64* %cloptr124390, i64 0                ; &cloptr124390[0]
  %f124394 = ptrtoint void(i64,i64,i64)* @lam123756 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124394, i64* %eptr124391                                               ; store fptr
  %arg122712 = ptrtoint i64* %cloptr124390 to i64                                    ; closure cast; i64* -> i64
  %arg122711 = add i64 0, 0                                                          ; quoted ()
  %cloptr124395 = inttoptr i64 %arg122712 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124395)                                       ; assert function application
  %i0ptr124396 = getelementptr inbounds i64, i64* %cloptr124395, i64 0               ; &cloptr124395[0]
  %f124398 = load i64, i64* %i0ptr124396, align 8                                    ; load; *i0ptr124396
  %fptr124397 = inttoptr i64 %f124398 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124397(i64 %arg122712, i64 %arg122711, i64 %retprim122374); tail call
  ret void
}


define void @lam123756(i64 %env123757, i64 %_95122373, i64 %g0y$_950) {
  %envptr124399 = inttoptr i64 %env123757 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124400 = getelementptr inbounds i64, i64* %envptr124399, i64 2              ; &envptr124399[2]
  %cont122370 = load i64, i64* %envptr124400, align 8                                ; load; *envptr124400
  %envptr124401 = inttoptr i64 %env123757 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124402 = getelementptr inbounds i64, i64* %envptr124401, i64 1              ; &envptr124401[1]
  %RD3$cc = load i64, i64* %envptr124402, align 8                                    ; load; *envptr124402
  %cloptr124403 = inttoptr i64 %RD3$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124403)                                       ; assert function application
  %i0ptr124404 = getelementptr inbounds i64, i64* %cloptr124403, i64 0               ; &cloptr124403[0]
  %f124406 = load i64, i64* %i0ptr124404, align 8                                    ; load; *i0ptr124404
  %fptr124405 = inttoptr i64 %f124406 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124405(i64 %RD3$cc, i64 %cont122370, i64 %RD3$cc)   ; tail call
  ret void
}


define void @lam123750(i64 %env123751, i64 %cont122377, i64 %wLz$lst, i64 %HBA$n) {
  %arg122720 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %GRE$lst = call i64 @prim_make_45vector(i64 %arg122720, i64 %wLz$lst)              ; call prim_make_45vector
  %arg122722 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %zkB$n = call i64 @prim_make_45vector(i64 %arg122722, i64 %HBA$n)                  ; call prim_make_45vector
  %cloptr124407 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124408 = getelementptr inbounds i64, i64* %cloptr124407, i64 0                ; &cloptr124407[0]
  %f124409 = ptrtoint void(i64,i64,i64)* @lam123746 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124409, i64* %eptr124408                                               ; store fptr
  %arg122725 = ptrtoint i64* %cloptr124407 to i64                                    ; closure cast; i64* -> i64
  %cloptr124410 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124412 = getelementptr inbounds i64, i64* %cloptr124410, i64 1                ; &eptr124412[1]
  %eptr124413 = getelementptr inbounds i64, i64* %cloptr124410, i64 2                ; &eptr124413[2]
  %eptr124414 = getelementptr inbounds i64, i64* %cloptr124410, i64 3                ; &eptr124414[3]
  store i64 %cont122377, i64* %eptr124412                                            ; *eptr124412 = %cont122377
  store i64 %zkB$n, i64* %eptr124413                                                 ; *eptr124413 = %zkB$n
  store i64 %GRE$lst, i64* %eptr124414                                               ; *eptr124414 = %GRE$lst
  %eptr124411 = getelementptr inbounds i64, i64* %cloptr124410, i64 0                ; &cloptr124410[0]
  %f124415 = ptrtoint void(i64,i64,i64)* @lam123744 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124415, i64* %eptr124411                                               ; store fptr
  %arg122724 = ptrtoint i64* %cloptr124410 to i64                                    ; closure cast; i64* -> i64
  %cloptr124416 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124418 = getelementptr inbounds i64, i64* %cloptr124416, i64 1                ; &eptr124418[1]
  %eptr124419 = getelementptr inbounds i64, i64* %cloptr124416, i64 2                ; &eptr124419[2]
  %eptr124420 = getelementptr inbounds i64, i64* %cloptr124416, i64 3                ; &eptr124420[3]
  store i64 %cont122377, i64* %eptr124418                                            ; *eptr124418 = %cont122377
  store i64 %zkB$n, i64* %eptr124419                                                 ; *eptr124419 = %zkB$n
  store i64 %GRE$lst, i64* %eptr124420                                               ; *eptr124420 = %GRE$lst
  %eptr124417 = getelementptr inbounds i64, i64* %cloptr124416, i64 0                ; &cloptr124416[0]
  %f124421 = ptrtoint void(i64,i64,i64)* @lam123727 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124421, i64* %eptr124417                                               ; store fptr
  %arg122723 = ptrtoint i64* %cloptr124416 to i64                                    ; closure cast; i64* -> i64
  %cloptr124422 = inttoptr i64 %arg122725 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124422)                                       ; assert function application
  %i0ptr124423 = getelementptr inbounds i64, i64* %cloptr124422, i64 0               ; &cloptr124422[0]
  %f124425 = load i64, i64* %i0ptr124423, align 8                                    ; load; *i0ptr124423
  %fptr124424 = inttoptr i64 %f124425 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124424(i64 %arg122725, i64 %arg122724, i64 %arg122723); tail call
  ret void
}


define void @lam123746(i64 %env123747, i64 %cont122384, i64 %kym$u) {
  %cloptr124426 = inttoptr i64 %kym$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124426)                                       ; assert function application
  %i0ptr124427 = getelementptr inbounds i64, i64* %cloptr124426, i64 0               ; &cloptr124426[0]
  %f124429 = load i64, i64* %i0ptr124427, align 8                                    ; load; *i0ptr124427
  %fptr124428 = inttoptr i64 %f124429 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124428(i64 %kym$u, i64 %cont122384, i64 %kym$u)     ; tail call
  ret void
}


define void @lam123744(i64 %env123745, i64 %_95122378, i64 %LuZ$cc) {
  %envptr124430 = inttoptr i64 %env123745 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124431 = getelementptr inbounds i64, i64* %envptr124430, i64 3              ; &envptr124430[3]
  %GRE$lst = load i64, i64* %envptr124431, align 8                                   ; load; *envptr124431
  %envptr124432 = inttoptr i64 %env123745 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124433 = getelementptr inbounds i64, i64* %envptr124432, i64 2              ; &envptr124432[2]
  %zkB$n = load i64, i64* %envptr124433, align 8                                     ; load; *envptr124433
  %envptr124434 = inttoptr i64 %env123745 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124435 = getelementptr inbounds i64, i64* %envptr124434, i64 1              ; &envptr124434[1]
  %cont122377 = load i64, i64* %envptr124435, align 8                                ; load; *envptr124435
  %arg122729 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122280 = call i64 @prim_vector_45ref(i64 %zkB$n, i64 %arg122729)                 ; call prim_vector_45ref
  %arg122732 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122281 = call i64 @prim__61(i64 %arg122732, i64 %a122280)                        ; call prim__61
  %cmp124436 = icmp eq i64 %a122281, 15                                              ; false?
  br i1 %cmp124436, label %else124438, label %then124437                             ; if

then124437:
  %arg122733 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122379 = call i64 @prim_vector_45ref(i64 %GRE$lst, i64 %arg122733)         ; call prim_vector_45ref
  %arg122736 = add i64 0, 0                                                          ; quoted ()
  %cloptr124439 = inttoptr i64 %cont122377 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124439)                                       ; assert function application
  %i0ptr124440 = getelementptr inbounds i64, i64* %cloptr124439, i64 0               ; &cloptr124439[0]
  %f124442 = load i64, i64* %i0ptr124440, align 8                                    ; load; *i0ptr124440
  %fptr124441 = inttoptr i64 %f124442 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124441(i64 %cont122377, i64 %arg122736, i64 %retprim122379); tail call
  ret void

else124438:
  %arg122738 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122282 = call i64 @prim_vector_45ref(i64 %GRE$lst, i64 %arg122738)               ; call prim_vector_45ref
  %a122283 = call i64 @prim_cdr(i64 %a122282)                                        ; call prim_cdr
  %arg122742 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122383 = call i64 @prim_vector_45set_33(i64 %GRE$lst, i64 %arg122742, i64 %a122283); call prim_vector_45set_33
  %cloptr124443 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124445 = getelementptr inbounds i64, i64* %cloptr124443, i64 1                ; &eptr124445[1]
  %eptr124446 = getelementptr inbounds i64, i64* %cloptr124443, i64 2                ; &eptr124446[2]
  %eptr124447 = getelementptr inbounds i64, i64* %cloptr124443, i64 3                ; &eptr124447[3]
  store i64 %cont122377, i64* %eptr124445                                            ; *eptr124445 = %cont122377
  store i64 %LuZ$cc, i64* %eptr124446                                                ; *eptr124446 = %LuZ$cc
  store i64 %zkB$n, i64* %eptr124447                                                 ; *eptr124447 = %zkB$n
  %eptr124444 = getelementptr inbounds i64, i64* %cloptr124443, i64 0                ; &cloptr124443[0]
  %f124448 = ptrtoint void(i64,i64,i64)* @lam123738 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124448, i64* %eptr124444                                               ; store fptr
  %arg122746 = ptrtoint i64* %cloptr124443 to i64                                    ; closure cast; i64* -> i64
  %arg122745 = add i64 0, 0                                                          ; quoted ()
  %cloptr124449 = inttoptr i64 %arg122746 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124449)                                       ; assert function application
  %i0ptr124450 = getelementptr inbounds i64, i64* %cloptr124449, i64 0               ; &cloptr124449[0]
  %f124452 = load i64, i64* %i0ptr124450, align 8                                    ; load; *i0ptr124450
  %fptr124451 = inttoptr i64 %f124452 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124451(i64 %arg122746, i64 %arg122745, i64 %retprim122383); tail call
  ret void
}


define void @lam123738(i64 %env123739, i64 %_95122380, i64 %UM6$_950) {
  %envptr124453 = inttoptr i64 %env123739 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124454 = getelementptr inbounds i64, i64* %envptr124453, i64 3              ; &envptr124453[3]
  %zkB$n = load i64, i64* %envptr124454, align 8                                     ; load; *envptr124454
  %envptr124455 = inttoptr i64 %env123739 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124456 = getelementptr inbounds i64, i64* %envptr124455, i64 2              ; &envptr124455[2]
  %LuZ$cc = load i64, i64* %envptr124456, align 8                                    ; load; *envptr124456
  %envptr124457 = inttoptr i64 %env123739 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124458 = getelementptr inbounds i64, i64* %envptr124457, i64 1              ; &envptr124457[1]
  %cont122377 = load i64, i64* %envptr124458, align 8                                ; load; *envptr124458
  %arg122747 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122284 = call i64 @prim_vector_45ref(i64 %zkB$n, i64 %arg122747)                 ; call prim_vector_45ref
  %arg122749 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a122285 = call i64 @prim__45(i64 %a122284, i64 %arg122749)                        ; call prim__45
  %arg122752 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122382 = call i64 @prim_vector_45set_33(i64 %zkB$n, i64 %arg122752, i64 %a122285); call prim_vector_45set_33
  %cloptr124459 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124461 = getelementptr inbounds i64, i64* %cloptr124459, i64 1                ; &eptr124461[1]
  %eptr124462 = getelementptr inbounds i64, i64* %cloptr124459, i64 2                ; &eptr124462[2]
  store i64 %cont122377, i64* %eptr124461                                            ; *eptr124461 = %cont122377
  store i64 %LuZ$cc, i64* %eptr124462                                                ; *eptr124462 = %LuZ$cc
  %eptr124460 = getelementptr inbounds i64, i64* %cloptr124459, i64 0                ; &cloptr124459[0]
  %f124463 = ptrtoint void(i64,i64,i64)* @lam123733 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124463, i64* %eptr124460                                               ; store fptr
  %arg122756 = ptrtoint i64* %cloptr124459 to i64                                    ; closure cast; i64* -> i64
  %arg122755 = add i64 0, 0                                                          ; quoted ()
  %cloptr124464 = inttoptr i64 %arg122756 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124464)                                       ; assert function application
  %i0ptr124465 = getelementptr inbounds i64, i64* %cloptr124464, i64 0               ; &cloptr124464[0]
  %f124467 = load i64, i64* %i0ptr124465, align 8                                    ; load; *i0ptr124465
  %fptr124466 = inttoptr i64 %f124467 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124466(i64 %arg122756, i64 %arg122755, i64 %retprim122382); tail call
  ret void
}


define void @lam123733(i64 %env123734, i64 %_95122381, i64 %LpE$_951) {
  %envptr124468 = inttoptr i64 %env123734 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124469 = getelementptr inbounds i64, i64* %envptr124468, i64 2              ; &envptr124468[2]
  %LuZ$cc = load i64, i64* %envptr124469, align 8                                    ; load; *envptr124469
  %envptr124470 = inttoptr i64 %env123734 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124471 = getelementptr inbounds i64, i64* %envptr124470, i64 1              ; &envptr124470[1]
  %cont122377 = load i64, i64* %envptr124471, align 8                                ; load; *envptr124471
  %cloptr124472 = inttoptr i64 %LuZ$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124472)                                       ; assert function application
  %i0ptr124473 = getelementptr inbounds i64, i64* %cloptr124472, i64 0               ; &cloptr124472[0]
  %f124475 = load i64, i64* %i0ptr124473, align 8                                    ; load; *i0ptr124473
  %fptr124474 = inttoptr i64 %f124475 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124474(i64 %LuZ$cc, i64 %cont122377, i64 %LuZ$cc)   ; tail call
  ret void
}


define void @lam123727(i64 %env123728, i64 %_95122378, i64 %LuZ$cc) {
  %envptr124476 = inttoptr i64 %env123728 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124477 = getelementptr inbounds i64, i64* %envptr124476, i64 3              ; &envptr124476[3]
  %GRE$lst = load i64, i64* %envptr124477, align 8                                   ; load; *envptr124477
  %envptr124478 = inttoptr i64 %env123728 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124479 = getelementptr inbounds i64, i64* %envptr124478, i64 2              ; &envptr124478[2]
  %zkB$n = load i64, i64* %envptr124479, align 8                                     ; load; *envptr124479
  %envptr124480 = inttoptr i64 %env123728 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124481 = getelementptr inbounds i64, i64* %envptr124480, i64 1              ; &envptr124480[1]
  %cont122377 = load i64, i64* %envptr124481, align 8                                ; load; *envptr124481
  %arg122760 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122280 = call i64 @prim_vector_45ref(i64 %zkB$n, i64 %arg122760)                 ; call prim_vector_45ref
  %arg122763 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122281 = call i64 @prim__61(i64 %arg122763, i64 %a122280)                        ; call prim__61
  %cmp124482 = icmp eq i64 %a122281, 15                                              ; false?
  br i1 %cmp124482, label %else124484, label %then124483                             ; if

then124483:
  %arg122764 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122379 = call i64 @prim_vector_45ref(i64 %GRE$lst, i64 %arg122764)         ; call prim_vector_45ref
  %arg122767 = add i64 0, 0                                                          ; quoted ()
  %cloptr124485 = inttoptr i64 %cont122377 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124485)                                       ; assert function application
  %i0ptr124486 = getelementptr inbounds i64, i64* %cloptr124485, i64 0               ; &cloptr124485[0]
  %f124488 = load i64, i64* %i0ptr124486, align 8                                    ; load; *i0ptr124486
  %fptr124487 = inttoptr i64 %f124488 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124487(i64 %cont122377, i64 %arg122767, i64 %retprim122379); tail call
  ret void

else124484:
  %arg122769 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122282 = call i64 @prim_vector_45ref(i64 %GRE$lst, i64 %arg122769)               ; call prim_vector_45ref
  %a122283 = call i64 @prim_cdr(i64 %a122282)                                        ; call prim_cdr
  %arg122773 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122383 = call i64 @prim_vector_45set_33(i64 %GRE$lst, i64 %arg122773, i64 %a122283); call prim_vector_45set_33
  %cloptr124489 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124491 = getelementptr inbounds i64, i64* %cloptr124489, i64 1                ; &eptr124491[1]
  %eptr124492 = getelementptr inbounds i64, i64* %cloptr124489, i64 2                ; &eptr124492[2]
  %eptr124493 = getelementptr inbounds i64, i64* %cloptr124489, i64 3                ; &eptr124493[3]
  store i64 %cont122377, i64* %eptr124491                                            ; *eptr124491 = %cont122377
  store i64 %LuZ$cc, i64* %eptr124492                                                ; *eptr124492 = %LuZ$cc
  store i64 %zkB$n, i64* %eptr124493                                                 ; *eptr124493 = %zkB$n
  %eptr124490 = getelementptr inbounds i64, i64* %cloptr124489, i64 0                ; &cloptr124489[0]
  %f124494 = ptrtoint void(i64,i64,i64)* @lam123721 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124494, i64* %eptr124490                                               ; store fptr
  %arg122777 = ptrtoint i64* %cloptr124489 to i64                                    ; closure cast; i64* -> i64
  %arg122776 = add i64 0, 0                                                          ; quoted ()
  %cloptr124495 = inttoptr i64 %arg122777 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124495)                                       ; assert function application
  %i0ptr124496 = getelementptr inbounds i64, i64* %cloptr124495, i64 0               ; &cloptr124495[0]
  %f124498 = load i64, i64* %i0ptr124496, align 8                                    ; load; *i0ptr124496
  %fptr124497 = inttoptr i64 %f124498 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124497(i64 %arg122777, i64 %arg122776, i64 %retprim122383); tail call
  ret void
}


define void @lam123721(i64 %env123722, i64 %_95122380, i64 %UM6$_950) {
  %envptr124499 = inttoptr i64 %env123722 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124500 = getelementptr inbounds i64, i64* %envptr124499, i64 3              ; &envptr124499[3]
  %zkB$n = load i64, i64* %envptr124500, align 8                                     ; load; *envptr124500
  %envptr124501 = inttoptr i64 %env123722 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124502 = getelementptr inbounds i64, i64* %envptr124501, i64 2              ; &envptr124501[2]
  %LuZ$cc = load i64, i64* %envptr124502, align 8                                    ; load; *envptr124502
  %envptr124503 = inttoptr i64 %env123722 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124504 = getelementptr inbounds i64, i64* %envptr124503, i64 1              ; &envptr124503[1]
  %cont122377 = load i64, i64* %envptr124504, align 8                                ; load; *envptr124504
  %arg122778 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122284 = call i64 @prim_vector_45ref(i64 %zkB$n, i64 %arg122778)                 ; call prim_vector_45ref
  %arg122780 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a122285 = call i64 @prim__45(i64 %a122284, i64 %arg122780)                        ; call prim__45
  %arg122783 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122382 = call i64 @prim_vector_45set_33(i64 %zkB$n, i64 %arg122783, i64 %a122285); call prim_vector_45set_33
  %cloptr124505 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124507 = getelementptr inbounds i64, i64* %cloptr124505, i64 1                ; &eptr124507[1]
  %eptr124508 = getelementptr inbounds i64, i64* %cloptr124505, i64 2                ; &eptr124508[2]
  store i64 %cont122377, i64* %eptr124507                                            ; *eptr124507 = %cont122377
  store i64 %LuZ$cc, i64* %eptr124508                                                ; *eptr124508 = %LuZ$cc
  %eptr124506 = getelementptr inbounds i64, i64* %cloptr124505, i64 0                ; &cloptr124505[0]
  %f124509 = ptrtoint void(i64,i64,i64)* @lam123716 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124509, i64* %eptr124506                                               ; store fptr
  %arg122787 = ptrtoint i64* %cloptr124505 to i64                                    ; closure cast; i64* -> i64
  %arg122786 = add i64 0, 0                                                          ; quoted ()
  %cloptr124510 = inttoptr i64 %arg122787 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124510)                                       ; assert function application
  %i0ptr124511 = getelementptr inbounds i64, i64* %cloptr124510, i64 0               ; &cloptr124510[0]
  %f124513 = load i64, i64* %i0ptr124511, align 8                                    ; load; *i0ptr124511
  %fptr124512 = inttoptr i64 %f124513 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124512(i64 %arg122787, i64 %arg122786, i64 %retprim122382); tail call
  ret void
}


define void @lam123716(i64 %env123717, i64 %_95122381, i64 %LpE$_951) {
  %envptr124514 = inttoptr i64 %env123717 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124515 = getelementptr inbounds i64, i64* %envptr124514, i64 2              ; &envptr124514[2]
  %LuZ$cc = load i64, i64* %envptr124515, align 8                                    ; load; *envptr124515
  %envptr124516 = inttoptr i64 %env123717 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124517 = getelementptr inbounds i64, i64* %envptr124516, i64 1              ; &envptr124516[1]
  %cont122377 = load i64, i64* %envptr124517, align 8                                ; load; *envptr124517
  %cloptr124518 = inttoptr i64 %LuZ$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124518)                                       ; assert function application
  %i0ptr124519 = getelementptr inbounds i64, i64* %cloptr124518, i64 0               ; &cloptr124518[0]
  %f124521 = load i64, i64* %i0ptr124519, align 8                                    ; load; *i0ptr124519
  %fptr124520 = inttoptr i64 %f124521 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124520(i64 %LuZ$cc, i64 %cont122377, i64 %LuZ$cc)   ; tail call
  ret void
}


define void @lam123710(i64 %env123711, i64 %cont122385, i64 %WIW$v, i64 %rN8$lst) {
  %arg122792 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %aFX$lst = call i64 @prim_make_45vector(i64 %arg122792, i64 %rN8$lst)              ; call prim_make_45vector
  %cloptr124522 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124523 = getelementptr inbounds i64, i64* %cloptr124522, i64 0                ; &cloptr124522[0]
  %f124524 = ptrtoint void(i64,i64,i64)* @lam123707 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124524, i64* %eptr124523                                               ; store fptr
  %arg122795 = ptrtoint i64* %cloptr124522 to i64                                    ; closure cast; i64* -> i64
  %cloptr124525 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124527 = getelementptr inbounds i64, i64* %cloptr124525, i64 1                ; &eptr124527[1]
  %eptr124528 = getelementptr inbounds i64, i64* %cloptr124525, i64 2                ; &eptr124528[2]
  %eptr124529 = getelementptr inbounds i64, i64* %cloptr124525, i64 3                ; &eptr124529[3]
  store i64 %WIW$v, i64* %eptr124527                                                 ; *eptr124527 = %WIW$v
  store i64 %aFX$lst, i64* %eptr124528                                               ; *eptr124528 = %aFX$lst
  store i64 %cont122385, i64* %eptr124529                                            ; *eptr124529 = %cont122385
  %eptr124526 = getelementptr inbounds i64, i64* %cloptr124525, i64 0                ; &cloptr124525[0]
  %f124530 = ptrtoint void(i64,i64,i64)* @lam123705 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124530, i64* %eptr124526                                               ; store fptr
  %arg122794 = ptrtoint i64* %cloptr124525 to i64                                    ; closure cast; i64* -> i64
  %cloptr124531 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124533 = getelementptr inbounds i64, i64* %cloptr124531, i64 1                ; &eptr124533[1]
  %eptr124534 = getelementptr inbounds i64, i64* %cloptr124531, i64 2                ; &eptr124534[2]
  %eptr124535 = getelementptr inbounds i64, i64* %cloptr124531, i64 3                ; &eptr124535[3]
  store i64 %WIW$v, i64* %eptr124533                                                 ; *eptr124533 = %WIW$v
  store i64 %aFX$lst, i64* %eptr124534                                               ; *eptr124534 = %aFX$lst
  store i64 %cont122385, i64* %eptr124535                                            ; *eptr124535 = %cont122385
  %eptr124532 = getelementptr inbounds i64, i64* %cloptr124531, i64 0                ; &cloptr124531[0]
  %f124536 = ptrtoint void(i64,i64,i64)* @lam123692 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124536, i64* %eptr124532                                               ; store fptr
  %arg122793 = ptrtoint i64* %cloptr124531 to i64                                    ; closure cast; i64* -> i64
  %cloptr124537 = inttoptr i64 %arg122795 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124537)                                       ; assert function application
  %i0ptr124538 = getelementptr inbounds i64, i64* %cloptr124537, i64 0               ; &cloptr124537[0]
  %f124540 = load i64, i64* %i0ptr124538, align 8                                    ; load; *i0ptr124538
  %fptr124539 = inttoptr i64 %f124540 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124539(i64 %arg122795, i64 %arg122794, i64 %arg122793); tail call
  ret void
}


define void @lam123707(i64 %env123708, i64 %cont122390, i64 %vlt$u) {
  %cloptr124541 = inttoptr i64 %vlt$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124541)                                       ; assert function application
  %i0ptr124542 = getelementptr inbounds i64, i64* %cloptr124541, i64 0               ; &cloptr124541[0]
  %f124544 = load i64, i64* %i0ptr124542, align 8                                    ; load; *i0ptr124542
  %fptr124543 = inttoptr i64 %f124544 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124543(i64 %vlt$u, i64 %cont122390, i64 %vlt$u)     ; tail call
  ret void
}


define void @lam123705(i64 %env123706, i64 %_95122386, i64 %vY8$cc) {
  %envptr124545 = inttoptr i64 %env123706 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124546 = getelementptr inbounds i64, i64* %envptr124545, i64 3              ; &envptr124545[3]
  %cont122385 = load i64, i64* %envptr124546, align 8                                ; load; *envptr124546
  %envptr124547 = inttoptr i64 %env123706 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124548 = getelementptr inbounds i64, i64* %envptr124547, i64 2              ; &envptr124547[2]
  %aFX$lst = load i64, i64* %envptr124548, align 8                                   ; load; *envptr124548
  %envptr124549 = inttoptr i64 %env123706 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124550 = getelementptr inbounds i64, i64* %envptr124549, i64 1              ; &envptr124549[1]
  %WIW$v = load i64, i64* %envptr124550, align 8                                     ; load; *envptr124550
  %arg122799 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122286 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122799)               ; call prim_vector_45ref
  %a122287 = call i64 @prim_null_63(i64 %a122286)                                    ; call prim_null_63
  %cmp124551 = icmp eq i64 %a122287, 15                                              ; false?
  br i1 %cmp124551, label %else124553, label %then124552                             ; if

then124552:
  %arg122803 = add i64 0, 0                                                          ; quoted ()
  %arg122802 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr124554 = inttoptr i64 %cont122385 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124554)                                       ; assert function application
  %i0ptr124555 = getelementptr inbounds i64, i64* %cloptr124554, i64 0               ; &cloptr124554[0]
  %f124557 = load i64, i64* %i0ptr124555, align 8                                    ; load; *i0ptr124555
  %fptr124556 = inttoptr i64 %f124557 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124556(i64 %cont122385, i64 %arg122803, i64 %arg122802); tail call
  ret void

else124553:
  %arg122805 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122288 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122805)               ; call prim_vector_45ref
  %a122289 = call i64 @prim_car(i64 %a122288)                                        ; call prim_car
  %a122290 = call i64 @prim_eqv_63(i64 %a122289, i64 %WIW$v)                         ; call prim_eqv_63
  %cmp124558 = icmp eq i64 %a122290, 15                                              ; false?
  br i1 %cmp124558, label %else124560, label %then124559                             ; if

then124559:
  %arg122810 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122387 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122810)         ; call prim_vector_45ref
  %arg122813 = add i64 0, 0                                                          ; quoted ()
  %cloptr124561 = inttoptr i64 %cont122385 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124561)                                       ; assert function application
  %i0ptr124562 = getelementptr inbounds i64, i64* %cloptr124561, i64 0               ; &cloptr124561[0]
  %f124564 = load i64, i64* %i0ptr124562, align 8                                    ; load; *i0ptr124562
  %fptr124563 = inttoptr i64 %f124564 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124563(i64 %cont122385, i64 %arg122813, i64 %retprim122387); tail call
  ret void

else124560:
  %arg122815 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122291 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122815)               ; call prim_vector_45ref
  %a122292 = call i64 @prim_cdr(i64 %a122291)                                        ; call prim_cdr
  %arg122819 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122389 = call i64 @prim_vector_45set_33(i64 %aFX$lst, i64 %arg122819, i64 %a122292); call prim_vector_45set_33
  %cloptr124565 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124567 = getelementptr inbounds i64, i64* %cloptr124565, i64 1                ; &eptr124567[1]
  %eptr124568 = getelementptr inbounds i64, i64* %cloptr124565, i64 2                ; &eptr124568[2]
  store i64 %vY8$cc, i64* %eptr124567                                                ; *eptr124567 = %vY8$cc
  store i64 %cont122385, i64* %eptr124568                                            ; *eptr124568 = %cont122385
  %eptr124566 = getelementptr inbounds i64, i64* %cloptr124565, i64 0                ; &cloptr124565[0]
  %f124569 = ptrtoint void(i64,i64,i64)* @lam123699 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124569, i64* %eptr124566                                               ; store fptr
  %arg122823 = ptrtoint i64* %cloptr124565 to i64                                    ; closure cast; i64* -> i64
  %arg122822 = add i64 0, 0                                                          ; quoted ()
  %cloptr124570 = inttoptr i64 %arg122823 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124570)                                       ; assert function application
  %i0ptr124571 = getelementptr inbounds i64, i64* %cloptr124570, i64 0               ; &cloptr124570[0]
  %f124573 = load i64, i64* %i0ptr124571, align 8                                    ; load; *i0ptr124571
  %fptr124572 = inttoptr i64 %f124573 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124572(i64 %arg122823, i64 %arg122822, i64 %retprim122389); tail call
  ret void
}


define void @lam123699(i64 %env123700, i64 %_95122388, i64 %Wu5$_950) {
  %envptr124574 = inttoptr i64 %env123700 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124575 = getelementptr inbounds i64, i64* %envptr124574, i64 2              ; &envptr124574[2]
  %cont122385 = load i64, i64* %envptr124575, align 8                                ; load; *envptr124575
  %envptr124576 = inttoptr i64 %env123700 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124577 = getelementptr inbounds i64, i64* %envptr124576, i64 1              ; &envptr124576[1]
  %vY8$cc = load i64, i64* %envptr124577, align 8                                    ; load; *envptr124577
  %cloptr124578 = inttoptr i64 %vY8$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124578)                                       ; assert function application
  %i0ptr124579 = getelementptr inbounds i64, i64* %cloptr124578, i64 0               ; &cloptr124578[0]
  %f124581 = load i64, i64* %i0ptr124579, align 8                                    ; load; *i0ptr124579
  %fptr124580 = inttoptr i64 %f124581 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124580(i64 %vY8$cc, i64 %cont122385, i64 %vY8$cc)   ; tail call
  ret void
}


define void @lam123692(i64 %env123693, i64 %_95122386, i64 %vY8$cc) {
  %envptr124582 = inttoptr i64 %env123693 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124583 = getelementptr inbounds i64, i64* %envptr124582, i64 3              ; &envptr124582[3]
  %cont122385 = load i64, i64* %envptr124583, align 8                                ; load; *envptr124583
  %envptr124584 = inttoptr i64 %env123693 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124585 = getelementptr inbounds i64, i64* %envptr124584, i64 2              ; &envptr124584[2]
  %aFX$lst = load i64, i64* %envptr124585, align 8                                   ; load; *envptr124585
  %envptr124586 = inttoptr i64 %env123693 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124587 = getelementptr inbounds i64, i64* %envptr124586, i64 1              ; &envptr124586[1]
  %WIW$v = load i64, i64* %envptr124587, align 8                                     ; load; *envptr124587
  %arg122827 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122286 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122827)               ; call prim_vector_45ref
  %a122287 = call i64 @prim_null_63(i64 %a122286)                                    ; call prim_null_63
  %cmp124588 = icmp eq i64 %a122287, 15                                              ; false?
  br i1 %cmp124588, label %else124590, label %then124589                             ; if

then124589:
  %arg122831 = add i64 0, 0                                                          ; quoted ()
  %arg122830 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr124591 = inttoptr i64 %cont122385 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124591)                                       ; assert function application
  %i0ptr124592 = getelementptr inbounds i64, i64* %cloptr124591, i64 0               ; &cloptr124591[0]
  %f124594 = load i64, i64* %i0ptr124592, align 8                                    ; load; *i0ptr124592
  %fptr124593 = inttoptr i64 %f124594 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124593(i64 %cont122385, i64 %arg122831, i64 %arg122830); tail call
  ret void

else124590:
  %arg122833 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122288 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122833)               ; call prim_vector_45ref
  %a122289 = call i64 @prim_car(i64 %a122288)                                        ; call prim_car
  %a122290 = call i64 @prim_eqv_63(i64 %a122289, i64 %WIW$v)                         ; call prim_eqv_63
  %cmp124595 = icmp eq i64 %a122290, 15                                              ; false?
  br i1 %cmp124595, label %else124597, label %then124596                             ; if

then124596:
  %arg122838 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122387 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122838)         ; call prim_vector_45ref
  %arg122841 = add i64 0, 0                                                          ; quoted ()
  %cloptr124598 = inttoptr i64 %cont122385 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124598)                                       ; assert function application
  %i0ptr124599 = getelementptr inbounds i64, i64* %cloptr124598, i64 0               ; &cloptr124598[0]
  %f124601 = load i64, i64* %i0ptr124599, align 8                                    ; load; *i0ptr124599
  %fptr124600 = inttoptr i64 %f124601 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124600(i64 %cont122385, i64 %arg122841, i64 %retprim122387); tail call
  ret void

else124597:
  %arg122843 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122291 = call i64 @prim_vector_45ref(i64 %aFX$lst, i64 %arg122843)               ; call prim_vector_45ref
  %a122292 = call i64 @prim_cdr(i64 %a122291)                                        ; call prim_cdr
  %arg122847 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122389 = call i64 @prim_vector_45set_33(i64 %aFX$lst, i64 %arg122847, i64 %a122292); call prim_vector_45set_33
  %cloptr124602 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124604 = getelementptr inbounds i64, i64* %cloptr124602, i64 1                ; &eptr124604[1]
  %eptr124605 = getelementptr inbounds i64, i64* %cloptr124602, i64 2                ; &eptr124605[2]
  store i64 %vY8$cc, i64* %eptr124604                                                ; *eptr124604 = %vY8$cc
  store i64 %cont122385, i64* %eptr124605                                            ; *eptr124605 = %cont122385
  %eptr124603 = getelementptr inbounds i64, i64* %cloptr124602, i64 0                ; &cloptr124602[0]
  %f124606 = ptrtoint void(i64,i64,i64)* @lam123686 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124606, i64* %eptr124603                                               ; store fptr
  %arg122851 = ptrtoint i64* %cloptr124602 to i64                                    ; closure cast; i64* -> i64
  %arg122850 = add i64 0, 0                                                          ; quoted ()
  %cloptr124607 = inttoptr i64 %arg122851 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124607)                                       ; assert function application
  %i0ptr124608 = getelementptr inbounds i64, i64* %cloptr124607, i64 0               ; &cloptr124607[0]
  %f124610 = load i64, i64* %i0ptr124608, align 8                                    ; load; *i0ptr124608
  %fptr124609 = inttoptr i64 %f124610 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124609(i64 %arg122851, i64 %arg122850, i64 %retprim122389); tail call
  ret void
}


define void @lam123686(i64 %env123687, i64 %_95122388, i64 %Wu5$_950) {
  %envptr124611 = inttoptr i64 %env123687 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124612 = getelementptr inbounds i64, i64* %envptr124611, i64 2              ; &envptr124611[2]
  %cont122385 = load i64, i64* %envptr124612, align 8                                ; load; *envptr124612
  %envptr124613 = inttoptr i64 %env123687 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124614 = getelementptr inbounds i64, i64* %envptr124613, i64 1              ; &envptr124613[1]
  %vY8$cc = load i64, i64* %envptr124614, align 8                                    ; load; *envptr124614
  %cloptr124615 = inttoptr i64 %vY8$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124615)                                       ; assert function application
  %i0ptr124616 = getelementptr inbounds i64, i64* %cloptr124615, i64 0               ; &cloptr124615[0]
  %f124618 = load i64, i64* %i0ptr124616, align 8                                    ; load; *i0ptr124616
  %fptr124617 = inttoptr i64 %f124618 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124617(i64 %vY8$cc, i64 %cont122385, i64 %vY8$cc)   ; tail call
  ret void
}


define void @lam123679(i64 %env123680, i64 %AqD$args122392) {
  %envptr124619 = inttoptr i64 %env123680 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124620 = getelementptr inbounds i64, i64* %envptr124619, i64 1              ; &envptr124619[1]
  %oY7$_37foldl1 = load i64, i64* %envptr124620, align 8                             ; load; *envptr124620
  %cont122391 = call i64 @prim_car(i64 %AqD$args122392)                              ; call prim_car
  %AqD$args = call i64 @prim_cdr(i64 %AqD$args122392)                                ; call prim_cdr
  %a122293 = call i64 @prim_null_63(i64 %AqD$args)                                   ; call prim_null_63
  %cmp124621 = icmp eq i64 %a122293, 15                                              ; false?
  br i1 %cmp124621, label %else124623, label %then124622                             ; if

then124622:
  %arg122859 = add i64 0, 0                                                          ; quoted ()
  %arg122858 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr124624 = inttoptr i64 %cont122391 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124624)                                       ; assert function application
  %i0ptr124625 = getelementptr inbounds i64, i64* %cloptr124624, i64 0               ; &cloptr124624[0]
  %f124627 = load i64, i64* %i0ptr124625, align 8                                    ; load; *i0ptr124625
  %fptr124626 = inttoptr i64 %f124627 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124626(i64 %cont122391, i64 %arg122859, i64 %arg122858); tail call
  ret void

else124623:
  %a122294 = call i64 @prim_cdr(i64 %AqD$args)                                       ; call prim_cdr
  %a122295 = call i64 @prim_null_63(i64 %a122294)                                    ; call prim_null_63
  %cmp124628 = icmp eq i64 %a122295, 15                                              ; false?
  br i1 %cmp124628, label %else124630, label %then124629                             ; if

then124629:
  %retprim122393 = call i64 @prim_car(i64 %AqD$args)                                 ; call prim_car
  %arg122865 = add i64 0, 0                                                          ; quoted ()
  %cloptr124631 = inttoptr i64 %cont122391 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124631)                                       ; assert function application
  %i0ptr124632 = getelementptr inbounds i64, i64* %cloptr124631, i64 0               ; &cloptr124631[0]
  %f124634 = load i64, i64* %i0ptr124632, align 8                                    ; load; *i0ptr124632
  %fptr124633 = inttoptr i64 %f124634 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124633(i64 %cont122391, i64 %arg122865, i64 %retprim122393); tail call
  ret void

else124630:
  %a122296 = call i64 @prim_car(i64 %AqD$args)                                       ; call prim_car
  %a122297 = call i64 @prim_cdr(i64 %AqD$args)                                       ; call prim_cdr
  %cloptr124635 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124636 = getelementptr inbounds i64, i64* %cloptr124635, i64 0                ; &cloptr124635[0]
  %f124637 = ptrtoint void(i64,i64,i64,i64)* @lam123677 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124637, i64* %eptr124636                                               ; store fptr
  %arg122871 = ptrtoint i64* %cloptr124635 to i64                                    ; closure cast; i64* -> i64
  %cloptr124638 = inttoptr i64 %oY7$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124638)                                       ; assert function application
  %i0ptr124639 = getelementptr inbounds i64, i64* %cloptr124638, i64 0               ; &cloptr124638[0]
  %f124641 = load i64, i64* %i0ptr124639, align 8                                    ; load; *i0ptr124639
  %fptr124640 = inttoptr i64 %f124641 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124640(i64 %oY7$_37foldl1, i64 %cont122391, i64 %arg122871, i64 %a122296, i64 %a122297); tail call
  ret void
}


define void @lam123677(i64 %env123678, i64 %cont122394, i64 %fsy$n, i64 %DNa$v) {
  %retprim122395 = call i64 @prim__47(i64 %DNa$v, i64 %fsy$n)                        ; call prim__47
  %arg122877 = add i64 0, 0                                                          ; quoted ()
  %cloptr124642 = inttoptr i64 %cont122394 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124642)                                       ; assert function application
  %i0ptr124643 = getelementptr inbounds i64, i64* %cloptr124642, i64 0               ; &cloptr124642[0]
  %f124645 = load i64, i64* %i0ptr124643, align 8                                    ; load; *i0ptr124643
  %fptr124644 = inttoptr i64 %f124645 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124644(i64 %cont122394, i64 %arg122877, i64 %retprim122395); tail call
  ret void
}


define void @lam123671(i64 %env123672, i64 %cont122396, i64 %DXi$x) {
  %retprim122397 = call i64 @prim_car(i64 %DXi$x)                                    ; call prim_car
  %arg122881 = add i64 0, 0                                                          ; quoted ()
  %cloptr124646 = inttoptr i64 %cont122396 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124646)                                       ; assert function application
  %i0ptr124647 = getelementptr inbounds i64, i64* %cloptr124646, i64 0               ; &cloptr124646[0]
  %f124649 = load i64, i64* %i0ptr124647, align 8                                    ; load; *i0ptr124647
  %fptr124648 = inttoptr i64 %f124649 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124648(i64 %cont122396, i64 %arg122881, i64 %retprim122397); tail call
  ret void
}


define void @lam123668(i64 %env123669, i64 %cont122398, i64 %Htc$x) {
  %a122298 = call i64 @prim_cdr(i64 %Htc$x)                                          ; call prim_cdr
  %retprim122399 = call i64 @prim_car(i64 %a122298)                                  ; call prim_car
  %arg122886 = add i64 0, 0                                                          ; quoted ()
  %cloptr124650 = inttoptr i64 %cont122398 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124650)                                       ; assert function application
  %i0ptr124651 = getelementptr inbounds i64, i64* %cloptr124650, i64 0               ; &cloptr124650[0]
  %f124653 = load i64, i64* %i0ptr124651, align 8                                    ; load; *i0ptr124651
  %fptr124652 = inttoptr i64 %f124653 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124652(i64 %cont122398, i64 %arg122886, i64 %retprim122399); tail call
  ret void
}


define void @lam123665(i64 %env123666, i64 %cont122400, i64 %iOJ$x) {
  %a122299 = call i64 @prim_cdr(i64 %iOJ$x)                                          ; call prim_cdr
  %a122300 = call i64 @prim_cdr(i64 %a122299)                                        ; call prim_cdr
  %retprim122401 = call i64 @prim_car(i64 %a122300)                                  ; call prim_car
  %arg122892 = add i64 0, 0                                                          ; quoted ()
  %cloptr124654 = inttoptr i64 %cont122400 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124654)                                       ; assert function application
  %i0ptr124655 = getelementptr inbounds i64, i64* %cloptr124654, i64 0               ; &cloptr124654[0]
  %f124657 = load i64, i64* %i0ptr124655, align 8                                    ; load; *i0ptr124655
  %fptr124656 = inttoptr i64 %f124657 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124656(i64 %cont122400, i64 %arg122892, i64 %retprim122401); tail call
  ret void
}


define void @lam123662(i64 %env123663, i64 %cont122402, i64 %kye$x) {
  %a122301 = call i64 @prim_cdr(i64 %kye$x)                                          ; call prim_cdr
  %a122302 = call i64 @prim_cdr(i64 %a122301)                                        ; call prim_cdr
  %a122303 = call i64 @prim_cdr(i64 %a122302)                                        ; call prim_cdr
  %retprim122403 = call i64 @prim_car(i64 %a122303)                                  ; call prim_car
  %arg122899 = add i64 0, 0                                                          ; quoted ()
  %cloptr124658 = inttoptr i64 %cont122402 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124658)                                       ; assert function application
  %i0ptr124659 = getelementptr inbounds i64, i64* %cloptr124658, i64 0               ; &cloptr124658[0]
  %f124661 = load i64, i64* %i0ptr124659, align 8                                    ; load; *i0ptr124659
  %fptr124660 = inttoptr i64 %f124661 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124660(i64 %cont122402, i64 %arg122899, i64 %retprim122403); tail call
  ret void
}


define void @lam123659(i64 %env123660, i64 %cont122404, i64 %gya$p) {
  %a122304 = call i64 @prim_cons_63(i64 %gya$p)                                      ; call prim_cons_63
  %cmp124662 = icmp eq i64 %a122304, 15                                              ; false?
  br i1 %cmp124662, label %else124664, label %then124663                             ; if

then124663:
  %a122305 = call i64 @prim_car(i64 %gya$p)                                          ; call prim_car
  %arg122903 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym124665, i32 0, i32 0)); quoted string
  %retprim122405 = call i64 @prim_eq_63(i64 %a122305, i64 %arg122903)                ; call prim_eq_63
  %arg122906 = add i64 0, 0                                                          ; quoted ()
  %cloptr124666 = inttoptr i64 %cont122404 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124666)                                       ; assert function application
  %i0ptr124667 = getelementptr inbounds i64, i64* %cloptr124666, i64 0               ; &cloptr124666[0]
  %f124669 = load i64, i64* %i0ptr124667, align 8                                    ; load; *i0ptr124667
  %fptr124668 = inttoptr i64 %f124669 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124668(i64 %cont122404, i64 %arg122906, i64 %retprim122405); tail call
  ret void

else124664:
  %arg122909 = add i64 0, 0                                                          ; quoted ()
  %arg122908 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr124670 = inttoptr i64 %cont122404 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124670)                                       ; assert function application
  %i0ptr124671 = getelementptr inbounds i64, i64* %cloptr124670, i64 0               ; &cloptr124670[0]
  %f124673 = load i64, i64* %i0ptr124671, align 8                                    ; load; *i0ptr124671
  %fptr124672 = inttoptr i64 %f124673 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124672(i64 %cont122404, i64 %arg122909, i64 %arg122908); tail call
  ret void
}


define void @lam123653(i64 %env123654, i64 %ewD$lst122453) {
  %cont122452 = call i64 @prim_car(i64 %ewD$lst122453)                               ; call prim_car
  %ewD$lst = call i64 @prim_cdr(i64 %ewD$lst122453)                                  ; call prim_cdr
  %arg122916 = add i64 0, 0                                                          ; quoted ()
  %cloptr124674 = inttoptr i64 %cont122452 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124674)                                       ; assert function application
  %i0ptr124675 = getelementptr inbounds i64, i64* %cloptr124674, i64 0               ; &cloptr124674[0]
  %f124677 = load i64, i64* %i0ptr124675, align 8                                    ; load; *i0ptr124675
  %fptr124676 = inttoptr i64 %f124677 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124676(i64 %cont122452, i64 %arg122916, i64 %ewD$lst); tail call
  ret void
}


define void @lam123650(i64 %env123651, i64 %_95122406, i64 %Vnx$_37raise_45handler) {
  %envptr124678 = inttoptr i64 %env123651 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124679 = getelementptr inbounds i64, i64* %envptr124678, i64 3              ; &envptr124678[3]
  %ClD$_37drop = load i64, i64* %envptr124679, align 8                               ; load; *envptr124679
  %envptr124680 = inttoptr i64 %env123651 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124681 = getelementptr inbounds i64, i64* %envptr124680, i64 2              ; &envptr124680[2]
  %xwR$_37_62 = load i64, i64* %envptr124681, align 8                                ; load; *envptr124681
  %envptr124682 = inttoptr i64 %env123651 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124683 = getelementptr inbounds i64, i64* %envptr124682, i64 1              ; &envptr124682[1]
  %CcD$_37length = load i64, i64* %envptr124683, align 8                             ; load; *envptr124683
  %cloptr124684 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124685 = getelementptr inbounds i64, i64* %cloptr124684, i64 0                ; &cloptr124684[0]
  %f124686 = ptrtoint void(i64,i64)* @lam123648 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124686, i64* %eptr124685                                               ; store fptr
  %arg122919 = ptrtoint i64* %cloptr124684 to i64                                    ; closure cast; i64* -> i64
  %cloptr124687 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124689 = getelementptr inbounds i64, i64* %cloptr124687, i64 1                ; &eptr124689[1]
  %eptr124690 = getelementptr inbounds i64, i64* %cloptr124687, i64 2                ; &eptr124690[2]
  %eptr124691 = getelementptr inbounds i64, i64* %cloptr124687, i64 3                ; &eptr124691[3]
  store i64 %CcD$_37length, i64* %eptr124689                                         ; *eptr124689 = %CcD$_37length
  store i64 %xwR$_37_62, i64* %eptr124690                                            ; *eptr124690 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124691                                           ; *eptr124691 = %ClD$_37drop
  %eptr124688 = getelementptr inbounds i64, i64* %cloptr124687, i64 0                ; &cloptr124687[0]
  %f124692 = ptrtoint void(i64,i64,i64)* @lam123645 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124692, i64* %eptr124688                                               ; store fptr
  %arg122918 = ptrtoint i64* %cloptr124687 to i64                                    ; closure cast; i64* -> i64
  %rva123392 = add i64 0, 0                                                          ; quoted ()
  %rva123391 = call i64 @prim_cons(i64 %arg122918, i64 %rva123392)                   ; call prim_cons
  %cloptr124693 = inttoptr i64 %arg122919 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124693)                                       ; assert function application
  %i0ptr124694 = getelementptr inbounds i64, i64* %cloptr124693, i64 0               ; &cloptr124693[0]
  %f124696 = load i64, i64* %i0ptr124694, align 8                                    ; load; *i0ptr124694
  %fptr124695 = inttoptr i64 %f124696 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124695(i64 %arg122919, i64 %rva123391)              ; tail call
  ret void
}


define void @lam123648(i64 %env123649, i64 %REy$lst122451) {
  %cont122450 = call i64 @prim_car(i64 %REy$lst122451)                               ; call prim_car
  %REy$lst = call i64 @prim_cdr(i64 %REy$lst122451)                                  ; call prim_cdr
  %arg122923 = add i64 0, 0                                                          ; quoted ()
  %cloptr124697 = inttoptr i64 %cont122450 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124697)                                       ; assert function application
  %i0ptr124698 = getelementptr inbounds i64, i64* %cloptr124697, i64 0               ; &cloptr124697[0]
  %f124700 = load i64, i64* %i0ptr124698, align 8                                    ; load; *i0ptr124698
  %fptr124699 = inttoptr i64 %f124700 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124699(i64 %cont122450, i64 %arg122923, i64 %REy$lst); tail call
  ret void
}


define void @lam123645(i64 %env123646, i64 %_95122448, i64 %a122306) {
  %envptr124701 = inttoptr i64 %env123646 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124702 = getelementptr inbounds i64, i64* %envptr124701, i64 3              ; &envptr124701[3]
  %ClD$_37drop = load i64, i64* %envptr124702, align 8                               ; load; *envptr124702
  %envptr124703 = inttoptr i64 %env123646 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124704 = getelementptr inbounds i64, i64* %envptr124703, i64 2              ; &envptr124703[2]
  %xwR$_37_62 = load i64, i64* %envptr124704, align 8                                ; load; *envptr124704
  %envptr124705 = inttoptr i64 %env123646 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124706 = getelementptr inbounds i64, i64* %envptr124705, i64 1              ; &envptr124705[1]
  %CcD$_37length = load i64, i64* %envptr124706, align 8                             ; load; *envptr124706
  %arg122926 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim122449 = call i64 @prim_make_45vector(i64 %arg122926, i64 %a122306)        ; call prim_make_45vector
  %cloptr124707 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124709 = getelementptr inbounds i64, i64* %cloptr124707, i64 1                ; &eptr124709[1]
  %eptr124710 = getelementptr inbounds i64, i64* %cloptr124707, i64 2                ; &eptr124710[2]
  %eptr124711 = getelementptr inbounds i64, i64* %cloptr124707, i64 3                ; &eptr124711[3]
  store i64 %CcD$_37length, i64* %eptr124709                                         ; *eptr124709 = %CcD$_37length
  store i64 %xwR$_37_62, i64* %eptr124710                                            ; *eptr124710 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124711                                           ; *eptr124711 = %ClD$_37drop
  %eptr124708 = getelementptr inbounds i64, i64* %cloptr124707, i64 0                ; &cloptr124707[0]
  %f124712 = ptrtoint void(i64,i64,i64)* @lam123642 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124712, i64* %eptr124708                                               ; store fptr
  %arg122929 = ptrtoint i64* %cloptr124707 to i64                                    ; closure cast; i64* -> i64
  %arg122928 = add i64 0, 0                                                          ; quoted ()
  %cloptr124713 = inttoptr i64 %arg122929 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124713)                                       ; assert function application
  %i0ptr124714 = getelementptr inbounds i64, i64* %cloptr124713, i64 0               ; &cloptr124713[0]
  %f124716 = load i64, i64* %i0ptr124714, align 8                                    ; load; *i0ptr124714
  %fptr124715 = inttoptr i64 %f124716 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124715(i64 %arg122929, i64 %arg122928, i64 %retprim122449); tail call
  ret void
}


define void @lam123642(i64 %env123643, i64 %_95122407, i64 %IiL$_37wind_45stack) {
  %envptr124717 = inttoptr i64 %env123643 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124718 = getelementptr inbounds i64, i64* %envptr124717, i64 3              ; &envptr124717[3]
  %ClD$_37drop = load i64, i64* %envptr124718, align 8                               ; load; *envptr124718
  %envptr124719 = inttoptr i64 %env123643 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124720 = getelementptr inbounds i64, i64* %envptr124719, i64 2              ; &envptr124719[2]
  %xwR$_37_62 = load i64, i64* %envptr124720, align 8                                ; load; *envptr124720
  %envptr124721 = inttoptr i64 %env123643 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124722 = getelementptr inbounds i64, i64* %envptr124721, i64 1              ; &envptr124721[1]
  %CcD$_37length = load i64, i64* %envptr124722, align 8                             ; load; *envptr124722
  %cloptr124723 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124725 = getelementptr inbounds i64, i64* %cloptr124723, i64 1                ; &eptr124725[1]
  %eptr124726 = getelementptr inbounds i64, i64* %cloptr124723, i64 2                ; &eptr124726[2]
  %eptr124727 = getelementptr inbounds i64, i64* %cloptr124723, i64 3                ; &eptr124727[3]
  store i64 %CcD$_37length, i64* %eptr124725                                         ; *eptr124725 = %CcD$_37length
  store i64 %xwR$_37_62, i64* %eptr124726                                            ; *eptr124726 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124727                                           ; *eptr124727 = %ClD$_37drop
  %eptr124724 = getelementptr inbounds i64, i64* %cloptr124723, i64 0                ; &cloptr124723[0]
  %f124728 = ptrtoint void(i64,i64,i64,i64)* @lam123640 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124728, i64* %eptr124724                                               ; store fptr
  %dAV$_37common_45tail = ptrtoint i64* %cloptr124723 to i64                         ; closure cast; i64* -> i64
  %cloptr124729 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr124731 = getelementptr inbounds i64, i64* %cloptr124729, i64 1                ; &eptr124731[1]
  %eptr124732 = getelementptr inbounds i64, i64* %cloptr124729, i64 2                ; &eptr124732[2]
  store i64 %dAV$_37common_45tail, i64* %eptr124731                                  ; *eptr124731 = %dAV$_37common_45tail
  store i64 %IiL$_37wind_45stack, i64* %eptr124732                                   ; *eptr124732 = %IiL$_37wind_45stack
  %eptr124730 = getelementptr inbounds i64, i64* %cloptr124729, i64 0                ; &cloptr124729[0]
  %f124733 = ptrtoint void(i64,i64,i64)* @lam123598 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124733, i64* %eptr124730                                               ; store fptr
  %fjF$_37do_45wind = ptrtoint i64* %cloptr124729 to i64                             ; closure cast; i64* -> i64
  %cloptr124734 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124735 = getelementptr inbounds i64, i64* %cloptr124734, i64 0                ; &cloptr124734[0]
  %f124736 = ptrtoint void(i64,i64)* @lam123548 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124736, i64* %eptr124735                                               ; store fptr
  %arg123115 = ptrtoint i64* %cloptr124734 to i64                                    ; closure cast; i64* -> i64
  %cloptr124737 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124738 = getelementptr inbounds i64, i64* %cloptr124737, i64 0                ; &cloptr124737[0]
  %f124739 = ptrtoint void(i64,i64)* @lam123544 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124739, i64* %eptr124738                                               ; store fptr
  %arg123114 = ptrtoint i64* %cloptr124737 to i64                                    ; closure cast; i64* -> i64
  %rva123390 = add i64 0, 0                                                          ; quoted ()
  %rva123389 = call i64 @prim_cons(i64 %arg123114, i64 %rva123390)                   ; call prim_cons
  %cloptr124740 = inttoptr i64 %arg123115 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124740)                                       ; assert function application
  %i0ptr124741 = getelementptr inbounds i64, i64* %cloptr124740, i64 0               ; &cloptr124740[0]
  %f124743 = load i64, i64* %i0ptr124741, align 8                                    ; load; *i0ptr124741
  %fptr124742 = inttoptr i64 %f124743 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124742(i64 %arg123115, i64 %rva123389)              ; tail call
  ret void
}


define void @lam123640(i64 %env123641, i64 %cont122408, i64 %T64$x, i64 %mCI$y) {
  %envptr124744 = inttoptr i64 %env123641 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124745 = getelementptr inbounds i64, i64* %envptr124744, i64 3              ; &envptr124744[3]
  %ClD$_37drop = load i64, i64* %envptr124745, align 8                               ; load; *envptr124745
  %envptr124746 = inttoptr i64 %env123641 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124747 = getelementptr inbounds i64, i64* %envptr124746, i64 2              ; &envptr124746[2]
  %xwR$_37_62 = load i64, i64* %envptr124747, align 8                                ; load; *envptr124747
  %envptr124748 = inttoptr i64 %env123641 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124749 = getelementptr inbounds i64, i64* %envptr124748, i64 1              ; &envptr124748[1]
  %CcD$_37length = load i64, i64* %envptr124749, align 8                             ; load; *envptr124749
  %cloptr124750 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr124752 = getelementptr inbounds i64, i64* %cloptr124750, i64 1                ; &eptr124752[1]
  %eptr124753 = getelementptr inbounds i64, i64* %cloptr124750, i64 2                ; &eptr124753[2]
  %eptr124754 = getelementptr inbounds i64, i64* %cloptr124750, i64 3                ; &eptr124754[3]
  %eptr124755 = getelementptr inbounds i64, i64* %cloptr124750, i64 4                ; &eptr124755[4]
  %eptr124756 = getelementptr inbounds i64, i64* %cloptr124750, i64 5                ; &eptr124756[5]
  %eptr124757 = getelementptr inbounds i64, i64* %cloptr124750, i64 6                ; &eptr124757[6]
  store i64 %cont122408, i64* %eptr124752                                            ; *eptr124752 = %cont122408
  store i64 %mCI$y, i64* %eptr124753                                                 ; *eptr124753 = %mCI$y
  store i64 %T64$x, i64* %eptr124754                                                 ; *eptr124754 = %T64$x
  store i64 %CcD$_37length, i64* %eptr124755                                         ; *eptr124755 = %CcD$_37length
  store i64 %xwR$_37_62, i64* %eptr124756                                            ; *eptr124756 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124757                                           ; *eptr124757 = %ClD$_37drop
  %eptr124751 = getelementptr inbounds i64, i64* %cloptr124750, i64 0                ; &cloptr124750[0]
  %f124758 = ptrtoint void(i64,i64,i64)* @lam123638 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124758, i64* %eptr124751                                               ; store fptr
  %arg122931 = ptrtoint i64* %cloptr124750 to i64                                    ; closure cast; i64* -> i64
  %cloptr124759 = inttoptr i64 %CcD$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124759)                                       ; assert function application
  %i0ptr124760 = getelementptr inbounds i64, i64* %cloptr124759, i64 0               ; &cloptr124759[0]
  %f124762 = load i64, i64* %i0ptr124760, align 8                                    ; load; *i0ptr124760
  %fptr124761 = inttoptr i64 %f124762 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124761(i64 %CcD$_37length, i64 %arg122931, i64 %T64$x); tail call
  ret void
}


define void @lam123638(i64 %env123639, i64 %_95122409, i64 %gGC$lx) {
  %envptr124763 = inttoptr i64 %env123639 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124764 = getelementptr inbounds i64, i64* %envptr124763, i64 6              ; &envptr124763[6]
  %ClD$_37drop = load i64, i64* %envptr124764, align 8                               ; load; *envptr124764
  %envptr124765 = inttoptr i64 %env123639 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124766 = getelementptr inbounds i64, i64* %envptr124765, i64 5              ; &envptr124765[5]
  %xwR$_37_62 = load i64, i64* %envptr124766, align 8                                ; load; *envptr124766
  %envptr124767 = inttoptr i64 %env123639 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124768 = getelementptr inbounds i64, i64* %envptr124767, i64 4              ; &envptr124767[4]
  %CcD$_37length = load i64, i64* %envptr124768, align 8                             ; load; *envptr124768
  %envptr124769 = inttoptr i64 %env123639 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124770 = getelementptr inbounds i64, i64* %envptr124769, i64 3              ; &envptr124769[3]
  %T64$x = load i64, i64* %envptr124770, align 8                                     ; load; *envptr124770
  %envptr124771 = inttoptr i64 %env123639 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124772 = getelementptr inbounds i64, i64* %envptr124771, i64 2              ; &envptr124771[2]
  %mCI$y = load i64, i64* %envptr124772, align 8                                     ; load; *envptr124772
  %envptr124773 = inttoptr i64 %env123639 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124774 = getelementptr inbounds i64, i64* %envptr124773, i64 1              ; &envptr124773[1]
  %cont122408 = load i64, i64* %envptr124774, align 8                                ; load; *envptr124774
  %cloptr124775 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr124777 = getelementptr inbounds i64, i64* %cloptr124775, i64 1                ; &eptr124777[1]
  %eptr124778 = getelementptr inbounds i64, i64* %cloptr124775, i64 2                ; &eptr124778[2]
  %eptr124779 = getelementptr inbounds i64, i64* %cloptr124775, i64 3                ; &eptr124779[3]
  %eptr124780 = getelementptr inbounds i64, i64* %cloptr124775, i64 4                ; &eptr124780[4]
  %eptr124781 = getelementptr inbounds i64, i64* %cloptr124775, i64 5                ; &eptr124781[5]
  %eptr124782 = getelementptr inbounds i64, i64* %cloptr124775, i64 6                ; &eptr124782[6]
  store i64 %gGC$lx, i64* %eptr124777                                                ; *eptr124777 = %gGC$lx
  store i64 %cont122408, i64* %eptr124778                                            ; *eptr124778 = %cont122408
  store i64 %mCI$y, i64* %eptr124779                                                 ; *eptr124779 = %mCI$y
  store i64 %T64$x, i64* %eptr124780                                                 ; *eptr124780 = %T64$x
  store i64 %xwR$_37_62, i64* %eptr124781                                            ; *eptr124781 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124782                                           ; *eptr124782 = %ClD$_37drop
  %eptr124776 = getelementptr inbounds i64, i64* %cloptr124775, i64 0                ; &cloptr124775[0]
  %f124783 = ptrtoint void(i64,i64,i64)* @lam123636 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124783, i64* %eptr124776                                               ; store fptr
  %arg122934 = ptrtoint i64* %cloptr124775 to i64                                    ; closure cast; i64* -> i64
  %cloptr124784 = inttoptr i64 %CcD$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124784)                                       ; assert function application
  %i0ptr124785 = getelementptr inbounds i64, i64* %cloptr124784, i64 0               ; &cloptr124784[0]
  %f124787 = load i64, i64* %i0ptr124785, align 8                                    ; load; *i0ptr124785
  %fptr124786 = inttoptr i64 %f124787 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124786(i64 %CcD$_37length, i64 %arg122934, i64 %mCI$y); tail call
  ret void
}


define void @lam123636(i64 %env123637, i64 %_95122410, i64 %Nc6$ly) {
  %envptr124788 = inttoptr i64 %env123637 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124789 = getelementptr inbounds i64, i64* %envptr124788, i64 6              ; &envptr124788[6]
  %ClD$_37drop = load i64, i64* %envptr124789, align 8                               ; load; *envptr124789
  %envptr124790 = inttoptr i64 %env123637 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124791 = getelementptr inbounds i64, i64* %envptr124790, i64 5              ; &envptr124790[5]
  %xwR$_37_62 = load i64, i64* %envptr124791, align 8                                ; load; *envptr124791
  %envptr124792 = inttoptr i64 %env123637 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124793 = getelementptr inbounds i64, i64* %envptr124792, i64 4              ; &envptr124792[4]
  %T64$x = load i64, i64* %envptr124793, align 8                                     ; load; *envptr124793
  %envptr124794 = inttoptr i64 %env123637 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124795 = getelementptr inbounds i64, i64* %envptr124794, i64 3              ; &envptr124794[3]
  %mCI$y = load i64, i64* %envptr124795, align 8                                     ; load; *envptr124795
  %envptr124796 = inttoptr i64 %env123637 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124797 = getelementptr inbounds i64, i64* %envptr124796, i64 2              ; &envptr124796[2]
  %cont122408 = load i64, i64* %envptr124797, align 8                                ; load; *envptr124797
  %envptr124798 = inttoptr i64 %env123637 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124799 = getelementptr inbounds i64, i64* %envptr124798, i64 1              ; &envptr124798[1]
  %gGC$lx = load i64, i64* %envptr124799, align 8                                    ; load; *envptr124799
  %cloptr124800 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr124801 = getelementptr inbounds i64, i64* %cloptr124800, i64 0                ; &cloptr124800[0]
  %f124802 = ptrtoint void(i64,i64)* @lam123634 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f124802, i64* %eptr124801                                               ; store fptr
  %arg122937 = ptrtoint i64* %cloptr124800 to i64                                    ; closure cast; i64* -> i64
  %cloptr124803 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr124805 = getelementptr inbounds i64, i64* %cloptr124803, i64 1                ; &eptr124805[1]
  %eptr124806 = getelementptr inbounds i64, i64* %cloptr124803, i64 2                ; &eptr124806[2]
  %eptr124807 = getelementptr inbounds i64, i64* %cloptr124803, i64 3                ; &eptr124807[3]
  %eptr124808 = getelementptr inbounds i64, i64* %cloptr124803, i64 4                ; &eptr124808[4]
  %eptr124809 = getelementptr inbounds i64, i64* %cloptr124803, i64 5                ; &eptr124809[5]
  %eptr124810 = getelementptr inbounds i64, i64* %cloptr124803, i64 6                ; &eptr124810[6]
  %eptr124811 = getelementptr inbounds i64, i64* %cloptr124803, i64 7                ; &eptr124811[7]
  store i64 %Nc6$ly, i64* %eptr124805                                                ; *eptr124805 = %Nc6$ly
  store i64 %gGC$lx, i64* %eptr124806                                                ; *eptr124806 = %gGC$lx
  store i64 %cont122408, i64* %eptr124807                                            ; *eptr124807 = %cont122408
  store i64 %mCI$y, i64* %eptr124808                                                 ; *eptr124808 = %mCI$y
  store i64 %T64$x, i64* %eptr124809                                                 ; *eptr124809 = %T64$x
  store i64 %xwR$_37_62, i64* %eptr124810                                            ; *eptr124810 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124811                                           ; *eptr124811 = %ClD$_37drop
  %eptr124804 = getelementptr inbounds i64, i64* %cloptr124803, i64 0                ; &cloptr124803[0]
  %f124812 = ptrtoint void(i64,i64,i64)* @lam123631 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124812, i64* %eptr124804                                               ; store fptr
  %arg122936 = ptrtoint i64* %cloptr124803 to i64                                    ; closure cast; i64* -> i64
  %cloptr124813 = inttoptr i64 %arg122937 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124813)                                       ; assert function application
  %i0ptr124814 = getelementptr inbounds i64, i64* %cloptr124813, i64 0               ; &cloptr124813[0]
  %f124816 = load i64, i64* %i0ptr124814, align 8                                    ; load; *i0ptr124814
  %fptr124815 = inttoptr i64 %f124816 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124815(i64 %arg122937, i64 %arg122936)              ; tail call
  ret void
}


define void @lam123634(i64 %env123635, i64 %Ydg$lst122420) {
  %cont122419 = call i64 @prim_car(i64 %Ydg$lst122420)                               ; call prim_car
  %Ydg$lst = call i64 @prim_cdr(i64 %Ydg$lst122420)                                  ; call prim_cdr
  %arg122941 = add i64 0, 0                                                          ; quoted ()
  %cloptr124817 = inttoptr i64 %cont122419 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124817)                                       ; assert function application
  %i0ptr124818 = getelementptr inbounds i64, i64* %cloptr124817, i64 0               ; &cloptr124817[0]
  %f124820 = load i64, i64* %i0ptr124818, align 8                                    ; load; *i0ptr124818
  %fptr124819 = inttoptr i64 %f124820 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124819(i64 %cont122419, i64 %arg122941, i64 %Ydg$lst); tail call
  ret void
}


define void @lam123631(i64 %env123632, i64 %_95122417, i64 %a122307) {
  %envptr124821 = inttoptr i64 %env123632 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124822 = getelementptr inbounds i64, i64* %envptr124821, i64 7              ; &envptr124821[7]
  %ClD$_37drop = load i64, i64* %envptr124822, align 8                               ; load; *envptr124822
  %envptr124823 = inttoptr i64 %env123632 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124824 = getelementptr inbounds i64, i64* %envptr124823, i64 6              ; &envptr124823[6]
  %xwR$_37_62 = load i64, i64* %envptr124824, align 8                                ; load; *envptr124824
  %envptr124825 = inttoptr i64 %env123632 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124826 = getelementptr inbounds i64, i64* %envptr124825, i64 5              ; &envptr124825[5]
  %T64$x = load i64, i64* %envptr124826, align 8                                     ; load; *envptr124826
  %envptr124827 = inttoptr i64 %env123632 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124828 = getelementptr inbounds i64, i64* %envptr124827, i64 4              ; &envptr124827[4]
  %mCI$y = load i64, i64* %envptr124828, align 8                                     ; load; *envptr124828
  %envptr124829 = inttoptr i64 %env123632 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124830 = getelementptr inbounds i64, i64* %envptr124829, i64 3              ; &envptr124829[3]
  %cont122408 = load i64, i64* %envptr124830, align 8                                ; load; *envptr124830
  %envptr124831 = inttoptr i64 %env123632 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124832 = getelementptr inbounds i64, i64* %envptr124831, i64 2              ; &envptr124831[2]
  %gGC$lx = load i64, i64* %envptr124832, align 8                                    ; load; *envptr124832
  %envptr124833 = inttoptr i64 %env123632 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124834 = getelementptr inbounds i64, i64* %envptr124833, i64 1              ; &envptr124833[1]
  %Nc6$ly = load i64, i64* %envptr124834, align 8                                    ; load; *envptr124834
  %arg122944 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim122418 = call i64 @prim_make_45vector(i64 %arg122944, i64 %a122307)        ; call prim_make_45vector
  %cloptr124835 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr124837 = getelementptr inbounds i64, i64* %cloptr124835, i64 1                ; &eptr124837[1]
  %eptr124838 = getelementptr inbounds i64, i64* %cloptr124835, i64 2                ; &eptr124838[2]
  %eptr124839 = getelementptr inbounds i64, i64* %cloptr124835, i64 3                ; &eptr124839[3]
  %eptr124840 = getelementptr inbounds i64, i64* %cloptr124835, i64 4                ; &eptr124840[4]
  %eptr124841 = getelementptr inbounds i64, i64* %cloptr124835, i64 5                ; &eptr124841[5]
  %eptr124842 = getelementptr inbounds i64, i64* %cloptr124835, i64 6                ; &eptr124842[6]
  %eptr124843 = getelementptr inbounds i64, i64* %cloptr124835, i64 7                ; &eptr124843[7]
  store i64 %Nc6$ly, i64* %eptr124837                                                ; *eptr124837 = %Nc6$ly
  store i64 %gGC$lx, i64* %eptr124838                                                ; *eptr124838 = %gGC$lx
  store i64 %cont122408, i64* %eptr124839                                            ; *eptr124839 = %cont122408
  store i64 %mCI$y, i64* %eptr124840                                                 ; *eptr124840 = %mCI$y
  store i64 %T64$x, i64* %eptr124841                                                 ; *eptr124841 = %T64$x
  store i64 %xwR$_37_62, i64* %eptr124842                                            ; *eptr124842 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124843                                           ; *eptr124843 = %ClD$_37drop
  %eptr124836 = getelementptr inbounds i64, i64* %cloptr124835, i64 0                ; &cloptr124835[0]
  %f124844 = ptrtoint void(i64,i64,i64)* @lam123628 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124844, i64* %eptr124836                                               ; store fptr
  %arg122947 = ptrtoint i64* %cloptr124835 to i64                                    ; closure cast; i64* -> i64
  %arg122946 = add i64 0, 0                                                          ; quoted ()
  %cloptr124845 = inttoptr i64 %arg122947 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124845)                                       ; assert function application
  %i0ptr124846 = getelementptr inbounds i64, i64* %cloptr124845, i64 0               ; &cloptr124845[0]
  %f124848 = load i64, i64* %i0ptr124846, align 8                                    ; load; *i0ptr124846
  %fptr124847 = inttoptr i64 %f124848 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124847(i64 %arg122947, i64 %arg122946, i64 %retprim122418); tail call
  ret void
}


define void @lam123628(i64 %env123629, i64 %_95122411, i64 %XcO$loop) {
  %envptr124849 = inttoptr i64 %env123629 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124850 = getelementptr inbounds i64, i64* %envptr124849, i64 7              ; &envptr124849[7]
  %ClD$_37drop = load i64, i64* %envptr124850, align 8                               ; load; *envptr124850
  %envptr124851 = inttoptr i64 %env123629 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124852 = getelementptr inbounds i64, i64* %envptr124851, i64 6              ; &envptr124851[6]
  %xwR$_37_62 = load i64, i64* %envptr124852, align 8                                ; load; *envptr124852
  %envptr124853 = inttoptr i64 %env123629 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124854 = getelementptr inbounds i64, i64* %envptr124853, i64 5              ; &envptr124853[5]
  %T64$x = load i64, i64* %envptr124854, align 8                                     ; load; *envptr124854
  %envptr124855 = inttoptr i64 %env123629 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124856 = getelementptr inbounds i64, i64* %envptr124855, i64 4              ; &envptr124855[4]
  %mCI$y = load i64, i64* %envptr124856, align 8                                     ; load; *envptr124856
  %envptr124857 = inttoptr i64 %env123629 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124858 = getelementptr inbounds i64, i64* %envptr124857, i64 3              ; &envptr124857[3]
  %cont122408 = load i64, i64* %envptr124858, align 8                                ; load; *envptr124858
  %envptr124859 = inttoptr i64 %env123629 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124860 = getelementptr inbounds i64, i64* %envptr124859, i64 2              ; &envptr124859[2]
  %gGC$lx = load i64, i64* %envptr124860, align 8                                    ; load; *envptr124860
  %envptr124861 = inttoptr i64 %env123629 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124862 = getelementptr inbounds i64, i64* %envptr124861, i64 1              ; &envptr124861[1]
  %Nc6$ly = load i64, i64* %envptr124862, align 8                                    ; load; *envptr124862
  %arg122949 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr124863 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr124865 = getelementptr inbounds i64, i64* %cloptr124863, i64 1                ; &eptr124865[1]
  store i64 %XcO$loop, i64* %eptr124865                                              ; *eptr124865 = %XcO$loop
  %eptr124864 = getelementptr inbounds i64, i64* %cloptr124863, i64 0                ; &cloptr124863[0]
  %f124866 = ptrtoint void(i64,i64,i64,i64)* @lam123625 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f124866, i64* %eptr124864                                               ; store fptr
  %arg122948 = ptrtoint i64* %cloptr124863 to i64                                    ; closure cast; i64* -> i64
  %quG$_95122211 = call i64 @prim_vector_45set_33(i64 %XcO$loop, i64 %arg122949, i64 %arg122948); call prim_vector_45set_33
  %arg122964 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122312 = call i64 @prim_vector_45ref(i64 %XcO$loop, i64 %arg122964)              ; call prim_vector_45ref
  %cloptr124867 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr124869 = getelementptr inbounds i64, i64* %cloptr124867, i64 1                ; &eptr124869[1]
  %eptr124870 = getelementptr inbounds i64, i64* %cloptr124867, i64 2                ; &eptr124870[2]
  %eptr124871 = getelementptr inbounds i64, i64* %cloptr124867, i64 3                ; &eptr124871[3]
  %eptr124872 = getelementptr inbounds i64, i64* %cloptr124867, i64 4                ; &eptr124872[4]
  %eptr124873 = getelementptr inbounds i64, i64* %cloptr124867, i64 5                ; &eptr124873[5]
  %eptr124874 = getelementptr inbounds i64, i64* %cloptr124867, i64 6                ; &eptr124874[6]
  %eptr124875 = getelementptr inbounds i64, i64* %cloptr124867, i64 7                ; &eptr124875[7]
  %eptr124876 = getelementptr inbounds i64, i64* %cloptr124867, i64 8                ; &eptr124876[8]
  store i64 %Nc6$ly, i64* %eptr124869                                                ; *eptr124869 = %Nc6$ly
  store i64 %gGC$lx, i64* %eptr124870                                                ; *eptr124870 = %gGC$lx
  store i64 %cont122408, i64* %eptr124871                                            ; *eptr124871 = %cont122408
  store i64 %mCI$y, i64* %eptr124872                                                 ; *eptr124872 = %mCI$y
  store i64 %T64$x, i64* %eptr124873                                                 ; *eptr124873 = %T64$x
  store i64 %a122312, i64* %eptr124874                                               ; *eptr124874 = %a122312
  store i64 %xwR$_37_62, i64* %eptr124875                                            ; *eptr124875 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124876                                           ; *eptr124876 = %ClD$_37drop
  %eptr124868 = getelementptr inbounds i64, i64* %cloptr124867, i64 0                ; &cloptr124867[0]
  %f124877 = ptrtoint void(i64,i64,i64)* @lam123620 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124877, i64* %eptr124868                                               ; store fptr
  %arg122968 = ptrtoint i64* %cloptr124867 to i64                                    ; closure cast; i64* -> i64
  %cloptr124878 = inttoptr i64 %xwR$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124878)                                       ; assert function application
  %i0ptr124879 = getelementptr inbounds i64, i64* %cloptr124878, i64 0               ; &cloptr124878[0]
  %f124881 = load i64, i64* %i0ptr124879, align 8                                    ; load; *i0ptr124879
  %fptr124880 = inttoptr i64 %f124881 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124880(i64 %xwR$_37_62, i64 %arg122968, i64 %gGC$lx, i64 %Nc6$ly); tail call
  ret void
}


define void @lam123625(i64 %env123626, i64 %cont122412, i64 %fei$x, i64 %rcx$y) {
  %envptr124882 = inttoptr i64 %env123626 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124883 = getelementptr inbounds i64, i64* %envptr124882, i64 1              ; &envptr124882[1]
  %XcO$loop = load i64, i64* %envptr124883, align 8                                  ; load; *envptr124883
  %a122308 = call i64 @prim_eq_63(i64 %fei$x, i64 %rcx$y)                            ; call prim_eq_63
  %cmp124884 = icmp eq i64 %a122308, 15                                              ; false?
  br i1 %cmp124884, label %else124886, label %then124885                             ; if

then124885:
  %arg122954 = add i64 0, 0                                                          ; quoted ()
  %cloptr124887 = inttoptr i64 %cont122412 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124887)                                       ; assert function application
  %i0ptr124888 = getelementptr inbounds i64, i64* %cloptr124887, i64 0               ; &cloptr124887[0]
  %f124890 = load i64, i64* %i0ptr124888, align 8                                    ; load; *i0ptr124888
  %fptr124889 = inttoptr i64 %f124890 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124889(i64 %cont122412, i64 %arg122954, i64 %fei$x) ; tail call
  ret void

else124886:
  %arg122956 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122309 = call i64 @prim_vector_45ref(i64 %XcO$loop, i64 %arg122956)              ; call prim_vector_45ref
  %a122310 = call i64 @prim_cdr(i64 %fei$x)                                          ; call prim_cdr
  %a122311 = call i64 @prim_cdr(i64 %rcx$y)                                          ; call prim_cdr
  %cloptr124891 = inttoptr i64 %a122309 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124891)                                       ; assert function application
  %i0ptr124892 = getelementptr inbounds i64, i64* %cloptr124891, i64 0               ; &cloptr124891[0]
  %f124894 = load i64, i64* %i0ptr124892, align 8                                    ; load; *i0ptr124892
  %fptr124893 = inttoptr i64 %f124894 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124893(i64 %a122309, i64 %cont122412, i64 %a122310, i64 %a122311); tail call
  ret void
}


define void @lam123620(i64 %env123621, i64 %_95122413, i64 %a122313) {
  %envptr124895 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124896 = getelementptr inbounds i64, i64* %envptr124895, i64 8              ; &envptr124895[8]
  %ClD$_37drop = load i64, i64* %envptr124896, align 8                               ; load; *envptr124896
  %envptr124897 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124898 = getelementptr inbounds i64, i64* %envptr124897, i64 7              ; &envptr124897[7]
  %xwR$_37_62 = load i64, i64* %envptr124898, align 8                                ; load; *envptr124898
  %envptr124899 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124900 = getelementptr inbounds i64, i64* %envptr124899, i64 6              ; &envptr124899[6]
  %a122312 = load i64, i64* %envptr124900, align 8                                   ; load; *envptr124900
  %envptr124901 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124902 = getelementptr inbounds i64, i64* %envptr124901, i64 5              ; &envptr124901[5]
  %T64$x = load i64, i64* %envptr124902, align 8                                     ; load; *envptr124902
  %envptr124903 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124904 = getelementptr inbounds i64, i64* %envptr124903, i64 4              ; &envptr124903[4]
  %mCI$y = load i64, i64* %envptr124904, align 8                                     ; load; *envptr124904
  %envptr124905 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124906 = getelementptr inbounds i64, i64* %envptr124905, i64 3              ; &envptr124905[3]
  %cont122408 = load i64, i64* %envptr124906, align 8                                ; load; *envptr124906
  %envptr124907 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124908 = getelementptr inbounds i64, i64* %envptr124907, i64 2              ; &envptr124907[2]
  %gGC$lx = load i64, i64* %envptr124908, align 8                                    ; load; *envptr124908
  %envptr124909 = inttoptr i64 %env123621 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124910 = getelementptr inbounds i64, i64* %envptr124909, i64 1              ; &envptr124909[1]
  %Nc6$ly = load i64, i64* %envptr124910, align 8                                    ; load; *envptr124910
  %cmp124911 = icmp eq i64 %a122313, 15                                              ; false?
  br i1 %cmp124911, label %else124913, label %then124912                             ; if

then124912:
  %a122314 = call i64 @prim__45(i64 %gGC$lx, i64 %Nc6$ly)                            ; call prim__45
  %cloptr124914 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr124916 = getelementptr inbounds i64, i64* %cloptr124914, i64 1                ; &eptr124916[1]
  %eptr124917 = getelementptr inbounds i64, i64* %cloptr124914, i64 2                ; &eptr124917[2]
  %eptr124918 = getelementptr inbounds i64, i64* %cloptr124914, i64 3                ; &eptr124918[3]
  %eptr124919 = getelementptr inbounds i64, i64* %cloptr124914, i64 4                ; &eptr124919[4]
  %eptr124920 = getelementptr inbounds i64, i64* %cloptr124914, i64 5                ; &eptr124920[5]
  %eptr124921 = getelementptr inbounds i64, i64* %cloptr124914, i64 6                ; &eptr124921[6]
  %eptr124922 = getelementptr inbounds i64, i64* %cloptr124914, i64 7                ; &eptr124922[7]
  store i64 %Nc6$ly, i64* %eptr124916                                                ; *eptr124916 = %Nc6$ly
  store i64 %gGC$lx, i64* %eptr124917                                                ; *eptr124917 = %gGC$lx
  store i64 %cont122408, i64* %eptr124918                                            ; *eptr124918 = %cont122408
  store i64 %mCI$y, i64* %eptr124919                                                 ; *eptr124919 = %mCI$y
  store i64 %a122312, i64* %eptr124920                                               ; *eptr124920 = %a122312
  store i64 %xwR$_37_62, i64* %eptr124921                                            ; *eptr124921 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124922                                           ; *eptr124922 = %ClD$_37drop
  %eptr124915 = getelementptr inbounds i64, i64* %cloptr124914, i64 0                ; &cloptr124914[0]
  %f124923 = ptrtoint void(i64,i64,i64)* @lam123608 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124923, i64* %eptr124915                                               ; store fptr
  %arg122974 = ptrtoint i64* %cloptr124914 to i64                                    ; closure cast; i64* -> i64
  %cloptr124924 = inttoptr i64 %ClD$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124924)                                       ; assert function application
  %i0ptr124925 = getelementptr inbounds i64, i64* %cloptr124924, i64 0               ; &cloptr124924[0]
  %f124927 = load i64, i64* %i0ptr124925, align 8                                    ; load; *i0ptr124925
  %fptr124926 = inttoptr i64 %f124927 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124926(i64 %ClD$_37drop, i64 %arg122974, i64 %T64$x, i64 %a122314); tail call
  ret void

else124913:
  %cloptr124928 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr124930 = getelementptr inbounds i64, i64* %cloptr124928, i64 1                ; &eptr124930[1]
  %eptr124931 = getelementptr inbounds i64, i64* %cloptr124928, i64 2                ; &eptr124931[2]
  %eptr124932 = getelementptr inbounds i64, i64* %cloptr124928, i64 3                ; &eptr124932[3]
  %eptr124933 = getelementptr inbounds i64, i64* %cloptr124928, i64 4                ; &eptr124933[4]
  %eptr124934 = getelementptr inbounds i64, i64* %cloptr124928, i64 5                ; &eptr124934[5]
  %eptr124935 = getelementptr inbounds i64, i64* %cloptr124928, i64 6                ; &eptr124935[6]
  %eptr124936 = getelementptr inbounds i64, i64* %cloptr124928, i64 7                ; &eptr124936[7]
  store i64 %Nc6$ly, i64* %eptr124930                                                ; *eptr124930 = %Nc6$ly
  store i64 %gGC$lx, i64* %eptr124931                                                ; *eptr124931 = %gGC$lx
  store i64 %cont122408, i64* %eptr124932                                            ; *eptr124932 = %cont122408
  store i64 %mCI$y, i64* %eptr124933                                                 ; *eptr124933 = %mCI$y
  store i64 %a122312, i64* %eptr124934                                               ; *eptr124934 = %a122312
  store i64 %xwR$_37_62, i64* %eptr124935                                            ; *eptr124935 = %xwR$_37_62
  store i64 %ClD$_37drop, i64* %eptr124936                                           ; *eptr124936 = %ClD$_37drop
  %eptr124929 = getelementptr inbounds i64, i64* %cloptr124928, i64 0                ; &cloptr124928[0]
  %f124937 = ptrtoint void(i64,i64,i64)* @lam123618 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124937, i64* %eptr124929                                               ; store fptr
  %arg122999 = ptrtoint i64* %cloptr124928 to i64                                    ; closure cast; i64* -> i64
  %arg122998 = add i64 0, 0                                                          ; quoted ()
  %cloptr124938 = inttoptr i64 %arg122999 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124938)                                       ; assert function application
  %i0ptr124939 = getelementptr inbounds i64, i64* %cloptr124938, i64 0               ; &cloptr124938[0]
  %f124941 = load i64, i64* %i0ptr124939, align 8                                    ; load; *i0ptr124939
  %fptr124940 = inttoptr i64 %f124941 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124940(i64 %arg122999, i64 %arg122998, i64 %T64$x)  ; tail call
  ret void
}


define void @lam123618(i64 %env123619, i64 %_95122414, i64 %a122315) {
  %envptr124942 = inttoptr i64 %env123619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124943 = getelementptr inbounds i64, i64* %envptr124942, i64 7              ; &envptr124942[7]
  %ClD$_37drop = load i64, i64* %envptr124943, align 8                               ; load; *envptr124943
  %envptr124944 = inttoptr i64 %env123619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124945 = getelementptr inbounds i64, i64* %envptr124944, i64 6              ; &envptr124944[6]
  %xwR$_37_62 = load i64, i64* %envptr124945, align 8                                ; load; *envptr124945
  %envptr124946 = inttoptr i64 %env123619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124947 = getelementptr inbounds i64, i64* %envptr124946, i64 5              ; &envptr124946[5]
  %a122312 = load i64, i64* %envptr124947, align 8                                   ; load; *envptr124947
  %envptr124948 = inttoptr i64 %env123619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124949 = getelementptr inbounds i64, i64* %envptr124948, i64 4              ; &envptr124948[4]
  %mCI$y = load i64, i64* %envptr124949, align 8                                     ; load; *envptr124949
  %envptr124950 = inttoptr i64 %env123619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124951 = getelementptr inbounds i64, i64* %envptr124950, i64 3              ; &envptr124950[3]
  %cont122408 = load i64, i64* %envptr124951, align 8                                ; load; *envptr124951
  %envptr124952 = inttoptr i64 %env123619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124953 = getelementptr inbounds i64, i64* %envptr124952, i64 2              ; &envptr124952[2]
  %gGC$lx = load i64, i64* %envptr124953, align 8                                    ; load; *envptr124953
  %envptr124954 = inttoptr i64 %env123619 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124955 = getelementptr inbounds i64, i64* %envptr124954, i64 1              ; &envptr124954[1]
  %Nc6$ly = load i64, i64* %envptr124955, align 8                                    ; load; *envptr124955
  %cloptr124956 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr124958 = getelementptr inbounds i64, i64* %cloptr124956, i64 1                ; &eptr124958[1]
  %eptr124959 = getelementptr inbounds i64, i64* %cloptr124956, i64 2                ; &eptr124959[2]
  %eptr124960 = getelementptr inbounds i64, i64* %cloptr124956, i64 3                ; &eptr124960[3]
  %eptr124961 = getelementptr inbounds i64, i64* %cloptr124956, i64 4                ; &eptr124961[4]
  %eptr124962 = getelementptr inbounds i64, i64* %cloptr124956, i64 5                ; &eptr124962[5]
  %eptr124963 = getelementptr inbounds i64, i64* %cloptr124956, i64 6                ; &eptr124963[6]
  %eptr124964 = getelementptr inbounds i64, i64* %cloptr124956, i64 7                ; &eptr124964[7]
  store i64 %Nc6$ly, i64* %eptr124958                                                ; *eptr124958 = %Nc6$ly
  store i64 %gGC$lx, i64* %eptr124959                                                ; *eptr124959 = %gGC$lx
  store i64 %cont122408, i64* %eptr124960                                            ; *eptr124960 = %cont122408
  store i64 %mCI$y, i64* %eptr124961                                                 ; *eptr124961 = %mCI$y
  store i64 %a122315, i64* %eptr124962                                               ; *eptr124962 = %a122315
  store i64 %a122312, i64* %eptr124963                                               ; *eptr124963 = %a122312
  store i64 %ClD$_37drop, i64* %eptr124964                                           ; *eptr124964 = %ClD$_37drop
  %eptr124957 = getelementptr inbounds i64, i64* %cloptr124956, i64 0                ; &cloptr124956[0]
  %f124965 = ptrtoint void(i64,i64,i64)* @lam123616 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124965, i64* %eptr124957                                               ; store fptr
  %arg123002 = ptrtoint i64* %cloptr124956 to i64                                    ; closure cast; i64* -> i64
  %cloptr124966 = inttoptr i64 %xwR$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124966)                                       ; assert function application
  %i0ptr124967 = getelementptr inbounds i64, i64* %cloptr124966, i64 0               ; &cloptr124966[0]
  %f124969 = load i64, i64* %i0ptr124967, align 8                                    ; load; *i0ptr124967
  %fptr124968 = inttoptr i64 %f124969 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124968(i64 %xwR$_37_62, i64 %arg123002, i64 %Nc6$ly, i64 %gGC$lx); tail call
  ret void
}


define void @lam123616(i64 %env123617, i64 %_95122415, i64 %a122316) {
  %envptr124970 = inttoptr i64 %env123617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124971 = getelementptr inbounds i64, i64* %envptr124970, i64 7              ; &envptr124970[7]
  %ClD$_37drop = load i64, i64* %envptr124971, align 8                               ; load; *envptr124971
  %envptr124972 = inttoptr i64 %env123617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124973 = getelementptr inbounds i64, i64* %envptr124972, i64 6              ; &envptr124972[6]
  %a122312 = load i64, i64* %envptr124973, align 8                                   ; load; *envptr124973
  %envptr124974 = inttoptr i64 %env123617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124975 = getelementptr inbounds i64, i64* %envptr124974, i64 5              ; &envptr124974[5]
  %a122315 = load i64, i64* %envptr124975, align 8                                   ; load; *envptr124975
  %envptr124976 = inttoptr i64 %env123617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124977 = getelementptr inbounds i64, i64* %envptr124976, i64 4              ; &envptr124976[4]
  %mCI$y = load i64, i64* %envptr124977, align 8                                     ; load; *envptr124977
  %envptr124978 = inttoptr i64 %env123617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124979 = getelementptr inbounds i64, i64* %envptr124978, i64 3              ; &envptr124978[3]
  %cont122408 = load i64, i64* %envptr124979, align 8                                ; load; *envptr124979
  %envptr124980 = inttoptr i64 %env123617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124981 = getelementptr inbounds i64, i64* %envptr124980, i64 2              ; &envptr124980[2]
  %gGC$lx = load i64, i64* %envptr124981, align 8                                    ; load; *envptr124981
  %envptr124982 = inttoptr i64 %env123617 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr124983 = getelementptr inbounds i64, i64* %envptr124982, i64 1              ; &envptr124982[1]
  %Nc6$ly = load i64, i64* %envptr124983, align 8                                    ; load; *envptr124983
  %cmp124984 = icmp eq i64 %a122316, 15                                              ; false?
  br i1 %cmp124984, label %else124986, label %then124985                             ; if

then124985:
  %a122317 = call i64 @prim__45(i64 %Nc6$ly, i64 %gGC$lx)                            ; call prim__45
  %cloptr124987 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124989 = getelementptr inbounds i64, i64* %cloptr124987, i64 1                ; &eptr124989[1]
  %eptr124990 = getelementptr inbounds i64, i64* %cloptr124987, i64 2                ; &eptr124990[2]
  %eptr124991 = getelementptr inbounds i64, i64* %cloptr124987, i64 3                ; &eptr124991[3]
  store i64 %cont122408, i64* %eptr124989                                            ; *eptr124989 = %cont122408
  store i64 %a122315, i64* %eptr124990                                               ; *eptr124990 = %a122315
  store i64 %a122312, i64* %eptr124991                                               ; *eptr124991 = %a122312
  %eptr124988 = getelementptr inbounds i64, i64* %cloptr124987, i64 0                ; &cloptr124987[0]
  %f124992 = ptrtoint void(i64,i64,i64)* @lam123611 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f124992, i64* %eptr124988                                               ; store fptr
  %arg123008 = ptrtoint i64* %cloptr124987 to i64                                    ; closure cast; i64* -> i64
  %cloptr124993 = inttoptr i64 %ClD$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr124993)                                       ; assert function application
  %i0ptr124994 = getelementptr inbounds i64, i64* %cloptr124993, i64 0               ; &cloptr124993[0]
  %f124996 = load i64, i64* %i0ptr124994, align 8                                    ; load; *i0ptr124994
  %fptr124995 = inttoptr i64 %f124996 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr124995(i64 %ClD$_37drop, i64 %arg123008, i64 %mCI$y, i64 %a122317); tail call
  ret void

else124986:
  %cloptr124997 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr124999 = getelementptr inbounds i64, i64* %cloptr124997, i64 1                ; &eptr124999[1]
  %eptr125000 = getelementptr inbounds i64, i64* %cloptr124997, i64 2                ; &eptr125000[2]
  %eptr125001 = getelementptr inbounds i64, i64* %cloptr124997, i64 3                ; &eptr125001[3]
  store i64 %cont122408, i64* %eptr124999                                            ; *eptr124999 = %cont122408
  store i64 %a122315, i64* %eptr125000                                               ; *eptr125000 = %a122315
  store i64 %a122312, i64* %eptr125001                                               ; *eptr125001 = %a122312
  %eptr124998 = getelementptr inbounds i64, i64* %cloptr124997, i64 0                ; &cloptr124997[0]
  %f125002 = ptrtoint void(i64,i64,i64)* @lam123614 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125002, i64* %eptr124998                                               ; store fptr
  %arg123016 = ptrtoint i64* %cloptr124997 to i64                                    ; closure cast; i64* -> i64
  %arg123015 = add i64 0, 0                                                          ; quoted ()
  %cloptr125003 = inttoptr i64 %arg123016 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125003)                                       ; assert function application
  %i0ptr125004 = getelementptr inbounds i64, i64* %cloptr125003, i64 0               ; &cloptr125003[0]
  %f125006 = load i64, i64* %i0ptr125004, align 8                                    ; load; *i0ptr125004
  %fptr125005 = inttoptr i64 %f125006 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125005(i64 %arg123016, i64 %arg123015, i64 %mCI$y)  ; tail call
  ret void
}


define void @lam123614(i64 %env123615, i64 %_95122416, i64 %a122318) {
  %envptr125007 = inttoptr i64 %env123615 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125008 = getelementptr inbounds i64, i64* %envptr125007, i64 3              ; &envptr125007[3]
  %a122312 = load i64, i64* %envptr125008, align 8                                   ; load; *envptr125008
  %envptr125009 = inttoptr i64 %env123615 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125010 = getelementptr inbounds i64, i64* %envptr125009, i64 2              ; &envptr125009[2]
  %a122315 = load i64, i64* %envptr125010, align 8                                   ; load; *envptr125010
  %envptr125011 = inttoptr i64 %env123615 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125012 = getelementptr inbounds i64, i64* %envptr125011, i64 1              ; &envptr125011[1]
  %cont122408 = load i64, i64* %envptr125012, align 8                                ; load; *envptr125012
  %cloptr125013 = inttoptr i64 %a122312 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125013)                                       ; assert function application
  %i0ptr125014 = getelementptr inbounds i64, i64* %cloptr125013, i64 0               ; &cloptr125013[0]
  %f125016 = load i64, i64* %i0ptr125014, align 8                                    ; load; *i0ptr125014
  %fptr125015 = inttoptr i64 %f125016 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125015(i64 %a122312, i64 %cont122408, i64 %a122315, i64 %a122318); tail call
  ret void
}


define void @lam123611(i64 %env123612, i64 %_95122416, i64 %a122318) {
  %envptr125017 = inttoptr i64 %env123612 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125018 = getelementptr inbounds i64, i64* %envptr125017, i64 3              ; &envptr125017[3]
  %a122312 = load i64, i64* %envptr125018, align 8                                   ; load; *envptr125018
  %envptr125019 = inttoptr i64 %env123612 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125020 = getelementptr inbounds i64, i64* %envptr125019, i64 2              ; &envptr125019[2]
  %a122315 = load i64, i64* %envptr125020, align 8                                   ; load; *envptr125020
  %envptr125021 = inttoptr i64 %env123612 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125022 = getelementptr inbounds i64, i64* %envptr125021, i64 1              ; &envptr125021[1]
  %cont122408 = load i64, i64* %envptr125022, align 8                                ; load; *envptr125022
  %cloptr125023 = inttoptr i64 %a122312 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125023)                                       ; assert function application
  %i0ptr125024 = getelementptr inbounds i64, i64* %cloptr125023, i64 0               ; &cloptr125023[0]
  %f125026 = load i64, i64* %i0ptr125024, align 8                                    ; load; *i0ptr125024
  %fptr125025 = inttoptr i64 %f125026 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125025(i64 %a122312, i64 %cont122408, i64 %a122315, i64 %a122318); tail call
  ret void
}


define void @lam123608(i64 %env123609, i64 %_95122414, i64 %a122315) {
  %envptr125027 = inttoptr i64 %env123609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125028 = getelementptr inbounds i64, i64* %envptr125027, i64 7              ; &envptr125027[7]
  %ClD$_37drop = load i64, i64* %envptr125028, align 8                               ; load; *envptr125028
  %envptr125029 = inttoptr i64 %env123609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125030 = getelementptr inbounds i64, i64* %envptr125029, i64 6              ; &envptr125029[6]
  %xwR$_37_62 = load i64, i64* %envptr125030, align 8                                ; load; *envptr125030
  %envptr125031 = inttoptr i64 %env123609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125032 = getelementptr inbounds i64, i64* %envptr125031, i64 5              ; &envptr125031[5]
  %a122312 = load i64, i64* %envptr125032, align 8                                   ; load; *envptr125032
  %envptr125033 = inttoptr i64 %env123609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125034 = getelementptr inbounds i64, i64* %envptr125033, i64 4              ; &envptr125033[4]
  %mCI$y = load i64, i64* %envptr125034, align 8                                     ; load; *envptr125034
  %envptr125035 = inttoptr i64 %env123609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125036 = getelementptr inbounds i64, i64* %envptr125035, i64 3              ; &envptr125035[3]
  %cont122408 = load i64, i64* %envptr125036, align 8                                ; load; *envptr125036
  %envptr125037 = inttoptr i64 %env123609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125038 = getelementptr inbounds i64, i64* %envptr125037, i64 2              ; &envptr125037[2]
  %gGC$lx = load i64, i64* %envptr125038, align 8                                    ; load; *envptr125038
  %envptr125039 = inttoptr i64 %env123609 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125040 = getelementptr inbounds i64, i64* %envptr125039, i64 1              ; &envptr125039[1]
  %Nc6$ly = load i64, i64* %envptr125040, align 8                                    ; load; *envptr125040
  %cloptr125041 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr125043 = getelementptr inbounds i64, i64* %cloptr125041, i64 1                ; &eptr125043[1]
  %eptr125044 = getelementptr inbounds i64, i64* %cloptr125041, i64 2                ; &eptr125044[2]
  %eptr125045 = getelementptr inbounds i64, i64* %cloptr125041, i64 3                ; &eptr125045[3]
  %eptr125046 = getelementptr inbounds i64, i64* %cloptr125041, i64 4                ; &eptr125046[4]
  %eptr125047 = getelementptr inbounds i64, i64* %cloptr125041, i64 5                ; &eptr125047[5]
  %eptr125048 = getelementptr inbounds i64, i64* %cloptr125041, i64 6                ; &eptr125048[6]
  %eptr125049 = getelementptr inbounds i64, i64* %cloptr125041, i64 7                ; &eptr125049[7]
  store i64 %Nc6$ly, i64* %eptr125043                                                ; *eptr125043 = %Nc6$ly
  store i64 %gGC$lx, i64* %eptr125044                                                ; *eptr125044 = %gGC$lx
  store i64 %cont122408, i64* %eptr125045                                            ; *eptr125045 = %cont122408
  store i64 %mCI$y, i64* %eptr125046                                                 ; *eptr125046 = %mCI$y
  store i64 %a122315, i64* %eptr125047                                               ; *eptr125047 = %a122315
  store i64 %a122312, i64* %eptr125048                                               ; *eptr125048 = %a122312
  store i64 %ClD$_37drop, i64* %eptr125049                                           ; *eptr125049 = %ClD$_37drop
  %eptr125042 = getelementptr inbounds i64, i64* %cloptr125041, i64 0                ; &cloptr125041[0]
  %f125050 = ptrtoint void(i64,i64,i64)* @lam123606 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125050, i64* %eptr125042                                               ; store fptr
  %arg122978 = ptrtoint i64* %cloptr125041 to i64                                    ; closure cast; i64* -> i64
  %cloptr125051 = inttoptr i64 %xwR$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125051)                                       ; assert function application
  %i0ptr125052 = getelementptr inbounds i64, i64* %cloptr125051, i64 0               ; &cloptr125051[0]
  %f125054 = load i64, i64* %i0ptr125052, align 8                                    ; load; *i0ptr125052
  %fptr125053 = inttoptr i64 %f125054 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125053(i64 %xwR$_37_62, i64 %arg122978, i64 %Nc6$ly, i64 %gGC$lx); tail call
  ret void
}


define void @lam123606(i64 %env123607, i64 %_95122415, i64 %a122316) {
  %envptr125055 = inttoptr i64 %env123607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125056 = getelementptr inbounds i64, i64* %envptr125055, i64 7              ; &envptr125055[7]
  %ClD$_37drop = load i64, i64* %envptr125056, align 8                               ; load; *envptr125056
  %envptr125057 = inttoptr i64 %env123607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125058 = getelementptr inbounds i64, i64* %envptr125057, i64 6              ; &envptr125057[6]
  %a122312 = load i64, i64* %envptr125058, align 8                                   ; load; *envptr125058
  %envptr125059 = inttoptr i64 %env123607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125060 = getelementptr inbounds i64, i64* %envptr125059, i64 5              ; &envptr125059[5]
  %a122315 = load i64, i64* %envptr125060, align 8                                   ; load; *envptr125060
  %envptr125061 = inttoptr i64 %env123607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125062 = getelementptr inbounds i64, i64* %envptr125061, i64 4              ; &envptr125061[4]
  %mCI$y = load i64, i64* %envptr125062, align 8                                     ; load; *envptr125062
  %envptr125063 = inttoptr i64 %env123607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125064 = getelementptr inbounds i64, i64* %envptr125063, i64 3              ; &envptr125063[3]
  %cont122408 = load i64, i64* %envptr125064, align 8                                ; load; *envptr125064
  %envptr125065 = inttoptr i64 %env123607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125066 = getelementptr inbounds i64, i64* %envptr125065, i64 2              ; &envptr125065[2]
  %gGC$lx = load i64, i64* %envptr125066, align 8                                    ; load; *envptr125066
  %envptr125067 = inttoptr i64 %env123607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125068 = getelementptr inbounds i64, i64* %envptr125067, i64 1              ; &envptr125067[1]
  %Nc6$ly = load i64, i64* %envptr125068, align 8                                    ; load; *envptr125068
  %cmp125069 = icmp eq i64 %a122316, 15                                              ; false?
  br i1 %cmp125069, label %else125071, label %then125070                             ; if

then125070:
  %a122317 = call i64 @prim__45(i64 %Nc6$ly, i64 %gGC$lx)                            ; call prim__45
  %cloptr125072 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125074 = getelementptr inbounds i64, i64* %cloptr125072, i64 1                ; &eptr125074[1]
  %eptr125075 = getelementptr inbounds i64, i64* %cloptr125072, i64 2                ; &eptr125075[2]
  %eptr125076 = getelementptr inbounds i64, i64* %cloptr125072, i64 3                ; &eptr125076[3]
  store i64 %cont122408, i64* %eptr125074                                            ; *eptr125074 = %cont122408
  store i64 %a122315, i64* %eptr125075                                               ; *eptr125075 = %a122315
  store i64 %a122312, i64* %eptr125076                                               ; *eptr125076 = %a122312
  %eptr125073 = getelementptr inbounds i64, i64* %cloptr125072, i64 0                ; &cloptr125072[0]
  %f125077 = ptrtoint void(i64,i64,i64)* @lam123601 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125077, i64* %eptr125073                                               ; store fptr
  %arg122984 = ptrtoint i64* %cloptr125072 to i64                                    ; closure cast; i64* -> i64
  %cloptr125078 = inttoptr i64 %ClD$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125078)                                       ; assert function application
  %i0ptr125079 = getelementptr inbounds i64, i64* %cloptr125078, i64 0               ; &cloptr125078[0]
  %f125081 = load i64, i64* %i0ptr125079, align 8                                    ; load; *i0ptr125079
  %fptr125080 = inttoptr i64 %f125081 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125080(i64 %ClD$_37drop, i64 %arg122984, i64 %mCI$y, i64 %a122317); tail call
  ret void

else125071:
  %cloptr125082 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125084 = getelementptr inbounds i64, i64* %cloptr125082, i64 1                ; &eptr125084[1]
  %eptr125085 = getelementptr inbounds i64, i64* %cloptr125082, i64 2                ; &eptr125085[2]
  %eptr125086 = getelementptr inbounds i64, i64* %cloptr125082, i64 3                ; &eptr125086[3]
  store i64 %cont122408, i64* %eptr125084                                            ; *eptr125084 = %cont122408
  store i64 %a122315, i64* %eptr125085                                               ; *eptr125085 = %a122315
  store i64 %a122312, i64* %eptr125086                                               ; *eptr125086 = %a122312
  %eptr125083 = getelementptr inbounds i64, i64* %cloptr125082, i64 0                ; &cloptr125082[0]
  %f125087 = ptrtoint void(i64,i64,i64)* @lam123604 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125087, i64* %eptr125083                                               ; store fptr
  %arg122992 = ptrtoint i64* %cloptr125082 to i64                                    ; closure cast; i64* -> i64
  %arg122991 = add i64 0, 0                                                          ; quoted ()
  %cloptr125088 = inttoptr i64 %arg122992 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125088)                                       ; assert function application
  %i0ptr125089 = getelementptr inbounds i64, i64* %cloptr125088, i64 0               ; &cloptr125088[0]
  %f125091 = load i64, i64* %i0ptr125089, align 8                                    ; load; *i0ptr125089
  %fptr125090 = inttoptr i64 %f125091 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125090(i64 %arg122992, i64 %arg122991, i64 %mCI$y)  ; tail call
  ret void
}


define void @lam123604(i64 %env123605, i64 %_95122416, i64 %a122318) {
  %envptr125092 = inttoptr i64 %env123605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125093 = getelementptr inbounds i64, i64* %envptr125092, i64 3              ; &envptr125092[3]
  %a122312 = load i64, i64* %envptr125093, align 8                                   ; load; *envptr125093
  %envptr125094 = inttoptr i64 %env123605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125095 = getelementptr inbounds i64, i64* %envptr125094, i64 2              ; &envptr125094[2]
  %a122315 = load i64, i64* %envptr125095, align 8                                   ; load; *envptr125095
  %envptr125096 = inttoptr i64 %env123605 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125097 = getelementptr inbounds i64, i64* %envptr125096, i64 1              ; &envptr125096[1]
  %cont122408 = load i64, i64* %envptr125097, align 8                                ; load; *envptr125097
  %cloptr125098 = inttoptr i64 %a122312 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125098)                                       ; assert function application
  %i0ptr125099 = getelementptr inbounds i64, i64* %cloptr125098, i64 0               ; &cloptr125098[0]
  %f125101 = load i64, i64* %i0ptr125099, align 8                                    ; load; *i0ptr125099
  %fptr125100 = inttoptr i64 %f125101 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125100(i64 %a122312, i64 %cont122408, i64 %a122315, i64 %a122318); tail call
  ret void
}


define void @lam123601(i64 %env123602, i64 %_95122416, i64 %a122318) {
  %envptr125102 = inttoptr i64 %env123602 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125103 = getelementptr inbounds i64, i64* %envptr125102, i64 3              ; &envptr125102[3]
  %a122312 = load i64, i64* %envptr125103, align 8                                   ; load; *envptr125103
  %envptr125104 = inttoptr i64 %env123602 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125105 = getelementptr inbounds i64, i64* %envptr125104, i64 2              ; &envptr125104[2]
  %a122315 = load i64, i64* %envptr125105, align 8                                   ; load; *envptr125105
  %envptr125106 = inttoptr i64 %env123602 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125107 = getelementptr inbounds i64, i64* %envptr125106, i64 1              ; &envptr125106[1]
  %cont122408 = load i64, i64* %envptr125107, align 8                                ; load; *envptr125107
  %cloptr125108 = inttoptr i64 %a122312 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125108)                                       ; assert function application
  %i0ptr125109 = getelementptr inbounds i64, i64* %cloptr125108, i64 0               ; &cloptr125108[0]
  %f125111 = load i64, i64* %i0ptr125109, align 8                                    ; load; *i0ptr125109
  %fptr125110 = inttoptr i64 %f125111 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125110(i64 %a122312, i64 %cont122408, i64 %a122315, i64 %a122318); tail call
  ret void
}


define void @lam123598(i64 %env123599, i64 %cont122421, i64 %bpW$new) {
  %envptr125112 = inttoptr i64 %env123599 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125113 = getelementptr inbounds i64, i64* %envptr125112, i64 2              ; &envptr125112[2]
  %IiL$_37wind_45stack = load i64, i64* %envptr125113, align 8                       ; load; *envptr125113
  %envptr125114 = inttoptr i64 %env123599 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125115 = getelementptr inbounds i64, i64* %envptr125114, i64 1              ; &envptr125114[1]
  %dAV$_37common_45tail = load i64, i64* %envptr125115, align 8                      ; load; *envptr125115
  %arg123021 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122319 = call i64 @prim_vector_45ref(i64 %IiL$_37wind_45stack, i64 %arg123021)   ; call prim_vector_45ref
  %cloptr125116 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125118 = getelementptr inbounds i64, i64* %cloptr125116, i64 1                ; &eptr125118[1]
  %eptr125119 = getelementptr inbounds i64, i64* %cloptr125116, i64 2                ; &eptr125119[2]
  %eptr125120 = getelementptr inbounds i64, i64* %cloptr125116, i64 3                ; &eptr125120[3]
  store i64 %bpW$new, i64* %eptr125118                                               ; *eptr125118 = %bpW$new
  store i64 %IiL$_37wind_45stack, i64* %eptr125119                                   ; *eptr125119 = %IiL$_37wind_45stack
  store i64 %cont122421, i64* %eptr125120                                            ; *eptr125120 = %cont122421
  %eptr125117 = getelementptr inbounds i64, i64* %cloptr125116, i64 0                ; &cloptr125116[0]
  %f125121 = ptrtoint void(i64,i64,i64)* @lam123595 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125121, i64* %eptr125117                                               ; store fptr
  %arg123025 = ptrtoint i64* %cloptr125116 to i64                                    ; closure cast; i64* -> i64
  %cloptr125122 = inttoptr i64 %dAV$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125122)                                       ; assert function application
  %i0ptr125123 = getelementptr inbounds i64, i64* %cloptr125122, i64 0               ; &cloptr125122[0]
  %f125125 = load i64, i64* %i0ptr125123, align 8                                    ; load; *i0ptr125123
  %fptr125124 = inttoptr i64 %f125125 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125124(i64 %dAV$_37common_45tail, i64 %arg123025, i64 %bpW$new, i64 %a122319); tail call
  ret void
}


define void @lam123595(i64 %env123596, i64 %_95122422, i64 %JeK$tail) {
  %envptr125126 = inttoptr i64 %env123596 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125127 = getelementptr inbounds i64, i64* %envptr125126, i64 3              ; &envptr125126[3]
  %cont122421 = load i64, i64* %envptr125127, align 8                                ; load; *envptr125127
  %envptr125128 = inttoptr i64 %env123596 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125129 = getelementptr inbounds i64, i64* %envptr125128, i64 2              ; &envptr125128[2]
  %IiL$_37wind_45stack = load i64, i64* %envptr125129, align 8                       ; load; *envptr125129
  %envptr125130 = inttoptr i64 %env123596 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125131 = getelementptr inbounds i64, i64* %envptr125130, i64 1              ; &envptr125130[1]
  %bpW$new = load i64, i64* %envptr125131, align 8                                   ; load; *envptr125131
  %cloptr125132 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125133 = getelementptr inbounds i64, i64* %cloptr125132, i64 0                ; &cloptr125132[0]
  %f125134 = ptrtoint void(i64,i64)* @lam123593 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f125134, i64* %eptr125133                                               ; store fptr
  %arg123028 = ptrtoint i64* %cloptr125132 to i64                                    ; closure cast; i64* -> i64
  %cloptr125135 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125137 = getelementptr inbounds i64, i64* %cloptr125135, i64 1                ; &eptr125137[1]
  %eptr125138 = getelementptr inbounds i64, i64* %cloptr125135, i64 2                ; &eptr125138[2]
  %eptr125139 = getelementptr inbounds i64, i64* %cloptr125135, i64 3                ; &eptr125139[3]
  %eptr125140 = getelementptr inbounds i64, i64* %cloptr125135, i64 4                ; &eptr125140[4]
  store i64 %JeK$tail, i64* %eptr125137                                              ; *eptr125137 = %JeK$tail
  store i64 %bpW$new, i64* %eptr125138                                               ; *eptr125138 = %bpW$new
  store i64 %IiL$_37wind_45stack, i64* %eptr125139                                   ; *eptr125139 = %IiL$_37wind_45stack
  store i64 %cont122421, i64* %eptr125140                                            ; *eptr125140 = %cont122421
  %eptr125136 = getelementptr inbounds i64, i64* %cloptr125135, i64 0                ; &cloptr125135[0]
  %f125141 = ptrtoint void(i64,i64,i64)* @lam123590 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125141, i64* %eptr125136                                               ; store fptr
  %arg123027 = ptrtoint i64* %cloptr125135 to i64                                    ; closure cast; i64* -> i64
  %cloptr125142 = inttoptr i64 %arg123028 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125142)                                       ; assert function application
  %i0ptr125143 = getelementptr inbounds i64, i64* %cloptr125142, i64 0               ; &cloptr125142[0]
  %f125145 = load i64, i64* %i0ptr125143, align 8                                    ; load; *i0ptr125143
  %fptr125144 = inttoptr i64 %f125145 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125144(i64 %arg123028, i64 %arg123027)              ; tail call
  ret void
}


define void @lam123593(i64 %env123594, i64 %ErG$lst122443) {
  %cont122442 = call i64 @prim_car(i64 %ErG$lst122443)                               ; call prim_car
  %ErG$lst = call i64 @prim_cdr(i64 %ErG$lst122443)                                  ; call prim_cdr
  %arg123032 = add i64 0, 0                                                          ; quoted ()
  %cloptr125146 = inttoptr i64 %cont122442 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125146)                                       ; assert function application
  %i0ptr125147 = getelementptr inbounds i64, i64* %cloptr125146, i64 0               ; &cloptr125146[0]
  %f125149 = load i64, i64* %i0ptr125147, align 8                                    ; load; *i0ptr125147
  %fptr125148 = inttoptr i64 %f125149 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125148(i64 %cont122442, i64 %arg123032, i64 %ErG$lst); tail call
  ret void
}


define void @lam123590(i64 %env123591, i64 %_95122440, i64 %a122320) {
  %envptr125150 = inttoptr i64 %env123591 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125151 = getelementptr inbounds i64, i64* %envptr125150, i64 4              ; &envptr125150[4]
  %cont122421 = load i64, i64* %envptr125151, align 8                                ; load; *envptr125151
  %envptr125152 = inttoptr i64 %env123591 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125153 = getelementptr inbounds i64, i64* %envptr125152, i64 3              ; &envptr125152[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125153, align 8                       ; load; *envptr125153
  %envptr125154 = inttoptr i64 %env123591 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125155 = getelementptr inbounds i64, i64* %envptr125154, i64 2              ; &envptr125154[2]
  %bpW$new = load i64, i64* %envptr125155, align 8                                   ; load; *envptr125155
  %envptr125156 = inttoptr i64 %env123591 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125157 = getelementptr inbounds i64, i64* %envptr125156, i64 1              ; &envptr125156[1]
  %JeK$tail = load i64, i64* %envptr125157, align 8                                  ; load; *envptr125157
  %arg123035 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim122441 = call i64 @prim_make_45vector(i64 %arg123035, i64 %a122320)        ; call prim_make_45vector
  %cloptr125158 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125160 = getelementptr inbounds i64, i64* %cloptr125158, i64 1                ; &eptr125160[1]
  %eptr125161 = getelementptr inbounds i64, i64* %cloptr125158, i64 2                ; &eptr125161[2]
  %eptr125162 = getelementptr inbounds i64, i64* %cloptr125158, i64 3                ; &eptr125162[3]
  %eptr125163 = getelementptr inbounds i64, i64* %cloptr125158, i64 4                ; &eptr125163[4]
  store i64 %JeK$tail, i64* %eptr125160                                              ; *eptr125160 = %JeK$tail
  store i64 %bpW$new, i64* %eptr125161                                               ; *eptr125161 = %bpW$new
  store i64 %IiL$_37wind_45stack, i64* %eptr125162                                   ; *eptr125162 = %IiL$_37wind_45stack
  store i64 %cont122421, i64* %eptr125163                                            ; *eptr125163 = %cont122421
  %eptr125159 = getelementptr inbounds i64, i64* %cloptr125158, i64 0                ; &cloptr125158[0]
  %f125164 = ptrtoint void(i64,i64,i64)* @lam123587 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125164, i64* %eptr125159                                               ; store fptr
  %arg123038 = ptrtoint i64* %cloptr125158 to i64                                    ; closure cast; i64* -> i64
  %arg123037 = add i64 0, 0                                                          ; quoted ()
  %cloptr125165 = inttoptr i64 %arg123038 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125165)                                       ; assert function application
  %i0ptr125166 = getelementptr inbounds i64, i64* %cloptr125165, i64 0               ; &cloptr125165[0]
  %f125168 = load i64, i64* %i0ptr125166, align 8                                    ; load; *i0ptr125166
  %fptr125167 = inttoptr i64 %f125168 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125167(i64 %arg123038, i64 %arg123037, i64 %retprim122441); tail call
  ret void
}


define void @lam123587(i64 %env123588, i64 %_95122434, i64 %QTK$f) {
  %envptr125169 = inttoptr i64 %env123588 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125170 = getelementptr inbounds i64, i64* %envptr125169, i64 4              ; &envptr125169[4]
  %cont122421 = load i64, i64* %envptr125170, align 8                                ; load; *envptr125170
  %envptr125171 = inttoptr i64 %env123588 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125172 = getelementptr inbounds i64, i64* %envptr125171, i64 3              ; &envptr125171[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125172, align 8                       ; load; *envptr125172
  %envptr125173 = inttoptr i64 %env123588 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125174 = getelementptr inbounds i64, i64* %envptr125173, i64 2              ; &envptr125173[2]
  %bpW$new = load i64, i64* %envptr125174, align 8                                   ; load; *envptr125174
  %envptr125175 = inttoptr i64 %env123588 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125176 = getelementptr inbounds i64, i64* %envptr125175, i64 1              ; &envptr125175[1]
  %JeK$tail = load i64, i64* %envptr125176, align 8                                  ; load; *envptr125176
  %arg123040 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr125177 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125179 = getelementptr inbounds i64, i64* %cloptr125177, i64 1                ; &eptr125179[1]
  %eptr125180 = getelementptr inbounds i64, i64* %cloptr125177, i64 2                ; &eptr125180[2]
  %eptr125181 = getelementptr inbounds i64, i64* %cloptr125177, i64 3                ; &eptr125181[3]
  store i64 %JeK$tail, i64* %eptr125179                                              ; *eptr125179 = %JeK$tail
  store i64 %QTK$f, i64* %eptr125180                                                 ; *eptr125180 = %QTK$f
  store i64 %IiL$_37wind_45stack, i64* %eptr125181                                   ; *eptr125181 = %IiL$_37wind_45stack
  %eptr125178 = getelementptr inbounds i64, i64* %cloptr125177, i64 0                ; &cloptr125177[0]
  %f125182 = ptrtoint void(i64,i64,i64)* @lam123584 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125182, i64* %eptr125178                                               ; store fptr
  %arg123039 = ptrtoint i64* %cloptr125177 to i64                                    ; closure cast; i64* -> i64
  %DDy$_95122213 = call i64 @prim_vector_45set_33(i64 %QTK$f, i64 %arg123040, i64 %arg123039); call prim_vector_45set_33
  %arg123065 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122328 = call i64 @prim_vector_45ref(i64 %QTK$f, i64 %arg123065)                 ; call prim_vector_45ref
  %arg123067 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122329 = call i64 @prim_vector_45ref(i64 %IiL$_37wind_45stack, i64 %arg123067)   ; call prim_vector_45ref
  %cloptr125183 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125185 = getelementptr inbounds i64, i64* %cloptr125183, i64 1                ; &eptr125185[1]
  %eptr125186 = getelementptr inbounds i64, i64* %cloptr125183, i64 2                ; &eptr125186[2]
  %eptr125187 = getelementptr inbounds i64, i64* %cloptr125183, i64 3                ; &eptr125187[3]
  %eptr125188 = getelementptr inbounds i64, i64* %cloptr125183, i64 4                ; &eptr125188[4]
  store i64 %JeK$tail, i64* %eptr125185                                              ; *eptr125185 = %JeK$tail
  store i64 %bpW$new, i64* %eptr125186                                               ; *eptr125186 = %bpW$new
  store i64 %IiL$_37wind_45stack, i64* %eptr125187                                   ; *eptr125187 = %IiL$_37wind_45stack
  store i64 %cont122421, i64* %eptr125188                                            ; *eptr125188 = %cont122421
  %eptr125184 = getelementptr inbounds i64, i64* %cloptr125183, i64 0                ; &cloptr125183[0]
  %f125189 = ptrtoint void(i64,i64,i64)* @lam123572 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125189, i64* %eptr125184                                               ; store fptr
  %arg123070 = ptrtoint i64* %cloptr125183 to i64                                    ; closure cast; i64* -> i64
  %cloptr125190 = inttoptr i64 %a122328 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125190)                                       ; assert function application
  %i0ptr125191 = getelementptr inbounds i64, i64* %cloptr125190, i64 0               ; &cloptr125190[0]
  %f125193 = load i64, i64* %i0ptr125191, align 8                                    ; load; *i0ptr125191
  %fptr125192 = inttoptr i64 %f125193 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125192(i64 %a122328, i64 %arg123070, i64 %a122329)  ; tail call
  ret void
}


define void @lam123584(i64 %env123585, i64 %cont122435, i64 %u2Q$l) {
  %envptr125194 = inttoptr i64 %env123585 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125195 = getelementptr inbounds i64, i64* %envptr125194, i64 3              ; &envptr125194[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125195, align 8                       ; load; *envptr125195
  %envptr125196 = inttoptr i64 %env123585 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125197 = getelementptr inbounds i64, i64* %envptr125196, i64 2              ; &envptr125196[2]
  %QTK$f = load i64, i64* %envptr125197, align 8                                     ; load; *envptr125197
  %envptr125198 = inttoptr i64 %env123585 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125199 = getelementptr inbounds i64, i64* %envptr125198, i64 1              ; &envptr125198[1]
  %JeK$tail = load i64, i64* %envptr125199, align 8                                  ; load; *envptr125199
  %a122321 = call i64 @prim_eq_63(i64 %u2Q$l, i64 %JeK$tail)                         ; call prim_eq_63
  %a122322 = call i64 @prim_not(i64 %a122321)                                        ; call prim_not
  %cmp125200 = icmp eq i64 %a122322, 15                                              ; false?
  br i1 %cmp125200, label %else125202, label %then125201                             ; if

then125201:
  %a122323 = call i64 @prim_cdr(i64 %u2Q$l)                                          ; call prim_cdr
  %arg123047 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122438 = call i64 @prim_vector_45set_33(i64 %IiL$_37wind_45stack, i64 %arg123047, i64 %a122323); call prim_vector_45set_33
  %cloptr125203 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125205 = getelementptr inbounds i64, i64* %cloptr125203, i64 1                ; &eptr125205[1]
  %eptr125206 = getelementptr inbounds i64, i64* %cloptr125203, i64 2                ; &eptr125206[2]
  %eptr125207 = getelementptr inbounds i64, i64* %cloptr125203, i64 3                ; &eptr125207[3]
  store i64 %cont122435, i64* %eptr125205                                            ; *eptr125205 = %cont122435
  store i64 %QTK$f, i64* %eptr125206                                                 ; *eptr125206 = %QTK$f
  store i64 %u2Q$l, i64* %eptr125207                                                 ; *eptr125207 = %u2Q$l
  %eptr125204 = getelementptr inbounds i64, i64* %cloptr125203, i64 0                ; &cloptr125203[0]
  %f125208 = ptrtoint void(i64,i64,i64)* @lam123580 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125208, i64* %eptr125204                                               ; store fptr
  %arg123051 = ptrtoint i64* %cloptr125203 to i64                                    ; closure cast; i64* -> i64
  %arg123050 = add i64 0, 0                                                          ; quoted ()
  %cloptr125209 = inttoptr i64 %arg123051 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125209)                                       ; assert function application
  %i0ptr125210 = getelementptr inbounds i64, i64* %cloptr125209, i64 0               ; &cloptr125209[0]
  %f125212 = load i64, i64* %i0ptr125210, align 8                                    ; load; *i0ptr125210
  %fptr125211 = inttoptr i64 %f125212 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125211(i64 %arg123051, i64 %arg123050, i64 %retprim122438); tail call
  ret void

else125202:
  %retprim122439 = call i64 @prim_void()                                             ; call prim_void
  %arg123063 = add i64 0, 0                                                          ; quoted ()
  %cloptr125213 = inttoptr i64 %cont122435 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125213)                                       ; assert function application
  %i0ptr125214 = getelementptr inbounds i64, i64* %cloptr125213, i64 0               ; &cloptr125213[0]
  %f125216 = load i64, i64* %i0ptr125214, align 8                                    ; load; *i0ptr125214
  %fptr125215 = inttoptr i64 %f125216 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125215(i64 %cont122435, i64 %arg123063, i64 %retprim122439); tail call
  ret void
}


define void @lam123580(i64 %env123581, i64 %_95122436, i64 %txV$_95122214) {
  %envptr125217 = inttoptr i64 %env123581 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125218 = getelementptr inbounds i64, i64* %envptr125217, i64 3              ; &envptr125217[3]
  %u2Q$l = load i64, i64* %envptr125218, align 8                                     ; load; *envptr125218
  %envptr125219 = inttoptr i64 %env123581 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125220 = getelementptr inbounds i64, i64* %envptr125219, i64 2              ; &envptr125219[2]
  %QTK$f = load i64, i64* %envptr125220, align 8                                     ; load; *envptr125220
  %envptr125221 = inttoptr i64 %env123581 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125222 = getelementptr inbounds i64, i64* %envptr125221, i64 1              ; &envptr125221[1]
  %cont122435 = load i64, i64* %envptr125222, align 8                                ; load; *envptr125222
  %a122324 = call i64 @prim_car(i64 %u2Q$l)                                          ; call prim_car
  %a122325 = call i64 @prim_cdr(i64 %a122324)                                        ; call prim_cdr
  %cloptr125223 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125225 = getelementptr inbounds i64, i64* %cloptr125223, i64 1                ; &eptr125225[1]
  %eptr125226 = getelementptr inbounds i64, i64* %cloptr125223, i64 2                ; &eptr125226[2]
  %eptr125227 = getelementptr inbounds i64, i64* %cloptr125223, i64 3                ; &eptr125227[3]
  store i64 %cont122435, i64* %eptr125225                                            ; *eptr125225 = %cont122435
  store i64 %QTK$f, i64* %eptr125226                                                 ; *eptr125226 = %QTK$f
  store i64 %u2Q$l, i64* %eptr125227                                                 ; *eptr125227 = %u2Q$l
  %eptr125224 = getelementptr inbounds i64, i64* %cloptr125223, i64 0                ; &cloptr125223[0]
  %f125228 = ptrtoint void(i64,i64,i64)* @lam123578 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125228, i64* %eptr125224                                               ; store fptr
  %arg123054 = ptrtoint i64* %cloptr125223 to i64                                    ; closure cast; i64* -> i64
  %cloptr125229 = inttoptr i64 %a122325 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125229)                                       ; assert function application
  %i0ptr125230 = getelementptr inbounds i64, i64* %cloptr125229, i64 0               ; &cloptr125229[0]
  %f125232 = load i64, i64* %i0ptr125230, align 8                                    ; load; *i0ptr125230
  %fptr125231 = inttoptr i64 %f125232 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125231(i64 %a122325, i64 %arg123054)                ; tail call
  ret void
}


define void @lam123578(i64 %env123579, i64 %_95122437, i64 %OOY$_95122215) {
  %envptr125233 = inttoptr i64 %env123579 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125234 = getelementptr inbounds i64, i64* %envptr125233, i64 3              ; &envptr125233[3]
  %u2Q$l = load i64, i64* %envptr125234, align 8                                     ; load; *envptr125234
  %envptr125235 = inttoptr i64 %env123579 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125236 = getelementptr inbounds i64, i64* %envptr125235, i64 2              ; &envptr125235[2]
  %QTK$f = load i64, i64* %envptr125236, align 8                                     ; load; *envptr125236
  %envptr125237 = inttoptr i64 %env123579 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125238 = getelementptr inbounds i64, i64* %envptr125237, i64 1              ; &envptr125237[1]
  %cont122435 = load i64, i64* %envptr125238, align 8                                ; load; *envptr125238
  %arg123056 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122326 = call i64 @prim_vector_45ref(i64 %QTK$f, i64 %arg123056)                 ; call prim_vector_45ref
  %a122327 = call i64 @prim_cdr(i64 %u2Q$l)                                          ; call prim_cdr
  %cloptr125239 = inttoptr i64 %a122326 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125239)                                       ; assert function application
  %i0ptr125240 = getelementptr inbounds i64, i64* %cloptr125239, i64 0               ; &cloptr125239[0]
  %f125242 = load i64, i64* %i0ptr125240, align 8                                    ; load; *i0ptr125240
  %fptr125241 = inttoptr i64 %f125242 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125241(i64 %a122326, i64 %cont122435, i64 %a122327) ; tail call
  ret void
}


define void @lam123572(i64 %env123573, i64 %_95122423, i64 %e2X$_95122212) {
  %envptr125243 = inttoptr i64 %env123573 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125244 = getelementptr inbounds i64, i64* %envptr125243, i64 4              ; &envptr125243[4]
  %cont122421 = load i64, i64* %envptr125244, align 8                                ; load; *envptr125244
  %envptr125245 = inttoptr i64 %env123573 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125246 = getelementptr inbounds i64, i64* %envptr125245, i64 3              ; &envptr125245[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125246, align 8                       ; load; *envptr125246
  %envptr125247 = inttoptr i64 %env123573 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125248 = getelementptr inbounds i64, i64* %envptr125247, i64 2              ; &envptr125247[2]
  %bpW$new = load i64, i64* %envptr125248, align 8                                   ; load; *envptr125248
  %envptr125249 = inttoptr i64 %env123573 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125250 = getelementptr inbounds i64, i64* %envptr125249, i64 1              ; &envptr125249[1]
  %JeK$tail = load i64, i64* %envptr125250, align 8                                  ; load; *envptr125250
  %cloptr125251 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125252 = getelementptr inbounds i64, i64* %cloptr125251, i64 0                ; &cloptr125251[0]
  %f125253 = ptrtoint void(i64,i64)* @lam123570 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f125253, i64* %eptr125252                                               ; store fptr
  %arg123073 = ptrtoint i64* %cloptr125251 to i64                                    ; closure cast; i64* -> i64
  %cloptr125254 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125256 = getelementptr inbounds i64, i64* %cloptr125254, i64 1                ; &eptr125256[1]
  %eptr125257 = getelementptr inbounds i64, i64* %cloptr125254, i64 2                ; &eptr125257[2]
  %eptr125258 = getelementptr inbounds i64, i64* %cloptr125254, i64 3                ; &eptr125258[3]
  %eptr125259 = getelementptr inbounds i64, i64* %cloptr125254, i64 4                ; &eptr125259[4]
  store i64 %JeK$tail, i64* %eptr125256                                              ; *eptr125256 = %JeK$tail
  store i64 %bpW$new, i64* %eptr125257                                               ; *eptr125257 = %bpW$new
  store i64 %IiL$_37wind_45stack, i64* %eptr125258                                   ; *eptr125258 = %IiL$_37wind_45stack
  store i64 %cont122421, i64* %eptr125259                                            ; *eptr125259 = %cont122421
  %eptr125255 = getelementptr inbounds i64, i64* %cloptr125254, i64 0                ; &cloptr125254[0]
  %f125260 = ptrtoint void(i64,i64,i64)* @lam123567 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125260, i64* %eptr125255                                               ; store fptr
  %arg123072 = ptrtoint i64* %cloptr125254 to i64                                    ; closure cast; i64* -> i64
  %cloptr125261 = inttoptr i64 %arg123073 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125261)                                       ; assert function application
  %i0ptr125262 = getelementptr inbounds i64, i64* %cloptr125261, i64 0               ; &cloptr125261[0]
  %f125264 = load i64, i64* %i0ptr125262, align 8                                    ; load; *i0ptr125262
  %fptr125263 = inttoptr i64 %f125264 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125263(i64 %arg123073, i64 %arg123072)              ; tail call
  ret void
}


define void @lam123570(i64 %env123571, i64 %t2y$lst122433) {
  %cont122432 = call i64 @prim_car(i64 %t2y$lst122433)                               ; call prim_car
  %t2y$lst = call i64 @prim_cdr(i64 %t2y$lst122433)                                  ; call prim_cdr
  %arg123077 = add i64 0, 0                                                          ; quoted ()
  %cloptr125265 = inttoptr i64 %cont122432 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125265)                                       ; assert function application
  %i0ptr125266 = getelementptr inbounds i64, i64* %cloptr125265, i64 0               ; &cloptr125265[0]
  %f125268 = load i64, i64* %i0ptr125266, align 8                                    ; load; *i0ptr125266
  %fptr125267 = inttoptr i64 %f125268 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125267(i64 %cont122432, i64 %arg123077, i64 %t2y$lst); tail call
  ret void
}


define void @lam123567(i64 %env123568, i64 %_95122430, i64 %a122330) {
  %envptr125269 = inttoptr i64 %env123568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125270 = getelementptr inbounds i64, i64* %envptr125269, i64 4              ; &envptr125269[4]
  %cont122421 = load i64, i64* %envptr125270, align 8                                ; load; *envptr125270
  %envptr125271 = inttoptr i64 %env123568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125272 = getelementptr inbounds i64, i64* %envptr125271, i64 3              ; &envptr125271[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125272, align 8                       ; load; *envptr125272
  %envptr125273 = inttoptr i64 %env123568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125274 = getelementptr inbounds i64, i64* %envptr125273, i64 2              ; &envptr125273[2]
  %bpW$new = load i64, i64* %envptr125274, align 8                                   ; load; *envptr125274
  %envptr125275 = inttoptr i64 %env123568 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125276 = getelementptr inbounds i64, i64* %envptr125275, i64 1              ; &envptr125275[1]
  %JeK$tail = load i64, i64* %envptr125276, align 8                                  ; load; *envptr125276
  %arg123080 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim122431 = call i64 @prim_make_45vector(i64 %arg123080, i64 %a122330)        ; call prim_make_45vector
  %cloptr125277 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125279 = getelementptr inbounds i64, i64* %cloptr125277, i64 1                ; &eptr125279[1]
  %eptr125280 = getelementptr inbounds i64, i64* %cloptr125277, i64 2                ; &eptr125280[2]
  %eptr125281 = getelementptr inbounds i64, i64* %cloptr125277, i64 3                ; &eptr125281[3]
  %eptr125282 = getelementptr inbounds i64, i64* %cloptr125277, i64 4                ; &eptr125282[4]
  store i64 %JeK$tail, i64* %eptr125279                                              ; *eptr125279 = %JeK$tail
  store i64 %bpW$new, i64* %eptr125280                                               ; *eptr125280 = %bpW$new
  store i64 %IiL$_37wind_45stack, i64* %eptr125281                                   ; *eptr125281 = %IiL$_37wind_45stack
  store i64 %cont122421, i64* %eptr125282                                            ; *eptr125282 = %cont122421
  %eptr125278 = getelementptr inbounds i64, i64* %cloptr125277, i64 0                ; &cloptr125277[0]
  %f125283 = ptrtoint void(i64,i64,i64)* @lam123564 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125283, i64* %eptr125278                                               ; store fptr
  %arg123083 = ptrtoint i64* %cloptr125277 to i64                                    ; closure cast; i64* -> i64
  %arg123082 = add i64 0, 0                                                          ; quoted ()
  %cloptr125284 = inttoptr i64 %arg123083 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125284)                                       ; assert function application
  %i0ptr125285 = getelementptr inbounds i64, i64* %cloptr125284, i64 0               ; &cloptr125284[0]
  %f125287 = load i64, i64* %i0ptr125285, align 8                                    ; load; *i0ptr125285
  %fptr125286 = inttoptr i64 %f125287 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125286(i64 %arg123083, i64 %arg123082, i64 %retprim122431); tail call
  ret void
}


define void @lam123564(i64 %env123565, i64 %_95122424, i64 %GAT$f) {
  %envptr125288 = inttoptr i64 %env123565 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125289 = getelementptr inbounds i64, i64* %envptr125288, i64 4              ; &envptr125288[4]
  %cont122421 = load i64, i64* %envptr125289, align 8                                ; load; *envptr125289
  %envptr125290 = inttoptr i64 %env123565 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125291 = getelementptr inbounds i64, i64* %envptr125290, i64 3              ; &envptr125290[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125291, align 8                       ; load; *envptr125291
  %envptr125292 = inttoptr i64 %env123565 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125293 = getelementptr inbounds i64, i64* %envptr125292, i64 2              ; &envptr125292[2]
  %bpW$new = load i64, i64* %envptr125293, align 8                                   ; load; *envptr125293
  %envptr125294 = inttoptr i64 %env123565 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125295 = getelementptr inbounds i64, i64* %envptr125294, i64 1              ; &envptr125294[1]
  %JeK$tail = load i64, i64* %envptr125295, align 8                                  ; load; *envptr125295
  %arg123085 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr125296 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125298 = getelementptr inbounds i64, i64* %cloptr125296, i64 1                ; &eptr125298[1]
  %eptr125299 = getelementptr inbounds i64, i64* %cloptr125296, i64 2                ; &eptr125299[2]
  %eptr125300 = getelementptr inbounds i64, i64* %cloptr125296, i64 3                ; &eptr125300[3]
  store i64 %GAT$f, i64* %eptr125298                                                 ; *eptr125298 = %GAT$f
  store i64 %JeK$tail, i64* %eptr125299                                              ; *eptr125299 = %JeK$tail
  store i64 %IiL$_37wind_45stack, i64* %eptr125300                                   ; *eptr125300 = %IiL$_37wind_45stack
  %eptr125297 = getelementptr inbounds i64, i64* %cloptr125296, i64 0                ; &cloptr125296[0]
  %f125301 = ptrtoint void(i64,i64,i64)* @lam123561 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125301, i64* %eptr125297                                               ; store fptr
  %arg123084 = ptrtoint i64* %cloptr125296 to i64                                    ; closure cast; i64* -> i64
  %uzK$_95122216 = call i64 @prim_vector_45set_33(i64 %GAT$f, i64 %arg123085, i64 %arg123084); call prim_vector_45set_33
  %arg123109 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122337 = call i64 @prim_vector_45ref(i64 %GAT$f, i64 %arg123109)                 ; call prim_vector_45ref
  %cloptr125302 = inttoptr i64 %a122337 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125302)                                       ; assert function application
  %i0ptr125303 = getelementptr inbounds i64, i64* %cloptr125302, i64 0               ; &cloptr125302[0]
  %f125305 = load i64, i64* %i0ptr125303, align 8                                    ; load; *i0ptr125303
  %fptr125304 = inttoptr i64 %f125305 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125304(i64 %a122337, i64 %cont122421, i64 %bpW$new) ; tail call
  ret void
}


define void @lam123561(i64 %env123562, i64 %cont122425, i64 %OGG$l) {
  %envptr125306 = inttoptr i64 %env123562 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125307 = getelementptr inbounds i64, i64* %envptr125306, i64 3              ; &envptr125306[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125307, align 8                       ; load; *envptr125307
  %envptr125308 = inttoptr i64 %env123562 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125309 = getelementptr inbounds i64, i64* %envptr125308, i64 2              ; &envptr125308[2]
  %JeK$tail = load i64, i64* %envptr125309, align 8                                  ; load; *envptr125309
  %envptr125310 = inttoptr i64 %env123562 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125311 = getelementptr inbounds i64, i64* %envptr125310, i64 1              ; &envptr125310[1]
  %GAT$f = load i64, i64* %envptr125311, align 8                                     ; load; *envptr125311
  %a122331 = call i64 @prim_eq_63(i64 %OGG$l, i64 %JeK$tail)                         ; call prim_eq_63
  %a122332 = call i64 @prim_not(i64 %a122331)                                        ; call prim_not
  %cmp125312 = icmp eq i64 %a122332, 15                                              ; false?
  br i1 %cmp125312, label %else125314, label %then125313                             ; if

then125313:
  %arg123090 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122333 = call i64 @prim_vector_45ref(i64 %GAT$f, i64 %arg123090)                 ; call prim_vector_45ref
  %a122334 = call i64 @prim_cdr(i64 %OGG$l)                                          ; call prim_cdr
  %cloptr125315 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125317 = getelementptr inbounds i64, i64* %cloptr125315, i64 1                ; &eptr125317[1]
  %eptr125318 = getelementptr inbounds i64, i64* %cloptr125315, i64 2                ; &eptr125318[2]
  %eptr125319 = getelementptr inbounds i64, i64* %cloptr125315, i64 3                ; &eptr125319[3]
  store i64 %OGG$l, i64* %eptr125317                                                 ; *eptr125317 = %OGG$l
  store i64 %cont122425, i64* %eptr125318                                            ; *eptr125318 = %cont122425
  store i64 %IiL$_37wind_45stack, i64* %eptr125319                                   ; *eptr125319 = %IiL$_37wind_45stack
  %eptr125316 = getelementptr inbounds i64, i64* %cloptr125315, i64 0                ; &cloptr125315[0]
  %f125320 = ptrtoint void(i64,i64,i64)* @lam123557 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125320, i64* %eptr125316                                               ; store fptr
  %arg123094 = ptrtoint i64* %cloptr125315 to i64                                    ; closure cast; i64* -> i64
  %cloptr125321 = inttoptr i64 %a122333 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125321)                                       ; assert function application
  %i0ptr125322 = getelementptr inbounds i64, i64* %cloptr125321, i64 0               ; &cloptr125321[0]
  %f125324 = load i64, i64* %i0ptr125322, align 8                                    ; load; *i0ptr125322
  %fptr125323 = inttoptr i64 %f125324 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125323(i64 %a122333, i64 %arg123094, i64 %a122334)  ; tail call
  ret void

else125314:
  %retprim122429 = call i64 @prim_void()                                             ; call prim_void
  %arg123107 = add i64 0, 0                                                          ; quoted ()
  %cloptr125325 = inttoptr i64 %cont122425 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125325)                                       ; assert function application
  %i0ptr125326 = getelementptr inbounds i64, i64* %cloptr125325, i64 0               ; &cloptr125325[0]
  %f125328 = load i64, i64* %i0ptr125326, align 8                                    ; load; *i0ptr125326
  %fptr125327 = inttoptr i64 %f125328 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125327(i64 %cont122425, i64 %arg123107, i64 %retprim122429); tail call
  ret void
}


define void @lam123557(i64 %env123558, i64 %_95122426, i64 %suu$_95122217) {
  %envptr125329 = inttoptr i64 %env123558 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125330 = getelementptr inbounds i64, i64* %envptr125329, i64 3              ; &envptr125329[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125330, align 8                       ; load; *envptr125330
  %envptr125331 = inttoptr i64 %env123558 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125332 = getelementptr inbounds i64, i64* %envptr125331, i64 2              ; &envptr125331[2]
  %cont122425 = load i64, i64* %envptr125332, align 8                                ; load; *envptr125332
  %envptr125333 = inttoptr i64 %env123558 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125334 = getelementptr inbounds i64, i64* %envptr125333, i64 1              ; &envptr125333[1]
  %OGG$l = load i64, i64* %envptr125334, align 8                                     ; load; *envptr125334
  %a122335 = call i64 @prim_car(i64 %OGG$l)                                          ; call prim_car
  %a122336 = call i64 @prim_car(i64 %a122335)                                        ; call prim_car
  %cloptr125335 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125337 = getelementptr inbounds i64, i64* %cloptr125335, i64 1                ; &eptr125337[1]
  %eptr125338 = getelementptr inbounds i64, i64* %cloptr125335, i64 2                ; &eptr125338[2]
  %eptr125339 = getelementptr inbounds i64, i64* %cloptr125335, i64 3                ; &eptr125339[3]
  store i64 %OGG$l, i64* %eptr125337                                                 ; *eptr125337 = %OGG$l
  store i64 %cont122425, i64* %eptr125338                                            ; *eptr125338 = %cont122425
  store i64 %IiL$_37wind_45stack, i64* %eptr125339                                   ; *eptr125339 = %IiL$_37wind_45stack
  %eptr125336 = getelementptr inbounds i64, i64* %cloptr125335, i64 0                ; &cloptr125335[0]
  %f125340 = ptrtoint void(i64,i64,i64)* @lam123555 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125340, i64* %eptr125336                                               ; store fptr
  %arg123098 = ptrtoint i64* %cloptr125335 to i64                                    ; closure cast; i64* -> i64
  %cloptr125341 = inttoptr i64 %a122336 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125341)                                       ; assert function application
  %i0ptr125342 = getelementptr inbounds i64, i64* %cloptr125341, i64 0               ; &cloptr125341[0]
  %f125344 = load i64, i64* %i0ptr125342, align 8                                    ; load; *i0ptr125342
  %fptr125343 = inttoptr i64 %f125344 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125343(i64 %a122336, i64 %arg123098)                ; tail call
  ret void
}


define void @lam123555(i64 %env123556, i64 %_95122427, i64 %zmZ$_95122218) {
  %envptr125345 = inttoptr i64 %env123556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125346 = getelementptr inbounds i64, i64* %envptr125345, i64 3              ; &envptr125345[3]
  %IiL$_37wind_45stack = load i64, i64* %envptr125346, align 8                       ; load; *envptr125346
  %envptr125347 = inttoptr i64 %env123556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125348 = getelementptr inbounds i64, i64* %envptr125347, i64 2              ; &envptr125347[2]
  %cont122425 = load i64, i64* %envptr125348, align 8                                ; load; *envptr125348
  %envptr125349 = inttoptr i64 %env123556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125350 = getelementptr inbounds i64, i64* %envptr125349, i64 1              ; &envptr125349[1]
  %OGG$l = load i64, i64* %envptr125350, align 8                                     ; load; *envptr125350
  %arg123101 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim122428 = call i64 @prim_vector_45set_33(i64 %IiL$_37wind_45stack, i64 %arg123101, i64 %OGG$l); call prim_vector_45set_33
  %arg123104 = add i64 0, 0                                                          ; quoted ()
  %cloptr125351 = inttoptr i64 %cont122425 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125351)                                       ; assert function application
  %i0ptr125352 = getelementptr inbounds i64, i64* %cloptr125351, i64 0               ; &cloptr125351[0]
  %f125354 = load i64, i64* %i0ptr125352, align 8                                    ; load; *i0ptr125352
  %fptr125353 = inttoptr i64 %f125354 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125353(i64 %cont122425, i64 %arg123104, i64 %retprim122428); tail call
  ret void
}


define void @lam123548(i64 %env123549, i64 %zMC$lst122447) {
  %cont122446 = call i64 @prim_car(i64 %zMC$lst122447)                               ; call prim_car
  %zMC$lst = call i64 @prim_cdr(i64 %zMC$lst122447)                                  ; call prim_cdr
  %arg123119 = add i64 0, 0                                                          ; quoted ()
  %rva123380 = add i64 0, 0                                                          ; quoted ()
  %rva123379 = call i64 @prim_cons(i64 %zMC$lst, i64 %rva123380)                     ; call prim_cons
  %rva123378 = call i64 @prim_cons(i64 %arg123119, i64 %rva123379)                   ; call prim_cons
  %cloptr125355 = inttoptr i64 %cont122446 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125355)                                       ; assert function application
  %i0ptr125356 = getelementptr inbounds i64, i64* %cloptr125355, i64 0               ; &cloptr125355[0]
  %f125358 = load i64, i64* %i0ptr125356, align 8                                    ; load; *i0ptr125356
  %fptr125357 = inttoptr i64 %f125358 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125357(i64 %cont122446, i64 %rva123378)             ; tail call
  ret void
}


define void @lam123544(i64 %env123545, i64 %rvp123387) {
  %_95122444 = call i64 @prim_car(i64 %rvp123387)                                    ; call prim_car
  %rvp123385 = call i64 @prim_cdr(i64 %rvp123387)                                    ; call prim_cdr
  %a122338 = call i64 @prim_car(i64 %rvp123385)                                      ; call prim_car
  %na123382 = call i64 @prim_cdr(i64 %rvp123385)                                     ; call prim_cdr
  %arg123123 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg123122 = call i64 @const_init_int(i64 2)                                       ; quoted int
  call i64 @too_many_args()                                                          ; too many args for cons
  ret void                                                                           ; 
}


define void @lam123540(i64 %env123541, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva123384 = add i64 0, 0                                                          ; quoted ()
  %rva123383 = call i64 @prim_cons(i64 %_951, i64 %rva123384)                        ; call prim_cons
  %cloptr125359 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125359)                                       ; assert function application
  %i0ptr125360 = getelementptr inbounds i64, i64* %cloptr125359, i64 0               ; &cloptr125359[0]
  %f125362 = load i64, i64* %i0ptr125360, align 8                                    ; load; *i0ptr125360
  %fptr125361 = inttoptr i64 %f125362 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125361(i64 %_951, i64 %rva123383)                   ; tail call
  ret void
}


define void @lam123531(i64 %env123532, i64 %cont122458, i64 %ktz$_37foldl) {
  %envptr125363 = inttoptr i64 %env123532 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125364 = getelementptr inbounds i64, i64* %envptr125363, i64 3              ; &envptr125363[3]
  %t6M$_37foldr = load i64, i64* %envptr125364, align 8                              ; load; *envptr125364
  %envptr125365 = inttoptr i64 %env123532 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125366 = getelementptr inbounds i64, i64* %envptr125365, i64 2              ; &envptr125365[2]
  %FTQ$_37map1 = load i64, i64* %envptr125366, align 8                               ; load; *envptr125366
  %envptr125367 = inttoptr i64 %env123532 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125368 = getelementptr inbounds i64, i64* %envptr125367, i64 1              ; &envptr125367[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125368, align 8                             ; load; *envptr125368
  %arg123131 = add i64 0, 0                                                          ; quoted ()
  %cloptr125369 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125371 = getelementptr inbounds i64, i64* %cloptr125369, i64 1                ; &eptr125371[1]
  %eptr125372 = getelementptr inbounds i64, i64* %cloptr125369, i64 2                ; &eptr125372[2]
  %eptr125373 = getelementptr inbounds i64, i64* %cloptr125369, i64 3                ; &eptr125373[3]
  %eptr125374 = getelementptr inbounds i64, i64* %cloptr125369, i64 4                ; &eptr125374[4]
  store i64 %nDk$_37foldr1, i64* %eptr125371                                         ; *eptr125371 = %nDk$_37foldr1
  store i64 %FTQ$_37map1, i64* %eptr125372                                           ; *eptr125372 = %FTQ$_37map1
  store i64 %t6M$_37foldr, i64* %eptr125373                                          ; *eptr125373 = %t6M$_37foldr
  store i64 %ktz$_37foldl, i64* %eptr125374                                          ; *eptr125374 = %ktz$_37foldl
  %eptr125370 = getelementptr inbounds i64, i64* %cloptr125369, i64 0                ; &cloptr125369[0]
  %f125375 = ptrtoint void(i64,i64)* @lam123528 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f125375, i64* %eptr125370                                               ; store fptr
  %arg123130 = ptrtoint i64* %cloptr125369 to i64                                    ; closure cast; i64* -> i64
  %cloptr125376 = inttoptr i64 %cont122458 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125376)                                       ; assert function application
  %i0ptr125377 = getelementptr inbounds i64, i64* %cloptr125376, i64 0               ; &cloptr125376[0]
  %f125379 = load i64, i64* %i0ptr125377, align 8                                    ; load; *i0ptr125377
  %fptr125378 = inttoptr i64 %f125379 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125378(i64 %cont122458, i64 %arg123131, i64 %arg123130); tail call
  ret void
}


define void @lam123528(i64 %env123529, i64 %QyN$args122460) {
  %envptr125380 = inttoptr i64 %env123529 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125381 = getelementptr inbounds i64, i64* %envptr125380, i64 4              ; &envptr125380[4]
  %ktz$_37foldl = load i64, i64* %envptr125381, align 8                              ; load; *envptr125381
  %envptr125382 = inttoptr i64 %env123529 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125383 = getelementptr inbounds i64, i64* %envptr125382, i64 3              ; &envptr125382[3]
  %t6M$_37foldr = load i64, i64* %envptr125383, align 8                              ; load; *envptr125383
  %envptr125384 = inttoptr i64 %env123529 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125385 = getelementptr inbounds i64, i64* %envptr125384, i64 2              ; &envptr125384[2]
  %FTQ$_37map1 = load i64, i64* %envptr125385, align 8                               ; load; *envptr125385
  %envptr125386 = inttoptr i64 %env123529 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125387 = getelementptr inbounds i64, i64* %envptr125386, i64 1              ; &envptr125386[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125387, align 8                             ; load; *envptr125387
  %cont122459 = call i64 @prim_car(i64 %QyN$args122460)                              ; call prim_car
  %QyN$args = call i64 @prim_cdr(i64 %QyN$args122460)                                ; call prim_cdr
  %F3y$f = call i64 @prim_car(i64 %QyN$args)                                         ; call prim_car
  %a122259 = call i64 @prim_cdr(i64 %QyN$args)                                       ; call prim_cdr
  %retprim122479 = call i64 @prim_car(i64 %a122259)                                  ; call prim_car
  %cloptr125388 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr125390 = getelementptr inbounds i64, i64* %cloptr125388, i64 1                ; &eptr125390[1]
  %eptr125391 = getelementptr inbounds i64, i64* %cloptr125388, i64 2                ; &eptr125391[2]
  %eptr125392 = getelementptr inbounds i64, i64* %cloptr125388, i64 3                ; &eptr125392[3]
  %eptr125393 = getelementptr inbounds i64, i64* %cloptr125388, i64 4                ; &eptr125393[4]
  %eptr125394 = getelementptr inbounds i64, i64* %cloptr125388, i64 5                ; &eptr125394[5]
  %eptr125395 = getelementptr inbounds i64, i64* %cloptr125388, i64 6                ; &eptr125395[6]
  %eptr125396 = getelementptr inbounds i64, i64* %cloptr125388, i64 7                ; &eptr125396[7]
  store i64 %nDk$_37foldr1, i64* %eptr125390                                         ; *eptr125390 = %nDk$_37foldr1
  store i64 %FTQ$_37map1, i64* %eptr125391                                           ; *eptr125391 = %FTQ$_37map1
  store i64 %QyN$args, i64* %eptr125392                                              ; *eptr125392 = %QyN$args
  store i64 %t6M$_37foldr, i64* %eptr125393                                          ; *eptr125393 = %t6M$_37foldr
  store i64 %cont122459, i64* %eptr125394                                            ; *eptr125394 = %cont122459
  store i64 %ktz$_37foldl, i64* %eptr125395                                          ; *eptr125395 = %ktz$_37foldl
  store i64 %F3y$f, i64* %eptr125396                                                 ; *eptr125396 = %F3y$f
  %eptr125389 = getelementptr inbounds i64, i64* %cloptr125388, i64 0                ; &cloptr125388[0]
  %f125397 = ptrtoint void(i64,i64,i64)* @lam123526 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125397, i64* %eptr125389                                               ; store fptr
  %arg123140 = ptrtoint i64* %cloptr125388 to i64                                    ; closure cast; i64* -> i64
  %arg123139 = add i64 0, 0                                                          ; quoted ()
  %cloptr125398 = inttoptr i64 %arg123140 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125398)                                       ; assert function application
  %i0ptr125399 = getelementptr inbounds i64, i64* %cloptr125398, i64 0               ; &cloptr125398[0]
  %f125401 = load i64, i64* %i0ptr125399, align 8                                    ; load; *i0ptr125399
  %fptr125400 = inttoptr i64 %f125401 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125400(i64 %arg123140, i64 %arg123139, i64 %retprim122479); tail call
  ret void
}


define void @lam123526(i64 %env123527, i64 %_95122461, i64 %MN1$acc) {
  %envptr125402 = inttoptr i64 %env123527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125403 = getelementptr inbounds i64, i64* %envptr125402, i64 7              ; &envptr125402[7]
  %F3y$f = load i64, i64* %envptr125403, align 8                                     ; load; *envptr125403
  %envptr125404 = inttoptr i64 %env123527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125405 = getelementptr inbounds i64, i64* %envptr125404, i64 6              ; &envptr125404[6]
  %ktz$_37foldl = load i64, i64* %envptr125405, align 8                              ; load; *envptr125405
  %envptr125406 = inttoptr i64 %env123527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125407 = getelementptr inbounds i64, i64* %envptr125406, i64 5              ; &envptr125406[5]
  %cont122459 = load i64, i64* %envptr125407, align 8                                ; load; *envptr125407
  %envptr125408 = inttoptr i64 %env123527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125409 = getelementptr inbounds i64, i64* %envptr125408, i64 4              ; &envptr125408[4]
  %t6M$_37foldr = load i64, i64* %envptr125409, align 8                              ; load; *envptr125409
  %envptr125410 = inttoptr i64 %env123527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125411 = getelementptr inbounds i64, i64* %envptr125410, i64 3              ; &envptr125410[3]
  %QyN$args = load i64, i64* %envptr125411, align 8                                  ; load; *envptr125411
  %envptr125412 = inttoptr i64 %env123527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125413 = getelementptr inbounds i64, i64* %envptr125412, i64 2              ; &envptr125412[2]
  %FTQ$_37map1 = load i64, i64* %envptr125413, align 8                               ; load; *envptr125413
  %envptr125414 = inttoptr i64 %env123527 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125415 = getelementptr inbounds i64, i64* %envptr125414, i64 1              ; &envptr125414[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125415, align 8                             ; load; *envptr125415
  %a122260 = call i64 @prim_cdr(i64 %QyN$args)                                       ; call prim_cdr
  %retprim122478 = call i64 @prim_cdr(i64 %a122260)                                  ; call prim_cdr
  %cloptr125416 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr125418 = getelementptr inbounds i64, i64* %cloptr125416, i64 1                ; &eptr125418[1]
  %eptr125419 = getelementptr inbounds i64, i64* %cloptr125416, i64 2                ; &eptr125419[2]
  %eptr125420 = getelementptr inbounds i64, i64* %cloptr125416, i64 3                ; &eptr125420[3]
  %eptr125421 = getelementptr inbounds i64, i64* %cloptr125416, i64 4                ; &eptr125421[4]
  %eptr125422 = getelementptr inbounds i64, i64* %cloptr125416, i64 5                ; &eptr125422[5]
  %eptr125423 = getelementptr inbounds i64, i64* %cloptr125416, i64 6                ; &eptr125423[6]
  %eptr125424 = getelementptr inbounds i64, i64* %cloptr125416, i64 7                ; &eptr125424[7]
  store i64 %nDk$_37foldr1, i64* %eptr125418                                         ; *eptr125418 = %nDk$_37foldr1
  store i64 %FTQ$_37map1, i64* %eptr125419                                           ; *eptr125419 = %FTQ$_37map1
  store i64 %MN1$acc, i64* %eptr125420                                               ; *eptr125420 = %MN1$acc
  store i64 %t6M$_37foldr, i64* %eptr125421                                          ; *eptr125421 = %t6M$_37foldr
  store i64 %cont122459, i64* %eptr125422                                            ; *eptr125422 = %cont122459
  store i64 %ktz$_37foldl, i64* %eptr125423                                          ; *eptr125423 = %ktz$_37foldl
  store i64 %F3y$f, i64* %eptr125424                                                 ; *eptr125424 = %F3y$f
  %eptr125417 = getelementptr inbounds i64, i64* %cloptr125416, i64 0                ; &cloptr125416[0]
  %f125425 = ptrtoint void(i64,i64,i64)* @lam123524 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125425, i64* %eptr125417                                               ; store fptr
  %arg123145 = ptrtoint i64* %cloptr125416 to i64                                    ; closure cast; i64* -> i64
  %arg123144 = add i64 0, 0                                                          ; quoted ()
  %cloptr125426 = inttoptr i64 %arg123145 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125426)                                       ; assert function application
  %i0ptr125427 = getelementptr inbounds i64, i64* %cloptr125426, i64 0               ; &cloptr125426[0]
  %f125429 = load i64, i64* %i0ptr125427, align 8                                    ; load; *i0ptr125427
  %fptr125428 = inttoptr i64 %f125429 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125428(i64 %arg123145, i64 %arg123144, i64 %retprim122478); tail call
  ret void
}


define void @lam123524(i64 %env123525, i64 %_95122462, i64 %fQX$lsts) {
  %envptr125430 = inttoptr i64 %env123525 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125431 = getelementptr inbounds i64, i64* %envptr125430, i64 7              ; &envptr125430[7]
  %F3y$f = load i64, i64* %envptr125431, align 8                                     ; load; *envptr125431
  %envptr125432 = inttoptr i64 %env123525 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125433 = getelementptr inbounds i64, i64* %envptr125432, i64 6              ; &envptr125432[6]
  %ktz$_37foldl = load i64, i64* %envptr125433, align 8                              ; load; *envptr125433
  %envptr125434 = inttoptr i64 %env123525 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125435 = getelementptr inbounds i64, i64* %envptr125434, i64 5              ; &envptr125434[5]
  %cont122459 = load i64, i64* %envptr125435, align 8                                ; load; *envptr125435
  %envptr125436 = inttoptr i64 %env123525 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125437 = getelementptr inbounds i64, i64* %envptr125436, i64 4              ; &envptr125436[4]
  %t6M$_37foldr = load i64, i64* %envptr125437, align 8                              ; load; *envptr125437
  %envptr125438 = inttoptr i64 %env123525 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125439 = getelementptr inbounds i64, i64* %envptr125438, i64 3              ; &envptr125438[3]
  %MN1$acc = load i64, i64* %envptr125439, align 8                                   ; load; *envptr125439
  %envptr125440 = inttoptr i64 %env123525 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125441 = getelementptr inbounds i64, i64* %envptr125440, i64 2              ; &envptr125440[2]
  %FTQ$_37map1 = load i64, i64* %envptr125441, align 8                               ; load; *envptr125441
  %envptr125442 = inttoptr i64 %env123525 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125443 = getelementptr inbounds i64, i64* %envptr125442, i64 1              ; &envptr125442[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125443, align 8                             ; load; *envptr125443
  %cloptr125444 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr125446 = getelementptr inbounds i64, i64* %cloptr125444, i64 1                ; &eptr125446[1]
  %eptr125447 = getelementptr inbounds i64, i64* %cloptr125444, i64 2                ; &eptr125447[2]
  %eptr125448 = getelementptr inbounds i64, i64* %cloptr125444, i64 3                ; &eptr125448[3]
  %eptr125449 = getelementptr inbounds i64, i64* %cloptr125444, i64 4                ; &eptr125449[4]
  %eptr125450 = getelementptr inbounds i64, i64* %cloptr125444, i64 5                ; &eptr125450[5]
  %eptr125451 = getelementptr inbounds i64, i64* %cloptr125444, i64 6                ; &eptr125451[6]
  %eptr125452 = getelementptr inbounds i64, i64* %cloptr125444, i64 7                ; &eptr125452[7]
  store i64 %fQX$lsts, i64* %eptr125446                                              ; *eptr125446 = %fQX$lsts
  store i64 %FTQ$_37map1, i64* %eptr125447                                           ; *eptr125447 = %FTQ$_37map1
  store i64 %MN1$acc, i64* %eptr125448                                               ; *eptr125448 = %MN1$acc
  store i64 %t6M$_37foldr, i64* %eptr125449                                          ; *eptr125449 = %t6M$_37foldr
  store i64 %cont122459, i64* %eptr125450                                            ; *eptr125450 = %cont122459
  store i64 %ktz$_37foldl, i64* %eptr125451                                          ; *eptr125451 = %ktz$_37foldl
  store i64 %F3y$f, i64* %eptr125452                                                 ; *eptr125452 = %F3y$f
  %eptr125445 = getelementptr inbounds i64, i64* %cloptr125444, i64 0                ; &cloptr125444[0]
  %f125453 = ptrtoint void(i64,i64,i64)* @lam123522 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125453, i64* %eptr125445                                               ; store fptr
  %arg123149 = ptrtoint i64* %cloptr125444 to i64                                    ; closure cast; i64* -> i64
  %cloptr125454 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125455 = getelementptr inbounds i64, i64* %cloptr125454, i64 0                ; &cloptr125454[0]
  %f125456 = ptrtoint void(i64,i64,i64,i64)* @lam123501 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f125456, i64* %eptr125455                                               ; store fptr
  %arg123148 = ptrtoint i64* %cloptr125454 to i64                                    ; closure cast; i64* -> i64
  %arg123147 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr125457 = inttoptr i64 %nDk$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125457)                                       ; assert function application
  %i0ptr125458 = getelementptr inbounds i64, i64* %cloptr125457, i64 0               ; &cloptr125457[0]
  %f125460 = load i64, i64* %i0ptr125458, align 8                                    ; load; *i0ptr125458
  %fptr125459 = inttoptr i64 %f125460 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125459(i64 %nDk$_37foldr1, i64 %arg123149, i64 %arg123148, i64 %arg123147, i64 %fQX$lsts); tail call
  ret void
}


define void @lam123522(i64 %env123523, i64 %_95122463, i64 %a122261) {
  %envptr125461 = inttoptr i64 %env123523 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125462 = getelementptr inbounds i64, i64* %envptr125461, i64 7              ; &envptr125461[7]
  %F3y$f = load i64, i64* %envptr125462, align 8                                     ; load; *envptr125462
  %envptr125463 = inttoptr i64 %env123523 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125464 = getelementptr inbounds i64, i64* %envptr125463, i64 6              ; &envptr125463[6]
  %ktz$_37foldl = load i64, i64* %envptr125464, align 8                              ; load; *envptr125464
  %envptr125465 = inttoptr i64 %env123523 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125466 = getelementptr inbounds i64, i64* %envptr125465, i64 5              ; &envptr125465[5]
  %cont122459 = load i64, i64* %envptr125466, align 8                                ; load; *envptr125466
  %envptr125467 = inttoptr i64 %env123523 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125468 = getelementptr inbounds i64, i64* %envptr125467, i64 4              ; &envptr125467[4]
  %t6M$_37foldr = load i64, i64* %envptr125468, align 8                              ; load; *envptr125468
  %envptr125469 = inttoptr i64 %env123523 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125470 = getelementptr inbounds i64, i64* %envptr125469, i64 3              ; &envptr125469[3]
  %MN1$acc = load i64, i64* %envptr125470, align 8                                   ; load; *envptr125470
  %envptr125471 = inttoptr i64 %env123523 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125472 = getelementptr inbounds i64, i64* %envptr125471, i64 2              ; &envptr125471[2]
  %FTQ$_37map1 = load i64, i64* %envptr125472, align 8                               ; load; *envptr125472
  %envptr125473 = inttoptr i64 %env123523 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125474 = getelementptr inbounds i64, i64* %envptr125473, i64 1              ; &envptr125473[1]
  %fQX$lsts = load i64, i64* %envptr125474, align 8                                  ; load; *envptr125474
  %cmp125475 = icmp eq i64 %a122261, 15                                              ; false?
  br i1 %cmp125475, label %else125477, label %then125476                             ; if

then125476:
  %arg123152 = add i64 0, 0                                                          ; quoted ()
  %cloptr125478 = inttoptr i64 %cont122459 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125478)                                       ; assert function application
  %i0ptr125479 = getelementptr inbounds i64, i64* %cloptr125478, i64 0               ; &cloptr125478[0]
  %f125481 = load i64, i64* %i0ptr125479, align 8                                    ; load; *i0ptr125479
  %fptr125480 = inttoptr i64 %f125481 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125480(i64 %cont122459, i64 %arg123152, i64 %MN1$acc); tail call
  ret void

else125477:
  %cloptr125482 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr125484 = getelementptr inbounds i64, i64* %cloptr125482, i64 1                ; &eptr125484[1]
  %eptr125485 = getelementptr inbounds i64, i64* %cloptr125482, i64 2                ; &eptr125485[2]
  %eptr125486 = getelementptr inbounds i64, i64* %cloptr125482, i64 3                ; &eptr125486[3]
  %eptr125487 = getelementptr inbounds i64, i64* %cloptr125482, i64 4                ; &eptr125487[4]
  %eptr125488 = getelementptr inbounds i64, i64* %cloptr125482, i64 5                ; &eptr125488[5]
  %eptr125489 = getelementptr inbounds i64, i64* %cloptr125482, i64 6                ; &eptr125489[6]
  %eptr125490 = getelementptr inbounds i64, i64* %cloptr125482, i64 7                ; &eptr125490[7]
  store i64 %fQX$lsts, i64* %eptr125484                                              ; *eptr125484 = %fQX$lsts
  store i64 %FTQ$_37map1, i64* %eptr125485                                           ; *eptr125485 = %FTQ$_37map1
  store i64 %MN1$acc, i64* %eptr125486                                               ; *eptr125486 = %MN1$acc
  store i64 %t6M$_37foldr, i64* %eptr125487                                          ; *eptr125487 = %t6M$_37foldr
  store i64 %cont122459, i64* %eptr125488                                            ; *eptr125488 = %cont122459
  store i64 %ktz$_37foldl, i64* %eptr125489                                          ; *eptr125489 = %ktz$_37foldl
  store i64 %F3y$f, i64* %eptr125490                                                 ; *eptr125490 = %F3y$f
  %eptr125483 = getelementptr inbounds i64, i64* %cloptr125482, i64 0                ; &cloptr125482[0]
  %f125491 = ptrtoint void(i64,i64,i64)* @lam123520 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125491, i64* %eptr125483                                               ; store fptr
  %arg123156 = ptrtoint i64* %cloptr125482 to i64                                    ; closure cast; i64* -> i64
  %cloptr125492 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125493 = getelementptr inbounds i64, i64* %cloptr125492, i64 0                ; &cloptr125492[0]
  %f125494 = ptrtoint void(i64,i64,i64)* @lam123505 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125494, i64* %eptr125493                                               ; store fptr
  %arg123155 = ptrtoint i64* %cloptr125492 to i64                                    ; closure cast; i64* -> i64
  %cloptr125495 = inttoptr i64 %FTQ$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125495)                                       ; assert function application
  %i0ptr125496 = getelementptr inbounds i64, i64* %cloptr125495, i64 0               ; &cloptr125495[0]
  %f125498 = load i64, i64* %i0ptr125496, align 8                                    ; load; *i0ptr125496
  %fptr125497 = inttoptr i64 %f125498 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125497(i64 %FTQ$_37map1, i64 %arg123156, i64 %arg123155, i64 %fQX$lsts); tail call
  ret void
}


define void @lam123520(i64 %env123521, i64 %_95122464, i64 %jUx$lsts_43) {
  %envptr125499 = inttoptr i64 %env123521 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125500 = getelementptr inbounds i64, i64* %envptr125499, i64 7              ; &envptr125499[7]
  %F3y$f = load i64, i64* %envptr125500, align 8                                     ; load; *envptr125500
  %envptr125501 = inttoptr i64 %env123521 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125502 = getelementptr inbounds i64, i64* %envptr125501, i64 6              ; &envptr125501[6]
  %ktz$_37foldl = load i64, i64* %envptr125502, align 8                              ; load; *envptr125502
  %envptr125503 = inttoptr i64 %env123521 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125504 = getelementptr inbounds i64, i64* %envptr125503, i64 5              ; &envptr125503[5]
  %cont122459 = load i64, i64* %envptr125504, align 8                                ; load; *envptr125504
  %envptr125505 = inttoptr i64 %env123521 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125506 = getelementptr inbounds i64, i64* %envptr125505, i64 4              ; &envptr125505[4]
  %t6M$_37foldr = load i64, i64* %envptr125506, align 8                              ; load; *envptr125506
  %envptr125507 = inttoptr i64 %env123521 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125508 = getelementptr inbounds i64, i64* %envptr125507, i64 3              ; &envptr125507[3]
  %MN1$acc = load i64, i64* %envptr125508, align 8                                   ; load; *envptr125508
  %envptr125509 = inttoptr i64 %env123521 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125510 = getelementptr inbounds i64, i64* %envptr125509, i64 2              ; &envptr125509[2]
  %FTQ$_37map1 = load i64, i64* %envptr125510, align 8                               ; load; *envptr125510
  %envptr125511 = inttoptr i64 %env123521 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125512 = getelementptr inbounds i64, i64* %envptr125511, i64 1              ; &envptr125511[1]
  %fQX$lsts = load i64, i64* %envptr125512, align 8                                  ; load; *envptr125512
  %cloptr125513 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr125515 = getelementptr inbounds i64, i64* %cloptr125513, i64 1                ; &eptr125515[1]
  %eptr125516 = getelementptr inbounds i64, i64* %cloptr125513, i64 2                ; &eptr125516[2]
  %eptr125517 = getelementptr inbounds i64, i64* %cloptr125513, i64 3                ; &eptr125517[3]
  %eptr125518 = getelementptr inbounds i64, i64* %cloptr125513, i64 4                ; &eptr125518[4]
  %eptr125519 = getelementptr inbounds i64, i64* %cloptr125513, i64 5                ; &eptr125519[5]
  %eptr125520 = getelementptr inbounds i64, i64* %cloptr125513, i64 6                ; &eptr125520[6]
  store i64 %MN1$acc, i64* %eptr125515                                               ; *eptr125515 = %MN1$acc
  store i64 %t6M$_37foldr, i64* %eptr125516                                          ; *eptr125516 = %t6M$_37foldr
  store i64 %cont122459, i64* %eptr125517                                            ; *eptr125517 = %cont122459
  store i64 %ktz$_37foldl, i64* %eptr125518                                          ; *eptr125518 = %ktz$_37foldl
  store i64 %jUx$lsts_43, i64* %eptr125519                                           ; *eptr125519 = %jUx$lsts_43
  store i64 %F3y$f, i64* %eptr125520                                                 ; *eptr125520 = %F3y$f
  %eptr125514 = getelementptr inbounds i64, i64* %cloptr125513, i64 0                ; &cloptr125513[0]
  %f125521 = ptrtoint void(i64,i64,i64)* @lam123518 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125521, i64* %eptr125514                                               ; store fptr
  %arg123160 = ptrtoint i64* %cloptr125513 to i64                                    ; closure cast; i64* -> i64
  %cloptr125522 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125523 = getelementptr inbounds i64, i64* %cloptr125522, i64 0                ; &cloptr125522[0]
  %f125524 = ptrtoint void(i64,i64,i64)* @lam123508 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125524, i64* %eptr125523                                               ; store fptr
  %arg123159 = ptrtoint i64* %cloptr125522 to i64                                    ; closure cast; i64* -> i64
  %cloptr125525 = inttoptr i64 %FTQ$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125525)                                       ; assert function application
  %i0ptr125526 = getelementptr inbounds i64, i64* %cloptr125525, i64 0               ; &cloptr125525[0]
  %f125528 = load i64, i64* %i0ptr125526, align 8                                    ; load; *i0ptr125526
  %fptr125527 = inttoptr i64 %f125528 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125527(i64 %FTQ$_37map1, i64 %arg123160, i64 %arg123159, i64 %fQX$lsts); tail call
  ret void
}


define void @lam123518(i64 %env123519, i64 %_95122465, i64 %eFn$vs) {
  %envptr125529 = inttoptr i64 %env123519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125530 = getelementptr inbounds i64, i64* %envptr125529, i64 6              ; &envptr125529[6]
  %F3y$f = load i64, i64* %envptr125530, align 8                                     ; load; *envptr125530
  %envptr125531 = inttoptr i64 %env123519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125532 = getelementptr inbounds i64, i64* %envptr125531, i64 5              ; &envptr125531[5]
  %jUx$lsts_43 = load i64, i64* %envptr125532, align 8                               ; load; *envptr125532
  %envptr125533 = inttoptr i64 %env123519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125534 = getelementptr inbounds i64, i64* %envptr125533, i64 4              ; &envptr125533[4]
  %ktz$_37foldl = load i64, i64* %envptr125534, align 8                              ; load; *envptr125534
  %envptr125535 = inttoptr i64 %env123519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125536 = getelementptr inbounds i64, i64* %envptr125535, i64 3              ; &envptr125535[3]
  %cont122459 = load i64, i64* %envptr125536, align 8                                ; load; *envptr125536
  %envptr125537 = inttoptr i64 %env123519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125538 = getelementptr inbounds i64, i64* %envptr125537, i64 2              ; &envptr125537[2]
  %t6M$_37foldr = load i64, i64* %envptr125538, align 8                              ; load; *envptr125538
  %envptr125539 = inttoptr i64 %env123519 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125540 = getelementptr inbounds i64, i64* %envptr125539, i64 1              ; &envptr125539[1]
  %MN1$acc = load i64, i64* %envptr125540, align 8                                   ; load; *envptr125540
  %arg123162 = add i64 0, 0                                                          ; quoted ()
  %a122262 = call i64 @prim_cons(i64 %MN1$acc, i64 %arg123162)                       ; call prim_cons
  %cloptr125541 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125543 = getelementptr inbounds i64, i64* %cloptr125541, i64 1                ; &eptr125543[1]
  %eptr125544 = getelementptr inbounds i64, i64* %cloptr125541, i64 2                ; &eptr125544[2]
  %eptr125545 = getelementptr inbounds i64, i64* %cloptr125541, i64 3                ; &eptr125545[3]
  %eptr125546 = getelementptr inbounds i64, i64* %cloptr125541, i64 4                ; &eptr125546[4]
  store i64 %cont122459, i64* %eptr125543                                            ; *eptr125543 = %cont122459
  store i64 %ktz$_37foldl, i64* %eptr125544                                          ; *eptr125544 = %ktz$_37foldl
  store i64 %jUx$lsts_43, i64* %eptr125545                                           ; *eptr125545 = %jUx$lsts_43
  store i64 %F3y$f, i64* %eptr125546                                                 ; *eptr125546 = %F3y$f
  %eptr125542 = getelementptr inbounds i64, i64* %cloptr125541, i64 0                ; &cloptr125541[0]
  %f125547 = ptrtoint void(i64,i64,i64)* @lam123515 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125547, i64* %eptr125542                                               ; store fptr
  %arg123167 = ptrtoint i64* %cloptr125541 to i64                                    ; closure cast; i64* -> i64
  %cloptr125548 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125549 = getelementptr inbounds i64, i64* %cloptr125548, i64 0                ; &cloptr125548[0]
  %f125550 = ptrtoint void(i64,i64,i64,i64)* @lam123511 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f125550, i64* %eptr125549                                               ; store fptr
  %arg123166 = ptrtoint i64* %cloptr125548 to i64                                    ; closure cast; i64* -> i64
  %cloptr125551 = inttoptr i64 %t6M$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125551)                                       ; assert function application
  %i0ptr125552 = getelementptr inbounds i64, i64* %cloptr125551, i64 0               ; &cloptr125551[0]
  %f125554 = load i64, i64* %i0ptr125552, align 8                                    ; load; *i0ptr125552
  %fptr125553 = inttoptr i64 %f125554 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125553(i64 %t6M$_37foldr, i64 %arg123167, i64 %arg123166, i64 %a122262, i64 %eFn$vs); tail call
  ret void
}


define void @lam123515(i64 %env123516, i64 %_95122468, i64 %a122263) {
  %envptr125555 = inttoptr i64 %env123516 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125556 = getelementptr inbounds i64, i64* %envptr125555, i64 4              ; &envptr125555[4]
  %F3y$f = load i64, i64* %envptr125556, align 8                                     ; load; *envptr125556
  %envptr125557 = inttoptr i64 %env123516 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125558 = getelementptr inbounds i64, i64* %envptr125557, i64 3              ; &envptr125557[3]
  %jUx$lsts_43 = load i64, i64* %envptr125558, align 8                               ; load; *envptr125558
  %envptr125559 = inttoptr i64 %env123516 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125560 = getelementptr inbounds i64, i64* %envptr125559, i64 2              ; &envptr125559[2]
  %ktz$_37foldl = load i64, i64* %envptr125560, align 8                              ; load; *envptr125560
  %envptr125561 = inttoptr i64 %env123516 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125562 = getelementptr inbounds i64, i64* %envptr125561, i64 1              ; &envptr125561[1]
  %cont122459 = load i64, i64* %envptr125562, align 8                                ; load; *envptr125562
  %cloptr125563 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125565 = getelementptr inbounds i64, i64* %cloptr125563, i64 1                ; &eptr125565[1]
  %eptr125566 = getelementptr inbounds i64, i64* %cloptr125563, i64 2                ; &eptr125566[2]
  %eptr125567 = getelementptr inbounds i64, i64* %cloptr125563, i64 3                ; &eptr125567[3]
  %eptr125568 = getelementptr inbounds i64, i64* %cloptr125563, i64 4                ; &eptr125568[4]
  store i64 %cont122459, i64* %eptr125565                                            ; *eptr125565 = %cont122459
  store i64 %ktz$_37foldl, i64* %eptr125566                                          ; *eptr125566 = %ktz$_37foldl
  store i64 %jUx$lsts_43, i64* %eptr125567                                           ; *eptr125567 = %jUx$lsts_43
  store i64 %F3y$f, i64* %eptr125568                                                 ; *eptr125568 = %F3y$f
  %eptr125564 = getelementptr inbounds i64, i64* %cloptr125563, i64 0                ; &cloptr125563[0]
  %f125569 = ptrtoint void(i64,i64,i64)* @lam123513 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125569, i64* %eptr125564                                               ; store fptr
  %arg123170 = ptrtoint i64* %cloptr125563 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst122469 = call i64 @prim_cons(i64 %arg123170, i64 %a122263)               ; call prim_cons
  %cloptr125570 = inttoptr i64 %F3y$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125570)                                       ; assert function application
  %i0ptr125571 = getelementptr inbounds i64, i64* %cloptr125570, i64 0               ; &cloptr125570[0]
  %f125573 = load i64, i64* %i0ptr125571, align 8                                    ; load; *i0ptr125571
  %fptr125572 = inttoptr i64 %f125573 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125572(i64 %F3y$f, i64 %cps_45lst122469)            ; tail call
  ret void
}


define void @lam123513(i64 %env123514, i64 %_95122466, i64 %AmH$acc_43) {
  %envptr125574 = inttoptr i64 %env123514 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125575 = getelementptr inbounds i64, i64* %envptr125574, i64 4              ; &envptr125574[4]
  %F3y$f = load i64, i64* %envptr125575, align 8                                     ; load; *envptr125575
  %envptr125576 = inttoptr i64 %env123514 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125577 = getelementptr inbounds i64, i64* %envptr125576, i64 3              ; &envptr125576[3]
  %jUx$lsts_43 = load i64, i64* %envptr125577, align 8                               ; load; *envptr125577
  %envptr125578 = inttoptr i64 %env123514 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125579 = getelementptr inbounds i64, i64* %envptr125578, i64 2              ; &envptr125578[2]
  %ktz$_37foldl = load i64, i64* %envptr125579, align 8                              ; load; *envptr125579
  %envptr125580 = inttoptr i64 %env123514 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125581 = getelementptr inbounds i64, i64* %envptr125580, i64 1              ; &envptr125580[1]
  %cont122459 = load i64, i64* %envptr125581, align 8                                ; load; *envptr125581
  %a122264 = call i64 @prim_cons(i64 %AmH$acc_43, i64 %jUx$lsts_43)                  ; call prim_cons
  %a122265 = call i64 @prim_cons(i64 %F3y$f, i64 %a122264)                           ; call prim_cons
  %cps_45lst122467 = call i64 @prim_cons(i64 %cont122459, i64 %a122265)              ; call prim_cons
  %cloptr125582 = inttoptr i64 %ktz$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125582)                                       ; assert function application
  %i0ptr125583 = getelementptr inbounds i64, i64* %cloptr125582, i64 0               ; &cloptr125582[0]
  %f125585 = load i64, i64* %i0ptr125583, align 8                                    ; load; *i0ptr125583
  %fptr125584 = inttoptr i64 %f125585 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125584(i64 %ktz$_37foldl, i64 %cps_45lst122467)     ; tail call
  ret void
}


define void @lam123511(i64 %env123512, i64 %cont122470, i64 %zxQ$a, i64 %HJu$b) {
  %retprim122471 = call i64 @prim_cons(i64 %zxQ$a, i64 %HJu$b)                       ; call prim_cons
  %arg123180 = add i64 0, 0                                                          ; quoted ()
  %cloptr125586 = inttoptr i64 %cont122470 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125586)                                       ; assert function application
  %i0ptr125587 = getelementptr inbounds i64, i64* %cloptr125586, i64 0               ; &cloptr125586[0]
  %f125589 = load i64, i64* %i0ptr125587, align 8                                    ; load; *i0ptr125587
  %fptr125588 = inttoptr i64 %f125589 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125588(i64 %cont122470, i64 %arg123180, i64 %retprim122471); tail call
  ret void
}


define void @lam123508(i64 %env123509, i64 %cont122472, i64 %qRR$x) {
  %retprim122473 = call i64 @prim_car(i64 %qRR$x)                                    ; call prim_car
  %arg123184 = add i64 0, 0                                                          ; quoted ()
  %cloptr125590 = inttoptr i64 %cont122472 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125590)                                       ; assert function application
  %i0ptr125591 = getelementptr inbounds i64, i64* %cloptr125590, i64 0               ; &cloptr125590[0]
  %f125593 = load i64, i64* %i0ptr125591, align 8                                    ; load; *i0ptr125591
  %fptr125592 = inttoptr i64 %f125593 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125592(i64 %cont122472, i64 %arg123184, i64 %retprim122473); tail call
  ret void
}


define void @lam123505(i64 %env123506, i64 %cont122474, i64 %eQy$x) {
  %retprim122475 = call i64 @prim_cdr(i64 %eQy$x)                                    ; call prim_cdr
  %arg123188 = add i64 0, 0                                                          ; quoted ()
  %cloptr125594 = inttoptr i64 %cont122474 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125594)                                       ; assert function application
  %i0ptr125595 = getelementptr inbounds i64, i64* %cloptr125594, i64 0               ; &cloptr125594[0]
  %f125597 = load i64, i64* %i0ptr125595, align 8                                    ; load; *i0ptr125595
  %fptr125596 = inttoptr i64 %f125597 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125596(i64 %cont122474, i64 %arg123188, i64 %retprim122475); tail call
  ret void
}


define void @lam123501(i64 %env123502, i64 %cont122476, i64 %yPS$lst, i64 %rCO$b) {
  %cmp125598 = icmp eq i64 %rCO$b, 15                                                ; false?
  br i1 %cmp125598, label %else125600, label %then125599                             ; if

then125599:
  %arg123191 = add i64 0, 0                                                          ; quoted ()
  %cloptr125601 = inttoptr i64 %cont122476 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125601)                                       ; assert function application
  %i0ptr125602 = getelementptr inbounds i64, i64* %cloptr125601, i64 0               ; &cloptr125601[0]
  %f125604 = load i64, i64* %i0ptr125602, align 8                                    ; load; *i0ptr125602
  %fptr125603 = inttoptr i64 %f125604 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125603(i64 %cont122476, i64 %arg123191, i64 %rCO$b) ; tail call
  ret void

else125600:
  %retprim122477 = call i64 @prim_null_63(i64 %yPS$lst)                              ; call prim_null_63
  %arg123195 = add i64 0, 0                                                          ; quoted ()
  %cloptr125605 = inttoptr i64 %cont122476 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125605)                                       ; assert function application
  %i0ptr125606 = getelementptr inbounds i64, i64* %cloptr125605, i64 0               ; &cloptr125605[0]
  %f125608 = load i64, i64* %i0ptr125606, align 8                                    ; load; *i0ptr125606
  %fptr125607 = inttoptr i64 %f125608 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125607(i64 %cont122476, i64 %arg123195, i64 %retprim122477); tail call
  ret void
}


define void @lam123494(i64 %env123495, i64 %cont122480, i64 %PGm$_37foldr) {
  %envptr125609 = inttoptr i64 %env123495 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125610 = getelementptr inbounds i64, i64* %envptr125609, i64 2              ; &envptr125609[2]
  %i9N$_37map1 = load i64, i64* %envptr125610, align 8                               ; load; *envptr125610
  %envptr125611 = inttoptr i64 %env123495 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125612 = getelementptr inbounds i64, i64* %envptr125611, i64 1              ; &envptr125611[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125612, align 8                             ; load; *envptr125612
  %arg123198 = add i64 0, 0                                                          ; quoted ()
  %cloptr125613 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr125615 = getelementptr inbounds i64, i64* %cloptr125613, i64 1                ; &eptr125615[1]
  %eptr125616 = getelementptr inbounds i64, i64* %cloptr125613, i64 2                ; &eptr125616[2]
  %eptr125617 = getelementptr inbounds i64, i64* %cloptr125613, i64 3                ; &eptr125617[3]
  store i64 %nDk$_37foldr1, i64* %eptr125615                                         ; *eptr125615 = %nDk$_37foldr1
  store i64 %PGm$_37foldr, i64* %eptr125616                                          ; *eptr125616 = %PGm$_37foldr
  store i64 %i9N$_37map1, i64* %eptr125617                                           ; *eptr125617 = %i9N$_37map1
  %eptr125614 = getelementptr inbounds i64, i64* %cloptr125613, i64 0                ; &cloptr125613[0]
  %f125618 = ptrtoint void(i64,i64)* @lam123491 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f125618, i64* %eptr125614                                               ; store fptr
  %arg123197 = ptrtoint i64* %cloptr125613 to i64                                    ; closure cast; i64* -> i64
  %cloptr125619 = inttoptr i64 %cont122480 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125619)                                       ; assert function application
  %i0ptr125620 = getelementptr inbounds i64, i64* %cloptr125619, i64 0               ; &cloptr125619[0]
  %f125622 = load i64, i64* %i0ptr125620, align 8                                    ; load; *i0ptr125620
  %fptr125621 = inttoptr i64 %f125622 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125621(i64 %cont122480, i64 %arg123198, i64 %arg123197); tail call
  ret void
}


define void @lam123491(i64 %env123492, i64 %dzN$args122482) {
  %envptr125623 = inttoptr i64 %env123492 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125624 = getelementptr inbounds i64, i64* %envptr125623, i64 3              ; &envptr125623[3]
  %i9N$_37map1 = load i64, i64* %envptr125624, align 8                               ; load; *envptr125624
  %envptr125625 = inttoptr i64 %env123492 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125626 = getelementptr inbounds i64, i64* %envptr125625, i64 2              ; &envptr125625[2]
  %PGm$_37foldr = load i64, i64* %envptr125626, align 8                              ; load; *envptr125626
  %envptr125627 = inttoptr i64 %env123492 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125628 = getelementptr inbounds i64, i64* %envptr125627, i64 1              ; &envptr125627[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125628, align 8                             ; load; *envptr125628
  %cont122481 = call i64 @prim_car(i64 %dzN$args122482)                              ; call prim_car
  %dzN$args = call i64 @prim_cdr(i64 %dzN$args122482)                                ; call prim_cdr
  %peo$f = call i64 @prim_car(i64 %dzN$args)                                         ; call prim_car
  %a122245 = call i64 @prim_cdr(i64 %dzN$args)                                       ; call prim_cdr
  %retprim122501 = call i64 @prim_car(i64 %a122245)                                  ; call prim_car
  %cloptr125629 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr125631 = getelementptr inbounds i64, i64* %cloptr125629, i64 1                ; &eptr125631[1]
  %eptr125632 = getelementptr inbounds i64, i64* %cloptr125629, i64 2                ; &eptr125632[2]
  %eptr125633 = getelementptr inbounds i64, i64* %cloptr125629, i64 3                ; &eptr125633[3]
  %eptr125634 = getelementptr inbounds i64, i64* %cloptr125629, i64 4                ; &eptr125634[4]
  %eptr125635 = getelementptr inbounds i64, i64* %cloptr125629, i64 5                ; &eptr125635[5]
  %eptr125636 = getelementptr inbounds i64, i64* %cloptr125629, i64 6                ; &eptr125636[6]
  store i64 %nDk$_37foldr1, i64* %eptr125631                                         ; *eptr125631 = %nDk$_37foldr1
  store i64 %PGm$_37foldr, i64* %eptr125632                                          ; *eptr125632 = %PGm$_37foldr
  store i64 %peo$f, i64* %eptr125633                                                 ; *eptr125633 = %peo$f
  store i64 %cont122481, i64* %eptr125634                                            ; *eptr125634 = %cont122481
  store i64 %i9N$_37map1, i64* %eptr125635                                           ; *eptr125635 = %i9N$_37map1
  store i64 %dzN$args, i64* %eptr125636                                              ; *eptr125636 = %dzN$args
  %eptr125630 = getelementptr inbounds i64, i64* %cloptr125629, i64 0                ; &cloptr125629[0]
  %f125637 = ptrtoint void(i64,i64,i64)* @lam123489 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125637, i64* %eptr125630                                               ; store fptr
  %arg123207 = ptrtoint i64* %cloptr125629 to i64                                    ; closure cast; i64* -> i64
  %arg123206 = add i64 0, 0                                                          ; quoted ()
  %cloptr125638 = inttoptr i64 %arg123207 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125638)                                       ; assert function application
  %i0ptr125639 = getelementptr inbounds i64, i64* %cloptr125638, i64 0               ; &cloptr125638[0]
  %f125641 = load i64, i64* %i0ptr125639, align 8                                    ; load; *i0ptr125639
  %fptr125640 = inttoptr i64 %f125641 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125640(i64 %arg123207, i64 %arg123206, i64 %retprim122501); tail call
  ret void
}


define void @lam123489(i64 %env123490, i64 %_95122483, i64 %kTO$acc) {
  %envptr125642 = inttoptr i64 %env123490 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125643 = getelementptr inbounds i64, i64* %envptr125642, i64 6              ; &envptr125642[6]
  %dzN$args = load i64, i64* %envptr125643, align 8                                  ; load; *envptr125643
  %envptr125644 = inttoptr i64 %env123490 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125645 = getelementptr inbounds i64, i64* %envptr125644, i64 5              ; &envptr125644[5]
  %i9N$_37map1 = load i64, i64* %envptr125645, align 8                               ; load; *envptr125645
  %envptr125646 = inttoptr i64 %env123490 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125647 = getelementptr inbounds i64, i64* %envptr125646, i64 4              ; &envptr125646[4]
  %cont122481 = load i64, i64* %envptr125647, align 8                                ; load; *envptr125647
  %envptr125648 = inttoptr i64 %env123490 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125649 = getelementptr inbounds i64, i64* %envptr125648, i64 3              ; &envptr125648[3]
  %peo$f = load i64, i64* %envptr125649, align 8                                     ; load; *envptr125649
  %envptr125650 = inttoptr i64 %env123490 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125651 = getelementptr inbounds i64, i64* %envptr125650, i64 2              ; &envptr125650[2]
  %PGm$_37foldr = load i64, i64* %envptr125651, align 8                              ; load; *envptr125651
  %envptr125652 = inttoptr i64 %env123490 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125653 = getelementptr inbounds i64, i64* %envptr125652, i64 1              ; &envptr125652[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125653, align 8                             ; load; *envptr125653
  %a122246 = call i64 @prim_cdr(i64 %dzN$args)                                       ; call prim_cdr
  %retprim122500 = call i64 @prim_cdr(i64 %a122246)                                  ; call prim_cdr
  %cloptr125654 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr125656 = getelementptr inbounds i64, i64* %cloptr125654, i64 1                ; &eptr125656[1]
  %eptr125657 = getelementptr inbounds i64, i64* %cloptr125654, i64 2                ; &eptr125657[2]
  %eptr125658 = getelementptr inbounds i64, i64* %cloptr125654, i64 3                ; &eptr125658[3]
  %eptr125659 = getelementptr inbounds i64, i64* %cloptr125654, i64 4                ; &eptr125659[4]
  %eptr125660 = getelementptr inbounds i64, i64* %cloptr125654, i64 5                ; &eptr125660[5]
  %eptr125661 = getelementptr inbounds i64, i64* %cloptr125654, i64 6                ; &eptr125661[6]
  store i64 %nDk$_37foldr1, i64* %eptr125656                                         ; *eptr125656 = %nDk$_37foldr1
  store i64 %PGm$_37foldr, i64* %eptr125657                                          ; *eptr125657 = %PGm$_37foldr
  store i64 %peo$f, i64* %eptr125658                                                 ; *eptr125658 = %peo$f
  store i64 %cont122481, i64* %eptr125659                                            ; *eptr125659 = %cont122481
  store i64 %i9N$_37map1, i64* %eptr125660                                           ; *eptr125660 = %i9N$_37map1
  store i64 %kTO$acc, i64* %eptr125661                                               ; *eptr125661 = %kTO$acc
  %eptr125655 = getelementptr inbounds i64, i64* %cloptr125654, i64 0                ; &cloptr125654[0]
  %f125662 = ptrtoint void(i64,i64,i64)* @lam123487 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125662, i64* %eptr125655                                               ; store fptr
  %arg123212 = ptrtoint i64* %cloptr125654 to i64                                    ; closure cast; i64* -> i64
  %arg123211 = add i64 0, 0                                                          ; quoted ()
  %cloptr125663 = inttoptr i64 %arg123212 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125663)                                       ; assert function application
  %i0ptr125664 = getelementptr inbounds i64, i64* %cloptr125663, i64 0               ; &cloptr125663[0]
  %f125666 = load i64, i64* %i0ptr125664, align 8                                    ; load; *i0ptr125664
  %fptr125665 = inttoptr i64 %f125666 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125665(i64 %arg123212, i64 %arg123211, i64 %retprim122500); tail call
  ret void
}


define void @lam123487(i64 %env123488, i64 %_95122484, i64 %xM5$lsts) {
  %envptr125667 = inttoptr i64 %env123488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125668 = getelementptr inbounds i64, i64* %envptr125667, i64 6              ; &envptr125667[6]
  %kTO$acc = load i64, i64* %envptr125668, align 8                                   ; load; *envptr125668
  %envptr125669 = inttoptr i64 %env123488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125670 = getelementptr inbounds i64, i64* %envptr125669, i64 5              ; &envptr125669[5]
  %i9N$_37map1 = load i64, i64* %envptr125670, align 8                               ; load; *envptr125670
  %envptr125671 = inttoptr i64 %env123488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125672 = getelementptr inbounds i64, i64* %envptr125671, i64 4              ; &envptr125671[4]
  %cont122481 = load i64, i64* %envptr125672, align 8                                ; load; *envptr125672
  %envptr125673 = inttoptr i64 %env123488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125674 = getelementptr inbounds i64, i64* %envptr125673, i64 3              ; &envptr125673[3]
  %peo$f = load i64, i64* %envptr125674, align 8                                     ; load; *envptr125674
  %envptr125675 = inttoptr i64 %env123488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125676 = getelementptr inbounds i64, i64* %envptr125675, i64 2              ; &envptr125675[2]
  %PGm$_37foldr = load i64, i64* %envptr125676, align 8                              ; load; *envptr125676
  %envptr125677 = inttoptr i64 %env123488 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125678 = getelementptr inbounds i64, i64* %envptr125677, i64 1              ; &envptr125677[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125678, align 8                             ; load; *envptr125678
  %cloptr125679 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr125681 = getelementptr inbounds i64, i64* %cloptr125679, i64 1                ; &eptr125681[1]
  %eptr125682 = getelementptr inbounds i64, i64* %cloptr125679, i64 2                ; &eptr125682[2]
  %eptr125683 = getelementptr inbounds i64, i64* %cloptr125679, i64 3                ; &eptr125683[3]
  %eptr125684 = getelementptr inbounds i64, i64* %cloptr125679, i64 4                ; &eptr125684[4]
  %eptr125685 = getelementptr inbounds i64, i64* %cloptr125679, i64 5                ; &eptr125685[5]
  %eptr125686 = getelementptr inbounds i64, i64* %cloptr125679, i64 6                ; &eptr125686[6]
  %eptr125687 = getelementptr inbounds i64, i64* %cloptr125679, i64 7                ; &eptr125687[7]
  store i64 %nDk$_37foldr1, i64* %eptr125681                                         ; *eptr125681 = %nDk$_37foldr1
  store i64 %PGm$_37foldr, i64* %eptr125682                                          ; *eptr125682 = %PGm$_37foldr
  store i64 %peo$f, i64* %eptr125683                                                 ; *eptr125683 = %peo$f
  store i64 %cont122481, i64* %eptr125684                                            ; *eptr125684 = %cont122481
  store i64 %xM5$lsts, i64* %eptr125685                                              ; *eptr125685 = %xM5$lsts
  store i64 %i9N$_37map1, i64* %eptr125686                                           ; *eptr125686 = %i9N$_37map1
  store i64 %kTO$acc, i64* %eptr125687                                               ; *eptr125687 = %kTO$acc
  %eptr125680 = getelementptr inbounds i64, i64* %cloptr125679, i64 0                ; &cloptr125679[0]
  %f125688 = ptrtoint void(i64,i64,i64)* @lam123485 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125688, i64* %eptr125680                                               ; store fptr
  %arg123216 = ptrtoint i64* %cloptr125679 to i64                                    ; closure cast; i64* -> i64
  %cloptr125689 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125690 = getelementptr inbounds i64, i64* %cloptr125689, i64 0                ; &cloptr125689[0]
  %f125691 = ptrtoint void(i64,i64,i64,i64)* @lam123464 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f125691, i64* %eptr125690                                               ; store fptr
  %arg123215 = ptrtoint i64* %cloptr125689 to i64                                    ; closure cast; i64* -> i64
  %arg123214 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr125692 = inttoptr i64 %nDk$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125692)                                       ; assert function application
  %i0ptr125693 = getelementptr inbounds i64, i64* %cloptr125692, i64 0               ; &cloptr125692[0]
  %f125695 = load i64, i64* %i0ptr125693, align 8                                    ; load; *i0ptr125693
  %fptr125694 = inttoptr i64 %f125695 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125694(i64 %nDk$_37foldr1, i64 %arg123216, i64 %arg123215, i64 %arg123214, i64 %xM5$lsts); tail call
  ret void
}


define void @lam123485(i64 %env123486, i64 %_95122485, i64 %a122247) {
  %envptr125696 = inttoptr i64 %env123486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125697 = getelementptr inbounds i64, i64* %envptr125696, i64 7              ; &envptr125696[7]
  %kTO$acc = load i64, i64* %envptr125697, align 8                                   ; load; *envptr125697
  %envptr125698 = inttoptr i64 %env123486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125699 = getelementptr inbounds i64, i64* %envptr125698, i64 6              ; &envptr125698[6]
  %i9N$_37map1 = load i64, i64* %envptr125699, align 8                               ; load; *envptr125699
  %envptr125700 = inttoptr i64 %env123486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125701 = getelementptr inbounds i64, i64* %envptr125700, i64 5              ; &envptr125700[5]
  %xM5$lsts = load i64, i64* %envptr125701, align 8                                  ; load; *envptr125701
  %envptr125702 = inttoptr i64 %env123486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125703 = getelementptr inbounds i64, i64* %envptr125702, i64 4              ; &envptr125702[4]
  %cont122481 = load i64, i64* %envptr125703, align 8                                ; load; *envptr125703
  %envptr125704 = inttoptr i64 %env123486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125705 = getelementptr inbounds i64, i64* %envptr125704, i64 3              ; &envptr125704[3]
  %peo$f = load i64, i64* %envptr125705, align 8                                     ; load; *envptr125705
  %envptr125706 = inttoptr i64 %env123486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125707 = getelementptr inbounds i64, i64* %envptr125706, i64 2              ; &envptr125706[2]
  %PGm$_37foldr = load i64, i64* %envptr125707, align 8                              ; load; *envptr125707
  %envptr125708 = inttoptr i64 %env123486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125709 = getelementptr inbounds i64, i64* %envptr125708, i64 1              ; &envptr125708[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125709, align 8                             ; load; *envptr125709
  %cmp125710 = icmp eq i64 %a122247, 15                                              ; false?
  br i1 %cmp125710, label %else125712, label %then125711                             ; if

then125711:
  %arg123219 = add i64 0, 0                                                          ; quoted ()
  %cloptr125713 = inttoptr i64 %cont122481 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125713)                                       ; assert function application
  %i0ptr125714 = getelementptr inbounds i64, i64* %cloptr125713, i64 0               ; &cloptr125713[0]
  %f125716 = load i64, i64* %i0ptr125714, align 8                                    ; load; *i0ptr125714
  %fptr125715 = inttoptr i64 %f125716 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125715(i64 %cont122481, i64 %arg123219, i64 %kTO$acc); tail call
  ret void

else125712:
  %cloptr125717 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr125719 = getelementptr inbounds i64, i64* %cloptr125717, i64 1                ; &eptr125719[1]
  %eptr125720 = getelementptr inbounds i64, i64* %cloptr125717, i64 2                ; &eptr125720[2]
  %eptr125721 = getelementptr inbounds i64, i64* %cloptr125717, i64 3                ; &eptr125721[3]
  %eptr125722 = getelementptr inbounds i64, i64* %cloptr125717, i64 4                ; &eptr125722[4]
  %eptr125723 = getelementptr inbounds i64, i64* %cloptr125717, i64 5                ; &eptr125723[5]
  %eptr125724 = getelementptr inbounds i64, i64* %cloptr125717, i64 6                ; &eptr125724[6]
  %eptr125725 = getelementptr inbounds i64, i64* %cloptr125717, i64 7                ; &eptr125725[7]
  store i64 %nDk$_37foldr1, i64* %eptr125719                                         ; *eptr125719 = %nDk$_37foldr1
  store i64 %PGm$_37foldr, i64* %eptr125720                                          ; *eptr125720 = %PGm$_37foldr
  store i64 %peo$f, i64* %eptr125721                                                 ; *eptr125721 = %peo$f
  store i64 %cont122481, i64* %eptr125722                                            ; *eptr125722 = %cont122481
  store i64 %xM5$lsts, i64* %eptr125723                                              ; *eptr125723 = %xM5$lsts
  store i64 %i9N$_37map1, i64* %eptr125724                                           ; *eptr125724 = %i9N$_37map1
  store i64 %kTO$acc, i64* %eptr125725                                               ; *eptr125725 = %kTO$acc
  %eptr125718 = getelementptr inbounds i64, i64* %cloptr125717, i64 0                ; &cloptr125717[0]
  %f125726 = ptrtoint void(i64,i64,i64)* @lam123483 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125726, i64* %eptr125718                                               ; store fptr
  %arg123223 = ptrtoint i64* %cloptr125717 to i64                                    ; closure cast; i64* -> i64
  %cloptr125727 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125728 = getelementptr inbounds i64, i64* %cloptr125727, i64 0                ; &cloptr125727[0]
  %f125729 = ptrtoint void(i64,i64,i64)* @lam123468 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125729, i64* %eptr125728                                               ; store fptr
  %arg123222 = ptrtoint i64* %cloptr125727 to i64                                    ; closure cast; i64* -> i64
  %cloptr125730 = inttoptr i64 %i9N$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125730)                                       ; assert function application
  %i0ptr125731 = getelementptr inbounds i64, i64* %cloptr125730, i64 0               ; &cloptr125730[0]
  %f125733 = load i64, i64* %i0ptr125731, align 8                                    ; load; *i0ptr125731
  %fptr125732 = inttoptr i64 %f125733 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125732(i64 %i9N$_37map1, i64 %arg123223, i64 %arg123222, i64 %xM5$lsts); tail call
  ret void
}


define void @lam123483(i64 %env123484, i64 %_95122486, i64 %jW3$lsts_43) {
  %envptr125734 = inttoptr i64 %env123484 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125735 = getelementptr inbounds i64, i64* %envptr125734, i64 7              ; &envptr125734[7]
  %kTO$acc = load i64, i64* %envptr125735, align 8                                   ; load; *envptr125735
  %envptr125736 = inttoptr i64 %env123484 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125737 = getelementptr inbounds i64, i64* %envptr125736, i64 6              ; &envptr125736[6]
  %i9N$_37map1 = load i64, i64* %envptr125737, align 8                               ; load; *envptr125737
  %envptr125738 = inttoptr i64 %env123484 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125739 = getelementptr inbounds i64, i64* %envptr125738, i64 5              ; &envptr125738[5]
  %xM5$lsts = load i64, i64* %envptr125739, align 8                                  ; load; *envptr125739
  %envptr125740 = inttoptr i64 %env123484 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125741 = getelementptr inbounds i64, i64* %envptr125740, i64 4              ; &envptr125740[4]
  %cont122481 = load i64, i64* %envptr125741, align 8                                ; load; *envptr125741
  %envptr125742 = inttoptr i64 %env123484 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125743 = getelementptr inbounds i64, i64* %envptr125742, i64 3              ; &envptr125742[3]
  %peo$f = load i64, i64* %envptr125743, align 8                                     ; load; *envptr125743
  %envptr125744 = inttoptr i64 %env123484 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125745 = getelementptr inbounds i64, i64* %envptr125744, i64 2              ; &envptr125744[2]
  %PGm$_37foldr = load i64, i64* %envptr125745, align 8                              ; load; *envptr125745
  %envptr125746 = inttoptr i64 %env123484 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125747 = getelementptr inbounds i64, i64* %envptr125746, i64 1              ; &envptr125746[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125747, align 8                             ; load; *envptr125747
  %cloptr125748 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr125750 = getelementptr inbounds i64, i64* %cloptr125748, i64 1                ; &eptr125750[1]
  %eptr125751 = getelementptr inbounds i64, i64* %cloptr125748, i64 2                ; &eptr125751[2]
  %eptr125752 = getelementptr inbounds i64, i64* %cloptr125748, i64 3                ; &eptr125752[3]
  %eptr125753 = getelementptr inbounds i64, i64* %cloptr125748, i64 4                ; &eptr125753[4]
  %eptr125754 = getelementptr inbounds i64, i64* %cloptr125748, i64 5                ; &eptr125754[5]
  %eptr125755 = getelementptr inbounds i64, i64* %cloptr125748, i64 6                ; &eptr125755[6]
  store i64 %nDk$_37foldr1, i64* %eptr125750                                         ; *eptr125750 = %nDk$_37foldr1
  store i64 %PGm$_37foldr, i64* %eptr125751                                          ; *eptr125751 = %PGm$_37foldr
  store i64 %peo$f, i64* %eptr125752                                                 ; *eptr125752 = %peo$f
  store i64 %jW3$lsts_43, i64* %eptr125753                                           ; *eptr125753 = %jW3$lsts_43
  store i64 %cont122481, i64* %eptr125754                                            ; *eptr125754 = %cont122481
  store i64 %kTO$acc, i64* %eptr125755                                               ; *eptr125755 = %kTO$acc
  %eptr125749 = getelementptr inbounds i64, i64* %cloptr125748, i64 0                ; &cloptr125748[0]
  %f125756 = ptrtoint void(i64,i64,i64)* @lam123481 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125756, i64* %eptr125749                                               ; store fptr
  %arg123227 = ptrtoint i64* %cloptr125748 to i64                                    ; closure cast; i64* -> i64
  %cloptr125757 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125758 = getelementptr inbounds i64, i64* %cloptr125757, i64 0                ; &cloptr125757[0]
  %f125759 = ptrtoint void(i64,i64,i64)* @lam123471 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125759, i64* %eptr125758                                               ; store fptr
  %arg123226 = ptrtoint i64* %cloptr125757 to i64                                    ; closure cast; i64* -> i64
  %cloptr125760 = inttoptr i64 %i9N$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125760)                                       ; assert function application
  %i0ptr125761 = getelementptr inbounds i64, i64* %cloptr125760, i64 0               ; &cloptr125760[0]
  %f125763 = load i64, i64* %i0ptr125761, align 8                                    ; load; *i0ptr125761
  %fptr125762 = inttoptr i64 %f125763 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125762(i64 %i9N$_37map1, i64 %arg123227, i64 %arg123226, i64 %xM5$lsts); tail call
  ret void
}


define void @lam123481(i64 %env123482, i64 %_95122487, i64 %zLo$vs) {
  %envptr125764 = inttoptr i64 %env123482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125765 = getelementptr inbounds i64, i64* %envptr125764, i64 6              ; &envptr125764[6]
  %kTO$acc = load i64, i64* %envptr125765, align 8                                   ; load; *envptr125765
  %envptr125766 = inttoptr i64 %env123482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125767 = getelementptr inbounds i64, i64* %envptr125766, i64 5              ; &envptr125766[5]
  %cont122481 = load i64, i64* %envptr125767, align 8                                ; load; *envptr125767
  %envptr125768 = inttoptr i64 %env123482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125769 = getelementptr inbounds i64, i64* %envptr125768, i64 4              ; &envptr125768[4]
  %jW3$lsts_43 = load i64, i64* %envptr125769, align 8                               ; load; *envptr125769
  %envptr125770 = inttoptr i64 %env123482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125771 = getelementptr inbounds i64, i64* %envptr125770, i64 3              ; &envptr125770[3]
  %peo$f = load i64, i64* %envptr125771, align 8                                     ; load; *envptr125771
  %envptr125772 = inttoptr i64 %env123482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125773 = getelementptr inbounds i64, i64* %envptr125772, i64 2              ; &envptr125772[2]
  %PGm$_37foldr = load i64, i64* %envptr125773, align 8                              ; load; *envptr125773
  %envptr125774 = inttoptr i64 %env123482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125775 = getelementptr inbounds i64, i64* %envptr125774, i64 1              ; &envptr125774[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125775, align 8                             ; load; *envptr125775
  %a122248 = call i64 @prim_cons(i64 %kTO$acc, i64 %jW3$lsts_43)                     ; call prim_cons
  %a122249 = call i64 @prim_cons(i64 %peo$f, i64 %a122248)                           ; call prim_cons
  %cloptr125776 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125778 = getelementptr inbounds i64, i64* %cloptr125776, i64 1                ; &eptr125778[1]
  %eptr125779 = getelementptr inbounds i64, i64* %cloptr125776, i64 2                ; &eptr125779[2]
  %eptr125780 = getelementptr inbounds i64, i64* %cloptr125776, i64 3                ; &eptr125780[3]
  %eptr125781 = getelementptr inbounds i64, i64* %cloptr125776, i64 4                ; &eptr125781[4]
  store i64 %nDk$_37foldr1, i64* %eptr125778                                         ; *eptr125778 = %nDk$_37foldr1
  store i64 %peo$f, i64* %eptr125779                                                 ; *eptr125779 = %peo$f
  store i64 %cont122481, i64* %eptr125780                                            ; *eptr125780 = %cont122481
  store i64 %zLo$vs, i64* %eptr125781                                                ; *eptr125781 = %zLo$vs
  %eptr125777 = getelementptr inbounds i64, i64* %cloptr125776, i64 0                ; &cloptr125776[0]
  %f125782 = ptrtoint void(i64,i64,i64)* @lam123479 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125782, i64* %eptr125777                                               ; store fptr
  %arg123234 = ptrtoint i64* %cloptr125776 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst122493 = call i64 @prim_cons(i64 %arg123234, i64 %a122249)               ; call prim_cons
  %cloptr125783 = inttoptr i64 %PGm$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125783)                                       ; assert function application
  %i0ptr125784 = getelementptr inbounds i64, i64* %cloptr125783, i64 0               ; &cloptr125783[0]
  %f125786 = load i64, i64* %i0ptr125784, align 8                                    ; load; *i0ptr125784
  %fptr125785 = inttoptr i64 %f125786 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125785(i64 %PGm$_37foldr, i64 %cps_45lst122493)     ; tail call
  ret void
}


define void @lam123479(i64 %env123480, i64 %_95122488, i64 %a122250) {
  %envptr125787 = inttoptr i64 %env123480 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125788 = getelementptr inbounds i64, i64* %envptr125787, i64 4              ; &envptr125787[4]
  %zLo$vs = load i64, i64* %envptr125788, align 8                                    ; load; *envptr125788
  %envptr125789 = inttoptr i64 %env123480 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125790 = getelementptr inbounds i64, i64* %envptr125789, i64 3              ; &envptr125789[3]
  %cont122481 = load i64, i64* %envptr125790, align 8                                ; load; *envptr125790
  %envptr125791 = inttoptr i64 %env123480 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125792 = getelementptr inbounds i64, i64* %envptr125791, i64 2              ; &envptr125791[2]
  %peo$f = load i64, i64* %envptr125792, align 8                                     ; load; *envptr125792
  %envptr125793 = inttoptr i64 %env123480 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125794 = getelementptr inbounds i64, i64* %envptr125793, i64 1              ; &envptr125793[1]
  %nDk$_37foldr1 = load i64, i64* %envptr125794, align 8                             ; load; *envptr125794
  %arg123235 = add i64 0, 0                                                          ; quoted ()
  %a122251 = call i64 @prim_cons(i64 %a122250, i64 %arg123235)                       ; call prim_cons
  %cloptr125795 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr125797 = getelementptr inbounds i64, i64* %cloptr125795, i64 1                ; &eptr125797[1]
  %eptr125798 = getelementptr inbounds i64, i64* %cloptr125795, i64 2                ; &eptr125798[2]
  store i64 %peo$f, i64* %eptr125797                                                 ; *eptr125797 = %peo$f
  store i64 %cont122481, i64* %eptr125798                                            ; *eptr125798 = %cont122481
  %eptr125796 = getelementptr inbounds i64, i64* %cloptr125795, i64 0                ; &cloptr125795[0]
  %f125799 = ptrtoint void(i64,i64,i64)* @lam123476 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125799, i64* %eptr125796                                               ; store fptr
  %arg123240 = ptrtoint i64* %cloptr125795 to i64                                    ; closure cast; i64* -> i64
  %cloptr125800 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr125801 = getelementptr inbounds i64, i64* %cloptr125800, i64 0                ; &cloptr125800[0]
  %f125802 = ptrtoint void(i64,i64,i64,i64)* @lam123474 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f125802, i64* %eptr125801                                               ; store fptr
  %arg123239 = ptrtoint i64* %cloptr125800 to i64                                    ; closure cast; i64* -> i64
  %cloptr125803 = inttoptr i64 %nDk$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125803)                                       ; assert function application
  %i0ptr125804 = getelementptr inbounds i64, i64* %cloptr125803, i64 0               ; &cloptr125803[0]
  %f125806 = load i64, i64* %i0ptr125804, align 8                                    ; load; *i0ptr125804
  %fptr125805 = inttoptr i64 %f125806 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125805(i64 %nDk$_37foldr1, i64 %arg123240, i64 %arg123239, i64 %a122251, i64 %zLo$vs); tail call
  ret void
}


define void @lam123476(i64 %env123477, i64 %_95122489, i64 %a122252) {
  %envptr125807 = inttoptr i64 %env123477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125808 = getelementptr inbounds i64, i64* %envptr125807, i64 2              ; &envptr125807[2]
  %cont122481 = load i64, i64* %envptr125808, align 8                                ; load; *envptr125808
  %envptr125809 = inttoptr i64 %env123477 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125810 = getelementptr inbounds i64, i64* %envptr125809, i64 1              ; &envptr125809[1]
  %peo$f = load i64, i64* %envptr125810, align 8                                     ; load; *envptr125810
  %cps_45lst122490 = call i64 @prim_cons(i64 %cont122481, i64 %a122252)              ; call prim_cons
  %cloptr125811 = inttoptr i64 %peo$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125811)                                       ; assert function application
  %i0ptr125812 = getelementptr inbounds i64, i64* %cloptr125811, i64 0               ; &cloptr125811[0]
  %f125814 = load i64, i64* %i0ptr125812, align 8                                    ; load; *i0ptr125812
  %fptr125813 = inttoptr i64 %f125814 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125813(i64 %peo$f, i64 %cps_45lst122490)            ; tail call
  ret void
}


define void @lam123474(i64 %env123475, i64 %cont122491, i64 %XIM$a, i64 %NA7$b) {
  %retprim122492 = call i64 @prim_cons(i64 %XIM$a, i64 %NA7$b)                       ; call prim_cons
  %arg123247 = add i64 0, 0                                                          ; quoted ()
  %cloptr125815 = inttoptr i64 %cont122491 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125815)                                       ; assert function application
  %i0ptr125816 = getelementptr inbounds i64, i64* %cloptr125815, i64 0               ; &cloptr125815[0]
  %f125818 = load i64, i64* %i0ptr125816, align 8                                    ; load; *i0ptr125816
  %fptr125817 = inttoptr i64 %f125818 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125817(i64 %cont122491, i64 %arg123247, i64 %retprim122492); tail call
  ret void
}


define void @lam123471(i64 %env123472, i64 %cont122494, i64 %NkS$x) {
  %retprim122495 = call i64 @prim_car(i64 %NkS$x)                                    ; call prim_car
  %arg123251 = add i64 0, 0                                                          ; quoted ()
  %cloptr125819 = inttoptr i64 %cont122494 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125819)                                       ; assert function application
  %i0ptr125820 = getelementptr inbounds i64, i64* %cloptr125819, i64 0               ; &cloptr125819[0]
  %f125822 = load i64, i64* %i0ptr125820, align 8                                    ; load; *i0ptr125820
  %fptr125821 = inttoptr i64 %f125822 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125821(i64 %cont122494, i64 %arg123251, i64 %retprim122495); tail call
  ret void
}


define void @lam123468(i64 %env123469, i64 %cont122496, i64 %JoZ$x) {
  %retprim122497 = call i64 @prim_cdr(i64 %JoZ$x)                                    ; call prim_cdr
  %arg123255 = add i64 0, 0                                                          ; quoted ()
  %cloptr125823 = inttoptr i64 %cont122496 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125823)                                       ; assert function application
  %i0ptr125824 = getelementptr inbounds i64, i64* %cloptr125823, i64 0               ; &cloptr125823[0]
  %f125826 = load i64, i64* %i0ptr125824, align 8                                    ; load; *i0ptr125824
  %fptr125825 = inttoptr i64 %f125826 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125825(i64 %cont122496, i64 %arg123255, i64 %retprim122497); tail call
  ret void
}


define void @lam123464(i64 %env123465, i64 %cont122498, i64 %hTg$lst, i64 %P1F$b) {
  %cmp125827 = icmp eq i64 %P1F$b, 15                                                ; false?
  br i1 %cmp125827, label %else125829, label %then125828                             ; if

then125828:
  %arg123258 = add i64 0, 0                                                          ; quoted ()
  %cloptr125830 = inttoptr i64 %cont122498 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125830)                                       ; assert function application
  %i0ptr125831 = getelementptr inbounds i64, i64* %cloptr125830, i64 0               ; &cloptr125830[0]
  %f125833 = load i64, i64* %i0ptr125831, align 8                                    ; load; *i0ptr125831
  %fptr125832 = inttoptr i64 %f125833 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125832(i64 %cont122498, i64 %arg123258, i64 %P1F$b) ; tail call
  ret void

else125829:
  %retprim122499 = call i64 @prim_null_63(i64 %hTg$lst)                              ; call prim_null_63
  %arg123262 = add i64 0, 0                                                          ; quoted ()
  %cloptr125834 = inttoptr i64 %cont122498 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125834)                                       ; assert function application
  %i0ptr125835 = getelementptr inbounds i64, i64* %cloptr125834, i64 0               ; &cloptr125834[0]
  %f125837 = load i64, i64* %i0ptr125835, align 8                                    ; load; *i0ptr125835
  %fptr125836 = inttoptr i64 %f125837 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125836(i64 %cont122498, i64 %arg123262, i64 %retprim122499); tail call
  ret void
}


define void @lam123457(i64 %env123458, i64 %cont122502, i64 %P37$_37foldl1) {
  %arg123265 = add i64 0, 0                                                          ; quoted ()
  %cloptr125838 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr125840 = getelementptr inbounds i64, i64* %cloptr125838, i64 1                ; &eptr125840[1]
  store i64 %P37$_37foldl1, i64* %eptr125840                                         ; *eptr125840 = %P37$_37foldl1
  %eptr125839 = getelementptr inbounds i64, i64* %cloptr125838, i64 0                ; &cloptr125838[0]
  %f125841 = ptrtoint void(i64,i64,i64,i64,i64)* @lam123454 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f125841, i64* %eptr125839                                               ; store fptr
  %arg123264 = ptrtoint i64* %cloptr125838 to i64                                    ; closure cast; i64* -> i64
  %cloptr125842 = inttoptr i64 %cont122502 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125842)                                       ; assert function application
  %i0ptr125843 = getelementptr inbounds i64, i64* %cloptr125842, i64 0               ; &cloptr125842[0]
  %f125845 = load i64, i64* %i0ptr125843, align 8                                    ; load; *i0ptr125843
  %fptr125844 = inttoptr i64 %f125845 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125844(i64 %cont122502, i64 %arg123265, i64 %arg123264); tail call
  ret void
}


define void @lam123454(i64 %env123455, i64 %cont122503, i64 %emY$f, i64 %YHV$acc, i64 %q2p$lst) {
  %envptr125846 = inttoptr i64 %env123455 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125847 = getelementptr inbounds i64, i64* %envptr125846, i64 1              ; &envptr125846[1]
  %P37$_37foldl1 = load i64, i64* %envptr125847, align 8                             ; load; *envptr125847
  %a122239 = call i64 @prim_null_63(i64 %q2p$lst)                                    ; call prim_null_63
  %cmp125848 = icmp eq i64 %a122239, 15                                              ; false?
  br i1 %cmp125848, label %else125850, label %then125849                             ; if

then125849:
  %arg123269 = add i64 0, 0                                                          ; quoted ()
  %cloptr125851 = inttoptr i64 %cont122503 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125851)                                       ; assert function application
  %i0ptr125852 = getelementptr inbounds i64, i64* %cloptr125851, i64 0               ; &cloptr125851[0]
  %f125854 = load i64, i64* %i0ptr125852, align 8                                    ; load; *i0ptr125852
  %fptr125853 = inttoptr i64 %f125854 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125853(i64 %cont122503, i64 %arg123269, i64 %YHV$acc); tail call
  ret void

else125850:
  %a122240 = call i64 @prim_car(i64 %q2p$lst)                                        ; call prim_car
  %cloptr125855 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125857 = getelementptr inbounds i64, i64* %cloptr125855, i64 1                ; &eptr125857[1]
  %eptr125858 = getelementptr inbounds i64, i64* %cloptr125855, i64 2                ; &eptr125858[2]
  %eptr125859 = getelementptr inbounds i64, i64* %cloptr125855, i64 3                ; &eptr125859[3]
  %eptr125860 = getelementptr inbounds i64, i64* %cloptr125855, i64 4                ; &eptr125860[4]
  store i64 %P37$_37foldl1, i64* %eptr125857                                         ; *eptr125857 = %P37$_37foldl1
  store i64 %emY$f, i64* %eptr125858                                                 ; *eptr125858 = %emY$f
  store i64 %q2p$lst, i64* %eptr125859                                               ; *eptr125859 = %q2p$lst
  store i64 %cont122503, i64* %eptr125860                                            ; *eptr125860 = %cont122503
  %eptr125856 = getelementptr inbounds i64, i64* %cloptr125855, i64 0                ; &cloptr125855[0]
  %f125861 = ptrtoint void(i64,i64,i64)* @lam123452 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125861, i64* %eptr125856                                               ; store fptr
  %arg123274 = ptrtoint i64* %cloptr125855 to i64                                    ; closure cast; i64* -> i64
  %cloptr125862 = inttoptr i64 %emY$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125862)                                       ; assert function application
  %i0ptr125863 = getelementptr inbounds i64, i64* %cloptr125862, i64 0               ; &cloptr125862[0]
  %f125865 = load i64, i64* %i0ptr125863, align 8                                    ; load; *i0ptr125863
  %fptr125864 = inttoptr i64 %f125865 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125864(i64 %emY$f, i64 %arg123274, i64 %a122240, i64 %YHV$acc); tail call
  ret void
}


define void @lam123452(i64 %env123453, i64 %_95122504, i64 %a122241) {
  %envptr125866 = inttoptr i64 %env123453 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125867 = getelementptr inbounds i64, i64* %envptr125866, i64 4              ; &envptr125866[4]
  %cont122503 = load i64, i64* %envptr125867, align 8                                ; load; *envptr125867
  %envptr125868 = inttoptr i64 %env123453 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125869 = getelementptr inbounds i64, i64* %envptr125868, i64 3              ; &envptr125868[3]
  %q2p$lst = load i64, i64* %envptr125869, align 8                                   ; load; *envptr125869
  %envptr125870 = inttoptr i64 %env123453 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125871 = getelementptr inbounds i64, i64* %envptr125870, i64 2              ; &envptr125870[2]
  %emY$f = load i64, i64* %envptr125871, align 8                                     ; load; *envptr125871
  %envptr125872 = inttoptr i64 %env123453 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125873 = getelementptr inbounds i64, i64* %envptr125872, i64 1              ; &envptr125872[1]
  %P37$_37foldl1 = load i64, i64* %envptr125873, align 8                             ; load; *envptr125873
  %a122242 = call i64 @prim_cdr(i64 %q2p$lst)                                        ; call prim_cdr
  %cloptr125874 = inttoptr i64 %P37$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125874)                                       ; assert function application
  %i0ptr125875 = getelementptr inbounds i64, i64* %cloptr125874, i64 0               ; &cloptr125874[0]
  %f125877 = load i64, i64* %i0ptr125875, align 8                                    ; load; *i0ptr125875
  %fptr125876 = inttoptr i64 %f125877 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125876(i64 %P37$_37foldl1, i64 %cont122503, i64 %emY$f, i64 %a122241, i64 %a122242); tail call
  ret void
}


define void @lam123449(i64 %env123450, i64 %cont122505, i64 %F6L$_37length) {
  %arg123283 = add i64 0, 0                                                          ; quoted ()
  %cloptr125878 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr125880 = getelementptr inbounds i64, i64* %cloptr125878, i64 1                ; &eptr125880[1]
  store i64 %F6L$_37length, i64* %eptr125880                                         ; *eptr125880 = %F6L$_37length
  %eptr125879 = getelementptr inbounds i64, i64* %cloptr125878, i64 0                ; &cloptr125878[0]
  %f125881 = ptrtoint void(i64,i64,i64)* @lam123446 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125881, i64* %eptr125879                                               ; store fptr
  %arg123282 = ptrtoint i64* %cloptr125878 to i64                                    ; closure cast; i64* -> i64
  %cloptr125882 = inttoptr i64 %cont122505 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125882)                                       ; assert function application
  %i0ptr125883 = getelementptr inbounds i64, i64* %cloptr125882, i64 0               ; &cloptr125882[0]
  %f125885 = load i64, i64* %i0ptr125883, align 8                                    ; load; *i0ptr125883
  %fptr125884 = inttoptr i64 %f125885 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125884(i64 %cont122505, i64 %arg123283, i64 %arg123282); tail call
  ret void
}


define void @lam123446(i64 %env123447, i64 %cont122506, i64 %dxR$lst) {
  %envptr125886 = inttoptr i64 %env123447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125887 = getelementptr inbounds i64, i64* %envptr125886, i64 1              ; &envptr125886[1]
  %F6L$_37length = load i64, i64* %envptr125887, align 8                             ; load; *envptr125887
  %a122236 = call i64 @prim_null_63(i64 %dxR$lst)                                    ; call prim_null_63
  %cmp125888 = icmp eq i64 %a122236, 15                                              ; false?
  br i1 %cmp125888, label %else125890, label %then125889                             ; if

then125889:
  %arg123287 = add i64 0, 0                                                          ; quoted ()
  %arg123286 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr125891 = inttoptr i64 %cont122506 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125891)                                       ; assert function application
  %i0ptr125892 = getelementptr inbounds i64, i64* %cloptr125891, i64 0               ; &cloptr125891[0]
  %f125894 = load i64, i64* %i0ptr125892, align 8                                    ; load; *i0ptr125892
  %fptr125893 = inttoptr i64 %f125894 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125893(i64 %cont122506, i64 %arg123287, i64 %arg123286); tail call
  ret void

else125890:
  %a122237 = call i64 @prim_cdr(i64 %dxR$lst)                                        ; call prim_cdr
  %cloptr125895 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr125897 = getelementptr inbounds i64, i64* %cloptr125895, i64 1                ; &eptr125897[1]
  store i64 %cont122506, i64* %eptr125897                                            ; *eptr125897 = %cont122506
  %eptr125896 = getelementptr inbounds i64, i64* %cloptr125895, i64 0                ; &cloptr125895[0]
  %f125898 = ptrtoint void(i64,i64,i64)* @lam123444 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125898, i64* %eptr125896                                               ; store fptr
  %arg123291 = ptrtoint i64* %cloptr125895 to i64                                    ; closure cast; i64* -> i64
  %cloptr125899 = inttoptr i64 %F6L$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125899)                                       ; assert function application
  %i0ptr125900 = getelementptr inbounds i64, i64* %cloptr125899, i64 0               ; &cloptr125899[0]
  %f125902 = load i64, i64* %i0ptr125900, align 8                                    ; load; *i0ptr125900
  %fptr125901 = inttoptr i64 %f125902 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125901(i64 %F6L$_37length, i64 %arg123291, i64 %a122237); tail call
  ret void
}


define void @lam123444(i64 %env123445, i64 %_95122507, i64 %a122238) {
  %envptr125903 = inttoptr i64 %env123445 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125904 = getelementptr inbounds i64, i64* %envptr125903, i64 1              ; &envptr125903[1]
  %cont122506 = load i64, i64* %envptr125904, align 8                                ; load; *envptr125904
  %arg123294 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim122508 = call i64 @prim__43(i64 %arg123294, i64 %a122238)                  ; call prim__43
  %arg123296 = add i64 0, 0                                                          ; quoted ()
  %cloptr125905 = inttoptr i64 %cont122506 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125905)                                       ; assert function application
  %i0ptr125906 = getelementptr inbounds i64, i64* %cloptr125905, i64 0               ; &cloptr125905[0]
  %f125908 = load i64, i64* %i0ptr125906, align 8                                    ; load; *i0ptr125906
  %fptr125907 = inttoptr i64 %f125908 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125907(i64 %cont122506, i64 %arg123296, i64 %retprim122508); tail call
  ret void
}


define void @lam123438(i64 %env123439, i64 %cont122509, i64 %IIe$_37take) {
  %arg123299 = add i64 0, 0                                                          ; quoted ()
  %cloptr125909 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr125911 = getelementptr inbounds i64, i64* %cloptr125909, i64 1                ; &eptr125911[1]
  store i64 %IIe$_37take, i64* %eptr125911                                           ; *eptr125911 = %IIe$_37take
  %eptr125910 = getelementptr inbounds i64, i64* %cloptr125909, i64 0                ; &cloptr125909[0]
  %f125912 = ptrtoint void(i64,i64,i64,i64)* @lam123435 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f125912, i64* %eptr125910                                               ; store fptr
  %arg123298 = ptrtoint i64* %cloptr125909 to i64                                    ; closure cast; i64* -> i64
  %cloptr125913 = inttoptr i64 %cont122509 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125913)                                       ; assert function application
  %i0ptr125914 = getelementptr inbounds i64, i64* %cloptr125913, i64 0               ; &cloptr125913[0]
  %f125916 = load i64, i64* %i0ptr125914, align 8                                    ; load; *i0ptr125914
  %fptr125915 = inttoptr i64 %f125916 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125915(i64 %cont122509, i64 %arg123299, i64 %arg123298); tail call
  ret void
}


define void @lam123435(i64 %env123436, i64 %cont122510, i64 %k9Z$lst, i64 %rXM$n) {
  %envptr125917 = inttoptr i64 %env123436 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125918 = getelementptr inbounds i64, i64* %envptr125917, i64 1              ; &envptr125917[1]
  %IIe$_37take = load i64, i64* %envptr125918, align 8                               ; load; *envptr125918
  %arg123301 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a122230 = call i64 @prim__61(i64 %rXM$n, i64 %arg123301)                          ; call prim__61
  %cmp125919 = icmp eq i64 %a122230, 15                                              ; false?
  br i1 %cmp125919, label %else125921, label %then125920                             ; if

then125920:
  %arg123304 = add i64 0, 0                                                          ; quoted ()
  %arg123303 = add i64 0, 0                                                          ; quoted ()
  %cloptr125922 = inttoptr i64 %cont122510 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125922)                                       ; assert function application
  %i0ptr125923 = getelementptr inbounds i64, i64* %cloptr125922, i64 0               ; &cloptr125922[0]
  %f125925 = load i64, i64* %i0ptr125923, align 8                                    ; load; *i0ptr125923
  %fptr125924 = inttoptr i64 %f125925 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125924(i64 %cont122510, i64 %arg123304, i64 %arg123303); tail call
  ret void

else125921:
  %a122231 = call i64 @prim_null_63(i64 %k9Z$lst)                                    ; call prim_null_63
  %cmp125926 = icmp eq i64 %a122231, 15                                              ; false?
  br i1 %cmp125926, label %else125928, label %then125927                             ; if

then125927:
  %arg123308 = add i64 0, 0                                                          ; quoted ()
  %arg123307 = add i64 0, 0                                                          ; quoted ()
  %cloptr125929 = inttoptr i64 %cont122510 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125929)                                       ; assert function application
  %i0ptr125930 = getelementptr inbounds i64, i64* %cloptr125929, i64 0               ; &cloptr125929[0]
  %f125932 = load i64, i64* %i0ptr125930, align 8                                    ; load; *i0ptr125930
  %fptr125931 = inttoptr i64 %f125932 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125931(i64 %cont122510, i64 %arg123308, i64 %arg123307); tail call
  ret void

else125928:
  %a122232 = call i64 @prim_car(i64 %k9Z$lst)                                        ; call prim_car
  %a122233 = call i64 @prim_cdr(i64 %k9Z$lst)                                        ; call prim_cdr
  %arg123312 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a122234 = call i64 @prim__45(i64 %rXM$n, i64 %arg123312)                          ; call prim__45
  %cloptr125933 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr125935 = getelementptr inbounds i64, i64* %cloptr125933, i64 1                ; &eptr125935[1]
  %eptr125936 = getelementptr inbounds i64, i64* %cloptr125933, i64 2                ; &eptr125936[2]
  store i64 %cont122510, i64* %eptr125935                                            ; *eptr125935 = %cont122510
  store i64 %a122232, i64* %eptr125936                                               ; *eptr125936 = %a122232
  %eptr125934 = getelementptr inbounds i64, i64* %cloptr125933, i64 0                ; &cloptr125933[0]
  %f125937 = ptrtoint void(i64,i64,i64)* @lam123431 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125937, i64* %eptr125934                                               ; store fptr
  %arg123316 = ptrtoint i64* %cloptr125933 to i64                                    ; closure cast; i64* -> i64
  %cloptr125938 = inttoptr i64 %IIe$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125938)                                       ; assert function application
  %i0ptr125939 = getelementptr inbounds i64, i64* %cloptr125938, i64 0               ; &cloptr125938[0]
  %f125941 = load i64, i64* %i0ptr125939, align 8                                    ; load; *i0ptr125939
  %fptr125940 = inttoptr i64 %f125941 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125940(i64 %IIe$_37take, i64 %arg123316, i64 %a122233, i64 %a122234); tail call
  ret void
}


define void @lam123431(i64 %env123432, i64 %_95122511, i64 %a122235) {
  %envptr125942 = inttoptr i64 %env123432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125943 = getelementptr inbounds i64, i64* %envptr125942, i64 2              ; &envptr125942[2]
  %a122232 = load i64, i64* %envptr125943, align 8                                   ; load; *envptr125943
  %envptr125944 = inttoptr i64 %env123432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125945 = getelementptr inbounds i64, i64* %envptr125944, i64 1              ; &envptr125944[1]
  %cont122510 = load i64, i64* %envptr125945, align 8                                ; load; *envptr125945
  %retprim122512 = call i64 @prim_cons(i64 %a122232, i64 %a122235)                   ; call prim_cons
  %arg123321 = add i64 0, 0                                                          ; quoted ()
  %cloptr125946 = inttoptr i64 %cont122510 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125946)                                       ; assert function application
  %i0ptr125947 = getelementptr inbounds i64, i64* %cloptr125946, i64 0               ; &cloptr125946[0]
  %f125949 = load i64, i64* %i0ptr125947, align 8                                    ; load; *i0ptr125947
  %fptr125948 = inttoptr i64 %f125949 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125948(i64 %cont122510, i64 %arg123321, i64 %retprim122512); tail call
  ret void
}


define void @lam123424(i64 %env123425, i64 %cont122513, i64 %IA8$_37map) {
  %arg123324 = add i64 0, 0                                                          ; quoted ()
  %cloptr125950 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr125952 = getelementptr inbounds i64, i64* %cloptr125950, i64 1                ; &eptr125952[1]
  store i64 %IA8$_37map, i64* %eptr125952                                            ; *eptr125952 = %IA8$_37map
  %eptr125951 = getelementptr inbounds i64, i64* %cloptr125950, i64 0                ; &cloptr125950[0]
  %f125953 = ptrtoint void(i64,i64,i64,i64)* @lam123421 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f125953, i64* %eptr125951                                               ; store fptr
  %arg123323 = ptrtoint i64* %cloptr125950 to i64                                    ; closure cast; i64* -> i64
  %cloptr125954 = inttoptr i64 %cont122513 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125954)                                       ; assert function application
  %i0ptr125955 = getelementptr inbounds i64, i64* %cloptr125954, i64 0               ; &cloptr125954[0]
  %f125957 = load i64, i64* %i0ptr125955, align 8                                    ; load; *i0ptr125955
  %fptr125956 = inttoptr i64 %f125957 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125956(i64 %cont122513, i64 %arg123324, i64 %arg123323); tail call
  ret void
}


define void @lam123421(i64 %env123422, i64 %cont122514, i64 %lGm$f, i64 %xFq$lst) {
  %envptr125958 = inttoptr i64 %env123422 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125959 = getelementptr inbounds i64, i64* %envptr125958, i64 1              ; &envptr125958[1]
  %IA8$_37map = load i64, i64* %envptr125959, align 8                                ; load; *envptr125959
  %a122225 = call i64 @prim_null_63(i64 %xFq$lst)                                    ; call prim_null_63
  %cmp125960 = icmp eq i64 %a122225, 15                                              ; false?
  br i1 %cmp125960, label %else125962, label %then125961                             ; if

then125961:
  %arg123328 = add i64 0, 0                                                          ; quoted ()
  %arg123327 = add i64 0, 0                                                          ; quoted ()
  %cloptr125963 = inttoptr i64 %cont122514 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125963)                                       ; assert function application
  %i0ptr125964 = getelementptr inbounds i64, i64* %cloptr125963, i64 0               ; &cloptr125963[0]
  %f125966 = load i64, i64* %i0ptr125964, align 8                                    ; load; *i0ptr125964
  %fptr125965 = inttoptr i64 %f125966 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125965(i64 %cont122514, i64 %arg123328, i64 %arg123327); tail call
  ret void

else125962:
  %a122226 = call i64 @prim_car(i64 %xFq$lst)                                        ; call prim_car
  %cloptr125967 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr125969 = getelementptr inbounds i64, i64* %cloptr125967, i64 1                ; &eptr125969[1]
  %eptr125970 = getelementptr inbounds i64, i64* %cloptr125967, i64 2                ; &eptr125970[2]
  %eptr125971 = getelementptr inbounds i64, i64* %cloptr125967, i64 3                ; &eptr125971[3]
  %eptr125972 = getelementptr inbounds i64, i64* %cloptr125967, i64 4                ; &eptr125972[4]
  store i64 %IA8$_37map, i64* %eptr125969                                            ; *eptr125969 = %IA8$_37map
  store i64 %cont122514, i64* %eptr125970                                            ; *eptr125970 = %cont122514
  store i64 %lGm$f, i64* %eptr125971                                                 ; *eptr125971 = %lGm$f
  store i64 %xFq$lst, i64* %eptr125972                                               ; *eptr125972 = %xFq$lst
  %eptr125968 = getelementptr inbounds i64, i64* %cloptr125967, i64 0                ; &cloptr125967[0]
  %f125973 = ptrtoint void(i64,i64,i64)* @lam123419 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125973, i64* %eptr125968                                               ; store fptr
  %arg123332 = ptrtoint i64* %cloptr125967 to i64                                    ; closure cast; i64* -> i64
  %cloptr125974 = inttoptr i64 %lGm$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125974)                                       ; assert function application
  %i0ptr125975 = getelementptr inbounds i64, i64* %cloptr125974, i64 0               ; &cloptr125974[0]
  %f125977 = load i64, i64* %i0ptr125975, align 8                                    ; load; *i0ptr125975
  %fptr125976 = inttoptr i64 %f125977 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125976(i64 %lGm$f, i64 %arg123332, i64 %a122226)    ; tail call
  ret void
}


define void @lam123419(i64 %env123420, i64 %_95122515, i64 %a122227) {
  %envptr125978 = inttoptr i64 %env123420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125979 = getelementptr inbounds i64, i64* %envptr125978, i64 4              ; &envptr125978[4]
  %xFq$lst = load i64, i64* %envptr125979, align 8                                   ; load; *envptr125979
  %envptr125980 = inttoptr i64 %env123420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125981 = getelementptr inbounds i64, i64* %envptr125980, i64 3              ; &envptr125980[3]
  %lGm$f = load i64, i64* %envptr125981, align 8                                     ; load; *envptr125981
  %envptr125982 = inttoptr i64 %env123420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125983 = getelementptr inbounds i64, i64* %envptr125982, i64 2              ; &envptr125982[2]
  %cont122514 = load i64, i64* %envptr125983, align 8                                ; load; *envptr125983
  %envptr125984 = inttoptr i64 %env123420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125985 = getelementptr inbounds i64, i64* %envptr125984, i64 1              ; &envptr125984[1]
  %IA8$_37map = load i64, i64* %envptr125985, align 8                                ; load; *envptr125985
  %a122228 = call i64 @prim_cdr(i64 %xFq$lst)                                        ; call prim_cdr
  %cloptr125986 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr125988 = getelementptr inbounds i64, i64* %cloptr125986, i64 1                ; &eptr125988[1]
  %eptr125989 = getelementptr inbounds i64, i64* %cloptr125986, i64 2                ; &eptr125989[2]
  store i64 %a122227, i64* %eptr125988                                               ; *eptr125988 = %a122227
  store i64 %cont122514, i64* %eptr125989                                            ; *eptr125989 = %cont122514
  %eptr125987 = getelementptr inbounds i64, i64* %cloptr125986, i64 0                ; &cloptr125986[0]
  %f125990 = ptrtoint void(i64,i64,i64)* @lam123417 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f125990, i64* %eptr125987                                               ; store fptr
  %arg123337 = ptrtoint i64* %cloptr125986 to i64                                    ; closure cast; i64* -> i64
  %cloptr125991 = inttoptr i64 %IA8$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125991)                                       ; assert function application
  %i0ptr125992 = getelementptr inbounds i64, i64* %cloptr125991, i64 0               ; &cloptr125991[0]
  %f125994 = load i64, i64* %i0ptr125992, align 8                                    ; load; *i0ptr125992
  %fptr125993 = inttoptr i64 %f125994 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr125993(i64 %IA8$_37map, i64 %arg123337, i64 %lGm$f, i64 %a122228); tail call
  ret void
}


define void @lam123417(i64 %env123418, i64 %_95122516, i64 %a122229) {
  %envptr125995 = inttoptr i64 %env123418 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125996 = getelementptr inbounds i64, i64* %envptr125995, i64 2              ; &envptr125995[2]
  %cont122514 = load i64, i64* %envptr125996, align 8                                ; load; *envptr125996
  %envptr125997 = inttoptr i64 %env123418 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr125998 = getelementptr inbounds i64, i64* %envptr125997, i64 1              ; &envptr125997[1]
  %a122227 = load i64, i64* %envptr125998, align 8                                   ; load; *envptr125998
  %retprim122517 = call i64 @prim_cons(i64 %a122227, i64 %a122229)                   ; call prim_cons
  %arg123342 = add i64 0, 0                                                          ; quoted ()
  %cloptr125999 = inttoptr i64 %cont122514 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr125999)                                       ; assert function application
  %i0ptr126000 = getelementptr inbounds i64, i64* %cloptr125999, i64 0               ; &cloptr125999[0]
  %f126002 = load i64, i64* %i0ptr126000, align 8                                    ; load; *i0ptr126000
  %fptr126001 = inttoptr i64 %f126002 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126001(i64 %cont122514, i64 %arg123342, i64 %retprim122517); tail call
  ret void
}


define void @lam123412(i64 %env123413, i64 %cont122518, i64 %Hq4$_37foldr1) {
  %arg123345 = add i64 0, 0                                                          ; quoted ()
  %cloptr126003 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr126005 = getelementptr inbounds i64, i64* %cloptr126003, i64 1                ; &eptr126005[1]
  store i64 %Hq4$_37foldr1, i64* %eptr126005                                         ; *eptr126005 = %Hq4$_37foldr1
  %eptr126004 = getelementptr inbounds i64, i64* %cloptr126003, i64 0                ; &cloptr126003[0]
  %f126006 = ptrtoint void(i64,i64,i64,i64,i64)* @lam123409 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f126006, i64* %eptr126004                                               ; store fptr
  %arg123344 = ptrtoint i64* %cloptr126003 to i64                                    ; closure cast; i64* -> i64
  %cloptr126007 = inttoptr i64 %cont122518 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126007)                                       ; assert function application
  %i0ptr126008 = getelementptr inbounds i64, i64* %cloptr126007, i64 0               ; &cloptr126007[0]
  %f126010 = load i64, i64* %i0ptr126008, align 8                                    ; load; *i0ptr126008
  %fptr126009 = inttoptr i64 %f126010 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126009(i64 %cont122518, i64 %arg123345, i64 %arg123344); tail call
  ret void
}


define void @lam123409(i64 %env123410, i64 %cont122519, i64 %GND$f, i64 %ujC$acc, i64 %oMk$lst) {
  %envptr126011 = inttoptr i64 %env123410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126012 = getelementptr inbounds i64, i64* %envptr126011, i64 1              ; &envptr126011[1]
  %Hq4$_37foldr1 = load i64, i64* %envptr126012, align 8                             ; load; *envptr126012
  %a122221 = call i64 @prim_null_63(i64 %oMk$lst)                                    ; call prim_null_63
  %cmp126013 = icmp eq i64 %a122221, 15                                              ; false?
  br i1 %cmp126013, label %else126015, label %then126014                             ; if

then126014:
  %arg123349 = add i64 0, 0                                                          ; quoted ()
  %cloptr126016 = inttoptr i64 %cont122519 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126016)                                       ; assert function application
  %i0ptr126017 = getelementptr inbounds i64, i64* %cloptr126016, i64 0               ; &cloptr126016[0]
  %f126019 = load i64, i64* %i0ptr126017, align 8                                    ; load; *i0ptr126017
  %fptr126018 = inttoptr i64 %f126019 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126018(i64 %cont122519, i64 %arg123349, i64 %ujC$acc); tail call
  ret void

else126015:
  %a122222 = call i64 @prim_car(i64 %oMk$lst)                                        ; call prim_car
  %a122223 = call i64 @prim_cdr(i64 %oMk$lst)                                        ; call prim_cdr
  %cloptr126020 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr126022 = getelementptr inbounds i64, i64* %cloptr126020, i64 1                ; &eptr126022[1]
  %eptr126023 = getelementptr inbounds i64, i64* %cloptr126020, i64 2                ; &eptr126023[2]
  %eptr126024 = getelementptr inbounds i64, i64* %cloptr126020, i64 3                ; &eptr126024[3]
  store i64 %GND$f, i64* %eptr126022                                                 ; *eptr126022 = %GND$f
  store i64 %cont122519, i64* %eptr126023                                            ; *eptr126023 = %cont122519
  store i64 %a122222, i64* %eptr126024                                               ; *eptr126024 = %a122222
  %eptr126021 = getelementptr inbounds i64, i64* %cloptr126020, i64 0                ; &cloptr126020[0]
  %f126025 = ptrtoint void(i64,i64,i64)* @lam123407 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f126025, i64* %eptr126021                                               ; store fptr
  %arg123356 = ptrtoint i64* %cloptr126020 to i64                                    ; closure cast; i64* -> i64
  %cloptr126026 = inttoptr i64 %Hq4$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126026)                                       ; assert function application
  %i0ptr126027 = getelementptr inbounds i64, i64* %cloptr126026, i64 0               ; &cloptr126026[0]
  %f126029 = load i64, i64* %i0ptr126027, align 8                                    ; load; *i0ptr126027
  %fptr126028 = inttoptr i64 %f126029 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126028(i64 %Hq4$_37foldr1, i64 %arg123356, i64 %GND$f, i64 %ujC$acc, i64 %a122223); tail call
  ret void
}


define void @lam123407(i64 %env123408, i64 %_95122520, i64 %a122224) {
  %envptr126030 = inttoptr i64 %env123408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126031 = getelementptr inbounds i64, i64* %envptr126030, i64 3              ; &envptr126030[3]
  %a122222 = load i64, i64* %envptr126031, align 8                                   ; load; *envptr126031
  %envptr126032 = inttoptr i64 %env123408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126033 = getelementptr inbounds i64, i64* %envptr126032, i64 2              ; &envptr126032[2]
  %cont122519 = load i64, i64* %envptr126033, align 8                                ; load; *envptr126033
  %envptr126034 = inttoptr i64 %env123408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126035 = getelementptr inbounds i64, i64* %envptr126034, i64 1              ; &envptr126034[1]
  %GND$f = load i64, i64* %envptr126035, align 8                                     ; load; *envptr126035
  %cloptr126036 = inttoptr i64 %GND$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126036)                                       ; assert function application
  %i0ptr126037 = getelementptr inbounds i64, i64* %cloptr126036, i64 0               ; &cloptr126036[0]
  %f126039 = load i64, i64* %i0ptr126037, align 8                                    ; load; *i0ptr126037
  %fptr126038 = inttoptr i64 %f126039 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126038(i64 %GND$f, i64 %cont122519, i64 %a122222, i64 %a122224); tail call
  ret void
}


define void @lam123404(i64 %env123405, i64 %cont122522, i64 %dP8$y) {
  %arg123363 = add i64 0, 0                                                          ; quoted ()
  %cloptr126040 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr126042 = getelementptr inbounds i64, i64* %cloptr126040, i64 1                ; &eptr126042[1]
  store i64 %dP8$y, i64* %eptr126042                                                 ; *eptr126042 = %dP8$y
  %eptr126041 = getelementptr inbounds i64, i64* %cloptr126040, i64 0                ; &cloptr126040[0]
  %f126043 = ptrtoint void(i64,i64,i64)* @lam123401 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f126043, i64* %eptr126041                                               ; store fptr
  %arg123362 = ptrtoint i64* %cloptr126040 to i64                                    ; closure cast; i64* -> i64
  %cloptr126044 = inttoptr i64 %cont122522 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126044)                                       ; assert function application
  %i0ptr126045 = getelementptr inbounds i64, i64* %cloptr126044, i64 0               ; &cloptr126044[0]
  %f126047 = load i64, i64* %i0ptr126045, align 8                                    ; load; *i0ptr126045
  %fptr126046 = inttoptr i64 %f126047 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126046(i64 %cont122522, i64 %arg123363, i64 %arg123362); tail call
  ret void
}


define void @lam123401(i64 %env123402, i64 %cont122523, i64 %GdI$f) {
  %envptr126048 = inttoptr i64 %env123402 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126049 = getelementptr inbounds i64, i64* %envptr126048, i64 1              ; &envptr126048[1]
  %dP8$y = load i64, i64* %envptr126049, align 8                                     ; load; *envptr126049
  %cloptr126050 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr126052 = getelementptr inbounds i64, i64* %cloptr126050, i64 1                ; &eptr126052[1]
  %eptr126053 = getelementptr inbounds i64, i64* %cloptr126050, i64 2                ; &eptr126053[2]
  store i64 %GdI$f, i64* %eptr126052                                                 ; *eptr126052 = %GdI$f
  store i64 %dP8$y, i64* %eptr126053                                                 ; *eptr126053 = %dP8$y
  %eptr126051 = getelementptr inbounds i64, i64* %cloptr126050, i64 0                ; &cloptr126050[0]
  %f126054 = ptrtoint void(i64,i64)* @lam123399 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f126054, i64* %eptr126051                                               ; store fptr
  %arg123365 = ptrtoint i64* %cloptr126050 to i64                                    ; closure cast; i64* -> i64
  %cloptr126055 = inttoptr i64 %GdI$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126055)                                       ; assert function application
  %i0ptr126056 = getelementptr inbounds i64, i64* %cloptr126055, i64 0               ; &cloptr126055[0]
  %f126058 = load i64, i64* %i0ptr126056, align 8                                    ; load; *i0ptr126056
  %fptr126057 = inttoptr i64 %f126058 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126057(i64 %GdI$f, i64 %cont122523, i64 %arg123365) ; tail call
  ret void
}


define void @lam123399(i64 %env123400, i64 %Cmp$args122525) {
  %envptr126059 = inttoptr i64 %env123400 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126060 = getelementptr inbounds i64, i64* %envptr126059, i64 2              ; &envptr126059[2]
  %dP8$y = load i64, i64* %envptr126060, align 8                                     ; load; *envptr126060
  %envptr126061 = inttoptr i64 %env123400 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126062 = getelementptr inbounds i64, i64* %envptr126061, i64 1              ; &envptr126061[1]
  %GdI$f = load i64, i64* %envptr126062, align 8                                     ; load; *envptr126062
  %cont122524 = call i64 @prim_car(i64 %Cmp$args122525)                              ; call prim_car
  %Cmp$args = call i64 @prim_cdr(i64 %Cmp$args122525)                                ; call prim_cdr
  %cloptr126063 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr126065 = getelementptr inbounds i64, i64* %cloptr126063, i64 1                ; &eptr126065[1]
  %eptr126066 = getelementptr inbounds i64, i64* %cloptr126063, i64 2                ; &eptr126066[2]
  %eptr126067 = getelementptr inbounds i64, i64* %cloptr126063, i64 3                ; &eptr126067[3]
  store i64 %cont122524, i64* %eptr126065                                            ; *eptr126065 = %cont122524
  store i64 %Cmp$args, i64* %eptr126066                                              ; *eptr126066 = %Cmp$args
  store i64 %GdI$f, i64* %eptr126067                                                 ; *eptr126067 = %GdI$f
  %eptr126064 = getelementptr inbounds i64, i64* %cloptr126063, i64 0                ; &cloptr126063[0]
  %f126068 = ptrtoint void(i64,i64,i64)* @lam123397 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f126068, i64* %eptr126064                                               ; store fptr
  %arg123371 = ptrtoint i64* %cloptr126063 to i64                                    ; closure cast; i64* -> i64
  %cloptr126069 = inttoptr i64 %dP8$y to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126069)                                       ; assert function application
  %i0ptr126070 = getelementptr inbounds i64, i64* %cloptr126069, i64 0               ; &cloptr126069[0]
  %f126072 = load i64, i64* %i0ptr126070, align 8                                    ; load; *i0ptr126070
  %fptr126071 = inttoptr i64 %f126072 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126071(i64 %dP8$y, i64 %arg123371, i64 %dP8$y)      ; tail call
  ret void
}


define void @lam123397(i64 %env123398, i64 %_95122526, i64 %a122219) {
  %envptr126073 = inttoptr i64 %env123398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126074 = getelementptr inbounds i64, i64* %envptr126073, i64 3              ; &envptr126073[3]
  %GdI$f = load i64, i64* %envptr126074, align 8                                     ; load; *envptr126074
  %envptr126075 = inttoptr i64 %env123398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126076 = getelementptr inbounds i64, i64* %envptr126075, i64 2              ; &envptr126075[2]
  %Cmp$args = load i64, i64* %envptr126076, align 8                                  ; load; *envptr126076
  %envptr126077 = inttoptr i64 %env123398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126078 = getelementptr inbounds i64, i64* %envptr126077, i64 1              ; &envptr126077[1]
  %cont122524 = load i64, i64* %envptr126078, align 8                                ; load; *envptr126078
  %cloptr126079 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr126081 = getelementptr inbounds i64, i64* %cloptr126079, i64 1                ; &eptr126081[1]
  %eptr126082 = getelementptr inbounds i64, i64* %cloptr126079, i64 2                ; &eptr126082[2]
  store i64 %cont122524, i64* %eptr126081                                            ; *eptr126081 = %cont122524
  store i64 %Cmp$args, i64* %eptr126082                                              ; *eptr126082 = %Cmp$args
  %eptr126080 = getelementptr inbounds i64, i64* %cloptr126079, i64 0                ; &cloptr126079[0]
  %f126083 = ptrtoint void(i64,i64,i64)* @lam123395 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f126083, i64* %eptr126080                                               ; store fptr
  %arg123374 = ptrtoint i64* %cloptr126079 to i64                                    ; closure cast; i64* -> i64
  %cloptr126084 = inttoptr i64 %a122219 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126084)                                       ; assert function application
  %i0ptr126085 = getelementptr inbounds i64, i64* %cloptr126084, i64 0               ; &cloptr126084[0]
  %f126087 = load i64, i64* %i0ptr126085, align 8                                    ; load; *i0ptr126085
  %fptr126086 = inttoptr i64 %f126087 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126086(i64 %a122219, i64 %arg123374, i64 %GdI$f)    ; tail call
  ret void
}


define void @lam123395(i64 %env123396, i64 %_95122527, i64 %a122220) {
  %envptr126088 = inttoptr i64 %env123396 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126089 = getelementptr inbounds i64, i64* %envptr126088, i64 2              ; &envptr126088[2]
  %Cmp$args = load i64, i64* %envptr126089, align 8                                  ; load; *envptr126089
  %envptr126090 = inttoptr i64 %env123396 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr126091 = getelementptr inbounds i64, i64* %envptr126090, i64 1              ; &envptr126090[1]
  %cont122524 = load i64, i64* %envptr126091, align 8                                ; load; *envptr126091
  %cps_45lst122528 = call i64 @prim_cons(i64 %cont122524, i64 %Cmp$args)             ; call prim_cons
  %cloptr126092 = inttoptr i64 %a122220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr126092)                                       ; assert function application
  %i0ptr126093 = getelementptr inbounds i64, i64* %cloptr126092, i64 0               ; &cloptr126092[0]
  %f126095 = load i64, i64* %i0ptr126093, align 8                                    ; load; *i0ptr126093
  %fptr126094 = inttoptr i64 %f126095 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr126094(i64 %a122220, i64 %cps_45lst122528)          ; tail call
  ret void
}





@sym124665 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
