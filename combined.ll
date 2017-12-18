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
  %cloptr8592 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8593 = getelementptr inbounds i64, i64* %cloptr8592, i64 0                    ; &cloptr8592[0]
  %f8594 = ptrtoint void(i64,i64,i64)* @lam8590 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8594, i64* %eptr8593                                                   ; store fptr
  %arg7259 = ptrtoint i64* %cloptr8592 to i64                                        ; closure cast; i64* -> i64
  %cloptr8595 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8596 = getelementptr inbounds i64, i64* %cloptr8595, i64 0                    ; &cloptr8595[0]
  %f8597 = ptrtoint void(i64,i64,i64)* @lam8588 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8597, i64* %eptr8596                                                   ; store fptr
  %arg7258 = ptrtoint i64* %cloptr8595 to i64                                        ; closure cast; i64* -> i64
  %cloptr8598 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8599 = getelementptr inbounds i64, i64* %cloptr8598, i64 0                    ; &cloptr8598[0]
  %f8600 = ptrtoint void(i64,i64,i64)* @lam8135 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8600, i64* %eptr8599                                                   ; store fptr
  %arg7257 = ptrtoint i64* %cloptr8598 to i64                                        ; closure cast; i64* -> i64
  %cloptr8601 = inttoptr i64 %arg7259 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8601)                                         ; assert function application
  %i0ptr8602 = getelementptr inbounds i64, i64* %cloptr8601, i64 0                   ; &cloptr8601[0]
  %f8604 = load i64, i64* %i0ptr8602, align 8                                        ; load; *i0ptr8602
  %fptr8603 = inttoptr i64 %f8604 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8603(i64 %arg7259, i64 %arg7258, i64 %arg7257)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam8590(i64 %env8591, i64 %cont7249, i64 %u3f$yu) {
  %cloptr8605 = inttoptr i64 %u3f$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8605)                                         ; assert function application
  %i0ptr8606 = getelementptr inbounds i64, i64* %cloptr8605, i64 0                   ; &cloptr8605[0]
  %f8608 = load i64, i64* %i0ptr8606, align 8                                        ; load; *i0ptr8606
  %fptr8607 = inttoptr i64 %f8608 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8607(i64 %u3f$yu, i64 %cont7249, i64 %u3f$yu)       ; tail call
  ret void
}


define void @lam8588(i64 %env8589, i64 %_957067, i64 %dqv$Ycmb) {
  %cloptr8609 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8611 = getelementptr inbounds i64, i64* %cloptr8609, i64 1                    ; &eptr8611[1]
  store i64 %dqv$Ycmb, i64* %eptr8611                                                ; *eptr8611 = %dqv$Ycmb
  %eptr8610 = getelementptr inbounds i64, i64* %cloptr8609, i64 0                    ; &cloptr8609[0]
  %f8612 = ptrtoint void(i64,i64,i64)* @lam8586 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8612, i64* %eptr8610                                                   ; store fptr
  %arg7264 = ptrtoint i64* %cloptr8609 to i64                                        ; closure cast; i64* -> i64
  %cloptr8613 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8614 = getelementptr inbounds i64, i64* %cloptr8613, i64 0                    ; &cloptr8613[0]
  %f8615 = ptrtoint void(i64,i64,i64)* @lam8143 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8615, i64* %eptr8614                                                   ; store fptr
  %arg7263 = ptrtoint i64* %cloptr8613 to i64                                        ; closure cast; i64* -> i64
  %cloptr8616 = inttoptr i64 %dqv$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8616)                                         ; assert function application
  %i0ptr8617 = getelementptr inbounds i64, i64* %cloptr8616, i64 0                   ; &cloptr8616[0]
  %f8619 = load i64, i64* %i0ptr8617, align 8                                        ; load; *i0ptr8617
  %fptr8618 = inttoptr i64 %f8619 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8618(i64 %dqv$Ycmb, i64 %arg7264, i64 %arg7263)     ; tail call
  ret void
}


define void @lam8586(i64 %env8587, i64 %_957068, i64 %hlc$_37foldr1) {
  %envptr8620 = inttoptr i64 %env8587 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8621 = getelementptr inbounds i64, i64* %envptr8620, i64 1                  ; &envptr8620[1]
  %dqv$Ycmb = load i64, i64* %envptr8621, align 8                                    ; load; *envptr8621
  %cloptr8622 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8624 = getelementptr inbounds i64, i64* %cloptr8622, i64 1                    ; &eptr8624[1]
  %eptr8625 = getelementptr inbounds i64, i64* %cloptr8622, i64 2                    ; &eptr8625[2]
  store i64 %dqv$Ycmb, i64* %eptr8624                                                ; *eptr8624 = %dqv$Ycmb
  store i64 %hlc$_37foldr1, i64* %eptr8625                                           ; *eptr8625 = %hlc$_37foldr1
  %eptr8623 = getelementptr inbounds i64, i64* %cloptr8622, i64 0                    ; &cloptr8622[0]
  %f8626 = ptrtoint void(i64,i64,i64)* @lam8584 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8626, i64* %eptr8623                                                   ; store fptr
  %arg7267 = ptrtoint i64* %cloptr8622 to i64                                        ; closure cast; i64* -> i64
  %cloptr8627 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8628 = getelementptr inbounds i64, i64* %cloptr8627, i64 0                    ; &cloptr8627[0]
  %f8629 = ptrtoint void(i64,i64,i64)* @lam8155 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8629, i64* %eptr8628                                                   ; store fptr
  %arg7266 = ptrtoint i64* %cloptr8627 to i64                                        ; closure cast; i64* -> i64
  %cloptr8630 = inttoptr i64 %dqv$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8630)                                         ; assert function application
  %i0ptr8631 = getelementptr inbounds i64, i64* %cloptr8630, i64 0                   ; &cloptr8630[0]
  %f8633 = load i64, i64* %i0ptr8631, align 8                                        ; load; *i0ptr8631
  %fptr8632 = inttoptr i64 %f8633 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8632(i64 %dqv$Ycmb, i64 %arg7267, i64 %arg7266)     ; tail call
  ret void
}


define void @lam8584(i64 %env8585, i64 %_957069, i64 %dWC$_37map1) {
  %envptr8634 = inttoptr i64 %env8585 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8635 = getelementptr inbounds i64, i64* %envptr8634, i64 2                  ; &envptr8634[2]
  %hlc$_37foldr1 = load i64, i64* %envptr8635, align 8                               ; load; *envptr8635
  %envptr8636 = inttoptr i64 %env8585 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8637 = getelementptr inbounds i64, i64* %envptr8636, i64 1                  ; &envptr8636[1]
  %dqv$Ycmb = load i64, i64* %envptr8637, align 8                                    ; load; *envptr8637
  %cloptr8638 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8640 = getelementptr inbounds i64, i64* %cloptr8638, i64 1                    ; &eptr8640[1]
  %eptr8641 = getelementptr inbounds i64, i64* %cloptr8638, i64 2                    ; &eptr8641[2]
  %eptr8642 = getelementptr inbounds i64, i64* %cloptr8638, i64 3                    ; &eptr8642[3]
  store i64 %dqv$Ycmb, i64* %eptr8640                                                ; *eptr8640 = %dqv$Ycmb
  store i64 %hlc$_37foldr1, i64* %eptr8641                                           ; *eptr8641 = %hlc$_37foldr1
  store i64 %dWC$_37map1, i64* %eptr8642                                             ; *eptr8642 = %dWC$_37map1
  %eptr8639 = getelementptr inbounds i64, i64* %cloptr8638, i64 0                    ; &cloptr8638[0]
  %f8643 = ptrtoint void(i64,i64,i64)* @lam8582 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8643, i64* %eptr8639                                                   ; store fptr
  %arg7270 = ptrtoint i64* %cloptr8638 to i64                                        ; closure cast; i64* -> i64
  %cloptr8644 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8645 = getelementptr inbounds i64, i64* %cloptr8644, i64 0                    ; &cloptr8644[0]
  %f8646 = ptrtoint void(i64,i64,i64)* @lam8169 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8646, i64* %eptr8645                                                   ; store fptr
  %arg7269 = ptrtoint i64* %cloptr8644 to i64                                        ; closure cast; i64* -> i64
  %cloptr8647 = inttoptr i64 %dqv$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8647)                                         ; assert function application
  %i0ptr8648 = getelementptr inbounds i64, i64* %cloptr8647, i64 0                   ; &cloptr8647[0]
  %f8650 = load i64, i64* %i0ptr8648, align 8                                        ; load; *i0ptr8648
  %fptr8649 = inttoptr i64 %f8650 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8649(i64 %dqv$Ycmb, i64 %arg7270, i64 %arg7269)     ; tail call
  ret void
}


define void @lam8582(i64 %env8583, i64 %_957070, i64 %kMm$_37take) {
  %envptr8651 = inttoptr i64 %env8583 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8652 = getelementptr inbounds i64, i64* %envptr8651, i64 3                  ; &envptr8651[3]
  %dWC$_37map1 = load i64, i64* %envptr8652, align 8                                 ; load; *envptr8652
  %envptr8653 = inttoptr i64 %env8583 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8654 = getelementptr inbounds i64, i64* %envptr8653, i64 2                  ; &envptr8653[2]
  %hlc$_37foldr1 = load i64, i64* %envptr8654, align 8                               ; load; *envptr8654
  %envptr8655 = inttoptr i64 %env8583 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8656 = getelementptr inbounds i64, i64* %envptr8655, i64 1                  ; &envptr8655[1]
  %dqv$Ycmb = load i64, i64* %envptr8656, align 8                                    ; load; *envptr8656
  %cloptr8657 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8659 = getelementptr inbounds i64, i64* %cloptr8657, i64 1                    ; &eptr8659[1]
  %eptr8660 = getelementptr inbounds i64, i64* %cloptr8657, i64 2                    ; &eptr8660[2]
  %eptr8661 = getelementptr inbounds i64, i64* %cloptr8657, i64 3                    ; &eptr8661[3]
  %eptr8662 = getelementptr inbounds i64, i64* %cloptr8657, i64 4                    ; &eptr8662[4]
  store i64 %dqv$Ycmb, i64* %eptr8659                                                ; *eptr8659 = %dqv$Ycmb
  store i64 %hlc$_37foldr1, i64* %eptr8660                                           ; *eptr8660 = %hlc$_37foldr1
  store i64 %dWC$_37map1, i64* %eptr8661                                             ; *eptr8661 = %dWC$_37map1
  store i64 %kMm$_37take, i64* %eptr8662                                             ; *eptr8662 = %kMm$_37take
  %eptr8658 = getelementptr inbounds i64, i64* %cloptr8657, i64 0                    ; &cloptr8657[0]
  %f8663 = ptrtoint void(i64,i64,i64)* @lam8580 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8663, i64* %eptr8658                                                   ; store fptr
  %arg7273 = ptrtoint i64* %cloptr8657 to i64                                        ; closure cast; i64* -> i64
  %cloptr8664 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8665 = getelementptr inbounds i64, i64* %cloptr8664, i64 0                    ; &cloptr8664[0]
  %f8666 = ptrtoint void(i64,i64,i64)* @lam8180 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8666, i64* %eptr8665                                                   ; store fptr
  %arg7272 = ptrtoint i64* %cloptr8664 to i64                                        ; closure cast; i64* -> i64
  %cloptr8667 = inttoptr i64 %dqv$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8667)                                         ; assert function application
  %i0ptr8668 = getelementptr inbounds i64, i64* %cloptr8667, i64 0                   ; &cloptr8667[0]
  %f8670 = load i64, i64* %i0ptr8668, align 8                                        ; load; *i0ptr8668
  %fptr8669 = inttoptr i64 %f8670 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8669(i64 %dqv$Ycmb, i64 %arg7273, i64 %arg7272)     ; tail call
  ret void
}


define void @lam8580(i64 %env8581, i64 %_957071, i64 %K0A$_37length) {
  %envptr8671 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8672 = getelementptr inbounds i64, i64* %envptr8671, i64 4                  ; &envptr8671[4]
  %kMm$_37take = load i64, i64* %envptr8672, align 8                                 ; load; *envptr8672
  %envptr8673 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8674 = getelementptr inbounds i64, i64* %envptr8673, i64 3                  ; &envptr8673[3]
  %dWC$_37map1 = load i64, i64* %envptr8674, align 8                                 ; load; *envptr8674
  %envptr8675 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8676 = getelementptr inbounds i64, i64* %envptr8675, i64 2                  ; &envptr8675[2]
  %hlc$_37foldr1 = load i64, i64* %envptr8676, align 8                               ; load; *envptr8676
  %envptr8677 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8678 = getelementptr inbounds i64, i64* %envptr8677, i64 1                  ; &envptr8677[1]
  %dqv$Ycmb = load i64, i64* %envptr8678, align 8                                    ; load; *envptr8678
  %cloptr8679 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8681 = getelementptr inbounds i64, i64* %cloptr8679, i64 1                    ; &eptr8681[1]
  %eptr8682 = getelementptr inbounds i64, i64* %cloptr8679, i64 2                    ; &eptr8682[2]
  %eptr8683 = getelementptr inbounds i64, i64* %cloptr8679, i64 3                    ; &eptr8683[3]
  %eptr8684 = getelementptr inbounds i64, i64* %cloptr8679, i64 4                    ; &eptr8684[4]
  %eptr8685 = getelementptr inbounds i64, i64* %cloptr8679, i64 5                    ; &eptr8685[5]
  store i64 %K0A$_37length, i64* %eptr8681                                           ; *eptr8681 = %K0A$_37length
  store i64 %dqv$Ycmb, i64* %eptr8682                                                ; *eptr8682 = %dqv$Ycmb
  store i64 %hlc$_37foldr1, i64* %eptr8683                                           ; *eptr8683 = %hlc$_37foldr1
  store i64 %dWC$_37map1, i64* %eptr8684                                             ; *eptr8684 = %dWC$_37map1
  store i64 %kMm$_37take, i64* %eptr8685                                             ; *eptr8685 = %kMm$_37take
  %eptr8680 = getelementptr inbounds i64, i64* %cloptr8679, i64 0                    ; &cloptr8679[0]
  %f8686 = ptrtoint void(i64,i64,i64)* @lam8578 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8686, i64* %eptr8680                                                   ; store fptr
  %arg7276 = ptrtoint i64* %cloptr8679 to i64                                        ; closure cast; i64* -> i64
  %cloptr8687 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8688 = getelementptr inbounds i64, i64* %cloptr8687, i64 0                    ; &cloptr8687[0]
  %f8689 = ptrtoint void(i64,i64,i64)* @lam8188 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8689, i64* %eptr8688                                                   ; store fptr
  %arg7275 = ptrtoint i64* %cloptr8687 to i64                                        ; closure cast; i64* -> i64
  %cloptr8690 = inttoptr i64 %dqv$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8690)                                         ; assert function application
  %i0ptr8691 = getelementptr inbounds i64, i64* %cloptr8690, i64 0                   ; &cloptr8690[0]
  %f8693 = load i64, i64* %i0ptr8691, align 8                                        ; load; *i0ptr8691
  %fptr8692 = inttoptr i64 %f8693 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8692(i64 %dqv$Ycmb, i64 %arg7276, i64 %arg7275)     ; tail call
  ret void
}


define void @lam8578(i64 %env8579, i64 %_957072, i64 %d1v$_37foldl1) {
  %envptr8694 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8695 = getelementptr inbounds i64, i64* %envptr8694, i64 5                  ; &envptr8694[5]
  %kMm$_37take = load i64, i64* %envptr8695, align 8                                 ; load; *envptr8695
  %envptr8696 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8697 = getelementptr inbounds i64, i64* %envptr8696, i64 4                  ; &envptr8696[4]
  %dWC$_37map1 = load i64, i64* %envptr8697, align 8                                 ; load; *envptr8697
  %envptr8698 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8699 = getelementptr inbounds i64, i64* %envptr8698, i64 3                  ; &envptr8698[3]
  %hlc$_37foldr1 = load i64, i64* %envptr8699, align 8                               ; load; *envptr8699
  %envptr8700 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8701 = getelementptr inbounds i64, i64* %envptr8700, i64 2                  ; &envptr8700[2]
  %dqv$Ycmb = load i64, i64* %envptr8701, align 8                                    ; load; *envptr8701
  %envptr8702 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8703 = getelementptr inbounds i64, i64* %envptr8702, i64 1                  ; &envptr8702[1]
  %K0A$_37length = load i64, i64* %envptr8703, align 8                               ; load; *envptr8703
  %cloptr8704 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8706 = getelementptr inbounds i64, i64* %cloptr8704, i64 1                    ; &eptr8706[1]
  store i64 %d1v$_37foldl1, i64* %eptr8706                                           ; *eptr8706 = %d1v$_37foldl1
  %eptr8705 = getelementptr inbounds i64, i64* %cloptr8704, i64 0                    ; &cloptr8704[0]
  %f8707 = ptrtoint void(i64,i64,i64)* @lam8576 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8707, i64* %eptr8705                                                   ; store fptr
  %bIq$_37last = ptrtoint i64* %cloptr8704 to i64                                    ; closure cast; i64* -> i64
  %cloptr8708 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8710 = getelementptr inbounds i64, i64* %cloptr8708, i64 1                    ; &eptr8710[1]
  %eptr8711 = getelementptr inbounds i64, i64* %cloptr8708, i64 2                    ; &eptr8711[2]
  store i64 %K0A$_37length, i64* %eptr8710                                           ; *eptr8710 = %K0A$_37length
  store i64 %kMm$_37take, i64* %eptr8711                                             ; *eptr8711 = %kMm$_37take
  %eptr8709 = getelementptr inbounds i64, i64* %cloptr8708, i64 0                    ; &cloptr8708[0]
  %f8712 = ptrtoint void(i64,i64,i64,i64)* @lam8570 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8712, i64* %eptr8709                                                   ; store fptr
  %rl3$_37drop_45right = ptrtoint i64* %cloptr8708 to i64                            ; closure cast; i64* -> i64
  %cloptr8713 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8715 = getelementptr inbounds i64, i64* %cloptr8713, i64 1                    ; &eptr8715[1]
  %eptr8716 = getelementptr inbounds i64, i64* %cloptr8713, i64 2                    ; &eptr8716[2]
  %eptr8717 = getelementptr inbounds i64, i64* %cloptr8713, i64 3                    ; &eptr8717[3]
  %eptr8718 = getelementptr inbounds i64, i64* %cloptr8713, i64 4                    ; &eptr8718[4]
  %eptr8719 = getelementptr inbounds i64, i64* %cloptr8713, i64 5                    ; &eptr8719[5]
  %eptr8720 = getelementptr inbounds i64, i64* %cloptr8713, i64 6                    ; &eptr8720[6]
  store i64 %rl3$_37drop_45right, i64* %eptr8715                                     ; *eptr8715 = %rl3$_37drop_45right
  store i64 %K0A$_37length, i64* %eptr8716                                           ; *eptr8716 = %K0A$_37length
  store i64 %d1v$_37foldl1, i64* %eptr8717                                           ; *eptr8717 = %d1v$_37foldl1
  store i64 %dqv$Ycmb, i64* %eptr8718                                                ; *eptr8718 = %dqv$Ycmb
  store i64 %hlc$_37foldr1, i64* %eptr8719                                           ; *eptr8719 = %hlc$_37foldr1
  store i64 %bIq$_37last, i64* %eptr8720                                             ; *eptr8720 = %bIq$_37last
  %eptr8714 = getelementptr inbounds i64, i64* %cloptr8713, i64 0                    ; &cloptr8713[0]
  %f8721 = ptrtoint void(i64,i64,i64)* @lam8566 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8721, i64* %eptr8714                                                   ; store fptr
  %arg7296 = ptrtoint i64* %cloptr8713 to i64                                        ; closure cast; i64* -> i64
  %cloptr8722 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8724 = getelementptr inbounds i64, i64* %cloptr8722, i64 1                    ; &eptr8724[1]
  %eptr8725 = getelementptr inbounds i64, i64* %cloptr8722, i64 2                    ; &eptr8725[2]
  store i64 %hlc$_37foldr1, i64* %eptr8724                                           ; *eptr8724 = %hlc$_37foldr1
  store i64 %dWC$_37map1, i64* %eptr8725                                             ; *eptr8725 = %dWC$_37map1
  %eptr8723 = getelementptr inbounds i64, i64* %cloptr8722, i64 0                    ; &cloptr8722[0]
  %f8726 = ptrtoint void(i64,i64,i64)* @lam8225 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8726, i64* %eptr8723                                                   ; store fptr
  %arg7295 = ptrtoint i64* %cloptr8722 to i64                                        ; closure cast; i64* -> i64
  %cloptr8727 = inttoptr i64 %dqv$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8727)                                         ; assert function application
  %i0ptr8728 = getelementptr inbounds i64, i64* %cloptr8727, i64 0                   ; &cloptr8727[0]
  %f8730 = load i64, i64* %i0ptr8728, align 8                                        ; load; *i0ptr8728
  %fptr8729 = inttoptr i64 %f8730 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8729(i64 %dqv$Ycmb, i64 %arg7296, i64 %arg7295)     ; tail call
  ret void
}


define void @lam8576(i64 %env8577, i64 %cont7073, i64 %Mky$lst) {
  %envptr8731 = inttoptr i64 %env8577 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8732 = getelementptr inbounds i64, i64* %envptr8731, i64 1                  ; &envptr8731[1]
  %d1v$_37foldl1 = load i64, i64* %envptr8732, align 8                               ; load; *envptr8732
  %cloptr8733 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8734 = getelementptr inbounds i64, i64* %cloptr8733, i64 0                    ; &cloptr8733[0]
  %f8735 = ptrtoint void(i64,i64,i64,i64)* @lam8574 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8735, i64* %eptr8734                                                   ; store fptr
  %arg7280 = ptrtoint i64* %cloptr8733 to i64                                        ; closure cast; i64* -> i64
  %arg7279 = add i64 0, 0                                                            ; quoted ()
  %cloptr8736 = inttoptr i64 %d1v$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8736)                                         ; assert function application
  %i0ptr8737 = getelementptr inbounds i64, i64* %cloptr8736, i64 0                   ; &cloptr8736[0]
  %f8739 = load i64, i64* %i0ptr8737, align 8                                        ; load; *i0ptr8737
  %fptr8738 = inttoptr i64 %f8739 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8738(i64 %d1v$_37foldl1, i64 %cont7073, i64 %arg7280, i64 %arg7279, i64 %Mky$lst); tail call
  ret void
}


define void @lam8574(i64 %env8575, i64 %cont7074, i64 %ZFj$x, i64 %JmM$y) {
  %arg7284 = add i64 0, 0                                                            ; quoted ()
  %cloptr8740 = inttoptr i64 %cont7074 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8740)                                         ; assert function application
  %i0ptr8741 = getelementptr inbounds i64, i64* %cloptr8740, i64 0                   ; &cloptr8740[0]
  %f8743 = load i64, i64* %i0ptr8741, align 8                                        ; load; *i0ptr8741
  %fptr8742 = inttoptr i64 %f8743 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8742(i64 %cont7074, i64 %arg7284, i64 %ZFj$x)       ; tail call
  ret void
}


define void @lam8570(i64 %env8571, i64 %cont7075, i64 %Mqz$lst, i64 %nf3$n) {
  %envptr8744 = inttoptr i64 %env8571 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8745 = getelementptr inbounds i64, i64* %envptr8744, i64 2                  ; &envptr8744[2]
  %kMm$_37take = load i64, i64* %envptr8745, align 8                                 ; load; *envptr8745
  %envptr8746 = inttoptr i64 %env8571 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8747 = getelementptr inbounds i64, i64* %envptr8746, i64 1                  ; &envptr8746[1]
  %K0A$_37length = load i64, i64* %envptr8747, align 8                               ; load; *envptr8747
  %cloptr8748 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8750 = getelementptr inbounds i64, i64* %cloptr8748, i64 1                    ; &eptr8750[1]
  %eptr8751 = getelementptr inbounds i64, i64* %cloptr8748, i64 2                    ; &eptr8751[2]
  %eptr8752 = getelementptr inbounds i64, i64* %cloptr8748, i64 3                    ; &eptr8752[3]
  %eptr8753 = getelementptr inbounds i64, i64* %cloptr8748, i64 4                    ; &eptr8753[4]
  store i64 %nf3$n, i64* %eptr8750                                                   ; *eptr8750 = %nf3$n
  store i64 %Mqz$lst, i64* %eptr8751                                                 ; *eptr8751 = %Mqz$lst
  store i64 %cont7075, i64* %eptr8752                                                ; *eptr8752 = %cont7075
  store i64 %kMm$_37take, i64* %eptr8753                                             ; *eptr8753 = %kMm$_37take
  %eptr8749 = getelementptr inbounds i64, i64* %cloptr8748, i64 0                    ; &cloptr8748[0]
  %f8754 = ptrtoint void(i64,i64,i64)* @lam8568 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8754, i64* %eptr8749                                                   ; store fptr
  %arg7287 = ptrtoint i64* %cloptr8748 to i64                                        ; closure cast; i64* -> i64
  %cloptr8755 = inttoptr i64 %K0A$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8755)                                         ; assert function application
  %i0ptr8756 = getelementptr inbounds i64, i64* %cloptr8755, i64 0                   ; &cloptr8755[0]
  %f8758 = load i64, i64* %i0ptr8756, align 8                                        ; load; *i0ptr8756
  %fptr8757 = inttoptr i64 %f8758 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8757(i64 %K0A$_37length, i64 %arg7287, i64 %Mqz$lst); tail call
  ret void
}


define void @lam8568(i64 %env8569, i64 %_957076, i64 %a6969) {
  %envptr8759 = inttoptr i64 %env8569 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8760 = getelementptr inbounds i64, i64* %envptr8759, i64 4                  ; &envptr8759[4]
  %kMm$_37take = load i64, i64* %envptr8760, align 8                                 ; load; *envptr8760
  %envptr8761 = inttoptr i64 %env8569 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8762 = getelementptr inbounds i64, i64* %envptr8761, i64 3                  ; &envptr8761[3]
  %cont7075 = load i64, i64* %envptr8762, align 8                                    ; load; *envptr8762
  %envptr8763 = inttoptr i64 %env8569 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8764 = getelementptr inbounds i64, i64* %envptr8763, i64 2                  ; &envptr8763[2]
  %Mqz$lst = load i64, i64* %envptr8764, align 8                                     ; load; *envptr8764
  %envptr8765 = inttoptr i64 %env8569 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8766 = getelementptr inbounds i64, i64* %envptr8765, i64 1                  ; &envptr8765[1]
  %nf3$n = load i64, i64* %envptr8766, align 8                                       ; load; *envptr8766
  %a6970 = call i64 @prim__45(i64 %a6969, i64 %nf3$n)                                ; call prim__45
  %cloptr8767 = inttoptr i64 %kMm$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8767)                                         ; assert function application
  %i0ptr8768 = getelementptr inbounds i64, i64* %cloptr8767, i64 0                   ; &cloptr8767[0]
  %f8770 = load i64, i64* %i0ptr8768, align 8                                        ; load; *i0ptr8768
  %fptr8769 = inttoptr i64 %f8770 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8769(i64 %kMm$_37take, i64 %cont7075, i64 %Mqz$lst, i64 %a6970); tail call
  ret void
}


define void @lam8566(i64 %env8567, i64 %_957077, i64 %ey3$_37foldr) {
  %envptr8771 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8772 = getelementptr inbounds i64, i64* %envptr8771, i64 6                  ; &envptr8771[6]
  %bIq$_37last = load i64, i64* %envptr8772, align 8                                 ; load; *envptr8772
  %envptr8773 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8774 = getelementptr inbounds i64, i64* %envptr8773, i64 5                  ; &envptr8773[5]
  %hlc$_37foldr1 = load i64, i64* %envptr8774, align 8                               ; load; *envptr8774
  %envptr8775 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8776 = getelementptr inbounds i64, i64* %envptr8775, i64 4                  ; &envptr8775[4]
  %dqv$Ycmb = load i64, i64* %envptr8776, align 8                                    ; load; *envptr8776
  %envptr8777 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8778 = getelementptr inbounds i64, i64* %envptr8777, i64 3                  ; &envptr8777[3]
  %d1v$_37foldl1 = load i64, i64* %envptr8778, align 8                               ; load; *envptr8778
  %envptr8779 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8780 = getelementptr inbounds i64, i64* %envptr8779, i64 2                  ; &envptr8779[2]
  %K0A$_37length = load i64, i64* %envptr8780, align 8                               ; load; *envptr8780
  %envptr8781 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8782 = getelementptr inbounds i64, i64* %envptr8781, i64 1                  ; &envptr8781[1]
  %rl3$_37drop_45right = load i64, i64* %envptr8782, align 8                         ; load; *envptr8782
  %cloptr8783 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8785 = getelementptr inbounds i64, i64* %cloptr8783, i64 1                    ; &eptr8785[1]
  store i64 %hlc$_37foldr1, i64* %eptr8785                                           ; *eptr8785 = %hlc$_37foldr1
  %eptr8784 = getelementptr inbounds i64, i64* %cloptr8783, i64 0                    ; &cloptr8783[0]
  %f8786 = ptrtoint void(i64,i64,i64,i64)* @lam8564 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8786, i64* %eptr8784                                                   ; store fptr
  %E99$_37map1 = ptrtoint i64* %cloptr8783 to i64                                    ; closure cast; i64* -> i64
  %cloptr8787 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8789 = getelementptr inbounds i64, i64* %cloptr8787, i64 1                    ; &eptr8789[1]
  %eptr8790 = getelementptr inbounds i64, i64* %cloptr8787, i64 2                    ; &eptr8790[2]
  %eptr8791 = getelementptr inbounds i64, i64* %cloptr8787, i64 3                    ; &eptr8791[3]
  store i64 %rl3$_37drop_45right, i64* %eptr8789                                     ; *eptr8789 = %rl3$_37drop_45right
  store i64 %ey3$_37foldr, i64* %eptr8790                                            ; *eptr8790 = %ey3$_37foldr
  store i64 %bIq$_37last, i64* %eptr8791                                             ; *eptr8791 = %bIq$_37last
  %eptr8788 = getelementptr inbounds i64, i64* %cloptr8787, i64 0                    ; &cloptr8787[0]
  %f8792 = ptrtoint void(i64,i64)* @lam8556 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8792, i64* %eptr8788                                                   ; store fptr
  %tUH$_37map = ptrtoint i64* %cloptr8787 to i64                                     ; closure cast; i64* -> i64
  %cloptr8793 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8795 = getelementptr inbounds i64, i64* %cloptr8793, i64 1                    ; &eptr8795[1]
  %eptr8796 = getelementptr inbounds i64, i64* %cloptr8793, i64 2                    ; &eptr8796[2]
  store i64 %K0A$_37length, i64* %eptr8795                                           ; *eptr8795 = %K0A$_37length
  store i64 %d1v$_37foldl1, i64* %eptr8796                                           ; *eptr8796 = %d1v$_37foldl1
  %eptr8794 = getelementptr inbounds i64, i64* %cloptr8793, i64 0                    ; &cloptr8793[0]
  %f8797 = ptrtoint void(i64,i64,i64)* @lam8543 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8797, i64* %eptr8794                                                   ; store fptr
  %arg7338 = ptrtoint i64* %cloptr8793 to i64                                        ; closure cast; i64* -> i64
  %cloptr8798 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8800 = getelementptr inbounds i64, i64* %cloptr8798, i64 1                    ; &eptr8800[1]
  %eptr8801 = getelementptr inbounds i64, i64* %cloptr8798, i64 2                    ; &eptr8801[2]
  %eptr8802 = getelementptr inbounds i64, i64* %cloptr8798, i64 3                    ; &eptr8802[3]
  store i64 %hlc$_37foldr1, i64* %eptr8800                                           ; *eptr8800 = %hlc$_37foldr1
  store i64 %E99$_37map1, i64* %eptr8801                                             ; *eptr8801 = %E99$_37map1
  store i64 %ey3$_37foldr, i64* %eptr8802                                            ; *eptr8802 = %ey3$_37foldr
  %eptr8799 = getelementptr inbounds i64, i64* %cloptr8798, i64 0                    ; &cloptr8798[0]
  %f8803 = ptrtoint void(i64,i64,i64)* @lam8262 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8803, i64* %eptr8799                                                   ; store fptr
  %arg7337 = ptrtoint i64* %cloptr8798 to i64                                        ; closure cast; i64* -> i64
  %cloptr8804 = inttoptr i64 %dqv$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8804)                                         ; assert function application
  %i0ptr8805 = getelementptr inbounds i64, i64* %cloptr8804, i64 0                   ; &cloptr8804[0]
  %f8807 = load i64, i64* %i0ptr8805, align 8                                        ; load; *i0ptr8805
  %fptr8806 = inttoptr i64 %f8807 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8806(i64 %dqv$Ycmb, i64 %arg7338, i64 %arg7337)     ; tail call
  ret void
}


define void @lam8564(i64 %env8565, i64 %cont7078, i64 %IT8$f, i64 %lsX$lst) {
  %envptr8808 = inttoptr i64 %env8565 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8809 = getelementptr inbounds i64, i64* %envptr8808, i64 1                  ; &envptr8808[1]
  %hlc$_37foldr1 = load i64, i64* %envptr8809, align 8                               ; load; *envptr8809
  %cloptr8810 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8812 = getelementptr inbounds i64, i64* %cloptr8810, i64 1                    ; &eptr8812[1]
  store i64 %IT8$f, i64* %eptr8812                                                   ; *eptr8812 = %IT8$f
  %eptr8811 = getelementptr inbounds i64, i64* %cloptr8810, i64 0                    ; &cloptr8810[0]
  %f8813 = ptrtoint void(i64,i64,i64,i64)* @lam8562 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8813, i64* %eptr8811                                                   ; store fptr
  %arg7300 = ptrtoint i64* %cloptr8810 to i64                                        ; closure cast; i64* -> i64
  %arg7299 = add i64 0, 0                                                            ; quoted ()
  %cloptr8814 = inttoptr i64 %hlc$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8814)                                         ; assert function application
  %i0ptr8815 = getelementptr inbounds i64, i64* %cloptr8814, i64 0                   ; &cloptr8814[0]
  %f8817 = load i64, i64* %i0ptr8815, align 8                                        ; load; *i0ptr8815
  %fptr8816 = inttoptr i64 %f8817 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8816(i64 %hlc$_37foldr1, i64 %cont7078, i64 %arg7300, i64 %arg7299, i64 %lsX$lst); tail call
  ret void
}


define void @lam8562(i64 %env8563, i64 %cont7079, i64 %dUb$v, i64 %tmY$r) {
  %envptr8818 = inttoptr i64 %env8563 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8819 = getelementptr inbounds i64, i64* %envptr8818, i64 1                  ; &envptr8818[1]
  %IT8$f = load i64, i64* %envptr8819, align 8                                       ; load; *envptr8819
  %cloptr8820 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8822 = getelementptr inbounds i64, i64* %cloptr8820, i64 1                    ; &eptr8822[1]
  %eptr8823 = getelementptr inbounds i64, i64* %cloptr8820, i64 2                    ; &eptr8823[2]
  store i64 %tmY$r, i64* %eptr8822                                                   ; *eptr8822 = %tmY$r
  store i64 %cont7079, i64* %eptr8823                                                ; *eptr8823 = %cont7079
  %eptr8821 = getelementptr inbounds i64, i64* %cloptr8820, i64 0                    ; &cloptr8820[0]
  %f8824 = ptrtoint void(i64,i64,i64)* @lam8560 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8824, i64* %eptr8821                                                   ; store fptr
  %arg7304 = ptrtoint i64* %cloptr8820 to i64                                        ; closure cast; i64* -> i64
  %cloptr8825 = inttoptr i64 %IT8$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8825)                                         ; assert function application
  %i0ptr8826 = getelementptr inbounds i64, i64* %cloptr8825, i64 0                   ; &cloptr8825[0]
  %f8828 = load i64, i64* %i0ptr8826, align 8                                        ; load; *i0ptr8826
  %fptr8827 = inttoptr i64 %f8828 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8827(i64 %IT8$f, i64 %arg7304, i64 %dUb$v)          ; tail call
  ret void
}


define void @lam8560(i64 %env8561, i64 %_957080, i64 %a6979) {
  %envptr8829 = inttoptr i64 %env8561 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8830 = getelementptr inbounds i64, i64* %envptr8829, i64 2                  ; &envptr8829[2]
  %cont7079 = load i64, i64* %envptr8830, align 8                                    ; load; *envptr8830
  %envptr8831 = inttoptr i64 %env8561 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8832 = getelementptr inbounds i64, i64* %envptr8831, i64 1                  ; &envptr8831[1]
  %tmY$r = load i64, i64* %envptr8832, align 8                                       ; load; *envptr8832
  %retprim7081 = call i64 @prim_cons(i64 %a6979, i64 %tmY$r)                         ; call prim_cons
  %arg7309 = add i64 0, 0                                                            ; quoted ()
  %cloptr8833 = inttoptr i64 %cont7079 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8833)                                         ; assert function application
  %i0ptr8834 = getelementptr inbounds i64, i64* %cloptr8833, i64 0                   ; &cloptr8833[0]
  %f8836 = load i64, i64* %i0ptr8834, align 8                                        ; load; *i0ptr8834
  %fptr8835 = inttoptr i64 %f8836 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8835(i64 %cont7079, i64 %arg7309, i64 %retprim7081) ; tail call
  ret void
}


define void @lam8556(i64 %env8557, i64 %I5t$args7083) {
  %envptr8837 = inttoptr i64 %env8557 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8838 = getelementptr inbounds i64, i64* %envptr8837, i64 3                  ; &envptr8837[3]
  %bIq$_37last = load i64, i64* %envptr8838, align 8                                 ; load; *envptr8838
  %envptr8839 = inttoptr i64 %env8557 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8840 = getelementptr inbounds i64, i64* %envptr8839, i64 2                  ; &envptr8839[2]
  %ey3$_37foldr = load i64, i64* %envptr8840, align 8                                ; load; *envptr8840
  %envptr8841 = inttoptr i64 %env8557 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8842 = getelementptr inbounds i64, i64* %envptr8841, i64 1                  ; &envptr8841[1]
  %rl3$_37drop_45right = load i64, i64* %envptr8842, align 8                         ; load; *envptr8842
  %cont7082 = call i64 @prim_car(i64 %I5t$args7083)                                  ; call prim_car
  %I5t$args = call i64 @prim_cdr(i64 %I5t$args7083)                                  ; call prim_cdr
  %U9V$f = call i64 @prim_car(i64 %I5t$args)                                         ; call prim_car
  %kyx$lsts = call i64 @prim_cdr(i64 %I5t$args)                                      ; call prim_cdr
  %arg7316 = add i64 0, 0                                                            ; quoted ()
  %a6983 = call i64 @prim_cons(i64 %arg7316, i64 %kyx$lsts)                          ; call prim_cons
  %cloptr8843 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8845 = getelementptr inbounds i64, i64* %cloptr8843, i64 1                    ; &eptr8845[1]
  %eptr8846 = getelementptr inbounds i64, i64* %cloptr8843, i64 2                    ; &eptr8846[2]
  %eptr8847 = getelementptr inbounds i64, i64* %cloptr8843, i64 3                    ; &eptr8847[3]
  store i64 %rl3$_37drop_45right, i64* %eptr8845                                     ; *eptr8845 = %rl3$_37drop_45right
  store i64 %bIq$_37last, i64* %eptr8846                                             ; *eptr8846 = %bIq$_37last
  store i64 %U9V$f, i64* %eptr8847                                                   ; *eptr8847 = %U9V$f
  %eptr8844 = getelementptr inbounds i64, i64* %cloptr8843, i64 0                    ; &cloptr8843[0]
  %f8848 = ptrtoint void(i64,i64)* @lam8553 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8848, i64* %eptr8844                                                   ; store fptr
  %arg7318 = ptrtoint i64* %cloptr8843 to i64                                        ; closure cast; i64* -> i64
  %a6984 = call i64 @prim_cons(i64 %arg7318, i64 %a6983)                             ; call prim_cons
  %cps_45lst7091 = call i64 @prim_cons(i64 %cont7082, i64 %a6984)                    ; call prim_cons
  %cloptr8849 = inttoptr i64 %ey3$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8849)                                         ; assert function application
  %i0ptr8850 = getelementptr inbounds i64, i64* %cloptr8849, i64 0                   ; &cloptr8849[0]
  %f8852 = load i64, i64* %i0ptr8850, align 8                                        ; load; *i0ptr8850
  %fptr8851 = inttoptr i64 %f8852 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8851(i64 %ey3$_37foldr, i64 %cps_45lst7091)         ; tail call
  ret void
}


define void @lam8553(i64 %env8554, i64 %EzT$fargs7085) {
  %envptr8853 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8854 = getelementptr inbounds i64, i64* %envptr8853, i64 3                  ; &envptr8853[3]
  %U9V$f = load i64, i64* %envptr8854, align 8                                       ; load; *envptr8854
  %envptr8855 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8856 = getelementptr inbounds i64, i64* %envptr8855, i64 2                  ; &envptr8855[2]
  %bIq$_37last = load i64, i64* %envptr8856, align 8                                 ; load; *envptr8856
  %envptr8857 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8858 = getelementptr inbounds i64, i64* %envptr8857, i64 1                  ; &envptr8857[1]
  %rl3$_37drop_45right = load i64, i64* %envptr8858, align 8                         ; load; *envptr8858
  %cont7084 = call i64 @prim_car(i64 %EzT$fargs7085)                                 ; call prim_car
  %EzT$fargs = call i64 @prim_cdr(i64 %EzT$fargs7085)                                ; call prim_cdr
  %cloptr8859 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8861 = getelementptr inbounds i64, i64* %cloptr8859, i64 1                    ; &eptr8861[1]
  %eptr8862 = getelementptr inbounds i64, i64* %cloptr8859, i64 2                    ; &eptr8862[2]
  %eptr8863 = getelementptr inbounds i64, i64* %cloptr8859, i64 3                    ; &eptr8863[3]
  %eptr8864 = getelementptr inbounds i64, i64* %cloptr8859, i64 4                    ; &eptr8864[4]
  store i64 %cont7084, i64* %eptr8861                                                ; *eptr8861 = %cont7084
  store i64 %bIq$_37last, i64* %eptr8862                                             ; *eptr8862 = %bIq$_37last
  store i64 %U9V$f, i64* %eptr8863                                                   ; *eptr8863 = %U9V$f
  store i64 %EzT$fargs, i64* %eptr8864                                               ; *eptr8864 = %EzT$fargs
  %eptr8860 = getelementptr inbounds i64, i64* %cloptr8859, i64 0                    ; &cloptr8859[0]
  %f8865 = ptrtoint void(i64,i64,i64)* @lam8551 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8865, i64* %eptr8860                                                   ; store fptr
  %arg7323 = ptrtoint i64* %cloptr8859 to i64                                        ; closure cast; i64* -> i64
  %arg7321 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8866 = inttoptr i64 %rl3$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8866)                                         ; assert function application
  %i0ptr8867 = getelementptr inbounds i64, i64* %cloptr8866, i64 0                   ; &cloptr8866[0]
  %f8869 = load i64, i64* %i0ptr8867, align 8                                        ; load; *i0ptr8867
  %fptr8868 = inttoptr i64 %f8869 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8868(i64 %rl3$_37drop_45right, i64 %arg7323, i64 %EzT$fargs, i64 %arg7321); tail call
  ret void
}


define void @lam8551(i64 %env8552, i64 %_957086, i64 %a6980) {
  %envptr8870 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8871 = getelementptr inbounds i64, i64* %envptr8870, i64 4                  ; &envptr8870[4]
  %EzT$fargs = load i64, i64* %envptr8871, align 8                                   ; load; *envptr8871
  %envptr8872 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8873 = getelementptr inbounds i64, i64* %envptr8872, i64 3                  ; &envptr8872[3]
  %U9V$f = load i64, i64* %envptr8873, align 8                                       ; load; *envptr8873
  %envptr8874 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8875 = getelementptr inbounds i64, i64* %envptr8874, i64 2                  ; &envptr8874[2]
  %bIq$_37last = load i64, i64* %envptr8875, align 8                                 ; load; *envptr8875
  %envptr8876 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8877 = getelementptr inbounds i64, i64* %envptr8876, i64 1                  ; &envptr8876[1]
  %cont7084 = load i64, i64* %envptr8877, align 8                                    ; load; *envptr8877
  %cloptr8878 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8880 = getelementptr inbounds i64, i64* %cloptr8878, i64 1                    ; &eptr8880[1]
  %eptr8881 = getelementptr inbounds i64, i64* %cloptr8878, i64 2                    ; &eptr8881[2]
  %eptr8882 = getelementptr inbounds i64, i64* %cloptr8878, i64 3                    ; &eptr8882[3]
  store i64 %cont7084, i64* %eptr8880                                                ; *eptr8880 = %cont7084
  store i64 %bIq$_37last, i64* %eptr8881                                             ; *eptr8881 = %bIq$_37last
  store i64 %EzT$fargs, i64* %eptr8882                                               ; *eptr8882 = %EzT$fargs
  %eptr8879 = getelementptr inbounds i64, i64* %cloptr8878, i64 0                    ; &cloptr8878[0]
  %f8883 = ptrtoint void(i64,i64,i64)* @lam8549 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8883, i64* %eptr8879                                                   ; store fptr
  %arg7326 = ptrtoint i64* %cloptr8878 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst7090 = call i64 @prim_cons(i64 %arg7326, i64 %a6980)                     ; call prim_cons
  %cloptr8884 = inttoptr i64 %U9V$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8884)                                         ; assert function application
  %i0ptr8885 = getelementptr inbounds i64, i64* %cloptr8884, i64 0                   ; &cloptr8884[0]
  %f8887 = load i64, i64* %i0ptr8885, align 8                                        ; load; *i0ptr8885
  %fptr8886 = inttoptr i64 %f8887 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8886(i64 %U9V$f, i64 %cps_45lst7090)                ; tail call
  ret void
}


define void @lam8549(i64 %env8550, i64 %_957087, i64 %a6981) {
  %envptr8888 = inttoptr i64 %env8550 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8889 = getelementptr inbounds i64, i64* %envptr8888, i64 3                  ; &envptr8888[3]
  %EzT$fargs = load i64, i64* %envptr8889, align 8                                   ; load; *envptr8889
  %envptr8890 = inttoptr i64 %env8550 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8891 = getelementptr inbounds i64, i64* %envptr8890, i64 2                  ; &envptr8890[2]
  %bIq$_37last = load i64, i64* %envptr8891, align 8                                 ; load; *envptr8891
  %envptr8892 = inttoptr i64 %env8550 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8893 = getelementptr inbounds i64, i64* %envptr8892, i64 1                  ; &envptr8892[1]
  %cont7084 = load i64, i64* %envptr8893, align 8                                    ; load; *envptr8893
  %cloptr8894 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8896 = getelementptr inbounds i64, i64* %cloptr8894, i64 1                    ; &eptr8896[1]
  %eptr8897 = getelementptr inbounds i64, i64* %cloptr8894, i64 2                    ; &eptr8897[2]
  store i64 %cont7084, i64* %eptr8896                                                ; *eptr8896 = %cont7084
  store i64 %a6981, i64* %eptr8897                                                   ; *eptr8897 = %a6981
  %eptr8895 = getelementptr inbounds i64, i64* %cloptr8894, i64 0                    ; &cloptr8894[0]
  %f8898 = ptrtoint void(i64,i64,i64)* @lam8547 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8898, i64* %eptr8895                                                   ; store fptr
  %arg7328 = ptrtoint i64* %cloptr8894 to i64                                        ; closure cast; i64* -> i64
  %cloptr8899 = inttoptr i64 %bIq$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8899)                                         ; assert function application
  %i0ptr8900 = getelementptr inbounds i64, i64* %cloptr8899, i64 0                   ; &cloptr8899[0]
  %f8902 = load i64, i64* %i0ptr8900, align 8                                        ; load; *i0ptr8900
  %fptr8901 = inttoptr i64 %f8902 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8901(i64 %bIq$_37last, i64 %arg7328, i64 %EzT$fargs); tail call
  ret void
}


define void @lam8547(i64 %env8548, i64 %_957088, i64 %a6982) {
  %envptr8903 = inttoptr i64 %env8548 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8904 = getelementptr inbounds i64, i64* %envptr8903, i64 2                  ; &envptr8903[2]
  %a6981 = load i64, i64* %envptr8904, align 8                                       ; load; *envptr8904
  %envptr8905 = inttoptr i64 %env8548 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8906 = getelementptr inbounds i64, i64* %envptr8905, i64 1                  ; &envptr8905[1]
  %cont7084 = load i64, i64* %envptr8906, align 8                                    ; load; *envptr8906
  %retprim7089 = call i64 @prim_cons(i64 %a6981, i64 %a6982)                         ; call prim_cons
  %arg7333 = add i64 0, 0                                                            ; quoted ()
  %cloptr8907 = inttoptr i64 %cont7084 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8907)                                         ; assert function application
  %i0ptr8908 = getelementptr inbounds i64, i64* %cloptr8907, i64 0                   ; &cloptr8907[0]
  %f8910 = load i64, i64* %i0ptr8908, align 8                                        ; load; *i0ptr8908
  %fptr8909 = inttoptr i64 %f8910 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8909(i64 %cont7084, i64 %arg7333, i64 %retprim7089) ; tail call
  ret void
}


define void @lam8543(i64 %env8544, i64 %_957092, i64 %n4Y$_37foldl) {
  %envptr8911 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8912 = getelementptr inbounds i64, i64* %envptr8911, i64 2                  ; &envptr8911[2]
  %d1v$_37foldl1 = load i64, i64* %envptr8912, align 8                               ; load; *envptr8912
  %envptr8913 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8914 = getelementptr inbounds i64, i64* %envptr8913, i64 1                  ; &envptr8913[1]
  %K0A$_37length = load i64, i64* %envptr8914, align 8                               ; load; *envptr8914
  %cloptr8915 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8916 = getelementptr inbounds i64, i64* %cloptr8915, i64 0                    ; &cloptr8915[0]
  %f8917 = ptrtoint void(i64,i64,i64,i64)* @lam8541 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8917, i64* %eptr8916                                                   ; store fptr
  %oWl$_37_62 = ptrtoint i64* %cloptr8915 to i64                                     ; closure cast; i64* -> i64
  %cloptr8918 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8919 = getelementptr inbounds i64, i64* %cloptr8918, i64 0                    ; &cloptr8918[0]
  %f8920 = ptrtoint void(i64,i64,i64,i64)* @lam8538 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8920, i64* %eptr8919                                                   ; store fptr
  %eQu$_37_62_61 = ptrtoint i64* %cloptr8918 to i64                                  ; closure cast; i64* -> i64
  %arg7353 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7352 = add i64 0, 0                                                            ; quoted ()
  %dw7$_37append = call i64 @prim_make_45vector(i64 %arg7353, i64 %arg7352)          ; call prim_make_45vector
  %arg7355 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8921 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8923 = getelementptr inbounds i64, i64* %cloptr8921, i64 1                    ; &eptr8923[1]
  store i64 %dw7$_37append, i64* %eptr8923                                           ; *eptr8923 = %dw7$_37append
  %eptr8922 = getelementptr inbounds i64, i64* %cloptr8921, i64 0                    ; &cloptr8921[0]
  %f8924 = ptrtoint void(i64,i64,i64,i64)* @lam8532 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8924, i64* %eptr8922                                                   ; store fptr
  %arg7354 = ptrtoint i64* %cloptr8921 to i64                                        ; closure cast; i64* -> i64
  %eoK$_950 = call i64 @prim_vector_45set_33(i64 %dw7$_37append, i64 %arg7355, i64 %arg7354); call prim_vector_45set_33
  %arg7374 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7185 = call i64 @prim_vector_45ref(i64 %dw7$_37append, i64 %arg7374)       ; call prim_vector_45ref
  %cloptr8925 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8927 = getelementptr inbounds i64, i64* %cloptr8925, i64 1                    ; &eptr8927[1]
  %eptr8928 = getelementptr inbounds i64, i64* %cloptr8925, i64 2                    ; &eptr8928[2]
  %eptr8929 = getelementptr inbounds i64, i64* %cloptr8925, i64 3                    ; &eptr8929[3]
  store i64 %K0A$_37length, i64* %eptr8927                                           ; *eptr8927 = %K0A$_37length
  store i64 %d1v$_37foldl1, i64* %eptr8928                                           ; *eptr8928 = %d1v$_37foldl1
  store i64 %oWl$_37_62, i64* %eptr8929                                              ; *eptr8929 = %oWl$_37_62
  %eptr8926 = getelementptr inbounds i64, i64* %cloptr8925, i64 0                    ; &cloptr8925[0]
  %f8930 = ptrtoint void(i64,i64,i64)* @lam8524 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8930, i64* %eptr8926                                                   ; store fptr
  %arg7378 = ptrtoint i64* %cloptr8925 to i64                                        ; closure cast; i64* -> i64
  %arg7377 = add i64 0, 0                                                            ; quoted ()
  %cloptr8931 = inttoptr i64 %arg7378 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8931)                                         ; assert function application
  %i0ptr8932 = getelementptr inbounds i64, i64* %cloptr8931, i64 0                   ; &cloptr8931[0]
  %f8934 = load i64, i64* %i0ptr8932, align 8                                        ; load; *i0ptr8932
  %fptr8933 = inttoptr i64 %f8934 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8933(i64 %arg7378, i64 %arg7377, i64 %retprim7185)  ; tail call
  ret void
}


define void @lam8541(i64 %env8542, i64 %cont7093, i64 %FCx$a, i64 %Ir9$b) {
  %a6992 = call i64 @prim__60_61(i64 %FCx$a, i64 %Ir9$b)                             ; call prim__60_61
  %retprim7094 = call i64 @prim_not(i64 %a6992)                                      ; call prim_not
  %arg7344 = add i64 0, 0                                                            ; quoted ()
  %cloptr8935 = inttoptr i64 %cont7093 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8935)                                         ; assert function application
  %i0ptr8936 = getelementptr inbounds i64, i64* %cloptr8935, i64 0                   ; &cloptr8935[0]
  %f8938 = load i64, i64* %i0ptr8936, align 8                                        ; load; *i0ptr8936
  %fptr8937 = inttoptr i64 %f8938 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8937(i64 %cont7093, i64 %arg7344, i64 %retprim7094) ; tail call
  ret void
}


define void @lam8538(i64 %env8539, i64 %cont7095, i64 %wfs$a, i64 %POw$b) {
  %a6993 = call i64 @prim__60(i64 %wfs$a, i64 %POw$b)                                ; call prim__60
  %retprim7096 = call i64 @prim_not(i64 %a6993)                                      ; call prim_not
  %arg7350 = add i64 0, 0                                                            ; quoted ()
  %cloptr8939 = inttoptr i64 %cont7095 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8939)                                         ; assert function application
  %i0ptr8940 = getelementptr inbounds i64, i64* %cloptr8939, i64 0                   ; &cloptr8939[0]
  %f8942 = load i64, i64* %i0ptr8940, align 8                                        ; load; *i0ptr8940
  %fptr8941 = inttoptr i64 %f8942 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8941(i64 %cont7095, i64 %arg7350, i64 %retprim7096) ; tail call
  ret void
}


define void @lam8532(i64 %env8533, i64 %cont7182, i64 %KkP$ls0, i64 %jjg$ls1) {
  %envptr8943 = inttoptr i64 %env8533 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8944 = getelementptr inbounds i64, i64* %envptr8943, i64 1                  ; &envptr8943[1]
  %dw7$_37append = load i64, i64* %envptr8944, align 8                               ; load; *envptr8944
  %a6994 = call i64 @prim_null_63(i64 %KkP$ls0)                                      ; call prim_null_63
  %cmp8945 = icmp eq i64 %a6994, 15                                                  ; false?
  br i1 %cmp8945, label %else8947, label %then8946                                   ; if

then8946:
  %arg7359 = add i64 0, 0                                                            ; quoted ()
  %cloptr8948 = inttoptr i64 %cont7182 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8948)                                         ; assert function application
  %i0ptr8949 = getelementptr inbounds i64, i64* %cloptr8948, i64 0                   ; &cloptr8948[0]
  %f8951 = load i64, i64* %i0ptr8949, align 8                                        ; load; *i0ptr8949
  %fptr8950 = inttoptr i64 %f8951 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8950(i64 %cont7182, i64 %arg7359, i64 %jjg$ls1)     ; tail call
  ret void

else8947:
  %a6995 = call i64 @prim_car(i64 %KkP$ls0)                                          ; call prim_car
  %arg7362 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6996 = call i64 @prim_vector_45ref(i64 %dw7$_37append, i64 %arg7362)             ; call prim_vector_45ref
  %a6997 = call i64 @prim_cdr(i64 %KkP$ls0)                                          ; call prim_cdr
  %cloptr8952 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8954 = getelementptr inbounds i64, i64* %cloptr8952, i64 1                    ; &eptr8954[1]
  %eptr8955 = getelementptr inbounds i64, i64* %cloptr8952, i64 2                    ; &eptr8955[2]
  store i64 %a6995, i64* %eptr8954                                                   ; *eptr8954 = %a6995
  store i64 %cont7182, i64* %eptr8955                                                ; *eptr8955 = %cont7182
  %eptr8953 = getelementptr inbounds i64, i64* %cloptr8952, i64 0                    ; &cloptr8952[0]
  %f8956 = ptrtoint void(i64,i64,i64)* @lam8529 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8956, i64* %eptr8953                                                   ; store fptr
  %arg7367 = ptrtoint i64* %cloptr8952 to i64                                        ; closure cast; i64* -> i64
  %cloptr8957 = inttoptr i64 %a6996 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8957)                                         ; assert function application
  %i0ptr8958 = getelementptr inbounds i64, i64* %cloptr8957, i64 0                   ; &cloptr8957[0]
  %f8960 = load i64, i64* %i0ptr8958, align 8                                        ; load; *i0ptr8958
  %fptr8959 = inttoptr i64 %f8960 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8959(i64 %a6996, i64 %arg7367, i64 %a6997, i64 %jjg$ls1); tail call
  ret void
}


define void @lam8529(i64 %env8530, i64 %_957183, i64 %a6998) {
  %envptr8961 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8962 = getelementptr inbounds i64, i64* %envptr8961, i64 2                  ; &envptr8961[2]
  %cont7182 = load i64, i64* %envptr8962, align 8                                    ; load; *envptr8962
  %envptr8963 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8964 = getelementptr inbounds i64, i64* %envptr8963, i64 1                  ; &envptr8963[1]
  %a6995 = load i64, i64* %envptr8964, align 8                                       ; load; *envptr8964
  %retprim7184 = call i64 @prim_cons(i64 %a6995, i64 %a6998)                         ; call prim_cons
  %arg7372 = add i64 0, 0                                                            ; quoted ()
  %cloptr8965 = inttoptr i64 %cont7182 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8965)                                         ; assert function application
  %i0ptr8966 = getelementptr inbounds i64, i64* %cloptr8965, i64 0                   ; &cloptr8965[0]
  %f8968 = load i64, i64* %i0ptr8966, align 8                                        ; load; *i0ptr8966
  %fptr8967 = inttoptr i64 %f8968 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8967(i64 %cont7182, i64 %arg7372, i64 %retprim7184) ; tail call
  ret void
}


define void @lam8524(i64 %env8525, i64 %_957097, i64 %DZM$_37append) {
  %envptr8969 = inttoptr i64 %env8525 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8970 = getelementptr inbounds i64, i64* %envptr8969, i64 3                  ; &envptr8969[3]
  %oWl$_37_62 = load i64, i64* %envptr8970, align 8                                  ; load; *envptr8970
  %envptr8971 = inttoptr i64 %env8525 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8972 = getelementptr inbounds i64, i64* %envptr8971, i64 2                  ; &envptr8971[2]
  %d1v$_37foldl1 = load i64, i64* %envptr8972, align 8                               ; load; *envptr8972
  %envptr8973 = inttoptr i64 %env8525 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8974 = getelementptr inbounds i64, i64* %envptr8973, i64 1                  ; &envptr8973[1]
  %K0A$_37length = load i64, i64* %envptr8974, align 8                               ; load; *envptr8974
  %cloptr8975 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8976 = getelementptr inbounds i64, i64* %cloptr8975, i64 0                    ; &cloptr8975[0]
  %f8977 = ptrtoint void(i64,i64,i64)* @lam8522 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8977, i64* %eptr8976                                                   ; store fptr
  %Vbu$_37list_63 = ptrtoint i64* %cloptr8975 to i64                                 ; closure cast; i64* -> i64
  %cloptr8978 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8979 = getelementptr inbounds i64, i64* %cloptr8978, i64 0                    ; &cloptr8978[0]
  %f8980 = ptrtoint void(i64,i64,i64,i64)* @lam8482 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8980, i64* %eptr8979                                                   ; store fptr
  %TON$_37drop = ptrtoint i64* %cloptr8978 to i64                                    ; closure cast; i64* -> i64
  %cloptr8981 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8982 = getelementptr inbounds i64, i64* %cloptr8981, i64 0                    ; &cloptr8981[0]
  %f8983 = ptrtoint void(i64,i64,i64,i64)* @lam8442 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8983, i64* %eptr8982                                                   ; store fptr
  %Z1H$_37memv = ptrtoint i64* %cloptr8981 to i64                                    ; closure cast; i64* -> i64
  %cloptr8984 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8986 = getelementptr inbounds i64, i64* %cloptr8984, i64 1                    ; &eptr8986[1]
  store i64 %d1v$_37foldl1, i64* %eptr8986                                           ; *eptr8986 = %d1v$_37foldl1
  %eptr8985 = getelementptr inbounds i64, i64* %cloptr8984, i64 0                    ; &cloptr8984[0]
  %f8987 = ptrtoint void(i64,i64)* @lam8411 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8987, i64* %eptr8985                                                   ; store fptr
  %TOt$_37_47 = ptrtoint i64* %cloptr8984 to i64                                     ; closure cast; i64* -> i64
  %cloptr8988 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8989 = getelementptr inbounds i64, i64* %cloptr8988, i64 0                    ; &cloptr8988[0]
  %f8990 = ptrtoint void(i64,i64,i64)* @lam8403 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8990, i64* %eptr8989                                                   ; store fptr
  %Xr8$_37first = ptrtoint i64* %cloptr8988 to i64                                   ; closure cast; i64* -> i64
  %cloptr8991 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8992 = getelementptr inbounds i64, i64* %cloptr8991, i64 0                    ; &cloptr8991[0]
  %f8993 = ptrtoint void(i64,i64,i64)* @lam8400 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8993, i64* %eptr8992                                                   ; store fptr
  %Szo$_37second = ptrtoint i64* %cloptr8991 to i64                                  ; closure cast; i64* -> i64
  %cloptr8994 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8995 = getelementptr inbounds i64, i64* %cloptr8994, i64 0                    ; &cloptr8994[0]
  %f8996 = ptrtoint void(i64,i64,i64)* @lam8397 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8996, i64* %eptr8995                                                   ; store fptr
  %Rb1$_37third = ptrtoint i64* %cloptr8994 to i64                                   ; closure cast; i64* -> i64
  %cloptr8997 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8998 = getelementptr inbounds i64, i64* %cloptr8997, i64 0                    ; &cloptr8997[0]
  %f8999 = ptrtoint void(i64,i64,i64)* @lam8394 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8999, i64* %eptr8998                                                   ; store fptr
  %WiW$_37fourth = ptrtoint i64* %cloptr8997 to i64                                  ; closure cast; i64* -> i64
  %cloptr9000 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9001 = getelementptr inbounds i64, i64* %cloptr9000, i64 0                    ; &cloptr9000[0]
  %f9002 = ptrtoint void(i64,i64,i64)* @lam8391 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9002, i64* %eptr9001                                                   ; store fptr
  %Ue3$promise_63 = ptrtoint i64* %cloptr9000 to i64                                 ; closure cast; i64* -> i64
  %cloptr9003 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9004 = getelementptr inbounds i64, i64* %cloptr9003, i64 0                    ; &cloptr9003[0]
  %f9005 = ptrtoint void(i64,i64)* @lam8385 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9005, i64* %eptr9004                                                   ; store fptr
  %arg7640 = ptrtoint i64* %cloptr9003 to i64                                        ; closure cast; i64* -> i64
  %cloptr9006 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9008 = getelementptr inbounds i64, i64* %cloptr9006, i64 1                    ; &eptr9008[1]
  %eptr9009 = getelementptr inbounds i64, i64* %cloptr9006, i64 2                    ; &eptr9009[2]
  %eptr9010 = getelementptr inbounds i64, i64* %cloptr9006, i64 3                    ; &eptr9010[3]
  store i64 %K0A$_37length, i64* %eptr9008                                           ; *eptr9008 = %K0A$_37length
  store i64 %oWl$_37_62, i64* %eptr9009                                              ; *eptr9009 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9010                                             ; *eptr9010 = %TON$_37drop
  %eptr9007 = getelementptr inbounds i64, i64* %cloptr9006, i64 0                    ; &cloptr9006[0]
  %f9011 = ptrtoint void(i64,i64,i64)* @lam8382 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9011, i64* %eptr9007                                                   ; store fptr
  %arg7639 = ptrtoint i64* %cloptr9006 to i64                                        ; closure cast; i64* -> i64
  %rva8125 = add i64 0, 0                                                            ; quoted ()
  %rva8124 = call i64 @prim_cons(i64 %arg7639, i64 %rva8125)                         ; call prim_cons
  %cloptr9012 = inttoptr i64 %arg7640 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9012)                                         ; assert function application
  %i0ptr9013 = getelementptr inbounds i64, i64* %cloptr9012, i64 0                   ; &cloptr9012[0]
  %f9015 = load i64, i64* %i0ptr9013, align 8                                        ; load; *i0ptr9013
  %fptr9014 = inttoptr i64 %f9015 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9014(i64 %arg7640, i64 %rva8124)                    ; tail call
  ret void
}


define void @lam8522(i64 %env8523, i64 %cont7098, i64 %eWd$a) {
  %arg7380 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %KYW$a = call i64 @prim_make_45vector(i64 %arg7380, i64 %eWd$a)                    ; call prim_make_45vector
  %cloptr9016 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9017 = getelementptr inbounds i64, i64* %cloptr9016, i64 0                    ; &cloptr9016[0]
  %f9018 = ptrtoint void(i64,i64,i64)* @lam8519 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9018, i64* %eptr9017                                                   ; store fptr
  %arg7383 = ptrtoint i64* %cloptr9016 to i64                                        ; closure cast; i64* -> i64
  %cloptr9019 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9021 = getelementptr inbounds i64, i64* %cloptr9019, i64 1                    ; &eptr9021[1]
  %eptr9022 = getelementptr inbounds i64, i64* %cloptr9019, i64 2                    ; &eptr9022[2]
  store i64 %KYW$a, i64* %eptr9021                                                   ; *eptr9021 = %KYW$a
  store i64 %cont7098, i64* %eptr9022                                                ; *eptr9022 = %cont7098
  %eptr9020 = getelementptr inbounds i64, i64* %cloptr9019, i64 0                    ; &cloptr9019[0]
  %f9023 = ptrtoint void(i64,i64,i64)* @lam8516 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9023, i64* %eptr9020                                                   ; store fptr
  %arg7382 = ptrtoint i64* %cloptr9019 to i64                                        ; closure cast; i64* -> i64
  %cloptr9024 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9026 = getelementptr inbounds i64, i64* %cloptr9024, i64 1                    ; &eptr9026[1]
  %eptr9027 = getelementptr inbounds i64, i64* %cloptr9024, i64 2                    ; &eptr9027[2]
  store i64 %KYW$a, i64* %eptr9026                                                   ; *eptr9026 = %KYW$a
  store i64 %cont7098, i64* %eptr9027                                                ; *eptr9027 = %cont7098
  %eptr9025 = getelementptr inbounds i64, i64* %cloptr9024, i64 0                    ; &cloptr9024[0]
  %f9028 = ptrtoint void(i64,i64,i64)* @lam8499 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9028, i64* %eptr9025                                                   ; store fptr
  %arg7381 = ptrtoint i64* %cloptr9024 to i64                                        ; closure cast; i64* -> i64
  %cloptr9029 = inttoptr i64 %arg7383 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9029)                                         ; assert function application
  %i0ptr9030 = getelementptr inbounds i64, i64* %cloptr9029, i64 0                   ; &cloptr9029[0]
  %f9032 = load i64, i64* %i0ptr9030, align 8                                        ; load; *i0ptr9030
  %fptr9031 = inttoptr i64 %f9032 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9031(i64 %arg7383, i64 %arg7382, i64 %arg7381)      ; tail call
  ret void
}


define void @lam8519(i64 %env8520, i64 %cont7104, i64 %Kua$k) {
  %arg7385 = add i64 0, 0                                                            ; quoted ()
  %cloptr9033 = inttoptr i64 %cont7104 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9033)                                         ; assert function application
  %i0ptr9034 = getelementptr inbounds i64, i64* %cloptr9033, i64 0                   ; &cloptr9033[0]
  %f9036 = load i64, i64* %i0ptr9034, align 8                                        ; load; *i0ptr9034
  %fptr9035 = inttoptr i64 %f9036 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9035(i64 %cont7104, i64 %arg7385, i64 %Kua$k)       ; tail call
  ret void
}


define void @lam8516(i64 %env8517, i64 %_957099, i64 %Ri5$cc) {
  %envptr9037 = inttoptr i64 %env8517 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9038 = getelementptr inbounds i64, i64* %envptr9037, i64 2                  ; &envptr9037[2]
  %cont7098 = load i64, i64* %envptr9038, align 8                                    ; load; *envptr9038
  %envptr9039 = inttoptr i64 %env8517 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9040 = getelementptr inbounds i64, i64* %envptr9039, i64 1                  ; &envptr9039[1]
  %KYW$a = load i64, i64* %envptr9040, align 8                                       ; load; *envptr9040
  %arg7387 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7387)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9041 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9041, label %else9043, label %then9042                                   ; if

then9042:
  %arg7391 = add i64 0, 0                                                            ; quoted ()
  %arg7390 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9044 = inttoptr i64 %cont7098 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9044)                                         ; assert function application
  %i0ptr9045 = getelementptr inbounds i64, i64* %cloptr9044, i64 0                   ; &cloptr9044[0]
  %f9047 = load i64, i64* %i0ptr9045, align 8                                        ; load; *i0ptr9045
  %fptr9046 = inttoptr i64 %f9047 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9046(i64 %cont7098, i64 %arg7391, i64 %arg7390)     ; tail call
  ret void

else9043:
  %arg7393 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7393)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9048 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9048, label %else9050, label %then9049                                   ; if

then9049:
  %arg7396 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7396)                     ; call prim_vector_45ref
  %retprim7103 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9051 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9053 = getelementptr inbounds i64, i64* %cloptr9051, i64 1                    ; &eptr9053[1]
  %eptr9054 = getelementptr inbounds i64, i64* %cloptr9051, i64 2                    ; &eptr9054[2]
  %eptr9055 = getelementptr inbounds i64, i64* %cloptr9051, i64 3                    ; &eptr9055[3]
  store i64 %Ri5$cc, i64* %eptr9053                                                  ; *eptr9053 = %Ri5$cc
  store i64 %KYW$a, i64* %eptr9054                                                   ; *eptr9054 = %KYW$a
  store i64 %cont7098, i64* %eptr9055                                                ; *eptr9055 = %cont7098
  %eptr9052 = getelementptr inbounds i64, i64* %cloptr9051, i64 0                    ; &cloptr9051[0]
  %f9056 = ptrtoint void(i64,i64,i64)* @lam8509 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9056, i64* %eptr9052                                                   ; store fptr
  %arg7401 = ptrtoint i64* %cloptr9051 to i64                                        ; closure cast; i64* -> i64
  %arg7400 = add i64 0, 0                                                            ; quoted ()
  %cloptr9057 = inttoptr i64 %arg7401 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9057)                                         ; assert function application
  %i0ptr9058 = getelementptr inbounds i64, i64* %cloptr9057, i64 0                   ; &cloptr9057[0]
  %f9060 = load i64, i64* %i0ptr9058, align 8                                        ; load; *i0ptr9058
  %fptr9059 = inttoptr i64 %f9060 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9059(i64 %arg7401, i64 %arg7400, i64 %retprim7103)  ; tail call
  ret void

else9050:
  %arg7415 = add i64 0, 0                                                            ; quoted ()
  %arg7414 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9061 = inttoptr i64 %cont7098 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9061)                                         ; assert function application
  %i0ptr9062 = getelementptr inbounds i64, i64* %cloptr9061, i64 0                   ; &cloptr9061[0]
  %f9064 = load i64, i64* %i0ptr9062, align 8                                        ; load; *i0ptr9062
  %fptr9063 = inttoptr i64 %f9064 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9063(i64 %cont7098, i64 %arg7415, i64 %arg7414)     ; tail call
  ret void
}


define void @lam8509(i64 %env8510, i64 %_957100, i64 %q8I$b) {
  %envptr9065 = inttoptr i64 %env8510 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9066 = getelementptr inbounds i64, i64* %envptr9065, i64 3                  ; &envptr9065[3]
  %cont7098 = load i64, i64* %envptr9066, align 8                                    ; load; *envptr9066
  %envptr9067 = inttoptr i64 %env8510 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9068 = getelementptr inbounds i64, i64* %envptr9067, i64 2                  ; &envptr9067[2]
  %KYW$a = load i64, i64* %envptr9068, align 8                                       ; load; *envptr9068
  %envptr9069 = inttoptr i64 %env8510 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9070 = getelementptr inbounds i64, i64* %envptr9069, i64 1                  ; &envptr9069[1]
  %Ri5$cc = load i64, i64* %envptr9070, align 8                                      ; load; *envptr9070
  %arg7402 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7402)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7406 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7102 = call i64 @prim_vector_45set_33(i64 %KYW$a, i64 %arg7406, i64 %a7005); call prim_vector_45set_33
  %cloptr9071 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9073 = getelementptr inbounds i64, i64* %cloptr9071, i64 1                    ; &eptr9073[1]
  %eptr9074 = getelementptr inbounds i64, i64* %cloptr9071, i64 2                    ; &eptr9074[2]
  store i64 %Ri5$cc, i64* %eptr9073                                                  ; *eptr9073 = %Ri5$cc
  store i64 %cont7098, i64* %eptr9074                                                ; *eptr9074 = %cont7098
  %eptr9072 = getelementptr inbounds i64, i64* %cloptr9071, i64 0                    ; &cloptr9071[0]
  %f9075 = ptrtoint void(i64,i64,i64)* @lam8505 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9075, i64* %eptr9072                                                   ; store fptr
  %arg7410 = ptrtoint i64* %cloptr9071 to i64                                        ; closure cast; i64* -> i64
  %arg7409 = add i64 0, 0                                                            ; quoted ()
  %cloptr9076 = inttoptr i64 %arg7410 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9076)                                         ; assert function application
  %i0ptr9077 = getelementptr inbounds i64, i64* %cloptr9076, i64 0                   ; &cloptr9076[0]
  %f9079 = load i64, i64* %i0ptr9077, align 8                                        ; load; *i0ptr9077
  %fptr9078 = inttoptr i64 %f9079 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9078(i64 %arg7410, i64 %arg7409, i64 %retprim7102)  ; tail call
  ret void
}


define void @lam8505(i64 %env8506, i64 %_957101, i64 %qec$_950) {
  %envptr9080 = inttoptr i64 %env8506 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9081 = getelementptr inbounds i64, i64* %envptr9080, i64 2                  ; &envptr9080[2]
  %cont7098 = load i64, i64* %envptr9081, align 8                                    ; load; *envptr9081
  %envptr9082 = inttoptr i64 %env8506 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9083 = getelementptr inbounds i64, i64* %envptr9082, i64 1                  ; &envptr9082[1]
  %Ri5$cc = load i64, i64* %envptr9083, align 8                                      ; load; *envptr9083
  %cloptr9084 = inttoptr i64 %Ri5$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9084)                                         ; assert function application
  %i0ptr9085 = getelementptr inbounds i64, i64* %cloptr9084, i64 0                   ; &cloptr9084[0]
  %f9087 = load i64, i64* %i0ptr9085, align 8                                        ; load; *i0ptr9085
  %fptr9086 = inttoptr i64 %f9087 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9086(i64 %Ri5$cc, i64 %cont7098, i64 %Ri5$cc)       ; tail call
  ret void
}


define void @lam8499(i64 %env8500, i64 %_957099, i64 %Ri5$cc) {
  %envptr9088 = inttoptr i64 %env8500 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9089 = getelementptr inbounds i64, i64* %envptr9088, i64 2                  ; &envptr9088[2]
  %cont7098 = load i64, i64* %envptr9089, align 8                                    ; load; *envptr9089
  %envptr9090 = inttoptr i64 %env8500 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9091 = getelementptr inbounds i64, i64* %envptr9090, i64 1                  ; &envptr9090[1]
  %KYW$a = load i64, i64* %envptr9091, align 8                                       ; load; *envptr9091
  %arg7417 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7417)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9092 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9092, label %else9094, label %then9093                                   ; if

then9093:
  %arg7421 = add i64 0, 0                                                            ; quoted ()
  %arg7420 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9095 = inttoptr i64 %cont7098 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9095)                                         ; assert function application
  %i0ptr9096 = getelementptr inbounds i64, i64* %cloptr9095, i64 0                   ; &cloptr9095[0]
  %f9098 = load i64, i64* %i0ptr9096, align 8                                        ; load; *i0ptr9096
  %fptr9097 = inttoptr i64 %f9098 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9097(i64 %cont7098, i64 %arg7421, i64 %arg7420)     ; tail call
  ret void

else9094:
  %arg7423 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7423)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9099 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9099, label %else9101, label %then9100                                   ; if

then9100:
  %arg7426 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7426)                     ; call prim_vector_45ref
  %retprim7103 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9102 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9104 = getelementptr inbounds i64, i64* %cloptr9102, i64 1                    ; &eptr9104[1]
  %eptr9105 = getelementptr inbounds i64, i64* %cloptr9102, i64 2                    ; &eptr9105[2]
  %eptr9106 = getelementptr inbounds i64, i64* %cloptr9102, i64 3                    ; &eptr9106[3]
  store i64 %Ri5$cc, i64* %eptr9104                                                  ; *eptr9104 = %Ri5$cc
  store i64 %KYW$a, i64* %eptr9105                                                   ; *eptr9105 = %KYW$a
  store i64 %cont7098, i64* %eptr9106                                                ; *eptr9106 = %cont7098
  %eptr9103 = getelementptr inbounds i64, i64* %cloptr9102, i64 0                    ; &cloptr9102[0]
  %f9107 = ptrtoint void(i64,i64,i64)* @lam8492 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9107, i64* %eptr9103                                                   ; store fptr
  %arg7431 = ptrtoint i64* %cloptr9102 to i64                                        ; closure cast; i64* -> i64
  %arg7430 = add i64 0, 0                                                            ; quoted ()
  %cloptr9108 = inttoptr i64 %arg7431 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9108)                                         ; assert function application
  %i0ptr9109 = getelementptr inbounds i64, i64* %cloptr9108, i64 0                   ; &cloptr9108[0]
  %f9111 = load i64, i64* %i0ptr9109, align 8                                        ; load; *i0ptr9109
  %fptr9110 = inttoptr i64 %f9111 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9110(i64 %arg7431, i64 %arg7430, i64 %retprim7103)  ; tail call
  ret void

else9101:
  %arg7445 = add i64 0, 0                                                            ; quoted ()
  %arg7444 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9112 = inttoptr i64 %cont7098 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9112)                                         ; assert function application
  %i0ptr9113 = getelementptr inbounds i64, i64* %cloptr9112, i64 0                   ; &cloptr9112[0]
  %f9115 = load i64, i64* %i0ptr9113, align 8                                        ; load; *i0ptr9113
  %fptr9114 = inttoptr i64 %f9115 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9114(i64 %cont7098, i64 %arg7445, i64 %arg7444)     ; tail call
  ret void
}


define void @lam8492(i64 %env8493, i64 %_957100, i64 %q8I$b) {
  %envptr9116 = inttoptr i64 %env8493 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9117 = getelementptr inbounds i64, i64* %envptr9116, i64 3                  ; &envptr9116[3]
  %cont7098 = load i64, i64* %envptr9117, align 8                                    ; load; *envptr9117
  %envptr9118 = inttoptr i64 %env8493 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9119 = getelementptr inbounds i64, i64* %envptr9118, i64 2                  ; &envptr9118[2]
  %KYW$a = load i64, i64* %envptr9119, align 8                                       ; load; *envptr9119
  %envptr9120 = inttoptr i64 %env8493 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9121 = getelementptr inbounds i64, i64* %envptr9120, i64 1                  ; &envptr9120[1]
  %Ri5$cc = load i64, i64* %envptr9121, align 8                                      ; load; *envptr9121
  %arg7432 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %KYW$a, i64 %arg7432)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7436 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7102 = call i64 @prim_vector_45set_33(i64 %KYW$a, i64 %arg7436, i64 %a7005); call prim_vector_45set_33
  %cloptr9122 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9124 = getelementptr inbounds i64, i64* %cloptr9122, i64 1                    ; &eptr9124[1]
  %eptr9125 = getelementptr inbounds i64, i64* %cloptr9122, i64 2                    ; &eptr9125[2]
  store i64 %Ri5$cc, i64* %eptr9124                                                  ; *eptr9124 = %Ri5$cc
  store i64 %cont7098, i64* %eptr9125                                                ; *eptr9125 = %cont7098
  %eptr9123 = getelementptr inbounds i64, i64* %cloptr9122, i64 0                    ; &cloptr9122[0]
  %f9126 = ptrtoint void(i64,i64,i64)* @lam8488 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9126, i64* %eptr9123                                                   ; store fptr
  %arg7440 = ptrtoint i64* %cloptr9122 to i64                                        ; closure cast; i64* -> i64
  %arg7439 = add i64 0, 0                                                            ; quoted ()
  %cloptr9127 = inttoptr i64 %arg7440 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9127)                                         ; assert function application
  %i0ptr9128 = getelementptr inbounds i64, i64* %cloptr9127, i64 0                   ; &cloptr9127[0]
  %f9130 = load i64, i64* %i0ptr9128, align 8                                        ; load; *i0ptr9128
  %fptr9129 = inttoptr i64 %f9130 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9129(i64 %arg7440, i64 %arg7439, i64 %retprim7102)  ; tail call
  ret void
}


define void @lam8488(i64 %env8489, i64 %_957101, i64 %qec$_950) {
  %envptr9131 = inttoptr i64 %env8489 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9132 = getelementptr inbounds i64, i64* %envptr9131, i64 2                  ; &envptr9131[2]
  %cont7098 = load i64, i64* %envptr9132, align 8                                    ; load; *envptr9132
  %envptr9133 = inttoptr i64 %env8489 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9134 = getelementptr inbounds i64, i64* %envptr9133, i64 1                  ; &envptr9133[1]
  %Ri5$cc = load i64, i64* %envptr9134, align 8                                      ; load; *envptr9134
  %cloptr9135 = inttoptr i64 %Ri5$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9135)                                         ; assert function application
  %i0ptr9136 = getelementptr inbounds i64, i64* %cloptr9135, i64 0                   ; &cloptr9135[0]
  %f9138 = load i64, i64* %i0ptr9136, align 8                                        ; load; *i0ptr9136
  %fptr9137 = inttoptr i64 %f9138 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9137(i64 %Ri5$cc, i64 %cont7098, i64 %Ri5$cc)       ; tail call
  ret void
}


define void @lam8482(i64 %env8483, i64 %cont7105, i64 %QCh$lst, i64 %xgo$n) {
  %arg7448 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %jHH$lst = call i64 @prim_make_45vector(i64 %arg7448, i64 %QCh$lst)                ; call prim_make_45vector
  %arg7450 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Y5T$n = call i64 @prim_make_45vector(i64 %arg7450, i64 %xgo$n)                    ; call prim_make_45vector
  %cloptr9139 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9140 = getelementptr inbounds i64, i64* %cloptr9139, i64 0                    ; &cloptr9139[0]
  %f9141 = ptrtoint void(i64,i64,i64)* @lam8478 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9141, i64* %eptr9140                                                   ; store fptr
  %arg7453 = ptrtoint i64* %cloptr9139 to i64                                        ; closure cast; i64* -> i64
  %cloptr9142 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9144 = getelementptr inbounds i64, i64* %cloptr9142, i64 1                    ; &eptr9144[1]
  %eptr9145 = getelementptr inbounds i64, i64* %cloptr9142, i64 2                    ; &eptr9145[2]
  %eptr9146 = getelementptr inbounds i64, i64* %cloptr9142, i64 3                    ; &eptr9146[3]
  store i64 %Y5T$n, i64* %eptr9144                                                   ; *eptr9144 = %Y5T$n
  store i64 %jHH$lst, i64* %eptr9145                                                 ; *eptr9145 = %jHH$lst
  store i64 %cont7105, i64* %eptr9146                                                ; *eptr9146 = %cont7105
  %eptr9143 = getelementptr inbounds i64, i64* %cloptr9142, i64 0                    ; &cloptr9142[0]
  %f9147 = ptrtoint void(i64,i64,i64)* @lam8476 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9147, i64* %eptr9143                                                   ; store fptr
  %arg7452 = ptrtoint i64* %cloptr9142 to i64                                        ; closure cast; i64* -> i64
  %cloptr9148 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9150 = getelementptr inbounds i64, i64* %cloptr9148, i64 1                    ; &eptr9150[1]
  %eptr9151 = getelementptr inbounds i64, i64* %cloptr9148, i64 2                    ; &eptr9151[2]
  %eptr9152 = getelementptr inbounds i64, i64* %cloptr9148, i64 3                    ; &eptr9152[3]
  store i64 %Y5T$n, i64* %eptr9150                                                   ; *eptr9150 = %Y5T$n
  store i64 %jHH$lst, i64* %eptr9151                                                 ; *eptr9151 = %jHH$lst
  store i64 %cont7105, i64* %eptr9152                                                ; *eptr9152 = %cont7105
  %eptr9149 = getelementptr inbounds i64, i64* %cloptr9148, i64 0                    ; &cloptr9148[0]
  %f9153 = ptrtoint void(i64,i64,i64)* @lam8459 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9153, i64* %eptr9149                                                   ; store fptr
  %arg7451 = ptrtoint i64* %cloptr9148 to i64                                        ; closure cast; i64* -> i64
  %cloptr9154 = inttoptr i64 %arg7453 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9154)                                         ; assert function application
  %i0ptr9155 = getelementptr inbounds i64, i64* %cloptr9154, i64 0                   ; &cloptr9154[0]
  %f9157 = load i64, i64* %i0ptr9155, align 8                                        ; load; *i0ptr9155
  %fptr9156 = inttoptr i64 %f9157 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9156(i64 %arg7453, i64 %arg7452, i64 %arg7451)      ; tail call
  ret void
}


define void @lam8478(i64 %env8479, i64 %cont7112, i64 %rYA$u) {
  %cloptr9158 = inttoptr i64 %rYA$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9158)                                         ; assert function application
  %i0ptr9159 = getelementptr inbounds i64, i64* %cloptr9158, i64 0                   ; &cloptr9158[0]
  %f9161 = load i64, i64* %i0ptr9159, align 8                                        ; load; *i0ptr9159
  %fptr9160 = inttoptr i64 %f9161 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9160(i64 %rYA$u, i64 %cont7112, i64 %rYA$u)         ; tail call
  ret void
}


define void @lam8476(i64 %env8477, i64 %_957106, i64 %LIw$cc) {
  %envptr9162 = inttoptr i64 %env8477 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9163 = getelementptr inbounds i64, i64* %envptr9162, i64 3                  ; &envptr9162[3]
  %cont7105 = load i64, i64* %envptr9163, align 8                                    ; load; *envptr9163
  %envptr9164 = inttoptr i64 %env8477 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9165 = getelementptr inbounds i64, i64* %envptr9164, i64 2                  ; &envptr9164[2]
  %jHH$lst = load i64, i64* %envptr9165, align 8                                     ; load; *envptr9165
  %envptr9166 = inttoptr i64 %env8477 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9167 = getelementptr inbounds i64, i64* %envptr9166, i64 1                  ; &envptr9166[1]
  %Y5T$n = load i64, i64* %envptr9167, align 8                                       ; load; *envptr9167
  %arg7457 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %Y5T$n, i64 %arg7457)                     ; call prim_vector_45ref
  %arg7460 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7460, i64 %a7006)                              ; call prim__61
  %cmp9168 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9168, label %else9170, label %then9169                                   ; if

then9169:
  %arg7461 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7107 = call i64 @prim_vector_45ref(i64 %jHH$lst, i64 %arg7461)             ; call prim_vector_45ref
  %arg7464 = add i64 0, 0                                                            ; quoted ()
  %cloptr9171 = inttoptr i64 %cont7105 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9171)                                         ; assert function application
  %i0ptr9172 = getelementptr inbounds i64, i64* %cloptr9171, i64 0                   ; &cloptr9171[0]
  %f9174 = load i64, i64* %i0ptr9172, align 8                                        ; load; *i0ptr9172
  %fptr9173 = inttoptr i64 %f9174 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9173(i64 %cont7105, i64 %arg7464, i64 %retprim7107) ; tail call
  ret void

else9170:
  %arg7466 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %jHH$lst, i64 %arg7466)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7470 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7111 = call i64 @prim_vector_45set_33(i64 %jHH$lst, i64 %arg7470, i64 %a7009); call prim_vector_45set_33
  %cloptr9175 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9177 = getelementptr inbounds i64, i64* %cloptr9175, i64 1                    ; &eptr9177[1]
  %eptr9178 = getelementptr inbounds i64, i64* %cloptr9175, i64 2                    ; &eptr9178[2]
  %eptr9179 = getelementptr inbounds i64, i64* %cloptr9175, i64 3                    ; &eptr9179[3]
  store i64 %Y5T$n, i64* %eptr9177                                                   ; *eptr9177 = %Y5T$n
  store i64 %cont7105, i64* %eptr9178                                                ; *eptr9178 = %cont7105
  store i64 %LIw$cc, i64* %eptr9179                                                  ; *eptr9179 = %LIw$cc
  %eptr9176 = getelementptr inbounds i64, i64* %cloptr9175, i64 0                    ; &cloptr9175[0]
  %f9180 = ptrtoint void(i64,i64,i64)* @lam8470 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9180, i64* %eptr9176                                                   ; store fptr
  %arg7474 = ptrtoint i64* %cloptr9175 to i64                                        ; closure cast; i64* -> i64
  %arg7473 = add i64 0, 0                                                            ; quoted ()
  %cloptr9181 = inttoptr i64 %arg7474 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9181)                                         ; assert function application
  %i0ptr9182 = getelementptr inbounds i64, i64* %cloptr9181, i64 0                   ; &cloptr9181[0]
  %f9184 = load i64, i64* %i0ptr9182, align 8                                        ; load; *i0ptr9182
  %fptr9183 = inttoptr i64 %f9184 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9183(i64 %arg7474, i64 %arg7473, i64 %retprim7111)  ; tail call
  ret void
}


define void @lam8470(i64 %env8471, i64 %_957108, i64 %Pda$_950) {
  %envptr9185 = inttoptr i64 %env8471 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9186 = getelementptr inbounds i64, i64* %envptr9185, i64 3                  ; &envptr9185[3]
  %LIw$cc = load i64, i64* %envptr9186, align 8                                      ; load; *envptr9186
  %envptr9187 = inttoptr i64 %env8471 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9188 = getelementptr inbounds i64, i64* %envptr9187, i64 2                  ; &envptr9187[2]
  %cont7105 = load i64, i64* %envptr9188, align 8                                    ; load; *envptr9188
  %envptr9189 = inttoptr i64 %env8471 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9190 = getelementptr inbounds i64, i64* %envptr9189, i64 1                  ; &envptr9189[1]
  %Y5T$n = load i64, i64* %envptr9190, align 8                                       ; load; *envptr9190
  %arg7475 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %Y5T$n, i64 %arg7475)                     ; call prim_vector_45ref
  %arg7477 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7477)                              ; call prim__45
  %arg7480 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7110 = call i64 @prim_vector_45set_33(i64 %Y5T$n, i64 %arg7480, i64 %a7011); call prim_vector_45set_33
  %cloptr9191 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9193 = getelementptr inbounds i64, i64* %cloptr9191, i64 1                    ; &eptr9193[1]
  %eptr9194 = getelementptr inbounds i64, i64* %cloptr9191, i64 2                    ; &eptr9194[2]
  store i64 %cont7105, i64* %eptr9193                                                ; *eptr9193 = %cont7105
  store i64 %LIw$cc, i64* %eptr9194                                                  ; *eptr9194 = %LIw$cc
  %eptr9192 = getelementptr inbounds i64, i64* %cloptr9191, i64 0                    ; &cloptr9191[0]
  %f9195 = ptrtoint void(i64,i64,i64)* @lam8465 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9195, i64* %eptr9192                                                   ; store fptr
  %arg7484 = ptrtoint i64* %cloptr9191 to i64                                        ; closure cast; i64* -> i64
  %arg7483 = add i64 0, 0                                                            ; quoted ()
  %cloptr9196 = inttoptr i64 %arg7484 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9196)                                         ; assert function application
  %i0ptr9197 = getelementptr inbounds i64, i64* %cloptr9196, i64 0                   ; &cloptr9196[0]
  %f9199 = load i64, i64* %i0ptr9197, align 8                                        ; load; *i0ptr9197
  %fptr9198 = inttoptr i64 %f9199 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9198(i64 %arg7484, i64 %arg7483, i64 %retprim7110)  ; tail call
  ret void
}


define void @lam8465(i64 %env8466, i64 %_957109, i64 %zLq$_951) {
  %envptr9200 = inttoptr i64 %env8466 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9201 = getelementptr inbounds i64, i64* %envptr9200, i64 2                  ; &envptr9200[2]
  %LIw$cc = load i64, i64* %envptr9201, align 8                                      ; load; *envptr9201
  %envptr9202 = inttoptr i64 %env8466 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9203 = getelementptr inbounds i64, i64* %envptr9202, i64 1                  ; &envptr9202[1]
  %cont7105 = load i64, i64* %envptr9203, align 8                                    ; load; *envptr9203
  %cloptr9204 = inttoptr i64 %LIw$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9204)                                         ; assert function application
  %i0ptr9205 = getelementptr inbounds i64, i64* %cloptr9204, i64 0                   ; &cloptr9204[0]
  %f9207 = load i64, i64* %i0ptr9205, align 8                                        ; load; *i0ptr9205
  %fptr9206 = inttoptr i64 %f9207 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9206(i64 %LIw$cc, i64 %cont7105, i64 %LIw$cc)       ; tail call
  ret void
}


define void @lam8459(i64 %env8460, i64 %_957106, i64 %LIw$cc) {
  %envptr9208 = inttoptr i64 %env8460 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9209 = getelementptr inbounds i64, i64* %envptr9208, i64 3                  ; &envptr9208[3]
  %cont7105 = load i64, i64* %envptr9209, align 8                                    ; load; *envptr9209
  %envptr9210 = inttoptr i64 %env8460 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9211 = getelementptr inbounds i64, i64* %envptr9210, i64 2                  ; &envptr9210[2]
  %jHH$lst = load i64, i64* %envptr9211, align 8                                     ; load; *envptr9211
  %envptr9212 = inttoptr i64 %env8460 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9213 = getelementptr inbounds i64, i64* %envptr9212, i64 1                  ; &envptr9212[1]
  %Y5T$n = load i64, i64* %envptr9213, align 8                                       ; load; *envptr9213
  %arg7488 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %Y5T$n, i64 %arg7488)                     ; call prim_vector_45ref
  %arg7491 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7491, i64 %a7006)                              ; call prim__61
  %cmp9214 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9214, label %else9216, label %then9215                                   ; if

then9215:
  %arg7492 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7107 = call i64 @prim_vector_45ref(i64 %jHH$lst, i64 %arg7492)             ; call prim_vector_45ref
  %arg7495 = add i64 0, 0                                                            ; quoted ()
  %cloptr9217 = inttoptr i64 %cont7105 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9217)                                         ; assert function application
  %i0ptr9218 = getelementptr inbounds i64, i64* %cloptr9217, i64 0                   ; &cloptr9217[0]
  %f9220 = load i64, i64* %i0ptr9218, align 8                                        ; load; *i0ptr9218
  %fptr9219 = inttoptr i64 %f9220 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9219(i64 %cont7105, i64 %arg7495, i64 %retprim7107) ; tail call
  ret void

else9216:
  %arg7497 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %jHH$lst, i64 %arg7497)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7501 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7111 = call i64 @prim_vector_45set_33(i64 %jHH$lst, i64 %arg7501, i64 %a7009); call prim_vector_45set_33
  %cloptr9221 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9223 = getelementptr inbounds i64, i64* %cloptr9221, i64 1                    ; &eptr9223[1]
  %eptr9224 = getelementptr inbounds i64, i64* %cloptr9221, i64 2                    ; &eptr9224[2]
  %eptr9225 = getelementptr inbounds i64, i64* %cloptr9221, i64 3                    ; &eptr9225[3]
  store i64 %Y5T$n, i64* %eptr9223                                                   ; *eptr9223 = %Y5T$n
  store i64 %cont7105, i64* %eptr9224                                                ; *eptr9224 = %cont7105
  store i64 %LIw$cc, i64* %eptr9225                                                  ; *eptr9225 = %LIw$cc
  %eptr9222 = getelementptr inbounds i64, i64* %cloptr9221, i64 0                    ; &cloptr9221[0]
  %f9226 = ptrtoint void(i64,i64,i64)* @lam8453 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9226, i64* %eptr9222                                                   ; store fptr
  %arg7505 = ptrtoint i64* %cloptr9221 to i64                                        ; closure cast; i64* -> i64
  %arg7504 = add i64 0, 0                                                            ; quoted ()
  %cloptr9227 = inttoptr i64 %arg7505 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9227)                                         ; assert function application
  %i0ptr9228 = getelementptr inbounds i64, i64* %cloptr9227, i64 0                   ; &cloptr9227[0]
  %f9230 = load i64, i64* %i0ptr9228, align 8                                        ; load; *i0ptr9228
  %fptr9229 = inttoptr i64 %f9230 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9229(i64 %arg7505, i64 %arg7504, i64 %retprim7111)  ; tail call
  ret void
}


define void @lam8453(i64 %env8454, i64 %_957108, i64 %Pda$_950) {
  %envptr9231 = inttoptr i64 %env8454 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9232 = getelementptr inbounds i64, i64* %envptr9231, i64 3                  ; &envptr9231[3]
  %LIw$cc = load i64, i64* %envptr9232, align 8                                      ; load; *envptr9232
  %envptr9233 = inttoptr i64 %env8454 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9234 = getelementptr inbounds i64, i64* %envptr9233, i64 2                  ; &envptr9233[2]
  %cont7105 = load i64, i64* %envptr9234, align 8                                    ; load; *envptr9234
  %envptr9235 = inttoptr i64 %env8454 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9236 = getelementptr inbounds i64, i64* %envptr9235, i64 1                  ; &envptr9235[1]
  %Y5T$n = load i64, i64* %envptr9236, align 8                                       ; load; *envptr9236
  %arg7506 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %Y5T$n, i64 %arg7506)                     ; call prim_vector_45ref
  %arg7508 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7508)                              ; call prim__45
  %arg7511 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7110 = call i64 @prim_vector_45set_33(i64 %Y5T$n, i64 %arg7511, i64 %a7011); call prim_vector_45set_33
  %cloptr9237 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9239 = getelementptr inbounds i64, i64* %cloptr9237, i64 1                    ; &eptr9239[1]
  %eptr9240 = getelementptr inbounds i64, i64* %cloptr9237, i64 2                    ; &eptr9240[2]
  store i64 %cont7105, i64* %eptr9239                                                ; *eptr9239 = %cont7105
  store i64 %LIw$cc, i64* %eptr9240                                                  ; *eptr9240 = %LIw$cc
  %eptr9238 = getelementptr inbounds i64, i64* %cloptr9237, i64 0                    ; &cloptr9237[0]
  %f9241 = ptrtoint void(i64,i64,i64)* @lam8448 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9241, i64* %eptr9238                                                   ; store fptr
  %arg7515 = ptrtoint i64* %cloptr9237 to i64                                        ; closure cast; i64* -> i64
  %arg7514 = add i64 0, 0                                                            ; quoted ()
  %cloptr9242 = inttoptr i64 %arg7515 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9242)                                         ; assert function application
  %i0ptr9243 = getelementptr inbounds i64, i64* %cloptr9242, i64 0                   ; &cloptr9242[0]
  %f9245 = load i64, i64* %i0ptr9243, align 8                                        ; load; *i0ptr9243
  %fptr9244 = inttoptr i64 %f9245 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9244(i64 %arg7515, i64 %arg7514, i64 %retprim7110)  ; tail call
  ret void
}


define void @lam8448(i64 %env8449, i64 %_957109, i64 %zLq$_951) {
  %envptr9246 = inttoptr i64 %env8449 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9247 = getelementptr inbounds i64, i64* %envptr9246, i64 2                  ; &envptr9246[2]
  %LIw$cc = load i64, i64* %envptr9247, align 8                                      ; load; *envptr9247
  %envptr9248 = inttoptr i64 %env8449 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9249 = getelementptr inbounds i64, i64* %envptr9248, i64 1                  ; &envptr9248[1]
  %cont7105 = load i64, i64* %envptr9249, align 8                                    ; load; *envptr9249
  %cloptr9250 = inttoptr i64 %LIw$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9250)                                         ; assert function application
  %i0ptr9251 = getelementptr inbounds i64, i64* %cloptr9250, i64 0                   ; &cloptr9250[0]
  %f9253 = load i64, i64* %i0ptr9251, align 8                                        ; load; *i0ptr9251
  %fptr9252 = inttoptr i64 %f9253 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9252(i64 %LIw$cc, i64 %cont7105, i64 %LIw$cc)       ; tail call
  ret void
}


define void @lam8442(i64 %env8443, i64 %cont7113, i64 %hGt$v, i64 %DDa$lst) {
  %arg7520 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %vrG$lst = call i64 @prim_make_45vector(i64 %arg7520, i64 %DDa$lst)                ; call prim_make_45vector
  %cloptr9254 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9255 = getelementptr inbounds i64, i64* %cloptr9254, i64 0                    ; &cloptr9254[0]
  %f9256 = ptrtoint void(i64,i64,i64)* @lam8439 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9256, i64* %eptr9255                                                   ; store fptr
  %arg7523 = ptrtoint i64* %cloptr9254 to i64                                        ; closure cast; i64* -> i64
  %cloptr9257 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9259 = getelementptr inbounds i64, i64* %cloptr9257, i64 1                    ; &eptr9259[1]
  %eptr9260 = getelementptr inbounds i64, i64* %cloptr9257, i64 2                    ; &eptr9260[2]
  %eptr9261 = getelementptr inbounds i64, i64* %cloptr9257, i64 3                    ; &eptr9261[3]
  store i64 %hGt$v, i64* %eptr9259                                                   ; *eptr9259 = %hGt$v
  store i64 %vrG$lst, i64* %eptr9260                                                 ; *eptr9260 = %vrG$lst
  store i64 %cont7113, i64* %eptr9261                                                ; *eptr9261 = %cont7113
  %eptr9258 = getelementptr inbounds i64, i64* %cloptr9257, i64 0                    ; &cloptr9257[0]
  %f9262 = ptrtoint void(i64,i64,i64)* @lam8437 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9262, i64* %eptr9258                                                   ; store fptr
  %arg7522 = ptrtoint i64* %cloptr9257 to i64                                        ; closure cast; i64* -> i64
  %cloptr9263 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9265 = getelementptr inbounds i64, i64* %cloptr9263, i64 1                    ; &eptr9265[1]
  %eptr9266 = getelementptr inbounds i64, i64* %cloptr9263, i64 2                    ; &eptr9266[2]
  %eptr9267 = getelementptr inbounds i64, i64* %cloptr9263, i64 3                    ; &eptr9267[3]
  store i64 %hGt$v, i64* %eptr9265                                                   ; *eptr9265 = %hGt$v
  store i64 %vrG$lst, i64* %eptr9266                                                 ; *eptr9266 = %vrG$lst
  store i64 %cont7113, i64* %eptr9267                                                ; *eptr9267 = %cont7113
  %eptr9264 = getelementptr inbounds i64, i64* %cloptr9263, i64 0                    ; &cloptr9263[0]
  %f9268 = ptrtoint void(i64,i64,i64)* @lam8424 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9268, i64* %eptr9264                                                   ; store fptr
  %arg7521 = ptrtoint i64* %cloptr9263 to i64                                        ; closure cast; i64* -> i64
  %cloptr9269 = inttoptr i64 %arg7523 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9269)                                         ; assert function application
  %i0ptr9270 = getelementptr inbounds i64, i64* %cloptr9269, i64 0                   ; &cloptr9269[0]
  %f9272 = load i64, i64* %i0ptr9270, align 8                                        ; load; *i0ptr9270
  %fptr9271 = inttoptr i64 %f9272 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9271(i64 %arg7523, i64 %arg7522, i64 %arg7521)      ; tail call
  ret void
}


define void @lam8439(i64 %env8440, i64 %cont7118, i64 %uUS$u) {
  %cloptr9273 = inttoptr i64 %uUS$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9273)                                         ; assert function application
  %i0ptr9274 = getelementptr inbounds i64, i64* %cloptr9273, i64 0                   ; &cloptr9273[0]
  %f9276 = load i64, i64* %i0ptr9274, align 8                                        ; load; *i0ptr9274
  %fptr9275 = inttoptr i64 %f9276 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9275(i64 %uUS$u, i64 %cont7118, i64 %uUS$u)         ; tail call
  ret void
}


define void @lam8437(i64 %env8438, i64 %_957114, i64 %hiG$cc) {
  %envptr9277 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9278 = getelementptr inbounds i64, i64* %envptr9277, i64 3                  ; &envptr9277[3]
  %cont7113 = load i64, i64* %envptr9278, align 8                                    ; load; *envptr9278
  %envptr9279 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9280 = getelementptr inbounds i64, i64* %envptr9279, i64 2                  ; &envptr9279[2]
  %vrG$lst = load i64, i64* %envptr9280, align 8                                     ; load; *envptr9280
  %envptr9281 = inttoptr i64 %env8438 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9282 = getelementptr inbounds i64, i64* %envptr9281, i64 1                  ; &envptr9281[1]
  %hGt$v = load i64, i64* %envptr9282, align 8                                       ; load; *envptr9282
  %arg7527 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7527)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9283 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9283, label %else9285, label %then9284                                   ; if

then9284:
  %arg7531 = add i64 0, 0                                                            ; quoted ()
  %arg7530 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9286 = inttoptr i64 %cont7113 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9286)                                         ; assert function application
  %i0ptr9287 = getelementptr inbounds i64, i64* %cloptr9286, i64 0                   ; &cloptr9286[0]
  %f9289 = load i64, i64* %i0ptr9287, align 8                                        ; load; *i0ptr9287
  %fptr9288 = inttoptr i64 %f9289 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9288(i64 %cont7113, i64 %arg7531, i64 %arg7530)     ; tail call
  ret void

else9285:
  %arg7533 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7533)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %hGt$v)                             ; call prim_eqv_63
  %cmp9290 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9290, label %else9292, label %then9291                                   ; if

then9291:
  %arg7538 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7115 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7538)             ; call prim_vector_45ref
  %arg7541 = add i64 0, 0                                                            ; quoted ()
  %cloptr9293 = inttoptr i64 %cont7113 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9293)                                         ; assert function application
  %i0ptr9294 = getelementptr inbounds i64, i64* %cloptr9293, i64 0                   ; &cloptr9293[0]
  %f9296 = load i64, i64* %i0ptr9294, align 8                                        ; load; *i0ptr9294
  %fptr9295 = inttoptr i64 %f9296 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9295(i64 %cont7113, i64 %arg7541, i64 %retprim7115) ; tail call
  ret void

else9292:
  %arg7543 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7543)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7547 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7117 = call i64 @prim_vector_45set_33(i64 %vrG$lst, i64 %arg7547, i64 %a7018); call prim_vector_45set_33
  %cloptr9297 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9299 = getelementptr inbounds i64, i64* %cloptr9297, i64 1                    ; &eptr9299[1]
  %eptr9300 = getelementptr inbounds i64, i64* %cloptr9297, i64 2                    ; &eptr9300[2]
  store i64 %hiG$cc, i64* %eptr9299                                                  ; *eptr9299 = %hiG$cc
  store i64 %cont7113, i64* %eptr9300                                                ; *eptr9300 = %cont7113
  %eptr9298 = getelementptr inbounds i64, i64* %cloptr9297, i64 0                    ; &cloptr9297[0]
  %f9301 = ptrtoint void(i64,i64,i64)* @lam8431 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9301, i64* %eptr9298                                                   ; store fptr
  %arg7551 = ptrtoint i64* %cloptr9297 to i64                                        ; closure cast; i64* -> i64
  %arg7550 = add i64 0, 0                                                            ; quoted ()
  %cloptr9302 = inttoptr i64 %arg7551 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9302)                                         ; assert function application
  %i0ptr9303 = getelementptr inbounds i64, i64* %cloptr9302, i64 0                   ; &cloptr9302[0]
  %f9305 = load i64, i64* %i0ptr9303, align 8                                        ; load; *i0ptr9303
  %fptr9304 = inttoptr i64 %f9305 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9304(i64 %arg7551, i64 %arg7550, i64 %retprim7117)  ; tail call
  ret void
}


define void @lam8431(i64 %env8432, i64 %_957116, i64 %f6g$_950) {
  %envptr9306 = inttoptr i64 %env8432 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9307 = getelementptr inbounds i64, i64* %envptr9306, i64 2                  ; &envptr9306[2]
  %cont7113 = load i64, i64* %envptr9307, align 8                                    ; load; *envptr9307
  %envptr9308 = inttoptr i64 %env8432 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9309 = getelementptr inbounds i64, i64* %envptr9308, i64 1                  ; &envptr9308[1]
  %hiG$cc = load i64, i64* %envptr9309, align 8                                      ; load; *envptr9309
  %cloptr9310 = inttoptr i64 %hiG$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9310)                                         ; assert function application
  %i0ptr9311 = getelementptr inbounds i64, i64* %cloptr9310, i64 0                   ; &cloptr9310[0]
  %f9313 = load i64, i64* %i0ptr9311, align 8                                        ; load; *i0ptr9311
  %fptr9312 = inttoptr i64 %f9313 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9312(i64 %hiG$cc, i64 %cont7113, i64 %hiG$cc)       ; tail call
  ret void
}


define void @lam8424(i64 %env8425, i64 %_957114, i64 %hiG$cc) {
  %envptr9314 = inttoptr i64 %env8425 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9315 = getelementptr inbounds i64, i64* %envptr9314, i64 3                  ; &envptr9314[3]
  %cont7113 = load i64, i64* %envptr9315, align 8                                    ; load; *envptr9315
  %envptr9316 = inttoptr i64 %env8425 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9317 = getelementptr inbounds i64, i64* %envptr9316, i64 2                  ; &envptr9316[2]
  %vrG$lst = load i64, i64* %envptr9317, align 8                                     ; load; *envptr9317
  %envptr9318 = inttoptr i64 %env8425 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9319 = getelementptr inbounds i64, i64* %envptr9318, i64 1                  ; &envptr9318[1]
  %hGt$v = load i64, i64* %envptr9319, align 8                                       ; load; *envptr9319
  %arg7555 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7555)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9320 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9320, label %else9322, label %then9321                                   ; if

then9321:
  %arg7559 = add i64 0, 0                                                            ; quoted ()
  %arg7558 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9323 = inttoptr i64 %cont7113 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9323)                                         ; assert function application
  %i0ptr9324 = getelementptr inbounds i64, i64* %cloptr9323, i64 0                   ; &cloptr9323[0]
  %f9326 = load i64, i64* %i0ptr9324, align 8                                        ; load; *i0ptr9324
  %fptr9325 = inttoptr i64 %f9326 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9325(i64 %cont7113, i64 %arg7559, i64 %arg7558)     ; tail call
  ret void

else9322:
  %arg7561 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7561)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %hGt$v)                             ; call prim_eqv_63
  %cmp9327 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9327, label %else9329, label %then9328                                   ; if

then9328:
  %arg7566 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7115 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7566)             ; call prim_vector_45ref
  %arg7569 = add i64 0, 0                                                            ; quoted ()
  %cloptr9330 = inttoptr i64 %cont7113 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9330)                                         ; assert function application
  %i0ptr9331 = getelementptr inbounds i64, i64* %cloptr9330, i64 0                   ; &cloptr9330[0]
  %f9333 = load i64, i64* %i0ptr9331, align 8                                        ; load; *i0ptr9331
  %fptr9332 = inttoptr i64 %f9333 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9332(i64 %cont7113, i64 %arg7569, i64 %retprim7115) ; tail call
  ret void

else9329:
  %arg7571 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %vrG$lst, i64 %arg7571)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7575 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7117 = call i64 @prim_vector_45set_33(i64 %vrG$lst, i64 %arg7575, i64 %a7018); call prim_vector_45set_33
  %cloptr9334 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9336 = getelementptr inbounds i64, i64* %cloptr9334, i64 1                    ; &eptr9336[1]
  %eptr9337 = getelementptr inbounds i64, i64* %cloptr9334, i64 2                    ; &eptr9337[2]
  store i64 %hiG$cc, i64* %eptr9336                                                  ; *eptr9336 = %hiG$cc
  store i64 %cont7113, i64* %eptr9337                                                ; *eptr9337 = %cont7113
  %eptr9335 = getelementptr inbounds i64, i64* %cloptr9334, i64 0                    ; &cloptr9334[0]
  %f9338 = ptrtoint void(i64,i64,i64)* @lam8418 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9338, i64* %eptr9335                                                   ; store fptr
  %arg7579 = ptrtoint i64* %cloptr9334 to i64                                        ; closure cast; i64* -> i64
  %arg7578 = add i64 0, 0                                                            ; quoted ()
  %cloptr9339 = inttoptr i64 %arg7579 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9339)                                         ; assert function application
  %i0ptr9340 = getelementptr inbounds i64, i64* %cloptr9339, i64 0                   ; &cloptr9339[0]
  %f9342 = load i64, i64* %i0ptr9340, align 8                                        ; load; *i0ptr9340
  %fptr9341 = inttoptr i64 %f9342 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9341(i64 %arg7579, i64 %arg7578, i64 %retprim7117)  ; tail call
  ret void
}


define void @lam8418(i64 %env8419, i64 %_957116, i64 %f6g$_950) {
  %envptr9343 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9344 = getelementptr inbounds i64, i64* %envptr9343, i64 2                  ; &envptr9343[2]
  %cont7113 = load i64, i64* %envptr9344, align 8                                    ; load; *envptr9344
  %envptr9345 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9346 = getelementptr inbounds i64, i64* %envptr9345, i64 1                  ; &envptr9345[1]
  %hiG$cc = load i64, i64* %envptr9346, align 8                                      ; load; *envptr9346
  %cloptr9347 = inttoptr i64 %hiG$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9347)                                         ; assert function application
  %i0ptr9348 = getelementptr inbounds i64, i64* %cloptr9347, i64 0                   ; &cloptr9347[0]
  %f9350 = load i64, i64* %i0ptr9348, align 8                                        ; load; *i0ptr9348
  %fptr9349 = inttoptr i64 %f9350 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9349(i64 %hiG$cc, i64 %cont7113, i64 %hiG$cc)       ; tail call
  ret void
}


define void @lam8411(i64 %env8412, i64 %Eac$args7120) {
  %envptr9351 = inttoptr i64 %env8412 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9352 = getelementptr inbounds i64, i64* %envptr9351, i64 1                  ; &envptr9351[1]
  %d1v$_37foldl1 = load i64, i64* %envptr9352, align 8                               ; load; *envptr9352
  %cont7119 = call i64 @prim_car(i64 %Eac$args7120)                                  ; call prim_car
  %Eac$args = call i64 @prim_cdr(i64 %Eac$args7120)                                  ; call prim_cdr
  %a7019 = call i64 @prim_null_63(i64 %Eac$args)                                     ; call prim_null_63
  %cmp9353 = icmp eq i64 %a7019, 15                                                  ; false?
  br i1 %cmp9353, label %else9355, label %then9354                                   ; if

then9354:
  %arg7587 = add i64 0, 0                                                            ; quoted ()
  %arg7586 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr9356 = inttoptr i64 %cont7119 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9356)                                         ; assert function application
  %i0ptr9357 = getelementptr inbounds i64, i64* %cloptr9356, i64 0                   ; &cloptr9356[0]
  %f9359 = load i64, i64* %i0ptr9357, align 8                                        ; load; *i0ptr9357
  %fptr9358 = inttoptr i64 %f9359 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9358(i64 %cont7119, i64 %arg7587, i64 %arg7586)     ; tail call
  ret void

else9355:
  %a7020 = call i64 @prim_cdr(i64 %Eac$args)                                         ; call prim_cdr
  %a7021 = call i64 @prim_null_63(i64 %a7020)                                        ; call prim_null_63
  %cmp9360 = icmp eq i64 %a7021, 15                                                  ; false?
  br i1 %cmp9360, label %else9362, label %then9361                                   ; if

then9361:
  %retprim7121 = call i64 @prim_car(i64 %Eac$args)                                   ; call prim_car
  %arg7593 = add i64 0, 0                                                            ; quoted ()
  %cloptr9363 = inttoptr i64 %cont7119 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9363)                                         ; assert function application
  %i0ptr9364 = getelementptr inbounds i64, i64* %cloptr9363, i64 0                   ; &cloptr9363[0]
  %f9366 = load i64, i64* %i0ptr9364, align 8                                        ; load; *i0ptr9364
  %fptr9365 = inttoptr i64 %f9366 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9365(i64 %cont7119, i64 %arg7593, i64 %retprim7121) ; tail call
  ret void

else9362:
  %a7022 = call i64 @prim_car(i64 %Eac$args)                                         ; call prim_car
  %a7023 = call i64 @prim_cdr(i64 %Eac$args)                                         ; call prim_cdr
  %cloptr9367 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9368 = getelementptr inbounds i64, i64* %cloptr9367, i64 0                    ; &cloptr9367[0]
  %f9369 = ptrtoint void(i64,i64,i64,i64)* @lam8409 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9369, i64* %eptr9368                                                   ; store fptr
  %arg7599 = ptrtoint i64* %cloptr9367 to i64                                        ; closure cast; i64* -> i64
  %cloptr9370 = inttoptr i64 %d1v$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9370)                                         ; assert function application
  %i0ptr9371 = getelementptr inbounds i64, i64* %cloptr9370, i64 0                   ; &cloptr9370[0]
  %f9373 = load i64, i64* %i0ptr9371, align 8                                        ; load; *i0ptr9371
  %fptr9372 = inttoptr i64 %f9373 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9372(i64 %d1v$_37foldl1, i64 %cont7119, i64 %arg7599, i64 %a7022, i64 %a7023); tail call
  ret void
}


define void @lam8409(i64 %env8410, i64 %cont7122, i64 %ZR5$n, i64 %oof$v) {
  %retprim7123 = call i64 @prim__47(i64 %oof$v, i64 %ZR5$n)                          ; call prim__47
  %arg7605 = add i64 0, 0                                                            ; quoted ()
  %cloptr9374 = inttoptr i64 %cont7122 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9374)                                         ; assert function application
  %i0ptr9375 = getelementptr inbounds i64, i64* %cloptr9374, i64 0                   ; &cloptr9374[0]
  %f9377 = load i64, i64* %i0ptr9375, align 8                                        ; load; *i0ptr9375
  %fptr9376 = inttoptr i64 %f9377 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9376(i64 %cont7122, i64 %arg7605, i64 %retprim7123) ; tail call
  ret void
}


define void @lam8403(i64 %env8404, i64 %cont7124, i64 %bc3$x) {
  %retprim7125 = call i64 @prim_car(i64 %bc3$x)                                      ; call prim_car
  %arg7609 = add i64 0, 0                                                            ; quoted ()
  %cloptr9378 = inttoptr i64 %cont7124 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9378)                                         ; assert function application
  %i0ptr9379 = getelementptr inbounds i64, i64* %cloptr9378, i64 0                   ; &cloptr9378[0]
  %f9381 = load i64, i64* %i0ptr9379, align 8                                        ; load; *i0ptr9379
  %fptr9380 = inttoptr i64 %f9381 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9380(i64 %cont7124, i64 %arg7609, i64 %retprim7125) ; tail call
  ret void
}


define void @lam8400(i64 %env8401, i64 %cont7126, i64 %pnT$x) {
  %a7024 = call i64 @prim_cdr(i64 %pnT$x)                                            ; call prim_cdr
  %retprim7127 = call i64 @prim_car(i64 %a7024)                                      ; call prim_car
  %arg7614 = add i64 0, 0                                                            ; quoted ()
  %cloptr9382 = inttoptr i64 %cont7126 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9382)                                         ; assert function application
  %i0ptr9383 = getelementptr inbounds i64, i64* %cloptr9382, i64 0                   ; &cloptr9382[0]
  %f9385 = load i64, i64* %i0ptr9383, align 8                                        ; load; *i0ptr9383
  %fptr9384 = inttoptr i64 %f9385 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9384(i64 %cont7126, i64 %arg7614, i64 %retprim7127) ; tail call
  ret void
}


define void @lam8397(i64 %env8398, i64 %cont7128, i64 %lPU$x) {
  %a7025 = call i64 @prim_cdr(i64 %lPU$x)                                            ; call prim_cdr
  %a7026 = call i64 @prim_cdr(i64 %a7025)                                            ; call prim_cdr
  %retprim7129 = call i64 @prim_car(i64 %a7026)                                      ; call prim_car
  %arg7620 = add i64 0, 0                                                            ; quoted ()
  %cloptr9386 = inttoptr i64 %cont7128 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9386)                                         ; assert function application
  %i0ptr9387 = getelementptr inbounds i64, i64* %cloptr9386, i64 0                   ; &cloptr9386[0]
  %f9389 = load i64, i64* %i0ptr9387, align 8                                        ; load; *i0ptr9387
  %fptr9388 = inttoptr i64 %f9389 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9388(i64 %cont7128, i64 %arg7620, i64 %retprim7129) ; tail call
  ret void
}


define void @lam8394(i64 %env8395, i64 %cont7130, i64 %a5S$x) {
  %a7027 = call i64 @prim_cdr(i64 %a5S$x)                                            ; call prim_cdr
  %a7028 = call i64 @prim_cdr(i64 %a7027)                                            ; call prim_cdr
  %a7029 = call i64 @prim_cdr(i64 %a7028)                                            ; call prim_cdr
  %retprim7131 = call i64 @prim_car(i64 %a7029)                                      ; call prim_car
  %arg7627 = add i64 0, 0                                                            ; quoted ()
  %cloptr9390 = inttoptr i64 %cont7130 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9390)                                         ; assert function application
  %i0ptr9391 = getelementptr inbounds i64, i64* %cloptr9390, i64 0                   ; &cloptr9390[0]
  %f9393 = load i64, i64* %i0ptr9391, align 8                                        ; load; *i0ptr9391
  %fptr9392 = inttoptr i64 %f9393 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9392(i64 %cont7130, i64 %arg7627, i64 %retprim7131) ; tail call
  ret void
}


define void @lam8391(i64 %env8392, i64 %cont7132, i64 %H1S$p) {
  %a7030 = call i64 @prim_cons_63(i64 %H1S$p)                                        ; call prim_cons_63
  %cmp9394 = icmp eq i64 %a7030, 15                                                  ; false?
  br i1 %cmp9394, label %else9396, label %then9395                                   ; if

then9395:
  %a7031 = call i64 @prim_car(i64 %H1S$p)                                            ; call prim_car
  %arg7631 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym9397, i32 0, i32 0)); quoted string
  %retprim7133 = call i64 @prim_eq_63(i64 %a7031, i64 %arg7631)                      ; call prim_eq_63
  %arg7634 = add i64 0, 0                                                            ; quoted ()
  %cloptr9398 = inttoptr i64 %cont7132 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9398)                                         ; assert function application
  %i0ptr9399 = getelementptr inbounds i64, i64* %cloptr9398, i64 0                   ; &cloptr9398[0]
  %f9401 = load i64, i64* %i0ptr9399, align 8                                        ; load; *i0ptr9399
  %fptr9400 = inttoptr i64 %f9401 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9400(i64 %cont7132, i64 %arg7634, i64 %retprim7133) ; tail call
  ret void

else9396:
  %arg7637 = add i64 0, 0                                                            ; quoted ()
  %arg7636 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9402 = inttoptr i64 %cont7132 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9402)                                         ; assert function application
  %i0ptr9403 = getelementptr inbounds i64, i64* %cloptr9402, i64 0                   ; &cloptr9402[0]
  %f9405 = load i64, i64* %i0ptr9403, align 8                                        ; load; *i0ptr9403
  %fptr9404 = inttoptr i64 %f9405 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9404(i64 %cont7132, i64 %arg7637, i64 %arg7636)     ; tail call
  ret void
}


define void @lam8385(i64 %env8386, i64 %Yx3$lst7181) {
  %cont7180 = call i64 @prim_car(i64 %Yx3$lst7181)                                   ; call prim_car
  %Yx3$lst = call i64 @prim_cdr(i64 %Yx3$lst7181)                                    ; call prim_cdr
  %arg7644 = add i64 0, 0                                                            ; quoted ()
  %cloptr9406 = inttoptr i64 %cont7180 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9406)                                         ; assert function application
  %i0ptr9407 = getelementptr inbounds i64, i64* %cloptr9406, i64 0                   ; &cloptr9406[0]
  %f9409 = load i64, i64* %i0ptr9407, align 8                                        ; load; *i0ptr9407
  %fptr9408 = inttoptr i64 %f9409 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9408(i64 %cont7180, i64 %arg7644, i64 %Yx3$lst)     ; tail call
  ret void
}


define void @lam8382(i64 %env8383, i64 %_957134, i64 %rBL$_37raise_45handler) {
  %envptr9410 = inttoptr i64 %env8383 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9411 = getelementptr inbounds i64, i64* %envptr9410, i64 3                  ; &envptr9410[3]
  %TON$_37drop = load i64, i64* %envptr9411, align 8                                 ; load; *envptr9411
  %envptr9412 = inttoptr i64 %env8383 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9413 = getelementptr inbounds i64, i64* %envptr9412, i64 2                  ; &envptr9412[2]
  %oWl$_37_62 = load i64, i64* %envptr9413, align 8                                  ; load; *envptr9413
  %envptr9414 = inttoptr i64 %env8383 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9415 = getelementptr inbounds i64, i64* %envptr9414, i64 1                  ; &envptr9414[1]
  %K0A$_37length = load i64, i64* %envptr9415, align 8                               ; load; *envptr9415
  %cloptr9416 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9417 = getelementptr inbounds i64, i64* %cloptr9416, i64 0                    ; &cloptr9416[0]
  %f9418 = ptrtoint void(i64,i64)* @lam8380 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9418, i64* %eptr9417                                                   ; store fptr
  %arg7647 = ptrtoint i64* %cloptr9416 to i64                                        ; closure cast; i64* -> i64
  %cloptr9419 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9421 = getelementptr inbounds i64, i64* %cloptr9419, i64 1                    ; &eptr9421[1]
  %eptr9422 = getelementptr inbounds i64, i64* %cloptr9419, i64 2                    ; &eptr9422[2]
  %eptr9423 = getelementptr inbounds i64, i64* %cloptr9419, i64 3                    ; &eptr9423[3]
  store i64 %K0A$_37length, i64* %eptr9421                                           ; *eptr9421 = %K0A$_37length
  store i64 %oWl$_37_62, i64* %eptr9422                                              ; *eptr9422 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9423                                             ; *eptr9423 = %TON$_37drop
  %eptr9420 = getelementptr inbounds i64, i64* %cloptr9419, i64 0                    ; &cloptr9419[0]
  %f9424 = ptrtoint void(i64,i64,i64)* @lam8377 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9424, i64* %eptr9420                                                   ; store fptr
  %arg7646 = ptrtoint i64* %cloptr9419 to i64                                        ; closure cast; i64* -> i64
  %rva8123 = add i64 0, 0                                                            ; quoted ()
  %rva8122 = call i64 @prim_cons(i64 %arg7646, i64 %rva8123)                         ; call prim_cons
  %cloptr9425 = inttoptr i64 %arg7647 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9425)                                         ; assert function application
  %i0ptr9426 = getelementptr inbounds i64, i64* %cloptr9425, i64 0                   ; &cloptr9425[0]
  %f9428 = load i64, i64* %i0ptr9426, align 8                                        ; load; *i0ptr9426
  %fptr9427 = inttoptr i64 %f9428 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9427(i64 %arg7647, i64 %rva8122)                    ; tail call
  ret void
}


define void @lam8380(i64 %env8381, i64 %biU$lst7179) {
  %cont7178 = call i64 @prim_car(i64 %biU$lst7179)                                   ; call prim_car
  %biU$lst = call i64 @prim_cdr(i64 %biU$lst7179)                                    ; call prim_cdr
  %arg7651 = add i64 0, 0                                                            ; quoted ()
  %cloptr9429 = inttoptr i64 %cont7178 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9429)                                         ; assert function application
  %i0ptr9430 = getelementptr inbounds i64, i64* %cloptr9429, i64 0                   ; &cloptr9429[0]
  %f9432 = load i64, i64* %i0ptr9430, align 8                                        ; load; *i0ptr9430
  %fptr9431 = inttoptr i64 %f9432 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9431(i64 %cont7178, i64 %arg7651, i64 %biU$lst)     ; tail call
  ret void
}


define void @lam8377(i64 %env8378, i64 %_957176, i64 %a7032) {
  %envptr9433 = inttoptr i64 %env8378 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9434 = getelementptr inbounds i64, i64* %envptr9433, i64 3                  ; &envptr9433[3]
  %TON$_37drop = load i64, i64* %envptr9434, align 8                                 ; load; *envptr9434
  %envptr9435 = inttoptr i64 %env8378 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9436 = getelementptr inbounds i64, i64* %envptr9435, i64 2                  ; &envptr9435[2]
  %oWl$_37_62 = load i64, i64* %envptr9436, align 8                                  ; load; *envptr9436
  %envptr9437 = inttoptr i64 %env8378 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9438 = getelementptr inbounds i64, i64* %envptr9437, i64 1                  ; &envptr9437[1]
  %K0A$_37length = load i64, i64* %envptr9438, align 8                               ; load; *envptr9438
  %arg7654 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7177 = call i64 @prim_make_45vector(i64 %arg7654, i64 %a7032)              ; call prim_make_45vector
  %cloptr9439 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9441 = getelementptr inbounds i64, i64* %cloptr9439, i64 1                    ; &eptr9441[1]
  %eptr9442 = getelementptr inbounds i64, i64* %cloptr9439, i64 2                    ; &eptr9442[2]
  %eptr9443 = getelementptr inbounds i64, i64* %cloptr9439, i64 3                    ; &eptr9443[3]
  store i64 %K0A$_37length, i64* %eptr9441                                           ; *eptr9441 = %K0A$_37length
  store i64 %oWl$_37_62, i64* %eptr9442                                              ; *eptr9442 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9443                                             ; *eptr9443 = %TON$_37drop
  %eptr9440 = getelementptr inbounds i64, i64* %cloptr9439, i64 0                    ; &cloptr9439[0]
  %f9444 = ptrtoint void(i64,i64,i64)* @lam8374 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9444, i64* %eptr9440                                                   ; store fptr
  %arg7657 = ptrtoint i64* %cloptr9439 to i64                                        ; closure cast; i64* -> i64
  %arg7656 = add i64 0, 0                                                            ; quoted ()
  %cloptr9445 = inttoptr i64 %arg7657 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9445)                                         ; assert function application
  %i0ptr9446 = getelementptr inbounds i64, i64* %cloptr9445, i64 0                   ; &cloptr9445[0]
  %f9448 = load i64, i64* %i0ptr9446, align 8                                        ; load; *i0ptr9446
  %fptr9447 = inttoptr i64 %f9448 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9447(i64 %arg7657, i64 %arg7656, i64 %retprim7177)  ; tail call
  ret void
}


define void @lam8374(i64 %env8375, i64 %_957135, i64 %Dpt$_37wind_45stack) {
  %envptr9449 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9450 = getelementptr inbounds i64, i64* %envptr9449, i64 3                  ; &envptr9449[3]
  %TON$_37drop = load i64, i64* %envptr9450, align 8                                 ; load; *envptr9450
  %envptr9451 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9452 = getelementptr inbounds i64, i64* %envptr9451, i64 2                  ; &envptr9451[2]
  %oWl$_37_62 = load i64, i64* %envptr9452, align 8                                  ; load; *envptr9452
  %envptr9453 = inttoptr i64 %env8375 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9454 = getelementptr inbounds i64, i64* %envptr9453, i64 1                  ; &envptr9453[1]
  %K0A$_37length = load i64, i64* %envptr9454, align 8                               ; load; *envptr9454
  %cloptr9455 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9457 = getelementptr inbounds i64, i64* %cloptr9455, i64 1                    ; &eptr9457[1]
  %eptr9458 = getelementptr inbounds i64, i64* %cloptr9455, i64 2                    ; &eptr9458[2]
  %eptr9459 = getelementptr inbounds i64, i64* %cloptr9455, i64 3                    ; &eptr9459[3]
  store i64 %K0A$_37length, i64* %eptr9457                                           ; *eptr9457 = %K0A$_37length
  store i64 %oWl$_37_62, i64* %eptr9458                                              ; *eptr9458 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9459                                             ; *eptr9459 = %TON$_37drop
  %eptr9456 = getelementptr inbounds i64, i64* %cloptr9455, i64 0                    ; &cloptr9455[0]
  %f9460 = ptrtoint void(i64,i64,i64,i64)* @lam8372 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9460, i64* %eptr9456                                                   ; store fptr
  %yGA$_37common_45tail = ptrtoint i64* %cloptr9455 to i64                           ; closure cast; i64* -> i64
  %cloptr9461 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9463 = getelementptr inbounds i64, i64* %cloptr9461, i64 1                    ; &eptr9463[1]
  %eptr9464 = getelementptr inbounds i64, i64* %cloptr9461, i64 2                    ; &eptr9464[2]
  store i64 %Dpt$_37wind_45stack, i64* %eptr9463                                     ; *eptr9463 = %Dpt$_37wind_45stack
  store i64 %yGA$_37common_45tail, i64* %eptr9464                                    ; *eptr9464 = %yGA$_37common_45tail
  %eptr9462 = getelementptr inbounds i64, i64* %cloptr9461, i64 0                    ; &cloptr9461[0]
  %f9465 = ptrtoint void(i64,i64,i64)* @lam8330 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9465, i64* %eptr9462                                                   ; store fptr
  %MLL$_37do_45wind = ptrtoint i64* %cloptr9461 to i64                               ; closure cast; i64* -> i64
  %cloptr9466 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9467 = getelementptr inbounds i64, i64* %cloptr9466, i64 0                    ; &cloptr9466[0]
  %f9468 = ptrtoint void(i64,i64)* @lam8280 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9468, i64* %eptr9467                                                   ; store fptr
  %arg7843 = ptrtoint i64* %cloptr9466 to i64                                        ; closure cast; i64* -> i64
  %cloptr9469 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9470 = getelementptr inbounds i64, i64* %cloptr9469, i64 0                    ; &cloptr9469[0]
  %f9471 = ptrtoint void(i64,i64)* @lam8276 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9471, i64* %eptr9470                                                   ; store fptr
  %arg7842 = ptrtoint i64* %cloptr9469 to i64                                        ; closure cast; i64* -> i64
  %rva8121 = add i64 0, 0                                                            ; quoted ()
  %rva8120 = call i64 @prim_cons(i64 %arg7842, i64 %rva8121)                         ; call prim_cons
  %cloptr9472 = inttoptr i64 %arg7843 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9472)                                         ; assert function application
  %i0ptr9473 = getelementptr inbounds i64, i64* %cloptr9472, i64 0                   ; &cloptr9472[0]
  %f9475 = load i64, i64* %i0ptr9473, align 8                                        ; load; *i0ptr9473
  %fptr9474 = inttoptr i64 %f9475 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9474(i64 %arg7843, i64 %rva8120)                    ; tail call
  ret void
}


define void @lam8372(i64 %env8373, i64 %cont7136, i64 %laA$x, i64 %DPV$y) {
  %envptr9476 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9477 = getelementptr inbounds i64, i64* %envptr9476, i64 3                  ; &envptr9476[3]
  %TON$_37drop = load i64, i64* %envptr9477, align 8                                 ; load; *envptr9477
  %envptr9478 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9479 = getelementptr inbounds i64, i64* %envptr9478, i64 2                  ; &envptr9478[2]
  %oWl$_37_62 = load i64, i64* %envptr9479, align 8                                  ; load; *envptr9479
  %envptr9480 = inttoptr i64 %env8373 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9481 = getelementptr inbounds i64, i64* %envptr9480, i64 1                  ; &envptr9480[1]
  %K0A$_37length = load i64, i64* %envptr9481, align 8                               ; load; *envptr9481
  %cloptr9482 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9484 = getelementptr inbounds i64, i64* %cloptr9482, i64 1                    ; &eptr9484[1]
  %eptr9485 = getelementptr inbounds i64, i64* %cloptr9482, i64 2                    ; &eptr9485[2]
  %eptr9486 = getelementptr inbounds i64, i64* %cloptr9482, i64 3                    ; &eptr9486[3]
  %eptr9487 = getelementptr inbounds i64, i64* %cloptr9482, i64 4                    ; &eptr9487[4]
  %eptr9488 = getelementptr inbounds i64, i64* %cloptr9482, i64 5                    ; &eptr9488[5]
  %eptr9489 = getelementptr inbounds i64, i64* %cloptr9482, i64 6                    ; &eptr9489[6]
  store i64 %K0A$_37length, i64* %eptr9484                                           ; *eptr9484 = %K0A$_37length
  store i64 %oWl$_37_62, i64* %eptr9485                                              ; *eptr9485 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9486                                             ; *eptr9486 = %TON$_37drop
  store i64 %cont7136, i64* %eptr9487                                                ; *eptr9487 = %cont7136
  store i64 %DPV$y, i64* %eptr9488                                                   ; *eptr9488 = %DPV$y
  store i64 %laA$x, i64* %eptr9489                                                   ; *eptr9489 = %laA$x
  %eptr9483 = getelementptr inbounds i64, i64* %cloptr9482, i64 0                    ; &cloptr9482[0]
  %f9490 = ptrtoint void(i64,i64,i64)* @lam8370 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9490, i64* %eptr9483                                                   ; store fptr
  %arg7659 = ptrtoint i64* %cloptr9482 to i64                                        ; closure cast; i64* -> i64
  %cloptr9491 = inttoptr i64 %K0A$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9491)                                         ; assert function application
  %i0ptr9492 = getelementptr inbounds i64, i64* %cloptr9491, i64 0                   ; &cloptr9491[0]
  %f9494 = load i64, i64* %i0ptr9492, align 8                                        ; load; *i0ptr9492
  %fptr9493 = inttoptr i64 %f9494 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9493(i64 %K0A$_37length, i64 %arg7659, i64 %laA$x)  ; tail call
  ret void
}


define void @lam8370(i64 %env8371, i64 %_957137, i64 %LBl$lx) {
  %envptr9495 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9496 = getelementptr inbounds i64, i64* %envptr9495, i64 6                  ; &envptr9495[6]
  %laA$x = load i64, i64* %envptr9496, align 8                                       ; load; *envptr9496
  %envptr9497 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9498 = getelementptr inbounds i64, i64* %envptr9497, i64 5                  ; &envptr9497[5]
  %DPV$y = load i64, i64* %envptr9498, align 8                                       ; load; *envptr9498
  %envptr9499 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9500 = getelementptr inbounds i64, i64* %envptr9499, i64 4                  ; &envptr9499[4]
  %cont7136 = load i64, i64* %envptr9500, align 8                                    ; load; *envptr9500
  %envptr9501 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9502 = getelementptr inbounds i64, i64* %envptr9501, i64 3                  ; &envptr9501[3]
  %TON$_37drop = load i64, i64* %envptr9502, align 8                                 ; load; *envptr9502
  %envptr9503 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9504 = getelementptr inbounds i64, i64* %envptr9503, i64 2                  ; &envptr9503[2]
  %oWl$_37_62 = load i64, i64* %envptr9504, align 8                                  ; load; *envptr9504
  %envptr9505 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9506 = getelementptr inbounds i64, i64* %envptr9505, i64 1                  ; &envptr9505[1]
  %K0A$_37length = load i64, i64* %envptr9506, align 8                               ; load; *envptr9506
  %cloptr9507 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9509 = getelementptr inbounds i64, i64* %cloptr9507, i64 1                    ; &eptr9509[1]
  %eptr9510 = getelementptr inbounds i64, i64* %cloptr9507, i64 2                    ; &eptr9510[2]
  %eptr9511 = getelementptr inbounds i64, i64* %cloptr9507, i64 3                    ; &eptr9511[3]
  %eptr9512 = getelementptr inbounds i64, i64* %cloptr9507, i64 4                    ; &eptr9512[4]
  %eptr9513 = getelementptr inbounds i64, i64* %cloptr9507, i64 5                    ; &eptr9513[5]
  %eptr9514 = getelementptr inbounds i64, i64* %cloptr9507, i64 6                    ; &eptr9514[6]
  store i64 %oWl$_37_62, i64* %eptr9509                                              ; *eptr9509 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9510                                             ; *eptr9510 = %TON$_37drop
  store i64 %LBl$lx, i64* %eptr9511                                                  ; *eptr9511 = %LBl$lx
  store i64 %cont7136, i64* %eptr9512                                                ; *eptr9512 = %cont7136
  store i64 %DPV$y, i64* %eptr9513                                                   ; *eptr9513 = %DPV$y
  store i64 %laA$x, i64* %eptr9514                                                   ; *eptr9514 = %laA$x
  %eptr9508 = getelementptr inbounds i64, i64* %cloptr9507, i64 0                    ; &cloptr9507[0]
  %f9515 = ptrtoint void(i64,i64,i64)* @lam8368 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9515, i64* %eptr9508                                                   ; store fptr
  %arg7662 = ptrtoint i64* %cloptr9507 to i64                                        ; closure cast; i64* -> i64
  %cloptr9516 = inttoptr i64 %K0A$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9516)                                         ; assert function application
  %i0ptr9517 = getelementptr inbounds i64, i64* %cloptr9516, i64 0                   ; &cloptr9516[0]
  %f9519 = load i64, i64* %i0ptr9517, align 8                                        ; load; *i0ptr9517
  %fptr9518 = inttoptr i64 %f9519 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9518(i64 %K0A$_37length, i64 %arg7662, i64 %DPV$y)  ; tail call
  ret void
}


define void @lam8368(i64 %env8369, i64 %_957138, i64 %Kbc$ly) {
  %envptr9520 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9521 = getelementptr inbounds i64, i64* %envptr9520, i64 6                  ; &envptr9520[6]
  %laA$x = load i64, i64* %envptr9521, align 8                                       ; load; *envptr9521
  %envptr9522 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9523 = getelementptr inbounds i64, i64* %envptr9522, i64 5                  ; &envptr9522[5]
  %DPV$y = load i64, i64* %envptr9523, align 8                                       ; load; *envptr9523
  %envptr9524 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9525 = getelementptr inbounds i64, i64* %envptr9524, i64 4                  ; &envptr9524[4]
  %cont7136 = load i64, i64* %envptr9525, align 8                                    ; load; *envptr9525
  %envptr9526 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9527 = getelementptr inbounds i64, i64* %envptr9526, i64 3                  ; &envptr9526[3]
  %LBl$lx = load i64, i64* %envptr9527, align 8                                      ; load; *envptr9527
  %envptr9528 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9529 = getelementptr inbounds i64, i64* %envptr9528, i64 2                  ; &envptr9528[2]
  %TON$_37drop = load i64, i64* %envptr9529, align 8                                 ; load; *envptr9529
  %envptr9530 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9531 = getelementptr inbounds i64, i64* %envptr9530, i64 1                  ; &envptr9530[1]
  %oWl$_37_62 = load i64, i64* %envptr9531, align 8                                  ; load; *envptr9531
  %cloptr9532 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9533 = getelementptr inbounds i64, i64* %cloptr9532, i64 0                    ; &cloptr9532[0]
  %f9534 = ptrtoint void(i64,i64)* @lam8366 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9534, i64* %eptr9533                                                   ; store fptr
  %arg7665 = ptrtoint i64* %cloptr9532 to i64                                        ; closure cast; i64* -> i64
  %cloptr9535 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9537 = getelementptr inbounds i64, i64* %cloptr9535, i64 1                    ; &eptr9537[1]
  %eptr9538 = getelementptr inbounds i64, i64* %cloptr9535, i64 2                    ; &eptr9538[2]
  %eptr9539 = getelementptr inbounds i64, i64* %cloptr9535, i64 3                    ; &eptr9539[3]
  %eptr9540 = getelementptr inbounds i64, i64* %cloptr9535, i64 4                    ; &eptr9540[4]
  %eptr9541 = getelementptr inbounds i64, i64* %cloptr9535, i64 5                    ; &eptr9541[5]
  %eptr9542 = getelementptr inbounds i64, i64* %cloptr9535, i64 6                    ; &eptr9542[6]
  %eptr9543 = getelementptr inbounds i64, i64* %cloptr9535, i64 7                    ; &eptr9543[7]
  store i64 %oWl$_37_62, i64* %eptr9537                                              ; *eptr9537 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9538                                             ; *eptr9538 = %TON$_37drop
  store i64 %Kbc$ly, i64* %eptr9539                                                  ; *eptr9539 = %Kbc$ly
  store i64 %LBl$lx, i64* %eptr9540                                                  ; *eptr9540 = %LBl$lx
  store i64 %cont7136, i64* %eptr9541                                                ; *eptr9541 = %cont7136
  store i64 %DPV$y, i64* %eptr9542                                                   ; *eptr9542 = %DPV$y
  store i64 %laA$x, i64* %eptr9543                                                   ; *eptr9543 = %laA$x
  %eptr9536 = getelementptr inbounds i64, i64* %cloptr9535, i64 0                    ; &cloptr9535[0]
  %f9544 = ptrtoint void(i64,i64,i64)* @lam8363 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9544, i64* %eptr9536                                                   ; store fptr
  %arg7664 = ptrtoint i64* %cloptr9535 to i64                                        ; closure cast; i64* -> i64
  %cloptr9545 = inttoptr i64 %arg7665 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9545)                                         ; assert function application
  %i0ptr9546 = getelementptr inbounds i64, i64* %cloptr9545, i64 0                   ; &cloptr9545[0]
  %f9548 = load i64, i64* %i0ptr9546, align 8                                        ; load; *i0ptr9546
  %fptr9547 = inttoptr i64 %f9548 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9547(i64 %arg7665, i64 %arg7664)                    ; tail call
  ret void
}


define void @lam8366(i64 %env8367, i64 %wRv$lst7148) {
  %cont7147 = call i64 @prim_car(i64 %wRv$lst7148)                                   ; call prim_car
  %wRv$lst = call i64 @prim_cdr(i64 %wRv$lst7148)                                    ; call prim_cdr
  %arg7669 = add i64 0, 0                                                            ; quoted ()
  %cloptr9549 = inttoptr i64 %cont7147 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9549)                                         ; assert function application
  %i0ptr9550 = getelementptr inbounds i64, i64* %cloptr9549, i64 0                   ; &cloptr9549[0]
  %f9552 = load i64, i64* %i0ptr9550, align 8                                        ; load; *i0ptr9550
  %fptr9551 = inttoptr i64 %f9552 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9551(i64 %cont7147, i64 %arg7669, i64 %wRv$lst)     ; tail call
  ret void
}


define void @lam8363(i64 %env8364, i64 %_957145, i64 %a7033) {
  %envptr9553 = inttoptr i64 %env8364 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9554 = getelementptr inbounds i64, i64* %envptr9553, i64 7                  ; &envptr9553[7]
  %laA$x = load i64, i64* %envptr9554, align 8                                       ; load; *envptr9554
  %envptr9555 = inttoptr i64 %env8364 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9556 = getelementptr inbounds i64, i64* %envptr9555, i64 6                  ; &envptr9555[6]
  %DPV$y = load i64, i64* %envptr9556, align 8                                       ; load; *envptr9556
  %envptr9557 = inttoptr i64 %env8364 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9558 = getelementptr inbounds i64, i64* %envptr9557, i64 5                  ; &envptr9557[5]
  %cont7136 = load i64, i64* %envptr9558, align 8                                    ; load; *envptr9558
  %envptr9559 = inttoptr i64 %env8364 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9560 = getelementptr inbounds i64, i64* %envptr9559, i64 4                  ; &envptr9559[4]
  %LBl$lx = load i64, i64* %envptr9560, align 8                                      ; load; *envptr9560
  %envptr9561 = inttoptr i64 %env8364 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9562 = getelementptr inbounds i64, i64* %envptr9561, i64 3                  ; &envptr9561[3]
  %Kbc$ly = load i64, i64* %envptr9562, align 8                                      ; load; *envptr9562
  %envptr9563 = inttoptr i64 %env8364 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9564 = getelementptr inbounds i64, i64* %envptr9563, i64 2                  ; &envptr9563[2]
  %TON$_37drop = load i64, i64* %envptr9564, align 8                                 ; load; *envptr9564
  %envptr9565 = inttoptr i64 %env8364 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9566 = getelementptr inbounds i64, i64* %envptr9565, i64 1                  ; &envptr9565[1]
  %oWl$_37_62 = load i64, i64* %envptr9566, align 8                                  ; load; *envptr9566
  %arg7672 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7146 = call i64 @prim_make_45vector(i64 %arg7672, i64 %a7033)              ; call prim_make_45vector
  %cloptr9567 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9569 = getelementptr inbounds i64, i64* %cloptr9567, i64 1                    ; &eptr9569[1]
  %eptr9570 = getelementptr inbounds i64, i64* %cloptr9567, i64 2                    ; &eptr9570[2]
  %eptr9571 = getelementptr inbounds i64, i64* %cloptr9567, i64 3                    ; &eptr9571[3]
  %eptr9572 = getelementptr inbounds i64, i64* %cloptr9567, i64 4                    ; &eptr9572[4]
  %eptr9573 = getelementptr inbounds i64, i64* %cloptr9567, i64 5                    ; &eptr9573[5]
  %eptr9574 = getelementptr inbounds i64, i64* %cloptr9567, i64 6                    ; &eptr9574[6]
  %eptr9575 = getelementptr inbounds i64, i64* %cloptr9567, i64 7                    ; &eptr9575[7]
  store i64 %oWl$_37_62, i64* %eptr9569                                              ; *eptr9569 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9570                                             ; *eptr9570 = %TON$_37drop
  store i64 %Kbc$ly, i64* %eptr9571                                                  ; *eptr9571 = %Kbc$ly
  store i64 %LBl$lx, i64* %eptr9572                                                  ; *eptr9572 = %LBl$lx
  store i64 %cont7136, i64* %eptr9573                                                ; *eptr9573 = %cont7136
  store i64 %DPV$y, i64* %eptr9574                                                   ; *eptr9574 = %DPV$y
  store i64 %laA$x, i64* %eptr9575                                                   ; *eptr9575 = %laA$x
  %eptr9568 = getelementptr inbounds i64, i64* %cloptr9567, i64 0                    ; &cloptr9567[0]
  %f9576 = ptrtoint void(i64,i64,i64)* @lam8360 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9576, i64* %eptr9568                                                   ; store fptr
  %arg7675 = ptrtoint i64* %cloptr9567 to i64                                        ; closure cast; i64* -> i64
  %arg7674 = add i64 0, 0                                                            ; quoted ()
  %cloptr9577 = inttoptr i64 %arg7675 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9577)                                         ; assert function application
  %i0ptr9578 = getelementptr inbounds i64, i64* %cloptr9577, i64 0                   ; &cloptr9577[0]
  %f9580 = load i64, i64* %i0ptr9578, align 8                                        ; load; *i0ptr9578
  %fptr9579 = inttoptr i64 %f9580 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9579(i64 %arg7675, i64 %arg7674, i64 %retprim7146)  ; tail call
  ret void
}


define void @lam8360(i64 %env8361, i64 %_957139, i64 %DMn$loop) {
  %envptr9581 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9582 = getelementptr inbounds i64, i64* %envptr9581, i64 7                  ; &envptr9581[7]
  %laA$x = load i64, i64* %envptr9582, align 8                                       ; load; *envptr9582
  %envptr9583 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9584 = getelementptr inbounds i64, i64* %envptr9583, i64 6                  ; &envptr9583[6]
  %DPV$y = load i64, i64* %envptr9584, align 8                                       ; load; *envptr9584
  %envptr9585 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9586 = getelementptr inbounds i64, i64* %envptr9585, i64 5                  ; &envptr9585[5]
  %cont7136 = load i64, i64* %envptr9586, align 8                                    ; load; *envptr9586
  %envptr9587 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9588 = getelementptr inbounds i64, i64* %envptr9587, i64 4                  ; &envptr9587[4]
  %LBl$lx = load i64, i64* %envptr9588, align 8                                      ; load; *envptr9588
  %envptr9589 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9590 = getelementptr inbounds i64, i64* %envptr9589, i64 3                  ; &envptr9589[3]
  %Kbc$ly = load i64, i64* %envptr9590, align 8                                      ; load; *envptr9590
  %envptr9591 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9592 = getelementptr inbounds i64, i64* %envptr9591, i64 2                  ; &envptr9591[2]
  %TON$_37drop = load i64, i64* %envptr9592, align 8                                 ; load; *envptr9592
  %envptr9593 = inttoptr i64 %env8361 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9594 = getelementptr inbounds i64, i64* %envptr9593, i64 1                  ; &envptr9593[1]
  %oWl$_37_62 = load i64, i64* %envptr9594, align 8                                  ; load; *envptr9594
  %arg7677 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9595 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9597 = getelementptr inbounds i64, i64* %cloptr9595, i64 1                    ; &eptr9597[1]
  store i64 %DMn$loop, i64* %eptr9597                                                ; *eptr9597 = %DMn$loop
  %eptr9596 = getelementptr inbounds i64, i64* %cloptr9595, i64 0                    ; &cloptr9595[0]
  %f9598 = ptrtoint void(i64,i64,i64,i64)* @lam8357 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9598, i64* %eptr9596                                                   ; store fptr
  %arg7676 = ptrtoint i64* %cloptr9595 to i64                                        ; closure cast; i64* -> i64
  %Odm$_956937 = call i64 @prim_vector_45set_33(i64 %DMn$loop, i64 %arg7677, i64 %arg7676); call prim_vector_45set_33
  %arg7692 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7038 = call i64 @prim_vector_45ref(i64 %DMn$loop, i64 %arg7692)                  ; call prim_vector_45ref
  %cloptr9599 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9601 = getelementptr inbounds i64, i64* %cloptr9599, i64 1                    ; &eptr9601[1]
  %eptr9602 = getelementptr inbounds i64, i64* %cloptr9599, i64 2                    ; &eptr9602[2]
  %eptr9603 = getelementptr inbounds i64, i64* %cloptr9599, i64 3                    ; &eptr9603[3]
  %eptr9604 = getelementptr inbounds i64, i64* %cloptr9599, i64 4                    ; &eptr9604[4]
  %eptr9605 = getelementptr inbounds i64, i64* %cloptr9599, i64 5                    ; &eptr9605[5]
  %eptr9606 = getelementptr inbounds i64, i64* %cloptr9599, i64 6                    ; &eptr9606[6]
  %eptr9607 = getelementptr inbounds i64, i64* %cloptr9599, i64 7                    ; &eptr9607[7]
  %eptr9608 = getelementptr inbounds i64, i64* %cloptr9599, i64 8                    ; &eptr9608[8]
  store i64 %a7038, i64* %eptr9601                                                   ; *eptr9601 = %a7038
  store i64 %oWl$_37_62, i64* %eptr9602                                              ; *eptr9602 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9603                                             ; *eptr9603 = %TON$_37drop
  store i64 %Kbc$ly, i64* %eptr9604                                                  ; *eptr9604 = %Kbc$ly
  store i64 %LBl$lx, i64* %eptr9605                                                  ; *eptr9605 = %LBl$lx
  store i64 %cont7136, i64* %eptr9606                                                ; *eptr9606 = %cont7136
  store i64 %DPV$y, i64* %eptr9607                                                   ; *eptr9607 = %DPV$y
  store i64 %laA$x, i64* %eptr9608                                                   ; *eptr9608 = %laA$x
  %eptr9600 = getelementptr inbounds i64, i64* %cloptr9599, i64 0                    ; &cloptr9599[0]
  %f9609 = ptrtoint void(i64,i64,i64)* @lam8352 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9609, i64* %eptr9600                                                   ; store fptr
  %arg7696 = ptrtoint i64* %cloptr9599 to i64                                        ; closure cast; i64* -> i64
  %cloptr9610 = inttoptr i64 %oWl$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9610)                                         ; assert function application
  %i0ptr9611 = getelementptr inbounds i64, i64* %cloptr9610, i64 0                   ; &cloptr9610[0]
  %f9613 = load i64, i64* %i0ptr9611, align 8                                        ; load; *i0ptr9611
  %fptr9612 = inttoptr i64 %f9613 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9612(i64 %oWl$_37_62, i64 %arg7696, i64 %LBl$lx, i64 %Kbc$ly); tail call
  ret void
}


define void @lam8357(i64 %env8358, i64 %cont7140, i64 %CK4$x, i64 %C4a$y) {
  %envptr9614 = inttoptr i64 %env8358 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9615 = getelementptr inbounds i64, i64* %envptr9614, i64 1                  ; &envptr9614[1]
  %DMn$loop = load i64, i64* %envptr9615, align 8                                    ; load; *envptr9615
  %a7034 = call i64 @prim_eq_63(i64 %CK4$x, i64 %C4a$y)                              ; call prim_eq_63
  %cmp9616 = icmp eq i64 %a7034, 15                                                  ; false?
  br i1 %cmp9616, label %else9618, label %then9617                                   ; if

then9617:
  %arg7682 = add i64 0, 0                                                            ; quoted ()
  %cloptr9619 = inttoptr i64 %cont7140 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9619)                                         ; assert function application
  %i0ptr9620 = getelementptr inbounds i64, i64* %cloptr9619, i64 0                   ; &cloptr9619[0]
  %f9622 = load i64, i64* %i0ptr9620, align 8                                        ; load; *i0ptr9620
  %fptr9621 = inttoptr i64 %f9622 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9621(i64 %cont7140, i64 %arg7682, i64 %CK4$x)       ; tail call
  ret void

else9618:
  %arg7684 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7035 = call i64 @prim_vector_45ref(i64 %DMn$loop, i64 %arg7684)                  ; call prim_vector_45ref
  %a7036 = call i64 @prim_cdr(i64 %CK4$x)                                            ; call prim_cdr
  %a7037 = call i64 @prim_cdr(i64 %C4a$y)                                            ; call prim_cdr
  %cloptr9623 = inttoptr i64 %a7035 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9623)                                         ; assert function application
  %i0ptr9624 = getelementptr inbounds i64, i64* %cloptr9623, i64 0                   ; &cloptr9623[0]
  %f9626 = load i64, i64* %i0ptr9624, align 8                                        ; load; *i0ptr9624
  %fptr9625 = inttoptr i64 %f9626 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9625(i64 %a7035, i64 %cont7140, i64 %a7036, i64 %a7037); tail call
  ret void
}


define void @lam8352(i64 %env8353, i64 %_957141, i64 %a7039) {
  %envptr9627 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9628 = getelementptr inbounds i64, i64* %envptr9627, i64 8                  ; &envptr9627[8]
  %laA$x = load i64, i64* %envptr9628, align 8                                       ; load; *envptr9628
  %envptr9629 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9630 = getelementptr inbounds i64, i64* %envptr9629, i64 7                  ; &envptr9629[7]
  %DPV$y = load i64, i64* %envptr9630, align 8                                       ; load; *envptr9630
  %envptr9631 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9632 = getelementptr inbounds i64, i64* %envptr9631, i64 6                  ; &envptr9631[6]
  %cont7136 = load i64, i64* %envptr9632, align 8                                    ; load; *envptr9632
  %envptr9633 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9634 = getelementptr inbounds i64, i64* %envptr9633, i64 5                  ; &envptr9633[5]
  %LBl$lx = load i64, i64* %envptr9634, align 8                                      ; load; *envptr9634
  %envptr9635 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9636 = getelementptr inbounds i64, i64* %envptr9635, i64 4                  ; &envptr9635[4]
  %Kbc$ly = load i64, i64* %envptr9636, align 8                                      ; load; *envptr9636
  %envptr9637 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9638 = getelementptr inbounds i64, i64* %envptr9637, i64 3                  ; &envptr9637[3]
  %TON$_37drop = load i64, i64* %envptr9638, align 8                                 ; load; *envptr9638
  %envptr9639 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9640 = getelementptr inbounds i64, i64* %envptr9639, i64 2                  ; &envptr9639[2]
  %oWl$_37_62 = load i64, i64* %envptr9640, align 8                                  ; load; *envptr9640
  %envptr9641 = inttoptr i64 %env8353 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9642 = getelementptr inbounds i64, i64* %envptr9641, i64 1                  ; &envptr9641[1]
  %a7038 = load i64, i64* %envptr9642, align 8                                       ; load; *envptr9642
  %cmp9643 = icmp eq i64 %a7039, 15                                                  ; false?
  br i1 %cmp9643, label %else9645, label %then9644                                   ; if

then9644:
  %a7040 = call i64 @prim__45(i64 %LBl$lx, i64 %Kbc$ly)                              ; call prim__45
  %cloptr9646 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9648 = getelementptr inbounds i64, i64* %cloptr9646, i64 1                    ; &eptr9648[1]
  %eptr9649 = getelementptr inbounds i64, i64* %cloptr9646, i64 2                    ; &eptr9649[2]
  %eptr9650 = getelementptr inbounds i64, i64* %cloptr9646, i64 3                    ; &eptr9650[3]
  %eptr9651 = getelementptr inbounds i64, i64* %cloptr9646, i64 4                    ; &eptr9651[4]
  %eptr9652 = getelementptr inbounds i64, i64* %cloptr9646, i64 5                    ; &eptr9652[5]
  %eptr9653 = getelementptr inbounds i64, i64* %cloptr9646, i64 6                    ; &eptr9653[6]
  %eptr9654 = getelementptr inbounds i64, i64* %cloptr9646, i64 7                    ; &eptr9654[7]
  store i64 %a7038, i64* %eptr9648                                                   ; *eptr9648 = %a7038
  store i64 %oWl$_37_62, i64* %eptr9649                                              ; *eptr9649 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9650                                             ; *eptr9650 = %TON$_37drop
  store i64 %Kbc$ly, i64* %eptr9651                                                  ; *eptr9651 = %Kbc$ly
  store i64 %LBl$lx, i64* %eptr9652                                                  ; *eptr9652 = %LBl$lx
  store i64 %cont7136, i64* %eptr9653                                                ; *eptr9653 = %cont7136
  store i64 %DPV$y, i64* %eptr9654                                                   ; *eptr9654 = %DPV$y
  %eptr9647 = getelementptr inbounds i64, i64* %cloptr9646, i64 0                    ; &cloptr9646[0]
  %f9655 = ptrtoint void(i64,i64,i64)* @lam8340 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9655, i64* %eptr9647                                                   ; store fptr
  %arg7702 = ptrtoint i64* %cloptr9646 to i64                                        ; closure cast; i64* -> i64
  %cloptr9656 = inttoptr i64 %TON$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9656)                                         ; assert function application
  %i0ptr9657 = getelementptr inbounds i64, i64* %cloptr9656, i64 0                   ; &cloptr9656[0]
  %f9659 = load i64, i64* %i0ptr9657, align 8                                        ; load; *i0ptr9657
  %fptr9658 = inttoptr i64 %f9659 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9658(i64 %TON$_37drop, i64 %arg7702, i64 %laA$x, i64 %a7040); tail call
  ret void

else9645:
  %cloptr9660 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9662 = getelementptr inbounds i64, i64* %cloptr9660, i64 1                    ; &eptr9662[1]
  %eptr9663 = getelementptr inbounds i64, i64* %cloptr9660, i64 2                    ; &eptr9663[2]
  %eptr9664 = getelementptr inbounds i64, i64* %cloptr9660, i64 3                    ; &eptr9664[3]
  %eptr9665 = getelementptr inbounds i64, i64* %cloptr9660, i64 4                    ; &eptr9665[4]
  %eptr9666 = getelementptr inbounds i64, i64* %cloptr9660, i64 5                    ; &eptr9666[5]
  %eptr9667 = getelementptr inbounds i64, i64* %cloptr9660, i64 6                    ; &eptr9667[6]
  %eptr9668 = getelementptr inbounds i64, i64* %cloptr9660, i64 7                    ; &eptr9668[7]
  store i64 %a7038, i64* %eptr9662                                                   ; *eptr9662 = %a7038
  store i64 %oWl$_37_62, i64* %eptr9663                                              ; *eptr9663 = %oWl$_37_62
  store i64 %TON$_37drop, i64* %eptr9664                                             ; *eptr9664 = %TON$_37drop
  store i64 %Kbc$ly, i64* %eptr9665                                                  ; *eptr9665 = %Kbc$ly
  store i64 %LBl$lx, i64* %eptr9666                                                  ; *eptr9666 = %LBl$lx
  store i64 %cont7136, i64* %eptr9667                                                ; *eptr9667 = %cont7136
  store i64 %DPV$y, i64* %eptr9668                                                   ; *eptr9668 = %DPV$y
  %eptr9661 = getelementptr inbounds i64, i64* %cloptr9660, i64 0                    ; &cloptr9660[0]
  %f9669 = ptrtoint void(i64,i64,i64)* @lam8350 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9669, i64* %eptr9661                                                   ; store fptr
  %arg7727 = ptrtoint i64* %cloptr9660 to i64                                        ; closure cast; i64* -> i64
  %arg7726 = add i64 0, 0                                                            ; quoted ()
  %cloptr9670 = inttoptr i64 %arg7727 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9670)                                         ; assert function application
  %i0ptr9671 = getelementptr inbounds i64, i64* %cloptr9670, i64 0                   ; &cloptr9670[0]
  %f9673 = load i64, i64* %i0ptr9671, align 8                                        ; load; *i0ptr9671
  %fptr9672 = inttoptr i64 %f9673 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9672(i64 %arg7727, i64 %arg7726, i64 %laA$x)        ; tail call
  ret void
}


define void @lam8350(i64 %env8351, i64 %_957142, i64 %a7041) {
  %envptr9674 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9675 = getelementptr inbounds i64, i64* %envptr9674, i64 7                  ; &envptr9674[7]
  %DPV$y = load i64, i64* %envptr9675, align 8                                       ; load; *envptr9675
  %envptr9676 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9677 = getelementptr inbounds i64, i64* %envptr9676, i64 6                  ; &envptr9676[6]
  %cont7136 = load i64, i64* %envptr9677, align 8                                    ; load; *envptr9677
  %envptr9678 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9679 = getelementptr inbounds i64, i64* %envptr9678, i64 5                  ; &envptr9678[5]
  %LBl$lx = load i64, i64* %envptr9679, align 8                                      ; load; *envptr9679
  %envptr9680 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9681 = getelementptr inbounds i64, i64* %envptr9680, i64 4                  ; &envptr9680[4]
  %Kbc$ly = load i64, i64* %envptr9681, align 8                                      ; load; *envptr9681
  %envptr9682 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9683 = getelementptr inbounds i64, i64* %envptr9682, i64 3                  ; &envptr9682[3]
  %TON$_37drop = load i64, i64* %envptr9683, align 8                                 ; load; *envptr9683
  %envptr9684 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9685 = getelementptr inbounds i64, i64* %envptr9684, i64 2                  ; &envptr9684[2]
  %oWl$_37_62 = load i64, i64* %envptr9685, align 8                                  ; load; *envptr9685
  %envptr9686 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9687 = getelementptr inbounds i64, i64* %envptr9686, i64 1                  ; &envptr9686[1]
  %a7038 = load i64, i64* %envptr9687, align 8                                       ; load; *envptr9687
  %cloptr9688 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9690 = getelementptr inbounds i64, i64* %cloptr9688, i64 1                    ; &eptr9690[1]
  %eptr9691 = getelementptr inbounds i64, i64* %cloptr9688, i64 2                    ; &eptr9691[2]
  %eptr9692 = getelementptr inbounds i64, i64* %cloptr9688, i64 3                    ; &eptr9692[3]
  %eptr9693 = getelementptr inbounds i64, i64* %cloptr9688, i64 4                    ; &eptr9693[4]
  %eptr9694 = getelementptr inbounds i64, i64* %cloptr9688, i64 5                    ; &eptr9694[5]
  %eptr9695 = getelementptr inbounds i64, i64* %cloptr9688, i64 6                    ; &eptr9695[6]
  %eptr9696 = getelementptr inbounds i64, i64* %cloptr9688, i64 7                    ; &eptr9696[7]
  store i64 %a7041, i64* %eptr9690                                                   ; *eptr9690 = %a7041
  store i64 %a7038, i64* %eptr9691                                                   ; *eptr9691 = %a7038
  store i64 %TON$_37drop, i64* %eptr9692                                             ; *eptr9692 = %TON$_37drop
  store i64 %Kbc$ly, i64* %eptr9693                                                  ; *eptr9693 = %Kbc$ly
  store i64 %LBl$lx, i64* %eptr9694                                                  ; *eptr9694 = %LBl$lx
  store i64 %cont7136, i64* %eptr9695                                                ; *eptr9695 = %cont7136
  store i64 %DPV$y, i64* %eptr9696                                                   ; *eptr9696 = %DPV$y
  %eptr9689 = getelementptr inbounds i64, i64* %cloptr9688, i64 0                    ; &cloptr9688[0]
  %f9697 = ptrtoint void(i64,i64,i64)* @lam8348 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9697, i64* %eptr9689                                                   ; store fptr
  %arg7730 = ptrtoint i64* %cloptr9688 to i64                                        ; closure cast; i64* -> i64
  %cloptr9698 = inttoptr i64 %oWl$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9698)                                         ; assert function application
  %i0ptr9699 = getelementptr inbounds i64, i64* %cloptr9698, i64 0                   ; &cloptr9698[0]
  %f9701 = load i64, i64* %i0ptr9699, align 8                                        ; load; *i0ptr9699
  %fptr9700 = inttoptr i64 %f9701 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9700(i64 %oWl$_37_62, i64 %arg7730, i64 %Kbc$ly, i64 %LBl$lx); tail call
  ret void
}


define void @lam8348(i64 %env8349, i64 %_957143, i64 %a7042) {
  %envptr9702 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9703 = getelementptr inbounds i64, i64* %envptr9702, i64 7                  ; &envptr9702[7]
  %DPV$y = load i64, i64* %envptr9703, align 8                                       ; load; *envptr9703
  %envptr9704 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9705 = getelementptr inbounds i64, i64* %envptr9704, i64 6                  ; &envptr9704[6]
  %cont7136 = load i64, i64* %envptr9705, align 8                                    ; load; *envptr9705
  %envptr9706 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9707 = getelementptr inbounds i64, i64* %envptr9706, i64 5                  ; &envptr9706[5]
  %LBl$lx = load i64, i64* %envptr9707, align 8                                      ; load; *envptr9707
  %envptr9708 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9709 = getelementptr inbounds i64, i64* %envptr9708, i64 4                  ; &envptr9708[4]
  %Kbc$ly = load i64, i64* %envptr9709, align 8                                      ; load; *envptr9709
  %envptr9710 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9711 = getelementptr inbounds i64, i64* %envptr9710, i64 3                  ; &envptr9710[3]
  %TON$_37drop = load i64, i64* %envptr9711, align 8                                 ; load; *envptr9711
  %envptr9712 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9713 = getelementptr inbounds i64, i64* %envptr9712, i64 2                  ; &envptr9712[2]
  %a7038 = load i64, i64* %envptr9713, align 8                                       ; load; *envptr9713
  %envptr9714 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9715 = getelementptr inbounds i64, i64* %envptr9714, i64 1                  ; &envptr9714[1]
  %a7041 = load i64, i64* %envptr9715, align 8                                       ; load; *envptr9715
  %cmp9716 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9716, label %else9718, label %then9717                                   ; if

then9717:
  %a7043 = call i64 @prim__45(i64 %Kbc$ly, i64 %LBl$lx)                              ; call prim__45
  %cloptr9719 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9721 = getelementptr inbounds i64, i64* %cloptr9719, i64 1                    ; &eptr9721[1]
  %eptr9722 = getelementptr inbounds i64, i64* %cloptr9719, i64 2                    ; &eptr9722[2]
  %eptr9723 = getelementptr inbounds i64, i64* %cloptr9719, i64 3                    ; &eptr9723[3]
  store i64 %a7041, i64* %eptr9721                                                   ; *eptr9721 = %a7041
  store i64 %a7038, i64* %eptr9722                                                   ; *eptr9722 = %a7038
  store i64 %cont7136, i64* %eptr9723                                                ; *eptr9723 = %cont7136
  %eptr9720 = getelementptr inbounds i64, i64* %cloptr9719, i64 0                    ; &cloptr9719[0]
  %f9724 = ptrtoint void(i64,i64,i64)* @lam8343 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9724, i64* %eptr9720                                                   ; store fptr
  %arg7736 = ptrtoint i64* %cloptr9719 to i64                                        ; closure cast; i64* -> i64
  %cloptr9725 = inttoptr i64 %TON$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9725)                                         ; assert function application
  %i0ptr9726 = getelementptr inbounds i64, i64* %cloptr9725, i64 0                   ; &cloptr9725[0]
  %f9728 = load i64, i64* %i0ptr9726, align 8                                        ; load; *i0ptr9726
  %fptr9727 = inttoptr i64 %f9728 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9727(i64 %TON$_37drop, i64 %arg7736, i64 %DPV$y, i64 %a7043); tail call
  ret void

else9718:
  %cloptr9729 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9731 = getelementptr inbounds i64, i64* %cloptr9729, i64 1                    ; &eptr9731[1]
  %eptr9732 = getelementptr inbounds i64, i64* %cloptr9729, i64 2                    ; &eptr9732[2]
  %eptr9733 = getelementptr inbounds i64, i64* %cloptr9729, i64 3                    ; &eptr9733[3]
  store i64 %a7041, i64* %eptr9731                                                   ; *eptr9731 = %a7041
  store i64 %a7038, i64* %eptr9732                                                   ; *eptr9732 = %a7038
  store i64 %cont7136, i64* %eptr9733                                                ; *eptr9733 = %cont7136
  %eptr9730 = getelementptr inbounds i64, i64* %cloptr9729, i64 0                    ; &cloptr9729[0]
  %f9734 = ptrtoint void(i64,i64,i64)* @lam8346 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9734, i64* %eptr9730                                                   ; store fptr
  %arg7744 = ptrtoint i64* %cloptr9729 to i64                                        ; closure cast; i64* -> i64
  %arg7743 = add i64 0, 0                                                            ; quoted ()
  %cloptr9735 = inttoptr i64 %arg7744 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9735)                                         ; assert function application
  %i0ptr9736 = getelementptr inbounds i64, i64* %cloptr9735, i64 0                   ; &cloptr9735[0]
  %f9738 = load i64, i64* %i0ptr9736, align 8                                        ; load; *i0ptr9736
  %fptr9737 = inttoptr i64 %f9738 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9737(i64 %arg7744, i64 %arg7743, i64 %DPV$y)        ; tail call
  ret void
}


define void @lam8346(i64 %env8347, i64 %_957144, i64 %a7044) {
  %envptr9739 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9740 = getelementptr inbounds i64, i64* %envptr9739, i64 3                  ; &envptr9739[3]
  %cont7136 = load i64, i64* %envptr9740, align 8                                    ; load; *envptr9740
  %envptr9741 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9742 = getelementptr inbounds i64, i64* %envptr9741, i64 2                  ; &envptr9741[2]
  %a7038 = load i64, i64* %envptr9742, align 8                                       ; load; *envptr9742
  %envptr9743 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9744 = getelementptr inbounds i64, i64* %envptr9743, i64 1                  ; &envptr9743[1]
  %a7041 = load i64, i64* %envptr9744, align 8                                       ; load; *envptr9744
  %cloptr9745 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9745)                                         ; assert function application
  %i0ptr9746 = getelementptr inbounds i64, i64* %cloptr9745, i64 0                   ; &cloptr9745[0]
  %f9748 = load i64, i64* %i0ptr9746, align 8                                        ; load; *i0ptr9746
  %fptr9747 = inttoptr i64 %f9748 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9747(i64 %a7038, i64 %cont7136, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8343(i64 %env8344, i64 %_957144, i64 %a7044) {
  %envptr9749 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9750 = getelementptr inbounds i64, i64* %envptr9749, i64 3                  ; &envptr9749[3]
  %cont7136 = load i64, i64* %envptr9750, align 8                                    ; load; *envptr9750
  %envptr9751 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9752 = getelementptr inbounds i64, i64* %envptr9751, i64 2                  ; &envptr9751[2]
  %a7038 = load i64, i64* %envptr9752, align 8                                       ; load; *envptr9752
  %envptr9753 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9754 = getelementptr inbounds i64, i64* %envptr9753, i64 1                  ; &envptr9753[1]
  %a7041 = load i64, i64* %envptr9754, align 8                                       ; load; *envptr9754
  %cloptr9755 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9755)                                         ; assert function application
  %i0ptr9756 = getelementptr inbounds i64, i64* %cloptr9755, i64 0                   ; &cloptr9755[0]
  %f9758 = load i64, i64* %i0ptr9756, align 8                                        ; load; *i0ptr9756
  %fptr9757 = inttoptr i64 %f9758 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9757(i64 %a7038, i64 %cont7136, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8340(i64 %env8341, i64 %_957142, i64 %a7041) {
  %envptr9759 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9760 = getelementptr inbounds i64, i64* %envptr9759, i64 7                  ; &envptr9759[7]
  %DPV$y = load i64, i64* %envptr9760, align 8                                       ; load; *envptr9760
  %envptr9761 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9762 = getelementptr inbounds i64, i64* %envptr9761, i64 6                  ; &envptr9761[6]
  %cont7136 = load i64, i64* %envptr9762, align 8                                    ; load; *envptr9762
  %envptr9763 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9764 = getelementptr inbounds i64, i64* %envptr9763, i64 5                  ; &envptr9763[5]
  %LBl$lx = load i64, i64* %envptr9764, align 8                                      ; load; *envptr9764
  %envptr9765 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9766 = getelementptr inbounds i64, i64* %envptr9765, i64 4                  ; &envptr9765[4]
  %Kbc$ly = load i64, i64* %envptr9766, align 8                                      ; load; *envptr9766
  %envptr9767 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9768 = getelementptr inbounds i64, i64* %envptr9767, i64 3                  ; &envptr9767[3]
  %TON$_37drop = load i64, i64* %envptr9768, align 8                                 ; load; *envptr9768
  %envptr9769 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9770 = getelementptr inbounds i64, i64* %envptr9769, i64 2                  ; &envptr9769[2]
  %oWl$_37_62 = load i64, i64* %envptr9770, align 8                                  ; load; *envptr9770
  %envptr9771 = inttoptr i64 %env8341 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9772 = getelementptr inbounds i64, i64* %envptr9771, i64 1                  ; &envptr9771[1]
  %a7038 = load i64, i64* %envptr9772, align 8                                       ; load; *envptr9772
  %cloptr9773 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9775 = getelementptr inbounds i64, i64* %cloptr9773, i64 1                    ; &eptr9775[1]
  %eptr9776 = getelementptr inbounds i64, i64* %cloptr9773, i64 2                    ; &eptr9776[2]
  %eptr9777 = getelementptr inbounds i64, i64* %cloptr9773, i64 3                    ; &eptr9777[3]
  %eptr9778 = getelementptr inbounds i64, i64* %cloptr9773, i64 4                    ; &eptr9778[4]
  %eptr9779 = getelementptr inbounds i64, i64* %cloptr9773, i64 5                    ; &eptr9779[5]
  %eptr9780 = getelementptr inbounds i64, i64* %cloptr9773, i64 6                    ; &eptr9780[6]
  %eptr9781 = getelementptr inbounds i64, i64* %cloptr9773, i64 7                    ; &eptr9781[7]
  store i64 %a7041, i64* %eptr9775                                                   ; *eptr9775 = %a7041
  store i64 %a7038, i64* %eptr9776                                                   ; *eptr9776 = %a7038
  store i64 %TON$_37drop, i64* %eptr9777                                             ; *eptr9777 = %TON$_37drop
  store i64 %Kbc$ly, i64* %eptr9778                                                  ; *eptr9778 = %Kbc$ly
  store i64 %LBl$lx, i64* %eptr9779                                                  ; *eptr9779 = %LBl$lx
  store i64 %cont7136, i64* %eptr9780                                                ; *eptr9780 = %cont7136
  store i64 %DPV$y, i64* %eptr9781                                                   ; *eptr9781 = %DPV$y
  %eptr9774 = getelementptr inbounds i64, i64* %cloptr9773, i64 0                    ; &cloptr9773[0]
  %f9782 = ptrtoint void(i64,i64,i64)* @lam8338 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9782, i64* %eptr9774                                                   ; store fptr
  %arg7706 = ptrtoint i64* %cloptr9773 to i64                                        ; closure cast; i64* -> i64
  %cloptr9783 = inttoptr i64 %oWl$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9783)                                         ; assert function application
  %i0ptr9784 = getelementptr inbounds i64, i64* %cloptr9783, i64 0                   ; &cloptr9783[0]
  %f9786 = load i64, i64* %i0ptr9784, align 8                                        ; load; *i0ptr9784
  %fptr9785 = inttoptr i64 %f9786 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9785(i64 %oWl$_37_62, i64 %arg7706, i64 %Kbc$ly, i64 %LBl$lx); tail call
  ret void
}


define void @lam8338(i64 %env8339, i64 %_957143, i64 %a7042) {
  %envptr9787 = inttoptr i64 %env8339 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9788 = getelementptr inbounds i64, i64* %envptr9787, i64 7                  ; &envptr9787[7]
  %DPV$y = load i64, i64* %envptr9788, align 8                                       ; load; *envptr9788
  %envptr9789 = inttoptr i64 %env8339 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9790 = getelementptr inbounds i64, i64* %envptr9789, i64 6                  ; &envptr9789[6]
  %cont7136 = load i64, i64* %envptr9790, align 8                                    ; load; *envptr9790
  %envptr9791 = inttoptr i64 %env8339 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9792 = getelementptr inbounds i64, i64* %envptr9791, i64 5                  ; &envptr9791[5]
  %LBl$lx = load i64, i64* %envptr9792, align 8                                      ; load; *envptr9792
  %envptr9793 = inttoptr i64 %env8339 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9794 = getelementptr inbounds i64, i64* %envptr9793, i64 4                  ; &envptr9793[4]
  %Kbc$ly = load i64, i64* %envptr9794, align 8                                      ; load; *envptr9794
  %envptr9795 = inttoptr i64 %env8339 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9796 = getelementptr inbounds i64, i64* %envptr9795, i64 3                  ; &envptr9795[3]
  %TON$_37drop = load i64, i64* %envptr9796, align 8                                 ; load; *envptr9796
  %envptr9797 = inttoptr i64 %env8339 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9798 = getelementptr inbounds i64, i64* %envptr9797, i64 2                  ; &envptr9797[2]
  %a7038 = load i64, i64* %envptr9798, align 8                                       ; load; *envptr9798
  %envptr9799 = inttoptr i64 %env8339 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9800 = getelementptr inbounds i64, i64* %envptr9799, i64 1                  ; &envptr9799[1]
  %a7041 = load i64, i64* %envptr9800, align 8                                       ; load; *envptr9800
  %cmp9801 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9801, label %else9803, label %then9802                                   ; if

then9802:
  %a7043 = call i64 @prim__45(i64 %Kbc$ly, i64 %LBl$lx)                              ; call prim__45
  %cloptr9804 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9806 = getelementptr inbounds i64, i64* %cloptr9804, i64 1                    ; &eptr9806[1]
  %eptr9807 = getelementptr inbounds i64, i64* %cloptr9804, i64 2                    ; &eptr9807[2]
  %eptr9808 = getelementptr inbounds i64, i64* %cloptr9804, i64 3                    ; &eptr9808[3]
  store i64 %a7041, i64* %eptr9806                                                   ; *eptr9806 = %a7041
  store i64 %a7038, i64* %eptr9807                                                   ; *eptr9807 = %a7038
  store i64 %cont7136, i64* %eptr9808                                                ; *eptr9808 = %cont7136
  %eptr9805 = getelementptr inbounds i64, i64* %cloptr9804, i64 0                    ; &cloptr9804[0]
  %f9809 = ptrtoint void(i64,i64,i64)* @lam8333 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9809, i64* %eptr9805                                                   ; store fptr
  %arg7712 = ptrtoint i64* %cloptr9804 to i64                                        ; closure cast; i64* -> i64
  %cloptr9810 = inttoptr i64 %TON$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9810)                                         ; assert function application
  %i0ptr9811 = getelementptr inbounds i64, i64* %cloptr9810, i64 0                   ; &cloptr9810[0]
  %f9813 = load i64, i64* %i0ptr9811, align 8                                        ; load; *i0ptr9811
  %fptr9812 = inttoptr i64 %f9813 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9812(i64 %TON$_37drop, i64 %arg7712, i64 %DPV$y, i64 %a7043); tail call
  ret void

else9803:
  %cloptr9814 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9816 = getelementptr inbounds i64, i64* %cloptr9814, i64 1                    ; &eptr9816[1]
  %eptr9817 = getelementptr inbounds i64, i64* %cloptr9814, i64 2                    ; &eptr9817[2]
  %eptr9818 = getelementptr inbounds i64, i64* %cloptr9814, i64 3                    ; &eptr9818[3]
  store i64 %a7041, i64* %eptr9816                                                   ; *eptr9816 = %a7041
  store i64 %a7038, i64* %eptr9817                                                   ; *eptr9817 = %a7038
  store i64 %cont7136, i64* %eptr9818                                                ; *eptr9818 = %cont7136
  %eptr9815 = getelementptr inbounds i64, i64* %cloptr9814, i64 0                    ; &cloptr9814[0]
  %f9819 = ptrtoint void(i64,i64,i64)* @lam8336 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9819, i64* %eptr9815                                                   ; store fptr
  %arg7720 = ptrtoint i64* %cloptr9814 to i64                                        ; closure cast; i64* -> i64
  %arg7719 = add i64 0, 0                                                            ; quoted ()
  %cloptr9820 = inttoptr i64 %arg7720 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9820)                                         ; assert function application
  %i0ptr9821 = getelementptr inbounds i64, i64* %cloptr9820, i64 0                   ; &cloptr9820[0]
  %f9823 = load i64, i64* %i0ptr9821, align 8                                        ; load; *i0ptr9821
  %fptr9822 = inttoptr i64 %f9823 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9822(i64 %arg7720, i64 %arg7719, i64 %DPV$y)        ; tail call
  ret void
}


define void @lam8336(i64 %env8337, i64 %_957144, i64 %a7044) {
  %envptr9824 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9825 = getelementptr inbounds i64, i64* %envptr9824, i64 3                  ; &envptr9824[3]
  %cont7136 = load i64, i64* %envptr9825, align 8                                    ; load; *envptr9825
  %envptr9826 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9827 = getelementptr inbounds i64, i64* %envptr9826, i64 2                  ; &envptr9826[2]
  %a7038 = load i64, i64* %envptr9827, align 8                                       ; load; *envptr9827
  %envptr9828 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9829 = getelementptr inbounds i64, i64* %envptr9828, i64 1                  ; &envptr9828[1]
  %a7041 = load i64, i64* %envptr9829, align 8                                       ; load; *envptr9829
  %cloptr9830 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9830)                                         ; assert function application
  %i0ptr9831 = getelementptr inbounds i64, i64* %cloptr9830, i64 0                   ; &cloptr9830[0]
  %f9833 = load i64, i64* %i0ptr9831, align 8                                        ; load; *i0ptr9831
  %fptr9832 = inttoptr i64 %f9833 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9832(i64 %a7038, i64 %cont7136, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8333(i64 %env8334, i64 %_957144, i64 %a7044) {
  %envptr9834 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9835 = getelementptr inbounds i64, i64* %envptr9834, i64 3                  ; &envptr9834[3]
  %cont7136 = load i64, i64* %envptr9835, align 8                                    ; load; *envptr9835
  %envptr9836 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9837 = getelementptr inbounds i64, i64* %envptr9836, i64 2                  ; &envptr9836[2]
  %a7038 = load i64, i64* %envptr9837, align 8                                       ; load; *envptr9837
  %envptr9838 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9839 = getelementptr inbounds i64, i64* %envptr9838, i64 1                  ; &envptr9838[1]
  %a7041 = load i64, i64* %envptr9839, align 8                                       ; load; *envptr9839
  %cloptr9840 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9840)                                         ; assert function application
  %i0ptr9841 = getelementptr inbounds i64, i64* %cloptr9840, i64 0                   ; &cloptr9840[0]
  %f9843 = load i64, i64* %i0ptr9841, align 8                                        ; load; *i0ptr9841
  %fptr9842 = inttoptr i64 %f9843 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9842(i64 %a7038, i64 %cont7136, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8330(i64 %env8331, i64 %cont7149, i64 %jvQ$new) {
  %envptr9844 = inttoptr i64 %env8331 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9845 = getelementptr inbounds i64, i64* %envptr9844, i64 2                  ; &envptr9844[2]
  %yGA$_37common_45tail = load i64, i64* %envptr9845, align 8                        ; load; *envptr9845
  %envptr9846 = inttoptr i64 %env8331 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9847 = getelementptr inbounds i64, i64* %envptr9846, i64 1                  ; &envptr9846[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr9847, align 8                         ; load; *envptr9847
  %arg7749 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7045 = call i64 @prim_vector_45ref(i64 %Dpt$_37wind_45stack, i64 %arg7749)       ; call prim_vector_45ref
  %cloptr9848 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9850 = getelementptr inbounds i64, i64* %cloptr9848, i64 1                    ; &eptr9850[1]
  %eptr9851 = getelementptr inbounds i64, i64* %cloptr9848, i64 2                    ; &eptr9851[2]
  %eptr9852 = getelementptr inbounds i64, i64* %cloptr9848, i64 3                    ; &eptr9852[3]
  store i64 %Dpt$_37wind_45stack, i64* %eptr9850                                     ; *eptr9850 = %Dpt$_37wind_45stack
  store i64 %cont7149, i64* %eptr9851                                                ; *eptr9851 = %cont7149
  store i64 %jvQ$new, i64* %eptr9852                                                 ; *eptr9852 = %jvQ$new
  %eptr9849 = getelementptr inbounds i64, i64* %cloptr9848, i64 0                    ; &cloptr9848[0]
  %f9853 = ptrtoint void(i64,i64,i64)* @lam8327 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9853, i64* %eptr9849                                                   ; store fptr
  %arg7753 = ptrtoint i64* %cloptr9848 to i64                                        ; closure cast; i64* -> i64
  %cloptr9854 = inttoptr i64 %yGA$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9854)                                         ; assert function application
  %i0ptr9855 = getelementptr inbounds i64, i64* %cloptr9854, i64 0                   ; &cloptr9854[0]
  %f9857 = load i64, i64* %i0ptr9855, align 8                                        ; load; *i0ptr9855
  %fptr9856 = inttoptr i64 %f9857 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9856(i64 %yGA$_37common_45tail, i64 %arg7753, i64 %jvQ$new, i64 %a7045); tail call
  ret void
}


define void @lam8327(i64 %env8328, i64 %_957150, i64 %Tx4$tail) {
  %envptr9858 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9859 = getelementptr inbounds i64, i64* %envptr9858, i64 3                  ; &envptr9858[3]
  %jvQ$new = load i64, i64* %envptr9859, align 8                                     ; load; *envptr9859
  %envptr9860 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9861 = getelementptr inbounds i64, i64* %envptr9860, i64 2                  ; &envptr9860[2]
  %cont7149 = load i64, i64* %envptr9861, align 8                                    ; load; *envptr9861
  %envptr9862 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9863 = getelementptr inbounds i64, i64* %envptr9862, i64 1                  ; &envptr9862[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr9863, align 8                         ; load; *envptr9863
  %cloptr9864 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9865 = getelementptr inbounds i64, i64* %cloptr9864, i64 0                    ; &cloptr9864[0]
  %f9866 = ptrtoint void(i64,i64)* @lam8325 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9866, i64* %eptr9865                                                   ; store fptr
  %arg7756 = ptrtoint i64* %cloptr9864 to i64                                        ; closure cast; i64* -> i64
  %cloptr9867 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9869 = getelementptr inbounds i64, i64* %cloptr9867, i64 1                    ; &eptr9869[1]
  %eptr9870 = getelementptr inbounds i64, i64* %cloptr9867, i64 2                    ; &eptr9870[2]
  %eptr9871 = getelementptr inbounds i64, i64* %cloptr9867, i64 3                    ; &eptr9871[3]
  %eptr9872 = getelementptr inbounds i64, i64* %cloptr9867, i64 4                    ; &eptr9872[4]
  store i64 %Dpt$_37wind_45stack, i64* %eptr9869                                     ; *eptr9869 = %Dpt$_37wind_45stack
  store i64 %cont7149, i64* %eptr9870                                                ; *eptr9870 = %cont7149
  store i64 %Tx4$tail, i64* %eptr9871                                                ; *eptr9871 = %Tx4$tail
  store i64 %jvQ$new, i64* %eptr9872                                                 ; *eptr9872 = %jvQ$new
  %eptr9868 = getelementptr inbounds i64, i64* %cloptr9867, i64 0                    ; &cloptr9867[0]
  %f9873 = ptrtoint void(i64,i64,i64)* @lam8322 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9873, i64* %eptr9868                                                   ; store fptr
  %arg7755 = ptrtoint i64* %cloptr9867 to i64                                        ; closure cast; i64* -> i64
  %cloptr9874 = inttoptr i64 %arg7756 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9874)                                         ; assert function application
  %i0ptr9875 = getelementptr inbounds i64, i64* %cloptr9874, i64 0                   ; &cloptr9874[0]
  %f9877 = load i64, i64* %i0ptr9875, align 8                                        ; load; *i0ptr9875
  %fptr9876 = inttoptr i64 %f9877 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9876(i64 %arg7756, i64 %arg7755)                    ; tail call
  ret void
}


define void @lam8325(i64 %env8326, i64 %lck$lst7171) {
  %cont7170 = call i64 @prim_car(i64 %lck$lst7171)                                   ; call prim_car
  %lck$lst = call i64 @prim_cdr(i64 %lck$lst7171)                                    ; call prim_cdr
  %arg7760 = add i64 0, 0                                                            ; quoted ()
  %cloptr9878 = inttoptr i64 %cont7170 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9878)                                         ; assert function application
  %i0ptr9879 = getelementptr inbounds i64, i64* %cloptr9878, i64 0                   ; &cloptr9878[0]
  %f9881 = load i64, i64* %i0ptr9879, align 8                                        ; load; *i0ptr9879
  %fptr9880 = inttoptr i64 %f9881 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9880(i64 %cont7170, i64 %arg7760, i64 %lck$lst)     ; tail call
  ret void
}


define void @lam8322(i64 %env8323, i64 %_957168, i64 %a7046) {
  %envptr9882 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9883 = getelementptr inbounds i64, i64* %envptr9882, i64 4                  ; &envptr9882[4]
  %jvQ$new = load i64, i64* %envptr9883, align 8                                     ; load; *envptr9883
  %envptr9884 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9885 = getelementptr inbounds i64, i64* %envptr9884, i64 3                  ; &envptr9884[3]
  %Tx4$tail = load i64, i64* %envptr9885, align 8                                    ; load; *envptr9885
  %envptr9886 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9887 = getelementptr inbounds i64, i64* %envptr9886, i64 2                  ; &envptr9886[2]
  %cont7149 = load i64, i64* %envptr9887, align 8                                    ; load; *envptr9887
  %envptr9888 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9889 = getelementptr inbounds i64, i64* %envptr9888, i64 1                  ; &envptr9888[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr9889, align 8                         ; load; *envptr9889
  %arg7763 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7169 = call i64 @prim_make_45vector(i64 %arg7763, i64 %a7046)              ; call prim_make_45vector
  %cloptr9890 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9892 = getelementptr inbounds i64, i64* %cloptr9890, i64 1                    ; &eptr9892[1]
  %eptr9893 = getelementptr inbounds i64, i64* %cloptr9890, i64 2                    ; &eptr9893[2]
  %eptr9894 = getelementptr inbounds i64, i64* %cloptr9890, i64 3                    ; &eptr9894[3]
  %eptr9895 = getelementptr inbounds i64, i64* %cloptr9890, i64 4                    ; &eptr9895[4]
  store i64 %Dpt$_37wind_45stack, i64* %eptr9892                                     ; *eptr9892 = %Dpt$_37wind_45stack
  store i64 %cont7149, i64* %eptr9893                                                ; *eptr9893 = %cont7149
  store i64 %Tx4$tail, i64* %eptr9894                                                ; *eptr9894 = %Tx4$tail
  store i64 %jvQ$new, i64* %eptr9895                                                 ; *eptr9895 = %jvQ$new
  %eptr9891 = getelementptr inbounds i64, i64* %cloptr9890, i64 0                    ; &cloptr9890[0]
  %f9896 = ptrtoint void(i64,i64,i64)* @lam8319 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9896, i64* %eptr9891                                                   ; store fptr
  %arg7766 = ptrtoint i64* %cloptr9890 to i64                                        ; closure cast; i64* -> i64
  %arg7765 = add i64 0, 0                                                            ; quoted ()
  %cloptr9897 = inttoptr i64 %arg7766 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9897)                                         ; assert function application
  %i0ptr9898 = getelementptr inbounds i64, i64* %cloptr9897, i64 0                   ; &cloptr9897[0]
  %f9900 = load i64, i64* %i0ptr9898, align 8                                        ; load; *i0ptr9898
  %fptr9899 = inttoptr i64 %f9900 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9899(i64 %arg7766, i64 %arg7765, i64 %retprim7169)  ; tail call
  ret void
}


define void @lam8319(i64 %env8320, i64 %_957162, i64 %ZjV$f) {
  %envptr9901 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9902 = getelementptr inbounds i64, i64* %envptr9901, i64 4                  ; &envptr9901[4]
  %jvQ$new = load i64, i64* %envptr9902, align 8                                     ; load; *envptr9902
  %envptr9903 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9904 = getelementptr inbounds i64, i64* %envptr9903, i64 3                  ; &envptr9903[3]
  %Tx4$tail = load i64, i64* %envptr9904, align 8                                    ; load; *envptr9904
  %envptr9905 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9906 = getelementptr inbounds i64, i64* %envptr9905, i64 2                  ; &envptr9905[2]
  %cont7149 = load i64, i64* %envptr9906, align 8                                    ; load; *envptr9906
  %envptr9907 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9908 = getelementptr inbounds i64, i64* %envptr9907, i64 1                  ; &envptr9907[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr9908, align 8                         ; load; *envptr9908
  %arg7768 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9909 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9911 = getelementptr inbounds i64, i64* %cloptr9909, i64 1                    ; &eptr9911[1]
  %eptr9912 = getelementptr inbounds i64, i64* %cloptr9909, i64 2                    ; &eptr9912[2]
  %eptr9913 = getelementptr inbounds i64, i64* %cloptr9909, i64 3                    ; &eptr9913[3]
  store i64 %Dpt$_37wind_45stack, i64* %eptr9911                                     ; *eptr9911 = %Dpt$_37wind_45stack
  store i64 %Tx4$tail, i64* %eptr9912                                                ; *eptr9912 = %Tx4$tail
  store i64 %ZjV$f, i64* %eptr9913                                                   ; *eptr9913 = %ZjV$f
  %eptr9910 = getelementptr inbounds i64, i64* %cloptr9909, i64 0                    ; &cloptr9909[0]
  %f9914 = ptrtoint void(i64,i64,i64)* @lam8316 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9914, i64* %eptr9910                                                   ; store fptr
  %arg7767 = ptrtoint i64* %cloptr9909 to i64                                        ; closure cast; i64* -> i64
  %VH8$_956939 = call i64 @prim_vector_45set_33(i64 %ZjV$f, i64 %arg7768, i64 %arg7767); call prim_vector_45set_33
  %arg7793 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7054 = call i64 @prim_vector_45ref(i64 %ZjV$f, i64 %arg7793)                     ; call prim_vector_45ref
  %arg7795 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7055 = call i64 @prim_vector_45ref(i64 %Dpt$_37wind_45stack, i64 %arg7795)       ; call prim_vector_45ref
  %cloptr9915 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9917 = getelementptr inbounds i64, i64* %cloptr9915, i64 1                    ; &eptr9917[1]
  %eptr9918 = getelementptr inbounds i64, i64* %cloptr9915, i64 2                    ; &eptr9918[2]
  %eptr9919 = getelementptr inbounds i64, i64* %cloptr9915, i64 3                    ; &eptr9919[3]
  %eptr9920 = getelementptr inbounds i64, i64* %cloptr9915, i64 4                    ; &eptr9920[4]
  store i64 %Dpt$_37wind_45stack, i64* %eptr9917                                     ; *eptr9917 = %Dpt$_37wind_45stack
  store i64 %cont7149, i64* %eptr9918                                                ; *eptr9918 = %cont7149
  store i64 %Tx4$tail, i64* %eptr9919                                                ; *eptr9919 = %Tx4$tail
  store i64 %jvQ$new, i64* %eptr9920                                                 ; *eptr9920 = %jvQ$new
  %eptr9916 = getelementptr inbounds i64, i64* %cloptr9915, i64 0                    ; &cloptr9915[0]
  %f9921 = ptrtoint void(i64,i64,i64)* @lam8304 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9921, i64* %eptr9916                                                   ; store fptr
  %arg7798 = ptrtoint i64* %cloptr9915 to i64                                        ; closure cast; i64* -> i64
  %cloptr9922 = inttoptr i64 %a7054 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9922)                                         ; assert function application
  %i0ptr9923 = getelementptr inbounds i64, i64* %cloptr9922, i64 0                   ; &cloptr9922[0]
  %f9925 = load i64, i64* %i0ptr9923, align 8                                        ; load; *i0ptr9923
  %fptr9924 = inttoptr i64 %f9925 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9924(i64 %a7054, i64 %arg7798, i64 %a7055)          ; tail call
  ret void
}


define void @lam8316(i64 %env8317, i64 %cont7163, i64 %GIl$l) {
  %envptr9926 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9927 = getelementptr inbounds i64, i64* %envptr9926, i64 3                  ; &envptr9926[3]
  %ZjV$f = load i64, i64* %envptr9927, align 8                                       ; load; *envptr9927
  %envptr9928 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9929 = getelementptr inbounds i64, i64* %envptr9928, i64 2                  ; &envptr9928[2]
  %Tx4$tail = load i64, i64* %envptr9929, align 8                                    ; load; *envptr9929
  %envptr9930 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9931 = getelementptr inbounds i64, i64* %envptr9930, i64 1                  ; &envptr9930[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr9931, align 8                         ; load; *envptr9931
  %a7047 = call i64 @prim_eq_63(i64 %GIl$l, i64 %Tx4$tail)                           ; call prim_eq_63
  %a7048 = call i64 @prim_not(i64 %a7047)                                            ; call prim_not
  %cmp9932 = icmp eq i64 %a7048, 15                                                  ; false?
  br i1 %cmp9932, label %else9934, label %then9933                                   ; if

then9933:
  %a7049 = call i64 @prim_cdr(i64 %GIl$l)                                            ; call prim_cdr
  %arg7775 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7166 = call i64 @prim_vector_45set_33(i64 %Dpt$_37wind_45stack, i64 %arg7775, i64 %a7049); call prim_vector_45set_33
  %cloptr9935 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9937 = getelementptr inbounds i64, i64* %cloptr9935, i64 1                    ; &eptr9937[1]
  %eptr9938 = getelementptr inbounds i64, i64* %cloptr9935, i64 2                    ; &eptr9938[2]
  %eptr9939 = getelementptr inbounds i64, i64* %cloptr9935, i64 3                    ; &eptr9939[3]
  store i64 %cont7163, i64* %eptr9937                                                ; *eptr9937 = %cont7163
  store i64 %ZjV$f, i64* %eptr9938                                                   ; *eptr9938 = %ZjV$f
  store i64 %GIl$l, i64* %eptr9939                                                   ; *eptr9939 = %GIl$l
  %eptr9936 = getelementptr inbounds i64, i64* %cloptr9935, i64 0                    ; &cloptr9935[0]
  %f9940 = ptrtoint void(i64,i64,i64)* @lam8312 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9940, i64* %eptr9936                                                   ; store fptr
  %arg7779 = ptrtoint i64* %cloptr9935 to i64                                        ; closure cast; i64* -> i64
  %arg7778 = add i64 0, 0                                                            ; quoted ()
  %cloptr9941 = inttoptr i64 %arg7779 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9941)                                         ; assert function application
  %i0ptr9942 = getelementptr inbounds i64, i64* %cloptr9941, i64 0                   ; &cloptr9941[0]
  %f9944 = load i64, i64* %i0ptr9942, align 8                                        ; load; *i0ptr9942
  %fptr9943 = inttoptr i64 %f9944 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9943(i64 %arg7779, i64 %arg7778, i64 %retprim7166)  ; tail call
  ret void

else9934:
  %retprim7167 = call i64 @prim_void()                                               ; call prim_void
  %arg7791 = add i64 0, 0                                                            ; quoted ()
  %cloptr9945 = inttoptr i64 %cont7163 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9945)                                         ; assert function application
  %i0ptr9946 = getelementptr inbounds i64, i64* %cloptr9945, i64 0                   ; &cloptr9945[0]
  %f9948 = load i64, i64* %i0ptr9946, align 8                                        ; load; *i0ptr9946
  %fptr9947 = inttoptr i64 %f9948 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9947(i64 %cont7163, i64 %arg7791, i64 %retprim7167) ; tail call
  ret void
}


define void @lam8312(i64 %env8313, i64 %_957164, i64 %w9B$_956940) {
  %envptr9949 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9950 = getelementptr inbounds i64, i64* %envptr9949, i64 3                  ; &envptr9949[3]
  %GIl$l = load i64, i64* %envptr9950, align 8                                       ; load; *envptr9950
  %envptr9951 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9952 = getelementptr inbounds i64, i64* %envptr9951, i64 2                  ; &envptr9951[2]
  %ZjV$f = load i64, i64* %envptr9952, align 8                                       ; load; *envptr9952
  %envptr9953 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9954 = getelementptr inbounds i64, i64* %envptr9953, i64 1                  ; &envptr9953[1]
  %cont7163 = load i64, i64* %envptr9954, align 8                                    ; load; *envptr9954
  %a7050 = call i64 @prim_car(i64 %GIl$l)                                            ; call prim_car
  %a7051 = call i64 @prim_cdr(i64 %a7050)                                            ; call prim_cdr
  %cloptr9955 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9957 = getelementptr inbounds i64, i64* %cloptr9955, i64 1                    ; &eptr9957[1]
  %eptr9958 = getelementptr inbounds i64, i64* %cloptr9955, i64 2                    ; &eptr9958[2]
  %eptr9959 = getelementptr inbounds i64, i64* %cloptr9955, i64 3                    ; &eptr9959[3]
  store i64 %cont7163, i64* %eptr9957                                                ; *eptr9957 = %cont7163
  store i64 %ZjV$f, i64* %eptr9958                                                   ; *eptr9958 = %ZjV$f
  store i64 %GIl$l, i64* %eptr9959                                                   ; *eptr9959 = %GIl$l
  %eptr9956 = getelementptr inbounds i64, i64* %cloptr9955, i64 0                    ; &cloptr9955[0]
  %f9960 = ptrtoint void(i64,i64,i64)* @lam8310 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9960, i64* %eptr9956                                                   ; store fptr
  %arg7782 = ptrtoint i64* %cloptr9955 to i64                                        ; closure cast; i64* -> i64
  %cloptr9961 = inttoptr i64 %a7051 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9961)                                         ; assert function application
  %i0ptr9962 = getelementptr inbounds i64, i64* %cloptr9961, i64 0                   ; &cloptr9961[0]
  %f9964 = load i64, i64* %i0ptr9962, align 8                                        ; load; *i0ptr9962
  %fptr9963 = inttoptr i64 %f9964 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9963(i64 %a7051, i64 %arg7782)                      ; tail call
  ret void
}


define void @lam8310(i64 %env8311, i64 %_957165, i64 %aSA$_956941) {
  %envptr9965 = inttoptr i64 %env8311 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9966 = getelementptr inbounds i64, i64* %envptr9965, i64 3                  ; &envptr9965[3]
  %GIl$l = load i64, i64* %envptr9966, align 8                                       ; load; *envptr9966
  %envptr9967 = inttoptr i64 %env8311 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9968 = getelementptr inbounds i64, i64* %envptr9967, i64 2                  ; &envptr9967[2]
  %ZjV$f = load i64, i64* %envptr9968, align 8                                       ; load; *envptr9968
  %envptr9969 = inttoptr i64 %env8311 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9970 = getelementptr inbounds i64, i64* %envptr9969, i64 1                  ; &envptr9969[1]
  %cont7163 = load i64, i64* %envptr9970, align 8                                    ; load; *envptr9970
  %arg7784 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7052 = call i64 @prim_vector_45ref(i64 %ZjV$f, i64 %arg7784)                     ; call prim_vector_45ref
  %a7053 = call i64 @prim_cdr(i64 %GIl$l)                                            ; call prim_cdr
  %cloptr9971 = inttoptr i64 %a7052 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9971)                                         ; assert function application
  %i0ptr9972 = getelementptr inbounds i64, i64* %cloptr9971, i64 0                   ; &cloptr9971[0]
  %f9974 = load i64, i64* %i0ptr9972, align 8                                        ; load; *i0ptr9972
  %fptr9973 = inttoptr i64 %f9974 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9973(i64 %a7052, i64 %cont7163, i64 %a7053)         ; tail call
  ret void
}


define void @lam8304(i64 %env8305, i64 %_957151, i64 %EAa$_956938) {
  %envptr9975 = inttoptr i64 %env8305 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9976 = getelementptr inbounds i64, i64* %envptr9975, i64 4                  ; &envptr9975[4]
  %jvQ$new = load i64, i64* %envptr9976, align 8                                     ; load; *envptr9976
  %envptr9977 = inttoptr i64 %env8305 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9978 = getelementptr inbounds i64, i64* %envptr9977, i64 3                  ; &envptr9977[3]
  %Tx4$tail = load i64, i64* %envptr9978, align 8                                    ; load; *envptr9978
  %envptr9979 = inttoptr i64 %env8305 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9980 = getelementptr inbounds i64, i64* %envptr9979, i64 2                  ; &envptr9979[2]
  %cont7149 = load i64, i64* %envptr9980, align 8                                    ; load; *envptr9980
  %envptr9981 = inttoptr i64 %env8305 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9982 = getelementptr inbounds i64, i64* %envptr9981, i64 1                  ; &envptr9981[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr9982, align 8                         ; load; *envptr9982
  %cloptr9983 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9984 = getelementptr inbounds i64, i64* %cloptr9983, i64 0                    ; &cloptr9983[0]
  %f9985 = ptrtoint void(i64,i64)* @lam8302 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9985, i64* %eptr9984                                                   ; store fptr
  %arg7801 = ptrtoint i64* %cloptr9983 to i64                                        ; closure cast; i64* -> i64
  %cloptr9986 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9988 = getelementptr inbounds i64, i64* %cloptr9986, i64 1                    ; &eptr9988[1]
  %eptr9989 = getelementptr inbounds i64, i64* %cloptr9986, i64 2                    ; &eptr9989[2]
  %eptr9990 = getelementptr inbounds i64, i64* %cloptr9986, i64 3                    ; &eptr9990[3]
  %eptr9991 = getelementptr inbounds i64, i64* %cloptr9986, i64 4                    ; &eptr9991[4]
  store i64 %Dpt$_37wind_45stack, i64* %eptr9988                                     ; *eptr9988 = %Dpt$_37wind_45stack
  store i64 %cont7149, i64* %eptr9989                                                ; *eptr9989 = %cont7149
  store i64 %Tx4$tail, i64* %eptr9990                                                ; *eptr9990 = %Tx4$tail
  store i64 %jvQ$new, i64* %eptr9991                                                 ; *eptr9991 = %jvQ$new
  %eptr9987 = getelementptr inbounds i64, i64* %cloptr9986, i64 0                    ; &cloptr9986[0]
  %f9992 = ptrtoint void(i64,i64,i64)* @lam8299 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9992, i64* %eptr9987                                                   ; store fptr
  %arg7800 = ptrtoint i64* %cloptr9986 to i64                                        ; closure cast; i64* -> i64
  %cloptr9993 = inttoptr i64 %arg7801 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9993)                                         ; assert function application
  %i0ptr9994 = getelementptr inbounds i64, i64* %cloptr9993, i64 0                   ; &cloptr9993[0]
  %f9996 = load i64, i64* %i0ptr9994, align 8                                        ; load; *i0ptr9994
  %fptr9995 = inttoptr i64 %f9996 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9995(i64 %arg7801, i64 %arg7800)                    ; tail call
  ret void
}


define void @lam8302(i64 %env8303, i64 %L6r$lst7161) {
  %cont7160 = call i64 @prim_car(i64 %L6r$lst7161)                                   ; call prim_car
  %L6r$lst = call i64 @prim_cdr(i64 %L6r$lst7161)                                    ; call prim_cdr
  %arg7805 = add i64 0, 0                                                            ; quoted ()
  %cloptr9997 = inttoptr i64 %cont7160 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9997)                                         ; assert function application
  %i0ptr9998 = getelementptr inbounds i64, i64* %cloptr9997, i64 0                   ; &cloptr9997[0]
  %f10000 = load i64, i64* %i0ptr9998, align 8                                       ; load; *i0ptr9998
  %fptr9999 = inttoptr i64 %f10000 to void (i64,i64,i64)*                            ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9999(i64 %cont7160, i64 %arg7805, i64 %L6r$lst)     ; tail call
  ret void
}


define void @lam8299(i64 %env8300, i64 %_957158, i64 %a7056) {
  %envptr10001 = inttoptr i64 %env8300 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10002 = getelementptr inbounds i64, i64* %envptr10001, i64 4                ; &envptr10001[4]
  %jvQ$new = load i64, i64* %envptr10002, align 8                                    ; load; *envptr10002
  %envptr10003 = inttoptr i64 %env8300 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10004 = getelementptr inbounds i64, i64* %envptr10003, i64 3                ; &envptr10003[3]
  %Tx4$tail = load i64, i64* %envptr10004, align 8                                   ; load; *envptr10004
  %envptr10005 = inttoptr i64 %env8300 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10006 = getelementptr inbounds i64, i64* %envptr10005, i64 2                ; &envptr10005[2]
  %cont7149 = load i64, i64* %envptr10006, align 8                                   ; load; *envptr10006
  %envptr10007 = inttoptr i64 %env8300 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10008 = getelementptr inbounds i64, i64* %envptr10007, i64 1                ; &envptr10007[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr10008, align 8                        ; load; *envptr10008
  %arg7808 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7159 = call i64 @prim_make_45vector(i64 %arg7808, i64 %a7056)              ; call prim_make_45vector
  %cloptr10009 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10011 = getelementptr inbounds i64, i64* %cloptr10009, i64 1                  ; &eptr10011[1]
  %eptr10012 = getelementptr inbounds i64, i64* %cloptr10009, i64 2                  ; &eptr10012[2]
  %eptr10013 = getelementptr inbounds i64, i64* %cloptr10009, i64 3                  ; &eptr10013[3]
  %eptr10014 = getelementptr inbounds i64, i64* %cloptr10009, i64 4                  ; &eptr10014[4]
  store i64 %Dpt$_37wind_45stack, i64* %eptr10011                                    ; *eptr10011 = %Dpt$_37wind_45stack
  store i64 %cont7149, i64* %eptr10012                                               ; *eptr10012 = %cont7149
  store i64 %Tx4$tail, i64* %eptr10013                                               ; *eptr10013 = %Tx4$tail
  store i64 %jvQ$new, i64* %eptr10014                                                ; *eptr10014 = %jvQ$new
  %eptr10010 = getelementptr inbounds i64, i64* %cloptr10009, i64 0                  ; &cloptr10009[0]
  %f10015 = ptrtoint void(i64,i64,i64)* @lam8296 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10015, i64* %eptr10010                                                 ; store fptr
  %arg7811 = ptrtoint i64* %cloptr10009 to i64                                       ; closure cast; i64* -> i64
  %arg7810 = add i64 0, 0                                                            ; quoted ()
  %cloptr10016 = inttoptr i64 %arg7811 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10016)                                        ; assert function application
  %i0ptr10017 = getelementptr inbounds i64, i64* %cloptr10016, i64 0                 ; &cloptr10016[0]
  %f10019 = load i64, i64* %i0ptr10017, align 8                                      ; load; *i0ptr10017
  %fptr10018 = inttoptr i64 %f10019 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10018(i64 %arg7811, i64 %arg7810, i64 %retprim7159) ; tail call
  ret void
}


define void @lam8296(i64 %env8297, i64 %_957152, i64 %vbH$f) {
  %envptr10020 = inttoptr i64 %env8297 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10021 = getelementptr inbounds i64, i64* %envptr10020, i64 4                ; &envptr10020[4]
  %jvQ$new = load i64, i64* %envptr10021, align 8                                    ; load; *envptr10021
  %envptr10022 = inttoptr i64 %env8297 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10023 = getelementptr inbounds i64, i64* %envptr10022, i64 3                ; &envptr10022[3]
  %Tx4$tail = load i64, i64* %envptr10023, align 8                                   ; load; *envptr10023
  %envptr10024 = inttoptr i64 %env8297 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10025 = getelementptr inbounds i64, i64* %envptr10024, i64 2                ; &envptr10024[2]
  %cont7149 = load i64, i64* %envptr10025, align 8                                   ; load; *envptr10025
  %envptr10026 = inttoptr i64 %env8297 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10027 = getelementptr inbounds i64, i64* %envptr10026, i64 1                ; &envptr10026[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr10027, align 8                        ; load; *envptr10027
  %arg7813 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10028 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10030 = getelementptr inbounds i64, i64* %cloptr10028, i64 1                  ; &eptr10030[1]
  %eptr10031 = getelementptr inbounds i64, i64* %cloptr10028, i64 2                  ; &eptr10031[2]
  %eptr10032 = getelementptr inbounds i64, i64* %cloptr10028, i64 3                  ; &eptr10032[3]
  store i64 %Dpt$_37wind_45stack, i64* %eptr10030                                    ; *eptr10030 = %Dpt$_37wind_45stack
  store i64 %vbH$f, i64* %eptr10031                                                  ; *eptr10031 = %vbH$f
  store i64 %Tx4$tail, i64* %eptr10032                                               ; *eptr10032 = %Tx4$tail
  %eptr10029 = getelementptr inbounds i64, i64* %cloptr10028, i64 0                  ; &cloptr10028[0]
  %f10033 = ptrtoint void(i64,i64,i64)* @lam8293 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10033, i64* %eptr10029                                                 ; store fptr
  %arg7812 = ptrtoint i64* %cloptr10028 to i64                                       ; closure cast; i64* -> i64
  %vgl$_956942 = call i64 @prim_vector_45set_33(i64 %vbH$f, i64 %arg7813, i64 %arg7812); call prim_vector_45set_33
  %arg7837 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7063 = call i64 @prim_vector_45ref(i64 %vbH$f, i64 %arg7837)                     ; call prim_vector_45ref
  %cloptr10034 = inttoptr i64 %a7063 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10034)                                        ; assert function application
  %i0ptr10035 = getelementptr inbounds i64, i64* %cloptr10034, i64 0                 ; &cloptr10034[0]
  %f10037 = load i64, i64* %i0ptr10035, align 8                                      ; load; *i0ptr10035
  %fptr10036 = inttoptr i64 %f10037 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10036(i64 %a7063, i64 %cont7149, i64 %jvQ$new)      ; tail call
  ret void
}


define void @lam8293(i64 %env8294, i64 %cont7153, i64 %cBi$l) {
  %envptr10038 = inttoptr i64 %env8294 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10039 = getelementptr inbounds i64, i64* %envptr10038, i64 3                ; &envptr10038[3]
  %Tx4$tail = load i64, i64* %envptr10039, align 8                                   ; load; *envptr10039
  %envptr10040 = inttoptr i64 %env8294 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10041 = getelementptr inbounds i64, i64* %envptr10040, i64 2                ; &envptr10040[2]
  %vbH$f = load i64, i64* %envptr10041, align 8                                      ; load; *envptr10041
  %envptr10042 = inttoptr i64 %env8294 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10043 = getelementptr inbounds i64, i64* %envptr10042, i64 1                ; &envptr10042[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr10043, align 8                        ; load; *envptr10043
  %a7057 = call i64 @prim_eq_63(i64 %cBi$l, i64 %Tx4$tail)                           ; call prim_eq_63
  %a7058 = call i64 @prim_not(i64 %a7057)                                            ; call prim_not
  %cmp10044 = icmp eq i64 %a7058, 15                                                 ; false?
  br i1 %cmp10044, label %else10046, label %then10045                                ; if

then10045:
  %arg7818 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7059 = call i64 @prim_vector_45ref(i64 %vbH$f, i64 %arg7818)                     ; call prim_vector_45ref
  %a7060 = call i64 @prim_cdr(i64 %cBi$l)                                            ; call prim_cdr
  %cloptr10047 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10049 = getelementptr inbounds i64, i64* %cloptr10047, i64 1                  ; &eptr10049[1]
  %eptr10050 = getelementptr inbounds i64, i64* %cloptr10047, i64 2                  ; &eptr10050[2]
  %eptr10051 = getelementptr inbounds i64, i64* %cloptr10047, i64 3                  ; &eptr10051[3]
  store i64 %Dpt$_37wind_45stack, i64* %eptr10049                                    ; *eptr10049 = %Dpt$_37wind_45stack
  store i64 %cBi$l, i64* %eptr10050                                                  ; *eptr10050 = %cBi$l
  store i64 %cont7153, i64* %eptr10051                                               ; *eptr10051 = %cont7153
  %eptr10048 = getelementptr inbounds i64, i64* %cloptr10047, i64 0                  ; &cloptr10047[0]
  %f10052 = ptrtoint void(i64,i64,i64)* @lam8289 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10052, i64* %eptr10048                                                 ; store fptr
  %arg7822 = ptrtoint i64* %cloptr10047 to i64                                       ; closure cast; i64* -> i64
  %cloptr10053 = inttoptr i64 %a7059 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10053)                                        ; assert function application
  %i0ptr10054 = getelementptr inbounds i64, i64* %cloptr10053, i64 0                 ; &cloptr10053[0]
  %f10056 = load i64, i64* %i0ptr10054, align 8                                      ; load; *i0ptr10054
  %fptr10055 = inttoptr i64 %f10056 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10055(i64 %a7059, i64 %arg7822, i64 %a7060)         ; tail call
  ret void

else10046:
  %retprim7157 = call i64 @prim_void()                                               ; call prim_void
  %arg7835 = add i64 0, 0                                                            ; quoted ()
  %cloptr10057 = inttoptr i64 %cont7153 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10057)                                        ; assert function application
  %i0ptr10058 = getelementptr inbounds i64, i64* %cloptr10057, i64 0                 ; &cloptr10057[0]
  %f10060 = load i64, i64* %i0ptr10058, align 8                                      ; load; *i0ptr10058
  %fptr10059 = inttoptr i64 %f10060 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10059(i64 %cont7153, i64 %arg7835, i64 %retprim7157); tail call
  ret void
}


define void @lam8289(i64 %env8290, i64 %_957154, i64 %wiX$_956943) {
  %envptr10061 = inttoptr i64 %env8290 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10062 = getelementptr inbounds i64, i64* %envptr10061, i64 3                ; &envptr10061[3]
  %cont7153 = load i64, i64* %envptr10062, align 8                                   ; load; *envptr10062
  %envptr10063 = inttoptr i64 %env8290 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10064 = getelementptr inbounds i64, i64* %envptr10063, i64 2                ; &envptr10063[2]
  %cBi$l = load i64, i64* %envptr10064, align 8                                      ; load; *envptr10064
  %envptr10065 = inttoptr i64 %env8290 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10066 = getelementptr inbounds i64, i64* %envptr10065, i64 1                ; &envptr10065[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr10066, align 8                        ; load; *envptr10066
  %a7061 = call i64 @prim_car(i64 %cBi$l)                                            ; call prim_car
  %a7062 = call i64 @prim_car(i64 %a7061)                                            ; call prim_car
  %cloptr10067 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10069 = getelementptr inbounds i64, i64* %cloptr10067, i64 1                  ; &eptr10069[1]
  %eptr10070 = getelementptr inbounds i64, i64* %cloptr10067, i64 2                  ; &eptr10070[2]
  %eptr10071 = getelementptr inbounds i64, i64* %cloptr10067, i64 3                  ; &eptr10071[3]
  store i64 %Dpt$_37wind_45stack, i64* %eptr10069                                    ; *eptr10069 = %Dpt$_37wind_45stack
  store i64 %cBi$l, i64* %eptr10070                                                  ; *eptr10070 = %cBi$l
  store i64 %cont7153, i64* %eptr10071                                               ; *eptr10071 = %cont7153
  %eptr10068 = getelementptr inbounds i64, i64* %cloptr10067, i64 0                  ; &cloptr10067[0]
  %f10072 = ptrtoint void(i64,i64,i64)* @lam8287 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10072, i64* %eptr10068                                                 ; store fptr
  %arg7826 = ptrtoint i64* %cloptr10067 to i64                                       ; closure cast; i64* -> i64
  %cloptr10073 = inttoptr i64 %a7062 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10073)                                        ; assert function application
  %i0ptr10074 = getelementptr inbounds i64, i64* %cloptr10073, i64 0                 ; &cloptr10073[0]
  %f10076 = load i64, i64* %i0ptr10074, align 8                                      ; load; *i0ptr10074
  %fptr10075 = inttoptr i64 %f10076 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10075(i64 %a7062, i64 %arg7826)                     ; tail call
  ret void
}


define void @lam8287(i64 %env8288, i64 %_957155, i64 %fz2$_956944) {
  %envptr10077 = inttoptr i64 %env8288 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10078 = getelementptr inbounds i64, i64* %envptr10077, i64 3                ; &envptr10077[3]
  %cont7153 = load i64, i64* %envptr10078, align 8                                   ; load; *envptr10078
  %envptr10079 = inttoptr i64 %env8288 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10080 = getelementptr inbounds i64, i64* %envptr10079, i64 2                ; &envptr10079[2]
  %cBi$l = load i64, i64* %envptr10080, align 8                                      ; load; *envptr10080
  %envptr10081 = inttoptr i64 %env8288 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10082 = getelementptr inbounds i64, i64* %envptr10081, i64 1                ; &envptr10081[1]
  %Dpt$_37wind_45stack = load i64, i64* %envptr10082, align 8                        ; load; *envptr10082
  %arg7829 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7156 = call i64 @prim_vector_45set_33(i64 %Dpt$_37wind_45stack, i64 %arg7829, i64 %cBi$l); call prim_vector_45set_33
  %arg7832 = add i64 0, 0                                                            ; quoted ()
  %cloptr10083 = inttoptr i64 %cont7153 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10083)                                        ; assert function application
  %i0ptr10084 = getelementptr inbounds i64, i64* %cloptr10083, i64 0                 ; &cloptr10083[0]
  %f10086 = load i64, i64* %i0ptr10084, align 8                                      ; load; *i0ptr10084
  %fptr10085 = inttoptr i64 %f10086 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10085(i64 %cont7153, i64 %arg7832, i64 %retprim7156); tail call
  ret void
}


define void @lam8280(i64 %env8281, i64 %cUl$lst7175) {
  %cont7174 = call i64 @prim_car(i64 %cUl$lst7175)                                   ; call prim_car
  %cUl$lst = call i64 @prim_cdr(i64 %cUl$lst7175)                                    ; call prim_cdr
  %arg7847 = add i64 0, 0                                                            ; quoted ()
  %rva8111 = add i64 0, 0                                                            ; quoted ()
  %rva8110 = call i64 @prim_cons(i64 %cUl$lst, i64 %rva8111)                         ; call prim_cons
  %rva8109 = call i64 @prim_cons(i64 %arg7847, i64 %rva8110)                         ; call prim_cons
  %cloptr10087 = inttoptr i64 %cont7174 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10087)                                        ; assert function application
  %i0ptr10088 = getelementptr inbounds i64, i64* %cloptr10087, i64 0                 ; &cloptr10087[0]
  %f10090 = load i64, i64* %i0ptr10088, align 8                                      ; load; *i0ptr10088
  %fptr10089 = inttoptr i64 %f10090 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10089(i64 %cont7174, i64 %rva8109)                  ; tail call
  ret void
}


define void @lam8276(i64 %env8277, i64 %rvp8118) {
  %_957172 = call i64 @prim_car(i64 %rvp8118)                                        ; call prim_car
  %rvp8116 = call i64 @prim_cdr(i64 %rvp8118)                                        ; call prim_cdr
  %a7064 = call i64 @prim_car(i64 %rvp8116)                                          ; call prim_car
  %na8113 = call i64 @prim_cdr(i64 %rvp8116)                                         ; call prim_cdr
  %arg7850 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %a7065 = call i64 @prim_cons(i64 %arg7850, i64 %a7064)                             ; call prim_cons
  %arg7852 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7066 = call i64 @prim_cons(i64 %arg7852, i64 %a7065)                             ; call prim_cons
  %arg7854 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7173 = call i64 @prim_cons(i64 %arg7854, i64 %a7066)                       ; call prim_cons
  %cloptr10091 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10092 = getelementptr inbounds i64, i64* %cloptr10091, i64 0                  ; &cloptr10091[0]
  %f10093 = ptrtoint void(i64,i64,i64)* @lam8271 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10093, i64* %eptr10092                                                 ; store fptr
  %arg7857 = ptrtoint i64* %cloptr10091 to i64                                       ; closure cast; i64* -> i64
  %arg7856 = add i64 0, 0                                                            ; quoted ()
  %cloptr10094 = inttoptr i64 %arg7857 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10094)                                        ; assert function application
  %i0ptr10095 = getelementptr inbounds i64, i64* %cloptr10094, i64 0                 ; &cloptr10094[0]
  %f10097 = load i64, i64* %i0ptr10095, align 8                                      ; load; *i0ptr10095
  %fptr10096 = inttoptr i64 %f10097 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10096(i64 %arg7857, i64 %arg7856, i64 %retprim7173) ; tail call
  ret void
}


define void @lam8271(i64 %env8272, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva8115 = add i64 0, 0                                                            ; quoted ()
  %rva8114 = call i64 @prim_cons(i64 %_951, i64 %rva8115)                            ; call prim_cons
  %cloptr10098 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10098)                                        ; assert function application
  %i0ptr10099 = getelementptr inbounds i64, i64* %cloptr10098, i64 0                 ; &cloptr10098[0]
  %f10101 = load i64, i64* %i0ptr10099, align 8                                      ; load; *i0ptr10099
  %fptr10100 = inttoptr i64 %f10101 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10100(i64 %_951, i64 %rva8114)                      ; tail call
  ret void
}


define void @lam8262(i64 %env8263, i64 %cont7186, i64 %VBM$_37foldl) {
  %envptr10102 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10103 = getelementptr inbounds i64, i64* %envptr10102, i64 3                ; &envptr10102[3]
  %ey3$_37foldr = load i64, i64* %envptr10103, align 8                               ; load; *envptr10103
  %envptr10104 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10105 = getelementptr inbounds i64, i64* %envptr10104, i64 2                ; &envptr10104[2]
  %E99$_37map1 = load i64, i64* %envptr10105, align 8                                ; load; *envptr10105
  %envptr10106 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10107 = getelementptr inbounds i64, i64* %envptr10106, i64 1                ; &envptr10106[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10107, align 8                              ; load; *envptr10107
  %arg7862 = add i64 0, 0                                                            ; quoted ()
  %cloptr10108 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10110 = getelementptr inbounds i64, i64* %cloptr10108, i64 1                  ; &eptr10110[1]
  %eptr10111 = getelementptr inbounds i64, i64* %cloptr10108, i64 2                  ; &eptr10111[2]
  %eptr10112 = getelementptr inbounds i64, i64* %cloptr10108, i64 3                  ; &eptr10112[3]
  %eptr10113 = getelementptr inbounds i64, i64* %cloptr10108, i64 4                  ; &eptr10113[4]
  store i64 %VBM$_37foldl, i64* %eptr10110                                           ; *eptr10110 = %VBM$_37foldl
  store i64 %hlc$_37foldr1, i64* %eptr10111                                          ; *eptr10111 = %hlc$_37foldr1
  store i64 %E99$_37map1, i64* %eptr10112                                            ; *eptr10112 = %E99$_37map1
  store i64 %ey3$_37foldr, i64* %eptr10113                                           ; *eptr10113 = %ey3$_37foldr
  %eptr10109 = getelementptr inbounds i64, i64* %cloptr10108, i64 0                  ; &cloptr10108[0]
  %f10114 = ptrtoint void(i64,i64)* @lam8259 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10114, i64* %eptr10109                                                 ; store fptr
  %arg7861 = ptrtoint i64* %cloptr10108 to i64                                       ; closure cast; i64* -> i64
  %cloptr10115 = inttoptr i64 %cont7186 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10115)                                        ; assert function application
  %i0ptr10116 = getelementptr inbounds i64, i64* %cloptr10115, i64 0                 ; &cloptr10115[0]
  %f10118 = load i64, i64* %i0ptr10116, align 8                                      ; load; *i0ptr10116
  %fptr10117 = inttoptr i64 %f10118 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10117(i64 %cont7186, i64 %arg7862, i64 %arg7861)    ; tail call
  ret void
}


define void @lam8259(i64 %env8260, i64 %I23$args7188) {
  %envptr10119 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10120 = getelementptr inbounds i64, i64* %envptr10119, i64 4                ; &envptr10119[4]
  %ey3$_37foldr = load i64, i64* %envptr10120, align 8                               ; load; *envptr10120
  %envptr10121 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10122 = getelementptr inbounds i64, i64* %envptr10121, i64 3                ; &envptr10121[3]
  %E99$_37map1 = load i64, i64* %envptr10122, align 8                                ; load; *envptr10122
  %envptr10123 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10124 = getelementptr inbounds i64, i64* %envptr10123, i64 2                ; &envptr10123[2]
  %hlc$_37foldr1 = load i64, i64* %envptr10124, align 8                              ; load; *envptr10124
  %envptr10125 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10126 = getelementptr inbounds i64, i64* %envptr10125, i64 1                ; &envptr10125[1]
  %VBM$_37foldl = load i64, i64* %envptr10126, align 8                               ; load; *envptr10126
  %cont7187 = call i64 @prim_car(i64 %I23$args7188)                                  ; call prim_car
  %I23$args = call i64 @prim_cdr(i64 %I23$args7188)                                  ; call prim_cdr
  %pXH$f = call i64 @prim_car(i64 %I23$args)                                         ; call prim_car
  %a6985 = call i64 @prim_cdr(i64 %I23$args)                                         ; call prim_cdr
  %retprim7207 = call i64 @prim_car(i64 %a6985)                                      ; call prim_car
  %cloptr10127 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10129 = getelementptr inbounds i64, i64* %cloptr10127, i64 1                  ; &eptr10129[1]
  %eptr10130 = getelementptr inbounds i64, i64* %cloptr10127, i64 2                  ; &eptr10130[2]
  %eptr10131 = getelementptr inbounds i64, i64* %cloptr10127, i64 3                  ; &eptr10131[3]
  %eptr10132 = getelementptr inbounds i64, i64* %cloptr10127, i64 4                  ; &eptr10132[4]
  %eptr10133 = getelementptr inbounds i64, i64* %cloptr10127, i64 5                  ; &eptr10133[5]
  %eptr10134 = getelementptr inbounds i64, i64* %cloptr10127, i64 6                  ; &eptr10134[6]
  %eptr10135 = getelementptr inbounds i64, i64* %cloptr10127, i64 7                  ; &eptr10135[7]
  store i64 %VBM$_37foldl, i64* %eptr10129                                           ; *eptr10129 = %VBM$_37foldl
  store i64 %pXH$f, i64* %eptr10130                                                  ; *eptr10130 = %pXH$f
  store i64 %hlc$_37foldr1, i64* %eptr10131                                          ; *eptr10131 = %hlc$_37foldr1
  store i64 %E99$_37map1, i64* %eptr10132                                            ; *eptr10132 = %E99$_37map1
  store i64 %I23$args, i64* %eptr10133                                               ; *eptr10133 = %I23$args
  store i64 %ey3$_37foldr, i64* %eptr10134                                           ; *eptr10134 = %ey3$_37foldr
  store i64 %cont7187, i64* %eptr10135                                               ; *eptr10135 = %cont7187
  %eptr10128 = getelementptr inbounds i64, i64* %cloptr10127, i64 0                  ; &cloptr10127[0]
  %f10136 = ptrtoint void(i64,i64,i64)* @lam8257 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10136, i64* %eptr10128                                                 ; store fptr
  %arg7871 = ptrtoint i64* %cloptr10127 to i64                                       ; closure cast; i64* -> i64
  %arg7870 = add i64 0, 0                                                            ; quoted ()
  %cloptr10137 = inttoptr i64 %arg7871 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10137)                                        ; assert function application
  %i0ptr10138 = getelementptr inbounds i64, i64* %cloptr10137, i64 0                 ; &cloptr10137[0]
  %f10140 = load i64, i64* %i0ptr10138, align 8                                      ; load; *i0ptr10138
  %fptr10139 = inttoptr i64 %f10140 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10139(i64 %arg7871, i64 %arg7870, i64 %retprim7207) ; tail call
  ret void
}


define void @lam8257(i64 %env8258, i64 %_957189, i64 %GKm$acc) {
  %envptr10141 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10142 = getelementptr inbounds i64, i64* %envptr10141, i64 7                ; &envptr10141[7]
  %cont7187 = load i64, i64* %envptr10142, align 8                                   ; load; *envptr10142
  %envptr10143 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10144 = getelementptr inbounds i64, i64* %envptr10143, i64 6                ; &envptr10143[6]
  %ey3$_37foldr = load i64, i64* %envptr10144, align 8                               ; load; *envptr10144
  %envptr10145 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10146 = getelementptr inbounds i64, i64* %envptr10145, i64 5                ; &envptr10145[5]
  %I23$args = load i64, i64* %envptr10146, align 8                                   ; load; *envptr10146
  %envptr10147 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10148 = getelementptr inbounds i64, i64* %envptr10147, i64 4                ; &envptr10147[4]
  %E99$_37map1 = load i64, i64* %envptr10148, align 8                                ; load; *envptr10148
  %envptr10149 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10150 = getelementptr inbounds i64, i64* %envptr10149, i64 3                ; &envptr10149[3]
  %hlc$_37foldr1 = load i64, i64* %envptr10150, align 8                              ; load; *envptr10150
  %envptr10151 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10152 = getelementptr inbounds i64, i64* %envptr10151, i64 2                ; &envptr10151[2]
  %pXH$f = load i64, i64* %envptr10152, align 8                                      ; load; *envptr10152
  %envptr10153 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10154 = getelementptr inbounds i64, i64* %envptr10153, i64 1                ; &envptr10153[1]
  %VBM$_37foldl = load i64, i64* %envptr10154, align 8                               ; load; *envptr10154
  %a6986 = call i64 @prim_cdr(i64 %I23$args)                                         ; call prim_cdr
  %retprim7206 = call i64 @prim_cdr(i64 %a6986)                                      ; call prim_cdr
  %cloptr10155 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10157 = getelementptr inbounds i64, i64* %cloptr10155, i64 1                  ; &eptr10157[1]
  %eptr10158 = getelementptr inbounds i64, i64* %cloptr10155, i64 2                  ; &eptr10158[2]
  %eptr10159 = getelementptr inbounds i64, i64* %cloptr10155, i64 3                  ; &eptr10159[3]
  %eptr10160 = getelementptr inbounds i64, i64* %cloptr10155, i64 4                  ; &eptr10160[4]
  %eptr10161 = getelementptr inbounds i64, i64* %cloptr10155, i64 5                  ; &eptr10161[5]
  %eptr10162 = getelementptr inbounds i64, i64* %cloptr10155, i64 6                  ; &eptr10162[6]
  %eptr10163 = getelementptr inbounds i64, i64* %cloptr10155, i64 7                  ; &eptr10163[7]
  store i64 %VBM$_37foldl, i64* %eptr10157                                           ; *eptr10157 = %VBM$_37foldl
  store i64 %pXH$f, i64* %eptr10158                                                  ; *eptr10158 = %pXH$f
  store i64 %hlc$_37foldr1, i64* %eptr10159                                          ; *eptr10159 = %hlc$_37foldr1
  store i64 %E99$_37map1, i64* %eptr10160                                            ; *eptr10160 = %E99$_37map1
  store i64 %GKm$acc, i64* %eptr10161                                                ; *eptr10161 = %GKm$acc
  store i64 %ey3$_37foldr, i64* %eptr10162                                           ; *eptr10162 = %ey3$_37foldr
  store i64 %cont7187, i64* %eptr10163                                               ; *eptr10163 = %cont7187
  %eptr10156 = getelementptr inbounds i64, i64* %cloptr10155, i64 0                  ; &cloptr10155[0]
  %f10164 = ptrtoint void(i64,i64,i64)* @lam8255 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10164, i64* %eptr10156                                                 ; store fptr
  %arg7876 = ptrtoint i64* %cloptr10155 to i64                                       ; closure cast; i64* -> i64
  %arg7875 = add i64 0, 0                                                            ; quoted ()
  %cloptr10165 = inttoptr i64 %arg7876 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10165)                                        ; assert function application
  %i0ptr10166 = getelementptr inbounds i64, i64* %cloptr10165, i64 0                 ; &cloptr10165[0]
  %f10168 = load i64, i64* %i0ptr10166, align 8                                      ; load; *i0ptr10166
  %fptr10167 = inttoptr i64 %f10168 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10167(i64 %arg7876, i64 %arg7875, i64 %retprim7206) ; tail call
  ret void
}


define void @lam8255(i64 %env8256, i64 %_957190, i64 %BxH$lsts) {
  %envptr10169 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10170 = getelementptr inbounds i64, i64* %envptr10169, i64 7                ; &envptr10169[7]
  %cont7187 = load i64, i64* %envptr10170, align 8                                   ; load; *envptr10170
  %envptr10171 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10172 = getelementptr inbounds i64, i64* %envptr10171, i64 6                ; &envptr10171[6]
  %ey3$_37foldr = load i64, i64* %envptr10172, align 8                               ; load; *envptr10172
  %envptr10173 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10174 = getelementptr inbounds i64, i64* %envptr10173, i64 5                ; &envptr10173[5]
  %GKm$acc = load i64, i64* %envptr10174, align 8                                    ; load; *envptr10174
  %envptr10175 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10176 = getelementptr inbounds i64, i64* %envptr10175, i64 4                ; &envptr10175[4]
  %E99$_37map1 = load i64, i64* %envptr10176, align 8                                ; load; *envptr10176
  %envptr10177 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10178 = getelementptr inbounds i64, i64* %envptr10177, i64 3                ; &envptr10177[3]
  %hlc$_37foldr1 = load i64, i64* %envptr10178, align 8                              ; load; *envptr10178
  %envptr10179 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10180 = getelementptr inbounds i64, i64* %envptr10179, i64 2                ; &envptr10179[2]
  %pXH$f = load i64, i64* %envptr10180, align 8                                      ; load; *envptr10180
  %envptr10181 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10182 = getelementptr inbounds i64, i64* %envptr10181, i64 1                ; &envptr10181[1]
  %VBM$_37foldl = load i64, i64* %envptr10182, align 8                               ; load; *envptr10182
  %cloptr10183 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10185 = getelementptr inbounds i64, i64* %cloptr10183, i64 1                  ; &eptr10185[1]
  %eptr10186 = getelementptr inbounds i64, i64* %cloptr10183, i64 2                  ; &eptr10186[2]
  %eptr10187 = getelementptr inbounds i64, i64* %cloptr10183, i64 3                  ; &eptr10187[3]
  %eptr10188 = getelementptr inbounds i64, i64* %cloptr10183, i64 4                  ; &eptr10188[4]
  %eptr10189 = getelementptr inbounds i64, i64* %cloptr10183, i64 5                  ; &eptr10189[5]
  %eptr10190 = getelementptr inbounds i64, i64* %cloptr10183, i64 6                  ; &eptr10190[6]
  %eptr10191 = getelementptr inbounds i64, i64* %cloptr10183, i64 7                  ; &eptr10191[7]
  store i64 %VBM$_37foldl, i64* %eptr10185                                           ; *eptr10185 = %VBM$_37foldl
  store i64 %pXH$f, i64* %eptr10186                                                  ; *eptr10186 = %pXH$f
  store i64 %BxH$lsts, i64* %eptr10187                                               ; *eptr10187 = %BxH$lsts
  store i64 %E99$_37map1, i64* %eptr10188                                            ; *eptr10188 = %E99$_37map1
  store i64 %GKm$acc, i64* %eptr10189                                                ; *eptr10189 = %GKm$acc
  store i64 %ey3$_37foldr, i64* %eptr10190                                           ; *eptr10190 = %ey3$_37foldr
  store i64 %cont7187, i64* %eptr10191                                               ; *eptr10191 = %cont7187
  %eptr10184 = getelementptr inbounds i64, i64* %cloptr10183, i64 0                  ; &cloptr10183[0]
  %f10192 = ptrtoint void(i64,i64,i64)* @lam8253 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10192, i64* %eptr10184                                                 ; store fptr
  %arg7880 = ptrtoint i64* %cloptr10183 to i64                                       ; closure cast; i64* -> i64
  %cloptr10193 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10194 = getelementptr inbounds i64, i64* %cloptr10193, i64 0                  ; &cloptr10193[0]
  %f10195 = ptrtoint void(i64,i64,i64,i64)* @lam8232 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10195, i64* %eptr10194                                                 ; store fptr
  %arg7879 = ptrtoint i64* %cloptr10193 to i64                                       ; closure cast; i64* -> i64
  %arg7878 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10196 = inttoptr i64 %hlc$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10196)                                        ; assert function application
  %i0ptr10197 = getelementptr inbounds i64, i64* %cloptr10196, i64 0                 ; &cloptr10196[0]
  %f10199 = load i64, i64* %i0ptr10197, align 8                                      ; load; *i0ptr10197
  %fptr10198 = inttoptr i64 %f10199 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10198(i64 %hlc$_37foldr1, i64 %arg7880, i64 %arg7879, i64 %arg7878, i64 %BxH$lsts); tail call
  ret void
}


define void @lam8253(i64 %env8254, i64 %_957191, i64 %a6987) {
  %envptr10200 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10201 = getelementptr inbounds i64, i64* %envptr10200, i64 7                ; &envptr10200[7]
  %cont7187 = load i64, i64* %envptr10201, align 8                                   ; load; *envptr10201
  %envptr10202 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10203 = getelementptr inbounds i64, i64* %envptr10202, i64 6                ; &envptr10202[6]
  %ey3$_37foldr = load i64, i64* %envptr10203, align 8                               ; load; *envptr10203
  %envptr10204 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10205 = getelementptr inbounds i64, i64* %envptr10204, i64 5                ; &envptr10204[5]
  %GKm$acc = load i64, i64* %envptr10205, align 8                                    ; load; *envptr10205
  %envptr10206 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10207 = getelementptr inbounds i64, i64* %envptr10206, i64 4                ; &envptr10206[4]
  %E99$_37map1 = load i64, i64* %envptr10207, align 8                                ; load; *envptr10207
  %envptr10208 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10209 = getelementptr inbounds i64, i64* %envptr10208, i64 3                ; &envptr10208[3]
  %BxH$lsts = load i64, i64* %envptr10209, align 8                                   ; load; *envptr10209
  %envptr10210 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10211 = getelementptr inbounds i64, i64* %envptr10210, i64 2                ; &envptr10210[2]
  %pXH$f = load i64, i64* %envptr10211, align 8                                      ; load; *envptr10211
  %envptr10212 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10213 = getelementptr inbounds i64, i64* %envptr10212, i64 1                ; &envptr10212[1]
  %VBM$_37foldl = load i64, i64* %envptr10213, align 8                               ; load; *envptr10213
  %cmp10214 = icmp eq i64 %a6987, 15                                                 ; false?
  br i1 %cmp10214, label %else10216, label %then10215                                ; if

then10215:
  %arg7883 = add i64 0, 0                                                            ; quoted ()
  %cloptr10217 = inttoptr i64 %cont7187 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10217)                                        ; assert function application
  %i0ptr10218 = getelementptr inbounds i64, i64* %cloptr10217, i64 0                 ; &cloptr10217[0]
  %f10220 = load i64, i64* %i0ptr10218, align 8                                      ; load; *i0ptr10218
  %fptr10219 = inttoptr i64 %f10220 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10219(i64 %cont7187, i64 %arg7883, i64 %GKm$acc)    ; tail call
  ret void

else10216:
  %cloptr10221 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10223 = getelementptr inbounds i64, i64* %cloptr10221, i64 1                  ; &eptr10223[1]
  %eptr10224 = getelementptr inbounds i64, i64* %cloptr10221, i64 2                  ; &eptr10224[2]
  %eptr10225 = getelementptr inbounds i64, i64* %cloptr10221, i64 3                  ; &eptr10225[3]
  %eptr10226 = getelementptr inbounds i64, i64* %cloptr10221, i64 4                  ; &eptr10226[4]
  %eptr10227 = getelementptr inbounds i64, i64* %cloptr10221, i64 5                  ; &eptr10227[5]
  %eptr10228 = getelementptr inbounds i64, i64* %cloptr10221, i64 6                  ; &eptr10228[6]
  %eptr10229 = getelementptr inbounds i64, i64* %cloptr10221, i64 7                  ; &eptr10229[7]
  store i64 %VBM$_37foldl, i64* %eptr10223                                           ; *eptr10223 = %VBM$_37foldl
  store i64 %pXH$f, i64* %eptr10224                                                  ; *eptr10224 = %pXH$f
  store i64 %BxH$lsts, i64* %eptr10225                                               ; *eptr10225 = %BxH$lsts
  store i64 %E99$_37map1, i64* %eptr10226                                            ; *eptr10226 = %E99$_37map1
  store i64 %GKm$acc, i64* %eptr10227                                                ; *eptr10227 = %GKm$acc
  store i64 %ey3$_37foldr, i64* %eptr10228                                           ; *eptr10228 = %ey3$_37foldr
  store i64 %cont7187, i64* %eptr10229                                               ; *eptr10229 = %cont7187
  %eptr10222 = getelementptr inbounds i64, i64* %cloptr10221, i64 0                  ; &cloptr10221[0]
  %f10230 = ptrtoint void(i64,i64,i64)* @lam8251 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10230, i64* %eptr10222                                                 ; store fptr
  %arg7887 = ptrtoint i64* %cloptr10221 to i64                                       ; closure cast; i64* -> i64
  %cloptr10231 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10232 = getelementptr inbounds i64, i64* %cloptr10231, i64 0                  ; &cloptr10231[0]
  %f10233 = ptrtoint void(i64,i64,i64)* @lam8236 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10233, i64* %eptr10232                                                 ; store fptr
  %arg7886 = ptrtoint i64* %cloptr10231 to i64                                       ; closure cast; i64* -> i64
  %cloptr10234 = inttoptr i64 %E99$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10234)                                        ; assert function application
  %i0ptr10235 = getelementptr inbounds i64, i64* %cloptr10234, i64 0                 ; &cloptr10234[0]
  %f10237 = load i64, i64* %i0ptr10235, align 8                                      ; load; *i0ptr10235
  %fptr10236 = inttoptr i64 %f10237 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10236(i64 %E99$_37map1, i64 %arg7887, i64 %arg7886, i64 %BxH$lsts); tail call
  ret void
}


define void @lam8251(i64 %env8252, i64 %_957192, i64 %i5Q$lsts_43) {
  %envptr10238 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10239 = getelementptr inbounds i64, i64* %envptr10238, i64 7                ; &envptr10238[7]
  %cont7187 = load i64, i64* %envptr10239, align 8                                   ; load; *envptr10239
  %envptr10240 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10241 = getelementptr inbounds i64, i64* %envptr10240, i64 6                ; &envptr10240[6]
  %ey3$_37foldr = load i64, i64* %envptr10241, align 8                               ; load; *envptr10241
  %envptr10242 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10243 = getelementptr inbounds i64, i64* %envptr10242, i64 5                ; &envptr10242[5]
  %GKm$acc = load i64, i64* %envptr10243, align 8                                    ; load; *envptr10243
  %envptr10244 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10245 = getelementptr inbounds i64, i64* %envptr10244, i64 4                ; &envptr10244[4]
  %E99$_37map1 = load i64, i64* %envptr10245, align 8                                ; load; *envptr10245
  %envptr10246 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10247 = getelementptr inbounds i64, i64* %envptr10246, i64 3                ; &envptr10246[3]
  %BxH$lsts = load i64, i64* %envptr10247, align 8                                   ; load; *envptr10247
  %envptr10248 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10249 = getelementptr inbounds i64, i64* %envptr10248, i64 2                ; &envptr10248[2]
  %pXH$f = load i64, i64* %envptr10249, align 8                                      ; load; *envptr10249
  %envptr10250 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10251 = getelementptr inbounds i64, i64* %envptr10250, i64 1                ; &envptr10250[1]
  %VBM$_37foldl = load i64, i64* %envptr10251, align 8                               ; load; *envptr10251
  %cloptr10252 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10254 = getelementptr inbounds i64, i64* %cloptr10252, i64 1                  ; &eptr10254[1]
  %eptr10255 = getelementptr inbounds i64, i64* %cloptr10252, i64 2                  ; &eptr10255[2]
  %eptr10256 = getelementptr inbounds i64, i64* %cloptr10252, i64 3                  ; &eptr10256[3]
  %eptr10257 = getelementptr inbounds i64, i64* %cloptr10252, i64 4                  ; &eptr10257[4]
  %eptr10258 = getelementptr inbounds i64, i64* %cloptr10252, i64 5                  ; &eptr10258[5]
  %eptr10259 = getelementptr inbounds i64, i64* %cloptr10252, i64 6                  ; &eptr10259[6]
  store i64 %VBM$_37foldl, i64* %eptr10254                                           ; *eptr10254 = %VBM$_37foldl
  store i64 %i5Q$lsts_43, i64* %eptr10255                                            ; *eptr10255 = %i5Q$lsts_43
  store i64 %pXH$f, i64* %eptr10256                                                  ; *eptr10256 = %pXH$f
  store i64 %GKm$acc, i64* %eptr10257                                                ; *eptr10257 = %GKm$acc
  store i64 %ey3$_37foldr, i64* %eptr10258                                           ; *eptr10258 = %ey3$_37foldr
  store i64 %cont7187, i64* %eptr10259                                               ; *eptr10259 = %cont7187
  %eptr10253 = getelementptr inbounds i64, i64* %cloptr10252, i64 0                  ; &cloptr10252[0]
  %f10260 = ptrtoint void(i64,i64,i64)* @lam8249 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10260, i64* %eptr10253                                                 ; store fptr
  %arg7891 = ptrtoint i64* %cloptr10252 to i64                                       ; closure cast; i64* -> i64
  %cloptr10261 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10262 = getelementptr inbounds i64, i64* %cloptr10261, i64 0                  ; &cloptr10261[0]
  %f10263 = ptrtoint void(i64,i64,i64)* @lam8239 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10263, i64* %eptr10262                                                 ; store fptr
  %arg7890 = ptrtoint i64* %cloptr10261 to i64                                       ; closure cast; i64* -> i64
  %cloptr10264 = inttoptr i64 %E99$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10264)                                        ; assert function application
  %i0ptr10265 = getelementptr inbounds i64, i64* %cloptr10264, i64 0                 ; &cloptr10264[0]
  %f10267 = load i64, i64* %i0ptr10265, align 8                                      ; load; *i0ptr10265
  %fptr10266 = inttoptr i64 %f10267 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10266(i64 %E99$_37map1, i64 %arg7891, i64 %arg7890, i64 %BxH$lsts); tail call
  ret void
}


define void @lam8249(i64 %env8250, i64 %_957193, i64 %dtO$vs) {
  %envptr10268 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10269 = getelementptr inbounds i64, i64* %envptr10268, i64 6                ; &envptr10268[6]
  %cont7187 = load i64, i64* %envptr10269, align 8                                   ; load; *envptr10269
  %envptr10270 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10271 = getelementptr inbounds i64, i64* %envptr10270, i64 5                ; &envptr10270[5]
  %ey3$_37foldr = load i64, i64* %envptr10271, align 8                               ; load; *envptr10271
  %envptr10272 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10273 = getelementptr inbounds i64, i64* %envptr10272, i64 4                ; &envptr10272[4]
  %GKm$acc = load i64, i64* %envptr10273, align 8                                    ; load; *envptr10273
  %envptr10274 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10275 = getelementptr inbounds i64, i64* %envptr10274, i64 3                ; &envptr10274[3]
  %pXH$f = load i64, i64* %envptr10275, align 8                                      ; load; *envptr10275
  %envptr10276 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10277 = getelementptr inbounds i64, i64* %envptr10276, i64 2                ; &envptr10276[2]
  %i5Q$lsts_43 = load i64, i64* %envptr10277, align 8                                ; load; *envptr10277
  %envptr10278 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10279 = getelementptr inbounds i64, i64* %envptr10278, i64 1                ; &envptr10278[1]
  %VBM$_37foldl = load i64, i64* %envptr10279, align 8                               ; load; *envptr10279
  %arg7893 = add i64 0, 0                                                            ; quoted ()
  %a6988 = call i64 @prim_cons(i64 %GKm$acc, i64 %arg7893)                           ; call prim_cons
  %cloptr10280 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10282 = getelementptr inbounds i64, i64* %cloptr10280, i64 1                  ; &eptr10282[1]
  %eptr10283 = getelementptr inbounds i64, i64* %cloptr10280, i64 2                  ; &eptr10283[2]
  %eptr10284 = getelementptr inbounds i64, i64* %cloptr10280, i64 3                  ; &eptr10284[3]
  %eptr10285 = getelementptr inbounds i64, i64* %cloptr10280, i64 4                  ; &eptr10285[4]
  store i64 %VBM$_37foldl, i64* %eptr10282                                           ; *eptr10282 = %VBM$_37foldl
  store i64 %i5Q$lsts_43, i64* %eptr10283                                            ; *eptr10283 = %i5Q$lsts_43
  store i64 %pXH$f, i64* %eptr10284                                                  ; *eptr10284 = %pXH$f
  store i64 %cont7187, i64* %eptr10285                                               ; *eptr10285 = %cont7187
  %eptr10281 = getelementptr inbounds i64, i64* %cloptr10280, i64 0                  ; &cloptr10280[0]
  %f10286 = ptrtoint void(i64,i64,i64)* @lam8246 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10286, i64* %eptr10281                                                 ; store fptr
  %arg7898 = ptrtoint i64* %cloptr10280 to i64                                       ; closure cast; i64* -> i64
  %cloptr10287 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10288 = getelementptr inbounds i64, i64* %cloptr10287, i64 0                  ; &cloptr10287[0]
  %f10289 = ptrtoint void(i64,i64,i64,i64)* @lam8242 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10289, i64* %eptr10288                                                 ; store fptr
  %arg7897 = ptrtoint i64* %cloptr10287 to i64                                       ; closure cast; i64* -> i64
  %cloptr10290 = inttoptr i64 %ey3$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10290)                                        ; assert function application
  %i0ptr10291 = getelementptr inbounds i64, i64* %cloptr10290, i64 0                 ; &cloptr10290[0]
  %f10293 = load i64, i64* %i0ptr10291, align 8                                      ; load; *i0ptr10291
  %fptr10292 = inttoptr i64 %f10293 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10292(i64 %ey3$_37foldr, i64 %arg7898, i64 %arg7897, i64 %a6988, i64 %dtO$vs); tail call
  ret void
}


define void @lam8246(i64 %env8247, i64 %_957196, i64 %a6989) {
  %envptr10294 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10295 = getelementptr inbounds i64, i64* %envptr10294, i64 4                ; &envptr10294[4]
  %cont7187 = load i64, i64* %envptr10295, align 8                                   ; load; *envptr10295
  %envptr10296 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10297 = getelementptr inbounds i64, i64* %envptr10296, i64 3                ; &envptr10296[3]
  %pXH$f = load i64, i64* %envptr10297, align 8                                      ; load; *envptr10297
  %envptr10298 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10299 = getelementptr inbounds i64, i64* %envptr10298, i64 2                ; &envptr10298[2]
  %i5Q$lsts_43 = load i64, i64* %envptr10299, align 8                                ; load; *envptr10299
  %envptr10300 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10301 = getelementptr inbounds i64, i64* %envptr10300, i64 1                ; &envptr10300[1]
  %VBM$_37foldl = load i64, i64* %envptr10301, align 8                               ; load; *envptr10301
  %cloptr10302 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10304 = getelementptr inbounds i64, i64* %cloptr10302, i64 1                  ; &eptr10304[1]
  %eptr10305 = getelementptr inbounds i64, i64* %cloptr10302, i64 2                  ; &eptr10305[2]
  %eptr10306 = getelementptr inbounds i64, i64* %cloptr10302, i64 3                  ; &eptr10306[3]
  %eptr10307 = getelementptr inbounds i64, i64* %cloptr10302, i64 4                  ; &eptr10307[4]
  store i64 %VBM$_37foldl, i64* %eptr10304                                           ; *eptr10304 = %VBM$_37foldl
  store i64 %i5Q$lsts_43, i64* %eptr10305                                            ; *eptr10305 = %i5Q$lsts_43
  store i64 %pXH$f, i64* %eptr10306                                                  ; *eptr10306 = %pXH$f
  store i64 %cont7187, i64* %eptr10307                                               ; *eptr10307 = %cont7187
  %eptr10303 = getelementptr inbounds i64, i64* %cloptr10302, i64 0                  ; &cloptr10302[0]
  %f10308 = ptrtoint void(i64,i64,i64)* @lam8244 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10308, i64* %eptr10303                                                 ; store fptr
  %arg7901 = ptrtoint i64* %cloptr10302 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7197 = call i64 @prim_cons(i64 %arg7901, i64 %a6989)                     ; call prim_cons
  %cloptr10309 = inttoptr i64 %pXH$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10309)                                        ; assert function application
  %i0ptr10310 = getelementptr inbounds i64, i64* %cloptr10309, i64 0                 ; &cloptr10309[0]
  %f10312 = load i64, i64* %i0ptr10310, align 8                                      ; load; *i0ptr10310
  %fptr10311 = inttoptr i64 %f10312 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10311(i64 %pXH$f, i64 %cps_45lst7197)               ; tail call
  ret void
}


define void @lam8244(i64 %env8245, i64 %_957194, i64 %FQM$acc_43) {
  %envptr10313 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10314 = getelementptr inbounds i64, i64* %envptr10313, i64 4                ; &envptr10313[4]
  %cont7187 = load i64, i64* %envptr10314, align 8                                   ; load; *envptr10314
  %envptr10315 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10316 = getelementptr inbounds i64, i64* %envptr10315, i64 3                ; &envptr10315[3]
  %pXH$f = load i64, i64* %envptr10316, align 8                                      ; load; *envptr10316
  %envptr10317 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10318 = getelementptr inbounds i64, i64* %envptr10317, i64 2                ; &envptr10317[2]
  %i5Q$lsts_43 = load i64, i64* %envptr10318, align 8                                ; load; *envptr10318
  %envptr10319 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10320 = getelementptr inbounds i64, i64* %envptr10319, i64 1                ; &envptr10319[1]
  %VBM$_37foldl = load i64, i64* %envptr10320, align 8                               ; load; *envptr10320
  %a6990 = call i64 @prim_cons(i64 %FQM$acc_43, i64 %i5Q$lsts_43)                    ; call prim_cons
  %a6991 = call i64 @prim_cons(i64 %pXH$f, i64 %a6990)                               ; call prim_cons
  %cps_45lst7195 = call i64 @prim_cons(i64 %cont7187, i64 %a6991)                    ; call prim_cons
  %cloptr10321 = inttoptr i64 %VBM$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10321)                                        ; assert function application
  %i0ptr10322 = getelementptr inbounds i64, i64* %cloptr10321, i64 0                 ; &cloptr10321[0]
  %f10324 = load i64, i64* %i0ptr10322, align 8                                      ; load; *i0ptr10322
  %fptr10323 = inttoptr i64 %f10324 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10323(i64 %VBM$_37foldl, i64 %cps_45lst7195)        ; tail call
  ret void
}


define void @lam8242(i64 %env8243, i64 %cont7198, i64 %M7Z$a, i64 %WoF$b) {
  %retprim7199 = call i64 @prim_cons(i64 %M7Z$a, i64 %WoF$b)                         ; call prim_cons
  %arg7911 = add i64 0, 0                                                            ; quoted ()
  %cloptr10325 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10325)                                        ; assert function application
  %i0ptr10326 = getelementptr inbounds i64, i64* %cloptr10325, i64 0                 ; &cloptr10325[0]
  %f10328 = load i64, i64* %i0ptr10326, align 8                                      ; load; *i0ptr10326
  %fptr10327 = inttoptr i64 %f10328 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10327(i64 %cont7198, i64 %arg7911, i64 %retprim7199); tail call
  ret void
}


define void @lam8239(i64 %env8240, i64 %cont7200, i64 %rhe$x) {
  %retprim7201 = call i64 @prim_car(i64 %rhe$x)                                      ; call prim_car
  %arg7915 = add i64 0, 0                                                            ; quoted ()
  %cloptr10329 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10329)                                        ; assert function application
  %i0ptr10330 = getelementptr inbounds i64, i64* %cloptr10329, i64 0                 ; &cloptr10329[0]
  %f10332 = load i64, i64* %i0ptr10330, align 8                                      ; load; *i0ptr10330
  %fptr10331 = inttoptr i64 %f10332 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10331(i64 %cont7200, i64 %arg7915, i64 %retprim7201); tail call
  ret void
}


define void @lam8236(i64 %env8237, i64 %cont7202, i64 %rwj$x) {
  %retprim7203 = call i64 @prim_cdr(i64 %rwj$x)                                      ; call prim_cdr
  %arg7919 = add i64 0, 0                                                            ; quoted ()
  %cloptr10333 = inttoptr i64 %cont7202 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10333)                                        ; assert function application
  %i0ptr10334 = getelementptr inbounds i64, i64* %cloptr10333, i64 0                 ; &cloptr10333[0]
  %f10336 = load i64, i64* %i0ptr10334, align 8                                      ; load; *i0ptr10334
  %fptr10335 = inttoptr i64 %f10336 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10335(i64 %cont7202, i64 %arg7919, i64 %retprim7203); tail call
  ret void
}


define void @lam8232(i64 %env8233, i64 %cont7204, i64 %BXX$lst, i64 %bTX$b) {
  %cmp10337 = icmp eq i64 %bTX$b, 15                                                 ; false?
  br i1 %cmp10337, label %else10339, label %then10338                                ; if

then10338:
  %arg7922 = add i64 0, 0                                                            ; quoted ()
  %cloptr10340 = inttoptr i64 %cont7204 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10340)                                        ; assert function application
  %i0ptr10341 = getelementptr inbounds i64, i64* %cloptr10340, i64 0                 ; &cloptr10340[0]
  %f10343 = load i64, i64* %i0ptr10341, align 8                                      ; load; *i0ptr10341
  %fptr10342 = inttoptr i64 %f10343 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10342(i64 %cont7204, i64 %arg7922, i64 %bTX$b)      ; tail call
  ret void

else10339:
  %retprim7205 = call i64 @prim_null_63(i64 %BXX$lst)                                ; call prim_null_63
  %arg7926 = add i64 0, 0                                                            ; quoted ()
  %cloptr10344 = inttoptr i64 %cont7204 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10344)                                        ; assert function application
  %i0ptr10345 = getelementptr inbounds i64, i64* %cloptr10344, i64 0                 ; &cloptr10344[0]
  %f10347 = load i64, i64* %i0ptr10345, align 8                                      ; load; *i0ptr10345
  %fptr10346 = inttoptr i64 %f10347 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10346(i64 %cont7204, i64 %arg7926, i64 %retprim7205); tail call
  ret void
}


define void @lam8225(i64 %env8226, i64 %cont7208, i64 %xM9$_37foldr) {
  %envptr10348 = inttoptr i64 %env8226 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10349 = getelementptr inbounds i64, i64* %envptr10348, i64 2                ; &envptr10348[2]
  %dWC$_37map1 = load i64, i64* %envptr10349, align 8                                ; load; *envptr10349
  %envptr10350 = inttoptr i64 %env8226 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10351 = getelementptr inbounds i64, i64* %envptr10350, i64 1                ; &envptr10350[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10351, align 8                              ; load; *envptr10351
  %arg7929 = add i64 0, 0                                                            ; quoted ()
  %cloptr10352 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10354 = getelementptr inbounds i64, i64* %cloptr10352, i64 1                  ; &eptr10354[1]
  %eptr10355 = getelementptr inbounds i64, i64* %cloptr10352, i64 2                  ; &eptr10355[2]
  %eptr10356 = getelementptr inbounds i64, i64* %cloptr10352, i64 3                  ; &eptr10356[3]
  store i64 %hlc$_37foldr1, i64* %eptr10354                                          ; *eptr10354 = %hlc$_37foldr1
  store i64 %xM9$_37foldr, i64* %eptr10355                                           ; *eptr10355 = %xM9$_37foldr
  store i64 %dWC$_37map1, i64* %eptr10356                                            ; *eptr10356 = %dWC$_37map1
  %eptr10353 = getelementptr inbounds i64, i64* %cloptr10352, i64 0                  ; &cloptr10352[0]
  %f10357 = ptrtoint void(i64,i64)* @lam8222 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10357, i64* %eptr10353                                                 ; store fptr
  %arg7928 = ptrtoint i64* %cloptr10352 to i64                                       ; closure cast; i64* -> i64
  %cloptr10358 = inttoptr i64 %cont7208 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10358)                                        ; assert function application
  %i0ptr10359 = getelementptr inbounds i64, i64* %cloptr10358, i64 0                 ; &cloptr10358[0]
  %f10361 = load i64, i64* %i0ptr10359, align 8                                      ; load; *i0ptr10359
  %fptr10360 = inttoptr i64 %f10361 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10360(i64 %cont7208, i64 %arg7929, i64 %arg7928)    ; tail call
  ret void
}


define void @lam8222(i64 %env8223, i64 %Ep6$args7210) {
  %envptr10362 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10363 = getelementptr inbounds i64, i64* %envptr10362, i64 3                ; &envptr10362[3]
  %dWC$_37map1 = load i64, i64* %envptr10363, align 8                                ; load; *envptr10363
  %envptr10364 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10365 = getelementptr inbounds i64, i64* %envptr10364, i64 2                ; &envptr10364[2]
  %xM9$_37foldr = load i64, i64* %envptr10365, align 8                               ; load; *envptr10365
  %envptr10366 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10367 = getelementptr inbounds i64, i64* %envptr10366, i64 1                ; &envptr10366[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10367, align 8                              ; load; *envptr10367
  %cont7209 = call i64 @prim_car(i64 %Ep6$args7210)                                  ; call prim_car
  %Ep6$args = call i64 @prim_cdr(i64 %Ep6$args7210)                                  ; call prim_cdr
  %qfk$f = call i64 @prim_car(i64 %Ep6$args)                                         ; call prim_car
  %a6971 = call i64 @prim_cdr(i64 %Ep6$args)                                         ; call prim_cdr
  %retprim7229 = call i64 @prim_car(i64 %a6971)                                      ; call prim_car
  %cloptr10368 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10370 = getelementptr inbounds i64, i64* %cloptr10368, i64 1                  ; &eptr10370[1]
  %eptr10371 = getelementptr inbounds i64, i64* %cloptr10368, i64 2                  ; &eptr10371[2]
  %eptr10372 = getelementptr inbounds i64, i64* %cloptr10368, i64 3                  ; &eptr10372[3]
  %eptr10373 = getelementptr inbounds i64, i64* %cloptr10368, i64 4                  ; &eptr10373[4]
  %eptr10374 = getelementptr inbounds i64, i64* %cloptr10368, i64 5                  ; &eptr10374[5]
  %eptr10375 = getelementptr inbounds i64, i64* %cloptr10368, i64 6                  ; &eptr10375[6]
  store i64 %hlc$_37foldr1, i64* %eptr10370                                          ; *eptr10370 = %hlc$_37foldr1
  store i64 %xM9$_37foldr, i64* %eptr10371                                           ; *eptr10371 = %xM9$_37foldr
  store i64 %cont7209, i64* %eptr10372                                               ; *eptr10372 = %cont7209
  store i64 %qfk$f, i64* %eptr10373                                                  ; *eptr10373 = %qfk$f
  store i64 %dWC$_37map1, i64* %eptr10374                                            ; *eptr10374 = %dWC$_37map1
  store i64 %Ep6$args, i64* %eptr10375                                               ; *eptr10375 = %Ep6$args
  %eptr10369 = getelementptr inbounds i64, i64* %cloptr10368, i64 0                  ; &cloptr10368[0]
  %f10376 = ptrtoint void(i64,i64,i64)* @lam8220 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10376, i64* %eptr10369                                                 ; store fptr
  %arg7938 = ptrtoint i64* %cloptr10368 to i64                                       ; closure cast; i64* -> i64
  %arg7937 = add i64 0, 0                                                            ; quoted ()
  %cloptr10377 = inttoptr i64 %arg7938 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10377)                                        ; assert function application
  %i0ptr10378 = getelementptr inbounds i64, i64* %cloptr10377, i64 0                 ; &cloptr10377[0]
  %f10380 = load i64, i64* %i0ptr10378, align 8                                      ; load; *i0ptr10378
  %fptr10379 = inttoptr i64 %f10380 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10379(i64 %arg7938, i64 %arg7937, i64 %retprim7229) ; tail call
  ret void
}


define void @lam8220(i64 %env8221, i64 %_957211, i64 %kmf$acc) {
  %envptr10381 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10382 = getelementptr inbounds i64, i64* %envptr10381, i64 6                ; &envptr10381[6]
  %Ep6$args = load i64, i64* %envptr10382, align 8                                   ; load; *envptr10382
  %envptr10383 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10384 = getelementptr inbounds i64, i64* %envptr10383, i64 5                ; &envptr10383[5]
  %dWC$_37map1 = load i64, i64* %envptr10384, align 8                                ; load; *envptr10384
  %envptr10385 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10386 = getelementptr inbounds i64, i64* %envptr10385, i64 4                ; &envptr10385[4]
  %qfk$f = load i64, i64* %envptr10386, align 8                                      ; load; *envptr10386
  %envptr10387 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10388 = getelementptr inbounds i64, i64* %envptr10387, i64 3                ; &envptr10387[3]
  %cont7209 = load i64, i64* %envptr10388, align 8                                   ; load; *envptr10388
  %envptr10389 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10390 = getelementptr inbounds i64, i64* %envptr10389, i64 2                ; &envptr10389[2]
  %xM9$_37foldr = load i64, i64* %envptr10390, align 8                               ; load; *envptr10390
  %envptr10391 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10392 = getelementptr inbounds i64, i64* %envptr10391, i64 1                ; &envptr10391[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10392, align 8                              ; load; *envptr10392
  %a6972 = call i64 @prim_cdr(i64 %Ep6$args)                                         ; call prim_cdr
  %retprim7228 = call i64 @prim_cdr(i64 %a6972)                                      ; call prim_cdr
  %cloptr10393 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10395 = getelementptr inbounds i64, i64* %cloptr10393, i64 1                  ; &eptr10395[1]
  %eptr10396 = getelementptr inbounds i64, i64* %cloptr10393, i64 2                  ; &eptr10396[2]
  %eptr10397 = getelementptr inbounds i64, i64* %cloptr10393, i64 3                  ; &eptr10397[3]
  %eptr10398 = getelementptr inbounds i64, i64* %cloptr10393, i64 4                  ; &eptr10398[4]
  %eptr10399 = getelementptr inbounds i64, i64* %cloptr10393, i64 5                  ; &eptr10399[5]
  %eptr10400 = getelementptr inbounds i64, i64* %cloptr10393, i64 6                  ; &eptr10400[6]
  store i64 %hlc$_37foldr1, i64* %eptr10395                                          ; *eptr10395 = %hlc$_37foldr1
  store i64 %xM9$_37foldr, i64* %eptr10396                                           ; *eptr10396 = %xM9$_37foldr
  store i64 %cont7209, i64* %eptr10397                                               ; *eptr10397 = %cont7209
  store i64 %qfk$f, i64* %eptr10398                                                  ; *eptr10398 = %qfk$f
  store i64 %dWC$_37map1, i64* %eptr10399                                            ; *eptr10399 = %dWC$_37map1
  store i64 %kmf$acc, i64* %eptr10400                                                ; *eptr10400 = %kmf$acc
  %eptr10394 = getelementptr inbounds i64, i64* %cloptr10393, i64 0                  ; &cloptr10393[0]
  %f10401 = ptrtoint void(i64,i64,i64)* @lam8218 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10401, i64* %eptr10394                                                 ; store fptr
  %arg7943 = ptrtoint i64* %cloptr10393 to i64                                       ; closure cast; i64* -> i64
  %arg7942 = add i64 0, 0                                                            ; quoted ()
  %cloptr10402 = inttoptr i64 %arg7943 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10402)                                        ; assert function application
  %i0ptr10403 = getelementptr inbounds i64, i64* %cloptr10402, i64 0                 ; &cloptr10402[0]
  %f10405 = load i64, i64* %i0ptr10403, align 8                                      ; load; *i0ptr10403
  %fptr10404 = inttoptr i64 %f10405 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10404(i64 %arg7943, i64 %arg7942, i64 %retprim7228) ; tail call
  ret void
}


define void @lam8218(i64 %env8219, i64 %_957212, i64 %yRZ$lsts) {
  %envptr10406 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10407 = getelementptr inbounds i64, i64* %envptr10406, i64 6                ; &envptr10406[6]
  %kmf$acc = load i64, i64* %envptr10407, align 8                                    ; load; *envptr10407
  %envptr10408 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10409 = getelementptr inbounds i64, i64* %envptr10408, i64 5                ; &envptr10408[5]
  %dWC$_37map1 = load i64, i64* %envptr10409, align 8                                ; load; *envptr10409
  %envptr10410 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10411 = getelementptr inbounds i64, i64* %envptr10410, i64 4                ; &envptr10410[4]
  %qfk$f = load i64, i64* %envptr10411, align 8                                      ; load; *envptr10411
  %envptr10412 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10413 = getelementptr inbounds i64, i64* %envptr10412, i64 3                ; &envptr10412[3]
  %cont7209 = load i64, i64* %envptr10413, align 8                                   ; load; *envptr10413
  %envptr10414 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10415 = getelementptr inbounds i64, i64* %envptr10414, i64 2                ; &envptr10414[2]
  %xM9$_37foldr = load i64, i64* %envptr10415, align 8                               ; load; *envptr10415
  %envptr10416 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10417 = getelementptr inbounds i64, i64* %envptr10416, i64 1                ; &envptr10416[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10417, align 8                              ; load; *envptr10417
  %cloptr10418 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10420 = getelementptr inbounds i64, i64* %cloptr10418, i64 1                  ; &eptr10420[1]
  %eptr10421 = getelementptr inbounds i64, i64* %cloptr10418, i64 2                  ; &eptr10421[2]
  %eptr10422 = getelementptr inbounds i64, i64* %cloptr10418, i64 3                  ; &eptr10422[3]
  %eptr10423 = getelementptr inbounds i64, i64* %cloptr10418, i64 4                  ; &eptr10423[4]
  %eptr10424 = getelementptr inbounds i64, i64* %cloptr10418, i64 5                  ; &eptr10424[5]
  %eptr10425 = getelementptr inbounds i64, i64* %cloptr10418, i64 6                  ; &eptr10425[6]
  %eptr10426 = getelementptr inbounds i64, i64* %cloptr10418, i64 7                  ; &eptr10426[7]
  store i64 %hlc$_37foldr1, i64* %eptr10420                                          ; *eptr10420 = %hlc$_37foldr1
  store i64 %xM9$_37foldr, i64* %eptr10421                                           ; *eptr10421 = %xM9$_37foldr
  store i64 %cont7209, i64* %eptr10422                                               ; *eptr10422 = %cont7209
  store i64 %qfk$f, i64* %eptr10423                                                  ; *eptr10423 = %qfk$f
  store i64 %yRZ$lsts, i64* %eptr10424                                               ; *eptr10424 = %yRZ$lsts
  store i64 %dWC$_37map1, i64* %eptr10425                                            ; *eptr10425 = %dWC$_37map1
  store i64 %kmf$acc, i64* %eptr10426                                                ; *eptr10426 = %kmf$acc
  %eptr10419 = getelementptr inbounds i64, i64* %cloptr10418, i64 0                  ; &cloptr10418[0]
  %f10427 = ptrtoint void(i64,i64,i64)* @lam8216 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10427, i64* %eptr10419                                                 ; store fptr
  %arg7947 = ptrtoint i64* %cloptr10418 to i64                                       ; closure cast; i64* -> i64
  %cloptr10428 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10429 = getelementptr inbounds i64, i64* %cloptr10428, i64 0                  ; &cloptr10428[0]
  %f10430 = ptrtoint void(i64,i64,i64,i64)* @lam8195 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10430, i64* %eptr10429                                                 ; store fptr
  %arg7946 = ptrtoint i64* %cloptr10428 to i64                                       ; closure cast; i64* -> i64
  %arg7945 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10431 = inttoptr i64 %hlc$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10431)                                        ; assert function application
  %i0ptr10432 = getelementptr inbounds i64, i64* %cloptr10431, i64 0                 ; &cloptr10431[0]
  %f10434 = load i64, i64* %i0ptr10432, align 8                                      ; load; *i0ptr10432
  %fptr10433 = inttoptr i64 %f10434 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10433(i64 %hlc$_37foldr1, i64 %arg7947, i64 %arg7946, i64 %arg7945, i64 %yRZ$lsts); tail call
  ret void
}


define void @lam8216(i64 %env8217, i64 %_957213, i64 %a6973) {
  %envptr10435 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10436 = getelementptr inbounds i64, i64* %envptr10435, i64 7                ; &envptr10435[7]
  %kmf$acc = load i64, i64* %envptr10436, align 8                                    ; load; *envptr10436
  %envptr10437 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10438 = getelementptr inbounds i64, i64* %envptr10437, i64 6                ; &envptr10437[6]
  %dWC$_37map1 = load i64, i64* %envptr10438, align 8                                ; load; *envptr10438
  %envptr10439 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10440 = getelementptr inbounds i64, i64* %envptr10439, i64 5                ; &envptr10439[5]
  %yRZ$lsts = load i64, i64* %envptr10440, align 8                                   ; load; *envptr10440
  %envptr10441 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10442 = getelementptr inbounds i64, i64* %envptr10441, i64 4                ; &envptr10441[4]
  %qfk$f = load i64, i64* %envptr10442, align 8                                      ; load; *envptr10442
  %envptr10443 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10444 = getelementptr inbounds i64, i64* %envptr10443, i64 3                ; &envptr10443[3]
  %cont7209 = load i64, i64* %envptr10444, align 8                                   ; load; *envptr10444
  %envptr10445 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10446 = getelementptr inbounds i64, i64* %envptr10445, i64 2                ; &envptr10445[2]
  %xM9$_37foldr = load i64, i64* %envptr10446, align 8                               ; load; *envptr10446
  %envptr10447 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10448 = getelementptr inbounds i64, i64* %envptr10447, i64 1                ; &envptr10447[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10448, align 8                              ; load; *envptr10448
  %cmp10449 = icmp eq i64 %a6973, 15                                                 ; false?
  br i1 %cmp10449, label %else10451, label %then10450                                ; if

then10450:
  %arg7950 = add i64 0, 0                                                            ; quoted ()
  %cloptr10452 = inttoptr i64 %cont7209 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10452)                                        ; assert function application
  %i0ptr10453 = getelementptr inbounds i64, i64* %cloptr10452, i64 0                 ; &cloptr10452[0]
  %f10455 = load i64, i64* %i0ptr10453, align 8                                      ; load; *i0ptr10453
  %fptr10454 = inttoptr i64 %f10455 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10454(i64 %cont7209, i64 %arg7950, i64 %kmf$acc)    ; tail call
  ret void

else10451:
  %cloptr10456 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10458 = getelementptr inbounds i64, i64* %cloptr10456, i64 1                  ; &eptr10458[1]
  %eptr10459 = getelementptr inbounds i64, i64* %cloptr10456, i64 2                  ; &eptr10459[2]
  %eptr10460 = getelementptr inbounds i64, i64* %cloptr10456, i64 3                  ; &eptr10460[3]
  %eptr10461 = getelementptr inbounds i64, i64* %cloptr10456, i64 4                  ; &eptr10461[4]
  %eptr10462 = getelementptr inbounds i64, i64* %cloptr10456, i64 5                  ; &eptr10462[5]
  %eptr10463 = getelementptr inbounds i64, i64* %cloptr10456, i64 6                  ; &eptr10463[6]
  %eptr10464 = getelementptr inbounds i64, i64* %cloptr10456, i64 7                  ; &eptr10464[7]
  store i64 %hlc$_37foldr1, i64* %eptr10458                                          ; *eptr10458 = %hlc$_37foldr1
  store i64 %xM9$_37foldr, i64* %eptr10459                                           ; *eptr10459 = %xM9$_37foldr
  store i64 %cont7209, i64* %eptr10460                                               ; *eptr10460 = %cont7209
  store i64 %qfk$f, i64* %eptr10461                                                  ; *eptr10461 = %qfk$f
  store i64 %yRZ$lsts, i64* %eptr10462                                               ; *eptr10462 = %yRZ$lsts
  store i64 %dWC$_37map1, i64* %eptr10463                                            ; *eptr10463 = %dWC$_37map1
  store i64 %kmf$acc, i64* %eptr10464                                                ; *eptr10464 = %kmf$acc
  %eptr10457 = getelementptr inbounds i64, i64* %cloptr10456, i64 0                  ; &cloptr10456[0]
  %f10465 = ptrtoint void(i64,i64,i64)* @lam8214 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10465, i64* %eptr10457                                                 ; store fptr
  %arg7954 = ptrtoint i64* %cloptr10456 to i64                                       ; closure cast; i64* -> i64
  %cloptr10466 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10467 = getelementptr inbounds i64, i64* %cloptr10466, i64 0                  ; &cloptr10466[0]
  %f10468 = ptrtoint void(i64,i64,i64)* @lam8199 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10468, i64* %eptr10467                                                 ; store fptr
  %arg7953 = ptrtoint i64* %cloptr10466 to i64                                       ; closure cast; i64* -> i64
  %cloptr10469 = inttoptr i64 %dWC$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10469)                                        ; assert function application
  %i0ptr10470 = getelementptr inbounds i64, i64* %cloptr10469, i64 0                 ; &cloptr10469[0]
  %f10472 = load i64, i64* %i0ptr10470, align 8                                      ; load; *i0ptr10470
  %fptr10471 = inttoptr i64 %f10472 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10471(i64 %dWC$_37map1, i64 %arg7954, i64 %arg7953, i64 %yRZ$lsts); tail call
  ret void
}


define void @lam8214(i64 %env8215, i64 %_957214, i64 %UKj$lsts_43) {
  %envptr10473 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10474 = getelementptr inbounds i64, i64* %envptr10473, i64 7                ; &envptr10473[7]
  %kmf$acc = load i64, i64* %envptr10474, align 8                                    ; load; *envptr10474
  %envptr10475 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10476 = getelementptr inbounds i64, i64* %envptr10475, i64 6                ; &envptr10475[6]
  %dWC$_37map1 = load i64, i64* %envptr10476, align 8                                ; load; *envptr10476
  %envptr10477 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10478 = getelementptr inbounds i64, i64* %envptr10477, i64 5                ; &envptr10477[5]
  %yRZ$lsts = load i64, i64* %envptr10478, align 8                                   ; load; *envptr10478
  %envptr10479 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10480 = getelementptr inbounds i64, i64* %envptr10479, i64 4                ; &envptr10479[4]
  %qfk$f = load i64, i64* %envptr10480, align 8                                      ; load; *envptr10480
  %envptr10481 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10482 = getelementptr inbounds i64, i64* %envptr10481, i64 3                ; &envptr10481[3]
  %cont7209 = load i64, i64* %envptr10482, align 8                                   ; load; *envptr10482
  %envptr10483 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10484 = getelementptr inbounds i64, i64* %envptr10483, i64 2                ; &envptr10483[2]
  %xM9$_37foldr = load i64, i64* %envptr10484, align 8                               ; load; *envptr10484
  %envptr10485 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10486 = getelementptr inbounds i64, i64* %envptr10485, i64 1                ; &envptr10485[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10486, align 8                              ; load; *envptr10486
  %cloptr10487 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10489 = getelementptr inbounds i64, i64* %cloptr10487, i64 1                  ; &eptr10489[1]
  %eptr10490 = getelementptr inbounds i64, i64* %cloptr10487, i64 2                  ; &eptr10490[2]
  %eptr10491 = getelementptr inbounds i64, i64* %cloptr10487, i64 3                  ; &eptr10491[3]
  %eptr10492 = getelementptr inbounds i64, i64* %cloptr10487, i64 4                  ; &eptr10492[4]
  %eptr10493 = getelementptr inbounds i64, i64* %cloptr10487, i64 5                  ; &eptr10493[5]
  %eptr10494 = getelementptr inbounds i64, i64* %cloptr10487, i64 6                  ; &eptr10494[6]
  store i64 %hlc$_37foldr1, i64* %eptr10489                                          ; *eptr10489 = %hlc$_37foldr1
  store i64 %xM9$_37foldr, i64* %eptr10490                                           ; *eptr10490 = %xM9$_37foldr
  store i64 %cont7209, i64* %eptr10491                                               ; *eptr10491 = %cont7209
  store i64 %qfk$f, i64* %eptr10492                                                  ; *eptr10492 = %qfk$f
  store i64 %UKj$lsts_43, i64* %eptr10493                                            ; *eptr10493 = %UKj$lsts_43
  store i64 %kmf$acc, i64* %eptr10494                                                ; *eptr10494 = %kmf$acc
  %eptr10488 = getelementptr inbounds i64, i64* %cloptr10487, i64 0                  ; &cloptr10487[0]
  %f10495 = ptrtoint void(i64,i64,i64)* @lam8212 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10495, i64* %eptr10488                                                 ; store fptr
  %arg7958 = ptrtoint i64* %cloptr10487 to i64                                       ; closure cast; i64* -> i64
  %cloptr10496 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10497 = getelementptr inbounds i64, i64* %cloptr10496, i64 0                  ; &cloptr10496[0]
  %f10498 = ptrtoint void(i64,i64,i64)* @lam8202 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10498, i64* %eptr10497                                                 ; store fptr
  %arg7957 = ptrtoint i64* %cloptr10496 to i64                                       ; closure cast; i64* -> i64
  %cloptr10499 = inttoptr i64 %dWC$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10499)                                        ; assert function application
  %i0ptr10500 = getelementptr inbounds i64, i64* %cloptr10499, i64 0                 ; &cloptr10499[0]
  %f10502 = load i64, i64* %i0ptr10500, align 8                                      ; load; *i0ptr10500
  %fptr10501 = inttoptr i64 %f10502 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10501(i64 %dWC$_37map1, i64 %arg7958, i64 %arg7957, i64 %yRZ$lsts); tail call
  ret void
}


define void @lam8212(i64 %env8213, i64 %_957215, i64 %Oc2$vs) {
  %envptr10503 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10504 = getelementptr inbounds i64, i64* %envptr10503, i64 6                ; &envptr10503[6]
  %kmf$acc = load i64, i64* %envptr10504, align 8                                    ; load; *envptr10504
  %envptr10505 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10506 = getelementptr inbounds i64, i64* %envptr10505, i64 5                ; &envptr10505[5]
  %UKj$lsts_43 = load i64, i64* %envptr10506, align 8                                ; load; *envptr10506
  %envptr10507 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10508 = getelementptr inbounds i64, i64* %envptr10507, i64 4                ; &envptr10507[4]
  %qfk$f = load i64, i64* %envptr10508, align 8                                      ; load; *envptr10508
  %envptr10509 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10510 = getelementptr inbounds i64, i64* %envptr10509, i64 3                ; &envptr10509[3]
  %cont7209 = load i64, i64* %envptr10510, align 8                                   ; load; *envptr10510
  %envptr10511 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10512 = getelementptr inbounds i64, i64* %envptr10511, i64 2                ; &envptr10511[2]
  %xM9$_37foldr = load i64, i64* %envptr10512, align 8                               ; load; *envptr10512
  %envptr10513 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10514 = getelementptr inbounds i64, i64* %envptr10513, i64 1                ; &envptr10513[1]
  %hlc$_37foldr1 = load i64, i64* %envptr10514, align 8                              ; load; *envptr10514
  %a6974 = call i64 @prim_cons(i64 %kmf$acc, i64 %UKj$lsts_43)                       ; call prim_cons
  %a6975 = call i64 @prim_cons(i64 %qfk$f, i64 %a6974)                               ; call prim_cons
  %cloptr10515 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10517 = getelementptr inbounds i64, i64* %cloptr10515, i64 1                  ; &eptr10517[1]
  %eptr10518 = getelementptr inbounds i64, i64* %cloptr10515, i64 2                  ; &eptr10518[2]
  %eptr10519 = getelementptr inbounds i64, i64* %cloptr10515, i64 3                  ; &eptr10519[3]
  %eptr10520 = getelementptr inbounds i64, i64* %cloptr10515, i64 4                  ; &eptr10520[4]
  store i64 %Oc2$vs, i64* %eptr10517                                                 ; *eptr10517 = %Oc2$vs
  store i64 %hlc$_37foldr1, i64* %eptr10518                                          ; *eptr10518 = %hlc$_37foldr1
  store i64 %cont7209, i64* %eptr10519                                               ; *eptr10519 = %cont7209
  store i64 %qfk$f, i64* %eptr10520                                                  ; *eptr10520 = %qfk$f
  %eptr10516 = getelementptr inbounds i64, i64* %cloptr10515, i64 0                  ; &cloptr10515[0]
  %f10521 = ptrtoint void(i64,i64,i64)* @lam8210 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10521, i64* %eptr10516                                                 ; store fptr
  %arg7965 = ptrtoint i64* %cloptr10515 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7221 = call i64 @prim_cons(i64 %arg7965, i64 %a6975)                     ; call prim_cons
  %cloptr10522 = inttoptr i64 %xM9$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10522)                                        ; assert function application
  %i0ptr10523 = getelementptr inbounds i64, i64* %cloptr10522, i64 0                 ; &cloptr10522[0]
  %f10525 = load i64, i64* %i0ptr10523, align 8                                      ; load; *i0ptr10523
  %fptr10524 = inttoptr i64 %f10525 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10524(i64 %xM9$_37foldr, i64 %cps_45lst7221)        ; tail call
  ret void
}


define void @lam8210(i64 %env8211, i64 %_957216, i64 %a6976) {
  %envptr10526 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10527 = getelementptr inbounds i64, i64* %envptr10526, i64 4                ; &envptr10526[4]
  %qfk$f = load i64, i64* %envptr10527, align 8                                      ; load; *envptr10527
  %envptr10528 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10529 = getelementptr inbounds i64, i64* %envptr10528, i64 3                ; &envptr10528[3]
  %cont7209 = load i64, i64* %envptr10529, align 8                                   ; load; *envptr10529
  %envptr10530 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10531 = getelementptr inbounds i64, i64* %envptr10530, i64 2                ; &envptr10530[2]
  %hlc$_37foldr1 = load i64, i64* %envptr10531, align 8                              ; load; *envptr10531
  %envptr10532 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10533 = getelementptr inbounds i64, i64* %envptr10532, i64 1                ; &envptr10532[1]
  %Oc2$vs = load i64, i64* %envptr10533, align 8                                     ; load; *envptr10533
  %arg7966 = add i64 0, 0                                                            ; quoted ()
  %a6977 = call i64 @prim_cons(i64 %a6976, i64 %arg7966)                             ; call prim_cons
  %cloptr10534 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10536 = getelementptr inbounds i64, i64* %cloptr10534, i64 1                  ; &eptr10536[1]
  %eptr10537 = getelementptr inbounds i64, i64* %cloptr10534, i64 2                  ; &eptr10537[2]
  store i64 %cont7209, i64* %eptr10536                                               ; *eptr10536 = %cont7209
  store i64 %qfk$f, i64* %eptr10537                                                  ; *eptr10537 = %qfk$f
  %eptr10535 = getelementptr inbounds i64, i64* %cloptr10534, i64 0                  ; &cloptr10534[0]
  %f10538 = ptrtoint void(i64,i64,i64)* @lam8207 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10538, i64* %eptr10535                                                 ; store fptr
  %arg7971 = ptrtoint i64* %cloptr10534 to i64                                       ; closure cast; i64* -> i64
  %cloptr10539 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10540 = getelementptr inbounds i64, i64* %cloptr10539, i64 0                  ; &cloptr10539[0]
  %f10541 = ptrtoint void(i64,i64,i64,i64)* @lam8205 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10541, i64* %eptr10540                                                 ; store fptr
  %arg7970 = ptrtoint i64* %cloptr10539 to i64                                       ; closure cast; i64* -> i64
  %cloptr10542 = inttoptr i64 %hlc$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10542)                                        ; assert function application
  %i0ptr10543 = getelementptr inbounds i64, i64* %cloptr10542, i64 0                 ; &cloptr10542[0]
  %f10545 = load i64, i64* %i0ptr10543, align 8                                      ; load; *i0ptr10543
  %fptr10544 = inttoptr i64 %f10545 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10544(i64 %hlc$_37foldr1, i64 %arg7971, i64 %arg7970, i64 %a6977, i64 %Oc2$vs); tail call
  ret void
}


define void @lam8207(i64 %env8208, i64 %_957217, i64 %a6978) {
  %envptr10546 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10547 = getelementptr inbounds i64, i64* %envptr10546, i64 2                ; &envptr10546[2]
  %qfk$f = load i64, i64* %envptr10547, align 8                                      ; load; *envptr10547
  %envptr10548 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10549 = getelementptr inbounds i64, i64* %envptr10548, i64 1                ; &envptr10548[1]
  %cont7209 = load i64, i64* %envptr10549, align 8                                   ; load; *envptr10549
  %cps_45lst7218 = call i64 @prim_cons(i64 %cont7209, i64 %a6978)                    ; call prim_cons
  %cloptr10550 = inttoptr i64 %qfk$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10550)                                        ; assert function application
  %i0ptr10551 = getelementptr inbounds i64, i64* %cloptr10550, i64 0                 ; &cloptr10550[0]
  %f10553 = load i64, i64* %i0ptr10551, align 8                                      ; load; *i0ptr10551
  %fptr10552 = inttoptr i64 %f10553 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10552(i64 %qfk$f, i64 %cps_45lst7218)               ; tail call
  ret void
}


define void @lam8205(i64 %env8206, i64 %cont7219, i64 %y4K$a, i64 %t7e$b) {
  %retprim7220 = call i64 @prim_cons(i64 %y4K$a, i64 %t7e$b)                         ; call prim_cons
  %arg7978 = add i64 0, 0                                                            ; quoted ()
  %cloptr10554 = inttoptr i64 %cont7219 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10554)                                        ; assert function application
  %i0ptr10555 = getelementptr inbounds i64, i64* %cloptr10554, i64 0                 ; &cloptr10554[0]
  %f10557 = load i64, i64* %i0ptr10555, align 8                                      ; load; *i0ptr10555
  %fptr10556 = inttoptr i64 %f10557 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10556(i64 %cont7219, i64 %arg7978, i64 %retprim7220); tail call
  ret void
}


define void @lam8202(i64 %env8203, i64 %cont7222, i64 %IFd$x) {
  %retprim7223 = call i64 @prim_car(i64 %IFd$x)                                      ; call prim_car
  %arg7982 = add i64 0, 0                                                            ; quoted ()
  %cloptr10558 = inttoptr i64 %cont7222 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10558)                                        ; assert function application
  %i0ptr10559 = getelementptr inbounds i64, i64* %cloptr10558, i64 0                 ; &cloptr10558[0]
  %f10561 = load i64, i64* %i0ptr10559, align 8                                      ; load; *i0ptr10559
  %fptr10560 = inttoptr i64 %f10561 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10560(i64 %cont7222, i64 %arg7982, i64 %retprim7223); tail call
  ret void
}


define void @lam8199(i64 %env8200, i64 %cont7224, i64 %rUv$x) {
  %retprim7225 = call i64 @prim_cdr(i64 %rUv$x)                                      ; call prim_cdr
  %arg7986 = add i64 0, 0                                                            ; quoted ()
  %cloptr10562 = inttoptr i64 %cont7224 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10562)                                        ; assert function application
  %i0ptr10563 = getelementptr inbounds i64, i64* %cloptr10562, i64 0                 ; &cloptr10562[0]
  %f10565 = load i64, i64* %i0ptr10563, align 8                                      ; load; *i0ptr10563
  %fptr10564 = inttoptr i64 %f10565 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10564(i64 %cont7224, i64 %arg7986, i64 %retprim7225); tail call
  ret void
}


define void @lam8195(i64 %env8196, i64 %cont7226, i64 %MyK$lst, i64 %KJg$b) {
  %cmp10566 = icmp eq i64 %KJg$b, 15                                                 ; false?
  br i1 %cmp10566, label %else10568, label %then10567                                ; if

then10567:
  %arg7989 = add i64 0, 0                                                            ; quoted ()
  %cloptr10569 = inttoptr i64 %cont7226 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10569)                                        ; assert function application
  %i0ptr10570 = getelementptr inbounds i64, i64* %cloptr10569, i64 0                 ; &cloptr10569[0]
  %f10572 = load i64, i64* %i0ptr10570, align 8                                      ; load; *i0ptr10570
  %fptr10571 = inttoptr i64 %f10572 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10571(i64 %cont7226, i64 %arg7989, i64 %KJg$b)      ; tail call
  ret void

else10568:
  %retprim7227 = call i64 @prim_null_63(i64 %MyK$lst)                                ; call prim_null_63
  %arg7993 = add i64 0, 0                                                            ; quoted ()
  %cloptr10573 = inttoptr i64 %cont7226 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10573)                                        ; assert function application
  %i0ptr10574 = getelementptr inbounds i64, i64* %cloptr10573, i64 0                 ; &cloptr10573[0]
  %f10576 = load i64, i64* %i0ptr10574, align 8                                      ; load; *i0ptr10574
  %fptr10575 = inttoptr i64 %f10576 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10575(i64 %cont7226, i64 %arg7993, i64 %retprim7227); tail call
  ret void
}


define void @lam8188(i64 %env8189, i64 %cont7230, i64 %VEQ$_37foldl1) {
  %arg7996 = add i64 0, 0                                                            ; quoted ()
  %cloptr10577 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10579 = getelementptr inbounds i64, i64* %cloptr10577, i64 1                  ; &eptr10579[1]
  store i64 %VEQ$_37foldl1, i64* %eptr10579                                          ; *eptr10579 = %VEQ$_37foldl1
  %eptr10578 = getelementptr inbounds i64, i64* %cloptr10577, i64 0                  ; &cloptr10577[0]
  %f10580 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8185 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10580, i64* %eptr10578                                                 ; store fptr
  %arg7995 = ptrtoint i64* %cloptr10577 to i64                                       ; closure cast; i64* -> i64
  %cloptr10581 = inttoptr i64 %cont7230 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10581)                                        ; assert function application
  %i0ptr10582 = getelementptr inbounds i64, i64* %cloptr10581, i64 0                 ; &cloptr10581[0]
  %f10584 = load i64, i64* %i0ptr10582, align 8                                      ; load; *i0ptr10582
  %fptr10583 = inttoptr i64 %f10584 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10583(i64 %cont7230, i64 %arg7996, i64 %arg7995)    ; tail call
  ret void
}


define void @lam8185(i64 %env8186, i64 %cont7231, i64 %SBA$f, i64 %Jeo$acc, i64 %IZ8$lst) {
  %envptr10585 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10586 = getelementptr inbounds i64, i64* %envptr10585, i64 1                ; &envptr10585[1]
  %VEQ$_37foldl1 = load i64, i64* %envptr10586, align 8                              ; load; *envptr10586
  %a6965 = call i64 @prim_null_63(i64 %IZ8$lst)                                      ; call prim_null_63
  %cmp10587 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp10587, label %else10589, label %then10588                                ; if

then10588:
  %arg8000 = add i64 0, 0                                                            ; quoted ()
  %cloptr10590 = inttoptr i64 %cont7231 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10590)                                        ; assert function application
  %i0ptr10591 = getelementptr inbounds i64, i64* %cloptr10590, i64 0                 ; &cloptr10590[0]
  %f10593 = load i64, i64* %i0ptr10591, align 8                                      ; load; *i0ptr10591
  %fptr10592 = inttoptr i64 %f10593 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10592(i64 %cont7231, i64 %arg8000, i64 %Jeo$acc)    ; tail call
  ret void

else10589:
  %a6966 = call i64 @prim_car(i64 %IZ8$lst)                                          ; call prim_car
  %cloptr10594 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10596 = getelementptr inbounds i64, i64* %cloptr10594, i64 1                  ; &eptr10596[1]
  %eptr10597 = getelementptr inbounds i64, i64* %cloptr10594, i64 2                  ; &eptr10597[2]
  %eptr10598 = getelementptr inbounds i64, i64* %cloptr10594, i64 3                  ; &eptr10598[3]
  %eptr10599 = getelementptr inbounds i64, i64* %cloptr10594, i64 4                  ; &eptr10599[4]
  store i64 %cont7231, i64* %eptr10596                                               ; *eptr10596 = %cont7231
  store i64 %VEQ$_37foldl1, i64* %eptr10597                                          ; *eptr10597 = %VEQ$_37foldl1
  store i64 %SBA$f, i64* %eptr10598                                                  ; *eptr10598 = %SBA$f
  store i64 %IZ8$lst, i64* %eptr10599                                                ; *eptr10599 = %IZ8$lst
  %eptr10595 = getelementptr inbounds i64, i64* %cloptr10594, i64 0                  ; &cloptr10594[0]
  %f10600 = ptrtoint void(i64,i64,i64)* @lam8183 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10600, i64* %eptr10595                                                 ; store fptr
  %arg8005 = ptrtoint i64* %cloptr10594 to i64                                       ; closure cast; i64* -> i64
  %cloptr10601 = inttoptr i64 %SBA$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10601)                                        ; assert function application
  %i0ptr10602 = getelementptr inbounds i64, i64* %cloptr10601, i64 0                 ; &cloptr10601[0]
  %f10604 = load i64, i64* %i0ptr10602, align 8                                      ; load; *i0ptr10602
  %fptr10603 = inttoptr i64 %f10604 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10603(i64 %SBA$f, i64 %arg8005, i64 %a6966, i64 %Jeo$acc); tail call
  ret void
}


define void @lam8183(i64 %env8184, i64 %_957232, i64 %a6967) {
  %envptr10605 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10606 = getelementptr inbounds i64, i64* %envptr10605, i64 4                ; &envptr10605[4]
  %IZ8$lst = load i64, i64* %envptr10606, align 8                                    ; load; *envptr10606
  %envptr10607 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10608 = getelementptr inbounds i64, i64* %envptr10607, i64 3                ; &envptr10607[3]
  %SBA$f = load i64, i64* %envptr10608, align 8                                      ; load; *envptr10608
  %envptr10609 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10610 = getelementptr inbounds i64, i64* %envptr10609, i64 2                ; &envptr10609[2]
  %VEQ$_37foldl1 = load i64, i64* %envptr10610, align 8                              ; load; *envptr10610
  %envptr10611 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10612 = getelementptr inbounds i64, i64* %envptr10611, i64 1                ; &envptr10611[1]
  %cont7231 = load i64, i64* %envptr10612, align 8                                   ; load; *envptr10612
  %a6968 = call i64 @prim_cdr(i64 %IZ8$lst)                                          ; call prim_cdr
  %cloptr10613 = inttoptr i64 %VEQ$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10613)                                        ; assert function application
  %i0ptr10614 = getelementptr inbounds i64, i64* %cloptr10613, i64 0                 ; &cloptr10613[0]
  %f10616 = load i64, i64* %i0ptr10614, align 8                                      ; load; *i0ptr10614
  %fptr10615 = inttoptr i64 %f10616 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10615(i64 %VEQ$_37foldl1, i64 %cont7231, i64 %SBA$f, i64 %a6967, i64 %a6968); tail call
  ret void
}


define void @lam8180(i64 %env8181, i64 %cont7233, i64 %sgi$_37length) {
  %arg8014 = add i64 0, 0                                                            ; quoted ()
  %cloptr10617 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10619 = getelementptr inbounds i64, i64* %cloptr10617, i64 1                  ; &eptr10619[1]
  store i64 %sgi$_37length, i64* %eptr10619                                          ; *eptr10619 = %sgi$_37length
  %eptr10618 = getelementptr inbounds i64, i64* %cloptr10617, i64 0                  ; &cloptr10617[0]
  %f10620 = ptrtoint void(i64,i64,i64)* @lam8177 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10620, i64* %eptr10618                                                 ; store fptr
  %arg8013 = ptrtoint i64* %cloptr10617 to i64                                       ; closure cast; i64* -> i64
  %cloptr10621 = inttoptr i64 %cont7233 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10621)                                        ; assert function application
  %i0ptr10622 = getelementptr inbounds i64, i64* %cloptr10621, i64 0                 ; &cloptr10621[0]
  %f10624 = load i64, i64* %i0ptr10622, align 8                                      ; load; *i0ptr10622
  %fptr10623 = inttoptr i64 %f10624 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10623(i64 %cont7233, i64 %arg8014, i64 %arg8013)    ; tail call
  ret void
}


define void @lam8177(i64 %env8178, i64 %cont7234, i64 %GIh$lst) {
  %envptr10625 = inttoptr i64 %env8178 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10626 = getelementptr inbounds i64, i64* %envptr10625, i64 1                ; &envptr10625[1]
  %sgi$_37length = load i64, i64* %envptr10626, align 8                              ; load; *envptr10626
  %a6962 = call i64 @prim_null_63(i64 %GIh$lst)                                      ; call prim_null_63
  %cmp10627 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp10627, label %else10629, label %then10628                                ; if

then10628:
  %arg8018 = add i64 0, 0                                                            ; quoted ()
  %arg8017 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10630 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10630)                                        ; assert function application
  %i0ptr10631 = getelementptr inbounds i64, i64* %cloptr10630, i64 0                 ; &cloptr10630[0]
  %f10633 = load i64, i64* %i0ptr10631, align 8                                      ; load; *i0ptr10631
  %fptr10632 = inttoptr i64 %f10633 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10632(i64 %cont7234, i64 %arg8018, i64 %arg8017)    ; tail call
  ret void

else10629:
  %a6963 = call i64 @prim_cdr(i64 %GIh$lst)                                          ; call prim_cdr
  %cloptr10634 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10636 = getelementptr inbounds i64, i64* %cloptr10634, i64 1                  ; &eptr10636[1]
  store i64 %cont7234, i64* %eptr10636                                               ; *eptr10636 = %cont7234
  %eptr10635 = getelementptr inbounds i64, i64* %cloptr10634, i64 0                  ; &cloptr10634[0]
  %f10637 = ptrtoint void(i64,i64,i64)* @lam8175 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10637, i64* %eptr10635                                                 ; store fptr
  %arg8022 = ptrtoint i64* %cloptr10634 to i64                                       ; closure cast; i64* -> i64
  %cloptr10638 = inttoptr i64 %sgi$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10638)                                        ; assert function application
  %i0ptr10639 = getelementptr inbounds i64, i64* %cloptr10638, i64 0                 ; &cloptr10638[0]
  %f10641 = load i64, i64* %i0ptr10639, align 8                                      ; load; *i0ptr10639
  %fptr10640 = inttoptr i64 %f10641 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10640(i64 %sgi$_37length, i64 %arg8022, i64 %a6963) ; tail call
  ret void
}


define void @lam8175(i64 %env8176, i64 %_957235, i64 %a6964) {
  %envptr10642 = inttoptr i64 %env8176 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10643 = getelementptr inbounds i64, i64* %envptr10642, i64 1                ; &envptr10642[1]
  %cont7234 = load i64, i64* %envptr10643, align 8                                   ; load; *envptr10643
  %arg8025 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7236 = call i64 @prim__43(i64 %arg8025, i64 %a6964)                        ; call prim__43
  %arg8027 = add i64 0, 0                                                            ; quoted ()
  %cloptr10644 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10644)                                        ; assert function application
  %i0ptr10645 = getelementptr inbounds i64, i64* %cloptr10644, i64 0                 ; &cloptr10644[0]
  %f10647 = load i64, i64* %i0ptr10645, align 8                                      ; load; *i0ptr10645
  %fptr10646 = inttoptr i64 %f10647 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10646(i64 %cont7234, i64 %arg8027, i64 %retprim7236); tail call
  ret void
}


define void @lam8169(i64 %env8170, i64 %cont7237, i64 %JTr$_37take) {
  %arg8030 = add i64 0, 0                                                            ; quoted ()
  %cloptr10648 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10650 = getelementptr inbounds i64, i64* %cloptr10648, i64 1                  ; &eptr10650[1]
  store i64 %JTr$_37take, i64* %eptr10650                                            ; *eptr10650 = %JTr$_37take
  %eptr10649 = getelementptr inbounds i64, i64* %cloptr10648, i64 0                  ; &cloptr10648[0]
  %f10651 = ptrtoint void(i64,i64,i64,i64)* @lam8166 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10651, i64* %eptr10649                                                 ; store fptr
  %arg8029 = ptrtoint i64* %cloptr10648 to i64                                       ; closure cast; i64* -> i64
  %cloptr10652 = inttoptr i64 %cont7237 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10652)                                        ; assert function application
  %i0ptr10653 = getelementptr inbounds i64, i64* %cloptr10652, i64 0                 ; &cloptr10652[0]
  %f10655 = load i64, i64* %i0ptr10653, align 8                                      ; load; *i0ptr10653
  %fptr10654 = inttoptr i64 %f10655 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10654(i64 %cont7237, i64 %arg8030, i64 %arg8029)    ; tail call
  ret void
}


define void @lam8166(i64 %env8167, i64 %cont7238, i64 %Irj$lst, i64 %wh3$n) {
  %envptr10656 = inttoptr i64 %env8167 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10657 = getelementptr inbounds i64, i64* %envptr10656, i64 1                ; &envptr10656[1]
  %JTr$_37take = load i64, i64* %envptr10657, align 8                                ; load; *envptr10657
  %arg8032 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim__61(i64 %wh3$n, i64 %arg8032)                              ; call prim__61
  %cmp10658 = icmp eq i64 %a6956, 15                                                 ; false?
  br i1 %cmp10658, label %else10660, label %then10659                                ; if

then10659:
  %arg8035 = add i64 0, 0                                                            ; quoted ()
  %arg8034 = add i64 0, 0                                                            ; quoted ()
  %cloptr10661 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10661)                                        ; assert function application
  %i0ptr10662 = getelementptr inbounds i64, i64* %cloptr10661, i64 0                 ; &cloptr10661[0]
  %f10664 = load i64, i64* %i0ptr10662, align 8                                      ; load; *i0ptr10662
  %fptr10663 = inttoptr i64 %f10664 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10663(i64 %cont7238, i64 %arg8035, i64 %arg8034)    ; tail call
  ret void

else10660:
  %a6957 = call i64 @prim_null_63(i64 %Irj$lst)                                      ; call prim_null_63
  %cmp10665 = icmp eq i64 %a6957, 15                                                 ; false?
  br i1 %cmp10665, label %else10667, label %then10666                                ; if

then10666:
  %arg8039 = add i64 0, 0                                                            ; quoted ()
  %arg8038 = add i64 0, 0                                                            ; quoted ()
  %cloptr10668 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10668)                                        ; assert function application
  %i0ptr10669 = getelementptr inbounds i64, i64* %cloptr10668, i64 0                 ; &cloptr10668[0]
  %f10671 = load i64, i64* %i0ptr10669, align 8                                      ; load; *i0ptr10669
  %fptr10670 = inttoptr i64 %f10671 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10670(i64 %cont7238, i64 %arg8039, i64 %arg8038)    ; tail call
  ret void

else10667:
  %a6958 = call i64 @prim_car(i64 %Irj$lst)                                          ; call prim_car
  %a6959 = call i64 @prim_cdr(i64 %Irj$lst)                                          ; call prim_cdr
  %arg8043 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6960 = call i64 @prim__45(i64 %wh3$n, i64 %arg8043)                              ; call prim__45
  %cloptr10672 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10674 = getelementptr inbounds i64, i64* %cloptr10672, i64 1                  ; &eptr10674[1]
  %eptr10675 = getelementptr inbounds i64, i64* %cloptr10672, i64 2                  ; &eptr10675[2]
  store i64 %cont7238, i64* %eptr10674                                               ; *eptr10674 = %cont7238
  store i64 %a6958, i64* %eptr10675                                                  ; *eptr10675 = %a6958
  %eptr10673 = getelementptr inbounds i64, i64* %cloptr10672, i64 0                  ; &cloptr10672[0]
  %f10676 = ptrtoint void(i64,i64,i64)* @lam8162 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10676, i64* %eptr10673                                                 ; store fptr
  %arg8047 = ptrtoint i64* %cloptr10672 to i64                                       ; closure cast; i64* -> i64
  %cloptr10677 = inttoptr i64 %JTr$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10677)                                        ; assert function application
  %i0ptr10678 = getelementptr inbounds i64, i64* %cloptr10677, i64 0                 ; &cloptr10677[0]
  %f10680 = load i64, i64* %i0ptr10678, align 8                                      ; load; *i0ptr10678
  %fptr10679 = inttoptr i64 %f10680 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10679(i64 %JTr$_37take, i64 %arg8047, i64 %a6959, i64 %a6960); tail call
  ret void
}


define void @lam8162(i64 %env8163, i64 %_957239, i64 %a6961) {
  %envptr10681 = inttoptr i64 %env8163 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10682 = getelementptr inbounds i64, i64* %envptr10681, i64 2                ; &envptr10681[2]
  %a6958 = load i64, i64* %envptr10682, align 8                                      ; load; *envptr10682
  %envptr10683 = inttoptr i64 %env8163 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10684 = getelementptr inbounds i64, i64* %envptr10683, i64 1                ; &envptr10683[1]
  %cont7238 = load i64, i64* %envptr10684, align 8                                   ; load; *envptr10684
  %retprim7240 = call i64 @prim_cons(i64 %a6958, i64 %a6961)                         ; call prim_cons
  %arg8052 = add i64 0, 0                                                            ; quoted ()
  %cloptr10685 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10685)                                        ; assert function application
  %i0ptr10686 = getelementptr inbounds i64, i64* %cloptr10685, i64 0                 ; &cloptr10685[0]
  %f10688 = load i64, i64* %i0ptr10686, align 8                                      ; load; *i0ptr10686
  %fptr10687 = inttoptr i64 %f10688 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10687(i64 %cont7238, i64 %arg8052, i64 %retprim7240); tail call
  ret void
}


define void @lam8155(i64 %env8156, i64 %cont7241, i64 %om8$_37map) {
  %arg8055 = add i64 0, 0                                                            ; quoted ()
  %cloptr10689 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10691 = getelementptr inbounds i64, i64* %cloptr10689, i64 1                  ; &eptr10691[1]
  store i64 %om8$_37map, i64* %eptr10691                                             ; *eptr10691 = %om8$_37map
  %eptr10690 = getelementptr inbounds i64, i64* %cloptr10689, i64 0                  ; &cloptr10689[0]
  %f10692 = ptrtoint void(i64,i64,i64,i64)* @lam8152 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10692, i64* %eptr10690                                                 ; store fptr
  %arg8054 = ptrtoint i64* %cloptr10689 to i64                                       ; closure cast; i64* -> i64
  %cloptr10693 = inttoptr i64 %cont7241 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10693)                                        ; assert function application
  %i0ptr10694 = getelementptr inbounds i64, i64* %cloptr10693, i64 0                 ; &cloptr10693[0]
  %f10696 = load i64, i64* %i0ptr10694, align 8                                      ; load; *i0ptr10694
  %fptr10695 = inttoptr i64 %f10696 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10695(i64 %cont7241, i64 %arg8055, i64 %arg8054)    ; tail call
  ret void
}


define void @lam8152(i64 %env8153, i64 %cont7242, i64 %w9J$f, i64 %DOh$lst) {
  %envptr10697 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10698 = getelementptr inbounds i64, i64* %envptr10697, i64 1                ; &envptr10697[1]
  %om8$_37map = load i64, i64* %envptr10698, align 8                                 ; load; *envptr10698
  %a6951 = call i64 @prim_null_63(i64 %DOh$lst)                                      ; call prim_null_63
  %cmp10699 = icmp eq i64 %a6951, 15                                                 ; false?
  br i1 %cmp10699, label %else10701, label %then10700                                ; if

then10700:
  %arg8059 = add i64 0, 0                                                            ; quoted ()
  %arg8058 = add i64 0, 0                                                            ; quoted ()
  %cloptr10702 = inttoptr i64 %cont7242 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10702)                                        ; assert function application
  %i0ptr10703 = getelementptr inbounds i64, i64* %cloptr10702, i64 0                 ; &cloptr10702[0]
  %f10705 = load i64, i64* %i0ptr10703, align 8                                      ; load; *i0ptr10703
  %fptr10704 = inttoptr i64 %f10705 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10704(i64 %cont7242, i64 %arg8059, i64 %arg8058)    ; tail call
  ret void

else10701:
  %a6952 = call i64 @prim_car(i64 %DOh$lst)                                          ; call prim_car
  %cloptr10706 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10708 = getelementptr inbounds i64, i64* %cloptr10706, i64 1                  ; &eptr10708[1]
  %eptr10709 = getelementptr inbounds i64, i64* %cloptr10706, i64 2                  ; &eptr10709[2]
  %eptr10710 = getelementptr inbounds i64, i64* %cloptr10706, i64 3                  ; &eptr10710[3]
  %eptr10711 = getelementptr inbounds i64, i64* %cloptr10706, i64 4                  ; &eptr10711[4]
  store i64 %om8$_37map, i64* %eptr10708                                             ; *eptr10708 = %om8$_37map
  store i64 %w9J$f, i64* %eptr10709                                                  ; *eptr10709 = %w9J$f
  store i64 %DOh$lst, i64* %eptr10710                                                ; *eptr10710 = %DOh$lst
  store i64 %cont7242, i64* %eptr10711                                               ; *eptr10711 = %cont7242
  %eptr10707 = getelementptr inbounds i64, i64* %cloptr10706, i64 0                  ; &cloptr10706[0]
  %f10712 = ptrtoint void(i64,i64,i64)* @lam8150 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10712, i64* %eptr10707                                                 ; store fptr
  %arg8063 = ptrtoint i64* %cloptr10706 to i64                                       ; closure cast; i64* -> i64
  %cloptr10713 = inttoptr i64 %w9J$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10713)                                        ; assert function application
  %i0ptr10714 = getelementptr inbounds i64, i64* %cloptr10713, i64 0                 ; &cloptr10713[0]
  %f10716 = load i64, i64* %i0ptr10714, align 8                                      ; load; *i0ptr10714
  %fptr10715 = inttoptr i64 %f10716 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10715(i64 %w9J$f, i64 %arg8063, i64 %a6952)         ; tail call
  ret void
}


define void @lam8150(i64 %env8151, i64 %_957243, i64 %a6953) {
  %envptr10717 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10718 = getelementptr inbounds i64, i64* %envptr10717, i64 4                ; &envptr10717[4]
  %cont7242 = load i64, i64* %envptr10718, align 8                                   ; load; *envptr10718
  %envptr10719 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10720 = getelementptr inbounds i64, i64* %envptr10719, i64 3                ; &envptr10719[3]
  %DOh$lst = load i64, i64* %envptr10720, align 8                                    ; load; *envptr10720
  %envptr10721 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10722 = getelementptr inbounds i64, i64* %envptr10721, i64 2                ; &envptr10721[2]
  %w9J$f = load i64, i64* %envptr10722, align 8                                      ; load; *envptr10722
  %envptr10723 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10724 = getelementptr inbounds i64, i64* %envptr10723, i64 1                ; &envptr10723[1]
  %om8$_37map = load i64, i64* %envptr10724, align 8                                 ; load; *envptr10724
  %a6954 = call i64 @prim_cdr(i64 %DOh$lst)                                          ; call prim_cdr
  %cloptr10725 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10727 = getelementptr inbounds i64, i64* %cloptr10725, i64 1                  ; &eptr10727[1]
  %eptr10728 = getelementptr inbounds i64, i64* %cloptr10725, i64 2                  ; &eptr10728[2]
  store i64 %a6953, i64* %eptr10727                                                  ; *eptr10727 = %a6953
  store i64 %cont7242, i64* %eptr10728                                               ; *eptr10728 = %cont7242
  %eptr10726 = getelementptr inbounds i64, i64* %cloptr10725, i64 0                  ; &cloptr10725[0]
  %f10729 = ptrtoint void(i64,i64,i64)* @lam8148 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10729, i64* %eptr10726                                                 ; store fptr
  %arg8068 = ptrtoint i64* %cloptr10725 to i64                                       ; closure cast; i64* -> i64
  %cloptr10730 = inttoptr i64 %om8$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10730)                                        ; assert function application
  %i0ptr10731 = getelementptr inbounds i64, i64* %cloptr10730, i64 0                 ; &cloptr10730[0]
  %f10733 = load i64, i64* %i0ptr10731, align 8                                      ; load; *i0ptr10731
  %fptr10732 = inttoptr i64 %f10733 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10732(i64 %om8$_37map, i64 %arg8068, i64 %w9J$f, i64 %a6954); tail call
  ret void
}


define void @lam8148(i64 %env8149, i64 %_957244, i64 %a6955) {
  %envptr10734 = inttoptr i64 %env8149 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10735 = getelementptr inbounds i64, i64* %envptr10734, i64 2                ; &envptr10734[2]
  %cont7242 = load i64, i64* %envptr10735, align 8                                   ; load; *envptr10735
  %envptr10736 = inttoptr i64 %env8149 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10737 = getelementptr inbounds i64, i64* %envptr10736, i64 1                ; &envptr10736[1]
  %a6953 = load i64, i64* %envptr10737, align 8                                      ; load; *envptr10737
  %retprim7245 = call i64 @prim_cons(i64 %a6953, i64 %a6955)                         ; call prim_cons
  %arg8073 = add i64 0, 0                                                            ; quoted ()
  %cloptr10738 = inttoptr i64 %cont7242 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10738)                                        ; assert function application
  %i0ptr10739 = getelementptr inbounds i64, i64* %cloptr10738, i64 0                 ; &cloptr10738[0]
  %f10741 = load i64, i64* %i0ptr10739, align 8                                      ; load; *i0ptr10739
  %fptr10740 = inttoptr i64 %f10741 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10740(i64 %cont7242, i64 %arg8073, i64 %retprim7245); tail call
  ret void
}


define void @lam8143(i64 %env8144, i64 %cont7246, i64 %pox$_37foldr1) {
  %arg8076 = add i64 0, 0                                                            ; quoted ()
  %cloptr10742 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10744 = getelementptr inbounds i64, i64* %cloptr10742, i64 1                  ; &eptr10744[1]
  store i64 %pox$_37foldr1, i64* %eptr10744                                          ; *eptr10744 = %pox$_37foldr1
  %eptr10743 = getelementptr inbounds i64, i64* %cloptr10742, i64 0                  ; &cloptr10742[0]
  %f10745 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8140 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10745, i64* %eptr10743                                                 ; store fptr
  %arg8075 = ptrtoint i64* %cloptr10742 to i64                                       ; closure cast; i64* -> i64
  %cloptr10746 = inttoptr i64 %cont7246 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10746)                                        ; assert function application
  %i0ptr10747 = getelementptr inbounds i64, i64* %cloptr10746, i64 0                 ; &cloptr10746[0]
  %f10749 = load i64, i64* %i0ptr10747, align 8                                      ; load; *i0ptr10747
  %fptr10748 = inttoptr i64 %f10749 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10748(i64 %cont7246, i64 %arg8076, i64 %arg8075)    ; tail call
  ret void
}


define void @lam8140(i64 %env8141, i64 %cont7247, i64 %qAJ$f, i64 %Snd$acc, i64 %BZQ$lst) {
  %envptr10750 = inttoptr i64 %env8141 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10751 = getelementptr inbounds i64, i64* %envptr10750, i64 1                ; &envptr10750[1]
  %pox$_37foldr1 = load i64, i64* %envptr10751, align 8                              ; load; *envptr10751
  %a6947 = call i64 @prim_null_63(i64 %BZQ$lst)                                      ; call prim_null_63
  %cmp10752 = icmp eq i64 %a6947, 15                                                 ; false?
  br i1 %cmp10752, label %else10754, label %then10753                                ; if

then10753:
  %arg8080 = add i64 0, 0                                                            ; quoted ()
  %cloptr10755 = inttoptr i64 %cont7247 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10755)                                        ; assert function application
  %i0ptr10756 = getelementptr inbounds i64, i64* %cloptr10755, i64 0                 ; &cloptr10755[0]
  %f10758 = load i64, i64* %i0ptr10756, align 8                                      ; load; *i0ptr10756
  %fptr10757 = inttoptr i64 %f10758 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10757(i64 %cont7247, i64 %arg8080, i64 %Snd$acc)    ; tail call
  ret void

else10754:
  %a6948 = call i64 @prim_car(i64 %BZQ$lst)                                          ; call prim_car
  %a6949 = call i64 @prim_cdr(i64 %BZQ$lst)                                          ; call prim_cdr
  %cloptr10759 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10761 = getelementptr inbounds i64, i64* %cloptr10759, i64 1                  ; &eptr10761[1]
  %eptr10762 = getelementptr inbounds i64, i64* %cloptr10759, i64 2                  ; &eptr10762[2]
  %eptr10763 = getelementptr inbounds i64, i64* %cloptr10759, i64 3                  ; &eptr10763[3]
  store i64 %a6948, i64* %eptr10761                                                  ; *eptr10761 = %a6948
  store i64 %qAJ$f, i64* %eptr10762                                                  ; *eptr10762 = %qAJ$f
  store i64 %cont7247, i64* %eptr10763                                               ; *eptr10763 = %cont7247
  %eptr10760 = getelementptr inbounds i64, i64* %cloptr10759, i64 0                  ; &cloptr10759[0]
  %f10764 = ptrtoint void(i64,i64,i64)* @lam8138 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10764, i64* %eptr10760                                                 ; store fptr
  %arg8087 = ptrtoint i64* %cloptr10759 to i64                                       ; closure cast; i64* -> i64
  %cloptr10765 = inttoptr i64 %pox$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10765)                                        ; assert function application
  %i0ptr10766 = getelementptr inbounds i64, i64* %cloptr10765, i64 0                 ; &cloptr10765[0]
  %f10768 = load i64, i64* %i0ptr10766, align 8                                      ; load; *i0ptr10766
  %fptr10767 = inttoptr i64 %f10768 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10767(i64 %pox$_37foldr1, i64 %arg8087, i64 %qAJ$f, i64 %Snd$acc, i64 %a6949); tail call
  ret void
}


define void @lam8138(i64 %env8139, i64 %_957248, i64 %a6950) {
  %envptr10769 = inttoptr i64 %env8139 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10770 = getelementptr inbounds i64, i64* %envptr10769, i64 3                ; &envptr10769[3]
  %cont7247 = load i64, i64* %envptr10770, align 8                                   ; load; *envptr10770
  %envptr10771 = inttoptr i64 %env8139 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10772 = getelementptr inbounds i64, i64* %envptr10771, i64 2                ; &envptr10771[2]
  %qAJ$f = load i64, i64* %envptr10772, align 8                                      ; load; *envptr10772
  %envptr10773 = inttoptr i64 %env8139 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10774 = getelementptr inbounds i64, i64* %envptr10773, i64 1                ; &envptr10773[1]
  %a6948 = load i64, i64* %envptr10774, align 8                                      ; load; *envptr10774
  %cloptr10775 = inttoptr i64 %qAJ$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10775)                                        ; assert function application
  %i0ptr10776 = getelementptr inbounds i64, i64* %cloptr10775, i64 0                 ; &cloptr10775[0]
  %f10778 = load i64, i64* %i0ptr10776, align 8                                      ; load; *i0ptr10776
  %fptr10777 = inttoptr i64 %f10778 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10777(i64 %qAJ$f, i64 %cont7247, i64 %a6948, i64 %a6950); tail call
  ret void
}


define void @lam8135(i64 %env8136, i64 %cont7250, i64 %vtG$y) {
  %arg8094 = add i64 0, 0                                                            ; quoted ()
  %cloptr10779 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10781 = getelementptr inbounds i64, i64* %cloptr10779, i64 1                  ; &eptr10781[1]
  store i64 %vtG$y, i64* %eptr10781                                                  ; *eptr10781 = %vtG$y
  %eptr10780 = getelementptr inbounds i64, i64* %cloptr10779, i64 0                  ; &cloptr10779[0]
  %f10782 = ptrtoint void(i64,i64,i64)* @lam8132 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10782, i64* %eptr10780                                                 ; store fptr
  %arg8093 = ptrtoint i64* %cloptr10779 to i64                                       ; closure cast; i64* -> i64
  %cloptr10783 = inttoptr i64 %cont7250 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10783)                                        ; assert function application
  %i0ptr10784 = getelementptr inbounds i64, i64* %cloptr10783, i64 0                 ; &cloptr10783[0]
  %f10786 = load i64, i64* %i0ptr10784, align 8                                      ; load; *i0ptr10784
  %fptr10785 = inttoptr i64 %f10786 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10785(i64 %cont7250, i64 %arg8094, i64 %arg8093)    ; tail call
  ret void
}


define void @lam8132(i64 %env8133, i64 %cont7251, i64 %pZ8$f) {
  %envptr10787 = inttoptr i64 %env8133 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10788 = getelementptr inbounds i64, i64* %envptr10787, i64 1                ; &envptr10787[1]
  %vtG$y = load i64, i64* %envptr10788, align 8                                      ; load; *envptr10788
  %cloptr10789 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10791 = getelementptr inbounds i64, i64* %cloptr10789, i64 1                  ; &eptr10791[1]
  %eptr10792 = getelementptr inbounds i64, i64* %cloptr10789, i64 2                  ; &eptr10792[2]
  store i64 %pZ8$f, i64* %eptr10791                                                  ; *eptr10791 = %pZ8$f
  store i64 %vtG$y, i64* %eptr10792                                                  ; *eptr10792 = %vtG$y
  %eptr10790 = getelementptr inbounds i64, i64* %cloptr10789, i64 0                  ; &cloptr10789[0]
  %f10793 = ptrtoint void(i64,i64)* @lam8130 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10793, i64* %eptr10790                                                 ; store fptr
  %arg8096 = ptrtoint i64* %cloptr10789 to i64                                       ; closure cast; i64* -> i64
  %cloptr10794 = inttoptr i64 %pZ8$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10794)                                        ; assert function application
  %i0ptr10795 = getelementptr inbounds i64, i64* %cloptr10794, i64 0                 ; &cloptr10794[0]
  %f10797 = load i64, i64* %i0ptr10795, align 8                                      ; load; *i0ptr10795
  %fptr10796 = inttoptr i64 %f10797 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10796(i64 %pZ8$f, i64 %cont7251, i64 %arg8096)      ; tail call
  ret void
}


define void @lam8130(i64 %env8131, i64 %BD8$args7253) {
  %envptr10798 = inttoptr i64 %env8131 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10799 = getelementptr inbounds i64, i64* %envptr10798, i64 2                ; &envptr10798[2]
  %vtG$y = load i64, i64* %envptr10799, align 8                                      ; load; *envptr10799
  %envptr10800 = inttoptr i64 %env8131 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10801 = getelementptr inbounds i64, i64* %envptr10800, i64 1                ; &envptr10800[1]
  %pZ8$f = load i64, i64* %envptr10801, align 8                                      ; load; *envptr10801
  %cont7252 = call i64 @prim_car(i64 %BD8$args7253)                                  ; call prim_car
  %BD8$args = call i64 @prim_cdr(i64 %BD8$args7253)                                  ; call prim_cdr
  %cloptr10802 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10804 = getelementptr inbounds i64, i64* %cloptr10802, i64 1                  ; &eptr10804[1]
  %eptr10805 = getelementptr inbounds i64, i64* %cloptr10802, i64 2                  ; &eptr10805[2]
  %eptr10806 = getelementptr inbounds i64, i64* %cloptr10802, i64 3                  ; &eptr10806[3]
  store i64 %cont7252, i64* %eptr10804                                               ; *eptr10804 = %cont7252
  store i64 %BD8$args, i64* %eptr10805                                               ; *eptr10805 = %BD8$args
  store i64 %pZ8$f, i64* %eptr10806                                                  ; *eptr10806 = %pZ8$f
  %eptr10803 = getelementptr inbounds i64, i64* %cloptr10802, i64 0                  ; &cloptr10802[0]
  %f10807 = ptrtoint void(i64,i64,i64)* @lam8128 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10807, i64* %eptr10803                                                 ; store fptr
  %arg8102 = ptrtoint i64* %cloptr10802 to i64                                       ; closure cast; i64* -> i64
  %cloptr10808 = inttoptr i64 %vtG$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10808)                                        ; assert function application
  %i0ptr10809 = getelementptr inbounds i64, i64* %cloptr10808, i64 0                 ; &cloptr10808[0]
  %f10811 = load i64, i64* %i0ptr10809, align 8                                      ; load; *i0ptr10809
  %fptr10810 = inttoptr i64 %f10811 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10810(i64 %vtG$y, i64 %arg8102, i64 %vtG$y)         ; tail call
  ret void
}


define void @lam8128(i64 %env8129, i64 %_957254, i64 %a6945) {
  %envptr10812 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10813 = getelementptr inbounds i64, i64* %envptr10812, i64 3                ; &envptr10812[3]
  %pZ8$f = load i64, i64* %envptr10813, align 8                                      ; load; *envptr10813
  %envptr10814 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10815 = getelementptr inbounds i64, i64* %envptr10814, i64 2                ; &envptr10814[2]
  %BD8$args = load i64, i64* %envptr10815, align 8                                   ; load; *envptr10815
  %envptr10816 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10817 = getelementptr inbounds i64, i64* %envptr10816, i64 1                ; &envptr10816[1]
  %cont7252 = load i64, i64* %envptr10817, align 8                                   ; load; *envptr10817
  %cloptr10818 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10820 = getelementptr inbounds i64, i64* %cloptr10818, i64 1                  ; &eptr10820[1]
  %eptr10821 = getelementptr inbounds i64, i64* %cloptr10818, i64 2                  ; &eptr10821[2]
  store i64 %cont7252, i64* %eptr10820                                               ; *eptr10820 = %cont7252
  store i64 %BD8$args, i64* %eptr10821                                               ; *eptr10821 = %BD8$args
  %eptr10819 = getelementptr inbounds i64, i64* %cloptr10818, i64 0                  ; &cloptr10818[0]
  %f10822 = ptrtoint void(i64,i64,i64)* @lam8126 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10822, i64* %eptr10819                                                 ; store fptr
  %arg8105 = ptrtoint i64* %cloptr10818 to i64                                       ; closure cast; i64* -> i64
  %cloptr10823 = inttoptr i64 %a6945 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10823)                                        ; assert function application
  %i0ptr10824 = getelementptr inbounds i64, i64* %cloptr10823, i64 0                 ; &cloptr10823[0]
  %f10826 = load i64, i64* %i0ptr10824, align 8                                      ; load; *i0ptr10824
  %fptr10825 = inttoptr i64 %f10826 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10825(i64 %a6945, i64 %arg8105, i64 %pZ8$f)         ; tail call
  ret void
}


define void @lam8126(i64 %env8127, i64 %_957255, i64 %a6946) {
  %envptr10827 = inttoptr i64 %env8127 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10828 = getelementptr inbounds i64, i64* %envptr10827, i64 2                ; &envptr10827[2]
  %BD8$args = load i64, i64* %envptr10828, align 8                                   ; load; *envptr10828
  %envptr10829 = inttoptr i64 %env8127 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10830 = getelementptr inbounds i64, i64* %envptr10829, i64 1                ; &envptr10829[1]
  %cont7252 = load i64, i64* %envptr10830, align 8                                   ; load; *envptr10830
  %cps_45lst7256 = call i64 @prim_cons(i64 %cont7252, i64 %BD8$args)                 ; call prim_cons
  %cloptr10831 = inttoptr i64 %a6946 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10831)                                        ; assert function application
  %i0ptr10832 = getelementptr inbounds i64, i64* %cloptr10831, i64 0                 ; &cloptr10831[0]
  %f10834 = load i64, i64* %i0ptr10832, align 8                                      ; load; *i0ptr10832
  %fptr10833 = inttoptr i64 %f10834 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10833(i64 %a6946, i64 %cps_45lst7256)               ; tail call
  ret void
}





@sym9397 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
