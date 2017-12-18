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



define void @lam8549(i64 %env8550, i64 %cont7243, i64 %r3v$yu) {
  %cloptr8564 = inttoptr i64 %r3v$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8564)                                         ; assert function application
  %i0ptr8565 = getelementptr inbounds i64, i64* %cloptr8564, i64 0                   ; &cloptr8564[0]
  %f8567 = load i64, i64* %i0ptr8565, align 8                                        ; load; *i0ptr8565
  %fptr8566 = inttoptr i64 %f8567 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8566(i64 %r3v$yu, i64 %cont7243, i64 %r3v$yu)       ; tail call
  ret void
}


define void @lam8547(i64 %env8548, i64 %_957064, i64 %KaW$Ycmb) {
  %cloptr8568 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8570 = getelementptr inbounds i64, i64* %cloptr8568, i64 1                    ; &eptr8570[1]
  store i64 %KaW$Ycmb, i64* %eptr8570                                                ; *eptr8570 = %KaW$Ycmb
  %eptr8569 = getelementptr inbounds i64, i64* %cloptr8568, i64 0                    ; &cloptr8568[0]
  %f8571 = ptrtoint void(i64,i64,i64)* @lam8545 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8571, i64* %eptr8569                                                   ; store fptr
  %arg7258 = ptrtoint i64* %cloptr8568 to i64                                        ; closure cast; i64* -> i64
  %cloptr8572 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8573 = getelementptr inbounds i64, i64* %cloptr8572, i64 0                    ; &cloptr8572[0]
  %f8574 = ptrtoint void(i64,i64,i64)* @lam8112 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8574, i64* %eptr8573                                                   ; store fptr
  %arg7257 = ptrtoint i64* %cloptr8572 to i64                                        ; closure cast; i64* -> i64
  %cloptr8575 = inttoptr i64 %KaW$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8575)                                         ; assert function application
  %i0ptr8576 = getelementptr inbounds i64, i64* %cloptr8575, i64 0                   ; &cloptr8575[0]
  %f8578 = load i64, i64* %i0ptr8576, align 8                                        ; load; *i0ptr8576
  %fptr8577 = inttoptr i64 %f8578 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8577(i64 %KaW$Ycmb, i64 %arg7258, i64 %arg7257)     ; tail call
  ret void
}


define void @lam8545(i64 %env8546, i64 %_957065, i64 %VJi$_37foldr1) {
  %envptr8579 = inttoptr i64 %env8546 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8580 = getelementptr inbounds i64, i64* %envptr8579, i64 1                  ; &envptr8579[1]
  %KaW$Ycmb = load i64, i64* %envptr8580, align 8                                    ; load; *envptr8580
  %cloptr8581 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8583 = getelementptr inbounds i64, i64* %cloptr8581, i64 1                    ; &eptr8583[1]
  %eptr8584 = getelementptr inbounds i64, i64* %cloptr8581, i64 2                    ; &eptr8584[2]
  store i64 %KaW$Ycmb, i64* %eptr8583                                                ; *eptr8583 = %KaW$Ycmb
  store i64 %VJi$_37foldr1, i64* %eptr8584                                           ; *eptr8584 = %VJi$_37foldr1
  %eptr8582 = getelementptr inbounds i64, i64* %cloptr8581, i64 0                    ; &cloptr8581[0]
  %f8585 = ptrtoint void(i64,i64,i64)* @lam8543 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8585, i64* %eptr8582                                                   ; store fptr
  %arg7261 = ptrtoint i64* %cloptr8581 to i64                                        ; closure cast; i64* -> i64
  %cloptr8586 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8587 = getelementptr inbounds i64, i64* %cloptr8586, i64 0                    ; &cloptr8586[0]
  %f8588 = ptrtoint void(i64,i64,i64)* @lam8124 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8588, i64* %eptr8587                                                   ; store fptr
  %arg7260 = ptrtoint i64* %cloptr8586 to i64                                        ; closure cast; i64* -> i64
  %cloptr8589 = inttoptr i64 %KaW$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8589)                                         ; assert function application
  %i0ptr8590 = getelementptr inbounds i64, i64* %cloptr8589, i64 0                   ; &cloptr8589[0]
  %f8592 = load i64, i64* %i0ptr8590, align 8                                        ; load; *i0ptr8590
  %fptr8591 = inttoptr i64 %f8592 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8591(i64 %KaW$Ycmb, i64 %arg7261, i64 %arg7260)     ; tail call
  ret void
}


define void @lam8543(i64 %env8544, i64 %_957066, i64 %qG7$_37map1) {
  %envptr8593 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8594 = getelementptr inbounds i64, i64* %envptr8593, i64 2                  ; &envptr8593[2]
  %VJi$_37foldr1 = load i64, i64* %envptr8594, align 8                               ; load; *envptr8594
  %envptr8595 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8596 = getelementptr inbounds i64, i64* %envptr8595, i64 1                  ; &envptr8595[1]
  %KaW$Ycmb = load i64, i64* %envptr8596, align 8                                    ; load; *envptr8596
  %cloptr8597 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8599 = getelementptr inbounds i64, i64* %cloptr8597, i64 1                    ; &eptr8599[1]
  %eptr8600 = getelementptr inbounds i64, i64* %cloptr8597, i64 2                    ; &eptr8600[2]
  %eptr8601 = getelementptr inbounds i64, i64* %cloptr8597, i64 3                    ; &eptr8601[3]
  store i64 %KaW$Ycmb, i64* %eptr8599                                                ; *eptr8599 = %KaW$Ycmb
  store i64 %VJi$_37foldr1, i64* %eptr8600                                           ; *eptr8600 = %VJi$_37foldr1
  store i64 %qG7$_37map1, i64* %eptr8601                                             ; *eptr8601 = %qG7$_37map1
  %eptr8598 = getelementptr inbounds i64, i64* %cloptr8597, i64 0                    ; &cloptr8597[0]
  %f8602 = ptrtoint void(i64,i64,i64)* @lam8541 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8602, i64* %eptr8598                                                   ; store fptr
  %arg7264 = ptrtoint i64* %cloptr8597 to i64                                        ; closure cast; i64* -> i64
  %cloptr8603 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8604 = getelementptr inbounds i64, i64* %cloptr8603, i64 0                    ; &cloptr8603[0]
  %f8605 = ptrtoint void(i64,i64,i64)* @lam8138 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8605, i64* %eptr8604                                                   ; store fptr
  %arg7263 = ptrtoint i64* %cloptr8603 to i64                                        ; closure cast; i64* -> i64
  %cloptr8606 = inttoptr i64 %KaW$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8606)                                         ; assert function application
  %i0ptr8607 = getelementptr inbounds i64, i64* %cloptr8606, i64 0                   ; &cloptr8606[0]
  %f8609 = load i64, i64* %i0ptr8607, align 8                                        ; load; *i0ptr8607
  %fptr8608 = inttoptr i64 %f8609 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8608(i64 %KaW$Ycmb, i64 %arg7264, i64 %arg7263)     ; tail call
  ret void
}


define void @lam8541(i64 %env8542, i64 %_957067, i64 %Gcr$_37take) {
  %envptr8610 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8611 = getelementptr inbounds i64, i64* %envptr8610, i64 3                  ; &envptr8610[3]
  %qG7$_37map1 = load i64, i64* %envptr8611, align 8                                 ; load; *envptr8611
  %envptr8612 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8613 = getelementptr inbounds i64, i64* %envptr8612, i64 2                  ; &envptr8612[2]
  %VJi$_37foldr1 = load i64, i64* %envptr8613, align 8                               ; load; *envptr8613
  %envptr8614 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8615 = getelementptr inbounds i64, i64* %envptr8614, i64 1                  ; &envptr8614[1]
  %KaW$Ycmb = load i64, i64* %envptr8615, align 8                                    ; load; *envptr8615
  %cloptr8616 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8618 = getelementptr inbounds i64, i64* %cloptr8616, i64 1                    ; &eptr8618[1]
  %eptr8619 = getelementptr inbounds i64, i64* %cloptr8616, i64 2                    ; &eptr8619[2]
  %eptr8620 = getelementptr inbounds i64, i64* %cloptr8616, i64 3                    ; &eptr8620[3]
  %eptr8621 = getelementptr inbounds i64, i64* %cloptr8616, i64 4                    ; &eptr8621[4]
  store i64 %Gcr$_37take, i64* %eptr8618                                             ; *eptr8618 = %Gcr$_37take
  store i64 %KaW$Ycmb, i64* %eptr8619                                                ; *eptr8619 = %KaW$Ycmb
  store i64 %VJi$_37foldr1, i64* %eptr8620                                           ; *eptr8620 = %VJi$_37foldr1
  store i64 %qG7$_37map1, i64* %eptr8621                                             ; *eptr8621 = %qG7$_37map1
  %eptr8617 = getelementptr inbounds i64, i64* %cloptr8616, i64 0                    ; &cloptr8616[0]
  %f8622 = ptrtoint void(i64,i64,i64)* @lam8539 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8622, i64* %eptr8617                                                   ; store fptr
  %arg7267 = ptrtoint i64* %cloptr8616 to i64                                        ; closure cast; i64* -> i64
  %cloptr8623 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8624 = getelementptr inbounds i64, i64* %cloptr8623, i64 0                    ; &cloptr8623[0]
  %f8625 = ptrtoint void(i64,i64,i64)* @lam8149 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8625, i64* %eptr8624                                                   ; store fptr
  %arg7266 = ptrtoint i64* %cloptr8623 to i64                                        ; closure cast; i64* -> i64
  %cloptr8626 = inttoptr i64 %KaW$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8626)                                         ; assert function application
  %i0ptr8627 = getelementptr inbounds i64, i64* %cloptr8626, i64 0                   ; &cloptr8626[0]
  %f8629 = load i64, i64* %i0ptr8627, align 8                                        ; load; *i0ptr8627
  %fptr8628 = inttoptr i64 %f8629 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8628(i64 %KaW$Ycmb, i64 %arg7267, i64 %arg7266)     ; tail call
  ret void
}


define void @lam8539(i64 %env8540, i64 %_957068, i64 %z0Y$_37length) {
  %envptr8630 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8631 = getelementptr inbounds i64, i64* %envptr8630, i64 4                  ; &envptr8630[4]
  %qG7$_37map1 = load i64, i64* %envptr8631, align 8                                 ; load; *envptr8631
  %envptr8632 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8633 = getelementptr inbounds i64, i64* %envptr8632, i64 3                  ; &envptr8632[3]
  %VJi$_37foldr1 = load i64, i64* %envptr8633, align 8                               ; load; *envptr8633
  %envptr8634 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8635 = getelementptr inbounds i64, i64* %envptr8634, i64 2                  ; &envptr8634[2]
  %KaW$Ycmb = load i64, i64* %envptr8635, align 8                                    ; load; *envptr8635
  %envptr8636 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8637 = getelementptr inbounds i64, i64* %envptr8636, i64 1                  ; &envptr8636[1]
  %Gcr$_37take = load i64, i64* %envptr8637, align 8                                 ; load; *envptr8637
  %cloptr8638 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8640 = getelementptr inbounds i64, i64* %cloptr8638, i64 1                    ; &eptr8640[1]
  %eptr8641 = getelementptr inbounds i64, i64* %cloptr8638, i64 2                    ; &eptr8641[2]
  %eptr8642 = getelementptr inbounds i64, i64* %cloptr8638, i64 3                    ; &eptr8642[3]
  %eptr8643 = getelementptr inbounds i64, i64* %cloptr8638, i64 4                    ; &eptr8643[4]
  %eptr8644 = getelementptr inbounds i64, i64* %cloptr8638, i64 5                    ; &eptr8644[5]
  store i64 %Gcr$_37take, i64* %eptr8640                                             ; *eptr8640 = %Gcr$_37take
  store i64 %z0Y$_37length, i64* %eptr8641                                           ; *eptr8641 = %z0Y$_37length
  store i64 %KaW$Ycmb, i64* %eptr8642                                                ; *eptr8642 = %KaW$Ycmb
  store i64 %VJi$_37foldr1, i64* %eptr8643                                           ; *eptr8643 = %VJi$_37foldr1
  store i64 %qG7$_37map1, i64* %eptr8644                                             ; *eptr8644 = %qG7$_37map1
  %eptr8639 = getelementptr inbounds i64, i64* %cloptr8638, i64 0                    ; &cloptr8638[0]
  %f8645 = ptrtoint void(i64,i64,i64)* @lam8537 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8645, i64* %eptr8639                                                   ; store fptr
  %arg7270 = ptrtoint i64* %cloptr8638 to i64                                        ; closure cast; i64* -> i64
  %cloptr8646 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8647 = getelementptr inbounds i64, i64* %cloptr8646, i64 0                    ; &cloptr8646[0]
  %f8648 = ptrtoint void(i64,i64,i64)* @lam8157 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8648, i64* %eptr8647                                                   ; store fptr
  %arg7269 = ptrtoint i64* %cloptr8646 to i64                                        ; closure cast; i64* -> i64
  %cloptr8649 = inttoptr i64 %KaW$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8649)                                         ; assert function application
  %i0ptr8650 = getelementptr inbounds i64, i64* %cloptr8649, i64 0                   ; &cloptr8649[0]
  %f8652 = load i64, i64* %i0ptr8650, align 8                                        ; load; *i0ptr8650
  %fptr8651 = inttoptr i64 %f8652 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8651(i64 %KaW$Ycmb, i64 %arg7270, i64 %arg7269)     ; tail call
  ret void
}


define void @lam8537(i64 %env8538, i64 %_957069, i64 %xqF$_37foldl1) {
  %envptr8653 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8654 = getelementptr inbounds i64, i64* %envptr8653, i64 5                  ; &envptr8653[5]
  %qG7$_37map1 = load i64, i64* %envptr8654, align 8                                 ; load; *envptr8654
  %envptr8655 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8656 = getelementptr inbounds i64, i64* %envptr8655, i64 4                  ; &envptr8655[4]
  %VJi$_37foldr1 = load i64, i64* %envptr8656, align 8                               ; load; *envptr8656
  %envptr8657 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8658 = getelementptr inbounds i64, i64* %envptr8657, i64 3                  ; &envptr8657[3]
  %KaW$Ycmb = load i64, i64* %envptr8658, align 8                                    ; load; *envptr8658
  %envptr8659 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8660 = getelementptr inbounds i64, i64* %envptr8659, i64 2                  ; &envptr8659[2]
  %z0Y$_37length = load i64, i64* %envptr8660, align 8                               ; load; *envptr8660
  %envptr8661 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8662 = getelementptr inbounds i64, i64* %envptr8661, i64 1                  ; &envptr8661[1]
  %Gcr$_37take = load i64, i64* %envptr8662, align 8                                 ; load; *envptr8662
  %cloptr8663 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8665 = getelementptr inbounds i64, i64* %cloptr8663, i64 1                    ; &eptr8665[1]
  store i64 %xqF$_37foldl1, i64* %eptr8665                                           ; *eptr8665 = %xqF$_37foldl1
  %eptr8664 = getelementptr inbounds i64, i64* %cloptr8663, i64 0                    ; &cloptr8663[0]
  %f8666 = ptrtoint void(i64,i64,i64)* @lam8535 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8666, i64* %eptr8664                                                   ; store fptr
  %nc2$_37last = ptrtoint i64* %cloptr8663 to i64                                    ; closure cast; i64* -> i64
  %cloptr8667 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8669 = getelementptr inbounds i64, i64* %cloptr8667, i64 1                    ; &eptr8669[1]
  %eptr8670 = getelementptr inbounds i64, i64* %cloptr8667, i64 2                    ; &eptr8670[2]
  store i64 %Gcr$_37take, i64* %eptr8669                                             ; *eptr8669 = %Gcr$_37take
  store i64 %z0Y$_37length, i64* %eptr8670                                           ; *eptr8670 = %z0Y$_37length
  %eptr8668 = getelementptr inbounds i64, i64* %cloptr8667, i64 0                    ; &cloptr8667[0]
  %f8671 = ptrtoint void(i64,i64,i64,i64)* @lam8529 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8671, i64* %eptr8668                                                   ; store fptr
  %HQU$_37drop_45right = ptrtoint i64* %cloptr8667 to i64                            ; closure cast; i64* -> i64
  %cloptr8672 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8674 = getelementptr inbounds i64, i64* %cloptr8672, i64 1                    ; &eptr8674[1]
  %eptr8675 = getelementptr inbounds i64, i64* %cloptr8672, i64 2                    ; &eptr8675[2]
  %eptr8676 = getelementptr inbounds i64, i64* %cloptr8672, i64 3                    ; &eptr8676[3]
  %eptr8677 = getelementptr inbounds i64, i64* %cloptr8672, i64 4                    ; &eptr8677[4]
  %eptr8678 = getelementptr inbounds i64, i64* %cloptr8672, i64 5                    ; &eptr8678[5]
  %eptr8679 = getelementptr inbounds i64, i64* %cloptr8672, i64 6                    ; &eptr8679[6]
  store i64 %HQU$_37drop_45right, i64* %eptr8674                                     ; *eptr8674 = %HQU$_37drop_45right
  store i64 %z0Y$_37length, i64* %eptr8675                                           ; *eptr8675 = %z0Y$_37length
  store i64 %xqF$_37foldl1, i64* %eptr8676                                           ; *eptr8676 = %xqF$_37foldl1
  store i64 %KaW$Ycmb, i64* %eptr8677                                                ; *eptr8677 = %KaW$Ycmb
  store i64 %VJi$_37foldr1, i64* %eptr8678                                           ; *eptr8678 = %VJi$_37foldr1
  store i64 %nc2$_37last, i64* %eptr8679                                             ; *eptr8679 = %nc2$_37last
  %eptr8673 = getelementptr inbounds i64, i64* %cloptr8672, i64 0                    ; &cloptr8672[0]
  %f8680 = ptrtoint void(i64,i64,i64)* @lam8525 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8680, i64* %eptr8673                                                   ; store fptr
  %arg7290 = ptrtoint i64* %cloptr8672 to i64                                        ; closure cast; i64* -> i64
  %cloptr8681 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8683 = getelementptr inbounds i64, i64* %cloptr8681, i64 1                    ; &eptr8683[1]
  %eptr8684 = getelementptr inbounds i64, i64* %cloptr8681, i64 2                    ; &eptr8684[2]
  store i64 %VJi$_37foldr1, i64* %eptr8683                                           ; *eptr8683 = %VJi$_37foldr1
  store i64 %qG7$_37map1, i64* %eptr8684                                             ; *eptr8684 = %qG7$_37map1
  %eptr8682 = getelementptr inbounds i64, i64* %cloptr8681, i64 0                    ; &cloptr8681[0]
  %f8685 = ptrtoint void(i64,i64,i64)* @lam8194 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8685, i64* %eptr8682                                                   ; store fptr
  %arg7289 = ptrtoint i64* %cloptr8681 to i64                                        ; closure cast; i64* -> i64
  %cloptr8686 = inttoptr i64 %KaW$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8686)                                         ; assert function application
  %i0ptr8687 = getelementptr inbounds i64, i64* %cloptr8686, i64 0                   ; &cloptr8686[0]
  %f8689 = load i64, i64* %i0ptr8687, align 8                                        ; load; *i0ptr8687
  %fptr8688 = inttoptr i64 %f8689 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8688(i64 %KaW$Ycmb, i64 %arg7290, i64 %arg7289)     ; tail call
  ret void
}


define void @lam8535(i64 %env8536, i64 %cont7070, i64 %YNv$lst) {
  %envptr8690 = inttoptr i64 %env8536 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8691 = getelementptr inbounds i64, i64* %envptr8690, i64 1                  ; &envptr8690[1]
  %xqF$_37foldl1 = load i64, i64* %envptr8691, align 8                               ; load; *envptr8691
  %cloptr8692 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8693 = getelementptr inbounds i64, i64* %cloptr8692, i64 0                    ; &cloptr8692[0]
  %f8694 = ptrtoint void(i64,i64,i64,i64)* @lam8533 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8694, i64* %eptr8693                                                   ; store fptr
  %arg7274 = ptrtoint i64* %cloptr8692 to i64                                        ; closure cast; i64* -> i64
  %arg7273 = add i64 0, 0                                                            ; quoted ()
  %cloptr8695 = inttoptr i64 %xqF$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8695)                                         ; assert function application
  %i0ptr8696 = getelementptr inbounds i64, i64* %cloptr8695, i64 0                   ; &cloptr8695[0]
  %f8698 = load i64, i64* %i0ptr8696, align 8                                        ; load; *i0ptr8696
  %fptr8697 = inttoptr i64 %f8698 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8697(i64 %xqF$_37foldl1, i64 %cont7070, i64 %arg7274, i64 %arg7273, i64 %YNv$lst); tail call
  ret void
}


define void @lam8533(i64 %env8534, i64 %cont7071, i64 %Ktd$x, i64 %KXO$y) {
  %arg7278 = add i64 0, 0                                                            ; quoted ()
  %cloptr8699 = inttoptr i64 %cont7071 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8699)                                         ; assert function application
  %i0ptr8700 = getelementptr inbounds i64, i64* %cloptr8699, i64 0                   ; &cloptr8699[0]
  %f8702 = load i64, i64* %i0ptr8700, align 8                                        ; load; *i0ptr8700
  %fptr8701 = inttoptr i64 %f8702 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8701(i64 %cont7071, i64 %arg7278, i64 %Ktd$x)       ; tail call
  ret void
}


define void @lam8529(i64 %env8530, i64 %cont7072, i64 %qe0$lst, i64 %iHr$n) {
  %envptr8703 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8704 = getelementptr inbounds i64, i64* %envptr8703, i64 2                  ; &envptr8703[2]
  %z0Y$_37length = load i64, i64* %envptr8704, align 8                               ; load; *envptr8704
  %envptr8705 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8706 = getelementptr inbounds i64, i64* %envptr8705, i64 1                  ; &envptr8705[1]
  %Gcr$_37take = load i64, i64* %envptr8706, align 8                                 ; load; *envptr8706
  %cloptr8707 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8709 = getelementptr inbounds i64, i64* %cloptr8707, i64 1                    ; &eptr8709[1]
  %eptr8710 = getelementptr inbounds i64, i64* %cloptr8707, i64 2                    ; &eptr8710[2]
  %eptr8711 = getelementptr inbounds i64, i64* %cloptr8707, i64 3                    ; &eptr8711[3]
  %eptr8712 = getelementptr inbounds i64, i64* %cloptr8707, i64 4                    ; &eptr8712[4]
  store i64 %Gcr$_37take, i64* %eptr8709                                             ; *eptr8709 = %Gcr$_37take
  store i64 %iHr$n, i64* %eptr8710                                                   ; *eptr8710 = %iHr$n
  store i64 %qe0$lst, i64* %eptr8711                                                 ; *eptr8711 = %qe0$lst
  store i64 %cont7072, i64* %eptr8712                                                ; *eptr8712 = %cont7072
  %eptr8708 = getelementptr inbounds i64, i64* %cloptr8707, i64 0                    ; &cloptr8707[0]
  %f8713 = ptrtoint void(i64,i64,i64)* @lam8527 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8713, i64* %eptr8708                                                   ; store fptr
  %arg7281 = ptrtoint i64* %cloptr8707 to i64                                        ; closure cast; i64* -> i64
  %cloptr8714 = inttoptr i64 %z0Y$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8714)                                         ; assert function application
  %i0ptr8715 = getelementptr inbounds i64, i64* %cloptr8714, i64 0                   ; &cloptr8714[0]
  %f8717 = load i64, i64* %i0ptr8715, align 8                                        ; load; *i0ptr8715
  %fptr8716 = inttoptr i64 %f8717 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8716(i64 %z0Y$_37length, i64 %arg7281, i64 %qe0$lst); tail call
  ret void
}


define void @lam8527(i64 %env8528, i64 %_957073, i64 %a6969) {
  %envptr8718 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8719 = getelementptr inbounds i64, i64* %envptr8718, i64 4                  ; &envptr8718[4]
  %cont7072 = load i64, i64* %envptr8719, align 8                                    ; load; *envptr8719
  %envptr8720 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8721 = getelementptr inbounds i64, i64* %envptr8720, i64 3                  ; &envptr8720[3]
  %qe0$lst = load i64, i64* %envptr8721, align 8                                     ; load; *envptr8721
  %envptr8722 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8723 = getelementptr inbounds i64, i64* %envptr8722, i64 2                  ; &envptr8722[2]
  %iHr$n = load i64, i64* %envptr8723, align 8                                       ; load; *envptr8723
  %envptr8724 = inttoptr i64 %env8528 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8725 = getelementptr inbounds i64, i64* %envptr8724, i64 1                  ; &envptr8724[1]
  %Gcr$_37take = load i64, i64* %envptr8725, align 8                                 ; load; *envptr8725
  %a6970 = call i64 @prim__45(i64 %a6969, i64 %iHr$n)                                ; call prim__45
  %cloptr8726 = inttoptr i64 %Gcr$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8726)                                         ; assert function application
  %i0ptr8727 = getelementptr inbounds i64, i64* %cloptr8726, i64 0                   ; &cloptr8726[0]
  %f8729 = load i64, i64* %i0ptr8727, align 8                                        ; load; *i0ptr8727
  %fptr8728 = inttoptr i64 %f8729 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8728(i64 %Gcr$_37take, i64 %cont7072, i64 %qe0$lst, i64 %a6970); tail call
  ret void
}


define void @lam8525(i64 %env8526, i64 %_957074, i64 %kAb$_37foldr) {
  %envptr8730 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8731 = getelementptr inbounds i64, i64* %envptr8730, i64 6                  ; &envptr8730[6]
  %nc2$_37last = load i64, i64* %envptr8731, align 8                                 ; load; *envptr8731
  %envptr8732 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8733 = getelementptr inbounds i64, i64* %envptr8732, i64 5                  ; &envptr8732[5]
  %VJi$_37foldr1 = load i64, i64* %envptr8733, align 8                               ; load; *envptr8733
  %envptr8734 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8735 = getelementptr inbounds i64, i64* %envptr8734, i64 4                  ; &envptr8734[4]
  %KaW$Ycmb = load i64, i64* %envptr8735, align 8                                    ; load; *envptr8735
  %envptr8736 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8737 = getelementptr inbounds i64, i64* %envptr8736, i64 3                  ; &envptr8736[3]
  %xqF$_37foldl1 = load i64, i64* %envptr8737, align 8                               ; load; *envptr8737
  %envptr8738 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8739 = getelementptr inbounds i64, i64* %envptr8738, i64 2                  ; &envptr8738[2]
  %z0Y$_37length = load i64, i64* %envptr8739, align 8                               ; load; *envptr8739
  %envptr8740 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8741 = getelementptr inbounds i64, i64* %envptr8740, i64 1                  ; &envptr8740[1]
  %HQU$_37drop_45right = load i64, i64* %envptr8741, align 8                         ; load; *envptr8741
  %cloptr8742 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8744 = getelementptr inbounds i64, i64* %cloptr8742, i64 1                    ; &eptr8744[1]
  store i64 %VJi$_37foldr1, i64* %eptr8744                                           ; *eptr8744 = %VJi$_37foldr1
  %eptr8743 = getelementptr inbounds i64, i64* %cloptr8742, i64 0                    ; &cloptr8742[0]
  %f8745 = ptrtoint void(i64,i64,i64,i64)* @lam8523 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8745, i64* %eptr8743                                                   ; store fptr
  %UkN$_37map1 = ptrtoint i64* %cloptr8742 to i64                                    ; closure cast; i64* -> i64
  %cloptr8746 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8748 = getelementptr inbounds i64, i64* %cloptr8746, i64 1                    ; &eptr8748[1]
  %eptr8749 = getelementptr inbounds i64, i64* %cloptr8746, i64 2                    ; &eptr8749[2]
  %eptr8750 = getelementptr inbounds i64, i64* %cloptr8746, i64 3                    ; &eptr8750[3]
  store i64 %HQU$_37drop_45right, i64* %eptr8748                                     ; *eptr8748 = %HQU$_37drop_45right
  store i64 %kAb$_37foldr, i64* %eptr8749                                            ; *eptr8749 = %kAb$_37foldr
  store i64 %nc2$_37last, i64* %eptr8750                                             ; *eptr8750 = %nc2$_37last
  %eptr8747 = getelementptr inbounds i64, i64* %cloptr8746, i64 0                    ; &cloptr8746[0]
  %f8751 = ptrtoint void(i64,i64)* @lam8515 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8751, i64* %eptr8747                                                   ; store fptr
  %HE0$_37map = ptrtoint i64* %cloptr8746 to i64                                     ; closure cast; i64* -> i64
  %cloptr8752 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8754 = getelementptr inbounds i64, i64* %cloptr8752, i64 1                    ; &eptr8754[1]
  %eptr8755 = getelementptr inbounds i64, i64* %cloptr8752, i64 2                    ; &eptr8755[2]
  store i64 %z0Y$_37length, i64* %eptr8754                                           ; *eptr8754 = %z0Y$_37length
  store i64 %xqF$_37foldl1, i64* %eptr8755                                           ; *eptr8755 = %xqF$_37foldl1
  %eptr8753 = getelementptr inbounds i64, i64* %cloptr8752, i64 0                    ; &cloptr8752[0]
  %f8756 = ptrtoint void(i64,i64,i64)* @lam8502 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8756, i64* %eptr8753                                                   ; store fptr
  %arg7332 = ptrtoint i64* %cloptr8752 to i64                                        ; closure cast; i64* -> i64
  %cloptr8757 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8759 = getelementptr inbounds i64, i64* %cloptr8757, i64 1                    ; &eptr8759[1]
  %eptr8760 = getelementptr inbounds i64, i64* %cloptr8757, i64 2                    ; &eptr8760[2]
  %eptr8761 = getelementptr inbounds i64, i64* %cloptr8757, i64 3                    ; &eptr8761[3]
  store i64 %VJi$_37foldr1, i64* %eptr8759                                           ; *eptr8759 = %VJi$_37foldr1
  store i64 %UkN$_37map1, i64* %eptr8760                                             ; *eptr8760 = %UkN$_37map1
  store i64 %kAb$_37foldr, i64* %eptr8761                                            ; *eptr8761 = %kAb$_37foldr
  %eptr8758 = getelementptr inbounds i64, i64* %cloptr8757, i64 0                    ; &cloptr8757[0]
  %f8762 = ptrtoint void(i64,i64,i64)* @lam8231 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8762, i64* %eptr8758                                                   ; store fptr
  %arg7331 = ptrtoint i64* %cloptr8757 to i64                                        ; closure cast; i64* -> i64
  %cloptr8763 = inttoptr i64 %KaW$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8763)                                         ; assert function application
  %i0ptr8764 = getelementptr inbounds i64, i64* %cloptr8763, i64 0                   ; &cloptr8763[0]
  %f8766 = load i64, i64* %i0ptr8764, align 8                                        ; load; *i0ptr8764
  %fptr8765 = inttoptr i64 %f8766 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8765(i64 %KaW$Ycmb, i64 %arg7332, i64 %arg7331)     ; tail call
  ret void
}


define void @lam8523(i64 %env8524, i64 %cont7075, i64 %BnR$f, i64 %ocv$lst) {
  %envptr8767 = inttoptr i64 %env8524 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8768 = getelementptr inbounds i64, i64* %envptr8767, i64 1                  ; &envptr8767[1]
  %VJi$_37foldr1 = load i64, i64* %envptr8768, align 8                               ; load; *envptr8768
  %cloptr8769 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8771 = getelementptr inbounds i64, i64* %cloptr8769, i64 1                    ; &eptr8771[1]
  store i64 %BnR$f, i64* %eptr8771                                                   ; *eptr8771 = %BnR$f
  %eptr8770 = getelementptr inbounds i64, i64* %cloptr8769, i64 0                    ; &cloptr8769[0]
  %f8772 = ptrtoint void(i64,i64,i64,i64)* @lam8521 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8772, i64* %eptr8770                                                   ; store fptr
  %arg7294 = ptrtoint i64* %cloptr8769 to i64                                        ; closure cast; i64* -> i64
  %arg7293 = add i64 0, 0                                                            ; quoted ()
  %cloptr8773 = inttoptr i64 %VJi$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8773)                                         ; assert function application
  %i0ptr8774 = getelementptr inbounds i64, i64* %cloptr8773, i64 0                   ; &cloptr8773[0]
  %f8776 = load i64, i64* %i0ptr8774, align 8                                        ; load; *i0ptr8774
  %fptr8775 = inttoptr i64 %f8776 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8775(i64 %VJi$_37foldr1, i64 %cont7075, i64 %arg7294, i64 %arg7293, i64 %ocv$lst); tail call
  ret void
}


define void @lam8521(i64 %env8522, i64 %cont7076, i64 %Hwz$v, i64 %Aup$r) {
  %envptr8777 = inttoptr i64 %env8522 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8778 = getelementptr inbounds i64, i64* %envptr8777, i64 1                  ; &envptr8777[1]
  %BnR$f = load i64, i64* %envptr8778, align 8                                       ; load; *envptr8778
  %cloptr8779 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8781 = getelementptr inbounds i64, i64* %cloptr8779, i64 1                    ; &eptr8781[1]
  %eptr8782 = getelementptr inbounds i64, i64* %cloptr8779, i64 2                    ; &eptr8782[2]
  store i64 %Aup$r, i64* %eptr8781                                                   ; *eptr8781 = %Aup$r
  store i64 %cont7076, i64* %eptr8782                                                ; *eptr8782 = %cont7076
  %eptr8780 = getelementptr inbounds i64, i64* %cloptr8779, i64 0                    ; &cloptr8779[0]
  %f8783 = ptrtoint void(i64,i64,i64)* @lam8519 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8783, i64* %eptr8780                                                   ; store fptr
  %arg7298 = ptrtoint i64* %cloptr8779 to i64                                        ; closure cast; i64* -> i64
  %cloptr8784 = inttoptr i64 %BnR$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8784)                                         ; assert function application
  %i0ptr8785 = getelementptr inbounds i64, i64* %cloptr8784, i64 0                   ; &cloptr8784[0]
  %f8787 = load i64, i64* %i0ptr8785, align 8                                        ; load; *i0ptr8785
  %fptr8786 = inttoptr i64 %f8787 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8786(i64 %BnR$f, i64 %arg7298, i64 %Hwz$v)          ; tail call
  ret void
}


define void @lam8519(i64 %env8520, i64 %_957077, i64 %a6979) {
  %envptr8788 = inttoptr i64 %env8520 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8789 = getelementptr inbounds i64, i64* %envptr8788, i64 2                  ; &envptr8788[2]
  %cont7076 = load i64, i64* %envptr8789, align 8                                    ; load; *envptr8789
  %envptr8790 = inttoptr i64 %env8520 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8791 = getelementptr inbounds i64, i64* %envptr8790, i64 1                  ; &envptr8790[1]
  %Aup$r = load i64, i64* %envptr8791, align 8                                       ; load; *envptr8791
  %retprim7078 = call i64 @prim_cons(i64 %a6979, i64 %Aup$r)                         ; call prim_cons
  %arg7303 = add i64 0, 0                                                            ; quoted ()
  %cloptr8792 = inttoptr i64 %cont7076 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8792)                                         ; assert function application
  %i0ptr8793 = getelementptr inbounds i64, i64* %cloptr8792, i64 0                   ; &cloptr8792[0]
  %f8795 = load i64, i64* %i0ptr8793, align 8                                        ; load; *i0ptr8793
  %fptr8794 = inttoptr i64 %f8795 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8794(i64 %cont7076, i64 %arg7303, i64 %retprim7078) ; tail call
  ret void
}


define void @lam8515(i64 %env8516, i64 %bQ3$args7080) {
  %envptr8796 = inttoptr i64 %env8516 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8797 = getelementptr inbounds i64, i64* %envptr8796, i64 3                  ; &envptr8796[3]
  %nc2$_37last = load i64, i64* %envptr8797, align 8                                 ; load; *envptr8797
  %envptr8798 = inttoptr i64 %env8516 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8799 = getelementptr inbounds i64, i64* %envptr8798, i64 2                  ; &envptr8798[2]
  %kAb$_37foldr = load i64, i64* %envptr8799, align 8                                ; load; *envptr8799
  %envptr8800 = inttoptr i64 %env8516 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8801 = getelementptr inbounds i64, i64* %envptr8800, i64 1                  ; &envptr8800[1]
  %HQU$_37drop_45right = load i64, i64* %envptr8801, align 8                         ; load; *envptr8801
  %cont7079 = call i64 @prim_car(i64 %bQ3$args7080)                                  ; call prim_car
  %bQ3$args = call i64 @prim_cdr(i64 %bQ3$args7080)                                  ; call prim_cdr
  %Arn$f = call i64 @prim_car(i64 %bQ3$args)                                         ; call prim_car
  %IJM$lsts = call i64 @prim_cdr(i64 %bQ3$args)                                      ; call prim_cdr
  %arg7310 = add i64 0, 0                                                            ; quoted ()
  %a6983 = call i64 @prim_cons(i64 %arg7310, i64 %IJM$lsts)                          ; call prim_cons
  %cloptr8802 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8804 = getelementptr inbounds i64, i64* %cloptr8802, i64 1                    ; &eptr8804[1]
  %eptr8805 = getelementptr inbounds i64, i64* %cloptr8802, i64 2                    ; &eptr8805[2]
  %eptr8806 = getelementptr inbounds i64, i64* %cloptr8802, i64 3                    ; &eptr8806[3]
  store i64 %HQU$_37drop_45right, i64* %eptr8804                                     ; *eptr8804 = %HQU$_37drop_45right
  store i64 %nc2$_37last, i64* %eptr8805                                             ; *eptr8805 = %nc2$_37last
  store i64 %Arn$f, i64* %eptr8806                                                   ; *eptr8806 = %Arn$f
  %eptr8803 = getelementptr inbounds i64, i64* %cloptr8802, i64 0                    ; &cloptr8802[0]
  %f8807 = ptrtoint void(i64,i64)* @lam8512 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8807, i64* %eptr8803                                                   ; store fptr
  %arg7312 = ptrtoint i64* %cloptr8802 to i64                                        ; closure cast; i64* -> i64
  %a6984 = call i64 @prim_cons(i64 %arg7312, i64 %a6983)                             ; call prim_cons
  %cps_45lst7088 = call i64 @prim_cons(i64 %cont7079, i64 %a6984)                    ; call prim_cons
  %cloptr8808 = inttoptr i64 %kAb$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8808)                                         ; assert function application
  %i0ptr8809 = getelementptr inbounds i64, i64* %cloptr8808, i64 0                   ; &cloptr8808[0]
  %f8811 = load i64, i64* %i0ptr8809, align 8                                        ; load; *i0ptr8809
  %fptr8810 = inttoptr i64 %f8811 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8810(i64 %kAb$_37foldr, i64 %cps_45lst7088)         ; tail call
  ret void
}


