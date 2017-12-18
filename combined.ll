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
  %cloptr8593 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8594 = getelementptr inbounds i64, i64* %cloptr8593, i64 0                    ; &cloptr8593[0]
  %f8595 = ptrtoint void(i64,i64,i64)* @lam8591 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8595, i64* %eptr8594                                                   ; store fptr
  %arg7257 = ptrtoint i64* %cloptr8593 to i64                                        ; closure cast; i64* -> i64
  %cloptr8596 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8597 = getelementptr inbounds i64, i64* %cloptr8596, i64 0                    ; &cloptr8596[0]
  %f8598 = ptrtoint void(i64,i64,i64)* @lam8589 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8598, i64* %eptr8597                                                   ; store fptr
  %arg7256 = ptrtoint i64* %cloptr8596 to i64                                        ; closure cast; i64* -> i64
  %cloptr8599 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8600 = getelementptr inbounds i64, i64* %cloptr8599, i64 0                    ; &cloptr8599[0]
  %f8601 = ptrtoint void(i64,i64,i64)* @lam8135 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8601, i64* %eptr8600                                                   ; store fptr
  %arg7255 = ptrtoint i64* %cloptr8599 to i64                                        ; closure cast; i64* -> i64
  %cloptr8602 = inttoptr i64 %arg7257 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8602)                                         ; assert function application
  %i0ptr8603 = getelementptr inbounds i64, i64* %cloptr8602, i64 0                   ; &cloptr8602[0]
  %f8605 = load i64, i64* %i0ptr8603, align 8                                        ; load; *i0ptr8603
  %fptr8604 = inttoptr i64 %f8605 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8604(i64 %arg7257, i64 %arg7256, i64 %arg7255)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam8591(i64 %env8592, i64 %cont7247, i64 %dIj$yu) {
  %cloptr8606 = inttoptr i64 %dIj$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8606)                                         ; assert function application
  %i0ptr8607 = getelementptr inbounds i64, i64* %cloptr8606, i64 0                   ; &cloptr8606[0]
  %f8609 = load i64, i64* %i0ptr8607, align 8                                        ; load; *i0ptr8607
  %fptr8608 = inttoptr i64 %f8609 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8608(i64 %dIj$yu, i64 %cont7247, i64 %dIj$yu)       ; tail call
  ret void
}


define void @lam8589(i64 %env8590, i64 %_957065, i64 %kLF$Ycmb) {
  %cloptr8610 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8612 = getelementptr inbounds i64, i64* %cloptr8610, i64 1                    ; &eptr8612[1]
  store i64 %kLF$Ycmb, i64* %eptr8612                                                ; *eptr8612 = %kLF$Ycmb
  %eptr8611 = getelementptr inbounds i64, i64* %cloptr8610, i64 0                    ; &cloptr8610[0]
  %f8613 = ptrtoint void(i64,i64,i64)* @lam8587 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8613, i64* %eptr8611                                                   ; store fptr
  %arg7262 = ptrtoint i64* %cloptr8610 to i64                                        ; closure cast; i64* -> i64
  %cloptr8614 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8615 = getelementptr inbounds i64, i64* %cloptr8614, i64 0                    ; &cloptr8614[0]
  %f8616 = ptrtoint void(i64,i64,i64)* @lam8143 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8616, i64* %eptr8615                                                   ; store fptr
  %arg7261 = ptrtoint i64* %cloptr8614 to i64                                        ; closure cast; i64* -> i64
  %cloptr8617 = inttoptr i64 %kLF$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8617)                                         ; assert function application
  %i0ptr8618 = getelementptr inbounds i64, i64* %cloptr8617, i64 0                   ; &cloptr8617[0]
  %f8620 = load i64, i64* %i0ptr8618, align 8                                        ; load; *i0ptr8618
  %fptr8619 = inttoptr i64 %f8620 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8619(i64 %kLF$Ycmb, i64 %arg7262, i64 %arg7261)     ; tail call
  ret void
}


define void @lam8587(i64 %env8588, i64 %_957066, i64 %sOd$_37foldr1) {
  %envptr8621 = inttoptr i64 %env8588 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8622 = getelementptr inbounds i64, i64* %envptr8621, i64 1                  ; &envptr8621[1]
  %kLF$Ycmb = load i64, i64* %envptr8622, align 8                                    ; load; *envptr8622
  %cloptr8623 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8625 = getelementptr inbounds i64, i64* %cloptr8623, i64 1                    ; &eptr8625[1]
  %eptr8626 = getelementptr inbounds i64, i64* %cloptr8623, i64 2                    ; &eptr8626[2]
  store i64 %kLF$Ycmb, i64* %eptr8625                                                ; *eptr8625 = %kLF$Ycmb
  store i64 %sOd$_37foldr1, i64* %eptr8626                                           ; *eptr8626 = %sOd$_37foldr1
  %eptr8624 = getelementptr inbounds i64, i64* %cloptr8623, i64 0                    ; &cloptr8623[0]
  %f8627 = ptrtoint void(i64,i64,i64)* @lam8585 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8627, i64* %eptr8624                                                   ; store fptr
  %arg7265 = ptrtoint i64* %cloptr8623 to i64                                        ; closure cast; i64* -> i64
  %cloptr8628 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8629 = getelementptr inbounds i64, i64* %cloptr8628, i64 0                    ; &cloptr8628[0]
  %f8630 = ptrtoint void(i64,i64,i64)* @lam8155 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8630, i64* %eptr8629                                                   ; store fptr
  %arg7264 = ptrtoint i64* %cloptr8628 to i64                                        ; closure cast; i64* -> i64
  %cloptr8631 = inttoptr i64 %kLF$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8631)                                         ; assert function application
  %i0ptr8632 = getelementptr inbounds i64, i64* %cloptr8631, i64 0                   ; &cloptr8631[0]
  %f8634 = load i64, i64* %i0ptr8632, align 8                                        ; load; *i0ptr8632
  %fptr8633 = inttoptr i64 %f8634 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8633(i64 %kLF$Ycmb, i64 %arg7265, i64 %arg7264)     ; tail call
  ret void
}


define void @lam8585(i64 %env8586, i64 %_957067, i64 %Kpv$_37map1) {
  %envptr8635 = inttoptr i64 %env8586 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8636 = getelementptr inbounds i64, i64* %envptr8635, i64 2                  ; &envptr8635[2]
  %sOd$_37foldr1 = load i64, i64* %envptr8636, align 8                               ; load; *envptr8636
  %envptr8637 = inttoptr i64 %env8586 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8638 = getelementptr inbounds i64, i64* %envptr8637, i64 1                  ; &envptr8637[1]
  %kLF$Ycmb = load i64, i64* %envptr8638, align 8                                    ; load; *envptr8638
  %cloptr8639 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8641 = getelementptr inbounds i64, i64* %cloptr8639, i64 1                    ; &eptr8641[1]
  %eptr8642 = getelementptr inbounds i64, i64* %cloptr8639, i64 2                    ; &eptr8642[2]
  %eptr8643 = getelementptr inbounds i64, i64* %cloptr8639, i64 3                    ; &eptr8643[3]
  store i64 %kLF$Ycmb, i64* %eptr8641                                                ; *eptr8641 = %kLF$Ycmb
  store i64 %sOd$_37foldr1, i64* %eptr8642                                           ; *eptr8642 = %sOd$_37foldr1
  store i64 %Kpv$_37map1, i64* %eptr8643                                             ; *eptr8643 = %Kpv$_37map1
  %eptr8640 = getelementptr inbounds i64, i64* %cloptr8639, i64 0                    ; &cloptr8639[0]
  %f8644 = ptrtoint void(i64,i64,i64)* @lam8583 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8644, i64* %eptr8640                                                   ; store fptr
  %arg7268 = ptrtoint i64* %cloptr8639 to i64                                        ; closure cast; i64* -> i64
  %cloptr8645 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8646 = getelementptr inbounds i64, i64* %cloptr8645, i64 0                    ; &cloptr8645[0]
  %f8647 = ptrtoint void(i64,i64,i64)* @lam8169 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8647, i64* %eptr8646                                                   ; store fptr
  %arg7267 = ptrtoint i64* %cloptr8645 to i64                                        ; closure cast; i64* -> i64
  %cloptr8648 = inttoptr i64 %kLF$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8648)                                         ; assert function application
  %i0ptr8649 = getelementptr inbounds i64, i64* %cloptr8648, i64 0                   ; &cloptr8648[0]
  %f8651 = load i64, i64* %i0ptr8649, align 8                                        ; load; *i0ptr8649
  %fptr8650 = inttoptr i64 %f8651 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8650(i64 %kLF$Ycmb, i64 %arg7268, i64 %arg7267)     ; tail call
  ret void
}


define void @lam8583(i64 %env8584, i64 %_957068, i64 %epK$_37take) {
  %envptr8652 = inttoptr i64 %env8584 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8653 = getelementptr inbounds i64, i64* %envptr8652, i64 3                  ; &envptr8652[3]
  %Kpv$_37map1 = load i64, i64* %envptr8653, align 8                                 ; load; *envptr8653
  %envptr8654 = inttoptr i64 %env8584 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8655 = getelementptr inbounds i64, i64* %envptr8654, i64 2                  ; &envptr8654[2]
  %sOd$_37foldr1 = load i64, i64* %envptr8655, align 8                               ; load; *envptr8655
  %envptr8656 = inttoptr i64 %env8584 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8657 = getelementptr inbounds i64, i64* %envptr8656, i64 1                  ; &envptr8656[1]
  %kLF$Ycmb = load i64, i64* %envptr8657, align 8                                    ; load; *envptr8657
  %cloptr8658 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8660 = getelementptr inbounds i64, i64* %cloptr8658, i64 1                    ; &eptr8660[1]
  %eptr8661 = getelementptr inbounds i64, i64* %cloptr8658, i64 2                    ; &eptr8661[2]
  %eptr8662 = getelementptr inbounds i64, i64* %cloptr8658, i64 3                    ; &eptr8662[3]
  %eptr8663 = getelementptr inbounds i64, i64* %cloptr8658, i64 4                    ; &eptr8663[4]
  store i64 %kLF$Ycmb, i64* %eptr8660                                                ; *eptr8660 = %kLF$Ycmb
  store i64 %sOd$_37foldr1, i64* %eptr8661                                           ; *eptr8661 = %sOd$_37foldr1
  store i64 %Kpv$_37map1, i64* %eptr8662                                             ; *eptr8662 = %Kpv$_37map1
  store i64 %epK$_37take, i64* %eptr8663                                             ; *eptr8663 = %epK$_37take
  %eptr8659 = getelementptr inbounds i64, i64* %cloptr8658, i64 0                    ; &cloptr8658[0]
  %f8664 = ptrtoint void(i64,i64,i64)* @lam8581 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8664, i64* %eptr8659                                                   ; store fptr
  %arg7271 = ptrtoint i64* %cloptr8658 to i64                                        ; closure cast; i64* -> i64
  %cloptr8665 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8666 = getelementptr inbounds i64, i64* %cloptr8665, i64 0                    ; &cloptr8665[0]
  %f8667 = ptrtoint void(i64,i64,i64)* @lam8180 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8667, i64* %eptr8666                                                   ; store fptr
  %arg7270 = ptrtoint i64* %cloptr8665 to i64                                        ; closure cast; i64* -> i64
  %cloptr8668 = inttoptr i64 %kLF$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8668)                                         ; assert function application
  %i0ptr8669 = getelementptr inbounds i64, i64* %cloptr8668, i64 0                   ; &cloptr8668[0]
  %f8671 = load i64, i64* %i0ptr8669, align 8                                        ; load; *i0ptr8669
  %fptr8670 = inttoptr i64 %f8671 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8670(i64 %kLF$Ycmb, i64 %arg7271, i64 %arg7270)     ; tail call
  ret void
}


define void @lam8581(i64 %env8582, i64 %_957069, i64 %kov$_37length) {
  %envptr8672 = inttoptr i64 %env8582 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8673 = getelementptr inbounds i64, i64* %envptr8672, i64 4                  ; &envptr8672[4]
  %epK$_37take = load i64, i64* %envptr8673, align 8                                 ; load; *envptr8673
  %envptr8674 = inttoptr i64 %env8582 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8675 = getelementptr inbounds i64, i64* %envptr8674, i64 3                  ; &envptr8674[3]
  %Kpv$_37map1 = load i64, i64* %envptr8675, align 8                                 ; load; *envptr8675
  %envptr8676 = inttoptr i64 %env8582 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8677 = getelementptr inbounds i64, i64* %envptr8676, i64 2                  ; &envptr8676[2]
  %sOd$_37foldr1 = load i64, i64* %envptr8677, align 8                               ; load; *envptr8677
  %envptr8678 = inttoptr i64 %env8582 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8679 = getelementptr inbounds i64, i64* %envptr8678, i64 1                  ; &envptr8678[1]
  %kLF$Ycmb = load i64, i64* %envptr8679, align 8                                    ; load; *envptr8679
  %cloptr8680 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8682 = getelementptr inbounds i64, i64* %cloptr8680, i64 1                    ; &eptr8682[1]
  %eptr8683 = getelementptr inbounds i64, i64* %cloptr8680, i64 2                    ; &eptr8683[2]
  %eptr8684 = getelementptr inbounds i64, i64* %cloptr8680, i64 3                    ; &eptr8684[3]
  %eptr8685 = getelementptr inbounds i64, i64* %cloptr8680, i64 4                    ; &eptr8685[4]
  %eptr8686 = getelementptr inbounds i64, i64* %cloptr8680, i64 5                    ; &eptr8686[5]
  store i64 %kov$_37length, i64* %eptr8682                                           ; *eptr8682 = %kov$_37length
  store i64 %kLF$Ycmb, i64* %eptr8683                                                ; *eptr8683 = %kLF$Ycmb
  store i64 %sOd$_37foldr1, i64* %eptr8684                                           ; *eptr8684 = %sOd$_37foldr1
  store i64 %Kpv$_37map1, i64* %eptr8685                                             ; *eptr8685 = %Kpv$_37map1
  store i64 %epK$_37take, i64* %eptr8686                                             ; *eptr8686 = %epK$_37take
  %eptr8681 = getelementptr inbounds i64, i64* %cloptr8680, i64 0                    ; &cloptr8680[0]
  %f8687 = ptrtoint void(i64,i64,i64)* @lam8579 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8687, i64* %eptr8681                                                   ; store fptr
  %arg7274 = ptrtoint i64* %cloptr8680 to i64                                        ; closure cast; i64* -> i64
  %cloptr8688 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8689 = getelementptr inbounds i64, i64* %cloptr8688, i64 0                    ; &cloptr8688[0]
  %f8690 = ptrtoint void(i64,i64,i64)* @lam8188 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8690, i64* %eptr8689                                                   ; store fptr
  %arg7273 = ptrtoint i64* %cloptr8688 to i64                                        ; closure cast; i64* -> i64
  %cloptr8691 = inttoptr i64 %kLF$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8691)                                         ; assert function application
  %i0ptr8692 = getelementptr inbounds i64, i64* %cloptr8691, i64 0                   ; &cloptr8691[0]
  %f8694 = load i64, i64* %i0ptr8692, align 8                                        ; load; *i0ptr8692
  %fptr8693 = inttoptr i64 %f8694 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8693(i64 %kLF$Ycmb, i64 %arg7274, i64 %arg7273)     ; tail call
  ret void
}


define void @lam8579(i64 %env8580, i64 %_957070, i64 %nAO$_37foldl1) {
  %envptr8695 = inttoptr i64 %env8580 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8696 = getelementptr inbounds i64, i64* %envptr8695, i64 5                  ; &envptr8695[5]
  %epK$_37take = load i64, i64* %envptr8696, align 8                                 ; load; *envptr8696
  %envptr8697 = inttoptr i64 %env8580 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8698 = getelementptr inbounds i64, i64* %envptr8697, i64 4                  ; &envptr8697[4]
  %Kpv$_37map1 = load i64, i64* %envptr8698, align 8                                 ; load; *envptr8698
  %envptr8699 = inttoptr i64 %env8580 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8700 = getelementptr inbounds i64, i64* %envptr8699, i64 3                  ; &envptr8699[3]
  %sOd$_37foldr1 = load i64, i64* %envptr8700, align 8                               ; load; *envptr8700
  %envptr8701 = inttoptr i64 %env8580 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8702 = getelementptr inbounds i64, i64* %envptr8701, i64 2                  ; &envptr8701[2]
  %kLF$Ycmb = load i64, i64* %envptr8702, align 8                                    ; load; *envptr8702
  %envptr8703 = inttoptr i64 %env8580 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8704 = getelementptr inbounds i64, i64* %envptr8703, i64 1                  ; &envptr8703[1]
  %kov$_37length = load i64, i64* %envptr8704, align 8                               ; load; *envptr8704
  %cloptr8705 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8707 = getelementptr inbounds i64, i64* %cloptr8705, i64 1                    ; &eptr8707[1]
  store i64 %nAO$_37foldl1, i64* %eptr8707                                           ; *eptr8707 = %nAO$_37foldl1
  %eptr8706 = getelementptr inbounds i64, i64* %cloptr8705, i64 0                    ; &cloptr8705[0]
  %f8708 = ptrtoint void(i64,i64,i64)* @lam8577 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8708, i64* %eptr8706                                                   ; store fptr
  %jMi$_37last = ptrtoint i64* %cloptr8705 to i64                                    ; closure cast; i64* -> i64
  %cloptr8709 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8711 = getelementptr inbounds i64, i64* %cloptr8709, i64 1                    ; &eptr8711[1]
  %eptr8712 = getelementptr inbounds i64, i64* %cloptr8709, i64 2                    ; &eptr8712[2]
  store i64 %kov$_37length, i64* %eptr8711                                           ; *eptr8711 = %kov$_37length
  store i64 %epK$_37take, i64* %eptr8712                                             ; *eptr8712 = %epK$_37take
  %eptr8710 = getelementptr inbounds i64, i64* %cloptr8709, i64 0                    ; &cloptr8709[0]
  %f8713 = ptrtoint void(i64,i64,i64,i64)* @lam8571 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8713, i64* %eptr8710                                                   ; store fptr
  %a4S$_37drop_45right = ptrtoint i64* %cloptr8709 to i64                            ; closure cast; i64* -> i64
  %cloptr8714 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8716 = getelementptr inbounds i64, i64* %cloptr8714, i64 1                    ; &eptr8716[1]
  %eptr8717 = getelementptr inbounds i64, i64* %cloptr8714, i64 2                    ; &eptr8717[2]
  %eptr8718 = getelementptr inbounds i64, i64* %cloptr8714, i64 3                    ; &eptr8718[3]
  %eptr8719 = getelementptr inbounds i64, i64* %cloptr8714, i64 4                    ; &eptr8719[4]
  %eptr8720 = getelementptr inbounds i64, i64* %cloptr8714, i64 5                    ; &eptr8720[5]
  %eptr8721 = getelementptr inbounds i64, i64* %cloptr8714, i64 6                    ; &eptr8721[6]
  store i64 %a4S$_37drop_45right, i64* %eptr8716                                     ; *eptr8716 = %a4S$_37drop_45right
  store i64 %kov$_37length, i64* %eptr8717                                           ; *eptr8717 = %kov$_37length
  store i64 %nAO$_37foldl1, i64* %eptr8718                                           ; *eptr8718 = %nAO$_37foldl1
  store i64 %kLF$Ycmb, i64* %eptr8719                                                ; *eptr8719 = %kLF$Ycmb
  store i64 %sOd$_37foldr1, i64* %eptr8720                                           ; *eptr8720 = %sOd$_37foldr1
  store i64 %jMi$_37last, i64* %eptr8721                                             ; *eptr8721 = %jMi$_37last
  %eptr8715 = getelementptr inbounds i64, i64* %cloptr8714, i64 0                    ; &cloptr8714[0]
  %f8722 = ptrtoint void(i64,i64,i64)* @lam8567 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8722, i64* %eptr8715                                                   ; store fptr
  %arg7294 = ptrtoint i64* %cloptr8714 to i64                                        ; closure cast; i64* -> i64
  %cloptr8723 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8725 = getelementptr inbounds i64, i64* %cloptr8723, i64 1                    ; &eptr8725[1]
  %eptr8726 = getelementptr inbounds i64, i64* %cloptr8723, i64 2                    ; &eptr8726[2]
  store i64 %sOd$_37foldr1, i64* %eptr8725                                           ; *eptr8725 = %sOd$_37foldr1
  store i64 %Kpv$_37map1, i64* %eptr8726                                             ; *eptr8726 = %Kpv$_37map1
  %eptr8724 = getelementptr inbounds i64, i64* %cloptr8723, i64 0                    ; &cloptr8723[0]
  %f8727 = ptrtoint void(i64,i64,i64)* @lam8225 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8727, i64* %eptr8724                                                   ; store fptr
  %arg7293 = ptrtoint i64* %cloptr8723 to i64                                        ; closure cast; i64* -> i64
  %cloptr8728 = inttoptr i64 %kLF$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8728)                                         ; assert function application
  %i0ptr8729 = getelementptr inbounds i64, i64* %cloptr8728, i64 0                   ; &cloptr8728[0]
  %f8731 = load i64, i64* %i0ptr8729, align 8                                        ; load; *i0ptr8729
  %fptr8730 = inttoptr i64 %f8731 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8730(i64 %kLF$Ycmb, i64 %arg7294, i64 %arg7293)     ; tail call
  ret void
}


define void @lam8577(i64 %env8578, i64 %cont7071, i64 %Rl9$lst) {
  %envptr8732 = inttoptr i64 %env8578 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8733 = getelementptr inbounds i64, i64* %envptr8732, i64 1                  ; &envptr8732[1]
  %nAO$_37foldl1 = load i64, i64* %envptr8733, align 8                               ; load; *envptr8733
  %cloptr8734 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8735 = getelementptr inbounds i64, i64* %cloptr8734, i64 0                    ; &cloptr8734[0]
  %f8736 = ptrtoint void(i64,i64,i64,i64)* @lam8575 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8736, i64* %eptr8735                                                   ; store fptr
  %arg7278 = ptrtoint i64* %cloptr8734 to i64                                        ; closure cast; i64* -> i64
  %arg7277 = add i64 0, 0                                                            ; quoted ()
  %cloptr8737 = inttoptr i64 %nAO$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8737)                                         ; assert function application
  %i0ptr8738 = getelementptr inbounds i64, i64* %cloptr8737, i64 0                   ; &cloptr8737[0]
  %f8740 = load i64, i64* %i0ptr8738, align 8                                        ; load; *i0ptr8738
  %fptr8739 = inttoptr i64 %f8740 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8739(i64 %nAO$_37foldl1, i64 %cont7071, i64 %arg7278, i64 %arg7277, i64 %Rl9$lst); tail call
  ret void
}


define void @lam8575(i64 %env8576, i64 %cont7072, i64 %caK$x, i64 %S3O$y) {
  %arg7282 = add i64 0, 0                                                            ; quoted ()
  %cloptr8741 = inttoptr i64 %cont7072 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8741)                                         ; assert function application
  %i0ptr8742 = getelementptr inbounds i64, i64* %cloptr8741, i64 0                   ; &cloptr8741[0]
  %f8744 = load i64, i64* %i0ptr8742, align 8                                        ; load; *i0ptr8742
  %fptr8743 = inttoptr i64 %f8744 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8743(i64 %cont7072, i64 %arg7282, i64 %caK$x)       ; tail call
  ret void
}


define void @lam8571(i64 %env8572, i64 %cont7073, i64 %hkv$lst, i64 %iyW$n) {
  %envptr8745 = inttoptr i64 %env8572 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8746 = getelementptr inbounds i64, i64* %envptr8745, i64 2                  ; &envptr8745[2]
  %epK$_37take = load i64, i64* %envptr8746, align 8                                 ; load; *envptr8746
  %envptr8747 = inttoptr i64 %env8572 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8748 = getelementptr inbounds i64, i64* %envptr8747, i64 1                  ; &envptr8747[1]
  %kov$_37length = load i64, i64* %envptr8748, align 8                               ; load; *envptr8748
  %cloptr8749 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8751 = getelementptr inbounds i64, i64* %cloptr8749, i64 1                    ; &eptr8751[1]
  %eptr8752 = getelementptr inbounds i64, i64* %cloptr8749, i64 2                    ; &eptr8752[2]
  %eptr8753 = getelementptr inbounds i64, i64* %cloptr8749, i64 3                    ; &eptr8753[3]
  %eptr8754 = getelementptr inbounds i64, i64* %cloptr8749, i64 4                    ; &eptr8754[4]
  store i64 %iyW$n, i64* %eptr8751                                                   ; *eptr8751 = %iyW$n
  store i64 %hkv$lst, i64* %eptr8752                                                 ; *eptr8752 = %hkv$lst
  store i64 %cont7073, i64* %eptr8753                                                ; *eptr8753 = %cont7073
  store i64 %epK$_37take, i64* %eptr8754                                             ; *eptr8754 = %epK$_37take
  %eptr8750 = getelementptr inbounds i64, i64* %cloptr8749, i64 0                    ; &cloptr8749[0]
  %f8755 = ptrtoint void(i64,i64,i64)* @lam8569 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8755, i64* %eptr8750                                                   ; store fptr
  %arg7285 = ptrtoint i64* %cloptr8749 to i64                                        ; closure cast; i64* -> i64
  %cloptr8756 = inttoptr i64 %kov$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8756)                                         ; assert function application
  %i0ptr8757 = getelementptr inbounds i64, i64* %cloptr8756, i64 0                   ; &cloptr8756[0]
  %f8759 = load i64, i64* %i0ptr8757, align 8                                        ; load; *i0ptr8757
  %fptr8758 = inttoptr i64 %f8759 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8758(i64 %kov$_37length, i64 %arg7285, i64 %hkv$lst); tail call
  ret void
}


define void @lam8569(i64 %env8570, i64 %_957074, i64 %a6969) {
  %envptr8760 = inttoptr i64 %env8570 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8761 = getelementptr inbounds i64, i64* %envptr8760, i64 4                  ; &envptr8760[4]
  %epK$_37take = load i64, i64* %envptr8761, align 8                                 ; load; *envptr8761
  %envptr8762 = inttoptr i64 %env8570 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8763 = getelementptr inbounds i64, i64* %envptr8762, i64 3                  ; &envptr8762[3]
  %cont7073 = load i64, i64* %envptr8763, align 8                                    ; load; *envptr8763
  %envptr8764 = inttoptr i64 %env8570 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8765 = getelementptr inbounds i64, i64* %envptr8764, i64 2                  ; &envptr8764[2]
  %hkv$lst = load i64, i64* %envptr8765, align 8                                     ; load; *envptr8765
  %envptr8766 = inttoptr i64 %env8570 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8767 = getelementptr inbounds i64, i64* %envptr8766, i64 1                  ; &envptr8766[1]
  %iyW$n = load i64, i64* %envptr8767, align 8                                       ; load; *envptr8767
  %a6970 = call i64 @prim__45(i64 %a6969, i64 %iyW$n)                                ; call prim__45
  %cloptr8768 = inttoptr i64 %epK$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8768)                                         ; assert function application
  %i0ptr8769 = getelementptr inbounds i64, i64* %cloptr8768, i64 0                   ; &cloptr8768[0]
  %f8771 = load i64, i64* %i0ptr8769, align 8                                        ; load; *i0ptr8769
  %fptr8770 = inttoptr i64 %f8771 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8770(i64 %epK$_37take, i64 %cont7073, i64 %hkv$lst, i64 %a6970); tail call
  ret void
}


define void @lam8567(i64 %env8568, i64 %_957075, i64 %dCz$_37foldr) {
  %envptr8772 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8773 = getelementptr inbounds i64, i64* %envptr8772, i64 6                  ; &envptr8772[6]
  %jMi$_37last = load i64, i64* %envptr8773, align 8                                 ; load; *envptr8773
  %envptr8774 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8775 = getelementptr inbounds i64, i64* %envptr8774, i64 5                  ; &envptr8774[5]
  %sOd$_37foldr1 = load i64, i64* %envptr8775, align 8                               ; load; *envptr8775
  %envptr8776 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8777 = getelementptr inbounds i64, i64* %envptr8776, i64 4                  ; &envptr8776[4]
  %kLF$Ycmb = load i64, i64* %envptr8777, align 8                                    ; load; *envptr8777
  %envptr8778 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8779 = getelementptr inbounds i64, i64* %envptr8778, i64 3                  ; &envptr8778[3]
  %nAO$_37foldl1 = load i64, i64* %envptr8779, align 8                               ; load; *envptr8779
  %envptr8780 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8781 = getelementptr inbounds i64, i64* %envptr8780, i64 2                  ; &envptr8780[2]
  %kov$_37length = load i64, i64* %envptr8781, align 8                               ; load; *envptr8781
  %envptr8782 = inttoptr i64 %env8568 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8783 = getelementptr inbounds i64, i64* %envptr8782, i64 1                  ; &envptr8782[1]
  %a4S$_37drop_45right = load i64, i64* %envptr8783, align 8                         ; load; *envptr8783
  %cloptr8784 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8786 = getelementptr inbounds i64, i64* %cloptr8784, i64 1                    ; &eptr8786[1]
  store i64 %sOd$_37foldr1, i64* %eptr8786                                           ; *eptr8786 = %sOd$_37foldr1
  %eptr8785 = getelementptr inbounds i64, i64* %cloptr8784, i64 0                    ; &cloptr8784[0]
  %f8787 = ptrtoint void(i64,i64,i64,i64)* @lam8565 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8787, i64* %eptr8785                                                   ; store fptr
  %HOj$_37map1 = ptrtoint i64* %cloptr8784 to i64                                    ; closure cast; i64* -> i64
  %cloptr8788 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8790 = getelementptr inbounds i64, i64* %cloptr8788, i64 1                    ; &eptr8790[1]
  %eptr8791 = getelementptr inbounds i64, i64* %cloptr8788, i64 2                    ; &eptr8791[2]
  %eptr8792 = getelementptr inbounds i64, i64* %cloptr8788, i64 3                    ; &eptr8792[3]
  store i64 %a4S$_37drop_45right, i64* %eptr8790                                     ; *eptr8790 = %a4S$_37drop_45right
  store i64 %dCz$_37foldr, i64* %eptr8791                                            ; *eptr8791 = %dCz$_37foldr
  store i64 %jMi$_37last, i64* %eptr8792                                             ; *eptr8792 = %jMi$_37last
  %eptr8789 = getelementptr inbounds i64, i64* %cloptr8788, i64 0                    ; &cloptr8788[0]
  %f8793 = ptrtoint void(i64,i64)* @lam8557 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8793, i64* %eptr8789                                                   ; store fptr
  %j2d$_37map = ptrtoint i64* %cloptr8788 to i64                                     ; closure cast; i64* -> i64
  %cloptr8794 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8796 = getelementptr inbounds i64, i64* %cloptr8794, i64 1                    ; &eptr8796[1]
  %eptr8797 = getelementptr inbounds i64, i64* %cloptr8794, i64 2                    ; &eptr8797[2]
  store i64 %kov$_37length, i64* %eptr8796                                           ; *eptr8796 = %kov$_37length
  store i64 %nAO$_37foldl1, i64* %eptr8797                                           ; *eptr8797 = %nAO$_37foldl1
  %eptr8795 = getelementptr inbounds i64, i64* %cloptr8794, i64 0                    ; &cloptr8794[0]
  %f8798 = ptrtoint void(i64,i64,i64)* @lam8544 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8798, i64* %eptr8795                                                   ; store fptr
  %arg7336 = ptrtoint i64* %cloptr8794 to i64                                        ; closure cast; i64* -> i64
  %cloptr8799 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8801 = getelementptr inbounds i64, i64* %cloptr8799, i64 1                    ; &eptr8801[1]
  %eptr8802 = getelementptr inbounds i64, i64* %cloptr8799, i64 2                    ; &eptr8802[2]
  %eptr8803 = getelementptr inbounds i64, i64* %cloptr8799, i64 3                    ; &eptr8803[3]
  store i64 %sOd$_37foldr1, i64* %eptr8801                                           ; *eptr8801 = %sOd$_37foldr1
  store i64 %HOj$_37map1, i64* %eptr8802                                             ; *eptr8802 = %HOj$_37map1
  store i64 %dCz$_37foldr, i64* %eptr8803                                            ; *eptr8803 = %dCz$_37foldr
  %eptr8800 = getelementptr inbounds i64, i64* %cloptr8799, i64 0                    ; &cloptr8799[0]
  %f8804 = ptrtoint void(i64,i64,i64)* @lam8262 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8804, i64* %eptr8800                                                   ; store fptr
  %arg7335 = ptrtoint i64* %cloptr8799 to i64                                        ; closure cast; i64* -> i64
  %cloptr8805 = inttoptr i64 %kLF$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8805)                                         ; assert function application
  %i0ptr8806 = getelementptr inbounds i64, i64* %cloptr8805, i64 0                   ; &cloptr8805[0]
  %f8808 = load i64, i64* %i0ptr8806, align 8                                        ; load; *i0ptr8806
  %fptr8807 = inttoptr i64 %f8808 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8807(i64 %kLF$Ycmb, i64 %arg7336, i64 %arg7335)     ; tail call
  ret void
}


define void @lam8565(i64 %env8566, i64 %cont7076, i64 %krX$f, i64 %Qns$lst) {
  %envptr8809 = inttoptr i64 %env8566 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8810 = getelementptr inbounds i64, i64* %envptr8809, i64 1                  ; &envptr8809[1]
  %sOd$_37foldr1 = load i64, i64* %envptr8810, align 8                               ; load; *envptr8810
  %cloptr8811 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8813 = getelementptr inbounds i64, i64* %cloptr8811, i64 1                    ; &eptr8813[1]
  store i64 %krX$f, i64* %eptr8813                                                   ; *eptr8813 = %krX$f
  %eptr8812 = getelementptr inbounds i64, i64* %cloptr8811, i64 0                    ; &cloptr8811[0]
  %f8814 = ptrtoint void(i64,i64,i64,i64)* @lam8563 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8814, i64* %eptr8812                                                   ; store fptr
  %arg7298 = ptrtoint i64* %cloptr8811 to i64                                        ; closure cast; i64* -> i64
  %arg7297 = add i64 0, 0                                                            ; quoted ()
  %cloptr8815 = inttoptr i64 %sOd$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8815)                                         ; assert function application
  %i0ptr8816 = getelementptr inbounds i64, i64* %cloptr8815, i64 0                   ; &cloptr8815[0]
  %f8818 = load i64, i64* %i0ptr8816, align 8                                        ; load; *i0ptr8816
  %fptr8817 = inttoptr i64 %f8818 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8817(i64 %sOd$_37foldr1, i64 %cont7076, i64 %arg7298, i64 %arg7297, i64 %Qns$lst); tail call
  ret void
}


define void @lam8563(i64 %env8564, i64 %cont7077, i64 %nJe$v, i64 %jJE$r) {
  %envptr8819 = inttoptr i64 %env8564 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8820 = getelementptr inbounds i64, i64* %envptr8819, i64 1                  ; &envptr8819[1]
  %krX$f = load i64, i64* %envptr8820, align 8                                       ; load; *envptr8820
  %cloptr8821 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8823 = getelementptr inbounds i64, i64* %cloptr8821, i64 1                    ; &eptr8823[1]
  %eptr8824 = getelementptr inbounds i64, i64* %cloptr8821, i64 2                    ; &eptr8824[2]
  store i64 %jJE$r, i64* %eptr8823                                                   ; *eptr8823 = %jJE$r
  store i64 %cont7077, i64* %eptr8824                                                ; *eptr8824 = %cont7077
  %eptr8822 = getelementptr inbounds i64, i64* %cloptr8821, i64 0                    ; &cloptr8821[0]
  %f8825 = ptrtoint void(i64,i64,i64)* @lam8561 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8825, i64* %eptr8822                                                   ; store fptr
  %arg7302 = ptrtoint i64* %cloptr8821 to i64                                        ; closure cast; i64* -> i64
  %cloptr8826 = inttoptr i64 %krX$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8826)                                         ; assert function application
  %i0ptr8827 = getelementptr inbounds i64, i64* %cloptr8826, i64 0                   ; &cloptr8826[0]
  %f8829 = load i64, i64* %i0ptr8827, align 8                                        ; load; *i0ptr8827
  %fptr8828 = inttoptr i64 %f8829 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8828(i64 %krX$f, i64 %arg7302, i64 %nJe$v)          ; tail call
  ret void
}


define void @lam8561(i64 %env8562, i64 %_957078, i64 %a6979) {
  %envptr8830 = inttoptr i64 %env8562 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8831 = getelementptr inbounds i64, i64* %envptr8830, i64 2                  ; &envptr8830[2]
  %cont7077 = load i64, i64* %envptr8831, align 8                                    ; load; *envptr8831
  %envptr8832 = inttoptr i64 %env8562 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8833 = getelementptr inbounds i64, i64* %envptr8832, i64 1                  ; &envptr8832[1]
  %jJE$r = load i64, i64* %envptr8833, align 8                                       ; load; *envptr8833
  %retprim7079 = call i64 @prim_cons(i64 %a6979, i64 %jJE$r)                         ; call prim_cons
  %arg7307 = add i64 0, 0                                                            ; quoted ()
  %cloptr8834 = inttoptr i64 %cont7077 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8834)                                         ; assert function application
  %i0ptr8835 = getelementptr inbounds i64, i64* %cloptr8834, i64 0                   ; &cloptr8834[0]
  %f8837 = load i64, i64* %i0ptr8835, align 8                                        ; load; *i0ptr8835
  %fptr8836 = inttoptr i64 %f8837 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8836(i64 %cont7077, i64 %arg7307, i64 %retprim7079) ; tail call
  ret void
}


define void @lam8557(i64 %env8558, i64 %uKy$args7081) {
  %envptr8838 = inttoptr i64 %env8558 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8839 = getelementptr inbounds i64, i64* %envptr8838, i64 3                  ; &envptr8838[3]
  %jMi$_37last = load i64, i64* %envptr8839, align 8                                 ; load; *envptr8839
  %envptr8840 = inttoptr i64 %env8558 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8841 = getelementptr inbounds i64, i64* %envptr8840, i64 2                  ; &envptr8840[2]
  %dCz$_37foldr = load i64, i64* %envptr8841, align 8                                ; load; *envptr8841
  %envptr8842 = inttoptr i64 %env8558 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8843 = getelementptr inbounds i64, i64* %envptr8842, i64 1                  ; &envptr8842[1]
  %a4S$_37drop_45right = load i64, i64* %envptr8843, align 8                         ; load; *envptr8843
  %cont7080 = call i64 @prim_car(i64 %uKy$args7081)                                  ; call prim_car
  %uKy$args = call i64 @prim_cdr(i64 %uKy$args7081)                                  ; call prim_cdr
  %ca1$f = call i64 @prim_car(i64 %uKy$args)                                         ; call prim_car
  %FuR$lsts = call i64 @prim_cdr(i64 %uKy$args)                                      ; call prim_cdr
  %arg7314 = add i64 0, 0                                                            ; quoted ()
  %a6983 = call i64 @prim_cons(i64 %arg7314, i64 %FuR$lsts)                          ; call prim_cons
  %cloptr8844 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8846 = getelementptr inbounds i64, i64* %cloptr8844, i64 1                    ; &eptr8846[1]
  %eptr8847 = getelementptr inbounds i64, i64* %cloptr8844, i64 2                    ; &eptr8847[2]
  %eptr8848 = getelementptr inbounds i64, i64* %cloptr8844, i64 3                    ; &eptr8848[3]
  store i64 %a4S$_37drop_45right, i64* %eptr8846                                     ; *eptr8846 = %a4S$_37drop_45right
  store i64 %jMi$_37last, i64* %eptr8847                                             ; *eptr8847 = %jMi$_37last
  store i64 %ca1$f, i64* %eptr8848                                                   ; *eptr8848 = %ca1$f
  %eptr8845 = getelementptr inbounds i64, i64* %cloptr8844, i64 0                    ; &cloptr8844[0]
  %f8849 = ptrtoint void(i64,i64)* @lam8554 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8849, i64* %eptr8845                                                   ; store fptr
  %arg7316 = ptrtoint i64* %cloptr8844 to i64                                        ; closure cast; i64* -> i64
  %a6984 = call i64 @prim_cons(i64 %arg7316, i64 %a6983)                             ; call prim_cons
  %cps_45lst7089 = call i64 @prim_cons(i64 %cont7080, i64 %a6984)                    ; call prim_cons
  %cloptr8850 = inttoptr i64 %dCz$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8850)                                         ; assert function application
  %i0ptr8851 = getelementptr inbounds i64, i64* %cloptr8850, i64 0                   ; &cloptr8850[0]
  %f8853 = load i64, i64* %i0ptr8851, align 8                                        ; load; *i0ptr8851
  %fptr8852 = inttoptr i64 %f8853 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8852(i64 %dCz$_37foldr, i64 %cps_45lst7089)         ; tail call
  ret void
}


define void @lam8554(i64 %env8555, i64 %z4K$fargs7083) {
  %envptr8854 = inttoptr i64 %env8555 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8855 = getelementptr inbounds i64, i64* %envptr8854, i64 3                  ; &envptr8854[3]
  %ca1$f = load i64, i64* %envptr8855, align 8                                       ; load; *envptr8855
  %envptr8856 = inttoptr i64 %env8555 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8857 = getelementptr inbounds i64, i64* %envptr8856, i64 2                  ; &envptr8856[2]
  %jMi$_37last = load i64, i64* %envptr8857, align 8                                 ; load; *envptr8857
  %envptr8858 = inttoptr i64 %env8555 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8859 = getelementptr inbounds i64, i64* %envptr8858, i64 1                  ; &envptr8858[1]
  %a4S$_37drop_45right = load i64, i64* %envptr8859, align 8                         ; load; *envptr8859
  %cont7082 = call i64 @prim_car(i64 %z4K$fargs7083)                                 ; call prim_car
  %z4K$fargs = call i64 @prim_cdr(i64 %z4K$fargs7083)                                ; call prim_cdr
  %cloptr8860 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8862 = getelementptr inbounds i64, i64* %cloptr8860, i64 1                    ; &eptr8862[1]
  %eptr8863 = getelementptr inbounds i64, i64* %cloptr8860, i64 2                    ; &eptr8863[2]
  %eptr8864 = getelementptr inbounds i64, i64* %cloptr8860, i64 3                    ; &eptr8864[3]
  %eptr8865 = getelementptr inbounds i64, i64* %cloptr8860, i64 4                    ; &eptr8865[4]
  store i64 %cont7082, i64* %eptr8862                                                ; *eptr8862 = %cont7082
  store i64 %jMi$_37last, i64* %eptr8863                                             ; *eptr8863 = %jMi$_37last
  store i64 %ca1$f, i64* %eptr8864                                                   ; *eptr8864 = %ca1$f
  store i64 %z4K$fargs, i64* %eptr8865                                               ; *eptr8865 = %z4K$fargs
  %eptr8861 = getelementptr inbounds i64, i64* %cloptr8860, i64 0                    ; &cloptr8860[0]
  %f8866 = ptrtoint void(i64,i64,i64)* @lam8552 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8866, i64* %eptr8861                                                   ; store fptr
  %arg7321 = ptrtoint i64* %cloptr8860 to i64                                        ; closure cast; i64* -> i64
  %arg7319 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8867 = inttoptr i64 %a4S$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8867)                                         ; assert function application
  %i0ptr8868 = getelementptr inbounds i64, i64* %cloptr8867, i64 0                   ; &cloptr8867[0]
  %f8870 = load i64, i64* %i0ptr8868, align 8                                        ; load; *i0ptr8868
  %fptr8869 = inttoptr i64 %f8870 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8869(i64 %a4S$_37drop_45right, i64 %arg7321, i64 %z4K$fargs, i64 %arg7319); tail call
  ret void
}


define void @lam8552(i64 %env8553, i64 %_957084, i64 %a6980) {
  %envptr8871 = inttoptr i64 %env8553 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8872 = getelementptr inbounds i64, i64* %envptr8871, i64 4                  ; &envptr8871[4]
  %z4K$fargs = load i64, i64* %envptr8872, align 8                                   ; load; *envptr8872
  %envptr8873 = inttoptr i64 %env8553 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8874 = getelementptr inbounds i64, i64* %envptr8873, i64 3                  ; &envptr8873[3]
  %ca1$f = load i64, i64* %envptr8874, align 8                                       ; load; *envptr8874
  %envptr8875 = inttoptr i64 %env8553 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8876 = getelementptr inbounds i64, i64* %envptr8875, i64 2                  ; &envptr8875[2]
  %jMi$_37last = load i64, i64* %envptr8876, align 8                                 ; load; *envptr8876
  %envptr8877 = inttoptr i64 %env8553 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8878 = getelementptr inbounds i64, i64* %envptr8877, i64 1                  ; &envptr8877[1]
  %cont7082 = load i64, i64* %envptr8878, align 8                                    ; load; *envptr8878
  %cloptr8879 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8881 = getelementptr inbounds i64, i64* %cloptr8879, i64 1                    ; &eptr8881[1]
  %eptr8882 = getelementptr inbounds i64, i64* %cloptr8879, i64 2                    ; &eptr8882[2]
  %eptr8883 = getelementptr inbounds i64, i64* %cloptr8879, i64 3                    ; &eptr8883[3]
  store i64 %cont7082, i64* %eptr8881                                                ; *eptr8881 = %cont7082
  store i64 %jMi$_37last, i64* %eptr8882                                             ; *eptr8882 = %jMi$_37last
  store i64 %z4K$fargs, i64* %eptr8883                                               ; *eptr8883 = %z4K$fargs
  %eptr8880 = getelementptr inbounds i64, i64* %cloptr8879, i64 0                    ; &cloptr8879[0]
  %f8884 = ptrtoint void(i64,i64,i64)* @lam8550 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8884, i64* %eptr8880                                                   ; store fptr
  %arg7324 = ptrtoint i64* %cloptr8879 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst7088 = call i64 @prim_cons(i64 %arg7324, i64 %a6980)                     ; call prim_cons
  %cloptr8885 = inttoptr i64 %ca1$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8885)                                         ; assert function application
  %i0ptr8886 = getelementptr inbounds i64, i64* %cloptr8885, i64 0                   ; &cloptr8885[0]
  %f8888 = load i64, i64* %i0ptr8886, align 8                                        ; load; *i0ptr8886
  %fptr8887 = inttoptr i64 %f8888 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8887(i64 %ca1$f, i64 %cps_45lst7088)                ; tail call
  ret void
}


define void @lam8550(i64 %env8551, i64 %_957085, i64 %a6981) {
  %envptr8889 = inttoptr i64 %env8551 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8890 = getelementptr inbounds i64, i64* %envptr8889, i64 3                  ; &envptr8889[3]
  %z4K$fargs = load i64, i64* %envptr8890, align 8                                   ; load; *envptr8890
  %envptr8891 = inttoptr i64 %env8551 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8892 = getelementptr inbounds i64, i64* %envptr8891, i64 2                  ; &envptr8891[2]
  %jMi$_37last = load i64, i64* %envptr8892, align 8                                 ; load; *envptr8892
  %envptr8893 = inttoptr i64 %env8551 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8894 = getelementptr inbounds i64, i64* %envptr8893, i64 1                  ; &envptr8893[1]
  %cont7082 = load i64, i64* %envptr8894, align 8                                    ; load; *envptr8894
  %cloptr8895 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8897 = getelementptr inbounds i64, i64* %cloptr8895, i64 1                    ; &eptr8897[1]
  %eptr8898 = getelementptr inbounds i64, i64* %cloptr8895, i64 2                    ; &eptr8898[2]
  store i64 %cont7082, i64* %eptr8897                                                ; *eptr8897 = %cont7082
  store i64 %a6981, i64* %eptr8898                                                   ; *eptr8898 = %a6981
  %eptr8896 = getelementptr inbounds i64, i64* %cloptr8895, i64 0                    ; &cloptr8895[0]
  %f8899 = ptrtoint void(i64,i64,i64)* @lam8548 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8899, i64* %eptr8896                                                   ; store fptr
  %arg7326 = ptrtoint i64* %cloptr8895 to i64                                        ; closure cast; i64* -> i64
  %cloptr8900 = inttoptr i64 %jMi$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8900)                                         ; assert function application
  %i0ptr8901 = getelementptr inbounds i64, i64* %cloptr8900, i64 0                   ; &cloptr8900[0]
  %f8903 = load i64, i64* %i0ptr8901, align 8                                        ; load; *i0ptr8901
  %fptr8902 = inttoptr i64 %f8903 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8902(i64 %jMi$_37last, i64 %arg7326, i64 %z4K$fargs); tail call
  ret void
}


define void @lam8548(i64 %env8549, i64 %_957086, i64 %a6982) {
  %envptr8904 = inttoptr i64 %env8549 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8905 = getelementptr inbounds i64, i64* %envptr8904, i64 2                  ; &envptr8904[2]
  %a6981 = load i64, i64* %envptr8905, align 8                                       ; load; *envptr8905
  %envptr8906 = inttoptr i64 %env8549 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8907 = getelementptr inbounds i64, i64* %envptr8906, i64 1                  ; &envptr8906[1]
  %cont7082 = load i64, i64* %envptr8907, align 8                                    ; load; *envptr8907
  %retprim7087 = call i64 @prim_cons(i64 %a6981, i64 %a6982)                         ; call prim_cons
  %arg7331 = add i64 0, 0                                                            ; quoted ()
  %cloptr8908 = inttoptr i64 %cont7082 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8908)                                         ; assert function application
  %i0ptr8909 = getelementptr inbounds i64, i64* %cloptr8908, i64 0                   ; &cloptr8908[0]
  %f8911 = load i64, i64* %i0ptr8909, align 8                                        ; load; *i0ptr8909
  %fptr8910 = inttoptr i64 %f8911 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8910(i64 %cont7082, i64 %arg7331, i64 %retprim7087) ; tail call
  ret void
}


define void @lam8544(i64 %env8545, i64 %_957090, i64 %slm$_37foldl) {
  %envptr8912 = inttoptr i64 %env8545 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8913 = getelementptr inbounds i64, i64* %envptr8912, i64 2                  ; &envptr8912[2]
  %nAO$_37foldl1 = load i64, i64* %envptr8913, align 8                               ; load; *envptr8913
  %envptr8914 = inttoptr i64 %env8545 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8915 = getelementptr inbounds i64, i64* %envptr8914, i64 1                  ; &envptr8914[1]
  %kov$_37length = load i64, i64* %envptr8915, align 8                               ; load; *envptr8915
  %cloptr8916 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8917 = getelementptr inbounds i64, i64* %cloptr8916, i64 0                    ; &cloptr8916[0]
  %f8918 = ptrtoint void(i64,i64,i64,i64)* @lam8542 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8918, i64* %eptr8917                                                   ; store fptr
  %CK7$_37_62 = ptrtoint i64* %cloptr8916 to i64                                     ; closure cast; i64* -> i64
  %cloptr8919 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8920 = getelementptr inbounds i64, i64* %cloptr8919, i64 0                    ; &cloptr8919[0]
  %f8921 = ptrtoint void(i64,i64,i64,i64)* @lam8539 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8921, i64* %eptr8920                                                   ; store fptr
  %A0Z$_37_62_61 = ptrtoint i64* %cloptr8919 to i64                                  ; closure cast; i64* -> i64
  %arg7351 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7350 = add i64 0, 0                                                            ; quoted ()
  %iYa$_37append = call i64 @prim_make_45vector(i64 %arg7351, i64 %arg7350)          ; call prim_make_45vector
  %arg7353 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8922 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8924 = getelementptr inbounds i64, i64* %cloptr8922, i64 1                    ; &eptr8924[1]
  store i64 %iYa$_37append, i64* %eptr8924                                           ; *eptr8924 = %iYa$_37append
  %eptr8923 = getelementptr inbounds i64, i64* %cloptr8922, i64 0                    ; &cloptr8922[0]
  %f8925 = ptrtoint void(i64,i64,i64,i64)* @lam8533 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8925, i64* %eptr8923                                                   ; store fptr
  %arg7352 = ptrtoint i64* %cloptr8922 to i64                                        ; closure cast; i64* -> i64
  %nQP$_950 = call i64 @prim_vector_45set_33(i64 %iYa$_37append, i64 %arg7353, i64 %arg7352); call prim_vector_45set_33
  %arg7372 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7183 = call i64 @prim_vector_45ref(i64 %iYa$_37append, i64 %arg7372)       ; call prim_vector_45ref
  %cloptr8926 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8928 = getelementptr inbounds i64, i64* %cloptr8926, i64 1                    ; &eptr8928[1]
  %eptr8929 = getelementptr inbounds i64, i64* %cloptr8926, i64 2                    ; &eptr8929[2]
  %eptr8930 = getelementptr inbounds i64, i64* %cloptr8926, i64 3                    ; &eptr8930[3]
  store i64 %kov$_37length, i64* %eptr8928                                           ; *eptr8928 = %kov$_37length
  store i64 %nAO$_37foldl1, i64* %eptr8929                                           ; *eptr8929 = %nAO$_37foldl1
  store i64 %CK7$_37_62, i64* %eptr8930                                              ; *eptr8930 = %CK7$_37_62
  %eptr8927 = getelementptr inbounds i64, i64* %cloptr8926, i64 0                    ; &cloptr8926[0]
  %f8931 = ptrtoint void(i64,i64,i64)* @lam8525 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8931, i64* %eptr8927                                                   ; store fptr
  %arg7376 = ptrtoint i64* %cloptr8926 to i64                                        ; closure cast; i64* -> i64
  %arg7375 = add i64 0, 0                                                            ; quoted ()
  %cloptr8932 = inttoptr i64 %arg7376 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8932)                                         ; assert function application
  %i0ptr8933 = getelementptr inbounds i64, i64* %cloptr8932, i64 0                   ; &cloptr8932[0]
  %f8935 = load i64, i64* %i0ptr8933, align 8                                        ; load; *i0ptr8933
  %fptr8934 = inttoptr i64 %f8935 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8934(i64 %arg7376, i64 %arg7375, i64 %retprim7183)  ; tail call
  ret void
}


define void @lam8542(i64 %env8543, i64 %cont7091, i64 %CLL$a, i64 %Jp2$b) {
  %a6992 = call i64 @prim__60_61(i64 %CLL$a, i64 %Jp2$b)                             ; call prim__60_61
  %retprim7092 = call i64 @prim_not(i64 %a6992)                                      ; call prim_not
  %arg7342 = add i64 0, 0                                                            ; quoted ()
  %cloptr8936 = inttoptr i64 %cont7091 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8936)                                         ; assert function application
  %i0ptr8937 = getelementptr inbounds i64, i64* %cloptr8936, i64 0                   ; &cloptr8936[0]
  %f8939 = load i64, i64* %i0ptr8937, align 8                                        ; load; *i0ptr8937
  %fptr8938 = inttoptr i64 %f8939 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8938(i64 %cont7091, i64 %arg7342, i64 %retprim7092) ; tail call
  ret void
}


define void @lam8539(i64 %env8540, i64 %cont7093, i64 %dam$a, i64 %QWy$b) {
  %a6993 = call i64 @prim__60(i64 %dam$a, i64 %QWy$b)                                ; call prim__60
  %retprim7094 = call i64 @prim_not(i64 %a6993)                                      ; call prim_not
  %arg7348 = add i64 0, 0                                                            ; quoted ()
  %cloptr8940 = inttoptr i64 %cont7093 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8940)                                         ; assert function application
  %i0ptr8941 = getelementptr inbounds i64, i64* %cloptr8940, i64 0                   ; &cloptr8940[0]
  %f8943 = load i64, i64* %i0ptr8941, align 8                                        ; load; *i0ptr8941
  %fptr8942 = inttoptr i64 %f8943 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8942(i64 %cont7093, i64 %arg7348, i64 %retprim7094) ; tail call
  ret void
}


define void @lam8533(i64 %env8534, i64 %cont7180, i64 %zeC$ls0, i64 %HVn$ls1) {
  %envptr8944 = inttoptr i64 %env8534 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8945 = getelementptr inbounds i64, i64* %envptr8944, i64 1                  ; &envptr8944[1]
  %iYa$_37append = load i64, i64* %envptr8945, align 8                               ; load; *envptr8945
  %a6994 = call i64 @prim_null_63(i64 %zeC$ls0)                                      ; call prim_null_63
  %cmp8946 = icmp eq i64 %a6994, 15                                                  ; false?
  br i1 %cmp8946, label %else8948, label %then8947                                   ; if

then8947:
  %arg7357 = add i64 0, 0                                                            ; quoted ()
  %cloptr8949 = inttoptr i64 %cont7180 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8949)                                         ; assert function application
  %i0ptr8950 = getelementptr inbounds i64, i64* %cloptr8949, i64 0                   ; &cloptr8949[0]
  %f8952 = load i64, i64* %i0ptr8950, align 8                                        ; load; *i0ptr8950
  %fptr8951 = inttoptr i64 %f8952 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8951(i64 %cont7180, i64 %arg7357, i64 %HVn$ls1)     ; tail call
  ret void

else8948:
  %a6995 = call i64 @prim_car(i64 %zeC$ls0)                                          ; call prim_car
  %arg7360 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6996 = call i64 @prim_vector_45ref(i64 %iYa$_37append, i64 %arg7360)             ; call prim_vector_45ref
  %a6997 = call i64 @prim_cdr(i64 %zeC$ls0)                                          ; call prim_cdr
  %cloptr8953 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8955 = getelementptr inbounds i64, i64* %cloptr8953, i64 1                    ; &eptr8955[1]
  %eptr8956 = getelementptr inbounds i64, i64* %cloptr8953, i64 2                    ; &eptr8956[2]
  store i64 %cont7180, i64* %eptr8955                                                ; *eptr8955 = %cont7180
  store i64 %a6995, i64* %eptr8956                                                   ; *eptr8956 = %a6995
  %eptr8954 = getelementptr inbounds i64, i64* %cloptr8953, i64 0                    ; &cloptr8953[0]
  %f8957 = ptrtoint void(i64,i64,i64)* @lam8530 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8957, i64* %eptr8954                                                   ; store fptr
  %arg7365 = ptrtoint i64* %cloptr8953 to i64                                        ; closure cast; i64* -> i64
  %cloptr8958 = inttoptr i64 %a6996 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8958)                                         ; assert function application
  %i0ptr8959 = getelementptr inbounds i64, i64* %cloptr8958, i64 0                   ; &cloptr8958[0]
  %f8961 = load i64, i64* %i0ptr8959, align 8                                        ; load; *i0ptr8959
  %fptr8960 = inttoptr i64 %f8961 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8960(i64 %a6996, i64 %arg7365, i64 %a6997, i64 %HVn$ls1); tail call
  ret void
}


define void @lam8530(i64 %env8531, i64 %_957181, i64 %a6998) {
  %envptr8962 = inttoptr i64 %env8531 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8963 = getelementptr inbounds i64, i64* %envptr8962, i64 2                  ; &envptr8962[2]
  %a6995 = load i64, i64* %envptr8963, align 8                                       ; load; *envptr8963
  %envptr8964 = inttoptr i64 %env8531 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8965 = getelementptr inbounds i64, i64* %envptr8964, i64 1                  ; &envptr8964[1]
  %cont7180 = load i64, i64* %envptr8965, align 8                                    ; load; *envptr8965
  %retprim7182 = call i64 @prim_cons(i64 %a6995, i64 %a6998)                         ; call prim_cons
  %arg7370 = add i64 0, 0                                                            ; quoted ()
  %cloptr8966 = inttoptr i64 %cont7180 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8966)                                         ; assert function application
  %i0ptr8967 = getelementptr inbounds i64, i64* %cloptr8966, i64 0                   ; &cloptr8966[0]
  %f8969 = load i64, i64* %i0ptr8967, align 8                                        ; load; *i0ptr8967
  %fptr8968 = inttoptr i64 %f8969 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8968(i64 %cont7180, i64 %arg7370, i64 %retprim7182) ; tail call
  ret void
}


define void @lam8525(i64 %env8526, i64 %_957095, i64 %nPw$_37append) {
  %envptr8970 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8971 = getelementptr inbounds i64, i64* %envptr8970, i64 3                  ; &envptr8970[3]
  %CK7$_37_62 = load i64, i64* %envptr8971, align 8                                  ; load; *envptr8971
  %envptr8972 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8973 = getelementptr inbounds i64, i64* %envptr8972, i64 2                  ; &envptr8972[2]
  %nAO$_37foldl1 = load i64, i64* %envptr8973, align 8                               ; load; *envptr8973
  %envptr8974 = inttoptr i64 %env8526 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8975 = getelementptr inbounds i64, i64* %envptr8974, i64 1                  ; &envptr8974[1]
  %kov$_37length = load i64, i64* %envptr8975, align 8                               ; load; *envptr8975
  %cloptr8976 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8977 = getelementptr inbounds i64, i64* %cloptr8976, i64 0                    ; &cloptr8976[0]
  %f8978 = ptrtoint void(i64,i64,i64)* @lam8523 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8978, i64* %eptr8977                                                   ; store fptr
  %SBT$_37list_63 = ptrtoint i64* %cloptr8976 to i64                                 ; closure cast; i64* -> i64
  %cloptr8979 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8980 = getelementptr inbounds i64, i64* %cloptr8979, i64 0                    ; &cloptr8979[0]
  %f8981 = ptrtoint void(i64,i64,i64,i64)* @lam8483 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8981, i64* %eptr8980                                                   ; store fptr
  %uHG$_37drop = ptrtoint i64* %cloptr8979 to i64                                    ; closure cast; i64* -> i64
  %cloptr8982 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8983 = getelementptr inbounds i64, i64* %cloptr8982, i64 0                    ; &cloptr8982[0]
  %f8984 = ptrtoint void(i64,i64,i64,i64)* @lam8443 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8984, i64* %eptr8983                                                   ; store fptr
  %dqL$_37memv = ptrtoint i64* %cloptr8982 to i64                                    ; closure cast; i64* -> i64
  %cloptr8985 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8987 = getelementptr inbounds i64, i64* %cloptr8985, i64 1                    ; &eptr8987[1]
  store i64 %nAO$_37foldl1, i64* %eptr8987                                           ; *eptr8987 = %nAO$_37foldl1
  %eptr8986 = getelementptr inbounds i64, i64* %cloptr8985, i64 0                    ; &cloptr8985[0]
  %f8988 = ptrtoint void(i64,i64)* @lam8412 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8988, i64* %eptr8986                                                   ; store fptr
  %rF1$_37_47 = ptrtoint i64* %cloptr8985 to i64                                     ; closure cast; i64* -> i64
  %cloptr8989 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8990 = getelementptr inbounds i64, i64* %cloptr8989, i64 0                    ; &cloptr8989[0]
  %f8991 = ptrtoint void(i64,i64,i64)* @lam8404 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8991, i64* %eptr8990                                                   ; store fptr
  %Nnu$_37first = ptrtoint i64* %cloptr8989 to i64                                   ; closure cast; i64* -> i64
  %cloptr8992 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8993 = getelementptr inbounds i64, i64* %cloptr8992, i64 0                    ; &cloptr8992[0]
  %f8994 = ptrtoint void(i64,i64,i64)* @lam8401 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8994, i64* %eptr8993                                                   ; store fptr
  %j8m$_37second = ptrtoint i64* %cloptr8992 to i64                                  ; closure cast; i64* -> i64
  %cloptr8995 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8996 = getelementptr inbounds i64, i64* %cloptr8995, i64 0                    ; &cloptr8995[0]
  %f8997 = ptrtoint void(i64,i64,i64)* @lam8398 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8997, i64* %eptr8996                                                   ; store fptr
  %OHS$_37third = ptrtoint i64* %cloptr8995 to i64                                   ; closure cast; i64* -> i64
  %cloptr8998 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8999 = getelementptr inbounds i64, i64* %cloptr8998, i64 0                    ; &cloptr8998[0]
  %f9000 = ptrtoint void(i64,i64,i64)* @lam8395 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9000, i64* %eptr8999                                                   ; store fptr
  %Yfv$_37fourth = ptrtoint i64* %cloptr8998 to i64                                  ; closure cast; i64* -> i64
  %cloptr9001 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9002 = getelementptr inbounds i64, i64* %cloptr9001, i64 0                    ; &cloptr9001[0]
  %f9003 = ptrtoint void(i64,i64,i64)* @lam8392 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9003, i64* %eptr9002                                                   ; store fptr
  %b8I$promise_63 = ptrtoint i64* %cloptr9001 to i64                                 ; closure cast; i64* -> i64
  %cloptr9004 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9005 = getelementptr inbounds i64, i64* %cloptr9004, i64 0                    ; &cloptr9004[0]
  %f9006 = ptrtoint void(i64,i64)* @lam8386 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9006, i64* %eptr9005                                                   ; store fptr
  %arg7638 = ptrtoint i64* %cloptr9004 to i64                                        ; closure cast; i64* -> i64
  %cloptr9007 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9009 = getelementptr inbounds i64, i64* %cloptr9007, i64 1                    ; &eptr9009[1]
  %eptr9010 = getelementptr inbounds i64, i64* %cloptr9007, i64 2                    ; &eptr9010[2]
  %eptr9011 = getelementptr inbounds i64, i64* %cloptr9007, i64 3                    ; &eptr9011[3]
  store i64 %kov$_37length, i64* %eptr9009                                           ; *eptr9009 = %kov$_37length
  store i64 %CK7$_37_62, i64* %eptr9010                                              ; *eptr9010 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9011                                             ; *eptr9011 = %uHG$_37drop
  %eptr9008 = getelementptr inbounds i64, i64* %cloptr9007, i64 0                    ; &cloptr9007[0]
  %f9012 = ptrtoint void(i64,i64,i64)* @lam8383 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9012, i64* %eptr9008                                                   ; store fptr
  %arg7637 = ptrtoint i64* %cloptr9007 to i64                                        ; closure cast; i64* -> i64
  %rva8125 = add i64 0, 0                                                            ; quoted ()
  %rva8124 = call i64 @prim_cons(i64 %arg7637, i64 %rva8125)                         ; call prim_cons
  %cloptr9013 = inttoptr i64 %arg7638 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9013)                                         ; assert function application
  %i0ptr9014 = getelementptr inbounds i64, i64* %cloptr9013, i64 0                   ; &cloptr9013[0]
  %f9016 = load i64, i64* %i0ptr9014, align 8                                        ; load; *i0ptr9014
  %fptr9015 = inttoptr i64 %f9016 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9015(i64 %arg7638, i64 %rva8124)                    ; tail call
  ret void
}


define void @lam8523(i64 %env8524, i64 %cont7096, i64 %q2K$a) {
  %arg7378 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %bB2$a = call i64 @prim_make_45vector(i64 %arg7378, i64 %q2K$a)                    ; call prim_make_45vector
  %cloptr9017 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9018 = getelementptr inbounds i64, i64* %cloptr9017, i64 0                    ; &cloptr9017[0]
  %f9019 = ptrtoint void(i64,i64,i64)* @lam8520 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9019, i64* %eptr9018                                                   ; store fptr
  %arg7381 = ptrtoint i64* %cloptr9017 to i64                                        ; closure cast; i64* -> i64
  %cloptr9020 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9022 = getelementptr inbounds i64, i64* %cloptr9020, i64 1                    ; &eptr9022[1]
  %eptr9023 = getelementptr inbounds i64, i64* %cloptr9020, i64 2                    ; &eptr9023[2]
  store i64 %bB2$a, i64* %eptr9022                                                   ; *eptr9022 = %bB2$a
  store i64 %cont7096, i64* %eptr9023                                                ; *eptr9023 = %cont7096
  %eptr9021 = getelementptr inbounds i64, i64* %cloptr9020, i64 0                    ; &cloptr9020[0]
  %f9024 = ptrtoint void(i64,i64,i64)* @lam8517 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9024, i64* %eptr9021                                                   ; store fptr
  %arg7380 = ptrtoint i64* %cloptr9020 to i64                                        ; closure cast; i64* -> i64
  %cloptr9025 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9027 = getelementptr inbounds i64, i64* %cloptr9025, i64 1                    ; &eptr9027[1]
  %eptr9028 = getelementptr inbounds i64, i64* %cloptr9025, i64 2                    ; &eptr9028[2]
  store i64 %bB2$a, i64* %eptr9027                                                   ; *eptr9027 = %bB2$a
  store i64 %cont7096, i64* %eptr9028                                                ; *eptr9028 = %cont7096
  %eptr9026 = getelementptr inbounds i64, i64* %cloptr9025, i64 0                    ; &cloptr9025[0]
  %f9029 = ptrtoint void(i64,i64,i64)* @lam8500 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9029, i64* %eptr9026                                                   ; store fptr
  %arg7379 = ptrtoint i64* %cloptr9025 to i64                                        ; closure cast; i64* -> i64
  %cloptr9030 = inttoptr i64 %arg7381 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9030)                                         ; assert function application
  %i0ptr9031 = getelementptr inbounds i64, i64* %cloptr9030, i64 0                   ; &cloptr9030[0]
  %f9033 = load i64, i64* %i0ptr9031, align 8                                        ; load; *i0ptr9031
  %fptr9032 = inttoptr i64 %f9033 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9032(i64 %arg7381, i64 %arg7380, i64 %arg7379)      ; tail call
  ret void
}


define void @lam8520(i64 %env8521, i64 %cont7102, i64 %u1O$k) {
  %arg7383 = add i64 0, 0                                                            ; quoted ()
  %cloptr9034 = inttoptr i64 %cont7102 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9034)                                         ; assert function application
  %i0ptr9035 = getelementptr inbounds i64, i64* %cloptr9034, i64 0                   ; &cloptr9034[0]
  %f9037 = load i64, i64* %i0ptr9035, align 8                                        ; load; *i0ptr9035
  %fptr9036 = inttoptr i64 %f9037 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9036(i64 %cont7102, i64 %arg7383, i64 %u1O$k)       ; tail call
  ret void
}


define void @lam8517(i64 %env8518, i64 %_957097, i64 %IoF$cc) {
  %envptr9038 = inttoptr i64 %env8518 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9039 = getelementptr inbounds i64, i64* %envptr9038, i64 2                  ; &envptr9038[2]
  %cont7096 = load i64, i64* %envptr9039, align 8                                    ; load; *envptr9039
  %envptr9040 = inttoptr i64 %env8518 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9041 = getelementptr inbounds i64, i64* %envptr9040, i64 1                  ; &envptr9040[1]
  %bB2$a = load i64, i64* %envptr9041, align 8                                       ; load; *envptr9041
  %arg7385 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7385)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9042 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9042, label %else9044, label %then9043                                   ; if

then9043:
  %arg7389 = add i64 0, 0                                                            ; quoted ()
  %arg7388 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9045 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9045)                                         ; assert function application
  %i0ptr9046 = getelementptr inbounds i64, i64* %cloptr9045, i64 0                   ; &cloptr9045[0]
  %f9048 = load i64, i64* %i0ptr9046, align 8                                        ; load; *i0ptr9046
  %fptr9047 = inttoptr i64 %f9048 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9047(i64 %cont7096, i64 %arg7389, i64 %arg7388)     ; tail call
  ret void

else9044:
  %arg7391 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7391)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9049 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9049, label %else9051, label %then9050                                   ; if

then9050:
  %arg7394 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7394)                     ; call prim_vector_45ref
  %retprim7101 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9052 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9054 = getelementptr inbounds i64, i64* %cloptr9052, i64 1                    ; &eptr9054[1]
  %eptr9055 = getelementptr inbounds i64, i64* %cloptr9052, i64 2                    ; &eptr9055[2]
  %eptr9056 = getelementptr inbounds i64, i64* %cloptr9052, i64 3                    ; &eptr9056[3]
  store i64 %IoF$cc, i64* %eptr9054                                                  ; *eptr9054 = %IoF$cc
  store i64 %bB2$a, i64* %eptr9055                                                   ; *eptr9055 = %bB2$a
  store i64 %cont7096, i64* %eptr9056                                                ; *eptr9056 = %cont7096
  %eptr9053 = getelementptr inbounds i64, i64* %cloptr9052, i64 0                    ; &cloptr9052[0]
  %f9057 = ptrtoint void(i64,i64,i64)* @lam8510 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9057, i64* %eptr9053                                                   ; store fptr
  %arg7399 = ptrtoint i64* %cloptr9052 to i64                                        ; closure cast; i64* -> i64
  %arg7398 = add i64 0, 0                                                            ; quoted ()
  %cloptr9058 = inttoptr i64 %arg7399 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9058)                                         ; assert function application
  %i0ptr9059 = getelementptr inbounds i64, i64* %cloptr9058, i64 0                   ; &cloptr9058[0]
  %f9061 = load i64, i64* %i0ptr9059, align 8                                        ; load; *i0ptr9059
  %fptr9060 = inttoptr i64 %f9061 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9060(i64 %arg7399, i64 %arg7398, i64 %retprim7101)  ; tail call
  ret void

else9051:
  %arg7413 = add i64 0, 0                                                            ; quoted ()
  %arg7412 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9062 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9062)                                         ; assert function application
  %i0ptr9063 = getelementptr inbounds i64, i64* %cloptr9062, i64 0                   ; &cloptr9062[0]
  %f9065 = load i64, i64* %i0ptr9063, align 8                                        ; load; *i0ptr9063
  %fptr9064 = inttoptr i64 %f9065 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9064(i64 %cont7096, i64 %arg7413, i64 %arg7412)     ; tail call
  ret void
}


define void @lam8510(i64 %env8511, i64 %_957098, i64 %g1I$b) {
  %envptr9066 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9067 = getelementptr inbounds i64, i64* %envptr9066, i64 3                  ; &envptr9066[3]
  %cont7096 = load i64, i64* %envptr9067, align 8                                    ; load; *envptr9067
  %envptr9068 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9069 = getelementptr inbounds i64, i64* %envptr9068, i64 2                  ; &envptr9068[2]
  %bB2$a = load i64, i64* %envptr9069, align 8                                       ; load; *envptr9069
  %envptr9070 = inttoptr i64 %env8511 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9071 = getelementptr inbounds i64, i64* %envptr9070, i64 1                  ; &envptr9070[1]
  %IoF$cc = load i64, i64* %envptr9071, align 8                                      ; load; *envptr9071
  %arg7400 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7400)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7404 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7100 = call i64 @prim_vector_45set_33(i64 %bB2$a, i64 %arg7404, i64 %a7005); call prim_vector_45set_33
  %cloptr9072 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9074 = getelementptr inbounds i64, i64* %cloptr9072, i64 1                    ; &eptr9074[1]
  %eptr9075 = getelementptr inbounds i64, i64* %cloptr9072, i64 2                    ; &eptr9075[2]
  store i64 %IoF$cc, i64* %eptr9074                                                  ; *eptr9074 = %IoF$cc
  store i64 %cont7096, i64* %eptr9075                                                ; *eptr9075 = %cont7096
  %eptr9073 = getelementptr inbounds i64, i64* %cloptr9072, i64 0                    ; &cloptr9072[0]
  %f9076 = ptrtoint void(i64,i64,i64)* @lam8506 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9076, i64* %eptr9073                                                   ; store fptr
  %arg7408 = ptrtoint i64* %cloptr9072 to i64                                        ; closure cast; i64* -> i64
  %arg7407 = add i64 0, 0                                                            ; quoted ()
  %cloptr9077 = inttoptr i64 %arg7408 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9077)                                         ; assert function application
  %i0ptr9078 = getelementptr inbounds i64, i64* %cloptr9077, i64 0                   ; &cloptr9077[0]
  %f9080 = load i64, i64* %i0ptr9078, align 8                                        ; load; *i0ptr9078
  %fptr9079 = inttoptr i64 %f9080 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9079(i64 %arg7408, i64 %arg7407, i64 %retprim7100)  ; tail call
  ret void
}


define void @lam8506(i64 %env8507, i64 %_957099, i64 %uW6$_950) {
  %envptr9081 = inttoptr i64 %env8507 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9082 = getelementptr inbounds i64, i64* %envptr9081, i64 2                  ; &envptr9081[2]
  %cont7096 = load i64, i64* %envptr9082, align 8                                    ; load; *envptr9082
  %envptr9083 = inttoptr i64 %env8507 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9084 = getelementptr inbounds i64, i64* %envptr9083, i64 1                  ; &envptr9083[1]
  %IoF$cc = load i64, i64* %envptr9084, align 8                                      ; load; *envptr9084
  %cloptr9085 = inttoptr i64 %IoF$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9085)                                         ; assert function application
  %i0ptr9086 = getelementptr inbounds i64, i64* %cloptr9085, i64 0                   ; &cloptr9085[0]
  %f9088 = load i64, i64* %i0ptr9086, align 8                                        ; load; *i0ptr9086
  %fptr9087 = inttoptr i64 %f9088 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9087(i64 %IoF$cc, i64 %cont7096, i64 %IoF$cc)       ; tail call
  ret void
}


define void @lam8500(i64 %env8501, i64 %_957097, i64 %IoF$cc) {
  %envptr9089 = inttoptr i64 %env8501 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9090 = getelementptr inbounds i64, i64* %envptr9089, i64 2                  ; &envptr9089[2]
  %cont7096 = load i64, i64* %envptr9090, align 8                                    ; load; *envptr9090
  %envptr9091 = inttoptr i64 %env8501 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9092 = getelementptr inbounds i64, i64* %envptr9091, i64 1                  ; &envptr9091[1]
  %bB2$a = load i64, i64* %envptr9092, align 8                                       ; load; *envptr9092
  %arg7415 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7415)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9093 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9093, label %else9095, label %then9094                                   ; if

then9094:
  %arg7419 = add i64 0, 0                                                            ; quoted ()
  %arg7418 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9096 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9096)                                         ; assert function application
  %i0ptr9097 = getelementptr inbounds i64, i64* %cloptr9096, i64 0                   ; &cloptr9096[0]
  %f9099 = load i64, i64* %i0ptr9097, align 8                                        ; load; *i0ptr9097
  %fptr9098 = inttoptr i64 %f9099 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9098(i64 %cont7096, i64 %arg7419, i64 %arg7418)     ; tail call
  ret void

else9095:
  %arg7421 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7421)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9100 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9100, label %else9102, label %then9101                                   ; if

then9101:
  %arg7424 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7424)                     ; call prim_vector_45ref
  %retprim7101 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9103 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9105 = getelementptr inbounds i64, i64* %cloptr9103, i64 1                    ; &eptr9105[1]
  %eptr9106 = getelementptr inbounds i64, i64* %cloptr9103, i64 2                    ; &eptr9106[2]
  %eptr9107 = getelementptr inbounds i64, i64* %cloptr9103, i64 3                    ; &eptr9107[3]
  store i64 %IoF$cc, i64* %eptr9105                                                  ; *eptr9105 = %IoF$cc
  store i64 %bB2$a, i64* %eptr9106                                                   ; *eptr9106 = %bB2$a
  store i64 %cont7096, i64* %eptr9107                                                ; *eptr9107 = %cont7096
  %eptr9104 = getelementptr inbounds i64, i64* %cloptr9103, i64 0                    ; &cloptr9103[0]
  %f9108 = ptrtoint void(i64,i64,i64)* @lam8493 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9108, i64* %eptr9104                                                   ; store fptr
  %arg7429 = ptrtoint i64* %cloptr9103 to i64                                        ; closure cast; i64* -> i64
  %arg7428 = add i64 0, 0                                                            ; quoted ()
  %cloptr9109 = inttoptr i64 %arg7429 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9109)                                         ; assert function application
  %i0ptr9110 = getelementptr inbounds i64, i64* %cloptr9109, i64 0                   ; &cloptr9109[0]
  %f9112 = load i64, i64* %i0ptr9110, align 8                                        ; load; *i0ptr9110
  %fptr9111 = inttoptr i64 %f9112 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9111(i64 %arg7429, i64 %arg7428, i64 %retprim7101)  ; tail call
  ret void

else9102:
  %arg7443 = add i64 0, 0                                                            ; quoted ()
  %arg7442 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9113 = inttoptr i64 %cont7096 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9113)                                         ; assert function application
  %i0ptr9114 = getelementptr inbounds i64, i64* %cloptr9113, i64 0                   ; &cloptr9113[0]
  %f9116 = load i64, i64* %i0ptr9114, align 8                                        ; load; *i0ptr9114
  %fptr9115 = inttoptr i64 %f9116 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9115(i64 %cont7096, i64 %arg7443, i64 %arg7442)     ; tail call
  ret void
}


define void @lam8493(i64 %env8494, i64 %_957098, i64 %g1I$b) {
  %envptr9117 = inttoptr i64 %env8494 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9118 = getelementptr inbounds i64, i64* %envptr9117, i64 3                  ; &envptr9117[3]
  %cont7096 = load i64, i64* %envptr9118, align 8                                    ; load; *envptr9118
  %envptr9119 = inttoptr i64 %env8494 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9120 = getelementptr inbounds i64, i64* %envptr9119, i64 2                  ; &envptr9119[2]
  %bB2$a = load i64, i64* %envptr9120, align 8                                       ; load; *envptr9120
  %envptr9121 = inttoptr i64 %env8494 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9122 = getelementptr inbounds i64, i64* %envptr9121, i64 1                  ; &envptr9121[1]
  %IoF$cc = load i64, i64* %envptr9122, align 8                                      ; load; *envptr9122
  %arg7430 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %bB2$a, i64 %arg7430)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7434 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7100 = call i64 @prim_vector_45set_33(i64 %bB2$a, i64 %arg7434, i64 %a7005); call prim_vector_45set_33
  %cloptr9123 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9125 = getelementptr inbounds i64, i64* %cloptr9123, i64 1                    ; &eptr9125[1]
  %eptr9126 = getelementptr inbounds i64, i64* %cloptr9123, i64 2                    ; &eptr9126[2]
  store i64 %IoF$cc, i64* %eptr9125                                                  ; *eptr9125 = %IoF$cc
  store i64 %cont7096, i64* %eptr9126                                                ; *eptr9126 = %cont7096
  %eptr9124 = getelementptr inbounds i64, i64* %cloptr9123, i64 0                    ; &cloptr9123[0]
  %f9127 = ptrtoint void(i64,i64,i64)* @lam8489 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9127, i64* %eptr9124                                                   ; store fptr
  %arg7438 = ptrtoint i64* %cloptr9123 to i64                                        ; closure cast; i64* -> i64
  %arg7437 = add i64 0, 0                                                            ; quoted ()
  %cloptr9128 = inttoptr i64 %arg7438 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9128)                                         ; assert function application
  %i0ptr9129 = getelementptr inbounds i64, i64* %cloptr9128, i64 0                   ; &cloptr9128[0]
  %f9131 = load i64, i64* %i0ptr9129, align 8                                        ; load; *i0ptr9129
  %fptr9130 = inttoptr i64 %f9131 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9130(i64 %arg7438, i64 %arg7437, i64 %retprim7100)  ; tail call
  ret void
}


define void @lam8489(i64 %env8490, i64 %_957099, i64 %uW6$_950) {
  %envptr9132 = inttoptr i64 %env8490 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9133 = getelementptr inbounds i64, i64* %envptr9132, i64 2                  ; &envptr9132[2]
  %cont7096 = load i64, i64* %envptr9133, align 8                                    ; load; *envptr9133
  %envptr9134 = inttoptr i64 %env8490 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9135 = getelementptr inbounds i64, i64* %envptr9134, i64 1                  ; &envptr9134[1]
  %IoF$cc = load i64, i64* %envptr9135, align 8                                      ; load; *envptr9135
  %cloptr9136 = inttoptr i64 %IoF$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9136)                                         ; assert function application
  %i0ptr9137 = getelementptr inbounds i64, i64* %cloptr9136, i64 0                   ; &cloptr9136[0]
  %f9139 = load i64, i64* %i0ptr9137, align 8                                        ; load; *i0ptr9137
  %fptr9138 = inttoptr i64 %f9139 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9138(i64 %IoF$cc, i64 %cont7096, i64 %IoF$cc)       ; tail call
  ret void
}


define void @lam8483(i64 %env8484, i64 %cont7103, i64 %yXR$lst, i64 %Qxd$n) {
  %arg7446 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %ebw$lst = call i64 @prim_make_45vector(i64 %arg7446, i64 %yXR$lst)                ; call prim_make_45vector
  %arg7448 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %VyH$n = call i64 @prim_make_45vector(i64 %arg7448, i64 %Qxd$n)                    ; call prim_make_45vector
  %cloptr9140 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9141 = getelementptr inbounds i64, i64* %cloptr9140, i64 0                    ; &cloptr9140[0]
  %f9142 = ptrtoint void(i64,i64,i64)* @lam8479 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9142, i64* %eptr9141                                                   ; store fptr
  %arg7451 = ptrtoint i64* %cloptr9140 to i64                                        ; closure cast; i64* -> i64
  %cloptr9143 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9145 = getelementptr inbounds i64, i64* %cloptr9143, i64 1                    ; &eptr9145[1]
  %eptr9146 = getelementptr inbounds i64, i64* %cloptr9143, i64 2                    ; &eptr9146[2]
  %eptr9147 = getelementptr inbounds i64, i64* %cloptr9143, i64 3                    ; &eptr9147[3]
  store i64 %VyH$n, i64* %eptr9145                                                   ; *eptr9145 = %VyH$n
  store i64 %ebw$lst, i64* %eptr9146                                                 ; *eptr9146 = %ebw$lst
  store i64 %cont7103, i64* %eptr9147                                                ; *eptr9147 = %cont7103
  %eptr9144 = getelementptr inbounds i64, i64* %cloptr9143, i64 0                    ; &cloptr9143[0]
  %f9148 = ptrtoint void(i64,i64,i64)* @lam8477 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9148, i64* %eptr9144                                                   ; store fptr
  %arg7450 = ptrtoint i64* %cloptr9143 to i64                                        ; closure cast; i64* -> i64
  %cloptr9149 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9151 = getelementptr inbounds i64, i64* %cloptr9149, i64 1                    ; &eptr9151[1]
  %eptr9152 = getelementptr inbounds i64, i64* %cloptr9149, i64 2                    ; &eptr9152[2]
  %eptr9153 = getelementptr inbounds i64, i64* %cloptr9149, i64 3                    ; &eptr9153[3]
  store i64 %VyH$n, i64* %eptr9151                                                   ; *eptr9151 = %VyH$n
  store i64 %ebw$lst, i64* %eptr9152                                                 ; *eptr9152 = %ebw$lst
  store i64 %cont7103, i64* %eptr9153                                                ; *eptr9153 = %cont7103
  %eptr9150 = getelementptr inbounds i64, i64* %cloptr9149, i64 0                    ; &cloptr9149[0]
  %f9154 = ptrtoint void(i64,i64,i64)* @lam8460 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9154, i64* %eptr9150                                                   ; store fptr
  %arg7449 = ptrtoint i64* %cloptr9149 to i64                                        ; closure cast; i64* -> i64
  %cloptr9155 = inttoptr i64 %arg7451 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9155)                                         ; assert function application
  %i0ptr9156 = getelementptr inbounds i64, i64* %cloptr9155, i64 0                   ; &cloptr9155[0]
  %f9158 = load i64, i64* %i0ptr9156, align 8                                        ; load; *i0ptr9156
  %fptr9157 = inttoptr i64 %f9158 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9157(i64 %arg7451, i64 %arg7450, i64 %arg7449)      ; tail call
  ret void
}


define void @lam8479(i64 %env8480, i64 %cont7110, i64 %bBx$u) {
  %cloptr9159 = inttoptr i64 %bBx$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9159)                                         ; assert function application
  %i0ptr9160 = getelementptr inbounds i64, i64* %cloptr9159, i64 0                   ; &cloptr9159[0]
  %f9162 = load i64, i64* %i0ptr9160, align 8                                        ; load; *i0ptr9160
  %fptr9161 = inttoptr i64 %f9162 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9161(i64 %bBx$u, i64 %cont7110, i64 %bBx$u)         ; tail call
  ret void
}


define void @lam8477(i64 %env8478, i64 %_957104, i64 %vzf$cc) {
  %envptr9163 = inttoptr i64 %env8478 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9164 = getelementptr inbounds i64, i64* %envptr9163, i64 3                  ; &envptr9163[3]
  %cont7103 = load i64, i64* %envptr9164, align 8                                    ; load; *envptr9164
  %envptr9165 = inttoptr i64 %env8478 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9166 = getelementptr inbounds i64, i64* %envptr9165, i64 2                  ; &envptr9165[2]
  %ebw$lst = load i64, i64* %envptr9166, align 8                                     ; load; *envptr9166
  %envptr9167 = inttoptr i64 %env8478 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9168 = getelementptr inbounds i64, i64* %envptr9167, i64 1                  ; &envptr9167[1]
  %VyH$n = load i64, i64* %envptr9168, align 8                                       ; load; *envptr9168
  %arg7455 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %VyH$n, i64 %arg7455)                     ; call prim_vector_45ref
  %arg7458 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7458, i64 %a7006)                              ; call prim__61
  %cmp9169 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9169, label %else9171, label %then9170                                   ; if

then9170:
  %arg7459 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7105 = call i64 @prim_vector_45ref(i64 %ebw$lst, i64 %arg7459)             ; call prim_vector_45ref
  %arg7462 = add i64 0, 0                                                            ; quoted ()
  %cloptr9172 = inttoptr i64 %cont7103 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9172)                                         ; assert function application
  %i0ptr9173 = getelementptr inbounds i64, i64* %cloptr9172, i64 0                   ; &cloptr9172[0]
  %f9175 = load i64, i64* %i0ptr9173, align 8                                        ; load; *i0ptr9173
  %fptr9174 = inttoptr i64 %f9175 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9174(i64 %cont7103, i64 %arg7462, i64 %retprim7105) ; tail call
  ret void

else9171:
  %arg7464 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %ebw$lst, i64 %arg7464)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7468 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45set_33(i64 %ebw$lst, i64 %arg7468, i64 %a7009); call prim_vector_45set_33
  %cloptr9176 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9178 = getelementptr inbounds i64, i64* %cloptr9176, i64 1                    ; &eptr9178[1]
  %eptr9179 = getelementptr inbounds i64, i64* %cloptr9176, i64 2                    ; &eptr9179[2]
  %eptr9180 = getelementptr inbounds i64, i64* %cloptr9176, i64 3                    ; &eptr9180[3]
  store i64 %VyH$n, i64* %eptr9178                                                   ; *eptr9178 = %VyH$n
  store i64 %cont7103, i64* %eptr9179                                                ; *eptr9179 = %cont7103
  store i64 %vzf$cc, i64* %eptr9180                                                  ; *eptr9180 = %vzf$cc
  %eptr9177 = getelementptr inbounds i64, i64* %cloptr9176, i64 0                    ; &cloptr9176[0]
  %f9181 = ptrtoint void(i64,i64,i64)* @lam8471 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9181, i64* %eptr9177                                                   ; store fptr
  %arg7472 = ptrtoint i64* %cloptr9176 to i64                                        ; closure cast; i64* -> i64
  %arg7471 = add i64 0, 0                                                            ; quoted ()
  %cloptr9182 = inttoptr i64 %arg7472 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9182)                                         ; assert function application
  %i0ptr9183 = getelementptr inbounds i64, i64* %cloptr9182, i64 0                   ; &cloptr9182[0]
  %f9185 = load i64, i64* %i0ptr9183, align 8                                        ; load; *i0ptr9183
  %fptr9184 = inttoptr i64 %f9185 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9184(i64 %arg7472, i64 %arg7471, i64 %retprim7109)  ; tail call
  ret void
}


define void @lam8471(i64 %env8472, i64 %_957106, i64 %G1U$_950) {
  %envptr9186 = inttoptr i64 %env8472 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9187 = getelementptr inbounds i64, i64* %envptr9186, i64 3                  ; &envptr9186[3]
  %vzf$cc = load i64, i64* %envptr9187, align 8                                      ; load; *envptr9187
  %envptr9188 = inttoptr i64 %env8472 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9189 = getelementptr inbounds i64, i64* %envptr9188, i64 2                  ; &envptr9188[2]
  %cont7103 = load i64, i64* %envptr9189, align 8                                    ; load; *envptr9189
  %envptr9190 = inttoptr i64 %env8472 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9191 = getelementptr inbounds i64, i64* %envptr9190, i64 1                  ; &envptr9190[1]
  %VyH$n = load i64, i64* %envptr9191, align 8                                       ; load; *envptr9191
  %arg7473 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %VyH$n, i64 %arg7473)                     ; call prim_vector_45ref
  %arg7475 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7475)                              ; call prim__45
  %arg7478 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %VyH$n, i64 %arg7478, i64 %a7011); call prim_vector_45set_33
  %cloptr9192 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9194 = getelementptr inbounds i64, i64* %cloptr9192, i64 1                    ; &eptr9194[1]
  %eptr9195 = getelementptr inbounds i64, i64* %cloptr9192, i64 2                    ; &eptr9195[2]
  store i64 %cont7103, i64* %eptr9194                                                ; *eptr9194 = %cont7103
  store i64 %vzf$cc, i64* %eptr9195                                                  ; *eptr9195 = %vzf$cc
  %eptr9193 = getelementptr inbounds i64, i64* %cloptr9192, i64 0                    ; &cloptr9192[0]
  %f9196 = ptrtoint void(i64,i64,i64)* @lam8466 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9196, i64* %eptr9193                                                   ; store fptr
  %arg7482 = ptrtoint i64* %cloptr9192 to i64                                        ; closure cast; i64* -> i64
  %arg7481 = add i64 0, 0                                                            ; quoted ()
  %cloptr9197 = inttoptr i64 %arg7482 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9197)                                         ; assert function application
  %i0ptr9198 = getelementptr inbounds i64, i64* %cloptr9197, i64 0                   ; &cloptr9197[0]
  %f9200 = load i64, i64* %i0ptr9198, align 8                                        ; load; *i0ptr9198
  %fptr9199 = inttoptr i64 %f9200 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9199(i64 %arg7482, i64 %arg7481, i64 %retprim7108)  ; tail call
  ret void
}


define void @lam8466(i64 %env8467, i64 %_957107, i64 %x8D$_951) {
  %envptr9201 = inttoptr i64 %env8467 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9202 = getelementptr inbounds i64, i64* %envptr9201, i64 2                  ; &envptr9201[2]
  %vzf$cc = load i64, i64* %envptr9202, align 8                                      ; load; *envptr9202
  %envptr9203 = inttoptr i64 %env8467 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9204 = getelementptr inbounds i64, i64* %envptr9203, i64 1                  ; &envptr9203[1]
  %cont7103 = load i64, i64* %envptr9204, align 8                                    ; load; *envptr9204
  %cloptr9205 = inttoptr i64 %vzf$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9205)                                         ; assert function application
  %i0ptr9206 = getelementptr inbounds i64, i64* %cloptr9205, i64 0                   ; &cloptr9205[0]
  %f9208 = load i64, i64* %i0ptr9206, align 8                                        ; load; *i0ptr9206
  %fptr9207 = inttoptr i64 %f9208 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9207(i64 %vzf$cc, i64 %cont7103, i64 %vzf$cc)       ; tail call
  ret void
}


define void @lam8460(i64 %env8461, i64 %_957104, i64 %vzf$cc) {
  %envptr9209 = inttoptr i64 %env8461 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9210 = getelementptr inbounds i64, i64* %envptr9209, i64 3                  ; &envptr9209[3]
  %cont7103 = load i64, i64* %envptr9210, align 8                                    ; load; *envptr9210
  %envptr9211 = inttoptr i64 %env8461 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9212 = getelementptr inbounds i64, i64* %envptr9211, i64 2                  ; &envptr9211[2]
  %ebw$lst = load i64, i64* %envptr9212, align 8                                     ; load; *envptr9212
  %envptr9213 = inttoptr i64 %env8461 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9214 = getelementptr inbounds i64, i64* %envptr9213, i64 1                  ; &envptr9213[1]
  %VyH$n = load i64, i64* %envptr9214, align 8                                       ; load; *envptr9214
  %arg7486 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %VyH$n, i64 %arg7486)                     ; call prim_vector_45ref
  %arg7489 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7489, i64 %a7006)                              ; call prim__61
  %cmp9215 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9215, label %else9217, label %then9216                                   ; if

then9216:
  %arg7490 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7105 = call i64 @prim_vector_45ref(i64 %ebw$lst, i64 %arg7490)             ; call prim_vector_45ref
  %arg7493 = add i64 0, 0                                                            ; quoted ()
  %cloptr9218 = inttoptr i64 %cont7103 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9218)                                         ; assert function application
  %i0ptr9219 = getelementptr inbounds i64, i64* %cloptr9218, i64 0                   ; &cloptr9218[0]
  %f9221 = load i64, i64* %i0ptr9219, align 8                                        ; load; *i0ptr9219
  %fptr9220 = inttoptr i64 %f9221 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9220(i64 %cont7103, i64 %arg7493, i64 %retprim7105) ; tail call
  ret void

else9217:
  %arg7495 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %ebw$lst, i64 %arg7495)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7499 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45set_33(i64 %ebw$lst, i64 %arg7499, i64 %a7009); call prim_vector_45set_33
  %cloptr9222 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9224 = getelementptr inbounds i64, i64* %cloptr9222, i64 1                    ; &eptr9224[1]
  %eptr9225 = getelementptr inbounds i64, i64* %cloptr9222, i64 2                    ; &eptr9225[2]
  %eptr9226 = getelementptr inbounds i64, i64* %cloptr9222, i64 3                    ; &eptr9226[3]
  store i64 %VyH$n, i64* %eptr9224                                                   ; *eptr9224 = %VyH$n
  store i64 %cont7103, i64* %eptr9225                                                ; *eptr9225 = %cont7103
  store i64 %vzf$cc, i64* %eptr9226                                                  ; *eptr9226 = %vzf$cc
  %eptr9223 = getelementptr inbounds i64, i64* %cloptr9222, i64 0                    ; &cloptr9222[0]
  %f9227 = ptrtoint void(i64,i64,i64)* @lam8454 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9227, i64* %eptr9223                                                   ; store fptr
  %arg7503 = ptrtoint i64* %cloptr9222 to i64                                        ; closure cast; i64* -> i64
  %arg7502 = add i64 0, 0                                                            ; quoted ()
  %cloptr9228 = inttoptr i64 %arg7503 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9228)                                         ; assert function application
  %i0ptr9229 = getelementptr inbounds i64, i64* %cloptr9228, i64 0                   ; &cloptr9228[0]
  %f9231 = load i64, i64* %i0ptr9229, align 8                                        ; load; *i0ptr9229
  %fptr9230 = inttoptr i64 %f9231 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9230(i64 %arg7503, i64 %arg7502, i64 %retprim7109)  ; tail call
  ret void
}


define void @lam8454(i64 %env8455, i64 %_957106, i64 %G1U$_950) {
  %envptr9232 = inttoptr i64 %env8455 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9233 = getelementptr inbounds i64, i64* %envptr9232, i64 3                  ; &envptr9232[3]
  %vzf$cc = load i64, i64* %envptr9233, align 8                                      ; load; *envptr9233
  %envptr9234 = inttoptr i64 %env8455 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9235 = getelementptr inbounds i64, i64* %envptr9234, i64 2                  ; &envptr9234[2]
  %cont7103 = load i64, i64* %envptr9235, align 8                                    ; load; *envptr9235
  %envptr9236 = inttoptr i64 %env8455 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9237 = getelementptr inbounds i64, i64* %envptr9236, i64 1                  ; &envptr9236[1]
  %VyH$n = load i64, i64* %envptr9237, align 8                                       ; load; *envptr9237
  %arg7504 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %VyH$n, i64 %arg7504)                     ; call prim_vector_45ref
  %arg7506 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7506)                              ; call prim__45
  %arg7509 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7108 = call i64 @prim_vector_45set_33(i64 %VyH$n, i64 %arg7509, i64 %a7011); call prim_vector_45set_33
  %cloptr9238 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9240 = getelementptr inbounds i64, i64* %cloptr9238, i64 1                    ; &eptr9240[1]
  %eptr9241 = getelementptr inbounds i64, i64* %cloptr9238, i64 2                    ; &eptr9241[2]
  store i64 %cont7103, i64* %eptr9240                                                ; *eptr9240 = %cont7103
  store i64 %vzf$cc, i64* %eptr9241                                                  ; *eptr9241 = %vzf$cc
  %eptr9239 = getelementptr inbounds i64, i64* %cloptr9238, i64 0                    ; &cloptr9238[0]
  %f9242 = ptrtoint void(i64,i64,i64)* @lam8449 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9242, i64* %eptr9239                                                   ; store fptr
  %arg7513 = ptrtoint i64* %cloptr9238 to i64                                        ; closure cast; i64* -> i64
  %arg7512 = add i64 0, 0                                                            ; quoted ()
  %cloptr9243 = inttoptr i64 %arg7513 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9243)                                         ; assert function application
  %i0ptr9244 = getelementptr inbounds i64, i64* %cloptr9243, i64 0                   ; &cloptr9243[0]
  %f9246 = load i64, i64* %i0ptr9244, align 8                                        ; load; *i0ptr9244
  %fptr9245 = inttoptr i64 %f9246 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9245(i64 %arg7513, i64 %arg7512, i64 %retprim7108)  ; tail call
  ret void
}


define void @lam8449(i64 %env8450, i64 %_957107, i64 %x8D$_951) {
  %envptr9247 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9248 = getelementptr inbounds i64, i64* %envptr9247, i64 2                  ; &envptr9247[2]
  %vzf$cc = load i64, i64* %envptr9248, align 8                                      ; load; *envptr9248
  %envptr9249 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9250 = getelementptr inbounds i64, i64* %envptr9249, i64 1                  ; &envptr9249[1]
  %cont7103 = load i64, i64* %envptr9250, align 8                                    ; load; *envptr9250
  %cloptr9251 = inttoptr i64 %vzf$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9251)                                         ; assert function application
  %i0ptr9252 = getelementptr inbounds i64, i64* %cloptr9251, i64 0                   ; &cloptr9251[0]
  %f9254 = load i64, i64* %i0ptr9252, align 8                                        ; load; *i0ptr9252
  %fptr9253 = inttoptr i64 %f9254 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9253(i64 %vzf$cc, i64 %cont7103, i64 %vzf$cc)       ; tail call
  ret void
}


define void @lam8443(i64 %env8444, i64 %cont7111, i64 %LWD$v, i64 %RKG$lst) {
  %arg7518 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %oFS$lst = call i64 @prim_make_45vector(i64 %arg7518, i64 %RKG$lst)                ; call prim_make_45vector
  %cloptr9255 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9256 = getelementptr inbounds i64, i64* %cloptr9255, i64 0                    ; &cloptr9255[0]
  %f9257 = ptrtoint void(i64,i64,i64)* @lam8440 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9257, i64* %eptr9256                                                   ; store fptr
  %arg7521 = ptrtoint i64* %cloptr9255 to i64                                        ; closure cast; i64* -> i64
  %cloptr9258 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9260 = getelementptr inbounds i64, i64* %cloptr9258, i64 1                    ; &eptr9260[1]
  %eptr9261 = getelementptr inbounds i64, i64* %cloptr9258, i64 2                    ; &eptr9261[2]
  %eptr9262 = getelementptr inbounds i64, i64* %cloptr9258, i64 3                    ; &eptr9262[3]
  store i64 %cont7111, i64* %eptr9260                                                ; *eptr9260 = %cont7111
  store i64 %LWD$v, i64* %eptr9261                                                   ; *eptr9261 = %LWD$v
  store i64 %oFS$lst, i64* %eptr9262                                                 ; *eptr9262 = %oFS$lst
  %eptr9259 = getelementptr inbounds i64, i64* %cloptr9258, i64 0                    ; &cloptr9258[0]
  %f9263 = ptrtoint void(i64,i64,i64)* @lam8438 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9263, i64* %eptr9259                                                   ; store fptr
  %arg7520 = ptrtoint i64* %cloptr9258 to i64                                        ; closure cast; i64* -> i64
  %cloptr9264 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9266 = getelementptr inbounds i64, i64* %cloptr9264, i64 1                    ; &eptr9266[1]
  %eptr9267 = getelementptr inbounds i64, i64* %cloptr9264, i64 2                    ; &eptr9267[2]
  %eptr9268 = getelementptr inbounds i64, i64* %cloptr9264, i64 3                    ; &eptr9268[3]
  store i64 %cont7111, i64* %eptr9266                                                ; *eptr9266 = %cont7111
  store i64 %LWD$v, i64* %eptr9267                                                   ; *eptr9267 = %LWD$v
  store i64 %oFS$lst, i64* %eptr9268                                                 ; *eptr9268 = %oFS$lst
  %eptr9265 = getelementptr inbounds i64, i64* %cloptr9264, i64 0                    ; &cloptr9264[0]
  %f9269 = ptrtoint void(i64,i64,i64)* @lam8425 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9269, i64* %eptr9265                                                   ; store fptr
  %arg7519 = ptrtoint i64* %cloptr9264 to i64                                        ; closure cast; i64* -> i64
  %cloptr9270 = inttoptr i64 %arg7521 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9270)                                         ; assert function application
  %i0ptr9271 = getelementptr inbounds i64, i64* %cloptr9270, i64 0                   ; &cloptr9270[0]
  %f9273 = load i64, i64* %i0ptr9271, align 8                                        ; load; *i0ptr9271
  %fptr9272 = inttoptr i64 %f9273 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9272(i64 %arg7521, i64 %arg7520, i64 %arg7519)      ; tail call
  ret void
}


define void @lam8440(i64 %env8441, i64 %cont7116, i64 %Pqa$u) {
  %cloptr9274 = inttoptr i64 %Pqa$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9274)                                         ; assert function application
  %i0ptr9275 = getelementptr inbounds i64, i64* %cloptr9274, i64 0                   ; &cloptr9274[0]
  %f9277 = load i64, i64* %i0ptr9275, align 8                                        ; load; *i0ptr9275
  %fptr9276 = inttoptr i64 %f9277 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9276(i64 %Pqa$u, i64 %cont7116, i64 %Pqa$u)         ; tail call
  ret void
}


define void @lam8438(i64 %env8439, i64 %_957112, i64 %CIx$cc) {
  %envptr9278 = inttoptr i64 %env8439 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9279 = getelementptr inbounds i64, i64* %envptr9278, i64 3                  ; &envptr9278[3]
  %oFS$lst = load i64, i64* %envptr9279, align 8                                     ; load; *envptr9279
  %envptr9280 = inttoptr i64 %env8439 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9281 = getelementptr inbounds i64, i64* %envptr9280, i64 2                  ; &envptr9280[2]
  %LWD$v = load i64, i64* %envptr9281, align 8                                       ; load; *envptr9281
  %envptr9282 = inttoptr i64 %env8439 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9283 = getelementptr inbounds i64, i64* %envptr9282, i64 1                  ; &envptr9282[1]
  %cont7111 = load i64, i64* %envptr9283, align 8                                    ; load; *envptr9283
  %arg7525 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7525)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9284 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9284, label %else9286, label %then9285                                   ; if

then9285:
  %arg7529 = add i64 0, 0                                                            ; quoted ()
  %arg7528 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9287 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9287)                                         ; assert function application
  %i0ptr9288 = getelementptr inbounds i64, i64* %cloptr9287, i64 0                   ; &cloptr9287[0]
  %f9290 = load i64, i64* %i0ptr9288, align 8                                        ; load; *i0ptr9288
  %fptr9289 = inttoptr i64 %f9290 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9289(i64 %cont7111, i64 %arg7529, i64 %arg7528)     ; tail call
  ret void

else9286:
  %arg7531 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7531)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %LWD$v)                             ; call prim_eqv_63
  %cmp9291 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9291, label %else9293, label %then9292                                   ; if

then9292:
  %arg7536 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7113 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7536)             ; call prim_vector_45ref
  %arg7539 = add i64 0, 0                                                            ; quoted ()
  %cloptr9294 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9294)                                         ; assert function application
  %i0ptr9295 = getelementptr inbounds i64, i64* %cloptr9294, i64 0                   ; &cloptr9294[0]
  %f9297 = load i64, i64* %i0ptr9295, align 8                                        ; load; *i0ptr9295
  %fptr9296 = inttoptr i64 %f9297 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9296(i64 %cont7111, i64 %arg7539, i64 %retprim7113) ; tail call
  ret void

else9293:
  %arg7541 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7541)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7545 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7115 = call i64 @prim_vector_45set_33(i64 %oFS$lst, i64 %arg7545, i64 %a7018); call prim_vector_45set_33
  %cloptr9298 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9300 = getelementptr inbounds i64, i64* %cloptr9298, i64 1                    ; &eptr9300[1]
  %eptr9301 = getelementptr inbounds i64, i64* %cloptr9298, i64 2                    ; &eptr9301[2]
  store i64 %cont7111, i64* %eptr9300                                                ; *eptr9300 = %cont7111
  store i64 %CIx$cc, i64* %eptr9301                                                  ; *eptr9301 = %CIx$cc
  %eptr9299 = getelementptr inbounds i64, i64* %cloptr9298, i64 0                    ; &cloptr9298[0]
  %f9302 = ptrtoint void(i64,i64,i64)* @lam8432 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9302, i64* %eptr9299                                                   ; store fptr
  %arg7549 = ptrtoint i64* %cloptr9298 to i64                                        ; closure cast; i64* -> i64
  %arg7548 = add i64 0, 0                                                            ; quoted ()
  %cloptr9303 = inttoptr i64 %arg7549 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9303)                                         ; assert function application
  %i0ptr9304 = getelementptr inbounds i64, i64* %cloptr9303, i64 0                   ; &cloptr9303[0]
  %f9306 = load i64, i64* %i0ptr9304, align 8                                        ; load; *i0ptr9304
  %fptr9305 = inttoptr i64 %f9306 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9305(i64 %arg7549, i64 %arg7548, i64 %retprim7115)  ; tail call
  ret void
}


define void @lam8432(i64 %env8433, i64 %_957114, i64 %VZV$_950) {
  %envptr9307 = inttoptr i64 %env8433 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9308 = getelementptr inbounds i64, i64* %envptr9307, i64 2                  ; &envptr9307[2]
  %CIx$cc = load i64, i64* %envptr9308, align 8                                      ; load; *envptr9308
  %envptr9309 = inttoptr i64 %env8433 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9310 = getelementptr inbounds i64, i64* %envptr9309, i64 1                  ; &envptr9309[1]
  %cont7111 = load i64, i64* %envptr9310, align 8                                    ; load; *envptr9310
  %cloptr9311 = inttoptr i64 %CIx$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9311)                                         ; assert function application
  %i0ptr9312 = getelementptr inbounds i64, i64* %cloptr9311, i64 0                   ; &cloptr9311[0]
  %f9314 = load i64, i64* %i0ptr9312, align 8                                        ; load; *i0ptr9312
  %fptr9313 = inttoptr i64 %f9314 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9313(i64 %CIx$cc, i64 %cont7111, i64 %CIx$cc)       ; tail call
  ret void
}


define void @lam8425(i64 %env8426, i64 %_957112, i64 %CIx$cc) {
  %envptr9315 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9316 = getelementptr inbounds i64, i64* %envptr9315, i64 3                  ; &envptr9315[3]
  %oFS$lst = load i64, i64* %envptr9316, align 8                                     ; load; *envptr9316
  %envptr9317 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9318 = getelementptr inbounds i64, i64* %envptr9317, i64 2                  ; &envptr9317[2]
  %LWD$v = load i64, i64* %envptr9318, align 8                                       ; load; *envptr9318
  %envptr9319 = inttoptr i64 %env8426 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9320 = getelementptr inbounds i64, i64* %envptr9319, i64 1                  ; &envptr9319[1]
  %cont7111 = load i64, i64* %envptr9320, align 8                                    ; load; *envptr9320
  %arg7553 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7553)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9321 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9321, label %else9323, label %then9322                                   ; if

then9322:
  %arg7557 = add i64 0, 0                                                            ; quoted ()
  %arg7556 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9324 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9324)                                         ; assert function application
  %i0ptr9325 = getelementptr inbounds i64, i64* %cloptr9324, i64 0                   ; &cloptr9324[0]
  %f9327 = load i64, i64* %i0ptr9325, align 8                                        ; load; *i0ptr9325
  %fptr9326 = inttoptr i64 %f9327 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9326(i64 %cont7111, i64 %arg7557, i64 %arg7556)     ; tail call
  ret void

else9323:
  %arg7559 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7559)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %LWD$v)                             ; call prim_eqv_63
  %cmp9328 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9328, label %else9330, label %then9329                                   ; if

then9329:
  %arg7564 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7113 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7564)             ; call prim_vector_45ref
  %arg7567 = add i64 0, 0                                                            ; quoted ()
  %cloptr9331 = inttoptr i64 %cont7111 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9331)                                         ; assert function application
  %i0ptr9332 = getelementptr inbounds i64, i64* %cloptr9331, i64 0                   ; &cloptr9331[0]
  %f9334 = load i64, i64* %i0ptr9332, align 8                                        ; load; *i0ptr9332
  %fptr9333 = inttoptr i64 %f9334 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9333(i64 %cont7111, i64 %arg7567, i64 %retprim7113) ; tail call
  ret void

else9330:
  %arg7569 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %oFS$lst, i64 %arg7569)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7573 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7115 = call i64 @prim_vector_45set_33(i64 %oFS$lst, i64 %arg7573, i64 %a7018); call prim_vector_45set_33
  %cloptr9335 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9337 = getelementptr inbounds i64, i64* %cloptr9335, i64 1                    ; &eptr9337[1]
  %eptr9338 = getelementptr inbounds i64, i64* %cloptr9335, i64 2                    ; &eptr9338[2]
  store i64 %cont7111, i64* %eptr9337                                                ; *eptr9337 = %cont7111
  store i64 %CIx$cc, i64* %eptr9338                                                  ; *eptr9338 = %CIx$cc
  %eptr9336 = getelementptr inbounds i64, i64* %cloptr9335, i64 0                    ; &cloptr9335[0]
  %f9339 = ptrtoint void(i64,i64,i64)* @lam8419 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9339, i64* %eptr9336                                                   ; store fptr
  %arg7577 = ptrtoint i64* %cloptr9335 to i64                                        ; closure cast; i64* -> i64
  %arg7576 = add i64 0, 0                                                            ; quoted ()
  %cloptr9340 = inttoptr i64 %arg7577 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9340)                                         ; assert function application
  %i0ptr9341 = getelementptr inbounds i64, i64* %cloptr9340, i64 0                   ; &cloptr9340[0]
  %f9343 = load i64, i64* %i0ptr9341, align 8                                        ; load; *i0ptr9341
  %fptr9342 = inttoptr i64 %f9343 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9342(i64 %arg7577, i64 %arg7576, i64 %retprim7115)  ; tail call
  ret void
}


define void @lam8419(i64 %env8420, i64 %_957114, i64 %VZV$_950) {
  %envptr9344 = inttoptr i64 %env8420 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9345 = getelementptr inbounds i64, i64* %envptr9344, i64 2                  ; &envptr9344[2]
  %CIx$cc = load i64, i64* %envptr9345, align 8                                      ; load; *envptr9345
  %envptr9346 = inttoptr i64 %env8420 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9347 = getelementptr inbounds i64, i64* %envptr9346, i64 1                  ; &envptr9346[1]
  %cont7111 = load i64, i64* %envptr9347, align 8                                    ; load; *envptr9347
  %cloptr9348 = inttoptr i64 %CIx$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9348)                                         ; assert function application
  %i0ptr9349 = getelementptr inbounds i64, i64* %cloptr9348, i64 0                   ; &cloptr9348[0]
  %f9351 = load i64, i64* %i0ptr9349, align 8                                        ; load; *i0ptr9349
  %fptr9350 = inttoptr i64 %f9351 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9350(i64 %CIx$cc, i64 %cont7111, i64 %CIx$cc)       ; tail call
  ret void
}


define void @lam8412(i64 %env8413, i64 %Ezv$args7118) {
  %envptr9352 = inttoptr i64 %env8413 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9353 = getelementptr inbounds i64, i64* %envptr9352, i64 1                  ; &envptr9352[1]
  %nAO$_37foldl1 = load i64, i64* %envptr9353, align 8                               ; load; *envptr9353
  %cont7117 = call i64 @prim_car(i64 %Ezv$args7118)                                  ; call prim_car
  %Ezv$args = call i64 @prim_cdr(i64 %Ezv$args7118)                                  ; call prim_cdr
  %a7019 = call i64 @prim_null_63(i64 %Ezv$args)                                     ; call prim_null_63
  %cmp9354 = icmp eq i64 %a7019, 15                                                  ; false?
  br i1 %cmp9354, label %else9356, label %then9355                                   ; if

then9355:
  %arg7585 = add i64 0, 0                                                            ; quoted ()
  %arg7584 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr9357 = inttoptr i64 %cont7117 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9357)                                         ; assert function application
  %i0ptr9358 = getelementptr inbounds i64, i64* %cloptr9357, i64 0                   ; &cloptr9357[0]
  %f9360 = load i64, i64* %i0ptr9358, align 8                                        ; load; *i0ptr9358
  %fptr9359 = inttoptr i64 %f9360 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9359(i64 %cont7117, i64 %arg7585, i64 %arg7584)     ; tail call
  ret void

else9356:
  %a7020 = call i64 @prim_cdr(i64 %Ezv$args)                                         ; call prim_cdr
  %a7021 = call i64 @prim_null_63(i64 %a7020)                                        ; call prim_null_63
  %cmp9361 = icmp eq i64 %a7021, 15                                                  ; false?
  br i1 %cmp9361, label %else9363, label %then9362                                   ; if

then9362:
  %retprim7119 = call i64 @prim_car(i64 %Ezv$args)                                   ; call prim_car
  %arg7591 = add i64 0, 0                                                            ; quoted ()
  %cloptr9364 = inttoptr i64 %cont7117 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9364)                                         ; assert function application
  %i0ptr9365 = getelementptr inbounds i64, i64* %cloptr9364, i64 0                   ; &cloptr9364[0]
  %f9367 = load i64, i64* %i0ptr9365, align 8                                        ; load; *i0ptr9365
  %fptr9366 = inttoptr i64 %f9367 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9366(i64 %cont7117, i64 %arg7591, i64 %retprim7119) ; tail call
  ret void

else9363:
  %a7022 = call i64 @prim_car(i64 %Ezv$args)                                         ; call prim_car
  %a7023 = call i64 @prim_cdr(i64 %Ezv$args)                                         ; call prim_cdr
  %cloptr9368 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9369 = getelementptr inbounds i64, i64* %cloptr9368, i64 0                    ; &cloptr9368[0]
  %f9370 = ptrtoint void(i64,i64,i64,i64)* @lam8410 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9370, i64* %eptr9369                                                   ; store fptr
  %arg7597 = ptrtoint i64* %cloptr9368 to i64                                        ; closure cast; i64* -> i64
  %cloptr9371 = inttoptr i64 %nAO$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9371)                                         ; assert function application
  %i0ptr9372 = getelementptr inbounds i64, i64* %cloptr9371, i64 0                   ; &cloptr9371[0]
  %f9374 = load i64, i64* %i0ptr9372, align 8                                        ; load; *i0ptr9372
  %fptr9373 = inttoptr i64 %f9374 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9373(i64 %nAO$_37foldl1, i64 %cont7117, i64 %arg7597, i64 %a7022, i64 %a7023); tail call
  ret void
}


define void @lam8410(i64 %env8411, i64 %cont7120, i64 %usg$n, i64 %C5w$v) {
  %retprim7121 = call i64 @prim__47(i64 %C5w$v, i64 %usg$n)                          ; call prim__47
  %arg7603 = add i64 0, 0                                                            ; quoted ()
  %cloptr9375 = inttoptr i64 %cont7120 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9375)                                         ; assert function application
  %i0ptr9376 = getelementptr inbounds i64, i64* %cloptr9375, i64 0                   ; &cloptr9375[0]
  %f9378 = load i64, i64* %i0ptr9376, align 8                                        ; load; *i0ptr9376
  %fptr9377 = inttoptr i64 %f9378 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9377(i64 %cont7120, i64 %arg7603, i64 %retprim7121) ; tail call
  ret void
}


define void @lam8404(i64 %env8405, i64 %cont7122, i64 %TdT$x) {
  %retprim7123 = call i64 @prim_car(i64 %TdT$x)                                      ; call prim_car
  %arg7607 = add i64 0, 0                                                            ; quoted ()
  %cloptr9379 = inttoptr i64 %cont7122 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9379)                                         ; assert function application
  %i0ptr9380 = getelementptr inbounds i64, i64* %cloptr9379, i64 0                   ; &cloptr9379[0]
  %f9382 = load i64, i64* %i0ptr9380, align 8                                        ; load; *i0ptr9380
  %fptr9381 = inttoptr i64 %f9382 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9381(i64 %cont7122, i64 %arg7607, i64 %retprim7123) ; tail call
  ret void
}


define void @lam8401(i64 %env8402, i64 %cont7124, i64 %wT8$x) {
  %a7024 = call i64 @prim_cdr(i64 %wT8$x)                                            ; call prim_cdr
  %retprim7125 = call i64 @prim_car(i64 %a7024)                                      ; call prim_car
  %arg7612 = add i64 0, 0                                                            ; quoted ()
  %cloptr9383 = inttoptr i64 %cont7124 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9383)                                         ; assert function application
  %i0ptr9384 = getelementptr inbounds i64, i64* %cloptr9383, i64 0                   ; &cloptr9383[0]
  %f9386 = load i64, i64* %i0ptr9384, align 8                                        ; load; *i0ptr9384
  %fptr9385 = inttoptr i64 %f9386 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9385(i64 %cont7124, i64 %arg7612, i64 %retprim7125) ; tail call
  ret void
}


define void @lam8398(i64 %env8399, i64 %cont7126, i64 %B4y$x) {
  %a7025 = call i64 @prim_cdr(i64 %B4y$x)                                            ; call prim_cdr
  %a7026 = call i64 @prim_cdr(i64 %a7025)                                            ; call prim_cdr
  %retprim7127 = call i64 @prim_car(i64 %a7026)                                      ; call prim_car
  %arg7618 = add i64 0, 0                                                            ; quoted ()
  %cloptr9387 = inttoptr i64 %cont7126 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9387)                                         ; assert function application
  %i0ptr9388 = getelementptr inbounds i64, i64* %cloptr9387, i64 0                   ; &cloptr9387[0]
  %f9390 = load i64, i64* %i0ptr9388, align 8                                        ; load; *i0ptr9388
  %fptr9389 = inttoptr i64 %f9390 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9389(i64 %cont7126, i64 %arg7618, i64 %retprim7127) ; tail call
  ret void
}


define void @lam8395(i64 %env8396, i64 %cont7128, i64 %fhb$x) {
  %a7027 = call i64 @prim_cdr(i64 %fhb$x)                                            ; call prim_cdr
  %a7028 = call i64 @prim_cdr(i64 %a7027)                                            ; call prim_cdr
  %a7029 = call i64 @prim_cdr(i64 %a7028)                                            ; call prim_cdr
  %retprim7129 = call i64 @prim_car(i64 %a7029)                                      ; call prim_car
  %arg7625 = add i64 0, 0                                                            ; quoted ()
  %cloptr9391 = inttoptr i64 %cont7128 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9391)                                         ; assert function application
  %i0ptr9392 = getelementptr inbounds i64, i64* %cloptr9391, i64 0                   ; &cloptr9391[0]
  %f9394 = load i64, i64* %i0ptr9392, align 8                                        ; load; *i0ptr9392
  %fptr9393 = inttoptr i64 %f9394 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9393(i64 %cont7128, i64 %arg7625, i64 %retprim7129) ; tail call
  ret void
}


define void @lam8392(i64 %env8393, i64 %cont7130, i64 %pwL$p) {
  %a7030 = call i64 @prim_cons_63(i64 %pwL$p)                                        ; call prim_cons_63
  %cmp9395 = icmp eq i64 %a7030, 15                                                  ; false?
  br i1 %cmp9395, label %else9397, label %then9396                                   ; if

then9396:
  %a7031 = call i64 @prim_car(i64 %pwL$p)                                            ; call prim_car
  %arg7629 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym9398, i32 0, i32 0)); quoted string
  %retprim7131 = call i64 @prim_eq_63(i64 %a7031, i64 %arg7629)                      ; call prim_eq_63
  %arg7632 = add i64 0, 0                                                            ; quoted ()
  %cloptr9399 = inttoptr i64 %cont7130 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9399)                                         ; assert function application
  %i0ptr9400 = getelementptr inbounds i64, i64* %cloptr9399, i64 0                   ; &cloptr9399[0]
  %f9402 = load i64, i64* %i0ptr9400, align 8                                        ; load; *i0ptr9400
  %fptr9401 = inttoptr i64 %f9402 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9401(i64 %cont7130, i64 %arg7632, i64 %retprim7131) ; tail call
  ret void

else9397:
  %arg7635 = add i64 0, 0                                                            ; quoted ()
  %arg7634 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9403 = inttoptr i64 %cont7130 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9403)                                         ; assert function application
  %i0ptr9404 = getelementptr inbounds i64, i64* %cloptr9403, i64 0                   ; &cloptr9403[0]
  %f9406 = load i64, i64* %i0ptr9404, align 8                                        ; load; *i0ptr9404
  %fptr9405 = inttoptr i64 %f9406 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9405(i64 %cont7130, i64 %arg7635, i64 %arg7634)     ; tail call
  ret void
}


define void @lam8386(i64 %env8387, i64 %WG2$lst7179) {
  %cont7178 = call i64 @prim_car(i64 %WG2$lst7179)                                   ; call prim_car
  %WG2$lst = call i64 @prim_cdr(i64 %WG2$lst7179)                                    ; call prim_cdr
  %arg7642 = add i64 0, 0                                                            ; quoted ()
  %cloptr9407 = inttoptr i64 %cont7178 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9407)                                         ; assert function application
  %i0ptr9408 = getelementptr inbounds i64, i64* %cloptr9407, i64 0                   ; &cloptr9407[0]
  %f9410 = load i64, i64* %i0ptr9408, align 8                                        ; load; *i0ptr9408
  %fptr9409 = inttoptr i64 %f9410 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9409(i64 %cont7178, i64 %arg7642, i64 %WG2$lst)     ; tail call
  ret void
}


define void @lam8383(i64 %env8384, i64 %_957132, i64 %v8U$_37raise_45handler) {
  %envptr9411 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9412 = getelementptr inbounds i64, i64* %envptr9411, i64 3                  ; &envptr9411[3]
  %uHG$_37drop = load i64, i64* %envptr9412, align 8                                 ; load; *envptr9412
  %envptr9413 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9414 = getelementptr inbounds i64, i64* %envptr9413, i64 2                  ; &envptr9413[2]
  %CK7$_37_62 = load i64, i64* %envptr9414, align 8                                  ; load; *envptr9414
  %envptr9415 = inttoptr i64 %env8384 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9416 = getelementptr inbounds i64, i64* %envptr9415, i64 1                  ; &envptr9415[1]
  %kov$_37length = load i64, i64* %envptr9416, align 8                               ; load; *envptr9416
  %cloptr9417 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9418 = getelementptr inbounds i64, i64* %cloptr9417, i64 0                    ; &cloptr9417[0]
  %f9419 = ptrtoint void(i64,i64)* @lam8381 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9419, i64* %eptr9418                                                   ; store fptr
  %arg7645 = ptrtoint i64* %cloptr9417 to i64                                        ; closure cast; i64* -> i64
  %cloptr9420 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9422 = getelementptr inbounds i64, i64* %cloptr9420, i64 1                    ; &eptr9422[1]
  %eptr9423 = getelementptr inbounds i64, i64* %cloptr9420, i64 2                    ; &eptr9423[2]
  %eptr9424 = getelementptr inbounds i64, i64* %cloptr9420, i64 3                    ; &eptr9424[3]
  store i64 %kov$_37length, i64* %eptr9422                                           ; *eptr9422 = %kov$_37length
  store i64 %CK7$_37_62, i64* %eptr9423                                              ; *eptr9423 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9424                                             ; *eptr9424 = %uHG$_37drop
  %eptr9421 = getelementptr inbounds i64, i64* %cloptr9420, i64 0                    ; &cloptr9420[0]
  %f9425 = ptrtoint void(i64,i64,i64)* @lam8378 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9425, i64* %eptr9421                                                   ; store fptr
  %arg7644 = ptrtoint i64* %cloptr9420 to i64                                        ; closure cast; i64* -> i64
  %rva8123 = add i64 0, 0                                                            ; quoted ()
  %rva8122 = call i64 @prim_cons(i64 %arg7644, i64 %rva8123)                         ; call prim_cons
  %cloptr9426 = inttoptr i64 %arg7645 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9426)                                         ; assert function application
  %i0ptr9427 = getelementptr inbounds i64, i64* %cloptr9426, i64 0                   ; &cloptr9426[0]
  %f9429 = load i64, i64* %i0ptr9427, align 8                                        ; load; *i0ptr9427
  %fptr9428 = inttoptr i64 %f9429 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9428(i64 %arg7645, i64 %rva8122)                    ; tail call
  ret void
}


define void @lam8381(i64 %env8382, i64 %ywk$lst7177) {
  %cont7176 = call i64 @prim_car(i64 %ywk$lst7177)                                   ; call prim_car
  %ywk$lst = call i64 @prim_cdr(i64 %ywk$lst7177)                                    ; call prim_cdr
  %arg7649 = add i64 0, 0                                                            ; quoted ()
  %cloptr9430 = inttoptr i64 %cont7176 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9430)                                         ; assert function application
  %i0ptr9431 = getelementptr inbounds i64, i64* %cloptr9430, i64 0                   ; &cloptr9430[0]
  %f9433 = load i64, i64* %i0ptr9431, align 8                                        ; load; *i0ptr9431
  %fptr9432 = inttoptr i64 %f9433 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9432(i64 %cont7176, i64 %arg7649, i64 %ywk$lst)     ; tail call
  ret void
}


define void @lam8378(i64 %env8379, i64 %_957174, i64 %a7032) {
  %envptr9434 = inttoptr i64 %env8379 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9435 = getelementptr inbounds i64, i64* %envptr9434, i64 3                  ; &envptr9434[3]
  %uHG$_37drop = load i64, i64* %envptr9435, align 8                                 ; load; *envptr9435
  %envptr9436 = inttoptr i64 %env8379 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9437 = getelementptr inbounds i64, i64* %envptr9436, i64 2                  ; &envptr9436[2]
  %CK7$_37_62 = load i64, i64* %envptr9437, align 8                                  ; load; *envptr9437
  %envptr9438 = inttoptr i64 %env8379 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9439 = getelementptr inbounds i64, i64* %envptr9438, i64 1                  ; &envptr9438[1]
  %kov$_37length = load i64, i64* %envptr9439, align 8                               ; load; *envptr9439
  %arg7652 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7175 = call i64 @prim_make_45vector(i64 %arg7652, i64 %a7032)              ; call prim_make_45vector
  %cloptr9440 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9442 = getelementptr inbounds i64, i64* %cloptr9440, i64 1                    ; &eptr9442[1]
  %eptr9443 = getelementptr inbounds i64, i64* %cloptr9440, i64 2                    ; &eptr9443[2]
  %eptr9444 = getelementptr inbounds i64, i64* %cloptr9440, i64 3                    ; &eptr9444[3]
  store i64 %kov$_37length, i64* %eptr9442                                           ; *eptr9442 = %kov$_37length
  store i64 %CK7$_37_62, i64* %eptr9443                                              ; *eptr9443 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9444                                             ; *eptr9444 = %uHG$_37drop
  %eptr9441 = getelementptr inbounds i64, i64* %cloptr9440, i64 0                    ; &cloptr9440[0]
  %f9445 = ptrtoint void(i64,i64,i64)* @lam8375 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9445, i64* %eptr9441                                                   ; store fptr
  %arg7655 = ptrtoint i64* %cloptr9440 to i64                                        ; closure cast; i64* -> i64
  %arg7654 = add i64 0, 0                                                            ; quoted ()
  %cloptr9446 = inttoptr i64 %arg7655 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9446)                                         ; assert function application
  %i0ptr9447 = getelementptr inbounds i64, i64* %cloptr9446, i64 0                   ; &cloptr9446[0]
  %f9449 = load i64, i64* %i0ptr9447, align 8                                        ; load; *i0ptr9447
  %fptr9448 = inttoptr i64 %f9449 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9448(i64 %arg7655, i64 %arg7654, i64 %retprim7175)  ; tail call
  ret void
}


define void @lam8375(i64 %env8376, i64 %_957133, i64 %RUb$_37wind_45stack) {
  %envptr9450 = inttoptr i64 %env8376 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9451 = getelementptr inbounds i64, i64* %envptr9450, i64 3                  ; &envptr9450[3]
  %uHG$_37drop = load i64, i64* %envptr9451, align 8                                 ; load; *envptr9451
  %envptr9452 = inttoptr i64 %env8376 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9453 = getelementptr inbounds i64, i64* %envptr9452, i64 2                  ; &envptr9452[2]
  %CK7$_37_62 = load i64, i64* %envptr9453, align 8                                  ; load; *envptr9453
  %envptr9454 = inttoptr i64 %env8376 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9455 = getelementptr inbounds i64, i64* %envptr9454, i64 1                  ; &envptr9454[1]
  %kov$_37length = load i64, i64* %envptr9455, align 8                               ; load; *envptr9455
  %cloptr9456 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9458 = getelementptr inbounds i64, i64* %cloptr9456, i64 1                    ; &eptr9458[1]
  %eptr9459 = getelementptr inbounds i64, i64* %cloptr9456, i64 2                    ; &eptr9459[2]
  %eptr9460 = getelementptr inbounds i64, i64* %cloptr9456, i64 3                    ; &eptr9460[3]
  store i64 %kov$_37length, i64* %eptr9458                                           ; *eptr9458 = %kov$_37length
  store i64 %CK7$_37_62, i64* %eptr9459                                              ; *eptr9459 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9460                                             ; *eptr9460 = %uHG$_37drop
  %eptr9457 = getelementptr inbounds i64, i64* %cloptr9456, i64 0                    ; &cloptr9456[0]
  %f9461 = ptrtoint void(i64,i64,i64,i64)* @lam8373 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9461, i64* %eptr9457                                                   ; store fptr
  %LgL$_37common_45tail = ptrtoint i64* %cloptr9456 to i64                           ; closure cast; i64* -> i64
  %cloptr9462 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9464 = getelementptr inbounds i64, i64* %cloptr9462, i64 1                    ; &eptr9464[1]
  %eptr9465 = getelementptr inbounds i64, i64* %cloptr9462, i64 2                    ; &eptr9465[2]
  store i64 %RUb$_37wind_45stack, i64* %eptr9464                                     ; *eptr9464 = %RUb$_37wind_45stack
  store i64 %LgL$_37common_45tail, i64* %eptr9465                                    ; *eptr9465 = %LgL$_37common_45tail
  %eptr9463 = getelementptr inbounds i64, i64* %cloptr9462, i64 0                    ; &cloptr9462[0]
  %f9466 = ptrtoint void(i64,i64,i64)* @lam8331 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9466, i64* %eptr9463                                                   ; store fptr
  %IPY$_37do_45wind = ptrtoint i64* %cloptr9462 to i64                               ; closure cast; i64* -> i64
  %cloptr9467 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9468 = getelementptr inbounds i64, i64* %cloptr9467, i64 0                    ; &cloptr9467[0]
  %f9469 = ptrtoint void(i64,i64)* @lam8281 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9469, i64* %eptr9468                                                   ; store fptr
  %arg7844 = ptrtoint i64* %cloptr9467 to i64                                        ; closure cast; i64* -> i64
  %cloptr9470 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9471 = getelementptr inbounds i64, i64* %cloptr9470, i64 0                    ; &cloptr9470[0]
  %f9472 = ptrtoint void(i64,i64)* @lam8277 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9472, i64* %eptr9471                                                   ; store fptr
  %arg7843 = ptrtoint i64* %cloptr9470 to i64                                        ; closure cast; i64* -> i64
  %arg7842 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7841 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %arg7840 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %rva8121 = add i64 0, 0                                                            ; quoted ()
  %rva8120 = call i64 @prim_cons(i64 %arg7840, i64 %rva8121)                         ; call prim_cons
  %rva8119 = call i64 @prim_cons(i64 %arg7841, i64 %rva8120)                         ; call prim_cons
  %rva8118 = call i64 @prim_cons(i64 %arg7842, i64 %rva8119)                         ; call prim_cons
  %rva8117 = call i64 @prim_cons(i64 %arg7843, i64 %rva8118)                         ; call prim_cons
  %cloptr9473 = inttoptr i64 %arg7844 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9473)                                         ; assert function application
  %i0ptr9474 = getelementptr inbounds i64, i64* %cloptr9473, i64 0                   ; &cloptr9473[0]
  %f9476 = load i64, i64* %i0ptr9474, align 8                                        ; load; *i0ptr9474
  %fptr9475 = inttoptr i64 %f9476 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9475(i64 %arg7844, i64 %rva8117)                    ; tail call
  ret void
}


define void @lam8373(i64 %env8374, i64 %cont7134, i64 %Pk1$x, i64 %Yl6$y) {
  %envptr9477 = inttoptr i64 %env8374 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9478 = getelementptr inbounds i64, i64* %envptr9477, i64 3                  ; &envptr9477[3]
  %uHG$_37drop = load i64, i64* %envptr9478, align 8                                 ; load; *envptr9478
  %envptr9479 = inttoptr i64 %env8374 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9480 = getelementptr inbounds i64, i64* %envptr9479, i64 2                  ; &envptr9479[2]
  %CK7$_37_62 = load i64, i64* %envptr9480, align 8                                  ; load; *envptr9480
  %envptr9481 = inttoptr i64 %env8374 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9482 = getelementptr inbounds i64, i64* %envptr9481, i64 1                  ; &envptr9481[1]
  %kov$_37length = load i64, i64* %envptr9482, align 8                               ; load; *envptr9482
  %cloptr9483 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9485 = getelementptr inbounds i64, i64* %cloptr9483, i64 1                    ; &eptr9485[1]
  %eptr9486 = getelementptr inbounds i64, i64* %cloptr9483, i64 2                    ; &eptr9486[2]
  %eptr9487 = getelementptr inbounds i64, i64* %cloptr9483, i64 3                    ; &eptr9487[3]
  %eptr9488 = getelementptr inbounds i64, i64* %cloptr9483, i64 4                    ; &eptr9488[4]
  %eptr9489 = getelementptr inbounds i64, i64* %cloptr9483, i64 5                    ; &eptr9489[5]
  %eptr9490 = getelementptr inbounds i64, i64* %cloptr9483, i64 6                    ; &eptr9490[6]
  store i64 %kov$_37length, i64* %eptr9485                                           ; *eptr9485 = %kov$_37length
  store i64 %CK7$_37_62, i64* %eptr9486                                              ; *eptr9486 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9487                                             ; *eptr9487 = %uHG$_37drop
  store i64 %cont7134, i64* %eptr9488                                                ; *eptr9488 = %cont7134
  store i64 %Yl6$y, i64* %eptr9489                                                   ; *eptr9489 = %Yl6$y
  store i64 %Pk1$x, i64* %eptr9490                                                   ; *eptr9490 = %Pk1$x
  %eptr9484 = getelementptr inbounds i64, i64* %cloptr9483, i64 0                    ; &cloptr9483[0]
  %f9491 = ptrtoint void(i64,i64,i64)* @lam8371 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9491, i64* %eptr9484                                                   ; store fptr
  %arg7657 = ptrtoint i64* %cloptr9483 to i64                                        ; closure cast; i64* -> i64
  %cloptr9492 = inttoptr i64 %kov$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9492)                                         ; assert function application
  %i0ptr9493 = getelementptr inbounds i64, i64* %cloptr9492, i64 0                   ; &cloptr9492[0]
  %f9495 = load i64, i64* %i0ptr9493, align 8                                        ; load; *i0ptr9493
  %fptr9494 = inttoptr i64 %f9495 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9494(i64 %kov$_37length, i64 %arg7657, i64 %Pk1$x)  ; tail call
  ret void
}


define void @lam8371(i64 %env8372, i64 %_957135, i64 %RY1$lx) {
  %envptr9496 = inttoptr i64 %env8372 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9497 = getelementptr inbounds i64, i64* %envptr9496, i64 6                  ; &envptr9496[6]
  %Pk1$x = load i64, i64* %envptr9497, align 8                                       ; load; *envptr9497
  %envptr9498 = inttoptr i64 %env8372 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9499 = getelementptr inbounds i64, i64* %envptr9498, i64 5                  ; &envptr9498[5]
  %Yl6$y = load i64, i64* %envptr9499, align 8                                       ; load; *envptr9499
  %envptr9500 = inttoptr i64 %env8372 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9501 = getelementptr inbounds i64, i64* %envptr9500, i64 4                  ; &envptr9500[4]
  %cont7134 = load i64, i64* %envptr9501, align 8                                    ; load; *envptr9501
  %envptr9502 = inttoptr i64 %env8372 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9503 = getelementptr inbounds i64, i64* %envptr9502, i64 3                  ; &envptr9502[3]
  %uHG$_37drop = load i64, i64* %envptr9503, align 8                                 ; load; *envptr9503
  %envptr9504 = inttoptr i64 %env8372 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9505 = getelementptr inbounds i64, i64* %envptr9504, i64 2                  ; &envptr9504[2]
  %CK7$_37_62 = load i64, i64* %envptr9505, align 8                                  ; load; *envptr9505
  %envptr9506 = inttoptr i64 %env8372 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9507 = getelementptr inbounds i64, i64* %envptr9506, i64 1                  ; &envptr9506[1]
  %kov$_37length = load i64, i64* %envptr9507, align 8                               ; load; *envptr9507
  %cloptr9508 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9510 = getelementptr inbounds i64, i64* %cloptr9508, i64 1                    ; &eptr9510[1]
  %eptr9511 = getelementptr inbounds i64, i64* %cloptr9508, i64 2                    ; &eptr9511[2]
  %eptr9512 = getelementptr inbounds i64, i64* %cloptr9508, i64 3                    ; &eptr9512[3]
  %eptr9513 = getelementptr inbounds i64, i64* %cloptr9508, i64 4                    ; &eptr9513[4]
  %eptr9514 = getelementptr inbounds i64, i64* %cloptr9508, i64 5                    ; &eptr9514[5]
  %eptr9515 = getelementptr inbounds i64, i64* %cloptr9508, i64 6                    ; &eptr9515[6]
  store i64 %CK7$_37_62, i64* %eptr9510                                              ; *eptr9510 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9511                                             ; *eptr9511 = %uHG$_37drop
  store i64 %RY1$lx, i64* %eptr9512                                                  ; *eptr9512 = %RY1$lx
  store i64 %cont7134, i64* %eptr9513                                                ; *eptr9513 = %cont7134
  store i64 %Yl6$y, i64* %eptr9514                                                   ; *eptr9514 = %Yl6$y
  store i64 %Pk1$x, i64* %eptr9515                                                   ; *eptr9515 = %Pk1$x
  %eptr9509 = getelementptr inbounds i64, i64* %cloptr9508, i64 0                    ; &cloptr9508[0]
  %f9516 = ptrtoint void(i64,i64,i64)* @lam8369 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9516, i64* %eptr9509                                                   ; store fptr
  %arg7660 = ptrtoint i64* %cloptr9508 to i64                                        ; closure cast; i64* -> i64
  %cloptr9517 = inttoptr i64 %kov$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9517)                                         ; assert function application
  %i0ptr9518 = getelementptr inbounds i64, i64* %cloptr9517, i64 0                   ; &cloptr9517[0]
  %f9520 = load i64, i64* %i0ptr9518, align 8                                        ; load; *i0ptr9518
  %fptr9519 = inttoptr i64 %f9520 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9519(i64 %kov$_37length, i64 %arg7660, i64 %Yl6$y)  ; tail call
  ret void
}


define void @lam8369(i64 %env8370, i64 %_957136, i64 %mC4$ly) {
  %envptr9521 = inttoptr i64 %env8370 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9522 = getelementptr inbounds i64, i64* %envptr9521, i64 6                  ; &envptr9521[6]
  %Pk1$x = load i64, i64* %envptr9522, align 8                                       ; load; *envptr9522
  %envptr9523 = inttoptr i64 %env8370 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9524 = getelementptr inbounds i64, i64* %envptr9523, i64 5                  ; &envptr9523[5]
  %Yl6$y = load i64, i64* %envptr9524, align 8                                       ; load; *envptr9524
  %envptr9525 = inttoptr i64 %env8370 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9526 = getelementptr inbounds i64, i64* %envptr9525, i64 4                  ; &envptr9525[4]
  %cont7134 = load i64, i64* %envptr9526, align 8                                    ; load; *envptr9526
  %envptr9527 = inttoptr i64 %env8370 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9528 = getelementptr inbounds i64, i64* %envptr9527, i64 3                  ; &envptr9527[3]
  %RY1$lx = load i64, i64* %envptr9528, align 8                                      ; load; *envptr9528
  %envptr9529 = inttoptr i64 %env8370 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9530 = getelementptr inbounds i64, i64* %envptr9529, i64 2                  ; &envptr9529[2]
  %uHG$_37drop = load i64, i64* %envptr9530, align 8                                 ; load; *envptr9530
  %envptr9531 = inttoptr i64 %env8370 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9532 = getelementptr inbounds i64, i64* %envptr9531, i64 1                  ; &envptr9531[1]
  %CK7$_37_62 = load i64, i64* %envptr9532, align 8                                  ; load; *envptr9532
  %cloptr9533 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9534 = getelementptr inbounds i64, i64* %cloptr9533, i64 0                    ; &cloptr9533[0]
  %f9535 = ptrtoint void(i64,i64)* @lam8367 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9535, i64* %eptr9534                                                   ; store fptr
  %arg7663 = ptrtoint i64* %cloptr9533 to i64                                        ; closure cast; i64* -> i64
  %cloptr9536 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9538 = getelementptr inbounds i64, i64* %cloptr9536, i64 1                    ; &eptr9538[1]
  %eptr9539 = getelementptr inbounds i64, i64* %cloptr9536, i64 2                    ; &eptr9539[2]
  %eptr9540 = getelementptr inbounds i64, i64* %cloptr9536, i64 3                    ; &eptr9540[3]
  %eptr9541 = getelementptr inbounds i64, i64* %cloptr9536, i64 4                    ; &eptr9541[4]
  %eptr9542 = getelementptr inbounds i64, i64* %cloptr9536, i64 5                    ; &eptr9542[5]
  %eptr9543 = getelementptr inbounds i64, i64* %cloptr9536, i64 6                    ; &eptr9543[6]
  %eptr9544 = getelementptr inbounds i64, i64* %cloptr9536, i64 7                    ; &eptr9544[7]
  store i64 %CK7$_37_62, i64* %eptr9538                                              ; *eptr9538 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9539                                             ; *eptr9539 = %uHG$_37drop
  store i64 %mC4$ly, i64* %eptr9540                                                  ; *eptr9540 = %mC4$ly
  store i64 %RY1$lx, i64* %eptr9541                                                  ; *eptr9541 = %RY1$lx
  store i64 %cont7134, i64* %eptr9542                                                ; *eptr9542 = %cont7134
  store i64 %Yl6$y, i64* %eptr9543                                                   ; *eptr9543 = %Yl6$y
  store i64 %Pk1$x, i64* %eptr9544                                                   ; *eptr9544 = %Pk1$x
  %eptr9537 = getelementptr inbounds i64, i64* %cloptr9536, i64 0                    ; &cloptr9536[0]
  %f9545 = ptrtoint void(i64,i64,i64)* @lam8364 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9545, i64* %eptr9537                                                   ; store fptr
  %arg7662 = ptrtoint i64* %cloptr9536 to i64                                        ; closure cast; i64* -> i64
  %cloptr9546 = inttoptr i64 %arg7663 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9546)                                         ; assert function application
  %i0ptr9547 = getelementptr inbounds i64, i64* %cloptr9546, i64 0                   ; &cloptr9546[0]
  %f9549 = load i64, i64* %i0ptr9547, align 8                                        ; load; *i0ptr9547
  %fptr9548 = inttoptr i64 %f9549 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9548(i64 %arg7663, i64 %arg7662)                    ; tail call
  ret void
}


define void @lam8367(i64 %env8368, i64 %EF2$lst7146) {
  %cont7145 = call i64 @prim_car(i64 %EF2$lst7146)                                   ; call prim_car
  %EF2$lst = call i64 @prim_cdr(i64 %EF2$lst7146)                                    ; call prim_cdr
  %arg7667 = add i64 0, 0                                                            ; quoted ()
  %cloptr9550 = inttoptr i64 %cont7145 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9550)                                         ; assert function application
  %i0ptr9551 = getelementptr inbounds i64, i64* %cloptr9550, i64 0                   ; &cloptr9550[0]
  %f9553 = load i64, i64* %i0ptr9551, align 8                                        ; load; *i0ptr9551
  %fptr9552 = inttoptr i64 %f9553 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9552(i64 %cont7145, i64 %arg7667, i64 %EF2$lst)     ; tail call
  ret void
}


define void @lam8364(i64 %env8365, i64 %_957143, i64 %a7033) {
  %envptr9554 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9555 = getelementptr inbounds i64, i64* %envptr9554, i64 7                  ; &envptr9554[7]
  %Pk1$x = load i64, i64* %envptr9555, align 8                                       ; load; *envptr9555
  %envptr9556 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9557 = getelementptr inbounds i64, i64* %envptr9556, i64 6                  ; &envptr9556[6]
  %Yl6$y = load i64, i64* %envptr9557, align 8                                       ; load; *envptr9557
  %envptr9558 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9559 = getelementptr inbounds i64, i64* %envptr9558, i64 5                  ; &envptr9558[5]
  %cont7134 = load i64, i64* %envptr9559, align 8                                    ; load; *envptr9559
  %envptr9560 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9561 = getelementptr inbounds i64, i64* %envptr9560, i64 4                  ; &envptr9560[4]
  %RY1$lx = load i64, i64* %envptr9561, align 8                                      ; load; *envptr9561
  %envptr9562 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9563 = getelementptr inbounds i64, i64* %envptr9562, i64 3                  ; &envptr9562[3]
  %mC4$ly = load i64, i64* %envptr9563, align 8                                      ; load; *envptr9563
  %envptr9564 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9565 = getelementptr inbounds i64, i64* %envptr9564, i64 2                  ; &envptr9564[2]
  %uHG$_37drop = load i64, i64* %envptr9565, align 8                                 ; load; *envptr9565
  %envptr9566 = inttoptr i64 %env8365 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9567 = getelementptr inbounds i64, i64* %envptr9566, i64 1                  ; &envptr9566[1]
  %CK7$_37_62 = load i64, i64* %envptr9567, align 8                                  ; load; *envptr9567
  %arg7670 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7144 = call i64 @prim_make_45vector(i64 %arg7670, i64 %a7033)              ; call prim_make_45vector
  %cloptr9568 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9570 = getelementptr inbounds i64, i64* %cloptr9568, i64 1                    ; &eptr9570[1]
  %eptr9571 = getelementptr inbounds i64, i64* %cloptr9568, i64 2                    ; &eptr9571[2]
  %eptr9572 = getelementptr inbounds i64, i64* %cloptr9568, i64 3                    ; &eptr9572[3]
  %eptr9573 = getelementptr inbounds i64, i64* %cloptr9568, i64 4                    ; &eptr9573[4]
  %eptr9574 = getelementptr inbounds i64, i64* %cloptr9568, i64 5                    ; &eptr9574[5]
  %eptr9575 = getelementptr inbounds i64, i64* %cloptr9568, i64 6                    ; &eptr9575[6]
  %eptr9576 = getelementptr inbounds i64, i64* %cloptr9568, i64 7                    ; &eptr9576[7]
  store i64 %CK7$_37_62, i64* %eptr9570                                              ; *eptr9570 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9571                                             ; *eptr9571 = %uHG$_37drop
  store i64 %mC4$ly, i64* %eptr9572                                                  ; *eptr9572 = %mC4$ly
  store i64 %RY1$lx, i64* %eptr9573                                                  ; *eptr9573 = %RY1$lx
  store i64 %cont7134, i64* %eptr9574                                                ; *eptr9574 = %cont7134
  store i64 %Yl6$y, i64* %eptr9575                                                   ; *eptr9575 = %Yl6$y
  store i64 %Pk1$x, i64* %eptr9576                                                   ; *eptr9576 = %Pk1$x
  %eptr9569 = getelementptr inbounds i64, i64* %cloptr9568, i64 0                    ; &cloptr9568[0]
  %f9577 = ptrtoint void(i64,i64,i64)* @lam8361 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9577, i64* %eptr9569                                                   ; store fptr
  %arg7673 = ptrtoint i64* %cloptr9568 to i64                                        ; closure cast; i64* -> i64
  %arg7672 = add i64 0, 0                                                            ; quoted ()
  %cloptr9578 = inttoptr i64 %arg7673 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9578)                                         ; assert function application
  %i0ptr9579 = getelementptr inbounds i64, i64* %cloptr9578, i64 0                   ; &cloptr9578[0]
  %f9581 = load i64, i64* %i0ptr9579, align 8                                        ; load; *i0ptr9579
  %fptr9580 = inttoptr i64 %f9581 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9580(i64 %arg7673, i64 %arg7672, i64 %retprim7144)  ; tail call
  ret void
}


define void @lam8361(i64 %env8362, i64 %_957137, i64 %rQw$loop) {
  %envptr9582 = inttoptr i64 %env8362 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9583 = getelementptr inbounds i64, i64* %envptr9582, i64 7                  ; &envptr9582[7]
  %Pk1$x = load i64, i64* %envptr9583, align 8                                       ; load; *envptr9583
  %envptr9584 = inttoptr i64 %env8362 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9585 = getelementptr inbounds i64, i64* %envptr9584, i64 6                  ; &envptr9584[6]
  %Yl6$y = load i64, i64* %envptr9585, align 8                                       ; load; *envptr9585
  %envptr9586 = inttoptr i64 %env8362 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9587 = getelementptr inbounds i64, i64* %envptr9586, i64 5                  ; &envptr9586[5]
  %cont7134 = load i64, i64* %envptr9587, align 8                                    ; load; *envptr9587
  %envptr9588 = inttoptr i64 %env8362 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9589 = getelementptr inbounds i64, i64* %envptr9588, i64 4                  ; &envptr9588[4]
  %RY1$lx = load i64, i64* %envptr9589, align 8                                      ; load; *envptr9589
  %envptr9590 = inttoptr i64 %env8362 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9591 = getelementptr inbounds i64, i64* %envptr9590, i64 3                  ; &envptr9590[3]
  %mC4$ly = load i64, i64* %envptr9591, align 8                                      ; load; *envptr9591
  %envptr9592 = inttoptr i64 %env8362 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9593 = getelementptr inbounds i64, i64* %envptr9592, i64 2                  ; &envptr9592[2]
  %uHG$_37drop = load i64, i64* %envptr9593, align 8                                 ; load; *envptr9593
  %envptr9594 = inttoptr i64 %env8362 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9595 = getelementptr inbounds i64, i64* %envptr9594, i64 1                  ; &envptr9594[1]
  %CK7$_37_62 = load i64, i64* %envptr9595, align 8                                  ; load; *envptr9595
  %arg7675 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9596 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9598 = getelementptr inbounds i64, i64* %cloptr9596, i64 1                    ; &eptr9598[1]
  store i64 %rQw$loop, i64* %eptr9598                                                ; *eptr9598 = %rQw$loop
  %eptr9597 = getelementptr inbounds i64, i64* %cloptr9596, i64 0                    ; &cloptr9596[0]
  %f9599 = ptrtoint void(i64,i64,i64,i64)* @lam8358 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9599, i64* %eptr9597                                                   ; store fptr
  %arg7674 = ptrtoint i64* %cloptr9596 to i64                                        ; closure cast; i64* -> i64
  %A0O$_956937 = call i64 @prim_vector_45set_33(i64 %rQw$loop, i64 %arg7675, i64 %arg7674); call prim_vector_45set_33
  %arg7690 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7038 = call i64 @prim_vector_45ref(i64 %rQw$loop, i64 %arg7690)                  ; call prim_vector_45ref
  %cloptr9600 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9602 = getelementptr inbounds i64, i64* %cloptr9600, i64 1                    ; &eptr9602[1]
  %eptr9603 = getelementptr inbounds i64, i64* %cloptr9600, i64 2                    ; &eptr9603[2]
  %eptr9604 = getelementptr inbounds i64, i64* %cloptr9600, i64 3                    ; &eptr9604[3]
  %eptr9605 = getelementptr inbounds i64, i64* %cloptr9600, i64 4                    ; &eptr9605[4]
  %eptr9606 = getelementptr inbounds i64, i64* %cloptr9600, i64 5                    ; &eptr9606[5]
  %eptr9607 = getelementptr inbounds i64, i64* %cloptr9600, i64 6                    ; &eptr9607[6]
  %eptr9608 = getelementptr inbounds i64, i64* %cloptr9600, i64 7                    ; &eptr9608[7]
  %eptr9609 = getelementptr inbounds i64, i64* %cloptr9600, i64 8                    ; &eptr9609[8]
  store i64 %a7038, i64* %eptr9602                                                   ; *eptr9602 = %a7038
  store i64 %CK7$_37_62, i64* %eptr9603                                              ; *eptr9603 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9604                                             ; *eptr9604 = %uHG$_37drop
  store i64 %mC4$ly, i64* %eptr9605                                                  ; *eptr9605 = %mC4$ly
  store i64 %RY1$lx, i64* %eptr9606                                                  ; *eptr9606 = %RY1$lx
  store i64 %cont7134, i64* %eptr9607                                                ; *eptr9607 = %cont7134
  store i64 %Yl6$y, i64* %eptr9608                                                   ; *eptr9608 = %Yl6$y
  store i64 %Pk1$x, i64* %eptr9609                                                   ; *eptr9609 = %Pk1$x
  %eptr9601 = getelementptr inbounds i64, i64* %cloptr9600, i64 0                    ; &cloptr9600[0]
  %f9610 = ptrtoint void(i64,i64,i64)* @lam8353 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9610, i64* %eptr9601                                                   ; store fptr
  %arg7694 = ptrtoint i64* %cloptr9600 to i64                                        ; closure cast; i64* -> i64
  %cloptr9611 = inttoptr i64 %CK7$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9611)                                         ; assert function application
  %i0ptr9612 = getelementptr inbounds i64, i64* %cloptr9611, i64 0                   ; &cloptr9611[0]
  %f9614 = load i64, i64* %i0ptr9612, align 8                                        ; load; *i0ptr9612
  %fptr9613 = inttoptr i64 %f9614 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9613(i64 %CK7$_37_62, i64 %arg7694, i64 %RY1$lx, i64 %mC4$ly); tail call
  ret void
}


define void @lam8358(i64 %env8359, i64 %cont7138, i64 %pdo$x, i64 %PUo$y) {
  %envptr9615 = inttoptr i64 %env8359 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9616 = getelementptr inbounds i64, i64* %envptr9615, i64 1                  ; &envptr9615[1]
  %rQw$loop = load i64, i64* %envptr9616, align 8                                    ; load; *envptr9616
  %a7034 = call i64 @prim_eq_63(i64 %pdo$x, i64 %PUo$y)                              ; call prim_eq_63
  %cmp9617 = icmp eq i64 %a7034, 15                                                  ; false?
  br i1 %cmp9617, label %else9619, label %then9618                                   ; if

then9618:
  %arg7680 = add i64 0, 0                                                            ; quoted ()
  %cloptr9620 = inttoptr i64 %cont7138 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9620)                                         ; assert function application
  %i0ptr9621 = getelementptr inbounds i64, i64* %cloptr9620, i64 0                   ; &cloptr9620[0]
  %f9623 = load i64, i64* %i0ptr9621, align 8                                        ; load; *i0ptr9621
  %fptr9622 = inttoptr i64 %f9623 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9622(i64 %cont7138, i64 %arg7680, i64 %pdo$x)       ; tail call
  ret void

else9619:
  %arg7682 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7035 = call i64 @prim_vector_45ref(i64 %rQw$loop, i64 %arg7682)                  ; call prim_vector_45ref
  %a7036 = call i64 @prim_cdr(i64 %pdo$x)                                            ; call prim_cdr
  %a7037 = call i64 @prim_cdr(i64 %PUo$y)                                            ; call prim_cdr
  %cloptr9624 = inttoptr i64 %a7035 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9624)                                         ; assert function application
  %i0ptr9625 = getelementptr inbounds i64, i64* %cloptr9624, i64 0                   ; &cloptr9624[0]
  %f9627 = load i64, i64* %i0ptr9625, align 8                                        ; load; *i0ptr9625
  %fptr9626 = inttoptr i64 %f9627 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9626(i64 %a7035, i64 %cont7138, i64 %a7036, i64 %a7037); tail call
  ret void
}


define void @lam8353(i64 %env8354, i64 %_957139, i64 %a7039) {
  %envptr9628 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9629 = getelementptr inbounds i64, i64* %envptr9628, i64 8                  ; &envptr9628[8]
  %Pk1$x = load i64, i64* %envptr9629, align 8                                       ; load; *envptr9629
  %envptr9630 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9631 = getelementptr inbounds i64, i64* %envptr9630, i64 7                  ; &envptr9630[7]
  %Yl6$y = load i64, i64* %envptr9631, align 8                                       ; load; *envptr9631
  %envptr9632 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9633 = getelementptr inbounds i64, i64* %envptr9632, i64 6                  ; &envptr9632[6]
  %cont7134 = load i64, i64* %envptr9633, align 8                                    ; load; *envptr9633
  %envptr9634 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9635 = getelementptr inbounds i64, i64* %envptr9634, i64 5                  ; &envptr9634[5]
  %RY1$lx = load i64, i64* %envptr9635, align 8                                      ; load; *envptr9635
  %envptr9636 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9637 = getelementptr inbounds i64, i64* %envptr9636, i64 4                  ; &envptr9636[4]
  %mC4$ly = load i64, i64* %envptr9637, align 8                                      ; load; *envptr9637
  %envptr9638 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9639 = getelementptr inbounds i64, i64* %envptr9638, i64 3                  ; &envptr9638[3]
  %uHG$_37drop = load i64, i64* %envptr9639, align 8                                 ; load; *envptr9639
  %envptr9640 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9641 = getelementptr inbounds i64, i64* %envptr9640, i64 2                  ; &envptr9640[2]
  %CK7$_37_62 = load i64, i64* %envptr9641, align 8                                  ; load; *envptr9641
  %envptr9642 = inttoptr i64 %env8354 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9643 = getelementptr inbounds i64, i64* %envptr9642, i64 1                  ; &envptr9642[1]
  %a7038 = load i64, i64* %envptr9643, align 8                                       ; load; *envptr9643
  %cmp9644 = icmp eq i64 %a7039, 15                                                  ; false?
  br i1 %cmp9644, label %else9646, label %then9645                                   ; if

then9645:
  %a7040 = call i64 @prim__45(i64 %RY1$lx, i64 %mC4$ly)                              ; call prim__45
  %cloptr9647 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9649 = getelementptr inbounds i64, i64* %cloptr9647, i64 1                    ; &eptr9649[1]
  %eptr9650 = getelementptr inbounds i64, i64* %cloptr9647, i64 2                    ; &eptr9650[2]
  %eptr9651 = getelementptr inbounds i64, i64* %cloptr9647, i64 3                    ; &eptr9651[3]
  %eptr9652 = getelementptr inbounds i64, i64* %cloptr9647, i64 4                    ; &eptr9652[4]
  %eptr9653 = getelementptr inbounds i64, i64* %cloptr9647, i64 5                    ; &eptr9653[5]
  %eptr9654 = getelementptr inbounds i64, i64* %cloptr9647, i64 6                    ; &eptr9654[6]
  %eptr9655 = getelementptr inbounds i64, i64* %cloptr9647, i64 7                    ; &eptr9655[7]
  store i64 %a7038, i64* %eptr9649                                                   ; *eptr9649 = %a7038
  store i64 %CK7$_37_62, i64* %eptr9650                                              ; *eptr9650 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9651                                             ; *eptr9651 = %uHG$_37drop
  store i64 %mC4$ly, i64* %eptr9652                                                  ; *eptr9652 = %mC4$ly
  store i64 %RY1$lx, i64* %eptr9653                                                  ; *eptr9653 = %RY1$lx
  store i64 %cont7134, i64* %eptr9654                                                ; *eptr9654 = %cont7134
  store i64 %Yl6$y, i64* %eptr9655                                                   ; *eptr9655 = %Yl6$y
  %eptr9648 = getelementptr inbounds i64, i64* %cloptr9647, i64 0                    ; &cloptr9647[0]
  %f9656 = ptrtoint void(i64,i64,i64)* @lam8341 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9656, i64* %eptr9648                                                   ; store fptr
  %arg7700 = ptrtoint i64* %cloptr9647 to i64                                        ; closure cast; i64* -> i64
  %cloptr9657 = inttoptr i64 %uHG$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9657)                                         ; assert function application
  %i0ptr9658 = getelementptr inbounds i64, i64* %cloptr9657, i64 0                   ; &cloptr9657[0]
  %f9660 = load i64, i64* %i0ptr9658, align 8                                        ; load; *i0ptr9658
  %fptr9659 = inttoptr i64 %f9660 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9659(i64 %uHG$_37drop, i64 %arg7700, i64 %Pk1$x, i64 %a7040); tail call
  ret void

else9646:
  %cloptr9661 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9663 = getelementptr inbounds i64, i64* %cloptr9661, i64 1                    ; &eptr9663[1]
  %eptr9664 = getelementptr inbounds i64, i64* %cloptr9661, i64 2                    ; &eptr9664[2]
  %eptr9665 = getelementptr inbounds i64, i64* %cloptr9661, i64 3                    ; &eptr9665[3]
  %eptr9666 = getelementptr inbounds i64, i64* %cloptr9661, i64 4                    ; &eptr9666[4]
  %eptr9667 = getelementptr inbounds i64, i64* %cloptr9661, i64 5                    ; &eptr9667[5]
  %eptr9668 = getelementptr inbounds i64, i64* %cloptr9661, i64 6                    ; &eptr9668[6]
  %eptr9669 = getelementptr inbounds i64, i64* %cloptr9661, i64 7                    ; &eptr9669[7]
  store i64 %a7038, i64* %eptr9663                                                   ; *eptr9663 = %a7038
  store i64 %CK7$_37_62, i64* %eptr9664                                              ; *eptr9664 = %CK7$_37_62
  store i64 %uHG$_37drop, i64* %eptr9665                                             ; *eptr9665 = %uHG$_37drop
  store i64 %mC4$ly, i64* %eptr9666                                                  ; *eptr9666 = %mC4$ly
  store i64 %RY1$lx, i64* %eptr9667                                                  ; *eptr9667 = %RY1$lx
  store i64 %cont7134, i64* %eptr9668                                                ; *eptr9668 = %cont7134
  store i64 %Yl6$y, i64* %eptr9669                                                   ; *eptr9669 = %Yl6$y
  %eptr9662 = getelementptr inbounds i64, i64* %cloptr9661, i64 0                    ; &cloptr9661[0]
  %f9670 = ptrtoint void(i64,i64,i64)* @lam8351 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9670, i64* %eptr9662                                                   ; store fptr
  %arg7725 = ptrtoint i64* %cloptr9661 to i64                                        ; closure cast; i64* -> i64
  %arg7724 = add i64 0, 0                                                            ; quoted ()
  %cloptr9671 = inttoptr i64 %arg7725 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9671)                                         ; assert function application
  %i0ptr9672 = getelementptr inbounds i64, i64* %cloptr9671, i64 0                   ; &cloptr9671[0]
  %f9674 = load i64, i64* %i0ptr9672, align 8                                        ; load; *i0ptr9672
  %fptr9673 = inttoptr i64 %f9674 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9673(i64 %arg7725, i64 %arg7724, i64 %Pk1$x)        ; tail call
  ret void
}


define void @lam8351(i64 %env8352, i64 %_957140, i64 %a7041) {
  %envptr9675 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9676 = getelementptr inbounds i64, i64* %envptr9675, i64 7                  ; &envptr9675[7]
  %Yl6$y = load i64, i64* %envptr9676, align 8                                       ; load; *envptr9676
  %envptr9677 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9678 = getelementptr inbounds i64, i64* %envptr9677, i64 6                  ; &envptr9677[6]
  %cont7134 = load i64, i64* %envptr9678, align 8                                    ; load; *envptr9678
  %envptr9679 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9680 = getelementptr inbounds i64, i64* %envptr9679, i64 5                  ; &envptr9679[5]
  %RY1$lx = load i64, i64* %envptr9680, align 8                                      ; load; *envptr9680
  %envptr9681 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9682 = getelementptr inbounds i64, i64* %envptr9681, i64 4                  ; &envptr9681[4]
  %mC4$ly = load i64, i64* %envptr9682, align 8                                      ; load; *envptr9682
  %envptr9683 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9684 = getelementptr inbounds i64, i64* %envptr9683, i64 3                  ; &envptr9683[3]
  %uHG$_37drop = load i64, i64* %envptr9684, align 8                                 ; load; *envptr9684
  %envptr9685 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9686 = getelementptr inbounds i64, i64* %envptr9685, i64 2                  ; &envptr9685[2]
  %CK7$_37_62 = load i64, i64* %envptr9686, align 8                                  ; load; *envptr9686
  %envptr9687 = inttoptr i64 %env8352 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9688 = getelementptr inbounds i64, i64* %envptr9687, i64 1                  ; &envptr9687[1]
  %a7038 = load i64, i64* %envptr9688, align 8                                       ; load; *envptr9688
  %cloptr9689 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9691 = getelementptr inbounds i64, i64* %cloptr9689, i64 1                    ; &eptr9691[1]
  %eptr9692 = getelementptr inbounds i64, i64* %cloptr9689, i64 2                    ; &eptr9692[2]
  %eptr9693 = getelementptr inbounds i64, i64* %cloptr9689, i64 3                    ; &eptr9693[3]
  %eptr9694 = getelementptr inbounds i64, i64* %cloptr9689, i64 4                    ; &eptr9694[4]
  %eptr9695 = getelementptr inbounds i64, i64* %cloptr9689, i64 5                    ; &eptr9695[5]
  %eptr9696 = getelementptr inbounds i64, i64* %cloptr9689, i64 6                    ; &eptr9696[6]
  %eptr9697 = getelementptr inbounds i64, i64* %cloptr9689, i64 7                    ; &eptr9697[7]
  store i64 %a7041, i64* %eptr9691                                                   ; *eptr9691 = %a7041
  store i64 %a7038, i64* %eptr9692                                                   ; *eptr9692 = %a7038
  store i64 %uHG$_37drop, i64* %eptr9693                                             ; *eptr9693 = %uHG$_37drop
  store i64 %mC4$ly, i64* %eptr9694                                                  ; *eptr9694 = %mC4$ly
  store i64 %RY1$lx, i64* %eptr9695                                                  ; *eptr9695 = %RY1$lx
  store i64 %cont7134, i64* %eptr9696                                                ; *eptr9696 = %cont7134
  store i64 %Yl6$y, i64* %eptr9697                                                   ; *eptr9697 = %Yl6$y
  %eptr9690 = getelementptr inbounds i64, i64* %cloptr9689, i64 0                    ; &cloptr9689[0]
  %f9698 = ptrtoint void(i64,i64,i64)* @lam8349 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9698, i64* %eptr9690                                                   ; store fptr
  %arg7728 = ptrtoint i64* %cloptr9689 to i64                                        ; closure cast; i64* -> i64
  %cloptr9699 = inttoptr i64 %CK7$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9699)                                         ; assert function application
  %i0ptr9700 = getelementptr inbounds i64, i64* %cloptr9699, i64 0                   ; &cloptr9699[0]
  %f9702 = load i64, i64* %i0ptr9700, align 8                                        ; load; *i0ptr9700
  %fptr9701 = inttoptr i64 %f9702 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9701(i64 %CK7$_37_62, i64 %arg7728, i64 %mC4$ly, i64 %RY1$lx); tail call
  ret void
}


define void @lam8349(i64 %env8350, i64 %_957141, i64 %a7042) {
  %envptr9703 = inttoptr i64 %env8350 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9704 = getelementptr inbounds i64, i64* %envptr9703, i64 7                  ; &envptr9703[7]
  %Yl6$y = load i64, i64* %envptr9704, align 8                                       ; load; *envptr9704
  %envptr9705 = inttoptr i64 %env8350 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9706 = getelementptr inbounds i64, i64* %envptr9705, i64 6                  ; &envptr9705[6]
  %cont7134 = load i64, i64* %envptr9706, align 8                                    ; load; *envptr9706
  %envptr9707 = inttoptr i64 %env8350 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9708 = getelementptr inbounds i64, i64* %envptr9707, i64 5                  ; &envptr9707[5]
  %RY1$lx = load i64, i64* %envptr9708, align 8                                      ; load; *envptr9708
  %envptr9709 = inttoptr i64 %env8350 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9710 = getelementptr inbounds i64, i64* %envptr9709, i64 4                  ; &envptr9709[4]
  %mC4$ly = load i64, i64* %envptr9710, align 8                                      ; load; *envptr9710
  %envptr9711 = inttoptr i64 %env8350 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9712 = getelementptr inbounds i64, i64* %envptr9711, i64 3                  ; &envptr9711[3]
  %uHG$_37drop = load i64, i64* %envptr9712, align 8                                 ; load; *envptr9712
  %envptr9713 = inttoptr i64 %env8350 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9714 = getelementptr inbounds i64, i64* %envptr9713, i64 2                  ; &envptr9713[2]
  %a7038 = load i64, i64* %envptr9714, align 8                                       ; load; *envptr9714
  %envptr9715 = inttoptr i64 %env8350 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9716 = getelementptr inbounds i64, i64* %envptr9715, i64 1                  ; &envptr9715[1]
  %a7041 = load i64, i64* %envptr9716, align 8                                       ; load; *envptr9716
  %cmp9717 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9717, label %else9719, label %then9718                                   ; if

then9718:
  %a7043 = call i64 @prim__45(i64 %mC4$ly, i64 %RY1$lx)                              ; call prim__45
  %cloptr9720 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9722 = getelementptr inbounds i64, i64* %cloptr9720, i64 1                    ; &eptr9722[1]
  %eptr9723 = getelementptr inbounds i64, i64* %cloptr9720, i64 2                    ; &eptr9723[2]
  %eptr9724 = getelementptr inbounds i64, i64* %cloptr9720, i64 3                    ; &eptr9724[3]
  store i64 %a7041, i64* %eptr9722                                                   ; *eptr9722 = %a7041
  store i64 %a7038, i64* %eptr9723                                                   ; *eptr9723 = %a7038
  store i64 %cont7134, i64* %eptr9724                                                ; *eptr9724 = %cont7134
  %eptr9721 = getelementptr inbounds i64, i64* %cloptr9720, i64 0                    ; &cloptr9720[0]
  %f9725 = ptrtoint void(i64,i64,i64)* @lam8344 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9725, i64* %eptr9721                                                   ; store fptr
  %arg7734 = ptrtoint i64* %cloptr9720 to i64                                        ; closure cast; i64* -> i64
  %cloptr9726 = inttoptr i64 %uHG$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9726)                                         ; assert function application
  %i0ptr9727 = getelementptr inbounds i64, i64* %cloptr9726, i64 0                   ; &cloptr9726[0]
  %f9729 = load i64, i64* %i0ptr9727, align 8                                        ; load; *i0ptr9727
  %fptr9728 = inttoptr i64 %f9729 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9728(i64 %uHG$_37drop, i64 %arg7734, i64 %Yl6$y, i64 %a7043); tail call
  ret void

else9719:
  %cloptr9730 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9732 = getelementptr inbounds i64, i64* %cloptr9730, i64 1                    ; &eptr9732[1]
  %eptr9733 = getelementptr inbounds i64, i64* %cloptr9730, i64 2                    ; &eptr9733[2]
  %eptr9734 = getelementptr inbounds i64, i64* %cloptr9730, i64 3                    ; &eptr9734[3]
  store i64 %a7041, i64* %eptr9732                                                   ; *eptr9732 = %a7041
  store i64 %a7038, i64* %eptr9733                                                   ; *eptr9733 = %a7038
  store i64 %cont7134, i64* %eptr9734                                                ; *eptr9734 = %cont7134
  %eptr9731 = getelementptr inbounds i64, i64* %cloptr9730, i64 0                    ; &cloptr9730[0]
  %f9735 = ptrtoint void(i64,i64,i64)* @lam8347 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9735, i64* %eptr9731                                                   ; store fptr
  %arg7742 = ptrtoint i64* %cloptr9730 to i64                                        ; closure cast; i64* -> i64
  %arg7741 = add i64 0, 0                                                            ; quoted ()
  %cloptr9736 = inttoptr i64 %arg7742 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9736)                                         ; assert function application
  %i0ptr9737 = getelementptr inbounds i64, i64* %cloptr9736, i64 0                   ; &cloptr9736[0]
  %f9739 = load i64, i64* %i0ptr9737, align 8                                        ; load; *i0ptr9737
  %fptr9738 = inttoptr i64 %f9739 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9738(i64 %arg7742, i64 %arg7741, i64 %Yl6$y)        ; tail call
  ret void
}


define void @lam8347(i64 %env8348, i64 %_957142, i64 %a7044) {
  %envptr9740 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9741 = getelementptr inbounds i64, i64* %envptr9740, i64 3                  ; &envptr9740[3]
  %cont7134 = load i64, i64* %envptr9741, align 8                                    ; load; *envptr9741
  %envptr9742 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9743 = getelementptr inbounds i64, i64* %envptr9742, i64 2                  ; &envptr9742[2]
  %a7038 = load i64, i64* %envptr9743, align 8                                       ; load; *envptr9743
  %envptr9744 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9745 = getelementptr inbounds i64, i64* %envptr9744, i64 1                  ; &envptr9744[1]
  %a7041 = load i64, i64* %envptr9745, align 8                                       ; load; *envptr9745
  %cloptr9746 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9746)                                         ; assert function application
  %i0ptr9747 = getelementptr inbounds i64, i64* %cloptr9746, i64 0                   ; &cloptr9746[0]
  %f9749 = load i64, i64* %i0ptr9747, align 8                                        ; load; *i0ptr9747
  %fptr9748 = inttoptr i64 %f9749 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9748(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8344(i64 %env8345, i64 %_957142, i64 %a7044) {
  %envptr9750 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9751 = getelementptr inbounds i64, i64* %envptr9750, i64 3                  ; &envptr9750[3]
  %cont7134 = load i64, i64* %envptr9751, align 8                                    ; load; *envptr9751
  %envptr9752 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9753 = getelementptr inbounds i64, i64* %envptr9752, i64 2                  ; &envptr9752[2]
  %a7038 = load i64, i64* %envptr9753, align 8                                       ; load; *envptr9753
  %envptr9754 = inttoptr i64 %env8345 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9755 = getelementptr inbounds i64, i64* %envptr9754, i64 1                  ; &envptr9754[1]
  %a7041 = load i64, i64* %envptr9755, align 8                                       ; load; *envptr9755
  %cloptr9756 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9756)                                         ; assert function application
  %i0ptr9757 = getelementptr inbounds i64, i64* %cloptr9756, i64 0                   ; &cloptr9756[0]
  %f9759 = load i64, i64* %i0ptr9757, align 8                                        ; load; *i0ptr9757
  %fptr9758 = inttoptr i64 %f9759 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9758(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8341(i64 %env8342, i64 %_957140, i64 %a7041) {
  %envptr9760 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9761 = getelementptr inbounds i64, i64* %envptr9760, i64 7                  ; &envptr9760[7]
  %Yl6$y = load i64, i64* %envptr9761, align 8                                       ; load; *envptr9761
  %envptr9762 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9763 = getelementptr inbounds i64, i64* %envptr9762, i64 6                  ; &envptr9762[6]
  %cont7134 = load i64, i64* %envptr9763, align 8                                    ; load; *envptr9763
  %envptr9764 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9765 = getelementptr inbounds i64, i64* %envptr9764, i64 5                  ; &envptr9764[5]
  %RY1$lx = load i64, i64* %envptr9765, align 8                                      ; load; *envptr9765
  %envptr9766 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9767 = getelementptr inbounds i64, i64* %envptr9766, i64 4                  ; &envptr9766[4]
  %mC4$ly = load i64, i64* %envptr9767, align 8                                      ; load; *envptr9767
  %envptr9768 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9769 = getelementptr inbounds i64, i64* %envptr9768, i64 3                  ; &envptr9768[3]
  %uHG$_37drop = load i64, i64* %envptr9769, align 8                                 ; load; *envptr9769
  %envptr9770 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9771 = getelementptr inbounds i64, i64* %envptr9770, i64 2                  ; &envptr9770[2]
  %CK7$_37_62 = load i64, i64* %envptr9771, align 8                                  ; load; *envptr9771
  %envptr9772 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9773 = getelementptr inbounds i64, i64* %envptr9772, i64 1                  ; &envptr9772[1]
  %a7038 = load i64, i64* %envptr9773, align 8                                       ; load; *envptr9773
  %cloptr9774 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9776 = getelementptr inbounds i64, i64* %cloptr9774, i64 1                    ; &eptr9776[1]
  %eptr9777 = getelementptr inbounds i64, i64* %cloptr9774, i64 2                    ; &eptr9777[2]
  %eptr9778 = getelementptr inbounds i64, i64* %cloptr9774, i64 3                    ; &eptr9778[3]
  %eptr9779 = getelementptr inbounds i64, i64* %cloptr9774, i64 4                    ; &eptr9779[4]
  %eptr9780 = getelementptr inbounds i64, i64* %cloptr9774, i64 5                    ; &eptr9780[5]
  %eptr9781 = getelementptr inbounds i64, i64* %cloptr9774, i64 6                    ; &eptr9781[6]
  %eptr9782 = getelementptr inbounds i64, i64* %cloptr9774, i64 7                    ; &eptr9782[7]
  store i64 %a7041, i64* %eptr9776                                                   ; *eptr9776 = %a7041
  store i64 %a7038, i64* %eptr9777                                                   ; *eptr9777 = %a7038
  store i64 %uHG$_37drop, i64* %eptr9778                                             ; *eptr9778 = %uHG$_37drop
  store i64 %mC4$ly, i64* %eptr9779                                                  ; *eptr9779 = %mC4$ly
  store i64 %RY1$lx, i64* %eptr9780                                                  ; *eptr9780 = %RY1$lx
  store i64 %cont7134, i64* %eptr9781                                                ; *eptr9781 = %cont7134
  store i64 %Yl6$y, i64* %eptr9782                                                   ; *eptr9782 = %Yl6$y
  %eptr9775 = getelementptr inbounds i64, i64* %cloptr9774, i64 0                    ; &cloptr9774[0]
  %f9783 = ptrtoint void(i64,i64,i64)* @lam8339 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9783, i64* %eptr9775                                                   ; store fptr
  %arg7704 = ptrtoint i64* %cloptr9774 to i64                                        ; closure cast; i64* -> i64
  %cloptr9784 = inttoptr i64 %CK7$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9784)                                         ; assert function application
  %i0ptr9785 = getelementptr inbounds i64, i64* %cloptr9784, i64 0                   ; &cloptr9784[0]
  %f9787 = load i64, i64* %i0ptr9785, align 8                                        ; load; *i0ptr9785
  %fptr9786 = inttoptr i64 %f9787 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9786(i64 %CK7$_37_62, i64 %arg7704, i64 %mC4$ly, i64 %RY1$lx); tail call
  ret void
}


define void @lam8339(i64 %env8340, i64 %_957141, i64 %a7042) {
  %envptr9788 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9789 = getelementptr inbounds i64, i64* %envptr9788, i64 7                  ; &envptr9788[7]
  %Yl6$y = load i64, i64* %envptr9789, align 8                                       ; load; *envptr9789
  %envptr9790 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9791 = getelementptr inbounds i64, i64* %envptr9790, i64 6                  ; &envptr9790[6]
  %cont7134 = load i64, i64* %envptr9791, align 8                                    ; load; *envptr9791
  %envptr9792 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9793 = getelementptr inbounds i64, i64* %envptr9792, i64 5                  ; &envptr9792[5]
  %RY1$lx = load i64, i64* %envptr9793, align 8                                      ; load; *envptr9793
  %envptr9794 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9795 = getelementptr inbounds i64, i64* %envptr9794, i64 4                  ; &envptr9794[4]
  %mC4$ly = load i64, i64* %envptr9795, align 8                                      ; load; *envptr9795
  %envptr9796 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9797 = getelementptr inbounds i64, i64* %envptr9796, i64 3                  ; &envptr9796[3]
  %uHG$_37drop = load i64, i64* %envptr9797, align 8                                 ; load; *envptr9797
  %envptr9798 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9799 = getelementptr inbounds i64, i64* %envptr9798, i64 2                  ; &envptr9798[2]
  %a7038 = load i64, i64* %envptr9799, align 8                                       ; load; *envptr9799
  %envptr9800 = inttoptr i64 %env8340 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9801 = getelementptr inbounds i64, i64* %envptr9800, i64 1                  ; &envptr9800[1]
  %a7041 = load i64, i64* %envptr9801, align 8                                       ; load; *envptr9801
  %cmp9802 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9802, label %else9804, label %then9803                                   ; if

then9803:
  %a7043 = call i64 @prim__45(i64 %mC4$ly, i64 %RY1$lx)                              ; call prim__45
  %cloptr9805 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9807 = getelementptr inbounds i64, i64* %cloptr9805, i64 1                    ; &eptr9807[1]
  %eptr9808 = getelementptr inbounds i64, i64* %cloptr9805, i64 2                    ; &eptr9808[2]
  %eptr9809 = getelementptr inbounds i64, i64* %cloptr9805, i64 3                    ; &eptr9809[3]
  store i64 %a7041, i64* %eptr9807                                                   ; *eptr9807 = %a7041
  store i64 %a7038, i64* %eptr9808                                                   ; *eptr9808 = %a7038
  store i64 %cont7134, i64* %eptr9809                                                ; *eptr9809 = %cont7134
  %eptr9806 = getelementptr inbounds i64, i64* %cloptr9805, i64 0                    ; &cloptr9805[0]
  %f9810 = ptrtoint void(i64,i64,i64)* @lam8334 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9810, i64* %eptr9806                                                   ; store fptr
  %arg7710 = ptrtoint i64* %cloptr9805 to i64                                        ; closure cast; i64* -> i64
  %cloptr9811 = inttoptr i64 %uHG$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9811)                                         ; assert function application
  %i0ptr9812 = getelementptr inbounds i64, i64* %cloptr9811, i64 0                   ; &cloptr9811[0]
  %f9814 = load i64, i64* %i0ptr9812, align 8                                        ; load; *i0ptr9812
  %fptr9813 = inttoptr i64 %f9814 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9813(i64 %uHG$_37drop, i64 %arg7710, i64 %Yl6$y, i64 %a7043); tail call
  ret void

else9804:
  %cloptr9815 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9817 = getelementptr inbounds i64, i64* %cloptr9815, i64 1                    ; &eptr9817[1]
  %eptr9818 = getelementptr inbounds i64, i64* %cloptr9815, i64 2                    ; &eptr9818[2]
  %eptr9819 = getelementptr inbounds i64, i64* %cloptr9815, i64 3                    ; &eptr9819[3]
  store i64 %a7041, i64* %eptr9817                                                   ; *eptr9817 = %a7041
  store i64 %a7038, i64* %eptr9818                                                   ; *eptr9818 = %a7038
  store i64 %cont7134, i64* %eptr9819                                                ; *eptr9819 = %cont7134
  %eptr9816 = getelementptr inbounds i64, i64* %cloptr9815, i64 0                    ; &cloptr9815[0]
  %f9820 = ptrtoint void(i64,i64,i64)* @lam8337 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9820, i64* %eptr9816                                                   ; store fptr
  %arg7718 = ptrtoint i64* %cloptr9815 to i64                                        ; closure cast; i64* -> i64
  %arg7717 = add i64 0, 0                                                            ; quoted ()
  %cloptr9821 = inttoptr i64 %arg7718 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9821)                                         ; assert function application
  %i0ptr9822 = getelementptr inbounds i64, i64* %cloptr9821, i64 0                   ; &cloptr9821[0]
  %f9824 = load i64, i64* %i0ptr9822, align 8                                        ; load; *i0ptr9822
  %fptr9823 = inttoptr i64 %f9824 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9823(i64 %arg7718, i64 %arg7717, i64 %Yl6$y)        ; tail call
  ret void
}


define void @lam8337(i64 %env8338, i64 %_957142, i64 %a7044) {
  %envptr9825 = inttoptr i64 %env8338 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9826 = getelementptr inbounds i64, i64* %envptr9825, i64 3                  ; &envptr9825[3]
  %cont7134 = load i64, i64* %envptr9826, align 8                                    ; load; *envptr9826
  %envptr9827 = inttoptr i64 %env8338 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9828 = getelementptr inbounds i64, i64* %envptr9827, i64 2                  ; &envptr9827[2]
  %a7038 = load i64, i64* %envptr9828, align 8                                       ; load; *envptr9828
  %envptr9829 = inttoptr i64 %env8338 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9830 = getelementptr inbounds i64, i64* %envptr9829, i64 1                  ; &envptr9829[1]
  %a7041 = load i64, i64* %envptr9830, align 8                                       ; load; *envptr9830
  %cloptr9831 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9831)                                         ; assert function application
  %i0ptr9832 = getelementptr inbounds i64, i64* %cloptr9831, i64 0                   ; &cloptr9831[0]
  %f9834 = load i64, i64* %i0ptr9832, align 8                                        ; load; *i0ptr9832
  %fptr9833 = inttoptr i64 %f9834 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9833(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8334(i64 %env8335, i64 %_957142, i64 %a7044) {
  %envptr9835 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9836 = getelementptr inbounds i64, i64* %envptr9835, i64 3                  ; &envptr9835[3]
  %cont7134 = load i64, i64* %envptr9836, align 8                                    ; load; *envptr9836
  %envptr9837 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9838 = getelementptr inbounds i64, i64* %envptr9837, i64 2                  ; &envptr9837[2]
  %a7038 = load i64, i64* %envptr9838, align 8                                       ; load; *envptr9838
  %envptr9839 = inttoptr i64 %env8335 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9840 = getelementptr inbounds i64, i64* %envptr9839, i64 1                  ; &envptr9839[1]
  %a7041 = load i64, i64* %envptr9840, align 8                                       ; load; *envptr9840
  %cloptr9841 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9841)                                         ; assert function application
  %i0ptr9842 = getelementptr inbounds i64, i64* %cloptr9841, i64 0                   ; &cloptr9841[0]
  %f9844 = load i64, i64* %i0ptr9842, align 8                                        ; load; *i0ptr9842
  %fptr9843 = inttoptr i64 %f9844 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9843(i64 %a7038, i64 %cont7134, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8331(i64 %env8332, i64 %cont7147, i64 %Uus$new) {
  %envptr9845 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9846 = getelementptr inbounds i64, i64* %envptr9845, i64 2                  ; &envptr9845[2]
  %LgL$_37common_45tail = load i64, i64* %envptr9846, align 8                        ; load; *envptr9846
  %envptr9847 = inttoptr i64 %env8332 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9848 = getelementptr inbounds i64, i64* %envptr9847, i64 1                  ; &envptr9847[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr9848, align 8                         ; load; *envptr9848
  %arg7747 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7045 = call i64 @prim_vector_45ref(i64 %RUb$_37wind_45stack, i64 %arg7747)       ; call prim_vector_45ref
  %cloptr9849 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9851 = getelementptr inbounds i64, i64* %cloptr9849, i64 1                    ; &eptr9851[1]
  %eptr9852 = getelementptr inbounds i64, i64* %cloptr9849, i64 2                    ; &eptr9852[2]
  %eptr9853 = getelementptr inbounds i64, i64* %cloptr9849, i64 3                    ; &eptr9853[3]
  store i64 %RUb$_37wind_45stack, i64* %eptr9851                                     ; *eptr9851 = %RUb$_37wind_45stack
  store i64 %cont7147, i64* %eptr9852                                                ; *eptr9852 = %cont7147
  store i64 %Uus$new, i64* %eptr9853                                                 ; *eptr9853 = %Uus$new
  %eptr9850 = getelementptr inbounds i64, i64* %cloptr9849, i64 0                    ; &cloptr9849[0]
  %f9854 = ptrtoint void(i64,i64,i64)* @lam8328 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9854, i64* %eptr9850                                                   ; store fptr
  %arg7751 = ptrtoint i64* %cloptr9849 to i64                                        ; closure cast; i64* -> i64
  %cloptr9855 = inttoptr i64 %LgL$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9855)                                         ; assert function application
  %i0ptr9856 = getelementptr inbounds i64, i64* %cloptr9855, i64 0                   ; &cloptr9855[0]
  %f9858 = load i64, i64* %i0ptr9856, align 8                                        ; load; *i0ptr9856
  %fptr9857 = inttoptr i64 %f9858 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9857(i64 %LgL$_37common_45tail, i64 %arg7751, i64 %Uus$new, i64 %a7045); tail call
  ret void
}


define void @lam8328(i64 %env8329, i64 %_957148, i64 %uM0$tail) {
  %envptr9859 = inttoptr i64 %env8329 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9860 = getelementptr inbounds i64, i64* %envptr9859, i64 3                  ; &envptr9859[3]
  %Uus$new = load i64, i64* %envptr9860, align 8                                     ; load; *envptr9860
  %envptr9861 = inttoptr i64 %env8329 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9862 = getelementptr inbounds i64, i64* %envptr9861, i64 2                  ; &envptr9861[2]
  %cont7147 = load i64, i64* %envptr9862, align 8                                    ; load; *envptr9862
  %envptr9863 = inttoptr i64 %env8329 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9864 = getelementptr inbounds i64, i64* %envptr9863, i64 1                  ; &envptr9863[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr9864, align 8                         ; load; *envptr9864
  %cloptr9865 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9866 = getelementptr inbounds i64, i64* %cloptr9865, i64 0                    ; &cloptr9865[0]
  %f9867 = ptrtoint void(i64,i64)* @lam8326 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9867, i64* %eptr9866                                                   ; store fptr
  %arg7754 = ptrtoint i64* %cloptr9865 to i64                                        ; closure cast; i64* -> i64
  %cloptr9868 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9870 = getelementptr inbounds i64, i64* %cloptr9868, i64 1                    ; &eptr9870[1]
  %eptr9871 = getelementptr inbounds i64, i64* %cloptr9868, i64 2                    ; &eptr9871[2]
  %eptr9872 = getelementptr inbounds i64, i64* %cloptr9868, i64 3                    ; &eptr9872[3]
  %eptr9873 = getelementptr inbounds i64, i64* %cloptr9868, i64 4                    ; &eptr9873[4]
  store i64 %RUb$_37wind_45stack, i64* %eptr9870                                     ; *eptr9870 = %RUb$_37wind_45stack
  store i64 %cont7147, i64* %eptr9871                                                ; *eptr9871 = %cont7147
  store i64 %uM0$tail, i64* %eptr9872                                                ; *eptr9872 = %uM0$tail
  store i64 %Uus$new, i64* %eptr9873                                                 ; *eptr9873 = %Uus$new
  %eptr9869 = getelementptr inbounds i64, i64* %cloptr9868, i64 0                    ; &cloptr9868[0]
  %f9874 = ptrtoint void(i64,i64,i64)* @lam8323 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9874, i64* %eptr9869                                                   ; store fptr
  %arg7753 = ptrtoint i64* %cloptr9868 to i64                                        ; closure cast; i64* -> i64
  %cloptr9875 = inttoptr i64 %arg7754 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9875)                                         ; assert function application
  %i0ptr9876 = getelementptr inbounds i64, i64* %cloptr9875, i64 0                   ; &cloptr9875[0]
  %f9878 = load i64, i64* %i0ptr9876, align 8                                        ; load; *i0ptr9876
  %fptr9877 = inttoptr i64 %f9878 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9877(i64 %arg7754, i64 %arg7753)                    ; tail call
  ret void
}


define void @lam8326(i64 %env8327, i64 %YGM$lst7169) {
  %cont7168 = call i64 @prim_car(i64 %YGM$lst7169)                                   ; call prim_car
  %YGM$lst = call i64 @prim_cdr(i64 %YGM$lst7169)                                    ; call prim_cdr
  %arg7758 = add i64 0, 0                                                            ; quoted ()
  %cloptr9879 = inttoptr i64 %cont7168 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9879)                                         ; assert function application
  %i0ptr9880 = getelementptr inbounds i64, i64* %cloptr9879, i64 0                   ; &cloptr9879[0]
  %f9882 = load i64, i64* %i0ptr9880, align 8                                        ; load; *i0ptr9880
  %fptr9881 = inttoptr i64 %f9882 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9881(i64 %cont7168, i64 %arg7758, i64 %YGM$lst)     ; tail call
  ret void
}


define void @lam8323(i64 %env8324, i64 %_957166, i64 %a7046) {
  %envptr9883 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9884 = getelementptr inbounds i64, i64* %envptr9883, i64 4                  ; &envptr9883[4]
  %Uus$new = load i64, i64* %envptr9884, align 8                                     ; load; *envptr9884
  %envptr9885 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9886 = getelementptr inbounds i64, i64* %envptr9885, i64 3                  ; &envptr9885[3]
  %uM0$tail = load i64, i64* %envptr9886, align 8                                    ; load; *envptr9886
  %envptr9887 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9888 = getelementptr inbounds i64, i64* %envptr9887, i64 2                  ; &envptr9887[2]
  %cont7147 = load i64, i64* %envptr9888, align 8                                    ; load; *envptr9888
  %envptr9889 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9890 = getelementptr inbounds i64, i64* %envptr9889, i64 1                  ; &envptr9889[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr9890, align 8                         ; load; *envptr9890
  %arg7761 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7167 = call i64 @prim_make_45vector(i64 %arg7761, i64 %a7046)              ; call prim_make_45vector
  %cloptr9891 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9893 = getelementptr inbounds i64, i64* %cloptr9891, i64 1                    ; &eptr9893[1]
  %eptr9894 = getelementptr inbounds i64, i64* %cloptr9891, i64 2                    ; &eptr9894[2]
  %eptr9895 = getelementptr inbounds i64, i64* %cloptr9891, i64 3                    ; &eptr9895[3]
  %eptr9896 = getelementptr inbounds i64, i64* %cloptr9891, i64 4                    ; &eptr9896[4]
  store i64 %RUb$_37wind_45stack, i64* %eptr9893                                     ; *eptr9893 = %RUb$_37wind_45stack
  store i64 %cont7147, i64* %eptr9894                                                ; *eptr9894 = %cont7147
  store i64 %uM0$tail, i64* %eptr9895                                                ; *eptr9895 = %uM0$tail
  store i64 %Uus$new, i64* %eptr9896                                                 ; *eptr9896 = %Uus$new
  %eptr9892 = getelementptr inbounds i64, i64* %cloptr9891, i64 0                    ; &cloptr9891[0]
  %f9897 = ptrtoint void(i64,i64,i64)* @lam8320 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9897, i64* %eptr9892                                                   ; store fptr
  %arg7764 = ptrtoint i64* %cloptr9891 to i64                                        ; closure cast; i64* -> i64
  %arg7763 = add i64 0, 0                                                            ; quoted ()
  %cloptr9898 = inttoptr i64 %arg7764 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9898)                                         ; assert function application
  %i0ptr9899 = getelementptr inbounds i64, i64* %cloptr9898, i64 0                   ; &cloptr9898[0]
  %f9901 = load i64, i64* %i0ptr9899, align 8                                        ; load; *i0ptr9899
  %fptr9900 = inttoptr i64 %f9901 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9900(i64 %arg7764, i64 %arg7763, i64 %retprim7167)  ; tail call
  ret void
}


define void @lam8320(i64 %env8321, i64 %_957160, i64 %HcO$f) {
  %envptr9902 = inttoptr i64 %env8321 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9903 = getelementptr inbounds i64, i64* %envptr9902, i64 4                  ; &envptr9902[4]
  %Uus$new = load i64, i64* %envptr9903, align 8                                     ; load; *envptr9903
  %envptr9904 = inttoptr i64 %env8321 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9905 = getelementptr inbounds i64, i64* %envptr9904, i64 3                  ; &envptr9904[3]
  %uM0$tail = load i64, i64* %envptr9905, align 8                                    ; load; *envptr9905
  %envptr9906 = inttoptr i64 %env8321 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9907 = getelementptr inbounds i64, i64* %envptr9906, i64 2                  ; &envptr9906[2]
  %cont7147 = load i64, i64* %envptr9907, align 8                                    ; load; *envptr9907
  %envptr9908 = inttoptr i64 %env8321 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9909 = getelementptr inbounds i64, i64* %envptr9908, i64 1                  ; &envptr9908[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr9909, align 8                         ; load; *envptr9909
  %arg7766 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9910 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9912 = getelementptr inbounds i64, i64* %cloptr9910, i64 1                    ; &eptr9912[1]
  %eptr9913 = getelementptr inbounds i64, i64* %cloptr9910, i64 2                    ; &eptr9913[2]
  %eptr9914 = getelementptr inbounds i64, i64* %cloptr9910, i64 3                    ; &eptr9914[3]
  store i64 %RUb$_37wind_45stack, i64* %eptr9912                                     ; *eptr9912 = %RUb$_37wind_45stack
  store i64 %uM0$tail, i64* %eptr9913                                                ; *eptr9913 = %uM0$tail
  store i64 %HcO$f, i64* %eptr9914                                                   ; *eptr9914 = %HcO$f
  %eptr9911 = getelementptr inbounds i64, i64* %cloptr9910, i64 0                    ; &cloptr9910[0]
  %f9915 = ptrtoint void(i64,i64,i64)* @lam8317 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9915, i64* %eptr9911                                                   ; store fptr
  %arg7765 = ptrtoint i64* %cloptr9910 to i64                                        ; closure cast; i64* -> i64
  %sc7$_956939 = call i64 @prim_vector_45set_33(i64 %HcO$f, i64 %arg7766, i64 %arg7765); call prim_vector_45set_33
  %arg7791 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7054 = call i64 @prim_vector_45ref(i64 %HcO$f, i64 %arg7791)                     ; call prim_vector_45ref
  %arg7793 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7055 = call i64 @prim_vector_45ref(i64 %RUb$_37wind_45stack, i64 %arg7793)       ; call prim_vector_45ref
  %cloptr9916 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9918 = getelementptr inbounds i64, i64* %cloptr9916, i64 1                    ; &eptr9918[1]
  %eptr9919 = getelementptr inbounds i64, i64* %cloptr9916, i64 2                    ; &eptr9919[2]
  %eptr9920 = getelementptr inbounds i64, i64* %cloptr9916, i64 3                    ; &eptr9920[3]
  %eptr9921 = getelementptr inbounds i64, i64* %cloptr9916, i64 4                    ; &eptr9921[4]
  store i64 %RUb$_37wind_45stack, i64* %eptr9918                                     ; *eptr9918 = %RUb$_37wind_45stack
  store i64 %cont7147, i64* %eptr9919                                                ; *eptr9919 = %cont7147
  store i64 %uM0$tail, i64* %eptr9920                                                ; *eptr9920 = %uM0$tail
  store i64 %Uus$new, i64* %eptr9921                                                 ; *eptr9921 = %Uus$new
  %eptr9917 = getelementptr inbounds i64, i64* %cloptr9916, i64 0                    ; &cloptr9916[0]
  %f9922 = ptrtoint void(i64,i64,i64)* @lam8305 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9922, i64* %eptr9917                                                   ; store fptr
  %arg7796 = ptrtoint i64* %cloptr9916 to i64                                        ; closure cast; i64* -> i64
  %cloptr9923 = inttoptr i64 %a7054 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9923)                                         ; assert function application
  %i0ptr9924 = getelementptr inbounds i64, i64* %cloptr9923, i64 0                   ; &cloptr9923[0]
  %f9926 = load i64, i64* %i0ptr9924, align 8                                        ; load; *i0ptr9924
  %fptr9925 = inttoptr i64 %f9926 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9925(i64 %a7054, i64 %arg7796, i64 %a7055)          ; tail call
  ret void
}


define void @lam8317(i64 %env8318, i64 %cont7161, i64 %d0t$l) {
  %envptr9927 = inttoptr i64 %env8318 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9928 = getelementptr inbounds i64, i64* %envptr9927, i64 3                  ; &envptr9927[3]
  %HcO$f = load i64, i64* %envptr9928, align 8                                       ; load; *envptr9928
  %envptr9929 = inttoptr i64 %env8318 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9930 = getelementptr inbounds i64, i64* %envptr9929, i64 2                  ; &envptr9929[2]
  %uM0$tail = load i64, i64* %envptr9930, align 8                                    ; load; *envptr9930
  %envptr9931 = inttoptr i64 %env8318 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9932 = getelementptr inbounds i64, i64* %envptr9931, i64 1                  ; &envptr9931[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr9932, align 8                         ; load; *envptr9932
  %a7047 = call i64 @prim_eq_63(i64 %d0t$l, i64 %uM0$tail)                           ; call prim_eq_63
  %a7048 = call i64 @prim_not(i64 %a7047)                                            ; call prim_not
  %cmp9933 = icmp eq i64 %a7048, 15                                                  ; false?
  br i1 %cmp9933, label %else9935, label %then9934                                   ; if

then9934:
  %a7049 = call i64 @prim_cdr(i64 %d0t$l)                                            ; call prim_cdr
  %arg7773 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7164 = call i64 @prim_vector_45set_33(i64 %RUb$_37wind_45stack, i64 %arg7773, i64 %a7049); call prim_vector_45set_33
  %cloptr9936 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9938 = getelementptr inbounds i64, i64* %cloptr9936, i64 1                    ; &eptr9938[1]
  %eptr9939 = getelementptr inbounds i64, i64* %cloptr9936, i64 2                    ; &eptr9939[2]
  %eptr9940 = getelementptr inbounds i64, i64* %cloptr9936, i64 3                    ; &eptr9940[3]
  store i64 %cont7161, i64* %eptr9938                                                ; *eptr9938 = %cont7161
  store i64 %HcO$f, i64* %eptr9939                                                   ; *eptr9939 = %HcO$f
  store i64 %d0t$l, i64* %eptr9940                                                   ; *eptr9940 = %d0t$l
  %eptr9937 = getelementptr inbounds i64, i64* %cloptr9936, i64 0                    ; &cloptr9936[0]
  %f9941 = ptrtoint void(i64,i64,i64)* @lam8313 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9941, i64* %eptr9937                                                   ; store fptr
  %arg7777 = ptrtoint i64* %cloptr9936 to i64                                        ; closure cast; i64* -> i64
  %arg7776 = add i64 0, 0                                                            ; quoted ()
  %cloptr9942 = inttoptr i64 %arg7777 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9942)                                         ; assert function application
  %i0ptr9943 = getelementptr inbounds i64, i64* %cloptr9942, i64 0                   ; &cloptr9942[0]
  %f9945 = load i64, i64* %i0ptr9943, align 8                                        ; load; *i0ptr9943
  %fptr9944 = inttoptr i64 %f9945 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9944(i64 %arg7777, i64 %arg7776, i64 %retprim7164)  ; tail call
  ret void

else9935:
  %retprim7165 = call i64 @prim_void()                                               ; call prim_void
  %arg7789 = add i64 0, 0                                                            ; quoted ()
  %cloptr9946 = inttoptr i64 %cont7161 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9946)                                         ; assert function application
  %i0ptr9947 = getelementptr inbounds i64, i64* %cloptr9946, i64 0                   ; &cloptr9946[0]
  %f9949 = load i64, i64* %i0ptr9947, align 8                                        ; load; *i0ptr9947
  %fptr9948 = inttoptr i64 %f9949 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9948(i64 %cont7161, i64 %arg7789, i64 %retprim7165) ; tail call
  ret void
}


define void @lam8313(i64 %env8314, i64 %_957162, i64 %sSU$_956940) {
  %envptr9950 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9951 = getelementptr inbounds i64, i64* %envptr9950, i64 3                  ; &envptr9950[3]
  %d0t$l = load i64, i64* %envptr9951, align 8                                       ; load; *envptr9951
  %envptr9952 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9953 = getelementptr inbounds i64, i64* %envptr9952, i64 2                  ; &envptr9952[2]
  %HcO$f = load i64, i64* %envptr9953, align 8                                       ; load; *envptr9953
  %envptr9954 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9955 = getelementptr inbounds i64, i64* %envptr9954, i64 1                  ; &envptr9954[1]
  %cont7161 = load i64, i64* %envptr9955, align 8                                    ; load; *envptr9955
  %a7050 = call i64 @prim_car(i64 %d0t$l)                                            ; call prim_car
  %a7051 = call i64 @prim_cdr(i64 %a7050)                                            ; call prim_cdr
  %cloptr9956 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9958 = getelementptr inbounds i64, i64* %cloptr9956, i64 1                    ; &eptr9958[1]
  %eptr9959 = getelementptr inbounds i64, i64* %cloptr9956, i64 2                    ; &eptr9959[2]
  %eptr9960 = getelementptr inbounds i64, i64* %cloptr9956, i64 3                    ; &eptr9960[3]
  store i64 %cont7161, i64* %eptr9958                                                ; *eptr9958 = %cont7161
  store i64 %HcO$f, i64* %eptr9959                                                   ; *eptr9959 = %HcO$f
  store i64 %d0t$l, i64* %eptr9960                                                   ; *eptr9960 = %d0t$l
  %eptr9957 = getelementptr inbounds i64, i64* %cloptr9956, i64 0                    ; &cloptr9956[0]
  %f9961 = ptrtoint void(i64,i64,i64)* @lam8311 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9961, i64* %eptr9957                                                   ; store fptr
  %arg7780 = ptrtoint i64* %cloptr9956 to i64                                        ; closure cast; i64* -> i64
  %cloptr9962 = inttoptr i64 %a7051 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9962)                                         ; assert function application
  %i0ptr9963 = getelementptr inbounds i64, i64* %cloptr9962, i64 0                   ; &cloptr9962[0]
  %f9965 = load i64, i64* %i0ptr9963, align 8                                        ; load; *i0ptr9963
  %fptr9964 = inttoptr i64 %f9965 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9964(i64 %a7051, i64 %arg7780)                      ; tail call
  ret void
}


define void @lam8311(i64 %env8312, i64 %_957163, i64 %v7H$_956941) {
  %envptr9966 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9967 = getelementptr inbounds i64, i64* %envptr9966, i64 3                  ; &envptr9966[3]
  %d0t$l = load i64, i64* %envptr9967, align 8                                       ; load; *envptr9967
  %envptr9968 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9969 = getelementptr inbounds i64, i64* %envptr9968, i64 2                  ; &envptr9968[2]
  %HcO$f = load i64, i64* %envptr9969, align 8                                       ; load; *envptr9969
  %envptr9970 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9971 = getelementptr inbounds i64, i64* %envptr9970, i64 1                  ; &envptr9970[1]
  %cont7161 = load i64, i64* %envptr9971, align 8                                    ; load; *envptr9971
  %arg7782 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7052 = call i64 @prim_vector_45ref(i64 %HcO$f, i64 %arg7782)                     ; call prim_vector_45ref
  %a7053 = call i64 @prim_cdr(i64 %d0t$l)                                            ; call prim_cdr
  %cloptr9972 = inttoptr i64 %a7052 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9972)                                         ; assert function application
  %i0ptr9973 = getelementptr inbounds i64, i64* %cloptr9972, i64 0                   ; &cloptr9972[0]
  %f9975 = load i64, i64* %i0ptr9973, align 8                                        ; load; *i0ptr9973
  %fptr9974 = inttoptr i64 %f9975 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9974(i64 %a7052, i64 %cont7161, i64 %a7053)         ; tail call
  ret void
}


define void @lam8305(i64 %env8306, i64 %_957149, i64 %N0J$_956938) {
  %envptr9976 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9977 = getelementptr inbounds i64, i64* %envptr9976, i64 4                  ; &envptr9976[4]
  %Uus$new = load i64, i64* %envptr9977, align 8                                     ; load; *envptr9977
  %envptr9978 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9979 = getelementptr inbounds i64, i64* %envptr9978, i64 3                  ; &envptr9978[3]
  %uM0$tail = load i64, i64* %envptr9979, align 8                                    ; load; *envptr9979
  %envptr9980 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9981 = getelementptr inbounds i64, i64* %envptr9980, i64 2                  ; &envptr9980[2]
  %cont7147 = load i64, i64* %envptr9981, align 8                                    ; load; *envptr9981
  %envptr9982 = inttoptr i64 %env8306 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9983 = getelementptr inbounds i64, i64* %envptr9982, i64 1                  ; &envptr9982[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr9983, align 8                         ; load; *envptr9983
  %cloptr9984 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9985 = getelementptr inbounds i64, i64* %cloptr9984, i64 0                    ; &cloptr9984[0]
  %f9986 = ptrtoint void(i64,i64)* @lam8303 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9986, i64* %eptr9985                                                   ; store fptr
  %arg7799 = ptrtoint i64* %cloptr9984 to i64                                        ; closure cast; i64* -> i64
  %cloptr9987 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9989 = getelementptr inbounds i64, i64* %cloptr9987, i64 1                    ; &eptr9989[1]
  %eptr9990 = getelementptr inbounds i64, i64* %cloptr9987, i64 2                    ; &eptr9990[2]
  %eptr9991 = getelementptr inbounds i64, i64* %cloptr9987, i64 3                    ; &eptr9991[3]
  %eptr9992 = getelementptr inbounds i64, i64* %cloptr9987, i64 4                    ; &eptr9992[4]
  store i64 %RUb$_37wind_45stack, i64* %eptr9989                                     ; *eptr9989 = %RUb$_37wind_45stack
  store i64 %cont7147, i64* %eptr9990                                                ; *eptr9990 = %cont7147
  store i64 %uM0$tail, i64* %eptr9991                                                ; *eptr9991 = %uM0$tail
  store i64 %Uus$new, i64* %eptr9992                                                 ; *eptr9992 = %Uus$new
  %eptr9988 = getelementptr inbounds i64, i64* %cloptr9987, i64 0                    ; &cloptr9987[0]
  %f9993 = ptrtoint void(i64,i64,i64)* @lam8300 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9993, i64* %eptr9988                                                   ; store fptr
  %arg7798 = ptrtoint i64* %cloptr9987 to i64                                        ; closure cast; i64* -> i64
  %cloptr9994 = inttoptr i64 %arg7799 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9994)                                         ; assert function application
  %i0ptr9995 = getelementptr inbounds i64, i64* %cloptr9994, i64 0                   ; &cloptr9994[0]
  %f9997 = load i64, i64* %i0ptr9995, align 8                                        ; load; *i0ptr9995
  %fptr9996 = inttoptr i64 %f9997 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9996(i64 %arg7799, i64 %arg7798)                    ; tail call
  ret void
}


define void @lam8303(i64 %env8304, i64 %yMH$lst7159) {
  %cont7158 = call i64 @prim_car(i64 %yMH$lst7159)                                   ; call prim_car
  %yMH$lst = call i64 @prim_cdr(i64 %yMH$lst7159)                                    ; call prim_cdr
  %arg7803 = add i64 0, 0                                                            ; quoted ()
  %cloptr9998 = inttoptr i64 %cont7158 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9998)                                         ; assert function application
  %i0ptr9999 = getelementptr inbounds i64, i64* %cloptr9998, i64 0                   ; &cloptr9998[0]
  %f10001 = load i64, i64* %i0ptr9999, align 8                                       ; load; *i0ptr9999
  %fptr10000 = inttoptr i64 %f10001 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10000(i64 %cont7158, i64 %arg7803, i64 %yMH$lst)    ; tail call
  ret void
}


define void @lam8300(i64 %env8301, i64 %_957156, i64 %a7056) {
  %envptr10002 = inttoptr i64 %env8301 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10003 = getelementptr inbounds i64, i64* %envptr10002, i64 4                ; &envptr10002[4]
  %Uus$new = load i64, i64* %envptr10003, align 8                                    ; load; *envptr10003
  %envptr10004 = inttoptr i64 %env8301 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10005 = getelementptr inbounds i64, i64* %envptr10004, i64 3                ; &envptr10004[3]
  %uM0$tail = load i64, i64* %envptr10005, align 8                                   ; load; *envptr10005
  %envptr10006 = inttoptr i64 %env8301 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10007 = getelementptr inbounds i64, i64* %envptr10006, i64 2                ; &envptr10006[2]
  %cont7147 = load i64, i64* %envptr10007, align 8                                   ; load; *envptr10007
  %envptr10008 = inttoptr i64 %env8301 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10009 = getelementptr inbounds i64, i64* %envptr10008, i64 1                ; &envptr10008[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr10009, align 8                        ; load; *envptr10009
  %arg7806 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7157 = call i64 @prim_make_45vector(i64 %arg7806, i64 %a7056)              ; call prim_make_45vector
  %cloptr10010 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10012 = getelementptr inbounds i64, i64* %cloptr10010, i64 1                  ; &eptr10012[1]
  %eptr10013 = getelementptr inbounds i64, i64* %cloptr10010, i64 2                  ; &eptr10013[2]
  %eptr10014 = getelementptr inbounds i64, i64* %cloptr10010, i64 3                  ; &eptr10014[3]
  %eptr10015 = getelementptr inbounds i64, i64* %cloptr10010, i64 4                  ; &eptr10015[4]
  store i64 %RUb$_37wind_45stack, i64* %eptr10012                                    ; *eptr10012 = %RUb$_37wind_45stack
  store i64 %cont7147, i64* %eptr10013                                               ; *eptr10013 = %cont7147
  store i64 %uM0$tail, i64* %eptr10014                                               ; *eptr10014 = %uM0$tail
  store i64 %Uus$new, i64* %eptr10015                                                ; *eptr10015 = %Uus$new
  %eptr10011 = getelementptr inbounds i64, i64* %cloptr10010, i64 0                  ; &cloptr10010[0]
  %f10016 = ptrtoint void(i64,i64,i64)* @lam8297 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10016, i64* %eptr10011                                                 ; store fptr
  %arg7809 = ptrtoint i64* %cloptr10010 to i64                                       ; closure cast; i64* -> i64
  %arg7808 = add i64 0, 0                                                            ; quoted ()
  %cloptr10017 = inttoptr i64 %arg7809 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10017)                                        ; assert function application
  %i0ptr10018 = getelementptr inbounds i64, i64* %cloptr10017, i64 0                 ; &cloptr10017[0]
  %f10020 = load i64, i64* %i0ptr10018, align 8                                      ; load; *i0ptr10018
  %fptr10019 = inttoptr i64 %f10020 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10019(i64 %arg7809, i64 %arg7808, i64 %retprim7157) ; tail call
  ret void
}


define void @lam8297(i64 %env8298, i64 %_957150, i64 %OG8$f) {
  %envptr10021 = inttoptr i64 %env8298 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10022 = getelementptr inbounds i64, i64* %envptr10021, i64 4                ; &envptr10021[4]
  %Uus$new = load i64, i64* %envptr10022, align 8                                    ; load; *envptr10022
  %envptr10023 = inttoptr i64 %env8298 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10024 = getelementptr inbounds i64, i64* %envptr10023, i64 3                ; &envptr10023[3]
  %uM0$tail = load i64, i64* %envptr10024, align 8                                   ; load; *envptr10024
  %envptr10025 = inttoptr i64 %env8298 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10026 = getelementptr inbounds i64, i64* %envptr10025, i64 2                ; &envptr10025[2]
  %cont7147 = load i64, i64* %envptr10026, align 8                                   ; load; *envptr10026
  %envptr10027 = inttoptr i64 %env8298 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10028 = getelementptr inbounds i64, i64* %envptr10027, i64 1                ; &envptr10027[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr10028, align 8                        ; load; *envptr10028
  %arg7811 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10029 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10031 = getelementptr inbounds i64, i64* %cloptr10029, i64 1                  ; &eptr10031[1]
  %eptr10032 = getelementptr inbounds i64, i64* %cloptr10029, i64 2                  ; &eptr10032[2]
  %eptr10033 = getelementptr inbounds i64, i64* %cloptr10029, i64 3                  ; &eptr10033[3]
  store i64 %RUb$_37wind_45stack, i64* %eptr10031                                    ; *eptr10031 = %RUb$_37wind_45stack
  store i64 %OG8$f, i64* %eptr10032                                                  ; *eptr10032 = %OG8$f
  store i64 %uM0$tail, i64* %eptr10033                                               ; *eptr10033 = %uM0$tail
  %eptr10030 = getelementptr inbounds i64, i64* %cloptr10029, i64 0                  ; &cloptr10029[0]
  %f10034 = ptrtoint void(i64,i64,i64)* @lam8294 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10034, i64* %eptr10030                                                 ; store fptr
  %arg7810 = ptrtoint i64* %cloptr10029 to i64                                       ; closure cast; i64* -> i64
  %AYE$_956942 = call i64 @prim_vector_45set_33(i64 %OG8$f, i64 %arg7811, i64 %arg7810); call prim_vector_45set_33
  %arg7835 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7063 = call i64 @prim_vector_45ref(i64 %OG8$f, i64 %arg7835)                     ; call prim_vector_45ref
  %cloptr10035 = inttoptr i64 %a7063 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10035)                                        ; assert function application
  %i0ptr10036 = getelementptr inbounds i64, i64* %cloptr10035, i64 0                 ; &cloptr10035[0]
  %f10038 = load i64, i64* %i0ptr10036, align 8                                      ; load; *i0ptr10036
  %fptr10037 = inttoptr i64 %f10038 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10037(i64 %a7063, i64 %cont7147, i64 %Uus$new)      ; tail call
  ret void
}


define void @lam8294(i64 %env8295, i64 %cont7151, i64 %ObE$l) {
  %envptr10039 = inttoptr i64 %env8295 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10040 = getelementptr inbounds i64, i64* %envptr10039, i64 3                ; &envptr10039[3]
  %uM0$tail = load i64, i64* %envptr10040, align 8                                   ; load; *envptr10040
  %envptr10041 = inttoptr i64 %env8295 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10042 = getelementptr inbounds i64, i64* %envptr10041, i64 2                ; &envptr10041[2]
  %OG8$f = load i64, i64* %envptr10042, align 8                                      ; load; *envptr10042
  %envptr10043 = inttoptr i64 %env8295 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10044 = getelementptr inbounds i64, i64* %envptr10043, i64 1                ; &envptr10043[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr10044, align 8                        ; load; *envptr10044
  %a7057 = call i64 @prim_eq_63(i64 %ObE$l, i64 %uM0$tail)                           ; call prim_eq_63
  %a7058 = call i64 @prim_not(i64 %a7057)                                            ; call prim_not
  %cmp10045 = icmp eq i64 %a7058, 15                                                 ; false?
  br i1 %cmp10045, label %else10047, label %then10046                                ; if

then10046:
  %arg7816 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7059 = call i64 @prim_vector_45ref(i64 %OG8$f, i64 %arg7816)                     ; call prim_vector_45ref
  %a7060 = call i64 @prim_cdr(i64 %ObE$l)                                            ; call prim_cdr
  %cloptr10048 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10050 = getelementptr inbounds i64, i64* %cloptr10048, i64 1                  ; &eptr10050[1]
  %eptr10051 = getelementptr inbounds i64, i64* %cloptr10048, i64 2                  ; &eptr10051[2]
  %eptr10052 = getelementptr inbounds i64, i64* %cloptr10048, i64 3                  ; &eptr10052[3]
  store i64 %RUb$_37wind_45stack, i64* %eptr10050                                    ; *eptr10050 = %RUb$_37wind_45stack
  store i64 %ObE$l, i64* %eptr10051                                                  ; *eptr10051 = %ObE$l
  store i64 %cont7151, i64* %eptr10052                                               ; *eptr10052 = %cont7151
  %eptr10049 = getelementptr inbounds i64, i64* %cloptr10048, i64 0                  ; &cloptr10048[0]
  %f10053 = ptrtoint void(i64,i64,i64)* @lam8290 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10053, i64* %eptr10049                                                 ; store fptr
  %arg7820 = ptrtoint i64* %cloptr10048 to i64                                       ; closure cast; i64* -> i64
  %cloptr10054 = inttoptr i64 %a7059 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10054)                                        ; assert function application
  %i0ptr10055 = getelementptr inbounds i64, i64* %cloptr10054, i64 0                 ; &cloptr10054[0]
  %f10057 = load i64, i64* %i0ptr10055, align 8                                      ; load; *i0ptr10055
  %fptr10056 = inttoptr i64 %f10057 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10056(i64 %a7059, i64 %arg7820, i64 %a7060)         ; tail call
  ret void

else10047:
  %retprim7155 = call i64 @prim_void()                                               ; call prim_void
  %arg7833 = add i64 0, 0                                                            ; quoted ()
  %cloptr10058 = inttoptr i64 %cont7151 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10058)                                        ; assert function application
  %i0ptr10059 = getelementptr inbounds i64, i64* %cloptr10058, i64 0                 ; &cloptr10058[0]
  %f10061 = load i64, i64* %i0ptr10059, align 8                                      ; load; *i0ptr10059
  %fptr10060 = inttoptr i64 %f10061 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10060(i64 %cont7151, i64 %arg7833, i64 %retprim7155); tail call
  ret void
}


define void @lam8290(i64 %env8291, i64 %_957152, i64 %sVm$_956943) {
  %envptr10062 = inttoptr i64 %env8291 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10063 = getelementptr inbounds i64, i64* %envptr10062, i64 3                ; &envptr10062[3]
  %cont7151 = load i64, i64* %envptr10063, align 8                                   ; load; *envptr10063
  %envptr10064 = inttoptr i64 %env8291 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10065 = getelementptr inbounds i64, i64* %envptr10064, i64 2                ; &envptr10064[2]
  %ObE$l = load i64, i64* %envptr10065, align 8                                      ; load; *envptr10065
  %envptr10066 = inttoptr i64 %env8291 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10067 = getelementptr inbounds i64, i64* %envptr10066, i64 1                ; &envptr10066[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr10067, align 8                        ; load; *envptr10067
  %a7061 = call i64 @prim_car(i64 %ObE$l)                                            ; call prim_car
  %a7062 = call i64 @prim_car(i64 %a7061)                                            ; call prim_car
  %cloptr10068 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10070 = getelementptr inbounds i64, i64* %cloptr10068, i64 1                  ; &eptr10070[1]
  %eptr10071 = getelementptr inbounds i64, i64* %cloptr10068, i64 2                  ; &eptr10071[2]
  %eptr10072 = getelementptr inbounds i64, i64* %cloptr10068, i64 3                  ; &eptr10072[3]
  store i64 %RUb$_37wind_45stack, i64* %eptr10070                                    ; *eptr10070 = %RUb$_37wind_45stack
  store i64 %ObE$l, i64* %eptr10071                                                  ; *eptr10071 = %ObE$l
  store i64 %cont7151, i64* %eptr10072                                               ; *eptr10072 = %cont7151
  %eptr10069 = getelementptr inbounds i64, i64* %cloptr10068, i64 0                  ; &cloptr10068[0]
  %f10073 = ptrtoint void(i64,i64,i64)* @lam8288 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10073, i64* %eptr10069                                                 ; store fptr
  %arg7824 = ptrtoint i64* %cloptr10068 to i64                                       ; closure cast; i64* -> i64
  %cloptr10074 = inttoptr i64 %a7062 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10074)                                        ; assert function application
  %i0ptr10075 = getelementptr inbounds i64, i64* %cloptr10074, i64 0                 ; &cloptr10074[0]
  %f10077 = load i64, i64* %i0ptr10075, align 8                                      ; load; *i0ptr10075
  %fptr10076 = inttoptr i64 %f10077 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10076(i64 %a7062, i64 %arg7824)                     ; tail call
  ret void
}


define void @lam8288(i64 %env8289, i64 %_957153, i64 %fpS$_956944) {
  %envptr10078 = inttoptr i64 %env8289 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10079 = getelementptr inbounds i64, i64* %envptr10078, i64 3                ; &envptr10078[3]
  %cont7151 = load i64, i64* %envptr10079, align 8                                   ; load; *envptr10079
  %envptr10080 = inttoptr i64 %env8289 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10081 = getelementptr inbounds i64, i64* %envptr10080, i64 2                ; &envptr10080[2]
  %ObE$l = load i64, i64* %envptr10081, align 8                                      ; load; *envptr10081
  %envptr10082 = inttoptr i64 %env8289 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10083 = getelementptr inbounds i64, i64* %envptr10082, i64 1                ; &envptr10082[1]
  %RUb$_37wind_45stack = load i64, i64* %envptr10083, align 8                        ; load; *envptr10083
  %arg7827 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7154 = call i64 @prim_vector_45set_33(i64 %RUb$_37wind_45stack, i64 %arg7827, i64 %ObE$l); call prim_vector_45set_33
  %arg7830 = add i64 0, 0                                                            ; quoted ()
  %cloptr10084 = inttoptr i64 %cont7151 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10084)                                        ; assert function application
  %i0ptr10085 = getelementptr inbounds i64, i64* %cloptr10084, i64 0                 ; &cloptr10084[0]
  %f10087 = load i64, i64* %i0ptr10085, align 8                                      ; load; *i0ptr10085
  %fptr10086 = inttoptr i64 %f10087 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10086(i64 %cont7151, i64 %arg7830, i64 %retprim7154); tail call
  ret void
}


define void @lam8281(i64 %env8282, i64 %VXq$lst7173) {
  %cont7172 = call i64 @prim_car(i64 %VXq$lst7173)                                   ; call prim_car
  %VXq$lst = call i64 @prim_cdr(i64 %VXq$lst7173)                                    ; call prim_cdr
  %arg7848 = add i64 0, 0                                                            ; quoted ()
  %rva8108 = add i64 0, 0                                                            ; quoted ()
  %rva8107 = call i64 @prim_cons(i64 %VXq$lst, i64 %rva8108)                         ; call prim_cons
  %rva8106 = call i64 @prim_cons(i64 %arg7848, i64 %rva8107)                         ; call prim_cons
  %cloptr10088 = inttoptr i64 %cont7172 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10088)                                        ; assert function application
  %i0ptr10089 = getelementptr inbounds i64, i64* %cloptr10088, i64 0                 ; &cloptr10088[0]
  %f10091 = load i64, i64* %i0ptr10089, align 8                                      ; load; *i0ptr10089
  %fptr10090 = inttoptr i64 %f10091 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10090(i64 %cont7172, i64 %rva8106)                  ; tail call
  ret void
}


define void @lam8277(i64 %env8278, i64 %rvp8115) {
  %_957170 = call i64 @prim_car(i64 %rvp8115)                                        ; call prim_car
  %rvp8113 = call i64 @prim_cdr(i64 %rvp8115)                                        ; call prim_cdr
  %a7064 = call i64 @prim_car(i64 %rvp8113)                                          ; call prim_car
  %na8110 = call i64 @prim_cdr(i64 %rvp8113)                                         ; call prim_cdr
  %arg7850 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7171 = call i64 @prim_take(i64 %a7064, i64 %arg7850)                       ; call prim_take
  %cloptr10092 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10093 = getelementptr inbounds i64, i64* %cloptr10092, i64 0                  ; &cloptr10092[0]
  %f10094 = ptrtoint void(i64,i64,i64)* @lam8274 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10094, i64* %eptr10093                                                 ; store fptr
  %arg7854 = ptrtoint i64* %cloptr10092 to i64                                       ; closure cast; i64* -> i64
  %arg7853 = add i64 0, 0                                                            ; quoted ()
  %cloptr10095 = inttoptr i64 %arg7854 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10095)                                        ; assert function application
  %i0ptr10096 = getelementptr inbounds i64, i64* %cloptr10095, i64 0                 ; &cloptr10095[0]
  %f10098 = load i64, i64* %i0ptr10096, align 8                                      ; load; *i0ptr10096
  %fptr10097 = inttoptr i64 %f10098 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10097(i64 %arg7854, i64 %arg7853, i64 %retprim7171) ; tail call
  ret void
}


define void @lam8274(i64 %env8275, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva8112 = add i64 0, 0                                                            ; quoted ()
  %rva8111 = call i64 @prim_cons(i64 %_951, i64 %rva8112)                            ; call prim_cons
  %cloptr10099 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10099)                                        ; assert function application
  %i0ptr10100 = getelementptr inbounds i64, i64* %cloptr10099, i64 0                 ; &cloptr10099[0]
  %f10102 = load i64, i64* %i0ptr10100, align 8                                      ; load; *i0ptr10100
  %fptr10101 = inttoptr i64 %f10102 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10101(i64 %_951, i64 %rva8111)                      ; tail call
  ret void
}


define void @lam8262(i64 %env8263, i64 %cont7184, i64 %RU4$_37foldl) {
  %envptr10103 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10104 = getelementptr inbounds i64, i64* %envptr10103, i64 3                ; &envptr10103[3]
  %dCz$_37foldr = load i64, i64* %envptr10104, align 8                               ; load; *envptr10104
  %envptr10105 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10106 = getelementptr inbounds i64, i64* %envptr10105, i64 2                ; &envptr10105[2]
  %HOj$_37map1 = load i64, i64* %envptr10106, align 8                                ; load; *envptr10106
  %envptr10107 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10108 = getelementptr inbounds i64, i64* %envptr10107, i64 1                ; &envptr10107[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10108, align 8                              ; load; *envptr10108
  %arg7859 = add i64 0, 0                                                            ; quoted ()
  %cloptr10109 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10111 = getelementptr inbounds i64, i64* %cloptr10109, i64 1                  ; &eptr10111[1]
  %eptr10112 = getelementptr inbounds i64, i64* %cloptr10109, i64 2                  ; &eptr10112[2]
  %eptr10113 = getelementptr inbounds i64, i64* %cloptr10109, i64 3                  ; &eptr10113[3]
  %eptr10114 = getelementptr inbounds i64, i64* %cloptr10109, i64 4                  ; &eptr10114[4]
  store i64 %RU4$_37foldl, i64* %eptr10111                                           ; *eptr10111 = %RU4$_37foldl
  store i64 %sOd$_37foldr1, i64* %eptr10112                                          ; *eptr10112 = %sOd$_37foldr1
  store i64 %HOj$_37map1, i64* %eptr10113                                            ; *eptr10113 = %HOj$_37map1
  store i64 %dCz$_37foldr, i64* %eptr10114                                           ; *eptr10114 = %dCz$_37foldr
  %eptr10110 = getelementptr inbounds i64, i64* %cloptr10109, i64 0                  ; &cloptr10109[0]
  %f10115 = ptrtoint void(i64,i64)* @lam8259 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10115, i64* %eptr10110                                                 ; store fptr
  %arg7858 = ptrtoint i64* %cloptr10109 to i64                                       ; closure cast; i64* -> i64
  %cloptr10116 = inttoptr i64 %cont7184 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10116)                                        ; assert function application
  %i0ptr10117 = getelementptr inbounds i64, i64* %cloptr10116, i64 0                 ; &cloptr10116[0]
  %f10119 = load i64, i64* %i0ptr10117, align 8                                      ; load; *i0ptr10117
  %fptr10118 = inttoptr i64 %f10119 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10118(i64 %cont7184, i64 %arg7859, i64 %arg7858)    ; tail call
  ret void
}


define void @lam8259(i64 %env8260, i64 %Moh$args7186) {
  %envptr10120 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10121 = getelementptr inbounds i64, i64* %envptr10120, i64 4                ; &envptr10120[4]
  %dCz$_37foldr = load i64, i64* %envptr10121, align 8                               ; load; *envptr10121
  %envptr10122 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10123 = getelementptr inbounds i64, i64* %envptr10122, i64 3                ; &envptr10122[3]
  %HOj$_37map1 = load i64, i64* %envptr10123, align 8                                ; load; *envptr10123
  %envptr10124 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10125 = getelementptr inbounds i64, i64* %envptr10124, i64 2                ; &envptr10124[2]
  %sOd$_37foldr1 = load i64, i64* %envptr10125, align 8                              ; load; *envptr10125
  %envptr10126 = inttoptr i64 %env8260 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10127 = getelementptr inbounds i64, i64* %envptr10126, i64 1                ; &envptr10126[1]
  %RU4$_37foldl = load i64, i64* %envptr10127, align 8                               ; load; *envptr10127
  %cont7185 = call i64 @prim_car(i64 %Moh$args7186)                                  ; call prim_car
  %Moh$args = call i64 @prim_cdr(i64 %Moh$args7186)                                  ; call prim_cdr
  %mPN$f = call i64 @prim_car(i64 %Moh$args)                                         ; call prim_car
  %a6985 = call i64 @prim_cdr(i64 %Moh$args)                                         ; call prim_cdr
  %retprim7205 = call i64 @prim_car(i64 %a6985)                                      ; call prim_car
  %cloptr10128 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10130 = getelementptr inbounds i64, i64* %cloptr10128, i64 1                  ; &eptr10130[1]
  %eptr10131 = getelementptr inbounds i64, i64* %cloptr10128, i64 2                  ; &eptr10131[2]
  %eptr10132 = getelementptr inbounds i64, i64* %cloptr10128, i64 3                  ; &eptr10132[3]
  %eptr10133 = getelementptr inbounds i64, i64* %cloptr10128, i64 4                  ; &eptr10133[4]
  %eptr10134 = getelementptr inbounds i64, i64* %cloptr10128, i64 5                  ; &eptr10134[5]
  %eptr10135 = getelementptr inbounds i64, i64* %cloptr10128, i64 6                  ; &eptr10135[6]
  %eptr10136 = getelementptr inbounds i64, i64* %cloptr10128, i64 7                  ; &eptr10136[7]
  store i64 %RU4$_37foldl, i64* %eptr10130                                           ; *eptr10130 = %RU4$_37foldl
  store i64 %mPN$f, i64* %eptr10131                                                  ; *eptr10131 = %mPN$f
  store i64 %sOd$_37foldr1, i64* %eptr10132                                          ; *eptr10132 = %sOd$_37foldr1
  store i64 %HOj$_37map1, i64* %eptr10133                                            ; *eptr10133 = %HOj$_37map1
  store i64 %Moh$args, i64* %eptr10134                                               ; *eptr10134 = %Moh$args
  store i64 %dCz$_37foldr, i64* %eptr10135                                           ; *eptr10135 = %dCz$_37foldr
  store i64 %cont7185, i64* %eptr10136                                               ; *eptr10136 = %cont7185
  %eptr10129 = getelementptr inbounds i64, i64* %cloptr10128, i64 0                  ; &cloptr10128[0]
  %f10137 = ptrtoint void(i64,i64,i64)* @lam8257 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10137, i64* %eptr10129                                                 ; store fptr
  %arg7868 = ptrtoint i64* %cloptr10128 to i64                                       ; closure cast; i64* -> i64
  %arg7867 = add i64 0, 0                                                            ; quoted ()
  %cloptr10138 = inttoptr i64 %arg7868 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10138)                                        ; assert function application
  %i0ptr10139 = getelementptr inbounds i64, i64* %cloptr10138, i64 0                 ; &cloptr10138[0]
  %f10141 = load i64, i64* %i0ptr10139, align 8                                      ; load; *i0ptr10139
  %fptr10140 = inttoptr i64 %f10141 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10140(i64 %arg7868, i64 %arg7867, i64 %retprim7205) ; tail call
  ret void
}


define void @lam8257(i64 %env8258, i64 %_957187, i64 %ln6$acc) {
  %envptr10142 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10143 = getelementptr inbounds i64, i64* %envptr10142, i64 7                ; &envptr10142[7]
  %cont7185 = load i64, i64* %envptr10143, align 8                                   ; load; *envptr10143
  %envptr10144 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10145 = getelementptr inbounds i64, i64* %envptr10144, i64 6                ; &envptr10144[6]
  %dCz$_37foldr = load i64, i64* %envptr10145, align 8                               ; load; *envptr10145
  %envptr10146 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10147 = getelementptr inbounds i64, i64* %envptr10146, i64 5                ; &envptr10146[5]
  %Moh$args = load i64, i64* %envptr10147, align 8                                   ; load; *envptr10147
  %envptr10148 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10149 = getelementptr inbounds i64, i64* %envptr10148, i64 4                ; &envptr10148[4]
  %HOj$_37map1 = load i64, i64* %envptr10149, align 8                                ; load; *envptr10149
  %envptr10150 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10151 = getelementptr inbounds i64, i64* %envptr10150, i64 3                ; &envptr10150[3]
  %sOd$_37foldr1 = load i64, i64* %envptr10151, align 8                              ; load; *envptr10151
  %envptr10152 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10153 = getelementptr inbounds i64, i64* %envptr10152, i64 2                ; &envptr10152[2]
  %mPN$f = load i64, i64* %envptr10153, align 8                                      ; load; *envptr10153
  %envptr10154 = inttoptr i64 %env8258 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10155 = getelementptr inbounds i64, i64* %envptr10154, i64 1                ; &envptr10154[1]
  %RU4$_37foldl = load i64, i64* %envptr10155, align 8                               ; load; *envptr10155
  %a6986 = call i64 @prim_cdr(i64 %Moh$args)                                         ; call prim_cdr
  %retprim7204 = call i64 @prim_cdr(i64 %a6986)                                      ; call prim_cdr
  %cloptr10156 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10158 = getelementptr inbounds i64, i64* %cloptr10156, i64 1                  ; &eptr10158[1]
  %eptr10159 = getelementptr inbounds i64, i64* %cloptr10156, i64 2                  ; &eptr10159[2]
  %eptr10160 = getelementptr inbounds i64, i64* %cloptr10156, i64 3                  ; &eptr10160[3]
  %eptr10161 = getelementptr inbounds i64, i64* %cloptr10156, i64 4                  ; &eptr10161[4]
  %eptr10162 = getelementptr inbounds i64, i64* %cloptr10156, i64 5                  ; &eptr10162[5]
  %eptr10163 = getelementptr inbounds i64, i64* %cloptr10156, i64 6                  ; &eptr10163[6]
  %eptr10164 = getelementptr inbounds i64, i64* %cloptr10156, i64 7                  ; &eptr10164[7]
  store i64 %RU4$_37foldl, i64* %eptr10158                                           ; *eptr10158 = %RU4$_37foldl
  store i64 %mPN$f, i64* %eptr10159                                                  ; *eptr10159 = %mPN$f
  store i64 %sOd$_37foldr1, i64* %eptr10160                                          ; *eptr10160 = %sOd$_37foldr1
  store i64 %HOj$_37map1, i64* %eptr10161                                            ; *eptr10161 = %HOj$_37map1
  store i64 %ln6$acc, i64* %eptr10162                                                ; *eptr10162 = %ln6$acc
  store i64 %dCz$_37foldr, i64* %eptr10163                                           ; *eptr10163 = %dCz$_37foldr
  store i64 %cont7185, i64* %eptr10164                                               ; *eptr10164 = %cont7185
  %eptr10157 = getelementptr inbounds i64, i64* %cloptr10156, i64 0                  ; &cloptr10156[0]
  %f10165 = ptrtoint void(i64,i64,i64)* @lam8255 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10165, i64* %eptr10157                                                 ; store fptr
  %arg7873 = ptrtoint i64* %cloptr10156 to i64                                       ; closure cast; i64* -> i64
  %arg7872 = add i64 0, 0                                                            ; quoted ()
  %cloptr10166 = inttoptr i64 %arg7873 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10166)                                        ; assert function application
  %i0ptr10167 = getelementptr inbounds i64, i64* %cloptr10166, i64 0                 ; &cloptr10166[0]
  %f10169 = load i64, i64* %i0ptr10167, align 8                                      ; load; *i0ptr10167
  %fptr10168 = inttoptr i64 %f10169 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10168(i64 %arg7873, i64 %arg7872, i64 %retprim7204) ; tail call
  ret void
}


define void @lam8255(i64 %env8256, i64 %_957188, i64 %u1O$lsts) {
  %envptr10170 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10171 = getelementptr inbounds i64, i64* %envptr10170, i64 7                ; &envptr10170[7]
  %cont7185 = load i64, i64* %envptr10171, align 8                                   ; load; *envptr10171
  %envptr10172 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10173 = getelementptr inbounds i64, i64* %envptr10172, i64 6                ; &envptr10172[6]
  %dCz$_37foldr = load i64, i64* %envptr10173, align 8                               ; load; *envptr10173
  %envptr10174 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10175 = getelementptr inbounds i64, i64* %envptr10174, i64 5                ; &envptr10174[5]
  %ln6$acc = load i64, i64* %envptr10175, align 8                                    ; load; *envptr10175
  %envptr10176 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10177 = getelementptr inbounds i64, i64* %envptr10176, i64 4                ; &envptr10176[4]
  %HOj$_37map1 = load i64, i64* %envptr10177, align 8                                ; load; *envptr10177
  %envptr10178 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10179 = getelementptr inbounds i64, i64* %envptr10178, i64 3                ; &envptr10178[3]
  %sOd$_37foldr1 = load i64, i64* %envptr10179, align 8                              ; load; *envptr10179
  %envptr10180 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10181 = getelementptr inbounds i64, i64* %envptr10180, i64 2                ; &envptr10180[2]
  %mPN$f = load i64, i64* %envptr10181, align 8                                      ; load; *envptr10181
  %envptr10182 = inttoptr i64 %env8256 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10183 = getelementptr inbounds i64, i64* %envptr10182, i64 1                ; &envptr10182[1]
  %RU4$_37foldl = load i64, i64* %envptr10183, align 8                               ; load; *envptr10183
  %cloptr10184 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10186 = getelementptr inbounds i64, i64* %cloptr10184, i64 1                  ; &eptr10186[1]
  %eptr10187 = getelementptr inbounds i64, i64* %cloptr10184, i64 2                  ; &eptr10187[2]
  %eptr10188 = getelementptr inbounds i64, i64* %cloptr10184, i64 3                  ; &eptr10188[3]
  %eptr10189 = getelementptr inbounds i64, i64* %cloptr10184, i64 4                  ; &eptr10189[4]
  %eptr10190 = getelementptr inbounds i64, i64* %cloptr10184, i64 5                  ; &eptr10190[5]
  %eptr10191 = getelementptr inbounds i64, i64* %cloptr10184, i64 6                  ; &eptr10191[6]
  %eptr10192 = getelementptr inbounds i64, i64* %cloptr10184, i64 7                  ; &eptr10192[7]
  store i64 %RU4$_37foldl, i64* %eptr10186                                           ; *eptr10186 = %RU4$_37foldl
  store i64 %mPN$f, i64* %eptr10187                                                  ; *eptr10187 = %mPN$f
  store i64 %u1O$lsts, i64* %eptr10188                                               ; *eptr10188 = %u1O$lsts
  store i64 %HOj$_37map1, i64* %eptr10189                                            ; *eptr10189 = %HOj$_37map1
  store i64 %ln6$acc, i64* %eptr10190                                                ; *eptr10190 = %ln6$acc
  store i64 %dCz$_37foldr, i64* %eptr10191                                           ; *eptr10191 = %dCz$_37foldr
  store i64 %cont7185, i64* %eptr10192                                               ; *eptr10192 = %cont7185
  %eptr10185 = getelementptr inbounds i64, i64* %cloptr10184, i64 0                  ; &cloptr10184[0]
  %f10193 = ptrtoint void(i64,i64,i64)* @lam8253 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10193, i64* %eptr10185                                                 ; store fptr
  %arg7877 = ptrtoint i64* %cloptr10184 to i64                                       ; closure cast; i64* -> i64
  %cloptr10194 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10195 = getelementptr inbounds i64, i64* %cloptr10194, i64 0                  ; &cloptr10194[0]
  %f10196 = ptrtoint void(i64,i64,i64,i64)* @lam8232 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10196, i64* %eptr10195                                                 ; store fptr
  %arg7876 = ptrtoint i64* %cloptr10194 to i64                                       ; closure cast; i64* -> i64
  %arg7875 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10197 = inttoptr i64 %sOd$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10197)                                        ; assert function application
  %i0ptr10198 = getelementptr inbounds i64, i64* %cloptr10197, i64 0                 ; &cloptr10197[0]
  %f10200 = load i64, i64* %i0ptr10198, align 8                                      ; load; *i0ptr10198
  %fptr10199 = inttoptr i64 %f10200 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10199(i64 %sOd$_37foldr1, i64 %arg7877, i64 %arg7876, i64 %arg7875, i64 %u1O$lsts); tail call
  ret void
}


define void @lam8253(i64 %env8254, i64 %_957189, i64 %a6987) {
  %envptr10201 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10202 = getelementptr inbounds i64, i64* %envptr10201, i64 7                ; &envptr10201[7]
  %cont7185 = load i64, i64* %envptr10202, align 8                                   ; load; *envptr10202
  %envptr10203 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10204 = getelementptr inbounds i64, i64* %envptr10203, i64 6                ; &envptr10203[6]
  %dCz$_37foldr = load i64, i64* %envptr10204, align 8                               ; load; *envptr10204
  %envptr10205 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10206 = getelementptr inbounds i64, i64* %envptr10205, i64 5                ; &envptr10205[5]
  %ln6$acc = load i64, i64* %envptr10206, align 8                                    ; load; *envptr10206
  %envptr10207 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10208 = getelementptr inbounds i64, i64* %envptr10207, i64 4                ; &envptr10207[4]
  %HOj$_37map1 = load i64, i64* %envptr10208, align 8                                ; load; *envptr10208
  %envptr10209 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10210 = getelementptr inbounds i64, i64* %envptr10209, i64 3                ; &envptr10209[3]
  %u1O$lsts = load i64, i64* %envptr10210, align 8                                   ; load; *envptr10210
  %envptr10211 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10212 = getelementptr inbounds i64, i64* %envptr10211, i64 2                ; &envptr10211[2]
  %mPN$f = load i64, i64* %envptr10212, align 8                                      ; load; *envptr10212
  %envptr10213 = inttoptr i64 %env8254 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10214 = getelementptr inbounds i64, i64* %envptr10213, i64 1                ; &envptr10213[1]
  %RU4$_37foldl = load i64, i64* %envptr10214, align 8                               ; load; *envptr10214
  %cmp10215 = icmp eq i64 %a6987, 15                                                 ; false?
  br i1 %cmp10215, label %else10217, label %then10216                                ; if

then10216:
  %arg7880 = add i64 0, 0                                                            ; quoted ()
  %cloptr10218 = inttoptr i64 %cont7185 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10218)                                        ; assert function application
  %i0ptr10219 = getelementptr inbounds i64, i64* %cloptr10218, i64 0                 ; &cloptr10218[0]
  %f10221 = load i64, i64* %i0ptr10219, align 8                                      ; load; *i0ptr10219
  %fptr10220 = inttoptr i64 %f10221 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10220(i64 %cont7185, i64 %arg7880, i64 %ln6$acc)    ; tail call
  ret void

else10217:
  %cloptr10222 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10224 = getelementptr inbounds i64, i64* %cloptr10222, i64 1                  ; &eptr10224[1]
  %eptr10225 = getelementptr inbounds i64, i64* %cloptr10222, i64 2                  ; &eptr10225[2]
  %eptr10226 = getelementptr inbounds i64, i64* %cloptr10222, i64 3                  ; &eptr10226[3]
  %eptr10227 = getelementptr inbounds i64, i64* %cloptr10222, i64 4                  ; &eptr10227[4]
  %eptr10228 = getelementptr inbounds i64, i64* %cloptr10222, i64 5                  ; &eptr10228[5]
  %eptr10229 = getelementptr inbounds i64, i64* %cloptr10222, i64 6                  ; &eptr10229[6]
  %eptr10230 = getelementptr inbounds i64, i64* %cloptr10222, i64 7                  ; &eptr10230[7]
  store i64 %RU4$_37foldl, i64* %eptr10224                                           ; *eptr10224 = %RU4$_37foldl
  store i64 %mPN$f, i64* %eptr10225                                                  ; *eptr10225 = %mPN$f
  store i64 %u1O$lsts, i64* %eptr10226                                               ; *eptr10226 = %u1O$lsts
  store i64 %HOj$_37map1, i64* %eptr10227                                            ; *eptr10227 = %HOj$_37map1
  store i64 %ln6$acc, i64* %eptr10228                                                ; *eptr10228 = %ln6$acc
  store i64 %dCz$_37foldr, i64* %eptr10229                                           ; *eptr10229 = %dCz$_37foldr
  store i64 %cont7185, i64* %eptr10230                                               ; *eptr10230 = %cont7185
  %eptr10223 = getelementptr inbounds i64, i64* %cloptr10222, i64 0                  ; &cloptr10222[0]
  %f10231 = ptrtoint void(i64,i64,i64)* @lam8251 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10231, i64* %eptr10223                                                 ; store fptr
  %arg7884 = ptrtoint i64* %cloptr10222 to i64                                       ; closure cast; i64* -> i64
  %cloptr10232 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10233 = getelementptr inbounds i64, i64* %cloptr10232, i64 0                  ; &cloptr10232[0]
  %f10234 = ptrtoint void(i64,i64,i64)* @lam8236 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10234, i64* %eptr10233                                                 ; store fptr
  %arg7883 = ptrtoint i64* %cloptr10232 to i64                                       ; closure cast; i64* -> i64
  %cloptr10235 = inttoptr i64 %HOj$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10235)                                        ; assert function application
  %i0ptr10236 = getelementptr inbounds i64, i64* %cloptr10235, i64 0                 ; &cloptr10235[0]
  %f10238 = load i64, i64* %i0ptr10236, align 8                                      ; load; *i0ptr10236
  %fptr10237 = inttoptr i64 %f10238 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10237(i64 %HOj$_37map1, i64 %arg7884, i64 %arg7883, i64 %u1O$lsts); tail call
  ret void
}


define void @lam8251(i64 %env8252, i64 %_957190, i64 %Wpy$lsts_43) {
  %envptr10239 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10240 = getelementptr inbounds i64, i64* %envptr10239, i64 7                ; &envptr10239[7]
  %cont7185 = load i64, i64* %envptr10240, align 8                                   ; load; *envptr10240
  %envptr10241 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10242 = getelementptr inbounds i64, i64* %envptr10241, i64 6                ; &envptr10241[6]
  %dCz$_37foldr = load i64, i64* %envptr10242, align 8                               ; load; *envptr10242
  %envptr10243 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10244 = getelementptr inbounds i64, i64* %envptr10243, i64 5                ; &envptr10243[5]
  %ln6$acc = load i64, i64* %envptr10244, align 8                                    ; load; *envptr10244
  %envptr10245 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10246 = getelementptr inbounds i64, i64* %envptr10245, i64 4                ; &envptr10245[4]
  %HOj$_37map1 = load i64, i64* %envptr10246, align 8                                ; load; *envptr10246
  %envptr10247 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10248 = getelementptr inbounds i64, i64* %envptr10247, i64 3                ; &envptr10247[3]
  %u1O$lsts = load i64, i64* %envptr10248, align 8                                   ; load; *envptr10248
  %envptr10249 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10250 = getelementptr inbounds i64, i64* %envptr10249, i64 2                ; &envptr10249[2]
  %mPN$f = load i64, i64* %envptr10250, align 8                                      ; load; *envptr10250
  %envptr10251 = inttoptr i64 %env8252 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10252 = getelementptr inbounds i64, i64* %envptr10251, i64 1                ; &envptr10251[1]
  %RU4$_37foldl = load i64, i64* %envptr10252, align 8                               ; load; *envptr10252
  %cloptr10253 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10255 = getelementptr inbounds i64, i64* %cloptr10253, i64 1                  ; &eptr10255[1]
  %eptr10256 = getelementptr inbounds i64, i64* %cloptr10253, i64 2                  ; &eptr10256[2]
  %eptr10257 = getelementptr inbounds i64, i64* %cloptr10253, i64 3                  ; &eptr10257[3]
  %eptr10258 = getelementptr inbounds i64, i64* %cloptr10253, i64 4                  ; &eptr10258[4]
  %eptr10259 = getelementptr inbounds i64, i64* %cloptr10253, i64 5                  ; &eptr10259[5]
  %eptr10260 = getelementptr inbounds i64, i64* %cloptr10253, i64 6                  ; &eptr10260[6]
  store i64 %RU4$_37foldl, i64* %eptr10255                                           ; *eptr10255 = %RU4$_37foldl
  store i64 %Wpy$lsts_43, i64* %eptr10256                                            ; *eptr10256 = %Wpy$lsts_43
  store i64 %mPN$f, i64* %eptr10257                                                  ; *eptr10257 = %mPN$f
  store i64 %ln6$acc, i64* %eptr10258                                                ; *eptr10258 = %ln6$acc
  store i64 %dCz$_37foldr, i64* %eptr10259                                           ; *eptr10259 = %dCz$_37foldr
  store i64 %cont7185, i64* %eptr10260                                               ; *eptr10260 = %cont7185
  %eptr10254 = getelementptr inbounds i64, i64* %cloptr10253, i64 0                  ; &cloptr10253[0]
  %f10261 = ptrtoint void(i64,i64,i64)* @lam8249 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10261, i64* %eptr10254                                                 ; store fptr
  %arg7888 = ptrtoint i64* %cloptr10253 to i64                                       ; closure cast; i64* -> i64
  %cloptr10262 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10263 = getelementptr inbounds i64, i64* %cloptr10262, i64 0                  ; &cloptr10262[0]
  %f10264 = ptrtoint void(i64,i64,i64)* @lam8239 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10264, i64* %eptr10263                                                 ; store fptr
  %arg7887 = ptrtoint i64* %cloptr10262 to i64                                       ; closure cast; i64* -> i64
  %cloptr10265 = inttoptr i64 %HOj$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10265)                                        ; assert function application
  %i0ptr10266 = getelementptr inbounds i64, i64* %cloptr10265, i64 0                 ; &cloptr10265[0]
  %f10268 = load i64, i64* %i0ptr10266, align 8                                      ; load; *i0ptr10266
  %fptr10267 = inttoptr i64 %f10268 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10267(i64 %HOj$_37map1, i64 %arg7888, i64 %arg7887, i64 %u1O$lsts); tail call
  ret void
}


define void @lam8249(i64 %env8250, i64 %_957191, i64 %n7f$vs) {
  %envptr10269 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10270 = getelementptr inbounds i64, i64* %envptr10269, i64 6                ; &envptr10269[6]
  %cont7185 = load i64, i64* %envptr10270, align 8                                   ; load; *envptr10270
  %envptr10271 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10272 = getelementptr inbounds i64, i64* %envptr10271, i64 5                ; &envptr10271[5]
  %dCz$_37foldr = load i64, i64* %envptr10272, align 8                               ; load; *envptr10272
  %envptr10273 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10274 = getelementptr inbounds i64, i64* %envptr10273, i64 4                ; &envptr10273[4]
  %ln6$acc = load i64, i64* %envptr10274, align 8                                    ; load; *envptr10274
  %envptr10275 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10276 = getelementptr inbounds i64, i64* %envptr10275, i64 3                ; &envptr10275[3]
  %mPN$f = load i64, i64* %envptr10276, align 8                                      ; load; *envptr10276
  %envptr10277 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10278 = getelementptr inbounds i64, i64* %envptr10277, i64 2                ; &envptr10277[2]
  %Wpy$lsts_43 = load i64, i64* %envptr10278, align 8                                ; load; *envptr10278
  %envptr10279 = inttoptr i64 %env8250 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10280 = getelementptr inbounds i64, i64* %envptr10279, i64 1                ; &envptr10279[1]
  %RU4$_37foldl = load i64, i64* %envptr10280, align 8                               ; load; *envptr10280
  %arg7890 = add i64 0, 0                                                            ; quoted ()
  %a6988 = call i64 @prim_cons(i64 %ln6$acc, i64 %arg7890)                           ; call prim_cons
  %cloptr10281 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10283 = getelementptr inbounds i64, i64* %cloptr10281, i64 1                  ; &eptr10283[1]
  %eptr10284 = getelementptr inbounds i64, i64* %cloptr10281, i64 2                  ; &eptr10284[2]
  %eptr10285 = getelementptr inbounds i64, i64* %cloptr10281, i64 3                  ; &eptr10285[3]
  %eptr10286 = getelementptr inbounds i64, i64* %cloptr10281, i64 4                  ; &eptr10286[4]
  store i64 %RU4$_37foldl, i64* %eptr10283                                           ; *eptr10283 = %RU4$_37foldl
  store i64 %Wpy$lsts_43, i64* %eptr10284                                            ; *eptr10284 = %Wpy$lsts_43
  store i64 %mPN$f, i64* %eptr10285                                                  ; *eptr10285 = %mPN$f
  store i64 %cont7185, i64* %eptr10286                                               ; *eptr10286 = %cont7185
  %eptr10282 = getelementptr inbounds i64, i64* %cloptr10281, i64 0                  ; &cloptr10281[0]
  %f10287 = ptrtoint void(i64,i64,i64)* @lam8246 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10287, i64* %eptr10282                                                 ; store fptr
  %arg7895 = ptrtoint i64* %cloptr10281 to i64                                       ; closure cast; i64* -> i64
  %cloptr10288 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10289 = getelementptr inbounds i64, i64* %cloptr10288, i64 0                  ; &cloptr10288[0]
  %f10290 = ptrtoint void(i64,i64,i64,i64)* @lam8242 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10290, i64* %eptr10289                                                 ; store fptr
  %arg7894 = ptrtoint i64* %cloptr10288 to i64                                       ; closure cast; i64* -> i64
  %cloptr10291 = inttoptr i64 %dCz$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10291)                                        ; assert function application
  %i0ptr10292 = getelementptr inbounds i64, i64* %cloptr10291, i64 0                 ; &cloptr10291[0]
  %f10294 = load i64, i64* %i0ptr10292, align 8                                      ; load; *i0ptr10292
  %fptr10293 = inttoptr i64 %f10294 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10293(i64 %dCz$_37foldr, i64 %arg7895, i64 %arg7894, i64 %a6988, i64 %n7f$vs); tail call
  ret void
}


define void @lam8246(i64 %env8247, i64 %_957194, i64 %a6989) {
  %envptr10295 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10296 = getelementptr inbounds i64, i64* %envptr10295, i64 4                ; &envptr10295[4]
  %cont7185 = load i64, i64* %envptr10296, align 8                                   ; load; *envptr10296
  %envptr10297 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10298 = getelementptr inbounds i64, i64* %envptr10297, i64 3                ; &envptr10297[3]
  %mPN$f = load i64, i64* %envptr10298, align 8                                      ; load; *envptr10298
  %envptr10299 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10300 = getelementptr inbounds i64, i64* %envptr10299, i64 2                ; &envptr10299[2]
  %Wpy$lsts_43 = load i64, i64* %envptr10300, align 8                                ; load; *envptr10300
  %envptr10301 = inttoptr i64 %env8247 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10302 = getelementptr inbounds i64, i64* %envptr10301, i64 1                ; &envptr10301[1]
  %RU4$_37foldl = load i64, i64* %envptr10302, align 8                               ; load; *envptr10302
  %cloptr10303 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10305 = getelementptr inbounds i64, i64* %cloptr10303, i64 1                  ; &eptr10305[1]
  %eptr10306 = getelementptr inbounds i64, i64* %cloptr10303, i64 2                  ; &eptr10306[2]
  %eptr10307 = getelementptr inbounds i64, i64* %cloptr10303, i64 3                  ; &eptr10307[3]
  %eptr10308 = getelementptr inbounds i64, i64* %cloptr10303, i64 4                  ; &eptr10308[4]
  store i64 %RU4$_37foldl, i64* %eptr10305                                           ; *eptr10305 = %RU4$_37foldl
  store i64 %Wpy$lsts_43, i64* %eptr10306                                            ; *eptr10306 = %Wpy$lsts_43
  store i64 %mPN$f, i64* %eptr10307                                                  ; *eptr10307 = %mPN$f
  store i64 %cont7185, i64* %eptr10308                                               ; *eptr10308 = %cont7185
  %eptr10304 = getelementptr inbounds i64, i64* %cloptr10303, i64 0                  ; &cloptr10303[0]
  %f10309 = ptrtoint void(i64,i64,i64)* @lam8244 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10309, i64* %eptr10304                                                 ; store fptr
  %arg7898 = ptrtoint i64* %cloptr10303 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7195 = call i64 @prim_cons(i64 %arg7898, i64 %a6989)                     ; call prim_cons
  %cloptr10310 = inttoptr i64 %mPN$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10310)                                        ; assert function application
  %i0ptr10311 = getelementptr inbounds i64, i64* %cloptr10310, i64 0                 ; &cloptr10310[0]
  %f10313 = load i64, i64* %i0ptr10311, align 8                                      ; load; *i0ptr10311
  %fptr10312 = inttoptr i64 %f10313 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10312(i64 %mPN$f, i64 %cps_45lst7195)               ; tail call
  ret void
}


define void @lam8244(i64 %env8245, i64 %_957192, i64 %OD6$acc_43) {
  %envptr10314 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10315 = getelementptr inbounds i64, i64* %envptr10314, i64 4                ; &envptr10314[4]
  %cont7185 = load i64, i64* %envptr10315, align 8                                   ; load; *envptr10315
  %envptr10316 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10317 = getelementptr inbounds i64, i64* %envptr10316, i64 3                ; &envptr10316[3]
  %mPN$f = load i64, i64* %envptr10317, align 8                                      ; load; *envptr10317
  %envptr10318 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10319 = getelementptr inbounds i64, i64* %envptr10318, i64 2                ; &envptr10318[2]
  %Wpy$lsts_43 = load i64, i64* %envptr10319, align 8                                ; load; *envptr10319
  %envptr10320 = inttoptr i64 %env8245 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10321 = getelementptr inbounds i64, i64* %envptr10320, i64 1                ; &envptr10320[1]
  %RU4$_37foldl = load i64, i64* %envptr10321, align 8                               ; load; *envptr10321
  %a6990 = call i64 @prim_cons(i64 %OD6$acc_43, i64 %Wpy$lsts_43)                    ; call prim_cons
  %a6991 = call i64 @prim_cons(i64 %mPN$f, i64 %a6990)                               ; call prim_cons
  %cps_45lst7193 = call i64 @prim_cons(i64 %cont7185, i64 %a6991)                    ; call prim_cons
  %cloptr10322 = inttoptr i64 %RU4$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10322)                                        ; assert function application
  %i0ptr10323 = getelementptr inbounds i64, i64* %cloptr10322, i64 0                 ; &cloptr10322[0]
  %f10325 = load i64, i64* %i0ptr10323, align 8                                      ; load; *i0ptr10323
  %fptr10324 = inttoptr i64 %f10325 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10324(i64 %RU4$_37foldl, i64 %cps_45lst7193)        ; tail call
  ret void
}


define void @lam8242(i64 %env8243, i64 %cont7196, i64 %kTL$a, i64 %UZw$b) {
  %retprim7197 = call i64 @prim_cons(i64 %kTL$a, i64 %UZw$b)                         ; call prim_cons
  %arg7908 = add i64 0, 0                                                            ; quoted ()
  %cloptr10326 = inttoptr i64 %cont7196 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10326)                                        ; assert function application
  %i0ptr10327 = getelementptr inbounds i64, i64* %cloptr10326, i64 0                 ; &cloptr10326[0]
  %f10329 = load i64, i64* %i0ptr10327, align 8                                      ; load; *i0ptr10327
  %fptr10328 = inttoptr i64 %f10329 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10328(i64 %cont7196, i64 %arg7908, i64 %retprim7197); tail call
  ret void
}


define void @lam8239(i64 %env8240, i64 %cont7198, i64 %lqx$x) {
  %retprim7199 = call i64 @prim_car(i64 %lqx$x)                                      ; call prim_car
  %arg7912 = add i64 0, 0                                                            ; quoted ()
  %cloptr10330 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10330)                                        ; assert function application
  %i0ptr10331 = getelementptr inbounds i64, i64* %cloptr10330, i64 0                 ; &cloptr10330[0]
  %f10333 = load i64, i64* %i0ptr10331, align 8                                      ; load; *i0ptr10331
  %fptr10332 = inttoptr i64 %f10333 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10332(i64 %cont7198, i64 %arg7912, i64 %retprim7199); tail call
  ret void
}


define void @lam8236(i64 %env8237, i64 %cont7200, i64 %Su4$x) {
  %retprim7201 = call i64 @prim_cdr(i64 %Su4$x)                                      ; call prim_cdr
  %arg7916 = add i64 0, 0                                                            ; quoted ()
  %cloptr10334 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10334)                                        ; assert function application
  %i0ptr10335 = getelementptr inbounds i64, i64* %cloptr10334, i64 0                 ; &cloptr10334[0]
  %f10337 = load i64, i64* %i0ptr10335, align 8                                      ; load; *i0ptr10335
  %fptr10336 = inttoptr i64 %f10337 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10336(i64 %cont7200, i64 %arg7916, i64 %retprim7201); tail call
  ret void
}


define void @lam8232(i64 %env8233, i64 %cont7202, i64 %CaN$lst, i64 %gGF$b) {
  %cmp10338 = icmp eq i64 %gGF$b, 15                                                 ; false?
  br i1 %cmp10338, label %else10340, label %then10339                                ; if

then10339:
  %arg7919 = add i64 0, 0                                                            ; quoted ()
  %cloptr10341 = inttoptr i64 %cont7202 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10341)                                        ; assert function application
  %i0ptr10342 = getelementptr inbounds i64, i64* %cloptr10341, i64 0                 ; &cloptr10341[0]
  %f10344 = load i64, i64* %i0ptr10342, align 8                                      ; load; *i0ptr10342
  %fptr10343 = inttoptr i64 %f10344 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10343(i64 %cont7202, i64 %arg7919, i64 %gGF$b)      ; tail call
  ret void

else10340:
  %retprim7203 = call i64 @prim_null_63(i64 %CaN$lst)                                ; call prim_null_63
  %arg7923 = add i64 0, 0                                                            ; quoted ()
  %cloptr10345 = inttoptr i64 %cont7202 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10345)                                        ; assert function application
  %i0ptr10346 = getelementptr inbounds i64, i64* %cloptr10345, i64 0                 ; &cloptr10345[0]
  %f10348 = load i64, i64* %i0ptr10346, align 8                                      ; load; *i0ptr10346
  %fptr10347 = inttoptr i64 %f10348 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10347(i64 %cont7202, i64 %arg7923, i64 %retprim7203); tail call
  ret void
}


define void @lam8225(i64 %env8226, i64 %cont7206, i64 %lbw$_37foldr) {
  %envptr10349 = inttoptr i64 %env8226 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10350 = getelementptr inbounds i64, i64* %envptr10349, i64 2                ; &envptr10349[2]
  %Kpv$_37map1 = load i64, i64* %envptr10350, align 8                                ; load; *envptr10350
  %envptr10351 = inttoptr i64 %env8226 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10352 = getelementptr inbounds i64, i64* %envptr10351, i64 1                ; &envptr10351[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10352, align 8                              ; load; *envptr10352
  %arg7926 = add i64 0, 0                                                            ; quoted ()
  %cloptr10353 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10355 = getelementptr inbounds i64, i64* %cloptr10353, i64 1                  ; &eptr10355[1]
  %eptr10356 = getelementptr inbounds i64, i64* %cloptr10353, i64 2                  ; &eptr10356[2]
  %eptr10357 = getelementptr inbounds i64, i64* %cloptr10353, i64 3                  ; &eptr10357[3]
  store i64 %sOd$_37foldr1, i64* %eptr10355                                          ; *eptr10355 = %sOd$_37foldr1
  store i64 %lbw$_37foldr, i64* %eptr10356                                           ; *eptr10356 = %lbw$_37foldr
  store i64 %Kpv$_37map1, i64* %eptr10357                                            ; *eptr10357 = %Kpv$_37map1
  %eptr10354 = getelementptr inbounds i64, i64* %cloptr10353, i64 0                  ; &cloptr10353[0]
  %f10358 = ptrtoint void(i64,i64)* @lam8222 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10358, i64* %eptr10354                                                 ; store fptr
  %arg7925 = ptrtoint i64* %cloptr10353 to i64                                       ; closure cast; i64* -> i64
  %cloptr10359 = inttoptr i64 %cont7206 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10359)                                        ; assert function application
  %i0ptr10360 = getelementptr inbounds i64, i64* %cloptr10359, i64 0                 ; &cloptr10359[0]
  %f10362 = load i64, i64* %i0ptr10360, align 8                                      ; load; *i0ptr10360
  %fptr10361 = inttoptr i64 %f10362 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10361(i64 %cont7206, i64 %arg7926, i64 %arg7925)    ; tail call
  ret void
}


define void @lam8222(i64 %env8223, i64 %aKM$args7208) {
  %envptr10363 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10364 = getelementptr inbounds i64, i64* %envptr10363, i64 3                ; &envptr10363[3]
  %Kpv$_37map1 = load i64, i64* %envptr10364, align 8                                ; load; *envptr10364
  %envptr10365 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10366 = getelementptr inbounds i64, i64* %envptr10365, i64 2                ; &envptr10365[2]
  %lbw$_37foldr = load i64, i64* %envptr10366, align 8                               ; load; *envptr10366
  %envptr10367 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10368 = getelementptr inbounds i64, i64* %envptr10367, i64 1                ; &envptr10367[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10368, align 8                              ; load; *envptr10368
  %cont7207 = call i64 @prim_car(i64 %aKM$args7208)                                  ; call prim_car
  %aKM$args = call i64 @prim_cdr(i64 %aKM$args7208)                                  ; call prim_cdr
  %Sl3$f = call i64 @prim_car(i64 %aKM$args)                                         ; call prim_car
  %a6971 = call i64 @prim_cdr(i64 %aKM$args)                                         ; call prim_cdr
  %retprim7227 = call i64 @prim_car(i64 %a6971)                                      ; call prim_car
  %cloptr10369 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10371 = getelementptr inbounds i64, i64* %cloptr10369, i64 1                  ; &eptr10371[1]
  %eptr10372 = getelementptr inbounds i64, i64* %cloptr10369, i64 2                  ; &eptr10372[2]
  %eptr10373 = getelementptr inbounds i64, i64* %cloptr10369, i64 3                  ; &eptr10373[3]
  %eptr10374 = getelementptr inbounds i64, i64* %cloptr10369, i64 4                  ; &eptr10374[4]
  %eptr10375 = getelementptr inbounds i64, i64* %cloptr10369, i64 5                  ; &eptr10375[5]
  %eptr10376 = getelementptr inbounds i64, i64* %cloptr10369, i64 6                  ; &eptr10376[6]
  store i64 %sOd$_37foldr1, i64* %eptr10371                                          ; *eptr10371 = %sOd$_37foldr1
  store i64 %lbw$_37foldr, i64* %eptr10372                                           ; *eptr10372 = %lbw$_37foldr
  store i64 %Sl3$f, i64* %eptr10373                                                  ; *eptr10373 = %Sl3$f
  store i64 %cont7207, i64* %eptr10374                                               ; *eptr10374 = %cont7207
  store i64 %Kpv$_37map1, i64* %eptr10375                                            ; *eptr10375 = %Kpv$_37map1
  store i64 %aKM$args, i64* %eptr10376                                               ; *eptr10376 = %aKM$args
  %eptr10370 = getelementptr inbounds i64, i64* %cloptr10369, i64 0                  ; &cloptr10369[0]
  %f10377 = ptrtoint void(i64,i64,i64)* @lam8220 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10377, i64* %eptr10370                                                 ; store fptr
  %arg7935 = ptrtoint i64* %cloptr10369 to i64                                       ; closure cast; i64* -> i64
  %arg7934 = add i64 0, 0                                                            ; quoted ()
  %cloptr10378 = inttoptr i64 %arg7935 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10378)                                        ; assert function application
  %i0ptr10379 = getelementptr inbounds i64, i64* %cloptr10378, i64 0                 ; &cloptr10378[0]
  %f10381 = load i64, i64* %i0ptr10379, align 8                                      ; load; *i0ptr10379
  %fptr10380 = inttoptr i64 %f10381 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10380(i64 %arg7935, i64 %arg7934, i64 %retprim7227) ; tail call
  ret void
}


define void @lam8220(i64 %env8221, i64 %_957209, i64 %P8e$acc) {
  %envptr10382 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10383 = getelementptr inbounds i64, i64* %envptr10382, i64 6                ; &envptr10382[6]
  %aKM$args = load i64, i64* %envptr10383, align 8                                   ; load; *envptr10383
  %envptr10384 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10385 = getelementptr inbounds i64, i64* %envptr10384, i64 5                ; &envptr10384[5]
  %Kpv$_37map1 = load i64, i64* %envptr10385, align 8                                ; load; *envptr10385
  %envptr10386 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10387 = getelementptr inbounds i64, i64* %envptr10386, i64 4                ; &envptr10386[4]
  %cont7207 = load i64, i64* %envptr10387, align 8                                   ; load; *envptr10387
  %envptr10388 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10389 = getelementptr inbounds i64, i64* %envptr10388, i64 3                ; &envptr10388[3]
  %Sl3$f = load i64, i64* %envptr10389, align 8                                      ; load; *envptr10389
  %envptr10390 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10391 = getelementptr inbounds i64, i64* %envptr10390, i64 2                ; &envptr10390[2]
  %lbw$_37foldr = load i64, i64* %envptr10391, align 8                               ; load; *envptr10391
  %envptr10392 = inttoptr i64 %env8221 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10393 = getelementptr inbounds i64, i64* %envptr10392, i64 1                ; &envptr10392[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10393, align 8                              ; load; *envptr10393
  %a6972 = call i64 @prim_cdr(i64 %aKM$args)                                         ; call prim_cdr
  %retprim7226 = call i64 @prim_cdr(i64 %a6972)                                      ; call prim_cdr
  %cloptr10394 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10396 = getelementptr inbounds i64, i64* %cloptr10394, i64 1                  ; &eptr10396[1]
  %eptr10397 = getelementptr inbounds i64, i64* %cloptr10394, i64 2                  ; &eptr10397[2]
  %eptr10398 = getelementptr inbounds i64, i64* %cloptr10394, i64 3                  ; &eptr10398[3]
  %eptr10399 = getelementptr inbounds i64, i64* %cloptr10394, i64 4                  ; &eptr10399[4]
  %eptr10400 = getelementptr inbounds i64, i64* %cloptr10394, i64 5                  ; &eptr10400[5]
  %eptr10401 = getelementptr inbounds i64, i64* %cloptr10394, i64 6                  ; &eptr10401[6]
  store i64 %sOd$_37foldr1, i64* %eptr10396                                          ; *eptr10396 = %sOd$_37foldr1
  store i64 %lbw$_37foldr, i64* %eptr10397                                           ; *eptr10397 = %lbw$_37foldr
  store i64 %Sl3$f, i64* %eptr10398                                                  ; *eptr10398 = %Sl3$f
  store i64 %cont7207, i64* %eptr10399                                               ; *eptr10399 = %cont7207
  store i64 %Kpv$_37map1, i64* %eptr10400                                            ; *eptr10400 = %Kpv$_37map1
  store i64 %P8e$acc, i64* %eptr10401                                                ; *eptr10401 = %P8e$acc
  %eptr10395 = getelementptr inbounds i64, i64* %cloptr10394, i64 0                  ; &cloptr10394[0]
  %f10402 = ptrtoint void(i64,i64,i64)* @lam8218 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10402, i64* %eptr10395                                                 ; store fptr
  %arg7940 = ptrtoint i64* %cloptr10394 to i64                                       ; closure cast; i64* -> i64
  %arg7939 = add i64 0, 0                                                            ; quoted ()
  %cloptr10403 = inttoptr i64 %arg7940 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10403)                                        ; assert function application
  %i0ptr10404 = getelementptr inbounds i64, i64* %cloptr10403, i64 0                 ; &cloptr10403[0]
  %f10406 = load i64, i64* %i0ptr10404, align 8                                      ; load; *i0ptr10404
  %fptr10405 = inttoptr i64 %f10406 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10405(i64 %arg7940, i64 %arg7939, i64 %retprim7226) ; tail call
  ret void
}


define void @lam8218(i64 %env8219, i64 %_957210, i64 %L5w$lsts) {
  %envptr10407 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10408 = getelementptr inbounds i64, i64* %envptr10407, i64 6                ; &envptr10407[6]
  %P8e$acc = load i64, i64* %envptr10408, align 8                                    ; load; *envptr10408
  %envptr10409 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10410 = getelementptr inbounds i64, i64* %envptr10409, i64 5                ; &envptr10409[5]
  %Kpv$_37map1 = load i64, i64* %envptr10410, align 8                                ; load; *envptr10410
  %envptr10411 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10412 = getelementptr inbounds i64, i64* %envptr10411, i64 4                ; &envptr10411[4]
  %cont7207 = load i64, i64* %envptr10412, align 8                                   ; load; *envptr10412
  %envptr10413 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10414 = getelementptr inbounds i64, i64* %envptr10413, i64 3                ; &envptr10413[3]
  %Sl3$f = load i64, i64* %envptr10414, align 8                                      ; load; *envptr10414
  %envptr10415 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10416 = getelementptr inbounds i64, i64* %envptr10415, i64 2                ; &envptr10415[2]
  %lbw$_37foldr = load i64, i64* %envptr10416, align 8                               ; load; *envptr10416
  %envptr10417 = inttoptr i64 %env8219 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10418 = getelementptr inbounds i64, i64* %envptr10417, i64 1                ; &envptr10417[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10418, align 8                              ; load; *envptr10418
  %cloptr10419 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10421 = getelementptr inbounds i64, i64* %cloptr10419, i64 1                  ; &eptr10421[1]
  %eptr10422 = getelementptr inbounds i64, i64* %cloptr10419, i64 2                  ; &eptr10422[2]
  %eptr10423 = getelementptr inbounds i64, i64* %cloptr10419, i64 3                  ; &eptr10423[3]
  %eptr10424 = getelementptr inbounds i64, i64* %cloptr10419, i64 4                  ; &eptr10424[4]
  %eptr10425 = getelementptr inbounds i64, i64* %cloptr10419, i64 5                  ; &eptr10425[5]
  %eptr10426 = getelementptr inbounds i64, i64* %cloptr10419, i64 6                  ; &eptr10426[6]
  %eptr10427 = getelementptr inbounds i64, i64* %cloptr10419, i64 7                  ; &eptr10427[7]
  store i64 %sOd$_37foldr1, i64* %eptr10421                                          ; *eptr10421 = %sOd$_37foldr1
  store i64 %lbw$_37foldr, i64* %eptr10422                                           ; *eptr10422 = %lbw$_37foldr
  store i64 %Sl3$f, i64* %eptr10423                                                  ; *eptr10423 = %Sl3$f
  store i64 %cont7207, i64* %eptr10424                                               ; *eptr10424 = %cont7207
  store i64 %L5w$lsts, i64* %eptr10425                                               ; *eptr10425 = %L5w$lsts
  store i64 %Kpv$_37map1, i64* %eptr10426                                            ; *eptr10426 = %Kpv$_37map1
  store i64 %P8e$acc, i64* %eptr10427                                                ; *eptr10427 = %P8e$acc
  %eptr10420 = getelementptr inbounds i64, i64* %cloptr10419, i64 0                  ; &cloptr10419[0]
  %f10428 = ptrtoint void(i64,i64,i64)* @lam8216 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10428, i64* %eptr10420                                                 ; store fptr
  %arg7944 = ptrtoint i64* %cloptr10419 to i64                                       ; closure cast; i64* -> i64
  %cloptr10429 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10430 = getelementptr inbounds i64, i64* %cloptr10429, i64 0                  ; &cloptr10429[0]
  %f10431 = ptrtoint void(i64,i64,i64,i64)* @lam8195 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10431, i64* %eptr10430                                                 ; store fptr
  %arg7943 = ptrtoint i64* %cloptr10429 to i64                                       ; closure cast; i64* -> i64
  %arg7942 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10432 = inttoptr i64 %sOd$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10432)                                        ; assert function application
  %i0ptr10433 = getelementptr inbounds i64, i64* %cloptr10432, i64 0                 ; &cloptr10432[0]
  %f10435 = load i64, i64* %i0ptr10433, align 8                                      ; load; *i0ptr10433
  %fptr10434 = inttoptr i64 %f10435 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10434(i64 %sOd$_37foldr1, i64 %arg7944, i64 %arg7943, i64 %arg7942, i64 %L5w$lsts); tail call
  ret void
}


define void @lam8216(i64 %env8217, i64 %_957211, i64 %a6973) {
  %envptr10436 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10437 = getelementptr inbounds i64, i64* %envptr10436, i64 7                ; &envptr10436[7]
  %P8e$acc = load i64, i64* %envptr10437, align 8                                    ; load; *envptr10437
  %envptr10438 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10439 = getelementptr inbounds i64, i64* %envptr10438, i64 6                ; &envptr10438[6]
  %Kpv$_37map1 = load i64, i64* %envptr10439, align 8                                ; load; *envptr10439
  %envptr10440 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10441 = getelementptr inbounds i64, i64* %envptr10440, i64 5                ; &envptr10440[5]
  %L5w$lsts = load i64, i64* %envptr10441, align 8                                   ; load; *envptr10441
  %envptr10442 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10443 = getelementptr inbounds i64, i64* %envptr10442, i64 4                ; &envptr10442[4]
  %cont7207 = load i64, i64* %envptr10443, align 8                                   ; load; *envptr10443
  %envptr10444 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10445 = getelementptr inbounds i64, i64* %envptr10444, i64 3                ; &envptr10444[3]
  %Sl3$f = load i64, i64* %envptr10445, align 8                                      ; load; *envptr10445
  %envptr10446 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10447 = getelementptr inbounds i64, i64* %envptr10446, i64 2                ; &envptr10446[2]
  %lbw$_37foldr = load i64, i64* %envptr10447, align 8                               ; load; *envptr10447
  %envptr10448 = inttoptr i64 %env8217 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10449 = getelementptr inbounds i64, i64* %envptr10448, i64 1                ; &envptr10448[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10449, align 8                              ; load; *envptr10449
  %cmp10450 = icmp eq i64 %a6973, 15                                                 ; false?
  br i1 %cmp10450, label %else10452, label %then10451                                ; if

then10451:
  %arg7947 = add i64 0, 0                                                            ; quoted ()
  %cloptr10453 = inttoptr i64 %cont7207 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10453)                                        ; assert function application
  %i0ptr10454 = getelementptr inbounds i64, i64* %cloptr10453, i64 0                 ; &cloptr10453[0]
  %f10456 = load i64, i64* %i0ptr10454, align 8                                      ; load; *i0ptr10454
  %fptr10455 = inttoptr i64 %f10456 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10455(i64 %cont7207, i64 %arg7947, i64 %P8e$acc)    ; tail call
  ret void

else10452:
  %cloptr10457 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10459 = getelementptr inbounds i64, i64* %cloptr10457, i64 1                  ; &eptr10459[1]
  %eptr10460 = getelementptr inbounds i64, i64* %cloptr10457, i64 2                  ; &eptr10460[2]
  %eptr10461 = getelementptr inbounds i64, i64* %cloptr10457, i64 3                  ; &eptr10461[3]
  %eptr10462 = getelementptr inbounds i64, i64* %cloptr10457, i64 4                  ; &eptr10462[4]
  %eptr10463 = getelementptr inbounds i64, i64* %cloptr10457, i64 5                  ; &eptr10463[5]
  %eptr10464 = getelementptr inbounds i64, i64* %cloptr10457, i64 6                  ; &eptr10464[6]
  %eptr10465 = getelementptr inbounds i64, i64* %cloptr10457, i64 7                  ; &eptr10465[7]
  store i64 %sOd$_37foldr1, i64* %eptr10459                                          ; *eptr10459 = %sOd$_37foldr1
  store i64 %lbw$_37foldr, i64* %eptr10460                                           ; *eptr10460 = %lbw$_37foldr
  store i64 %Sl3$f, i64* %eptr10461                                                  ; *eptr10461 = %Sl3$f
  store i64 %cont7207, i64* %eptr10462                                               ; *eptr10462 = %cont7207
  store i64 %L5w$lsts, i64* %eptr10463                                               ; *eptr10463 = %L5w$lsts
  store i64 %Kpv$_37map1, i64* %eptr10464                                            ; *eptr10464 = %Kpv$_37map1
  store i64 %P8e$acc, i64* %eptr10465                                                ; *eptr10465 = %P8e$acc
  %eptr10458 = getelementptr inbounds i64, i64* %cloptr10457, i64 0                  ; &cloptr10457[0]
  %f10466 = ptrtoint void(i64,i64,i64)* @lam8214 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10466, i64* %eptr10458                                                 ; store fptr
  %arg7951 = ptrtoint i64* %cloptr10457 to i64                                       ; closure cast; i64* -> i64
  %cloptr10467 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10468 = getelementptr inbounds i64, i64* %cloptr10467, i64 0                  ; &cloptr10467[0]
  %f10469 = ptrtoint void(i64,i64,i64)* @lam8199 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10469, i64* %eptr10468                                                 ; store fptr
  %arg7950 = ptrtoint i64* %cloptr10467 to i64                                       ; closure cast; i64* -> i64
  %cloptr10470 = inttoptr i64 %Kpv$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10470)                                        ; assert function application
  %i0ptr10471 = getelementptr inbounds i64, i64* %cloptr10470, i64 0                 ; &cloptr10470[0]
  %f10473 = load i64, i64* %i0ptr10471, align 8                                      ; load; *i0ptr10471
  %fptr10472 = inttoptr i64 %f10473 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10472(i64 %Kpv$_37map1, i64 %arg7951, i64 %arg7950, i64 %L5w$lsts); tail call
  ret void
}


define void @lam8214(i64 %env8215, i64 %_957212, i64 %px3$lsts_43) {
  %envptr10474 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10475 = getelementptr inbounds i64, i64* %envptr10474, i64 7                ; &envptr10474[7]
  %P8e$acc = load i64, i64* %envptr10475, align 8                                    ; load; *envptr10475
  %envptr10476 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10477 = getelementptr inbounds i64, i64* %envptr10476, i64 6                ; &envptr10476[6]
  %Kpv$_37map1 = load i64, i64* %envptr10477, align 8                                ; load; *envptr10477
  %envptr10478 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10479 = getelementptr inbounds i64, i64* %envptr10478, i64 5                ; &envptr10478[5]
  %L5w$lsts = load i64, i64* %envptr10479, align 8                                   ; load; *envptr10479
  %envptr10480 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10481 = getelementptr inbounds i64, i64* %envptr10480, i64 4                ; &envptr10480[4]
  %cont7207 = load i64, i64* %envptr10481, align 8                                   ; load; *envptr10481
  %envptr10482 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10483 = getelementptr inbounds i64, i64* %envptr10482, i64 3                ; &envptr10482[3]
  %Sl3$f = load i64, i64* %envptr10483, align 8                                      ; load; *envptr10483
  %envptr10484 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10485 = getelementptr inbounds i64, i64* %envptr10484, i64 2                ; &envptr10484[2]
  %lbw$_37foldr = load i64, i64* %envptr10485, align 8                               ; load; *envptr10485
  %envptr10486 = inttoptr i64 %env8215 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10487 = getelementptr inbounds i64, i64* %envptr10486, i64 1                ; &envptr10486[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10487, align 8                              ; load; *envptr10487
  %cloptr10488 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10490 = getelementptr inbounds i64, i64* %cloptr10488, i64 1                  ; &eptr10490[1]
  %eptr10491 = getelementptr inbounds i64, i64* %cloptr10488, i64 2                  ; &eptr10491[2]
  %eptr10492 = getelementptr inbounds i64, i64* %cloptr10488, i64 3                  ; &eptr10492[3]
  %eptr10493 = getelementptr inbounds i64, i64* %cloptr10488, i64 4                  ; &eptr10493[4]
  %eptr10494 = getelementptr inbounds i64, i64* %cloptr10488, i64 5                  ; &eptr10494[5]
  %eptr10495 = getelementptr inbounds i64, i64* %cloptr10488, i64 6                  ; &eptr10495[6]
  store i64 %sOd$_37foldr1, i64* %eptr10490                                          ; *eptr10490 = %sOd$_37foldr1
  store i64 %lbw$_37foldr, i64* %eptr10491                                           ; *eptr10491 = %lbw$_37foldr
  store i64 %Sl3$f, i64* %eptr10492                                                  ; *eptr10492 = %Sl3$f
  store i64 %cont7207, i64* %eptr10493                                               ; *eptr10493 = %cont7207
  store i64 %px3$lsts_43, i64* %eptr10494                                            ; *eptr10494 = %px3$lsts_43
  store i64 %P8e$acc, i64* %eptr10495                                                ; *eptr10495 = %P8e$acc
  %eptr10489 = getelementptr inbounds i64, i64* %cloptr10488, i64 0                  ; &cloptr10488[0]
  %f10496 = ptrtoint void(i64,i64,i64)* @lam8212 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10496, i64* %eptr10489                                                 ; store fptr
  %arg7955 = ptrtoint i64* %cloptr10488 to i64                                       ; closure cast; i64* -> i64
  %cloptr10497 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10498 = getelementptr inbounds i64, i64* %cloptr10497, i64 0                  ; &cloptr10497[0]
  %f10499 = ptrtoint void(i64,i64,i64)* @lam8202 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10499, i64* %eptr10498                                                 ; store fptr
  %arg7954 = ptrtoint i64* %cloptr10497 to i64                                       ; closure cast; i64* -> i64
  %cloptr10500 = inttoptr i64 %Kpv$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10500)                                        ; assert function application
  %i0ptr10501 = getelementptr inbounds i64, i64* %cloptr10500, i64 0                 ; &cloptr10500[0]
  %f10503 = load i64, i64* %i0ptr10501, align 8                                      ; load; *i0ptr10501
  %fptr10502 = inttoptr i64 %f10503 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10502(i64 %Kpv$_37map1, i64 %arg7955, i64 %arg7954, i64 %L5w$lsts); tail call
  ret void
}


define void @lam8212(i64 %env8213, i64 %_957213, i64 %UKo$vs) {
  %envptr10504 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10505 = getelementptr inbounds i64, i64* %envptr10504, i64 6                ; &envptr10504[6]
  %P8e$acc = load i64, i64* %envptr10505, align 8                                    ; load; *envptr10505
  %envptr10506 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10507 = getelementptr inbounds i64, i64* %envptr10506, i64 5                ; &envptr10506[5]
  %px3$lsts_43 = load i64, i64* %envptr10507, align 8                                ; load; *envptr10507
  %envptr10508 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10509 = getelementptr inbounds i64, i64* %envptr10508, i64 4                ; &envptr10508[4]
  %cont7207 = load i64, i64* %envptr10509, align 8                                   ; load; *envptr10509
  %envptr10510 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10511 = getelementptr inbounds i64, i64* %envptr10510, i64 3                ; &envptr10510[3]
  %Sl3$f = load i64, i64* %envptr10511, align 8                                      ; load; *envptr10511
  %envptr10512 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10513 = getelementptr inbounds i64, i64* %envptr10512, i64 2                ; &envptr10512[2]
  %lbw$_37foldr = load i64, i64* %envptr10513, align 8                               ; load; *envptr10513
  %envptr10514 = inttoptr i64 %env8213 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10515 = getelementptr inbounds i64, i64* %envptr10514, i64 1                ; &envptr10514[1]
  %sOd$_37foldr1 = load i64, i64* %envptr10515, align 8                              ; load; *envptr10515
  %a6974 = call i64 @prim_cons(i64 %P8e$acc, i64 %px3$lsts_43)                       ; call prim_cons
  %a6975 = call i64 @prim_cons(i64 %Sl3$f, i64 %a6974)                               ; call prim_cons
  %cloptr10516 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10518 = getelementptr inbounds i64, i64* %cloptr10516, i64 1                  ; &eptr10518[1]
  %eptr10519 = getelementptr inbounds i64, i64* %cloptr10516, i64 2                  ; &eptr10519[2]
  %eptr10520 = getelementptr inbounds i64, i64* %cloptr10516, i64 3                  ; &eptr10520[3]
  %eptr10521 = getelementptr inbounds i64, i64* %cloptr10516, i64 4                  ; &eptr10521[4]
  store i64 %UKo$vs, i64* %eptr10518                                                 ; *eptr10518 = %UKo$vs
  store i64 %sOd$_37foldr1, i64* %eptr10519                                          ; *eptr10519 = %sOd$_37foldr1
  store i64 %Sl3$f, i64* %eptr10520                                                  ; *eptr10520 = %Sl3$f
  store i64 %cont7207, i64* %eptr10521                                               ; *eptr10521 = %cont7207
  %eptr10517 = getelementptr inbounds i64, i64* %cloptr10516, i64 0                  ; &cloptr10516[0]
  %f10522 = ptrtoint void(i64,i64,i64)* @lam8210 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10522, i64* %eptr10517                                                 ; store fptr
  %arg7962 = ptrtoint i64* %cloptr10516 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7219 = call i64 @prim_cons(i64 %arg7962, i64 %a6975)                     ; call prim_cons
  %cloptr10523 = inttoptr i64 %lbw$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10523)                                        ; assert function application
  %i0ptr10524 = getelementptr inbounds i64, i64* %cloptr10523, i64 0                 ; &cloptr10523[0]
  %f10526 = load i64, i64* %i0ptr10524, align 8                                      ; load; *i0ptr10524
  %fptr10525 = inttoptr i64 %f10526 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10525(i64 %lbw$_37foldr, i64 %cps_45lst7219)        ; tail call
  ret void
}


define void @lam8210(i64 %env8211, i64 %_957214, i64 %a6976) {
  %envptr10527 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10528 = getelementptr inbounds i64, i64* %envptr10527, i64 4                ; &envptr10527[4]
  %cont7207 = load i64, i64* %envptr10528, align 8                                   ; load; *envptr10528
  %envptr10529 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10530 = getelementptr inbounds i64, i64* %envptr10529, i64 3                ; &envptr10529[3]
  %Sl3$f = load i64, i64* %envptr10530, align 8                                      ; load; *envptr10530
  %envptr10531 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10532 = getelementptr inbounds i64, i64* %envptr10531, i64 2                ; &envptr10531[2]
  %sOd$_37foldr1 = load i64, i64* %envptr10532, align 8                              ; load; *envptr10532
  %envptr10533 = inttoptr i64 %env8211 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10534 = getelementptr inbounds i64, i64* %envptr10533, i64 1                ; &envptr10533[1]
  %UKo$vs = load i64, i64* %envptr10534, align 8                                     ; load; *envptr10534
  %arg7963 = add i64 0, 0                                                            ; quoted ()
  %a6977 = call i64 @prim_cons(i64 %a6976, i64 %arg7963)                             ; call prim_cons
  %cloptr10535 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10537 = getelementptr inbounds i64, i64* %cloptr10535, i64 1                  ; &eptr10537[1]
  %eptr10538 = getelementptr inbounds i64, i64* %cloptr10535, i64 2                  ; &eptr10538[2]
  store i64 %Sl3$f, i64* %eptr10537                                                  ; *eptr10537 = %Sl3$f
  store i64 %cont7207, i64* %eptr10538                                               ; *eptr10538 = %cont7207
  %eptr10536 = getelementptr inbounds i64, i64* %cloptr10535, i64 0                  ; &cloptr10535[0]
  %f10539 = ptrtoint void(i64,i64,i64)* @lam8207 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10539, i64* %eptr10536                                                 ; store fptr
  %arg7968 = ptrtoint i64* %cloptr10535 to i64                                       ; closure cast; i64* -> i64
  %cloptr10540 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10541 = getelementptr inbounds i64, i64* %cloptr10540, i64 0                  ; &cloptr10540[0]
  %f10542 = ptrtoint void(i64,i64,i64,i64)* @lam8205 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10542, i64* %eptr10541                                                 ; store fptr
  %arg7967 = ptrtoint i64* %cloptr10540 to i64                                       ; closure cast; i64* -> i64
  %cloptr10543 = inttoptr i64 %sOd$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10543)                                        ; assert function application
  %i0ptr10544 = getelementptr inbounds i64, i64* %cloptr10543, i64 0                 ; &cloptr10543[0]
  %f10546 = load i64, i64* %i0ptr10544, align 8                                      ; load; *i0ptr10544
  %fptr10545 = inttoptr i64 %f10546 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10545(i64 %sOd$_37foldr1, i64 %arg7968, i64 %arg7967, i64 %a6977, i64 %UKo$vs); tail call
  ret void
}


define void @lam8207(i64 %env8208, i64 %_957215, i64 %a6978) {
  %envptr10547 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10548 = getelementptr inbounds i64, i64* %envptr10547, i64 2                ; &envptr10547[2]
  %cont7207 = load i64, i64* %envptr10548, align 8                                   ; load; *envptr10548
  %envptr10549 = inttoptr i64 %env8208 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10550 = getelementptr inbounds i64, i64* %envptr10549, i64 1                ; &envptr10549[1]
  %Sl3$f = load i64, i64* %envptr10550, align 8                                      ; load; *envptr10550
  %cps_45lst7216 = call i64 @prim_cons(i64 %cont7207, i64 %a6978)                    ; call prim_cons
  %cloptr10551 = inttoptr i64 %Sl3$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10551)                                        ; assert function application
  %i0ptr10552 = getelementptr inbounds i64, i64* %cloptr10551, i64 0                 ; &cloptr10551[0]
  %f10554 = load i64, i64* %i0ptr10552, align 8                                      ; load; *i0ptr10552
  %fptr10553 = inttoptr i64 %f10554 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10553(i64 %Sl3$f, i64 %cps_45lst7216)               ; tail call
  ret void
}


define void @lam8205(i64 %env8206, i64 %cont7217, i64 %MHs$a, i64 %kCC$b) {
  %retprim7218 = call i64 @prim_cons(i64 %MHs$a, i64 %kCC$b)                         ; call prim_cons
  %arg7975 = add i64 0, 0                                                            ; quoted ()
  %cloptr10555 = inttoptr i64 %cont7217 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10555)                                        ; assert function application
  %i0ptr10556 = getelementptr inbounds i64, i64* %cloptr10555, i64 0                 ; &cloptr10555[0]
  %f10558 = load i64, i64* %i0ptr10556, align 8                                      ; load; *i0ptr10556
  %fptr10557 = inttoptr i64 %f10558 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10557(i64 %cont7217, i64 %arg7975, i64 %retprim7218); tail call
  ret void
}


define void @lam8202(i64 %env8203, i64 %cont7220, i64 %XbQ$x) {
  %retprim7221 = call i64 @prim_car(i64 %XbQ$x)                                      ; call prim_car
  %arg7979 = add i64 0, 0                                                            ; quoted ()
  %cloptr10559 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10559)                                        ; assert function application
  %i0ptr10560 = getelementptr inbounds i64, i64* %cloptr10559, i64 0                 ; &cloptr10559[0]
  %f10562 = load i64, i64* %i0ptr10560, align 8                                      ; load; *i0ptr10560
  %fptr10561 = inttoptr i64 %f10562 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10561(i64 %cont7220, i64 %arg7979, i64 %retprim7221); tail call
  ret void
}


define void @lam8199(i64 %env8200, i64 %cont7222, i64 %aqA$x) {
  %retprim7223 = call i64 @prim_cdr(i64 %aqA$x)                                      ; call prim_cdr
  %arg7983 = add i64 0, 0                                                            ; quoted ()
  %cloptr10563 = inttoptr i64 %cont7222 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10563)                                        ; assert function application
  %i0ptr10564 = getelementptr inbounds i64, i64* %cloptr10563, i64 0                 ; &cloptr10563[0]
  %f10566 = load i64, i64* %i0ptr10564, align 8                                      ; load; *i0ptr10564
  %fptr10565 = inttoptr i64 %f10566 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10565(i64 %cont7222, i64 %arg7983, i64 %retprim7223); tail call
  ret void
}


define void @lam8195(i64 %env8196, i64 %cont7224, i64 %IVd$lst, i64 %ep6$b) {
  %cmp10567 = icmp eq i64 %ep6$b, 15                                                 ; false?
  br i1 %cmp10567, label %else10569, label %then10568                                ; if

then10568:
  %arg7986 = add i64 0, 0                                                            ; quoted ()
  %cloptr10570 = inttoptr i64 %cont7224 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10570)                                        ; assert function application
  %i0ptr10571 = getelementptr inbounds i64, i64* %cloptr10570, i64 0                 ; &cloptr10570[0]
  %f10573 = load i64, i64* %i0ptr10571, align 8                                      ; load; *i0ptr10571
  %fptr10572 = inttoptr i64 %f10573 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10572(i64 %cont7224, i64 %arg7986, i64 %ep6$b)      ; tail call
  ret void

else10569:
  %retprim7225 = call i64 @prim_null_63(i64 %IVd$lst)                                ; call prim_null_63
  %arg7990 = add i64 0, 0                                                            ; quoted ()
  %cloptr10574 = inttoptr i64 %cont7224 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10574)                                        ; assert function application
  %i0ptr10575 = getelementptr inbounds i64, i64* %cloptr10574, i64 0                 ; &cloptr10574[0]
  %f10577 = load i64, i64* %i0ptr10575, align 8                                      ; load; *i0ptr10575
  %fptr10576 = inttoptr i64 %f10577 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10576(i64 %cont7224, i64 %arg7990, i64 %retprim7225); tail call
  ret void
}


define void @lam8188(i64 %env8189, i64 %cont7228, i64 %IZH$_37foldl1) {
  %arg7993 = add i64 0, 0                                                            ; quoted ()
  %cloptr10578 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10580 = getelementptr inbounds i64, i64* %cloptr10578, i64 1                  ; &eptr10580[1]
  store i64 %IZH$_37foldl1, i64* %eptr10580                                          ; *eptr10580 = %IZH$_37foldl1
  %eptr10579 = getelementptr inbounds i64, i64* %cloptr10578, i64 0                  ; &cloptr10578[0]
  %f10581 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8185 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10581, i64* %eptr10579                                                 ; store fptr
  %arg7992 = ptrtoint i64* %cloptr10578 to i64                                       ; closure cast; i64* -> i64
  %cloptr10582 = inttoptr i64 %cont7228 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10582)                                        ; assert function application
  %i0ptr10583 = getelementptr inbounds i64, i64* %cloptr10582, i64 0                 ; &cloptr10582[0]
  %f10585 = load i64, i64* %i0ptr10583, align 8                                      ; load; *i0ptr10583
  %fptr10584 = inttoptr i64 %f10585 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10584(i64 %cont7228, i64 %arg7993, i64 %arg7992)    ; tail call
  ret void
}


define void @lam8185(i64 %env8186, i64 %cont7229, i64 %Vxs$f, i64 %M46$acc, i64 %api$lst) {
  %envptr10586 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10587 = getelementptr inbounds i64, i64* %envptr10586, i64 1                ; &envptr10586[1]
  %IZH$_37foldl1 = load i64, i64* %envptr10587, align 8                              ; load; *envptr10587
  %a6965 = call i64 @prim_null_63(i64 %api$lst)                                      ; call prim_null_63
  %cmp10588 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp10588, label %else10590, label %then10589                                ; if

then10589:
  %arg7997 = add i64 0, 0                                                            ; quoted ()
  %cloptr10591 = inttoptr i64 %cont7229 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10591)                                        ; assert function application
  %i0ptr10592 = getelementptr inbounds i64, i64* %cloptr10591, i64 0                 ; &cloptr10591[0]
  %f10594 = load i64, i64* %i0ptr10592, align 8                                      ; load; *i0ptr10592
  %fptr10593 = inttoptr i64 %f10594 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10593(i64 %cont7229, i64 %arg7997, i64 %M46$acc)    ; tail call
  ret void

else10590:
  %a6966 = call i64 @prim_car(i64 %api$lst)                                          ; call prim_car
  %cloptr10595 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10597 = getelementptr inbounds i64, i64* %cloptr10595, i64 1                  ; &eptr10597[1]
  %eptr10598 = getelementptr inbounds i64, i64* %cloptr10595, i64 2                  ; &eptr10598[2]
  %eptr10599 = getelementptr inbounds i64, i64* %cloptr10595, i64 3                  ; &eptr10599[3]
  %eptr10600 = getelementptr inbounds i64, i64* %cloptr10595, i64 4                  ; &eptr10600[4]
  store i64 %cont7229, i64* %eptr10597                                               ; *eptr10597 = %cont7229
  store i64 %IZH$_37foldl1, i64* %eptr10598                                          ; *eptr10598 = %IZH$_37foldl1
  store i64 %Vxs$f, i64* %eptr10599                                                  ; *eptr10599 = %Vxs$f
  store i64 %api$lst, i64* %eptr10600                                                ; *eptr10600 = %api$lst
  %eptr10596 = getelementptr inbounds i64, i64* %cloptr10595, i64 0                  ; &cloptr10595[0]
  %f10601 = ptrtoint void(i64,i64,i64)* @lam8183 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10601, i64* %eptr10596                                                 ; store fptr
  %arg8002 = ptrtoint i64* %cloptr10595 to i64                                       ; closure cast; i64* -> i64
  %cloptr10602 = inttoptr i64 %Vxs$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10602)                                        ; assert function application
  %i0ptr10603 = getelementptr inbounds i64, i64* %cloptr10602, i64 0                 ; &cloptr10602[0]
  %f10605 = load i64, i64* %i0ptr10603, align 8                                      ; load; *i0ptr10603
  %fptr10604 = inttoptr i64 %f10605 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10604(i64 %Vxs$f, i64 %arg8002, i64 %a6966, i64 %M46$acc); tail call
  ret void
}


define void @lam8183(i64 %env8184, i64 %_957230, i64 %a6967) {
  %envptr10606 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10607 = getelementptr inbounds i64, i64* %envptr10606, i64 4                ; &envptr10606[4]
  %api$lst = load i64, i64* %envptr10607, align 8                                    ; load; *envptr10607
  %envptr10608 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10609 = getelementptr inbounds i64, i64* %envptr10608, i64 3                ; &envptr10608[3]
  %Vxs$f = load i64, i64* %envptr10609, align 8                                      ; load; *envptr10609
  %envptr10610 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10611 = getelementptr inbounds i64, i64* %envptr10610, i64 2                ; &envptr10610[2]
  %IZH$_37foldl1 = load i64, i64* %envptr10611, align 8                              ; load; *envptr10611
  %envptr10612 = inttoptr i64 %env8184 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10613 = getelementptr inbounds i64, i64* %envptr10612, i64 1                ; &envptr10612[1]
  %cont7229 = load i64, i64* %envptr10613, align 8                                   ; load; *envptr10613
  %a6968 = call i64 @prim_cdr(i64 %api$lst)                                          ; call prim_cdr
  %cloptr10614 = inttoptr i64 %IZH$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10614)                                        ; assert function application
  %i0ptr10615 = getelementptr inbounds i64, i64* %cloptr10614, i64 0                 ; &cloptr10614[0]
  %f10617 = load i64, i64* %i0ptr10615, align 8                                      ; load; *i0ptr10615
  %fptr10616 = inttoptr i64 %f10617 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10616(i64 %IZH$_37foldl1, i64 %cont7229, i64 %Vxs$f, i64 %a6967, i64 %a6968); tail call
  ret void
}


define void @lam8180(i64 %env8181, i64 %cont7231, i64 %cRP$_37length) {
  %arg8011 = add i64 0, 0                                                            ; quoted ()
  %cloptr10618 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10620 = getelementptr inbounds i64, i64* %cloptr10618, i64 1                  ; &eptr10620[1]
  store i64 %cRP$_37length, i64* %eptr10620                                          ; *eptr10620 = %cRP$_37length
  %eptr10619 = getelementptr inbounds i64, i64* %cloptr10618, i64 0                  ; &cloptr10618[0]
  %f10621 = ptrtoint void(i64,i64,i64)* @lam8177 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10621, i64* %eptr10619                                                 ; store fptr
  %arg8010 = ptrtoint i64* %cloptr10618 to i64                                       ; closure cast; i64* -> i64
  %cloptr10622 = inttoptr i64 %cont7231 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10622)                                        ; assert function application
  %i0ptr10623 = getelementptr inbounds i64, i64* %cloptr10622, i64 0                 ; &cloptr10622[0]
  %f10625 = load i64, i64* %i0ptr10623, align 8                                      ; load; *i0ptr10623
  %fptr10624 = inttoptr i64 %f10625 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10624(i64 %cont7231, i64 %arg8011, i64 %arg8010)    ; tail call
  ret void
}


define void @lam8177(i64 %env8178, i64 %cont7232, i64 %gyb$lst) {
  %envptr10626 = inttoptr i64 %env8178 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10627 = getelementptr inbounds i64, i64* %envptr10626, i64 1                ; &envptr10626[1]
  %cRP$_37length = load i64, i64* %envptr10627, align 8                              ; load; *envptr10627
  %a6962 = call i64 @prim_null_63(i64 %gyb$lst)                                      ; call prim_null_63
  %cmp10628 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp10628, label %else10630, label %then10629                                ; if

then10629:
  %arg8015 = add i64 0, 0                                                            ; quoted ()
  %arg8014 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10631 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10631)                                        ; assert function application
  %i0ptr10632 = getelementptr inbounds i64, i64* %cloptr10631, i64 0                 ; &cloptr10631[0]
  %f10634 = load i64, i64* %i0ptr10632, align 8                                      ; load; *i0ptr10632
  %fptr10633 = inttoptr i64 %f10634 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10633(i64 %cont7232, i64 %arg8015, i64 %arg8014)    ; tail call
  ret void

else10630:
  %a6963 = call i64 @prim_cdr(i64 %gyb$lst)                                          ; call prim_cdr
  %cloptr10635 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10637 = getelementptr inbounds i64, i64* %cloptr10635, i64 1                  ; &eptr10637[1]
  store i64 %cont7232, i64* %eptr10637                                               ; *eptr10637 = %cont7232
  %eptr10636 = getelementptr inbounds i64, i64* %cloptr10635, i64 0                  ; &cloptr10635[0]
  %f10638 = ptrtoint void(i64,i64,i64)* @lam8175 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10638, i64* %eptr10636                                                 ; store fptr
  %arg8019 = ptrtoint i64* %cloptr10635 to i64                                       ; closure cast; i64* -> i64
  %cloptr10639 = inttoptr i64 %cRP$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10639)                                        ; assert function application
  %i0ptr10640 = getelementptr inbounds i64, i64* %cloptr10639, i64 0                 ; &cloptr10639[0]
  %f10642 = load i64, i64* %i0ptr10640, align 8                                      ; load; *i0ptr10640
  %fptr10641 = inttoptr i64 %f10642 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10641(i64 %cRP$_37length, i64 %arg8019, i64 %a6963) ; tail call
  ret void
}


define void @lam8175(i64 %env8176, i64 %_957233, i64 %a6964) {
  %envptr10643 = inttoptr i64 %env8176 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10644 = getelementptr inbounds i64, i64* %envptr10643, i64 1                ; &envptr10643[1]
  %cont7232 = load i64, i64* %envptr10644, align 8                                   ; load; *envptr10644
  %arg8022 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7234 = call i64 @prim__43(i64 %arg8022, i64 %a6964)                        ; call prim__43
  %arg8024 = add i64 0, 0                                                            ; quoted ()
  %cloptr10645 = inttoptr i64 %cont7232 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10645)                                        ; assert function application
  %i0ptr10646 = getelementptr inbounds i64, i64* %cloptr10645, i64 0                 ; &cloptr10645[0]
  %f10648 = load i64, i64* %i0ptr10646, align 8                                      ; load; *i0ptr10646
  %fptr10647 = inttoptr i64 %f10648 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10647(i64 %cont7232, i64 %arg8024, i64 %retprim7234); tail call
  ret void
}


define void @lam8169(i64 %env8170, i64 %cont7235, i64 %qyh$_37take) {
  %arg8027 = add i64 0, 0                                                            ; quoted ()
  %cloptr10649 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10651 = getelementptr inbounds i64, i64* %cloptr10649, i64 1                  ; &eptr10651[1]
  store i64 %qyh$_37take, i64* %eptr10651                                            ; *eptr10651 = %qyh$_37take
  %eptr10650 = getelementptr inbounds i64, i64* %cloptr10649, i64 0                  ; &cloptr10649[0]
  %f10652 = ptrtoint void(i64,i64,i64,i64)* @lam8166 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10652, i64* %eptr10650                                                 ; store fptr
  %arg8026 = ptrtoint i64* %cloptr10649 to i64                                       ; closure cast; i64* -> i64
  %cloptr10653 = inttoptr i64 %cont7235 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10653)                                        ; assert function application
  %i0ptr10654 = getelementptr inbounds i64, i64* %cloptr10653, i64 0                 ; &cloptr10653[0]
  %f10656 = load i64, i64* %i0ptr10654, align 8                                      ; load; *i0ptr10654
  %fptr10655 = inttoptr i64 %f10656 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10655(i64 %cont7235, i64 %arg8027, i64 %arg8026)    ; tail call
  ret void
}


define void @lam8166(i64 %env8167, i64 %cont7236, i64 %M8D$lst, i64 %O4m$n) {
  %envptr10657 = inttoptr i64 %env8167 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10658 = getelementptr inbounds i64, i64* %envptr10657, i64 1                ; &envptr10657[1]
  %qyh$_37take = load i64, i64* %envptr10658, align 8                                ; load; *envptr10658
  %arg8029 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim__61(i64 %O4m$n, i64 %arg8029)                              ; call prim__61
  %cmp10659 = icmp eq i64 %a6956, 15                                                 ; false?
  br i1 %cmp10659, label %else10661, label %then10660                                ; if

then10660:
  %arg8032 = add i64 0, 0                                                            ; quoted ()
  %arg8031 = add i64 0, 0                                                            ; quoted ()
  %cloptr10662 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10662)                                        ; assert function application
  %i0ptr10663 = getelementptr inbounds i64, i64* %cloptr10662, i64 0                 ; &cloptr10662[0]
  %f10665 = load i64, i64* %i0ptr10663, align 8                                      ; load; *i0ptr10663
  %fptr10664 = inttoptr i64 %f10665 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10664(i64 %cont7236, i64 %arg8032, i64 %arg8031)    ; tail call
  ret void

else10661:
  %a6957 = call i64 @prim_null_63(i64 %M8D$lst)                                      ; call prim_null_63
  %cmp10666 = icmp eq i64 %a6957, 15                                                 ; false?
  br i1 %cmp10666, label %else10668, label %then10667                                ; if

then10667:
  %arg8036 = add i64 0, 0                                                            ; quoted ()
  %arg8035 = add i64 0, 0                                                            ; quoted ()
  %cloptr10669 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10669)                                        ; assert function application
  %i0ptr10670 = getelementptr inbounds i64, i64* %cloptr10669, i64 0                 ; &cloptr10669[0]
  %f10672 = load i64, i64* %i0ptr10670, align 8                                      ; load; *i0ptr10670
  %fptr10671 = inttoptr i64 %f10672 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10671(i64 %cont7236, i64 %arg8036, i64 %arg8035)    ; tail call
  ret void

else10668:
  %a6958 = call i64 @prim_car(i64 %M8D$lst)                                          ; call prim_car
  %a6959 = call i64 @prim_cdr(i64 %M8D$lst)                                          ; call prim_cdr
  %arg8040 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6960 = call i64 @prim__45(i64 %O4m$n, i64 %arg8040)                              ; call prim__45
  %cloptr10673 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10675 = getelementptr inbounds i64, i64* %cloptr10673, i64 1                  ; &eptr10675[1]
  %eptr10676 = getelementptr inbounds i64, i64* %cloptr10673, i64 2                  ; &eptr10676[2]
  store i64 %cont7236, i64* %eptr10675                                               ; *eptr10675 = %cont7236
  store i64 %a6958, i64* %eptr10676                                                  ; *eptr10676 = %a6958
  %eptr10674 = getelementptr inbounds i64, i64* %cloptr10673, i64 0                  ; &cloptr10673[0]
  %f10677 = ptrtoint void(i64,i64,i64)* @lam8162 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10677, i64* %eptr10674                                                 ; store fptr
  %arg8044 = ptrtoint i64* %cloptr10673 to i64                                       ; closure cast; i64* -> i64
  %cloptr10678 = inttoptr i64 %qyh$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10678)                                        ; assert function application
  %i0ptr10679 = getelementptr inbounds i64, i64* %cloptr10678, i64 0                 ; &cloptr10678[0]
  %f10681 = load i64, i64* %i0ptr10679, align 8                                      ; load; *i0ptr10679
  %fptr10680 = inttoptr i64 %f10681 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10680(i64 %qyh$_37take, i64 %arg8044, i64 %a6959, i64 %a6960); tail call
  ret void
}


define void @lam8162(i64 %env8163, i64 %_957237, i64 %a6961) {
  %envptr10682 = inttoptr i64 %env8163 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10683 = getelementptr inbounds i64, i64* %envptr10682, i64 2                ; &envptr10682[2]
  %a6958 = load i64, i64* %envptr10683, align 8                                      ; load; *envptr10683
  %envptr10684 = inttoptr i64 %env8163 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10685 = getelementptr inbounds i64, i64* %envptr10684, i64 1                ; &envptr10684[1]
  %cont7236 = load i64, i64* %envptr10685, align 8                                   ; load; *envptr10685
  %retprim7238 = call i64 @prim_cons(i64 %a6958, i64 %a6961)                         ; call prim_cons
  %arg8049 = add i64 0, 0                                                            ; quoted ()
  %cloptr10686 = inttoptr i64 %cont7236 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10686)                                        ; assert function application
  %i0ptr10687 = getelementptr inbounds i64, i64* %cloptr10686, i64 0                 ; &cloptr10686[0]
  %f10689 = load i64, i64* %i0ptr10687, align 8                                      ; load; *i0ptr10687
  %fptr10688 = inttoptr i64 %f10689 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10688(i64 %cont7236, i64 %arg8049, i64 %retprim7238); tail call
  ret void
}


define void @lam8155(i64 %env8156, i64 %cont7239, i64 %We7$_37map) {
  %arg8052 = add i64 0, 0                                                            ; quoted ()
  %cloptr10690 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10692 = getelementptr inbounds i64, i64* %cloptr10690, i64 1                  ; &eptr10692[1]
  store i64 %We7$_37map, i64* %eptr10692                                             ; *eptr10692 = %We7$_37map
  %eptr10691 = getelementptr inbounds i64, i64* %cloptr10690, i64 0                  ; &cloptr10690[0]
  %f10693 = ptrtoint void(i64,i64,i64,i64)* @lam8152 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10693, i64* %eptr10691                                                 ; store fptr
  %arg8051 = ptrtoint i64* %cloptr10690 to i64                                       ; closure cast; i64* -> i64
  %cloptr10694 = inttoptr i64 %cont7239 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10694)                                        ; assert function application
  %i0ptr10695 = getelementptr inbounds i64, i64* %cloptr10694, i64 0                 ; &cloptr10694[0]
  %f10697 = load i64, i64* %i0ptr10695, align 8                                      ; load; *i0ptr10695
  %fptr10696 = inttoptr i64 %f10697 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10696(i64 %cont7239, i64 %arg8052, i64 %arg8051)    ; tail call
  ret void
}


define void @lam8152(i64 %env8153, i64 %cont7240, i64 %k6F$f, i64 %Gvu$lst) {
  %envptr10698 = inttoptr i64 %env8153 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10699 = getelementptr inbounds i64, i64* %envptr10698, i64 1                ; &envptr10698[1]
  %We7$_37map = load i64, i64* %envptr10699, align 8                                 ; load; *envptr10699
  %a6951 = call i64 @prim_null_63(i64 %Gvu$lst)                                      ; call prim_null_63
  %cmp10700 = icmp eq i64 %a6951, 15                                                 ; false?
  br i1 %cmp10700, label %else10702, label %then10701                                ; if

then10701:
  %arg8056 = add i64 0, 0                                                            ; quoted ()
  %arg8055 = add i64 0, 0                                                            ; quoted ()
  %cloptr10703 = inttoptr i64 %cont7240 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10703)                                        ; assert function application
  %i0ptr10704 = getelementptr inbounds i64, i64* %cloptr10703, i64 0                 ; &cloptr10703[0]
  %f10706 = load i64, i64* %i0ptr10704, align 8                                      ; load; *i0ptr10704
  %fptr10705 = inttoptr i64 %f10706 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10705(i64 %cont7240, i64 %arg8056, i64 %arg8055)    ; tail call
  ret void

else10702:
  %a6952 = call i64 @prim_car(i64 %Gvu$lst)                                          ; call prim_car
  %cloptr10707 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10709 = getelementptr inbounds i64, i64* %cloptr10707, i64 1                  ; &eptr10709[1]
  %eptr10710 = getelementptr inbounds i64, i64* %cloptr10707, i64 2                  ; &eptr10710[2]
  %eptr10711 = getelementptr inbounds i64, i64* %cloptr10707, i64 3                  ; &eptr10711[3]
  %eptr10712 = getelementptr inbounds i64, i64* %cloptr10707, i64 4                  ; &eptr10712[4]
  store i64 %cont7240, i64* %eptr10709                                               ; *eptr10709 = %cont7240
  store i64 %We7$_37map, i64* %eptr10710                                             ; *eptr10710 = %We7$_37map
  store i64 %k6F$f, i64* %eptr10711                                                  ; *eptr10711 = %k6F$f
  store i64 %Gvu$lst, i64* %eptr10712                                                ; *eptr10712 = %Gvu$lst
  %eptr10708 = getelementptr inbounds i64, i64* %cloptr10707, i64 0                  ; &cloptr10707[0]
  %f10713 = ptrtoint void(i64,i64,i64)* @lam8150 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10713, i64* %eptr10708                                                 ; store fptr
  %arg8060 = ptrtoint i64* %cloptr10707 to i64                                       ; closure cast; i64* -> i64
  %cloptr10714 = inttoptr i64 %k6F$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10714)                                        ; assert function application
  %i0ptr10715 = getelementptr inbounds i64, i64* %cloptr10714, i64 0                 ; &cloptr10714[0]
  %f10717 = load i64, i64* %i0ptr10715, align 8                                      ; load; *i0ptr10715
  %fptr10716 = inttoptr i64 %f10717 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10716(i64 %k6F$f, i64 %arg8060, i64 %a6952)         ; tail call
  ret void
}


define void @lam8150(i64 %env8151, i64 %_957241, i64 %a6953) {
  %envptr10718 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10719 = getelementptr inbounds i64, i64* %envptr10718, i64 4                ; &envptr10718[4]
  %Gvu$lst = load i64, i64* %envptr10719, align 8                                    ; load; *envptr10719
  %envptr10720 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10721 = getelementptr inbounds i64, i64* %envptr10720, i64 3                ; &envptr10720[3]
  %k6F$f = load i64, i64* %envptr10721, align 8                                      ; load; *envptr10721
  %envptr10722 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10723 = getelementptr inbounds i64, i64* %envptr10722, i64 2                ; &envptr10722[2]
  %We7$_37map = load i64, i64* %envptr10723, align 8                                 ; load; *envptr10723
  %envptr10724 = inttoptr i64 %env8151 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10725 = getelementptr inbounds i64, i64* %envptr10724, i64 1                ; &envptr10724[1]
  %cont7240 = load i64, i64* %envptr10725, align 8                                   ; load; *envptr10725
  %a6954 = call i64 @prim_cdr(i64 %Gvu$lst)                                          ; call prim_cdr
  %cloptr10726 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10728 = getelementptr inbounds i64, i64* %cloptr10726, i64 1                  ; &eptr10728[1]
  %eptr10729 = getelementptr inbounds i64, i64* %cloptr10726, i64 2                  ; &eptr10729[2]
  store i64 %cont7240, i64* %eptr10728                                               ; *eptr10728 = %cont7240
  store i64 %a6953, i64* %eptr10729                                                  ; *eptr10729 = %a6953
  %eptr10727 = getelementptr inbounds i64, i64* %cloptr10726, i64 0                  ; &cloptr10726[0]
  %f10730 = ptrtoint void(i64,i64,i64)* @lam8148 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10730, i64* %eptr10727                                                 ; store fptr
  %arg8065 = ptrtoint i64* %cloptr10726 to i64                                       ; closure cast; i64* -> i64
  %cloptr10731 = inttoptr i64 %We7$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10731)                                        ; assert function application
  %i0ptr10732 = getelementptr inbounds i64, i64* %cloptr10731, i64 0                 ; &cloptr10731[0]
  %f10734 = load i64, i64* %i0ptr10732, align 8                                      ; load; *i0ptr10732
  %fptr10733 = inttoptr i64 %f10734 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10733(i64 %We7$_37map, i64 %arg8065, i64 %k6F$f, i64 %a6954); tail call
  ret void
}


define void @lam8148(i64 %env8149, i64 %_957242, i64 %a6955) {
  %envptr10735 = inttoptr i64 %env8149 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10736 = getelementptr inbounds i64, i64* %envptr10735, i64 2                ; &envptr10735[2]
  %a6953 = load i64, i64* %envptr10736, align 8                                      ; load; *envptr10736
  %envptr10737 = inttoptr i64 %env8149 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10738 = getelementptr inbounds i64, i64* %envptr10737, i64 1                ; &envptr10737[1]
  %cont7240 = load i64, i64* %envptr10738, align 8                                   ; load; *envptr10738
  %retprim7243 = call i64 @prim_cons(i64 %a6953, i64 %a6955)                         ; call prim_cons
  %arg8070 = add i64 0, 0                                                            ; quoted ()
  %cloptr10739 = inttoptr i64 %cont7240 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10739)                                        ; assert function application
  %i0ptr10740 = getelementptr inbounds i64, i64* %cloptr10739, i64 0                 ; &cloptr10739[0]
  %f10742 = load i64, i64* %i0ptr10740, align 8                                      ; load; *i0ptr10740
  %fptr10741 = inttoptr i64 %f10742 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10741(i64 %cont7240, i64 %arg8070, i64 %retprim7243); tail call
  ret void
}


define void @lam8143(i64 %env8144, i64 %cont7244, i64 %Onf$_37foldr1) {
  %arg8073 = add i64 0, 0                                                            ; quoted ()
  %cloptr10743 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10745 = getelementptr inbounds i64, i64* %cloptr10743, i64 1                  ; &eptr10745[1]
  store i64 %Onf$_37foldr1, i64* %eptr10745                                          ; *eptr10745 = %Onf$_37foldr1
  %eptr10744 = getelementptr inbounds i64, i64* %cloptr10743, i64 0                  ; &cloptr10743[0]
  %f10746 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8140 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10746, i64* %eptr10744                                                 ; store fptr
  %arg8072 = ptrtoint i64* %cloptr10743 to i64                                       ; closure cast; i64* -> i64
  %cloptr10747 = inttoptr i64 %cont7244 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10747)                                        ; assert function application
  %i0ptr10748 = getelementptr inbounds i64, i64* %cloptr10747, i64 0                 ; &cloptr10747[0]
  %f10750 = load i64, i64* %i0ptr10748, align 8                                      ; load; *i0ptr10748
  %fptr10749 = inttoptr i64 %f10750 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10749(i64 %cont7244, i64 %arg8073, i64 %arg8072)    ; tail call
  ret void
}


define void @lam8140(i64 %env8141, i64 %cont7245, i64 %Ts2$f, i64 %HoY$acc, i64 %WxH$lst) {
  %envptr10751 = inttoptr i64 %env8141 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10752 = getelementptr inbounds i64, i64* %envptr10751, i64 1                ; &envptr10751[1]
  %Onf$_37foldr1 = load i64, i64* %envptr10752, align 8                              ; load; *envptr10752
  %a6947 = call i64 @prim_null_63(i64 %WxH$lst)                                      ; call prim_null_63
  %cmp10753 = icmp eq i64 %a6947, 15                                                 ; false?
  br i1 %cmp10753, label %else10755, label %then10754                                ; if

then10754:
  %arg8077 = add i64 0, 0                                                            ; quoted ()
  %cloptr10756 = inttoptr i64 %cont7245 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10756)                                        ; assert function application
  %i0ptr10757 = getelementptr inbounds i64, i64* %cloptr10756, i64 0                 ; &cloptr10756[0]
  %f10759 = load i64, i64* %i0ptr10757, align 8                                      ; load; *i0ptr10757
  %fptr10758 = inttoptr i64 %f10759 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10758(i64 %cont7245, i64 %arg8077, i64 %HoY$acc)    ; tail call
  ret void

else10755:
  %a6948 = call i64 @prim_car(i64 %WxH$lst)                                          ; call prim_car
  %a6949 = call i64 @prim_cdr(i64 %WxH$lst)                                          ; call prim_cdr
  %cloptr10760 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10762 = getelementptr inbounds i64, i64* %cloptr10760, i64 1                  ; &eptr10762[1]
  %eptr10763 = getelementptr inbounds i64, i64* %cloptr10760, i64 2                  ; &eptr10763[2]
  %eptr10764 = getelementptr inbounds i64, i64* %cloptr10760, i64 3                  ; &eptr10764[3]
  store i64 %a6948, i64* %eptr10762                                                  ; *eptr10762 = %a6948
  store i64 %Ts2$f, i64* %eptr10763                                                  ; *eptr10763 = %Ts2$f
  store i64 %cont7245, i64* %eptr10764                                               ; *eptr10764 = %cont7245
  %eptr10761 = getelementptr inbounds i64, i64* %cloptr10760, i64 0                  ; &cloptr10760[0]
  %f10765 = ptrtoint void(i64,i64,i64)* @lam8138 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10765, i64* %eptr10761                                                 ; store fptr
  %arg8084 = ptrtoint i64* %cloptr10760 to i64                                       ; closure cast; i64* -> i64
  %cloptr10766 = inttoptr i64 %Onf$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10766)                                        ; assert function application
  %i0ptr10767 = getelementptr inbounds i64, i64* %cloptr10766, i64 0                 ; &cloptr10766[0]
  %f10769 = load i64, i64* %i0ptr10767, align 8                                      ; load; *i0ptr10767
  %fptr10768 = inttoptr i64 %f10769 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10768(i64 %Onf$_37foldr1, i64 %arg8084, i64 %Ts2$f, i64 %HoY$acc, i64 %a6949); tail call
  ret void
}


define void @lam8138(i64 %env8139, i64 %_957246, i64 %a6950) {
  %envptr10770 = inttoptr i64 %env8139 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10771 = getelementptr inbounds i64, i64* %envptr10770, i64 3                ; &envptr10770[3]
  %cont7245 = load i64, i64* %envptr10771, align 8                                   ; load; *envptr10771
  %envptr10772 = inttoptr i64 %env8139 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10773 = getelementptr inbounds i64, i64* %envptr10772, i64 2                ; &envptr10772[2]
  %Ts2$f = load i64, i64* %envptr10773, align 8                                      ; load; *envptr10773
  %envptr10774 = inttoptr i64 %env8139 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10775 = getelementptr inbounds i64, i64* %envptr10774, i64 1                ; &envptr10774[1]
  %a6948 = load i64, i64* %envptr10775, align 8                                      ; load; *envptr10775
  %cloptr10776 = inttoptr i64 %Ts2$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10776)                                        ; assert function application
  %i0ptr10777 = getelementptr inbounds i64, i64* %cloptr10776, i64 0                 ; &cloptr10776[0]
  %f10779 = load i64, i64* %i0ptr10777, align 8                                      ; load; *i0ptr10777
  %fptr10778 = inttoptr i64 %f10779 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10778(i64 %Ts2$f, i64 %cont7245, i64 %a6948, i64 %a6950); tail call
  ret void
}


define void @lam8135(i64 %env8136, i64 %cont7248, i64 %C4W$y) {
  %arg8091 = add i64 0, 0                                                            ; quoted ()
  %cloptr10780 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10782 = getelementptr inbounds i64, i64* %cloptr10780, i64 1                  ; &eptr10782[1]
  store i64 %C4W$y, i64* %eptr10782                                                  ; *eptr10782 = %C4W$y
  %eptr10781 = getelementptr inbounds i64, i64* %cloptr10780, i64 0                  ; &cloptr10780[0]
  %f10783 = ptrtoint void(i64,i64,i64)* @lam8132 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10783, i64* %eptr10781                                                 ; store fptr
  %arg8090 = ptrtoint i64* %cloptr10780 to i64                                       ; closure cast; i64* -> i64
  %cloptr10784 = inttoptr i64 %cont7248 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10784)                                        ; assert function application
  %i0ptr10785 = getelementptr inbounds i64, i64* %cloptr10784, i64 0                 ; &cloptr10784[0]
  %f10787 = load i64, i64* %i0ptr10785, align 8                                      ; load; *i0ptr10785
  %fptr10786 = inttoptr i64 %f10787 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10786(i64 %cont7248, i64 %arg8091, i64 %arg8090)    ; tail call
  ret void
}


define void @lam8132(i64 %env8133, i64 %cont7249, i64 %pPh$f) {
  %envptr10788 = inttoptr i64 %env8133 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10789 = getelementptr inbounds i64, i64* %envptr10788, i64 1                ; &envptr10788[1]
  %C4W$y = load i64, i64* %envptr10789, align 8                                      ; load; *envptr10789
  %cloptr10790 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10792 = getelementptr inbounds i64, i64* %cloptr10790, i64 1                  ; &eptr10792[1]
  %eptr10793 = getelementptr inbounds i64, i64* %cloptr10790, i64 2                  ; &eptr10793[2]
  store i64 %pPh$f, i64* %eptr10792                                                  ; *eptr10792 = %pPh$f
  store i64 %C4W$y, i64* %eptr10793                                                  ; *eptr10793 = %C4W$y
  %eptr10791 = getelementptr inbounds i64, i64* %cloptr10790, i64 0                  ; &cloptr10790[0]
  %f10794 = ptrtoint void(i64,i64)* @lam8130 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10794, i64* %eptr10791                                                 ; store fptr
  %arg8093 = ptrtoint i64* %cloptr10790 to i64                                       ; closure cast; i64* -> i64
  %cloptr10795 = inttoptr i64 %pPh$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10795)                                        ; assert function application
  %i0ptr10796 = getelementptr inbounds i64, i64* %cloptr10795, i64 0                 ; &cloptr10795[0]
  %f10798 = load i64, i64* %i0ptr10796, align 8                                      ; load; *i0ptr10796
  %fptr10797 = inttoptr i64 %f10798 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10797(i64 %pPh$f, i64 %cont7249, i64 %arg8093)      ; tail call
  ret void
}


define void @lam8130(i64 %env8131, i64 %RTf$args7251) {
  %envptr10799 = inttoptr i64 %env8131 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10800 = getelementptr inbounds i64, i64* %envptr10799, i64 2                ; &envptr10799[2]
  %C4W$y = load i64, i64* %envptr10800, align 8                                      ; load; *envptr10800
  %envptr10801 = inttoptr i64 %env8131 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10802 = getelementptr inbounds i64, i64* %envptr10801, i64 1                ; &envptr10801[1]
  %pPh$f = load i64, i64* %envptr10802, align 8                                      ; load; *envptr10802
  %cont7250 = call i64 @prim_car(i64 %RTf$args7251)                                  ; call prim_car
  %RTf$args = call i64 @prim_cdr(i64 %RTf$args7251)                                  ; call prim_cdr
  %cloptr10803 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10805 = getelementptr inbounds i64, i64* %cloptr10803, i64 1                  ; &eptr10805[1]
  %eptr10806 = getelementptr inbounds i64, i64* %cloptr10803, i64 2                  ; &eptr10806[2]
  %eptr10807 = getelementptr inbounds i64, i64* %cloptr10803, i64 3                  ; &eptr10807[3]
  store i64 %cont7250, i64* %eptr10805                                               ; *eptr10805 = %cont7250
  store i64 %RTf$args, i64* %eptr10806                                               ; *eptr10806 = %RTf$args
  store i64 %pPh$f, i64* %eptr10807                                                  ; *eptr10807 = %pPh$f
  %eptr10804 = getelementptr inbounds i64, i64* %cloptr10803, i64 0                  ; &cloptr10803[0]
  %f10808 = ptrtoint void(i64,i64,i64)* @lam8128 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10808, i64* %eptr10804                                                 ; store fptr
  %arg8099 = ptrtoint i64* %cloptr10803 to i64                                       ; closure cast; i64* -> i64
  %cloptr10809 = inttoptr i64 %C4W$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10809)                                        ; assert function application
  %i0ptr10810 = getelementptr inbounds i64, i64* %cloptr10809, i64 0                 ; &cloptr10809[0]
  %f10812 = load i64, i64* %i0ptr10810, align 8                                      ; load; *i0ptr10810
  %fptr10811 = inttoptr i64 %f10812 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10811(i64 %C4W$y, i64 %arg8099, i64 %C4W$y)         ; tail call
  ret void
}


define void @lam8128(i64 %env8129, i64 %_957252, i64 %a6945) {
  %envptr10813 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10814 = getelementptr inbounds i64, i64* %envptr10813, i64 3                ; &envptr10813[3]
  %pPh$f = load i64, i64* %envptr10814, align 8                                      ; load; *envptr10814
  %envptr10815 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10816 = getelementptr inbounds i64, i64* %envptr10815, i64 2                ; &envptr10815[2]
  %RTf$args = load i64, i64* %envptr10816, align 8                                   ; load; *envptr10816
  %envptr10817 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10818 = getelementptr inbounds i64, i64* %envptr10817, i64 1                ; &envptr10817[1]
  %cont7250 = load i64, i64* %envptr10818, align 8                                   ; load; *envptr10818
  %cloptr10819 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10821 = getelementptr inbounds i64, i64* %cloptr10819, i64 1                  ; &eptr10821[1]
  %eptr10822 = getelementptr inbounds i64, i64* %cloptr10819, i64 2                  ; &eptr10822[2]
  store i64 %cont7250, i64* %eptr10821                                               ; *eptr10821 = %cont7250
  store i64 %RTf$args, i64* %eptr10822                                               ; *eptr10822 = %RTf$args
  %eptr10820 = getelementptr inbounds i64, i64* %cloptr10819, i64 0                  ; &cloptr10819[0]
  %f10823 = ptrtoint void(i64,i64,i64)* @lam8126 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10823, i64* %eptr10820                                                 ; store fptr
  %arg8102 = ptrtoint i64* %cloptr10819 to i64                                       ; closure cast; i64* -> i64
  %cloptr10824 = inttoptr i64 %a6945 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10824)                                        ; assert function application
  %i0ptr10825 = getelementptr inbounds i64, i64* %cloptr10824, i64 0                 ; &cloptr10824[0]
  %f10827 = load i64, i64* %i0ptr10825, align 8                                      ; load; *i0ptr10825
  %fptr10826 = inttoptr i64 %f10827 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10826(i64 %a6945, i64 %arg8102, i64 %pPh$f)         ; tail call
  ret void
}


define void @lam8126(i64 %env8127, i64 %_957253, i64 %a6946) {
  %envptr10828 = inttoptr i64 %env8127 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10829 = getelementptr inbounds i64, i64* %envptr10828, i64 2                ; &envptr10828[2]
  %RTf$args = load i64, i64* %envptr10829, align 8                                   ; load; *envptr10829
  %envptr10830 = inttoptr i64 %env8127 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10831 = getelementptr inbounds i64, i64* %envptr10830, i64 1                ; &envptr10830[1]
  %cont7250 = load i64, i64* %envptr10831, align 8                                   ; load; *envptr10831
  %cps_45lst7254 = call i64 @prim_cons(i64 %cont7250, i64 %RTf$args)                 ; call prim_cons
  %cloptr10832 = inttoptr i64 %a6946 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10832)                                        ; assert function application
  %i0ptr10833 = getelementptr inbounds i64, i64* %cloptr10832, i64 0                 ; &cloptr10832[0]
  %f10835 = load i64, i64* %i0ptr10833, align 8                                      ; load; *i0ptr10833
  %fptr10834 = inttoptr i64 %f10835 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10834(i64 %a6946, i64 %cps_45lst7254)               ; tail call
  ret void
}





@sym9398 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
