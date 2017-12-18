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
  %cloptr8588 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8589 = getelementptr inbounds i64, i64* %cloptr8588, i64 0                    ; &cloptr8588[0]
  %f8590 = ptrtoint void(i64,i64,i64)* @lam8586 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8590, i64* %eptr8589                                                   ; store fptr
  %arg7255 = ptrtoint i64* %cloptr8588 to i64                                        ; closure cast; i64* -> i64
  %cloptr8591 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8592 = getelementptr inbounds i64, i64* %cloptr8591, i64 0                    ; &cloptr8591[0]
  %f8593 = ptrtoint void(i64,i64,i64)* @lam8584 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8593, i64* %eptr8592                                                   ; store fptr
  %arg7254 = ptrtoint i64* %cloptr8591 to i64                                        ; closure cast; i64* -> i64
  %cloptr8594 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8595 = getelementptr inbounds i64, i64* %cloptr8594, i64 0                    ; &cloptr8594[0]
  %f8596 = ptrtoint void(i64,i64,i64)* @lam8132 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8596, i64* %eptr8595                                                   ; store fptr
  %arg7253 = ptrtoint i64* %cloptr8594 to i64                                        ; closure cast; i64* -> i64
  %cloptr8597 = inttoptr i64 %arg7255 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8597)                                         ; assert function application
  %i0ptr8598 = getelementptr inbounds i64, i64* %cloptr8597, i64 0                   ; &cloptr8597[0]
  %f8600 = load i64, i64* %i0ptr8598, align 8                                        ; load; *i0ptr8598
  %fptr8599 = inttoptr i64 %f8600 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8599(i64 %arg7255, i64 %arg7254, i64 %arg7253)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam8586(i64 %env8587, i64 %cont7245, i64 %kbb$yu) {
  %cloptr8601 = inttoptr i64 %kbb$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8601)                                         ; assert function application
  %i0ptr8602 = getelementptr inbounds i64, i64* %cloptr8601, i64 0                   ; &cloptr8601[0]
  %f8604 = load i64, i64* %i0ptr8602, align 8                                        ; load; *i0ptr8602
  %fptr8603 = inttoptr i64 %f8604 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8603(i64 %kbb$yu, i64 %cont7245, i64 %kbb$yu)       ; tail call
  ret void
}


define void @lam8584(i64 %env8585, i64 %_957065, i64 %Ggi$Ycmb) {
  %cloptr8605 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8607 = getelementptr inbounds i64, i64* %cloptr8605, i64 1                    ; &eptr8607[1]
  store i64 %Ggi$Ycmb, i64* %eptr8607                                                ; *eptr8607 = %Ggi$Ycmb
  %eptr8606 = getelementptr inbounds i64, i64* %cloptr8605, i64 0                    ; &cloptr8605[0]
  %f8608 = ptrtoint void(i64,i64,i64)* @lam8582 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8608, i64* %eptr8606                                                   ; store fptr
  %arg7260 = ptrtoint i64* %cloptr8605 to i64                                        ; closure cast; i64* -> i64
  %cloptr8609 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8610 = getelementptr inbounds i64, i64* %cloptr8609, i64 0                    ; &cloptr8609[0]
  %f8611 = ptrtoint void(i64,i64,i64)* @lam8140 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8611, i64* %eptr8610                                                   ; store fptr
  %arg7259 = ptrtoint i64* %cloptr8609 to i64                                        ; closure cast; i64* -> i64
  %cloptr8612 = inttoptr i64 %Ggi$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8612)                                         ; assert function application
  %i0ptr8613 = getelementptr inbounds i64, i64* %cloptr8612, i64 0                   ; &cloptr8612[0]
  %f8615 = load i64, i64* %i0ptr8613, align 8                                        ; load; *i0ptr8613
  %fptr8614 = inttoptr i64 %f8615 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8614(i64 %Ggi$Ycmb, i64 %arg7260, i64 %arg7259)     ; tail call
  ret void
}


define void @lam8582(i64 %env8583, i64 %_957066, i64 %jkj$_37foldr1) {
  %envptr8616 = inttoptr i64 %env8583 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8617 = getelementptr inbounds i64, i64* %envptr8616, i64 1                  ; &envptr8616[1]
  %Ggi$Ycmb = load i64, i64* %envptr8617, align 8                                    ; load; *envptr8617
  %cloptr8618 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8620 = getelementptr inbounds i64, i64* %cloptr8618, i64 1                    ; &eptr8620[1]
  %eptr8621 = getelementptr inbounds i64, i64* %cloptr8618, i64 2                    ; &eptr8621[2]
  store i64 %Ggi$Ycmb, i64* %eptr8620                                                ; *eptr8620 = %Ggi$Ycmb
  store i64 %jkj$_37foldr1, i64* %eptr8621                                           ; *eptr8621 = %jkj$_37foldr1
  %eptr8619 = getelementptr inbounds i64, i64* %cloptr8618, i64 0                    ; &cloptr8618[0]
  %f8622 = ptrtoint void(i64,i64,i64)* @lam8580 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8622, i64* %eptr8619                                                   ; store fptr
  %arg7263 = ptrtoint i64* %cloptr8618 to i64                                        ; closure cast; i64* -> i64
  %cloptr8623 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8624 = getelementptr inbounds i64, i64* %cloptr8623, i64 0                    ; &cloptr8623[0]
  %f8625 = ptrtoint void(i64,i64,i64)* @lam8152 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8625, i64* %eptr8624                                                   ; store fptr
  %arg7262 = ptrtoint i64* %cloptr8623 to i64                                        ; closure cast; i64* -> i64
  %cloptr8626 = inttoptr i64 %Ggi$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8626)                                         ; assert function application
  %i0ptr8627 = getelementptr inbounds i64, i64* %cloptr8626, i64 0                   ; &cloptr8626[0]
  %f8629 = load i64, i64* %i0ptr8627, align 8                                        ; load; *i0ptr8627
  %fptr8628 = inttoptr i64 %f8629 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8628(i64 %Ggi$Ycmb, i64 %arg7263, i64 %arg7262)     ; tail call
  ret void
}


define void @lam8580(i64 %env8581, i64 %_957067, i64 %Xhz$_37map1) {
  %envptr8630 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8631 = getelementptr inbounds i64, i64* %envptr8630, i64 2                  ; &envptr8630[2]
  %jkj$_37foldr1 = load i64, i64* %envptr8631, align 8                               ; load; *envptr8631
  %envptr8632 = inttoptr i64 %env8581 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8633 = getelementptr inbounds i64, i64* %envptr8632, i64 1                  ; &envptr8632[1]
  %Ggi$Ycmb = load i64, i64* %envptr8633, align 8                                    ; load; *envptr8633
  %cloptr8634 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8636 = getelementptr inbounds i64, i64* %cloptr8634, i64 1                    ; &eptr8636[1]
  %eptr8637 = getelementptr inbounds i64, i64* %cloptr8634, i64 2                    ; &eptr8637[2]
  %eptr8638 = getelementptr inbounds i64, i64* %cloptr8634, i64 3                    ; &eptr8638[3]
  store i64 %Ggi$Ycmb, i64* %eptr8636                                                ; *eptr8636 = %Ggi$Ycmb
  store i64 %jkj$_37foldr1, i64* %eptr8637                                           ; *eptr8637 = %jkj$_37foldr1
  store i64 %Xhz$_37map1, i64* %eptr8638                                             ; *eptr8638 = %Xhz$_37map1
  %eptr8635 = getelementptr inbounds i64, i64* %cloptr8634, i64 0                    ; &cloptr8634[0]
  %f8639 = ptrtoint void(i64,i64,i64)* @lam8578 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8639, i64* %eptr8635                                                   ; store fptr
  %arg7266 = ptrtoint i64* %cloptr8634 to i64                                        ; closure cast; i64* -> i64
  %cloptr8640 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8641 = getelementptr inbounds i64, i64* %cloptr8640, i64 0                    ; &cloptr8640[0]
  %f8642 = ptrtoint void(i64,i64,i64)* @lam8166 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8642, i64* %eptr8641                                                   ; store fptr
  %arg7265 = ptrtoint i64* %cloptr8640 to i64                                        ; closure cast; i64* -> i64
  %cloptr8643 = inttoptr i64 %Ggi$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8643)                                         ; assert function application
  %i0ptr8644 = getelementptr inbounds i64, i64* %cloptr8643, i64 0                   ; &cloptr8643[0]
  %f8646 = load i64, i64* %i0ptr8644, align 8                                        ; load; *i0ptr8644
  %fptr8645 = inttoptr i64 %f8646 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8645(i64 %Ggi$Ycmb, i64 %arg7266, i64 %arg7265)     ; tail call
  ret void
}


define void @lam8578(i64 %env8579, i64 %_957068, i64 %JU8$_37take) {
  %envptr8647 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8648 = getelementptr inbounds i64, i64* %envptr8647, i64 3                  ; &envptr8647[3]
  %Xhz$_37map1 = load i64, i64* %envptr8648, align 8                                 ; load; *envptr8648
  %envptr8649 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8650 = getelementptr inbounds i64, i64* %envptr8649, i64 2                  ; &envptr8649[2]
  %jkj$_37foldr1 = load i64, i64* %envptr8650, align 8                               ; load; *envptr8650
  %envptr8651 = inttoptr i64 %env8579 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8652 = getelementptr inbounds i64, i64* %envptr8651, i64 1                  ; &envptr8651[1]
  %Ggi$Ycmb = load i64, i64* %envptr8652, align 8                                    ; load; *envptr8652
  %cloptr8653 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8655 = getelementptr inbounds i64, i64* %cloptr8653, i64 1                    ; &eptr8655[1]
  %eptr8656 = getelementptr inbounds i64, i64* %cloptr8653, i64 2                    ; &eptr8656[2]
  %eptr8657 = getelementptr inbounds i64, i64* %cloptr8653, i64 3                    ; &eptr8657[3]
  %eptr8658 = getelementptr inbounds i64, i64* %cloptr8653, i64 4                    ; &eptr8658[4]
  store i64 %Ggi$Ycmb, i64* %eptr8655                                                ; *eptr8655 = %Ggi$Ycmb
  store i64 %jkj$_37foldr1, i64* %eptr8656                                           ; *eptr8656 = %jkj$_37foldr1
  store i64 %Xhz$_37map1, i64* %eptr8657                                             ; *eptr8657 = %Xhz$_37map1
  store i64 %JU8$_37take, i64* %eptr8658                                             ; *eptr8658 = %JU8$_37take
  %eptr8654 = getelementptr inbounds i64, i64* %cloptr8653, i64 0                    ; &cloptr8653[0]
  %f8659 = ptrtoint void(i64,i64,i64)* @lam8576 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8659, i64* %eptr8654                                                   ; store fptr
  %arg7269 = ptrtoint i64* %cloptr8653 to i64                                        ; closure cast; i64* -> i64
  %cloptr8660 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8661 = getelementptr inbounds i64, i64* %cloptr8660, i64 0                    ; &cloptr8660[0]
  %f8662 = ptrtoint void(i64,i64,i64)* @lam8177 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8662, i64* %eptr8661                                                   ; store fptr
  %arg7268 = ptrtoint i64* %cloptr8660 to i64                                        ; closure cast; i64* -> i64
  %cloptr8663 = inttoptr i64 %Ggi$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8663)                                         ; assert function application
  %i0ptr8664 = getelementptr inbounds i64, i64* %cloptr8663, i64 0                   ; &cloptr8663[0]
  %f8666 = load i64, i64* %i0ptr8664, align 8                                        ; load; *i0ptr8664
  %fptr8665 = inttoptr i64 %f8666 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8665(i64 %Ggi$Ycmb, i64 %arg7269, i64 %arg7268)     ; tail call
  ret void
}


define void @lam8576(i64 %env8577, i64 %_957069, i64 %dYl$_37length) {
  %envptr8667 = inttoptr i64 %env8577 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8668 = getelementptr inbounds i64, i64* %envptr8667, i64 4                  ; &envptr8667[4]
  %JU8$_37take = load i64, i64* %envptr8668, align 8                                 ; load; *envptr8668
  %envptr8669 = inttoptr i64 %env8577 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8670 = getelementptr inbounds i64, i64* %envptr8669, i64 3                  ; &envptr8669[3]
  %Xhz$_37map1 = load i64, i64* %envptr8670, align 8                                 ; load; *envptr8670
  %envptr8671 = inttoptr i64 %env8577 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8672 = getelementptr inbounds i64, i64* %envptr8671, i64 2                  ; &envptr8671[2]
  %jkj$_37foldr1 = load i64, i64* %envptr8672, align 8                               ; load; *envptr8672
  %envptr8673 = inttoptr i64 %env8577 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8674 = getelementptr inbounds i64, i64* %envptr8673, i64 1                  ; &envptr8673[1]
  %Ggi$Ycmb = load i64, i64* %envptr8674, align 8                                    ; load; *envptr8674
  %cloptr8675 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8677 = getelementptr inbounds i64, i64* %cloptr8675, i64 1                    ; &eptr8677[1]
  %eptr8678 = getelementptr inbounds i64, i64* %cloptr8675, i64 2                    ; &eptr8678[2]
  %eptr8679 = getelementptr inbounds i64, i64* %cloptr8675, i64 3                    ; &eptr8679[3]
  %eptr8680 = getelementptr inbounds i64, i64* %cloptr8675, i64 4                    ; &eptr8680[4]
  %eptr8681 = getelementptr inbounds i64, i64* %cloptr8675, i64 5                    ; &eptr8681[5]
  store i64 %dYl$_37length, i64* %eptr8677                                           ; *eptr8677 = %dYl$_37length
  store i64 %Ggi$Ycmb, i64* %eptr8678                                                ; *eptr8678 = %Ggi$Ycmb
  store i64 %jkj$_37foldr1, i64* %eptr8679                                           ; *eptr8679 = %jkj$_37foldr1
  store i64 %Xhz$_37map1, i64* %eptr8680                                             ; *eptr8680 = %Xhz$_37map1
  store i64 %JU8$_37take, i64* %eptr8681                                             ; *eptr8681 = %JU8$_37take
  %eptr8676 = getelementptr inbounds i64, i64* %cloptr8675, i64 0                    ; &cloptr8675[0]
  %f8682 = ptrtoint void(i64,i64,i64)* @lam8574 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8682, i64* %eptr8676                                                   ; store fptr
  %arg7272 = ptrtoint i64* %cloptr8675 to i64                                        ; closure cast; i64* -> i64
  %cloptr8683 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8684 = getelementptr inbounds i64, i64* %cloptr8683, i64 0                    ; &cloptr8683[0]
  %f8685 = ptrtoint void(i64,i64,i64)* @lam8185 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8685, i64* %eptr8684                                                   ; store fptr
  %arg7271 = ptrtoint i64* %cloptr8683 to i64                                        ; closure cast; i64* -> i64
  %cloptr8686 = inttoptr i64 %Ggi$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8686)                                         ; assert function application
  %i0ptr8687 = getelementptr inbounds i64, i64* %cloptr8686, i64 0                   ; &cloptr8686[0]
  %f8689 = load i64, i64* %i0ptr8687, align 8                                        ; load; *i0ptr8687
  %fptr8688 = inttoptr i64 %f8689 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8688(i64 %Ggi$Ycmb, i64 %arg7272, i64 %arg7271)     ; tail call
  ret void
}


define void @lam8574(i64 %env8575, i64 %_957070, i64 %NLF$_37foldl1) {
  %envptr8690 = inttoptr i64 %env8575 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8691 = getelementptr inbounds i64, i64* %envptr8690, i64 5                  ; &envptr8690[5]
  %JU8$_37take = load i64, i64* %envptr8691, align 8                                 ; load; *envptr8691
  %envptr8692 = inttoptr i64 %env8575 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8693 = getelementptr inbounds i64, i64* %envptr8692, i64 4                  ; &envptr8692[4]
  %Xhz$_37map1 = load i64, i64* %envptr8693, align 8                                 ; load; *envptr8693
  %envptr8694 = inttoptr i64 %env8575 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8695 = getelementptr inbounds i64, i64* %envptr8694, i64 3                  ; &envptr8694[3]
  %jkj$_37foldr1 = load i64, i64* %envptr8695, align 8                               ; load; *envptr8695
  %envptr8696 = inttoptr i64 %env8575 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8697 = getelementptr inbounds i64, i64* %envptr8696, i64 2                  ; &envptr8696[2]
  %Ggi$Ycmb = load i64, i64* %envptr8697, align 8                                    ; load; *envptr8697
  %envptr8698 = inttoptr i64 %env8575 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8699 = getelementptr inbounds i64, i64* %envptr8698, i64 1                  ; &envptr8698[1]
  %dYl$_37length = load i64, i64* %envptr8699, align 8                               ; load; *envptr8699
  %cloptr8700 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8702 = getelementptr inbounds i64, i64* %cloptr8700, i64 1                    ; &eptr8702[1]
  store i64 %NLF$_37foldl1, i64* %eptr8702                                           ; *eptr8702 = %NLF$_37foldl1
  %eptr8701 = getelementptr inbounds i64, i64* %cloptr8700, i64 0                    ; &cloptr8700[0]
  %f8703 = ptrtoint void(i64,i64,i64)* @lam8572 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8703, i64* %eptr8701                                                   ; store fptr
  %Gns$_37last = ptrtoint i64* %cloptr8700 to i64                                    ; closure cast; i64* -> i64
  %cloptr8704 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8706 = getelementptr inbounds i64, i64* %cloptr8704, i64 1                    ; &eptr8706[1]
  %eptr8707 = getelementptr inbounds i64, i64* %cloptr8704, i64 2                    ; &eptr8707[2]
  store i64 %dYl$_37length, i64* %eptr8706                                           ; *eptr8706 = %dYl$_37length
  store i64 %JU8$_37take, i64* %eptr8707                                             ; *eptr8707 = %JU8$_37take
  %eptr8705 = getelementptr inbounds i64, i64* %cloptr8704, i64 0                    ; &cloptr8704[0]
  %f8708 = ptrtoint void(i64,i64,i64,i64)* @lam8566 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8708, i64* %eptr8705                                                   ; store fptr
  %CUN$_37drop_45right = ptrtoint i64* %cloptr8704 to i64                            ; closure cast; i64* -> i64
  %cloptr8709 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8711 = getelementptr inbounds i64, i64* %cloptr8709, i64 1                    ; &eptr8711[1]
  %eptr8712 = getelementptr inbounds i64, i64* %cloptr8709, i64 2                    ; &eptr8712[2]
  %eptr8713 = getelementptr inbounds i64, i64* %cloptr8709, i64 3                    ; &eptr8713[3]
  %eptr8714 = getelementptr inbounds i64, i64* %cloptr8709, i64 4                    ; &eptr8714[4]
  %eptr8715 = getelementptr inbounds i64, i64* %cloptr8709, i64 5                    ; &eptr8715[5]
  %eptr8716 = getelementptr inbounds i64, i64* %cloptr8709, i64 6                    ; &eptr8716[6]
  store i64 %CUN$_37drop_45right, i64* %eptr8711                                     ; *eptr8711 = %CUN$_37drop_45right
  store i64 %dYl$_37length, i64* %eptr8712                                           ; *eptr8712 = %dYl$_37length
  store i64 %NLF$_37foldl1, i64* %eptr8713                                           ; *eptr8713 = %NLF$_37foldl1
  store i64 %Ggi$Ycmb, i64* %eptr8714                                                ; *eptr8714 = %Ggi$Ycmb
  store i64 %jkj$_37foldr1, i64* %eptr8715                                           ; *eptr8715 = %jkj$_37foldr1
  store i64 %Gns$_37last, i64* %eptr8716                                             ; *eptr8716 = %Gns$_37last
  %eptr8710 = getelementptr inbounds i64, i64* %cloptr8709, i64 0                    ; &cloptr8709[0]
  %f8717 = ptrtoint void(i64,i64,i64)* @lam8562 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8717, i64* %eptr8710                                                   ; store fptr
  %arg7292 = ptrtoint i64* %cloptr8709 to i64                                        ; closure cast; i64* -> i64
  %cloptr8718 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8720 = getelementptr inbounds i64, i64* %cloptr8718, i64 1                    ; &eptr8720[1]
  %eptr8721 = getelementptr inbounds i64, i64* %cloptr8718, i64 2                    ; &eptr8721[2]
  store i64 %jkj$_37foldr1, i64* %eptr8720                                           ; *eptr8720 = %jkj$_37foldr1
  store i64 %Xhz$_37map1, i64* %eptr8721                                             ; *eptr8721 = %Xhz$_37map1
  %eptr8719 = getelementptr inbounds i64, i64* %cloptr8718, i64 0                    ; &cloptr8718[0]
  %f8722 = ptrtoint void(i64,i64,i64)* @lam8222 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8722, i64* %eptr8719                                                   ; store fptr
  %arg7291 = ptrtoint i64* %cloptr8718 to i64                                        ; closure cast; i64* -> i64
  %cloptr8723 = inttoptr i64 %Ggi$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8723)                                         ; assert function application
  %i0ptr8724 = getelementptr inbounds i64, i64* %cloptr8723, i64 0                   ; &cloptr8723[0]
  %f8726 = load i64, i64* %i0ptr8724, align 8                                        ; load; *i0ptr8724
  %fptr8725 = inttoptr i64 %f8726 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8725(i64 %Ggi$Ycmb, i64 %arg7292, i64 %arg7291)     ; tail call
  ret void
}


define void @lam8572(i64 %env8573, i64 %cont7071, i64 %FhS$lst) {
  %envptr8727 = inttoptr i64 %env8573 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8728 = getelementptr inbounds i64, i64* %envptr8727, i64 1                  ; &envptr8727[1]
  %NLF$_37foldl1 = load i64, i64* %envptr8728, align 8                               ; load; *envptr8728
  %cloptr8729 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8730 = getelementptr inbounds i64, i64* %cloptr8729, i64 0                    ; &cloptr8729[0]
  %f8731 = ptrtoint void(i64,i64,i64,i64)* @lam8570 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8731, i64* %eptr8730                                                   ; store fptr
  %arg7276 = ptrtoint i64* %cloptr8729 to i64                                        ; closure cast; i64* -> i64
  %arg7275 = add i64 0, 0                                                            ; quoted ()
  %cloptr8732 = inttoptr i64 %NLF$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8732)                                         ; assert function application
  %i0ptr8733 = getelementptr inbounds i64, i64* %cloptr8732, i64 0                   ; &cloptr8732[0]
  %f8735 = load i64, i64* %i0ptr8733, align 8                                        ; load; *i0ptr8733
  %fptr8734 = inttoptr i64 %f8735 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8734(i64 %NLF$_37foldl1, i64 %cont7071, i64 %arg7276, i64 %arg7275, i64 %FhS$lst); tail call
  ret void
}


define void @lam8570(i64 %env8571, i64 %cont7072, i64 %iqC$x, i64 %kQF$y) {
  %arg7280 = add i64 0, 0                                                            ; quoted ()
  %cloptr8736 = inttoptr i64 %cont7072 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8736)                                         ; assert function application
  %i0ptr8737 = getelementptr inbounds i64, i64* %cloptr8736, i64 0                   ; &cloptr8736[0]
  %f8739 = load i64, i64* %i0ptr8737, align 8                                        ; load; *i0ptr8737
  %fptr8738 = inttoptr i64 %f8739 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8738(i64 %cont7072, i64 %arg7280, i64 %iqC$x)       ; tail call
  ret void
}


define void @lam8566(i64 %env8567, i64 %cont7073, i64 %NTa$lst, i64 %Li8$n) {
  %envptr8740 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8741 = getelementptr inbounds i64, i64* %envptr8740, i64 2                  ; &envptr8740[2]
  %JU8$_37take = load i64, i64* %envptr8741, align 8                                 ; load; *envptr8741
  %envptr8742 = inttoptr i64 %env8567 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8743 = getelementptr inbounds i64, i64* %envptr8742, i64 1                  ; &envptr8742[1]
  %dYl$_37length = load i64, i64* %envptr8743, align 8                               ; load; *envptr8743
  %cloptr8744 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8746 = getelementptr inbounds i64, i64* %cloptr8744, i64 1                    ; &eptr8746[1]
  %eptr8747 = getelementptr inbounds i64, i64* %cloptr8744, i64 2                    ; &eptr8747[2]
  %eptr8748 = getelementptr inbounds i64, i64* %cloptr8744, i64 3                    ; &eptr8748[3]
  %eptr8749 = getelementptr inbounds i64, i64* %cloptr8744, i64 4                    ; &eptr8749[4]
  store i64 %Li8$n, i64* %eptr8746                                                   ; *eptr8746 = %Li8$n
  store i64 %NTa$lst, i64* %eptr8747                                                 ; *eptr8747 = %NTa$lst
  store i64 %cont7073, i64* %eptr8748                                                ; *eptr8748 = %cont7073
  store i64 %JU8$_37take, i64* %eptr8749                                             ; *eptr8749 = %JU8$_37take
  %eptr8745 = getelementptr inbounds i64, i64* %cloptr8744, i64 0                    ; &cloptr8744[0]
  %f8750 = ptrtoint void(i64,i64,i64)* @lam8564 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8750, i64* %eptr8745                                                   ; store fptr
  %arg7283 = ptrtoint i64* %cloptr8744 to i64                                        ; closure cast; i64* -> i64
  %cloptr8751 = inttoptr i64 %dYl$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8751)                                         ; assert function application
  %i0ptr8752 = getelementptr inbounds i64, i64* %cloptr8751, i64 0                   ; &cloptr8751[0]
  %f8754 = load i64, i64* %i0ptr8752, align 8                                        ; load; *i0ptr8752
  %fptr8753 = inttoptr i64 %f8754 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8753(i64 %dYl$_37length, i64 %arg7283, i64 %NTa$lst); tail call
  ret void
}


define void @lam8564(i64 %env8565, i64 %_957074, i64 %a6969) {
  %envptr8755 = inttoptr i64 %env8565 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8756 = getelementptr inbounds i64, i64* %envptr8755, i64 4                  ; &envptr8755[4]
  %JU8$_37take = load i64, i64* %envptr8756, align 8                                 ; load; *envptr8756
  %envptr8757 = inttoptr i64 %env8565 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8758 = getelementptr inbounds i64, i64* %envptr8757, i64 3                  ; &envptr8757[3]
  %cont7073 = load i64, i64* %envptr8758, align 8                                    ; load; *envptr8758
  %envptr8759 = inttoptr i64 %env8565 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8760 = getelementptr inbounds i64, i64* %envptr8759, i64 2                  ; &envptr8759[2]
  %NTa$lst = load i64, i64* %envptr8760, align 8                                     ; load; *envptr8760
  %envptr8761 = inttoptr i64 %env8565 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8762 = getelementptr inbounds i64, i64* %envptr8761, i64 1                  ; &envptr8761[1]
  %Li8$n = load i64, i64* %envptr8762, align 8                                       ; load; *envptr8762
  %a6970 = call i64 @prim__45(i64 %a6969, i64 %Li8$n)                                ; call prim__45
  %cloptr8763 = inttoptr i64 %JU8$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8763)                                         ; assert function application
  %i0ptr8764 = getelementptr inbounds i64, i64* %cloptr8763, i64 0                   ; &cloptr8763[0]
  %f8766 = load i64, i64* %i0ptr8764, align 8                                        ; load; *i0ptr8764
  %fptr8765 = inttoptr i64 %f8766 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8765(i64 %JU8$_37take, i64 %cont7073, i64 %NTa$lst, i64 %a6970); tail call
  ret void
}


define void @lam8562(i64 %env8563, i64 %_957075, i64 %H2k$_37foldr) {
  %envptr8767 = inttoptr i64 %env8563 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8768 = getelementptr inbounds i64, i64* %envptr8767, i64 6                  ; &envptr8767[6]
  %Gns$_37last = load i64, i64* %envptr8768, align 8                                 ; load; *envptr8768
  %envptr8769 = inttoptr i64 %env8563 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8770 = getelementptr inbounds i64, i64* %envptr8769, i64 5                  ; &envptr8769[5]
  %jkj$_37foldr1 = load i64, i64* %envptr8770, align 8                               ; load; *envptr8770
  %envptr8771 = inttoptr i64 %env8563 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8772 = getelementptr inbounds i64, i64* %envptr8771, i64 4                  ; &envptr8771[4]
  %Ggi$Ycmb = load i64, i64* %envptr8772, align 8                                    ; load; *envptr8772
  %envptr8773 = inttoptr i64 %env8563 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8774 = getelementptr inbounds i64, i64* %envptr8773, i64 3                  ; &envptr8773[3]
  %NLF$_37foldl1 = load i64, i64* %envptr8774, align 8                               ; load; *envptr8774
  %envptr8775 = inttoptr i64 %env8563 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8776 = getelementptr inbounds i64, i64* %envptr8775, i64 2                  ; &envptr8775[2]
  %dYl$_37length = load i64, i64* %envptr8776, align 8                               ; load; *envptr8776
  %envptr8777 = inttoptr i64 %env8563 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8778 = getelementptr inbounds i64, i64* %envptr8777, i64 1                  ; &envptr8777[1]
  %CUN$_37drop_45right = load i64, i64* %envptr8778, align 8                         ; load; *envptr8778
  %cloptr8779 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8781 = getelementptr inbounds i64, i64* %cloptr8779, i64 1                    ; &eptr8781[1]
  store i64 %jkj$_37foldr1, i64* %eptr8781                                           ; *eptr8781 = %jkj$_37foldr1
  %eptr8780 = getelementptr inbounds i64, i64* %cloptr8779, i64 0                    ; &cloptr8779[0]
  %f8782 = ptrtoint void(i64,i64,i64,i64)* @lam8560 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8782, i64* %eptr8780                                                   ; store fptr
  %sgK$_37map1 = ptrtoint i64* %cloptr8779 to i64                                    ; closure cast; i64* -> i64
  %cloptr8783 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8785 = getelementptr inbounds i64, i64* %cloptr8783, i64 1                    ; &eptr8785[1]
  %eptr8786 = getelementptr inbounds i64, i64* %cloptr8783, i64 2                    ; &eptr8786[2]
  %eptr8787 = getelementptr inbounds i64, i64* %cloptr8783, i64 3                    ; &eptr8787[3]
  store i64 %CUN$_37drop_45right, i64* %eptr8785                                     ; *eptr8785 = %CUN$_37drop_45right
  store i64 %H2k$_37foldr, i64* %eptr8786                                            ; *eptr8786 = %H2k$_37foldr
  store i64 %Gns$_37last, i64* %eptr8787                                             ; *eptr8787 = %Gns$_37last
  %eptr8784 = getelementptr inbounds i64, i64* %cloptr8783, i64 0                    ; &cloptr8783[0]
  %f8788 = ptrtoint void(i64,i64)* @lam8552 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8788, i64* %eptr8784                                                   ; store fptr
  %MH9$_37map = ptrtoint i64* %cloptr8783 to i64                                     ; closure cast; i64* -> i64
  %cloptr8789 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8791 = getelementptr inbounds i64, i64* %cloptr8789, i64 1                    ; &eptr8791[1]
  %eptr8792 = getelementptr inbounds i64, i64* %cloptr8789, i64 2                    ; &eptr8792[2]
  store i64 %dYl$_37length, i64* %eptr8791                                           ; *eptr8791 = %dYl$_37length
  store i64 %NLF$_37foldl1, i64* %eptr8792                                           ; *eptr8792 = %NLF$_37foldl1
  %eptr8790 = getelementptr inbounds i64, i64* %cloptr8789, i64 0                    ; &cloptr8789[0]
  %f8793 = ptrtoint void(i64,i64,i64)* @lam8539 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8793, i64* %eptr8790                                                   ; store fptr
  %arg7334 = ptrtoint i64* %cloptr8789 to i64                                        ; closure cast; i64* -> i64
  %cloptr8794 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8796 = getelementptr inbounds i64, i64* %cloptr8794, i64 1                    ; &eptr8796[1]
  %eptr8797 = getelementptr inbounds i64, i64* %cloptr8794, i64 2                    ; &eptr8797[2]
  %eptr8798 = getelementptr inbounds i64, i64* %cloptr8794, i64 3                    ; &eptr8798[3]
  store i64 %jkj$_37foldr1, i64* %eptr8796                                           ; *eptr8796 = %jkj$_37foldr1
  store i64 %sgK$_37map1, i64* %eptr8797                                             ; *eptr8797 = %sgK$_37map1
  store i64 %H2k$_37foldr, i64* %eptr8798                                            ; *eptr8798 = %H2k$_37foldr
  %eptr8795 = getelementptr inbounds i64, i64* %cloptr8794, i64 0                    ; &cloptr8794[0]
  %f8799 = ptrtoint void(i64,i64,i64)* @lam8259 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8799, i64* %eptr8795                                                   ; store fptr
  %arg7333 = ptrtoint i64* %cloptr8794 to i64                                        ; closure cast; i64* -> i64
  %cloptr8800 = inttoptr i64 %Ggi$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8800)                                         ; assert function application
  %i0ptr8801 = getelementptr inbounds i64, i64* %cloptr8800, i64 0                   ; &cloptr8800[0]
  %f8803 = load i64, i64* %i0ptr8801, align 8                                        ; load; *i0ptr8801
  %fptr8802 = inttoptr i64 %f8803 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8802(i64 %Ggi$Ycmb, i64 %arg7334, i64 %arg7333)     ; tail call
  ret void
}


define void @lam8560(i64 %env8561, i64 %cont7076, i64 %KdL$f, i64 %NWW$lst) {
  %envptr8804 = inttoptr i64 %env8561 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8805 = getelementptr inbounds i64, i64* %envptr8804, i64 1                  ; &envptr8804[1]
  %jkj$_37foldr1 = load i64, i64* %envptr8805, align 8                               ; load; *envptr8805
  %cloptr8806 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8808 = getelementptr inbounds i64, i64* %cloptr8806, i64 1                    ; &eptr8808[1]
  store i64 %KdL$f, i64* %eptr8808                                                   ; *eptr8808 = %KdL$f
  %eptr8807 = getelementptr inbounds i64, i64* %cloptr8806, i64 0                    ; &cloptr8806[0]
  %f8809 = ptrtoint void(i64,i64,i64,i64)* @lam8558 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8809, i64* %eptr8807                                                   ; store fptr
  %arg7296 = ptrtoint i64* %cloptr8806 to i64                                        ; closure cast; i64* -> i64
  %arg7295 = add i64 0, 0                                                            ; quoted ()
  %cloptr8810 = inttoptr i64 %jkj$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8810)                                         ; assert function application
  %i0ptr8811 = getelementptr inbounds i64, i64* %cloptr8810, i64 0                   ; &cloptr8810[0]
  %f8813 = load i64, i64* %i0ptr8811, align 8                                        ; load; *i0ptr8811
  %fptr8812 = inttoptr i64 %f8813 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8812(i64 %jkj$_37foldr1, i64 %cont7076, i64 %arg7296, i64 %arg7295, i64 %NWW$lst); tail call
  ret void
}


define void @lam8558(i64 %env8559, i64 %cont7077, i64 %byN$v, i64 %tII$r) {
  %envptr8814 = inttoptr i64 %env8559 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8815 = getelementptr inbounds i64, i64* %envptr8814, i64 1                  ; &envptr8814[1]
  %KdL$f = load i64, i64* %envptr8815, align 8                                       ; load; *envptr8815
  %cloptr8816 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8818 = getelementptr inbounds i64, i64* %cloptr8816, i64 1                    ; &eptr8818[1]
  %eptr8819 = getelementptr inbounds i64, i64* %cloptr8816, i64 2                    ; &eptr8819[2]
  store i64 %tII$r, i64* %eptr8818                                                   ; *eptr8818 = %tII$r
  store i64 %cont7077, i64* %eptr8819                                                ; *eptr8819 = %cont7077
  %eptr8817 = getelementptr inbounds i64, i64* %cloptr8816, i64 0                    ; &cloptr8816[0]
  %f8820 = ptrtoint void(i64,i64,i64)* @lam8556 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8820, i64* %eptr8817                                                   ; store fptr
  %arg7300 = ptrtoint i64* %cloptr8816 to i64                                        ; closure cast; i64* -> i64
  %cloptr8821 = inttoptr i64 %KdL$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8821)                                         ; assert function application
  %i0ptr8822 = getelementptr inbounds i64, i64* %cloptr8821, i64 0                   ; &cloptr8821[0]
  %f8824 = load i64, i64* %i0ptr8822, align 8                                        ; load; *i0ptr8822
  %fptr8823 = inttoptr i64 %f8824 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8823(i64 %KdL$f, i64 %arg7300, i64 %byN$v)          ; tail call
  ret void
}


define void @lam8556(i64 %env8557, i64 %_957078, i64 %a6979) {
  %envptr8825 = inttoptr i64 %env8557 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8826 = getelementptr inbounds i64, i64* %envptr8825, i64 2                  ; &envptr8825[2]
  %cont7077 = load i64, i64* %envptr8826, align 8                                    ; load; *envptr8826
  %envptr8827 = inttoptr i64 %env8557 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8828 = getelementptr inbounds i64, i64* %envptr8827, i64 1                  ; &envptr8827[1]
  %tII$r = load i64, i64* %envptr8828, align 8                                       ; load; *envptr8828
  %retprim7079 = call i64 @prim_cons(i64 %a6979, i64 %tII$r)                         ; call prim_cons
  %arg7305 = add i64 0, 0                                                            ; quoted ()
  %cloptr8829 = inttoptr i64 %cont7077 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8829)                                         ; assert function application
  %i0ptr8830 = getelementptr inbounds i64, i64* %cloptr8829, i64 0                   ; &cloptr8829[0]
  %f8832 = load i64, i64* %i0ptr8830, align 8                                        ; load; *i0ptr8830
  %fptr8831 = inttoptr i64 %f8832 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8831(i64 %cont7077, i64 %arg7305, i64 %retprim7079) ; tail call
  ret void
}


define void @lam8552(i64 %env8553, i64 %Abp$args7081) {
  %envptr8833 = inttoptr i64 %env8553 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8834 = getelementptr inbounds i64, i64* %envptr8833, i64 3                  ; &envptr8833[3]
  %Gns$_37last = load i64, i64* %envptr8834, align 8                                 ; load; *envptr8834
  %envptr8835 = inttoptr i64 %env8553 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8836 = getelementptr inbounds i64, i64* %envptr8835, i64 2                  ; &envptr8835[2]
  %H2k$_37foldr = load i64, i64* %envptr8836, align 8                                ; load; *envptr8836
  %envptr8837 = inttoptr i64 %env8553 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8838 = getelementptr inbounds i64, i64* %envptr8837, i64 1                  ; &envptr8837[1]
  %CUN$_37drop_45right = load i64, i64* %envptr8838, align 8                         ; load; *envptr8838
  %cont7080 = call i64 @prim_car(i64 %Abp$args7081)                                  ; call prim_car
  %Abp$args = call i64 @prim_cdr(i64 %Abp$args7081)                                  ; call prim_cdr
  %gvt$f = call i64 @prim_car(i64 %Abp$args)                                         ; call prim_car
  %k5l$lsts = call i64 @prim_cdr(i64 %Abp$args)                                      ; call prim_cdr
  %arg7312 = add i64 0, 0                                                            ; quoted ()
  %a6983 = call i64 @prim_cons(i64 %arg7312, i64 %k5l$lsts)                          ; call prim_cons
  %cloptr8839 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8841 = getelementptr inbounds i64, i64* %cloptr8839, i64 1                    ; &eptr8841[1]
  %eptr8842 = getelementptr inbounds i64, i64* %cloptr8839, i64 2                    ; &eptr8842[2]
  %eptr8843 = getelementptr inbounds i64, i64* %cloptr8839, i64 3                    ; &eptr8843[3]
  store i64 %CUN$_37drop_45right, i64* %eptr8841                                     ; *eptr8841 = %CUN$_37drop_45right
  store i64 %Gns$_37last, i64* %eptr8842                                             ; *eptr8842 = %Gns$_37last
  store i64 %gvt$f, i64* %eptr8843                                                   ; *eptr8843 = %gvt$f
  %eptr8840 = getelementptr inbounds i64, i64* %cloptr8839, i64 0                    ; &cloptr8839[0]
  %f8844 = ptrtoint void(i64,i64)* @lam8549 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8844, i64* %eptr8840                                                   ; store fptr
  %arg7314 = ptrtoint i64* %cloptr8839 to i64                                        ; closure cast; i64* -> i64
  %a6984 = call i64 @prim_cons(i64 %arg7314, i64 %a6983)                             ; call prim_cons
  %cps_45lst7089 = call i64 @prim_cons(i64 %cont7080, i64 %a6984)                    ; call prim_cons
  %cloptr8845 = inttoptr i64 %H2k$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8845)                                         ; assert function application
  %i0ptr8846 = getelementptr inbounds i64, i64* %cloptr8845, i64 0                   ; &cloptr8845[0]
  %f8848 = load i64, i64* %i0ptr8846, align 8                                        ; load; *i0ptr8846
  %fptr8847 = inttoptr i64 %f8848 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8847(i64 %H2k$_37foldr, i64 %cps_45lst7089)         ; tail call
  ret void
}


define void @lam8549(i64 %env8550, i64 %hTS$fargs7083) {
  %envptr8849 = inttoptr i64 %env8550 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8850 = getelementptr inbounds i64, i64* %envptr8849, i64 3                  ; &envptr8849[3]
  %gvt$f = load i64, i64* %envptr8850, align 8                                       ; load; *envptr8850
  %envptr8851 = inttoptr i64 %env8550 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8852 = getelementptr inbounds i64, i64* %envptr8851, i64 2                  ; &envptr8851[2]
  %Gns$_37last = load i64, i64* %envptr8852, align 8                                 ; load; *envptr8852
  %envptr8853 = inttoptr i64 %env8550 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8854 = getelementptr inbounds i64, i64* %envptr8853, i64 1                  ; &envptr8853[1]
  %CUN$_37drop_45right = load i64, i64* %envptr8854, align 8                         ; load; *envptr8854
  %cont7082 = call i64 @prim_car(i64 %hTS$fargs7083)                                 ; call prim_car
  %hTS$fargs = call i64 @prim_cdr(i64 %hTS$fargs7083)                                ; call prim_cdr
  %cloptr8855 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8857 = getelementptr inbounds i64, i64* %cloptr8855, i64 1                    ; &eptr8857[1]
  %eptr8858 = getelementptr inbounds i64, i64* %cloptr8855, i64 2                    ; &eptr8858[2]
  %eptr8859 = getelementptr inbounds i64, i64* %cloptr8855, i64 3                    ; &eptr8859[3]
  %eptr8860 = getelementptr inbounds i64, i64* %cloptr8855, i64 4                    ; &eptr8860[4]
  store i64 %cont7082, i64* %eptr8857                                                ; *eptr8857 = %cont7082
  store i64 %Gns$_37last, i64* %eptr8858                                             ; *eptr8858 = %Gns$_37last
  store i64 %gvt$f, i64* %eptr8859                                                   ; *eptr8859 = %gvt$f
  store i64 %hTS$fargs, i64* %eptr8860                                               ; *eptr8860 = %hTS$fargs
  %eptr8856 = getelementptr inbounds i64, i64* %cloptr8855, i64 0                    ; &cloptr8855[0]
  %f8861 = ptrtoint void(i64,i64,i64)* @lam8547 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8861, i64* %eptr8856                                                   ; store fptr
  %arg7319 = ptrtoint i64* %cloptr8855 to i64                                        ; closure cast; i64* -> i64
  %arg7317 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8862 = inttoptr i64 %CUN$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8862)                                         ; assert function application
  %i0ptr8863 = getelementptr inbounds i64, i64* %cloptr8862, i64 0                   ; &cloptr8862[0]
  %f8865 = load i64, i64* %i0ptr8863, align 8                                        ; load; *i0ptr8863
  %fptr8864 = inttoptr i64 %f8865 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8864(i64 %CUN$_37drop_45right, i64 %arg7319, i64 %hTS$fargs, i64 %arg7317); tail call
  ret void
}


define void @lam8547(i64 %env8548, i64 %_957084, i64 %a6980) {
  %envptr8866 = inttoptr i64 %env8548 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8867 = getelementptr inbounds i64, i64* %envptr8866, i64 4                  ; &envptr8866[4]
  %hTS$fargs = load i64, i64* %envptr8867, align 8                                   ; load; *envptr8867
  %envptr8868 = inttoptr i64 %env8548 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8869 = getelementptr inbounds i64, i64* %envptr8868, i64 3                  ; &envptr8868[3]
  %gvt$f = load i64, i64* %envptr8869, align 8                                       ; load; *envptr8869
  %envptr8870 = inttoptr i64 %env8548 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8871 = getelementptr inbounds i64, i64* %envptr8870, i64 2                  ; &envptr8870[2]
  %Gns$_37last = load i64, i64* %envptr8871, align 8                                 ; load; *envptr8871
  %envptr8872 = inttoptr i64 %env8548 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8873 = getelementptr inbounds i64, i64* %envptr8872, i64 1                  ; &envptr8872[1]
  %cont7082 = load i64, i64* %envptr8873, align 8                                    ; load; *envptr8873
  %cloptr8874 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8876 = getelementptr inbounds i64, i64* %cloptr8874, i64 1                    ; &eptr8876[1]
  %eptr8877 = getelementptr inbounds i64, i64* %cloptr8874, i64 2                    ; &eptr8877[2]
  %eptr8878 = getelementptr inbounds i64, i64* %cloptr8874, i64 3                    ; &eptr8878[3]
  store i64 %cont7082, i64* %eptr8876                                                ; *eptr8876 = %cont7082
  store i64 %Gns$_37last, i64* %eptr8877                                             ; *eptr8877 = %Gns$_37last
  store i64 %hTS$fargs, i64* %eptr8878                                               ; *eptr8878 = %hTS$fargs
  %eptr8875 = getelementptr inbounds i64, i64* %cloptr8874, i64 0                    ; &cloptr8874[0]
  %f8879 = ptrtoint void(i64,i64,i64)* @lam8545 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8879, i64* %eptr8875                                                   ; store fptr
  %arg7322 = ptrtoint i64* %cloptr8874 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst7088 = call i64 @prim_cons(i64 %arg7322, i64 %a6980)                     ; call prim_cons
  %cloptr8880 = inttoptr i64 %gvt$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8880)                                         ; assert function application
  %i0ptr8881 = getelementptr inbounds i64, i64* %cloptr8880, i64 0                   ; &cloptr8880[0]
  %f8883 = load i64, i64* %i0ptr8881, align 8                                        ; load; *i0ptr8881
  %fptr8882 = inttoptr i64 %f8883 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8882(i64 %gvt$f, i64 %cps_45lst7088)                ; tail call
  ret void
}


define void @lam8545(i64 %env8546, i64 %_957085, i64 %a6981) {
  %envptr8884 = inttoptr i64 %env8546 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8885 = getelementptr inbounds i64, i64* %envptr8884, i64 3                  ; &envptr8884[3]
  %hTS$fargs = load i64, i64* %envptr8885, align 8                                   ; load; *envptr8885
  %envptr8886 = inttoptr i64 %env8546 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8887 = getelementptr inbounds i64, i64* %envptr8886, i64 2                  ; &envptr8886[2]
  %Gns$_37last = load i64, i64* %envptr8887, align 8                                 ; load; *envptr8887
  %envptr8888 = inttoptr i64 %env8546 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8889 = getelementptr inbounds i64, i64* %envptr8888, i64 1                  ; &envptr8888[1]
  %cont7082 = load i64, i64* %envptr8889, align 8                                    ; load; *envptr8889
  %cloptr8890 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8892 = getelementptr inbounds i64, i64* %cloptr8890, i64 1                    ; &eptr8892[1]
  %eptr8893 = getelementptr inbounds i64, i64* %cloptr8890, i64 2                    ; &eptr8893[2]
  store i64 %cont7082, i64* %eptr8892                                                ; *eptr8892 = %cont7082
  store i64 %a6981, i64* %eptr8893                                                   ; *eptr8893 = %a6981
  %eptr8891 = getelementptr inbounds i64, i64* %cloptr8890, i64 0                    ; &cloptr8890[0]
  %f8894 = ptrtoint void(i64,i64,i64)* @lam8543 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8894, i64* %eptr8891                                                   ; store fptr
  %arg7324 = ptrtoint i64* %cloptr8890 to i64                                        ; closure cast; i64* -> i64
  %cloptr8895 = inttoptr i64 %Gns$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8895)                                         ; assert function application
  %i0ptr8896 = getelementptr inbounds i64, i64* %cloptr8895, i64 0                   ; &cloptr8895[0]
  %f8898 = load i64, i64* %i0ptr8896, align 8                                        ; load; *i0ptr8896
  %fptr8897 = inttoptr i64 %f8898 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8897(i64 %Gns$_37last, i64 %arg7324, i64 %hTS$fargs); tail call
  ret void
}


define void @lam8543(i64 %env8544, i64 %_957086, i64 %a6982) {
  %envptr8899 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8900 = getelementptr inbounds i64, i64* %envptr8899, i64 2                  ; &envptr8899[2]
  %a6981 = load i64, i64* %envptr8900, align 8                                       ; load; *envptr8900
  %envptr8901 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8902 = getelementptr inbounds i64, i64* %envptr8901, i64 1                  ; &envptr8901[1]
  %cont7082 = load i64, i64* %envptr8902, align 8                                    ; load; *envptr8902
  %retprim7087 = call i64 @prim_cons(i64 %a6981, i64 %a6982)                         ; call prim_cons
  %arg7329 = add i64 0, 0                                                            ; quoted ()
  %cloptr8903 = inttoptr i64 %cont7082 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8903)                                         ; assert function application
  %i0ptr8904 = getelementptr inbounds i64, i64* %cloptr8903, i64 0                   ; &cloptr8903[0]
  %f8906 = load i64, i64* %i0ptr8904, align 8                                        ; load; *i0ptr8904
  %fptr8905 = inttoptr i64 %f8906 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8905(i64 %cont7082, i64 %arg7329, i64 %retprim7087) ; tail call
  ret void
}


define void @lam8539(i64 %env8540, i64 %_957090, i64 %kvf$_37foldl) {
  %envptr8907 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8908 = getelementptr inbounds i64, i64* %envptr8907, i64 2                  ; &envptr8907[2]
  %NLF$_37foldl1 = load i64, i64* %envptr8908, align 8                               ; load; *envptr8908
  %envptr8909 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8910 = getelementptr inbounds i64, i64* %envptr8909, i64 1                  ; &envptr8909[1]
  %dYl$_37length = load i64, i64* %envptr8910, align 8                               ; load; *envptr8910
  %cloptr8911 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8912 = getelementptr inbounds i64, i64* %cloptr8911, i64 0                    ; &cloptr8911[0]
  %f8913 = ptrtoint void(i64,i64,i64,i64)* @lam8537 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8913, i64* %eptr8912                                                   ; store fptr
  %m3b$_37_62 = ptrtoint i64* %cloptr8911 to i64                                     ; closure cast; i64* -> i64
  %cloptr8914 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8915 = getelementptr inbounds i64, i64* %cloptr8914, i64 0                    ; &cloptr8914[0]
  %f8916 = ptrtoint void(i64,i64,i64,i64)* @lam8534 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8916, i64* %eptr8915                                                   ; store fptr
  %NAT$_37_62_61 = ptrtoint i64* %cloptr8914 to i64                                  ; closure cast; i64* -> i64
  %arg7349 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7348 = add i64 0, 0                                                            ; quoted ()
  %cll$_37append = call i64 @prim_make_45vector(i64 %arg7349, i64 %arg7348)          ; call prim_make_45vector
  %arg7351 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8917 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8919 = getelementptr inbounds i64, i64* %cloptr8917, i64 1                    ; &eptr8919[1]
  store i64 %cll$_37append, i64* %eptr8919                                           ; *eptr8919 = %cll$_37append
  %eptr8918 = getelementptr inbounds i64, i64* %cloptr8917, i64 0                    ; &cloptr8917[0]
  %f8920 = ptrtoint void(i64,i64,i64,i64)* @lam8528 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8920, i64* %eptr8918                                                   ; store fptr
  %arg7350 = ptrtoint i64* %cloptr8917 to i64                                        ; closure cast; i64* -> i64
  %QjL$_950 = call i64 @prim_vector_45set_33(i64 %cll$_37append, i64 %arg7351, i64 %arg7350); call prim_vector_45set_33
  %arg7370 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7181 = call i64 @prim_vector_45ref(i64 %cll$_37append, i64 %arg7370)       ; call prim_vector_45ref
  %cloptr8921 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8923 = getelementptr inbounds i64, i64* %cloptr8921, i64 1                    ; &eptr8923[1]
  %eptr8924 = getelementptr inbounds i64, i64* %cloptr8921, i64 2                    ; &eptr8924[2]
  %eptr8925 = getelementptr inbounds i64, i64* %cloptr8921, i64 3                    ; &eptr8925[3]
  store i64 %dYl$_37length, i64* %eptr8923                                           ; *eptr8923 = %dYl$_37length
  store i64 %NLF$_37foldl1, i64* %eptr8924                                           ; *eptr8924 = %NLF$_37foldl1
  store i64 %m3b$_37_62, i64* %eptr8925                                              ; *eptr8925 = %m3b$_37_62
  %eptr8922 = getelementptr inbounds i64, i64* %cloptr8921, i64 0                    ; &cloptr8921[0]
  %f8926 = ptrtoint void(i64,i64,i64)* @lam8520 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8926, i64* %eptr8922                                                   ; store fptr
  %arg7374 = ptrtoint i64* %cloptr8921 to i64                                        ; closure cast; i64* -> i64
  %arg7373 = add i64 0, 0                                                            ; quoted ()
  %cloptr8927 = inttoptr i64 %arg7374 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8927)                                         ; assert function application
  %i0ptr8928 = getelementptr inbounds i64, i64* %cloptr8927, i64 0                   ; &cloptr8927[0]
  %f8930 = load i64, i64* %i0ptr8928, align 8                                        ; load; *i0ptr8928
  %fptr8929 = inttoptr i64 %f8930 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8929(i64 %arg7374, i64 %arg7373, i64 %retprim7181)  ; tail call
  ret void
}


define void @lam8537(i64 %env8538, i64 %cont7091, i64 %PPu$a, i64 %NPP$b) {
  %a6992 = call i64 @prim__60_61(i64 %PPu$a, i64 %NPP$b)                             ; call prim__60_61
  %retprim7092 = call i64 @prim_not(i64 %a6992)                                      ; call prim_not
  %arg7340 = add i64 0, 0                                                            ; quoted ()
  %cloptr8931 = inttoptr i64 %cont7091 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8931)                                         ; assert function application
  %i0ptr8932 = getelementptr inbounds i64, i64* %cloptr8931, i64 0                   ; &cloptr8931[0]
  %f8934 = load i64, i64* %i0ptr8932, align 8                                        ; load; *i0ptr8932
  %fptr8933 = inttoptr i64 %f8934 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8933(i64 %cont7091, i64 %arg7340, i64 %retprim7092) ; tail call
  ret void
}


define void @lam8534(i64 %env8535, i64 %cont7093, i64 %xCT$a, i64 %YEP$b) {
  %a6993 = call i64 @prim__60(i64 %xCT$a, i64 %YEP$b)                                ; call prim__60
  %retprim7094 = call i64 @prim_not(i64 %a6993)                                      ; call prim_not
  %arg7346 = add i64 0, 0                                                            ; quoted ()
  %cloptr8935 = inttoptr i64 %cont7093 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8935)                                         ; assert function application
  %i0ptr8936 = getelementptr inbounds i64, i64* %cloptr8935, i64 0                   ; &cloptr8935[0]
  %f8938 = load i64, i64* %i0ptr8936, align 8                                        ; load; *i0ptr8936
  %fptr8937 = inttoptr i64 %f8938 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8937(i64 %cont7093, i64 %arg7346, i64 %retprim7094) ; tail call
  ret void
}


define void @lam8528(i64 %env8529, i64 %cont7178, i64 %MXo$ls0, i64 %PBO$ls1) {
  %envptr8939 = inttoptr i64 %env8529 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8940 = getelementptr inbounds i64, i64* %envptr8939, i64 1                  ; &envptr8939[1]
  %cll$_37append = load i64, i64* %envptr8940, align 8                               ; load; *envptr8940
  %a6994 = call i64 @prim_null_63(i64 %MXo$ls0)                                      ; call prim_null_63
  %cmp8941 = icmp eq i64 %a6994, 15                                                  ; false?
  br i1 %cmp8941, label %else8943, label %then8942                                   ; if

then8942:
  %arg7355 = add i64 0, 0                                                            ; quoted ()
  %cloptr8944 = inttoptr i64 %cont7178 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8944)                                         ; assert function application
  %i0ptr8945 = getelementptr inbounds i64, i64* %cloptr8944, i64 0                   ; &cloptr8944[0]
  %f8947 = load i64, i64* %i0ptr8945, align 8                                        ; load; *i0ptr8945
  %fptr8946 = inttoptr i64 %f8947 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8946(i64 %cont7178, i64 %arg7355, i64 %PBO$ls1)     ; tail call
  ret void

else8943:
  %a6995 = call i64 @prim_car(i64 %MXo$ls0)                                          ; call prim_car
  %arg7358 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6996 = call i64 @prim_vector_45ref(i64 %cll$_37append, i64 %arg7358)             ; call prim_vector_45ref
  %a6997 = call i64 @prim_cdr(i64 %MXo$ls0)                                          ; call prim_cdr
  %cloptr8948 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8950 = getelementptr inbounds i64, i64* %cloptr8948, i64 1                    ; &eptr8950[1]
  %eptr8951 = getelementptr inbounds i64, i64* %cloptr8948, i64 2                    ; &eptr8951[2]
  store i64 %cont7178, i64* %eptr8950                                                ; *eptr8950 = %cont7178
  store i64 %a6995, i64* %eptr8951                                                   ; *eptr8951 = %a6995
  %eptr8949 = getelementptr inbounds i64, i64* %cloptr8948, i64 0                    ; &cloptr8948[0]
  %f8952 = ptrtoint void(i64,i64,i64)* @lam8525 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8952, i64* %eptr8949                                                   ; store fptr
  %arg7363 = ptrtoint i64* %cloptr8948 to i64                                        ; closure cast; i64* -> i64
  %cloptr8953 = inttoptr i64 %a6996 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8953)                                         ; assert function application
  %i0ptr8954 = getelementptr inbounds i64, i64* %cloptr8953, i64 0                   ; &cloptr8953[0]
  %f8956 = load i64, i64* %i0ptr8954, align 8                                        ; load; *i0ptr8954
  %fptr8955 = inttoptr i64 %f8956 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8955(i64 %a6996, i64 %arg7363, i64 %a6997, i64 %PBO$ls1); tail call
  ret void
}


define void @lam8525(i64 %env8526, i64 %_957179, i64 %a6998) {
  %envptr8957 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8958 = getelementptr inbounds i64, i64* %envptr8957, i64 2                  ; &envptr8957[2]
  %a6995 = load i64, i64* %envptr8958, align 8                                       ; load; *envptr8958
  %envptr8959 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8960 = getelementptr inbounds i64, i64* %envptr8959, i64 1                  ; &envptr8959[1]
  %cont7178 = load i64, i64* %envptr8960, align 8                                    ; load; *envptr8960
  %retprim7180 = call i64 @prim_cons(i64 %a6995, i64 %a6998)                         ; call prim_cons
  %arg7368 = add i64 0, 0                                                            ; quoted ()
  %cloptr8961 = inttoptr i64 %cont7178 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8961)                                         ; assert function application
  %i0ptr8962 = getelementptr inbounds i64, i64* %cloptr8961, i64 0                   ; &cloptr8961[0]
  %f8964 = load i64, i64* %i0ptr8962, align 8                                        ; load; *i0ptr8962
  %fptr8963 = inttoptr i64 %f8964 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8963(i64 %cont7178, i64 %arg7368, i64 %retprim7180) ; tail call
  ret void
}


define void @lam8520(i64 %env8521, i64 %_957095, i64 %Dya$_37append) {
  %envptr8965 = inttoptr i64 %env8521 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8966 = getelementptr inbounds i64, i64* %envptr8965, i64 3                  ; &envptr8965[3]
  %m3b$_37_62 = load i64, i64* %envptr8966, align 8                                  ; load; *envptr8966
  %envptr8967 = inttoptr i64 %env8521 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8968 = getelementptr inbounds i64, i64* %envptr8967, i64 2                  ; &envptr8967[2]
  %NLF$_37foldl1 = load i64, i64* %envptr8968, align 8                               ; load; *envptr8968
  %envptr8969 = inttoptr i64 %env8521 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8970 = getelementptr inbounds i64, i64* %envptr8969, i64 1                  ; &envptr8969[1]
  %dYl$_37length = load i64, i64* %envptr8970, align 8                               ; load; *envptr8970
  %cloptr8971 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8972 = getelementptr inbounds i64, i64* %cloptr8971, i64 0                    ; &cloptr8971[0]
  %f8973 = ptrtoint void(i64,i64,i64)* @lam8518 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8973, i64* %eptr8972                                                   ; store fptr
  %Tnc$_37list_63 = ptrtoint i64* %cloptr8971 to i64                                 ; closure cast; i64* -> i64
  %cloptr8974 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8975 = getelementptr inbounds i64, i64* %cloptr8974, i64 0                    ; &cloptr8974[0]
  %f8976 = ptrtoint void(i64,i64,i64,i64)* @lam8478 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8976, i64* %eptr8975                                                   ; store fptr
  %kF8$_37drop = ptrtoint i64* %cloptr8974 to i64                                    ; closure cast; i64* -> i64
  %cloptr8977 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8978 = getelementptr inbounds i64, i64* %cloptr8977, i64 0                    ; &cloptr8977[0]
  %f8979 = ptrtoint void(i64,i64,i64,i64)* @lam8438 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8979, i64* %eptr8978                                                   ; store fptr
  %qPF$_37memv = ptrtoint i64* %cloptr8977 to i64                                    ; closure cast; i64* -> i64
  %cloptr8980 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8982 = getelementptr inbounds i64, i64* %cloptr8980, i64 1                    ; &eptr8982[1]
  store i64 %NLF$_37foldl1, i64* %eptr8982                                           ; *eptr8982 = %NLF$_37foldl1
  %eptr8981 = getelementptr inbounds i64, i64* %cloptr8980, i64 0                    ; &cloptr8980[0]
  %f8983 = ptrtoint void(i64,i64)* @lam8407 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8983, i64* %eptr8981                                                   ; store fptr
  %rBW$_37_47 = ptrtoint i64* %cloptr8980 to i64                                     ; closure cast; i64* -> i64
  %cloptr8984 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8985 = getelementptr inbounds i64, i64* %cloptr8984, i64 0                    ; &cloptr8984[0]
  %f8986 = ptrtoint void(i64,i64,i64)* @lam8399 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8986, i64* %eptr8985                                                   ; store fptr
  %oNI$_37first = ptrtoint i64* %cloptr8984 to i64                                   ; closure cast; i64* -> i64
  %cloptr8987 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8988 = getelementptr inbounds i64, i64* %cloptr8987, i64 0                    ; &cloptr8987[0]
  %f8989 = ptrtoint void(i64,i64,i64)* @lam8396 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8989, i64* %eptr8988                                                   ; store fptr
  %OSo$_37second = ptrtoint i64* %cloptr8987 to i64                                  ; closure cast; i64* -> i64
  %cloptr8990 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8991 = getelementptr inbounds i64, i64* %cloptr8990, i64 0                    ; &cloptr8990[0]
  %f8992 = ptrtoint void(i64,i64,i64)* @lam8393 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8992, i64* %eptr8991                                                   ; store fptr
  %cqC$_37third = ptrtoint i64* %cloptr8990 to i64                                   ; closure cast; i64* -> i64
  %cloptr8993 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8994 = getelementptr inbounds i64, i64* %cloptr8993, i64 0                    ; &cloptr8993[0]
  %f8995 = ptrtoint void(i64,i64,i64)* @lam8390 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8995, i64* %eptr8994                                                   ; store fptr
  %hVo$_37fourth = ptrtoint i64* %cloptr8993 to i64                                  ; closure cast; i64* -> i64
  %cloptr8996 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8997 = getelementptr inbounds i64, i64* %cloptr8996, i64 0                    ; &cloptr8996[0]
  %f8998 = ptrtoint void(i64,i64,i64)* @lam8387 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8998, i64* %eptr8997                                                   ; store fptr
  %ba0$promise_63 = ptrtoint i64* %cloptr8996 to i64                                 ; closure cast; i64* -> i64
  %cloptr8999 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9000 = getelementptr inbounds i64, i64* %cloptr8999, i64 0                    ; &cloptr8999[0]
  %f9001 = ptrtoint void(i64,i64)* @lam8381 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9001, i64* %eptr9000                                                   ; store fptr
  %arg7636 = ptrtoint i64* %cloptr8999 to i64                                        ; closure cast; i64* -> i64
  %cloptr9002 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9004 = getelementptr inbounds i64, i64* %cloptr9002, i64 1                    ; &eptr9004[1]
  %eptr9005 = getelementptr inbounds i64, i64* %cloptr9002, i64 2                    ; &eptr9005[2]
  %eptr9006 = getelementptr inbounds i64, i64* %cloptr9002, i64 3                    ; &eptr9006[3]
  store i64 %dYl$_37length, i64* %eptr9004                                           ; *eptr9004 = %dYl$_37length
  store i64 %m3b$_37_62, i64* %eptr9005                                              ; *eptr9005 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9006                                             ; *eptr9006 = %kF8$_37drop
  %eptr9003 = getelementptr inbounds i64, i64* %cloptr9002, i64 0                    ; &cloptr9002[0]
  %f9007 = ptrtoint void(i64,i64,i64)* @lam8378 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9007, i64* %eptr9003                                                   ; store fptr
  %arg7635 = ptrtoint i64* %cloptr9002 to i64                                        ; closure cast; i64* -> i64
  %rva8122 = add i64 0, 0                                                            ; quoted ()
  %rva8121 = call i64 @prim_cons(i64 %arg7635, i64 %rva8122)                         ; call prim_cons
  %cloptr9008 = inttoptr i64 %arg7636 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9008)                                         ; assert function application
  %i0ptr9009 = getelementptr inbounds i64, i64* %cloptr9008, i64 0                   ; &cloptr9008[0]
  %f9011 = load i64, i64* %i0ptr9009, align 8                                        ; load; *i0ptr9009
  %fptr9010 = inttoptr i64 %f9011 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9010(i64 %arg7636, i64 %rva8121)                    ; tail call
  ret void
}


define void @lam8518(i64 %env8519, i64 %cont7096, i64 %h79$a) {
  %arg7376 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %u5p$a = call i64 @prim_make_45vector(i64 %arg7376, i64 %h79$a)                    ; call prim_make_45vector
  %cloptr9012 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9013 = getelementptr inbounds i64, i64* %cloptr9012, i64 0                    ; &cloptr9012[0]
  %f9014 = ptrtoint void(i64,i64,i64)* @lam8515 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9014, i64* %eptr9013                                                   ; store fptr
  %arg7379 = ptrtoint i64* %cloptr9012 to i64                                        ; closure cast; i64* -> i64
  %cloptr9015 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9017 = getelementptr inbounds i64, i64* %cloptr9015, i64 1                    ; &eptr9017[1]
  %eptr9018 = getelementptr inbounds i64, i64* %cloptr9015, i64 2                    ; &eptr9018[2]
  store i64 %u5p$a, i64* %eptr9017                                                   ; *eptr9017 = %u5p$a
  store i64 %cont7096, i64* %eptr9018                                                ; *eptr9018 = %cont7096
  %eptr9016 = getelementptr inbounds i64, i64* %cloptr9015, i64 0                    ; &cloptr9015[0]
  %f9019 = ptrtoint void(i64,i64,i64)* @lam8512 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9019, i64* %eptr9016                                                   ; store fptr
  %arg7378 = ptrtoint i64* %cloptr9015 to i64                                        ; closure cast; i64* -> i64
  %cloptr9020 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9022 = getelementptr inbounds i64, i64* %cloptr9020, i64 1                    ; &eptr9022[1]
  %eptr9023 = getelementptr inbounds i64, i64* %cloptr9020, i64 2                    ; &eptr9023[2]
  store i64 %u5p$a, i64* %eptr9022                                                   ; *eptr9022 = %u5p$a
  store i64 %cont7096, i64* %eptr9023                                                ; *eptr9023 = %cont7096
  %eptr9021 = getelementptr inbounds i64, i64* %cloptr9020, i64 0                    ; &cloptr9020[0]
  %f9024 = ptrtoint void(i64,i64,i64)* @lam8495 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9024, i64* %eptr9021                                                   ; store fptr
  %arg7377 = ptrtoint i64* %cloptr9020 to i64                                        ; closure cast; i64* -> i64
  %cloptr9025 = inttoptr i64 %arg7379 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9025)                                         ; assert function application
  %i0ptr9026 = getelementptr inbounds i64, i64* %cloptr9025, i64 0                   ; &cloptr9025[0]
  %f9028 = load i64, i64* %i0ptr9026, align 8                                        ; load; *i0ptr9026
  %fptr9027 = inttoptr i64 %f9028 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9027(i64 %arg7379, i64 %arg7378, i64 %arg7377)      ; tail call
  ret void
}


define void @lam8515(i64 %env8516, i64 %cont7102, i64 %FP4$k) {
  %arg7381 = add i64 0, 0                                                            ; quoted ()
  %cloptr9029 = inttoptr i64 %cont7102 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9029)                                         ; assert function application
  %i0ptr9030 = getelementptr inbounds i64, i64* %cloptr9029, i64 0                   ; &cloptr9029[0]
  %f9032 = load i64, i64* %i0ptr9030, align 8                                        ; load; *i0ptr9030
  %fptr9031 = inttoptr i64 %f9032 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9031(i64 %cont7102, i64 %arg7381, i64 %FP4$k)       ; tail call
  ret void
}


define void @lam8512(i64 %env8513, i64 %_957097, i64 %E1X$cc) {
  %envptr9033 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9034 = getelementptr inbounds i64, i64* %envptr9033, i64 2                  ; &envptr9033[2]
  %cont7096 = load i64, i64* %envptr9034, align 8                                    ; load; *envptr9034
  %envptr9035 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9036 = getelementptr inbounds i64, i64* %envptr9035, i64 1                  ; &envptr9035[1]
  %u5p$a = load i64, i64* %envptr9036, align 8                                       ; load; *envptr9036
  %arg7383 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7383)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9037 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9037, label %else9039, label %then9038                                   ; if

then9038:
  %arg7387 = add i64 0, 0                                                            ; quoted ()
  %arg7386 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9040 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9040)                                         ; assert function application
  %i0ptr9041 = getelementptr inbounds i64, i64* %cloptr9040, i64 0                   ; &cloptr9040[0]
  %f9043 = load i64, i64* %i0ptr9041, align 8                                        ; load; *i0ptr9041
  %fptr9042 = inttoptr i64 %f9043 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9042(i64 %cont7096, i64 %arg7387, i64 %arg7386)     ; tail call
  ret void

else9039:
  %arg7389 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7389)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9044 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9044, label %else9046, label %then9045                                   ; if

then9045:
  %arg7392 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7392)                     ; call prim_vector_45ref
  %retprim7101 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9047 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9049 = getelementptr inbounds i64, i64* %cloptr9047, i64 1                    ; &eptr9049[1]
  %eptr9050 = getelementptr inbounds i64, i64* %cloptr9047, i64 2                    ; &eptr9050[2]
  %eptr9051 = getelementptr inbounds i64, i64* %cloptr9047, i64 3                    ; &eptr9051[3]
  store i64 %E1X$cc, i64* %eptr9049                                                  ; *eptr9049 = %E1X$cc
  store i64 %u5p$a, i64* %eptr9050                                                   ; *eptr9050 = %u5p$a
  store i64 %cont7096, i64* %eptr9051                                                ; *eptr9051 = %cont7096
  %eptr9048 = getelementptr inbounds i64, i64* %cloptr9047, i64 0                    ; &cloptr9047[0]
  %f9052 = ptrtoint void(i64,i64,i64)* @lam8505 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9052, i64* %eptr9048                                                   ; store fptr
  %arg7397 = ptrtoint i64* %cloptr9047 to i64                                        ; closure cast; i64* -> i64
  %arg7396 = add i64 0, 0                                                            ; quoted ()
  %cloptr9053 = inttoptr i64 %arg7397 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9053)                                         ; assert function application
  %i0ptr9054 = getelementptr inbounds i64, i64* %cloptr9053, i64 0                   ; &cloptr9053[0]
  %f9056 = load i64, i64* %i0ptr9054, align 8                                        ; load; *i0ptr9054
  %fptr9055 = inttoptr i64 %f9056 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9055(i64 %arg7397, i64 %arg7396, i64 %retprim7101)  ; tail call
  ret void

else9046:
  %arg7411 = add i64 0, 0                                                            ; quoted ()
  %arg7410 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9057 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9057)                                         ; assert function application
  %i0ptr9058 = getelementptr inbounds i64, i64* %cloptr9057, i64 0                   ; &cloptr9057[0]
  %f9060 = load i64, i64* %i0ptr9058, align 8                                        ; load; *i0ptr9058
  %fptr9059 = inttoptr i64 %f9060 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9059(i64 %cont7096, i64 %arg7411, i64 %arg7410)     ; tail call
  ret void
}


define void @lam8505(i64 %env8506, i64 %_957098, i64 %nXT$b) {
  %envptr9061 = inttoptr i64 %env8506 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9062 = getelementptr inbounds i64, i64* %envptr9061, i64 3                  ; &envptr9061[3]
  %cont7096 = load i64, i64* %envptr9062, align 8                                    ; load; *envptr9062
  %envptr9063 = inttoptr i64 %env8506 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9064 = getelementptr inbounds i64, i64* %envptr9063, i64 2                  ; &envptr9063[2]
  %u5p$a = load i64, i64* %envptr9064, align 8                                       ; load; *envptr9064
  %envptr9065 = inttoptr i64 %env8506 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9066 = getelementptr inbounds i64, i64* %envptr9065, i64 1                  ; &envptr9065[1]
  %E1X$cc = load i64, i64* %envptr9066, align 8                                      ; load; *envptr9066
  %arg7398 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7398)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7402 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7100 = call i64 @prim_vector_45set_33(i64 %u5p$a, i64 %arg7402, i64 %a7005); call prim_vector_45set_33
  %cloptr9067 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9069 = getelementptr inbounds i64, i64* %cloptr9067, i64 1                    ; &eptr9069[1]
  %eptr9070 = getelementptr inbounds i64, i64* %cloptr9067, i64 2                    ; &eptr9070[2]
  store i64 %E1X$cc, i64* %eptr9069                                                  ; *eptr9069 = %E1X$cc
  store i64 %cont7096, i64* %eptr9070                                                ; *eptr9070 = %cont7096
  %eptr9068 = getelementptr inbounds i64, i64* %cloptr9067, i64 0                    ; &cloptr9067[0]
  %f9071 = ptrtoint void(i64,i64,i64)* @lam8501 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9071, i64* %eptr9068                                                   ; store fptr
  %arg7406 = ptrtoint i64* %cloptr9067 to i64                                        ; closure cast; i64* -> i64
  %arg7405 = add i64 0, 0                                                            ; quoted ()
  %cloptr9072 = inttoptr i64 %arg7406 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9072)                                         ; assert function application
  %i0ptr9073 = getelementptr inbounds i64, i64* %cloptr9072, i64 0                   ; &cloptr9072[0]
  %f9075 = load i64, i64* %i0ptr9073, align 8                                        ; load; *i0ptr9073
  %fptr9074 = inttoptr i64 %f9075 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9074(i64 %arg7406, i64 %arg7405, i64 %retprim7100)  ; tail call
  ret void
}


define void @lam8501(i64 %env8502, i64 %_957099, i64 %kBE$_950) {
  %envptr9076 = inttoptr i64 %env8502 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9077 = getelementptr inbounds i64, i64* %envptr9076, i64 2                  ; &envptr9076[2]
  %cont7096 = load i64, i64* %envptr9077, align 8                                    ; load; *envptr9077
  %envptr9078 = inttoptr i64 %env8502 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9079 = getelementptr inbounds i64, i64* %envptr9078, i64 1                  ; &envptr9078[1]
  %E1X$cc = load i64, i64* %envptr9079, align 8                                      ; load; *envptr9079
  %cloptr9080 = inttoptr i64 %E1X$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9080)                                         ; assert function application
  %i0ptr9081 = getelementptr inbounds i64, i64* %cloptr9080, i64 0                   ; &cloptr9080[0]
  %f9083 = load i64, i64* %i0ptr9081, align 8                                        ; load; *i0ptr9081
  %fptr9082 = inttoptr i64 %f9083 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9082(i64 %E1X$cc, i64 %cont7096, i64 %E1X$cc)       ; tail call
  ret void
}


define void @lam8495(i64 %env8496, i64 %_957097, i64 %E1X$cc) {
  %envptr9084 = inttoptr i64 %env8496 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9085 = getelementptr inbounds i64, i64* %envptr9084, i64 2                  ; &envptr9084[2]
  %cont7096 = load i64, i64* %envptr9085, align 8                                    ; load; *envptr9085
  %envptr9086 = inttoptr i64 %env8496 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9087 = getelementptr inbounds i64, i64* %envptr9086, i64 1                  ; &envptr9086[1]
  %u5p$a = load i64, i64* %envptr9087, align 8                                       ; load; *envptr9087
  %arg7413 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7413)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9088 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9088, label %else9090, label %then9089                                   ; if

then9089:
  %arg7417 = add i64 0, 0                                                            ; quoted ()
  %arg7416 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9091 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9091)                                         ; assert function application
  %i0ptr9092 = getelementptr inbounds i64, i64* %cloptr9091, i64 0                   ; &cloptr9091[0]
  %f9094 = load i64, i64* %i0ptr9092, align 8                                        ; load; *i0ptr9092
  %fptr9093 = inttoptr i64 %f9094 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9093(i64 %cont7096, i64 %arg7417, i64 %arg7416)     ; tail call
  ret void

else9090:
  %arg7419 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7419)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9095 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9095, label %else9097, label %then9096                                   ; if

then9096:
  %arg7422 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7422)                     ; call prim_vector_45ref
  %retprim7101 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9098 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9100 = getelementptr inbounds i64, i64* %cloptr9098, i64 1                    ; &eptr9100[1]
  %eptr9101 = getelementptr inbounds i64, i64* %cloptr9098, i64 2                    ; &eptr9101[2]
  %eptr9102 = getelementptr inbounds i64, i64* %cloptr9098, i64 3                    ; &eptr9102[3]
  store i64 %E1X$cc, i64* %eptr9100                                                  ; *eptr9100 = %E1X$cc
  store i64 %u5p$a, i64* %eptr9101                                                   ; *eptr9101 = %u5p$a
  store i64 %cont7096, i64* %eptr9102                                                ; *eptr9102 = %cont7096
  %eptr9099 = getelementptr inbounds i64, i64* %cloptr9098, i64 0                    ; &cloptr9098[0]
  %f9103 = ptrtoint void(i64,i64,i64)* @lam8488 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9103, i64* %eptr9099                                                   ; store fptr
  %arg7427 = ptrtoint i64* %cloptr9098 to i64                                        ; closure cast; i64* -> i64
  %arg7426 = add i64 0, 0                                                            ; quoted ()
  %cloptr9104 = inttoptr i64 %arg7427 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9104)                                         ; assert function application
  %i0ptr9105 = getelementptr inbounds i64, i64* %cloptr9104, i64 0                   ; &cloptr9104[0]
  %f9107 = load i64, i64* %i0ptr9105, align 8                                        ; load; *i0ptr9105
  %fptr9106 = inttoptr i64 %f9107 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9106(i64 %arg7427, i64 %arg7426, i64 %retprim7101)  ; tail call
  ret void

else9097:
  %arg7441 = add i64 0, 0                                                            ; quoted ()
  %arg7440 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9108 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9108)                                         ; assert function application
  %i0ptr9109 = getelementptr inbounds i64, i64* %cloptr9108, i64 0                   ; &cloptr9108[0]
  %f9111 = load i64, i64* %i0ptr9109, align 8                                        ; load; *i0ptr9109
  %fptr9110 = inttoptr i64 %f9111 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9110(i64 %cont7096, i64 %arg7441, i64 %arg7440)     ; tail call
  ret void
}


define void @lam8488(i64 %env8489, i64 %_957098, i64 %nXT$b) {
  %envptr9112 = inttoptr i64 %env8489 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9113 = getelementptr inbounds i64, i64* %envptr9112, i64 3                  ; &envptr9112[3]
  %cont7096 = load i64, i64* %envptr9113, align 8                                    ; load; *envptr9113
  %envptr9114 = inttoptr i64 %env8489 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9115 = getelementptr inbounds i64, i64* %envptr9114, i64 2                  ; &envptr9114[2]
  %u5p$a = load i64, i64* %envptr9115, align 8                                       ; load; *envptr9115
  %envptr9116 = inttoptr i64 %env8489 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9117 = getelementptr inbounds i64, i64* %envptr9116, i64 1                  ; &envptr9116[1]
  %E1X$cc = load i64, i64* %envptr9117, align 8                                      ; load; *envptr9117
  %arg7428 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %u5p$a, i64 %arg7428)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7432 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7100 = call i64 @prim_vector_45set_33(i64 %u5p$a, i64 %arg7432, i64 %a7005); call prim_vector_45set_33
  %cloptr9118 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9120 = getelementptr inbounds i64, i64* %cloptr9118, i64 1                    ; &eptr9120[1]
  %eptr9121 = getelementptr inbounds i64, i64* %cloptr9118, i64 2                    ; &eptr9121[2]
  store i64 %E1X$cc, i64* %eptr9120                                                  ; *eptr9120 = %E1X$cc
  store i64 %cont7096, i64* %eptr9121                                                ; *eptr9121 = %cont7096
  %eptr9119 = getelementptr inbounds i64, i64* %cloptr9118, i64 0                    ; &cloptr9118[0]
  %f9122 = ptrtoint void(i64,i64,i64)* @lam8484 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9122, i64* %eptr9119                                                   ; store fptr
  %arg7436 = ptrtoint i64* %cloptr9118 to i64                                        ; closure cast; i64* -> i64
  %arg7435 = add i64 0, 0                                                            ; quoted ()
  %cloptr9123 = inttoptr i64 %arg7436 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9123)                                         ; assert function application
  %i0ptr9124 = getelementptr inbounds i64, i64* %cloptr9123, i64 0                   ; &cloptr9123[0]
  %f9126 = load i64, i64* %i0ptr9124, align 8                                        ; load; *i0ptr9124
  %fptr9125 = inttoptr i64 %f9126 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9125(i64 %arg7436, i64 %arg7435, i64 %retprim7100)  ; tail call
  ret void
}


define void @lam8484(i64 %env8485, i64 %_957099, i64 %kBE$_950) {
  %envptr9127 = inttoptr i64 %env8485 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9128 = getelementptr inbounds i64, i64* %envptr9127, i64 2                  ; &envptr9127[2]
  %cont7096 = load i64, i64* %envptr9128, align 8                                    ; load; *envptr9128
  %envptr9129 = inttoptr i64 %env8485 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9130 = getelementptr inbounds i64, i64* %envptr9129, i64 1                  ; &envptr9129[1]
  %E1X$cc = load i64, i64* %envptr9130, align 8                                      ; load; *envptr9130
  %cloptr9131 = inttoptr i64 %E1X$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9131)                                         ; assert function application
  %i0ptr9132 = getelementptr inbounds i64, i64* %cloptr9131, i64 0                   ; &cloptr9131[0]
  %f9134 = load i64, i64* %i0ptr9132, align 8                                        ; load; *i0ptr9132
  %fptr9133 = inttoptr i64 %f9134 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9133(i64 %E1X$cc, i64 %cont7096, i64 %E1X$cc)       ; tail call
  ret void
}


define void @lam8478(i64 %env8479, i64 %cont7103, i64 %M23$lst, i64 %HO1$n) {
  %arg7444 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %MRB$lst = call i64 @prim_make_45vector(i64 %arg7444, i64 %M23$lst)                ; call prim_make_45vector
  %arg7446 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %k2M$n = call i64 @prim_make_45vector(i64 %arg7446, i64 %HO1$n)                    ; call prim_make_45vector
  %cloptr9135 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9136 = getelementptr inbounds i64, i64* %cloptr9135, i64 0                    ; &cloptr9135[0]
  %f9137 = ptrtoint void(i64,i64,i64)* @lam8474 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9137, i64* %eptr9136                                                   ; store fptr
  %arg7449 = ptrtoint i64* %cloptr9135 to i64                                        ; closure cast; i64* -> i64
  %cloptr9138 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9140 = getelementptr inbounds i64, i64* %cloptr9138, i64 1                    ; &eptr9140[1]
  %eptr9141 = getelementptr inbounds i64, i64* %cloptr9138, i64 2                    ; &eptr9141[2]
  %eptr9142 = getelementptr inbounds i64, i64* %cloptr9138, i64 3                    ; &eptr9142[3]
  store i64 %k2M$n, i64* %eptr9140                                                   ; *eptr9140 = %k2M$n
  store i64 %MRB$lst, i64* %eptr9141                                                 ; *eptr9141 = %MRB$lst
  store i64 %cont7103, i64* %eptr9142                                                ; *eptr9142 = %cont7103
  %eptr9139 = getelementptr inbounds i64, i64* %cloptr9138, i64 0                    ; &cloptr9138[0]
  %f9143 = ptrtoint void(i64,i64,i64)* @lam8472 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9143, i64* %eptr9139                                                   ; store fptr
  %arg7448 = ptrtoint i64* %cloptr9138 to i64                                        ; closure cast; i64* -> i64
  %cloptr9144 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9146 = getelementptr inbounds i64, i64* %cloptr9144, i64 1                    ; &eptr9146[1]
  %eptr9147 = getelementptr inbounds i64, i64* %cloptr9144, i64 2                    ; &eptr9147[2]
  %eptr9148 = getelementptr inbounds i64, i64* %cloptr9144, i64 3                    ; &eptr9148[3]
  store i64 %k2M$n, i64* %eptr9146                                                   ; *eptr9146 = %k2M$n
  store i64 %MRB$lst, i64* %eptr9147                                                 ; *eptr9147 = %MRB$lst
  store i64 %cont7103, i64* %eptr9148                                                ; *eptr9148 = %cont7103
  %eptr9145 = getelementptr inbounds i64, i64* %cloptr9144, i64 0                    ; &cloptr9144[0]
  %f9149 = ptrtoint void(i64,i64,i64)* @lam8455 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9149, i64* %eptr9145                                                   ; store fptr
  %arg7447 = ptrtoint i64* %cloptr9144 to i64                                        ; closure cast; i64* -> i64
  %cloptr9150 = inttoptr i64 %arg7449 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9150)                                         ; assert function application
  %i0ptr9151 = getelementptr inbounds i64, i64* %cloptr9150, i64 0                   ; &cloptr9150[0]
  %f9153 = load i64, i64* %i0ptr9151, align 8                                        ; load; *i0ptr9151
  %fptr9152 = inttoptr i64 %f9153 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9152(i64 %arg7449, i64 %arg7448, i64 %arg7447)      ; tail call
  ret void
}


define void @lam8474(i64 %env8475, i64 %cont7110, i64 %JWf$u) {
  %cloptr9154 = inttoptr i64 %JWf$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9154)                                         ; assert function application
  %i0ptr9155 = getelementptr inbounds i64, i64* %cloptr9154, i64 0                   ; &cloptr9154[0]
  %f9157 = load i64, i64* %i0ptr9155, align 8                                        ; load; *i0ptr9155
  %fptr9156 = inttoptr i64 %f9157 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9156(i64 %JWf$u, i64 %cont7110, i64 %JWf$u)         ; tail call
  ret void
}


define void @lam8472(i64 %env8473, i64 %_957104, i64 %oAZ$cc) {
  %envptr9158 = inttoptr i64 %env8473 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9159 = getelementptr inbounds i64, i64* %envptr9158, i64 3                  ; &envptr9158[3]
  %cont7103 = load i64, i64* %envptr9159, align 8                                    ; load; *envptr9159
  %envptr9160 = inttoptr i64 %env8473 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9161 = getelementptr inbounds i64, i64* %envptr9160, i64 2                  ; &envptr9160[2]
  %MRB$lst = load i64, i64* %envptr9161, align 8                                     ; load; *envptr9161
  %envptr9162 = inttoptr i64 %env8473 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9163 = getelementptr inbounds i64, i64* %envptr9162, i64 1                  ; &envptr9162[1]
  %k2M$n = load i64, i64* %envptr9163, align 8                                       ; load; *envptr9163
  %arg7453 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %k2M$n, i64 %arg7453)                     ; call prim_vector_45ref
  %arg7456 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7456, i64 %a7006)                              ; call prim__61
  %cmp9164 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9164, label %else9166, label %then9165                                   ; if

then9165:
  %arg7457 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7105 = call i64 @prim_vector_45ref(i64 %MRB$lst, i64 %arg7457)             ; call prim_vector_45ref
  %arg7460 = add i64 0, 0                                                            ; quoted ()
  %cloptr9167 = inttoptr i64 %cont7103 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9167)                                         ; assert function application
  %i0ptr9168 = getelementptr inbounds i64, i64* %cloptr9167, i64 0                   ; &cloptr9167[0]
  %f9170 = load i64, i64* %i0ptr9168, align 8                                        ; load; *i0ptr9168
  %fptr9169 = inttoptr i64 %f9170 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9169(i64 %cont7103, i64 %arg7460, i64 %retprim7105) ; tail call
  ret void

else9166:
  %arg7462 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %MRB$lst, i64 %arg7462)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7466 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45set_33(i64 %MRB$lst, i64 %arg7466, i64 %a7009); call prim_vector_45set_33
  %cloptr9171 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9173 = getelementptr inbounds i64, i64* %cloptr9171, i64 1                    ; &eptr9173[1]
  %eptr9174 = getelementptr inbounds i64, i64* %cloptr9171, i64 2                    ; &eptr9174[2]
  %eptr9175 = getelementptr inbounds i64, i64* %cloptr9171, i64 3                    ; &eptr9175[3]
  store i64 %k2M$n, i64* %eptr9173                                                   ; *eptr9173 = %k2M$n
  store i64 %cont7103, i64* %eptr9174                                                ; *eptr9174 = %cont7103
  store i64 %oAZ$cc, i64* %eptr9175                                                  ; *eptr9175 = %oAZ$cc
  %eptr9172 = getelementptr inbounds i64, i64* %cloptr9171, i64 0                    ; &cloptr9171[0]
  %f9176 = ptrtoint void(i64,i64,i64)* @lam8466 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9176, i64* %eptr9172                                                   ; store fptr
  %arg7470 = ptrtoint i64* %cloptr9171 to i64                                        ; closure cast; i64* -> i64
  %arg7469 = add i64 0, 0                                                            ; quoted ()
  %cloptr9177 = inttoptr i64 %arg7470 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9177)                                         ; assert function application
  %i0ptr9178 = getelementptr inbounds i64, i64* %cloptr9177, i64 0                   ; &cloptr9177[0]
  %f9180 = load i64, i64* %i0ptr9178, align 8                                        ; load; *i0ptr9178
  %fptr9179 = inttoptr i64 %f9180 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9179(i64 %arg7470, i64 %arg7469, i64 %retprim7109)  ; tail call
  ret void
}


define void @lam8466(i64 %env8467, i64 %_957106, i64 %Qvi$_950) {
  %envptr9181 = inttoptr i64 %env8467 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9182 = getelementptr inbounds i64, i64* %envptr9181, i64 3                  ; &envptr9181[3]
  %oAZ$cc = load i64, i64* %envptr9182, align 8                                      ; load; *envptr9182
  %envptr9183 = inttoptr i64 %env8467 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9184 = getelementptr inbounds i64, i64* %envptr9183, i64 2                  ; &envptr9183[2]
  %cont7103 = load i64, i64* %envptr9184, align 8                                    ; load; *envptr9184
  %envptr9185 = inttoptr i64 %env8467 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9186 = getelementptr inbounds i64, i64* %envptr9185, i64 1                  ; &envptr9185[1]
  %k2M$n = load i64, i64* %envptr9186, align 8                                       ; load; *envptr9186
  %arg7471 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %k2M$n, i64 %arg7471)                     ; call prim_vector_45ref
  %arg7473 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7473)                              ; call prim__45
  %arg7476 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %k2M$n, i64 %arg7476, i64 %a7011); call prim_vector_45set_33
  %cloptr9187 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9189 = getelementptr inbounds i64, i64* %cloptr9187, i64 1                    ; &eptr9189[1]
  %eptr9190 = getelementptr inbounds i64, i64* %cloptr9187, i64 2                    ; &eptr9190[2]
  store i64 %cont7103, i64* %eptr9189                                                ; *eptr9189 = %cont7103
  store i64 %oAZ$cc, i64* %eptr9190                                                  ; *eptr9190 = %oAZ$cc
  %eptr9188 = getelementptr inbounds i64, i64* %cloptr9187, i64 0                    ; &cloptr9187[0]
  %f9191 = ptrtoint void(i64,i64,i64)* @lam8461 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9191, i64* %eptr9188                                                   ; store fptr
  %arg7480 = ptrtoint i64* %cloptr9187 to i64                                        ; closure cast; i64* -> i64
  %arg7479 = add i64 0, 0                                                            ; quoted ()
  %cloptr9192 = inttoptr i64 %arg7480 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9192)                                         ; assert function application
  %i0ptr9193 = getelementptr inbounds i64, i64* %cloptr9192, i64 0                   ; &cloptr9192[0]
  %f9195 = load i64, i64* %i0ptr9193, align 8                                        ; load; *i0ptr9193
  %fptr9194 = inttoptr i64 %f9195 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9194(i64 %arg7480, i64 %arg7479, i64 %retprim7108)  ; tail call
  ret void
}


define void @lam8461(i64 %env8462, i64 %_957107, i64 %BzG$_951) {
  %envptr9196 = inttoptr i64 %env8462 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9197 = getelementptr inbounds i64, i64* %envptr9196, i64 2                  ; &envptr9196[2]
  %oAZ$cc = load i64, i64* %envptr9197, align 8                                      ; load; *envptr9197
  %envptr9198 = inttoptr i64 %env8462 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9199 = getelementptr inbounds i64, i64* %envptr9198, i64 1                  ; &envptr9198[1]
  %cont7103 = load i64, i64* %envptr9199, align 8                                    ; load; *envptr9199
  %cloptr9200 = inttoptr i64 %oAZ$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9200)                                         ; assert function application
  %i0ptr9201 = getelementptr inbounds i64, i64* %cloptr9200, i64 0                   ; &cloptr9200[0]
  %f9203 = load i64, i64* %i0ptr9201, align 8                                        ; load; *i0ptr9201
  %fptr9202 = inttoptr i64 %f9203 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9202(i64 %oAZ$cc, i64 %cont7103, i64 %oAZ$cc)       ; tail call
  ret void
}


define void @lam8455(i64 %env8456, i64 %_957104, i64 %oAZ$cc) {
  %envptr9204 = inttoptr i64 %env8456 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9205 = getelementptr inbounds i64, i64* %envptr9204, i64 3                  ; &envptr9204[3]
  %cont7103 = load i64, i64* %envptr9205, align 8                                    ; load; *envptr9205
  %envptr9206 = inttoptr i64 %env8456 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9207 = getelementptr inbounds i64, i64* %envptr9206, i64 2                  ; &envptr9206[2]
  %MRB$lst = load i64, i64* %envptr9207, align 8                                     ; load; *envptr9207
  %envptr9208 = inttoptr i64 %env8456 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9209 = getelementptr inbounds i64, i64* %envptr9208, i64 1                  ; &envptr9208[1]
  %k2M$n = load i64, i64* %envptr9209, align 8                                       ; load; *envptr9209
  %arg7484 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %k2M$n, i64 %arg7484)                     ; call prim_vector_45ref
  %arg7487 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7487, i64 %a7006)                              ; call prim__61
  %cmp9210 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9210, label %else9212, label %then9211                                   ; if

then9211:
  %arg7488 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7105 = call i64 @prim_vector_45ref(i64 %MRB$lst, i64 %arg7488)             ; call prim_vector_45ref
  %arg7491 = add i64 0, 0                                                            ; quoted ()
  %cloptr9213 = inttoptr i64 %cont7103 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9213)                                         ; assert function application
  %i0ptr9214 = getelementptr inbounds i64, i64* %cloptr9213, i64 0                   ; &cloptr9213[0]
  %f9216 = load i64, i64* %i0ptr9214, align 8                                        ; load; *i0ptr9214
  %fptr9215 = inttoptr i64 %f9216 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9215(i64 %cont7103, i64 %arg7491, i64 %retprim7105) ; tail call
  ret void

else9212:
  %arg7493 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %MRB$lst, i64 %arg7493)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7497 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45set_33(i64 %MRB$lst, i64 %arg7497, i64 %a7009); call prim_vector_45set_33
  %cloptr9217 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9219 = getelementptr inbounds i64, i64* %cloptr9217, i64 1                    ; &eptr9219[1]
  %eptr9220 = getelementptr inbounds i64, i64* %cloptr9217, i64 2                    ; &eptr9220[2]
  %eptr9221 = getelementptr inbounds i64, i64* %cloptr9217, i64 3                    ; &eptr9221[3]
  store i64 %k2M$n, i64* %eptr9219                                                   ; *eptr9219 = %k2M$n
  store i64 %cont7103, i64* %eptr9220                                                ; *eptr9220 = %cont7103
  store i64 %oAZ$cc, i64* %eptr9221                                                  ; *eptr9221 = %oAZ$cc
  %eptr9218 = getelementptr inbounds i64, i64* %cloptr9217, i64 0                    ; &cloptr9217[0]
  %f9222 = ptrtoint void(i64,i64,i64)* @lam8449 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9222, i64* %eptr9218                                                   ; store fptr
  %arg7501 = ptrtoint i64* %cloptr9217 to i64                                        ; closure cast; i64* -> i64
  %arg7500 = add i64 0, 0                                                            ; quoted ()
  %cloptr9223 = inttoptr i64 %arg7501 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9223)                                         ; assert function application
  %i0ptr9224 = getelementptr inbounds i64, i64* %cloptr9223, i64 0                   ; &cloptr9223[0]
  %f9226 = load i64, i64* %i0ptr9224, align 8                                        ; load; *i0ptr9224
  %fptr9225 = inttoptr i64 %f9226 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9225(i64 %arg7501, i64 %arg7500, i64 %retprim7109)  ; tail call
  ret void
}


define void @lam8449(i64 %env8450, i64 %_957106, i64 %Qvi$_950) {
  %envptr9227 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9228 = getelementptr inbounds i64, i64* %envptr9227, i64 3                  ; &envptr9227[3]
  %oAZ$cc = load i64, i64* %envptr9228, align 8                                      ; load; *envptr9228
  %envptr9229 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9230 = getelementptr inbounds i64, i64* %envptr9229, i64 2                  ; &envptr9229[2]
  %cont7103 = load i64, i64* %envptr9230, align 8                                    ; load; *envptr9230
  %envptr9231 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9232 = getelementptr inbounds i64, i64* %envptr9231, i64 1                  ; &envptr9231[1]
  %k2M$n = load i64, i64* %envptr9232, align 8                                       ; load; *envptr9232
  %arg7502 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %k2M$n, i64 %arg7502)                     ; call prim_vector_45ref
  %arg7504 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7504)                              ; call prim__45
  %arg7507 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %k2M$n, i64 %arg7507, i64 %a7011); call prim_vector_45set_33
  %cloptr9233 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9235 = getelementptr inbounds i64, i64* %cloptr9233, i64 1                    ; &eptr9235[1]
  %eptr9236 = getelementptr inbounds i64, i64* %cloptr9233, i64 2                    ; &eptr9236[2]
  store i64 %cont7103, i64* %eptr9235                                                ; *eptr9235 = %cont7103
  store i64 %oAZ$cc, i64* %eptr9236                                                  ; *eptr9236 = %oAZ$cc
  %eptr9234 = getelementptr inbounds i64, i64* %cloptr9233, i64 0                    ; &cloptr9233[0]
  %f9237 = ptrtoint void(i64,i64,i64)* @lam8444 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9237, i64* %eptr9234                                                   ; store fptr
  %arg7511 = ptrtoint i64* %cloptr9233 to i64                                        ; closure cast; i64* -> i64
  %arg7510 = add i64 0, 0                                                            ; quoted ()
  %cloptr9238 = inttoptr i64 %arg7511 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9238)                                         ; assert function application
  %i0ptr9239 = getelementptr inbounds i64, i64* %cloptr9238, i64 0                   ; &cloptr9238[0]
  %f9241 = load i64, i64* %i0ptr9239, align 8                                        ; load; *i0ptr9239
  %fptr9240 = inttoptr i64 %f9241 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9240(i64 %arg7511, i64 %arg7510, i64 %retprim7108)  ; tail call
  ret void
}


define void @lam8444(i64 %env8445, i64 %_957107, i64 %BzG$_951) {
  %envptr9242 = inttoptr i64 %env8445 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9243 = getelementptr inbounds i64, i64* %envptr9242, i64 2                  ; &envptr9242[2]
  %oAZ$cc = load i64, i64* %envptr9243, align 8                                      ; load; *envptr9243
  %envptr9244 = inttoptr i64 %env8445 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9245 = getelementptr inbounds i64, i64* %envptr9244, i64 1                  ; &envptr9244[1]
  %cont7103 = load i64, i64* %envptr9245, align 8                                    ; load; *envptr9245
  %cloptr9246 = inttoptr i64 %oAZ$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9246)                                         ; assert function application
  %i0ptr9247 = getelementptr inbounds i64, i64* %cloptr9246, i64 0                   ; &cloptr9246[0]
  %f9249 = load i64, i64* %i0ptr9247, align 8                                        ; load; *i0ptr9247
  %fptr9248 = inttoptr i64 %f9249 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9248(i64 %oAZ$cc, i64 %cont7103, i64 %oAZ$cc)       ; tail call
  ret void
}


define void @lam8438(i64 %env8439, i64 %cont7111, i64 %rba$v, i64 %nET$lst) {
  %arg7516 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %xem$lst = call i64 @prim_make_45vector(i64 %arg7516, i64 %nET$lst)                ; call prim_make_45vector
  %cloptr9250 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9251 = getelementptr inbounds i64, i64* %cloptr9250, i64 0                    ; &cloptr9250[0]
  %f9252 = ptrtoint void(i64,i64,i64)* @lam8435 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9252, i64* %eptr9251                                                   ; store fptr
  %arg7519 = ptrtoint i64* %cloptr9250 to i64                                        ; closure cast; i64* -> i64
  %cloptr9253 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9255 = getelementptr inbounds i64, i64* %cloptr9253, i64 1                    ; &eptr9255[1]
  %eptr9256 = getelementptr inbounds i64, i64* %cloptr9253, i64 2                    ; &eptr9256[2]
  %eptr9257 = getelementptr inbounds i64, i64* %cloptr9253, i64 3                    ; &eptr9257[3]
  store i64 %cont7111, i64* %eptr9255                                                ; *eptr9255 = %cont7111
  store i64 %rba$v, i64* %eptr9256                                                   ; *eptr9256 = %rba$v
  store i64 %xem$lst, i64* %eptr9257                                                 ; *eptr9257 = %xem$lst
  %eptr9254 = getelementptr inbounds i64, i64* %cloptr9253, i64 0                    ; &cloptr9253[0]
  %f9258 = ptrtoint void(i64,i64,i64)* @lam8433 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9258, i64* %eptr9254                                                   ; store fptr
  %arg7518 = ptrtoint i64* %cloptr9253 to i64                                        ; closure cast; i64* -> i64
  %cloptr9259 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9261 = getelementptr inbounds i64, i64* %cloptr9259, i64 1                    ; &eptr9261[1]
  %eptr9262 = getelementptr inbounds i64, i64* %cloptr9259, i64 2                    ; &eptr9262[2]
  %eptr9263 = getelementptr inbounds i64, i64* %cloptr9259, i64 3                    ; &eptr9263[3]
  store i64 %cont7111, i64* %eptr9261                                                ; *eptr9261 = %cont7111
  store i64 %rba$v, i64* %eptr9262                                                   ; *eptr9262 = %rba$v
  store i64 %xem$lst, i64* %eptr9263                                                 ; *eptr9263 = %xem$lst
  %eptr9260 = getelementptr inbounds i64, i64* %cloptr9259, i64 0                    ; &cloptr9259[0]
  %f9264 = ptrtoint void(i64,i64,i64)* @lam8420 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9264, i64* %eptr9260                                                   ; store fptr
  %arg7517 = ptrtoint i64* %cloptr9259 to i64                                        ; closure cast; i64* -> i64
  %cloptr9265 = inttoptr i64 %arg7519 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9265)                                         ; assert function application
  %i0ptr9266 = getelementptr inbounds i64, i64* %cloptr9265, i64 0                   ; &cloptr9265[0]
  %f9268 = load i64, i64* %i0ptr9266, align 8                                        ; load; *i0ptr9266
  %fptr9267 = inttoptr i64 %f9268 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9267(i64 %arg7519, i64 %arg7518, i64 %arg7517)      ; tail call
  ret void
}


define void @lam8435(i64 %env8436, i64 %cont7116, i64 %JuQ$u) {
  %cloptr9269 = inttoptr i64 %JuQ$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9269)                                         ; assert function application
  %i0ptr9270 = getelementptr inbounds i64, i64* %cloptr9269, i64 0                   ; &cloptr9269[0]
  %f9272 = load i64, i64* %i0ptr9270, align 8                                        ; load; *i0ptr9270
  %fptr9271 = inttoptr i64 %f9272 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9271(i64 %JuQ$u, i64 %cont7116, i64 %JuQ$u)         ; tail call
  ret void
}


define void @lam8433(i64 %env8434, i64 %_957112, i64 %bkK$cc) {
  %envptr9273 = inttoptr i64 %env8434 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9274 = getelementptr inbounds i64, i64* %envptr9273, i64 3                  ; &envptr9273[3]
  %xem$lst = load i64, i64* %envptr9274, align 8                                     ; load; *envptr9274
  %envptr9275 = inttoptr i64 %env8434 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9276 = getelementptr inbounds i64, i64* %envptr9275, i64 2                  ; &envptr9275[2]
  %rba$v = load i64, i64* %envptr9276, align 8                                       ; load; *envptr9276
  %envptr9277 = inttoptr i64 %env8434 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9278 = getelementptr inbounds i64, i64* %envptr9277, i64 1                  ; &envptr9277[1]
  %cont7111 = load i64, i64* %envptr9278, align 8                                    ; load; *envptr9278
  %arg7523 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7523)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9279 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9279, label %else9281, label %then9280                                   ; if

then9280:
  %arg7527 = add i64 0, 0                                                            ; quoted ()
  %arg7526 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9282 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9282)                                         ; assert function application
  %i0ptr9283 = getelementptr inbounds i64, i64* %cloptr9282, i64 0                   ; &cloptr9282[0]
  %f9285 = load i64, i64* %i0ptr9283, align 8                                        ; load; *i0ptr9283
  %fptr9284 = inttoptr i64 %f9285 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9284(i64 %cont7111, i64 %arg7527, i64 %arg7526)     ; tail call
  ret void

else9281:
  %arg7529 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7529)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %rba$v)                             ; call prim_eqv_63
  %cmp9286 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9286, label %else9288, label %then9287                                   ; if

then9287:
  %arg7534 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7113 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7534)             ; call prim_vector_45ref
  %arg7537 = add i64 0, 0                                                            ; quoted ()
  %cloptr9289 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9289)                                         ; assert function application
  %i0ptr9290 = getelementptr inbounds i64, i64* %cloptr9289, i64 0                   ; &cloptr9289[0]
  %f9292 = load i64, i64* %i0ptr9290, align 8                                        ; load; *i0ptr9290
  %fptr9291 = inttoptr i64 %f9292 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9291(i64 %cont7111, i64 %arg7537, i64 %retprim7113) ; tail call
  ret void

else9288:
  %arg7539 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7539)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7543 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7115 = call i64 @prim_vector_45set_33(i64 %xem$lst, i64 %arg7543, i64 %a7018); call prim_vector_45set_33
  %cloptr9293 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9295 = getelementptr inbounds i64, i64* %cloptr9293, i64 1                    ; &eptr9295[1]
  %eptr9296 = getelementptr inbounds i64, i64* %cloptr9293, i64 2                    ; &eptr9296[2]
  store i64 %cont7111, i64* %eptr9295                                                ; *eptr9295 = %cont7111
  store i64 %bkK$cc, i64* %eptr9296                                                  ; *eptr9296 = %bkK$cc
  %eptr9294 = getelementptr inbounds i64, i64* %cloptr9293, i64 0                    ; &cloptr9293[0]
  %f9297 = ptrtoint void(i64,i64,i64)* @lam8427 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9297, i64* %eptr9294                                                   ; store fptr
  %arg7547 = ptrtoint i64* %cloptr9293 to i64                                        ; closure cast; i64* -> i64
  %arg7546 = add i64 0, 0                                                            ; quoted ()
  %cloptr9298 = inttoptr i64 %arg7547 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9298)                                         ; assert function application
  %i0ptr9299 = getelementptr inbounds i64, i64* %cloptr9298, i64 0                   ; &cloptr9298[0]
  %f9301 = load i64, i64* %i0ptr9299, align 8                                        ; load; *i0ptr9299
  %fptr9300 = inttoptr i64 %f9301 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9300(i64 %arg7547, i64 %arg7546, i64 %retprim7115)  ; tail call
  ret void
}


define void @lam8427(i64 %env8428, i64 %_957114, i64 %oQO$_950) {
  %envptr9302 = inttoptr i64 %env8428 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9303 = getelementptr inbounds i64, i64* %envptr9302, i64 2                  ; &envptr9302[2]
  %bkK$cc = load i64, i64* %envptr9303, align 8                                      ; load; *envptr9303
  %envptr9304 = inttoptr i64 %env8428 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9305 = getelementptr inbounds i64, i64* %envptr9304, i64 1                  ; &envptr9304[1]
  %cont7111 = load i64, i64* %envptr9305, align 8                                    ; load; *envptr9305
  %cloptr9306 = inttoptr i64 %bkK$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9306)                                         ; assert function application
  %i0ptr9307 = getelementptr inbounds i64, i64* %cloptr9306, i64 0                   ; &cloptr9306[0]
  %f9309 = load i64, i64* %i0ptr9307, align 8                                        ; load; *i0ptr9307
  %fptr9308 = inttoptr i64 %f9309 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9308(i64 %bkK$cc, i64 %cont7111, i64 %bkK$cc)       ; tail call
  ret void
}


define void @lam8420(i64 %env8421, i64 %_957112, i64 %bkK$cc) {
  %envptr9310 = inttoptr i64 %env8421 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9311 = getelementptr inbounds i64, i64* %envptr9310, i64 3                  ; &envptr9310[3]
  %xem$lst = load i64, i64* %envptr9311, align 8                                     ; load; *envptr9311
  %envptr9312 = inttoptr i64 %env8421 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9313 = getelementptr inbounds i64, i64* %envptr9312, i64 2                  ; &envptr9312[2]
  %rba$v = load i64, i64* %envptr9313, align 8                                       ; load; *envptr9313
  %envptr9314 = inttoptr i64 %env8421 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9315 = getelementptr inbounds i64, i64* %envptr9314, i64 1                  ; &envptr9314[1]
  %cont7111 = load i64, i64* %envptr9315, align 8                                    ; load; *envptr9315
  %arg7551 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7551)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9316 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9316, label %else9318, label %then9317                                   ; if

then9317:
  %arg7555 = add i64 0, 0                                                            ; quoted ()
  %arg7554 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9319 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9319)                                         ; assert function application
  %i0ptr9320 = getelementptr inbounds i64, i64* %cloptr9319, i64 0                   ; &cloptr9319[0]
  %f9322 = load i64, i64* %i0ptr9320, align 8                                        ; load; *i0ptr9320
  %fptr9321 = inttoptr i64 %f9322 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9321(i64 %cont7111, i64 %arg7555, i64 %arg7554)     ; tail call
  ret void

else9318:
  %arg7557 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7557)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %rba$v)                             ; call prim_eqv_63
  %cmp9323 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9323, label %else9325, label %then9324                                   ; if

then9324:
  %arg7562 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7113 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7562)             ; call prim_vector_45ref
  %arg7565 = add i64 0, 0                                                            ; quoted ()
  %cloptr9326 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9326)                                         ; assert function application
  %i0ptr9327 = getelementptr inbounds i64, i64* %cloptr9326, i64 0                   ; &cloptr9326[0]
  %f9329 = load i64, i64* %i0ptr9327, align 8                                        ; load; *i0ptr9327
  %fptr9328 = inttoptr i64 %f9329 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9328(i64 %cont7111, i64 %arg7565, i64 %retprim7113) ; tail call
  ret void

else9325:
  %arg7567 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %xem$lst, i64 %arg7567)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7571 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7115 = call i64 @prim_vector_45set_33(i64 %xem$lst, i64 %arg7571, i64 %a7018); call prim_vector_45set_33
  %cloptr9330 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9332 = getelementptr inbounds i64, i64* %cloptr9330, i64 1                    ; &eptr9332[1]
  %eptr9333 = getelementptr inbounds i64, i64* %cloptr9330, i64 2                    ; &eptr9333[2]
  store i64 %cont7111, i64* %eptr9332                                                ; *eptr9332 = %cont7111
  store i64 %bkK$cc, i64* %eptr9333                                                  ; *eptr9333 = %bkK$cc
  %eptr9331 = getelementptr inbounds i64, i64* %cloptr9330, i64 0                    ; &cloptr9330[0]
  %f9334 = ptrtoint void(i64,i64,i64)* @lam8414 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9334, i64* %eptr9331                                                   ; store fptr
  %arg7575 = ptrtoint i64* %cloptr9330 to i64                                        ; closure cast; i64* -> i64
  %arg7574 = add i64 0, 0                                                            ; quoted ()
  %cloptr9335 = inttoptr i64 %arg7575 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9335)                                         ; assert function application
  %i0ptr9336 = getelementptr inbounds i64, i64* %cloptr9335, i64 0                   ; &cloptr9335[0]
  %f9338 = load i64, i64* %i0ptr9336, align 8                                        ; load; *i0ptr9336
  %fptr9337 = inttoptr i64 %f9338 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9337(i64 %arg7575, i64 %arg7574, i64 %retprim7115)  ; tail call
  ret void
}


define void @lam8414(i64 %env8415, i64 %_957114, i64 %oQO$_950) {
  %envptr9339 = inttoptr i64 %env8415 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9340 = getelementptr inbounds i64, i64* %envptr9339, i64 2                  ; &envptr9339[2]
  %bkK$cc = load i64, i64* %envptr9340, align 8                                      ; load; *envptr9340
  %envptr9341 = inttoptr i64 %env8415 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9342 = getelementptr inbounds i64, i64* %envptr9341, i64 1                  ; &envptr9341[1]
  %cont7111 = load i64, i64* %envptr9342, align 8                                    ; load; *envptr9342
  %cloptr9343 = inttoptr i64 %bkK$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9343)                                         ; assert function application
  %i0ptr9344 = getelementptr inbounds i64, i64* %cloptr9343, i64 0                   ; &cloptr9343[0]
  %f9346 = load i64, i64* %i0ptr9344, align 8                                        ; load; *i0ptr9344
  %fptr9345 = inttoptr i64 %f9346 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9345(i64 %bkK$cc, i64 %cont7111, i64 %bkK$cc)       ; tail call
  ret void
}


define void @lam8407(i64 %env8408, i64 %HvV$args7118) {
  %envptr9347 = inttoptr i64 %env8408 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9348 = getelementptr inbounds i64, i64* %envptr9347, i64 1                  ; &envptr9347[1]
  %NLF$_37foldl1 = load i64, i64* %envptr9348, align 8                               ; load; *envptr9348
  %cont7117 = call i64 @prim_car(i64 %HvV$args7118)                                  ; call prim_car
  %HvV$args = call i64 @prim_cdr(i64 %HvV$args7118)                                  ; call prim_cdr
  %a7019 = call i64 @prim_null_63(i64 %HvV$args)                                     ; call prim_null_63
  %cmp9349 = icmp eq i64 %a7019, 15                                                  ; false?
  br i1 %cmp9349, label %else9351, label %then9350                                   ; if

then9350:
  %arg7583 = add i64 0, 0                                                            ; quoted ()
  %arg7582 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr9352 = inttoptr i64 %cont7117 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9352)                                         ; assert function application
  %i0ptr9353 = getelementptr inbounds i64, i64* %cloptr9352, i64 0                   ; &cloptr9352[0]
  %f9355 = load i64, i64* %i0ptr9353, align 8                                        ; load; *i0ptr9353
  %fptr9354 = inttoptr i64 %f9355 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9354(i64 %cont7117, i64 %arg7583, i64 %arg7582)     ; tail call
  ret void

else9351:
  %a7020 = call i64 @prim_cdr(i64 %HvV$args)                                         ; call prim_cdr
  %a7021 = call i64 @prim_null_63(i64 %a7020)                                        ; call prim_null_63
  %cmp9356 = icmp eq i64 %a7021, 15                                                  ; false?
  br i1 %cmp9356, label %else9358, label %then9357                                   ; if

then9357:
  %retprim7119 = call i64 @prim_car(i64 %HvV$args)                                   ; call prim_car
  %arg7589 = add i64 0, 0                                                            ; quoted ()
  %cloptr9359 = inttoptr i64 %cont7117 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9359)                                         ; assert function application
  %i0ptr9360 = getelementptr inbounds i64, i64* %cloptr9359, i64 0                   ; &cloptr9359[0]
  %f9362 = load i64, i64* %i0ptr9360, align 8                                        ; load; *i0ptr9360
  %fptr9361 = inttoptr i64 %f9362 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9361(i64 %cont7117, i64 %arg7589, i64 %retprim7119) ; tail call
  ret void

else9358:
  %a7022 = call i64 @prim_car(i64 %HvV$args)                                         ; call prim_car
  %a7023 = call i64 @prim_cdr(i64 %HvV$args)                                         ; call prim_cdr
  %cloptr9363 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9364 = getelementptr inbounds i64, i64* %cloptr9363, i64 0                    ; &cloptr9363[0]
  %f9365 = ptrtoint void(i64,i64,i64,i64)* @lam8405 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9365, i64* %eptr9364                                                   ; store fptr
  %arg7595 = ptrtoint i64* %cloptr9363 to i64                                        ; closure cast; i64* -> i64
  %cloptr9366 = inttoptr i64 %NLF$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9366)                                         ; assert function application
  %i0ptr9367 = getelementptr inbounds i64, i64* %cloptr9366, i64 0                   ; &cloptr9366[0]
  %f9369 = load i64, i64* %i0ptr9367, align 8                                        ; load; *i0ptr9367
  %fptr9368 = inttoptr i64 %f9369 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9368(i64 %NLF$_37foldl1, i64 %cont7117, i64 %arg7595, i64 %a7022, i64 %a7023); tail call
  ret void
}


define void @lam8405(i64 %env8406, i64 %cont7120, i64 %gsb$n, i64 %IjC$v) {
  %retprim7121 = call i64 @prim__47(i64 %IjC$v, i64 %gsb$n)                          ; call prim__47
  %arg7601 = add i64 0, 0                                                            ; quoted ()
  %cloptr9370 = inttoptr i64 %cont7120 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9370)                                         ; assert function application
  %i0ptr9371 = getelementptr inbounds i64, i64* %cloptr9370, i64 0                   ; &cloptr9370[0]
  %f9373 = load i64, i64* %i0ptr9371, align 8                                        ; load; *i0ptr9371
  %fptr9372 = inttoptr i64 %f9373 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9372(i64 %cont7120, i64 %arg7601, i64 %retprim7121) ; tail call
  ret void
}


define void @lam8399(i64 %env8400, i64 %cont7122, i64 %r7Z$x) {
  %retprim7123 = call i64 @prim_car(i64 %r7Z$x)                                      ; call prim_car
  %arg7605 = add i64 0, 0                                                            ; quoted ()
  %cloptr9374 = inttoptr i64 %cont7122 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9374)                                         ; assert function application
  %i0ptr9375 = getelementptr inbounds i64, i64* %cloptr9374, i64 0                   ; &cloptr9374[0]
  %f9377 = load i64, i64* %i0ptr9375, align 8                                        ; load; *i0ptr9375
  %fptr9376 = inttoptr i64 %f9377 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9376(i64 %cont7122, i64 %arg7605, i64 %retprim7123) ; tail call
  ret void
}


define void @lam8396(i64 %env8397, i64 %cont7124, i64 %VRz$x) {
  %a7024 = call i64 @prim_cdr(i64 %VRz$x)                                            ; call prim_cdr
  %retprim7125 = call i64 @prim_car(i64 %a7024)                                      ; call prim_car
  %arg7610 = add i64 0, 0                                                            ; quoted ()
  %cloptr9378 = inttoptr i64 %cont7124 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9378)                                         ; assert function application
  %i0ptr9379 = getelementptr inbounds i64, i64* %cloptr9378, i64 0                   ; &cloptr9378[0]
  %f9381 = load i64, i64* %i0ptr9379, align 8                                        ; load; *i0ptr9379
  %fptr9380 = inttoptr i64 %f9381 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9380(i64 %cont7124, i64 %arg7610, i64 %retprim7125) ; tail call
  ret void
}


define void @lam8393(i64 %env8394, i64 %cont7126, i64 %NNR$x) {
  %a7025 = call i64 @prim_cdr(i64 %NNR$x)                                            ; call prim_cdr
  %a7026 = call i64 @prim_cdr(i64 %a7025)                                            ; call prim_cdr
  %retprim7127 = call i64 @prim_car(i64 %a7026)                                      ; call prim_car
  %arg7616 = add i64 0, 0                                                            ; quoted ()
  %cloptr9382 = inttoptr i64 %cont7126 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9382)                                         ; assert function application
  %i0ptr9383 = getelementptr inbounds i64, i64* %cloptr9382, i64 0                   ; &cloptr9382[0]
  %f9385 = load i64, i64* %i0ptr9383, align 8                                        ; load; *i0ptr9383
  %fptr9384 = inttoptr i64 %f9385 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9384(i64 %cont7126, i64 %arg7616, i64 %retprim7127) ; tail call
  ret void
}


define void @lam8390(i64 %env8391, i64 %cont7128, i64 %YFY$x) {
  %a7027 = call i64 @prim_cdr(i64 %YFY$x)                                            ; call prim_cdr
  %a7028 = call i64 @prim_cdr(i64 %a7027)                                            ; call prim_cdr
  %a7029 = call i64 @prim_cdr(i64 %a7028)                                            ; call prim_cdr
  %retprim7129 = call i64 @prim_car(i64 %a7029)                                      ; call prim_car
  %arg7623 = add i64 0, 0                                                            ; quoted ()
  %cloptr9386 = inttoptr i64 %cont7128 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9386)                                         ; assert function application
  %i0ptr9387 = getelementptr inbounds i64, i64* %cloptr9386, i64 0                   ; &cloptr9386[0]
  %f9389 = load i64, i64* %i0ptr9387, align 8                                        ; load; *i0ptr9387
  %fptr9388 = inttoptr i64 %f9389 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9388(i64 %cont7128, i64 %arg7623, i64 %retprim7129) ; tail call
  ret void
}


define void @lam8387(i64 %env8388, i64 %cont7130, i64 %Jro$p) {
  %a7030 = call i64 @prim_cons_63(i64 %Jro$p)                                        ; call prim_cons_63
  %cmp9390 = icmp eq i64 %a7030, 15                                                  ; false?
  br i1 %cmp9390, label %else9392, label %then9391                                   ; if

then9391:
  %a7031 = call i64 @prim_car(i64 %Jro$p)                                            ; call prim_car
  %arg7627 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym9393, i32 0, i32 0)); quoted string
  %retprim7131 = call i64 @prim_eq_63(i64 %a7031, i64 %arg7627)                      ; call prim_eq_63
  %arg7630 = add i64 0, 0                                                            ; quoted ()
  %cloptr9394 = inttoptr i64 %cont7130 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9394)                                         ; assert function application
  %i0ptr9395 = getelementptr inbounds i64, i64* %cloptr9394, i64 0                   ; &cloptr9394[0]
  %f9397 = load i64, i64* %i0ptr9395, align 8                                        ; load; *i0ptr9395
  %fptr9396 = inttoptr i64 %f9397 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9396(i64 %cont7130, i64 %arg7630, i64 %retprim7131) ; tail call
  ret void

else9392:
  %arg7633 = add i64 0, 0                                                            ; quoted ()
  %arg7632 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9398 = inttoptr i64 %cont7130 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9398)                                         ; assert function application
  %i0ptr9399 = getelementptr inbounds i64, i64* %cloptr9398, i64 0                   ; &cloptr9398[0]
  %f9401 = load i64, i64* %i0ptr9399, align 8                                        ; load; *i0ptr9399
  %fptr9400 = inttoptr i64 %f9401 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9400(i64 %cont7130, i64 %arg7633, i64 %arg7632)     ; tail call
  ret void
}


define void @lam8381(i64 %env8382, i64 %crb$lst7177) {
  %cont7176 = call i64 @prim_car(i64 %crb$lst7177)                                   ; call prim_car
  %crb$lst = call i64 @prim_cdr(i64 %crb$lst7177)                                    ; call prim_cdr
  %arg7640 = add i64 0, 0                                                            ; quoted ()
  %cloptr9402 = inttoptr i64 %cont7176 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9402)                                         ; assert function application
  %i0ptr9403 = getelementptr inbounds i64, i64* %cloptr9402, i64 0                   ; &cloptr9402[0]
  %f9405 = load i64, i64* %i0ptr9403, align 8                                        ; load; *i0ptr9403
  %fptr9404 = inttoptr i64 %f9405 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9404(i64 %cont7176, i64 %arg7640, i64 %crb$lst)     ; tail call
  ret void
}


define void @lam8378(i64 %env8379, i64 %_957132, i64 %ps5$_37raise_45handler) {
  %envptr9406 = inttoptr i64 %env8379 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9407 = getelementptr inbounds i64, i64* %envptr9406, i64 3                  ; &envptr9406[3]
  %kF8$_37drop = load i64, i64* %envptr9407, align 8                                 ; load; *envptr9407
  %envptr9408 = inttoptr i64 %env8379 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9409 = getelementptr inbounds i64, i64* %envptr9408, i64 2                  ; &envptr9408[2]
  %m3b$_37_62 = load i64, i64* %envptr9409, align 8                                  ; load; *envptr9409
  %envptr9410 = inttoptr i64 %env8379 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9411 = getelementptr inbounds i64, i64* %envptr9410, i64 1                  ; &envptr9410[1]
  %dYl$_37length = load i64, i64* %envptr9411, align 8                               ; load; *envptr9411
  %cloptr9412 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9413 = getelementptr inbounds i64, i64* %cloptr9412, i64 0                    ; &cloptr9412[0]
  %f9414 = ptrtoint void(i64,i64)* @lam8376 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9414, i64* %eptr9413                                                   ; store fptr
  %arg7643 = ptrtoint i64* %cloptr9412 to i64                                        ; closure cast; i64* -> i64
  %cloptr9415 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9417 = getelementptr inbounds i64, i64* %cloptr9415, i64 1                    ; &eptr9417[1]
  %eptr9418 = getelementptr inbounds i64, i64* %cloptr9415, i64 2                    ; &eptr9418[2]
  %eptr9419 = getelementptr inbounds i64, i64* %cloptr9415, i64 3                    ; &eptr9419[3]
  store i64 %dYl$_37length, i64* %eptr9417                                           ; *eptr9417 = %dYl$_37length
  store i64 %m3b$_37_62, i64* %eptr9418                                              ; *eptr9418 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9419                                             ; *eptr9419 = %kF8$_37drop
  %eptr9416 = getelementptr inbounds i64, i64* %cloptr9415, i64 0                    ; &cloptr9415[0]
  %f9420 = ptrtoint void(i64,i64,i64)* @lam8373 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9420, i64* %eptr9416                                                   ; store fptr
  %arg7642 = ptrtoint i64* %cloptr9415 to i64                                        ; closure cast; i64* -> i64
  %rva8120 = add i64 0, 0                                                            ; quoted ()
  %rva8119 = call i64 @prim_cons(i64 %arg7642, i64 %rva8120)                         ; call prim_cons
  %cloptr9421 = inttoptr i64 %arg7643 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9421)                                         ; assert function application
  %i0ptr9422 = getelementptr inbounds i64, i64* %cloptr9421, i64 0                   ; &cloptr9421[0]
  %f9424 = load i64, i64* %i0ptr9422, align 8                                        ; load; *i0ptr9422
  %fptr9423 = inttoptr i64 %f9424 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9423(i64 %arg7643, i64 %rva8119)                    ; tail call
  ret void
}


define void @lam8376(i64 %env8377, i64 %Kem$lst7175) {
  %cont7174 = call i64 @prim_car(i64 %Kem$lst7175)                                   ; call prim_car
  %Kem$lst = call i64 @prim_cdr(i64 %Kem$lst7175)                                    ; call prim_cdr
  %arg7647 = add i64 0, 0                                                            ; quoted ()
  %cloptr9425 = inttoptr i64 %cont7174 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9425)                                         ; assert function application
  %i0ptr9426 = getelementptr inbounds i64, i64* %cloptr9425, i64 0                   ; &cloptr9425[0]
  %f9428 = load i64, i64* %i0ptr9426, align 8                                        ; load; *i0ptr9426
  %fptr9427 = inttoptr i64 %f9428 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9427(i64 %cont7174, i64 %arg7647, i64 %Kem$lst)     ; tail call
  ret void
}


define void @lam8373(i64 %env8374, i64 %_957172, i64 %a7032) {
  %envptr9429 = inttoptr i64 %env8374 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9430 = getelementptr inbounds i64, i64* %envptr9429, i64 3                  ; &envptr9429[3]
  %kF8$_37drop = load i64, i64* %envptr9430, align 8                                 ; load; *envptr9430
  %envptr9431 = inttoptr i64 %env8374 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9432 = getelementptr inbounds i64, i64* %envptr9431, i64 2                  ; &envptr9431[2]
  %m3b$_37_62 = load i64, i64* %envptr9432, align 8                                  ; load; *envptr9432
  %envptr9433 = inttoptr i64 %env8374 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9434 = getelementptr inbounds i64, i64* %envptr9433, i64 1                  ; &envptr9433[1]
  %dYl$_37length = load i64, i64* %envptr9434, align 8                               ; load; *envptr9434
  %arg7650 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7173 = call i64 @prim_make_45vector(i64 %arg7650, i64 %a7032)              ; call prim_make_45vector
  %cloptr9435 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9437 = getelementptr inbounds i64, i64* %cloptr9435, i64 1                    ; &eptr9437[1]
  %eptr9438 = getelementptr inbounds i64, i64* %cloptr9435, i64 2                    ; &eptr9438[2]
  %eptr9439 = getelementptr inbounds i64, i64* %cloptr9435, i64 3                    ; &eptr9439[3]
  store i64 %dYl$_37length, i64* %eptr9437                                           ; *eptr9437 = %dYl$_37length
  store i64 %m3b$_37_62, i64* %eptr9438                                              ; *eptr9438 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9439                                             ; *eptr9439 = %kF8$_37drop
  %eptr9436 = getelementptr inbounds i64, i64* %cloptr9435, i64 0                    ; &cloptr9435[0]
  %f9440 = ptrtoint void(i64,i64,i64)* @lam8370 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9440, i64* %eptr9436                                                   ; store fptr
  %arg7653 = ptrtoint i64* %cloptr9435 to i64                                        ; closure cast; i64* -> i64
  %arg7652 = add i64 0, 0                                                            ; quoted ()
  %cloptr9441 = inttoptr i64 %arg7653 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9441)                                         ; assert function application
  %i0ptr9442 = getelementptr inbounds i64, i64* %cloptr9441, i64 0                   ; &cloptr9441[0]
  %f9444 = load i64, i64* %i0ptr9442, align 8                                        ; load; *i0ptr9442
  %fptr9443 = inttoptr i64 %f9444 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9443(i64 %arg7653, i64 %arg7652, i64 %retprim7173)  ; tail call
  ret void
}


define void @lam8370(i64 %env8371, i64 %_957133, i64 %GDH$_37wind_45stack) {
  %envptr9445 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9446 = getelementptr inbounds i64, i64* %envptr9445, i64 3                  ; &envptr9445[3]
  %kF8$_37drop = load i64, i64* %envptr9446, align 8                                 ; load; *envptr9446
  %envptr9447 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9448 = getelementptr inbounds i64, i64* %envptr9447, i64 2                  ; &envptr9447[2]
  %m3b$_37_62 = load i64, i64* %envptr9448, align 8                                  ; load; *envptr9448
  %envptr9449 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9450 = getelementptr inbounds i64, i64* %envptr9449, i64 1                  ; &envptr9449[1]
  %dYl$_37length = load i64, i64* %envptr9450, align 8                               ; load; *envptr9450
  %cloptr9451 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9453 = getelementptr inbounds i64, i64* %cloptr9451, i64 1                    ; &eptr9453[1]
  %eptr9454 = getelementptr inbounds i64, i64* %cloptr9451, i64 2                    ; &eptr9454[2]
  %eptr9455 = getelementptr inbounds i64, i64* %cloptr9451, i64 3                    ; &eptr9455[3]
  store i64 %dYl$_37length, i64* %eptr9453                                           ; *eptr9453 = %dYl$_37length
  store i64 %m3b$_37_62, i64* %eptr9454                                              ; *eptr9454 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9455                                             ; *eptr9455 = %kF8$_37drop
  %eptr9452 = getelementptr inbounds i64, i64* %cloptr9451, i64 0                    ; &cloptr9451[0]
  %f9456 = ptrtoint void(i64,i64,i64,i64)* @lam8368 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9456, i64* %eptr9452                                                   ; store fptr
  %nO7$_37common_45tail = ptrtoint i64* %cloptr9451 to i64                           ; closure cast; i64* -> i64
  %cloptr9457 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9459 = getelementptr inbounds i64, i64* %cloptr9457, i64 1                    ; &eptr9459[1]
  %eptr9460 = getelementptr inbounds i64, i64* %cloptr9457, i64 2                    ; &eptr9460[2]
  store i64 %GDH$_37wind_45stack, i64* %eptr9459                                     ; *eptr9459 = %GDH$_37wind_45stack
  store i64 %nO7$_37common_45tail, i64* %eptr9460                                    ; *eptr9460 = %nO7$_37common_45tail
  %eptr9458 = getelementptr inbounds i64, i64* %cloptr9457, i64 0                    ; &cloptr9457[0]
  %f9461 = ptrtoint void(i64,i64,i64)* @lam8326 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9461, i64* %eptr9458                                                   ; store fptr
  %yHi$_37do_45wind = ptrtoint i64* %cloptr9457 to i64                               ; closure cast; i64* -> i64
  %arg7839 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7838 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7064 = call i64 @prim__43(i64 %arg7839, i64 %arg7838)                            ; call prim__43
  %cloptr9462 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9463 = getelementptr inbounds i64, i64* %cloptr9462, i64 0                    ; &cloptr9462[0]
  %f9464 = ptrtoint void(i64,i64)* @lam8274 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9464, i64* %eptr9463                                                   ; store fptr
  %arg7845 = ptrtoint i64* %cloptr9462 to i64                                        ; closure cast; i64* -> i64
  %cloptr9465 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9466 = getelementptr inbounds i64, i64* %cloptr9465, i64 0                    ; &cloptr9465[0]
  %f9467 = ptrtoint void(i64,i64)* @lam8270 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9467, i64* %eptr9466                                                   ; store fptr
  %arg7844 = ptrtoint i64* %cloptr9465 to i64                                        ; closure cast; i64* -> i64
  %arg7843 = call i64 @const_init_symbol(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @sym9468, i32 0, i32 0)); quoted string
  %arg7842 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7840 = call i64 @const_init_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str9469, i32 0, i32 0)); quoted string
  %rva8118 = add i64 0, 0                                                            ; quoted ()
  %rva8117 = call i64 @prim_cons(i64 %arg7840, i64 %rva8118)                         ; call prim_cons
  %rva8116 = call i64 @prim_cons(i64 %a7064, i64 %rva8117)                           ; call prim_cons
  %rva8115 = call i64 @prim_cons(i64 %arg7842, i64 %rva8116)                         ; call prim_cons
  %rva8114 = call i64 @prim_cons(i64 %arg7843, i64 %rva8115)                         ; call prim_cons
  %rva8113 = call i64 @prim_cons(i64 %arg7844, i64 %rva8114)                         ; call prim_cons
  %cloptr9470 = inttoptr i64 %arg7845 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9470)                                         ; assert function application
  %i0ptr9471 = getelementptr inbounds i64, i64* %cloptr9470, i64 0                   ; &cloptr9470[0]
  %f9473 = load i64, i64* %i0ptr9471, align 8                                        ; load; *i0ptr9471
  %fptr9472 = inttoptr i64 %f9473 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9472(i64 %arg7845, i64 %rva8113)                    ; tail call
  ret void
}


define void @lam8368(i64 %env8369, i64 %cont7134, i64 %Kui$x, i64 %WiU$y) {
  %envptr9474 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9475 = getelementptr inbounds i64, i64* %envptr9474, i64 3                  ; &envptr9474[3]
  %kF8$_37drop = load i64, i64* %envptr9475, align 8                                 ; load; *envptr9475
  %envptr9476 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9477 = getelementptr inbounds i64, i64* %envptr9476, i64 2                  ; &envptr9476[2]
  %m3b$_37_62 = load i64, i64* %envptr9477, align 8                                  ; load; *envptr9477
  %envptr9478 = inttoptr i64 %env8369 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9479 = getelementptr inbounds i64, i64* %envptr9478, i64 1                  ; &envptr9478[1]
  %dYl$_37length = load i64, i64* %envptr9479, align 8                               ; load; *envptr9479
  %cloptr9480 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9482 = getelementptr inbounds i64, i64* %cloptr9480, i64 1                    ; &eptr9482[1]
  %eptr9483 = getelementptr inbounds i64, i64* %cloptr9480, i64 2                    ; &eptr9483[2]
  %eptr9484 = getelementptr inbounds i64, i64* %cloptr9480, i64 3                    ; &eptr9484[3]
  %eptr9485 = getelementptr inbounds i64, i64* %cloptr9480, i64 4                    ; &eptr9485[4]
  %eptr9486 = getelementptr inbounds i64, i64* %cloptr9480, i64 5                    ; &eptr9486[5]
  %eptr9487 = getelementptr inbounds i64, i64* %cloptr9480, i64 6                    ; &eptr9487[6]
  store i64 %dYl$_37length, i64* %eptr9482                                           ; *eptr9482 = %dYl$_37length
  store i64 %m3b$_37_62, i64* %eptr9483                                              ; *eptr9483 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9484                                             ; *eptr9484 = %kF8$_37drop
  store i64 %cont7134, i64* %eptr9485                                                ; *eptr9485 = %cont7134
  store i64 %WiU$y, i64* %eptr9486                                                   ; *eptr9486 = %WiU$y
  store i64 %Kui$x, i64* %eptr9487                                                   ; *eptr9487 = %Kui$x
  %eptr9481 = getelementptr inbounds i64, i64* %cloptr9480, i64 0                    ; &cloptr9480[0]
  %f9488 = ptrtoint void(i64,i64,i64)* @lam8366 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9488, i64* %eptr9481                                                   ; store fptr
  %arg7655 = ptrtoint i64* %cloptr9480 to i64                                        ; closure cast; i64* -> i64
  %cloptr9489 = inttoptr i64 %dYl$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9489)                                         ; assert function application
  %i0ptr9490 = getelementptr inbounds i64, i64* %cloptr9489, i64 0                   ; &cloptr9489[0]
  %f9492 = load i64, i64* %i0ptr9490, align 8                                        ; load; *i0ptr9490
  %fptr9491 = inttoptr i64 %f9492 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9491(i64 %dYl$_37length, i64 %arg7655, i64 %Kui$x)  ; tail call
  ret void
}


define void @lam8366(i64 %env8367, i64 %_957135, i64 %yeW$lx) {
  %envptr9493 = inttoptr i64 %env8367 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9494 = getelementptr inbounds i64, i64* %envptr9493, i64 6                  ; &envptr9493[6]
  %Kui$x = load i64, i64* %envptr9494, align 8                                       ; load; *envptr9494
  %envptr9495 = inttoptr i64 %env8367 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9496 = getelementptr inbounds i64, i64* %envptr9495, i64 5                  ; &envptr9495[5]
  %WiU$y = load i64, i64* %envptr9496, align 8                                       ; load; *envptr9496
  %envptr9497 = inttoptr i64 %env8367 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9498 = getelementptr inbounds i64, i64* %envptr9497, i64 4                  ; &envptr9497[4]
  %cont7134 = load i64, i64* %envptr9498, align 8                                    ; load; *envptr9498
  %envptr9499 = inttoptr i64 %env8367 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9500 = getelementptr inbounds i64, i64* %envptr9499, i64 3                  ; &envptr9499[3]
  %kF8$_37drop = load i64, i64* %envptr9500, align 8                                 ; load; *envptr9500
  %envptr9501 = inttoptr i64 %env8367 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9502 = getelementptr inbounds i64, i64* %envptr9501, i64 2                  ; &envptr9501[2]
  %m3b$_37_62 = load i64, i64* %envptr9502, align 8                                  ; load; *envptr9502
  %envptr9503 = inttoptr i64 %env8367 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9504 = getelementptr inbounds i64, i64* %envptr9503, i64 1                  ; &envptr9503[1]
  %dYl$_37length = load i64, i64* %envptr9504, align 8                               ; load; *envptr9504
  %cloptr9505 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9507 = getelementptr inbounds i64, i64* %cloptr9505, i64 1                    ; &eptr9507[1]
  %eptr9508 = getelementptr inbounds i64, i64* %cloptr9505, i64 2                    ; &eptr9508[2]
  %eptr9509 = getelementptr inbounds i64, i64* %cloptr9505, i64 3                    ; &eptr9509[3]
  %eptr9510 = getelementptr inbounds i64, i64* %cloptr9505, i64 4                    ; &eptr9510[4]
  %eptr9511 = getelementptr inbounds i64, i64* %cloptr9505, i64 5                    ; &eptr9511[5]
  %eptr9512 = getelementptr inbounds i64, i64* %cloptr9505, i64 6                    ; &eptr9512[6]
  store i64 %m3b$_37_62, i64* %eptr9507                                              ; *eptr9507 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9508                                             ; *eptr9508 = %kF8$_37drop
  store i64 %yeW$lx, i64* %eptr9509                                                  ; *eptr9509 = %yeW$lx
  store i64 %cont7134, i64* %eptr9510                                                ; *eptr9510 = %cont7134
  store i64 %WiU$y, i64* %eptr9511                                                   ; *eptr9511 = %WiU$y
  store i64 %Kui$x, i64* %eptr9512                                                   ; *eptr9512 = %Kui$x
  %eptr9506 = getelementptr inbounds i64, i64* %cloptr9505, i64 0                    ; &cloptr9505[0]
  %f9513 = ptrtoint void(i64,i64,i64)* @lam8364 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9513, i64* %eptr9506                                                   ; store fptr
  %arg7658 = ptrtoint i64* %cloptr9505 to i64                                        ; closure cast; i64* -> i64
  %cloptr9514 = inttoptr i64 %dYl$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9514)                                         ; assert function application
  %i0ptr9515 = getelementptr inbounds i64, i64* %cloptr9514, i64 0                   ; &cloptr9514[0]
  %f9517 = load i64, i64* %i0ptr9515, align 8                                        ; load; *i0ptr9515
  %fptr9516 = inttoptr i64 %f9517 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9516(i64 %dYl$_37length, i64 %arg7658, i64 %WiU$y)  ; tail call
  ret void
}


define void @lam8364(i64 %env8365, i64 %_957136, i64 %lEq$ly) {
  %envptr9518 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9519 = getelementptr inbounds i64, i64* %envptr9518, i64 6                  ; &envptr9518[6]
  %Kui$x = load i64, i64* %envptr9519, align 8                                       ; load; *envptr9519
  %envptr9520 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9521 = getelementptr inbounds i64, i64* %envptr9520, i64 5                  ; &envptr9520[5]
  %WiU$y = load i64, i64* %envptr9521, align 8                                       ; load; *envptr9521
  %envptr9522 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9523 = getelementptr inbounds i64, i64* %envptr9522, i64 4                  ; &envptr9522[4]
  %cont7134 = load i64, i64* %envptr9523, align 8                                    ; load; *envptr9523
  %envptr9524 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9525 = getelementptr inbounds i64, i64* %envptr9524, i64 3                  ; &envptr9524[3]
  %yeW$lx = load i64, i64* %envptr9525, align 8                                      ; load; *envptr9525
  %envptr9526 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9527 = getelementptr inbounds i64, i64* %envptr9526, i64 2                  ; &envptr9526[2]
  %kF8$_37drop = load i64, i64* %envptr9527, align 8                                 ; load; *envptr9527
  %envptr9528 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9529 = getelementptr inbounds i64, i64* %envptr9528, i64 1                  ; &envptr9528[1]
  %m3b$_37_62 = load i64, i64* %envptr9529, align 8                                  ; load; *envptr9529
  %cloptr9530 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9531 = getelementptr inbounds i64, i64* %cloptr9530, i64 0                    ; &cloptr9530[0]
  %f9532 = ptrtoint void(i64,i64)* @lam8362 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9532, i64* %eptr9531                                                   ; store fptr
  %arg7661 = ptrtoint i64* %cloptr9530 to i64                                        ; closure cast; i64* -> i64
  %cloptr9533 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9535 = getelementptr inbounds i64, i64* %cloptr9533, i64 1                    ; &eptr9535[1]
  %eptr9536 = getelementptr inbounds i64, i64* %cloptr9533, i64 2                    ; &eptr9536[2]
  %eptr9537 = getelementptr inbounds i64, i64* %cloptr9533, i64 3                    ; &eptr9537[3]
  %eptr9538 = getelementptr inbounds i64, i64* %cloptr9533, i64 4                    ; &eptr9538[4]
  %eptr9539 = getelementptr inbounds i64, i64* %cloptr9533, i64 5                    ; &eptr9539[5]
  %eptr9540 = getelementptr inbounds i64, i64* %cloptr9533, i64 6                    ; &eptr9540[6]
  %eptr9541 = getelementptr inbounds i64, i64* %cloptr9533, i64 7                    ; &eptr9541[7]
  store i64 %m3b$_37_62, i64* %eptr9535                                              ; *eptr9535 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9536                                             ; *eptr9536 = %kF8$_37drop
  store i64 %lEq$ly, i64* %eptr9537                                                  ; *eptr9537 = %lEq$ly
  store i64 %yeW$lx, i64* %eptr9538                                                  ; *eptr9538 = %yeW$lx
  store i64 %cont7134, i64* %eptr9539                                                ; *eptr9539 = %cont7134
  store i64 %WiU$y, i64* %eptr9540                                                   ; *eptr9540 = %WiU$y
  store i64 %Kui$x, i64* %eptr9541                                                   ; *eptr9541 = %Kui$x
  %eptr9534 = getelementptr inbounds i64, i64* %cloptr9533, i64 0                    ; &cloptr9533[0]
  %f9542 = ptrtoint void(i64,i64,i64)* @lam8359 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9542, i64* %eptr9534                                                   ; store fptr
  %arg7660 = ptrtoint i64* %cloptr9533 to i64                                        ; closure cast; i64* -> i64
  %cloptr9543 = inttoptr i64 %arg7661 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9543)                                         ; assert function application
  %i0ptr9544 = getelementptr inbounds i64, i64* %cloptr9543, i64 0                   ; &cloptr9543[0]
  %f9546 = load i64, i64* %i0ptr9544, align 8                                        ; load; *i0ptr9544
  %fptr9545 = inttoptr i64 %f9546 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9545(i64 %arg7661, i64 %arg7660)                    ; tail call
  ret void
}


define void @lam8362(i64 %env8363, i64 %E91$lst7146) {
  %cont7145 = call i64 @prim_car(i64 %E91$lst7146)                                   ; call prim_car
  %E91$lst = call i64 @prim_cdr(i64 %E91$lst7146)                                    ; call prim_cdr
  %arg7665 = add i64 0, 0                                                            ; quoted ()
  %cloptr9547 = inttoptr i64 %cont7145 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9547)                                         ; assert function application
  %i0ptr9548 = getelementptr inbounds i64, i64* %cloptr9547, i64 0                   ; &cloptr9547[0]
  %f9550 = load i64, i64* %i0ptr9548, align 8                                        ; load; *i0ptr9548
  %fptr9549 = inttoptr i64 %f9550 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9549(i64 %cont7145, i64 %arg7665, i64 %E91$lst)     ; tail call
  ret void
}


define void @lam8359(i64 %env8360, i64 %_957143, i64 %a7033) {
  %envptr9551 = inttoptr i64 %env8360 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9552 = getelementptr inbounds i64, i64* %envptr9551, i64 7                  ; &envptr9551[7]
  %Kui$x = load i64, i64* %envptr9552, align 8                                       ; load; *envptr9552
  %envptr9553 = inttoptr i64 %env8360 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9554 = getelementptr inbounds i64, i64* %envptr9553, i64 6                  ; &envptr9553[6]
  %WiU$y = load i64, i64* %envptr9554, align 8                                       ; load; *envptr9554
  %envptr9555 = inttoptr i64 %env8360 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9556 = getelementptr inbounds i64, i64* %envptr9555, i64 5                  ; &envptr9555[5]
  %cont7134 = load i64, i64* %envptr9556, align 8                                    ; load; *envptr9556
  %envptr9557 = inttoptr i64 %env8360 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9558 = getelementptr inbounds i64, i64* %envptr9557, i64 4                  ; &envptr9557[4]
  %yeW$lx = load i64, i64* %envptr9558, align 8                                      ; load; *envptr9558
  %envptr9559 = inttoptr i64 %env8360 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9560 = getelementptr inbounds i64, i64* %envptr9559, i64 3                  ; &envptr9559[3]
  %lEq$ly = load i64, i64* %envptr9560, align 8                                      ; load; *envptr9560
  %envptr9561 = inttoptr i64 %env8360 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9562 = getelementptr inbounds i64, i64* %envptr9561, i64 2                  ; &envptr9561[2]
  %kF8$_37drop = load i64, i64* %envptr9562, align 8                                 ; load; *envptr9562
  %envptr9563 = inttoptr i64 %env8360 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9564 = getelementptr inbounds i64, i64* %envptr9563, i64 1                  ; &envptr9563[1]
  %m3b$_37_62 = load i64, i64* %envptr9564, align 8                                  ; load; *envptr9564
  %arg7668 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7144 = call i64 @prim_make_45vector(i64 %arg7668, i64 %a7033)              ; call prim_make_45vector
  %cloptr9565 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9567 = getelementptr inbounds i64, i64* %cloptr9565, i64 1                    ; &eptr9567[1]
  %eptr9568 = getelementptr inbounds i64, i64* %cloptr9565, i64 2                    ; &eptr9568[2]
  %eptr9569 = getelementptr inbounds i64, i64* %cloptr9565, i64 3                    ; &eptr9569[3]
  %eptr9570 = getelementptr inbounds i64, i64* %cloptr9565, i64 4                    ; &eptr9570[4]
  %eptr9571 = getelementptr inbounds i64, i64* %cloptr9565, i64 5                    ; &eptr9571[5]
  %eptr9572 = getelementptr inbounds i64, i64* %cloptr9565, i64 6                    ; &eptr9572[6]
  %eptr9573 = getelementptr inbounds i64, i64* %cloptr9565, i64 7                    ; &eptr9573[7]
  store i64 %m3b$_37_62, i64* %eptr9567                                              ; *eptr9567 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9568                                             ; *eptr9568 = %kF8$_37drop
  store i64 %lEq$ly, i64* %eptr9569                                                  ; *eptr9569 = %lEq$ly
  store i64 %yeW$lx, i64* %eptr9570                                                  ; *eptr9570 = %yeW$lx
  store i64 %cont7134, i64* %eptr9571                                                ; *eptr9571 = %cont7134
  store i64 %WiU$y, i64* %eptr9572                                                   ; *eptr9572 = %WiU$y
  store i64 %Kui$x, i64* %eptr9573                                                   ; *eptr9573 = %Kui$x
  %eptr9566 = getelementptr inbounds i64, i64* %cloptr9565, i64 0                    ; &cloptr9565[0]
  %f9574 = ptrtoint void(i64,i64,i64)* @lam8356 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9574, i64* %eptr9566                                                   ; store fptr
  %arg7671 = ptrtoint i64* %cloptr9565 to i64                                        ; closure cast; i64* -> i64
  %arg7670 = add i64 0, 0                                                            ; quoted ()
  %cloptr9575 = inttoptr i64 %arg7671 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9575)                                         ; assert function application
  %i0ptr9576 = getelementptr inbounds i64, i64* %cloptr9575, i64 0                   ; &cloptr9575[0]
  %f9578 = load i64, i64* %i0ptr9576, align 8                                        ; load; *i0ptr9576
  %fptr9577 = inttoptr i64 %f9578 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9577(i64 %arg7671, i64 %arg7670, i64 %retprim7144)  ; tail call
  ret void
}


define void @lam8356(i64 %env8357, i64 %_957137, i64 %xMS$loop) {
  %envptr9579 = inttoptr i64 %env8357 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9580 = getelementptr inbounds i64, i64* %envptr9579, i64 7                  ; &envptr9579[7]
  %Kui$x = load i64, i64* %envptr9580, align 8                                       ; load; *envptr9580
  %envptr9581 = inttoptr i64 %env8357 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9582 = getelementptr inbounds i64, i64* %envptr9581, i64 6                  ; &envptr9581[6]
  %WiU$y = load i64, i64* %envptr9582, align 8                                       ; load; *envptr9582
  %envptr9583 = inttoptr i64 %env8357 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9584 = getelementptr inbounds i64, i64* %envptr9583, i64 5                  ; &envptr9583[5]
  %cont7134 = load i64, i64* %envptr9584, align 8                                    ; load; *envptr9584
  %envptr9585 = inttoptr i64 %env8357 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9586 = getelementptr inbounds i64, i64* %envptr9585, i64 4                  ; &envptr9585[4]
  %yeW$lx = load i64, i64* %envptr9586, align 8                                      ; load; *envptr9586
  %envptr9587 = inttoptr i64 %env8357 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9588 = getelementptr inbounds i64, i64* %envptr9587, i64 3                  ; &envptr9587[3]
  %lEq$ly = load i64, i64* %envptr9588, align 8                                      ; load; *envptr9588
  %envptr9589 = inttoptr i64 %env8357 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9590 = getelementptr inbounds i64, i64* %envptr9589, i64 2                  ; &envptr9589[2]
  %kF8$_37drop = load i64, i64* %envptr9590, align 8                                 ; load; *envptr9590
  %envptr9591 = inttoptr i64 %env8357 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9592 = getelementptr inbounds i64, i64* %envptr9591, i64 1                  ; &envptr9591[1]
  %m3b$_37_62 = load i64, i64* %envptr9592, align 8                                  ; load; *envptr9592
  %arg7673 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9593 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9595 = getelementptr inbounds i64, i64* %cloptr9593, i64 1                    ; &eptr9595[1]
  store i64 %xMS$loop, i64* %eptr9595                                                ; *eptr9595 = %xMS$loop
  %eptr9594 = getelementptr inbounds i64, i64* %cloptr9593, i64 0                    ; &cloptr9593[0]
  %f9596 = ptrtoint void(i64,i64,i64,i64)* @lam8353 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9596, i64* %eptr9594                                                   ; store fptr
  %arg7672 = ptrtoint i64* %cloptr9593 to i64                                        ; closure cast; i64* -> i64
  %ni1$_956937 = call i64 @prim_vector_45set_33(i64 %xMS$loop, i64 %arg7673, i64 %arg7672); call prim_vector_45set_33
  %arg7688 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7038 = call i64 @prim_vector_45ref(i64 %xMS$loop, i64 %arg7688)                  ; call prim_vector_45ref
  %cloptr9597 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9599 = getelementptr inbounds i64, i64* %cloptr9597, i64 1                    ; &eptr9599[1]
  %eptr9600 = getelementptr inbounds i64, i64* %cloptr9597, i64 2                    ; &eptr9600[2]
  %eptr9601 = getelementptr inbounds i64, i64* %cloptr9597, i64 3                    ; &eptr9601[3]
  %eptr9602 = getelementptr inbounds i64, i64* %cloptr9597, i64 4                    ; &eptr9602[4]
  %eptr9603 = getelementptr inbounds i64, i64* %cloptr9597, i64 5                    ; &eptr9603[5]
  %eptr9604 = getelementptr inbounds i64, i64* %cloptr9597, i64 6                    ; &eptr9604[6]
  %eptr9605 = getelementptr inbounds i64, i64* %cloptr9597, i64 7                    ; &eptr9605[7]
  %eptr9606 = getelementptr inbounds i64, i64* %cloptr9597, i64 8                    ; &eptr9606[8]
  store i64 %a7038, i64* %eptr9599                                                   ; *eptr9599 = %a7038
  store i64 %m3b$_37_62, i64* %eptr9600                                              ; *eptr9600 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9601                                             ; *eptr9601 = %kF8$_37drop
  store i64 %lEq$ly, i64* %eptr9602                                                  ; *eptr9602 = %lEq$ly
  store i64 %yeW$lx, i64* %eptr9603                                                  ; *eptr9603 = %yeW$lx
  store i64 %cont7134, i64* %eptr9604                                                ; *eptr9604 = %cont7134
  store i64 %WiU$y, i64* %eptr9605                                                   ; *eptr9605 = %WiU$y
  store i64 %Kui$x, i64* %eptr9606                                                   ; *eptr9606 = %Kui$x
  %eptr9598 = getelementptr inbounds i64, i64* %cloptr9597, i64 0                    ; &cloptr9597[0]
  %f9607 = ptrtoint void(i64,i64,i64)* @lam8348 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9607, i64* %eptr9598                                                   ; store fptr
  %arg7692 = ptrtoint i64* %cloptr9597 to i64                                        ; closure cast; i64* -> i64
  %cloptr9608 = inttoptr i64 %m3b$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9608)                                         ; assert function application
  %i0ptr9609 = getelementptr inbounds i64, i64* %cloptr9608, i64 0                   ; &cloptr9608[0]
  %f9611 = load i64, i64* %i0ptr9609, align 8                                        ; load; *i0ptr9609
  %fptr9610 = inttoptr i64 %f9611 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9610(i64 %m3b$_37_62, i64 %arg7692, i64 %yeW$lx, i64 %lEq$ly); tail call
  ret void
}


define void @lam8353(i64 %env8354, i64 %cont7138, i64 %xdQ$x, i64 %ihY$y) {
  %envptr9612 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9613 = getelementptr inbounds i64, i64* %envptr9612, i64 1                  ; &envptr9612[1]
  %xMS$loop = load i64, i64* %envptr9613, align 8                                    ; load; *envptr9613
  %a7034 = call i64 @prim_eq_63(i64 %xdQ$x, i64 %ihY$y)                              ; call prim_eq_63
  %cmp9614 = icmp eq i64 %a7034, 15                                                  ; false?
  br i1 %cmp9614, label %else9616, label %then9615                                   ; if

then9615:
  %arg7678 = add i64 0, 0                                                            ; quoted ()
  %cloptr9617 = inttoptr i64 %cont7138 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9617)                                         ; assert function application
  %i0ptr9618 = getelementptr inbounds i64, i64* %cloptr9617, i64 0                   ; &cloptr9617[0]
  %f9620 = load i64, i64* %i0ptr9618, align 8                                        ; load; *i0ptr9618
  %fptr9619 = inttoptr i64 %f9620 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9619(i64 %cont7138, i64 %arg7678, i64 %xdQ$x)       ; tail call
  ret void

else9616:
  %arg7680 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7035 = call i64 @prim_vector_45ref(i64 %xMS$loop, i64 %arg7680)                  ; call prim_vector_45ref
  %a7036 = call i64 @prim_cdr(i64 %xdQ$x)                                            ; call prim_cdr
  %a7037 = call i64 @prim_cdr(i64 %ihY$y)                                            ; call prim_cdr
  %cloptr9621 = inttoptr i64 %a7035 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9621)                                         ; assert function application
  %i0ptr9622 = getelementptr inbounds i64, i64* %cloptr9621, i64 0                   ; &cloptr9621[0]
  %f9624 = load i64, i64* %i0ptr9622, align 8                                        ; load; *i0ptr9622
  %fptr9623 = inttoptr i64 %f9624 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9623(i64 %a7035, i64 %cont7138, i64 %a7036, i64 %a7037); tail call
  ret void
}


define void @lam8348(i64 %env8349, i64 %_957139, i64 %a7039) {
  %envptr9625 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9626 = getelementptr inbounds i64, i64* %envptr9625, i64 8                  ; &envptr9625[8]
  %Kui$x = load i64, i64* %envptr9626, align 8                                       ; load; *envptr9626
  %envptr9627 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9628 = getelementptr inbounds i64, i64* %envptr9627, i64 7                  ; &envptr9627[7]
  %WiU$y = load i64, i64* %envptr9628, align 8                                       ; load; *envptr9628
  %envptr9629 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9630 = getelementptr inbounds i64, i64* %envptr9629, i64 6                  ; &envptr9629[6]
  %cont7134 = load i64, i64* %envptr9630, align 8                                    ; load; *envptr9630
  %envptr9631 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9632 = getelementptr inbounds i64, i64* %envptr9631, i64 5                  ; &envptr9631[5]
  %yeW$lx = load i64, i64* %envptr9632, align 8                                      ; load; *envptr9632
  %envptr9633 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9634 = getelementptr inbounds i64, i64* %envptr9633, i64 4                  ; &envptr9633[4]
  %lEq$ly = load i64, i64* %envptr9634, align 8                                      ; load; *envptr9634
  %envptr9635 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9636 = getelementptr inbounds i64, i64* %envptr9635, i64 3                  ; &envptr9635[3]
  %kF8$_37drop = load i64, i64* %envptr9636, align 8                                 ; load; *envptr9636
  %envptr9637 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9638 = getelementptr inbounds i64, i64* %envptr9637, i64 2                  ; &envptr9637[2]
  %m3b$_37_62 = load i64, i64* %envptr9638, align 8                                  ; load; *envptr9638
  %envptr9639 = inttoptr i64 %env8349 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9640 = getelementptr inbounds i64, i64* %envptr9639, i64 1                  ; &envptr9639[1]
  %a7038 = load i64, i64* %envptr9640, align 8                                       ; load; *envptr9640
  %cmp9641 = icmp eq i64 %a7039, 15                                                  ; false?
  br i1 %cmp9641, label %else9643, label %then9642                                   ; if

then9642:
  %a7040 = call i64 @prim__45(i64 %yeW$lx, i64 %lEq$ly)                              ; call prim__45
  %cloptr9644 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9646 = getelementptr inbounds i64, i64* %cloptr9644, i64 1                    ; &eptr9646[1]
  %eptr9647 = getelementptr inbounds i64, i64* %cloptr9644, i64 2                    ; &eptr9647[2]
  %eptr9648 = getelementptr inbounds i64, i64* %cloptr9644, i64 3                    ; &eptr9648[3]
  %eptr9649 = getelementptr inbounds i64, i64* %cloptr9644, i64 4                    ; &eptr9649[4]
  %eptr9650 = getelementptr inbounds i64, i64* %cloptr9644, i64 5                    ; &eptr9650[5]
  %eptr9651 = getelementptr inbounds i64, i64* %cloptr9644, i64 6                    ; &eptr9651[6]
  %eptr9652 = getelementptr inbounds i64, i64* %cloptr9644, i64 7                    ; &eptr9652[7]
  store i64 %a7038, i64* %eptr9646                                                   ; *eptr9646 = %a7038
  store i64 %m3b$_37_62, i64* %eptr9647                                              ; *eptr9647 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9648                                             ; *eptr9648 = %kF8$_37drop
  store i64 %lEq$ly, i64* %eptr9649                                                  ; *eptr9649 = %lEq$ly
  store i64 %yeW$lx, i64* %eptr9650                                                  ; *eptr9650 = %yeW$lx
  store i64 %cont7134, i64* %eptr9651                                                ; *eptr9651 = %cont7134
  store i64 %WiU$y, i64* %eptr9652                                                   ; *eptr9652 = %WiU$y
  %eptr9645 = getelementptr inbounds i64, i64* %cloptr9644, i64 0                    ; &cloptr9644[0]
  %f9653 = ptrtoint void(i64,i64,i64)* @lam8336 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9653, i64* %eptr9645                                                   ; store fptr
  %arg7698 = ptrtoint i64* %cloptr9644 to i64                                        ; closure cast; i64* -> i64
  %cloptr9654 = inttoptr i64 %kF8$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9654)                                         ; assert function application
  %i0ptr9655 = getelementptr inbounds i64, i64* %cloptr9654, i64 0                   ; &cloptr9654[0]
  %f9657 = load i64, i64* %i0ptr9655, align 8                                        ; load; *i0ptr9655
  %fptr9656 = inttoptr i64 %f9657 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9656(i64 %kF8$_37drop, i64 %arg7698, i64 %Kui$x, i64 %a7040); tail call
  ret void

else9643:
  %cloptr9658 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9660 = getelementptr inbounds i64, i64* %cloptr9658, i64 1                    ; &eptr9660[1]
  %eptr9661 = getelementptr inbounds i64, i64* %cloptr9658, i64 2                    ; &eptr9661[2]
  %eptr9662 = getelementptr inbounds i64, i64* %cloptr9658, i64 3                    ; &eptr9662[3]
  %eptr9663 = getelementptr inbounds i64, i64* %cloptr9658, i64 4                    ; &eptr9663[4]
  %eptr9664 = getelementptr inbounds i64, i64* %cloptr9658, i64 5                    ; &eptr9664[5]
  %eptr9665 = getelementptr inbounds i64, i64* %cloptr9658, i64 6                    ; &eptr9665[6]
  %eptr9666 = getelementptr inbounds i64, i64* %cloptr9658, i64 7                    ; &eptr9666[7]
  store i64 %a7038, i64* %eptr9660                                                   ; *eptr9660 = %a7038
  store i64 %m3b$_37_62, i64* %eptr9661                                              ; *eptr9661 = %m3b$_37_62
  store i64 %kF8$_37drop, i64* %eptr9662                                             ; *eptr9662 = %kF8$_37drop
  store i64 %lEq$ly, i64* %eptr9663                                                  ; *eptr9663 = %lEq$ly
  store i64 %yeW$lx, i64* %eptr9664                                                  ; *eptr9664 = %yeW$lx
  store i64 %cont7134, i64* %eptr9665                                                ; *eptr9665 = %cont7134
  store i64 %WiU$y, i64* %eptr9666                                                   ; *eptr9666 = %WiU$y
  %eptr9659 = getelementptr inbounds i64, i64* %cloptr9658, i64 0                    ; &cloptr9658[0]
  %f9667 = ptrtoint void(i64,i64,i64)* @lam8346 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9667, i64* %eptr9659                                                   ; store fptr
  %arg7723 = ptrtoint i64* %cloptr9658 to i64                                        ; closure cast; i64* -> i64
  %arg7722 = add i64 0, 0                                                            ; quoted ()
  %cloptr9668 = inttoptr i64 %arg7723 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9668)                                         ; assert function application
  %i0ptr9669 = getelementptr inbounds i64, i64* %cloptr9668, i64 0                   ; &cloptr9668[0]
  %f9671 = load i64, i64* %i0ptr9669, align 8                                        ; load; *i0ptr9669
  %fptr9670 = inttoptr i64 %f9671 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9670(i64 %arg7723, i64 %arg7722, i64 %Kui$x)        ; tail call
  ret void
}


define void @lam8346(i64 %env8347, i64 %_957140, i64 %a7041) {
  %envptr9672 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9673 = getelementptr inbounds i64, i64* %envptr9672, i64 7                  ; &envptr9672[7]
  %WiU$y = load i64, i64* %envptr9673, align 8                                       ; load; *envptr9673
  %envptr9674 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9675 = getelementptr inbounds i64, i64* %envptr9674, i64 6                  ; &envptr9674[6]
  %cont7134 = load i64, i64* %envptr9675, align 8                                    ; load; *envptr9675
  %envptr9676 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9677 = getelementptr inbounds i64, i64* %envptr9676, i64 5                  ; &envptr9676[5]
  %yeW$lx = load i64, i64* %envptr9677, align 8                                      ; load; *envptr9677
  %envptr9678 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9679 = getelementptr inbounds i64, i64* %envptr9678, i64 4                  ; &envptr9678[4]
  %lEq$ly = load i64, i64* %envptr9679, align 8                                      ; load; *envptr9679
  %envptr9680 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9681 = getelementptr inbounds i64, i64* %envptr9680, i64 3                  ; &envptr9680[3]
  %kF8$_37drop = load i64, i64* %envptr9681, align 8                                 ; load; *envptr9681
  %envptr9682 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9683 = getelementptr inbounds i64, i64* %envptr9682, i64 2                  ; &envptr9682[2]
  %m3b$_37_62 = load i64, i64* %envptr9683, align 8                                  ; load; *envptr9683
  %envptr9684 = inttoptr i64 %env8347 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9685 = getelementptr inbounds i64, i64* %envptr9684, i64 1                  ; &envptr9684[1]
  %a7038 = load i64, i64* %envptr9685, align 8                                       ; load; *envptr9685
  %cloptr9686 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9688 = getelementptr inbounds i64, i64* %cloptr9686, i64 1                    ; &eptr9688[1]
  %eptr9689 = getelementptr inbounds i64, i64* %cloptr9686, i64 2                    ; &eptr9689[2]
  %eptr9690 = getelementptr inbounds i64, i64* %cloptr9686, i64 3                    ; &eptr9690[3]
  %eptr9691 = getelementptr inbounds i64, i64* %cloptr9686, i64 4                    ; &eptr9691[4]
  %eptr9692 = getelementptr inbounds i64, i64* %cloptr9686, i64 5                    ; &eptr9692[5]
  %eptr9693 = getelementptr inbounds i64, i64* %cloptr9686, i64 6                    ; &eptr9693[6]
  %eptr9694 = getelementptr inbounds i64, i64* %cloptr9686, i64 7                    ; &eptr9694[7]
  store i64 %a7041, i64* %eptr9688                                                   ; *eptr9688 = %a7041
  store i64 %a7038, i64* %eptr9689                                                   ; *eptr9689 = %a7038
  store i64 %kF8$_37drop, i64* %eptr9690                                             ; *eptr9690 = %kF8$_37drop
  store i64 %lEq$ly, i64* %eptr9691                                                  ; *eptr9691 = %lEq$ly
  store i64 %yeW$lx, i64* %eptr9692                                                  ; *eptr9692 = %yeW$lx
  store i64 %cont7134, i64* %eptr9693                                                ; *eptr9693 = %cont7134
  store i64 %WiU$y, i64* %eptr9694                                                   ; *eptr9694 = %WiU$y
  %eptr9687 = getelementptr inbounds i64, i64* %cloptr9686, i64 0                    ; &cloptr9686[0]
  %f9695 = ptrtoint void(i64,i64,i64)* @lam8344 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9695, i64* %eptr9687                                                   ; store fptr
  %arg7726 = ptrtoint i64* %cloptr9686 to i64                                        ; closure cast; i64* -> i64
  %cloptr9696 = inttoptr i64 %m3b$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9696)                                         ; assert function application
  %i0ptr9697 = getelementptr inbounds i64, i64* %cloptr9696, i64 0                   ; &cloptr9696[0]
  %f9699 = load i64, i64* %i0ptr9697, align 8                                        ; load; *i0ptr9697
  %fptr9698 = inttoptr i64 %f9699 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9698(i64 %m3b$_37_62, i64 %arg7726, i64 %lEq$ly, i64 %yeW$lx); tail call
  ret void
}


define void @lam8344(i64 %env8345, i64 %_957141, i64 %a7042) {
  %envptr9700 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9701 = getelementptr inbounds i64, i64* %envptr9700, i64 7                  ; &envptr9700[7]
  %WiU$y = load i64, i64* %envptr9701, align 8                                       ; load; *envptr9701
  %envptr9702 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9703 = getelementptr inbounds i64, i64* %envptr9702, i64 6                  ; &envptr9702[6]
  %cont7134 = load i64, i64* %envptr9703, align 8                                    ; load; *envptr9703
  %envptr9704 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9705 = getelementptr inbounds i64, i64* %envptr9704, i64 5                  ; &envptr9704[5]
  %yeW$lx = load i64, i64* %envptr9705, align 8                                      ; load; *envptr9705
  %envptr9706 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9707 = getelementptr inbounds i64, i64* %envptr9706, i64 4                  ; &envptr9706[4]
  %lEq$ly = load i64, i64* %envptr9707, align 8                                      ; load; *envptr9707
  %envptr9708 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9709 = getelementptr inbounds i64, i64* %envptr9708, i64 3                  ; &envptr9708[3]
  %kF8$_37drop = load i64, i64* %envptr9709, align 8                                 ; load; *envptr9709
  %envptr9710 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9711 = getelementptr inbounds i64, i64* %envptr9710, i64 2                  ; &envptr9710[2]
  %a7038 = load i64, i64* %envptr9711, align 8                                       ; load; *envptr9711
  %envptr9712 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9713 = getelementptr inbounds i64, i64* %envptr9712, i64 1                  ; &envptr9712[1]
  %a7041 = load i64, i64* %envptr9713, align 8                                       ; load; *envptr9713
  %cmp9714 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9714, label %else9716, label %then9715                                   ; if

then9715:
  %a7043 = call i64 @prim__45(i64 %lEq$ly, i64 %yeW$lx)                              ; call prim__45
  %cloptr9717 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9719 = getelementptr inbounds i64, i64* %cloptr9717, i64 1                    ; &eptr9719[1]
  %eptr9720 = getelementptr inbounds i64, i64* %cloptr9717, i64 2                    ; &eptr9720[2]
  %eptr9721 = getelementptr inbounds i64, i64* %cloptr9717, i64 3                    ; &eptr9721[3]
  store i64 %a7041, i64* %eptr9719                                                   ; *eptr9719 = %a7041
  store i64 %a7038, i64* %eptr9720                                                   ; *eptr9720 = %a7038
  store i64 %cont7134, i64* %eptr9721                                                ; *eptr9721 = %cont7134
  %eptr9718 = getelementptr inbounds i64, i64* %cloptr9717, i64 0                    ; &cloptr9717[0]
  %f9722 = ptrtoint void(i64,i64,i64)* @lam8339 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9722, i64* %eptr9718                                                   ; store fptr
  %arg7732 = ptrtoint i64* %cloptr9717 to i64                                        ; closure cast; i64* -> i64
  %cloptr9723 = inttoptr i64 %kF8$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9723)                                         ; assert function application
  %i0ptr9724 = getelementptr inbounds i64, i64* %cloptr9723, i64 0                   ; &cloptr9723[0]
  %f9726 = load i64, i64* %i0ptr9724, align 8                                        ; load; *i0ptr9724
  %fptr9725 = inttoptr i64 %f9726 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9725(i64 %kF8$_37drop, i64 %arg7732, i64 %WiU$y, i64 %a7043); tail call
  ret void

else9716:
  %cloptr9727 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9729 = getelementptr inbounds i64, i64* %cloptr9727, i64 1                    ; &eptr9729[1]
  %eptr9730 = getelementptr inbounds i64, i64* %cloptr9727, i64 2                    ; &eptr9730[2]
  %eptr9731 = getelementptr inbounds i64, i64* %cloptr9727, i64 3                    ; &eptr9731[3]
  store i64 %a7041, i64* %eptr9729                                                   ; *eptr9729 = %a7041
  store i64 %a7038, i64* %eptr9730                                                   ; *eptr9730 = %a7038
  store i64 %cont7134, i64* %eptr9731                                                ; *eptr9731 = %cont7134
  %eptr9728 = getelementptr inbounds i64, i64* %cloptr9727, i64 0                    ; &cloptr9727[0]
  %f9732 = ptrtoint void(i64,i64,i64)* @lam8342 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9732, i64* %eptr9728                                                   ; store fptr
  %arg7740 = ptrtoint i64* %cloptr9727 to i64                                        ; closure cast; i64* -> i64
  %arg7739 = add i64 0, 0                                                            ; quoted ()
  %cloptr9733 = inttoptr i64 %arg7740 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9733)                                         ; assert function application
  %i0ptr9734 = getelementptr inbounds i64, i64* %cloptr9733, i64 0                   ; &cloptr9733[0]
  %f9736 = load i64, i64* %i0ptr9734, align 8                                        ; load; *i0ptr9734
  %fptr9735 = inttoptr i64 %f9736 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9735(i64 %arg7740, i64 %arg7739, i64 %WiU$y)        ; tail call
  ret void
}


define void @lam8342(i64 %env8343, i64 %_957142, i64 %a7044) {
  %envptr9737 = inttoptr i64 %env8343 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9738 = getelementptr inbounds i64, i64* %envptr9737, i64 3                  ; &envptr9737[3]
  %cont7134 = load i64, i64* %envptr9738, align 8                                    ; load; *envptr9738
  %envptr9739 = inttoptr i64 %env8343 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9740 = getelementptr inbounds i64, i64* %envptr9739, i64 2                  ; &envptr9739[2]
  %a7038 = load i64, i64* %envptr9740, align 8                                       ; load; *envptr9740
  %envptr9741 = inttoptr i64 %env8343 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9742 = getelementptr inbounds i64, i64* %envptr9741, i64 1                  ; &envptr9741[1]
  %a7041 = load i64, i64* %envptr9742, align 8                                       ; load; *envptr9742
  %cloptr9743 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9743)                                         ; assert function application
  %i0ptr9744 = getelementptr inbounds i64, i64* %cloptr9743, i64 0                   ; &cloptr9743[0]
  %f9746 = load i64, i64* %i0ptr9744, align 8                                        ; load; *i0ptr9744
  %fptr9745 = inttoptr i64 %f9746 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9745(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8339(i64 %env8340, i64 %_957142, i64 %a7044) {
  %envptr9747 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9748 = getelementptr inbounds i64, i64* %envptr9747, i64 3                  ; &envptr9747[3]
  %cont7134 = load i64, i64* %envptr9748, align 8                                    ; load; *envptr9748
  %envptr9749 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9750 = getelementptr inbounds i64, i64* %envptr9749, i64 2                  ; &envptr9749[2]
  %a7038 = load i64, i64* %envptr9750, align 8                                       ; load; *envptr9750
  %envptr9751 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9752 = getelementptr inbounds i64, i64* %envptr9751, i64 1                  ; &envptr9751[1]
  %a7041 = load i64, i64* %envptr9752, align 8                                       ; load; *envptr9752
  %cloptr9753 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9753)                                         ; assert function application
  %i0ptr9754 = getelementptr inbounds i64, i64* %cloptr9753, i64 0                   ; &cloptr9753[0]
  %f9756 = load i64, i64* %i0ptr9754, align 8                                        ; load; *i0ptr9754
  %fptr9755 = inttoptr i64 %f9756 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9755(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8336(i64 %env8337, i64 %_957140, i64 %a7041) {
  %envptr9757 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9758 = getelementptr inbounds i64, i64* %envptr9757, i64 7                  ; &envptr9757[7]
  %WiU$y = load i64, i64* %envptr9758, align 8                                       ; load; *envptr9758
  %envptr9759 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9760 = getelementptr inbounds i64, i64* %envptr9759, i64 6                  ; &envptr9759[6]
  %cont7134 = load i64, i64* %envptr9760, align 8                                    ; load; *envptr9760
  %envptr9761 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9762 = getelementptr inbounds i64, i64* %envptr9761, i64 5                  ; &envptr9761[5]
  %yeW$lx = load i64, i64* %envptr9762, align 8                                      ; load; *envptr9762
  %envptr9763 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9764 = getelementptr inbounds i64, i64* %envptr9763, i64 4                  ; &envptr9763[4]
  %lEq$ly = load i64, i64* %envptr9764, align 8                                      ; load; *envptr9764
  %envptr9765 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9766 = getelementptr inbounds i64, i64* %envptr9765, i64 3                  ; &envptr9765[3]
  %kF8$_37drop = load i64, i64* %envptr9766, align 8                                 ; load; *envptr9766
  %envptr9767 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9768 = getelementptr inbounds i64, i64* %envptr9767, i64 2                  ; &envptr9767[2]
  %m3b$_37_62 = load i64, i64* %envptr9768, align 8                                  ; load; *envptr9768
  %envptr9769 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9770 = getelementptr inbounds i64, i64* %envptr9769, i64 1                  ; &envptr9769[1]
  %a7038 = load i64, i64* %envptr9770, align 8                                       ; load; *envptr9770
  %cloptr9771 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9773 = getelementptr inbounds i64, i64* %cloptr9771, i64 1                    ; &eptr9773[1]
  %eptr9774 = getelementptr inbounds i64, i64* %cloptr9771, i64 2                    ; &eptr9774[2]
  %eptr9775 = getelementptr inbounds i64, i64* %cloptr9771, i64 3                    ; &eptr9775[3]
  %eptr9776 = getelementptr inbounds i64, i64* %cloptr9771, i64 4                    ; &eptr9776[4]
  %eptr9777 = getelementptr inbounds i64, i64* %cloptr9771, i64 5                    ; &eptr9777[5]
  %eptr9778 = getelementptr inbounds i64, i64* %cloptr9771, i64 6                    ; &eptr9778[6]
  %eptr9779 = getelementptr inbounds i64, i64* %cloptr9771, i64 7                    ; &eptr9779[7]
  store i64 %a7041, i64* %eptr9773                                                   ; *eptr9773 = %a7041
  store i64 %a7038, i64* %eptr9774                                                   ; *eptr9774 = %a7038
  store i64 %kF8$_37drop, i64* %eptr9775                                             ; *eptr9775 = %kF8$_37drop
  store i64 %lEq$ly, i64* %eptr9776                                                  ; *eptr9776 = %lEq$ly
  store i64 %yeW$lx, i64* %eptr9777                                                  ; *eptr9777 = %yeW$lx
  store i64 %cont7134, i64* %eptr9778                                                ; *eptr9778 = %cont7134
  store i64 %WiU$y, i64* %eptr9779                                                   ; *eptr9779 = %WiU$y
  %eptr9772 = getelementptr inbounds i64, i64* %cloptr9771, i64 0                    ; &cloptr9771[0]
  %f9780 = ptrtoint void(i64,i64,i64)* @lam8334 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9780, i64* %eptr9772                                                   ; store fptr
  %arg7702 = ptrtoint i64* %cloptr9771 to i64                                        ; closure cast; i64* -> i64
  %cloptr9781 = inttoptr i64 %m3b$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9781)                                         ; assert function application
  %i0ptr9782 = getelementptr inbounds i64, i64* %cloptr9781, i64 0                   ; &cloptr9781[0]
  %f9784 = load i64, i64* %i0ptr9782, align 8                                        ; load; *i0ptr9782
  %fptr9783 = inttoptr i64 %f9784 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9783(i64 %m3b$_37_62, i64 %arg7702, i64 %lEq$ly, i64 %yeW$lx); tail call
  ret void
}


define void @lam8334(i64 %env8335, i64 %_957141, i64 %a7042) {
  %envptr9785 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9786 = getelementptr inbounds i64, i64* %envptr9785, i64 7                  ; &envptr9785[7]
  %WiU$y = load i64, i64* %envptr9786, align 8                                       ; load; *envptr9786
  %envptr9787 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9788 = getelementptr inbounds i64, i64* %envptr9787, i64 6                  ; &envptr9787[6]
  %cont7134 = load i64, i64* %envptr9788, align 8                                    ; load; *envptr9788
  %envptr9789 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9790 = getelementptr inbounds i64, i64* %envptr9789, i64 5                  ; &envptr9789[5]
  %yeW$lx = load i64, i64* %envptr9790, align 8                                      ; load; *envptr9790
  %envptr9791 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9792 = getelementptr inbounds i64, i64* %envptr9791, i64 4                  ; &envptr9791[4]
  %lEq$ly = load i64, i64* %envptr9792, align 8                                      ; load; *envptr9792
  %envptr9793 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9794 = getelementptr inbounds i64, i64* %envptr9793, i64 3                  ; &envptr9793[3]
  %kF8$_37drop = load i64, i64* %envptr9794, align 8                                 ; load; *envptr9794
  %envptr9795 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9796 = getelementptr inbounds i64, i64* %envptr9795, i64 2                  ; &envptr9795[2]
  %a7038 = load i64, i64* %envptr9796, align 8                                       ; load; *envptr9796
  %envptr9797 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9798 = getelementptr inbounds i64, i64* %envptr9797, i64 1                  ; &envptr9797[1]
  %a7041 = load i64, i64* %envptr9798, align 8                                       ; load; *envptr9798
  %cmp9799 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9799, label %else9801, label %then9800                                   ; if

then9800:
  %a7043 = call i64 @prim__45(i64 %lEq$ly, i64 %yeW$lx)                              ; call prim__45
  %cloptr9802 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9804 = getelementptr inbounds i64, i64* %cloptr9802, i64 1                    ; &eptr9804[1]
  %eptr9805 = getelementptr inbounds i64, i64* %cloptr9802, i64 2                    ; &eptr9805[2]
  %eptr9806 = getelementptr inbounds i64, i64* %cloptr9802, i64 3                    ; &eptr9806[3]
  store i64 %a7041, i64* %eptr9804                                                   ; *eptr9804 = %a7041
  store i64 %a7038, i64* %eptr9805                                                   ; *eptr9805 = %a7038
  store i64 %cont7134, i64* %eptr9806                                                ; *eptr9806 = %cont7134
  %eptr9803 = getelementptr inbounds i64, i64* %cloptr9802, i64 0                    ; &cloptr9802[0]
  %f9807 = ptrtoint void(i64,i64,i64)* @lam8329 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9807, i64* %eptr9803                                                   ; store fptr
  %arg7708 = ptrtoint i64* %cloptr9802 to i64                                        ; closure cast; i64* -> i64
  %cloptr9808 = inttoptr i64 %kF8$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9808)                                         ; assert function application
  %i0ptr9809 = getelementptr inbounds i64, i64* %cloptr9808, i64 0                   ; &cloptr9808[0]
  %f9811 = load i64, i64* %i0ptr9809, align 8                                        ; load; *i0ptr9809
  %fptr9810 = inttoptr i64 %f9811 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9810(i64 %kF8$_37drop, i64 %arg7708, i64 %WiU$y, i64 %a7043); tail call
  ret void

else9801:
  %cloptr9812 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9814 = getelementptr inbounds i64, i64* %cloptr9812, i64 1                    ; &eptr9814[1]
  %eptr9815 = getelementptr inbounds i64, i64* %cloptr9812, i64 2                    ; &eptr9815[2]
  %eptr9816 = getelementptr inbounds i64, i64* %cloptr9812, i64 3                    ; &eptr9816[3]
  store i64 %a7041, i64* %eptr9814                                                   ; *eptr9814 = %a7041
  store i64 %a7038, i64* %eptr9815                                                   ; *eptr9815 = %a7038
  store i64 %cont7134, i64* %eptr9816                                                ; *eptr9816 = %cont7134
  %eptr9813 = getelementptr inbounds i64, i64* %cloptr9812, i64 0                    ; &cloptr9812[0]
  %f9817 = ptrtoint void(i64,i64,i64)* @lam8332 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9817, i64* %eptr9813                                                   ; store fptr
  %arg7716 = ptrtoint i64* %cloptr9812 to i64                                        ; closure cast; i64* -> i64
  %arg7715 = add i64 0, 0                                                            ; quoted ()
  %cloptr9818 = inttoptr i64 %arg7716 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9818)                                         ; assert function application
  %i0ptr9819 = getelementptr inbounds i64, i64* %cloptr9818, i64 0                   ; &cloptr9818[0]
  %f9821 = load i64, i64* %i0ptr9819, align 8                                        ; load; *i0ptr9819
  %fptr9820 = inttoptr i64 %f9821 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9820(i64 %arg7716, i64 %arg7715, i64 %WiU$y)        ; tail call
  ret void
}


define void @lam8332(i64 %env8333, i64 %_957142, i64 %a7044) {
  %envptr9822 = inttoptr i64 %env8333 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9823 = getelementptr inbounds i64, i64* %envptr9822, i64 3                  ; &envptr9822[3]
  %cont7134 = load i64, i64* %envptr9823, align 8                                    ; load; *envptr9823
  %envptr9824 = inttoptr i64 %env8333 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9825 = getelementptr inbounds i64, i64* %envptr9824, i64 2                  ; &envptr9824[2]
  %a7038 = load i64, i64* %envptr9825, align 8                                       ; load; *envptr9825
  %envptr9826 = inttoptr i64 %env8333 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9827 = getelementptr inbounds i64, i64* %envptr9826, i64 1                  ; &envptr9826[1]
  %a7041 = load i64, i64* %envptr9827, align 8                                       ; load; *envptr9827
  %cloptr9828 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9828)                                         ; assert function application
  %i0ptr9829 = getelementptr inbounds i64, i64* %cloptr9828, i64 0                   ; &cloptr9828[0]
  %f9831 = load i64, i64* %i0ptr9829, align 8                                        ; load; *i0ptr9829
  %fptr9830 = inttoptr i64 %f9831 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9830(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8329(i64 %env8330, i64 %_957142, i64 %a7044) {
  %envptr9832 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9833 = getelementptr inbounds i64, i64* %envptr9832, i64 3                  ; &envptr9832[3]
  %cont7134 = load i64, i64* %envptr9833, align 8                                    ; load; *envptr9833
  %envptr9834 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9835 = getelementptr inbounds i64, i64* %envptr9834, i64 2                  ; &envptr9834[2]
  %a7038 = load i64, i64* %envptr9835, align 8                                       ; load; *envptr9835
  %envptr9836 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9837 = getelementptr inbounds i64, i64* %envptr9836, i64 1                  ; &envptr9836[1]
  %a7041 = load i64, i64* %envptr9837, align 8                                       ; load; *envptr9837
  %cloptr9838 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9838)                                         ; assert function application
  %i0ptr9839 = getelementptr inbounds i64, i64* %cloptr9838, i64 0                   ; &cloptr9838[0]
  %f9841 = load i64, i64* %i0ptr9839, align 8                                        ; load; *i0ptr9839
  %fptr9840 = inttoptr i64 %f9841 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9840(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8326(i64 %env8327, i64 %cont7147, i64 %FvJ$new) {
  %envptr9842 = inttoptr i64 %env8327 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9843 = getelementptr inbounds i64, i64* %envptr9842, i64 2                  ; &envptr9842[2]
  %nO7$_37common_45tail = load i64, i64* %envptr9843, align 8                        ; load; *envptr9843
  %envptr9844 = inttoptr i64 %env8327 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9845 = getelementptr inbounds i64, i64* %envptr9844, i64 1                  ; &envptr9844[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr9845, align 8                         ; load; *envptr9845
  %arg7745 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7045 = call i64 @prim_vector_45ref(i64 %GDH$_37wind_45stack, i64 %arg7745)       ; call prim_vector_45ref
  %cloptr9846 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9848 = getelementptr inbounds i64, i64* %cloptr9846, i64 1                    ; &eptr9848[1]
  %eptr9849 = getelementptr inbounds i64, i64* %cloptr9846, i64 2                    ; &eptr9849[2]
  %eptr9850 = getelementptr inbounds i64, i64* %cloptr9846, i64 3                    ; &eptr9850[3]
  store i64 %GDH$_37wind_45stack, i64* %eptr9848                                     ; *eptr9848 = %GDH$_37wind_45stack
  store i64 %cont7147, i64* %eptr9849                                                ; *eptr9849 = %cont7147
  store i64 %FvJ$new, i64* %eptr9850                                                 ; *eptr9850 = %FvJ$new
  %eptr9847 = getelementptr inbounds i64, i64* %cloptr9846, i64 0                    ; &cloptr9846[0]
  %f9851 = ptrtoint void(i64,i64,i64)* @lam8323 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9851, i64* %eptr9847                                                   ; store fptr
  %arg7749 = ptrtoint i64* %cloptr9846 to i64                                        ; closure cast; i64* -> i64
  %cloptr9852 = inttoptr i64 %nO7$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9852)                                         ; assert function application
  %i0ptr9853 = getelementptr inbounds i64, i64* %cloptr9852, i64 0                   ; &cloptr9852[0]
  %f9855 = load i64, i64* %i0ptr9853, align 8                                        ; load; *i0ptr9853
  %fptr9854 = inttoptr i64 %f9855 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9854(i64 %nO7$_37common_45tail, i64 %arg7749, i64 %FvJ$new, i64 %a7045); tail call
  ret void
}


define void @lam8323(i64 %env8324, i64 %_957148, i64 %ArG$tail) {
  %envptr9856 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9857 = getelementptr inbounds i64, i64* %envptr9856, i64 3                  ; &envptr9856[3]
  %FvJ$new = load i64, i64* %envptr9857, align 8                                     ; load; *envptr9857
  %envptr9858 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9859 = getelementptr inbounds i64, i64* %envptr9858, i64 2                  ; &envptr9858[2]
  %cont7147 = load i64, i64* %envptr9859, align 8                                    ; load; *envptr9859
  %envptr9860 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9861 = getelementptr inbounds i64, i64* %envptr9860, i64 1                  ; &envptr9860[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr9861, align 8                         ; load; *envptr9861
  %cloptr9862 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9863 = getelementptr inbounds i64, i64* %cloptr9862, i64 0                    ; &cloptr9862[0]
  %f9864 = ptrtoint void(i64,i64)* @lam8321 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9864, i64* %eptr9863                                                   ; store fptr
  %arg7752 = ptrtoint i64* %cloptr9862 to i64                                        ; closure cast; i64* -> i64
  %cloptr9865 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9867 = getelementptr inbounds i64, i64* %cloptr9865, i64 1                    ; &eptr9867[1]
  %eptr9868 = getelementptr inbounds i64, i64* %cloptr9865, i64 2                    ; &eptr9868[2]
  %eptr9869 = getelementptr inbounds i64, i64* %cloptr9865, i64 3                    ; &eptr9869[3]
  %eptr9870 = getelementptr inbounds i64, i64* %cloptr9865, i64 4                    ; &eptr9870[4]
  store i64 %GDH$_37wind_45stack, i64* %eptr9867                                     ; *eptr9867 = %GDH$_37wind_45stack
  store i64 %cont7147, i64* %eptr9868                                                ; *eptr9868 = %cont7147
  store i64 %ArG$tail, i64* %eptr9869                                                ; *eptr9869 = %ArG$tail
  store i64 %FvJ$new, i64* %eptr9870                                                 ; *eptr9870 = %FvJ$new
  %eptr9866 = getelementptr inbounds i64, i64* %cloptr9865, i64 0                    ; &cloptr9865[0]
  %f9871 = ptrtoint void(i64,i64,i64)* @lam8318 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9871, i64* %eptr9866                                                   ; store fptr
  %arg7751 = ptrtoint i64* %cloptr9865 to i64                                        ; closure cast; i64* -> i64
  %cloptr9872 = inttoptr i64 %arg7752 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9872)                                         ; assert function application
  %i0ptr9873 = getelementptr inbounds i64, i64* %cloptr9872, i64 0                   ; &cloptr9872[0]
  %f9875 = load i64, i64* %i0ptr9873, align 8                                        ; load; *i0ptr9873
  %fptr9874 = inttoptr i64 %f9875 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9874(i64 %arg7752, i64 %arg7751)                    ; tail call
  ret void
}


define void @lam8321(i64 %env8322, i64 %Z5t$lst7169) {
  %cont7168 = call i64 @prim_car(i64 %Z5t$lst7169)                                   ; call prim_car
  %Z5t$lst = call i64 @prim_cdr(i64 %Z5t$lst7169)                                    ; call prim_cdr
  %arg7756 = add i64 0, 0                                                            ; quoted ()
  %cloptr9876 = inttoptr i64 %cont7168 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9876)                                         ; assert function application
  %i0ptr9877 = getelementptr inbounds i64, i64* %cloptr9876, i64 0                   ; &cloptr9876[0]
  %f9879 = load i64, i64* %i0ptr9877, align 8                                        ; load; *i0ptr9877
  %fptr9878 = inttoptr i64 %f9879 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9878(i64 %cont7168, i64 %arg7756, i64 %Z5t$lst)     ; tail call
  ret void
}


define void @lam8318(i64 %env8319, i64 %_957166, i64 %a7046) {
  %envptr9880 = inttoptr i64 %env8319 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9881 = getelementptr inbounds i64, i64* %envptr9880, i64 4                  ; &envptr9880[4]
  %FvJ$new = load i64, i64* %envptr9881, align 8                                     ; load; *envptr9881
  %envptr9882 = inttoptr i64 %env8319 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9883 = getelementptr inbounds i64, i64* %envptr9882, i64 3                  ; &envptr9882[3]
  %ArG$tail = load i64, i64* %envptr9883, align 8                                    ; load; *envptr9883
  %envptr9884 = inttoptr i64 %env8319 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9885 = getelementptr inbounds i64, i64* %envptr9884, i64 2                  ; &envptr9884[2]
  %cont7147 = load i64, i64* %envptr9885, align 8                                    ; load; *envptr9885
  %envptr9886 = inttoptr i64 %env8319 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9887 = getelementptr inbounds i64, i64* %envptr9886, i64 1                  ; &envptr9886[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr9887, align 8                         ; load; *envptr9887
  %arg7759 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7167 = call i64 @prim_make_45vector(i64 %arg7759, i64 %a7046)              ; call prim_make_45vector
  %cloptr9888 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9890 = getelementptr inbounds i64, i64* %cloptr9888, i64 1                    ; &eptr9890[1]
  %eptr9891 = getelementptr inbounds i64, i64* %cloptr9888, i64 2                    ; &eptr9891[2]
  %eptr9892 = getelementptr inbounds i64, i64* %cloptr9888, i64 3                    ; &eptr9892[3]
  %eptr9893 = getelementptr inbounds i64, i64* %cloptr9888, i64 4                    ; &eptr9893[4]
  store i64 %GDH$_37wind_45stack, i64* %eptr9890                                     ; *eptr9890 = %GDH$_37wind_45stack
  store i64 %cont7147, i64* %eptr9891                                                ; *eptr9891 = %cont7147
  store i64 %ArG$tail, i64* %eptr9892                                                ; *eptr9892 = %ArG$tail
  store i64 %FvJ$new, i64* %eptr9893                                                 ; *eptr9893 = %FvJ$new
  %eptr9889 = getelementptr inbounds i64, i64* %cloptr9888, i64 0                    ; &cloptr9888[0]
  %f9894 = ptrtoint void(i64,i64,i64)* @lam8315 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9894, i64* %eptr9889                                                   ; store fptr
  %arg7762 = ptrtoint i64* %cloptr9888 to i64                                        ; closure cast; i64* -> i64
  %arg7761 = add i64 0, 0                                                            ; quoted ()
  %cloptr9895 = inttoptr i64 %arg7762 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9895)                                         ; assert function application
  %i0ptr9896 = getelementptr inbounds i64, i64* %cloptr9895, i64 0                   ; &cloptr9895[0]
  %f9898 = load i64, i64* %i0ptr9896, align 8                                        ; load; *i0ptr9896
  %fptr9897 = inttoptr i64 %f9898 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9897(i64 %arg7762, i64 %arg7761, i64 %retprim7167)  ; tail call
  ret void
}


define void @lam8315(i64 %env8316, i64 %_957160, i64 %QJb$f) {
  %envptr9899 = inttoptr i64 %env8316 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9900 = getelementptr inbounds i64, i64* %envptr9899, i64 4                  ; &envptr9899[4]
  %FvJ$new = load i64, i64* %envptr9900, align 8                                     ; load; *envptr9900
  %envptr9901 = inttoptr i64 %env8316 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9902 = getelementptr inbounds i64, i64* %envptr9901, i64 3                  ; &envptr9901[3]
  %ArG$tail = load i64, i64* %envptr9902, align 8                                    ; load; *envptr9902
  %envptr9903 = inttoptr i64 %env8316 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9904 = getelementptr inbounds i64, i64* %envptr9903, i64 2                  ; &envptr9903[2]
  %cont7147 = load i64, i64* %envptr9904, align 8                                    ; load; *envptr9904
  %envptr9905 = inttoptr i64 %env8316 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9906 = getelementptr inbounds i64, i64* %envptr9905, i64 1                  ; &envptr9905[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr9906, align 8                         ; load; *envptr9906
  %arg7764 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9907 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9909 = getelementptr inbounds i64, i64* %cloptr9907, i64 1                    ; &eptr9909[1]
  %eptr9910 = getelementptr inbounds i64, i64* %cloptr9907, i64 2                    ; &eptr9910[2]
  %eptr9911 = getelementptr inbounds i64, i64* %cloptr9907, i64 3                    ; &eptr9911[3]
  store i64 %GDH$_37wind_45stack, i64* %eptr9909                                     ; *eptr9909 = %GDH$_37wind_45stack
  store i64 %ArG$tail, i64* %eptr9910                                                ; *eptr9910 = %ArG$tail
  store i64 %QJb$f, i64* %eptr9911                                                   ; *eptr9911 = %QJb$f
  %eptr9908 = getelementptr inbounds i64, i64* %cloptr9907, i64 0                    ; &cloptr9907[0]
  %f9912 = ptrtoint void(i64,i64,i64)* @lam8312 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9912, i64* %eptr9908                                                   ; store fptr
  %arg7763 = ptrtoint i64* %cloptr9907 to i64                                        ; closure cast; i64* -> i64
  %dsv$_956939 = call i64 @prim_vector_45set_33(i64 %QJb$f, i64 %arg7764, i64 %arg7763); call prim_vector_45set_33
  %arg7789 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7054 = call i64 @prim_vector_45ref(i64 %QJb$f, i64 %arg7789)                     ; call prim_vector_45ref
  %arg7791 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7055 = call i64 @prim_vector_45ref(i64 %GDH$_37wind_45stack, i64 %arg7791)       ; call prim_vector_45ref
  %cloptr9913 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9915 = getelementptr inbounds i64, i64* %cloptr9913, i64 1                    ; &eptr9915[1]
  %eptr9916 = getelementptr inbounds i64, i64* %cloptr9913, i64 2                    ; &eptr9916[2]
  %eptr9917 = getelementptr inbounds i64, i64* %cloptr9913, i64 3                    ; &eptr9917[3]
  %eptr9918 = getelementptr inbounds i64, i64* %cloptr9913, i64 4                    ; &eptr9918[4]
  store i64 %GDH$_37wind_45stack, i64* %eptr9915                                     ; *eptr9915 = %GDH$_37wind_45stack
  store i64 %cont7147, i64* %eptr9916                                                ; *eptr9916 = %cont7147
  store i64 %ArG$tail, i64* %eptr9917                                                ; *eptr9917 = %ArG$tail
  store i64 %FvJ$new, i64* %eptr9918                                                 ; *eptr9918 = %FvJ$new
  %eptr9914 = getelementptr inbounds i64, i64* %cloptr9913, i64 0                    ; &cloptr9913[0]
  %f9919 = ptrtoint void(i64,i64,i64)* @lam8300 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9919, i64* %eptr9914                                                   ; store fptr
  %arg7794 = ptrtoint i64* %cloptr9913 to i64                                        ; closure cast; i64* -> i64
  %cloptr9920 = inttoptr i64 %a7054 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9920)                                         ; assert function application
  %i0ptr9921 = getelementptr inbounds i64, i64* %cloptr9920, i64 0                   ; &cloptr9920[0]
  %f9923 = load i64, i64* %i0ptr9921, align 8                                        ; load; *i0ptr9921
  %fptr9922 = inttoptr i64 %f9923 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9922(i64 %a7054, i64 %arg7794, i64 %a7055)          ; tail call
  ret void
}


define void @lam8312(i64 %env8313, i64 %cont7161, i64 %cg7$l) {
  %envptr9924 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9925 = getelementptr inbounds i64, i64* %envptr9924, i64 3                  ; &envptr9924[3]
  %QJb$f = load i64, i64* %envptr9925, align 8                                       ; load; *envptr9925
  %envptr9926 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9927 = getelementptr inbounds i64, i64* %envptr9926, i64 2                  ; &envptr9926[2]
  %ArG$tail = load i64, i64* %envptr9927, align 8                                    ; load; *envptr9927
  %envptr9928 = inttoptr i64 %env8313 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9929 = getelementptr inbounds i64, i64* %envptr9928, i64 1                  ; &envptr9928[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr9929, align 8                         ; load; *envptr9929
  %a7047 = call i64 @prim_eq_63(i64 %cg7$l, i64 %ArG$tail)                           ; call prim_eq_63
  %a7048 = call i64 @prim_not(i64 %a7047)                                            ; call prim_not
  %cmp9930 = icmp eq i64 %a7048, 15                                                  ; false?
  br i1 %cmp9930, label %else9932, label %then9931                                   ; if

then9931:
  %a7049 = call i64 @prim_cdr(i64 %cg7$l)                                            ; call prim_cdr
  %arg7771 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7164 = call i64 @prim_vector_45set_33(i64 %GDH$_37wind_45stack, i64 %arg7771, i64 %a7049); call prim_vector_45set_33
  %cloptr9933 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9935 = getelementptr inbounds i64, i64* %cloptr9933, i64 1                    ; &eptr9935[1]
  %eptr9936 = getelementptr inbounds i64, i64* %cloptr9933, i64 2                    ; &eptr9936[2]
  %eptr9937 = getelementptr inbounds i64, i64* %cloptr9933, i64 3                    ; &eptr9937[3]
  store i64 %cont7161, i64* %eptr9935                                                ; *eptr9935 = %cont7161
  store i64 %QJb$f, i64* %eptr9936                                                   ; *eptr9936 = %QJb$f
  store i64 %cg7$l, i64* %eptr9937                                                   ; *eptr9937 = %cg7$l
  %eptr9934 = getelementptr inbounds i64, i64* %cloptr9933, i64 0                    ; &cloptr9933[0]
  %f9938 = ptrtoint void(i64,i64,i64)* @lam8308 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9938, i64* %eptr9934                                                   ; store fptr
  %arg7775 = ptrtoint i64* %cloptr9933 to i64                                        ; closure cast; i64* -> i64
  %arg7774 = add i64 0, 0                                                            ; quoted ()
  %cloptr9939 = inttoptr i64 %arg7775 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9939)                                         ; assert function application
  %i0ptr9940 = getelementptr inbounds i64, i64* %cloptr9939, i64 0                   ; &cloptr9939[0]
  %f9942 = load i64, i64* %i0ptr9940, align 8                                        ; load; *i0ptr9940
  %fptr9941 = inttoptr i64 %f9942 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9941(i64 %arg7775, i64 %arg7774, i64 %retprim7164)  ; tail call
  ret void

else9932:
  %retprim7165 = call i64 @prim_void()                                               ; call prim_void
  %arg7787 = add i64 0, 0                                                            ; quoted ()
  %cloptr9943 = inttoptr i64 %cont7161 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9943)                                         ; assert function application
  %i0ptr9944 = getelementptr inbounds i64, i64* %cloptr9943, i64 0                   ; &cloptr9943[0]
  %f9946 = load i64, i64* %i0ptr9944, align 8                                        ; load; *i0ptr9944
  %fptr9945 = inttoptr i64 %f9946 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9945(i64 %cont7161, i64 %arg7787, i64 %retprim7165) ; tail call
  ret void
}


define void @lam8308(i64 %env8309, i64 %_957162, i64 %SVu$_956940) {
  %envptr9947 = inttoptr i64 %env8309 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9948 = getelementptr inbounds i64, i64* %envptr9947, i64 3                  ; &envptr9947[3]
  %cg7$l = load i64, i64* %envptr9948, align 8                                       ; load; *envptr9948
  %envptr9949 = inttoptr i64 %env8309 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9950 = getelementptr inbounds i64, i64* %envptr9949, i64 2                  ; &envptr9949[2]
  %QJb$f = load i64, i64* %envptr9950, align 8                                       ; load; *envptr9950
  %envptr9951 = inttoptr i64 %env8309 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9952 = getelementptr inbounds i64, i64* %envptr9951, i64 1                  ; &envptr9951[1]
  %cont7161 = load i64, i64* %envptr9952, align 8                                    ; load; *envptr9952
  %a7050 = call i64 @prim_car(i64 %cg7$l)                                            ; call prim_car
  %a7051 = call i64 @prim_cdr(i64 %a7050)                                            ; call prim_cdr
  %cloptr9953 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9955 = getelementptr inbounds i64, i64* %cloptr9953, i64 1                    ; &eptr9955[1]
  %eptr9956 = getelementptr inbounds i64, i64* %cloptr9953, i64 2                    ; &eptr9956[2]
  %eptr9957 = getelementptr inbounds i64, i64* %cloptr9953, i64 3                    ; &eptr9957[3]
  store i64 %cont7161, i64* %eptr9955                                                ; *eptr9955 = %cont7161
  store i64 %QJb$f, i64* %eptr9956                                                   ; *eptr9956 = %QJb$f
  store i64 %cg7$l, i64* %eptr9957                                                   ; *eptr9957 = %cg7$l
  %eptr9954 = getelementptr inbounds i64, i64* %cloptr9953, i64 0                    ; &cloptr9953[0]
  %f9958 = ptrtoint void(i64,i64,i64)* @lam8306 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9958, i64* %eptr9954                                                   ; store fptr
  %arg7778 = ptrtoint i64* %cloptr9953 to i64                                        ; closure cast; i64* -> i64
  %cloptr9959 = inttoptr i64 %a7051 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9959)                                         ; assert function application
  %i0ptr9960 = getelementptr inbounds i64, i64* %cloptr9959, i64 0                   ; &cloptr9959[0]
  %f9962 = load i64, i64* %i0ptr9960, align 8                                        ; load; *i0ptr9960
  %fptr9961 = inttoptr i64 %f9962 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9961(i64 %a7051, i64 %arg7778)                      ; tail call
  ret void
}


define void @lam8306(i64 %env8307, i64 %_957163, i64 %hbs$_956941) {
  %envptr9963 = inttoptr i64 %env8307 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9964 = getelementptr inbounds i64, i64* %envptr9963, i64 3                  ; &envptr9963[3]
  %cg7$l = load i64, i64* %envptr9964, align 8                                       ; load; *envptr9964
  %envptr9965 = inttoptr i64 %env8307 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9966 = getelementptr inbounds i64, i64* %envptr9965, i64 2                  ; &envptr9965[2]
  %QJb$f = load i64, i64* %envptr9966, align 8                                       ; load; *envptr9966
  %envptr9967 = inttoptr i64 %env8307 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9968 = getelementptr inbounds i64, i64* %envptr9967, i64 1                  ; &envptr9967[1]
  %cont7161 = load i64, i64* %envptr9968, align 8                                    ; load; *envptr9968
  %arg7780 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7052 = call i64 @prim_vector_45ref(i64 %QJb$f, i64 %arg7780)                     ; call prim_vector_45ref
  %a7053 = call i64 @prim_cdr(i64 %cg7$l)                                            ; call prim_cdr
  %cloptr9969 = inttoptr i64 %a7052 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9969)                                         ; assert function application
  %i0ptr9970 = getelementptr inbounds i64, i64* %cloptr9969, i64 0                   ; &cloptr9969[0]
  %f9972 = load i64, i64* %i0ptr9970, align 8                                        ; load; *i0ptr9970
  %fptr9971 = inttoptr i64 %f9972 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9971(i64 %a7052, i64 %cont7161, i64 %a7053)         ; tail call
  ret void
}


define void @lam8300(i64 %env8301, i64 %_957149, i64 %NQL$_956938) {
  %envptr9973 = inttoptr i64 %env8301 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9974 = getelementptr inbounds i64, i64* %envptr9973, i64 4                  ; &envptr9973[4]
  %FvJ$new = load i64, i64* %envptr9974, align 8                                     ; load; *envptr9974
  %envptr9975 = inttoptr i64 %env8301 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9976 = getelementptr inbounds i64, i64* %envptr9975, i64 3                  ; &envptr9975[3]
  %ArG$tail = load i64, i64* %envptr9976, align 8                                    ; load; *envptr9976
  %envptr9977 = inttoptr i64 %env8301 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9978 = getelementptr inbounds i64, i64* %envptr9977, i64 2                  ; &envptr9977[2]
  %cont7147 = load i64, i64* %envptr9978, align 8                                    ; load; *envptr9978
  %envptr9979 = inttoptr i64 %env8301 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9980 = getelementptr inbounds i64, i64* %envptr9979, i64 1                  ; &envptr9979[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr9980, align 8                         ; load; *envptr9980
  %cloptr9981 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9982 = getelementptr inbounds i64, i64* %cloptr9981, i64 0                    ; &cloptr9981[0]
  %f9983 = ptrtoint void(i64,i64)* @lam8298 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9983, i64* %eptr9982                                                   ; store fptr
  %arg7797 = ptrtoint i64* %cloptr9981 to i64                                        ; closure cast; i64* -> i64
  %cloptr9984 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9986 = getelementptr inbounds i64, i64* %cloptr9984, i64 1                    ; &eptr9986[1]
  %eptr9987 = getelementptr inbounds i64, i64* %cloptr9984, i64 2                    ; &eptr9987[2]
  %eptr9988 = getelementptr inbounds i64, i64* %cloptr9984, i64 3                    ; &eptr9988[3]
  %eptr9989 = getelementptr inbounds i64, i64* %cloptr9984, i64 4                    ; &eptr9989[4]
  store i64 %GDH$_37wind_45stack, i64* %eptr9986                                     ; *eptr9986 = %GDH$_37wind_45stack
  store i64 %cont7147, i64* %eptr9987                                                ; *eptr9987 = %cont7147
  store i64 %ArG$tail, i64* %eptr9988                                                ; *eptr9988 = %ArG$tail
  store i64 %FvJ$new, i64* %eptr9989                                                 ; *eptr9989 = %FvJ$new
  %eptr9985 = getelementptr inbounds i64, i64* %cloptr9984, i64 0                    ; &cloptr9984[0]
  %f9990 = ptrtoint void(i64,i64,i64)* @lam8295 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9990, i64* %eptr9985                                                   ; store fptr
  %arg7796 = ptrtoint i64* %cloptr9984 to i64                                        ; closure cast; i64* -> i64
  %cloptr9991 = inttoptr i64 %arg7797 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9991)                                         ; assert function application
  %i0ptr9992 = getelementptr inbounds i64, i64* %cloptr9991, i64 0                   ; &cloptr9991[0]
  %f9994 = load i64, i64* %i0ptr9992, align 8                                        ; load; *i0ptr9992
  %fptr9993 = inttoptr i64 %f9994 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9993(i64 %arg7797, i64 %arg7796)                    ; tail call
  ret void
}


define void @lam8298(i64 %env8299, i64 %cju$lst7159) {
  %cont7158 = call i64 @prim_car(i64 %cju$lst7159)                                   ; call prim_car
  %cju$lst = call i64 @prim_cdr(i64 %cju$lst7159)                                    ; call prim_cdr
  %arg7801 = add i64 0, 0                                                            ; quoted ()
  %cloptr9995 = inttoptr i64 %cont7158 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9995)                                         ; assert function application
  %i0ptr9996 = getelementptr inbounds i64, i64* %cloptr9995, i64 0                   ; &cloptr9995[0]
  %f9998 = load i64, i64* %i0ptr9996, align 8                                        ; load; *i0ptr9996
  %fptr9997 = inttoptr i64 %f9998 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9997(i64 %cont7158, i64 %arg7801, i64 %cju$lst)     ; tail call
  ret void
}


define void @lam8295(i64 %env8296, i64 %_957156, i64 %a7056) {
  %envptr9999 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr10000 = getelementptr inbounds i64, i64* %envptr9999, i64 4                 ; &envptr9999[4]
  %FvJ$new = load i64, i64* %envptr10000, align 8                                    ; load; *envptr10000
  %envptr10001 = inttoptr i64 %env8296 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10002 = getelementptr inbounds i64, i64* %envptr10001, i64 3                ; &envptr10001[3]
  %ArG$tail = load i64, i64* %envptr10002, align 8                                   ; load; *envptr10002
  %envptr10003 = inttoptr i64 %env8296 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10004 = getelementptr inbounds i64, i64* %envptr10003, i64 2                ; &envptr10003[2]
  %cont7147 = load i64, i64* %envptr10004, align 8                                   ; load; *envptr10004
  %envptr10005 = inttoptr i64 %env8296 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10006 = getelementptr inbounds i64, i64* %envptr10005, i64 1                ; &envptr10005[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr10006, align 8                        ; load; *envptr10006
  %arg7804 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7157 = call i64 @prim_make_45vector(i64 %arg7804, i64 %a7056)              ; call prim_make_45vector
  %cloptr10007 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10009 = getelementptr inbounds i64, i64* %cloptr10007, i64 1                  ; &eptr10009[1]
  %eptr10010 = getelementptr inbounds i64, i64* %cloptr10007, i64 2                  ; &eptr10010[2]
  %eptr10011 = getelementptr inbounds i64, i64* %cloptr10007, i64 3                  ; &eptr10011[3]
  %eptr10012 = getelementptr inbounds i64, i64* %cloptr10007, i64 4                  ; &eptr10012[4]
  store i64 %GDH$_37wind_45stack, i64* %eptr10009                                    ; *eptr10009 = %GDH$_37wind_45stack
  store i64 %cont7147, i64* %eptr10010                                               ; *eptr10010 = %cont7147
  store i64 %ArG$tail, i64* %eptr10011                                               ; *eptr10011 = %ArG$tail
  store i64 %FvJ$new, i64* %eptr10012                                                ; *eptr10012 = %FvJ$new
  %eptr10008 = getelementptr inbounds i64, i64* %cloptr10007, i64 0                  ; &cloptr10007[0]
  %f10013 = ptrtoint void(i64,i64,i64)* @lam8292 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10013, i64* %eptr10008                                                 ; store fptr
  %arg7807 = ptrtoint i64* %cloptr10007 to i64                                       ; closure cast; i64* -> i64
  %arg7806 = add i64 0, 0                                                            ; quoted ()
  %cloptr10014 = inttoptr i64 %arg7807 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10014)                                        ; assert function application
  %i0ptr10015 = getelementptr inbounds i64, i64* %cloptr10014, i64 0                 ; &cloptr10014[0]
  %f10017 = load i64, i64* %i0ptr10015, align 8                                      ; load; *i0ptr10015
  %fptr10016 = inttoptr i64 %f10017 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10016(i64 %arg7807, i64 %arg7806, i64 %retprim7157) ; tail call
  ret void
}


define void @lam8292(i64 %env8293, i64 %_957150, i64 %tdb$f) {
  %envptr10018 = inttoptr i64 %env8293 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10019 = getelementptr inbounds i64, i64* %envptr10018, i64 4                ; &envptr10018[4]
  %FvJ$new = load i64, i64* %envptr10019, align 8                                    ; load; *envptr10019
  %envptr10020 = inttoptr i64 %env8293 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10021 = getelementptr inbounds i64, i64* %envptr10020, i64 3                ; &envptr10020[3]
  %ArG$tail = load i64, i64* %envptr10021, align 8                                   ; load; *envptr10021
  %envptr10022 = inttoptr i64 %env8293 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10023 = getelementptr inbounds i64, i64* %envptr10022, i64 2                ; &envptr10022[2]
  %cont7147 = load i64, i64* %envptr10023, align 8                                   ; load; *envptr10023
  %envptr10024 = inttoptr i64 %env8293 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10025 = getelementptr inbounds i64, i64* %envptr10024, i64 1                ; &envptr10024[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr10025, align 8                        ; load; *envptr10025
  %arg7809 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10026 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10028 = getelementptr inbounds i64, i64* %cloptr10026, i64 1                  ; &eptr10028[1]
  %eptr10029 = getelementptr inbounds i64, i64* %cloptr10026, i64 2                  ; &eptr10029[2]
  %eptr10030 = getelementptr inbounds i64, i64* %cloptr10026, i64 3                  ; &eptr10030[3]
  store i64 %GDH$_37wind_45stack, i64* %eptr10028                                    ; *eptr10028 = %GDH$_37wind_45stack
  store i64 %tdb$f, i64* %eptr10029                                                  ; *eptr10029 = %tdb$f
  store i64 %ArG$tail, i64* %eptr10030                                               ; *eptr10030 = %ArG$tail
  %eptr10027 = getelementptr inbounds i64, i64* %cloptr10026, i64 0                  ; &cloptr10026[0]
  %f10031 = ptrtoint void(i64,i64,i64)* @lam8289 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10031, i64* %eptr10027                                                 ; store fptr
  %arg7808 = ptrtoint i64* %cloptr10026 to i64                                       ; closure cast; i64* -> i64
  %YAO$_956942 = call i64 @prim_vector_45set_33(i64 %tdb$f, i64 %arg7809, i64 %arg7808); call prim_vector_45set_33
  %arg7833 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7063 = call i64 @prim_vector_45ref(i64 %tdb$f, i64 %arg7833)                     ; call prim_vector_45ref
  %cloptr10032 = inttoptr i64 %a7063 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10032)                                        ; assert function application
  %i0ptr10033 = getelementptr inbounds i64, i64* %cloptr10032, i64 0                 ; &cloptr10032[0]
  %f10035 = load i64, i64* %i0ptr10033, align 8                                      ; load; *i0ptr10033
  %fptr10034 = inttoptr i64 %f10035 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10034(i64 %a7063, i64 %cont7147, i64 %FvJ$new)      ; tail call
  ret void
}


define void @lam8289(i64 %env8290, i64 %cont7151, i64 %GeV$l) {
  %envptr10036 = inttoptr i64 %env8290 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10037 = getelementptr inbounds i64, i64* %envptr10036, i64 3                ; &envptr10036[3]
  %ArG$tail = load i64, i64* %envptr10037, align 8                                   ; load; *envptr10037
  %envptr10038 = inttoptr i64 %env8290 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10039 = getelementptr inbounds i64, i64* %envptr10038, i64 2                ; &envptr10038[2]
  %tdb$f = load i64, i64* %envptr10039, align 8                                      ; load; *envptr10039
  %envptr10040 = inttoptr i64 %env8290 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10041 = getelementptr inbounds i64, i64* %envptr10040, i64 1                ; &envptr10040[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr10041, align 8                        ; load; *envptr10041
  %a7057 = call i64 @prim_eq_63(i64 %GeV$l, i64 %ArG$tail)                           ; call prim_eq_63
  %a7058 = call i64 @prim_not(i64 %a7057)                                            ; call prim_not
  %cmp10042 = icmp eq i64 %a7058, 15                                                 ; false?
  br i1 %cmp10042, label %else10044, label %then10043                                ; if

then10043:
  %arg7814 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7059 = call i64 @prim_vector_45ref(i64 %tdb$f, i64 %arg7814)                     ; call prim_vector_45ref
  %a7060 = call i64 @prim_cdr(i64 %GeV$l)                                            ; call prim_cdr
  %cloptr10045 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10047 = getelementptr inbounds i64, i64* %cloptr10045, i64 1                  ; &eptr10047[1]
  %eptr10048 = getelementptr inbounds i64, i64* %cloptr10045, i64 2                  ; &eptr10048[2]
  %eptr10049 = getelementptr inbounds i64, i64* %cloptr10045, i64 3                  ; &eptr10049[3]
  store i64 %GDH$_37wind_45stack, i64* %eptr10047                                    ; *eptr10047 = %GDH$_37wind_45stack
  store i64 %GeV$l, i64* %eptr10048                                                  ; *eptr10048 = %GeV$l
  store i64 %cont7151, i64* %eptr10049                                               ; *eptr10049 = %cont7151
  %eptr10046 = getelementptr inbounds i64, i64* %cloptr10045, i64 0                  ; &cloptr10045[0]
  %f10050 = ptrtoint void(i64,i64,i64)* @lam8285 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10050, i64* %eptr10046                                                 ; store fptr
  %arg7818 = ptrtoint i64* %cloptr10045 to i64                                       ; closure cast; i64* -> i64
  %cloptr10051 = inttoptr i64 %a7059 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10051)                                        ; assert function application
  %i0ptr10052 = getelementptr inbounds i64, i64* %cloptr10051, i64 0                 ; &cloptr10051[0]
  %f10054 = load i64, i64* %i0ptr10052, align 8                                      ; load; *i0ptr10052
  %fptr10053 = inttoptr i64 %f10054 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10053(i64 %a7059, i64 %arg7818, i64 %a7060)         ; tail call
  ret void

else10044:
  %retprim7155 = call i64 @prim_void()                                               ; call prim_void
  %arg7831 = add i64 0, 0                                                            ; quoted ()
  %cloptr10055 = inttoptr i64 %cont7151 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10055)                                        ; assert function application
  %i0ptr10056 = getelementptr inbounds i64, i64* %cloptr10055, i64 0                 ; &cloptr10055[0]
  %f10058 = load i64, i64* %i0ptr10056, align 8                                      ; load; *i0ptr10056
  %fptr10057 = inttoptr i64 %f10058 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10057(i64 %cont7151, i64 %arg7831, i64 %retprim7155); tail call
  ret void
}


define void @lam8285(i64 %env8286, i64 %_957152, i64 %J7n$_956943) {
  %envptr10059 = inttoptr i64 %env8286 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10060 = getelementptr inbounds i64, i64* %envptr10059, i64 3                ; &envptr10059[3]
  %cont7151 = load i64, i64* %envptr10060, align 8                                   ; load; *envptr10060
  %envptr10061 = inttoptr i64 %env8286 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10062 = getelementptr inbounds i64, i64* %envptr10061, i64 2                ; &envptr10061[2]
  %GeV$l = load i64, i64* %envptr10062, align 8                                      ; load; *envptr10062
  %envptr10063 = inttoptr i64 %env8286 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10064 = getelementptr inbounds i64, i64* %envptr10063, i64 1                ; &envptr10063[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr10064, align 8                        ; load; *envptr10064
  %a7061 = call i64 @prim_car(i64 %GeV$l)                                            ; call prim_car
  %a7062 = call i64 @prim_car(i64 %a7061)                                            ; call prim_car
  %cloptr10065 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10067 = getelementptr inbounds i64, i64* %cloptr10065, i64 1                  ; &eptr10067[1]
  %eptr10068 = getelementptr inbounds i64, i64* %cloptr10065, i64 2                  ; &eptr10068[2]
  %eptr10069 = getelementptr inbounds i64, i64* %cloptr10065, i64 3                  ; &eptr10069[3]
  store i64 %GDH$_37wind_45stack, i64* %eptr10067                                    ; *eptr10067 = %GDH$_37wind_45stack
  store i64 %GeV$l, i64* %eptr10068                                                  ; *eptr10068 = %GeV$l
  store i64 %cont7151, i64* %eptr10069                                               ; *eptr10069 = %cont7151
  %eptr10066 = getelementptr inbounds i64, i64* %cloptr10065, i64 0                  ; &cloptr10065[0]
  %f10070 = ptrtoint void(i64,i64,i64)* @lam8283 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10070, i64* %eptr10066                                                 ; store fptr
  %arg7822 = ptrtoint i64* %cloptr10065 to i64                                       ; closure cast; i64* -> i64
  %cloptr10071 = inttoptr i64 %a7062 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10071)                                        ; assert function application
  %i0ptr10072 = getelementptr inbounds i64, i64* %cloptr10071, i64 0                 ; &cloptr10071[0]
  %f10074 = load i64, i64* %i0ptr10072, align 8                                      ; load; *i0ptr10072
  %fptr10073 = inttoptr i64 %f10074 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10073(i64 %a7062, i64 %arg7822)                     ; tail call
  ret void
}


define void @lam8283(i64 %env8284, i64 %_957153, i64 %E1d$_956944) {
  %envptr10075 = inttoptr i64 %env8284 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10076 = getelementptr inbounds i64, i64* %envptr10075, i64 3                ; &envptr10075[3]
  %cont7151 = load i64, i64* %envptr10076, align 8                                   ; load; *envptr10076
  %envptr10077 = inttoptr i64 %env8284 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10078 = getelementptr inbounds i64, i64* %envptr10077, i64 2                ; &envptr10077[2]
  %GeV$l = load i64, i64* %envptr10078, align 8                                      ; load; *envptr10078
  %envptr10079 = inttoptr i64 %env8284 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10080 = getelementptr inbounds i64, i64* %envptr10079, i64 1                ; &envptr10079[1]
  %GDH$_37wind_45stack = load i64, i64* %envptr10080, align 8                        ; load; *envptr10080
  %arg7825 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7154 = call i64 @prim_vector_45set_33(i64 %GDH$_37wind_45stack, i64 %arg7825, i64 %GeV$l); call prim_vector_45set_33
  %arg7828 = add i64 0, 0                                                            ; quoted ()
  %cloptr10081 = inttoptr i64 %cont7151 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10081)                                        ; assert function application
  %i0ptr10082 = getelementptr inbounds i64, i64* %cloptr10081, i64 0                 ; &cloptr10081[0]
  %f10084 = load i64, i64* %i0ptr10082, align 8                                      ; load; *i0ptr10082
  %fptr10083 = inttoptr i64 %f10084 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10083(i64 %cont7151, i64 %arg7828, i64 %retprim7154); tail call
  ret void
}


define void @lam8274(i64 %env8275, i64 %DVU$lst7171) {
  %cont7170 = call i64 @prim_car(i64 %DVU$lst7171)                                   ; call prim_car
  %DVU$lst = call i64 @prim_cdr(i64 %DVU$lst7171)                                    ; call prim_cdr
  %arg7849 = add i64 0, 0                                                            ; quoted ()
  %rva8104 = add i64 0, 0                                                            ; quoted ()
  %rva8103 = call i64 @prim_cons(i64 %DVU$lst, i64 %rva8104)                         ; call prim_cons
  %rva8102 = call i64 @prim_cons(i64 %arg7849, i64 %rva8103)                         ; call prim_cons
  %cloptr10085 = inttoptr i64 %cont7170 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10085)                                        ; assert function application
  %i0ptr10086 = getelementptr inbounds i64, i64* %cloptr10085, i64 0                 ; &cloptr10085[0]
  %f10088 = load i64, i64* %i0ptr10086, align 8                                      ; load; *i0ptr10086
  %fptr10087 = inttoptr i64 %f10088 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10087(i64 %cont7170, i64 %rva8102)                  ; tail call
  ret void
}


define void @lam8270(i64 %env8271, i64 %rvp8111) {
  %_950 = call i64 @prim_car(i64 %rvp8111)                                           ; call prim_car
  %rvp8109 = call i64 @prim_cdr(i64 %rvp8111)                                        ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp8109)                                              ; call prim_car
  %na8106 = call i64 @prim_cdr(i64 %rvp8109)                                         ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva8108 = add i64 0, 0                                                            ; quoted ()
  %rva8107 = call i64 @prim_cons(i64 %_951, i64 %rva8108)                            ; call prim_cons
  %cloptr10089 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10089)                                        ; assert function application
  %i0ptr10090 = getelementptr inbounds i64, i64* %cloptr10089, i64 0                 ; &cloptr10089[0]
  %f10092 = load i64, i64* %i0ptr10090, align 8                                      ; load; *i0ptr10090
  %fptr10091 = inttoptr i64 %f10092 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10091(i64 %_951, i64 %rva8107)                      ; tail call
  ret void
}


define void @lam8259(i64 %env8260, i64 %cont7182, i64 %cDt$_37foldl) {
  %envptr10093 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10094 = getelementptr inbounds i64, i64* %envptr10093, i64 3                ; &envptr10093[3]
  %H2k$_37foldr = load i64, i64* %envptr10094, align 8                               ; load; *envptr10094
  %envptr10095 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10096 = getelementptr inbounds i64, i64* %envptr10095, i64 2                ; &envptr10095[2]
  %sgK$_37map1 = load i64, i64* %envptr10096, align 8                                ; load; *envptr10096
  %envptr10097 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10098 = getelementptr inbounds i64, i64* %envptr10097, i64 1                ; &envptr10097[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10098, align 8                              ; load; *envptr10098
  %arg7855 = add i64 0, 0                                                            ; quoted ()
  %cloptr10099 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10101 = getelementptr inbounds i64, i64* %cloptr10099, i64 1                  ; &eptr10101[1]
  %eptr10102 = getelementptr inbounds i64, i64* %cloptr10099, i64 2                  ; &eptr10102[2]
  %eptr10103 = getelementptr inbounds i64, i64* %cloptr10099, i64 3                  ; &eptr10103[3]
  %eptr10104 = getelementptr inbounds i64, i64* %cloptr10099, i64 4                  ; &eptr10104[4]
  store i64 %cDt$_37foldl, i64* %eptr10101                                           ; *eptr10101 = %cDt$_37foldl
  store i64 %jkj$_37foldr1, i64* %eptr10102                                          ; *eptr10102 = %jkj$_37foldr1
  store i64 %sgK$_37map1, i64* %eptr10103                                            ; *eptr10103 = %sgK$_37map1
  store i64 %H2k$_37foldr, i64* %eptr10104                                           ; *eptr10104 = %H2k$_37foldr
  %eptr10100 = getelementptr inbounds i64, i64* %cloptr10099, i64 0                  ; &cloptr10099[0]
  %f10105 = ptrtoint void(i64,i64)* @lam8256 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10105, i64* %eptr10100                                                 ; store fptr
  %arg7854 = ptrtoint i64* %cloptr10099 to i64                                       ; closure cast; i64* -> i64
  %cloptr10106 = inttoptr i64 %cont7182 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10106)                                        ; assert function application
  %i0ptr10107 = getelementptr inbounds i64, i64* %cloptr10106, i64 0                 ; &cloptr10106[0]
  %f10109 = load i64, i64* %i0ptr10107, align 8                                      ; load; *i0ptr10107
  %fptr10108 = inttoptr i64 %f10109 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10108(i64 %cont7182, i64 %arg7855, i64 %arg7854)    ; tail call
  ret void
}


define void @lam8256(i64 %env8257, i64 %x2N$args7184) {
  %envptr10110 = inttoptr i64 %env8257 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10111 = getelementptr inbounds i64, i64* %envptr10110, i64 4                ; &envptr10110[4]
  %H2k$_37foldr = load i64, i64* %envptr10111, align 8                               ; load; *envptr10111
  %envptr10112 = inttoptr i64 %env8257 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10113 = getelementptr inbounds i64, i64* %envptr10112, i64 3                ; &envptr10112[3]
  %sgK$_37map1 = load i64, i64* %envptr10113, align 8                                ; load; *envptr10113
  %envptr10114 = inttoptr i64 %env8257 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10115 = getelementptr inbounds i64, i64* %envptr10114, i64 2                ; &envptr10114[2]
  %jkj$_37foldr1 = load i64, i64* %envptr10115, align 8                              ; load; *envptr10115
  %envptr10116 = inttoptr i64 %env8257 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10117 = getelementptr inbounds i64, i64* %envptr10116, i64 1                ; &envptr10116[1]
  %cDt$_37foldl = load i64, i64* %envptr10117, align 8                               ; load; *envptr10117
  %cont7183 = call i64 @prim_car(i64 %x2N$args7184)                                  ; call prim_car
  %x2N$args = call i64 @prim_cdr(i64 %x2N$args7184)                                  ; call prim_cdr
  %R1Q$f = call i64 @prim_car(i64 %x2N$args)                                         ; call prim_car
  %a6985 = call i64 @prim_cdr(i64 %x2N$args)                                         ; call prim_cdr
  %retprim7203 = call i64 @prim_car(i64 %a6985)                                      ; call prim_car
  %cloptr10118 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10120 = getelementptr inbounds i64, i64* %cloptr10118, i64 1                  ; &eptr10120[1]
  %eptr10121 = getelementptr inbounds i64, i64* %cloptr10118, i64 2                  ; &eptr10121[2]
  %eptr10122 = getelementptr inbounds i64, i64* %cloptr10118, i64 3                  ; &eptr10122[3]
  %eptr10123 = getelementptr inbounds i64, i64* %cloptr10118, i64 4                  ; &eptr10123[4]
  %eptr10124 = getelementptr inbounds i64, i64* %cloptr10118, i64 5                  ; &eptr10124[5]
  %eptr10125 = getelementptr inbounds i64, i64* %cloptr10118, i64 6                  ; &eptr10125[6]
  %eptr10126 = getelementptr inbounds i64, i64* %cloptr10118, i64 7                  ; &eptr10126[7]
  store i64 %cont7183, i64* %eptr10120                                               ; *eptr10120 = %cont7183
  store i64 %cDt$_37foldl, i64* %eptr10121                                           ; *eptr10121 = %cDt$_37foldl
  store i64 %R1Q$f, i64* %eptr10122                                                  ; *eptr10122 = %R1Q$f
  store i64 %jkj$_37foldr1, i64* %eptr10123                                          ; *eptr10123 = %jkj$_37foldr1
  store i64 %sgK$_37map1, i64* %eptr10124                                            ; *eptr10124 = %sgK$_37map1
  store i64 %x2N$args, i64* %eptr10125                                               ; *eptr10125 = %x2N$args
  store i64 %H2k$_37foldr, i64* %eptr10126                                           ; *eptr10126 = %H2k$_37foldr
  %eptr10119 = getelementptr inbounds i64, i64* %cloptr10118, i64 0                  ; &cloptr10118[0]
  %f10127 = ptrtoint void(i64,i64,i64)* @lam8254 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10127, i64* %eptr10119                                                 ; store fptr
  %arg7864 = ptrtoint i64* %cloptr10118 to i64                                       ; closure cast; i64* -> i64
  %arg7863 = add i64 0, 0                                                            ; quoted ()
  %cloptr10128 = inttoptr i64 %arg7864 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10128)                                        ; assert function application
  %i0ptr10129 = getelementptr inbounds i64, i64* %cloptr10128, i64 0                 ; &cloptr10128[0]
  %f10131 = load i64, i64* %i0ptr10129, align 8                                      ; load; *i0ptr10129
  %fptr10130 = inttoptr i64 %f10131 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10130(i64 %arg7864, i64 %arg7863, i64 %retprim7203) ; tail call
  ret void
}


define void @lam8254(i64 %env8255, i64 %_957185, i64 %LpA$acc) {
  %envptr10132 = inttoptr i64 %env8255 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10133 = getelementptr inbounds i64, i64* %envptr10132, i64 7                ; &envptr10132[7]
  %H2k$_37foldr = load i64, i64* %envptr10133, align 8                               ; load; *envptr10133
  %envptr10134 = inttoptr i64 %env8255 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10135 = getelementptr inbounds i64, i64* %envptr10134, i64 6                ; &envptr10134[6]
  %x2N$args = load i64, i64* %envptr10135, align 8                                   ; load; *envptr10135
  %envptr10136 = inttoptr i64 %env8255 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10137 = getelementptr inbounds i64, i64* %envptr10136, i64 5                ; &envptr10136[5]
  %sgK$_37map1 = load i64, i64* %envptr10137, align 8                                ; load; *envptr10137
  %envptr10138 = inttoptr i64 %env8255 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10139 = getelementptr inbounds i64, i64* %envptr10138, i64 4                ; &envptr10138[4]
  %jkj$_37foldr1 = load i64, i64* %envptr10139, align 8                              ; load; *envptr10139
  %envptr10140 = inttoptr i64 %env8255 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10141 = getelementptr inbounds i64, i64* %envptr10140, i64 3                ; &envptr10140[3]
  %R1Q$f = load i64, i64* %envptr10141, align 8                                      ; load; *envptr10141
  %envptr10142 = inttoptr i64 %env8255 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10143 = getelementptr inbounds i64, i64* %envptr10142, i64 2                ; &envptr10142[2]
  %cDt$_37foldl = load i64, i64* %envptr10143, align 8                               ; load; *envptr10143
  %envptr10144 = inttoptr i64 %env8255 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10145 = getelementptr inbounds i64, i64* %envptr10144, i64 1                ; &envptr10144[1]
  %cont7183 = load i64, i64* %envptr10145, align 8                                   ; load; *envptr10145
  %a6986 = call i64 @prim_cdr(i64 %x2N$args)                                         ; call prim_cdr
  %retprim7202 = call i64 @prim_cdr(i64 %a6986)                                      ; call prim_cdr
  %cloptr10146 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10148 = getelementptr inbounds i64, i64* %cloptr10146, i64 1                  ; &eptr10148[1]
  %eptr10149 = getelementptr inbounds i64, i64* %cloptr10146, i64 2                  ; &eptr10149[2]
  %eptr10150 = getelementptr inbounds i64, i64* %cloptr10146, i64 3                  ; &eptr10150[3]
  %eptr10151 = getelementptr inbounds i64, i64* %cloptr10146, i64 4                  ; &eptr10151[4]
  %eptr10152 = getelementptr inbounds i64, i64* %cloptr10146, i64 5                  ; &eptr10152[5]
  %eptr10153 = getelementptr inbounds i64, i64* %cloptr10146, i64 6                  ; &eptr10153[6]
  %eptr10154 = getelementptr inbounds i64, i64* %cloptr10146, i64 7                  ; &eptr10154[7]
  store i64 %cont7183, i64* %eptr10148                                               ; *eptr10148 = %cont7183
  store i64 %cDt$_37foldl, i64* %eptr10149                                           ; *eptr10149 = %cDt$_37foldl
  store i64 %R1Q$f, i64* %eptr10150                                                  ; *eptr10150 = %R1Q$f
  store i64 %jkj$_37foldr1, i64* %eptr10151                                          ; *eptr10151 = %jkj$_37foldr1
  store i64 %sgK$_37map1, i64* %eptr10152                                            ; *eptr10152 = %sgK$_37map1
  store i64 %LpA$acc, i64* %eptr10153                                                ; *eptr10153 = %LpA$acc
  store i64 %H2k$_37foldr, i64* %eptr10154                                           ; *eptr10154 = %H2k$_37foldr
  %eptr10147 = getelementptr inbounds i64, i64* %cloptr10146, i64 0                  ; &cloptr10146[0]
  %f10155 = ptrtoint void(i64,i64,i64)* @lam8252 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10155, i64* %eptr10147                                                 ; store fptr
  %arg7869 = ptrtoint i64* %cloptr10146 to i64                                       ; closure cast; i64* -> i64
  %arg7868 = add i64 0, 0                                                            ; quoted ()
  %cloptr10156 = inttoptr i64 %arg7869 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10156)                                        ; assert function application
  %i0ptr10157 = getelementptr inbounds i64, i64* %cloptr10156, i64 0                 ; &cloptr10156[0]
  %f10159 = load i64, i64* %i0ptr10157, align 8                                      ; load; *i0ptr10157
  %fptr10158 = inttoptr i64 %f10159 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10158(i64 %arg7869, i64 %arg7868, i64 %retprim7202) ; tail call
  ret void
}


define void @lam8252(i64 %env8253, i64 %_957186, i64 %HXR$lsts) {
  %envptr10160 = inttoptr i64 %env8253 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10161 = getelementptr inbounds i64, i64* %envptr10160, i64 7                ; &envptr10160[7]
  %H2k$_37foldr = load i64, i64* %envptr10161, align 8                               ; load; *envptr10161
  %envptr10162 = inttoptr i64 %env8253 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10163 = getelementptr inbounds i64, i64* %envptr10162, i64 6                ; &envptr10162[6]
  %LpA$acc = load i64, i64* %envptr10163, align 8                                    ; load; *envptr10163
  %envptr10164 = inttoptr i64 %env8253 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10165 = getelementptr inbounds i64, i64* %envptr10164, i64 5                ; &envptr10164[5]
  %sgK$_37map1 = load i64, i64* %envptr10165, align 8                                ; load; *envptr10165
  %envptr10166 = inttoptr i64 %env8253 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10167 = getelementptr inbounds i64, i64* %envptr10166, i64 4                ; &envptr10166[4]
  %jkj$_37foldr1 = load i64, i64* %envptr10167, align 8                              ; load; *envptr10167
  %envptr10168 = inttoptr i64 %env8253 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10169 = getelementptr inbounds i64, i64* %envptr10168, i64 3                ; &envptr10168[3]
  %R1Q$f = load i64, i64* %envptr10169, align 8                                      ; load; *envptr10169
  %envptr10170 = inttoptr i64 %env8253 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10171 = getelementptr inbounds i64, i64* %envptr10170, i64 2                ; &envptr10170[2]
  %cDt$_37foldl = load i64, i64* %envptr10171, align 8                               ; load; *envptr10171
  %envptr10172 = inttoptr i64 %env8253 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10173 = getelementptr inbounds i64, i64* %envptr10172, i64 1                ; &envptr10172[1]
  %cont7183 = load i64, i64* %envptr10173, align 8                                   ; load; *envptr10173
  %cloptr10174 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10176 = getelementptr inbounds i64, i64* %cloptr10174, i64 1                  ; &eptr10176[1]
  %eptr10177 = getelementptr inbounds i64, i64* %cloptr10174, i64 2                  ; &eptr10177[2]
  %eptr10178 = getelementptr inbounds i64, i64* %cloptr10174, i64 3                  ; &eptr10178[3]
  %eptr10179 = getelementptr inbounds i64, i64* %cloptr10174, i64 4                  ; &eptr10179[4]
  %eptr10180 = getelementptr inbounds i64, i64* %cloptr10174, i64 5                  ; &eptr10180[5]
  %eptr10181 = getelementptr inbounds i64, i64* %cloptr10174, i64 6                  ; &eptr10181[6]
  %eptr10182 = getelementptr inbounds i64, i64* %cloptr10174, i64 7                  ; &eptr10182[7]
  store i64 %cont7183, i64* %eptr10176                                               ; *eptr10176 = %cont7183
  store i64 %cDt$_37foldl, i64* %eptr10177                                           ; *eptr10177 = %cDt$_37foldl
  store i64 %R1Q$f, i64* %eptr10178                                                  ; *eptr10178 = %R1Q$f
  store i64 %HXR$lsts, i64* %eptr10179                                               ; *eptr10179 = %HXR$lsts
  store i64 %sgK$_37map1, i64* %eptr10180                                            ; *eptr10180 = %sgK$_37map1
  store i64 %LpA$acc, i64* %eptr10181                                                ; *eptr10181 = %LpA$acc
  store i64 %H2k$_37foldr, i64* %eptr10182                                           ; *eptr10182 = %H2k$_37foldr
  %eptr10175 = getelementptr inbounds i64, i64* %cloptr10174, i64 0                  ; &cloptr10174[0]
  %f10183 = ptrtoint void(i64,i64,i64)* @lam8250 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10183, i64* %eptr10175                                                 ; store fptr
  %arg7873 = ptrtoint i64* %cloptr10174 to i64                                       ; closure cast; i64* -> i64
  %cloptr10184 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10185 = getelementptr inbounds i64, i64* %cloptr10184, i64 0                  ; &cloptr10184[0]
  %f10186 = ptrtoint void(i64,i64,i64,i64)* @lam8229 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10186, i64* %eptr10185                                                 ; store fptr
  %arg7872 = ptrtoint i64* %cloptr10184 to i64                                       ; closure cast; i64* -> i64
  %arg7871 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10187 = inttoptr i64 %jkj$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10187)                                        ; assert function application
  %i0ptr10188 = getelementptr inbounds i64, i64* %cloptr10187, i64 0                 ; &cloptr10187[0]
  %f10190 = load i64, i64* %i0ptr10188, align 8                                      ; load; *i0ptr10188
  %fptr10189 = inttoptr i64 %f10190 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10189(i64 %jkj$_37foldr1, i64 %arg7873, i64 %arg7872, i64 %arg7871, i64 %HXR$lsts); tail call
  ret void
}


define void @lam8250(i64 %env8251, i64 %_957187, i64 %a6987) {
  %envptr10191 = inttoptr i64 %env8251 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10192 = getelementptr inbounds i64, i64* %envptr10191, i64 7                ; &envptr10191[7]
  %H2k$_37foldr = load i64, i64* %envptr10192, align 8                               ; load; *envptr10192
  %envptr10193 = inttoptr i64 %env8251 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10194 = getelementptr inbounds i64, i64* %envptr10193, i64 6                ; &envptr10193[6]
  %LpA$acc = load i64, i64* %envptr10194, align 8                                    ; load; *envptr10194
  %envptr10195 = inttoptr i64 %env8251 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10196 = getelementptr inbounds i64, i64* %envptr10195, i64 5                ; &envptr10195[5]
  %sgK$_37map1 = load i64, i64* %envptr10196, align 8                                ; load; *envptr10196
  %envptr10197 = inttoptr i64 %env8251 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10198 = getelementptr inbounds i64, i64* %envptr10197, i64 4                ; &envptr10197[4]
  %HXR$lsts = load i64, i64* %envptr10198, align 8                                   ; load; *envptr10198
  %envptr10199 = inttoptr i64 %env8251 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10200 = getelementptr inbounds i64, i64* %envptr10199, i64 3                ; &envptr10199[3]
  %R1Q$f = load i64, i64* %envptr10200, align 8                                      ; load; *envptr10200
  %envptr10201 = inttoptr i64 %env8251 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10202 = getelementptr inbounds i64, i64* %envptr10201, i64 2                ; &envptr10201[2]
  %cDt$_37foldl = load i64, i64* %envptr10202, align 8                               ; load; *envptr10202
  %envptr10203 = inttoptr i64 %env8251 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10204 = getelementptr inbounds i64, i64* %envptr10203, i64 1                ; &envptr10203[1]
  %cont7183 = load i64, i64* %envptr10204, align 8                                   ; load; *envptr10204
  %cmp10205 = icmp eq i64 %a6987, 15                                                 ; false?
  br i1 %cmp10205, label %else10207, label %then10206                                ; if

then10206:
  %arg7876 = add i64 0, 0                                                            ; quoted ()
  %cloptr10208 = inttoptr i64 %cont7183 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10208)                                        ; assert function application
  %i0ptr10209 = getelementptr inbounds i64, i64* %cloptr10208, i64 0                 ; &cloptr10208[0]
  %f10211 = load i64, i64* %i0ptr10209, align 8                                      ; load; *i0ptr10209
  %fptr10210 = inttoptr i64 %f10211 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10210(i64 %cont7183, i64 %arg7876, i64 %LpA$acc)    ; tail call
  ret void

else10207:
  %cloptr10212 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10214 = getelementptr inbounds i64, i64* %cloptr10212, i64 1                  ; &eptr10214[1]
  %eptr10215 = getelementptr inbounds i64, i64* %cloptr10212, i64 2                  ; &eptr10215[2]
  %eptr10216 = getelementptr inbounds i64, i64* %cloptr10212, i64 3                  ; &eptr10216[3]
  %eptr10217 = getelementptr inbounds i64, i64* %cloptr10212, i64 4                  ; &eptr10217[4]
  %eptr10218 = getelementptr inbounds i64, i64* %cloptr10212, i64 5                  ; &eptr10218[5]
  %eptr10219 = getelementptr inbounds i64, i64* %cloptr10212, i64 6                  ; &eptr10219[6]
  %eptr10220 = getelementptr inbounds i64, i64* %cloptr10212, i64 7                  ; &eptr10220[7]
  store i64 %cont7183, i64* %eptr10214                                               ; *eptr10214 = %cont7183
  store i64 %cDt$_37foldl, i64* %eptr10215                                           ; *eptr10215 = %cDt$_37foldl
  store i64 %R1Q$f, i64* %eptr10216                                                  ; *eptr10216 = %R1Q$f
  store i64 %HXR$lsts, i64* %eptr10217                                               ; *eptr10217 = %HXR$lsts
  store i64 %sgK$_37map1, i64* %eptr10218                                            ; *eptr10218 = %sgK$_37map1
  store i64 %LpA$acc, i64* %eptr10219                                                ; *eptr10219 = %LpA$acc
  store i64 %H2k$_37foldr, i64* %eptr10220                                           ; *eptr10220 = %H2k$_37foldr
  %eptr10213 = getelementptr inbounds i64, i64* %cloptr10212, i64 0                  ; &cloptr10212[0]
  %f10221 = ptrtoint void(i64,i64,i64)* @lam8248 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10221, i64* %eptr10213                                                 ; store fptr
  %arg7880 = ptrtoint i64* %cloptr10212 to i64                                       ; closure cast; i64* -> i64
  %cloptr10222 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10223 = getelementptr inbounds i64, i64* %cloptr10222, i64 0                  ; &cloptr10222[0]
  %f10224 = ptrtoint void(i64,i64,i64)* @lam8233 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10224, i64* %eptr10223                                                 ; store fptr
  %arg7879 = ptrtoint i64* %cloptr10222 to i64                                       ; closure cast; i64* -> i64
  %cloptr10225 = inttoptr i64 %sgK$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10225)                                        ; assert function application
  %i0ptr10226 = getelementptr inbounds i64, i64* %cloptr10225, i64 0                 ; &cloptr10225[0]
  %f10228 = load i64, i64* %i0ptr10226, align 8                                      ; load; *i0ptr10226
  %fptr10227 = inttoptr i64 %f10228 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10227(i64 %sgK$_37map1, i64 %arg7880, i64 %arg7879, i64 %HXR$lsts); tail call
  ret void
}


define void @lam8248(i64 %env8249, i64 %_957188, i64 %wCo$lsts_43) {
  %envptr10229 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10230 = getelementptr inbounds i64, i64* %envptr10229, i64 7                ; &envptr10229[7]
  %H2k$_37foldr = load i64, i64* %envptr10230, align 8                               ; load; *envptr10230
  %envptr10231 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10232 = getelementptr inbounds i64, i64* %envptr10231, i64 6                ; &envptr10231[6]
  %LpA$acc = load i64, i64* %envptr10232, align 8                                    ; load; *envptr10232
  %envptr10233 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10234 = getelementptr inbounds i64, i64* %envptr10233, i64 5                ; &envptr10233[5]
  %sgK$_37map1 = load i64, i64* %envptr10234, align 8                                ; load; *envptr10234
  %envptr10235 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10236 = getelementptr inbounds i64, i64* %envptr10235, i64 4                ; &envptr10235[4]
  %HXR$lsts = load i64, i64* %envptr10236, align 8                                   ; load; *envptr10236
  %envptr10237 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10238 = getelementptr inbounds i64, i64* %envptr10237, i64 3                ; &envptr10237[3]
  %R1Q$f = load i64, i64* %envptr10238, align 8                                      ; load; *envptr10238
  %envptr10239 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10240 = getelementptr inbounds i64, i64* %envptr10239, i64 2                ; &envptr10239[2]
  %cDt$_37foldl = load i64, i64* %envptr10240, align 8                               ; load; *envptr10240
  %envptr10241 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10242 = getelementptr inbounds i64, i64* %envptr10241, i64 1                ; &envptr10241[1]
  %cont7183 = load i64, i64* %envptr10242, align 8                                   ; load; *envptr10242
  %cloptr10243 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10245 = getelementptr inbounds i64, i64* %cloptr10243, i64 1                  ; &eptr10245[1]
  %eptr10246 = getelementptr inbounds i64, i64* %cloptr10243, i64 2                  ; &eptr10246[2]
  %eptr10247 = getelementptr inbounds i64, i64* %cloptr10243, i64 3                  ; &eptr10247[3]
  %eptr10248 = getelementptr inbounds i64, i64* %cloptr10243, i64 4                  ; &eptr10248[4]
  %eptr10249 = getelementptr inbounds i64, i64* %cloptr10243, i64 5                  ; &eptr10249[5]
  %eptr10250 = getelementptr inbounds i64, i64* %cloptr10243, i64 6                  ; &eptr10250[6]
  store i64 %cont7183, i64* %eptr10245                                               ; *eptr10245 = %cont7183
  store i64 %cDt$_37foldl, i64* %eptr10246                                           ; *eptr10246 = %cDt$_37foldl
  store i64 %wCo$lsts_43, i64* %eptr10247                                            ; *eptr10247 = %wCo$lsts_43
  store i64 %R1Q$f, i64* %eptr10248                                                  ; *eptr10248 = %R1Q$f
  store i64 %LpA$acc, i64* %eptr10249                                                ; *eptr10249 = %LpA$acc
  store i64 %H2k$_37foldr, i64* %eptr10250                                           ; *eptr10250 = %H2k$_37foldr
  %eptr10244 = getelementptr inbounds i64, i64* %cloptr10243, i64 0                  ; &cloptr10243[0]
  %f10251 = ptrtoint void(i64,i64,i64)* @lam8246 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10251, i64* %eptr10244                                                 ; store fptr
  %arg7884 = ptrtoint i64* %cloptr10243 to i64                                       ; closure cast; i64* -> i64
  %cloptr10252 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10253 = getelementptr inbounds i64, i64* %cloptr10252, i64 0                  ; &cloptr10252[0]
  %f10254 = ptrtoint void(i64,i64,i64)* @lam8236 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10254, i64* %eptr10253                                                 ; store fptr
  %arg7883 = ptrtoint i64* %cloptr10252 to i64                                       ; closure cast; i64* -> i64
  %cloptr10255 = inttoptr i64 %sgK$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10255)                                        ; assert function application
  %i0ptr10256 = getelementptr inbounds i64, i64* %cloptr10255, i64 0                 ; &cloptr10255[0]
  %f10258 = load i64, i64* %i0ptr10256, align 8                                      ; load; *i0ptr10256
  %fptr10257 = inttoptr i64 %f10258 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10257(i64 %sgK$_37map1, i64 %arg7884, i64 %arg7883, i64 %HXR$lsts); tail call
  ret void
}


define void @lam8246(i64 %env8247, i64 %_957189, i64 %lSv$vs) {
  %envptr10259 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10260 = getelementptr inbounds i64, i64* %envptr10259, i64 6                ; &envptr10259[6]
  %H2k$_37foldr = load i64, i64* %envptr10260, align 8                               ; load; *envptr10260
  %envptr10261 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10262 = getelementptr inbounds i64, i64* %envptr10261, i64 5                ; &envptr10261[5]
  %LpA$acc = load i64, i64* %envptr10262, align 8                                    ; load; *envptr10262
  %envptr10263 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10264 = getelementptr inbounds i64, i64* %envptr10263, i64 4                ; &envptr10263[4]
  %R1Q$f = load i64, i64* %envptr10264, align 8                                      ; load; *envptr10264
  %envptr10265 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10266 = getelementptr inbounds i64, i64* %envptr10265, i64 3                ; &envptr10265[3]
  %wCo$lsts_43 = load i64, i64* %envptr10266, align 8                                ; load; *envptr10266
  %envptr10267 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10268 = getelementptr inbounds i64, i64* %envptr10267, i64 2                ; &envptr10267[2]
  %cDt$_37foldl = load i64, i64* %envptr10268, align 8                               ; load; *envptr10268
  %envptr10269 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10270 = getelementptr inbounds i64, i64* %envptr10269, i64 1                ; &envptr10269[1]
  %cont7183 = load i64, i64* %envptr10270, align 8                                   ; load; *envptr10270
  %arg7886 = add i64 0, 0                                                            ; quoted ()
  %a6988 = call i64 @prim_cons(i64 %LpA$acc, i64 %arg7886)                           ; call prim_cons
  %cloptr10271 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10273 = getelementptr inbounds i64, i64* %cloptr10271, i64 1                  ; &eptr10273[1]
  %eptr10274 = getelementptr inbounds i64, i64* %cloptr10271, i64 2                  ; &eptr10274[2]
  %eptr10275 = getelementptr inbounds i64, i64* %cloptr10271, i64 3                  ; &eptr10275[3]
  %eptr10276 = getelementptr inbounds i64, i64* %cloptr10271, i64 4                  ; &eptr10276[4]
  store i64 %cont7183, i64* %eptr10273                                               ; *eptr10273 = %cont7183
  store i64 %cDt$_37foldl, i64* %eptr10274                                           ; *eptr10274 = %cDt$_37foldl
  store i64 %wCo$lsts_43, i64* %eptr10275                                            ; *eptr10275 = %wCo$lsts_43
  store i64 %R1Q$f, i64* %eptr10276                                                  ; *eptr10276 = %R1Q$f
  %eptr10272 = getelementptr inbounds i64, i64* %cloptr10271, i64 0                  ; &cloptr10271[0]
  %f10277 = ptrtoint void(i64,i64,i64)* @lam8243 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10277, i64* %eptr10272                                                 ; store fptr
  %arg7891 = ptrtoint i64* %cloptr10271 to i64                                       ; closure cast; i64* -> i64
  %cloptr10278 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10279 = getelementptr inbounds i64, i64* %cloptr10278, i64 0                  ; &cloptr10278[0]
  %f10280 = ptrtoint void(i64,i64,i64,i64)* @lam8239 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10280, i64* %eptr10279                                                 ; store fptr
  %arg7890 = ptrtoint i64* %cloptr10278 to i64                                       ; closure cast; i64* -> i64
  %cloptr10281 = inttoptr i64 %H2k$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10281)                                        ; assert function application
  %i0ptr10282 = getelementptr inbounds i64, i64* %cloptr10281, i64 0                 ; &cloptr10281[0]
  %f10284 = load i64, i64* %i0ptr10282, align 8                                      ; load; *i0ptr10282
  %fptr10283 = inttoptr i64 %f10284 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10283(i64 %H2k$_37foldr, i64 %arg7891, i64 %arg7890, i64 %a6988, i64 %lSv$vs); tail call
  ret void
}


define void @lam8243(i64 %env8244, i64 %_957192, i64 %a6989) {
  %envptr10285 = inttoptr i64 %env8244 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10286 = getelementptr inbounds i64, i64* %envptr10285, i64 4                ; &envptr10285[4]
  %R1Q$f = load i64, i64* %envptr10286, align 8                                      ; load; *envptr10286
  %envptr10287 = inttoptr i64 %env8244 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10288 = getelementptr inbounds i64, i64* %envptr10287, i64 3                ; &envptr10287[3]
  %wCo$lsts_43 = load i64, i64* %envptr10288, align 8                                ; load; *envptr10288
  %envptr10289 = inttoptr i64 %env8244 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10290 = getelementptr inbounds i64, i64* %envptr10289, i64 2                ; &envptr10289[2]
  %cDt$_37foldl = load i64, i64* %envptr10290, align 8                               ; load; *envptr10290
  %envptr10291 = inttoptr i64 %env8244 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10292 = getelementptr inbounds i64, i64* %envptr10291, i64 1                ; &envptr10291[1]
  %cont7183 = load i64, i64* %envptr10292, align 8                                   ; load; *envptr10292
  %cloptr10293 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10295 = getelementptr inbounds i64, i64* %cloptr10293, i64 1                  ; &eptr10295[1]
  %eptr10296 = getelementptr inbounds i64, i64* %cloptr10293, i64 2                  ; &eptr10296[2]
  %eptr10297 = getelementptr inbounds i64, i64* %cloptr10293, i64 3                  ; &eptr10297[3]
  %eptr10298 = getelementptr inbounds i64, i64* %cloptr10293, i64 4                  ; &eptr10298[4]
  store i64 %cont7183, i64* %eptr10295                                               ; *eptr10295 = %cont7183
  store i64 %cDt$_37foldl, i64* %eptr10296                                           ; *eptr10296 = %cDt$_37foldl
  store i64 %wCo$lsts_43, i64* %eptr10297                                            ; *eptr10297 = %wCo$lsts_43
  store i64 %R1Q$f, i64* %eptr10298                                                  ; *eptr10298 = %R1Q$f
  %eptr10294 = getelementptr inbounds i64, i64* %cloptr10293, i64 0                  ; &cloptr10293[0]
  %f10299 = ptrtoint void(i64,i64,i64)* @lam8241 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10299, i64* %eptr10294                                                 ; store fptr
  %arg7894 = ptrtoint i64* %cloptr10293 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7193 = call i64 @prim_cons(i64 %arg7894, i64 %a6989)                     ; call prim_cons
  %cloptr10300 = inttoptr i64 %R1Q$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10300)                                        ; assert function application
  %i0ptr10301 = getelementptr inbounds i64, i64* %cloptr10300, i64 0                 ; &cloptr10300[0]
  %f10303 = load i64, i64* %i0ptr10301, align 8                                      ; load; *i0ptr10301
  %fptr10302 = inttoptr i64 %f10303 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10302(i64 %R1Q$f, i64 %cps_45lst7193)               ; tail call
  ret void
}


define void @lam8241(i64 %env8242, i64 %_957190, i64 %Ior$acc_43) {
  %envptr10304 = inttoptr i64 %env8242 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10305 = getelementptr inbounds i64, i64* %envptr10304, i64 4                ; &envptr10304[4]
  %R1Q$f = load i64, i64* %envptr10305, align 8                                      ; load; *envptr10305
  %envptr10306 = inttoptr i64 %env8242 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10307 = getelementptr inbounds i64, i64* %envptr10306, i64 3                ; &envptr10306[3]
  %wCo$lsts_43 = load i64, i64* %envptr10307, align 8                                ; load; *envptr10307
  %envptr10308 = inttoptr i64 %env8242 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10309 = getelementptr inbounds i64, i64* %envptr10308, i64 2                ; &envptr10308[2]
  %cDt$_37foldl = load i64, i64* %envptr10309, align 8                               ; load; *envptr10309
  %envptr10310 = inttoptr i64 %env8242 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10311 = getelementptr inbounds i64, i64* %envptr10310, i64 1                ; &envptr10310[1]
  %cont7183 = load i64, i64* %envptr10311, align 8                                   ; load; *envptr10311
  %a6990 = call i64 @prim_cons(i64 %Ior$acc_43, i64 %wCo$lsts_43)                    ; call prim_cons
  %a6991 = call i64 @prim_cons(i64 %R1Q$f, i64 %a6990)                               ; call prim_cons
  %cps_45lst7191 = call i64 @prim_cons(i64 %cont7183, i64 %a6991)                    ; call prim_cons
  %cloptr10312 = inttoptr i64 %cDt$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10312)                                        ; assert function application
  %i0ptr10313 = getelementptr inbounds i64, i64* %cloptr10312, i64 0                 ; &cloptr10312[0]
  %f10315 = load i64, i64* %i0ptr10313, align 8                                      ; load; *i0ptr10313
  %fptr10314 = inttoptr i64 %f10315 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10314(i64 %cDt$_37foldl, i64 %cps_45lst7191)        ; tail call
  ret void
}


define void @lam8239(i64 %env8240, i64 %cont7194, i64 %QHG$a, i64 %x94$b) {
  %retprim7195 = call i64 @prim_cons(i64 %QHG$a, i64 %x94$b)                         ; call prim_cons
  %arg7904 = add i64 0, 0                                                            ; quoted ()
  %cloptr10316 = inttoptr i64 %cont7194 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10316)                                        ; assert function application
  %i0ptr10317 = getelementptr inbounds i64, i64* %cloptr10316, i64 0                 ; &cloptr10316[0]
  %f10319 = load i64, i64* %i0ptr10317, align 8                                      ; load; *i0ptr10317
  %fptr10318 = inttoptr i64 %f10319 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10318(i64 %cont7194, i64 %arg7904, i64 %retprim7195); tail call
  ret void
}


define void @lam8236(i64 %env8237, i64 %cont7196, i64 %z3q$x) {
  %retprim7197 = call i64 @prim_car(i64 %z3q$x)                                      ; call prim_car
  %arg7908 = add i64 0, 0                                                            ; quoted ()
  %cloptr10320 = inttoptr i64 %cont7196 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10320)                                        ; assert function application
  %i0ptr10321 = getelementptr inbounds i64, i64* %cloptr10320, i64 0                 ; &cloptr10320[0]
  %f10323 = load i64, i64* %i0ptr10321, align 8                                      ; load; *i0ptr10321
  %fptr10322 = inttoptr i64 %f10323 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10322(i64 %cont7196, i64 %arg7908, i64 %retprim7197); tail call
  ret void
}


define void @lam8233(i64 %env8234, i64 %cont7198, i64 %U2N$x) {
  %retprim7199 = call i64 @prim_cdr(i64 %U2N$x)                                      ; call prim_cdr
  %arg7912 = add i64 0, 0                                                            ; quoted ()
  %cloptr10324 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10324)                                        ; assert function application
  %i0ptr10325 = getelementptr inbounds i64, i64* %cloptr10324, i64 0                 ; &cloptr10324[0]
  %f10327 = load i64, i64* %i0ptr10325, align 8                                      ; load; *i0ptr10325
  %fptr10326 = inttoptr i64 %f10327 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10326(i64 %cont7198, i64 %arg7912, i64 %retprim7199); tail call
  ret void
}


define void @lam8229(i64 %env8230, i64 %cont7200, i64 %kCe$lst, i64 %h9J$b) {
  %cmp10328 = icmp eq i64 %h9J$b, 15                                                 ; false?
  br i1 %cmp10328, label %else10330, label %then10329                                ; if

then10329:
  %arg7915 = add i64 0, 0                                                            ; quoted ()
  %cloptr10331 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10331)                                        ; assert function application
  %i0ptr10332 = getelementptr inbounds i64, i64* %cloptr10331, i64 0                 ; &cloptr10331[0]
  %f10334 = load i64, i64* %i0ptr10332, align 8                                      ; load; *i0ptr10332
  %fptr10333 = inttoptr i64 %f10334 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10333(i64 %cont7200, i64 %arg7915, i64 %h9J$b)      ; tail call
  ret void

else10330:
  %retprim7201 = call i64 @prim_null_63(i64 %kCe$lst)                                ; call prim_null_63
  %arg7919 = add i64 0, 0                                                            ; quoted ()
  %cloptr10335 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10335)                                        ; assert function application
  %i0ptr10336 = getelementptr inbounds i64, i64* %cloptr10335, i64 0                 ; &cloptr10335[0]
  %f10338 = load i64, i64* %i0ptr10336, align 8                                      ; load; *i0ptr10336
  %fptr10337 = inttoptr i64 %f10338 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10337(i64 %cont7200, i64 %arg7919, i64 %retprim7201); tail call
  ret void
}


define void @lam8222(i64 %env8223, i64 %cont7204, i64 %rVU$_37foldr) {
  %envptr10339 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10340 = getelementptr inbounds i64, i64* %envptr10339, i64 2                ; &envptr10339[2]
  %Xhz$_37map1 = load i64, i64* %envptr10340, align 8                                ; load; *envptr10340
  %envptr10341 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10342 = getelementptr inbounds i64, i64* %envptr10341, i64 1                ; &envptr10341[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10342, align 8                              ; load; *envptr10342
  %arg7922 = add i64 0, 0                                                            ; quoted ()
  %cloptr10343 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10345 = getelementptr inbounds i64, i64* %cloptr10343, i64 1                  ; &eptr10345[1]
  %eptr10346 = getelementptr inbounds i64, i64* %cloptr10343, i64 2                  ; &eptr10346[2]
  %eptr10347 = getelementptr inbounds i64, i64* %cloptr10343, i64 3                  ; &eptr10347[3]
  store i64 %jkj$_37foldr1, i64* %eptr10345                                          ; *eptr10345 = %jkj$_37foldr1
  store i64 %rVU$_37foldr, i64* %eptr10346                                           ; *eptr10346 = %rVU$_37foldr
  store i64 %Xhz$_37map1, i64* %eptr10347                                            ; *eptr10347 = %Xhz$_37map1
  %eptr10344 = getelementptr inbounds i64, i64* %cloptr10343, i64 0                  ; &cloptr10343[0]
  %f10348 = ptrtoint void(i64,i64)* @lam8219 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10348, i64* %eptr10344                                                 ; store fptr
  %arg7921 = ptrtoint i64* %cloptr10343 to i64                                       ; closure cast; i64* -> i64
  %cloptr10349 = inttoptr i64 %cont7204 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10349)                                        ; assert function application
  %i0ptr10350 = getelementptr inbounds i64, i64* %cloptr10349, i64 0                 ; &cloptr10349[0]
  %f10352 = load i64, i64* %i0ptr10350, align 8                                      ; load; *i0ptr10350
  %fptr10351 = inttoptr i64 %f10352 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10351(i64 %cont7204, i64 %arg7922, i64 %arg7921)    ; tail call
  ret void
}


define void @lam8219(i64 %env8220, i64 %GSB$args7206) {
  %envptr10353 = inttoptr i64 %env8220 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10354 = getelementptr inbounds i64, i64* %envptr10353, i64 3                ; &envptr10353[3]
  %Xhz$_37map1 = load i64, i64* %envptr10354, align 8                                ; load; *envptr10354
  %envptr10355 = inttoptr i64 %env8220 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10356 = getelementptr inbounds i64, i64* %envptr10355, i64 2                ; &envptr10355[2]
  %rVU$_37foldr = load i64, i64* %envptr10356, align 8                               ; load; *envptr10356
  %envptr10357 = inttoptr i64 %env8220 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10358 = getelementptr inbounds i64, i64* %envptr10357, i64 1                ; &envptr10357[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10358, align 8                              ; load; *envptr10358
  %cont7205 = call i64 @prim_car(i64 %GSB$args7206)                                  ; call prim_car
  %GSB$args = call i64 @prim_cdr(i64 %GSB$args7206)                                  ; call prim_cdr
  %PSW$f = call i64 @prim_car(i64 %GSB$args)                                         ; call prim_car
  %a6971 = call i64 @prim_cdr(i64 %GSB$args)                                         ; call prim_cdr
  %retprim7225 = call i64 @prim_car(i64 %a6971)                                      ; call prim_car
  %cloptr10359 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10361 = getelementptr inbounds i64, i64* %cloptr10359, i64 1                  ; &eptr10361[1]
  %eptr10362 = getelementptr inbounds i64, i64* %cloptr10359, i64 2                  ; &eptr10362[2]
  %eptr10363 = getelementptr inbounds i64, i64* %cloptr10359, i64 3                  ; &eptr10363[3]
  %eptr10364 = getelementptr inbounds i64, i64* %cloptr10359, i64 4                  ; &eptr10364[4]
  %eptr10365 = getelementptr inbounds i64, i64* %cloptr10359, i64 5                  ; &eptr10365[5]
  %eptr10366 = getelementptr inbounds i64, i64* %cloptr10359, i64 6                  ; &eptr10366[6]
  store i64 %jkj$_37foldr1, i64* %eptr10361                                          ; *eptr10361 = %jkj$_37foldr1
  store i64 %rVU$_37foldr, i64* %eptr10362                                           ; *eptr10362 = %rVU$_37foldr
  store i64 %PSW$f, i64* %eptr10363                                                  ; *eptr10363 = %PSW$f
  store i64 %cont7205, i64* %eptr10364                                               ; *eptr10364 = %cont7205
  store i64 %Xhz$_37map1, i64* %eptr10365                                            ; *eptr10365 = %Xhz$_37map1
  store i64 %GSB$args, i64* %eptr10366                                               ; *eptr10366 = %GSB$args
  %eptr10360 = getelementptr inbounds i64, i64* %cloptr10359, i64 0                  ; &cloptr10359[0]
  %f10367 = ptrtoint void(i64,i64,i64)* @lam8217 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10367, i64* %eptr10360                                                 ; store fptr
  %arg7931 = ptrtoint i64* %cloptr10359 to i64                                       ; closure cast; i64* -> i64
  %arg7930 = add i64 0, 0                                                            ; quoted ()
  %cloptr10368 = inttoptr i64 %arg7931 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10368)                                        ; assert function application
  %i0ptr10369 = getelementptr inbounds i64, i64* %cloptr10368, i64 0                 ; &cloptr10368[0]
  %f10371 = load i64, i64* %i0ptr10369, align 8                                      ; load; *i0ptr10369
  %fptr10370 = inttoptr i64 %f10371 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10370(i64 %arg7931, i64 %arg7930, i64 %retprim7225) ; tail call
  ret void
}


define void @lam8217(i64 %env8218, i64 %_957207, i64 %Zw0$acc) {
  %envptr10372 = inttoptr i64 %env8218 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10373 = getelementptr inbounds i64, i64* %envptr10372, i64 6                ; &envptr10372[6]
  %GSB$args = load i64, i64* %envptr10373, align 8                                   ; load; *envptr10373
  %envptr10374 = inttoptr i64 %env8218 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10375 = getelementptr inbounds i64, i64* %envptr10374, i64 5                ; &envptr10374[5]
  %Xhz$_37map1 = load i64, i64* %envptr10375, align 8                                ; load; *envptr10375
  %envptr10376 = inttoptr i64 %env8218 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10377 = getelementptr inbounds i64, i64* %envptr10376, i64 4                ; &envptr10376[4]
  %cont7205 = load i64, i64* %envptr10377, align 8                                   ; load; *envptr10377
  %envptr10378 = inttoptr i64 %env8218 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10379 = getelementptr inbounds i64, i64* %envptr10378, i64 3                ; &envptr10378[3]
  %PSW$f = load i64, i64* %envptr10379, align 8                                      ; load; *envptr10379
  %envptr10380 = inttoptr i64 %env8218 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10381 = getelementptr inbounds i64, i64* %envptr10380, i64 2                ; &envptr10380[2]
  %rVU$_37foldr = load i64, i64* %envptr10381, align 8                               ; load; *envptr10381
  %envptr10382 = inttoptr i64 %env8218 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10383 = getelementptr inbounds i64, i64* %envptr10382, i64 1                ; &envptr10382[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10383, align 8                              ; load; *envptr10383
  %a6972 = call i64 @prim_cdr(i64 %GSB$args)                                         ; call prim_cdr
  %retprim7224 = call i64 @prim_cdr(i64 %a6972)                                      ; call prim_cdr
  %cloptr10384 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10386 = getelementptr inbounds i64, i64* %cloptr10384, i64 1                  ; &eptr10386[1]
  %eptr10387 = getelementptr inbounds i64, i64* %cloptr10384, i64 2                  ; &eptr10387[2]
  %eptr10388 = getelementptr inbounds i64, i64* %cloptr10384, i64 3                  ; &eptr10388[3]
  %eptr10389 = getelementptr inbounds i64, i64* %cloptr10384, i64 4                  ; &eptr10389[4]
  %eptr10390 = getelementptr inbounds i64, i64* %cloptr10384, i64 5                  ; &eptr10390[5]
  %eptr10391 = getelementptr inbounds i64, i64* %cloptr10384, i64 6                  ; &eptr10391[6]
  store i64 %jkj$_37foldr1, i64* %eptr10386                                          ; *eptr10386 = %jkj$_37foldr1
  store i64 %rVU$_37foldr, i64* %eptr10387                                           ; *eptr10387 = %rVU$_37foldr
  store i64 %PSW$f, i64* %eptr10388                                                  ; *eptr10388 = %PSW$f
  store i64 %cont7205, i64* %eptr10389                                               ; *eptr10389 = %cont7205
  store i64 %Xhz$_37map1, i64* %eptr10390                                            ; *eptr10390 = %Xhz$_37map1
  store i64 %Zw0$acc, i64* %eptr10391                                                ; *eptr10391 = %Zw0$acc
  %eptr10385 = getelementptr inbounds i64, i64* %cloptr10384, i64 0                  ; &cloptr10384[0]
  %f10392 = ptrtoint void(i64,i64,i64)* @lam8215 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10392, i64* %eptr10385                                                 ; store fptr
  %arg7936 = ptrtoint i64* %cloptr10384 to i64                                       ; closure cast; i64* -> i64
  %arg7935 = add i64 0, 0                                                            ; quoted ()
  %cloptr10393 = inttoptr i64 %arg7936 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10393)                                        ; assert function application
  %i0ptr10394 = getelementptr inbounds i64, i64* %cloptr10393, i64 0                 ; &cloptr10393[0]
  %f10396 = load i64, i64* %i0ptr10394, align 8                                      ; load; *i0ptr10394
  %fptr10395 = inttoptr i64 %f10396 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10395(i64 %arg7936, i64 %arg7935, i64 %retprim7224) ; tail call
  ret void
}


define void @lam8215(i64 %env8216, i64 %_957208, i64 %OVh$lsts) {
  %envptr10397 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10398 = getelementptr inbounds i64, i64* %envptr10397, i64 6                ; &envptr10397[6]
  %Zw0$acc = load i64, i64* %envptr10398, align 8                                    ; load; *envptr10398
  %envptr10399 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10400 = getelementptr inbounds i64, i64* %envptr10399, i64 5                ; &envptr10399[5]
  %Xhz$_37map1 = load i64, i64* %envptr10400, align 8                                ; load; *envptr10400
  %envptr10401 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10402 = getelementptr inbounds i64, i64* %envptr10401, i64 4                ; &envptr10401[4]
  %cont7205 = load i64, i64* %envptr10402, align 8                                   ; load; *envptr10402
  %envptr10403 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10404 = getelementptr inbounds i64, i64* %envptr10403, i64 3                ; &envptr10403[3]
  %PSW$f = load i64, i64* %envptr10404, align 8                                      ; load; *envptr10404
  %envptr10405 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10406 = getelementptr inbounds i64, i64* %envptr10405, i64 2                ; &envptr10405[2]
  %rVU$_37foldr = load i64, i64* %envptr10406, align 8                               ; load; *envptr10406
  %envptr10407 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10408 = getelementptr inbounds i64, i64* %envptr10407, i64 1                ; &envptr10407[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10408, align 8                              ; load; *envptr10408
  %cloptr10409 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10411 = getelementptr inbounds i64, i64* %cloptr10409, i64 1                  ; &eptr10411[1]
  %eptr10412 = getelementptr inbounds i64, i64* %cloptr10409, i64 2                  ; &eptr10412[2]
  %eptr10413 = getelementptr inbounds i64, i64* %cloptr10409, i64 3                  ; &eptr10413[3]
  %eptr10414 = getelementptr inbounds i64, i64* %cloptr10409, i64 4                  ; &eptr10414[4]
  %eptr10415 = getelementptr inbounds i64, i64* %cloptr10409, i64 5                  ; &eptr10415[5]
  %eptr10416 = getelementptr inbounds i64, i64* %cloptr10409, i64 6                  ; &eptr10416[6]
  %eptr10417 = getelementptr inbounds i64, i64* %cloptr10409, i64 7                  ; &eptr10417[7]
  store i64 %jkj$_37foldr1, i64* %eptr10411                                          ; *eptr10411 = %jkj$_37foldr1
  store i64 %rVU$_37foldr, i64* %eptr10412                                           ; *eptr10412 = %rVU$_37foldr
  store i64 %PSW$f, i64* %eptr10413                                                  ; *eptr10413 = %PSW$f
  store i64 %cont7205, i64* %eptr10414                                               ; *eptr10414 = %cont7205
  store i64 %OVh$lsts, i64* %eptr10415                                               ; *eptr10415 = %OVh$lsts
  store i64 %Xhz$_37map1, i64* %eptr10416                                            ; *eptr10416 = %Xhz$_37map1
  store i64 %Zw0$acc, i64* %eptr10417                                                ; *eptr10417 = %Zw0$acc
  %eptr10410 = getelementptr inbounds i64, i64* %cloptr10409, i64 0                  ; &cloptr10409[0]
  %f10418 = ptrtoint void(i64,i64,i64)* @lam8213 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10418, i64* %eptr10410                                                 ; store fptr
  %arg7940 = ptrtoint i64* %cloptr10409 to i64                                       ; closure cast; i64* -> i64
  %cloptr10419 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10420 = getelementptr inbounds i64, i64* %cloptr10419, i64 0                  ; &cloptr10419[0]
  %f10421 = ptrtoint void(i64,i64,i64,i64)* @lam8192 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10421, i64* %eptr10420                                                 ; store fptr
  %arg7939 = ptrtoint i64* %cloptr10419 to i64                                       ; closure cast; i64* -> i64
  %arg7938 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10422 = inttoptr i64 %jkj$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10422)                                        ; assert function application
  %i0ptr10423 = getelementptr inbounds i64, i64* %cloptr10422, i64 0                 ; &cloptr10422[0]
  %f10425 = load i64, i64* %i0ptr10423, align 8                                      ; load; *i0ptr10423
  %fptr10424 = inttoptr i64 %f10425 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10424(i64 %jkj$_37foldr1, i64 %arg7940, i64 %arg7939, i64 %arg7938, i64 %OVh$lsts); tail call
  ret void
}


define void @lam8213(i64 %env8214, i64 %_957209, i64 %a6973) {
  %envptr10426 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10427 = getelementptr inbounds i64, i64* %envptr10426, i64 7                ; &envptr10426[7]
  %Zw0$acc = load i64, i64* %envptr10427, align 8                                    ; load; *envptr10427
  %envptr10428 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10429 = getelementptr inbounds i64, i64* %envptr10428, i64 6                ; &envptr10428[6]
  %Xhz$_37map1 = load i64, i64* %envptr10429, align 8                                ; load; *envptr10429
  %envptr10430 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10431 = getelementptr inbounds i64, i64* %envptr10430, i64 5                ; &envptr10430[5]
  %OVh$lsts = load i64, i64* %envptr10431, align 8                                   ; load; *envptr10431
  %envptr10432 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10433 = getelementptr inbounds i64, i64* %envptr10432, i64 4                ; &envptr10432[4]
  %cont7205 = load i64, i64* %envptr10433, align 8                                   ; load; *envptr10433
  %envptr10434 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10435 = getelementptr inbounds i64, i64* %envptr10434, i64 3                ; &envptr10434[3]
  %PSW$f = load i64, i64* %envptr10435, align 8                                      ; load; *envptr10435
  %envptr10436 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10437 = getelementptr inbounds i64, i64* %envptr10436, i64 2                ; &envptr10436[2]
  %rVU$_37foldr = load i64, i64* %envptr10437, align 8                               ; load; *envptr10437
  %envptr10438 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10439 = getelementptr inbounds i64, i64* %envptr10438, i64 1                ; &envptr10438[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10439, align 8                              ; load; *envptr10439
  %cmp10440 = icmp eq i64 %a6973, 15                                                 ; false?
  br i1 %cmp10440, label %else10442, label %then10441                                ; if

then10441:
  %arg7943 = add i64 0, 0                                                            ; quoted ()
  %cloptr10443 = inttoptr i64 %cont7205 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10443)                                        ; assert function application
  %i0ptr10444 = getelementptr inbounds i64, i64* %cloptr10443, i64 0                 ; &cloptr10443[0]
  %f10446 = load i64, i64* %i0ptr10444, align 8                                      ; load; *i0ptr10444
  %fptr10445 = inttoptr i64 %f10446 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10445(i64 %cont7205, i64 %arg7943, i64 %Zw0$acc)    ; tail call
  ret void

else10442:
  %cloptr10447 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10449 = getelementptr inbounds i64, i64* %cloptr10447, i64 1                  ; &eptr10449[1]
  %eptr10450 = getelementptr inbounds i64, i64* %cloptr10447, i64 2                  ; &eptr10450[2]
  %eptr10451 = getelementptr inbounds i64, i64* %cloptr10447, i64 3                  ; &eptr10451[3]
  %eptr10452 = getelementptr inbounds i64, i64* %cloptr10447, i64 4                  ; &eptr10452[4]
  %eptr10453 = getelementptr inbounds i64, i64* %cloptr10447, i64 5                  ; &eptr10453[5]
  %eptr10454 = getelementptr inbounds i64, i64* %cloptr10447, i64 6                  ; &eptr10454[6]
  %eptr10455 = getelementptr inbounds i64, i64* %cloptr10447, i64 7                  ; &eptr10455[7]
  store i64 %jkj$_37foldr1, i64* %eptr10449                                          ; *eptr10449 = %jkj$_37foldr1
  store i64 %rVU$_37foldr, i64* %eptr10450                                           ; *eptr10450 = %rVU$_37foldr
  store i64 %PSW$f, i64* %eptr10451                                                  ; *eptr10451 = %PSW$f
  store i64 %cont7205, i64* %eptr10452                                               ; *eptr10452 = %cont7205
  store i64 %OVh$lsts, i64* %eptr10453                                               ; *eptr10453 = %OVh$lsts
  store i64 %Xhz$_37map1, i64* %eptr10454                                            ; *eptr10454 = %Xhz$_37map1
  store i64 %Zw0$acc, i64* %eptr10455                                                ; *eptr10455 = %Zw0$acc
  %eptr10448 = getelementptr inbounds i64, i64* %cloptr10447, i64 0                  ; &cloptr10447[0]
  %f10456 = ptrtoint void(i64,i64,i64)* @lam8211 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10456, i64* %eptr10448                                                 ; store fptr
  %arg7947 = ptrtoint i64* %cloptr10447 to i64                                       ; closure cast; i64* -> i64
  %cloptr10457 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10458 = getelementptr inbounds i64, i64* %cloptr10457, i64 0                  ; &cloptr10457[0]
  %f10459 = ptrtoint void(i64,i64,i64)* @lam8196 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10459, i64* %eptr10458                                                 ; store fptr
  %arg7946 = ptrtoint i64* %cloptr10457 to i64                                       ; closure cast; i64* -> i64
  %cloptr10460 = inttoptr i64 %Xhz$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10460)                                        ; assert function application
  %i0ptr10461 = getelementptr inbounds i64, i64* %cloptr10460, i64 0                 ; &cloptr10460[0]
  %f10463 = load i64, i64* %i0ptr10461, align 8                                      ; load; *i0ptr10461
  %fptr10462 = inttoptr i64 %f10463 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10462(i64 %Xhz$_37map1, i64 %arg7947, i64 %arg7946, i64 %OVh$lsts); tail call
  ret void
}


define void @lam8211(i64 %env8212, i64 %_957210, i64 %GBC$lsts_43) {
  %envptr10464 = inttoptr i64 %env8212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10465 = getelementptr inbounds i64, i64* %envptr10464, i64 7                ; &envptr10464[7]
  %Zw0$acc = load i64, i64* %envptr10465, align 8                                    ; load; *envptr10465
  %envptr10466 = inttoptr i64 %env8212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10467 = getelementptr inbounds i64, i64* %envptr10466, i64 6                ; &envptr10466[6]
  %Xhz$_37map1 = load i64, i64* %envptr10467, align 8                                ; load; *envptr10467
  %envptr10468 = inttoptr i64 %env8212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10469 = getelementptr inbounds i64, i64* %envptr10468, i64 5                ; &envptr10468[5]
  %OVh$lsts = load i64, i64* %envptr10469, align 8                                   ; load; *envptr10469
  %envptr10470 = inttoptr i64 %env8212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10471 = getelementptr inbounds i64, i64* %envptr10470, i64 4                ; &envptr10470[4]
  %cont7205 = load i64, i64* %envptr10471, align 8                                   ; load; *envptr10471
  %envptr10472 = inttoptr i64 %env8212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10473 = getelementptr inbounds i64, i64* %envptr10472, i64 3                ; &envptr10472[3]
  %PSW$f = load i64, i64* %envptr10473, align 8                                      ; load; *envptr10473
  %envptr10474 = inttoptr i64 %env8212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10475 = getelementptr inbounds i64, i64* %envptr10474, i64 2                ; &envptr10474[2]
  %rVU$_37foldr = load i64, i64* %envptr10475, align 8                               ; load; *envptr10475
  %envptr10476 = inttoptr i64 %env8212 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10477 = getelementptr inbounds i64, i64* %envptr10476, i64 1                ; &envptr10476[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10477, align 8                              ; load; *envptr10477
  %cloptr10478 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10480 = getelementptr inbounds i64, i64* %cloptr10478, i64 1                  ; &eptr10480[1]
  %eptr10481 = getelementptr inbounds i64, i64* %cloptr10478, i64 2                  ; &eptr10481[2]
  %eptr10482 = getelementptr inbounds i64, i64* %cloptr10478, i64 3                  ; &eptr10482[3]
  %eptr10483 = getelementptr inbounds i64, i64* %cloptr10478, i64 4                  ; &eptr10483[4]
  %eptr10484 = getelementptr inbounds i64, i64* %cloptr10478, i64 5                  ; &eptr10484[5]
  %eptr10485 = getelementptr inbounds i64, i64* %cloptr10478, i64 6                  ; &eptr10485[6]
  store i64 %jkj$_37foldr1, i64* %eptr10480                                          ; *eptr10480 = %jkj$_37foldr1
  store i64 %rVU$_37foldr, i64* %eptr10481                                           ; *eptr10481 = %rVU$_37foldr
  store i64 %PSW$f, i64* %eptr10482                                                  ; *eptr10482 = %PSW$f
  store i64 %GBC$lsts_43, i64* %eptr10483                                            ; *eptr10483 = %GBC$lsts_43
  store i64 %cont7205, i64* %eptr10484                                               ; *eptr10484 = %cont7205
  store i64 %Zw0$acc, i64* %eptr10485                                                ; *eptr10485 = %Zw0$acc
  %eptr10479 = getelementptr inbounds i64, i64* %cloptr10478, i64 0                  ; &cloptr10478[0]
  %f10486 = ptrtoint void(i64,i64,i64)* @lam8209 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10486, i64* %eptr10479                                                 ; store fptr
  %arg7951 = ptrtoint i64* %cloptr10478 to i64                                       ; closure cast; i64* -> i64
  %cloptr10487 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10488 = getelementptr inbounds i64, i64* %cloptr10487, i64 0                  ; &cloptr10487[0]
  %f10489 = ptrtoint void(i64,i64,i64)* @lam8199 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10489, i64* %eptr10488                                                 ; store fptr
  %arg7950 = ptrtoint i64* %cloptr10487 to i64                                       ; closure cast; i64* -> i64
  %cloptr10490 = inttoptr i64 %Xhz$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10490)                                        ; assert function application
  %i0ptr10491 = getelementptr inbounds i64, i64* %cloptr10490, i64 0                 ; &cloptr10490[0]
  %f10493 = load i64, i64* %i0ptr10491, align 8                                      ; load; *i0ptr10491
  %fptr10492 = inttoptr i64 %f10493 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10492(i64 %Xhz$_37map1, i64 %arg7951, i64 %arg7950, i64 %OVh$lsts); tail call
  ret void
}


define void @lam8209(i64 %env8210, i64 %_957211, i64 %Rmr$vs) {
  %envptr10494 = inttoptr i64 %env8210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10495 = getelementptr inbounds i64, i64* %envptr10494, i64 6                ; &envptr10494[6]
  %Zw0$acc = load i64, i64* %envptr10495, align 8                                    ; load; *envptr10495
  %envptr10496 = inttoptr i64 %env8210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10497 = getelementptr inbounds i64, i64* %envptr10496, i64 5                ; &envptr10496[5]
  %cont7205 = load i64, i64* %envptr10497, align 8                                   ; load; *envptr10497
  %envptr10498 = inttoptr i64 %env8210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10499 = getelementptr inbounds i64, i64* %envptr10498, i64 4                ; &envptr10498[4]
  %GBC$lsts_43 = load i64, i64* %envptr10499, align 8                                ; load; *envptr10499
  %envptr10500 = inttoptr i64 %env8210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10501 = getelementptr inbounds i64, i64* %envptr10500, i64 3                ; &envptr10500[3]
  %PSW$f = load i64, i64* %envptr10501, align 8                                      ; load; *envptr10501
  %envptr10502 = inttoptr i64 %env8210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10503 = getelementptr inbounds i64, i64* %envptr10502, i64 2                ; &envptr10502[2]
  %rVU$_37foldr = load i64, i64* %envptr10503, align 8                               ; load; *envptr10503
  %envptr10504 = inttoptr i64 %env8210 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10505 = getelementptr inbounds i64, i64* %envptr10504, i64 1                ; &envptr10504[1]
  %jkj$_37foldr1 = load i64, i64* %envptr10505, align 8                              ; load; *envptr10505
  %a6974 = call i64 @prim_cons(i64 %Zw0$acc, i64 %GBC$lsts_43)                       ; call prim_cons
  %a6975 = call i64 @prim_cons(i64 %PSW$f, i64 %a6974)                               ; call prim_cons
  %cloptr10506 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10508 = getelementptr inbounds i64, i64* %cloptr10506, i64 1                  ; &eptr10508[1]
  %eptr10509 = getelementptr inbounds i64, i64* %cloptr10506, i64 2                  ; &eptr10509[2]
  %eptr10510 = getelementptr inbounds i64, i64* %cloptr10506, i64 3                  ; &eptr10510[3]
  %eptr10511 = getelementptr inbounds i64, i64* %cloptr10506, i64 4                  ; &eptr10511[4]
  store i64 %Rmr$vs, i64* %eptr10508                                                 ; *eptr10508 = %Rmr$vs
  store i64 %jkj$_37foldr1, i64* %eptr10509                                          ; *eptr10509 = %jkj$_37foldr1
  store i64 %PSW$f, i64* %eptr10510                                                  ; *eptr10510 = %PSW$f
  store i64 %cont7205, i64* %eptr10511                                               ; *eptr10511 = %cont7205
  %eptr10507 = getelementptr inbounds i64, i64* %cloptr10506, i64 0                  ; &cloptr10506[0]
  %f10512 = ptrtoint void(i64,i64,i64)* @lam8207 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10512, i64* %eptr10507                                                 ; store fptr
  %arg7958 = ptrtoint i64* %cloptr10506 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7217 = call i64 @prim_cons(i64 %arg7958, i64 %a6975)                     ; call prim_cons
  %cloptr10513 = inttoptr i64 %rVU$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10513)                                        ; assert function application
  %i0ptr10514 = getelementptr inbounds i64, i64* %cloptr10513, i64 0                 ; &cloptr10513[0]
  %f10516 = load i64, i64* %i0ptr10514, align 8                                      ; load; *i0ptr10514
  %fptr10515 = inttoptr i64 %f10516 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10515(i64 %rVU$_37foldr, i64 %cps_45lst7217)        ; tail call
  ret void
}


define void @lam8207(i64 %env8208, i64 %_957212, i64 %a6976) {
  %envptr10517 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10518 = getelementptr inbounds i64, i64* %envptr10517, i64 4                ; &envptr10517[4]
  %cont7205 = load i64, i64* %envptr10518, align 8                                   ; load; *envptr10518
  %envptr10519 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10520 = getelementptr inbounds i64, i64* %envptr10519, i64 3                ; &envptr10519[3]
  %PSW$f = load i64, i64* %envptr10520, align 8                                      ; load; *envptr10520
  %envptr10521 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10522 = getelementptr inbounds i64, i64* %envptr10521, i64 2                ; &envptr10521[2]
  %jkj$_37foldr1 = load i64, i64* %envptr10522, align 8                              ; load; *envptr10522
  %envptr10523 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10524 = getelementptr inbounds i64, i64* %envptr10523, i64 1                ; &envptr10523[1]
  %Rmr$vs = load i64, i64* %envptr10524, align 8                                     ; load; *envptr10524
  %arg7959 = add i64 0, 0                                                            ; quoted ()
  %a6977 = call i64 @prim_cons(i64 %a6976, i64 %arg7959)                             ; call prim_cons
  %cloptr10525 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10527 = getelementptr inbounds i64, i64* %cloptr10525, i64 1                  ; &eptr10527[1]
  %eptr10528 = getelementptr inbounds i64, i64* %cloptr10525, i64 2                  ; &eptr10528[2]
  store i64 %PSW$f, i64* %eptr10527                                                  ; *eptr10527 = %PSW$f
  store i64 %cont7205, i64* %eptr10528                                               ; *eptr10528 = %cont7205
  %eptr10526 = getelementptr inbounds i64, i64* %cloptr10525, i64 0                  ; &cloptr10525[0]
  %f10529 = ptrtoint void(i64,i64,i64)* @lam8204 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10529, i64* %eptr10526                                                 ; store fptr
  %arg7964 = ptrtoint i64* %cloptr10525 to i64                                       ; closure cast; i64* -> i64
  %cloptr10530 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10531 = getelementptr inbounds i64, i64* %cloptr10530, i64 0                  ; &cloptr10530[0]
  %f10532 = ptrtoint void(i64,i64,i64,i64)* @lam8202 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10532, i64* %eptr10531                                                 ; store fptr
  %arg7963 = ptrtoint i64* %cloptr10530 to i64                                       ; closure cast; i64* -> i64
  %cloptr10533 = inttoptr i64 %jkj$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10533)                                        ; assert function application
  %i0ptr10534 = getelementptr inbounds i64, i64* %cloptr10533, i64 0                 ; &cloptr10533[0]
  %f10536 = load i64, i64* %i0ptr10534, align 8                                      ; load; *i0ptr10534
  %fptr10535 = inttoptr i64 %f10536 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10535(i64 %jkj$_37foldr1, i64 %arg7964, i64 %arg7963, i64 %a6977, i64 %Rmr$vs); tail call
  ret void
}


define void @lam8204(i64 %env8205, i64 %_957213, i64 %a6978) {
  %envptr10537 = inttoptr i64 %env8205 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10538 = getelementptr inbounds i64, i64* %envptr10537, i64 2                ; &envptr10537[2]
  %cont7205 = load i64, i64* %envptr10538, align 8                                   ; load; *envptr10538
  %envptr10539 = inttoptr i64 %env8205 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10540 = getelementptr inbounds i64, i64* %envptr10539, i64 1                ; &envptr10539[1]
  %PSW$f = load i64, i64* %envptr10540, align 8                                      ; load; *envptr10540
  %cps_45lst7214 = call i64 @prim_cons(i64 %cont7205, i64 %a6978)                    ; call prim_cons
  %cloptr10541 = inttoptr i64 %PSW$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10541)                                        ; assert function application
  %i0ptr10542 = getelementptr inbounds i64, i64* %cloptr10541, i64 0                 ; &cloptr10541[0]
  %f10544 = load i64, i64* %i0ptr10542, align 8                                      ; load; *i0ptr10542
  %fptr10543 = inttoptr i64 %f10544 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10543(i64 %PSW$f, i64 %cps_45lst7214)               ; tail call
  ret void
}


define void @lam8202(i64 %env8203, i64 %cont7215, i64 %uCo$a, i64 %kpp$b) {
  %retprim7216 = call i64 @prim_cons(i64 %uCo$a, i64 %kpp$b)                         ; call prim_cons
  %arg7971 = add i64 0, 0                                                            ; quoted ()
  %cloptr10545 = inttoptr i64 %cont7215 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10545)                                        ; assert function application
  %i0ptr10546 = getelementptr inbounds i64, i64* %cloptr10545, i64 0                 ; &cloptr10545[0]
  %f10548 = load i64, i64* %i0ptr10546, align 8                                      ; load; *i0ptr10546
  %fptr10547 = inttoptr i64 %f10548 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10547(i64 %cont7215, i64 %arg7971, i64 %retprim7216); tail call
  ret void
}


define void @lam8199(i64 %env8200, i64 %cont7218, i64 %cLF$x) {
  %retprim7219 = call i64 @prim_car(i64 %cLF$x)                                      ; call prim_car
  %arg7975 = add i64 0, 0                                                            ; quoted ()
  %cloptr10549 = inttoptr i64 %cont7218 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10549)                                        ; assert function application
  %i0ptr10550 = getelementptr inbounds i64, i64* %cloptr10549, i64 0                 ; &cloptr10549[0]
  %f10552 = load i64, i64* %i0ptr10550, align 8                                      ; load; *i0ptr10550
  %fptr10551 = inttoptr i64 %f10552 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10551(i64 %cont7218, i64 %arg7975, i64 %retprim7219); tail call
  ret void
}


define void @lam8196(i64 %env8197, i64 %cont7220, i64 %TCv$x) {
  %retprim7221 = call i64 @prim_cdr(i64 %TCv$x)                                      ; call prim_cdr
  %arg7979 = add i64 0, 0                                                            ; quoted ()
  %cloptr10553 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10553)                                        ; assert function application
  %i0ptr10554 = getelementptr inbounds i64, i64* %cloptr10553, i64 0                 ; &cloptr10553[0]
  %f10556 = load i64, i64* %i0ptr10554, align 8                                      ; load; *i0ptr10554
  %fptr10555 = inttoptr i64 %f10556 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10555(i64 %cont7220, i64 %arg7979, i64 %retprim7221); tail call
  ret void
}


define void @lam8192(i64 %env8193, i64 %cont7222, i64 %JHU$lst, i64 %fML$b) {
  %cmp10557 = icmp eq i64 %fML$b, 15                                                 ; false?
  br i1 %cmp10557, label %else10559, label %then10558                                ; if

then10558:
  %arg7982 = add i64 0, 0                                                            ; quoted ()
  %cloptr10560 = inttoptr i64 %cont7222 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10560)                                        ; assert function application
  %i0ptr10561 = getelementptr inbounds i64, i64* %cloptr10560, i64 0                 ; &cloptr10560[0]
  %f10563 = load i64, i64* %i0ptr10561, align 8                                      ; load; *i0ptr10561
  %fptr10562 = inttoptr i64 %f10563 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10562(i64 %cont7222, i64 %arg7982, i64 %fML$b)      ; tail call
  ret void

else10559:
  %retprim7223 = call i64 @prim_null_63(i64 %JHU$lst)                                ; call prim_null_63
  %arg7986 = add i64 0, 0                                                            ; quoted ()
  %cloptr10564 = inttoptr i64 %cont7222 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10564)                                        ; assert function application
  %i0ptr10565 = getelementptr inbounds i64, i64* %cloptr10564, i64 0                 ; &cloptr10564[0]
  %f10567 = load i64, i64* %i0ptr10565, align 8                                      ; load; *i0ptr10565
  %fptr10566 = inttoptr i64 %f10567 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10566(i64 %cont7222, i64 %arg7986, i64 %retprim7223); tail call
  ret void
}


define void @lam8185(i64 %env8186, i64 %cont7226, i64 %vVh$_37foldl1) {
  %arg7989 = add i64 0, 0                                                            ; quoted ()
  %cloptr10568 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10570 = getelementptr inbounds i64, i64* %cloptr10568, i64 1                  ; &eptr10570[1]
  store i64 %vVh$_37foldl1, i64* %eptr10570                                          ; *eptr10570 = %vVh$_37foldl1
  %eptr10569 = getelementptr inbounds i64, i64* %cloptr10568, i64 0                  ; &cloptr10568[0]
  %f10571 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8182 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10571, i64* %eptr10569                                                 ; store fptr
  %arg7988 = ptrtoint i64* %cloptr10568 to i64                                       ; closure cast; i64* -> i64
  %cloptr10572 = inttoptr i64 %cont7226 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10572)                                        ; assert function application
  %i0ptr10573 = getelementptr inbounds i64, i64* %cloptr10572, i64 0                 ; &cloptr10572[0]
  %f10575 = load i64, i64* %i0ptr10573, align 8                                      ; load; *i0ptr10573
  %fptr10574 = inttoptr i64 %f10575 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10574(i64 %cont7226, i64 %arg7989, i64 %arg7988)    ; tail call
  ret void
}


define void @lam8182(i64 %env8183, i64 %cont7227, i64 %HBw$f, i64 %IaT$acc, i64 %RSh$lst) {
  %envptr10576 = inttoptr i64 %env8183 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10577 = getelementptr inbounds i64, i64* %envptr10576, i64 1                ; &envptr10576[1]
  %vVh$_37foldl1 = load i64, i64* %envptr10577, align 8                              ; load; *envptr10577
  %a6965 = call i64 @prim_null_63(i64 %RSh$lst)                                      ; call prim_null_63
  %cmp10578 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp10578, label %else10580, label %then10579                                ; if

then10579:
  %arg7993 = add i64 0, 0                                                            ; quoted ()
  %cloptr10581 = inttoptr i64 %cont7227 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10581)                                        ; assert function application
  %i0ptr10582 = getelementptr inbounds i64, i64* %cloptr10581, i64 0                 ; &cloptr10581[0]
  %f10584 = load i64, i64* %i0ptr10582, align 8                                      ; load; *i0ptr10582
  %fptr10583 = inttoptr i64 %f10584 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10583(i64 %cont7227, i64 %arg7993, i64 %IaT$acc)    ; tail call
  ret void

else10580:
  %a6966 = call i64 @prim_car(i64 %RSh$lst)                                          ; call prim_car
  %cloptr10585 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10587 = getelementptr inbounds i64, i64* %cloptr10585, i64 1                  ; &eptr10587[1]
  %eptr10588 = getelementptr inbounds i64, i64* %cloptr10585, i64 2                  ; &eptr10588[2]
  %eptr10589 = getelementptr inbounds i64, i64* %cloptr10585, i64 3                  ; &eptr10589[3]
  %eptr10590 = getelementptr inbounds i64, i64* %cloptr10585, i64 4                  ; &eptr10590[4]
  store i64 %cont7227, i64* %eptr10587                                               ; *eptr10587 = %cont7227
  store i64 %vVh$_37foldl1, i64* %eptr10588                                          ; *eptr10588 = %vVh$_37foldl1
  store i64 %HBw$f, i64* %eptr10589                                                  ; *eptr10589 = %HBw$f
  store i64 %RSh$lst, i64* %eptr10590                                                ; *eptr10590 = %RSh$lst
  %eptr10586 = getelementptr inbounds i64, i64* %cloptr10585, i64 0                  ; &cloptr10585[0]
  %f10591 = ptrtoint void(i64,i64,i64)* @lam8180 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10591, i64* %eptr10586                                                 ; store fptr
  %arg7998 = ptrtoint i64* %cloptr10585 to i64                                       ; closure cast; i64* -> i64
  %cloptr10592 = inttoptr i64 %HBw$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10592)                                        ; assert function application
  %i0ptr10593 = getelementptr inbounds i64, i64* %cloptr10592, i64 0                 ; &cloptr10592[0]
  %f10595 = load i64, i64* %i0ptr10593, align 8                                      ; load; *i0ptr10593
  %fptr10594 = inttoptr i64 %f10595 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10594(i64 %HBw$f, i64 %arg7998, i64 %a6966, i64 %IaT$acc); tail call
  ret void
}


define void @lam8180(i64 %env8181, i64 %_957228, i64 %a6967) {
  %envptr10596 = inttoptr i64 %env8181 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10597 = getelementptr inbounds i64, i64* %envptr10596, i64 4                ; &envptr10596[4]
  %RSh$lst = load i64, i64* %envptr10597, align 8                                    ; load; *envptr10597
  %envptr10598 = inttoptr i64 %env8181 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10599 = getelementptr inbounds i64, i64* %envptr10598, i64 3                ; &envptr10598[3]
  %HBw$f = load i64, i64* %envptr10599, align 8                                      ; load; *envptr10599
  %envptr10600 = inttoptr i64 %env8181 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10601 = getelementptr inbounds i64, i64* %envptr10600, i64 2                ; &envptr10600[2]
  %vVh$_37foldl1 = load i64, i64* %envptr10601, align 8                              ; load; *envptr10601
  %envptr10602 = inttoptr i64 %env8181 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10603 = getelementptr inbounds i64, i64* %envptr10602, i64 1                ; &envptr10602[1]
  %cont7227 = load i64, i64* %envptr10603, align 8                                   ; load; *envptr10603
  %a6968 = call i64 @prim_cdr(i64 %RSh$lst)                                          ; call prim_cdr
  %cloptr10604 = inttoptr i64 %vVh$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10604)                                        ; assert function application
  %i0ptr10605 = getelementptr inbounds i64, i64* %cloptr10604, i64 0                 ; &cloptr10604[0]
  %f10607 = load i64, i64* %i0ptr10605, align 8                                      ; load; *i0ptr10605
  %fptr10606 = inttoptr i64 %f10607 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10606(i64 %vVh$_37foldl1, i64 %cont7227, i64 %HBw$f, i64 %a6967, i64 %a6968); tail call
  ret void
}


define void @lam8177(i64 %env8178, i64 %cont7229, i64 %VD1$_37length) {
  %arg8007 = add i64 0, 0                                                            ; quoted ()
  %cloptr10608 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10610 = getelementptr inbounds i64, i64* %cloptr10608, i64 1                  ; &eptr10610[1]
  store i64 %VD1$_37length, i64* %eptr10610                                          ; *eptr10610 = %VD1$_37length
  %eptr10609 = getelementptr inbounds i64, i64* %cloptr10608, i64 0                  ; &cloptr10608[0]
  %f10611 = ptrtoint void(i64,i64,i64)* @lam8174 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10611, i64* %eptr10609                                                 ; store fptr
  %arg8006 = ptrtoint i64* %cloptr10608 to i64                                       ; closure cast; i64* -> i64
  %cloptr10612 = inttoptr i64 %cont7229 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10612)                                        ; assert function application
  %i0ptr10613 = getelementptr inbounds i64, i64* %cloptr10612, i64 0                 ; &cloptr10612[0]
  %f10615 = load i64, i64* %i0ptr10613, align 8                                      ; load; *i0ptr10613
  %fptr10614 = inttoptr i64 %f10615 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10614(i64 %cont7229, i64 %arg8007, i64 %arg8006)    ; tail call
  ret void
}


define void @lam8174(i64 %env8175, i64 %cont7230, i64 %Rv8$lst) {
  %envptr10616 = inttoptr i64 %env8175 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10617 = getelementptr inbounds i64, i64* %envptr10616, i64 1                ; &envptr10616[1]
  %VD1$_37length = load i64, i64* %envptr10617, align 8                              ; load; *envptr10617
  %a6962 = call i64 @prim_null_63(i64 %Rv8$lst)                                      ; call prim_null_63
  %cmp10618 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp10618, label %else10620, label %then10619                                ; if

then10619:
  %arg8011 = add i64 0, 0                                                            ; quoted ()
  %arg8010 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10621 = inttoptr i64 %cont7230 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10621)                                        ; assert function application
  %i0ptr10622 = getelementptr inbounds i64, i64* %cloptr10621, i64 0                 ; &cloptr10621[0]
  %f10624 = load i64, i64* %i0ptr10622, align 8                                      ; load; *i0ptr10622
  %fptr10623 = inttoptr i64 %f10624 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10623(i64 %cont7230, i64 %arg8011, i64 %arg8010)    ; tail call
  ret void

else10620:
  %a6963 = call i64 @prim_cdr(i64 %Rv8$lst)                                          ; call prim_cdr
  %cloptr10625 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10627 = getelementptr inbounds i64, i64* %cloptr10625, i64 1                  ; &eptr10627[1]
  store i64 %cont7230, i64* %eptr10627                                               ; *eptr10627 = %cont7230
  %eptr10626 = getelementptr inbounds i64, i64* %cloptr10625, i64 0                  ; &cloptr10625[0]
  %f10628 = ptrtoint void(i64,i64,i64)* @lam8172 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10628, i64* %eptr10626                                                 ; store fptr
  %arg8015 = ptrtoint i64* %cloptr10625 to i64                                       ; closure cast; i64* -> i64
  %cloptr10629 = inttoptr i64 %VD1$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10629)                                        ; assert function application
  %i0ptr10630 = getelementptr inbounds i64, i64* %cloptr10629, i64 0                 ; &cloptr10629[0]
  %f10632 = load i64, i64* %i0ptr10630, align 8                                      ; load; *i0ptr10630
  %fptr10631 = inttoptr i64 %f10632 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10631(i64 %VD1$_37length, i64 %arg8015, i64 %a6963) ; tail call
  ret void
}


define void @lam8172(i64 %env8173, i64 %_957231, i64 %a6964) {
  %envptr10633 = inttoptr i64 %env8173 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10634 = getelementptr inbounds i64, i64* %envptr10633, i64 1                ; &envptr10633[1]
  %cont7230 = load i64, i64* %envptr10634, align 8                                   ; load; *envptr10634
  %arg8018 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7232 = call i64 @prim__43(i64 %arg8018, i64 %a6964)                        ; call prim__43
  %arg8020 = add i64 0, 0                                                            ; quoted ()
  %cloptr10635 = inttoptr i64 %cont7230 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10635)                                        ; assert function application
  %i0ptr10636 = getelementptr inbounds i64, i64* %cloptr10635, i64 0                 ; &cloptr10635[0]
  %f10638 = load i64, i64* %i0ptr10636, align 8                                      ; load; *i0ptr10636
  %fptr10637 = inttoptr i64 %f10638 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10637(i64 %cont7230, i64 %arg8020, i64 %retprim7232); tail call
  ret void
}


define void @lam8166(i64 %env8167, i64 %cont7233, i64 %QbV$_37take) {
  %arg8023 = add i64 0, 0                                                            ; quoted ()
  %cloptr10639 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10641 = getelementptr inbounds i64, i64* %cloptr10639, i64 1                  ; &eptr10641[1]
  store i64 %QbV$_37take, i64* %eptr10641                                            ; *eptr10641 = %QbV$_37take
  %eptr10640 = getelementptr inbounds i64, i64* %cloptr10639, i64 0                  ; &cloptr10639[0]
  %f10642 = ptrtoint void(i64,i64,i64,i64)* @lam8163 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10642, i64* %eptr10640                                                 ; store fptr
  %arg8022 = ptrtoint i64* %cloptr10639 to i64                                       ; closure cast; i64* -> i64
  %cloptr10643 = inttoptr i64 %cont7233 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10643)                                        ; assert function application
  %i0ptr10644 = getelementptr inbounds i64, i64* %cloptr10643, i64 0                 ; &cloptr10643[0]
  %f10646 = load i64, i64* %i0ptr10644, align 8                                      ; load; *i0ptr10644
  %fptr10645 = inttoptr i64 %f10646 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10645(i64 %cont7233, i64 %arg8023, i64 %arg8022)    ; tail call
  ret void
}


define void @lam8163(i64 %env8164, i64 %cont7234, i64 %TUf$lst, i64 %Vua$n) {
  %envptr10647 = inttoptr i64 %env8164 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10648 = getelementptr inbounds i64, i64* %envptr10647, i64 1                ; &envptr10647[1]
  %QbV$_37take = load i64, i64* %envptr10648, align 8                                ; load; *envptr10648
  %arg8025 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim__61(i64 %Vua$n, i64 %arg8025)                              ; call prim__61
  %cmp10649 = icmp eq i64 %a6956, 15                                                 ; false?
  br i1 %cmp10649, label %else10651, label %then10650                                ; if

then10650:
  %arg8028 = add i64 0, 0                                                            ; quoted ()
  %arg8027 = add i64 0, 0                                                            ; quoted ()
  %cloptr10652 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10652)                                        ; assert function application
  %i0ptr10653 = getelementptr inbounds i64, i64* %cloptr10652, i64 0                 ; &cloptr10652[0]
  %f10655 = load i64, i64* %i0ptr10653, align 8                                      ; load; *i0ptr10653
  %fptr10654 = inttoptr i64 %f10655 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10654(i64 %cont7234, i64 %arg8028, i64 %arg8027)    ; tail call
  ret void

else10651:
  %a6957 = call i64 @prim_null_63(i64 %TUf$lst)                                      ; call prim_null_63
  %cmp10656 = icmp eq i64 %a6957, 15                                                 ; false?
  br i1 %cmp10656, label %else10658, label %then10657                                ; if

then10657:
  %arg8032 = add i64 0, 0                                                            ; quoted ()
  %arg8031 = add i64 0, 0                                                            ; quoted ()
  %cloptr10659 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10659)                                        ; assert function application
  %i0ptr10660 = getelementptr inbounds i64, i64* %cloptr10659, i64 0                 ; &cloptr10659[0]
  %f10662 = load i64, i64* %i0ptr10660, align 8                                      ; load; *i0ptr10660
  %fptr10661 = inttoptr i64 %f10662 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10661(i64 %cont7234, i64 %arg8032, i64 %arg8031)    ; tail call
  ret void

else10658:
  %a6958 = call i64 @prim_car(i64 %TUf$lst)                                          ; call prim_car
  %a6959 = call i64 @prim_cdr(i64 %TUf$lst)                                          ; call prim_cdr
  %arg8036 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6960 = call i64 @prim__45(i64 %Vua$n, i64 %arg8036)                              ; call prim__45
  %cloptr10663 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10665 = getelementptr inbounds i64, i64* %cloptr10663, i64 1                  ; &eptr10665[1]
  %eptr10666 = getelementptr inbounds i64, i64* %cloptr10663, i64 2                  ; &eptr10666[2]
  store i64 %cont7234, i64* %eptr10665                                               ; *eptr10665 = %cont7234
  store i64 %a6958, i64* %eptr10666                                                  ; *eptr10666 = %a6958
  %eptr10664 = getelementptr inbounds i64, i64* %cloptr10663, i64 0                  ; &cloptr10663[0]
  %f10667 = ptrtoint void(i64,i64,i64)* @lam8159 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10667, i64* %eptr10664                                                 ; store fptr
  %arg8040 = ptrtoint i64* %cloptr10663 to i64                                       ; closure cast; i64* -> i64
  %cloptr10668 = inttoptr i64 %QbV$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10668)                                        ; assert function application
  %i0ptr10669 = getelementptr inbounds i64, i64* %cloptr10668, i64 0                 ; &cloptr10668[0]
  %f10671 = load i64, i64* %i0ptr10669, align 8                                      ; load; *i0ptr10669
  %fptr10670 = inttoptr i64 %f10671 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10670(i64 %QbV$_37take, i64 %arg8040, i64 %a6959, i64 %a6960); tail call
  ret void
}


define void @lam8159(i64 %env8160, i64 %_957235, i64 %a6961) {
  %envptr10672 = inttoptr i64 %env8160 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10673 = getelementptr inbounds i64, i64* %envptr10672, i64 2                ; &envptr10672[2]
  %a6958 = load i64, i64* %envptr10673, align 8                                      ; load; *envptr10673
  %envptr10674 = inttoptr i64 %env8160 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10675 = getelementptr inbounds i64, i64* %envptr10674, i64 1                ; &envptr10674[1]
  %cont7234 = load i64, i64* %envptr10675, align 8                                   ; load; *envptr10675
  %retprim7236 = call i64 @prim_cons(i64 %a6958, i64 %a6961)                         ; call prim_cons
  %arg8045 = add i64 0, 0                                                            ; quoted ()
  %cloptr10676 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10676)                                        ; assert function application
  %i0ptr10677 = getelementptr inbounds i64, i64* %cloptr10676, i64 0                 ; &cloptr10676[0]
  %f10679 = load i64, i64* %i0ptr10677, align 8                                      ; load; *i0ptr10677
  %fptr10678 = inttoptr i64 %f10679 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10678(i64 %cont7234, i64 %arg8045, i64 %retprim7236); tail call
  ret void
}


define void @lam8152(i64 %env8153, i64 %cont7237, i64 %bW7$_37map) {
  %arg8048 = add i64 0, 0                                                            ; quoted ()
  %cloptr10680 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10682 = getelementptr inbounds i64, i64* %cloptr10680, i64 1                  ; &eptr10682[1]
  store i64 %bW7$_37map, i64* %eptr10682                                             ; *eptr10682 = %bW7$_37map
  %eptr10681 = getelementptr inbounds i64, i64* %cloptr10680, i64 0                  ; &cloptr10680[0]
  %f10683 = ptrtoint void(i64,i64,i64,i64)* @lam8149 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10683, i64* %eptr10681                                                 ; store fptr
  %arg8047 = ptrtoint i64* %cloptr10680 to i64                                       ; closure cast; i64* -> i64
  %cloptr10684 = inttoptr i64 %cont7237 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10684)                                        ; assert function application
  %i0ptr10685 = getelementptr inbounds i64, i64* %cloptr10684, i64 0                 ; &cloptr10684[0]
  %f10687 = load i64, i64* %i0ptr10685, align 8                                      ; load; *i0ptr10685
  %fptr10686 = inttoptr i64 %f10687 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10686(i64 %cont7237, i64 %arg8048, i64 %arg8047)    ; tail call
  ret void
}


define void @lam8149(i64 %env8150, i64 %cont7238, i64 %x4Y$f, i64 %GkA$lst) {
  %envptr10688 = inttoptr i64 %env8150 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10689 = getelementptr inbounds i64, i64* %envptr10688, i64 1                ; &envptr10688[1]
  %bW7$_37map = load i64, i64* %envptr10689, align 8                                 ; load; *envptr10689
  %a6951 = call i64 @prim_null_63(i64 %GkA$lst)                                      ; call prim_null_63
  %cmp10690 = icmp eq i64 %a6951, 15                                                 ; false?
  br i1 %cmp10690, label %else10692, label %then10691                                ; if

then10691:
  %arg8052 = add i64 0, 0                                                            ; quoted ()
  %arg8051 = add i64 0, 0                                                            ; quoted ()
  %cloptr10693 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10693)                                        ; assert function application
  %i0ptr10694 = getelementptr inbounds i64, i64* %cloptr10693, i64 0                 ; &cloptr10693[0]
  %f10696 = load i64, i64* %i0ptr10694, align 8                                      ; load; *i0ptr10694
  %fptr10695 = inttoptr i64 %f10696 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10695(i64 %cont7238, i64 %arg8052, i64 %arg8051)    ; tail call
  ret void

else10692:
  %a6952 = call i64 @prim_car(i64 %GkA$lst)                                          ; call prim_car
  %cloptr10697 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10699 = getelementptr inbounds i64, i64* %cloptr10697, i64 1                  ; &eptr10699[1]
  %eptr10700 = getelementptr inbounds i64, i64* %cloptr10697, i64 2                  ; &eptr10700[2]
  %eptr10701 = getelementptr inbounds i64, i64* %cloptr10697, i64 3                  ; &eptr10701[3]
  %eptr10702 = getelementptr inbounds i64, i64* %cloptr10697, i64 4                  ; &eptr10702[4]
  store i64 %bW7$_37map, i64* %eptr10699                                             ; *eptr10699 = %bW7$_37map
  store i64 %x4Y$f, i64* %eptr10700                                                  ; *eptr10700 = %x4Y$f
  store i64 %cont7238, i64* %eptr10701                                               ; *eptr10701 = %cont7238
  store i64 %GkA$lst, i64* %eptr10702                                                ; *eptr10702 = %GkA$lst
  %eptr10698 = getelementptr inbounds i64, i64* %cloptr10697, i64 0                  ; &cloptr10697[0]
  %f10703 = ptrtoint void(i64,i64,i64)* @lam8147 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10703, i64* %eptr10698                                                 ; store fptr
  %arg8056 = ptrtoint i64* %cloptr10697 to i64                                       ; closure cast; i64* -> i64
  %cloptr10704 = inttoptr i64 %x4Y$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10704)                                        ; assert function application
  %i0ptr10705 = getelementptr inbounds i64, i64* %cloptr10704, i64 0                 ; &cloptr10704[0]
  %f10707 = load i64, i64* %i0ptr10705, align 8                                      ; load; *i0ptr10705
  %fptr10706 = inttoptr i64 %f10707 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10706(i64 %x4Y$f, i64 %arg8056, i64 %a6952)         ; tail call
  ret void
}


define void @lam8147(i64 %env8148, i64 %_957239, i64 %a6953) {
  %envptr10708 = inttoptr i64 %env8148 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10709 = getelementptr inbounds i64, i64* %envptr10708, i64 4                ; &envptr10708[4]
  %GkA$lst = load i64, i64* %envptr10709, align 8                                    ; load; *envptr10709
  %envptr10710 = inttoptr i64 %env8148 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10711 = getelementptr inbounds i64, i64* %envptr10710, i64 3                ; &envptr10710[3]
  %cont7238 = load i64, i64* %envptr10711, align 8                                   ; load; *envptr10711
  %envptr10712 = inttoptr i64 %env8148 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10713 = getelementptr inbounds i64, i64* %envptr10712, i64 2                ; &envptr10712[2]
  %x4Y$f = load i64, i64* %envptr10713, align 8                                      ; load; *envptr10713
  %envptr10714 = inttoptr i64 %env8148 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10715 = getelementptr inbounds i64, i64* %envptr10714, i64 1                ; &envptr10714[1]
  %bW7$_37map = load i64, i64* %envptr10715, align 8                                 ; load; *envptr10715
  %a6954 = call i64 @prim_cdr(i64 %GkA$lst)                                          ; call prim_cdr
  %cloptr10716 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10718 = getelementptr inbounds i64, i64* %cloptr10716, i64 1                  ; &eptr10718[1]
  %eptr10719 = getelementptr inbounds i64, i64* %cloptr10716, i64 2                  ; &eptr10719[2]
  store i64 %cont7238, i64* %eptr10718                                               ; *eptr10718 = %cont7238
  store i64 %a6953, i64* %eptr10719                                                  ; *eptr10719 = %a6953
  %eptr10717 = getelementptr inbounds i64, i64* %cloptr10716, i64 0                  ; &cloptr10716[0]
  %f10720 = ptrtoint void(i64,i64,i64)* @lam8145 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10720, i64* %eptr10717                                                 ; store fptr
  %arg8061 = ptrtoint i64* %cloptr10716 to i64                                       ; closure cast; i64* -> i64
  %cloptr10721 = inttoptr i64 %bW7$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10721)                                        ; assert function application
  %i0ptr10722 = getelementptr inbounds i64, i64* %cloptr10721, i64 0                 ; &cloptr10721[0]
  %f10724 = load i64, i64* %i0ptr10722, align 8                                      ; load; *i0ptr10722
  %fptr10723 = inttoptr i64 %f10724 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10723(i64 %bW7$_37map, i64 %arg8061, i64 %x4Y$f, i64 %a6954); tail call
  ret void
}


define void @lam8145(i64 %env8146, i64 %_957240, i64 %a6955) {
  %envptr10725 = inttoptr i64 %env8146 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10726 = getelementptr inbounds i64, i64* %envptr10725, i64 2                ; &envptr10725[2]
  %a6953 = load i64, i64* %envptr10726, align 8                                      ; load; *envptr10726
  %envptr10727 = inttoptr i64 %env8146 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10728 = getelementptr inbounds i64, i64* %envptr10727, i64 1                ; &envptr10727[1]
  %cont7238 = load i64, i64* %envptr10728, align 8                                   ; load; *envptr10728
  %retprim7241 = call i64 @prim_cons(i64 %a6953, i64 %a6955)                         ; call prim_cons
  %arg8066 = add i64 0, 0                                                            ; quoted ()
  %cloptr10729 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10729)                                        ; assert function application
  %i0ptr10730 = getelementptr inbounds i64, i64* %cloptr10729, i64 0                 ; &cloptr10729[0]
  %f10732 = load i64, i64* %i0ptr10730, align 8                                      ; load; *i0ptr10730
  %fptr10731 = inttoptr i64 %f10732 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10731(i64 %cont7238, i64 %arg8066, i64 %retprim7241); tail call
  ret void
}


define void @lam8140(i64 %env8141, i64 %cont7242, i64 %Scm$_37foldr1) {
  %arg8069 = add i64 0, 0                                                            ; quoted ()
  %cloptr10733 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10735 = getelementptr inbounds i64, i64* %cloptr10733, i64 1                  ; &eptr10735[1]
  store i64 %Scm$_37foldr1, i64* %eptr10735                                          ; *eptr10735 = %Scm$_37foldr1
  %eptr10734 = getelementptr inbounds i64, i64* %cloptr10733, i64 0                  ; &cloptr10733[0]
  %f10736 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8137 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10736, i64* %eptr10734                                                 ; store fptr
  %arg8068 = ptrtoint i64* %cloptr10733 to i64                                       ; closure cast; i64* -> i64
  %cloptr10737 = inttoptr i64 %cont7242 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10737)                                        ; assert function application
  %i0ptr10738 = getelementptr inbounds i64, i64* %cloptr10737, i64 0                 ; &cloptr10737[0]
  %f10740 = load i64, i64* %i0ptr10738, align 8                                      ; load; *i0ptr10738
  %fptr10739 = inttoptr i64 %f10740 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10739(i64 %cont7242, i64 %arg8069, i64 %arg8068)    ; tail call
  ret void
}


define void @lam8137(i64 %env8138, i64 %cont7243, i64 %iG5$f, i64 %Zok$acc, i64 %ZtY$lst) {
  %envptr10741 = inttoptr i64 %env8138 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10742 = getelementptr inbounds i64, i64* %envptr10741, i64 1                ; &envptr10741[1]
  %Scm$_37foldr1 = load i64, i64* %envptr10742, align 8                              ; load; *envptr10742
  %a6947 = call i64 @prim_null_63(i64 %ZtY$lst)                                      ; call prim_null_63
  %cmp10743 = icmp eq i64 %a6947, 15                                                 ; false?
  br i1 %cmp10743, label %else10745, label %then10744                                ; if

then10744:
  %arg8073 = add i64 0, 0                                                            ; quoted ()
  %cloptr10746 = inttoptr i64 %cont7243 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10746)                                        ; assert function application
  %i0ptr10747 = getelementptr inbounds i64, i64* %cloptr10746, i64 0                 ; &cloptr10746[0]
  %f10749 = load i64, i64* %i0ptr10747, align 8                                      ; load; *i0ptr10747
  %fptr10748 = inttoptr i64 %f10749 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10748(i64 %cont7243, i64 %arg8073, i64 %Zok$acc)    ; tail call
  ret void

else10745:
  %a6948 = call i64 @prim_car(i64 %ZtY$lst)                                          ; call prim_car
  %a6949 = call i64 @prim_cdr(i64 %ZtY$lst)                                          ; call prim_cdr
  %cloptr10750 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10752 = getelementptr inbounds i64, i64* %cloptr10750, i64 1                  ; &eptr10752[1]
  %eptr10753 = getelementptr inbounds i64, i64* %cloptr10750, i64 2                  ; &eptr10753[2]
  %eptr10754 = getelementptr inbounds i64, i64* %cloptr10750, i64 3                  ; &eptr10754[3]
  store i64 %a6948, i64* %eptr10752                                                  ; *eptr10752 = %a6948
  store i64 %iG5$f, i64* %eptr10753                                                  ; *eptr10753 = %iG5$f
  store i64 %cont7243, i64* %eptr10754                                               ; *eptr10754 = %cont7243
  %eptr10751 = getelementptr inbounds i64, i64* %cloptr10750, i64 0                  ; &cloptr10750[0]
  %f10755 = ptrtoint void(i64,i64,i64)* @lam8135 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10755, i64* %eptr10751                                                 ; store fptr
  %arg8080 = ptrtoint i64* %cloptr10750 to i64                                       ; closure cast; i64* -> i64
  %cloptr10756 = inttoptr i64 %Scm$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10756)                                        ; assert function application
  %i0ptr10757 = getelementptr inbounds i64, i64* %cloptr10756, i64 0                 ; &cloptr10756[0]
  %f10759 = load i64, i64* %i0ptr10757, align 8                                      ; load; *i0ptr10757
  %fptr10758 = inttoptr i64 %f10759 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10758(i64 %Scm$_37foldr1, i64 %arg8080, i64 %iG5$f, i64 %Zok$acc, i64 %a6949); tail call
  ret void
}


define void @lam8135(i64 %env8136, i64 %_957244, i64 %a6950) {
  %envptr10760 = inttoptr i64 %env8136 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10761 = getelementptr inbounds i64, i64* %envptr10760, i64 3                ; &envptr10760[3]
  %cont7243 = load i64, i64* %envptr10761, align 8                                   ; load; *envptr10761
  %envptr10762 = inttoptr i64 %env8136 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10763 = getelementptr inbounds i64, i64* %envptr10762, i64 2                ; &envptr10762[2]
  %iG5$f = load i64, i64* %envptr10763, align 8                                      ; load; *envptr10763
  %envptr10764 = inttoptr i64 %env8136 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10765 = getelementptr inbounds i64, i64* %envptr10764, i64 1                ; &envptr10764[1]
  %a6948 = load i64, i64* %envptr10765, align 8                                      ; load; *envptr10765
  %cloptr10766 = inttoptr i64 %iG5$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10766)                                        ; assert function application
  %i0ptr10767 = getelementptr inbounds i64, i64* %cloptr10766, i64 0                 ; &cloptr10766[0]
  %f10769 = load i64, i64* %i0ptr10767, align 8                                      ; load; *i0ptr10767
  %fptr10768 = inttoptr i64 %f10769 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10768(i64 %iG5$f, i64 %cont7243, i64 %a6948, i64 %a6950); tail call
  ret void
}


define void @lam8132(i64 %env8133, i64 %cont7246, i64 %ZSf$y) {
  %arg8087 = add i64 0, 0                                                            ; quoted ()
  %cloptr10770 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10772 = getelementptr inbounds i64, i64* %cloptr10770, i64 1                  ; &eptr10772[1]
  store i64 %ZSf$y, i64* %eptr10772                                                  ; *eptr10772 = %ZSf$y
  %eptr10771 = getelementptr inbounds i64, i64* %cloptr10770, i64 0                  ; &cloptr10770[0]
  %f10773 = ptrtoint void(i64,i64,i64)* @lam8129 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10773, i64* %eptr10771                                                 ; store fptr
  %arg8086 = ptrtoint i64* %cloptr10770 to i64                                       ; closure cast; i64* -> i64
  %cloptr10774 = inttoptr i64 %cont7246 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10774)                                        ; assert function application
  %i0ptr10775 = getelementptr inbounds i64, i64* %cloptr10774, i64 0                 ; &cloptr10774[0]
  %f10777 = load i64, i64* %i0ptr10775, align 8                                      ; load; *i0ptr10775
  %fptr10776 = inttoptr i64 %f10777 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10776(i64 %cont7246, i64 %arg8087, i64 %arg8086)    ; tail call
  ret void
}


define void @lam8129(i64 %env8130, i64 %cont7247, i64 %vss$f) {
  %envptr10778 = inttoptr i64 %env8130 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10779 = getelementptr inbounds i64, i64* %envptr10778, i64 1                ; &envptr10778[1]
  %ZSf$y = load i64, i64* %envptr10779, align 8                                      ; load; *envptr10779
  %cloptr10780 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10782 = getelementptr inbounds i64, i64* %cloptr10780, i64 1                  ; &eptr10782[1]
  %eptr10783 = getelementptr inbounds i64, i64* %cloptr10780, i64 2                  ; &eptr10783[2]
  store i64 %vss$f, i64* %eptr10782                                                  ; *eptr10782 = %vss$f
  store i64 %ZSf$y, i64* %eptr10783                                                  ; *eptr10783 = %ZSf$y
  %eptr10781 = getelementptr inbounds i64, i64* %cloptr10780, i64 0                  ; &cloptr10780[0]
  %f10784 = ptrtoint void(i64,i64)* @lam8127 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10784, i64* %eptr10781                                                 ; store fptr
  %arg8089 = ptrtoint i64* %cloptr10780 to i64                                       ; closure cast; i64* -> i64
  %cloptr10785 = inttoptr i64 %vss$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10785)                                        ; assert function application
  %i0ptr10786 = getelementptr inbounds i64, i64* %cloptr10785, i64 0                 ; &cloptr10785[0]
  %f10788 = load i64, i64* %i0ptr10786, align 8                                      ; load; *i0ptr10786
  %fptr10787 = inttoptr i64 %f10788 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10787(i64 %vss$f, i64 %cont7247, i64 %arg8089)      ; tail call
  ret void
}


define void @lam8127(i64 %env8128, i64 %Yhz$args7249) {
  %envptr10789 = inttoptr i64 %env8128 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10790 = getelementptr inbounds i64, i64* %envptr10789, i64 2                ; &envptr10789[2]
  %ZSf$y = load i64, i64* %envptr10790, align 8                                      ; load; *envptr10790
  %envptr10791 = inttoptr i64 %env8128 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10792 = getelementptr inbounds i64, i64* %envptr10791, i64 1                ; &envptr10791[1]
  %vss$f = load i64, i64* %envptr10792, align 8                                      ; load; *envptr10792
  %cont7248 = call i64 @prim_car(i64 %Yhz$args7249)                                  ; call prim_car
  %Yhz$args = call i64 @prim_cdr(i64 %Yhz$args7249)                                  ; call prim_cdr
  %cloptr10793 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10795 = getelementptr inbounds i64, i64* %cloptr10793, i64 1                  ; &eptr10795[1]
  %eptr10796 = getelementptr inbounds i64, i64* %cloptr10793, i64 2                  ; &eptr10796[2]
  %eptr10797 = getelementptr inbounds i64, i64* %cloptr10793, i64 3                  ; &eptr10797[3]
  store i64 %cont7248, i64* %eptr10795                                               ; *eptr10795 = %cont7248
  store i64 %Yhz$args, i64* %eptr10796                                               ; *eptr10796 = %Yhz$args
  store i64 %vss$f, i64* %eptr10797                                                  ; *eptr10797 = %vss$f
  %eptr10794 = getelementptr inbounds i64, i64* %cloptr10793, i64 0                  ; &cloptr10793[0]
  %f10798 = ptrtoint void(i64,i64,i64)* @lam8125 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10798, i64* %eptr10794                                                 ; store fptr
  %arg8095 = ptrtoint i64* %cloptr10793 to i64                                       ; closure cast; i64* -> i64
  %cloptr10799 = inttoptr i64 %ZSf$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10799)                                        ; assert function application
  %i0ptr10800 = getelementptr inbounds i64, i64* %cloptr10799, i64 0                 ; &cloptr10799[0]
  %f10802 = load i64, i64* %i0ptr10800, align 8                                      ; load; *i0ptr10800
  %fptr10801 = inttoptr i64 %f10802 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10801(i64 %ZSf$y, i64 %arg8095, i64 %ZSf$y)         ; tail call
  ret void
}


define void @lam8125(i64 %env8126, i64 %_957250, i64 %a6945) {
  %envptr10803 = inttoptr i64 %env8126 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10804 = getelementptr inbounds i64, i64* %envptr10803, i64 3                ; &envptr10803[3]
  %vss$f = load i64, i64* %envptr10804, align 8                                      ; load; *envptr10804
  %envptr10805 = inttoptr i64 %env8126 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10806 = getelementptr inbounds i64, i64* %envptr10805, i64 2                ; &envptr10805[2]
  %Yhz$args = load i64, i64* %envptr10806, align 8                                   ; load; *envptr10806
  %envptr10807 = inttoptr i64 %env8126 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10808 = getelementptr inbounds i64, i64* %envptr10807, i64 1                ; &envptr10807[1]
  %cont7248 = load i64, i64* %envptr10808, align 8                                   ; load; *envptr10808
  %cloptr10809 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10811 = getelementptr inbounds i64, i64* %cloptr10809, i64 1                  ; &eptr10811[1]
  %eptr10812 = getelementptr inbounds i64, i64* %cloptr10809, i64 2                  ; &eptr10812[2]
  store i64 %cont7248, i64* %eptr10811                                               ; *eptr10811 = %cont7248
  store i64 %Yhz$args, i64* %eptr10812                                               ; *eptr10812 = %Yhz$args
  %eptr10810 = getelementptr inbounds i64, i64* %cloptr10809, i64 0                  ; &cloptr10809[0]
  %f10813 = ptrtoint void(i64,i64,i64)* @lam8123 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10813, i64* %eptr10810                                                 ; store fptr
  %arg8098 = ptrtoint i64* %cloptr10809 to i64                                       ; closure cast; i64* -> i64
  %cloptr10814 = inttoptr i64 %a6945 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10814)                                        ; assert function application
  %i0ptr10815 = getelementptr inbounds i64, i64* %cloptr10814, i64 0                 ; &cloptr10814[0]
  %f10817 = load i64, i64* %i0ptr10815, align 8                                      ; load; *i0ptr10815
  %fptr10816 = inttoptr i64 %f10817 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10816(i64 %a6945, i64 %arg8098, i64 %vss$f)         ; tail call
  ret void
}


define void @lam8123(i64 %env8124, i64 %_957251, i64 %a6946) {
  %envptr10818 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10819 = getelementptr inbounds i64, i64* %envptr10818, i64 2                ; &envptr10818[2]
  %Yhz$args = load i64, i64* %envptr10819, align 8                                   ; load; *envptr10819
  %envptr10820 = inttoptr i64 %env8124 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10821 = getelementptr inbounds i64, i64* %envptr10820, i64 1                ; &envptr10820[1]
  %cont7248 = load i64, i64* %envptr10821, align 8                                   ; load; *envptr10821
  %cps_45lst7252 = call i64 @prim_cons(i64 %cont7248, i64 %Yhz$args)                 ; call prim_cons
  %cloptr10822 = inttoptr i64 %a6946 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10822)                                        ; assert function application
  %i0ptr10823 = getelementptr inbounds i64, i64* %cloptr10822, i64 0                 ; &cloptr10822[0]
  %f10825 = load i64, i64* %i0ptr10823, align 8                                      ; load; *i0ptr10823
  %fptr10824 = inttoptr i64 %f10825 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10824(i64 %a6946, i64 %cps_45lst7252)               ; tail call
  ret void
}





@sym9393 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
@sym9468 = private unnamed_addr constant [2 x i8] c"a\00", align 8
@str9469 = private unnamed_addr constant [2 x i8] c"c\00", align 8