define void @lam8512(i64 %env8513, i64 %nbb$fargs7082) {
  %envptr8812 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8813 = getelementptr inbounds i64, i64* %envptr8812, i64 3                  ; &envptr8812[3]
  %Arn$f = load i64, i64* %envptr8813, align 8                                       ; load; *envptr8813
  %envptr8814 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8815 = getelementptr inbounds i64, i64* %envptr8814, i64 2                  ; &envptr8814[2]
  %nc2$_37last = load i64, i64* %envptr8815, align 8                                 ; load; *envptr8815
  %envptr8816 = inttoptr i64 %env8513 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8817 = getelementptr inbounds i64, i64* %envptr8816, i64 1                  ; &envptr8816[1]
  %HQU$_37drop_45right = load i64, i64* %envptr8817, align 8                         ; load; *envptr8817
  %cont7081 = call i64 @prim_car(i64 %nbb$fargs7082)                                 ; call prim_car
  %nbb$fargs = call i64 @prim_cdr(i64 %nbb$fargs7082)                                ; call prim_cdr
  %cloptr8818 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8820 = getelementptr inbounds i64, i64* %cloptr8818, i64 1                    ; &eptr8820[1]
  %eptr8821 = getelementptr inbounds i64, i64* %cloptr8818, i64 2                    ; &eptr8821[2]
  %eptr8822 = getelementptr inbounds i64, i64* %cloptr8818, i64 3                    ; &eptr8822[3]
  %eptr8823 = getelementptr inbounds i64, i64* %cloptr8818, i64 4                    ; &eptr8823[4]
  store i64 %nbb$fargs, i64* %eptr8820                                               ; *eptr8820 = %nbb$fargs
  store i64 %nc2$_37last, i64* %eptr8821                                             ; *eptr8821 = %nc2$_37last
  store i64 %cont7081, i64* %eptr8822                                                ; *eptr8822 = %cont7081
  store i64 %Arn$f, i64* %eptr8823                                                   ; *eptr8823 = %Arn$f
  %eptr8819 = getelementptr inbounds i64, i64* %cloptr8818, i64 0                    ; &cloptr8818[0]
  %f8824 = ptrtoint void(i64,i64,i64)* @lam8510 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8824, i64* %eptr8819                                                   ; store fptr
  %arg7317 = ptrtoint i64* %cloptr8818 to i64                                        ; closure cast; i64* -> i64
  %arg7315 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8825 = inttoptr i64 %HQU$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8825)                                         ; assert function application
  %i0ptr8826 = getelementptr inbounds i64, i64* %cloptr8825, i64 0                   ; &cloptr8825[0]
  %f8828 = load i64, i64* %i0ptr8826, align 8                                        ; load; *i0ptr8826
  %fptr8827 = inttoptr i64 %f8828 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8827(i64 %HQU$_37drop_45right, i64 %arg7317, i64 %nbb$fargs, i64 %arg7315); tail call
  ret void
}


define void @lam8510(i64 %env8511, i64 %_957083, i64 %a6980) {
  %envptr8829 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8830 = getelementptr inbounds i64, i64* %envptr8829, i64 4                  ; &envptr8829[4]
  %Arn$f = load i64, i64* %envptr8830, align 8                                       ; load; *envptr8830
  %envptr8831 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8832 = getelementptr inbounds i64, i64* %envptr8831, i64 3                  ; &envptr8831[3]
  %cont7081 = load i64, i64* %envptr8832, align 8                                    ; load; *envptr8832
  %envptr8833 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8834 = getelementptr inbounds i64, i64* %envptr8833, i64 2                  ; &envptr8833[2]
  %nc2$_37last = load i64, i64* %envptr8834, align 8                                 ; load; *envptr8834
  %envptr8835 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8836 = getelementptr inbounds i64, i64* %envptr8835, i64 1                  ; &envptr8835[1]
  %nbb$fargs = load i64, i64* %envptr8836, align 8                                   ; load; *envptr8836
  %cloptr8837 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8839 = getelementptr inbounds i64, i64* %cloptr8837, i64 1                    ; &eptr8839[1]
  %eptr8840 = getelementptr inbounds i64, i64* %cloptr8837, i64 2                    ; &eptr8840[2]
  %eptr8841 = getelementptr inbounds i64, i64* %cloptr8837, i64 3                    ; &eptr8841[3]
  store i64 %nbb$fargs, i64* %eptr8839                                               ; *eptr8839 = %nbb$fargs
  store i64 %nc2$_37last, i64* %eptr8840                                             ; *eptr8840 = %nc2$_37last
  store i64 %cont7081, i64* %eptr8841                                                ; *eptr8841 = %cont7081
  %eptr8838 = getelementptr inbounds i64, i64* %cloptr8837, i64 0                    ; &cloptr8837[0]
  %f8842 = ptrtoint void(i64,i64,i64)* @lam8508 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8842, i64* %eptr8838                                                   ; store fptr
  %arg7320 = ptrtoint i64* %cloptr8837 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst7087 = call i64 @prim_cons(i64 %arg7320, i64 %a6980)                     ; call prim_cons
  %cloptr8843 = inttoptr i64 %Arn$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8843)                                         ; assert function application
  %i0ptr8844 = getelementptr inbounds i64, i64* %cloptr8843, i64 0                   ; &cloptr8843[0]
  %f8846 = load i64, i64* %i0ptr8844, align 8                                        ; load; *i0ptr8844
  %fptr8845 = inttoptr i64 %f8846 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8845(i64 %Arn$f, i64 %cps_45lst7087)                ; tail call
  ret void
}


define void @lam8508(i64 %env8509, i64 %_957084, i64 %a6981) {
  %envptr8847 = inttoptr i64 %env8509 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8848 = getelementptr inbounds i64, i64* %envptr8847, i64 3                  ; &envptr8847[3]
  %cont7081 = load i64, i64* %envptr8848, align 8                                    ; load; *envptr8848
  %envptr8849 = inttoptr i64 %env8509 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8850 = getelementptr inbounds i64, i64* %envptr8849, i64 2                  ; &envptr8849[2]
  %nc2$_37last = load i64, i64* %envptr8850, align 8                                 ; load; *envptr8850
  %envptr8851 = inttoptr i64 %env8509 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8852 = getelementptr inbounds i64, i64* %envptr8851, i64 1                  ; &envptr8851[1]
  %nbb$fargs = load i64, i64* %envptr8852, align 8                                   ; load; *envptr8852
  %cloptr8853 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8855 = getelementptr inbounds i64, i64* %cloptr8853, i64 1                    ; &eptr8855[1]
  %eptr8856 = getelementptr inbounds i64, i64* %cloptr8853, i64 2                    ; &eptr8856[2]
  store i64 %a6981, i64* %eptr8855                                                   ; *eptr8855 = %a6981
  store i64 %cont7081, i64* %eptr8856                                                ; *eptr8856 = %cont7081
  %eptr8854 = getelementptr inbounds i64, i64* %cloptr8853, i64 0                    ; &cloptr8853[0]
  %f8857 = ptrtoint void(i64,i64,i64)* @lam8506 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8857, i64* %eptr8854                                                   ; store fptr
  %arg7322 = ptrtoint i64* %cloptr8853 to i64                                        ; closure cast; i64* -> i64
  %cloptr8858 = inttoptr i64 %nc2$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8858)                                         ; assert function application
  %i0ptr8859 = getelementptr inbounds i64, i64* %cloptr8858, i64 0                   ; &cloptr8858[0]
  %f8861 = load i64, i64* %i0ptr8859, align 8                                        ; load; *i0ptr8859
  %fptr8860 = inttoptr i64 %f8861 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8860(i64 %nc2$_37last, i64 %arg7322, i64 %nbb$fargs); tail call
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


define void @lam8502(i64 %env8503, i64 %_957089, i64 %Dmv$_37foldl) {
  %envptr8870 = inttoptr i64 %env8503 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8871 = getelementptr inbounds i64, i64* %envptr8870, i64 2                  ; &envptr8870[2]
  %xqF$_37foldl1 = load i64, i64* %envptr8871, align 8                               ; load; *envptr8871
  %envptr8872 = inttoptr i64 %env8503 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8873 = getelementptr inbounds i64, i64* %envptr8872, i64 1                  ; &envptr8872[1]
  %z0Y$_37length = load i64, i64* %envptr8873, align 8                               ; load; *envptr8873
  %cloptr8874 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8875 = getelementptr inbounds i64, i64* %cloptr8874, i64 0                    ; &cloptr8874[0]
  %f8876 = ptrtoint void(i64,i64,i64,i64)* @lam8500 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8876, i64* %eptr8875                                                   ; store fptr
  %vZ2$_37_62 = ptrtoint i64* %cloptr8874 to i64                                     ; closure cast; i64* -> i64
  %cloptr8877 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8878 = getelementptr inbounds i64, i64* %cloptr8877, i64 0                    ; &cloptr8877[0]
  %f8879 = ptrtoint void(i64,i64,i64,i64)* @lam8497 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8879, i64* %eptr8878                                                   ; store fptr
  %Mxl$_37_62_61 = ptrtoint i64* %cloptr8877 to i64                                  ; closure cast; i64* -> i64
  %arg7347 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7346 = add i64 0, 0                                                            ; quoted ()
  %RuA$_37append = call i64 @prim_make_45vector(i64 %arg7347, i64 %arg7346)          ; call prim_make_45vector
  %arg7349 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8880 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8882 = getelementptr inbounds i64, i64* %cloptr8880, i64 1                    ; &eptr8882[1]
  store i64 %RuA$_37append, i64* %eptr8882                                           ; *eptr8882 = %RuA$_37append
  %eptr8881 = getelementptr inbounds i64, i64* %cloptr8880, i64 0                    ; &cloptr8880[0]
  %f8883 = ptrtoint void(i64,i64,i64,i64)* @lam8491 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8883, i64* %eptr8881                                                   ; store fptr
  %arg7348 = ptrtoint i64* %cloptr8880 to i64                                        ; closure cast; i64* -> i64
  %dJm$_950 = call i64 @prim_vector_45set_33(i64 %RuA$_37append, i64 %arg7349, i64 %arg7348); call prim_vector_45set_33
  %arg7368 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7179 = call i64 @prim_vector_45ref(i64 %RuA$_37append, i64 %arg7368)       ; call prim_vector_45ref
  %cloptr8884 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8886 = getelementptr inbounds i64, i64* %cloptr8884, i64 1                    ; &eptr8886[1]
  %eptr8887 = getelementptr inbounds i64, i64* %cloptr8884, i64 2                    ; &eptr8887[2]
  %eptr8888 = getelementptr inbounds i64, i64* %cloptr8884, i64 3                    ; &eptr8888[3]
  store i64 %z0Y$_37length, i64* %eptr8886                                           ; *eptr8886 = %z0Y$_37length
  store i64 %xqF$_37foldl1, i64* %eptr8887                                           ; *eptr8887 = %xqF$_37foldl1
  store i64 %vZ2$_37_62, i64* %eptr8888                                              ; *eptr8888 = %vZ2$_37_62
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


define void @lam8500(i64 %env8501, i64 %cont7090, i64 %UJx$a, i64 %jrr$b) {
  %a6992 = call i64 @prim__60_61(i64 %UJx$a, i64 %jrr$b)                             ; call prim__60_61
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


define void @lam8497(i64 %env8498, i64 %cont7092, i64 %mMK$a, i64 %cof$b) {
  %a6993 = call i64 @prim__60(i64 %mMK$a, i64 %cof$b)                                ; call prim__60
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


define void @lam8491(i64 %env8492, i64 %cont7176, i64 %Wxc$ls0, i64 %gQg$ls1) {
  %envptr8902 = inttoptr i64 %env8492 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8903 = getelementptr inbounds i64, i64* %envptr8902, i64 1                  ; &envptr8902[1]
  %RuA$_37append = load i64, i64* %envptr8903, align 8                               ; load; *envptr8903
  %a6994 = call i64 @prim_null_63(i64 %Wxc$ls0)                                      ; call prim_null_63
  %cmp8904 = icmp eq i64 %a6994, 15                                                  ; false?
  br i1 %cmp8904, label %else8906, label %then8905                                   ; if

then8905:
  %arg7353 = add i64 0, 0                                                            ; quoted ()
  %cloptr8907 = inttoptr i64 %cont7176 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8907)                                         ; assert function application
  %i0ptr8908 = getelementptr inbounds i64, i64* %cloptr8907, i64 0                   ; &cloptr8907[0]
  %f8910 = load i64, i64* %i0ptr8908, align 8                                        ; load; *i0ptr8908
  %fptr8909 = inttoptr i64 %f8910 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8909(i64 %cont7176, i64 %arg7353, i64 %gQg$ls1)     ; tail call
  ret void

else8906:
  %a6995 = call i64 @prim_car(i64 %Wxc$ls0)                                          ; call prim_car
  %arg7356 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6996 = call i64 @prim_vector_45ref(i64 %RuA$_37append, i64 %arg7356)             ; call prim_vector_45ref
  %a6997 = call i64 @prim_cdr(i64 %Wxc$ls0)                                          ; call prim_cdr
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
  musttail call fastcc void %fptr8918(i64 %a6996, i64 %arg7361, i64 %a6997, i64 %gQg$ls1); tail call
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


define void @lam8483(i64 %env8484, i64 %_957094, i64 %hjz$_37append) {
  %envptr8928 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8929 = getelementptr inbounds i64, i64* %envptr8928, i64 3                  ; &envptr8928[3]
  %vZ2$_37_62 = load i64, i64* %envptr8929, align 8                                  ; load; *envptr8929
  %envptr8930 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8931 = getelementptr inbounds i64, i64* %envptr8930, i64 2                  ; &envptr8930[2]
  %xqF$_37foldl1 = load i64, i64* %envptr8931, align 8                               ; load; *envptr8931
  %envptr8932 = inttoptr i64 %env8484 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8933 = getelementptr inbounds i64, i64* %envptr8932, i64 1                  ; &envptr8932[1]
  %z0Y$_37length = load i64, i64* %envptr8933, align 8                               ; load; *envptr8933
  %cloptr8934 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8935 = getelementptr inbounds i64, i64* %cloptr8934, i64 0                    ; &cloptr8934[0]
  %f8936 = ptrtoint void(i64,i64,i64)* @lam8481 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8936, i64* %eptr8935                                                   ; store fptr
  %GtB$_37list_63 = ptrtoint i64* %cloptr8934 to i64                                 ; closure cast; i64* -> i64
  %cloptr8937 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8938 = getelementptr inbounds i64, i64* %cloptr8937, i64 0                    ; &cloptr8937[0]
  %f8939 = ptrtoint void(i64,i64,i64,i64)* @lam8441 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8939, i64* %eptr8938                                                   ; store fptr
  %zSj$_37drop = ptrtoint i64* %cloptr8937 to i64                                    ; closure cast; i64* -> i64
  %cloptr8940 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8941 = getelementptr inbounds i64, i64* %cloptr8940, i64 0                    ; &cloptr8940[0]
  %f8942 = ptrtoint void(i64,i64,i64,i64)* @lam8401 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8942, i64* %eptr8941                                                   ; store fptr
  %vbw$_37memv = ptrtoint i64* %cloptr8940 to i64                                    ; closure cast; i64* -> i64
  %cloptr8943 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8945 = getelementptr inbounds i64, i64* %cloptr8943, i64 1                    ; &eptr8945[1]
  store i64 %xqF$_37foldl1, i64* %eptr8945                                           ; *eptr8945 = %xqF$_37foldl1
  %eptr8944 = getelementptr inbounds i64, i64* %cloptr8943, i64 0                    ; &cloptr8943[0]
  %f8946 = ptrtoint void(i64,i64)* @lam8370 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8946, i64* %eptr8944                                                   ; store fptr
  %nEj$_37_47 = ptrtoint i64* %cloptr8943 to i64                                     ; closure cast; i64* -> i64
  %cloptr8947 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8948 = getelementptr inbounds i64, i64* %cloptr8947, i64 0                    ; &cloptr8947[0]
  %f8949 = ptrtoint void(i64,i64,i64)* @lam8362 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8949, i64* %eptr8948                                                   ; store fptr
  %ooj$_37first = ptrtoint i64* %cloptr8947 to i64                                   ; closure cast; i64* -> i64
  %cloptr8950 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8951 = getelementptr inbounds i64, i64* %cloptr8950, i64 0                    ; &cloptr8950[0]
  %f8952 = ptrtoint void(i64,i64,i64)* @lam8359 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8952, i64* %eptr8951                                                   ; store fptr
  %xNb$_37second = ptrtoint i64* %cloptr8950 to i64                                  ; closure cast; i64* -> i64
  %cloptr8953 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8954 = getelementptr inbounds i64, i64* %cloptr8953, i64 0                    ; &cloptr8953[0]
  %f8955 = ptrtoint void(i64,i64,i64)* @lam8356 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8955, i64* %eptr8954                                                   ; store fptr
  %Apv$_37third = ptrtoint i64* %cloptr8953 to i64                                   ; closure cast; i64* -> i64
  %cloptr8956 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8957 = getelementptr inbounds i64, i64* %cloptr8956, i64 0                    ; &cloptr8956[0]
  %f8958 = ptrtoint void(i64,i64,i64)* @lam8353 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8958, i64* %eptr8957                                                   ; store fptr
  %Ieq$_37fourth = ptrtoint i64* %cloptr8956 to i64                                  ; closure cast; i64* -> i64
  %cloptr8959 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8960 = getelementptr inbounds i64, i64* %cloptr8959, i64 0                    ; &cloptr8959[0]
  %f8961 = ptrtoint void(i64,i64,i64)* @lam8350 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8961, i64* %eptr8960                                                   ; store fptr
  %RZH$promise_63 = ptrtoint i64* %cloptr8959 to i64                                 ; closure cast; i64* -> i64
  %cloptr8962 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8963 = getelementptr inbounds i64, i64* %cloptr8962, i64 0                    ; &cloptr8962[0]
  %f8964 = ptrtoint void(i64,i64)* @lam8344 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8964, i64* %eptr8963                                                   ; store fptr
  %arg7634 = ptrtoint i64* %cloptr8962 to i64                                        ; closure cast; i64* -> i64
  %cloptr8965 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8967 = getelementptr inbounds i64, i64* %cloptr8965, i64 1                    ; &eptr8967[1]
  %eptr8968 = getelementptr inbounds i64, i64* %cloptr8965, i64 2                    ; &eptr8968[2]
  %eptr8969 = getelementptr inbounds i64, i64* %cloptr8965, i64 3                    ; &eptr8969[3]
  store i64 %z0Y$_37length, i64* %eptr8967                                           ; *eptr8967 = %z0Y$_37length
  store i64 %vZ2$_37_62, i64* %eptr8968                                              ; *eptr8968 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr8969                                             ; *eptr8969 = %zSj$_37drop
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


define void @lam8481(i64 %env8482, i64 %cont7095, i64 %tZa$a) {
  %arg7374 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Zzj$a = call i64 @prim_make_45vector(i64 %arg7374, i64 %tZa$a)                    ; call prim_make_45vector
  %cloptr8975 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8976 = getelementptr inbounds i64, i64* %cloptr8975, i64 0                    ; &cloptr8975[0]
  %f8977 = ptrtoint void(i64,i64,i64)* @lam8478 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8977, i64* %eptr8976                                                   ; store fptr
  %arg7377 = ptrtoint i64* %cloptr8975 to i64                                        ; closure cast; i64* -> i64
  %cloptr8978 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8980 = getelementptr inbounds i64, i64* %cloptr8978, i64 1                    ; &eptr8980[1]
  %eptr8981 = getelementptr inbounds i64, i64* %cloptr8978, i64 2                    ; &eptr8981[2]
  store i64 %Zzj$a, i64* %eptr8980                                                   ; *eptr8980 = %Zzj$a
  store i64 %cont7095, i64* %eptr8981                                                ; *eptr8981 = %cont7095
  %eptr8979 = getelementptr inbounds i64, i64* %cloptr8978, i64 0                    ; &cloptr8978[0]
  %f8982 = ptrtoint void(i64,i64,i64)* @lam8475 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8982, i64* %eptr8979                                                   ; store fptr
  %arg7376 = ptrtoint i64* %cloptr8978 to i64                                        ; closure cast; i64* -> i64
  %cloptr8983 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8985 = getelementptr inbounds i64, i64* %cloptr8983, i64 1                    ; &eptr8985[1]
  %eptr8986 = getelementptr inbounds i64, i64* %cloptr8983, i64 2                    ; &eptr8986[2]
  store i64 %Zzj$a, i64* %eptr8985                                                   ; *eptr8985 = %Zzj$a
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


define void @lam8478(i64 %env8479, i64 %cont7101, i64 %uU2$k) {
  %arg7379 = add i64 0, 0                                                            ; quoted ()
  %cloptr8992 = inttoptr i64 %cont7101 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8992)                                         ; assert function application
  %i0ptr8993 = getelementptr inbounds i64, i64* %cloptr8992, i64 0                   ; &cloptr8992[0]
  %f8995 = load i64, i64* %i0ptr8993, align 8                                        ; load; *i0ptr8993
  %fptr8994 = inttoptr i64 %f8995 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8994(i64 %cont7101, i64 %arg7379, i64 %uU2$k)       ; tail call
  ret void
}


define void @lam8475(i64 %env8476, i64 %_957096, i64 %USD$cc) {
  %envptr8996 = inttoptr i64 %env8476 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8997 = getelementptr inbounds i64, i64* %envptr8996, i64 2                  ; &envptr8996[2]
  %cont7095 = load i64, i64* %envptr8997, align 8                                    ; load; *envptr8997
  %envptr8998 = inttoptr i64 %env8476 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8999 = getelementptr inbounds i64, i64* %envptr8998, i64 1                  ; &envptr8998[1]
  %Zzj$a = load i64, i64* %envptr8999, align 8                                       ; load; *envptr8999
  %arg7381 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7381)                     ; call prim_vector_45ref
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
  %a7001 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7387)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9007 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9007, label %else9009, label %then9008                                   ; if

then9008:
  %arg7390 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7390)                     ; call prim_vector_45ref
  %retprim7100 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9010 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9012 = getelementptr inbounds i64, i64* %cloptr9010, i64 1                    ; &eptr9012[1]
  %eptr9013 = getelementptr inbounds i64, i64* %cloptr9010, i64 2                    ; &eptr9013[2]
  %eptr9014 = getelementptr inbounds i64, i64* %cloptr9010, i64 3                    ; &eptr9014[3]
  store i64 %USD$cc, i64* %eptr9012                                                  ; *eptr9012 = %USD$cc
  store i64 %Zzj$a, i64* %eptr9013                                                   ; *eptr9013 = %Zzj$a
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


define void @lam8468(i64 %env8469, i64 %_957097, i64 %h0g$b) {
  %envptr9024 = inttoptr i64 %env8469 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9025 = getelementptr inbounds i64, i64* %envptr9024, i64 3                  ; &envptr9024[3]
  %cont7095 = load i64, i64* %envptr9025, align 8                                    ; load; *envptr9025
  %envptr9026 = inttoptr i64 %env8469 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9027 = getelementptr inbounds i64, i64* %envptr9026, i64 2                  ; &envptr9026[2]
  %Zzj$a = load i64, i64* %envptr9027, align 8                                       ; load; *envptr9027
  %envptr9028 = inttoptr i64 %env8469 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9029 = getelementptr inbounds i64, i64* %envptr9028, i64 1                  ; &envptr9028[1]
  %USD$cc = load i64, i64* %envptr9029, align 8                                      ; load; *envptr9029
  %arg7396 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7396)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7400 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7099 = call i64 @prim_vector_45set_33(i64 %Zzj$a, i64 %arg7400, i64 %a7005); call prim_vector_45set_33
  %cloptr9030 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9032 = getelementptr inbounds i64, i64* %cloptr9030, i64 1                    ; &eptr9032[1]
  %eptr9033 = getelementptr inbounds i64, i64* %cloptr9030, i64 2                    ; &eptr9033[2]
  store i64 %USD$cc, i64* %eptr9032                                                  ; *eptr9032 = %USD$cc
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


define void @lam8464(i64 %env8465, i64 %_957098, i64 %b2a$_950) {
  %envptr9039 = inttoptr i64 %env8465 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9040 = getelementptr inbounds i64, i64* %envptr9039, i64 2                  ; &envptr9039[2]
  %cont7095 = load i64, i64* %envptr9040, align 8                                    ; load; *envptr9040
  %envptr9041 = inttoptr i64 %env8465 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9042 = getelementptr inbounds i64, i64* %envptr9041, i64 1                  ; &envptr9041[1]
  %USD$cc = load i64, i64* %envptr9042, align 8                                      ; load; *envptr9042
  %cloptr9043 = inttoptr i64 %USD$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9043)                                         ; assert function application
  %i0ptr9044 = getelementptr inbounds i64, i64* %cloptr9043, i64 0                   ; &cloptr9043[0]
  %f9046 = load i64, i64* %i0ptr9044, align 8                                        ; load; *i0ptr9044
  %fptr9045 = inttoptr i64 %f9046 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9045(i64 %USD$cc, i64 %cont7095, i64 %USD$cc)       ; tail call
  ret void
}


define void @lam8458(i64 %env8459, i64 %_957096, i64 %USD$cc) {
  %envptr9047 = inttoptr i64 %env8459 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9048 = getelementptr inbounds i64, i64* %envptr9047, i64 2                  ; &envptr9047[2]
  %cont7095 = load i64, i64* %envptr9048, align 8                                    ; load; *envptr9048
  %envptr9049 = inttoptr i64 %env8459 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9050 = getelementptr inbounds i64, i64* %envptr9049, i64 1                  ; &envptr9049[1]
  %Zzj$a = load i64, i64* %envptr9050, align 8                                       ; load; *envptr9050
  %arg7411 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7411)                     ; call prim_vector_45ref
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
  %a7001 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7417)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9058 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9058, label %else9060, label %then9059                                   ; if

then9059:
  %arg7420 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7420)                     ; call prim_vector_45ref
  %retprim7100 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9061 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9063 = getelementptr inbounds i64, i64* %cloptr9061, i64 1                    ; &eptr9063[1]
  %eptr9064 = getelementptr inbounds i64, i64* %cloptr9061, i64 2                    ; &eptr9064[2]
  %eptr9065 = getelementptr inbounds i64, i64* %cloptr9061, i64 3                    ; &eptr9065[3]
  store i64 %USD$cc, i64* %eptr9063                                                  ; *eptr9063 = %USD$cc
  store i64 %Zzj$a, i64* %eptr9064                                                   ; *eptr9064 = %Zzj$a
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


define void @lam8451(i64 %env8452, i64 %_957097, i64 %h0g$b) {
  %envptr9075 = inttoptr i64 %env8452 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9076 = getelementptr inbounds i64, i64* %envptr9075, i64 3                  ; &envptr9075[3]
  %cont7095 = load i64, i64* %envptr9076, align 8                                    ; load; *envptr9076
  %envptr9077 = inttoptr i64 %env8452 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9078 = getelementptr inbounds i64, i64* %envptr9077, i64 2                  ; &envptr9077[2]
  %Zzj$a = load i64, i64* %envptr9078, align 8                                       ; load; *envptr9078
  %envptr9079 = inttoptr i64 %env8452 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9080 = getelementptr inbounds i64, i64* %envptr9079, i64 1                  ; &envptr9079[1]
  %USD$cc = load i64, i64* %envptr9080, align 8                                      ; load; *envptr9080
  %arg7426 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %Zzj$a, i64 %arg7426)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7430 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7099 = call i64 @prim_vector_45set_33(i64 %Zzj$a, i64 %arg7430, i64 %a7005); call prim_vector_45set_33
  %cloptr9081 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9083 = getelementptr inbounds i64, i64* %cloptr9081, i64 1                    ; &eptr9083[1]
  %eptr9084 = getelementptr inbounds i64, i64* %cloptr9081, i64 2                    ; &eptr9084[2]
  store i64 %USD$cc, i64* %eptr9083                                                  ; *eptr9083 = %USD$cc
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


define void @lam8447(i64 %env8448, i64 %_957098, i64 %b2a$_950) {
  %envptr9090 = inttoptr i64 %env8448 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9091 = getelementptr inbounds i64, i64* %envptr9090, i64 2                  ; &envptr9090[2]
  %cont7095 = load i64, i64* %envptr9091, align 8                                    ; load; *envptr9091
  %envptr9092 = inttoptr i64 %env8448 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9093 = getelementptr inbounds i64, i64* %envptr9092, i64 1                  ; &envptr9092[1]
  %USD$cc = load i64, i64* %envptr9093, align 8                                      ; load; *envptr9093
  %cloptr9094 = inttoptr i64 %USD$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9094)                                         ; assert function application
  %i0ptr9095 = getelementptr inbounds i64, i64* %cloptr9094, i64 0                   ; &cloptr9094[0]
  %f9097 = load i64, i64* %i0ptr9095, align 8                                        ; load; *i0ptr9095
  %fptr9096 = inttoptr i64 %f9097 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9096(i64 %USD$cc, i64 %cont7095, i64 %USD$cc)       ; tail call
  ret void
}


define void @lam8441(i64 %env8442, i64 %cont7102, i64 %OLh$lst, i64 %wux$n) {
  %arg7442 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %iXy$lst = call i64 @prim_make_45vector(i64 %arg7442, i64 %OLh$lst)                ; call prim_make_45vector
  %arg7444 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %kZ9$n = call i64 @prim_make_45vector(i64 %arg7444, i64 %wux$n)                    ; call prim_make_45vector
  %cloptr9098 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9099 = getelementptr inbounds i64, i64* %cloptr9098, i64 0                    ; &cloptr9098[0]
  %f9100 = ptrtoint void(i64,i64,i64)* @lam8437 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9100, i64* %eptr9099                                                   ; store fptr
  %arg7447 = ptrtoint i64* %cloptr9098 to i64                                        ; closure cast; i64* -> i64
  %cloptr9101 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9103 = getelementptr inbounds i64, i64* %cloptr9101, i64 1                    ; &eptr9103[1]
  %eptr9104 = getelementptr inbounds i64, i64* %cloptr9101, i64 2                    ; &eptr9104[2]
  %eptr9105 = getelementptr inbounds i64, i64* %cloptr9101, i64 3                    ; &eptr9105[3]
  store i64 %kZ9$n, i64* %eptr9103                                                   ; *eptr9103 = %kZ9$n
  store i64 %iXy$lst, i64* %eptr9104                                                 ; *eptr9104 = %iXy$lst
  store i64 %cont7102, i64* %eptr9105                                                ; *eptr9105 = %cont7102
  %eptr9102 = getelementptr inbounds i64, i64* %cloptr9101, i64 0                    ; &cloptr9101[0]
  %f9106 = ptrtoint void(i64,i64,i64)* @lam8435 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9106, i64* %eptr9102                                                   ; store fptr
  %arg7446 = ptrtoint i64* %cloptr9101 to i64                                        ; closure cast; i64* -> i64
  %cloptr9107 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9109 = getelementptr inbounds i64, i64* %cloptr9107, i64 1                    ; &eptr9109[1]
  %eptr9110 = getelementptr inbounds i64, i64* %cloptr9107, i64 2                    ; &eptr9110[2]
  %eptr9111 = getelementptr inbounds i64, i64* %cloptr9107, i64 3                    ; &eptr9111[3]
  store i64 %kZ9$n, i64* %eptr9109                                                   ; *eptr9109 = %kZ9$n
  store i64 %iXy$lst, i64* %eptr9110                                                 ; *eptr9110 = %iXy$lst
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


define void @lam8437(i64 %env8438, i64 %cont7109, i64 %Cys$u) {
  %cloptr9117 = inttoptr i64 %Cys$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9117)                                         ; assert function application
  %i0ptr9118 = getelementptr inbounds i64, i64* %cloptr9117, i64 0                   ; &cloptr9117[0]
  %f9120 = load i64, i64* %i0ptr9118, align 8                                        ; load; *i0ptr9118
  %fptr9119 = inttoptr i64 %f9120 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9119(i64 %Cys$u, i64 %cont7109, i64 %Cys$u)         ; tail call
  ret void
}


define void @lam8435(i64 %env8436, i64 %_957103, i64 %jSl$cc) {
  %envptr9121 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9122 = getelementptr inbounds i64, i64* %envptr9121, i64 3                  ; &envptr9121[3]
  %cont7102 = load i64, i64* %envptr9122, align 8                                    ; load; *envptr9122
  %envptr9123 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9124 = getelementptr inbounds i64, i64* %envptr9123, i64 2                  ; &envptr9123[2]
  %iXy$lst = load i64, i64* %envptr9124, align 8                                     ; load; *envptr9124
  %envptr9125 = inttoptr i64 %env8436 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9126 = getelementptr inbounds i64, i64* %envptr9125, i64 1                  ; &envptr9125[1]
  %kZ9$n = load i64, i64* %envptr9126, align 8                                       ; load; *envptr9126
  %arg7451 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %kZ9$n, i64 %arg7451)                     ; call prim_vector_45ref
  %arg7454 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7454, i64 %a7006)                              ; call prim__61
  %cmp9127 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9127, label %else9129, label %then9128                                   ; if

then9128:
  %arg7455 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7104 = call i64 @prim_vector_45ref(i64 %iXy$lst, i64 %arg7455)             ; call prim_vector_45ref
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
  %a7008 = call i64 @prim_vector_45ref(i64 %iXy$lst, i64 %arg7460)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7464 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %iXy$lst, i64 %arg7464, i64 %a7009); call prim_vector_45set_33
  %cloptr9134 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9136 = getelementptr inbounds i64, i64* %cloptr9134, i64 1                    ; &eptr9136[1]
  %eptr9137 = getelementptr inbounds i64, i64* %cloptr9134, i64 2                    ; &eptr9137[2]
  %eptr9138 = getelementptr inbounds i64, i64* %cloptr9134, i64 3                    ; &eptr9138[3]
  store i64 %kZ9$n, i64* %eptr9136                                                   ; *eptr9136 = %kZ9$n
  store i64 %cont7102, i64* %eptr9137                                                ; *eptr9137 = %cont7102
  store i64 %jSl$cc, i64* %eptr9138                                                  ; *eptr9138 = %jSl$cc
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


define void @lam8429(i64 %env8430, i64 %_957105, i64 %Pq8$_950) {
  %envptr9144 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9145 = getelementptr inbounds i64, i64* %envptr9144, i64 3                  ; &envptr9144[3]
  %jSl$cc = load i64, i64* %envptr9145, align 8                                      ; load; *envptr9145
  %envptr9146 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9147 = getelementptr inbounds i64, i64* %envptr9146, i64 2                  ; &envptr9146[2]
  %cont7102 = load i64, i64* %envptr9147, align 8                                    ; load; *envptr9147
  %envptr9148 = inttoptr i64 %env8430 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9149 = getelementptr inbounds i64, i64* %envptr9148, i64 1                  ; &envptr9148[1]
  %kZ9$n = load i64, i64* %envptr9149, align 8                                       ; load; *envptr9149
  %arg7469 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %kZ9$n, i64 %arg7469)                     ; call prim_vector_45ref
  %arg7471 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7471)                              ; call prim__45
  %arg7474 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7107 = call i64 @prim_vector_45set_33(i64 %kZ9$n, i64 %arg7474, i64 %a7011); call prim_vector_45set_33
  %cloptr9150 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9152 = getelementptr inbounds i64, i64* %cloptr9150, i64 1                    ; &eptr9152[1]
  %eptr9153 = getelementptr inbounds i64, i64* %cloptr9150, i64 2                    ; &eptr9153[2]
  store i64 %cont7102, i64* %eptr9152                                                ; *eptr9152 = %cont7102
  store i64 %jSl$cc, i64* %eptr9153                                                  ; *eptr9153 = %jSl$cc
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


define void @lam8424(i64 %env8425, i64 %_957106, i64 %pll$_951) {
  %envptr9159 = inttoptr i64 %env8425 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9160 = getelementptr inbounds i64, i64* %envptr9159, i64 2                  ; &envptr9159[2]
  %jSl$cc = load i64, i64* %envptr9160, align 8                                      ; load; *envptr9160
  %envptr9161 = inttoptr i64 %env8425 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9162 = getelementptr inbounds i64, i64* %envptr9161, i64 1                  ; &envptr9161[1]
  %cont7102 = load i64, i64* %envptr9162, align 8                                    ; load; *envptr9162
  %cloptr9163 = inttoptr i64 %jSl$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9163)                                         ; assert function application
  %i0ptr9164 = getelementptr inbounds i64, i64* %cloptr9163, i64 0                   ; &cloptr9163[0]
  %f9166 = load i64, i64* %i0ptr9164, align 8                                        ; load; *i0ptr9164
  %fptr9165 = inttoptr i64 %f9166 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9165(i64 %jSl$cc, i64 %cont7102, i64 %jSl$cc)       ; tail call
  ret void
}


define void @lam8418(i64 %env8419, i64 %_957103, i64 %jSl$cc) {
  %envptr9167 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9168 = getelementptr inbounds i64, i64* %envptr9167, i64 3                  ; &envptr9167[3]
  %cont7102 = load i64, i64* %envptr9168, align 8                                    ; load; *envptr9168
  %envptr9169 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9170 = getelementptr inbounds i64, i64* %envptr9169, i64 2                  ; &envptr9169[2]
  %iXy$lst = load i64, i64* %envptr9170, align 8                                     ; load; *envptr9170
  %envptr9171 = inttoptr i64 %env8419 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9172 = getelementptr inbounds i64, i64* %envptr9171, i64 1                  ; &envptr9171[1]
  %kZ9$n = load i64, i64* %envptr9172, align 8                                       ; load; *envptr9172
  %arg7482 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %kZ9$n, i64 %arg7482)                     ; call prim_vector_45ref
  %arg7485 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7485, i64 %a7006)                              ; call prim__61
  %cmp9173 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9173, label %else9175, label %then9174                                   ; if

then9174:
  %arg7486 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7104 = call i64 @prim_vector_45ref(i64 %iXy$lst, i64 %arg7486)             ; call prim_vector_45ref
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
  %a7008 = call i64 @prim_vector_45ref(i64 %iXy$lst, i64 %arg7491)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7495 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %iXy$lst, i64 %arg7495, i64 %a7009); call prim_vector_45set_33
  %cloptr9180 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9182 = getelementptr inbounds i64, i64* %cloptr9180, i64 1                    ; &eptr9182[1]
  %eptr9183 = getelementptr inbounds i64, i64* %cloptr9180, i64 2                    ; &eptr9183[2]
  %eptr9184 = getelementptr inbounds i64, i64* %cloptr9180, i64 3                    ; &eptr9184[3]
  store i64 %kZ9$n, i64* %eptr9182                                                   ; *eptr9182 = %kZ9$n
  store i64 %cont7102, i64* %eptr9183                                                ; *eptr9183 = %cont7102
  store i64 %jSl$cc, i64* %eptr9184                                                  ; *eptr9184 = %jSl$cc
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


define void @lam8412(i64 %env8413, i64 %_957105, i64 %Pq8$_950) {
  %envptr9190 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9191 = getelementptr inbounds i64, i64* %envptr9190, i64 3                  ; &envptr9190[3]
  %jSl$cc = load i64, i64* %envptr9191, align 8                                      ; load; *envptr9191
  %envptr9192 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9193 = getelementptr inbounds i64, i64* %envptr9192, i64 2                  ; &envptr9192[2]
  %cont7102 = load i64, i64* %envptr9193, align 8                                    ; load; *envptr9193
  %envptr9194 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9195 = getelementptr inbounds i64, i64* %envptr9194, i64 1                  ; &envptr9194[1]
  %kZ9$n = load i64, i64* %envptr9195, align 8                                       ; load; *envptr9195
  %arg7500 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %kZ9$n, i64 %arg7500)                     ; call prim_vector_45ref
  %arg7502 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7502)                              ; call prim__45
  %arg7505 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7107 = call i64 @prim_vector_45set_33(i64 %kZ9$n, i64 %arg7505, i64 %a7011); call prim_vector_45set_33
  %cloptr9196 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9198 = getelementptr inbounds i64, i64* %cloptr9196, i64 1                    ; &eptr9198[1]
  %eptr9199 = getelementptr inbounds i64, i64* %cloptr9196, i64 2                    ; &eptr9199[2]
  store i64 %cont7102, i64* %eptr9198                                                ; *eptr9198 = %cont7102
  store i64 %jSl$cc, i64* %eptr9199                                                  ; *eptr9199 = %jSl$cc
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


define void @lam8407(i64 %env8408, i64 %_957106, i64 %pll$_951) {
  %envptr9205 = inttoptr i64 %env8408 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9206 = getelementptr inbounds i64, i64* %envptr9205, i64 2                  ; &envptr9205[2]
  %jSl$cc = load i64, i64* %envptr9206, align 8                                      ; load; *envptr9206
  %envptr9207 = inttoptr i64 %env8408 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9208 = getelementptr inbounds i64, i64* %envptr9207, i64 1                  ; &envptr9207[1]
  %cont7102 = load i64, i64* %envptr9208, align 8                                    ; load; *envptr9208
  %cloptr9209 = inttoptr i64 %jSl$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9209)                                         ; assert function application
  %i0ptr9210 = getelementptr inbounds i64, i64* %cloptr9209, i64 0                   ; &cloptr9209[0]
  %f9212 = load i64, i64* %i0ptr9210, align 8                                        ; load; *i0ptr9210
  %fptr9211 = inttoptr i64 %f9212 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9211(i64 %jSl$cc, i64 %cont7102, i64 %jSl$cc)       ; tail call
  ret void
}


define void @lam8401(i64 %env8402, i64 %cont7110, i64 %cnd$v, i64 %DwH$lst) {
  %arg7514 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %gc0$lst = call i64 @prim_make_45vector(i64 %arg7514, i64 %DwH$lst)                ; call prim_make_45vector
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
  store i64 %cnd$v, i64* %eptr9219                                                   ; *eptr9219 = %cnd$v
  store i64 %gc0$lst, i64* %eptr9220                                                 ; *eptr9220 = %gc0$lst
  %eptr9217 = getelementptr inbounds i64, i64* %cloptr9216, i64 0                    ; &cloptr9216[0]
  %f9221 = ptrtoint void(i64,i64,i64)* @lam8396 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9221, i64* %eptr9217                                                   ; store fptr
  %arg7516 = ptrtoint i64* %cloptr9216 to i64                                        ; closure cast; i64* -> i64
  %cloptr9222 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9224 = getelementptr inbounds i64, i64* %cloptr9222, i64 1                    ; &eptr9224[1]
  %eptr9225 = getelementptr inbounds i64, i64* %cloptr9222, i64 2                    ; &eptr9225[2]
  %eptr9226 = getelementptr inbounds i64, i64* %cloptr9222, i64 3                    ; &eptr9226[3]
  store i64 %cont7110, i64* %eptr9224                                                ; *eptr9224 = %cont7110
  store i64 %cnd$v, i64* %eptr9225                                                   ; *eptr9225 = %cnd$v
  store i64 %gc0$lst, i64* %eptr9226                                                 ; *eptr9226 = %gc0$lst
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


define void @lam8398(i64 %env8399, i64 %cont7115, i64 %Grx$u) {
  %cloptr9232 = inttoptr i64 %Grx$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9232)                                         ; assert function application
  %i0ptr9233 = getelementptr inbounds i64, i64* %cloptr9232, i64 0                   ; &cloptr9232[0]
  %f9235 = load i64, i64* %i0ptr9233, align 8                                        ; load; *i0ptr9233
  %fptr9234 = inttoptr i64 %f9235 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9234(i64 %Grx$u, i64 %cont7115, i64 %Grx$u)         ; tail call
  ret void
}


define void @lam8396(i64 %env8397, i64 %_957111, i64 %dTj$cc) {
  %envptr9236 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9237 = getelementptr inbounds i64, i64* %envptr9236, i64 3                  ; &envptr9236[3]
  %gc0$lst = load i64, i64* %envptr9237, align 8                                     ; load; *envptr9237
  %envptr9238 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9239 = getelementptr inbounds i64, i64* %envptr9238, i64 2                  ; &envptr9238[2]
  %cnd$v = load i64, i64* %envptr9239, align 8                                       ; load; *envptr9239
  %envptr9240 = inttoptr i64 %env8397 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9241 = getelementptr inbounds i64, i64* %envptr9240, i64 1                  ; &envptr9240[1]
  %cont7110 = load i64, i64* %envptr9241, align 8                                    ; load; *envptr9241
  %arg7521 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7521)                   ; call prim_vector_45ref
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
  %a7014 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7527)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %cnd$v)                             ; call prim_eqv_63
  %cmp9249 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9249, label %else9251, label %then9250                                   ; if

then9250:
  %arg7532 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7532)             ; call prim_vector_45ref
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
  %a7017 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7537)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7541 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7114 = call i64 @prim_vector_45set_33(i64 %gc0$lst, i64 %arg7541, i64 %a7018); call prim_vector_45set_33
  %cloptr9256 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9258 = getelementptr inbounds i64, i64* %cloptr9256, i64 1                    ; &eptr9258[1]
  %eptr9259 = getelementptr inbounds i64, i64* %cloptr9256, i64 2                    ; &eptr9259[2]
  store i64 %cont7110, i64* %eptr9258                                                ; *eptr9258 = %cont7110
  store i64 %dTj$cc, i64* %eptr9259                                                  ; *eptr9259 = %dTj$cc
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


define void @lam8390(i64 %env8391, i64 %_957113, i64 %K9h$_950) {
  %envptr9265 = inttoptr i64 %env8391 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9266 = getelementptr inbounds i64, i64* %envptr9265, i64 2                  ; &envptr9265[2]
  %dTj$cc = load i64, i64* %envptr9266, align 8                                      ; load; *envptr9266
  %envptr9267 = inttoptr i64 %env8391 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9268 = getelementptr inbounds i64, i64* %envptr9267, i64 1                  ; &envptr9267[1]
  %cont7110 = load i64, i64* %envptr9268, align 8                                    ; load; *envptr9268
  %cloptr9269 = inttoptr i64 %dTj$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9269)                                         ; assert function application
  %i0ptr9270 = getelementptr inbounds i64, i64* %cloptr9269, i64 0                   ; &cloptr9269[0]
  %f9272 = load i64, i64* %i0ptr9270, align 8                                        ; load; *i0ptr9270
  %fptr9271 = inttoptr i64 %f9272 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9271(i64 %dTj$cc, i64 %cont7110, i64 %dTj$cc)       ; tail call
  ret void
}


define void @lam8383(i64 %env8384, i64 %_957111, i64 %dTj$cc) {
  %envptr9273 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9274 = getelementptr inbounds i64, i64* %envptr9273, i64 3                  ; &envptr9273[3]
  %gc0$lst = load i64, i64* %envptr9274, align 8                                     ; load; *envptr9274
  %envptr9275 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9276 = getelementptr inbounds i64, i64* %envptr9275, i64 2                  ; &envptr9275[2]
  %cnd$v = load i64, i64* %envptr9276, align 8                                       ; load; *envptr9276
  %envptr9277 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9278 = getelementptr inbounds i64, i64* %envptr9277, i64 1                  ; &envptr9277[1]
  %cont7110 = load i64, i64* %envptr9278, align 8                                    ; load; *envptr9278
  %arg7549 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7549)                   ; call prim_vector_45ref
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
  %a7014 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7555)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %cnd$v)                             ; call prim_eqv_63
  %cmp9286 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9286, label %else9288, label %then9287                                   ; if

then9287:
  %arg7560 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7112 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7560)             ; call prim_vector_45ref
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
  %a7017 = call i64 @prim_vector_45ref(i64 %gc0$lst, i64 %arg7565)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7569 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7114 = call i64 @prim_vector_45set_33(i64 %gc0$lst, i64 %arg7569, i64 %a7018); call prim_vector_45set_33
  %cloptr9293 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9295 = getelementptr inbounds i64, i64* %cloptr9293, i64 1                    ; &eptr9295[1]
  %eptr9296 = getelementptr inbounds i64, i64* %cloptr9293, i64 2                    ; &eptr9296[2]
  store i64 %cont7110, i64* %eptr9295                                                ; *eptr9295 = %cont7110
  store i64 %dTj$cc, i64* %eptr9296                                                  ; *eptr9296 = %dTj$cc
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


define void @lam8377(i64 %env8378, i64 %_957113, i64 %K9h$_950) {
  %envptr9302 = inttoptr i64 %env8378 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9303 = getelementptr inbounds i64, i64* %envptr9302, i64 2                  ; &envptr9302[2]
  %dTj$cc = load i64, i64* %envptr9303, align 8                                      ; load; *envptr9303
  %envptr9304 = inttoptr i64 %env8378 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9305 = getelementptr inbounds i64, i64* %envptr9304, i64 1                  ; &envptr9304[1]
  %cont7110 = load i64, i64* %envptr9305, align 8                                    ; load; *envptr9305
  %cloptr9306 = inttoptr i64 %dTj$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9306)                                         ; assert function application
  %i0ptr9307 = getelementptr inbounds i64, i64* %cloptr9306, i64 0                   ; &cloptr9306[0]
  %f9309 = load i64, i64* %i0ptr9307, align 8                                        ; load; *i0ptr9307
  %fptr9308 = inttoptr i64 %f9309 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9308(i64 %dTj$cc, i64 %cont7110, i64 %dTj$cc)       ; tail call
  ret void
}


define void @lam8370(i64 %env8371, i64 %BHC$args7117) {
  %envptr9310 = inttoptr i64 %env8371 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9311 = getelementptr inbounds i64, i64* %envptr9310, i64 1                  ; &envptr9310[1]
  %xqF$_37foldl1 = load i64, i64* %envptr9311, align 8                               ; load; *envptr9311
  %cont7116 = call i64 @prim_car(i64 %BHC$args7117)                                  ; call prim_car
  %BHC$args = call i64 @prim_cdr(i64 %BHC$args7117)                                  ; call prim_cdr
  %a7019 = call i64 @prim_null_63(i64 %BHC$args)                                     ; call prim_null_63
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
  %a7020 = call i64 @prim_cdr(i64 %BHC$args)                                         ; call prim_cdr
  %a7021 = call i64 @prim_null_63(i64 %a7020)                                        ; call prim_null_63
  %cmp9319 = icmp eq i64 %a7021, 15                                                  ; false?
  br i1 %cmp9319, label %else9321, label %then9320                                   ; if

then9320:
  %retprim7118 = call i64 @prim_car(i64 %BHC$args)                                   ; call prim_car
  %arg7587 = add i64 0, 0                                                            ; quoted ()
  %cloptr9322 = inttoptr i64 %cont7116 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9322)                                         ; assert function application
  %i0ptr9323 = getelementptr inbounds i64, i64* %cloptr9322, i64 0                   ; &cloptr9322[0]
  %f9325 = load i64, i64* %i0ptr9323, align 8                                        ; load; *i0ptr9323
  %fptr9324 = inttoptr i64 %f9325 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9324(i64 %cont7116, i64 %arg7587, i64 %retprim7118) ; tail call
  ret void

else9321:
  %a7022 = call i64 @prim_car(i64 %BHC$args)                                         ; call prim_car
  %a7023 = call i64 @prim_cdr(i64 %BHC$args)                                         ; call prim_cdr
  %cloptr9326 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9327 = getelementptr inbounds i64, i64* %cloptr9326, i64 0                    ; &cloptr9326[0]
  %f9328 = ptrtoint void(i64,i64,i64,i64)* @lam8368 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9328, i64* %eptr9327                                                   ; store fptr
  %arg7593 = ptrtoint i64* %cloptr9326 to i64                                        ; closure cast; i64* -> i64
  %cloptr9329 = inttoptr i64 %xqF$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9329)                                         ; assert function application
  %i0ptr9330 = getelementptr inbounds i64, i64* %cloptr9329, i64 0                   ; &cloptr9329[0]
  %f9332 = load i64, i64* %i0ptr9330, align 8                                        ; load; *i0ptr9330
  %fptr9331 = inttoptr i64 %f9332 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9331(i64 %xqF$_37foldl1, i64 %cont7116, i64 %arg7593, i64 %a7022, i64 %a7023); tail call
  ret void
}


define void @lam8368(i64 %env8369, i64 %cont7119, i64 %my7$n, i64 %nBL$v) {
  %retprim7120 = call i64 @prim__47(i64 %nBL$v, i64 %my7$n)                          ; call prim__47
  %arg7599 = add i64 0, 0                                                            ; quoted ()
  %cloptr9333 = inttoptr i64 %cont7119 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9333)                                         ; assert function application
  %i0ptr9334 = getelementptr inbounds i64, i64* %cloptr9333, i64 0                   ; &cloptr9333[0]
  %f9336 = load i64, i64* %i0ptr9334, align 8                                        ; load; *i0ptr9334
  %fptr9335 = inttoptr i64 %f9336 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9335(i64 %cont7119, i64 %arg7599, i64 %retprim7120) ; tail call
  ret void
}


define void @lam8362(i64 %env8363, i64 %cont7121, i64 %z9m$x) {
  %retprim7122 = call i64 @prim_car(i64 %z9m$x)                                      ; call prim_car
  %arg7603 = add i64 0, 0                                                            ; quoted ()
  %cloptr9337 = inttoptr i64 %cont7121 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9337)                                         ; assert function application
  %i0ptr9338 = getelementptr inbounds i64, i64* %cloptr9337, i64 0                   ; &cloptr9337[0]
  %f9340 = load i64, i64* %i0ptr9338, align 8                                        ; load; *i0ptr9338
  %fptr9339 = inttoptr i64 %f9340 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9339(i64 %cont7121, i64 %arg7603, i64 %retprim7122) ; tail call
  ret void
}


define void @lam8359(i64 %env8360, i64 %cont7123, i64 %Lgf$x) {
  %a7024 = call i64 @prim_cdr(i64 %Lgf$x)                                            ; call prim_cdr
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


define void @lam8356(i64 %env8357, i64 %cont7125, i64 %WWb$x) {
  %a7025 = call i64 @prim_cdr(i64 %WWb$x)                                            ; call prim_cdr
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


define void @lam8353(i64 %env8354, i64 %cont7127, i64 %zLx$x) {
  %a7027 = call i64 @prim_cdr(i64 %zLx$x)                                            ; call prim_cdr
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


define void @lam8350(i64 %env8351, i64 %cont7129, i64 %ImE$p) {
  %a7030 = call i64 @prim_cons_63(i64 %ImE$p)                                        ; call prim_cons_63
  %cmp9353 = icmp eq i64 %a7030, 15                                                  ; false?
  br i1 %cmp9353, label %else9355, label %then9354                                   ; if

then9354:
  %a7031 = call i64 @prim_car(i64 %ImE$p)                                            ; call prim_car
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


define void @lam8344(i64 %env8345, i64 %NUV$lst7175) {
  %cont7174 = call i64 @prim_car(i64 %NUV$lst7175)                                   ; call prim_car
  %NUV$lst = call i64 @prim_cdr(i64 %NUV$lst7175)                                    ; call prim_cdr
  %arg7638 = add i64 0, 0                                                            ; quoted ()
  %cloptr9365 = inttoptr i64 %cont7174 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9365)                                         ; assert function application
  %i0ptr9366 = getelementptr inbounds i64, i64* %cloptr9365, i64 0                   ; &cloptr9365[0]
  %f9368 = load i64, i64* %i0ptr9366, align 8                                        ; load; *i0ptr9366
  %fptr9367 = inttoptr i64 %f9368 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9367(i64 %cont7174, i64 %arg7638, i64 %NUV$lst)     ; tail call
  ret void
}


define void @lam8341(i64 %env8342, i64 %_957131, i64 %xoL$_37raise_45handler) {
  %envptr9369 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9370 = getelementptr inbounds i64, i64* %envptr9369, i64 3                  ; &envptr9369[3]
  %zSj$_37drop = load i64, i64* %envptr9370, align 8                                 ; load; *envptr9370
  %envptr9371 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9372 = getelementptr inbounds i64, i64* %envptr9371, i64 2                  ; &envptr9371[2]
  %vZ2$_37_62 = load i64, i64* %envptr9372, align 8                                  ; load; *envptr9372
  %envptr9373 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9374 = getelementptr inbounds i64, i64* %envptr9373, i64 1                  ; &envptr9373[1]
  %z0Y$_37length = load i64, i64* %envptr9374, align 8                               ; load; *envptr9374
  %cloptr9375 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9376 = getelementptr inbounds i64, i64* %cloptr9375, i64 0                    ; &cloptr9375[0]
  %f9377 = ptrtoint void(i64,i64)* @lam8339 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9377, i64* %eptr9376                                                   ; store fptr
  %arg7641 = ptrtoint i64* %cloptr9375 to i64                                        ; closure cast; i64* -> i64
  %cloptr9378 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9380 = getelementptr inbounds i64, i64* %cloptr9378, i64 1                    ; &eptr9380[1]
  %eptr9381 = getelementptr inbounds i64, i64* %cloptr9378, i64 2                    ; &eptr9381[2]
  %eptr9382 = getelementptr inbounds i64, i64* %cloptr9378, i64 3                    ; &eptr9382[3]
  store i64 %z0Y$_37length, i64* %eptr9380                                           ; *eptr9380 = %z0Y$_37length
  store i64 %vZ2$_37_62, i64* %eptr9381                                              ; *eptr9381 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9382                                             ; *eptr9382 = %zSj$_37drop
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


define void @lam8339(i64 %env8340, i64 %gUZ$lst7173) {
  %cont7172 = call i64 @prim_car(i64 %gUZ$lst7173)                                   ; call prim_car
  %gUZ$lst = call i64 @prim_cdr(i64 %gUZ$lst7173)                                    ; call prim_cdr
  %arg7645 = add i64 0, 0                                                            ; quoted ()
  %cloptr9388 = inttoptr i64 %cont7172 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9388)                                         ; assert function application
  %i0ptr9389 = getelementptr inbounds i64, i64* %cloptr9388, i64 0                   ; &cloptr9388[0]
  %f9391 = load i64, i64* %i0ptr9389, align 8                                        ; load; *i0ptr9389
  %fptr9390 = inttoptr i64 %f9391 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9390(i64 %cont7172, i64 %arg7645, i64 %gUZ$lst)     ; tail call
  ret void
}


define void @lam8336(i64 %env8337, i64 %_957170, i64 %a7032) {
  %envptr9392 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9393 = getelementptr inbounds i64, i64* %envptr9392, i64 3                  ; &envptr9392[3]
  %zSj$_37drop = load i64, i64* %envptr9393, align 8                                 ; load; *envptr9393
  %envptr9394 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9395 = getelementptr inbounds i64, i64* %envptr9394, i64 2                  ; &envptr9394[2]
  %vZ2$_37_62 = load i64, i64* %envptr9395, align 8                                  ; load; *envptr9395
  %envptr9396 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9397 = getelementptr inbounds i64, i64* %envptr9396, i64 1                  ; &envptr9396[1]
  %z0Y$_37length = load i64, i64* %envptr9397, align 8                               ; load; *envptr9397
  %arg7648 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7171 = call i64 @prim_make_45vector(i64 %arg7648, i64 %a7032)              ; call prim_make_45vector
  %cloptr9398 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9400 = getelementptr inbounds i64, i64* %cloptr9398, i64 1                    ; &eptr9400[1]
  %eptr9401 = getelementptr inbounds i64, i64* %cloptr9398, i64 2                    ; &eptr9401[2]
  %eptr9402 = getelementptr inbounds i64, i64* %cloptr9398, i64 3                    ; &eptr9402[3]
  store i64 %z0Y$_37length, i64* %eptr9400                                           ; *eptr9400 = %z0Y$_37length
  store i64 %vZ2$_37_62, i64* %eptr9401                                              ; *eptr9401 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9402                                             ; *eptr9402 = %zSj$_37drop
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


define void @lam8333(i64 %env8334, i64 %_957132, i64 %Cdq$_37wind_45stack) {
  %envptr9408 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9409 = getelementptr inbounds i64, i64* %envptr9408, i64 3                  ; &envptr9408[3]
  %zSj$_37drop = load i64, i64* %envptr9409, align 8                                 ; load; *envptr9409
  %envptr9410 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9411 = getelementptr inbounds i64, i64* %envptr9410, i64 2                  ; &envptr9410[2]
  %vZ2$_37_62 = load i64, i64* %envptr9411, align 8                                  ; load; *envptr9411
  %envptr9412 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9413 = getelementptr inbounds i64, i64* %envptr9412, i64 1                  ; &envptr9412[1]
  %z0Y$_37length = load i64, i64* %envptr9413, align 8                               ; load; *envptr9413
  %cloptr9414 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9416 = getelementptr inbounds i64, i64* %cloptr9414, i64 1                    ; &eptr9416[1]
  %eptr9417 = getelementptr inbounds i64, i64* %cloptr9414, i64 2                    ; &eptr9417[2]
  %eptr9418 = getelementptr inbounds i64, i64* %cloptr9414, i64 3                    ; &eptr9418[3]
  store i64 %z0Y$_37length, i64* %eptr9416                                           ; *eptr9416 = %z0Y$_37length
  store i64 %vZ2$_37_62, i64* %eptr9417                                              ; *eptr9417 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9418                                             ; *eptr9418 = %zSj$_37drop
  %eptr9415 = getelementptr inbounds i64, i64* %cloptr9414, i64 0                    ; &cloptr9414[0]
  %f9419 = ptrtoint void(i64,i64,i64,i64)* @lam8331 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9419, i64* %eptr9415                                                   ; store fptr
  %eD3$_37common_45tail = ptrtoint i64* %cloptr9414 to i64                           ; closure cast; i64* -> i64
  %cloptr9420 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9422 = getelementptr inbounds i64, i64* %cloptr9420, i64 1                    ; &eptr9422[1]
  %eptr9423 = getelementptr inbounds i64, i64* %cloptr9420, i64 2                    ; &eptr9423[2]
  store i64 %eD3$_37common_45tail, i64* %eptr9422                                    ; *eptr9422 = %eD3$_37common_45tail
  store i64 %Cdq$_37wind_45stack, i64* %eptr9423                                     ; *eptr9423 = %Cdq$_37wind_45stack
  %eptr9421 = getelementptr inbounds i64, i64* %cloptr9420, i64 0                    ; &cloptr9420[0]
  %f9424 = ptrtoint void(i64,i64,i64)* @lam8289 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9424, i64* %eptr9421                                                   ; store fptr
  %d8W$_37do_45wind = ptrtoint i64* %cloptr9420 to i64                               ; closure cast; i64* -> i64
  %arg7836 = call i64 @const_init_int(i64 1)                                         ; quoted int
  call i64 @too_many_args()                                                          ; too many args for =
  ret void                                                                           ; 
}


define void @lam8331(i64 %env8332, i64 %cont7133, i64 %JEZ$x, i64 %J0Z$y) {
  %envptr9425 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9426 = getelementptr inbounds i64, i64* %envptr9425, i64 3                  ; &envptr9425[3]
  %zSj$_37drop = load i64, i64* %envptr9426, align 8                                 ; load; *envptr9426
  %envptr9427 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9428 = getelementptr inbounds i64, i64* %envptr9427, i64 2                  ; &envptr9427[2]
  %vZ2$_37_62 = load i64, i64* %envptr9428, align 8                                  ; load; *envptr9428
  %envptr9429 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9430 = getelementptr inbounds i64, i64* %envptr9429, i64 1                  ; &envptr9429[1]
  %z0Y$_37length = load i64, i64* %envptr9430, align 8                               ; load; *envptr9430
  %cloptr9431 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9433 = getelementptr inbounds i64, i64* %cloptr9431, i64 1                    ; &eptr9433[1]
  %eptr9434 = getelementptr inbounds i64, i64* %cloptr9431, i64 2                    ; &eptr9434[2]
  %eptr9435 = getelementptr inbounds i64, i64* %cloptr9431, i64 3                    ; &eptr9435[3]
  %eptr9436 = getelementptr inbounds i64, i64* %cloptr9431, i64 4                    ; &eptr9436[4]
  %eptr9437 = getelementptr inbounds i64, i64* %cloptr9431, i64 5                    ; &eptr9437[5]
  %eptr9438 = getelementptr inbounds i64, i64* %cloptr9431, i64 6                    ; &eptr9438[6]
  store i64 %z0Y$_37length, i64* %eptr9433                                           ; *eptr9433 = %z0Y$_37length
  store i64 %vZ2$_37_62, i64* %eptr9434                                              ; *eptr9434 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9435                                             ; *eptr9435 = %zSj$_37drop
  store i64 %cont7133, i64* %eptr9436                                                ; *eptr9436 = %cont7133
  store i64 %J0Z$y, i64* %eptr9437                                                   ; *eptr9437 = %J0Z$y
  store i64 %JEZ$x, i64* %eptr9438                                                   ; *eptr9438 = %JEZ$x
  %eptr9432 = getelementptr inbounds i64, i64* %cloptr9431, i64 0                    ; &cloptr9431[0]
  %f9439 = ptrtoint void(i64,i64,i64)* @lam8329 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9439, i64* %eptr9432                                                   ; store fptr
  %arg7653 = ptrtoint i64* %cloptr9431 to i64                                        ; closure cast; i64* -> i64
  %cloptr9440 = inttoptr i64 %z0Y$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9440)                                         ; assert function application
  %i0ptr9441 = getelementptr inbounds i64, i64* %cloptr9440, i64 0                   ; &cloptr9440[0]
  %f9443 = load i64, i64* %i0ptr9441, align 8                                        ; load; *i0ptr9441
  %fptr9442 = inttoptr i64 %f9443 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9442(i64 %z0Y$_37length, i64 %arg7653, i64 %JEZ$x)  ; tail call
  ret void
}


define void @lam8329(i64 %env8330, i64 %_957134, i64 %hLL$lx) {
  %envptr9444 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9445 = getelementptr inbounds i64, i64* %envptr9444, i64 6                  ; &envptr9444[6]
  %JEZ$x = load i64, i64* %envptr9445, align 8                                       ; load; *envptr9445
  %envptr9446 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9447 = getelementptr inbounds i64, i64* %envptr9446, i64 5                  ; &envptr9446[5]
  %J0Z$y = load i64, i64* %envptr9447, align 8                                       ; load; *envptr9447
  %envptr9448 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9449 = getelementptr inbounds i64, i64* %envptr9448, i64 4                  ; &envptr9448[4]
  %cont7133 = load i64, i64* %envptr9449, align 8                                    ; load; *envptr9449
  %envptr9450 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9451 = getelementptr inbounds i64, i64* %envptr9450, i64 3                  ; &envptr9450[3]
  %zSj$_37drop = load i64, i64* %envptr9451, align 8                                 ; load; *envptr9451
  %envptr9452 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9453 = getelementptr inbounds i64, i64* %envptr9452, i64 2                  ; &envptr9452[2]
  %vZ2$_37_62 = load i64, i64* %envptr9453, align 8                                  ; load; *envptr9453
  %envptr9454 = inttoptr i64 %env8330 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9455 = getelementptr inbounds i64, i64* %envptr9454, i64 1                  ; &envptr9454[1]
  %z0Y$_37length = load i64, i64* %envptr9455, align 8                               ; load; *envptr9455
  %cloptr9456 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9458 = getelementptr inbounds i64, i64* %cloptr9456, i64 1                    ; &eptr9458[1]
  %eptr9459 = getelementptr inbounds i64, i64* %cloptr9456, i64 2                    ; &eptr9459[2]
  %eptr9460 = getelementptr inbounds i64, i64* %cloptr9456, i64 3                    ; &eptr9460[3]
  %eptr9461 = getelementptr inbounds i64, i64* %cloptr9456, i64 4                    ; &eptr9461[4]
  %eptr9462 = getelementptr inbounds i64, i64* %cloptr9456, i64 5                    ; &eptr9462[5]
  %eptr9463 = getelementptr inbounds i64, i64* %cloptr9456, i64 6                    ; &eptr9463[6]
  store i64 %vZ2$_37_62, i64* %eptr9458                                              ; *eptr9458 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9459                                             ; *eptr9459 = %zSj$_37drop
  store i64 %hLL$lx, i64* %eptr9460                                                  ; *eptr9460 = %hLL$lx
  store i64 %cont7133, i64* %eptr9461                                                ; *eptr9461 = %cont7133
  store i64 %J0Z$y, i64* %eptr9462                                                   ; *eptr9462 = %J0Z$y
  store i64 %JEZ$x, i64* %eptr9463                                                   ; *eptr9463 = %JEZ$x
  %eptr9457 = getelementptr inbounds i64, i64* %cloptr9456, i64 0                    ; &cloptr9456[0]
  %f9464 = ptrtoint void(i64,i64,i64)* @lam8327 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9464, i64* %eptr9457                                                   ; store fptr
  %arg7656 = ptrtoint i64* %cloptr9456 to i64                                        ; closure cast; i64* -> i64
  %cloptr9465 = inttoptr i64 %z0Y$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9465)                                         ; assert function application
  %i0ptr9466 = getelementptr inbounds i64, i64* %cloptr9465, i64 0                   ; &cloptr9465[0]
  %f9468 = load i64, i64* %i0ptr9466, align 8                                        ; load; *i0ptr9466
  %fptr9467 = inttoptr i64 %f9468 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9467(i64 %z0Y$_37length, i64 %arg7656, i64 %J0Z$y)  ; tail call
  ret void
}


define void @lam8327(i64 %env8328, i64 %_957135, i64 %q7X$ly) {
  %envptr9469 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9470 = getelementptr inbounds i64, i64* %envptr9469, i64 6                  ; &envptr9469[6]
  %JEZ$x = load i64, i64* %envptr9470, align 8                                       ; load; *envptr9470
  %envptr9471 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9472 = getelementptr inbounds i64, i64* %envptr9471, i64 5                  ; &envptr9471[5]
  %J0Z$y = load i64, i64* %envptr9472, align 8                                       ; load; *envptr9472
  %envptr9473 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9474 = getelementptr inbounds i64, i64* %envptr9473, i64 4                  ; &envptr9473[4]
  %cont7133 = load i64, i64* %envptr9474, align 8                                    ; load; *envptr9474
  %envptr9475 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9476 = getelementptr inbounds i64, i64* %envptr9475, i64 3                  ; &envptr9475[3]
  %hLL$lx = load i64, i64* %envptr9476, align 8                                      ; load; *envptr9476
  %envptr9477 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9478 = getelementptr inbounds i64, i64* %envptr9477, i64 2                  ; &envptr9477[2]
  %zSj$_37drop = load i64, i64* %envptr9478, align 8                                 ; load; *envptr9478
  %envptr9479 = inttoptr i64 %env8328 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9480 = getelementptr inbounds i64, i64* %envptr9479, i64 1                  ; &envptr9479[1]
  %vZ2$_37_62 = load i64, i64* %envptr9480, align 8                                  ; load; *envptr9480
  %cloptr9481 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9482 = getelementptr inbounds i64, i64* %cloptr9481, i64 0                    ; &cloptr9481[0]
  %f9483 = ptrtoint void(i64,i64)* @lam8325 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9483, i64* %eptr9482                                                   ; store fptr
  %arg7659 = ptrtoint i64* %cloptr9481 to i64                                        ; closure cast; i64* -> i64
  %cloptr9484 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9486 = getelementptr inbounds i64, i64* %cloptr9484, i64 1                    ; &eptr9486[1]
  %eptr9487 = getelementptr inbounds i64, i64* %cloptr9484, i64 2                    ; &eptr9487[2]
  %eptr9488 = getelementptr inbounds i64, i64* %cloptr9484, i64 3                    ; &eptr9488[3]
  %eptr9489 = getelementptr inbounds i64, i64* %cloptr9484, i64 4                    ; &eptr9489[4]
  %eptr9490 = getelementptr inbounds i64, i64* %cloptr9484, i64 5                    ; &eptr9490[5]
  %eptr9491 = getelementptr inbounds i64, i64* %cloptr9484, i64 6                    ; &eptr9491[6]
  %eptr9492 = getelementptr inbounds i64, i64* %cloptr9484, i64 7                    ; &eptr9492[7]
  store i64 %vZ2$_37_62, i64* %eptr9486                                              ; *eptr9486 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9487                                             ; *eptr9487 = %zSj$_37drop
  store i64 %q7X$ly, i64* %eptr9488                                                  ; *eptr9488 = %q7X$ly
  store i64 %hLL$lx, i64* %eptr9489                                                  ; *eptr9489 = %hLL$lx
  store i64 %cont7133, i64* %eptr9490                                                ; *eptr9490 = %cont7133
  store i64 %J0Z$y, i64* %eptr9491                                                   ; *eptr9491 = %J0Z$y
  store i64 %JEZ$x, i64* %eptr9492                                                   ; *eptr9492 = %JEZ$x
  %eptr9485 = getelementptr inbounds i64, i64* %cloptr9484, i64 0                    ; &cloptr9484[0]
  %f9493 = ptrtoint void(i64,i64,i64)* @lam8322 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9493, i64* %eptr9485                                                   ; store fptr
  %arg7658 = ptrtoint i64* %cloptr9484 to i64                                        ; closure cast; i64* -> i64
  %cloptr9494 = inttoptr i64 %arg7659 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9494)                                         ; assert function application
  %i0ptr9495 = getelementptr inbounds i64, i64* %cloptr9494, i64 0                   ; &cloptr9494[0]
  %f9497 = load i64, i64* %i0ptr9495, align 8                                        ; load; *i0ptr9495
  %fptr9496 = inttoptr i64 %f9497 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9496(i64 %arg7659, i64 %arg7658)                    ; tail call
  ret void
}


define void @lam8325(i64 %env8326, i64 %dWj$lst7145) {
  %cont7144 = call i64 @prim_car(i64 %dWj$lst7145)                                   ; call prim_car
  %dWj$lst = call i64 @prim_cdr(i64 %dWj$lst7145)                                    ; call prim_cdr
  %arg7663 = add i64 0, 0                                                            ; quoted ()
  %cloptr9498 = inttoptr i64 %cont7144 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9498)                                         ; assert function application
  %i0ptr9499 = getelementptr inbounds i64, i64* %cloptr9498, i64 0                   ; &cloptr9498[0]
  %f9501 = load i64, i64* %i0ptr9499, align 8                                        ; load; *i0ptr9499
  %fptr9500 = inttoptr i64 %f9501 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9500(i64 %cont7144, i64 %arg7663, i64 %dWj$lst)     ; tail call
  ret void
}


define void @lam8322(i64 %env8323, i64 %_957142, i64 %a7033) {
  %envptr9502 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9503 = getelementptr inbounds i64, i64* %envptr9502, i64 7                  ; &envptr9502[7]
  %JEZ$x = load i64, i64* %envptr9503, align 8                                       ; load; *envptr9503
  %envptr9504 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9505 = getelementptr inbounds i64, i64* %envptr9504, i64 6                  ; &envptr9504[6]
  %J0Z$y = load i64, i64* %envptr9505, align 8                                       ; load; *envptr9505
  %envptr9506 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9507 = getelementptr inbounds i64, i64* %envptr9506, i64 5                  ; &envptr9506[5]
  %cont7133 = load i64, i64* %envptr9507, align 8                                    ; load; *envptr9507
  %envptr9508 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9509 = getelementptr inbounds i64, i64* %envptr9508, i64 4                  ; &envptr9508[4]
  %hLL$lx = load i64, i64* %envptr9509, align 8                                      ; load; *envptr9509
  %envptr9510 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9511 = getelementptr inbounds i64, i64* %envptr9510, i64 3                  ; &envptr9510[3]
  %q7X$ly = load i64, i64* %envptr9511, align 8                                      ; load; *envptr9511
  %envptr9512 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9513 = getelementptr inbounds i64, i64* %envptr9512, i64 2                  ; &envptr9512[2]
  %zSj$_37drop = load i64, i64* %envptr9513, align 8                                 ; load; *envptr9513
  %envptr9514 = inttoptr i64 %env8323 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9515 = getelementptr inbounds i64, i64* %envptr9514, i64 1                  ; &envptr9514[1]
  %vZ2$_37_62 = load i64, i64* %envptr9515, align 8                                  ; load; *envptr9515
  %arg7666 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7143 = call i64 @prim_make_45vector(i64 %arg7666, i64 %a7033)              ; call prim_make_45vector
  %cloptr9516 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9518 = getelementptr inbounds i64, i64* %cloptr9516, i64 1                    ; &eptr9518[1]
  %eptr9519 = getelementptr inbounds i64, i64* %cloptr9516, i64 2                    ; &eptr9519[2]
  %eptr9520 = getelementptr inbounds i64, i64* %cloptr9516, i64 3                    ; &eptr9520[3]
  %eptr9521 = getelementptr inbounds i64, i64* %cloptr9516, i64 4                    ; &eptr9521[4]
  %eptr9522 = getelementptr inbounds i64, i64* %cloptr9516, i64 5                    ; &eptr9522[5]
  %eptr9523 = getelementptr inbounds i64, i64* %cloptr9516, i64 6                    ; &eptr9523[6]
  %eptr9524 = getelementptr inbounds i64, i64* %cloptr9516, i64 7                    ; &eptr9524[7]
  store i64 %vZ2$_37_62, i64* %eptr9518                                              ; *eptr9518 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9519                                             ; *eptr9519 = %zSj$_37drop
  store i64 %q7X$ly, i64* %eptr9520                                                  ; *eptr9520 = %q7X$ly
  store i64 %hLL$lx, i64* %eptr9521                                                  ; *eptr9521 = %hLL$lx
  store i64 %cont7133, i64* %eptr9522                                                ; *eptr9522 = %cont7133
  store i64 %J0Z$y, i64* %eptr9523                                                   ; *eptr9523 = %J0Z$y
  store i64 %JEZ$x, i64* %eptr9524                                                   ; *eptr9524 = %JEZ$x
  %eptr9517 = getelementptr inbounds i64, i64* %cloptr9516, i64 0                    ; &cloptr9516[0]
  %f9525 = ptrtoint void(i64,i64,i64)* @lam8319 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9525, i64* %eptr9517                                                   ; store fptr
  %arg7669 = ptrtoint i64* %cloptr9516 to i64                                        ; closure cast; i64* -> i64
  %arg7668 = add i64 0, 0                                                            ; quoted ()
  %cloptr9526 = inttoptr i64 %arg7669 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9526)                                         ; assert function application
  %i0ptr9527 = getelementptr inbounds i64, i64* %cloptr9526, i64 0                   ; &cloptr9526[0]
  %f9529 = load i64, i64* %i0ptr9527, align 8                                        ; load; *i0ptr9527
  %fptr9528 = inttoptr i64 %f9529 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9528(i64 %arg7669, i64 %arg7668, i64 %retprim7143)  ; tail call
  ret void
}


define void @lam8319(i64 %env8320, i64 %_957136, i64 %yyf$loop) {
  %envptr9530 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9531 = getelementptr inbounds i64, i64* %envptr9530, i64 7                  ; &envptr9530[7]
  %JEZ$x = load i64, i64* %envptr9531, align 8                                       ; load; *envptr9531
  %envptr9532 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9533 = getelementptr inbounds i64, i64* %envptr9532, i64 6                  ; &envptr9532[6]
  %J0Z$y = load i64, i64* %envptr9533, align 8                                       ; load; *envptr9533
  %envptr9534 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9535 = getelementptr inbounds i64, i64* %envptr9534, i64 5                  ; &envptr9534[5]
  %cont7133 = load i64, i64* %envptr9535, align 8                                    ; load; *envptr9535
  %envptr9536 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9537 = getelementptr inbounds i64, i64* %envptr9536, i64 4                  ; &envptr9536[4]
  %hLL$lx = load i64, i64* %envptr9537, align 8                                      ; load; *envptr9537
  %envptr9538 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9539 = getelementptr inbounds i64, i64* %envptr9538, i64 3                  ; &envptr9538[3]
  %q7X$ly = load i64, i64* %envptr9539, align 8                                      ; load; *envptr9539
  %envptr9540 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9541 = getelementptr inbounds i64, i64* %envptr9540, i64 2                  ; &envptr9540[2]
  %zSj$_37drop = load i64, i64* %envptr9541, align 8                                 ; load; *envptr9541
  %envptr9542 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9543 = getelementptr inbounds i64, i64* %envptr9542, i64 1                  ; &envptr9542[1]
  %vZ2$_37_62 = load i64, i64* %envptr9543, align 8                                  ; load; *envptr9543
  %arg7671 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9544 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9546 = getelementptr inbounds i64, i64* %cloptr9544, i64 1                    ; &eptr9546[1]
  store i64 %yyf$loop, i64* %eptr9546                                                ; *eptr9546 = %yyf$loop
  %eptr9545 = getelementptr inbounds i64, i64* %cloptr9544, i64 0                    ; &cloptr9544[0]
  %f9547 = ptrtoint void(i64,i64,i64,i64)* @lam8316 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9547, i64* %eptr9545                                                   ; store fptr
  %arg7670 = ptrtoint i64* %cloptr9544 to i64                                        ; closure cast; i64* -> i64
  %X7m$_956937 = call i64 @prim_vector_45set_33(i64 %yyf$loop, i64 %arg7671, i64 %arg7670); call prim_vector_45set_33
  %arg7686 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7038 = call i64 @prim_vector_45ref(i64 %yyf$loop, i64 %arg7686)                  ; call prim_vector_45ref
  %cloptr9548 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9550 = getelementptr inbounds i64, i64* %cloptr9548, i64 1                    ; &eptr9550[1]
  %eptr9551 = getelementptr inbounds i64, i64* %cloptr9548, i64 2                    ; &eptr9551[2]
  %eptr9552 = getelementptr inbounds i64, i64* %cloptr9548, i64 3                    ; &eptr9552[3]
  %eptr9553 = getelementptr inbounds i64, i64* %cloptr9548, i64 4                    ; &eptr9553[4]
  %eptr9554 = getelementptr inbounds i64, i64* %cloptr9548, i64 5                    ; &eptr9554[5]
  %eptr9555 = getelementptr inbounds i64, i64* %cloptr9548, i64 6                    ; &eptr9555[6]
  %eptr9556 = getelementptr inbounds i64, i64* %cloptr9548, i64 7                    ; &eptr9556[7]
  %eptr9557 = getelementptr inbounds i64, i64* %cloptr9548, i64 8                    ; &eptr9557[8]
  store i64 %a7038, i64* %eptr9550                                                   ; *eptr9550 = %a7038
  store i64 %vZ2$_37_62, i64* %eptr9551                                              ; *eptr9551 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9552                                             ; *eptr9552 = %zSj$_37drop
  store i64 %q7X$ly, i64* %eptr9553                                                  ; *eptr9553 = %q7X$ly
  store i64 %hLL$lx, i64* %eptr9554                                                  ; *eptr9554 = %hLL$lx
  store i64 %cont7133, i64* %eptr9555                                                ; *eptr9555 = %cont7133
  store i64 %J0Z$y, i64* %eptr9556                                                   ; *eptr9556 = %J0Z$y
  store i64 %JEZ$x, i64* %eptr9557                                                   ; *eptr9557 = %JEZ$x
  %eptr9549 = getelementptr inbounds i64, i64* %cloptr9548, i64 0                    ; &cloptr9548[0]
  %f9558 = ptrtoint void(i64,i64,i64)* @lam8311 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9558, i64* %eptr9549                                                   ; store fptr
  %arg7690 = ptrtoint i64* %cloptr9548 to i64                                        ; closure cast; i64* -> i64
  %cloptr9559 = inttoptr i64 %vZ2$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9559)                                         ; assert function application
  %i0ptr9560 = getelementptr inbounds i64, i64* %cloptr9559, i64 0                   ; &cloptr9559[0]
  %f9562 = load i64, i64* %i0ptr9560, align 8                                        ; load; *i0ptr9560
  %fptr9561 = inttoptr i64 %f9562 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9561(i64 %vZ2$_37_62, i64 %arg7690, i64 %hLL$lx, i64 %q7X$ly); tail call
  ret void
}


define void @lam8316(i64 %env8317, i64 %cont7137, i64 %qpa$x, i64 %b7L$y) {
  %envptr9563 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9564 = getelementptr inbounds i64, i64* %envptr9563, i64 1                  ; &envptr9563[1]
  %yyf$loop = load i64, i64* %envptr9564, align 8                                    ; load; *envptr9564
  %a7034 = call i64 @prim_eq_63(i64 %qpa$x, i64 %b7L$y)                              ; call prim_eq_63
  %cmp9565 = icmp eq i64 %a7034, 15                                                  ; false?
  br i1 %cmp9565, label %else9567, label %then9566                                   ; if

then9566:
  %arg7676 = add i64 0, 0                                                            ; quoted ()
  %cloptr9568 = inttoptr i64 %cont7137 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9568)                                         ; assert function application
  %i0ptr9569 = getelementptr inbounds i64, i64* %cloptr9568, i64 0                   ; &cloptr9568[0]
  %f9571 = load i64, i64* %i0ptr9569, align 8                                        ; load; *i0ptr9569
  %fptr9570 = inttoptr i64 %f9571 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9570(i64 %cont7137, i64 %arg7676, i64 %qpa$x)       ; tail call
  ret void

else9567:
  %arg7678 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7035 = call i64 @prim_vector_45ref(i64 %yyf$loop, i64 %arg7678)                  ; call prim_vector_45ref
  %a7036 = call i64 @prim_cdr(i64 %qpa$x)                                            ; call prim_cdr
  %a7037 = call i64 @prim_cdr(i64 %b7L$y)                                            ; call prim_cdr
  %cloptr9572 = inttoptr i64 %a7035 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9572)                                         ; assert function application
  %i0ptr9573 = getelementptr inbounds i64, i64* %cloptr9572, i64 0                   ; &cloptr9572[0]
  %f9575 = load i64, i64* %i0ptr9573, align 8                                        ; load; *i0ptr9573
  %fptr9574 = inttoptr i64 %f9575 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9574(i64 %a7035, i64 %cont7137, i64 %a7036, i64 %a7037); tail call
  ret void
}


define void @lam8311(i64 %env8312, i64 %_957138, i64 %a7039) {
  %envptr9576 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9577 = getelementptr inbounds i64, i64* %envptr9576, i64 8                  ; &envptr9576[8]
  %JEZ$x = load i64, i64* %envptr9577, align 8                                       ; load; *envptr9577
  %envptr9578 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9579 = getelementptr inbounds i64, i64* %envptr9578, i64 7                  ; &envptr9578[7]
  %J0Z$y = load i64, i64* %envptr9579, align 8                                       ; load; *envptr9579
  %envptr9580 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9581 = getelementptr inbounds i64, i64* %envptr9580, i64 6                  ; &envptr9580[6]
  %cont7133 = load i64, i64* %envptr9581, align 8                                    ; load; *envptr9581
  %envptr9582 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9583 = getelementptr inbounds i64, i64* %envptr9582, i64 5                  ; &envptr9582[5]
  %hLL$lx = load i64, i64* %envptr9583, align 8                                      ; load; *envptr9583
  %envptr9584 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9585 = getelementptr inbounds i64, i64* %envptr9584, i64 4                  ; &envptr9584[4]
  %q7X$ly = load i64, i64* %envptr9585, align 8                                      ; load; *envptr9585
  %envptr9586 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9587 = getelementptr inbounds i64, i64* %envptr9586, i64 3                  ; &envptr9586[3]
  %zSj$_37drop = load i64, i64* %envptr9587, align 8                                 ; load; *envptr9587
  %envptr9588 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9589 = getelementptr inbounds i64, i64* %envptr9588, i64 2                  ; &envptr9588[2]
  %vZ2$_37_62 = load i64, i64* %envptr9589, align 8                                  ; load; *envptr9589
  %envptr9590 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9591 = getelementptr inbounds i64, i64* %envptr9590, i64 1                  ; &envptr9590[1]
  %a7038 = load i64, i64* %envptr9591, align 8                                       ; load; *envptr9591
  %cmp9592 = icmp eq i64 %a7039, 15                                                  ; false?
  br i1 %cmp9592, label %else9594, label %then9593                                   ; if

then9593:
  %a7040 = call i64 @prim__45(i64 %hLL$lx, i64 %q7X$ly)                              ; call prim__45
  %cloptr9595 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9597 = getelementptr inbounds i64, i64* %cloptr9595, i64 1                    ; &eptr9597[1]
  %eptr9598 = getelementptr inbounds i64, i64* %cloptr9595, i64 2                    ; &eptr9598[2]
  %eptr9599 = getelementptr inbounds i64, i64* %cloptr9595, i64 3                    ; &eptr9599[3]
  %eptr9600 = getelementptr inbounds i64, i64* %cloptr9595, i64 4                    ; &eptr9600[4]
  %eptr9601 = getelementptr inbounds i64, i64* %cloptr9595, i64 5                    ; &eptr9601[5]
  %eptr9602 = getelementptr inbounds i64, i64* %cloptr9595, i64 6                    ; &eptr9602[6]
  %eptr9603 = getelementptr inbounds i64, i64* %cloptr9595, i64 7                    ; &eptr9603[7]
  store i64 %a7038, i64* %eptr9597                                                   ; *eptr9597 = %a7038
  store i64 %vZ2$_37_62, i64* %eptr9598                                              ; *eptr9598 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9599                                             ; *eptr9599 = %zSj$_37drop
  store i64 %q7X$ly, i64* %eptr9600                                                  ; *eptr9600 = %q7X$ly
  store i64 %hLL$lx, i64* %eptr9601                                                  ; *eptr9601 = %hLL$lx
  store i64 %cont7133, i64* %eptr9602                                                ; *eptr9602 = %cont7133
  store i64 %J0Z$y, i64* %eptr9603                                                   ; *eptr9603 = %J0Z$y
  %eptr9596 = getelementptr inbounds i64, i64* %cloptr9595, i64 0                    ; &cloptr9595[0]
  %f9604 = ptrtoint void(i64,i64,i64)* @lam8299 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9604, i64* %eptr9596                                                   ; store fptr
  %arg7696 = ptrtoint i64* %cloptr9595 to i64                                        ; closure cast; i64* -> i64
  %cloptr9605 = inttoptr i64 %zSj$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9605)                                         ; assert function application
  %i0ptr9606 = getelementptr inbounds i64, i64* %cloptr9605, i64 0                   ; &cloptr9605[0]
  %f9608 = load i64, i64* %i0ptr9606, align 8                                        ; load; *i0ptr9606
  %fptr9607 = inttoptr i64 %f9608 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9607(i64 %zSj$_37drop, i64 %arg7696, i64 %JEZ$x, i64 %a7040); tail call
  ret void

else9594:
  %cloptr9609 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9611 = getelementptr inbounds i64, i64* %cloptr9609, i64 1                    ; &eptr9611[1]
  %eptr9612 = getelementptr inbounds i64, i64* %cloptr9609, i64 2                    ; &eptr9612[2]
  %eptr9613 = getelementptr inbounds i64, i64* %cloptr9609, i64 3                    ; &eptr9613[3]
  %eptr9614 = getelementptr inbounds i64, i64* %cloptr9609, i64 4                    ; &eptr9614[4]
  %eptr9615 = getelementptr inbounds i64, i64* %cloptr9609, i64 5                    ; &eptr9615[5]
  %eptr9616 = getelementptr inbounds i64, i64* %cloptr9609, i64 6                    ; &eptr9616[6]
  %eptr9617 = getelementptr inbounds i64, i64* %cloptr9609, i64 7                    ; &eptr9617[7]
  store i64 %a7038, i64* %eptr9611                                                   ; *eptr9611 = %a7038
  store i64 %vZ2$_37_62, i64* %eptr9612                                              ; *eptr9612 = %vZ2$_37_62
  store i64 %zSj$_37drop, i64* %eptr9613                                             ; *eptr9613 = %zSj$_37drop
  store i64 %q7X$ly, i64* %eptr9614                                                  ; *eptr9614 = %q7X$ly
  store i64 %hLL$lx, i64* %eptr9615                                                  ; *eptr9615 = %hLL$lx
  store i64 %cont7133, i64* %eptr9616                                                ; *eptr9616 = %cont7133
  store i64 %J0Z$y, i64* %eptr9617                                                   ; *eptr9617 = %J0Z$y
  %eptr9610 = getelementptr inbounds i64, i64* %cloptr9609, i64 0                    ; &cloptr9609[0]
  %f9618 = ptrtoint void(i64,i64,i64)* @lam8309 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9618, i64* %eptr9610                                                   ; store fptr
  %arg7721 = ptrtoint i64* %cloptr9609 to i64                                        ; closure cast; i64* -> i64
  %arg7720 = add i64 0, 0                                                            ; quoted ()
  %cloptr9619 = inttoptr i64 %arg7721 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9619)                                         ; assert function application
  %i0ptr9620 = getelementptr inbounds i64, i64* %cloptr9619, i64 0                   ; &cloptr9619[0]
  %f9622 = load i64, i64* %i0ptr9620, align 8                                        ; load; *i0ptr9620
  %fptr9621 = inttoptr i64 %f9622 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9621(i64 %arg7721, i64 %arg7720, i64 %JEZ$x)        ; tail call
  ret void
}


define void @lam8309(i64 %env8310, i64 %_957139, i64 %a7041) {
  %envptr9623 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9624 = getelementptr inbounds i64, i64* %envptr9623, i64 7                  ; &envptr9623[7]
  %J0Z$y = load i64, i64* %envptr9624, align 8                                       ; load; *envptr9624
  %envptr9625 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9626 = getelementptr inbounds i64, i64* %envptr9625, i64 6                  ; &envptr9625[6]
  %cont7133 = load i64, i64* %envptr9626, align 8                                    ; load; *envptr9626
  %envptr9627 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9628 = getelementptr inbounds i64, i64* %envptr9627, i64 5                  ; &envptr9627[5]
  %hLL$lx = load i64, i64* %envptr9628, align 8                                      ; load; *envptr9628
  %envptr9629 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9630 = getelementptr inbounds i64, i64* %envptr9629, i64 4                  ; &envptr9629[4]
  %q7X$ly = load i64, i64* %envptr9630, align 8                                      ; load; *envptr9630
  %envptr9631 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9632 = getelementptr inbounds i64, i64* %envptr9631, i64 3                  ; &envptr9631[3]
  %zSj$_37drop = load i64, i64* %envptr9632, align 8                                 ; load; *envptr9632
  %envptr9633 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9634 = getelementptr inbounds i64, i64* %envptr9633, i64 2                  ; &envptr9633[2]
  %vZ2$_37_62 = load i64, i64* %envptr9634, align 8                                  ; load; *envptr9634
  %envptr9635 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9636 = getelementptr inbounds i64, i64* %envptr9635, i64 1                  ; &envptr9635[1]
  %a7038 = load i64, i64* %envptr9636, align 8                                       ; load; *envptr9636
  %cloptr9637 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9639 = getelementptr inbounds i64, i64* %cloptr9637, i64 1                    ; &eptr9639[1]
  %eptr9640 = getelementptr inbounds i64, i64* %cloptr9637, i64 2                    ; &eptr9640[2]
  %eptr9641 = getelementptr inbounds i64, i64* %cloptr9637, i64 3                    ; &eptr9641[3]
  %eptr9642 = getelementptr inbounds i64, i64* %cloptr9637, i64 4                    ; &eptr9642[4]
  %eptr9643 = getelementptr inbounds i64, i64* %cloptr9637, i64 5                    ; &eptr9643[5]
  %eptr9644 = getelementptr inbounds i64, i64* %cloptr9637, i64 6                    ; &eptr9644[6]
  %eptr9645 = getelementptr inbounds i64, i64* %cloptr9637, i64 7                    ; &eptr9645[7]
  store i64 %a7041, i64* %eptr9639                                                   ; *eptr9639 = %a7041
  store i64 %a7038, i64* %eptr9640                                                   ; *eptr9640 = %a7038
  store i64 %zSj$_37drop, i64* %eptr9641                                             ; *eptr9641 = %zSj$_37drop
  store i64 %q7X$ly, i64* %eptr9642                                                  ; *eptr9642 = %q7X$ly
  store i64 %hLL$lx, i64* %eptr9643                                                  ; *eptr9643 = %hLL$lx
  store i64 %cont7133, i64* %eptr9644                                                ; *eptr9644 = %cont7133
  store i64 %J0Z$y, i64* %eptr9645                                                   ; *eptr9645 = %J0Z$y
  %eptr9638 = getelementptr inbounds i64, i64* %cloptr9637, i64 0                    ; &cloptr9637[0]
  %f9646 = ptrtoint void(i64,i64,i64)* @lam8307 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9646, i64* %eptr9638                                                   ; store fptr
  %arg7724 = ptrtoint i64* %cloptr9637 to i64                                        ; closure cast; i64* -> i64
  %cloptr9647 = inttoptr i64 %vZ2$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9647)                                         ; assert function application
  %i0ptr9648 = getelementptr inbounds i64, i64* %cloptr9647, i64 0                   ; &cloptr9647[0]
  %f9650 = load i64, i64* %i0ptr9648, align 8                                        ; load; *i0ptr9648
  %fptr9649 = inttoptr i64 %f9650 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9649(i64 %vZ2$_37_62, i64 %arg7724, i64 %q7X$ly, i64 %hLL$lx); tail call
  ret void
}


define void @lam8307(i64 %env8308, i64 %_957140, i64 %a7042) {
  %envptr9651 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9652 = getelementptr inbounds i64, i64* %envptr9651, i64 7                  ; &envptr9651[7]
  %J0Z$y = load i64, i64* %envptr9652, align 8                                       ; load; *envptr9652
  %envptr9653 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9654 = getelementptr inbounds i64, i64* %envptr9653, i64 6                  ; &envptr9653[6]
  %cont7133 = load i64, i64* %envptr9654, align 8                                    ; load; *envptr9654
  %envptr9655 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9656 = getelementptr inbounds i64, i64* %envptr9655, i64 5                  ; &envptr9655[5]
  %hLL$lx = load i64, i64* %envptr9656, align 8                                      ; load; *envptr9656
  %envptr9657 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9658 = getelementptr inbounds i64, i64* %envptr9657, i64 4                  ; &envptr9657[4]
  %q7X$ly = load i64, i64* %envptr9658, align 8                                      ; load; *envptr9658
  %envptr9659 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9660 = getelementptr inbounds i64, i64* %envptr9659, i64 3                  ; &envptr9659[3]
  %zSj$_37drop = load i64, i64* %envptr9660, align 8                                 ; load; *envptr9660
  %envptr9661 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9662 = getelementptr inbounds i64, i64* %envptr9661, i64 2                  ; &envptr9661[2]
  %a7038 = load i64, i64* %envptr9662, align 8                                       ; load; *envptr9662
  %envptr9663 = inttoptr i64 %env8308 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9664 = getelementptr inbounds i64, i64* %envptr9663, i64 1                  ; &envptr9663[1]
  %a7041 = load i64, i64* %envptr9664, align 8                                       ; load; *envptr9664
  %cmp9665 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9665, label %else9667, label %then9666                                   ; if

then9666:
  %a7043 = call i64 @prim__45(i64 %q7X$ly, i64 %hLL$lx)                              ; call prim__45
  %cloptr9668 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9670 = getelementptr inbounds i64, i64* %cloptr9668, i64 1                    ; &eptr9670[1]
  %eptr9671 = getelementptr inbounds i64, i64* %cloptr9668, i64 2                    ; &eptr9671[2]
  %eptr9672 = getelementptr inbounds i64, i64* %cloptr9668, i64 3                    ; &eptr9672[3]
  store i64 %a7041, i64* %eptr9670                                                   ; *eptr9670 = %a7041
  store i64 %a7038, i64* %eptr9671                                                   ; *eptr9671 = %a7038
  store i64 %cont7133, i64* %eptr9672                                                ; *eptr9672 = %cont7133
  %eptr9669 = getelementptr inbounds i64, i64* %cloptr9668, i64 0                    ; &cloptr9668[0]
  %f9673 = ptrtoint void(i64,i64,i64)* @lam8302 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9673, i64* %eptr9669                                                   ; store fptr
  %arg7730 = ptrtoint i64* %cloptr9668 to i64                                        ; closure cast; i64* -> i64
  %cloptr9674 = inttoptr i64 %zSj$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9674)                                         ; assert function application
  %i0ptr9675 = getelementptr inbounds i64, i64* %cloptr9674, i64 0                   ; &cloptr9674[0]
  %f9677 = load i64, i64* %i0ptr9675, align 8                                        ; load; *i0ptr9675
  %fptr9676 = inttoptr i64 %f9677 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9676(i64 %zSj$_37drop, i64 %arg7730, i64 %J0Z$y, i64 %a7043); tail call
  ret void

else9667:
  %cloptr9678 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9680 = getelementptr inbounds i64, i64* %cloptr9678, i64 1                    ; &eptr9680[1]
  %eptr9681 = getelementptr inbounds i64, i64* %cloptr9678, i64 2                    ; &eptr9681[2]
  %eptr9682 = getelementptr inbounds i64, i64* %cloptr9678, i64 3                    ; &eptr9682[3]
  store i64 %a7041, i64* %eptr9680                                                   ; *eptr9680 = %a7041
  store i64 %a7038, i64* %eptr9681                                                   ; *eptr9681 = %a7038
  store i64 %cont7133, i64* %eptr9682                                                ; *eptr9682 = %cont7133
  %eptr9679 = getelementptr inbounds i64, i64* %cloptr9678, i64 0                    ; &cloptr9678[0]
  %f9683 = ptrtoint void(i64,i64,i64)* @lam8305 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9683, i64* %eptr9679                                                   ; store fptr
  %arg7738 = ptrtoint i64* %cloptr9678 to i64                                        ; closure cast; i64* -> i64
  %arg7737 = add i64 0, 0                                                            ; quoted ()
  %cloptr9684 = inttoptr i64 %arg7738 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9684)                                         ; assert function application
  %i0ptr9685 = getelementptr inbounds i64, i64* %cloptr9684, i64 0                   ; &cloptr9684[0]
  %f9687 = load i64, i64* %i0ptr9685, align 8                                        ; load; *i0ptr9685
  %fptr9686 = inttoptr i64 %f9687 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9686(i64 %arg7738, i64 %arg7737, i64 %J0Z$y)        ; tail call
  ret void
}


define void @lam8305(i64 %env8306, i64 %_957141, i64 %a7044) {
  %envptr9688 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9689 = getelementptr inbounds i64, i64* %envptr9688, i64 3                  ; &envptr9688[3]
  %cont7133 = load i64, i64* %envptr9689, align 8                                    ; load; *envptr9689
  %envptr9690 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9691 = getelementptr inbounds i64, i64* %envptr9690, i64 2                  ; &envptr9690[2]
  %a7038 = load i64, i64* %envptr9691, align 8                                       ; load; *envptr9691
  %envptr9692 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9693 = getelementptr inbounds i64, i64* %envptr9692, i64 1                  ; &envptr9692[1]
  %a7041 = load i64, i64* %envptr9693, align 8                                       ; load; *envptr9693
  %cloptr9694 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9694)                                         ; assert function application
  %i0ptr9695 = getelementptr inbounds i64, i64* %cloptr9694, i64 0                   ; &cloptr9694[0]
  %f9697 = load i64, i64* %i0ptr9695, align 8                                        ; load; *i0ptr9695
  %fptr9696 = inttoptr i64 %f9697 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9696(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8302(i64 %env8303, i64 %_957141, i64 %a7044) {
  %envptr9698 = inttoptr i64 %env8303 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9699 = getelementptr inbounds i64, i64* %envptr9698, i64 3                  ; &envptr9698[3]
  %cont7133 = load i64, i64* %envptr9699, align 8                                    ; load; *envptr9699
  %envptr9700 = inttoptr i64 %env8303 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9701 = getelementptr inbounds i64, i64* %envptr9700, i64 2                  ; &envptr9700[2]
  %a7038 = load i64, i64* %envptr9701, align 8                                       ; load; *envptr9701
  %envptr9702 = inttoptr i64 %env8303 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9703 = getelementptr inbounds i64, i64* %envptr9702, i64 1                  ; &envptr9702[1]
  %a7041 = load i64, i64* %envptr9703, align 8                                       ; load; *envptr9703
  %cloptr9704 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9704)                                         ; assert function application
  %i0ptr9705 = getelementptr inbounds i64, i64* %cloptr9704, i64 0                   ; &cloptr9704[0]
  %f9707 = load i64, i64* %i0ptr9705, align 8                                        ; load; *i0ptr9705
  %fptr9706 = inttoptr i64 %f9707 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9706(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8299(i64 %env8300, i64 %_957139, i64 %a7041) {
  %envptr9708 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9709 = getelementptr inbounds i64, i64* %envptr9708, i64 7                  ; &envptr9708[7]
  %J0Z$y = load i64, i64* %envptr9709, align 8                                       ; load; *envptr9709
  %envptr9710 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9711 = getelementptr inbounds i64, i64* %envptr9710, i64 6                  ; &envptr9710[6]
  %cont7133 = load i64, i64* %envptr9711, align 8                                    ; load; *envptr9711
  %envptr9712 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9713 = getelementptr inbounds i64, i64* %envptr9712, i64 5                  ; &envptr9712[5]
  %hLL$lx = load i64, i64* %envptr9713, align 8                                      ; load; *envptr9713
  %envptr9714 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9715 = getelementptr inbounds i64, i64* %envptr9714, i64 4                  ; &envptr9714[4]
  %q7X$ly = load i64, i64* %envptr9715, align 8                                      ; load; *envptr9715
  %envptr9716 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9717 = getelementptr inbounds i64, i64* %envptr9716, i64 3                  ; &envptr9716[3]
  %zSj$_37drop = load i64, i64* %envptr9717, align 8                                 ; load; *envptr9717
  %envptr9718 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9719 = getelementptr inbounds i64, i64* %envptr9718, i64 2                  ; &envptr9718[2]
  %vZ2$_37_62 = load i64, i64* %envptr9719, align 8                                  ; load; *envptr9719
  %envptr9720 = inttoptr i64 %env8300 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9721 = getelementptr inbounds i64, i64* %envptr9720, i64 1                  ; &envptr9720[1]
  %a7038 = load i64, i64* %envptr9721, align 8                                       ; load; *envptr9721
  %cloptr9722 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9724 = getelementptr inbounds i64, i64* %cloptr9722, i64 1                    ; &eptr9724[1]
  %eptr9725 = getelementptr inbounds i64, i64* %cloptr9722, i64 2                    ; &eptr9725[2]
  %eptr9726 = getelementptr inbounds i64, i64* %cloptr9722, i64 3                    ; &eptr9726[3]
  %eptr9727 = getelementptr inbounds i64, i64* %cloptr9722, i64 4                    ; &eptr9727[4]
  %eptr9728 = getelementptr inbounds i64, i64* %cloptr9722, i64 5                    ; &eptr9728[5]
  %eptr9729 = getelementptr inbounds i64, i64* %cloptr9722, i64 6                    ; &eptr9729[6]
  %eptr9730 = getelementptr inbounds i64, i64* %cloptr9722, i64 7                    ; &eptr9730[7]
  store i64 %a7041, i64* %eptr9724                                                   ; *eptr9724 = %a7041
  store i64 %a7038, i64* %eptr9725                                                   ; *eptr9725 = %a7038
  store i64 %zSj$_37drop, i64* %eptr9726                                             ; *eptr9726 = %zSj$_37drop
  store i64 %q7X$ly, i64* %eptr9727                                                  ; *eptr9727 = %q7X$ly
  store i64 %hLL$lx, i64* %eptr9728                                                  ; *eptr9728 = %hLL$lx
  store i64 %cont7133, i64* %eptr9729                                                ; *eptr9729 = %cont7133
  store i64 %J0Z$y, i64* %eptr9730                                                   ; *eptr9730 = %J0Z$y
  %eptr9723 = getelementptr inbounds i64, i64* %cloptr9722, i64 0                    ; &cloptr9722[0]
  %f9731 = ptrtoint void(i64,i64,i64)* @lam8297 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9731, i64* %eptr9723                                                   ; store fptr
  %arg7700 = ptrtoint i64* %cloptr9722 to i64                                        ; closure cast; i64* -> i64
  %cloptr9732 = inttoptr i64 %vZ2$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9732)                                         ; assert function application
  %i0ptr9733 = getelementptr inbounds i64, i64* %cloptr9732, i64 0                   ; &cloptr9732[0]
  %f9735 = load i64, i64* %i0ptr9733, align 8                                        ; load; *i0ptr9733
  %fptr9734 = inttoptr i64 %f9735 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9734(i64 %vZ2$_37_62, i64 %arg7700, i64 %q7X$ly, i64 %hLL$lx); tail call
  ret void
}


define void @lam8297(i64 %env8298, i64 %_957140, i64 %a7042) {
  %envptr9736 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9737 = getelementptr inbounds i64, i64* %envptr9736, i64 7                  ; &envptr9736[7]
  %J0Z$y = load i64, i64* %envptr9737, align 8                                       ; load; *envptr9737
  %envptr9738 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9739 = getelementptr inbounds i64, i64* %envptr9738, i64 6                  ; &envptr9738[6]
  %cont7133 = load i64, i64* %envptr9739, align 8                                    ; load; *envptr9739
  %envptr9740 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9741 = getelementptr inbounds i64, i64* %envptr9740, i64 5                  ; &envptr9740[5]
  %hLL$lx = load i64, i64* %envptr9741, align 8                                      ; load; *envptr9741
  %envptr9742 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9743 = getelementptr inbounds i64, i64* %envptr9742, i64 4                  ; &envptr9742[4]
  %q7X$ly = load i64, i64* %envptr9743, align 8                                      ; load; *envptr9743
  %envptr9744 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9745 = getelementptr inbounds i64, i64* %envptr9744, i64 3                  ; &envptr9744[3]
  %zSj$_37drop = load i64, i64* %envptr9745, align 8                                 ; load; *envptr9745
  %envptr9746 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9747 = getelementptr inbounds i64, i64* %envptr9746, i64 2                  ; &envptr9746[2]
  %a7038 = load i64, i64* %envptr9747, align 8                                       ; load; *envptr9747
  %envptr9748 = inttoptr i64 %env8298 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9749 = getelementptr inbounds i64, i64* %envptr9748, i64 1                  ; &envptr9748[1]
  %a7041 = load i64, i64* %envptr9749, align 8                                       ; load; *envptr9749
  %cmp9750 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9750, label %else9752, label %then9751                                   ; if

then9751:
  %a7043 = call i64 @prim__45(i64 %q7X$ly, i64 %hLL$lx)                              ; call prim__45
  %cloptr9753 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9755 = getelementptr inbounds i64, i64* %cloptr9753, i64 1                    ; &eptr9755[1]
  %eptr9756 = getelementptr inbounds i64, i64* %cloptr9753, i64 2                    ; &eptr9756[2]
  %eptr9757 = getelementptr inbounds i64, i64* %cloptr9753, i64 3                    ; &eptr9757[3]
  store i64 %a7041, i64* %eptr9755                                                   ; *eptr9755 = %a7041
  store i64 %a7038, i64* %eptr9756                                                   ; *eptr9756 = %a7038
  store i64 %cont7133, i64* %eptr9757                                                ; *eptr9757 = %cont7133
  %eptr9754 = getelementptr inbounds i64, i64* %cloptr9753, i64 0                    ; &cloptr9753[0]
  %f9758 = ptrtoint void(i64,i64,i64)* @lam8292 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9758, i64* %eptr9754                                                   ; store fptr
  %arg7706 = ptrtoint i64* %cloptr9753 to i64                                        ; closure cast; i64* -> i64
  %cloptr9759 = inttoptr i64 %zSj$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9759)                                         ; assert function application
  %i0ptr9760 = getelementptr inbounds i64, i64* %cloptr9759, i64 0                   ; &cloptr9759[0]
  %f9762 = load i64, i64* %i0ptr9760, align 8                                        ; load; *i0ptr9760
  %fptr9761 = inttoptr i64 %f9762 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9761(i64 %zSj$_37drop, i64 %arg7706, i64 %J0Z$y, i64 %a7043); tail call
  ret void

else9752:
  %cloptr9763 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9765 = getelementptr inbounds i64, i64* %cloptr9763, i64 1                    ; &eptr9765[1]
  %eptr9766 = getelementptr inbounds i64, i64* %cloptr9763, i64 2                    ; &eptr9766[2]
  %eptr9767 = getelementptr inbounds i64, i64* %cloptr9763, i64 3                    ; &eptr9767[3]
  store i64 %a7041, i64* %eptr9765                                                   ; *eptr9765 = %a7041
  store i64 %a7038, i64* %eptr9766                                                   ; *eptr9766 = %a7038
  store i64 %cont7133, i64* %eptr9767                                                ; *eptr9767 = %cont7133
  %eptr9764 = getelementptr inbounds i64, i64* %cloptr9763, i64 0                    ; &cloptr9763[0]
  %f9768 = ptrtoint void(i64,i64,i64)* @lam8295 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9768, i64* %eptr9764                                                   ; store fptr
  %arg7714 = ptrtoint i64* %cloptr9763 to i64                                        ; closure cast; i64* -> i64
  %arg7713 = add i64 0, 0                                                            ; quoted ()
  %cloptr9769 = inttoptr i64 %arg7714 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9769)                                         ; assert function application
  %i0ptr9770 = getelementptr inbounds i64, i64* %cloptr9769, i64 0                   ; &cloptr9769[0]
  %f9772 = load i64, i64* %i0ptr9770, align 8                                        ; load; *i0ptr9770
  %fptr9771 = inttoptr i64 %f9772 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9771(i64 %arg7714, i64 %arg7713, i64 %J0Z$y)        ; tail call
  ret void
}


define void @lam8295(i64 %env8296, i64 %_957141, i64 %a7044) {
  %envptr9773 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9774 = getelementptr inbounds i64, i64* %envptr9773, i64 3                  ; &envptr9773[3]
  %cont7133 = load i64, i64* %envptr9774, align 8                                    ; load; *envptr9774
  %envptr9775 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9776 = getelementptr inbounds i64, i64* %envptr9775, i64 2                  ; &envptr9775[2]
  %a7038 = load i64, i64* %envptr9776, align 8                                       ; load; *envptr9776
  %envptr9777 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9778 = getelementptr inbounds i64, i64* %envptr9777, i64 1                  ; &envptr9777[1]
  %a7041 = load i64, i64* %envptr9778, align 8                                       ; load; *envptr9778
  %cloptr9779 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9779)                                         ; assert function application
  %i0ptr9780 = getelementptr inbounds i64, i64* %cloptr9779, i64 0                   ; &cloptr9779[0]
  %f9782 = load i64, i64* %i0ptr9780, align 8                                        ; load; *i0ptr9780
  %fptr9781 = inttoptr i64 %f9782 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9781(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8292(i64 %env8293, i64 %_957141, i64 %a7044) {
  %envptr9783 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9784 = getelementptr inbounds i64, i64* %envptr9783, i64 3                  ; &envptr9783[3]
  %cont7133 = load i64, i64* %envptr9784, align 8                                    ; load; *envptr9784
  %envptr9785 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9786 = getelementptr inbounds i64, i64* %envptr9785, i64 2                  ; &envptr9785[2]
  %a7038 = load i64, i64* %envptr9786, align 8                                       ; load; *envptr9786
  %envptr9787 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9788 = getelementptr inbounds i64, i64* %envptr9787, i64 1                  ; &envptr9787[1]
  %a7041 = load i64, i64* %envptr9788, align 8                                       ; load; *envptr9788
  %cloptr9789 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9789)                                         ; assert function application
  %i0ptr9790 = getelementptr inbounds i64, i64* %cloptr9789, i64 0                   ; &cloptr9789[0]
  %f9792 = load i64, i64* %i0ptr9790, align 8                                        ; load; *i0ptr9790
  %fptr9791 = inttoptr i64 %f9792 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9791(i64 %a7038, i64 %cont7133, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8289(i64 %env8290, i64 %cont7146, i64 %fHI$new) {
  %envptr9793 = inttoptr i64 %env8290 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9794 = getelementptr inbounds i64, i64* %envptr9793, i64 2                  ; &envptr9793[2]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9794, align 8                         ; load; *envptr9794
  %envptr9795 = inttoptr i64 %env8290 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9796 = getelementptr inbounds i64, i64* %envptr9795, i64 1                  ; &envptr9795[1]
  %eD3$_37common_45tail = load i64, i64* %envptr9796, align 8                        ; load; *envptr9796
  %arg7743 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7045 = call i64 @prim_vector_45ref(i64 %Cdq$_37wind_45stack, i64 %arg7743)       ; call prim_vector_45ref
  %cloptr9797 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9799 = getelementptr inbounds i64, i64* %cloptr9797, i64 1                    ; &eptr9799[1]
  %eptr9800 = getelementptr inbounds i64, i64* %cloptr9797, i64 2                    ; &eptr9800[2]
  %eptr9801 = getelementptr inbounds i64, i64* %cloptr9797, i64 3                    ; &eptr9801[3]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9799                                     ; *eptr9799 = %Cdq$_37wind_45stack
  store i64 %cont7146, i64* %eptr9800                                                ; *eptr9800 = %cont7146
  store i64 %fHI$new, i64* %eptr9801                                                 ; *eptr9801 = %fHI$new
  %eptr9798 = getelementptr inbounds i64, i64* %cloptr9797, i64 0                    ; &cloptr9797[0]
  %f9802 = ptrtoint void(i64,i64,i64)* @lam8286 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9802, i64* %eptr9798                                                   ; store fptr
  %arg7747 = ptrtoint i64* %cloptr9797 to i64                                        ; closure cast; i64* -> i64
  %cloptr9803 = inttoptr i64 %eD3$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9803)                                         ; assert function application
  %i0ptr9804 = getelementptr inbounds i64, i64* %cloptr9803, i64 0                   ; &cloptr9803[0]
  %f9806 = load i64, i64* %i0ptr9804, align 8                                        ; load; *i0ptr9804
  %fptr9805 = inttoptr i64 %f9806 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9805(i64 %eD3$_37common_45tail, i64 %arg7747, i64 %fHI$new, i64 %a7045); tail call
  ret void
}


define void @lam8286(i64 %env8287, i64 %_957147, i64 %LDH$tail) {
  %envptr9807 = inttoptr i64 %env8287 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9808 = getelementptr inbounds i64, i64* %envptr9807, i64 3                  ; &envptr9807[3]
  %fHI$new = load i64, i64* %envptr9808, align 8                                     ; load; *envptr9808
  %envptr9809 = inttoptr i64 %env8287 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9810 = getelementptr inbounds i64, i64* %envptr9809, i64 2                  ; &envptr9809[2]
  %cont7146 = load i64, i64* %envptr9810, align 8                                    ; load; *envptr9810
  %envptr9811 = inttoptr i64 %env8287 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9812 = getelementptr inbounds i64, i64* %envptr9811, i64 1                  ; &envptr9811[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9812, align 8                         ; load; *envptr9812
  %cloptr9813 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9814 = getelementptr inbounds i64, i64* %cloptr9813, i64 0                    ; &cloptr9813[0]
  %f9815 = ptrtoint void(i64,i64)* @lam8284 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9815, i64* %eptr9814                                                   ; store fptr
  %arg7750 = ptrtoint i64* %cloptr9813 to i64                                        ; closure cast; i64* -> i64
  %cloptr9816 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9818 = getelementptr inbounds i64, i64* %cloptr9816, i64 1                    ; &eptr9818[1]
  %eptr9819 = getelementptr inbounds i64, i64* %cloptr9816, i64 2                    ; &eptr9819[2]
  %eptr9820 = getelementptr inbounds i64, i64* %cloptr9816, i64 3                    ; &eptr9820[3]
  %eptr9821 = getelementptr inbounds i64, i64* %cloptr9816, i64 4                    ; &eptr9821[4]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9818                                     ; *eptr9818 = %Cdq$_37wind_45stack
  store i64 %cont7146, i64* %eptr9819                                                ; *eptr9819 = %cont7146
  store i64 %LDH$tail, i64* %eptr9820                                                ; *eptr9820 = %LDH$tail
  store i64 %fHI$new, i64* %eptr9821                                                 ; *eptr9821 = %fHI$new
  %eptr9817 = getelementptr inbounds i64, i64* %cloptr9816, i64 0                    ; &cloptr9816[0]
  %f9822 = ptrtoint void(i64,i64,i64)* @lam8281 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9822, i64* %eptr9817                                                   ; store fptr
  %arg7749 = ptrtoint i64* %cloptr9816 to i64                                        ; closure cast; i64* -> i64
  %cloptr9823 = inttoptr i64 %arg7750 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9823)                                         ; assert function application
  %i0ptr9824 = getelementptr inbounds i64, i64* %cloptr9823, i64 0                   ; &cloptr9823[0]
  %f9826 = load i64, i64* %i0ptr9824, align 8                                        ; load; *i0ptr9824
  %fptr9825 = inttoptr i64 %f9826 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9825(i64 %arg7750, i64 %arg7749)                    ; tail call
  ret void
}


define void @lam8284(i64 %env8285, i64 %vyX$lst7168) {
  %cont7167 = call i64 @prim_car(i64 %vyX$lst7168)                                   ; call prim_car
  %vyX$lst = call i64 @prim_cdr(i64 %vyX$lst7168)                                    ; call prim_cdr
  %arg7754 = add i64 0, 0                                                            ; quoted ()
  %cloptr9827 = inttoptr i64 %cont7167 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9827)                                         ; assert function application
  %i0ptr9828 = getelementptr inbounds i64, i64* %cloptr9827, i64 0                   ; &cloptr9827[0]
  %f9830 = load i64, i64* %i0ptr9828, align 8                                        ; load; *i0ptr9828
  %fptr9829 = inttoptr i64 %f9830 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9829(i64 %cont7167, i64 %arg7754, i64 %vyX$lst)     ; tail call
  ret void
}


define void @lam8281(i64 %env8282, i64 %_957165, i64 %a7046) {
  %envptr9831 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9832 = getelementptr inbounds i64, i64* %envptr9831, i64 4                  ; &envptr9831[4]
  %fHI$new = load i64, i64* %envptr9832, align 8                                     ; load; *envptr9832
  %envptr9833 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9834 = getelementptr inbounds i64, i64* %envptr9833, i64 3                  ; &envptr9833[3]
  %LDH$tail = load i64, i64* %envptr9834, align 8                                    ; load; *envptr9834
  %envptr9835 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9836 = getelementptr inbounds i64, i64* %envptr9835, i64 2                  ; &envptr9835[2]
  %cont7146 = load i64, i64* %envptr9836, align 8                                    ; load; *envptr9836
  %envptr9837 = inttoptr i64 %env8282 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9838 = getelementptr inbounds i64, i64* %envptr9837, i64 1                  ; &envptr9837[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9838, align 8                         ; load; *envptr9838
  %arg7757 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7166 = call i64 @prim_make_45vector(i64 %arg7757, i64 %a7046)              ; call prim_make_45vector
  %cloptr9839 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9841 = getelementptr inbounds i64, i64* %cloptr9839, i64 1                    ; &eptr9841[1]
  %eptr9842 = getelementptr inbounds i64, i64* %cloptr9839, i64 2                    ; &eptr9842[2]
  %eptr9843 = getelementptr inbounds i64, i64* %cloptr9839, i64 3                    ; &eptr9843[3]
  %eptr9844 = getelementptr inbounds i64, i64* %cloptr9839, i64 4                    ; &eptr9844[4]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9841                                     ; *eptr9841 = %Cdq$_37wind_45stack
  store i64 %cont7146, i64* %eptr9842                                                ; *eptr9842 = %cont7146
  store i64 %LDH$tail, i64* %eptr9843                                                ; *eptr9843 = %LDH$tail
  store i64 %fHI$new, i64* %eptr9844                                                 ; *eptr9844 = %fHI$new
  %eptr9840 = getelementptr inbounds i64, i64* %cloptr9839, i64 0                    ; &cloptr9839[0]
  %f9845 = ptrtoint void(i64,i64,i64)* @lam8278 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9845, i64* %eptr9840                                                   ; store fptr
  %arg7760 = ptrtoint i64* %cloptr9839 to i64                                        ; closure cast; i64* -> i64
  %arg7759 = add i64 0, 0                                                            ; quoted ()
  %cloptr9846 = inttoptr i64 %arg7760 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9846)                                         ; assert function application
  %i0ptr9847 = getelementptr inbounds i64, i64* %cloptr9846, i64 0                   ; &cloptr9846[0]
  %f9849 = load i64, i64* %i0ptr9847, align 8                                        ; load; *i0ptr9847
  %fptr9848 = inttoptr i64 %f9849 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9848(i64 %arg7760, i64 %arg7759, i64 %retprim7166)  ; tail call
  ret void
}


define void @lam8278(i64 %env8279, i64 %_957159, i64 %LVv$f) {
  %envptr9850 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9851 = getelementptr inbounds i64, i64* %envptr9850, i64 4                  ; &envptr9850[4]
  %fHI$new = load i64, i64* %envptr9851, align 8                                     ; load; *envptr9851
  %envptr9852 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9853 = getelementptr inbounds i64, i64* %envptr9852, i64 3                  ; &envptr9852[3]
  %LDH$tail = load i64, i64* %envptr9853, align 8                                    ; load; *envptr9853
  %envptr9854 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9855 = getelementptr inbounds i64, i64* %envptr9854, i64 2                  ; &envptr9854[2]
  %cont7146 = load i64, i64* %envptr9855, align 8                                    ; load; *envptr9855
  %envptr9856 = inttoptr i64 %env8279 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9857 = getelementptr inbounds i64, i64* %envptr9856, i64 1                  ; &envptr9856[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9857, align 8                         ; load; *envptr9857
  %arg7762 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9858 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9860 = getelementptr inbounds i64, i64* %cloptr9858, i64 1                    ; &eptr9860[1]
  %eptr9861 = getelementptr inbounds i64, i64* %cloptr9858, i64 2                    ; &eptr9861[2]
  %eptr9862 = getelementptr inbounds i64, i64* %cloptr9858, i64 3                    ; &eptr9862[3]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9860                                     ; *eptr9860 = %Cdq$_37wind_45stack
  store i64 %LDH$tail, i64* %eptr9861                                                ; *eptr9861 = %LDH$tail
  store i64 %LVv$f, i64* %eptr9862                                                   ; *eptr9862 = %LVv$f
  %eptr9859 = getelementptr inbounds i64, i64* %cloptr9858, i64 0                    ; &cloptr9858[0]
  %f9863 = ptrtoint void(i64,i64,i64)* @lam8275 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9863, i64* %eptr9859                                                   ; store fptr
  %arg7761 = ptrtoint i64* %cloptr9858 to i64                                        ; closure cast; i64* -> i64
  %rAG$_956939 = call i64 @prim_vector_45set_33(i64 %LVv$f, i64 %arg7762, i64 %arg7761); call prim_vector_45set_33
  %arg7787 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7054 = call i64 @prim_vector_45ref(i64 %LVv$f, i64 %arg7787)                     ; call prim_vector_45ref
  %arg7789 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7055 = call i64 @prim_vector_45ref(i64 %Cdq$_37wind_45stack, i64 %arg7789)       ; call prim_vector_45ref
  %cloptr9864 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9866 = getelementptr inbounds i64, i64* %cloptr9864, i64 1                    ; &eptr9866[1]
  %eptr9867 = getelementptr inbounds i64, i64* %cloptr9864, i64 2                    ; &eptr9867[2]
  %eptr9868 = getelementptr inbounds i64, i64* %cloptr9864, i64 3                    ; &eptr9868[3]
  %eptr9869 = getelementptr inbounds i64, i64* %cloptr9864, i64 4                    ; &eptr9869[4]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9866                                     ; *eptr9866 = %Cdq$_37wind_45stack
  store i64 %cont7146, i64* %eptr9867                                                ; *eptr9867 = %cont7146
  store i64 %LDH$tail, i64* %eptr9868                                                ; *eptr9868 = %LDH$tail
  store i64 %fHI$new, i64* %eptr9869                                                 ; *eptr9869 = %fHI$new
  %eptr9865 = getelementptr inbounds i64, i64* %cloptr9864, i64 0                    ; &cloptr9864[0]
  %f9870 = ptrtoint void(i64,i64,i64)* @lam8263 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9870, i64* %eptr9865                                                   ; store fptr
  %arg7792 = ptrtoint i64* %cloptr9864 to i64                                        ; closure cast; i64* -> i64
  %cloptr9871 = inttoptr i64 %a7054 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9871)                                         ; assert function application
  %i0ptr9872 = getelementptr inbounds i64, i64* %cloptr9871, i64 0                   ; &cloptr9871[0]
  %f9874 = load i64, i64* %i0ptr9872, align 8                                        ; load; *i0ptr9872
  %fptr9873 = inttoptr i64 %f9874 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9873(i64 %a7054, i64 %arg7792, i64 %a7055)          ; tail call
  ret void
}


define void @lam8275(i64 %env8276, i64 %cont7160, i64 %LIP$l) {
  %envptr9875 = inttoptr i64 %env8276 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9876 = getelementptr inbounds i64, i64* %envptr9875, i64 3                  ; &envptr9875[3]
  %LVv$f = load i64, i64* %envptr9876, align 8                                       ; load; *envptr9876
  %envptr9877 = inttoptr i64 %env8276 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9878 = getelementptr inbounds i64, i64* %envptr9877, i64 2                  ; &envptr9877[2]
  %LDH$tail = load i64, i64* %envptr9878, align 8                                    ; load; *envptr9878
  %envptr9879 = inttoptr i64 %env8276 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9880 = getelementptr inbounds i64, i64* %envptr9879, i64 1                  ; &envptr9879[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9880, align 8                         ; load; *envptr9880
  %a7047 = call i64 @prim_eq_63(i64 %LIP$l, i64 %LDH$tail)                           ; call prim_eq_63
  %a7048 = call i64 @prim_not(i64 %a7047)                                            ; call prim_not
  %cmp9881 = icmp eq i64 %a7048, 15                                                  ; false?
  br i1 %cmp9881, label %else9883, label %then9882                                   ; if

then9882:
  %a7049 = call i64 @prim_cdr(i64 %LIP$l)                                            ; call prim_cdr
  %arg7769 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7163 = call i64 @prim_vector_45set_33(i64 %Cdq$_37wind_45stack, i64 %arg7769, i64 %a7049); call prim_vector_45set_33
  %cloptr9884 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9886 = getelementptr inbounds i64, i64* %cloptr9884, i64 1                    ; &eptr9886[1]
  %eptr9887 = getelementptr inbounds i64, i64* %cloptr9884, i64 2                    ; &eptr9887[2]
  %eptr9888 = getelementptr inbounds i64, i64* %cloptr9884, i64 3                    ; &eptr9888[3]
  store i64 %LVv$f, i64* %eptr9886                                                   ; *eptr9886 = %LVv$f
  store i64 %cont7160, i64* %eptr9887                                                ; *eptr9887 = %cont7160
  store i64 %LIP$l, i64* %eptr9888                                                   ; *eptr9888 = %LIP$l
  %eptr9885 = getelementptr inbounds i64, i64* %cloptr9884, i64 0                    ; &cloptr9884[0]
  %f9889 = ptrtoint void(i64,i64,i64)* @lam8271 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9889, i64* %eptr9885                                                   ; store fptr
  %arg7773 = ptrtoint i64* %cloptr9884 to i64                                        ; closure cast; i64* -> i64
  %arg7772 = add i64 0, 0                                                            ; quoted ()
  %cloptr9890 = inttoptr i64 %arg7773 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9890)                                         ; assert function application
  %i0ptr9891 = getelementptr inbounds i64, i64* %cloptr9890, i64 0                   ; &cloptr9890[0]
  %f9893 = load i64, i64* %i0ptr9891, align 8                                        ; load; *i0ptr9891
  %fptr9892 = inttoptr i64 %f9893 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9892(i64 %arg7773, i64 %arg7772, i64 %retprim7163)  ; tail call
  ret void

else9883:
  %retprim7164 = call i64 @prim_void()                                               ; call prim_void
  %arg7785 = add i64 0, 0                                                            ; quoted ()
  %cloptr9894 = inttoptr i64 %cont7160 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9894)                                         ; assert function application
  %i0ptr9895 = getelementptr inbounds i64, i64* %cloptr9894, i64 0                   ; &cloptr9894[0]
  %f9897 = load i64, i64* %i0ptr9895, align 8                                        ; load; *i0ptr9895
  %fptr9896 = inttoptr i64 %f9897 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9896(i64 %cont7160, i64 %arg7785, i64 %retprim7164) ; tail call
  ret void
}


define void @lam8271(i64 %env8272, i64 %_957161, i64 %Js8$_956940) {
  %envptr9898 = inttoptr i64 %env8272 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9899 = getelementptr inbounds i64, i64* %envptr9898, i64 3                  ; &envptr9898[3]
  %LIP$l = load i64, i64* %envptr9899, align 8                                       ; load; *envptr9899
  %envptr9900 = inttoptr i64 %env8272 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9901 = getelementptr inbounds i64, i64* %envptr9900, i64 2                  ; &envptr9900[2]
  %cont7160 = load i64, i64* %envptr9901, align 8                                    ; load; *envptr9901
  %envptr9902 = inttoptr i64 %env8272 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9903 = getelementptr inbounds i64, i64* %envptr9902, i64 1                  ; &envptr9902[1]
  %LVv$f = load i64, i64* %envptr9903, align 8                                       ; load; *envptr9903
  %a7050 = call i64 @prim_car(i64 %LIP$l)                                            ; call prim_car
  %a7051 = call i64 @prim_cdr(i64 %a7050)                                            ; call prim_cdr
  %cloptr9904 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9906 = getelementptr inbounds i64, i64* %cloptr9904, i64 1                    ; &eptr9906[1]
  %eptr9907 = getelementptr inbounds i64, i64* %cloptr9904, i64 2                    ; &eptr9907[2]
  %eptr9908 = getelementptr inbounds i64, i64* %cloptr9904, i64 3                    ; &eptr9908[3]
  store i64 %LVv$f, i64* %eptr9906                                                   ; *eptr9906 = %LVv$f
  store i64 %cont7160, i64* %eptr9907                                                ; *eptr9907 = %cont7160
  store i64 %LIP$l, i64* %eptr9908                                                   ; *eptr9908 = %LIP$l
  %eptr9905 = getelementptr inbounds i64, i64* %cloptr9904, i64 0                    ; &cloptr9904[0]
  %f9909 = ptrtoint void(i64,i64,i64)* @lam8269 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9909, i64* %eptr9905                                                   ; store fptr
  %arg7776 = ptrtoint i64* %cloptr9904 to i64                                        ; closure cast; i64* -> i64
  %cloptr9910 = inttoptr i64 %a7051 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9910)                                         ; assert function application
  %i0ptr9911 = getelementptr inbounds i64, i64* %cloptr9910, i64 0                   ; &cloptr9910[0]
  %f9913 = load i64, i64* %i0ptr9911, align 8                                        ; load; *i0ptr9911
  %fptr9912 = inttoptr i64 %f9913 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9912(i64 %a7051, i64 %arg7776)                      ; tail call
  ret void
}


define void @lam8269(i64 %env8270, i64 %_957162, i64 %ZKg$_956941) {
  %envptr9914 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9915 = getelementptr inbounds i64, i64* %envptr9914, i64 3                  ; &envptr9914[3]
  %LIP$l = load i64, i64* %envptr9915, align 8                                       ; load; *envptr9915
  %envptr9916 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9917 = getelementptr inbounds i64, i64* %envptr9916, i64 2                  ; &envptr9916[2]
  %cont7160 = load i64, i64* %envptr9917, align 8                                    ; load; *envptr9917
  %envptr9918 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9919 = getelementptr inbounds i64, i64* %envptr9918, i64 1                  ; &envptr9918[1]
  %LVv$f = load i64, i64* %envptr9919, align 8                                       ; load; *envptr9919
  %arg7778 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7052 = call i64 @prim_vector_45ref(i64 %LVv$f, i64 %arg7778)                     ; call prim_vector_45ref
  %a7053 = call i64 @prim_cdr(i64 %LIP$l)                                            ; call prim_cdr
  %cloptr9920 = inttoptr i64 %a7052 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9920)                                         ; assert function application
  %i0ptr9921 = getelementptr inbounds i64, i64* %cloptr9920, i64 0                   ; &cloptr9920[0]
  %f9923 = load i64, i64* %i0ptr9921, align 8                                        ; load; *i0ptr9921
  %fptr9922 = inttoptr i64 %f9923 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9922(i64 %a7052, i64 %cont7160, i64 %a7053)         ; tail call
  ret void
}


define void @lam8263(i64 %env8264, i64 %_957148, i64 %VH0$_956938) {
  %envptr9924 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9925 = getelementptr inbounds i64, i64* %envptr9924, i64 4                  ; &envptr9924[4]
  %fHI$new = load i64, i64* %envptr9925, align 8                                     ; load; *envptr9925
  %envptr9926 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9927 = getelementptr inbounds i64, i64* %envptr9926, i64 3                  ; &envptr9926[3]
  %LDH$tail = load i64, i64* %envptr9927, align 8                                    ; load; *envptr9927
  %envptr9928 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9929 = getelementptr inbounds i64, i64* %envptr9928, i64 2                  ; &envptr9928[2]
  %cont7146 = load i64, i64* %envptr9929, align 8                                    ; load; *envptr9929
  %envptr9930 = inttoptr i64 %env8264 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9931 = getelementptr inbounds i64, i64* %envptr9930, i64 1                  ; &envptr9930[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9931, align 8                         ; load; *envptr9931
  %cloptr9932 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9933 = getelementptr inbounds i64, i64* %cloptr9932, i64 0                    ; &cloptr9932[0]
  %f9934 = ptrtoint void(i64,i64)* @lam8261 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9934, i64* %eptr9933                                                   ; store fptr
  %arg7795 = ptrtoint i64* %cloptr9932 to i64                                        ; closure cast; i64* -> i64
  %cloptr9935 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9937 = getelementptr inbounds i64, i64* %cloptr9935, i64 1                    ; &eptr9937[1]
  %eptr9938 = getelementptr inbounds i64, i64* %cloptr9935, i64 2                    ; &eptr9938[2]
  %eptr9939 = getelementptr inbounds i64, i64* %cloptr9935, i64 3                    ; &eptr9939[3]
  %eptr9940 = getelementptr inbounds i64, i64* %cloptr9935, i64 4                    ; &eptr9940[4]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9937                                     ; *eptr9937 = %Cdq$_37wind_45stack
  store i64 %cont7146, i64* %eptr9938                                                ; *eptr9938 = %cont7146
  store i64 %LDH$tail, i64* %eptr9939                                                ; *eptr9939 = %LDH$tail
  store i64 %fHI$new, i64* %eptr9940                                                 ; *eptr9940 = %fHI$new
  %eptr9936 = getelementptr inbounds i64, i64* %cloptr9935, i64 0                    ; &cloptr9935[0]
  %f9941 = ptrtoint void(i64,i64,i64)* @lam8258 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9941, i64* %eptr9936                                                   ; store fptr
  %arg7794 = ptrtoint i64* %cloptr9935 to i64                                        ; closure cast; i64* -> i64
  %cloptr9942 = inttoptr i64 %arg7795 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9942)                                         ; assert function application
  %i0ptr9943 = getelementptr inbounds i64, i64* %cloptr9942, i64 0                   ; &cloptr9942[0]
  %f9945 = load i64, i64* %i0ptr9943, align 8                                        ; load; *i0ptr9943
  %fptr9944 = inttoptr i64 %f9945 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9944(i64 %arg7795, i64 %arg7794)                    ; tail call
  ret void
}


define void @lam8261(i64 %env8262, i64 %m2Z$lst7158) {
  %cont7157 = call i64 @prim_car(i64 %m2Z$lst7158)                                   ; call prim_car
  %m2Z$lst = call i64 @prim_cdr(i64 %m2Z$lst7158)                                    ; call prim_cdr
  %arg7799 = add i64 0, 0                                                            ; quoted ()
  %cloptr9946 = inttoptr i64 %cont7157 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9946)                                         ; assert function application
  %i0ptr9947 = getelementptr inbounds i64, i64* %cloptr9946, i64 0                   ; &cloptr9946[0]
  %f9949 = load i64, i64* %i0ptr9947, align 8                                        ; load; *i0ptr9947
  %fptr9948 = inttoptr i64 %f9949 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9948(i64 %cont7157, i64 %arg7799, i64 %m2Z$lst)     ; tail call
  ret void
}


define void @lam8258(i64 %env8259, i64 %_957155, i64 %a7056) {
  %envptr9950 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9951 = getelementptr inbounds i64, i64* %envptr9950, i64 4                  ; &envptr9950[4]
  %fHI$new = load i64, i64* %envptr9951, align 8                                     ; load; *envptr9951
  %envptr9952 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9953 = getelementptr inbounds i64, i64* %envptr9952, i64 3                  ; &envptr9952[3]
  %LDH$tail = load i64, i64* %envptr9953, align 8                                    ; load; *envptr9953
  %envptr9954 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9955 = getelementptr inbounds i64, i64* %envptr9954, i64 2                  ; &envptr9954[2]
  %cont7146 = load i64, i64* %envptr9955, align 8                                    ; load; *envptr9955
  %envptr9956 = inttoptr i64 %env8259 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9957 = getelementptr inbounds i64, i64* %envptr9956, i64 1                  ; &envptr9956[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9957, align 8                         ; load; *envptr9957
  %arg7802 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7156 = call i64 @prim_make_45vector(i64 %arg7802, i64 %a7056)              ; call prim_make_45vector
  %cloptr9958 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9960 = getelementptr inbounds i64, i64* %cloptr9958, i64 1                    ; &eptr9960[1]
  %eptr9961 = getelementptr inbounds i64, i64* %cloptr9958, i64 2                    ; &eptr9961[2]
  %eptr9962 = getelementptr inbounds i64, i64* %cloptr9958, i64 3                    ; &eptr9962[3]
  %eptr9963 = getelementptr inbounds i64, i64* %cloptr9958, i64 4                    ; &eptr9963[4]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9960                                     ; *eptr9960 = %Cdq$_37wind_45stack
  store i64 %cont7146, i64* %eptr9961                                                ; *eptr9961 = %cont7146
  store i64 %LDH$tail, i64* %eptr9962                                                ; *eptr9962 = %LDH$tail
  store i64 %fHI$new, i64* %eptr9963                                                 ; *eptr9963 = %fHI$new
  %eptr9959 = getelementptr inbounds i64, i64* %cloptr9958, i64 0                    ; &cloptr9958[0]
  %f9964 = ptrtoint void(i64,i64,i64)* @lam8255 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9964, i64* %eptr9959                                                   ; store fptr
  %arg7805 = ptrtoint i64* %cloptr9958 to i64                                        ; closure cast; i64* -> i64
  %arg7804 = add i64 0, 0                                                            ; quoted ()
  %cloptr9965 = inttoptr i64 %arg7805 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9965)                                         ; assert function application
  %i0ptr9966 = getelementptr inbounds i64, i64* %cloptr9965, i64 0                   ; &cloptr9965[0]
  %f9968 = load i64, i64* %i0ptr9966, align 8                                        ; load; *i0ptr9966
  %fptr9967 = inttoptr i64 %f9968 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9967(i64 %arg7805, i64 %arg7804, i64 %retprim7156)  ; tail call
  ret void
}


define void @lam8255(i64 %env8256, i64 %_957149, i64 %jnd$f) {
  %envptr9969 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9970 = getelementptr inbounds i64, i64* %envptr9969, i64 4                  ; &envptr9969[4]
  %fHI$new = load i64, i64* %envptr9970, align 8                                     ; load; *envptr9970
  %envptr9971 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9972 = getelementptr inbounds i64, i64* %envptr9971, i64 3                  ; &envptr9971[3]
  %LDH$tail = load i64, i64* %envptr9972, align 8                                    ; load; *envptr9972
  %envptr9973 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9974 = getelementptr inbounds i64, i64* %envptr9973, i64 2                  ; &envptr9973[2]
  %cont7146 = load i64, i64* %envptr9974, align 8                                    ; load; *envptr9974
  %envptr9975 = inttoptr i64 %env8256 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9976 = getelementptr inbounds i64, i64* %envptr9975, i64 1                  ; &envptr9975[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9976, align 8                         ; load; *envptr9976
  %arg7807 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9977 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9979 = getelementptr inbounds i64, i64* %cloptr9977, i64 1                    ; &eptr9979[1]
  %eptr9980 = getelementptr inbounds i64, i64* %cloptr9977, i64 2                    ; &eptr9980[2]
  %eptr9981 = getelementptr inbounds i64, i64* %cloptr9977, i64 3                    ; &eptr9981[3]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9979                                     ; *eptr9979 = %Cdq$_37wind_45stack
  store i64 %jnd$f, i64* %eptr9980                                                   ; *eptr9980 = %jnd$f
  store i64 %LDH$tail, i64* %eptr9981                                                ; *eptr9981 = %LDH$tail
  %eptr9978 = getelementptr inbounds i64, i64* %cloptr9977, i64 0                    ; &cloptr9977[0]
  %f9982 = ptrtoint void(i64,i64,i64)* @lam8252 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9982, i64* %eptr9978                                                   ; store fptr
  %arg7806 = ptrtoint i64* %cloptr9977 to i64                                        ; closure cast; i64* -> i64
  %mwa$_956942 = call i64 @prim_vector_45set_33(i64 %jnd$f, i64 %arg7807, i64 %arg7806); call prim_vector_45set_33
  %arg7831 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7063 = call i64 @prim_vector_45ref(i64 %jnd$f, i64 %arg7831)                     ; call prim_vector_45ref
  %cloptr9983 = inttoptr i64 %a7063 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9983)                                         ; assert function application
  %i0ptr9984 = getelementptr inbounds i64, i64* %cloptr9983, i64 0                   ; &cloptr9983[0]
  %f9986 = load i64, i64* %i0ptr9984, align 8                                        ; load; *i0ptr9984
  %fptr9985 = inttoptr i64 %f9986 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9985(i64 %a7063, i64 %cont7146, i64 %fHI$new)       ; tail call
  ret void
}


define void @lam8252(i64 %env8253, i64 %cont7150, i64 %EyG$l) {
  %envptr9987 = inttoptr i64 %env8253 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9988 = getelementptr inbounds i64, i64* %envptr9987, i64 3                  ; &envptr9987[3]
  %LDH$tail = load i64, i64* %envptr9988, align 8                                    ; load; *envptr9988
  %envptr9989 = inttoptr i64 %env8253 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9990 = getelementptr inbounds i64, i64* %envptr9989, i64 2                  ; &envptr9989[2]
  %jnd$f = load i64, i64* %envptr9990, align 8                                       ; load; *envptr9990
  %envptr9991 = inttoptr i64 %env8253 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9992 = getelementptr inbounds i64, i64* %envptr9991, i64 1                  ; &envptr9991[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr9992, align 8                         ; load; *envptr9992
  %a7057 = call i64 @prim_eq_63(i64 %EyG$l, i64 %LDH$tail)                           ; call prim_eq_63
  %a7058 = call i64 @prim_not(i64 %a7057)                                            ; call prim_not
  %cmp9993 = icmp eq i64 %a7058, 15                                                  ; false?
  br i1 %cmp9993, label %else9995, label %then9994                                   ; if

then9994:
  %arg7812 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7059 = call i64 @prim_vector_45ref(i64 %jnd$f, i64 %arg7812)                     ; call prim_vector_45ref
  %a7060 = call i64 @prim_cdr(i64 %EyG$l)                                            ; call prim_cdr
  %cloptr9996 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9998 = getelementptr inbounds i64, i64* %cloptr9996, i64 1                    ; &eptr9998[1]
  %eptr9999 = getelementptr inbounds i64, i64* %cloptr9996, i64 2                    ; &eptr9999[2]
  %eptr10000 = getelementptr inbounds i64, i64* %cloptr9996, i64 3                   ; &eptr10000[3]
  store i64 %Cdq$_37wind_45stack, i64* %eptr9998                                     ; *eptr9998 = %Cdq$_37wind_45stack
  store i64 %EyG$l, i64* %eptr9999                                                   ; *eptr9999 = %EyG$l
  store i64 %cont7150, i64* %eptr10000                                               ; *eptr10000 = %cont7150
  %eptr9997 = getelementptr inbounds i64, i64* %cloptr9996, i64 0                    ; &cloptr9996[0]
  %f10001 = ptrtoint void(i64,i64,i64)* @lam8248 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10001, i64* %eptr9997                                                  ; store fptr
  %arg7816 = ptrtoint i64* %cloptr9996 to i64                                        ; closure cast; i64* -> i64
  %cloptr10002 = inttoptr i64 %a7059 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10002)                                        ; assert function application
  %i0ptr10003 = getelementptr inbounds i64, i64* %cloptr10002, i64 0                 ; &cloptr10002[0]
  %f10005 = load i64, i64* %i0ptr10003, align 8                                      ; load; *i0ptr10003
  %fptr10004 = inttoptr i64 %f10005 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10004(i64 %a7059, i64 %arg7816, i64 %a7060)         ; tail call
  ret void

else9995:
  %retprim7154 = call i64 @prim_void()                                               ; call prim_void
  %arg7829 = add i64 0, 0                                                            ; quoted ()
  %cloptr10006 = inttoptr i64 %cont7150 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10006)                                        ; assert function application
  %i0ptr10007 = getelementptr inbounds i64, i64* %cloptr10006, i64 0                 ; &cloptr10006[0]
  %f10009 = load i64, i64* %i0ptr10007, align 8                                      ; load; *i0ptr10007
  %fptr10008 = inttoptr i64 %f10009 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10008(i64 %cont7150, i64 %arg7829, i64 %retprim7154); tail call
  ret void
}


define void @lam8248(i64 %env8249, i64 %_957151, i64 %BdP$_956943) {
  %envptr10010 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10011 = getelementptr inbounds i64, i64* %envptr10010, i64 3                ; &envptr10010[3]
  %cont7150 = load i64, i64* %envptr10011, align 8                                   ; load; *envptr10011
  %envptr10012 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10013 = getelementptr inbounds i64, i64* %envptr10012, i64 2                ; &envptr10012[2]
  %EyG$l = load i64, i64* %envptr10013, align 8                                      ; load; *envptr10013
  %envptr10014 = inttoptr i64 %env8249 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10015 = getelementptr inbounds i64, i64* %envptr10014, i64 1                ; &envptr10014[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr10015, align 8                        ; load; *envptr10015
  %a7061 = call i64 @prim_car(i64 %EyG$l)                                            ; call prim_car
  %a7062 = call i64 @prim_car(i64 %a7061)                                            ; call prim_car
  %cloptr10016 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10018 = getelementptr inbounds i64, i64* %cloptr10016, i64 1                  ; &eptr10018[1]
  %eptr10019 = getelementptr inbounds i64, i64* %cloptr10016, i64 2                  ; &eptr10019[2]
  %eptr10020 = getelementptr inbounds i64, i64* %cloptr10016, i64 3                  ; &eptr10020[3]
  store i64 %Cdq$_37wind_45stack, i64* %eptr10018                                    ; *eptr10018 = %Cdq$_37wind_45stack
  store i64 %EyG$l, i64* %eptr10019                                                  ; *eptr10019 = %EyG$l
  store i64 %cont7150, i64* %eptr10020                                               ; *eptr10020 = %cont7150
  %eptr10017 = getelementptr inbounds i64, i64* %cloptr10016, i64 0                  ; &cloptr10016[0]
  %f10021 = ptrtoint void(i64,i64,i64)* @lam8246 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10021, i64* %eptr10017                                                 ; store fptr
  %arg7820 = ptrtoint i64* %cloptr10016 to i64                                       ; closure cast; i64* -> i64
  %cloptr10022 = inttoptr i64 %a7062 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10022)                                        ; assert function application
  %i0ptr10023 = getelementptr inbounds i64, i64* %cloptr10022, i64 0                 ; &cloptr10022[0]
  %f10025 = load i64, i64* %i0ptr10023, align 8                                      ; load; *i0ptr10023
  %fptr10024 = inttoptr i64 %f10025 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10024(i64 %a7062, i64 %arg7820)                     ; tail call
  ret void
}


define void @lam8246(i64 %env8247, i64 %_957152, i64 %gjh$_956944) {
  %envptr10026 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10027 = getelementptr inbounds i64, i64* %envptr10026, i64 3                ; &envptr10026[3]
  %cont7150 = load i64, i64* %envptr10027, align 8                                   ; load; *envptr10027
  %envptr10028 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10029 = getelementptr inbounds i64, i64* %envptr10028, i64 2                ; &envptr10028[2]
  %EyG$l = load i64, i64* %envptr10029, align 8                                      ; load; *envptr10029
  %envptr10030 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10031 = getelementptr inbounds i64, i64* %envptr10030, i64 1                ; &envptr10030[1]
  %Cdq$_37wind_45stack = load i64, i64* %envptr10031, align 8                        ; load; *envptr10031
  %arg7823 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7153 = call i64 @prim_vector_45set_33(i64 %Cdq$_37wind_45stack, i64 %arg7823, i64 %EyG$l); call prim_vector_45set_33
  %arg7826 = add i64 0, 0                                                            ; quoted ()
  %cloptr10032 = inttoptr i64 %cont7150 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10032)                                        ; assert function application
  %i0ptr10033 = getelementptr inbounds i64, i64* %cloptr10032, i64 0                 ; &cloptr10032[0]
  %f10035 = load i64, i64* %i0ptr10033, align 8                                      ; load; *i0ptr10033
  %fptr10034 = inttoptr i64 %f10035 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10034(i64 %cont7150, i64 %arg7826, i64 %retprim7153); tail call
  ret void
}


define void @lam8238(i64 %env8239, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr10036 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10036)                                        ; assert function application
  %i0ptr10037 = getelementptr inbounds i64, i64* %cloptr10036, i64 0                 ; &cloptr10036[0]
  %f10039 = load i64, i64* %i0ptr10037, align 8                                      ; load; *i0ptr10037
  %fptr10038 = inttoptr i64 %f10039 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10038(i64 %_951, i64 %_951)                         ; tail call
  ret void
}


define void @lam8231(i64 %env8232, i64 %cont7180, i64 %f5J$_37foldl) {
  %envptr10040 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10041 = getelementptr inbounds i64, i64* %envptr10040, i64 3                ; &envptr10040[3]
  %kAb$_37foldr = load i64, i64* %envptr10041, align 8                               ; load; *envptr10041
  %envptr10042 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10043 = getelementptr inbounds i64, i64* %envptr10042, i64 2                ; &envptr10042[2]
  %UkN$_37map1 = load i64, i64* %envptr10043, align 8                                ; load; *envptr10043
  %envptr10044 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10045 = getelementptr inbounds i64, i64* %envptr10044, i64 1                ; &envptr10044[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10045, align 8                              ; load; *envptr10045
  %arg7844 = add i64 0, 0                                                            ; quoted ()
  %cloptr10046 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10048 = getelementptr inbounds i64, i64* %cloptr10046, i64 1                  ; &eptr10048[1]
  %eptr10049 = getelementptr inbounds i64, i64* %cloptr10046, i64 2                  ; &eptr10049[2]
  %eptr10050 = getelementptr inbounds i64, i64* %cloptr10046, i64 3                  ; &eptr10050[3]
  %eptr10051 = getelementptr inbounds i64, i64* %cloptr10046, i64 4                  ; &eptr10051[4]
  store i64 %f5J$_37foldl, i64* %eptr10048                                           ; *eptr10048 = %f5J$_37foldl
  store i64 %VJi$_37foldr1, i64* %eptr10049                                          ; *eptr10049 = %VJi$_37foldr1
  store i64 %UkN$_37map1, i64* %eptr10050                                            ; *eptr10050 = %UkN$_37map1
  store i64 %kAb$_37foldr, i64* %eptr10051                                           ; *eptr10051 = %kAb$_37foldr
  %eptr10047 = getelementptr inbounds i64, i64* %cloptr10046, i64 0                  ; &cloptr10046[0]
  %f10052 = ptrtoint void(i64,i64)* @lam8228 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10052, i64* %eptr10047                                                 ; store fptr
  %arg7843 = ptrtoint i64* %cloptr10046 to i64                                       ; closure cast; i64* -> i64
  %cloptr10053 = inttoptr i64 %cont7180 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10053)                                        ; assert function application
  %i0ptr10054 = getelementptr inbounds i64, i64* %cloptr10053, i64 0                 ; &cloptr10053[0]
  %f10056 = load i64, i64* %i0ptr10054, align 8                                      ; load; *i0ptr10054
  %fptr10055 = inttoptr i64 %f10056 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10055(i64 %cont7180, i64 %arg7844, i64 %arg7843)    ; tail call
  ret void
}


define void @lam8228(i64 %env8229, i64 %Z01$args7182) {
  %envptr10057 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10058 = getelementptr inbounds i64, i64* %envptr10057, i64 4                ; &envptr10057[4]
  %kAb$_37foldr = load i64, i64* %envptr10058, align 8                               ; load; *envptr10058
  %envptr10059 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10060 = getelementptr inbounds i64, i64* %envptr10059, i64 3                ; &envptr10059[3]
  %UkN$_37map1 = load i64, i64* %envptr10060, align 8                                ; load; *envptr10060
  %envptr10061 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10062 = getelementptr inbounds i64, i64* %envptr10061, i64 2                ; &envptr10061[2]
  %VJi$_37foldr1 = load i64, i64* %envptr10062, align 8                              ; load; *envptr10062
  %envptr10063 = inttoptr i64 %env8229 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10064 = getelementptr inbounds i64, i64* %envptr10063, i64 1                ; &envptr10063[1]
  %f5J$_37foldl = load i64, i64* %envptr10064, align 8                               ; load; *envptr10064
  %cont7181 = call i64 @prim_car(i64 %Z01$args7182)                                  ; call prim_car
  %Z01$args = call i64 @prim_cdr(i64 %Z01$args7182)                                  ; call prim_cdr
  %FtF$f = call i64 @prim_car(i64 %Z01$args)                                         ; call prim_car
  %a6985 = call i64 @prim_cdr(i64 %Z01$args)                                         ; call prim_cdr
  %retprim7201 = call i64 @prim_car(i64 %a6985)                                      ; call prim_car
  %cloptr10065 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10067 = getelementptr inbounds i64, i64* %cloptr10065, i64 1                  ; &eptr10067[1]
  %eptr10068 = getelementptr inbounds i64, i64* %cloptr10065, i64 2                  ; &eptr10068[2]
  %eptr10069 = getelementptr inbounds i64, i64* %cloptr10065, i64 3                  ; &eptr10069[3]
  %eptr10070 = getelementptr inbounds i64, i64* %cloptr10065, i64 4                  ; &eptr10070[4]
  %eptr10071 = getelementptr inbounds i64, i64* %cloptr10065, i64 5                  ; &eptr10071[5]
  %eptr10072 = getelementptr inbounds i64, i64* %cloptr10065, i64 6                  ; &eptr10072[6]
  %eptr10073 = getelementptr inbounds i64, i64* %cloptr10065, i64 7                  ; &eptr10073[7]
  store i64 %f5J$_37foldl, i64* %eptr10067                                           ; *eptr10067 = %f5J$_37foldl
  store i64 %FtF$f, i64* %eptr10068                                                  ; *eptr10068 = %FtF$f
  store i64 %cont7181, i64* %eptr10069                                               ; *eptr10069 = %cont7181
  store i64 %VJi$_37foldr1, i64* %eptr10070                                          ; *eptr10070 = %VJi$_37foldr1
  store i64 %UkN$_37map1, i64* %eptr10071                                            ; *eptr10071 = %UkN$_37map1
  store i64 %Z01$args, i64* %eptr10072                                               ; *eptr10072 = %Z01$args
  store i64 %kAb$_37foldr, i64* %eptr10073                                           ; *eptr10073 = %kAb$_37foldr
  %eptr10066 = getelementptr inbounds i64, i64* %cloptr10065, i64 0                  ; &cloptr10065[0]
  %f10074 = ptrtoint void(i64,i64,i64)* @lam8226 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10074, i64* %eptr10066                                                 ; store fptr
  %arg7853 = ptrtoint i64* %cloptr10065 to i64                                       ; closure cast; i64* -> i64
  %arg7852 = add i64 0, 0                                                            ; quoted ()
  %cloptr10075 = inttoptr i64 %arg7853 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10075)                                        ; assert function application
  %i0ptr10076 = getelementptr inbounds i64, i64* %cloptr10075, i64 0                 ; &cloptr10075[0]
  %f10078 = load i64, i64* %i0ptr10076, align 8                                      ; load; *i0ptr10076
  %fptr10077 = inttoptr i64 %f10078 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10077(i64 %arg7853, i64 %arg7852, i64 %retprim7201) ; tail call
  ret void
}


define void @lam8226(i64 %env8227, i64 %_957183, i64 %Su3$acc) {
  %envptr10079 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10080 = getelementptr inbounds i64, i64* %envptr10079, i64 7                ; &envptr10079[7]
  %kAb$_37foldr = load i64, i64* %envptr10080, align 8                               ; load; *envptr10080
  %envptr10081 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10082 = getelementptr inbounds i64, i64* %envptr10081, i64 6                ; &envptr10081[6]
  %Z01$args = load i64, i64* %envptr10082, align 8                                   ; load; *envptr10082
  %envptr10083 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10084 = getelementptr inbounds i64, i64* %envptr10083, i64 5                ; &envptr10083[5]
  %UkN$_37map1 = load i64, i64* %envptr10084, align 8                                ; load; *envptr10084
  %envptr10085 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10086 = getelementptr inbounds i64, i64* %envptr10085, i64 4                ; &envptr10085[4]
  %VJi$_37foldr1 = load i64, i64* %envptr10086, align 8                              ; load; *envptr10086
  %envptr10087 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10088 = getelementptr inbounds i64, i64* %envptr10087, i64 3                ; &envptr10087[3]
  %cont7181 = load i64, i64* %envptr10088, align 8                                   ; load; *envptr10088
  %envptr10089 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10090 = getelementptr inbounds i64, i64* %envptr10089, i64 2                ; &envptr10089[2]
  %FtF$f = load i64, i64* %envptr10090, align 8                                      ; load; *envptr10090
  %envptr10091 = inttoptr i64 %env8227 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10092 = getelementptr inbounds i64, i64* %envptr10091, i64 1                ; &envptr10091[1]
  %f5J$_37foldl = load i64, i64* %envptr10092, align 8                               ; load; *envptr10092
  %a6986 = call i64 @prim_cdr(i64 %Z01$args)                                         ; call prim_cdr
  %retprim7200 = call i64 @prim_cdr(i64 %a6986)                                      ; call prim_cdr
  %cloptr10093 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10095 = getelementptr inbounds i64, i64* %cloptr10093, i64 1                  ; &eptr10095[1]
  %eptr10096 = getelementptr inbounds i64, i64* %cloptr10093, i64 2                  ; &eptr10096[2]
  %eptr10097 = getelementptr inbounds i64, i64* %cloptr10093, i64 3                  ; &eptr10097[3]
  %eptr10098 = getelementptr inbounds i64, i64* %cloptr10093, i64 4                  ; &eptr10098[4]
  %eptr10099 = getelementptr inbounds i64, i64* %cloptr10093, i64 5                  ; &eptr10099[5]
  %eptr10100 = getelementptr inbounds i64, i64* %cloptr10093, i64 6                  ; &eptr10100[6]
  %eptr10101 = getelementptr inbounds i64, i64* %cloptr10093, i64 7                  ; &eptr10101[7]
  store i64 %f5J$_37foldl, i64* %eptr10095                                           ; *eptr10095 = %f5J$_37foldl
  store i64 %FtF$f, i64* %eptr10096                                                  ; *eptr10096 = %FtF$f
  store i64 %cont7181, i64* %eptr10097                                               ; *eptr10097 = %cont7181
  store i64 %VJi$_37foldr1, i64* %eptr10098                                          ; *eptr10098 = %VJi$_37foldr1
  store i64 %UkN$_37map1, i64* %eptr10099                                            ; *eptr10099 = %UkN$_37map1
  store i64 %Su3$acc, i64* %eptr10100                                                ; *eptr10100 = %Su3$acc
  store i64 %kAb$_37foldr, i64* %eptr10101                                           ; *eptr10101 = %kAb$_37foldr
  %eptr10094 = getelementptr inbounds i64, i64* %cloptr10093, i64 0                  ; &cloptr10093[0]
  %f10102 = ptrtoint void(i64,i64,i64)* @lam8224 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10102, i64* %eptr10094                                                 ; store fptr
  %arg7858 = ptrtoint i64* %cloptr10093 to i64                                       ; closure cast; i64* -> i64
  %arg7857 = add i64 0, 0                                                            ; quoted ()
  %cloptr10103 = inttoptr i64 %arg7858 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10103)                                        ; assert function application
  %i0ptr10104 = getelementptr inbounds i64, i64* %cloptr10103, i64 0                 ; &cloptr10103[0]
  %f10106 = load i64, i64* %i0ptr10104, align 8                                      ; load; *i0ptr10104
  %fptr10105 = inttoptr i64 %f10106 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10105(i64 %arg7858, i64 %arg7857, i64 %retprim7200) ; tail call
  ret void
}


define void @lam8224(i64 %env8225, i64 %_957184, i64 %a4H$lsts) {
  %envptr10107 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10108 = getelementptr inbounds i64, i64* %envptr10107, i64 7                ; &envptr10107[7]
  %kAb$_37foldr = load i64, i64* %envptr10108, align 8                               ; load; *envptr10108
  %envptr10109 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10110 = getelementptr inbounds i64, i64* %envptr10109, i64 6                ; &envptr10109[6]
  %Su3$acc = load i64, i64* %envptr10110, align 8                                    ; load; *envptr10110
  %envptr10111 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10112 = getelementptr inbounds i64, i64* %envptr10111, i64 5                ; &envptr10111[5]
  %UkN$_37map1 = load i64, i64* %envptr10112, align 8                                ; load; *envptr10112
  %envptr10113 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10114 = getelementptr inbounds i64, i64* %envptr10113, i64 4                ; &envptr10113[4]
  %VJi$_37foldr1 = load i64, i64* %envptr10114, align 8                              ; load; *envptr10114
  %envptr10115 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10116 = getelementptr inbounds i64, i64* %envptr10115, i64 3                ; &envptr10115[3]
  %cont7181 = load i64, i64* %envptr10116, align 8                                   ; load; *envptr10116
  %envptr10117 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10118 = getelementptr inbounds i64, i64* %envptr10117, i64 2                ; &envptr10117[2]
  %FtF$f = load i64, i64* %envptr10118, align 8                                      ; load; *envptr10118
  %envptr10119 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10120 = getelementptr inbounds i64, i64* %envptr10119, i64 1                ; &envptr10119[1]
  %f5J$_37foldl = load i64, i64* %envptr10120, align 8                               ; load; *envptr10120
  %cloptr10121 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10123 = getelementptr inbounds i64, i64* %cloptr10121, i64 1                  ; &eptr10123[1]
  %eptr10124 = getelementptr inbounds i64, i64* %cloptr10121, i64 2                  ; &eptr10124[2]
  %eptr10125 = getelementptr inbounds i64, i64* %cloptr10121, i64 3                  ; &eptr10125[3]
  %eptr10126 = getelementptr inbounds i64, i64* %cloptr10121, i64 4                  ; &eptr10126[4]
  %eptr10127 = getelementptr inbounds i64, i64* %cloptr10121, i64 5                  ; &eptr10127[5]
  %eptr10128 = getelementptr inbounds i64, i64* %cloptr10121, i64 6                  ; &eptr10128[6]
  %eptr10129 = getelementptr inbounds i64, i64* %cloptr10121, i64 7                  ; &eptr10129[7]
  store i64 %f5J$_37foldl, i64* %eptr10123                                           ; *eptr10123 = %f5J$_37foldl
  store i64 %FtF$f, i64* %eptr10124                                                  ; *eptr10124 = %FtF$f
  store i64 %cont7181, i64* %eptr10125                                               ; *eptr10125 = %cont7181
  store i64 %a4H$lsts, i64* %eptr10126                                               ; *eptr10126 = %a4H$lsts
  store i64 %UkN$_37map1, i64* %eptr10127                                            ; *eptr10127 = %UkN$_37map1
  store i64 %Su3$acc, i64* %eptr10128                                                ; *eptr10128 = %Su3$acc
  store i64 %kAb$_37foldr, i64* %eptr10129                                           ; *eptr10129 = %kAb$_37foldr
  %eptr10122 = getelementptr inbounds i64, i64* %cloptr10121, i64 0                  ; &cloptr10121[0]
  %f10130 = ptrtoint void(i64,i64,i64)* @lam8222 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10130, i64* %eptr10122                                                 ; store fptr
  %arg7862 = ptrtoint i64* %cloptr10121 to i64                                       ; closure cast; i64* -> i64
  %cloptr10131 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10132 = getelementptr inbounds i64, i64* %cloptr10131, i64 0                  ; &cloptr10131[0]
  %f10133 = ptrtoint void(i64,i64,i64,i64)* @lam8201 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10133, i64* %eptr10132                                                 ; store fptr
  %arg7861 = ptrtoint i64* %cloptr10131 to i64                                       ; closure cast; i64* -> i64
  %arg7860 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10134 = inttoptr i64 %VJi$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10134)                                        ; assert function application
  %i0ptr10135 = getelementptr inbounds i64, i64* %cloptr10134, i64 0                 ; &cloptr10134[0]
  %f10137 = load i64, i64* %i0ptr10135, align 8                                      ; load; *i0ptr10135
  %fptr10136 = inttoptr i64 %f10137 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10136(i64 %VJi$_37foldr1, i64 %arg7862, i64 %arg7861, i64 %arg7860, i64 %a4H$lsts); tail call
  ret void
}


define void @lam8222(i64 %env8223, i64 %_957185, i64 %a6987) {
  %envptr10138 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10139 = getelementptr inbounds i64, i64* %envptr10138, i64 7                ; &envptr10138[7]
  %kAb$_37foldr = load i64, i64* %envptr10139, align 8                               ; load; *envptr10139
  %envptr10140 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10141 = getelementptr inbounds i64, i64* %envptr10140, i64 6                ; &envptr10140[6]
  %Su3$acc = load i64, i64* %envptr10141, align 8                                    ; load; *envptr10141
  %envptr10142 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10143 = getelementptr inbounds i64, i64* %envptr10142, i64 5                ; &envptr10142[5]
  %UkN$_37map1 = load i64, i64* %envptr10143, align 8                                ; load; *envptr10143
  %envptr10144 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10145 = getelementptr inbounds i64, i64* %envptr10144, i64 4                ; &envptr10144[4]
  %a4H$lsts = load i64, i64* %envptr10145, align 8                                   ; load; *envptr10145
  %envptr10146 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10147 = getelementptr inbounds i64, i64* %envptr10146, i64 3                ; &envptr10146[3]
  %cont7181 = load i64, i64* %envptr10147, align 8                                   ; load; *envptr10147
  %envptr10148 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10149 = getelementptr inbounds i64, i64* %envptr10148, i64 2                ; &envptr10148[2]
  %FtF$f = load i64, i64* %envptr10149, align 8                                      ; load; *envptr10149
  %envptr10150 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10151 = getelementptr inbounds i64, i64* %envptr10150, i64 1                ; &envptr10150[1]
  %f5J$_37foldl = load i64, i64* %envptr10151, align 8                               ; load; *envptr10151
  %cmp10152 = icmp eq i64 %a6987, 15                                                 ; false?
  br i1 %cmp10152, label %else10154, label %then10153                                ; if

then10153:
  %arg7865 = add i64 0, 0                                                            ; quoted ()
  %cloptr10155 = inttoptr i64 %cont7181 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10155)                                        ; assert function application
  %i0ptr10156 = getelementptr inbounds i64, i64* %cloptr10155, i64 0                 ; &cloptr10155[0]
  %f10158 = load i64, i64* %i0ptr10156, align 8                                      ; load; *i0ptr10156
  %fptr10157 = inttoptr i64 %f10158 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10157(i64 %cont7181, i64 %arg7865, i64 %Su3$acc)    ; tail call
  ret void

else10154:
  %cloptr10159 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10161 = getelementptr inbounds i64, i64* %cloptr10159, i64 1                  ; &eptr10161[1]
  %eptr10162 = getelementptr inbounds i64, i64* %cloptr10159, i64 2                  ; &eptr10162[2]
  %eptr10163 = getelementptr inbounds i64, i64* %cloptr10159, i64 3                  ; &eptr10163[3]
  %eptr10164 = getelementptr inbounds i64, i64* %cloptr10159, i64 4                  ; &eptr10164[4]
  %eptr10165 = getelementptr inbounds i64, i64* %cloptr10159, i64 5                  ; &eptr10165[5]
  %eptr10166 = getelementptr inbounds i64, i64* %cloptr10159, i64 6                  ; &eptr10166[6]
  %eptr10167 = getelementptr inbounds i64, i64* %cloptr10159, i64 7                  ; &eptr10167[7]
  store i64 %f5J$_37foldl, i64* %eptr10161                                           ; *eptr10161 = %f5J$_37foldl
  store i64 %FtF$f, i64* %eptr10162                                                  ; *eptr10162 = %FtF$f
  store i64 %cont7181, i64* %eptr10163                                               ; *eptr10163 = %cont7181
  store i64 %a4H$lsts, i64* %eptr10164                                               ; *eptr10164 = %a4H$lsts
  store i64 %UkN$_37map1, i64* %eptr10165                                            ; *eptr10165 = %UkN$_37map1
  store i64 %Su3$acc, i64* %eptr10166                                                ; *eptr10166 = %Su3$acc
  store i64 %kAb$_37foldr, i64* %eptr10167                                           ; *eptr10167 = %kAb$_37foldr
  %eptr10160 = getelementptr inbounds i64, i64* %cloptr10159, i64 0                  ; &cloptr10159[0]
  %f10168 = ptrtoint void(i64,i64,i64)* @lam8220 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10168, i64* %eptr10160                                                 ; store fptr
  %arg7869 = ptrtoint i64* %cloptr10159 to i64                                       ; closure cast; i64* -> i64
  %cloptr10169 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10170 = getelementptr inbounds i64, i64* %cloptr10169, i64 0                  ; &cloptr10169[0]
  %f10171 = ptrtoint void(i64,i64,i64)* @lam8205 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10171, i64* %eptr10170                                                 ; store fptr
  %arg7868 = ptrtoint i64* %cloptr10169 to i64                                       ; closure cast; i64* -> i64
  %cloptr10172 = inttoptr i64 %UkN$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10172)                                        ; assert function application
  %i0ptr10173 = getelementptr inbounds i64, i64* %cloptr10172, i64 0                 ; &cloptr10172[0]
  %f10175 = load i64, i64* %i0ptr10173, align 8                                      ; load; *i0ptr10173
  %fptr10174 = inttoptr i64 %f10175 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10174(i64 %UkN$_37map1, i64 %arg7869, i64 %arg7868, i64 %a4H$lsts); tail call
  ret void
}


define void @lam8220(i64 %env8221, i64 %_957186, i64 %DK8$lsts_43) {
  %envptr10176 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10177 = getelementptr inbounds i64, i64* %envptr10176, i64 7                ; &envptr10176[7]
  %kAb$_37foldr = load i64, i64* %envptr10177, align 8                               ; load; *envptr10177
  %envptr10178 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10179 = getelementptr inbounds i64, i64* %envptr10178, i64 6                ; &envptr10178[6]
  %Su3$acc = load i64, i64* %envptr10179, align 8                                    ; load; *envptr10179
  %envptr10180 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10181 = getelementptr inbounds i64, i64* %envptr10180, i64 5                ; &envptr10180[5]
  %UkN$_37map1 = load i64, i64* %envptr10181, align 8                                ; load; *envptr10181
  %envptr10182 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10183 = getelementptr inbounds i64, i64* %envptr10182, i64 4                ; &envptr10182[4]
  %a4H$lsts = load i64, i64* %envptr10183, align 8                                   ; load; *envptr10183
  %envptr10184 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10185 = getelementptr inbounds i64, i64* %envptr10184, i64 3                ; &envptr10184[3]
  %cont7181 = load i64, i64* %envptr10185, align 8                                   ; load; *envptr10185
  %envptr10186 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10187 = getelementptr inbounds i64, i64* %envptr10186, i64 2                ; &envptr10186[2]
  %FtF$f = load i64, i64* %envptr10187, align 8                                      ; load; *envptr10187
  %envptr10188 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10189 = getelementptr inbounds i64, i64* %envptr10188, i64 1                ; &envptr10188[1]
  %f5J$_37foldl = load i64, i64* %envptr10189, align 8                               ; load; *envptr10189
  %cloptr10190 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10192 = getelementptr inbounds i64, i64* %cloptr10190, i64 1                  ; &eptr10192[1]
  %eptr10193 = getelementptr inbounds i64, i64* %cloptr10190, i64 2                  ; &eptr10193[2]
  %eptr10194 = getelementptr inbounds i64, i64* %cloptr10190, i64 3                  ; &eptr10194[3]
  %eptr10195 = getelementptr inbounds i64, i64* %cloptr10190, i64 4                  ; &eptr10195[4]
  %eptr10196 = getelementptr inbounds i64, i64* %cloptr10190, i64 5                  ; &eptr10196[5]
  %eptr10197 = getelementptr inbounds i64, i64* %cloptr10190, i64 6                  ; &eptr10197[6]
  store i64 %f5J$_37foldl, i64* %eptr10192                                           ; *eptr10192 = %f5J$_37foldl
  store i64 %DK8$lsts_43, i64* %eptr10193                                            ; *eptr10193 = %DK8$lsts_43
  store i64 %FtF$f, i64* %eptr10194                                                  ; *eptr10194 = %FtF$f
  store i64 %cont7181, i64* %eptr10195                                               ; *eptr10195 = %cont7181
  store i64 %Su3$acc, i64* %eptr10196                                                ; *eptr10196 = %Su3$acc
  store i64 %kAb$_37foldr, i64* %eptr10197                                           ; *eptr10197 = %kAb$_37foldr
  %eptr10191 = getelementptr inbounds i64, i64* %cloptr10190, i64 0                  ; &cloptr10190[0]
  %f10198 = ptrtoint void(i64,i64,i64)* @lam8218 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10198, i64* %eptr10191                                                 ; store fptr
  %arg7873 = ptrtoint i64* %cloptr10190 to i64                                       ; closure cast; i64* -> i64
  %cloptr10199 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10200 = getelementptr inbounds i64, i64* %cloptr10199, i64 0                  ; &cloptr10199[0]
  %f10201 = ptrtoint void(i64,i64,i64)* @lam8208 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10201, i64* %eptr10200                                                 ; store fptr
  %arg7872 = ptrtoint i64* %cloptr10199 to i64                                       ; closure cast; i64* -> i64
  %cloptr10202 = inttoptr i64 %UkN$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10202)                                        ; assert function application
  %i0ptr10203 = getelementptr inbounds i64, i64* %cloptr10202, i64 0                 ; &cloptr10202[0]
  %f10205 = load i64, i64* %i0ptr10203, align 8                                      ; load; *i0ptr10203
  %fptr10204 = inttoptr i64 %f10205 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10204(i64 %UkN$_37map1, i64 %arg7873, i64 %arg7872, i64 %a4H$lsts); tail call
  ret void
}


define void @lam8218(i64 %env8219, i64 %_957187, i64 %wwA$vs) {
  %envptr10206 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10207 = getelementptr inbounds i64, i64* %envptr10206, i64 6                ; &envptr10206[6]
  %kAb$_37foldr = load i64, i64* %envptr10207, align 8                               ; load; *envptr10207
  %envptr10208 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10209 = getelementptr inbounds i64, i64* %envptr10208, i64 5                ; &envptr10208[5]
  %Su3$acc = load i64, i64* %envptr10209, align 8                                    ; load; *envptr10209
  %envptr10210 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10211 = getelementptr inbounds i64, i64* %envptr10210, i64 4                ; &envptr10210[4]
  %cont7181 = load i64, i64* %envptr10211, align 8                                   ; load; *envptr10211
  %envptr10212 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10213 = getelementptr inbounds i64, i64* %envptr10212, i64 3                ; &envptr10212[3]
  %FtF$f = load i64, i64* %envptr10213, align 8                                      ; load; *envptr10213
  %envptr10214 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10215 = getelementptr inbounds i64, i64* %envptr10214, i64 2                ; &envptr10214[2]
  %DK8$lsts_43 = load i64, i64* %envptr10215, align 8                                ; load; *envptr10215
  %envptr10216 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10217 = getelementptr inbounds i64, i64* %envptr10216, i64 1                ; &envptr10216[1]
  %f5J$_37foldl = load i64, i64* %envptr10217, align 8                               ; load; *envptr10217
  %arg7875 = add i64 0, 0                                                            ; quoted ()
  %a6988 = call i64 @prim_cons(i64 %Su3$acc, i64 %arg7875)                           ; call prim_cons
  %cloptr10218 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10220 = getelementptr inbounds i64, i64* %cloptr10218, i64 1                  ; &eptr10220[1]
  %eptr10221 = getelementptr inbounds i64, i64* %cloptr10218, i64 2                  ; &eptr10221[2]
  %eptr10222 = getelementptr inbounds i64, i64* %cloptr10218, i64 3                  ; &eptr10222[3]
  %eptr10223 = getelementptr inbounds i64, i64* %cloptr10218, i64 4                  ; &eptr10223[4]
  store i64 %f5J$_37foldl, i64* %eptr10220                                           ; *eptr10220 = %f5J$_37foldl
  store i64 %DK8$lsts_43, i64* %eptr10221                                            ; *eptr10221 = %DK8$lsts_43
  store i64 %FtF$f, i64* %eptr10222                                                  ; *eptr10222 = %FtF$f
  store i64 %cont7181, i64* %eptr10223                                               ; *eptr10223 = %cont7181
  %eptr10219 = getelementptr inbounds i64, i64* %cloptr10218, i64 0                  ; &cloptr10218[0]
  %f10224 = ptrtoint void(i64,i64,i64)* @lam8215 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10224, i64* %eptr10219                                                 ; store fptr
  %arg7880 = ptrtoint i64* %cloptr10218 to i64                                       ; closure cast; i64* -> i64
  %cloptr10225 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10226 = getelementptr inbounds i64, i64* %cloptr10225, i64 0                  ; &cloptr10225[0]
  %f10227 = ptrtoint void(i64,i64,i64,i64)* @lam8211 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10227, i64* %eptr10226                                                 ; store fptr
  %arg7879 = ptrtoint i64* %cloptr10225 to i64                                       ; closure cast; i64* -> i64
  %cloptr10228 = inttoptr i64 %kAb$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10228)                                        ; assert function application
  %i0ptr10229 = getelementptr inbounds i64, i64* %cloptr10228, i64 0                 ; &cloptr10228[0]
  %f10231 = load i64, i64* %i0ptr10229, align 8                                      ; load; *i0ptr10229
  %fptr10230 = inttoptr i64 %f10231 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10230(i64 %kAb$_37foldr, i64 %arg7880, i64 %arg7879, i64 %a6988, i64 %wwA$vs); tail call
  ret void
}


define void @lam8215(i64 %env8216, i64 %_957190, i64 %a6989) {
  %envptr10232 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10233 = getelementptr inbounds i64, i64* %envptr10232, i64 4                ; &envptr10232[4]
  %cont7181 = load i64, i64* %envptr10233, align 8                                   ; load; *envptr10233
  %envptr10234 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10235 = getelementptr inbounds i64, i64* %envptr10234, i64 3                ; &envptr10234[3]
  %FtF$f = load i64, i64* %envptr10235, align 8                                      ; load; *envptr10235
  %envptr10236 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10237 = getelementptr inbounds i64, i64* %envptr10236, i64 2                ; &envptr10236[2]
  %DK8$lsts_43 = load i64, i64* %envptr10237, align 8                                ; load; *envptr10237
  %envptr10238 = inttoptr i64 %env8216 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10239 = getelementptr inbounds i64, i64* %envptr10238, i64 1                ; &envptr10238[1]
  %f5J$_37foldl = load i64, i64* %envptr10239, align 8                               ; load; *envptr10239
  %cloptr10240 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10242 = getelementptr inbounds i64, i64* %cloptr10240, i64 1                  ; &eptr10242[1]
  %eptr10243 = getelementptr inbounds i64, i64* %cloptr10240, i64 2                  ; &eptr10243[2]
  %eptr10244 = getelementptr inbounds i64, i64* %cloptr10240, i64 3                  ; &eptr10244[3]
  %eptr10245 = getelementptr inbounds i64, i64* %cloptr10240, i64 4                  ; &eptr10245[4]
  store i64 %f5J$_37foldl, i64* %eptr10242                                           ; *eptr10242 = %f5J$_37foldl
  store i64 %DK8$lsts_43, i64* %eptr10243                                            ; *eptr10243 = %DK8$lsts_43
  store i64 %FtF$f, i64* %eptr10244                                                  ; *eptr10244 = %FtF$f
  store i64 %cont7181, i64* %eptr10245                                               ; *eptr10245 = %cont7181
  %eptr10241 = getelementptr inbounds i64, i64* %cloptr10240, i64 0                  ; &cloptr10240[0]
  %f10246 = ptrtoint void(i64,i64,i64)* @lam8213 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10246, i64* %eptr10241                                                 ; store fptr
  %arg7883 = ptrtoint i64* %cloptr10240 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7191 = call i64 @prim_cons(i64 %arg7883, i64 %a6989)                     ; call prim_cons
  %cloptr10247 = inttoptr i64 %FtF$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10247)                                        ; assert function application
  %i0ptr10248 = getelementptr inbounds i64, i64* %cloptr10247, i64 0                 ; &cloptr10247[0]
  %f10250 = load i64, i64* %i0ptr10248, align 8                                      ; load; *i0ptr10248
  %fptr10249 = inttoptr i64 %f10250 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10249(i64 %FtF$f, i64 %cps_45lst7191)               ; tail call
  ret void
}


define void @lam8213(i64 %env8214, i64 %_957188, i64 %opC$acc_43) {
  %envptr10251 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10252 = getelementptr inbounds i64, i64* %envptr10251, i64 4                ; &envptr10251[4]
  %cont7181 = load i64, i64* %envptr10252, align 8                                   ; load; *envptr10252
  %envptr10253 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10254 = getelementptr inbounds i64, i64* %envptr10253, i64 3                ; &envptr10253[3]
  %FtF$f = load i64, i64* %envptr10254, align 8                                      ; load; *envptr10254
  %envptr10255 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10256 = getelementptr inbounds i64, i64* %envptr10255, i64 2                ; &envptr10255[2]
  %DK8$lsts_43 = load i64, i64* %envptr10256, align 8                                ; load; *envptr10256
  %envptr10257 = inttoptr i64 %env8214 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10258 = getelementptr inbounds i64, i64* %envptr10257, i64 1                ; &envptr10257[1]
  %f5J$_37foldl = load i64, i64* %envptr10258, align 8                               ; load; *envptr10258
  %a6990 = call i64 @prim_cons(i64 %opC$acc_43, i64 %DK8$lsts_43)                    ; call prim_cons
  %a6991 = call i64 @prim_cons(i64 %FtF$f, i64 %a6990)                               ; call prim_cons
  %cps_45lst7189 = call i64 @prim_cons(i64 %cont7181, i64 %a6991)                    ; call prim_cons
  %cloptr10259 = inttoptr i64 %f5J$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10259)                                        ; assert function application
  %i0ptr10260 = getelementptr inbounds i64, i64* %cloptr10259, i64 0                 ; &cloptr10259[0]
  %f10262 = load i64, i64* %i0ptr10260, align 8                                      ; load; *i0ptr10260
  %fptr10261 = inttoptr i64 %f10262 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10261(i64 %f5J$_37foldl, i64 %cps_45lst7189)        ; tail call
  ret void
}


define void @lam8211(i64 %env8212, i64 %cont7192, i64 %mSM$a, i64 %C6d$b) {
  %retprim7193 = call i64 @prim_cons(i64 %mSM$a, i64 %C6d$b)                         ; call prim_cons
  %arg7893 = add i64 0, 0                                                            ; quoted ()
  %cloptr10263 = inttoptr i64 %cont7192 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10263)                                        ; assert function application
  %i0ptr10264 = getelementptr inbounds i64, i64* %cloptr10263, i64 0                 ; &cloptr10263[0]
  %f10266 = load i64, i64* %i0ptr10264, align 8                                      ; load; *i0ptr10264
  %fptr10265 = inttoptr i64 %f10266 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10265(i64 %cont7192, i64 %arg7893, i64 %retprim7193); tail call
  ret void
}


define void @lam8208(i64 %env8209, i64 %cont7194, i64 %vC7$x) {
  %retprim7195 = call i64 @prim_car(i64 %vC7$x)                                      ; call prim_car
  %arg7897 = add i64 0, 0                                                            ; quoted ()
  %cloptr10267 = inttoptr i64 %cont7194 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10267)                                        ; assert function application
  %i0ptr10268 = getelementptr inbounds i64, i64* %cloptr10267, i64 0                 ; &cloptr10267[0]
  %f10270 = load i64, i64* %i0ptr10268, align 8                                      ; load; *i0ptr10268
  %fptr10269 = inttoptr i64 %f10270 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10269(i64 %cont7194, i64 %arg7897, i64 %retprim7195); tail call
  ret void
}


define void @lam8205(i64 %env8206, i64 %cont7196, i64 %seG$x) {
  %retprim7197 = call i64 @prim_cdr(i64 %seG$x)                                      ; call prim_cdr
  %arg7901 = add i64 0, 0                                                            ; quoted ()
  %cloptr10271 = inttoptr i64 %cont7196 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10271)                                        ; assert function application
  %i0ptr10272 = getelementptr inbounds i64, i64* %cloptr10271, i64 0                 ; &cloptr10271[0]
  %f10274 = load i64, i64* %i0ptr10272, align 8                                      ; load; *i0ptr10272
  %fptr10273 = inttoptr i64 %f10274 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10273(i64 %cont7196, i64 %arg7901, i64 %retprim7197); tail call
  ret void
}


define void @lam8201(i64 %env8202, i64 %cont7198, i64 %ESF$lst, i64 %FXw$b) {
  %cmp10275 = icmp eq i64 %FXw$b, 15                                                 ; false?
  br i1 %cmp10275, label %else10277, label %then10276                                ; if

then10276:
  %arg7904 = add i64 0, 0                                                            ; quoted ()
  %cloptr10278 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10278)                                        ; assert function application
  %i0ptr10279 = getelementptr inbounds i64, i64* %cloptr10278, i64 0                 ; &cloptr10278[0]
  %f10281 = load i64, i64* %i0ptr10279, align 8                                      ; load; *i0ptr10279
  %fptr10280 = inttoptr i64 %f10281 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10280(i64 %cont7198, i64 %arg7904, i64 %FXw$b)      ; tail call
  ret void

else10277:
  %retprim7199 = call i64 @prim_null_63(i64 %ESF$lst)                                ; call prim_null_63
  %arg7908 = add i64 0, 0                                                            ; quoted ()
  %cloptr10282 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10282)                                        ; assert function application
  %i0ptr10283 = getelementptr inbounds i64, i64* %cloptr10282, i64 0                 ; &cloptr10282[0]
  %f10285 = load i64, i64* %i0ptr10283, align 8                                      ; load; *i0ptr10283
  %fptr10284 = inttoptr i64 %f10285 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10284(i64 %cont7198, i64 %arg7908, i64 %retprim7199); tail call
  ret void
}


define void @lam8194(i64 %env8195, i64 %cont7202, i64 %omq$_37foldr) {
  %envptr10286 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10287 = getelementptr inbounds i64, i64* %envptr10286, i64 2                ; &envptr10286[2]
  %qG7$_37map1 = load i64, i64* %envptr10287, align 8                                ; load; *envptr10287
  %envptr10288 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10289 = getelementptr inbounds i64, i64* %envptr10288, i64 1                ; &envptr10288[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10289, align 8                              ; load; *envptr10289
  %arg7911 = add i64 0, 0                                                            ; quoted ()
  %cloptr10290 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10292 = getelementptr inbounds i64, i64* %cloptr10290, i64 1                  ; &eptr10292[1]
  %eptr10293 = getelementptr inbounds i64, i64* %cloptr10290, i64 2                  ; &eptr10293[2]
  %eptr10294 = getelementptr inbounds i64, i64* %cloptr10290, i64 3                  ; &eptr10294[3]
  store i64 %VJi$_37foldr1, i64* %eptr10292                                          ; *eptr10292 = %VJi$_37foldr1
  store i64 %omq$_37foldr, i64* %eptr10293                                           ; *eptr10293 = %omq$_37foldr
  store i64 %qG7$_37map1, i64* %eptr10294                                            ; *eptr10294 = %qG7$_37map1
  %eptr10291 = getelementptr inbounds i64, i64* %cloptr10290, i64 0                  ; &cloptr10290[0]
  %f10295 = ptrtoint void(i64,i64)* @lam8191 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10295, i64* %eptr10291                                                 ; store fptr
  %arg7910 = ptrtoint i64* %cloptr10290 to i64                                       ; closure cast; i64* -> i64
  %cloptr10296 = inttoptr i64 %cont7202 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10296)                                        ; assert function application
  %i0ptr10297 = getelementptr inbounds i64, i64* %cloptr10296, i64 0                 ; &cloptr10296[0]
  %f10299 = load i64, i64* %i0ptr10297, align 8                                      ; load; *i0ptr10297
  %fptr10298 = inttoptr i64 %f10299 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10298(i64 %cont7202, i64 %arg7911, i64 %arg7910)    ; tail call
  ret void
}


define void @lam8191(i64 %env8192, i64 %Yn9$args7204) {
  %envptr10300 = inttoptr i64 %env8192 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10301 = getelementptr inbounds i64, i64* %envptr10300, i64 3                ; &envptr10300[3]
  %qG7$_37map1 = load i64, i64* %envptr10301, align 8                                ; load; *envptr10301
  %envptr10302 = inttoptr i64 %env8192 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10303 = getelementptr inbounds i64, i64* %envptr10302, i64 2                ; &envptr10302[2]
  %omq$_37foldr = load i64, i64* %envptr10303, align 8                               ; load; *envptr10303
  %envptr10304 = inttoptr i64 %env8192 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10305 = getelementptr inbounds i64, i64* %envptr10304, i64 1                ; &envptr10304[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10305, align 8                              ; load; *envptr10305
  %cont7203 = call i64 @prim_car(i64 %Yn9$args7204)                                  ; call prim_car
  %Yn9$args = call i64 @prim_cdr(i64 %Yn9$args7204)                                  ; call prim_cdr
  %Jup$f = call i64 @prim_car(i64 %Yn9$args)                                         ; call prim_car
  %a6971 = call i64 @prim_cdr(i64 %Yn9$args)                                         ; call prim_cdr
  %retprim7223 = call i64 @prim_car(i64 %a6971)                                      ; call prim_car
  %cloptr10306 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10308 = getelementptr inbounds i64, i64* %cloptr10306, i64 1                  ; &eptr10308[1]
  %eptr10309 = getelementptr inbounds i64, i64* %cloptr10306, i64 2                  ; &eptr10309[2]
  %eptr10310 = getelementptr inbounds i64, i64* %cloptr10306, i64 3                  ; &eptr10310[3]
  %eptr10311 = getelementptr inbounds i64, i64* %cloptr10306, i64 4                  ; &eptr10311[4]
  %eptr10312 = getelementptr inbounds i64, i64* %cloptr10306, i64 5                  ; &eptr10312[5]
  %eptr10313 = getelementptr inbounds i64, i64* %cloptr10306, i64 6                  ; &eptr10313[6]
  store i64 %VJi$_37foldr1, i64* %eptr10308                                          ; *eptr10308 = %VJi$_37foldr1
  store i64 %omq$_37foldr, i64* %eptr10309                                           ; *eptr10309 = %omq$_37foldr
  store i64 %Jup$f, i64* %eptr10310                                                  ; *eptr10310 = %Jup$f
  store i64 %qG7$_37map1, i64* %eptr10311                                            ; *eptr10311 = %qG7$_37map1
  store i64 %cont7203, i64* %eptr10312                                               ; *eptr10312 = %cont7203
  store i64 %Yn9$args, i64* %eptr10313                                               ; *eptr10313 = %Yn9$args
  %eptr10307 = getelementptr inbounds i64, i64* %cloptr10306, i64 0                  ; &cloptr10306[0]
  %f10314 = ptrtoint void(i64,i64,i64)* @lam8189 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10314, i64* %eptr10307                                                 ; store fptr
  %arg7920 = ptrtoint i64* %cloptr10306 to i64                                       ; closure cast; i64* -> i64
  %arg7919 = add i64 0, 0                                                            ; quoted ()
  %cloptr10315 = inttoptr i64 %arg7920 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10315)                                        ; assert function application
  %i0ptr10316 = getelementptr inbounds i64, i64* %cloptr10315, i64 0                 ; &cloptr10315[0]
  %f10318 = load i64, i64* %i0ptr10316, align 8                                      ; load; *i0ptr10316
  %fptr10317 = inttoptr i64 %f10318 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10317(i64 %arg7920, i64 %arg7919, i64 %retprim7223) ; tail call
  ret void
}


define void @lam8189(i64 %env8190, i64 %_957205, i64 %H5W$acc) {
  %envptr10319 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10320 = getelementptr inbounds i64, i64* %envptr10319, i64 6                ; &envptr10319[6]
  %Yn9$args = load i64, i64* %envptr10320, align 8                                   ; load; *envptr10320
  %envptr10321 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10322 = getelementptr inbounds i64, i64* %envptr10321, i64 5                ; &envptr10321[5]
  %cont7203 = load i64, i64* %envptr10322, align 8                                   ; load; *envptr10322
  %envptr10323 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10324 = getelementptr inbounds i64, i64* %envptr10323, i64 4                ; &envptr10323[4]
  %qG7$_37map1 = load i64, i64* %envptr10324, align 8                                ; load; *envptr10324
  %envptr10325 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10326 = getelementptr inbounds i64, i64* %envptr10325, i64 3                ; &envptr10325[3]
  %Jup$f = load i64, i64* %envptr10326, align 8                                      ; load; *envptr10326
  %envptr10327 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10328 = getelementptr inbounds i64, i64* %envptr10327, i64 2                ; &envptr10327[2]
  %omq$_37foldr = load i64, i64* %envptr10328, align 8                               ; load; *envptr10328
  %envptr10329 = inttoptr i64 %env8190 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10330 = getelementptr inbounds i64, i64* %envptr10329, i64 1                ; &envptr10329[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10330, align 8                              ; load; *envptr10330
  %a6972 = call i64 @prim_cdr(i64 %Yn9$args)                                         ; call prim_cdr
  %retprim7222 = call i64 @prim_cdr(i64 %a6972)                                      ; call prim_cdr
  %cloptr10331 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10333 = getelementptr inbounds i64, i64* %cloptr10331, i64 1                  ; &eptr10333[1]
  %eptr10334 = getelementptr inbounds i64, i64* %cloptr10331, i64 2                  ; &eptr10334[2]
  %eptr10335 = getelementptr inbounds i64, i64* %cloptr10331, i64 3                  ; &eptr10335[3]
  %eptr10336 = getelementptr inbounds i64, i64* %cloptr10331, i64 4                  ; &eptr10336[4]
  %eptr10337 = getelementptr inbounds i64, i64* %cloptr10331, i64 5                  ; &eptr10337[5]
  %eptr10338 = getelementptr inbounds i64, i64* %cloptr10331, i64 6                  ; &eptr10338[6]
  store i64 %VJi$_37foldr1, i64* %eptr10333                                          ; *eptr10333 = %VJi$_37foldr1
  store i64 %omq$_37foldr, i64* %eptr10334                                           ; *eptr10334 = %omq$_37foldr
  store i64 %Jup$f, i64* %eptr10335                                                  ; *eptr10335 = %Jup$f
  store i64 %qG7$_37map1, i64* %eptr10336                                            ; *eptr10336 = %qG7$_37map1
  store i64 %H5W$acc, i64* %eptr10337                                                ; *eptr10337 = %H5W$acc
  store i64 %cont7203, i64* %eptr10338                                               ; *eptr10338 = %cont7203
  %eptr10332 = getelementptr inbounds i64, i64* %cloptr10331, i64 0                  ; &cloptr10331[0]
  %f10339 = ptrtoint void(i64,i64,i64)* @lam8187 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10339, i64* %eptr10332                                                 ; store fptr
  %arg7925 = ptrtoint i64* %cloptr10331 to i64                                       ; closure cast; i64* -> i64
  %arg7924 = add i64 0, 0                                                            ; quoted ()
  %cloptr10340 = inttoptr i64 %arg7925 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10340)                                        ; assert function application
  %i0ptr10341 = getelementptr inbounds i64, i64* %cloptr10340, i64 0                 ; &cloptr10340[0]
  %f10343 = load i64, i64* %i0ptr10341, align 8                                      ; load; *i0ptr10341
  %fptr10342 = inttoptr i64 %f10343 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10342(i64 %arg7925, i64 %arg7924, i64 %retprim7222) ; tail call
  ret void
}


define void @lam8187(i64 %env8188, i64 %_957206, i64 %mZE$lsts) {
  %envptr10344 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10345 = getelementptr inbounds i64, i64* %envptr10344, i64 6                ; &envptr10344[6]
  %cont7203 = load i64, i64* %envptr10345, align 8                                   ; load; *envptr10345
  %envptr10346 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10347 = getelementptr inbounds i64, i64* %envptr10346, i64 5                ; &envptr10346[5]
  %H5W$acc = load i64, i64* %envptr10347, align 8                                    ; load; *envptr10347
  %envptr10348 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10349 = getelementptr inbounds i64, i64* %envptr10348, i64 4                ; &envptr10348[4]
  %qG7$_37map1 = load i64, i64* %envptr10349, align 8                                ; load; *envptr10349
  %envptr10350 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10351 = getelementptr inbounds i64, i64* %envptr10350, i64 3                ; &envptr10350[3]
  %Jup$f = load i64, i64* %envptr10351, align 8                                      ; load; *envptr10351
  %envptr10352 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10353 = getelementptr inbounds i64, i64* %envptr10352, i64 2                ; &envptr10352[2]
  %omq$_37foldr = load i64, i64* %envptr10353, align 8                               ; load; *envptr10353
  %envptr10354 = inttoptr i64 %env8188 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10355 = getelementptr inbounds i64, i64* %envptr10354, i64 1                ; &envptr10354[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10355, align 8                              ; load; *envptr10355
  %cloptr10356 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10358 = getelementptr inbounds i64, i64* %cloptr10356, i64 1                  ; &eptr10358[1]
  %eptr10359 = getelementptr inbounds i64, i64* %cloptr10356, i64 2                  ; &eptr10359[2]
  %eptr10360 = getelementptr inbounds i64, i64* %cloptr10356, i64 3                  ; &eptr10360[3]
  %eptr10361 = getelementptr inbounds i64, i64* %cloptr10356, i64 4                  ; &eptr10361[4]
  %eptr10362 = getelementptr inbounds i64, i64* %cloptr10356, i64 5                  ; &eptr10362[5]
  %eptr10363 = getelementptr inbounds i64, i64* %cloptr10356, i64 6                  ; &eptr10363[6]
  %eptr10364 = getelementptr inbounds i64, i64* %cloptr10356, i64 7                  ; &eptr10364[7]
  store i64 %VJi$_37foldr1, i64* %eptr10358                                          ; *eptr10358 = %VJi$_37foldr1
  store i64 %omq$_37foldr, i64* %eptr10359                                           ; *eptr10359 = %omq$_37foldr
  store i64 %Jup$f, i64* %eptr10360                                                  ; *eptr10360 = %Jup$f
  store i64 %mZE$lsts, i64* %eptr10361                                               ; *eptr10361 = %mZE$lsts
  store i64 %qG7$_37map1, i64* %eptr10362                                            ; *eptr10362 = %qG7$_37map1
  store i64 %H5W$acc, i64* %eptr10363                                                ; *eptr10363 = %H5W$acc
  store i64 %cont7203, i64* %eptr10364                                               ; *eptr10364 = %cont7203
  %eptr10357 = getelementptr inbounds i64, i64* %cloptr10356, i64 0                  ; &cloptr10356[0]
  %f10365 = ptrtoint void(i64,i64,i64)* @lam8185 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10365, i64* %eptr10357                                                 ; store fptr
  %arg7929 = ptrtoint i64* %cloptr10356 to i64                                       ; closure cast; i64* -> i64
  %cloptr10366 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10367 = getelementptr inbounds i64, i64* %cloptr10366, i64 0                  ; &cloptr10366[0]
  %f10368 = ptrtoint void(i64,i64,i64,i64)* @lam8164 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10368, i64* %eptr10367                                                 ; store fptr
  %arg7928 = ptrtoint i64* %cloptr10366 to i64                                       ; closure cast; i64* -> i64
  %arg7927 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10369 = inttoptr i64 %VJi$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10369)                                        ; assert function application
  %i0ptr10370 = getelementptr inbounds i64, i64* %cloptr10369, i64 0                 ; &cloptr10369[0]
  %f10372 = load i64, i64* %i0ptr10370, align 8                                      ; load; *i0ptr10370
  %fptr10371 = inttoptr i64 %f10372 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10371(i64 %VJi$_37foldr1, i64 %arg7929, i64 %arg7928, i64 %arg7927, i64 %mZE$lsts); tail call
  ret void
}


define void @lam8185(i64 %env8186, i64 %_957207, i64 %a6973) {
  %envptr10373 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10374 = getelementptr inbounds i64, i64* %envptr10373, i64 7                ; &envptr10373[7]
  %cont7203 = load i64, i64* %envptr10374, align 8                                   ; load; *envptr10374
  %envptr10375 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10376 = getelementptr inbounds i64, i64* %envptr10375, i64 6                ; &envptr10375[6]
  %H5W$acc = load i64, i64* %envptr10376, align 8                                    ; load; *envptr10376
  %envptr10377 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10378 = getelementptr inbounds i64, i64* %envptr10377, i64 5                ; &envptr10377[5]
  %qG7$_37map1 = load i64, i64* %envptr10378, align 8                                ; load; *envptr10378
  %envptr10379 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10380 = getelementptr inbounds i64, i64* %envptr10379, i64 4                ; &envptr10379[4]
  %mZE$lsts = load i64, i64* %envptr10380, align 8                                   ; load; *envptr10380
  %envptr10381 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10382 = getelementptr inbounds i64, i64* %envptr10381, i64 3                ; &envptr10381[3]
  %Jup$f = load i64, i64* %envptr10382, align 8                                      ; load; *envptr10382
  %envptr10383 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10384 = getelementptr inbounds i64, i64* %envptr10383, i64 2                ; &envptr10383[2]
  %omq$_37foldr = load i64, i64* %envptr10384, align 8                               ; load; *envptr10384
  %envptr10385 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10386 = getelementptr inbounds i64, i64* %envptr10385, i64 1                ; &envptr10385[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10386, align 8                              ; load; *envptr10386
  %cmp10387 = icmp eq i64 %a6973, 15                                                 ; false?
  br i1 %cmp10387, label %else10389, label %then10388                                ; if

then10388:
  %arg7932 = add i64 0, 0                                                            ; quoted ()
  %cloptr10390 = inttoptr i64 %cont7203 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10390)                                        ; assert function application
  %i0ptr10391 = getelementptr inbounds i64, i64* %cloptr10390, i64 0                 ; &cloptr10390[0]
  %f10393 = load i64, i64* %i0ptr10391, align 8                                      ; load; *i0ptr10391
  %fptr10392 = inttoptr i64 %f10393 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10392(i64 %cont7203, i64 %arg7932, i64 %H5W$acc)    ; tail call
  ret void

else10389:
  %cloptr10394 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10396 = getelementptr inbounds i64, i64* %cloptr10394, i64 1                  ; &eptr10396[1]
  %eptr10397 = getelementptr inbounds i64, i64* %cloptr10394, i64 2                  ; &eptr10397[2]
  %eptr10398 = getelementptr inbounds i64, i64* %cloptr10394, i64 3                  ; &eptr10398[3]
  %eptr10399 = getelementptr inbounds i64, i64* %cloptr10394, i64 4                  ; &eptr10399[4]
  %eptr10400 = getelementptr inbounds i64, i64* %cloptr10394, i64 5                  ; &eptr10400[5]
  %eptr10401 = getelementptr inbounds i64, i64* %cloptr10394, i64 6                  ; &eptr10401[6]
  %eptr10402 = getelementptr inbounds i64, i64* %cloptr10394, i64 7                  ; &eptr10402[7]
  store i64 %VJi$_37foldr1, i64* %eptr10396                                          ; *eptr10396 = %VJi$_37foldr1
  store i64 %omq$_37foldr, i64* %eptr10397                                           ; *eptr10397 = %omq$_37foldr
  store i64 %Jup$f, i64* %eptr10398                                                  ; *eptr10398 = %Jup$f
  store i64 %mZE$lsts, i64* %eptr10399                                               ; *eptr10399 = %mZE$lsts
  store i64 %qG7$_37map1, i64* %eptr10400                                            ; *eptr10400 = %qG7$_37map1
  store i64 %H5W$acc, i64* %eptr10401                                                ; *eptr10401 = %H5W$acc
  store i64 %cont7203, i64* %eptr10402                                               ; *eptr10402 = %cont7203
  %eptr10395 = getelementptr inbounds i64, i64* %cloptr10394, i64 0                  ; &cloptr10394[0]
  %f10403 = ptrtoint void(i64,i64,i64)* @lam8183 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10403, i64* %eptr10395                                                 ; store fptr
  %arg7936 = ptrtoint i64* %cloptr10394 to i64                                       ; closure cast; i64* -> i64
  %cloptr10404 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10405 = getelementptr inbounds i64, i64* %cloptr10404, i64 0                  ; &cloptr10404[0]
  %f10406 = ptrtoint void(i64,i64,i64)* @lam8168 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10406, i64* %eptr10405                                                 ; store fptr
  %arg7935 = ptrtoint i64* %cloptr10404 to i64                                       ; closure cast; i64* -> i64
  %cloptr10407 = inttoptr i64 %qG7$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10407)                                        ; assert function application
  %i0ptr10408 = getelementptr inbounds i64, i64* %cloptr10407, i64 0                 ; &cloptr10407[0]
  %f10410 = load i64, i64* %i0ptr10408, align 8                                      ; load; *i0ptr10408
  %fptr10409 = inttoptr i64 %f10410 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10409(i64 %qG7$_37map1, i64 %arg7936, i64 %arg7935, i64 %mZE$lsts); tail call
  ret void
}


define void @lam8183(i64 %env8184, i64 %_957208, i64 %qfz$lsts_43) {
  %envptr10411 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10412 = getelementptr inbounds i64, i64* %envptr10411, i64 7                ; &envptr10411[7]
  %cont7203 = load i64, i64* %envptr10412, align 8                                   ; load; *envptr10412
  %envptr10413 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10414 = getelementptr inbounds i64, i64* %envptr10413, i64 6                ; &envptr10413[6]
  %H5W$acc = load i64, i64* %envptr10414, align 8                                    ; load; *envptr10414
  %envptr10415 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10416 = getelementptr inbounds i64, i64* %envptr10415, i64 5                ; &envptr10415[5]
  %qG7$_37map1 = load i64, i64* %envptr10416, align 8                                ; load; *envptr10416
  %envptr10417 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10418 = getelementptr inbounds i64, i64* %envptr10417, i64 4                ; &envptr10417[4]
  %mZE$lsts = load i64, i64* %envptr10418, align 8                                   ; load; *envptr10418
  %envptr10419 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10420 = getelementptr inbounds i64, i64* %envptr10419, i64 3                ; &envptr10419[3]
  %Jup$f = load i64, i64* %envptr10420, align 8                                      ; load; *envptr10420
  %envptr10421 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10422 = getelementptr inbounds i64, i64* %envptr10421, i64 2                ; &envptr10421[2]
  %omq$_37foldr = load i64, i64* %envptr10422, align 8                               ; load; *envptr10422
  %envptr10423 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10424 = getelementptr inbounds i64, i64* %envptr10423, i64 1                ; &envptr10423[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10424, align 8                              ; load; *envptr10424
  %cloptr10425 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10427 = getelementptr inbounds i64, i64* %cloptr10425, i64 1                  ; &eptr10427[1]
  %eptr10428 = getelementptr inbounds i64, i64* %cloptr10425, i64 2                  ; &eptr10428[2]
  %eptr10429 = getelementptr inbounds i64, i64* %cloptr10425, i64 3                  ; &eptr10429[3]
  %eptr10430 = getelementptr inbounds i64, i64* %cloptr10425, i64 4                  ; &eptr10430[4]
  %eptr10431 = getelementptr inbounds i64, i64* %cloptr10425, i64 5                  ; &eptr10431[5]
  %eptr10432 = getelementptr inbounds i64, i64* %cloptr10425, i64 6                  ; &eptr10432[6]
  store i64 %VJi$_37foldr1, i64* %eptr10427                                          ; *eptr10427 = %VJi$_37foldr1
  store i64 %omq$_37foldr, i64* %eptr10428                                           ; *eptr10428 = %omq$_37foldr
  store i64 %Jup$f, i64* %eptr10429                                                  ; *eptr10429 = %Jup$f
  store i64 %qfz$lsts_43, i64* %eptr10430                                            ; *eptr10430 = %qfz$lsts_43
  store i64 %H5W$acc, i64* %eptr10431                                                ; *eptr10431 = %H5W$acc
  store i64 %cont7203, i64* %eptr10432                                               ; *eptr10432 = %cont7203
  %eptr10426 = getelementptr inbounds i64, i64* %cloptr10425, i64 0                  ; &cloptr10425[0]
  %f10433 = ptrtoint void(i64,i64,i64)* @lam8181 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10433, i64* %eptr10426                                                 ; store fptr
  %arg7940 = ptrtoint i64* %cloptr10425 to i64                                       ; closure cast; i64* -> i64
  %cloptr10434 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10435 = getelementptr inbounds i64, i64* %cloptr10434, i64 0                  ; &cloptr10434[0]
  %f10436 = ptrtoint void(i64,i64,i64)* @lam8171 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10436, i64* %eptr10435                                                 ; store fptr
  %arg7939 = ptrtoint i64* %cloptr10434 to i64                                       ; closure cast; i64* -> i64
  %cloptr10437 = inttoptr i64 %qG7$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10437)                                        ; assert function application
  %i0ptr10438 = getelementptr inbounds i64, i64* %cloptr10437, i64 0                 ; &cloptr10437[0]
  %f10440 = load i64, i64* %i0ptr10438, align 8                                      ; load; *i0ptr10438
  %fptr10439 = inttoptr i64 %f10440 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10439(i64 %qG7$_37map1, i64 %arg7940, i64 %arg7939, i64 %mZE$lsts); tail call
  ret void
}


define void @lam8181(i64 %env8182, i64 %_957209, i64 %z9Z$vs) {
  %envptr10441 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10442 = getelementptr inbounds i64, i64* %envptr10441, i64 6                ; &envptr10441[6]
  %cont7203 = load i64, i64* %envptr10442, align 8                                   ; load; *envptr10442
  %envptr10443 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10444 = getelementptr inbounds i64, i64* %envptr10443, i64 5                ; &envptr10443[5]
  %H5W$acc = load i64, i64* %envptr10444, align 8                                    ; load; *envptr10444
  %envptr10445 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10446 = getelementptr inbounds i64, i64* %envptr10445, i64 4                ; &envptr10445[4]
  %qfz$lsts_43 = load i64, i64* %envptr10446, align 8                                ; load; *envptr10446
  %envptr10447 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10448 = getelementptr inbounds i64, i64* %envptr10447, i64 3                ; &envptr10447[3]
  %Jup$f = load i64, i64* %envptr10448, align 8                                      ; load; *envptr10448
  %envptr10449 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10450 = getelementptr inbounds i64, i64* %envptr10449, i64 2                ; &envptr10449[2]
  %omq$_37foldr = load i64, i64* %envptr10450, align 8                               ; load; *envptr10450
  %envptr10451 = inttoptr i64 %env8182 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10452 = getelementptr inbounds i64, i64* %envptr10451, i64 1                ; &envptr10451[1]
  %VJi$_37foldr1 = load i64, i64* %envptr10452, align 8                              ; load; *envptr10452
  %a6974 = call i64 @prim_cons(i64 %H5W$acc, i64 %qfz$lsts_43)                       ; call prim_cons
  %a6975 = call i64 @prim_cons(i64 %Jup$f, i64 %a6974)                               ; call prim_cons
  %cloptr10453 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10455 = getelementptr inbounds i64, i64* %cloptr10453, i64 1                  ; &eptr10455[1]
  %eptr10456 = getelementptr inbounds i64, i64* %cloptr10453, i64 2                  ; &eptr10456[2]
  %eptr10457 = getelementptr inbounds i64, i64* %cloptr10453, i64 3                  ; &eptr10457[3]
  %eptr10458 = getelementptr inbounds i64, i64* %cloptr10453, i64 4                  ; &eptr10458[4]
  store i64 %z9Z$vs, i64* %eptr10455                                                 ; *eptr10455 = %z9Z$vs
  store i64 %VJi$_37foldr1, i64* %eptr10456                                          ; *eptr10456 = %VJi$_37foldr1
  store i64 %Jup$f, i64* %eptr10457                                                  ; *eptr10457 = %Jup$f
  store i64 %cont7203, i64* %eptr10458                                               ; *eptr10458 = %cont7203
  %eptr10454 = getelementptr inbounds i64, i64* %cloptr10453, i64 0                  ; &cloptr10453[0]
  %f10459 = ptrtoint void(i64,i64,i64)* @lam8179 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10459, i64* %eptr10454                                                 ; store fptr
  %arg7947 = ptrtoint i64* %cloptr10453 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7215 = call i64 @prim_cons(i64 %arg7947, i64 %a6975)                     ; call prim_cons
  %cloptr10460 = inttoptr i64 %omq$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10460)                                        ; assert function application
  %i0ptr10461 = getelementptr inbounds i64, i64* %cloptr10460, i64 0                 ; &cloptr10460[0]
  %f10463 = load i64, i64* %i0ptr10461, align 8                                      ; load; *i0ptr10461
  %fptr10462 = inttoptr i64 %f10463 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10462(i64 %omq$_37foldr, i64 %cps_45lst7215)        ; tail call
  ret void
}


define void @lam8179(i64 %env8180, i64 %_957210, i64 %a6976) {
  %envptr10464 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10465 = getelementptr inbounds i64, i64* %envptr10464, i64 4                ; &envptr10464[4]
  %cont7203 = load i64, i64* %envptr10465, align 8                                   ; load; *envptr10465
  %envptr10466 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10467 = getelementptr inbounds i64, i64* %envptr10466, i64 3                ; &envptr10466[3]
  %Jup$f = load i64, i64* %envptr10467, align 8                                      ; load; *envptr10467
  %envptr10468 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10469 = getelementptr inbounds i64, i64* %envptr10468, i64 2                ; &envptr10468[2]
  %VJi$_37foldr1 = load i64, i64* %envptr10469, align 8                              ; load; *envptr10469
  %envptr10470 = inttoptr i64 %env8180 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10471 = getelementptr inbounds i64, i64* %envptr10470, i64 1                ; &envptr10470[1]
  %z9Z$vs = load i64, i64* %envptr10471, align 8                                     ; load; *envptr10471
  %arg7948 = add i64 0, 0                                                            ; quoted ()
  %a6977 = call i64 @prim_cons(i64 %a6976, i64 %arg7948)                             ; call prim_cons
  %cloptr10472 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10474 = getelementptr inbounds i64, i64* %cloptr10472, i64 1                  ; &eptr10474[1]
  %eptr10475 = getelementptr inbounds i64, i64* %cloptr10472, i64 2                  ; &eptr10475[2]
  store i64 %Jup$f, i64* %eptr10474                                                  ; *eptr10474 = %Jup$f
  store i64 %cont7203, i64* %eptr10475                                               ; *eptr10475 = %cont7203
  %eptr10473 = getelementptr inbounds i64, i64* %cloptr10472, i64 0                  ; &cloptr10472[0]
  %f10476 = ptrtoint void(i64,i64,i64)* @lam8176 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10476, i64* %eptr10473                                                 ; store fptr
  %arg7953 = ptrtoint i64* %cloptr10472 to i64                                       ; closure cast; i64* -> i64
  %cloptr10477 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10478 = getelementptr inbounds i64, i64* %cloptr10477, i64 0                  ; &cloptr10477[0]
  %f10479 = ptrtoint void(i64,i64,i64,i64)* @lam8174 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10479, i64* %eptr10478                                                 ; store fptr
  %arg7952 = ptrtoint i64* %cloptr10477 to i64                                       ; closure cast; i64* -> i64
  %cloptr10480 = inttoptr i64 %VJi$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10480)                                        ; assert function application
  %i0ptr10481 = getelementptr inbounds i64, i64* %cloptr10480, i64 0                 ; &cloptr10480[0]
  %f10483 = load i64, i64* %i0ptr10481, align 8                                      ; load; *i0ptr10481
  %fptr10482 = inttoptr i64 %f10483 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10482(i64 %VJi$_37foldr1, i64 %arg7953, i64 %arg7952, i64 %a6977, i64 %z9Z$vs); tail call
  ret void
}


define void @lam8176(i64 %env8177, i64 %_957211, i64 %a6978) {
  %envptr10484 = inttoptr i64 %env8177 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10485 = getelementptr inbounds i64, i64* %envptr10484, i64 2                ; &envptr10484[2]
  %cont7203 = load i64, i64* %envptr10485, align 8                                   ; load; *envptr10485
  %envptr10486 = inttoptr i64 %env8177 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10487 = getelementptr inbounds i64, i64* %envptr10486, i64 1                ; &envptr10486[1]
  %Jup$f = load i64, i64* %envptr10487, align 8                                      ; load; *envptr10487
  %cps_45lst7212 = call i64 @prim_cons(i64 %cont7203, i64 %a6978)                    ; call prim_cons
  %cloptr10488 = inttoptr i64 %Jup$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10488)                                        ; assert function application
  %i0ptr10489 = getelementptr inbounds i64, i64* %cloptr10488, i64 0                 ; &cloptr10488[0]
  %f10491 = load i64, i64* %i0ptr10489, align 8                                      ; load; *i0ptr10489
  %fptr10490 = inttoptr i64 %f10491 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10490(i64 %Jup$f, i64 %cps_45lst7212)               ; tail call
  ret void
}


define void @lam8174(i64 %env8175, i64 %cont7213, i64 %E3S$a, i64 %lKJ$b) {
  %retprim7214 = call i64 @prim_cons(i64 %E3S$a, i64 %lKJ$b)                         ; call prim_cons
  %arg7960 = add i64 0, 0                                                            ; quoted ()
  %cloptr10492 = inttoptr i64 %cont7213 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10492)                                        ; assert function application
  %i0ptr10493 = getelementptr inbounds i64, i64* %cloptr10492, i64 0                 ; &cloptr10492[0]
  %f10495 = load i64, i64* %i0ptr10493, align 8                                      ; load; *i0ptr10493
  %fptr10494 = inttoptr i64 %f10495 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10494(i64 %cont7213, i64 %arg7960, i64 %retprim7214); tail call
  ret void
}


define void @lam8171(i64 %env8172, i64 %cont7216, i64 %sva$x) {
  %retprim7217 = call i64 @prim_car(i64 %sva$x)                                      ; call prim_car
  %arg7964 = add i64 0, 0                                                            ; quoted ()
  %cloptr10496 = inttoptr i64 %cont7216 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10496)                                        ; assert function application
  %i0ptr10497 = getelementptr inbounds i64, i64* %cloptr10496, i64 0                 ; &cloptr10496[0]
  %f10499 = load i64, i64* %i0ptr10497, align 8                                      ; load; *i0ptr10497
  %fptr10498 = inttoptr i64 %f10499 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10498(i64 %cont7216, i64 %arg7964, i64 %retprim7217); tail call
  ret void
}


define void @lam8168(i64 %env8169, i64 %cont7218, i64 %ktY$x) {
  %retprim7219 = call i64 @prim_cdr(i64 %ktY$x)                                      ; call prim_cdr
  %arg7968 = add i64 0, 0                                                            ; quoted ()
  %cloptr10500 = inttoptr i64 %cont7218 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10500)                                        ; assert function application
  %i0ptr10501 = getelementptr inbounds i64, i64* %cloptr10500, i64 0                 ; &cloptr10500[0]
  %f10503 = load i64, i64* %i0ptr10501, align 8                                      ; load; *i0ptr10501
  %fptr10502 = inttoptr i64 %f10503 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10502(i64 %cont7218, i64 %arg7968, i64 %retprim7219); tail call
  ret void
}


define void @lam8164(i64 %env8165, i64 %cont7220, i64 %LGT$lst, i64 %rCW$b) {
  %cmp10504 = icmp eq i64 %rCW$b, 15                                                 ; false?
  br i1 %cmp10504, label %else10506, label %then10505                                ; if

then10505:
  %arg7971 = add i64 0, 0                                                            ; quoted ()
  %cloptr10507 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10507)                                        ; assert function application
  %i0ptr10508 = getelementptr inbounds i64, i64* %cloptr10507, i64 0                 ; &cloptr10507[0]
  %f10510 = load i64, i64* %i0ptr10508, align 8                                      ; load; *i0ptr10508
  %fptr10509 = inttoptr i64 %f10510 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10509(i64 %cont7220, i64 %arg7971, i64 %rCW$b)      ; tail call
  ret void

else10506:
  %retprim7221 = call i64 @prim_null_63(i64 %LGT$lst)                                ; call prim_null_63
  %arg7975 = add i64 0, 0                                                            ; quoted ()
  %cloptr10511 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10511)                                        ; assert function application
  %i0ptr10512 = getelementptr inbounds i64, i64* %cloptr10511, i64 0                 ; &cloptr10511[0]
  %f10514 = load i64, i64* %i0ptr10512, align 8                                      ; load; *i0ptr10512
  %fptr10513 = inttoptr i64 %f10514 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10513(i64 %cont7220, i64 %arg7975, i64 %retprim7221); tail call
  ret void
}


define void @lam8157(i64 %env8158, i64 %cont7224, i64 %rL6$_37foldl1) {
  %arg7978 = add i64 0, 0                                                            ; quoted ()
  %cloptr10515 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10517 = getelementptr inbounds i64, i64* %cloptr10515, i64 1                  ; &eptr10517[1]
  store i64 %rL6$_37foldl1, i64* %eptr10517                                          ; *eptr10517 = %rL6$_37foldl1
  %eptr10516 = getelementptr inbounds i64, i64* %cloptr10515, i64 0                  ; &cloptr10515[0]
  %f10518 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8154 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10518, i64* %eptr10516                                                 ; store fptr
  %arg7977 = ptrtoint i64* %cloptr10515 to i64                                       ; closure cast; i64* -> i64
  %cloptr10519 = inttoptr i64 %cont7224 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10519)                                        ; assert function application
  %i0ptr10520 = getelementptr inbounds i64, i64* %cloptr10519, i64 0                 ; &cloptr10519[0]
  %f10522 = load i64, i64* %i0ptr10520, align 8                                      ; load; *i0ptr10520
  %fptr10521 = inttoptr i64 %f10522 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10521(i64 %cont7224, i64 %arg7978, i64 %arg7977)    ; tail call
  ret void
}


define void @lam8154(i64 %env8155, i64 %cont7225, i64 %Wbx$f, i64 %KWM$acc, i64 %PKP$lst) {
  %envptr10523 = inttoptr i64 %env8155 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10524 = getelementptr inbounds i64, i64* %envptr10523, i64 1                ; &envptr10523[1]
  %rL6$_37foldl1 = load i64, i64* %envptr10524, align 8                              ; load; *envptr10524
  %a6965 = call i64 @prim_null_63(i64 %PKP$lst)                                      ; call prim_null_63
  %cmp10525 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp10525, label %else10527, label %then10526                                ; if

then10526:
  %arg7982 = add i64 0, 0                                                            ; quoted ()
  %cloptr10528 = inttoptr i64 %cont7225 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10528)                                        ; assert function application
  %i0ptr10529 = getelementptr inbounds i64, i64* %cloptr10528, i64 0                 ; &cloptr10528[0]
  %f10531 = load i64, i64* %i0ptr10529, align 8                                      ; load; *i0ptr10529
  %fptr10530 = inttoptr i64 %f10531 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10530(i64 %cont7225, i64 %arg7982, i64 %KWM$acc)    ; tail call
  ret void

else10527:
  %a6966 = call i64 @prim_car(i64 %PKP$lst)                                          ; call prim_car
  %cloptr10532 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10534 = getelementptr inbounds i64, i64* %cloptr10532, i64 1                  ; &eptr10534[1]
  %eptr10535 = getelementptr inbounds i64, i64* %cloptr10532, i64 2                  ; &eptr10535[2]
  %eptr10536 = getelementptr inbounds i64, i64* %cloptr10532, i64 3                  ; &eptr10536[3]
  %eptr10537 = getelementptr inbounds i64, i64* %cloptr10532, i64 4                  ; &eptr10537[4]
  store i64 %rL6$_37foldl1, i64* %eptr10534                                          ; *eptr10534 = %rL6$_37foldl1
  store i64 %Wbx$f, i64* %eptr10535                                                  ; *eptr10535 = %Wbx$f
  store i64 %PKP$lst, i64* %eptr10536                                                ; *eptr10536 = %PKP$lst
  store i64 %cont7225, i64* %eptr10537                                               ; *eptr10537 = %cont7225
  %eptr10533 = getelementptr inbounds i64, i64* %cloptr10532, i64 0                  ; &cloptr10532[0]
  %f10538 = ptrtoint void(i64,i64,i64)* @lam8152 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10538, i64* %eptr10533                                                 ; store fptr
  %arg7987 = ptrtoint i64* %cloptr10532 to i64                                       ; closure cast; i64* -> i64
  %cloptr10539 = inttoptr i64 %Wbx$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10539)                                        ; assert function application
  %i0ptr10540 = getelementptr inbounds i64, i64* %cloptr10539, i64 0                 ; &cloptr10539[0]
  %f10542 = load i64, i64* %i0ptr10540, align 8                                      ; load; *i0ptr10540
  %fptr10541 = inttoptr i64 %f10542 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10541(i64 %Wbx$f, i64 %arg7987, i64 %a6966, i64 %KWM$acc); tail call
  ret void
}


define void @lam8152(i64 %env8153, i64 %_957226, i64 %a6967) {
  %envptr10543 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10544 = getelementptr inbounds i64, i64* %envptr10543, i64 4                ; &envptr10543[4]
  %cont7225 = load i64, i64* %envptr10544, align 8                                   ; load; *envptr10544
  %envptr10545 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10546 = getelementptr inbounds i64, i64* %envptr10545, i64 3                ; &envptr10545[3]
  %PKP$lst = load i64, i64* %envptr10546, align 8                                    ; load; *envptr10546
  %envptr10547 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10548 = getelementptr inbounds i64, i64* %envptr10547, i64 2                ; &envptr10547[2]
  %Wbx$f = load i64, i64* %envptr10548, align 8                                      ; load; *envptr10548
  %envptr10549 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10550 = getelementptr inbounds i64, i64* %envptr10549, i64 1                ; &envptr10549[1]
  %rL6$_37foldl1 = load i64, i64* %envptr10550, align 8                              ; load; *envptr10550
  %a6968 = call i64 @prim_cdr(i64 %PKP$lst)                                          ; call prim_cdr
  %cloptr10551 = inttoptr i64 %rL6$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10551)                                        ; assert function application
  %i0ptr10552 = getelementptr inbounds i64, i64* %cloptr10551, i64 0                 ; &cloptr10551[0]
  %f10554 = load i64, i64* %i0ptr10552, align 8                                      ; load; *i0ptr10552
  %fptr10553 = inttoptr i64 %f10554 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10553(i64 %rL6$_37foldl1, i64 %cont7225, i64 %Wbx$f, i64 %a6967, i64 %a6968); tail call
  ret void
}


define void @lam8149(i64 %env8150, i64 %cont7227, i64 %jb8$_37length) {
  %arg7996 = add i64 0, 0                                                            ; quoted ()
  %cloptr10555 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10557 = getelementptr inbounds i64, i64* %cloptr10555, i64 1                  ; &eptr10557[1]
  store i64 %jb8$_37length, i64* %eptr10557                                          ; *eptr10557 = %jb8$_37length
  %eptr10556 = getelementptr inbounds i64, i64* %cloptr10555, i64 0                  ; &cloptr10555[0]
  %f10558 = ptrtoint void(i64,i64,i64)* @lam8146 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10558, i64* %eptr10556                                                 ; store fptr
  %arg7995 = ptrtoint i64* %cloptr10555 to i64                                       ; closure cast; i64* -> i64
  %cloptr10559 = inttoptr i64 %cont7227 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10559)                                        ; assert function application
  %i0ptr10560 = getelementptr inbounds i64, i64* %cloptr10559, i64 0                 ; &cloptr10559[0]
  %f10562 = load i64, i64* %i0ptr10560, align 8                                      ; load; *i0ptr10560
  %fptr10561 = inttoptr i64 %f10562 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10561(i64 %cont7227, i64 %arg7996, i64 %arg7995)    ; tail call
  ret void
}


define void @lam8146(i64 %env8147, i64 %cont7228, i64 %Y34$lst) {
  %envptr10563 = inttoptr i64 %env8147 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10564 = getelementptr inbounds i64, i64* %envptr10563, i64 1                ; &envptr10563[1]
  %jb8$_37length = load i64, i64* %envptr10564, align 8                              ; load; *envptr10564
  %a6962 = call i64 @prim_null_63(i64 %Y34$lst)                                      ; call prim_null_63
  %cmp10565 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp10565, label %else10567, label %then10566                                ; if

then10566:
  %arg8000 = add i64 0, 0                                                            ; quoted ()
  %arg7999 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10568 = inttoptr i64 %cont7228 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10568)                                        ; assert function application
  %i0ptr10569 = getelementptr inbounds i64, i64* %cloptr10568, i64 0                 ; &cloptr10568[0]
  %f10571 = load i64, i64* %i0ptr10569, align 8                                      ; load; *i0ptr10569
  %fptr10570 = inttoptr i64 %f10571 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10570(i64 %cont7228, i64 %arg8000, i64 %arg7999)    ; tail call
  ret void

else10567:
  %a6963 = call i64 @prim_cdr(i64 %Y34$lst)                                          ; call prim_cdr
  %cloptr10572 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10574 = getelementptr inbounds i64, i64* %cloptr10572, i64 1                  ; &eptr10574[1]
  store i64 %cont7228, i64* %eptr10574                                               ; *eptr10574 = %cont7228
  %eptr10573 = getelementptr inbounds i64, i64* %cloptr10572, i64 0                  ; &cloptr10572[0]
  %f10575 = ptrtoint void(i64,i64,i64)* @lam8144 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10575, i64* %eptr10573                                                 ; store fptr
  %arg8004 = ptrtoint i64* %cloptr10572 to i64                                       ; closure cast; i64* -> i64
  %cloptr10576 = inttoptr i64 %jb8$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10576)                                        ; assert function application
  %i0ptr10577 = getelementptr inbounds i64, i64* %cloptr10576, i64 0                 ; &cloptr10576[0]
  %f10579 = load i64, i64* %i0ptr10577, align 8                                      ; load; *i0ptr10577
  %fptr10578 = inttoptr i64 %f10579 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10578(i64 %jb8$_37length, i64 %arg8004, i64 %a6963) ; tail call
  ret void
}


define void @lam8144(i64 %env8145, i64 %_957229, i64 %a6964) {
  %envptr10580 = inttoptr i64 %env8145 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10581 = getelementptr inbounds i64, i64* %envptr10580, i64 1                ; &envptr10580[1]
  %cont7228 = load i64, i64* %envptr10581, align 8                                   ; load; *envptr10581
  %arg8007 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7230 = call i64 @prim__43(i64 %arg8007, i64 %a6964)                        ; call prim__43
  %arg8009 = add i64 0, 0                                                            ; quoted ()
  %cloptr10582 = inttoptr i64 %cont7228 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10582)                                        ; assert function application
  %i0ptr10583 = getelementptr inbounds i64, i64* %cloptr10582, i64 0                 ; &cloptr10582[0]
  %f10585 = load i64, i64* %i0ptr10583, align 8                                      ; load; *i0ptr10583
  %fptr10584 = inttoptr i64 %f10585 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10584(i64 %cont7228, i64 %arg8009, i64 %retprim7230); tail call
  ret void
}


define void @lam8138(i64 %env8139, i64 %cont7231, i64 %bmJ$_37take) {
  %arg8012 = add i64 0, 0                                                            ; quoted ()
  %cloptr10586 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10588 = getelementptr inbounds i64, i64* %cloptr10586, i64 1                  ; &eptr10588[1]
  store i64 %bmJ$_37take, i64* %eptr10588                                            ; *eptr10588 = %bmJ$_37take
  %eptr10587 = getelementptr inbounds i64, i64* %cloptr10586, i64 0                  ; &cloptr10586[0]
  %f10589 = ptrtoint void(i64,i64,i64,i64)* @lam8135 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10589, i64* %eptr10587                                                 ; store fptr
  %arg8011 = ptrtoint i64* %cloptr10586 to i64                                       ; closure cast; i64* -> i64
  %cloptr10590 = inttoptr i64 %cont7231 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10590)                                        ; assert function application
  %i0ptr10591 = getelementptr inbounds i64, i64* %cloptr10590, i64 0                 ; &cloptr10590[0]
  %f10593 = load i64, i64* %i0ptr10591, align 8                                      ; load; *i0ptr10591
  %fptr10592 = inttoptr i64 %f10593 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10592(i64 %cont7231, i64 %arg8012, i64 %arg8011)    ; tail call
  ret void
}


define void @lam8135(i64 %env8136, i64 %cont7232, i64 %fQ9$lst, i64 %TyG$n) {
  %envptr10594 = inttoptr i64 %env8136 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10595 = getelementptr inbounds i64, i64* %envptr10594, i64 1                ; &envptr10594[1]
  %bmJ$_37take = load i64, i64* %envptr10595, align 8                                ; load; *envptr10595
  %arg8014 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim__61(i64 %TyG$n, i64 %arg8014)                              ; call prim__61
  %cmp10596 = icmp eq i64 %a6956, 15                                                 ; false?
  br i1 %cmp10596, label %else10598, label %then10597                                ; if

then10597:
  %arg8017 = add i64 0, 0                                                            ; quoted ()
  %arg8016 = add i64 0, 0                                                            ; quoted ()
  %cloptr10599 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10599)                                        ; assert function application
  %i0ptr10600 = getelementptr inbounds i64, i64* %cloptr10599, i64 0                 ; &cloptr10599[0]
  %f10602 = load i64, i64* %i0ptr10600, align 8                                      ; load; *i0ptr10600
  %fptr10601 = inttoptr i64 %f10602 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10601(i64 %cont7232, i64 %arg8017, i64 %arg8016)    ; tail call
  ret void

else10598:
  %a6957 = call i64 @prim_null_63(i64 %fQ9$lst)                                      ; call prim_null_63
  %cmp10603 = icmp eq i64 %a6957, 15                                                 ; false?
  br i1 %cmp10603, label %else10605, label %then10604                                ; if

then10604:
  %arg8021 = add i64 0, 0                                                            ; quoted ()
  %arg8020 = add i64 0, 0                                                            ; quoted ()
  %cloptr10606 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10606)                                        ; assert function application
  %i0ptr10607 = getelementptr inbounds i64, i64* %cloptr10606, i64 0                 ; &cloptr10606[0]
  %f10609 = load i64, i64* %i0ptr10607, align 8                                      ; load; *i0ptr10607
  %fptr10608 = inttoptr i64 %f10609 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10608(i64 %cont7232, i64 %arg8021, i64 %arg8020)    ; tail call
  ret void

else10605:
  %a6958 = call i64 @prim_car(i64 %fQ9$lst)                                          ; call prim_car
  %a6959 = call i64 @prim_cdr(i64 %fQ9$lst)                                          ; call prim_cdr
  %arg8025 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6960 = call i64 @prim__45(i64 %TyG$n, i64 %arg8025)                              ; call prim__45
  %cloptr10610 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10612 = getelementptr inbounds i64, i64* %cloptr10610, i64 1                  ; &eptr10612[1]
  %eptr10613 = getelementptr inbounds i64, i64* %cloptr10610, i64 2                  ; &eptr10613[2]
  store i64 %a6958, i64* %eptr10612                                                  ; *eptr10612 = %a6958
  store i64 %cont7232, i64* %eptr10613                                               ; *eptr10613 = %cont7232
  %eptr10611 = getelementptr inbounds i64, i64* %cloptr10610, i64 0                  ; &cloptr10610[0]
  %f10614 = ptrtoint void(i64,i64,i64)* @lam8131 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10614, i64* %eptr10611                                                 ; store fptr
  %arg8029 = ptrtoint i64* %cloptr10610 to i64                                       ; closure cast; i64* -> i64
  %cloptr10615 = inttoptr i64 %bmJ$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10615)                                        ; assert function application
  %i0ptr10616 = getelementptr inbounds i64, i64* %cloptr10615, i64 0                 ; &cloptr10615[0]
  %f10618 = load i64, i64* %i0ptr10616, align 8                                      ; load; *i0ptr10616
  %fptr10617 = inttoptr i64 %f10618 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10617(i64 %bmJ$_37take, i64 %arg8029, i64 %a6959, i64 %a6960); tail call
  ret void
}


define void @lam8131(i64 %env8132, i64 %_957233, i64 %a6961) {
  %envptr10619 = inttoptr i64 %env8132 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10620 = getelementptr inbounds i64, i64* %envptr10619, i64 2                ; &envptr10619[2]
  %cont7232 = load i64, i64* %envptr10620, align 8                                   ; load; *envptr10620
  %envptr10621 = inttoptr i64 %env8132 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10622 = getelementptr inbounds i64, i64* %envptr10621, i64 1                ; &envptr10621[1]
  %a6958 = load i64, i64* %envptr10622, align 8                                      ; load; *envptr10622
  %retprim7234 = call i64 @prim_cons(i64 %a6958, i64 %a6961)                         ; call prim_cons
  %arg8034 = add i64 0, 0                                                            ; quoted ()
  %cloptr10623 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10623)                                        ; assert function application
  %i0ptr10624 = getelementptr inbounds i64, i64* %cloptr10623, i64 0                 ; &cloptr10623[0]
  %f10626 = load i64, i64* %i0ptr10624, align 8                                      ; load; *i0ptr10624
  %fptr10625 = inttoptr i64 %f10626 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10625(i64 %cont7232, i64 %arg8034, i64 %retprim7234); tail call
  ret void
}


define void @lam8124(i64 %env8125, i64 %cont7235, i64 %BJ1$_37map) {
  %arg8037 = add i64 0, 0                                                            ; quoted ()
  %cloptr10627 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10629 = getelementptr inbounds i64, i64* %cloptr10627, i64 1                  ; &eptr10629[1]
  store i64 %BJ1$_37map, i64* %eptr10629                                             ; *eptr10629 = %BJ1$_37map
  %eptr10628 = getelementptr inbounds i64, i64* %cloptr10627, i64 0                  ; &cloptr10627[0]
  %f10630 = ptrtoint void(i64,i64,i64,i64)* @lam8121 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10630, i64* %eptr10628                                                 ; store fptr
  %arg8036 = ptrtoint i64* %cloptr10627 to i64                                       ; closure cast; i64* -> i64
  %cloptr10631 = inttoptr i64 %cont7235 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10631)                                        ; assert function application
  %i0ptr10632 = getelementptr inbounds i64, i64* %cloptr10631, i64 0                 ; &cloptr10631[0]
  %f10634 = load i64, i64* %i0ptr10632, align 8                                      ; load; *i0ptr10632
  %fptr10633 = inttoptr i64 %f10634 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10633(i64 %cont7235, i64 %arg8037, i64 %arg8036)    ; tail call
  ret void
}


define void @lam8121(i64 %env8122, i64 %cont7236, i64 %fUx$f, i64 %Ld8$lst) {
  %envptr10635 = inttoptr i64 %env8122 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10636 = getelementptr inbounds i64, i64* %envptr10635, i64 1                ; &envptr10635[1]
  %BJ1$_37map = load i64, i64* %envptr10636, align 8                                 ; load; *envptr10636
  %a6951 = call i64 @prim_null_63(i64 %Ld8$lst)                                      ; call prim_null_63
  %cmp10637 = icmp eq i64 %a6951, 15                                                 ; false?
  br i1 %cmp10637, label %else10639, label %then10638                                ; if

then10638:
  %arg8041 = add i64 0, 0                                                            ; quoted ()
  %arg8040 = add i64 0, 0                                                            ; quoted ()
  %cloptr10640 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10640)                                        ; assert function application
  %i0ptr10641 = getelementptr inbounds i64, i64* %cloptr10640, i64 0                 ; &cloptr10640[0]
  %f10643 = load i64, i64* %i0ptr10641, align 8                                      ; load; *i0ptr10641
  %fptr10642 = inttoptr i64 %f10643 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10642(i64 %cont7236, i64 %arg8041, i64 %arg8040)    ; tail call
  ret void

else10639:
  %a6952 = call i64 @prim_car(i64 %Ld8$lst)                                          ; call prim_car
  %cloptr10644 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10646 = getelementptr inbounds i64, i64* %cloptr10644, i64 1                  ; &eptr10646[1]
  %eptr10647 = getelementptr inbounds i64, i64* %cloptr10644, i64 2                  ; &eptr10647[2]
  %eptr10648 = getelementptr inbounds i64, i64* %cloptr10644, i64 3                  ; &eptr10648[3]
  %eptr10649 = getelementptr inbounds i64, i64* %cloptr10644, i64 4                  ; &eptr10649[4]
  store i64 %BJ1$_37map, i64* %eptr10646                                             ; *eptr10646 = %BJ1$_37map
  store i64 %fUx$f, i64* %eptr10647                                                  ; *eptr10647 = %fUx$f
  store i64 %Ld8$lst, i64* %eptr10648                                                ; *eptr10648 = %Ld8$lst
  store i64 %cont7236, i64* %eptr10649                                               ; *eptr10649 = %cont7236
  %eptr10645 = getelementptr inbounds i64, i64* %cloptr10644, i64 0                  ; &cloptr10644[0]
  %f10650 = ptrtoint void(i64,i64,i64)* @lam8119 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10650, i64* %eptr10645                                                 ; store fptr
  %arg8045 = ptrtoint i64* %cloptr10644 to i64                                       ; closure cast; i64* -> i64
  %cloptr10651 = inttoptr i64 %fUx$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10651)                                        ; assert function application
  %i0ptr10652 = getelementptr inbounds i64, i64* %cloptr10651, i64 0                 ; &cloptr10651[0]
  %f10654 = load i64, i64* %i0ptr10652, align 8                                      ; load; *i0ptr10652
  %fptr10653 = inttoptr i64 %f10654 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10653(i64 %fUx$f, i64 %arg8045, i64 %a6952)         ; tail call
  ret void
}


define void @lam8119(i64 %env8120, i64 %_957237, i64 %a6953) {
  %envptr10655 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10656 = getelementptr inbounds i64, i64* %envptr10655, i64 4                ; &envptr10655[4]
  %cont7236 = load i64, i64* %envptr10656, align 8                                   ; load; *envptr10656
  %envptr10657 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10658 = getelementptr inbounds i64, i64* %envptr10657, i64 3                ; &envptr10657[3]
  %Ld8$lst = load i64, i64* %envptr10658, align 8                                    ; load; *envptr10658
  %envptr10659 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10660 = getelementptr inbounds i64, i64* %envptr10659, i64 2                ; &envptr10659[2]
  %fUx$f = load i64, i64* %envptr10660, align 8                                      ; load; *envptr10660
  %envptr10661 = inttoptr i64 %env8120 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10662 = getelementptr inbounds i64, i64* %envptr10661, i64 1                ; &envptr10661[1]
  %BJ1$_37map = load i64, i64* %envptr10662, align 8                                 ; load; *envptr10662
  %a6954 = call i64 @prim_cdr(i64 %Ld8$lst)                                          ; call prim_cdr
  %cloptr10663 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10665 = getelementptr inbounds i64, i64* %cloptr10663, i64 1                  ; &eptr10665[1]
  %eptr10666 = getelementptr inbounds i64, i64* %cloptr10663, i64 2                  ; &eptr10666[2]
  store i64 %a6953, i64* %eptr10665                                                  ; *eptr10665 = %a6953
  store i64 %cont7236, i64* %eptr10666                                               ; *eptr10666 = %cont7236
  %eptr10664 = getelementptr inbounds i64, i64* %cloptr10663, i64 0                  ; &cloptr10663[0]
  %f10667 = ptrtoint void(i64,i64,i64)* @lam8117 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10667, i64* %eptr10664                                                 ; store fptr
  %arg8050 = ptrtoint i64* %cloptr10663 to i64                                       ; closure cast; i64* -> i64
  %cloptr10668 = inttoptr i64 %BJ1$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10668)                                        ; assert function application
  %i0ptr10669 = getelementptr inbounds i64, i64* %cloptr10668, i64 0                 ; &cloptr10668[0]
  %f10671 = load i64, i64* %i0ptr10669, align 8                                      ; load; *i0ptr10669
  %fptr10670 = inttoptr i64 %f10671 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10670(i64 %BJ1$_37map, i64 %arg8050, i64 %fUx$f, i64 %a6954); tail call
  ret void
}


define void @lam8117(i64 %env8118, i64 %_957238, i64 %a6955) {
  %envptr10672 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10673 = getelementptr inbounds i64, i64* %envptr10672, i64 2                ; &envptr10672[2]
  %cont7236 = load i64, i64* %envptr10673, align 8                                   ; load; *envptr10673
  %envptr10674 = inttoptr i64 %env8118 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10675 = getelementptr inbounds i64, i64* %envptr10674, i64 1                ; &envptr10674[1]
  %a6953 = load i64, i64* %envptr10675, align 8                                      ; load; *envptr10675
  %retprim7239 = call i64 @prim_cons(i64 %a6953, i64 %a6955)                         ; call prim_cons
  %arg8055 = add i64 0, 0                                                            ; quoted ()
  %cloptr10676 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10676)                                        ; assert function application
  %i0ptr10677 = getelementptr inbounds i64, i64* %cloptr10676, i64 0                 ; &cloptr10676[0]
  %f10679 = load i64, i64* %i0ptr10677, align 8                                      ; load; *i0ptr10677
  %fptr10678 = inttoptr i64 %f10679 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10678(i64 %cont7236, i64 %arg8055, i64 %retprim7239); tail call
  ret void
}


define void @lam8112(i64 %env8113, i64 %cont7240, i64 %FfR$_37foldr1) {
  %arg8058 = add i64 0, 0                                                            ; quoted ()
  %cloptr10680 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10682 = getelementptr inbounds i64, i64* %cloptr10680, i64 1                  ; &eptr10682[1]
  store i64 %FfR$_37foldr1, i64* %eptr10682                                          ; *eptr10682 = %FfR$_37foldr1
  %eptr10681 = getelementptr inbounds i64, i64* %cloptr10680, i64 0                  ; &cloptr10680[0]
  %f10683 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8109 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10683, i64* %eptr10681                                                 ; store fptr
  %arg8057 = ptrtoint i64* %cloptr10680 to i64                                       ; closure cast; i64* -> i64
  %cloptr10684 = inttoptr i64 %cont7240 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10684)                                        ; assert function application
  %i0ptr10685 = getelementptr inbounds i64, i64* %cloptr10684, i64 0                 ; &cloptr10684[0]
  %f10687 = load i64, i64* %i0ptr10685, align 8                                      ; load; *i0ptr10685
  %fptr10686 = inttoptr i64 %f10687 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10686(i64 %cont7240, i64 %arg8058, i64 %arg8057)    ; tail call
  ret void
}


define void @lam8109(i64 %env8110, i64 %cont7241, i64 %Q4h$f, i64 %T2r$acc, i64 %uZp$lst) {
  %envptr10688 = inttoptr i64 %env8110 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10689 = getelementptr inbounds i64, i64* %envptr10688, i64 1                ; &envptr10688[1]
  %FfR$_37foldr1 = load i64, i64* %envptr10689, align 8                              ; load; *envptr10689
  %a6947 = call i64 @prim_null_63(i64 %uZp$lst)                                      ; call prim_null_63
  %cmp10690 = icmp eq i64 %a6947, 15                                                 ; false?
  br i1 %cmp10690, label %else10692, label %then10691                                ; if

then10691:
  %arg8062 = add i64 0, 0                                                            ; quoted ()
  %cloptr10693 = inttoptr i64 %cont7241 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10693)                                        ; assert function application
  %i0ptr10694 = getelementptr inbounds i64, i64* %cloptr10693, i64 0                 ; &cloptr10693[0]
  %f10696 = load i64, i64* %i0ptr10694, align 8                                      ; load; *i0ptr10694
  %fptr10695 = inttoptr i64 %f10696 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10695(i64 %cont7241, i64 %arg8062, i64 %T2r$acc)    ; tail call
  ret void

else10692:
  %a6948 = call i64 @prim_car(i64 %uZp$lst)                                          ; call prim_car
  %a6949 = call i64 @prim_cdr(i64 %uZp$lst)                                          ; call prim_cdr
  %cloptr10697 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10699 = getelementptr inbounds i64, i64* %cloptr10697, i64 1                  ; &eptr10699[1]
  %eptr10700 = getelementptr inbounds i64, i64* %cloptr10697, i64 2                  ; &eptr10700[2]
  %eptr10701 = getelementptr inbounds i64, i64* %cloptr10697, i64 3                  ; &eptr10701[3]
  store i64 %a6948, i64* %eptr10699                                                  ; *eptr10699 = %a6948
  store i64 %Q4h$f, i64* %eptr10700                                                  ; *eptr10700 = %Q4h$f
  store i64 %cont7241, i64* %eptr10701                                               ; *eptr10701 = %cont7241
  %eptr10698 = getelementptr inbounds i64, i64* %cloptr10697, i64 0                  ; &cloptr10697[0]
  %f10702 = ptrtoint void(i64,i64,i64)* @lam8107 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10702, i64* %eptr10698                                                 ; store fptr
  %arg8069 = ptrtoint i64* %cloptr10697 to i64                                       ; closure cast; i64* -> i64
  %cloptr10703 = inttoptr i64 %FfR$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10703)                                        ; assert function application
  %i0ptr10704 = getelementptr inbounds i64, i64* %cloptr10703, i64 0                 ; &cloptr10703[0]
  %f10706 = load i64, i64* %i0ptr10704, align 8                                      ; load; *i0ptr10704
  %fptr10705 = inttoptr i64 %f10706 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10705(i64 %FfR$_37foldr1, i64 %arg8069, i64 %Q4h$f, i64 %T2r$acc, i64 %a6949); tail call
  ret void
}


define void @lam8107(i64 %env8108, i64 %_957242, i64 %a6950) {
  %envptr10707 = inttoptr i64 %env8108 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10708 = getelementptr inbounds i64, i64* %envptr10707, i64 3                ; &envptr10707[3]
  %cont7241 = load i64, i64* %envptr10708, align 8                                   ; load; *envptr10708
  %envptr10709 = inttoptr i64 %env8108 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10710 = getelementptr inbounds i64, i64* %envptr10709, i64 2                ; &envptr10709[2]
  %Q4h$f = load i64, i64* %envptr10710, align 8                                      ; load; *envptr10710
  %envptr10711 = inttoptr i64 %env8108 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10712 = getelementptr inbounds i64, i64* %envptr10711, i64 1                ; &envptr10711[1]
  %a6948 = load i64, i64* %envptr10712, align 8                                      ; load; *envptr10712
  %cloptr10713 = inttoptr i64 %Q4h$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10713)                                        ; assert function application
  %i0ptr10714 = getelementptr inbounds i64, i64* %cloptr10713, i64 0                 ; &cloptr10713[0]
  %f10716 = load i64, i64* %i0ptr10714, align 8                                      ; load; *i0ptr10714
  %fptr10715 = inttoptr i64 %f10716 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10715(i64 %Q4h$f, i64 %cont7241, i64 %a6948, i64 %a6950); tail call
  ret void
}


define void @lam8104(i64 %env8105, i64 %cont7244, i64 %pKY$y) {
  %arg8076 = add i64 0, 0                                                            ; quoted ()
  %cloptr10717 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10719 = getelementptr inbounds i64, i64* %cloptr10717, i64 1                  ; &eptr10719[1]
  store i64 %pKY$y, i64* %eptr10719                                                  ; *eptr10719 = %pKY$y
  %eptr10718 = getelementptr inbounds i64, i64* %cloptr10717, i64 0                  ; &cloptr10717[0]
  %f10720 = ptrtoint void(i64,i64,i64)* @lam8101 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10720, i64* %eptr10718                                                 ; store fptr
  %arg8075 = ptrtoint i64* %cloptr10717 to i64                                       ; closure cast; i64* -> i64
  %cloptr10721 = inttoptr i64 %cont7244 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10721)                                        ; assert function application
  %i0ptr10722 = getelementptr inbounds i64, i64* %cloptr10721, i64 0                 ; &cloptr10721[0]
  %f10724 = load i64, i64* %i0ptr10722, align 8                                      ; load; *i0ptr10722
  %fptr10723 = inttoptr i64 %f10724 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10723(i64 %cont7244, i64 %arg8076, i64 %arg8075)    ; tail call
  ret void
}


define void @lam8101(i64 %env8102, i64 %cont7245, i64 %cMG$f) {
  %envptr10725 = inttoptr i64 %env8102 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10726 = getelementptr inbounds i64, i64* %envptr10725, i64 1                ; &envptr10725[1]
  %pKY$y = load i64, i64* %envptr10726, align 8                                      ; load; *envptr10726
  %cloptr10727 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10729 = getelementptr inbounds i64, i64* %cloptr10727, i64 1                  ; &eptr10729[1]
  %eptr10730 = getelementptr inbounds i64, i64* %cloptr10727, i64 2                  ; &eptr10730[2]
  store i64 %cMG$f, i64* %eptr10729                                                  ; *eptr10729 = %cMG$f
  store i64 %pKY$y, i64* %eptr10730                                                  ; *eptr10730 = %pKY$y
  %eptr10728 = getelementptr inbounds i64, i64* %cloptr10727, i64 0                  ; &cloptr10727[0]
  %f10731 = ptrtoint void(i64,i64)* @lam8099 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10731, i64* %eptr10728                                                 ; store fptr
  %arg8078 = ptrtoint i64* %cloptr10727 to i64                                       ; closure cast; i64* -> i64
  %cloptr10732 = inttoptr i64 %cMG$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10732)                                        ; assert function application
  %i0ptr10733 = getelementptr inbounds i64, i64* %cloptr10732, i64 0                 ; &cloptr10732[0]
  %f10735 = load i64, i64* %i0ptr10733, align 8                                      ; load; *i0ptr10733
  %fptr10734 = inttoptr i64 %f10735 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10734(i64 %cMG$f, i64 %cont7245, i64 %arg8078)      ; tail call
  ret void
}


define void @lam8099(i64 %env8100, i64 %eCE$args7247) {
  %envptr10736 = inttoptr i64 %env8100 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10737 = getelementptr inbounds i64, i64* %envptr10736, i64 2                ; &envptr10736[2]
  %pKY$y = load i64, i64* %envptr10737, align 8                                      ; load; *envptr10737
  %envptr10738 = inttoptr i64 %env8100 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10739 = getelementptr inbounds i64, i64* %envptr10738, i64 1                ; &envptr10738[1]
  %cMG$f = load i64, i64* %envptr10739, align 8                                      ; load; *envptr10739
  %cont7246 = call i64 @prim_car(i64 %eCE$args7247)                                  ; call prim_car
  %eCE$args = call i64 @prim_cdr(i64 %eCE$args7247)                                  ; call prim_cdr
  %cloptr10740 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10742 = getelementptr inbounds i64, i64* %cloptr10740, i64 1                  ; &eptr10742[1]
  %eptr10743 = getelementptr inbounds i64, i64* %cloptr10740, i64 2                  ; &eptr10743[2]
  %eptr10744 = getelementptr inbounds i64, i64* %cloptr10740, i64 3                  ; &eptr10744[3]
  store i64 %eCE$args, i64* %eptr10742                                               ; *eptr10742 = %eCE$args
  store i64 %cMG$f, i64* %eptr10743                                                  ; *eptr10743 = %cMG$f
  store i64 %cont7246, i64* %eptr10744                                               ; *eptr10744 = %cont7246
  %eptr10741 = getelementptr inbounds i64, i64* %cloptr10740, i64 0                  ; &cloptr10740[0]
  %f10745 = ptrtoint void(i64,i64,i64)* @lam8097 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10745, i64* %eptr10741                                                 ; store fptr
  %arg8084 = ptrtoint i64* %cloptr10740 to i64                                       ; closure cast; i64* -> i64
  %cloptr10746 = inttoptr i64 %pKY$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10746)                                        ; assert function application
  %i0ptr10747 = getelementptr inbounds i64, i64* %cloptr10746, i64 0                 ; &cloptr10746[0]
  %f10749 = load i64, i64* %i0ptr10747, align 8                                      ; load; *i0ptr10747
  %fptr10748 = inttoptr i64 %f10749 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10748(i64 %pKY$y, i64 %arg8084, i64 %pKY$y)         ; tail call
  ret void
}


define void @lam8097(i64 %env8098, i64 %_957248, i64 %a6945) {
  %envptr10750 = inttoptr i64 %env8098 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10751 = getelementptr inbounds i64, i64* %envptr10750, i64 3                ; &envptr10750[3]
  %cont7246 = load i64, i64* %envptr10751, align 8                                   ; load; *envptr10751
  %envptr10752 = inttoptr i64 %env8098 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10753 = getelementptr inbounds i64, i64* %envptr10752, i64 2                ; &envptr10752[2]
  %cMG$f = load i64, i64* %envptr10753, align 8                                      ; load; *envptr10753
  %envptr10754 = inttoptr i64 %env8098 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10755 = getelementptr inbounds i64, i64* %envptr10754, i64 1                ; &envptr10754[1]
  %eCE$args = load i64, i64* %envptr10755, align 8                                   ; load; *envptr10755
  %cloptr10756 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10758 = getelementptr inbounds i64, i64* %cloptr10756, i64 1                  ; &eptr10758[1]
  %eptr10759 = getelementptr inbounds i64, i64* %cloptr10756, i64 2                  ; &eptr10759[2]
  store i64 %eCE$args, i64* %eptr10758                                               ; *eptr10758 = %eCE$args
  store i64 %cont7246, i64* %eptr10759                                               ; *eptr10759 = %cont7246
  %eptr10757 = getelementptr inbounds i64, i64* %cloptr10756, i64 0                  ; &cloptr10756[0]
  %f10760 = ptrtoint void(i64,i64,i64)* @lam8095 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10760, i64* %eptr10757                                                 ; store fptr
  %arg8087 = ptrtoint i64* %cloptr10756 to i64                                       ; closure cast; i64* -> i64
  %cloptr10761 = inttoptr i64 %a6945 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10761)                                        ; assert function application
  %i0ptr10762 = getelementptr inbounds i64, i64* %cloptr10761, i64 0                 ; &cloptr10761[0]
  %f10764 = load i64, i64* %i0ptr10762, align 8                                      ; load; *i0ptr10762
  %fptr10763 = inttoptr i64 %f10764 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10763(i64 %a6945, i64 %arg8087, i64 %cMG$f)         ; tail call
  ret void
}


define void @lam8095(i64 %env8096, i64 %_957249, i64 %a6946) {
  %envptr10765 = inttoptr i64 %env8096 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10766 = getelementptr inbounds i64, i64* %envptr10765, i64 2                ; &envptr10765[2]
  %cont7246 = load i64, i64* %envptr10766, align 8                                   ; load; *envptr10766
  %envptr10767 = inttoptr i64 %env8096 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10768 = getelementptr inbounds i64, i64* %envptr10767, i64 1                ; &envptr10767[1]
  %eCE$args = load i64, i64* %envptr10768, align 8                                   ; load; *envptr10768
  %cps_45lst7250 = call i64 @prim_cons(i64 %cont7246, i64 %eCE$args)                 ; call prim_cons
  %cloptr10769 = inttoptr i64 %a6946 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10769)                                        ; assert function application
  %i0ptr10770 = getelementptr inbounds i64, i64* %cloptr10769, i64 0                 ; &cloptr10769[0]
  %f10772 = load i64, i64* %i0ptr10770, align 8                                      ; load; *i0ptr10770
  %fptr10771 = inttoptr i64 %f10772 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10771(i64 %a6946, i64 %cps_45lst7250)               ; tail call
  ret void
}





@sym9356 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
