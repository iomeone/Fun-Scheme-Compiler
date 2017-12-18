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
  %cloptr108684 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108685 = getelementptr inbounds i64, i64* %cloptr108684, i64 0                ; &cloptr108684[0]
  %f108686 = ptrtoint void(i64,i64,i64)* @lam108682 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108686, i64* %eptr108685                                               ; store fptr
  %arg106973 = ptrtoint i64* %cloptr108684 to i64                                    ; closure cast; i64* -> i64
  %cloptr108687 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108688 = getelementptr inbounds i64, i64* %cloptr108687, i64 0                ; &cloptr108687[0]
  %f108689 = ptrtoint void(i64,i64,i64)* @lam108680 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108689, i64* %eptr108688                                               ; store fptr
  %arg106972 = ptrtoint i64* %cloptr108687 to i64                                    ; closure cast; i64* -> i64
  %cloptr108690 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108691 = getelementptr inbounds i64, i64* %cloptr108690, i64 0                ; &cloptr108690[0]
  %f108692 = ptrtoint void(i64,i64,i64)* @lam108198 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108692, i64* %eptr108691                                               ; store fptr
  %arg106971 = ptrtoint i64* %cloptr108690 to i64                                    ; closure cast; i64* -> i64
  %cloptr108693 = inttoptr i64 %arg106973 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108693)                                       ; assert function application
  %i0ptr108694 = getelementptr inbounds i64, i64* %cloptr108693, i64 0               ; &cloptr108693[0]
  %f108696 = load i64, i64* %i0ptr108694, align 8                                    ; load; *i0ptr108694
  %fptr108695 = inttoptr i64 %f108696 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108695(i64 %arg106973, i64 %arg106972, i64 %arg106971); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam108682(i64 %env108683, i64 %cont106963, i64 %IGP$yu) {
  %cloptr108697 = inttoptr i64 %IGP$yu to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108697)                                       ; assert function application
  %i0ptr108698 = getelementptr inbounds i64, i64* %cloptr108697, i64 0               ; &cloptr108697[0]
  %f108700 = load i64, i64* %i0ptr108698, align 8                                    ; load; *i0ptr108698
  %fptr108699 = inttoptr i64 %f108700 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108699(i64 %IGP$yu, i64 %cont106963, i64 %IGP$yu)   ; tail call
  ret void
}


define void @lam108680(i64 %env108681, i64 %_95106784, i64 %nmN$Ycmb) {
  %cloptr108701 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr108703 = getelementptr inbounds i64, i64* %cloptr108701, i64 1                ; &eptr108703[1]
  store i64 %nmN$Ycmb, i64* %eptr108703                                              ; *eptr108703 = %nmN$Ycmb
  %eptr108702 = getelementptr inbounds i64, i64* %cloptr108701, i64 0                ; &cloptr108701[0]
  %f108704 = ptrtoint void(i64,i64,i64)* @lam108678 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108704, i64* %eptr108702                                               ; store fptr
  %arg106978 = ptrtoint i64* %cloptr108701 to i64                                    ; closure cast; i64* -> i64
  %cloptr108705 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108706 = getelementptr inbounds i64, i64* %cloptr108705, i64 0                ; &cloptr108705[0]
  %f108707 = ptrtoint void(i64,i64,i64)* @lam108209 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108707, i64* %eptr108706                                               ; store fptr
  %arg106977 = ptrtoint i64* %cloptr108705 to i64                                    ; closure cast; i64* -> i64
  %cloptr108708 = inttoptr i64 %nmN$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108708)                                       ; assert function application
  %i0ptr108709 = getelementptr inbounds i64, i64* %cloptr108708, i64 0               ; &cloptr108708[0]
  %f108711 = load i64, i64* %i0ptr108709, align 8                                    ; load; *i0ptr108709
  %fptr108710 = inttoptr i64 %f108711 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108710(i64 %nmN$Ycmb, i64 %arg106978, i64 %arg106977); tail call
  ret void
}


define void @lam108678(i64 %env108679, i64 %_95106785, i64 %t6g$_37foldr1) {
  %envptr108712 = inttoptr i64 %env108679 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108713 = getelementptr inbounds i64, i64* %envptr108712, i64 1              ; &envptr108712[1]
  %nmN$Ycmb = load i64, i64* %envptr108713, align 8                                  ; load; *envptr108713
  %cloptr108714 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr108716 = getelementptr inbounds i64, i64* %cloptr108714, i64 1                ; &eptr108716[1]
  %eptr108717 = getelementptr inbounds i64, i64* %cloptr108714, i64 2                ; &eptr108717[2]
  store i64 %nmN$Ycmb, i64* %eptr108716                                              ; *eptr108716 = %nmN$Ycmb
  store i64 %t6g$_37foldr1, i64* %eptr108717                                         ; *eptr108717 = %t6g$_37foldr1
  %eptr108715 = getelementptr inbounds i64, i64* %cloptr108714, i64 0                ; &cloptr108714[0]
  %f108718 = ptrtoint void(i64,i64,i64)* @lam108676 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108718, i64* %eptr108715                                               ; store fptr
  %arg106981 = ptrtoint i64* %cloptr108714 to i64                                    ; closure cast; i64* -> i64
  %cloptr108719 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108720 = getelementptr inbounds i64, i64* %cloptr108719, i64 0                ; &cloptr108719[0]
  %f108721 = ptrtoint void(i64,i64,i64)* @lam108225 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108721, i64* %eptr108720                                               ; store fptr
  %arg106980 = ptrtoint i64* %cloptr108719 to i64                                    ; closure cast; i64* -> i64
  %cloptr108722 = inttoptr i64 %nmN$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108722)                                       ; assert function application
  %i0ptr108723 = getelementptr inbounds i64, i64* %cloptr108722, i64 0               ; &cloptr108722[0]
  %f108725 = load i64, i64* %i0ptr108723, align 8                                    ; load; *i0ptr108723
  %fptr108724 = inttoptr i64 %f108725 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108724(i64 %nmN$Ycmb, i64 %arg106981, i64 %arg106980); tail call
  ret void
}


define void @lam108676(i64 %env108677, i64 %_95106786, i64 %oFV$_37map1) {
  %envptr108726 = inttoptr i64 %env108677 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108727 = getelementptr inbounds i64, i64* %envptr108726, i64 2              ; &envptr108726[2]
  %t6g$_37foldr1 = load i64, i64* %envptr108727, align 8                             ; load; *envptr108727
  %envptr108728 = inttoptr i64 %env108677 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108729 = getelementptr inbounds i64, i64* %envptr108728, i64 1              ; &envptr108728[1]
  %nmN$Ycmb = load i64, i64* %envptr108729, align 8                                  ; load; *envptr108729
  %cloptr108730 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr108732 = getelementptr inbounds i64, i64* %cloptr108730, i64 1                ; &eptr108732[1]
  %eptr108733 = getelementptr inbounds i64, i64* %cloptr108730, i64 2                ; &eptr108733[2]
  %eptr108734 = getelementptr inbounds i64, i64* %cloptr108730, i64 3                ; &eptr108734[3]
  store i64 %oFV$_37map1, i64* %eptr108732                                           ; *eptr108732 = %oFV$_37map1
  store i64 %nmN$Ycmb, i64* %eptr108733                                              ; *eptr108733 = %nmN$Ycmb
  store i64 %t6g$_37foldr1, i64* %eptr108734                                         ; *eptr108734 = %t6g$_37foldr1
  %eptr108731 = getelementptr inbounds i64, i64* %cloptr108730, i64 0                ; &cloptr108730[0]
  %f108735 = ptrtoint void(i64,i64,i64)* @lam108674 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108735, i64* %eptr108731                                               ; store fptr
  %arg106984 = ptrtoint i64* %cloptr108730 to i64                                    ; closure cast; i64* -> i64
  %cloptr108736 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108737 = getelementptr inbounds i64, i64* %cloptr108736, i64 0                ; &cloptr108736[0]
  %f108738 = ptrtoint void(i64,i64,i64)* @lam108243 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108738, i64* %eptr108737                                               ; store fptr
  %arg106983 = ptrtoint i64* %cloptr108736 to i64                                    ; closure cast; i64* -> i64
  %cloptr108739 = inttoptr i64 %nmN$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108739)                                       ; assert function application
  %i0ptr108740 = getelementptr inbounds i64, i64* %cloptr108739, i64 0               ; &cloptr108739[0]
  %f108742 = load i64, i64* %i0ptr108740, align 8                                    ; load; *i0ptr108740
  %fptr108741 = inttoptr i64 %f108742 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108741(i64 %nmN$Ycmb, i64 %arg106984, i64 %arg106983); tail call
  ret void
}


define void @lam108674(i64 %env108675, i64 %_95106787, i64 %ChK$_37take) {
  %envptr108743 = inttoptr i64 %env108675 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108744 = getelementptr inbounds i64, i64* %envptr108743, i64 3              ; &envptr108743[3]
  %t6g$_37foldr1 = load i64, i64* %envptr108744, align 8                             ; load; *envptr108744
  %envptr108745 = inttoptr i64 %env108675 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108746 = getelementptr inbounds i64, i64* %envptr108745, i64 2              ; &envptr108745[2]
  %nmN$Ycmb = load i64, i64* %envptr108746, align 8                                  ; load; *envptr108746
  %envptr108747 = inttoptr i64 %env108675 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108748 = getelementptr inbounds i64, i64* %envptr108747, i64 1              ; &envptr108747[1]
  %oFV$_37map1 = load i64, i64* %envptr108748, align 8                               ; load; *envptr108748
  %cloptr108749 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr108751 = getelementptr inbounds i64, i64* %cloptr108749, i64 1                ; &eptr108751[1]
  %eptr108752 = getelementptr inbounds i64, i64* %cloptr108749, i64 2                ; &eptr108752[2]
  %eptr108753 = getelementptr inbounds i64, i64* %cloptr108749, i64 3                ; &eptr108753[3]
  %eptr108754 = getelementptr inbounds i64, i64* %cloptr108749, i64 4                ; &eptr108754[4]
  store i64 %oFV$_37map1, i64* %eptr108751                                           ; *eptr108751 = %oFV$_37map1
  store i64 %ChK$_37take, i64* %eptr108752                                           ; *eptr108752 = %ChK$_37take
  store i64 %nmN$Ycmb, i64* %eptr108753                                              ; *eptr108753 = %nmN$Ycmb
  store i64 %t6g$_37foldr1, i64* %eptr108754                                         ; *eptr108754 = %t6g$_37foldr1
  %eptr108750 = getelementptr inbounds i64, i64* %cloptr108749, i64 0                ; &cloptr108749[0]
  %f108755 = ptrtoint void(i64,i64,i64)* @lam108672 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108755, i64* %eptr108750                                               ; store fptr
  %arg106987 = ptrtoint i64* %cloptr108749 to i64                                    ; closure cast; i64* -> i64
  %cloptr108756 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108757 = getelementptr inbounds i64, i64* %cloptr108756, i64 0                ; &cloptr108756[0]
  %f108758 = ptrtoint void(i64,i64,i64)* @lam108257 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108758, i64* %eptr108757                                               ; store fptr
  %arg106986 = ptrtoint i64* %cloptr108756 to i64                                    ; closure cast; i64* -> i64
  %cloptr108759 = inttoptr i64 %nmN$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108759)                                       ; assert function application
  %i0ptr108760 = getelementptr inbounds i64, i64* %cloptr108759, i64 0               ; &cloptr108759[0]
  %f108762 = load i64, i64* %i0ptr108760, align 8                                    ; load; *i0ptr108760
  %fptr108761 = inttoptr i64 %f108762 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108761(i64 %nmN$Ycmb, i64 %arg106987, i64 %arg106986); tail call
  ret void
}


define void @lam108672(i64 %env108673, i64 %_95106788, i64 %xfk$_37length) {
  %envptr108763 = inttoptr i64 %env108673 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108764 = getelementptr inbounds i64, i64* %envptr108763, i64 4              ; &envptr108763[4]
  %t6g$_37foldr1 = load i64, i64* %envptr108764, align 8                             ; load; *envptr108764
  %envptr108765 = inttoptr i64 %env108673 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108766 = getelementptr inbounds i64, i64* %envptr108765, i64 3              ; &envptr108765[3]
  %nmN$Ycmb = load i64, i64* %envptr108766, align 8                                  ; load; *envptr108766
  %envptr108767 = inttoptr i64 %env108673 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108768 = getelementptr inbounds i64, i64* %envptr108767, i64 2              ; &envptr108767[2]
  %ChK$_37take = load i64, i64* %envptr108768, align 8                               ; load; *envptr108768
  %envptr108769 = inttoptr i64 %env108673 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108770 = getelementptr inbounds i64, i64* %envptr108769, i64 1              ; &envptr108769[1]
  %oFV$_37map1 = load i64, i64* %envptr108770, align 8                               ; load; *envptr108770
  %cloptr108771 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr108773 = getelementptr inbounds i64, i64* %cloptr108771, i64 1                ; &eptr108773[1]
  %eptr108774 = getelementptr inbounds i64, i64* %cloptr108771, i64 2                ; &eptr108774[2]
  %eptr108775 = getelementptr inbounds i64, i64* %cloptr108771, i64 3                ; &eptr108775[3]
  %eptr108776 = getelementptr inbounds i64, i64* %cloptr108771, i64 4                ; &eptr108776[4]
  %eptr108777 = getelementptr inbounds i64, i64* %cloptr108771, i64 5                ; &eptr108777[5]
  store i64 %oFV$_37map1, i64* %eptr108773                                           ; *eptr108773 = %oFV$_37map1
  store i64 %ChK$_37take, i64* %eptr108774                                           ; *eptr108774 = %ChK$_37take
  store i64 %xfk$_37length, i64* %eptr108775                                         ; *eptr108775 = %xfk$_37length
  store i64 %nmN$Ycmb, i64* %eptr108776                                              ; *eptr108776 = %nmN$Ycmb
  store i64 %t6g$_37foldr1, i64* %eptr108777                                         ; *eptr108777 = %t6g$_37foldr1
  %eptr108772 = getelementptr inbounds i64, i64* %cloptr108771, i64 0                ; &cloptr108771[0]
  %f108778 = ptrtoint void(i64,i64,i64)* @lam108670 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108778, i64* %eptr108772                                               ; store fptr
  %arg106990 = ptrtoint i64* %cloptr108771 to i64                                    ; closure cast; i64* -> i64
  %cloptr108779 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108780 = getelementptr inbounds i64, i64* %cloptr108779, i64 0                ; &cloptr108779[0]
  %f108781 = ptrtoint void(i64,i64,i64)* @lam108268 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108781, i64* %eptr108780                                               ; store fptr
  %arg106989 = ptrtoint i64* %cloptr108779 to i64                                    ; closure cast; i64* -> i64
  %cloptr108782 = inttoptr i64 %nmN$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108782)                                       ; assert function application
  %i0ptr108783 = getelementptr inbounds i64, i64* %cloptr108782, i64 0               ; &cloptr108782[0]
  %f108785 = load i64, i64* %i0ptr108783, align 8                                    ; load; *i0ptr108783
  %fptr108784 = inttoptr i64 %f108785 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108784(i64 %nmN$Ycmb, i64 %arg106990, i64 %arg106989); tail call
  ret void
}


define void @lam108670(i64 %env108671, i64 %_95106789, i64 %hoZ$_37foldl1) {
  %envptr108786 = inttoptr i64 %env108671 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108787 = getelementptr inbounds i64, i64* %envptr108786, i64 5              ; &envptr108786[5]
  %t6g$_37foldr1 = load i64, i64* %envptr108787, align 8                             ; load; *envptr108787
  %envptr108788 = inttoptr i64 %env108671 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108789 = getelementptr inbounds i64, i64* %envptr108788, i64 4              ; &envptr108788[4]
  %nmN$Ycmb = load i64, i64* %envptr108789, align 8                                  ; load; *envptr108789
  %envptr108790 = inttoptr i64 %env108671 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108791 = getelementptr inbounds i64, i64* %envptr108790, i64 3              ; &envptr108790[3]
  %xfk$_37length = load i64, i64* %envptr108791, align 8                             ; load; *envptr108791
  %envptr108792 = inttoptr i64 %env108671 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108793 = getelementptr inbounds i64, i64* %envptr108792, i64 2              ; &envptr108792[2]
  %ChK$_37take = load i64, i64* %envptr108793, align 8                               ; load; *envptr108793
  %envptr108794 = inttoptr i64 %env108671 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108795 = getelementptr inbounds i64, i64* %envptr108794, i64 1              ; &envptr108794[1]
  %oFV$_37map1 = load i64, i64* %envptr108795, align 8                               ; load; *envptr108795
  %cloptr108796 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr108798 = getelementptr inbounds i64, i64* %cloptr108796, i64 1                ; &eptr108798[1]
  store i64 %hoZ$_37foldl1, i64* %eptr108798                                         ; *eptr108798 = %hoZ$_37foldl1
  %eptr108797 = getelementptr inbounds i64, i64* %cloptr108796, i64 0                ; &cloptr108796[0]
  %f108799 = ptrtoint void(i64,i64,i64)* @lam108668 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108799, i64* %eptr108797                                               ; store fptr
  %SJA$_37last = ptrtoint i64* %cloptr108796 to i64                                  ; closure cast; i64* -> i64
  %cloptr108800 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr108802 = getelementptr inbounds i64, i64* %cloptr108800, i64 1                ; &eptr108802[1]
  %eptr108803 = getelementptr inbounds i64, i64* %cloptr108800, i64 2                ; &eptr108803[2]
  store i64 %ChK$_37take, i64* %eptr108802                                           ; *eptr108802 = %ChK$_37take
  store i64 %xfk$_37length, i64* %eptr108803                                         ; *eptr108803 = %xfk$_37length
  %eptr108801 = getelementptr inbounds i64, i64* %cloptr108800, i64 0                ; &cloptr108800[0]
  %f108804 = ptrtoint void(i64,i64,i64,i64)* @lam108662 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f108804, i64* %eptr108801                                               ; store fptr
  %nCB$_37drop_45right = ptrtoint i64* %cloptr108800 to i64                          ; closure cast; i64* -> i64
  %cloptr108805 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr108807 = getelementptr inbounds i64, i64* %cloptr108805, i64 1                ; &eptr108807[1]
  %eptr108808 = getelementptr inbounds i64, i64* %cloptr108805, i64 2                ; &eptr108808[2]
  %eptr108809 = getelementptr inbounds i64, i64* %cloptr108805, i64 3                ; &eptr108809[3]
  %eptr108810 = getelementptr inbounds i64, i64* %cloptr108805, i64 4                ; &eptr108810[4]
  %eptr108811 = getelementptr inbounds i64, i64* %cloptr108805, i64 5                ; &eptr108811[5]
  %eptr108812 = getelementptr inbounds i64, i64* %cloptr108805, i64 6                ; &eptr108812[6]
  store i64 %SJA$_37last, i64* %eptr108807                                           ; *eptr108807 = %SJA$_37last
  store i64 %nCB$_37drop_45right, i64* %eptr108808                                   ; *eptr108808 = %nCB$_37drop_45right
  store i64 %xfk$_37length, i64* %eptr108809                                         ; *eptr108809 = %xfk$_37length
  store i64 %hoZ$_37foldl1, i64* %eptr108810                                         ; *eptr108810 = %hoZ$_37foldl1
  store i64 %nmN$Ycmb, i64* %eptr108811                                              ; *eptr108811 = %nmN$Ycmb
  store i64 %t6g$_37foldr1, i64* %eptr108812                                         ; *eptr108812 = %t6g$_37foldr1
  %eptr108806 = getelementptr inbounds i64, i64* %cloptr108805, i64 0                ; &cloptr108805[0]
  %f108813 = ptrtoint void(i64,i64,i64)* @lam108658 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108813, i64* %eptr108806                                               ; store fptr
  %arg107010 = ptrtoint i64* %cloptr108805 to i64                                    ; closure cast; i64* -> i64
  %cloptr108814 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr108816 = getelementptr inbounds i64, i64* %cloptr108814, i64 1                ; &eptr108816[1]
  %eptr108817 = getelementptr inbounds i64, i64* %cloptr108814, i64 2                ; &eptr108817[2]
  store i64 %oFV$_37map1, i64* %eptr108816                                           ; *eptr108816 = %oFV$_37map1
  store i64 %t6g$_37foldr1, i64* %eptr108817                                         ; *eptr108817 = %t6g$_37foldr1
  %eptr108815 = getelementptr inbounds i64, i64* %cloptr108814, i64 0                ; &cloptr108814[0]
  %f108818 = ptrtoint void(i64,i64,i64)* @lam108315 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108818, i64* %eptr108815                                               ; store fptr
  %arg107009 = ptrtoint i64* %cloptr108814 to i64                                    ; closure cast; i64* -> i64
  %cloptr108819 = inttoptr i64 %nmN$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108819)                                       ; assert function application
  %i0ptr108820 = getelementptr inbounds i64, i64* %cloptr108819, i64 0               ; &cloptr108819[0]
  %f108822 = load i64, i64* %i0ptr108820, align 8                                    ; load; *i0ptr108820
  %fptr108821 = inttoptr i64 %f108822 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108821(i64 %nmN$Ycmb, i64 %arg107010, i64 %arg107009); tail call
  ret void
}


define void @lam108668(i64 %env108669, i64 %cont106790, i64 %WSJ$lst) {
  %envptr108823 = inttoptr i64 %env108669 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108824 = getelementptr inbounds i64, i64* %envptr108823, i64 1              ; &envptr108823[1]
  %hoZ$_37foldl1 = load i64, i64* %envptr108824, align 8                             ; load; *envptr108824
  %cloptr108825 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr108826 = getelementptr inbounds i64, i64* %cloptr108825, i64 0                ; &cloptr108825[0]
  %f108827 = ptrtoint void(i64,i64,i64,i64)* @lam108666 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f108827, i64* %eptr108826                                               ; store fptr
  %arg106994 = ptrtoint i64* %cloptr108825 to i64                                    ; closure cast; i64* -> i64
  %arg106993 = add i64 0, 0                                                          ; quoted ()
  %cloptr108828 = inttoptr i64 %hoZ$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108828)                                       ; assert function application
  %i0ptr108829 = getelementptr inbounds i64, i64* %cloptr108828, i64 0               ; &cloptr108828[0]
  %f108831 = load i64, i64* %i0ptr108829, align 8                                    ; load; *i0ptr108829
  %fptr108830 = inttoptr i64 %f108831 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108830(i64 %hoZ$_37foldl1, i64 %cont106790, i64 %arg106994, i64 %arg106993, i64 %WSJ$lst); tail call
  ret void
}


define void @lam108666(i64 %env108667, i64 %cont106791, i64 %cWL$x, i64 %BTd$y) {
  %arg106998 = add i64 0, 0                                                          ; quoted ()
  %cloptr108832 = inttoptr i64 %cont106791 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108832)                                       ; assert function application
  %i0ptr108833 = getelementptr inbounds i64, i64* %cloptr108832, i64 0               ; &cloptr108832[0]
  %f108835 = load i64, i64* %i0ptr108833, align 8                                    ; load; *i0ptr108833
  %fptr108834 = inttoptr i64 %f108835 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108834(i64 %cont106791, i64 %arg106998, i64 %cWL$x) ; tail call
  ret void
}


define void @lam108662(i64 %env108663, i64 %cont106792, i64 %ahz$lst, i64 %Oej$n) {
  %envptr108836 = inttoptr i64 %env108663 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108837 = getelementptr inbounds i64, i64* %envptr108836, i64 2              ; &envptr108836[2]
  %xfk$_37length = load i64, i64* %envptr108837, align 8                             ; load; *envptr108837
  %envptr108838 = inttoptr i64 %env108663 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108839 = getelementptr inbounds i64, i64* %envptr108838, i64 1              ; &envptr108838[1]
  %ChK$_37take = load i64, i64* %envptr108839, align 8                               ; load; *envptr108839
  %cloptr108840 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr108842 = getelementptr inbounds i64, i64* %cloptr108840, i64 1                ; &eptr108842[1]
  %eptr108843 = getelementptr inbounds i64, i64* %cloptr108840, i64 2                ; &eptr108843[2]
  %eptr108844 = getelementptr inbounds i64, i64* %cloptr108840, i64 3                ; &eptr108844[3]
  %eptr108845 = getelementptr inbounds i64, i64* %cloptr108840, i64 4                ; &eptr108845[4]
  store i64 %ChK$_37take, i64* %eptr108842                                           ; *eptr108842 = %ChK$_37take
  store i64 %Oej$n, i64* %eptr108843                                                 ; *eptr108843 = %Oej$n
  store i64 %ahz$lst, i64* %eptr108844                                               ; *eptr108844 = %ahz$lst
  store i64 %cont106792, i64* %eptr108845                                            ; *eptr108845 = %cont106792
  %eptr108841 = getelementptr inbounds i64, i64* %cloptr108840, i64 0                ; &cloptr108840[0]
  %f108846 = ptrtoint void(i64,i64,i64)* @lam108660 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108846, i64* %eptr108841                                               ; store fptr
  %arg107001 = ptrtoint i64* %cloptr108840 to i64                                    ; closure cast; i64* -> i64
  %cloptr108847 = inttoptr i64 %xfk$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108847)                                       ; assert function application
  %i0ptr108848 = getelementptr inbounds i64, i64* %cloptr108847, i64 0               ; &cloptr108847[0]
  %f108850 = load i64, i64* %i0ptr108848, align 8                                    ; load; *i0ptr108848
  %fptr108849 = inttoptr i64 %f108850 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108849(i64 %xfk$_37length, i64 %arg107001, i64 %ahz$lst); tail call
  ret void
}


define void @lam108660(i64 %env108661, i64 %_95106793, i64 %a106689) {
  %envptr108851 = inttoptr i64 %env108661 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108852 = getelementptr inbounds i64, i64* %envptr108851, i64 4              ; &envptr108851[4]
  %cont106792 = load i64, i64* %envptr108852, align 8                                ; load; *envptr108852
  %envptr108853 = inttoptr i64 %env108661 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108854 = getelementptr inbounds i64, i64* %envptr108853, i64 3              ; &envptr108853[3]
  %ahz$lst = load i64, i64* %envptr108854, align 8                                   ; load; *envptr108854
  %envptr108855 = inttoptr i64 %env108661 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108856 = getelementptr inbounds i64, i64* %envptr108855, i64 2              ; &envptr108855[2]
  %Oej$n = load i64, i64* %envptr108856, align 8                                     ; load; *envptr108856
  %envptr108857 = inttoptr i64 %env108661 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108858 = getelementptr inbounds i64, i64* %envptr108857, i64 1              ; &envptr108857[1]
  %ChK$_37take = load i64, i64* %envptr108858, align 8                               ; load; *envptr108858
  %a106690 = call i64 @prim__45(i64 %a106689, i64 %Oej$n)                            ; call prim__45
  %cloptr108859 = inttoptr i64 %ChK$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108859)                                       ; assert function application
  %i0ptr108860 = getelementptr inbounds i64, i64* %cloptr108859, i64 0               ; &cloptr108859[0]
  %f108862 = load i64, i64* %i0ptr108860, align 8                                    ; load; *i0ptr108860
  %fptr108861 = inttoptr i64 %f108862 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108861(i64 %ChK$_37take, i64 %cont106792, i64 %ahz$lst, i64 %a106690); tail call
  ret void
}


define void @lam108658(i64 %env108659, i64 %_95106794, i64 %dgl$_37foldr) {
  %envptr108863 = inttoptr i64 %env108659 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108864 = getelementptr inbounds i64, i64* %envptr108863, i64 6              ; &envptr108863[6]
  %t6g$_37foldr1 = load i64, i64* %envptr108864, align 8                             ; load; *envptr108864
  %envptr108865 = inttoptr i64 %env108659 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108866 = getelementptr inbounds i64, i64* %envptr108865, i64 5              ; &envptr108865[5]
  %nmN$Ycmb = load i64, i64* %envptr108866, align 8                                  ; load; *envptr108866
  %envptr108867 = inttoptr i64 %env108659 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108868 = getelementptr inbounds i64, i64* %envptr108867, i64 4              ; &envptr108867[4]
  %hoZ$_37foldl1 = load i64, i64* %envptr108868, align 8                             ; load; *envptr108868
  %envptr108869 = inttoptr i64 %env108659 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108870 = getelementptr inbounds i64, i64* %envptr108869, i64 3              ; &envptr108869[3]
  %xfk$_37length = load i64, i64* %envptr108870, align 8                             ; load; *envptr108870
  %envptr108871 = inttoptr i64 %env108659 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108872 = getelementptr inbounds i64, i64* %envptr108871, i64 2              ; &envptr108871[2]
  %nCB$_37drop_45right = load i64, i64* %envptr108872, align 8                       ; load; *envptr108872
  %envptr108873 = inttoptr i64 %env108659 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108874 = getelementptr inbounds i64, i64* %envptr108873, i64 1              ; &envptr108873[1]
  %SJA$_37last = load i64, i64* %envptr108874, align 8                               ; load; *envptr108874
  %cloptr108875 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr108877 = getelementptr inbounds i64, i64* %cloptr108875, i64 1                ; &eptr108877[1]
  store i64 %t6g$_37foldr1, i64* %eptr108877                                         ; *eptr108877 = %t6g$_37foldr1
  %eptr108876 = getelementptr inbounds i64, i64* %cloptr108875, i64 0                ; &cloptr108875[0]
  %f108878 = ptrtoint void(i64,i64,i64,i64)* @lam108656 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f108878, i64* %eptr108876                                               ; store fptr
  %zyw$_37map1 = ptrtoint i64* %cloptr108875 to i64                                  ; closure cast; i64* -> i64
  %cloptr108879 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr108881 = getelementptr inbounds i64, i64* %cloptr108879, i64 1                ; &eptr108881[1]
  %eptr108882 = getelementptr inbounds i64, i64* %cloptr108879, i64 2                ; &eptr108882[2]
  %eptr108883 = getelementptr inbounds i64, i64* %cloptr108879, i64 3                ; &eptr108883[3]
  store i64 %dgl$_37foldr, i64* %eptr108881                                          ; *eptr108881 = %dgl$_37foldr
  store i64 %SJA$_37last, i64* %eptr108882                                           ; *eptr108882 = %SJA$_37last
  store i64 %nCB$_37drop_45right, i64* %eptr108883                                   ; *eptr108883 = %nCB$_37drop_45right
  %eptr108880 = getelementptr inbounds i64, i64* %cloptr108879, i64 0                ; &cloptr108879[0]
  %f108884 = ptrtoint void(i64,i64)* @lam108646 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f108884, i64* %eptr108880                                               ; store fptr
  %opm$_37map = ptrtoint i64* %cloptr108879 to i64                                   ; closure cast; i64* -> i64
  %cloptr108885 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr108887 = getelementptr inbounds i64, i64* %cloptr108885, i64 1                ; &eptr108887[1]
  %eptr108888 = getelementptr inbounds i64, i64* %cloptr108885, i64 2                ; &eptr108888[2]
  store i64 %xfk$_37length, i64* %eptr108887                                         ; *eptr108887 = %xfk$_37length
  store i64 %hoZ$_37foldl1, i64* %eptr108888                                         ; *eptr108888 = %hoZ$_37foldl1
  %eptr108886 = getelementptr inbounds i64, i64* %cloptr108885, i64 0                ; &cloptr108885[0]
  %f108889 = ptrtoint void(i64,i64,i64)* @lam108633 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108889, i64* %eptr108886                                               ; store fptr
  %arg107052 = ptrtoint i64* %cloptr108885 to i64                                    ; closure cast; i64* -> i64
  %cloptr108890 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr108892 = getelementptr inbounds i64, i64* %cloptr108890, i64 1                ; &eptr108892[1]
  %eptr108893 = getelementptr inbounds i64, i64* %cloptr108890, i64 2                ; &eptr108893[2]
  %eptr108894 = getelementptr inbounds i64, i64* %cloptr108890, i64 3                ; &eptr108894[3]
  store i64 %dgl$_37foldr, i64* %eptr108892                                          ; *eptr108892 = %dgl$_37foldr
  store i64 %t6g$_37foldr1, i64* %eptr108893                                         ; *eptr108893 = %t6g$_37foldr1
  store i64 %zyw$_37map1, i64* %eptr108894                                           ; *eptr108894 = %zyw$_37map1
  %eptr108891 = getelementptr inbounds i64, i64* %cloptr108890, i64 0                ; &cloptr108890[0]
  %f108895 = ptrtoint void(i64,i64,i64)* @lam108358 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108895, i64* %eptr108891                                               ; store fptr
  %arg107051 = ptrtoint i64* %cloptr108890 to i64                                    ; closure cast; i64* -> i64
  %cloptr108896 = inttoptr i64 %nmN$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108896)                                       ; assert function application
  %i0ptr108897 = getelementptr inbounds i64, i64* %cloptr108896, i64 0               ; &cloptr108896[0]
  %f108899 = load i64, i64* %i0ptr108897, align 8                                    ; load; *i0ptr108897
  %fptr108898 = inttoptr i64 %f108899 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108898(i64 %nmN$Ycmb, i64 %arg107052, i64 %arg107051); tail call
  ret void
}


define void @lam108656(i64 %env108657, i64 %cont106795, i64 %FOP$f, i64 %nk1$lst) {
  %envptr108900 = inttoptr i64 %env108657 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108901 = getelementptr inbounds i64, i64* %envptr108900, i64 1              ; &envptr108900[1]
  %t6g$_37foldr1 = load i64, i64* %envptr108901, align 8                             ; load; *envptr108901
  %cloptr108902 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr108904 = getelementptr inbounds i64, i64* %cloptr108902, i64 1                ; &eptr108904[1]
  store i64 %FOP$f, i64* %eptr108904                                                 ; *eptr108904 = %FOP$f
  %eptr108903 = getelementptr inbounds i64, i64* %cloptr108902, i64 0                ; &cloptr108902[0]
  %f108905 = ptrtoint void(i64,i64)* @lam108654 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f108905, i64* %eptr108903                                               ; store fptr
  %arg107014 = ptrtoint i64* %cloptr108902 to i64                                    ; closure cast; i64* -> i64
  %arg107013 = add i64 0, 0                                                          ; quoted ()
  %rva107853 = add i64 0, 0                                                          ; quoted ()
  %rva107852 = call i64 @prim_cons(i64 %nk1$lst, i64 %rva107853)                     ; call prim_cons
  %rva107851 = call i64 @prim_cons(i64 %arg107013, i64 %rva107852)                   ; call prim_cons
  %rva107850 = call i64 @prim_cons(i64 %arg107014, i64 %rva107851)                   ; call prim_cons
  %rva107849 = call i64 @prim_cons(i64 %cont106795, i64 %rva107850)                  ; call prim_cons
  %cloptr108906 = inttoptr i64 %t6g$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108906)                                       ; assert function application
  %i0ptr108907 = getelementptr inbounds i64, i64* %cloptr108906, i64 0               ; &cloptr108906[0]
  %f108909 = load i64, i64* %i0ptr108907, align 8                                    ; load; *i0ptr108907
  %fptr108908 = inttoptr i64 %f108909 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108908(i64 %t6g$_37foldr1, i64 %rva107849)          ; tail call
  ret void
}


define void @lam108654(i64 %env108655, i64 %rvp107847) {
  %envptr108910 = inttoptr i64 %env108655 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108911 = getelementptr inbounds i64, i64* %envptr108910, i64 1              ; &envptr108910[1]
  %FOP$f = load i64, i64* %envptr108911, align 8                                     ; load; *envptr108911
  %cont106796 = call i64 @prim_car(i64 %rvp107847)                                   ; call prim_car
  %rvp107845 = call i64 @prim_cdr(i64 %rvp107847)                                    ; call prim_cdr
  %XfU$v = call i64 @prim_car(i64 %rvp107845)                                        ; call prim_car
  %rvp107843 = call i64 @prim_cdr(i64 %rvp107845)                                    ; call prim_cdr
  %XTd$r = call i64 @prim_car(i64 %rvp107843)                                        ; call prim_car
  %na107839 = call i64 @prim_cdr(i64 %rvp107843)                                     ; call prim_cdr
  %cloptr108912 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr108914 = getelementptr inbounds i64, i64* %cloptr108912, i64 1                ; &eptr108914[1]
  %eptr108915 = getelementptr inbounds i64, i64* %cloptr108912, i64 2                ; &eptr108915[2]
  store i64 %XTd$r, i64* %eptr108914                                                 ; *eptr108914 = %XTd$r
  store i64 %cont106796, i64* %eptr108915                                            ; *eptr108915 = %cont106796
  %eptr108913 = getelementptr inbounds i64, i64* %cloptr108912, i64 0                ; &cloptr108912[0]
  %f108916 = ptrtoint void(i64,i64,i64)* @lam108652 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108916, i64* %eptr108913                                               ; store fptr
  %arg107018 = ptrtoint i64* %cloptr108912 to i64                                    ; closure cast; i64* -> i64
  %cloptr108917 = inttoptr i64 %FOP$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108917)                                       ; assert function application
  %i0ptr108918 = getelementptr inbounds i64, i64* %cloptr108917, i64 0               ; &cloptr108917[0]
  %f108920 = load i64, i64* %i0ptr108918, align 8                                    ; load; *i0ptr108918
  %fptr108919 = inttoptr i64 %f108920 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108919(i64 %FOP$f, i64 %arg107018, i64 %XfU$v)      ; tail call
  ret void
}


define void @lam108652(i64 %env108653, i64 %_95106797, i64 %a106699) {
  %envptr108921 = inttoptr i64 %env108653 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108922 = getelementptr inbounds i64, i64* %envptr108921, i64 2              ; &envptr108921[2]
  %cont106796 = load i64, i64* %envptr108922, align 8                                ; load; *envptr108922
  %envptr108923 = inttoptr i64 %env108653 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108924 = getelementptr inbounds i64, i64* %envptr108923, i64 1              ; &envptr108923[1]
  %XTd$r = load i64, i64* %envptr108924, align 8                                     ; load; *envptr108924
  %retprim106798 = call i64 @prim_cons(i64 %a106699, i64 %XTd$r)                     ; call prim_cons
  %arg107023 = add i64 0, 0                                                          ; quoted ()
  %rva107842 = add i64 0, 0                                                          ; quoted ()
  %rva107841 = call i64 @prim_cons(i64 %retprim106798, i64 %rva107842)               ; call prim_cons
  %rva107840 = call i64 @prim_cons(i64 %arg107023, i64 %rva107841)                   ; call prim_cons
  %cloptr108925 = inttoptr i64 %cont106796 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108925)                                       ; assert function application
  %i0ptr108926 = getelementptr inbounds i64, i64* %cloptr108925, i64 0               ; &cloptr108925[0]
  %f108928 = load i64, i64* %i0ptr108926, align 8                                    ; load; *i0ptr108926
  %fptr108927 = inttoptr i64 %f108928 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108927(i64 %cont106796, i64 %rva107840)             ; tail call
  ret void
}


define void @lam108646(i64 %env108647, i64 %P03$args106800) {
  %envptr108929 = inttoptr i64 %env108647 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108930 = getelementptr inbounds i64, i64* %envptr108929, i64 3              ; &envptr108929[3]
  %nCB$_37drop_45right = load i64, i64* %envptr108930, align 8                       ; load; *envptr108930
  %envptr108931 = inttoptr i64 %env108647 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108932 = getelementptr inbounds i64, i64* %envptr108931, i64 2              ; &envptr108931[2]
  %SJA$_37last = load i64, i64* %envptr108932, align 8                               ; load; *envptr108932
  %envptr108933 = inttoptr i64 %env108647 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108934 = getelementptr inbounds i64, i64* %envptr108933, i64 1              ; &envptr108933[1]
  %dgl$_37foldr = load i64, i64* %envptr108934, align 8                              ; load; *envptr108934
  %cont106799 = call i64 @prim_car(i64 %P03$args106800)                              ; call prim_car
  %P03$args = call i64 @prim_cdr(i64 %P03$args106800)                                ; call prim_cdr
  %hEZ$f = call i64 @prim_car(i64 %P03$args)                                         ; call prim_car
  %VUr$lsts = call i64 @prim_cdr(i64 %P03$args)                                      ; call prim_cdr
  %arg107030 = add i64 0, 0                                                          ; quoted ()
  %a106703 = call i64 @prim_cons(i64 %arg107030, i64 %VUr$lsts)                      ; call prim_cons
  %cloptr108935 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr108937 = getelementptr inbounds i64, i64* %cloptr108935, i64 1                ; &eptr108937[1]
  %eptr108938 = getelementptr inbounds i64, i64* %cloptr108935, i64 2                ; &eptr108938[2]
  %eptr108939 = getelementptr inbounds i64, i64* %cloptr108935, i64 3                ; &eptr108939[3]
  store i64 %SJA$_37last, i64* %eptr108937                                           ; *eptr108937 = %SJA$_37last
  store i64 %hEZ$f, i64* %eptr108938                                                 ; *eptr108938 = %hEZ$f
  store i64 %nCB$_37drop_45right, i64* %eptr108939                                   ; *eptr108939 = %nCB$_37drop_45right
  %eptr108936 = getelementptr inbounds i64, i64* %cloptr108935, i64 0                ; &cloptr108935[0]
  %f108940 = ptrtoint void(i64,i64)* @lam108643 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f108940, i64* %eptr108936                                               ; store fptr
  %arg107032 = ptrtoint i64* %cloptr108935 to i64                                    ; closure cast; i64* -> i64
  %a106704 = call i64 @prim_cons(i64 %arg107032, i64 %a106703)                       ; call prim_cons
  %cps_45lst106808 = call i64 @prim_cons(i64 %cont106799, i64 %a106704)              ; call prim_cons
  %cloptr108941 = inttoptr i64 %dgl$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108941)                                       ; assert function application
  %i0ptr108942 = getelementptr inbounds i64, i64* %cloptr108941, i64 0               ; &cloptr108941[0]
  %f108944 = load i64, i64* %i0ptr108942, align 8                                    ; load; *i0ptr108942
  %fptr108943 = inttoptr i64 %f108944 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108943(i64 %dgl$_37foldr, i64 %cps_45lst106808)     ; tail call
  ret void
}


define void @lam108643(i64 %env108644, i64 %f7A$fargs106802) {
  %envptr108945 = inttoptr i64 %env108644 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108946 = getelementptr inbounds i64, i64* %envptr108945, i64 3              ; &envptr108945[3]
  %nCB$_37drop_45right = load i64, i64* %envptr108946, align 8                       ; load; *envptr108946
  %envptr108947 = inttoptr i64 %env108644 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108948 = getelementptr inbounds i64, i64* %envptr108947, i64 2              ; &envptr108947[2]
  %hEZ$f = load i64, i64* %envptr108948, align 8                                     ; load; *envptr108948
  %envptr108949 = inttoptr i64 %env108644 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108950 = getelementptr inbounds i64, i64* %envptr108949, i64 1              ; &envptr108949[1]
  %SJA$_37last = load i64, i64* %envptr108950, align 8                               ; load; *envptr108950
  %cont106801 = call i64 @prim_car(i64 %f7A$fargs106802)                             ; call prim_car
  %f7A$fargs = call i64 @prim_cdr(i64 %f7A$fargs106802)                              ; call prim_cdr
  %cloptr108951 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr108953 = getelementptr inbounds i64, i64* %cloptr108951, i64 1                ; &eptr108953[1]
  %eptr108954 = getelementptr inbounds i64, i64* %cloptr108951, i64 2                ; &eptr108954[2]
  %eptr108955 = getelementptr inbounds i64, i64* %cloptr108951, i64 3                ; &eptr108955[3]
  %eptr108956 = getelementptr inbounds i64, i64* %cloptr108951, i64 4                ; &eptr108956[4]
  store i64 %cont106801, i64* %eptr108953                                            ; *eptr108953 = %cont106801
  store i64 %SJA$_37last, i64* %eptr108954                                           ; *eptr108954 = %SJA$_37last
  store i64 %hEZ$f, i64* %eptr108955                                                 ; *eptr108955 = %hEZ$f
  store i64 %f7A$fargs, i64* %eptr108956                                             ; *eptr108956 = %f7A$fargs
  %eptr108952 = getelementptr inbounds i64, i64* %cloptr108951, i64 0                ; &cloptr108951[0]
  %f108957 = ptrtoint void(i64,i64,i64)* @lam108641 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108957, i64* %eptr108952                                               ; store fptr
  %arg107037 = ptrtoint i64* %cloptr108951 to i64                                    ; closure cast; i64* -> i64
  %arg107035 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr108958 = inttoptr i64 %nCB$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108958)                                       ; assert function application
  %i0ptr108959 = getelementptr inbounds i64, i64* %cloptr108958, i64 0               ; &cloptr108958[0]
  %f108961 = load i64, i64* %i0ptr108959, align 8                                    ; load; *i0ptr108959
  %fptr108960 = inttoptr i64 %f108961 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108960(i64 %nCB$_37drop_45right, i64 %arg107037, i64 %f7A$fargs, i64 %arg107035); tail call
  ret void
}


define void @lam108641(i64 %env108642, i64 %_95106803, i64 %a106700) {
  %envptr108962 = inttoptr i64 %env108642 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108963 = getelementptr inbounds i64, i64* %envptr108962, i64 4              ; &envptr108962[4]
  %f7A$fargs = load i64, i64* %envptr108963, align 8                                 ; load; *envptr108963
  %envptr108964 = inttoptr i64 %env108642 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108965 = getelementptr inbounds i64, i64* %envptr108964, i64 3              ; &envptr108964[3]
  %hEZ$f = load i64, i64* %envptr108965, align 8                                     ; load; *envptr108965
  %envptr108966 = inttoptr i64 %env108642 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108967 = getelementptr inbounds i64, i64* %envptr108966, i64 2              ; &envptr108966[2]
  %SJA$_37last = load i64, i64* %envptr108967, align 8                               ; load; *envptr108967
  %envptr108968 = inttoptr i64 %env108642 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108969 = getelementptr inbounds i64, i64* %envptr108968, i64 1              ; &envptr108968[1]
  %cont106801 = load i64, i64* %envptr108969, align 8                                ; load; *envptr108969
  %cloptr108970 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr108972 = getelementptr inbounds i64, i64* %cloptr108970, i64 1                ; &eptr108972[1]
  %eptr108973 = getelementptr inbounds i64, i64* %cloptr108970, i64 2                ; &eptr108973[2]
  %eptr108974 = getelementptr inbounds i64, i64* %cloptr108970, i64 3                ; &eptr108974[3]
  store i64 %cont106801, i64* %eptr108972                                            ; *eptr108972 = %cont106801
  store i64 %SJA$_37last, i64* %eptr108973                                           ; *eptr108973 = %SJA$_37last
  store i64 %f7A$fargs, i64* %eptr108974                                             ; *eptr108974 = %f7A$fargs
  %eptr108971 = getelementptr inbounds i64, i64* %cloptr108970, i64 0                ; &cloptr108970[0]
  %f108975 = ptrtoint void(i64,i64,i64)* @lam108639 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108975, i64* %eptr108971                                               ; store fptr
  %arg107040 = ptrtoint i64* %cloptr108970 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst106807 = call i64 @prim_cons(i64 %arg107040, i64 %a106700)               ; call prim_cons
  %cloptr108976 = inttoptr i64 %hEZ$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108976)                                       ; assert function application
  %i0ptr108977 = getelementptr inbounds i64, i64* %cloptr108976, i64 0               ; &cloptr108976[0]
  %f108979 = load i64, i64* %i0ptr108977, align 8                                    ; load; *i0ptr108977
  %fptr108978 = inttoptr i64 %f108979 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108978(i64 %hEZ$f, i64 %cps_45lst106807)            ; tail call
  ret void
}


define void @lam108639(i64 %env108640, i64 %_95106804, i64 %a106701) {
  %envptr108980 = inttoptr i64 %env108640 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108981 = getelementptr inbounds i64, i64* %envptr108980, i64 3              ; &envptr108980[3]
  %f7A$fargs = load i64, i64* %envptr108981, align 8                                 ; load; *envptr108981
  %envptr108982 = inttoptr i64 %env108640 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108983 = getelementptr inbounds i64, i64* %envptr108982, i64 2              ; &envptr108982[2]
  %SJA$_37last = load i64, i64* %envptr108983, align 8                               ; load; *envptr108983
  %envptr108984 = inttoptr i64 %env108640 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108985 = getelementptr inbounds i64, i64* %envptr108984, i64 1              ; &envptr108984[1]
  %cont106801 = load i64, i64* %envptr108985, align 8                                ; load; *envptr108985
  %cloptr108986 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr108988 = getelementptr inbounds i64, i64* %cloptr108986, i64 1                ; &eptr108988[1]
  %eptr108989 = getelementptr inbounds i64, i64* %cloptr108986, i64 2                ; &eptr108989[2]
  store i64 %cont106801, i64* %eptr108988                                            ; *eptr108988 = %cont106801
  store i64 %a106701, i64* %eptr108989                                               ; *eptr108989 = %a106701
  %eptr108987 = getelementptr inbounds i64, i64* %cloptr108986, i64 0                ; &cloptr108986[0]
  %f108990 = ptrtoint void(i64,i64,i64)* @lam108637 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f108990, i64* %eptr108987                                               ; store fptr
  %arg107042 = ptrtoint i64* %cloptr108986 to i64                                    ; closure cast; i64* -> i64
  %cloptr108991 = inttoptr i64 %SJA$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108991)                                       ; assert function application
  %i0ptr108992 = getelementptr inbounds i64, i64* %cloptr108991, i64 0               ; &cloptr108991[0]
  %f108994 = load i64, i64* %i0ptr108992, align 8                                    ; load; *i0ptr108992
  %fptr108993 = inttoptr i64 %f108994 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr108993(i64 %SJA$_37last, i64 %arg107042, i64 %f7A$fargs); tail call
  ret void
}


define void @lam108637(i64 %env108638, i64 %_95106805, i64 %a106702) {
  %envptr108995 = inttoptr i64 %env108638 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108996 = getelementptr inbounds i64, i64* %envptr108995, i64 2              ; &envptr108995[2]
  %a106701 = load i64, i64* %envptr108996, align 8                                   ; load; *envptr108996
  %envptr108997 = inttoptr i64 %env108638 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr108998 = getelementptr inbounds i64, i64* %envptr108997, i64 1              ; &envptr108997[1]
  %cont106801 = load i64, i64* %envptr108998, align 8                                ; load; *envptr108998
  %retprim106806 = call i64 @prim_cons(i64 %a106701, i64 %a106702)                   ; call prim_cons
  %arg107047 = add i64 0, 0                                                          ; quoted ()
  %cloptr108999 = inttoptr i64 %cont106801 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr108999)                                       ; assert function application
  %i0ptr109000 = getelementptr inbounds i64, i64* %cloptr108999, i64 0               ; &cloptr108999[0]
  %f109002 = load i64, i64* %i0ptr109000, align 8                                    ; load; *i0ptr109000
  %fptr109001 = inttoptr i64 %f109002 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109001(i64 %cont106801, i64 %arg107047, i64 %retprim106806); tail call
  ret void
}


define void @lam108633(i64 %env108634, i64 %_95106809, i64 %YWD$_37foldl) {
  %envptr109003 = inttoptr i64 %env108634 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109004 = getelementptr inbounds i64, i64* %envptr109003, i64 2              ; &envptr109003[2]
  %hoZ$_37foldl1 = load i64, i64* %envptr109004, align 8                             ; load; *envptr109004
  %envptr109005 = inttoptr i64 %env108634 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109006 = getelementptr inbounds i64, i64* %envptr109005, i64 1              ; &envptr109005[1]
  %xfk$_37length = load i64, i64* %envptr109006, align 8                             ; load; *envptr109006
  %cloptr109007 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109008 = getelementptr inbounds i64, i64* %cloptr109007, i64 0                ; &cloptr109007[0]
  %f109009 = ptrtoint void(i64,i64,i64,i64)* @lam108631 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f109009, i64* %eptr109008                                               ; store fptr
  %WBu$_37_62 = ptrtoint i64* %cloptr109007 to i64                                   ; closure cast; i64* -> i64
  %cloptr109010 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109011 = getelementptr inbounds i64, i64* %cloptr109010, i64 0                ; &cloptr109010[0]
  %f109012 = ptrtoint void(i64,i64,i64,i64)* @lam108628 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f109012, i64* %eptr109011                                               ; store fptr
  %U2j$_37_62_61 = ptrtoint i64* %cloptr109010 to i64                                ; closure cast; i64* -> i64
  %arg107067 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg107066 = add i64 0, 0                                                          ; quoted ()
  %tzW$_37append = call i64 @prim_make_45vector(i64 %arg107067, i64 %arg107066)      ; call prim_make_45vector
  %arg107069 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr109013 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr109015 = getelementptr inbounds i64, i64* %cloptr109013, i64 1                ; &eptr109015[1]
  store i64 %tzW$_37append, i64* %eptr109015                                         ; *eptr109015 = %tzW$_37append
  %eptr109014 = getelementptr inbounds i64, i64* %cloptr109013, i64 0                ; &cloptr109013[0]
  %f109016 = ptrtoint void(i64,i64,i64,i64)* @lam108622 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f109016, i64* %eptr109014                                               ; store fptr
  %arg107068 = ptrtoint i64* %cloptr109013 to i64                                    ; closure cast; i64* -> i64
  %Ohx$_950 = call i64 @prim_vector_45set_33(i64 %tzW$_37append, i64 %arg107069, i64 %arg107068); call prim_vector_45set_33
  %arg107088 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106899 = call i64 @prim_vector_45ref(i64 %tzW$_37append, i64 %arg107088)   ; call prim_vector_45ref
  %cloptr109017 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109019 = getelementptr inbounds i64, i64* %cloptr109017, i64 1                ; &eptr109019[1]
  %eptr109020 = getelementptr inbounds i64, i64* %cloptr109017, i64 2                ; &eptr109020[2]
  %eptr109021 = getelementptr inbounds i64, i64* %cloptr109017, i64 3                ; &eptr109021[3]
  store i64 %xfk$_37length, i64* %eptr109019                                         ; *eptr109019 = %xfk$_37length
  store i64 %hoZ$_37foldl1, i64* %eptr109020                                         ; *eptr109020 = %hoZ$_37foldl1
  store i64 %WBu$_37_62, i64* %eptr109021                                            ; *eptr109021 = %WBu$_37_62
  %eptr109018 = getelementptr inbounds i64, i64* %cloptr109017, i64 0                ; &cloptr109017[0]
  %f109022 = ptrtoint void(i64,i64,i64)* @lam108614 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109022, i64* %eptr109018                                               ; store fptr
  %arg107092 = ptrtoint i64* %cloptr109017 to i64                                    ; closure cast; i64* -> i64
  %arg107091 = add i64 0, 0                                                          ; quoted ()
  %cloptr109023 = inttoptr i64 %arg107092 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109023)                                       ; assert function application
  %i0ptr109024 = getelementptr inbounds i64, i64* %cloptr109023, i64 0               ; &cloptr109023[0]
  %f109026 = load i64, i64* %i0ptr109024, align 8                                    ; load; *i0ptr109024
  %fptr109025 = inttoptr i64 %f109026 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109025(i64 %arg107092, i64 %arg107091, i64 %retprim106899); tail call
  ret void
}


define void @lam108631(i64 %env108632, i64 %cont106810, i64 %P0A$a, i64 %aOI$b) {
  %a106712 = call i64 @prim__60_61(i64 %P0A$a, i64 %aOI$b)                           ; call prim__60_61
  %retprim106811 = call i64 @prim_not(i64 %a106712)                                  ; call prim_not
  %arg107058 = add i64 0, 0                                                          ; quoted ()
  %cloptr109027 = inttoptr i64 %cont106810 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109027)                                       ; assert function application
  %i0ptr109028 = getelementptr inbounds i64, i64* %cloptr109027, i64 0               ; &cloptr109027[0]
  %f109030 = load i64, i64* %i0ptr109028, align 8                                    ; load; *i0ptr109028
  %fptr109029 = inttoptr i64 %f109030 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109029(i64 %cont106810, i64 %arg107058, i64 %retprim106811); tail call
  ret void
}


define void @lam108628(i64 %env108629, i64 %cont106812, i64 %GLz$a, i64 %hlT$b) {
  %a106713 = call i64 @prim__60(i64 %GLz$a, i64 %hlT$b)                              ; call prim__60
  %retprim106813 = call i64 @prim_not(i64 %a106713)                                  ; call prim_not
  %arg107064 = add i64 0, 0                                                          ; quoted ()
  %cloptr109031 = inttoptr i64 %cont106812 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109031)                                       ; assert function application
  %i0ptr109032 = getelementptr inbounds i64, i64* %cloptr109031, i64 0               ; &cloptr109031[0]
  %f109034 = load i64, i64* %i0ptr109032, align 8                                    ; load; *i0ptr109032
  %fptr109033 = inttoptr i64 %f109034 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109033(i64 %cont106812, i64 %arg107064, i64 %retprim106813); tail call
  ret void
}


define void @lam108622(i64 %env108623, i64 %cont106896, i64 %q1c$ls0, i64 %oaK$ls1) {
  %envptr109035 = inttoptr i64 %env108623 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109036 = getelementptr inbounds i64, i64* %envptr109035, i64 1              ; &envptr109035[1]
  %tzW$_37append = load i64, i64* %envptr109036, align 8                             ; load; *envptr109036
  %a106714 = call i64 @prim_null_63(i64 %q1c$ls0)                                    ; call prim_null_63
  %cmp109037 = icmp eq i64 %a106714, 15                                              ; false?
  br i1 %cmp109037, label %else109039, label %then109038                             ; if

then109038:
  %arg107073 = add i64 0, 0                                                          ; quoted ()
  %cloptr109040 = inttoptr i64 %cont106896 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109040)                                       ; assert function application
  %i0ptr109041 = getelementptr inbounds i64, i64* %cloptr109040, i64 0               ; &cloptr109040[0]
  %f109043 = load i64, i64* %i0ptr109041, align 8                                    ; load; *i0ptr109041
  %fptr109042 = inttoptr i64 %f109043 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109042(i64 %cont106896, i64 %arg107073, i64 %oaK$ls1); tail call
  ret void

else109039:
  %a106715 = call i64 @prim_car(i64 %q1c$ls0)                                        ; call prim_car
  %arg107076 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106716 = call i64 @prim_vector_45ref(i64 %tzW$_37append, i64 %arg107076)         ; call prim_vector_45ref
  %a106717 = call i64 @prim_cdr(i64 %q1c$ls0)                                        ; call prim_cdr
  %cloptr109044 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109046 = getelementptr inbounds i64, i64* %cloptr109044, i64 1                ; &eptr109046[1]
  %eptr109047 = getelementptr inbounds i64, i64* %cloptr109044, i64 2                ; &eptr109047[2]
  store i64 %cont106896, i64* %eptr109046                                            ; *eptr109046 = %cont106896
  store i64 %a106715, i64* %eptr109047                                               ; *eptr109047 = %a106715
  %eptr109045 = getelementptr inbounds i64, i64* %cloptr109044, i64 0                ; &cloptr109044[0]
  %f109048 = ptrtoint void(i64,i64,i64)* @lam108619 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109048, i64* %eptr109045                                               ; store fptr
  %arg107081 = ptrtoint i64* %cloptr109044 to i64                                    ; closure cast; i64* -> i64
  %cloptr109049 = inttoptr i64 %a106716 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109049)                                       ; assert function application
  %i0ptr109050 = getelementptr inbounds i64, i64* %cloptr109049, i64 0               ; &cloptr109049[0]
  %f109052 = load i64, i64* %i0ptr109050, align 8                                    ; load; *i0ptr109050
  %fptr109051 = inttoptr i64 %f109052 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109051(i64 %a106716, i64 %arg107081, i64 %a106717, i64 %oaK$ls1); tail call
  ret void
}


define void @lam108619(i64 %env108620, i64 %_95106897, i64 %a106718) {
  %envptr109053 = inttoptr i64 %env108620 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109054 = getelementptr inbounds i64, i64* %envptr109053, i64 2              ; &envptr109053[2]
  %a106715 = load i64, i64* %envptr109054, align 8                                   ; load; *envptr109054
  %envptr109055 = inttoptr i64 %env108620 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109056 = getelementptr inbounds i64, i64* %envptr109055, i64 1              ; &envptr109055[1]
  %cont106896 = load i64, i64* %envptr109056, align 8                                ; load; *envptr109056
  %retprim106898 = call i64 @prim_cons(i64 %a106715, i64 %a106718)                   ; call prim_cons
  %arg107086 = add i64 0, 0                                                          ; quoted ()
  %cloptr109057 = inttoptr i64 %cont106896 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109057)                                       ; assert function application
  %i0ptr109058 = getelementptr inbounds i64, i64* %cloptr109057, i64 0               ; &cloptr109057[0]
  %f109060 = load i64, i64* %i0ptr109058, align 8                                    ; load; *i0ptr109058
  %fptr109059 = inttoptr i64 %f109060 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109059(i64 %cont106896, i64 %arg107086, i64 %retprim106898); tail call
  ret void
}


define void @lam108614(i64 %env108615, i64 %_95106814, i64 %VhF$_37append) {
  %envptr109061 = inttoptr i64 %env108615 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109062 = getelementptr inbounds i64, i64* %envptr109061, i64 3              ; &envptr109061[3]
  %WBu$_37_62 = load i64, i64* %envptr109062, align 8                                ; load; *envptr109062
  %envptr109063 = inttoptr i64 %env108615 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109064 = getelementptr inbounds i64, i64* %envptr109063, i64 2              ; &envptr109063[2]
  %hoZ$_37foldl1 = load i64, i64* %envptr109064, align 8                             ; load; *envptr109064
  %envptr109065 = inttoptr i64 %env108615 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109066 = getelementptr inbounds i64, i64* %envptr109065, i64 1              ; &envptr109065[1]
  %xfk$_37length = load i64, i64* %envptr109066, align 8                             ; load; *envptr109066
  %cloptr109067 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109068 = getelementptr inbounds i64, i64* %cloptr109067, i64 0                ; &cloptr109067[0]
  %f109069 = ptrtoint void(i64,i64,i64)* @lam108612 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109069, i64* %eptr109068                                               ; store fptr
  %SpC$_37list_63 = ptrtoint i64* %cloptr109067 to i64                               ; closure cast; i64* -> i64
  %cloptr109070 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109071 = getelementptr inbounds i64, i64* %cloptr109070, i64 0                ; &cloptr109070[0]
  %f109072 = ptrtoint void(i64,i64,i64,i64)* @lam108572 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f109072, i64* %eptr109071                                               ; store fptr
  %g8E$_37drop = ptrtoint i64* %cloptr109070 to i64                                  ; closure cast; i64* -> i64
  %cloptr109073 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109074 = getelementptr inbounds i64, i64* %cloptr109073, i64 0                ; &cloptr109073[0]
  %f109075 = ptrtoint void(i64,i64,i64,i64)* @lam108532 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f109075, i64* %eptr109074                                               ; store fptr
  %giZ$_37memv = ptrtoint i64* %cloptr109073 to i64                                  ; closure cast; i64* -> i64
  %cloptr109076 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr109078 = getelementptr inbounds i64, i64* %cloptr109076, i64 1                ; &eptr109078[1]
  store i64 %hoZ$_37foldl1, i64* %eptr109078                                         ; *eptr109078 = %hoZ$_37foldl1
  %eptr109077 = getelementptr inbounds i64, i64* %cloptr109076, i64 0                ; &cloptr109076[0]
  %f109079 = ptrtoint void(i64,i64)* @lam108501 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f109079, i64* %eptr109077                                               ; store fptr
  %Xvl$_37_47 = ptrtoint i64* %cloptr109076 to i64                                   ; closure cast; i64* -> i64
  %cloptr109080 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109081 = getelementptr inbounds i64, i64* %cloptr109080, i64 0                ; &cloptr109080[0]
  %f109082 = ptrtoint void(i64,i64,i64)* @lam108489 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109082, i64* %eptr109081                                               ; store fptr
  %pn7$_37first = ptrtoint i64* %cloptr109080 to i64                                 ; closure cast; i64* -> i64
  %cloptr109083 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109084 = getelementptr inbounds i64, i64* %cloptr109083, i64 0                ; &cloptr109083[0]
  %f109085 = ptrtoint void(i64,i64,i64)* @lam108486 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109085, i64* %eptr109084                                               ; store fptr
  %YeS$_37second = ptrtoint i64* %cloptr109083 to i64                                ; closure cast; i64* -> i64
  %cloptr109086 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109087 = getelementptr inbounds i64, i64* %cloptr109086, i64 0                ; &cloptr109086[0]
  %f109088 = ptrtoint void(i64,i64,i64)* @lam108483 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109088, i64* %eptr109087                                               ; store fptr
  %LQS$_37third = ptrtoint i64* %cloptr109086 to i64                                 ; closure cast; i64* -> i64
  %cloptr109089 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109090 = getelementptr inbounds i64, i64* %cloptr109089, i64 0                ; &cloptr109089[0]
  %f109091 = ptrtoint void(i64,i64,i64)* @lam108480 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109091, i64* %eptr109090                                               ; store fptr
  %RU1$_37fourth = ptrtoint i64* %cloptr109089 to i64                                ; closure cast; i64* -> i64
  %cloptr109092 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109093 = getelementptr inbounds i64, i64* %cloptr109092, i64 0                ; &cloptr109092[0]
  %f109094 = ptrtoint void(i64,i64,i64)* @lam108477 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109094, i64* %eptr109093                                               ; store fptr
  %uat$promise_63 = ptrtoint i64* %cloptr109092 to i64                               ; closure cast; i64* -> i64
  %cloptr109095 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109096 = getelementptr inbounds i64, i64* %cloptr109095, i64 0                ; &cloptr109095[0]
  %f109097 = ptrtoint void(i64,i64)* @lam108471 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f109097, i64* %eptr109096                                               ; store fptr
  %arg107355 = ptrtoint i64* %cloptr109095 to i64                                    ; closure cast; i64* -> i64
  %cloptr109098 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr109100 = getelementptr inbounds i64, i64* %cloptr109098, i64 1                ; &eptr109100[1]
  %eptr109101 = getelementptr inbounds i64, i64* %cloptr109098, i64 2                ; &eptr109101[2]
  %eptr109102 = getelementptr inbounds i64, i64* %cloptr109098, i64 3                ; &eptr109102[3]
  %eptr109103 = getelementptr inbounds i64, i64* %cloptr109098, i64 4                ; &eptr109103[4]
  store i64 %Xvl$_37_47, i64* %eptr109100                                            ; *eptr109100 = %Xvl$_37_47
  store i64 %xfk$_37length, i64* %eptr109101                                         ; *eptr109101 = %xfk$_37length
  store i64 %WBu$_37_62, i64* %eptr109102                                            ; *eptr109102 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109103                                           ; *eptr109103 = %g8E$_37drop
  %eptr109099 = getelementptr inbounds i64, i64* %cloptr109098, i64 0                ; &cloptr109098[0]
  %f109104 = ptrtoint void(i64,i64,i64)* @lam108468 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109104, i64* %eptr109099                                               ; store fptr
  %arg107354 = ptrtoint i64* %cloptr109098 to i64                                    ; closure cast; i64* -> i64
  %rva107889 = add i64 0, 0                                                          ; quoted ()
  %rva107888 = call i64 @prim_cons(i64 %arg107354, i64 %rva107889)                   ; call prim_cons
  %cloptr109105 = inttoptr i64 %arg107355 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109105)                                       ; assert function application
  %i0ptr109106 = getelementptr inbounds i64, i64* %cloptr109105, i64 0               ; &cloptr109105[0]
  %f109108 = load i64, i64* %i0ptr109106, align 8                                    ; load; *i0ptr109106
  %fptr109107 = inttoptr i64 %f109108 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109107(i64 %arg107355, i64 %rva107888)              ; tail call
  ret void
}


define void @lam108612(i64 %env108613, i64 %cont106815, i64 %qJG$a) {
  %arg107094 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %omg$a = call i64 @prim_make_45vector(i64 %arg107094, i64 %qJG$a)                  ; call prim_make_45vector
  %cloptr109109 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109110 = getelementptr inbounds i64, i64* %cloptr109109, i64 0                ; &cloptr109109[0]
  %f109111 = ptrtoint void(i64,i64,i64)* @lam108609 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109111, i64* %eptr109110                                               ; store fptr
  %arg107097 = ptrtoint i64* %cloptr109109 to i64                                    ; closure cast; i64* -> i64
  %cloptr109112 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109114 = getelementptr inbounds i64, i64* %cloptr109112, i64 1                ; &eptr109114[1]
  %eptr109115 = getelementptr inbounds i64, i64* %cloptr109112, i64 2                ; &eptr109115[2]
  store i64 %omg$a, i64* %eptr109114                                                 ; *eptr109114 = %omg$a
  store i64 %cont106815, i64* %eptr109115                                            ; *eptr109115 = %cont106815
  %eptr109113 = getelementptr inbounds i64, i64* %cloptr109112, i64 0                ; &cloptr109112[0]
  %f109116 = ptrtoint void(i64,i64,i64)* @lam108606 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109116, i64* %eptr109113                                               ; store fptr
  %arg107096 = ptrtoint i64* %cloptr109112 to i64                                    ; closure cast; i64* -> i64
  %cloptr109117 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109119 = getelementptr inbounds i64, i64* %cloptr109117, i64 1                ; &eptr109119[1]
  %eptr109120 = getelementptr inbounds i64, i64* %cloptr109117, i64 2                ; &eptr109120[2]
  store i64 %omg$a, i64* %eptr109119                                                 ; *eptr109119 = %omg$a
  store i64 %cont106815, i64* %eptr109120                                            ; *eptr109120 = %cont106815
  %eptr109118 = getelementptr inbounds i64, i64* %cloptr109117, i64 0                ; &cloptr109117[0]
  %f109121 = ptrtoint void(i64,i64,i64)* @lam108589 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109121, i64* %eptr109118                                               ; store fptr
  %arg107095 = ptrtoint i64* %cloptr109117 to i64                                    ; closure cast; i64* -> i64
  %cloptr109122 = inttoptr i64 %arg107097 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109122)                                       ; assert function application
  %i0ptr109123 = getelementptr inbounds i64, i64* %cloptr109122, i64 0               ; &cloptr109122[0]
  %f109125 = load i64, i64* %i0ptr109123, align 8                                    ; load; *i0ptr109123
  %fptr109124 = inttoptr i64 %f109125 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109124(i64 %arg107097, i64 %arg107096, i64 %arg107095); tail call
  ret void
}


define void @lam108609(i64 %env108610, i64 %cont106821, i64 %ugO$k) {
  %arg107099 = add i64 0, 0                                                          ; quoted ()
  %cloptr109126 = inttoptr i64 %cont106821 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109126)                                       ; assert function application
  %i0ptr109127 = getelementptr inbounds i64, i64* %cloptr109126, i64 0               ; &cloptr109126[0]
  %f109129 = load i64, i64* %i0ptr109127, align 8                                    ; load; *i0ptr109127
  %fptr109128 = inttoptr i64 %f109129 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109128(i64 %cont106821, i64 %arg107099, i64 %ugO$k) ; tail call
  ret void
}


define void @lam108606(i64 %env108607, i64 %_95106816, i64 %pHM$cc) {
  %envptr109130 = inttoptr i64 %env108607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109131 = getelementptr inbounds i64, i64* %envptr109130, i64 2              ; &envptr109130[2]
  %cont106815 = load i64, i64* %envptr109131, align 8                                ; load; *envptr109131
  %envptr109132 = inttoptr i64 %env108607 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109133 = getelementptr inbounds i64, i64* %envptr109132, i64 1              ; &envptr109132[1]
  %omg$a = load i64, i64* %envptr109133, align 8                                     ; load; *envptr109133
  %arg107101 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106719 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107101)                 ; call prim_vector_45ref
  %a106720 = call i64 @prim_null_63(i64 %a106719)                                    ; call prim_null_63
  %cmp109134 = icmp eq i64 %a106720, 15                                              ; false?
  br i1 %cmp109134, label %else109136, label %then109135                             ; if

then109135:
  %arg107105 = add i64 0, 0                                                          ; quoted ()
  %arg107104 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr109137 = inttoptr i64 %cont106815 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109137)                                       ; assert function application
  %i0ptr109138 = getelementptr inbounds i64, i64* %cloptr109137, i64 0               ; &cloptr109137[0]
  %f109140 = load i64, i64* %i0ptr109138, align 8                                    ; load; *i0ptr109138
  %fptr109139 = inttoptr i64 %f109140 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109139(i64 %cont106815, i64 %arg107105, i64 %arg107104); tail call
  ret void

else109136:
  %arg107107 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106721 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107107)                 ; call prim_vector_45ref
  %a106722 = call i64 @prim_cons_63(i64 %a106721)                                    ; call prim_cons_63
  %cmp109141 = icmp eq i64 %a106722, 15                                              ; false?
  br i1 %cmp109141, label %else109143, label %then109142                             ; if

then109142:
  %arg107110 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106723 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107110)                 ; call prim_vector_45ref
  %retprim106820 = call i64 @prim_cdr(i64 %a106723)                                  ; call prim_cdr
  %cloptr109144 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109146 = getelementptr inbounds i64, i64* %cloptr109144, i64 1                ; &eptr109146[1]
  %eptr109147 = getelementptr inbounds i64, i64* %cloptr109144, i64 2                ; &eptr109147[2]
  %eptr109148 = getelementptr inbounds i64, i64* %cloptr109144, i64 3                ; &eptr109148[3]
  store i64 %pHM$cc, i64* %eptr109146                                                ; *eptr109146 = %pHM$cc
  store i64 %omg$a, i64* %eptr109147                                                 ; *eptr109147 = %omg$a
  store i64 %cont106815, i64* %eptr109148                                            ; *eptr109148 = %cont106815
  %eptr109145 = getelementptr inbounds i64, i64* %cloptr109144, i64 0                ; &cloptr109144[0]
  %f109149 = ptrtoint void(i64,i64,i64)* @lam108599 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109149, i64* %eptr109145                                               ; store fptr
  %arg107115 = ptrtoint i64* %cloptr109144 to i64                                    ; closure cast; i64* -> i64
  %arg107114 = add i64 0, 0                                                          ; quoted ()
  %cloptr109150 = inttoptr i64 %arg107115 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109150)                                       ; assert function application
  %i0ptr109151 = getelementptr inbounds i64, i64* %cloptr109150, i64 0               ; &cloptr109150[0]
  %f109153 = load i64, i64* %i0ptr109151, align 8                                    ; load; *i0ptr109151
  %fptr109152 = inttoptr i64 %f109153 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109152(i64 %arg107115, i64 %arg107114, i64 %retprim106820); tail call
  ret void

else109143:
  %arg107129 = add i64 0, 0                                                          ; quoted ()
  %arg107128 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr109154 = inttoptr i64 %cont106815 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109154)                                       ; assert function application
  %i0ptr109155 = getelementptr inbounds i64, i64* %cloptr109154, i64 0               ; &cloptr109154[0]
  %f109157 = load i64, i64* %i0ptr109155, align 8                                    ; load; *i0ptr109155
  %fptr109156 = inttoptr i64 %f109157 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109156(i64 %cont106815, i64 %arg107129, i64 %arg107128); tail call
  ret void
}


define void @lam108599(i64 %env108600, i64 %_95106817, i64 %Rhf$b) {
  %envptr109158 = inttoptr i64 %env108600 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109159 = getelementptr inbounds i64, i64* %envptr109158, i64 3              ; &envptr109158[3]
  %cont106815 = load i64, i64* %envptr109159, align 8                                ; load; *envptr109159
  %envptr109160 = inttoptr i64 %env108600 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109161 = getelementptr inbounds i64, i64* %envptr109160, i64 2              ; &envptr109160[2]
  %omg$a = load i64, i64* %envptr109161, align 8                                     ; load; *envptr109161
  %envptr109162 = inttoptr i64 %env108600 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109163 = getelementptr inbounds i64, i64* %envptr109162, i64 1              ; &envptr109162[1]
  %pHM$cc = load i64, i64* %envptr109163, align 8                                    ; load; *envptr109163
  %arg107116 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106724 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107116)                 ; call prim_vector_45ref
  %a106725 = call i64 @prim_cdr(i64 %a106724)                                        ; call prim_cdr
  %arg107120 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106819 = call i64 @prim_vector_45set_33(i64 %omg$a, i64 %arg107120, i64 %a106725); call prim_vector_45set_33
  %cloptr109164 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109166 = getelementptr inbounds i64, i64* %cloptr109164, i64 1                ; &eptr109166[1]
  %eptr109167 = getelementptr inbounds i64, i64* %cloptr109164, i64 2                ; &eptr109167[2]
  store i64 %pHM$cc, i64* %eptr109166                                                ; *eptr109166 = %pHM$cc
  store i64 %cont106815, i64* %eptr109167                                            ; *eptr109167 = %cont106815
  %eptr109165 = getelementptr inbounds i64, i64* %cloptr109164, i64 0                ; &cloptr109164[0]
  %f109168 = ptrtoint void(i64,i64,i64)* @lam108595 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109168, i64* %eptr109165                                               ; store fptr
  %arg107124 = ptrtoint i64* %cloptr109164 to i64                                    ; closure cast; i64* -> i64
  %arg107123 = add i64 0, 0                                                          ; quoted ()
  %cloptr109169 = inttoptr i64 %arg107124 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109169)                                       ; assert function application
  %i0ptr109170 = getelementptr inbounds i64, i64* %cloptr109169, i64 0               ; &cloptr109169[0]
  %f109172 = load i64, i64* %i0ptr109170, align 8                                    ; load; *i0ptr109170
  %fptr109171 = inttoptr i64 %f109172 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109171(i64 %arg107124, i64 %arg107123, i64 %retprim106819); tail call
  ret void
}


define void @lam108595(i64 %env108596, i64 %_95106818, i64 %JmL$_950) {
  %envptr109173 = inttoptr i64 %env108596 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109174 = getelementptr inbounds i64, i64* %envptr109173, i64 2              ; &envptr109173[2]
  %cont106815 = load i64, i64* %envptr109174, align 8                                ; load; *envptr109174
  %envptr109175 = inttoptr i64 %env108596 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109176 = getelementptr inbounds i64, i64* %envptr109175, i64 1              ; &envptr109175[1]
  %pHM$cc = load i64, i64* %envptr109176, align 8                                    ; load; *envptr109176
  %cloptr109177 = inttoptr i64 %pHM$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109177)                                       ; assert function application
  %i0ptr109178 = getelementptr inbounds i64, i64* %cloptr109177, i64 0               ; &cloptr109177[0]
  %f109180 = load i64, i64* %i0ptr109178, align 8                                    ; load; *i0ptr109178
  %fptr109179 = inttoptr i64 %f109180 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109179(i64 %pHM$cc, i64 %cont106815, i64 %pHM$cc)   ; tail call
  ret void
}


define void @lam108589(i64 %env108590, i64 %_95106816, i64 %pHM$cc) {
  %envptr109181 = inttoptr i64 %env108590 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109182 = getelementptr inbounds i64, i64* %envptr109181, i64 2              ; &envptr109181[2]
  %cont106815 = load i64, i64* %envptr109182, align 8                                ; load; *envptr109182
  %envptr109183 = inttoptr i64 %env108590 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109184 = getelementptr inbounds i64, i64* %envptr109183, i64 1              ; &envptr109183[1]
  %omg$a = load i64, i64* %envptr109184, align 8                                     ; load; *envptr109184
  %arg107131 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106719 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107131)                 ; call prim_vector_45ref
  %a106720 = call i64 @prim_null_63(i64 %a106719)                                    ; call prim_null_63
  %cmp109185 = icmp eq i64 %a106720, 15                                              ; false?
  br i1 %cmp109185, label %else109187, label %then109186                             ; if

then109186:
  %arg107135 = add i64 0, 0                                                          ; quoted ()
  %arg107134 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr109188 = inttoptr i64 %cont106815 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109188)                                       ; assert function application
  %i0ptr109189 = getelementptr inbounds i64, i64* %cloptr109188, i64 0               ; &cloptr109188[0]
  %f109191 = load i64, i64* %i0ptr109189, align 8                                    ; load; *i0ptr109189
  %fptr109190 = inttoptr i64 %f109191 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109190(i64 %cont106815, i64 %arg107135, i64 %arg107134); tail call
  ret void

else109187:
  %arg107137 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106721 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107137)                 ; call prim_vector_45ref
  %a106722 = call i64 @prim_cons_63(i64 %a106721)                                    ; call prim_cons_63
  %cmp109192 = icmp eq i64 %a106722, 15                                              ; false?
  br i1 %cmp109192, label %else109194, label %then109193                             ; if

then109193:
  %arg107140 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106723 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107140)                 ; call prim_vector_45ref
  %retprim106820 = call i64 @prim_cdr(i64 %a106723)                                  ; call prim_cdr
  %cloptr109195 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109197 = getelementptr inbounds i64, i64* %cloptr109195, i64 1                ; &eptr109197[1]
  %eptr109198 = getelementptr inbounds i64, i64* %cloptr109195, i64 2                ; &eptr109198[2]
  %eptr109199 = getelementptr inbounds i64, i64* %cloptr109195, i64 3                ; &eptr109199[3]
  store i64 %pHM$cc, i64* %eptr109197                                                ; *eptr109197 = %pHM$cc
  store i64 %omg$a, i64* %eptr109198                                                 ; *eptr109198 = %omg$a
  store i64 %cont106815, i64* %eptr109199                                            ; *eptr109199 = %cont106815
  %eptr109196 = getelementptr inbounds i64, i64* %cloptr109195, i64 0                ; &cloptr109195[0]
  %f109200 = ptrtoint void(i64,i64,i64)* @lam108582 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109200, i64* %eptr109196                                               ; store fptr
  %arg107145 = ptrtoint i64* %cloptr109195 to i64                                    ; closure cast; i64* -> i64
  %arg107144 = add i64 0, 0                                                          ; quoted ()
  %cloptr109201 = inttoptr i64 %arg107145 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109201)                                       ; assert function application
  %i0ptr109202 = getelementptr inbounds i64, i64* %cloptr109201, i64 0               ; &cloptr109201[0]
  %f109204 = load i64, i64* %i0ptr109202, align 8                                    ; load; *i0ptr109202
  %fptr109203 = inttoptr i64 %f109204 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109203(i64 %arg107145, i64 %arg107144, i64 %retprim106820); tail call
  ret void

else109194:
  %arg107159 = add i64 0, 0                                                          ; quoted ()
  %arg107158 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr109205 = inttoptr i64 %cont106815 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109205)                                       ; assert function application
  %i0ptr109206 = getelementptr inbounds i64, i64* %cloptr109205, i64 0               ; &cloptr109205[0]
  %f109208 = load i64, i64* %i0ptr109206, align 8                                    ; load; *i0ptr109206
  %fptr109207 = inttoptr i64 %f109208 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109207(i64 %cont106815, i64 %arg107159, i64 %arg107158); tail call
  ret void
}


define void @lam108582(i64 %env108583, i64 %_95106817, i64 %Rhf$b) {
  %envptr109209 = inttoptr i64 %env108583 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109210 = getelementptr inbounds i64, i64* %envptr109209, i64 3              ; &envptr109209[3]
  %cont106815 = load i64, i64* %envptr109210, align 8                                ; load; *envptr109210
  %envptr109211 = inttoptr i64 %env108583 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109212 = getelementptr inbounds i64, i64* %envptr109211, i64 2              ; &envptr109211[2]
  %omg$a = load i64, i64* %envptr109212, align 8                                     ; load; *envptr109212
  %envptr109213 = inttoptr i64 %env108583 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109214 = getelementptr inbounds i64, i64* %envptr109213, i64 1              ; &envptr109213[1]
  %pHM$cc = load i64, i64* %envptr109214, align 8                                    ; load; *envptr109214
  %arg107146 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106724 = call i64 @prim_vector_45ref(i64 %omg$a, i64 %arg107146)                 ; call prim_vector_45ref
  %a106725 = call i64 @prim_cdr(i64 %a106724)                                        ; call prim_cdr
  %arg107150 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106819 = call i64 @prim_vector_45set_33(i64 %omg$a, i64 %arg107150, i64 %a106725); call prim_vector_45set_33
  %cloptr109215 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109217 = getelementptr inbounds i64, i64* %cloptr109215, i64 1                ; &eptr109217[1]
  %eptr109218 = getelementptr inbounds i64, i64* %cloptr109215, i64 2                ; &eptr109218[2]
  store i64 %pHM$cc, i64* %eptr109217                                                ; *eptr109217 = %pHM$cc
  store i64 %cont106815, i64* %eptr109218                                            ; *eptr109218 = %cont106815
  %eptr109216 = getelementptr inbounds i64, i64* %cloptr109215, i64 0                ; &cloptr109215[0]
  %f109219 = ptrtoint void(i64,i64,i64)* @lam108578 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109219, i64* %eptr109216                                               ; store fptr
  %arg107154 = ptrtoint i64* %cloptr109215 to i64                                    ; closure cast; i64* -> i64
  %arg107153 = add i64 0, 0                                                          ; quoted ()
  %cloptr109220 = inttoptr i64 %arg107154 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109220)                                       ; assert function application
  %i0ptr109221 = getelementptr inbounds i64, i64* %cloptr109220, i64 0               ; &cloptr109220[0]
  %f109223 = load i64, i64* %i0ptr109221, align 8                                    ; load; *i0ptr109221
  %fptr109222 = inttoptr i64 %f109223 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109222(i64 %arg107154, i64 %arg107153, i64 %retprim106819); tail call
  ret void
}


define void @lam108578(i64 %env108579, i64 %_95106818, i64 %JmL$_950) {
  %envptr109224 = inttoptr i64 %env108579 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109225 = getelementptr inbounds i64, i64* %envptr109224, i64 2              ; &envptr109224[2]
  %cont106815 = load i64, i64* %envptr109225, align 8                                ; load; *envptr109225
  %envptr109226 = inttoptr i64 %env108579 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109227 = getelementptr inbounds i64, i64* %envptr109226, i64 1              ; &envptr109226[1]
  %pHM$cc = load i64, i64* %envptr109227, align 8                                    ; load; *envptr109227
  %cloptr109228 = inttoptr i64 %pHM$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109228)                                       ; assert function application
  %i0ptr109229 = getelementptr inbounds i64, i64* %cloptr109228, i64 0               ; &cloptr109228[0]
  %f109231 = load i64, i64* %i0ptr109229, align 8                                    ; load; *i0ptr109229
  %fptr109230 = inttoptr i64 %f109231 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109230(i64 %pHM$cc, i64 %cont106815, i64 %pHM$cc)   ; tail call
  ret void
}


define void @lam108572(i64 %env108573, i64 %cont106822, i64 %A8C$lst, i64 %lqB$n) {
  %arg107162 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %HGd$lst = call i64 @prim_make_45vector(i64 %arg107162, i64 %A8C$lst)              ; call prim_make_45vector
  %arg107164 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %jXg$n = call i64 @prim_make_45vector(i64 %arg107164, i64 %lqB$n)                  ; call prim_make_45vector
  %cloptr109232 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109233 = getelementptr inbounds i64, i64* %cloptr109232, i64 0                ; &cloptr109232[0]
  %f109234 = ptrtoint void(i64,i64,i64)* @lam108568 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109234, i64* %eptr109233                                               ; store fptr
  %arg107167 = ptrtoint i64* %cloptr109232 to i64                                    ; closure cast; i64* -> i64
  %cloptr109235 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109237 = getelementptr inbounds i64, i64* %cloptr109235, i64 1                ; &eptr109237[1]
  %eptr109238 = getelementptr inbounds i64, i64* %cloptr109235, i64 2                ; &eptr109238[2]
  %eptr109239 = getelementptr inbounds i64, i64* %cloptr109235, i64 3                ; &eptr109239[3]
  store i64 %jXg$n, i64* %eptr109237                                                 ; *eptr109237 = %jXg$n
  store i64 %HGd$lst, i64* %eptr109238                                               ; *eptr109238 = %HGd$lst
  store i64 %cont106822, i64* %eptr109239                                            ; *eptr109239 = %cont106822
  %eptr109236 = getelementptr inbounds i64, i64* %cloptr109235, i64 0                ; &cloptr109235[0]
  %f109240 = ptrtoint void(i64,i64,i64)* @lam108566 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109240, i64* %eptr109236                                               ; store fptr
  %arg107166 = ptrtoint i64* %cloptr109235 to i64                                    ; closure cast; i64* -> i64
  %cloptr109241 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109243 = getelementptr inbounds i64, i64* %cloptr109241, i64 1                ; &eptr109243[1]
  %eptr109244 = getelementptr inbounds i64, i64* %cloptr109241, i64 2                ; &eptr109244[2]
  %eptr109245 = getelementptr inbounds i64, i64* %cloptr109241, i64 3                ; &eptr109245[3]
  store i64 %jXg$n, i64* %eptr109243                                                 ; *eptr109243 = %jXg$n
  store i64 %HGd$lst, i64* %eptr109244                                               ; *eptr109244 = %HGd$lst
  store i64 %cont106822, i64* %eptr109245                                            ; *eptr109245 = %cont106822
  %eptr109242 = getelementptr inbounds i64, i64* %cloptr109241, i64 0                ; &cloptr109241[0]
  %f109246 = ptrtoint void(i64,i64,i64)* @lam108549 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109246, i64* %eptr109242                                               ; store fptr
  %arg107165 = ptrtoint i64* %cloptr109241 to i64                                    ; closure cast; i64* -> i64
  %cloptr109247 = inttoptr i64 %arg107167 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109247)                                       ; assert function application
  %i0ptr109248 = getelementptr inbounds i64, i64* %cloptr109247, i64 0               ; &cloptr109247[0]
  %f109250 = load i64, i64* %i0ptr109248, align 8                                    ; load; *i0ptr109248
  %fptr109249 = inttoptr i64 %f109250 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109249(i64 %arg107167, i64 %arg107166, i64 %arg107165); tail call
  ret void
}


define void @lam108568(i64 %env108569, i64 %cont106829, i64 %JWh$u) {
  %cloptr109251 = inttoptr i64 %JWh$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109251)                                       ; assert function application
  %i0ptr109252 = getelementptr inbounds i64, i64* %cloptr109251, i64 0               ; &cloptr109251[0]
  %f109254 = load i64, i64* %i0ptr109252, align 8                                    ; load; *i0ptr109252
  %fptr109253 = inttoptr i64 %f109254 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109253(i64 %JWh$u, i64 %cont106829, i64 %JWh$u)     ; tail call
  ret void
}


define void @lam108566(i64 %env108567, i64 %_95106823, i64 %Uio$cc) {
  %envptr109255 = inttoptr i64 %env108567 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109256 = getelementptr inbounds i64, i64* %envptr109255, i64 3              ; &envptr109255[3]
  %cont106822 = load i64, i64* %envptr109256, align 8                                ; load; *envptr109256
  %envptr109257 = inttoptr i64 %env108567 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109258 = getelementptr inbounds i64, i64* %envptr109257, i64 2              ; &envptr109257[2]
  %HGd$lst = load i64, i64* %envptr109258, align 8                                   ; load; *envptr109258
  %envptr109259 = inttoptr i64 %env108567 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109260 = getelementptr inbounds i64, i64* %envptr109259, i64 1              ; &envptr109259[1]
  %jXg$n = load i64, i64* %envptr109260, align 8                                     ; load; *envptr109260
  %arg107171 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106726 = call i64 @prim_vector_45ref(i64 %jXg$n, i64 %arg107171)                 ; call prim_vector_45ref
  %arg107174 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106727 = call i64 @prim__61(i64 %arg107174, i64 %a106726)                        ; call prim__61
  %cmp109261 = icmp eq i64 %a106727, 15                                              ; false?
  br i1 %cmp109261, label %else109263, label %then109262                             ; if

then109262:
  %arg107175 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106824 = call i64 @prim_vector_45ref(i64 %HGd$lst, i64 %arg107175)         ; call prim_vector_45ref
  %arg107178 = add i64 0, 0                                                          ; quoted ()
  %cloptr109264 = inttoptr i64 %cont106822 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109264)                                       ; assert function application
  %i0ptr109265 = getelementptr inbounds i64, i64* %cloptr109264, i64 0               ; &cloptr109264[0]
  %f109267 = load i64, i64* %i0ptr109265, align 8                                    ; load; *i0ptr109265
  %fptr109266 = inttoptr i64 %f109267 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109266(i64 %cont106822, i64 %arg107178, i64 %retprim106824); tail call
  ret void

else109263:
  %arg107180 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106728 = call i64 @prim_vector_45ref(i64 %HGd$lst, i64 %arg107180)               ; call prim_vector_45ref
  %a106729 = call i64 @prim_cdr(i64 %a106728)                                        ; call prim_cdr
  %arg107184 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106828 = call i64 @prim_vector_45set_33(i64 %HGd$lst, i64 %arg107184, i64 %a106729); call prim_vector_45set_33
  %cloptr109268 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109270 = getelementptr inbounds i64, i64* %cloptr109268, i64 1                ; &eptr109270[1]
  %eptr109271 = getelementptr inbounds i64, i64* %cloptr109268, i64 2                ; &eptr109271[2]
  %eptr109272 = getelementptr inbounds i64, i64* %cloptr109268, i64 3                ; &eptr109272[3]
  store i64 %Uio$cc, i64* %eptr109270                                                ; *eptr109270 = %Uio$cc
  store i64 %jXg$n, i64* %eptr109271                                                 ; *eptr109271 = %jXg$n
  store i64 %cont106822, i64* %eptr109272                                            ; *eptr109272 = %cont106822
  %eptr109269 = getelementptr inbounds i64, i64* %cloptr109268, i64 0                ; &cloptr109268[0]
  %f109273 = ptrtoint void(i64,i64,i64)* @lam108560 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109273, i64* %eptr109269                                               ; store fptr
  %arg107188 = ptrtoint i64* %cloptr109268 to i64                                    ; closure cast; i64* -> i64
  %arg107187 = add i64 0, 0                                                          ; quoted ()
  %cloptr109274 = inttoptr i64 %arg107188 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109274)                                       ; assert function application
  %i0ptr109275 = getelementptr inbounds i64, i64* %cloptr109274, i64 0               ; &cloptr109274[0]
  %f109277 = load i64, i64* %i0ptr109275, align 8                                    ; load; *i0ptr109275
  %fptr109276 = inttoptr i64 %f109277 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109276(i64 %arg107188, i64 %arg107187, i64 %retprim106828); tail call
  ret void
}


define void @lam108560(i64 %env108561, i64 %_95106825, i64 %yPP$_950) {
  %envptr109278 = inttoptr i64 %env108561 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109279 = getelementptr inbounds i64, i64* %envptr109278, i64 3              ; &envptr109278[3]
  %cont106822 = load i64, i64* %envptr109279, align 8                                ; load; *envptr109279
  %envptr109280 = inttoptr i64 %env108561 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109281 = getelementptr inbounds i64, i64* %envptr109280, i64 2              ; &envptr109280[2]
  %jXg$n = load i64, i64* %envptr109281, align 8                                     ; load; *envptr109281
  %envptr109282 = inttoptr i64 %env108561 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109283 = getelementptr inbounds i64, i64* %envptr109282, i64 1              ; &envptr109282[1]
  %Uio$cc = load i64, i64* %envptr109283, align 8                                    ; load; *envptr109283
  %arg107189 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106730 = call i64 @prim_vector_45ref(i64 %jXg$n, i64 %arg107189)                 ; call prim_vector_45ref
  %arg107191 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a106731 = call i64 @prim__45(i64 %a106730, i64 %arg107191)                        ; call prim__45
  %arg107194 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106827 = call i64 @prim_vector_45set_33(i64 %jXg$n, i64 %arg107194, i64 %a106731); call prim_vector_45set_33
  %cloptr109284 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109286 = getelementptr inbounds i64, i64* %cloptr109284, i64 1                ; &eptr109286[1]
  %eptr109287 = getelementptr inbounds i64, i64* %cloptr109284, i64 2                ; &eptr109287[2]
  store i64 %Uio$cc, i64* %eptr109286                                                ; *eptr109286 = %Uio$cc
  store i64 %cont106822, i64* %eptr109287                                            ; *eptr109287 = %cont106822
  %eptr109285 = getelementptr inbounds i64, i64* %cloptr109284, i64 0                ; &cloptr109284[0]
  %f109288 = ptrtoint void(i64,i64,i64)* @lam108555 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109288, i64* %eptr109285                                               ; store fptr
  %arg107198 = ptrtoint i64* %cloptr109284 to i64                                    ; closure cast; i64* -> i64
  %arg107197 = add i64 0, 0                                                          ; quoted ()
  %cloptr109289 = inttoptr i64 %arg107198 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109289)                                       ; assert function application
  %i0ptr109290 = getelementptr inbounds i64, i64* %cloptr109289, i64 0               ; &cloptr109289[0]
  %f109292 = load i64, i64* %i0ptr109290, align 8                                    ; load; *i0ptr109290
  %fptr109291 = inttoptr i64 %f109292 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109291(i64 %arg107198, i64 %arg107197, i64 %retprim106827); tail call
  ret void
}


define void @lam108555(i64 %env108556, i64 %_95106826, i64 %FWV$_951) {
  %envptr109293 = inttoptr i64 %env108556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109294 = getelementptr inbounds i64, i64* %envptr109293, i64 2              ; &envptr109293[2]
  %cont106822 = load i64, i64* %envptr109294, align 8                                ; load; *envptr109294
  %envptr109295 = inttoptr i64 %env108556 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109296 = getelementptr inbounds i64, i64* %envptr109295, i64 1              ; &envptr109295[1]
  %Uio$cc = load i64, i64* %envptr109296, align 8                                    ; load; *envptr109296
  %cloptr109297 = inttoptr i64 %Uio$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109297)                                       ; assert function application
  %i0ptr109298 = getelementptr inbounds i64, i64* %cloptr109297, i64 0               ; &cloptr109297[0]
  %f109300 = load i64, i64* %i0ptr109298, align 8                                    ; load; *i0ptr109298
  %fptr109299 = inttoptr i64 %f109300 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109299(i64 %Uio$cc, i64 %cont106822, i64 %Uio$cc)   ; tail call
  ret void
}


define void @lam108549(i64 %env108550, i64 %_95106823, i64 %Uio$cc) {
  %envptr109301 = inttoptr i64 %env108550 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109302 = getelementptr inbounds i64, i64* %envptr109301, i64 3              ; &envptr109301[3]
  %cont106822 = load i64, i64* %envptr109302, align 8                                ; load; *envptr109302
  %envptr109303 = inttoptr i64 %env108550 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109304 = getelementptr inbounds i64, i64* %envptr109303, i64 2              ; &envptr109303[2]
  %HGd$lst = load i64, i64* %envptr109304, align 8                                   ; load; *envptr109304
  %envptr109305 = inttoptr i64 %env108550 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109306 = getelementptr inbounds i64, i64* %envptr109305, i64 1              ; &envptr109305[1]
  %jXg$n = load i64, i64* %envptr109306, align 8                                     ; load; *envptr109306
  %arg107202 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106726 = call i64 @prim_vector_45ref(i64 %jXg$n, i64 %arg107202)                 ; call prim_vector_45ref
  %arg107205 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106727 = call i64 @prim__61(i64 %arg107205, i64 %a106726)                        ; call prim__61
  %cmp109307 = icmp eq i64 %a106727, 15                                              ; false?
  br i1 %cmp109307, label %else109309, label %then109308                             ; if

then109308:
  %arg107206 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106824 = call i64 @prim_vector_45ref(i64 %HGd$lst, i64 %arg107206)         ; call prim_vector_45ref
  %arg107209 = add i64 0, 0                                                          ; quoted ()
  %cloptr109310 = inttoptr i64 %cont106822 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109310)                                       ; assert function application
  %i0ptr109311 = getelementptr inbounds i64, i64* %cloptr109310, i64 0               ; &cloptr109310[0]
  %f109313 = load i64, i64* %i0ptr109311, align 8                                    ; load; *i0ptr109311
  %fptr109312 = inttoptr i64 %f109313 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109312(i64 %cont106822, i64 %arg107209, i64 %retprim106824); tail call
  ret void

else109309:
  %arg107211 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106728 = call i64 @prim_vector_45ref(i64 %HGd$lst, i64 %arg107211)               ; call prim_vector_45ref
  %a106729 = call i64 @prim_cdr(i64 %a106728)                                        ; call prim_cdr
  %arg107215 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106828 = call i64 @prim_vector_45set_33(i64 %HGd$lst, i64 %arg107215, i64 %a106729); call prim_vector_45set_33
  %cloptr109314 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109316 = getelementptr inbounds i64, i64* %cloptr109314, i64 1                ; &eptr109316[1]
  %eptr109317 = getelementptr inbounds i64, i64* %cloptr109314, i64 2                ; &eptr109317[2]
  %eptr109318 = getelementptr inbounds i64, i64* %cloptr109314, i64 3                ; &eptr109318[3]
  store i64 %Uio$cc, i64* %eptr109316                                                ; *eptr109316 = %Uio$cc
  store i64 %jXg$n, i64* %eptr109317                                                 ; *eptr109317 = %jXg$n
  store i64 %cont106822, i64* %eptr109318                                            ; *eptr109318 = %cont106822
  %eptr109315 = getelementptr inbounds i64, i64* %cloptr109314, i64 0                ; &cloptr109314[0]
  %f109319 = ptrtoint void(i64,i64,i64)* @lam108543 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109319, i64* %eptr109315                                               ; store fptr
  %arg107219 = ptrtoint i64* %cloptr109314 to i64                                    ; closure cast; i64* -> i64
  %arg107218 = add i64 0, 0                                                          ; quoted ()
  %cloptr109320 = inttoptr i64 %arg107219 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109320)                                       ; assert function application
  %i0ptr109321 = getelementptr inbounds i64, i64* %cloptr109320, i64 0               ; &cloptr109320[0]
  %f109323 = load i64, i64* %i0ptr109321, align 8                                    ; load; *i0ptr109321
  %fptr109322 = inttoptr i64 %f109323 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109322(i64 %arg107219, i64 %arg107218, i64 %retprim106828); tail call
  ret void
}


define void @lam108543(i64 %env108544, i64 %_95106825, i64 %yPP$_950) {
  %envptr109324 = inttoptr i64 %env108544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109325 = getelementptr inbounds i64, i64* %envptr109324, i64 3              ; &envptr109324[3]
  %cont106822 = load i64, i64* %envptr109325, align 8                                ; load; *envptr109325
  %envptr109326 = inttoptr i64 %env108544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109327 = getelementptr inbounds i64, i64* %envptr109326, i64 2              ; &envptr109326[2]
  %jXg$n = load i64, i64* %envptr109327, align 8                                     ; load; *envptr109327
  %envptr109328 = inttoptr i64 %env108544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109329 = getelementptr inbounds i64, i64* %envptr109328, i64 1              ; &envptr109328[1]
  %Uio$cc = load i64, i64* %envptr109329, align 8                                    ; load; *envptr109329
  %arg107220 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106730 = call i64 @prim_vector_45ref(i64 %jXg$n, i64 %arg107220)                 ; call prim_vector_45ref
  %arg107222 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a106731 = call i64 @prim__45(i64 %a106730, i64 %arg107222)                        ; call prim__45
  %arg107225 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106827 = call i64 @prim_vector_45set_33(i64 %jXg$n, i64 %arg107225, i64 %a106731); call prim_vector_45set_33
  %cloptr109330 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109332 = getelementptr inbounds i64, i64* %cloptr109330, i64 1                ; &eptr109332[1]
  %eptr109333 = getelementptr inbounds i64, i64* %cloptr109330, i64 2                ; &eptr109333[2]
  store i64 %Uio$cc, i64* %eptr109332                                                ; *eptr109332 = %Uio$cc
  store i64 %cont106822, i64* %eptr109333                                            ; *eptr109333 = %cont106822
  %eptr109331 = getelementptr inbounds i64, i64* %cloptr109330, i64 0                ; &cloptr109330[0]
  %f109334 = ptrtoint void(i64,i64,i64)* @lam108538 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109334, i64* %eptr109331                                               ; store fptr
  %arg107229 = ptrtoint i64* %cloptr109330 to i64                                    ; closure cast; i64* -> i64
  %arg107228 = add i64 0, 0                                                          ; quoted ()
  %cloptr109335 = inttoptr i64 %arg107229 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109335)                                       ; assert function application
  %i0ptr109336 = getelementptr inbounds i64, i64* %cloptr109335, i64 0               ; &cloptr109335[0]
  %f109338 = load i64, i64* %i0ptr109336, align 8                                    ; load; *i0ptr109336
  %fptr109337 = inttoptr i64 %f109338 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109337(i64 %arg107229, i64 %arg107228, i64 %retprim106827); tail call
  ret void
}


define void @lam108538(i64 %env108539, i64 %_95106826, i64 %FWV$_951) {
  %envptr109339 = inttoptr i64 %env108539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109340 = getelementptr inbounds i64, i64* %envptr109339, i64 2              ; &envptr109339[2]
  %cont106822 = load i64, i64* %envptr109340, align 8                                ; load; *envptr109340
  %envptr109341 = inttoptr i64 %env108539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109342 = getelementptr inbounds i64, i64* %envptr109341, i64 1              ; &envptr109341[1]
  %Uio$cc = load i64, i64* %envptr109342, align 8                                    ; load; *envptr109342
  %cloptr109343 = inttoptr i64 %Uio$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109343)                                       ; assert function application
  %i0ptr109344 = getelementptr inbounds i64, i64* %cloptr109343, i64 0               ; &cloptr109343[0]
  %f109346 = load i64, i64* %i0ptr109344, align 8                                    ; load; *i0ptr109344
  %fptr109345 = inttoptr i64 %f109346 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109345(i64 %Uio$cc, i64 %cont106822, i64 %Uio$cc)   ; tail call
  ret void
}


define void @lam108532(i64 %env108533, i64 %cont106830, i64 %n42$v, i64 %Lye$lst) {
  %arg107234 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %PN2$lst = call i64 @prim_make_45vector(i64 %arg107234, i64 %Lye$lst)              ; call prim_make_45vector
  %cloptr109347 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109348 = getelementptr inbounds i64, i64* %cloptr109347, i64 0                ; &cloptr109347[0]
  %f109349 = ptrtoint void(i64,i64,i64)* @lam108529 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109349, i64* %eptr109348                                               ; store fptr
  %arg107237 = ptrtoint i64* %cloptr109347 to i64                                    ; closure cast; i64* -> i64
  %cloptr109350 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109352 = getelementptr inbounds i64, i64* %cloptr109350, i64 1                ; &eptr109352[1]
  %eptr109353 = getelementptr inbounds i64, i64* %cloptr109350, i64 2                ; &eptr109353[2]
  %eptr109354 = getelementptr inbounds i64, i64* %cloptr109350, i64 3                ; &eptr109354[3]
  store i64 %PN2$lst, i64* %eptr109352                                               ; *eptr109352 = %PN2$lst
  store i64 %cont106830, i64* %eptr109353                                            ; *eptr109353 = %cont106830
  store i64 %n42$v, i64* %eptr109354                                                 ; *eptr109354 = %n42$v
  %eptr109351 = getelementptr inbounds i64, i64* %cloptr109350, i64 0                ; &cloptr109350[0]
  %f109355 = ptrtoint void(i64,i64,i64)* @lam108527 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109355, i64* %eptr109351                                               ; store fptr
  %arg107236 = ptrtoint i64* %cloptr109350 to i64                                    ; closure cast; i64* -> i64
  %cloptr109356 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109358 = getelementptr inbounds i64, i64* %cloptr109356, i64 1                ; &eptr109358[1]
  %eptr109359 = getelementptr inbounds i64, i64* %cloptr109356, i64 2                ; &eptr109359[2]
  %eptr109360 = getelementptr inbounds i64, i64* %cloptr109356, i64 3                ; &eptr109360[3]
  store i64 %PN2$lst, i64* %eptr109358                                               ; *eptr109358 = %PN2$lst
  store i64 %cont106830, i64* %eptr109359                                            ; *eptr109359 = %cont106830
  store i64 %n42$v, i64* %eptr109360                                                 ; *eptr109360 = %n42$v
  %eptr109357 = getelementptr inbounds i64, i64* %cloptr109356, i64 0                ; &cloptr109356[0]
  %f109361 = ptrtoint void(i64,i64,i64)* @lam108514 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109361, i64* %eptr109357                                               ; store fptr
  %arg107235 = ptrtoint i64* %cloptr109356 to i64                                    ; closure cast; i64* -> i64
  %cloptr109362 = inttoptr i64 %arg107237 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109362)                                       ; assert function application
  %i0ptr109363 = getelementptr inbounds i64, i64* %cloptr109362, i64 0               ; &cloptr109362[0]
  %f109365 = load i64, i64* %i0ptr109363, align 8                                    ; load; *i0ptr109363
  %fptr109364 = inttoptr i64 %f109365 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109364(i64 %arg107237, i64 %arg107236, i64 %arg107235); tail call
  ret void
}


define void @lam108529(i64 %env108530, i64 %cont106835, i64 %epT$u) {
  %cloptr109366 = inttoptr i64 %epT$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109366)                                       ; assert function application
  %i0ptr109367 = getelementptr inbounds i64, i64* %cloptr109366, i64 0               ; &cloptr109366[0]
  %f109369 = load i64, i64* %i0ptr109367, align 8                                    ; load; *i0ptr109367
  %fptr109368 = inttoptr i64 %f109369 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109368(i64 %epT$u, i64 %cont106835, i64 %epT$u)     ; tail call
  ret void
}


define void @lam108527(i64 %env108528, i64 %_95106831, i64 %FOI$cc) {
  %envptr109370 = inttoptr i64 %env108528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109371 = getelementptr inbounds i64, i64* %envptr109370, i64 3              ; &envptr109370[3]
  %n42$v = load i64, i64* %envptr109371, align 8                                     ; load; *envptr109371
  %envptr109372 = inttoptr i64 %env108528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109373 = getelementptr inbounds i64, i64* %envptr109372, i64 2              ; &envptr109372[2]
  %cont106830 = load i64, i64* %envptr109373, align 8                                ; load; *envptr109373
  %envptr109374 = inttoptr i64 %env108528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109375 = getelementptr inbounds i64, i64* %envptr109374, i64 1              ; &envptr109374[1]
  %PN2$lst = load i64, i64* %envptr109375, align 8                                   ; load; *envptr109375
  %arg107241 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106732 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107241)               ; call prim_vector_45ref
  %a106733 = call i64 @prim_null_63(i64 %a106732)                                    ; call prim_null_63
  %cmp109376 = icmp eq i64 %a106733, 15                                              ; false?
  br i1 %cmp109376, label %else109378, label %then109377                             ; if

then109377:
  %arg107245 = add i64 0, 0                                                          ; quoted ()
  %arg107244 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr109379 = inttoptr i64 %cont106830 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109379)                                       ; assert function application
  %i0ptr109380 = getelementptr inbounds i64, i64* %cloptr109379, i64 0               ; &cloptr109379[0]
  %f109382 = load i64, i64* %i0ptr109380, align 8                                    ; load; *i0ptr109380
  %fptr109381 = inttoptr i64 %f109382 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109381(i64 %cont106830, i64 %arg107245, i64 %arg107244); tail call
  ret void

else109378:
  %arg107247 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106734 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107247)               ; call prim_vector_45ref
  %a106735 = call i64 @prim_car(i64 %a106734)                                        ; call prim_car
  %a106736 = call i64 @prim_eqv_63(i64 %a106735, i64 %n42$v)                         ; call prim_eqv_63
  %cmp109383 = icmp eq i64 %a106736, 15                                              ; false?
  br i1 %cmp109383, label %else109385, label %then109384                             ; if

then109384:
  %arg107252 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106832 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107252)         ; call prim_vector_45ref
  %arg107255 = add i64 0, 0                                                          ; quoted ()
  %cloptr109386 = inttoptr i64 %cont106830 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109386)                                       ; assert function application
  %i0ptr109387 = getelementptr inbounds i64, i64* %cloptr109386, i64 0               ; &cloptr109386[0]
  %f109389 = load i64, i64* %i0ptr109387, align 8                                    ; load; *i0ptr109387
  %fptr109388 = inttoptr i64 %f109389 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109388(i64 %cont106830, i64 %arg107255, i64 %retprim106832); tail call
  ret void

else109385:
  %arg107257 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106737 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107257)               ; call prim_vector_45ref
  %a106738 = call i64 @prim_cdr(i64 %a106737)                                        ; call prim_cdr
  %arg107261 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106834 = call i64 @prim_vector_45set_33(i64 %PN2$lst, i64 %arg107261, i64 %a106738); call prim_vector_45set_33
  %cloptr109390 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109392 = getelementptr inbounds i64, i64* %cloptr109390, i64 1                ; &eptr109392[1]
  %eptr109393 = getelementptr inbounds i64, i64* %cloptr109390, i64 2                ; &eptr109393[2]
  store i64 %cont106830, i64* %eptr109392                                            ; *eptr109392 = %cont106830
  store i64 %FOI$cc, i64* %eptr109393                                                ; *eptr109393 = %FOI$cc
  %eptr109391 = getelementptr inbounds i64, i64* %cloptr109390, i64 0                ; &cloptr109390[0]
  %f109394 = ptrtoint void(i64,i64,i64)* @lam108521 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109394, i64* %eptr109391                                               ; store fptr
  %arg107265 = ptrtoint i64* %cloptr109390 to i64                                    ; closure cast; i64* -> i64
  %arg107264 = add i64 0, 0                                                          ; quoted ()
  %cloptr109395 = inttoptr i64 %arg107265 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109395)                                       ; assert function application
  %i0ptr109396 = getelementptr inbounds i64, i64* %cloptr109395, i64 0               ; &cloptr109395[0]
  %f109398 = load i64, i64* %i0ptr109396, align 8                                    ; load; *i0ptr109396
  %fptr109397 = inttoptr i64 %f109398 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109397(i64 %arg107265, i64 %arg107264, i64 %retprim106834); tail call
  ret void
}


define void @lam108521(i64 %env108522, i64 %_95106833, i64 %C9v$_950) {
  %envptr109399 = inttoptr i64 %env108522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109400 = getelementptr inbounds i64, i64* %envptr109399, i64 2              ; &envptr109399[2]
  %FOI$cc = load i64, i64* %envptr109400, align 8                                    ; load; *envptr109400
  %envptr109401 = inttoptr i64 %env108522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109402 = getelementptr inbounds i64, i64* %envptr109401, i64 1              ; &envptr109401[1]
  %cont106830 = load i64, i64* %envptr109402, align 8                                ; load; *envptr109402
  %cloptr109403 = inttoptr i64 %FOI$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109403)                                       ; assert function application
  %i0ptr109404 = getelementptr inbounds i64, i64* %cloptr109403, i64 0               ; &cloptr109403[0]
  %f109406 = load i64, i64* %i0ptr109404, align 8                                    ; load; *i0ptr109404
  %fptr109405 = inttoptr i64 %f109406 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109405(i64 %FOI$cc, i64 %cont106830, i64 %FOI$cc)   ; tail call
  ret void
}


define void @lam108514(i64 %env108515, i64 %_95106831, i64 %FOI$cc) {
  %envptr109407 = inttoptr i64 %env108515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109408 = getelementptr inbounds i64, i64* %envptr109407, i64 3              ; &envptr109407[3]
  %n42$v = load i64, i64* %envptr109408, align 8                                     ; load; *envptr109408
  %envptr109409 = inttoptr i64 %env108515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109410 = getelementptr inbounds i64, i64* %envptr109409, i64 2              ; &envptr109409[2]
  %cont106830 = load i64, i64* %envptr109410, align 8                                ; load; *envptr109410
  %envptr109411 = inttoptr i64 %env108515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109412 = getelementptr inbounds i64, i64* %envptr109411, i64 1              ; &envptr109411[1]
  %PN2$lst = load i64, i64* %envptr109412, align 8                                   ; load; *envptr109412
  %arg107269 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106732 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107269)               ; call prim_vector_45ref
  %a106733 = call i64 @prim_null_63(i64 %a106732)                                    ; call prim_null_63
  %cmp109413 = icmp eq i64 %a106733, 15                                              ; false?
  br i1 %cmp109413, label %else109415, label %then109414                             ; if

then109414:
  %arg107273 = add i64 0, 0                                                          ; quoted ()
  %arg107272 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr109416 = inttoptr i64 %cont106830 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109416)                                       ; assert function application
  %i0ptr109417 = getelementptr inbounds i64, i64* %cloptr109416, i64 0               ; &cloptr109416[0]
  %f109419 = load i64, i64* %i0ptr109417, align 8                                    ; load; *i0ptr109417
  %fptr109418 = inttoptr i64 %f109419 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109418(i64 %cont106830, i64 %arg107273, i64 %arg107272); tail call
  ret void

else109415:
  %arg107275 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106734 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107275)               ; call prim_vector_45ref
  %a106735 = call i64 @prim_car(i64 %a106734)                                        ; call prim_car
  %a106736 = call i64 @prim_eqv_63(i64 %a106735, i64 %n42$v)                         ; call prim_eqv_63
  %cmp109420 = icmp eq i64 %a106736, 15                                              ; false?
  br i1 %cmp109420, label %else109422, label %then109421                             ; if

then109421:
  %arg107280 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106832 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107280)         ; call prim_vector_45ref
  %arg107283 = add i64 0, 0                                                          ; quoted ()
  %cloptr109423 = inttoptr i64 %cont106830 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109423)                                       ; assert function application
  %i0ptr109424 = getelementptr inbounds i64, i64* %cloptr109423, i64 0               ; &cloptr109423[0]
  %f109426 = load i64, i64* %i0ptr109424, align 8                                    ; load; *i0ptr109424
  %fptr109425 = inttoptr i64 %f109426 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109425(i64 %cont106830, i64 %arg107283, i64 %retprim106832); tail call
  ret void

else109422:
  %arg107285 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106737 = call i64 @prim_vector_45ref(i64 %PN2$lst, i64 %arg107285)               ; call prim_vector_45ref
  %a106738 = call i64 @prim_cdr(i64 %a106737)                                        ; call prim_cdr
  %arg107289 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106834 = call i64 @prim_vector_45set_33(i64 %PN2$lst, i64 %arg107289, i64 %a106738); call prim_vector_45set_33
  %cloptr109427 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109429 = getelementptr inbounds i64, i64* %cloptr109427, i64 1                ; &eptr109429[1]
  %eptr109430 = getelementptr inbounds i64, i64* %cloptr109427, i64 2                ; &eptr109430[2]
  store i64 %cont106830, i64* %eptr109429                                            ; *eptr109429 = %cont106830
  store i64 %FOI$cc, i64* %eptr109430                                                ; *eptr109430 = %FOI$cc
  %eptr109428 = getelementptr inbounds i64, i64* %cloptr109427, i64 0                ; &cloptr109427[0]
  %f109431 = ptrtoint void(i64,i64,i64)* @lam108508 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109431, i64* %eptr109428                                               ; store fptr
  %arg107293 = ptrtoint i64* %cloptr109427 to i64                                    ; closure cast; i64* -> i64
  %arg107292 = add i64 0, 0                                                          ; quoted ()
  %cloptr109432 = inttoptr i64 %arg107293 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109432)                                       ; assert function application
  %i0ptr109433 = getelementptr inbounds i64, i64* %cloptr109432, i64 0               ; &cloptr109432[0]
  %f109435 = load i64, i64* %i0ptr109433, align 8                                    ; load; *i0ptr109433
  %fptr109434 = inttoptr i64 %f109435 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109434(i64 %arg107293, i64 %arg107292, i64 %retprim106834); tail call
  ret void
}


define void @lam108508(i64 %env108509, i64 %_95106833, i64 %C9v$_950) {
  %envptr109436 = inttoptr i64 %env108509 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109437 = getelementptr inbounds i64, i64* %envptr109436, i64 2              ; &envptr109436[2]
  %FOI$cc = load i64, i64* %envptr109437, align 8                                    ; load; *envptr109437
  %envptr109438 = inttoptr i64 %env108509 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109439 = getelementptr inbounds i64, i64* %envptr109438, i64 1              ; &envptr109438[1]
  %cont106830 = load i64, i64* %envptr109439, align 8                                ; load; *envptr109439
  %cloptr109440 = inttoptr i64 %FOI$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109440)                                       ; assert function application
  %i0ptr109441 = getelementptr inbounds i64, i64* %cloptr109440, i64 0               ; &cloptr109440[0]
  %f109443 = load i64, i64* %i0ptr109441, align 8                                    ; load; *i0ptr109441
  %fptr109442 = inttoptr i64 %f109443 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109442(i64 %FOI$cc, i64 %cont106830, i64 %FOI$cc)   ; tail call
  ret void
}


define void @lam108501(i64 %env108502, i64 %D9y$args106837) {
  %envptr109444 = inttoptr i64 %env108502 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109445 = getelementptr inbounds i64, i64* %envptr109444, i64 1              ; &envptr109444[1]
  %hoZ$_37foldl1 = load i64, i64* %envptr109445, align 8                             ; load; *envptr109445
  %cont106836 = call i64 @prim_car(i64 %D9y$args106837)                              ; call prim_car
  %D9y$args = call i64 @prim_cdr(i64 %D9y$args106837)                                ; call prim_cdr
  %a106739 = call i64 @prim_null_63(i64 %D9y$args)                                   ; call prim_null_63
  %cmp109446 = icmp eq i64 %a106739, 15                                              ; false?
  br i1 %cmp109446, label %else109448, label %then109447                             ; if

then109447:
  %arg107300 = call i64 @const_init_string(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @str109449, i32 0, i32 0)); quoted string
  %retprim106838 = call i64 @prim_halt(i64 %arg107300)                               ; call prim_halt
  %arg107302 = add i64 0, 0                                                          ; quoted ()
  %rva107856 = add i64 0, 0                                                          ; quoted ()
  %rva107855 = call i64 @prim_cons(i64 %retprim106838, i64 %rva107856)               ; call prim_cons
  %rva107854 = call i64 @prim_cons(i64 %arg107302, i64 %rva107855)                   ; call prim_cons
  %cloptr109450 = inttoptr i64 %cont106836 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109450)                                       ; assert function application
  %i0ptr109451 = getelementptr inbounds i64, i64* %cloptr109450, i64 0               ; &cloptr109450[0]
  %f109453 = load i64, i64* %i0ptr109451, align 8                                    ; load; *i0ptr109451
  %fptr109452 = inttoptr i64 %f109453 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109452(i64 %cont106836, i64 %rva107854)             ; tail call
  ret void

else109448:
  %a106740 = call i64 @prim_cdr(i64 %D9y$args)                                       ; call prim_cdr
  %a106741 = call i64 @prim_null_63(i64 %a106740)                                    ; call prim_null_63
  %cmp109454 = icmp eq i64 %a106741, 15                                              ; false?
  br i1 %cmp109454, label %else109456, label %then109455                             ; if

then109455:
  %retprim106839 = call i64 @prim_car(i64 %D9y$args)                                 ; call prim_car
  %arg107308 = add i64 0, 0                                                          ; quoted ()
  %rva107859 = add i64 0, 0                                                          ; quoted ()
  %rva107858 = call i64 @prim_cons(i64 %retprim106839, i64 %rva107859)               ; call prim_cons
  %rva107857 = call i64 @prim_cons(i64 %arg107308, i64 %rva107858)                   ; call prim_cons
  %cloptr109457 = inttoptr i64 %cont106836 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109457)                                       ; assert function application
  %i0ptr109458 = getelementptr inbounds i64, i64* %cloptr109457, i64 0               ; &cloptr109457[0]
  %f109460 = load i64, i64* %i0ptr109458, align 8                                    ; load; *i0ptr109458
  %fptr109459 = inttoptr i64 %f109460 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109459(i64 %cont106836, i64 %rva107857)             ; tail call
  ret void

else109456:
  %a106742 = call i64 @prim_car(i64 %D9y$args)                                       ; call prim_car
  %a106743 = call i64 @prim_cdr(i64 %D9y$args)                                       ; call prim_cdr
  %cloptr109461 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109462 = getelementptr inbounds i64, i64* %cloptr109461, i64 0                ; &cloptr109461[0]
  %f109463 = ptrtoint void(i64,i64)* @lam108499 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f109463, i64* %eptr109462                                               ; store fptr
  %arg107314 = ptrtoint i64* %cloptr109461 to i64                                    ; closure cast; i64* -> i64
  %rva107875 = add i64 0, 0                                                          ; quoted ()
  %rva107874 = call i64 @prim_cons(i64 %a106743, i64 %rva107875)                     ; call prim_cons
  %rva107873 = call i64 @prim_cons(i64 %a106742, i64 %rva107874)                     ; call prim_cons
  %rva107872 = call i64 @prim_cons(i64 %arg107314, i64 %rva107873)                   ; call prim_cons
  %rva107871 = call i64 @prim_cons(i64 %cont106836, i64 %rva107872)                  ; call prim_cons
  %cloptr109464 = inttoptr i64 %hoZ$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109464)                                       ; assert function application
  %i0ptr109465 = getelementptr inbounds i64, i64* %cloptr109464, i64 0               ; &cloptr109464[0]
  %f109467 = load i64, i64* %i0ptr109465, align 8                                    ; load; *i0ptr109465
  %fptr109466 = inttoptr i64 %f109467 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109466(i64 %hoZ$_37foldl1, i64 %rva107871)          ; tail call
  ret void
}


define void @lam108499(i64 %env108500, i64 %rvp107869) {
  %cont106840 = call i64 @prim_car(i64 %rvp107869)                                   ; call prim_car
  %rvp107867 = call i64 @prim_cdr(i64 %rvp107869)                                    ; call prim_cdr
  %W9A$n = call i64 @prim_car(i64 %rvp107867)                                        ; call prim_car
  %rvp107865 = call i64 @prim_cdr(i64 %rvp107867)                                    ; call prim_cdr
  %qHU$v = call i64 @prim_car(i64 %rvp107865)                                        ; call prim_car
  %na107861 = call i64 @prim_cdr(i64 %rvp107865)                                     ; call prim_cdr
  %retprim106841 = call i64 @prim__47(i64 %qHU$v, i64 %W9A$n)                        ; call prim__47
  %arg107320 = add i64 0, 0                                                          ; quoted ()
  %rva107864 = add i64 0, 0                                                          ; quoted ()
  %rva107863 = call i64 @prim_cons(i64 %retprim106841, i64 %rva107864)               ; call prim_cons
  %rva107862 = call i64 @prim_cons(i64 %arg107320, i64 %rva107863)                   ; call prim_cons
  %cloptr109468 = inttoptr i64 %cont106840 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109468)                                       ; assert function application
  %i0ptr109469 = getelementptr inbounds i64, i64* %cloptr109468, i64 0               ; &cloptr109468[0]
  %f109471 = load i64, i64* %i0ptr109469, align 8                                    ; load; *i0ptr109469
  %fptr109470 = inttoptr i64 %f109471 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109470(i64 %cont106840, i64 %rva107862)             ; tail call
  ret void
}


define void @lam108489(i64 %env108490, i64 %cont106842, i64 %AKd$x) {
  %retprim106843 = call i64 @prim_car(i64 %AKd$x)                                    ; call prim_car
  %arg107324 = add i64 0, 0                                                          ; quoted ()
  %cloptr109472 = inttoptr i64 %cont106842 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109472)                                       ; assert function application
  %i0ptr109473 = getelementptr inbounds i64, i64* %cloptr109472, i64 0               ; &cloptr109472[0]
  %f109475 = load i64, i64* %i0ptr109473, align 8                                    ; load; *i0ptr109473
  %fptr109474 = inttoptr i64 %f109475 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109474(i64 %cont106842, i64 %arg107324, i64 %retprim106843); tail call
  ret void
}


define void @lam108486(i64 %env108487, i64 %cont106844, i64 %UAi$x) {
  %a106744 = call i64 @prim_cdr(i64 %UAi$x)                                          ; call prim_cdr
  %retprim106845 = call i64 @prim_car(i64 %a106744)                                  ; call prim_car
  %arg107329 = add i64 0, 0                                                          ; quoted ()
  %cloptr109476 = inttoptr i64 %cont106844 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109476)                                       ; assert function application
  %i0ptr109477 = getelementptr inbounds i64, i64* %cloptr109476, i64 0               ; &cloptr109476[0]
  %f109479 = load i64, i64* %i0ptr109477, align 8                                    ; load; *i0ptr109477
  %fptr109478 = inttoptr i64 %f109479 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109478(i64 %cont106844, i64 %arg107329, i64 %retprim106845); tail call
  ret void
}


define void @lam108483(i64 %env108484, i64 %cont106846, i64 %ov3$x) {
  %a106745 = call i64 @prim_cdr(i64 %ov3$x)                                          ; call prim_cdr
  %a106746 = call i64 @prim_cdr(i64 %a106745)                                        ; call prim_cdr
  %retprim106847 = call i64 @prim_car(i64 %a106746)                                  ; call prim_car
  %arg107335 = add i64 0, 0                                                          ; quoted ()
  %cloptr109480 = inttoptr i64 %cont106846 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109480)                                       ; assert function application
  %i0ptr109481 = getelementptr inbounds i64, i64* %cloptr109480, i64 0               ; &cloptr109480[0]
  %f109483 = load i64, i64* %i0ptr109481, align 8                                    ; load; *i0ptr109481
  %fptr109482 = inttoptr i64 %f109483 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109482(i64 %cont106846, i64 %arg107335, i64 %retprim106847); tail call
  ret void
}


define void @lam108480(i64 %env108481, i64 %cont106848, i64 %K1w$x) {
  %a106747 = call i64 @prim_cdr(i64 %K1w$x)                                          ; call prim_cdr
  %a106748 = call i64 @prim_cdr(i64 %a106747)                                        ; call prim_cdr
  %a106749 = call i64 @prim_cdr(i64 %a106748)                                        ; call prim_cdr
  %retprim106849 = call i64 @prim_car(i64 %a106749)                                  ; call prim_car
  %arg107342 = add i64 0, 0                                                          ; quoted ()
  %cloptr109484 = inttoptr i64 %cont106848 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109484)                                       ; assert function application
  %i0ptr109485 = getelementptr inbounds i64, i64* %cloptr109484, i64 0               ; &cloptr109484[0]
  %f109487 = load i64, i64* %i0ptr109485, align 8                                    ; load; *i0ptr109485
  %fptr109486 = inttoptr i64 %f109487 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109486(i64 %cont106848, i64 %arg107342, i64 %retprim106849); tail call
  ret void
}


define void @lam108477(i64 %env108478, i64 %cont106850, i64 %wPX$p) {
  %a106750 = call i64 @prim_cons_63(i64 %wPX$p)                                      ; call prim_cons_63
  %cmp109488 = icmp eq i64 %a106750, 15                                              ; false?
  br i1 %cmp109488, label %else109490, label %then109489                             ; if

then109489:
  %a106751 = call i64 @prim_car(i64 %wPX$p)                                          ; call prim_car
  %arg107346 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym109491, i32 0, i32 0)); quoted string
  %retprim106851 = call i64 @prim_eq_63(i64 %a106751, i64 %arg107346)                ; call prim_eq_63
  %arg107349 = add i64 0, 0                                                          ; quoted ()
  %cloptr109492 = inttoptr i64 %cont106850 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109492)                                       ; assert function application
  %i0ptr109493 = getelementptr inbounds i64, i64* %cloptr109492, i64 0               ; &cloptr109492[0]
  %f109495 = load i64, i64* %i0ptr109493, align 8                                    ; load; *i0ptr109493
  %fptr109494 = inttoptr i64 %f109495 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109494(i64 %cont106850, i64 %arg107349, i64 %retprim106851); tail call
  ret void

else109490:
  %arg107352 = add i64 0, 0                                                          ; quoted ()
  %arg107351 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr109496 = inttoptr i64 %cont106850 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109496)                                       ; assert function application
  %i0ptr109497 = getelementptr inbounds i64, i64* %cloptr109496, i64 0               ; &cloptr109496[0]
  %f109499 = load i64, i64* %i0ptr109497, align 8                                    ; load; *i0ptr109497
  %fptr109498 = inttoptr i64 %f109499 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109498(i64 %cont106850, i64 %arg107352, i64 %arg107351); tail call
  ret void
}


define void @lam108471(i64 %env108472, i64 %mR2$lst106895) {
  %cont106894 = call i64 @prim_car(i64 %mR2$lst106895)                               ; call prim_car
  %mR2$lst = call i64 @prim_cdr(i64 %mR2$lst106895)                                  ; call prim_cdr
  %arg107359 = add i64 0, 0                                                          ; quoted ()
  %cloptr109500 = inttoptr i64 %cont106894 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109500)                                       ; assert function application
  %i0ptr109501 = getelementptr inbounds i64, i64* %cloptr109500, i64 0               ; &cloptr109500[0]
  %f109503 = load i64, i64* %i0ptr109501, align 8                                    ; load; *i0ptr109501
  %fptr109502 = inttoptr i64 %f109503 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109502(i64 %cont106894, i64 %arg107359, i64 %mR2$lst); tail call
  ret void
}


define void @lam108468(i64 %env108469, i64 %_95106852, i64 %US9$_37raise_45handler) {
  %envptr109504 = inttoptr i64 %env108469 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109505 = getelementptr inbounds i64, i64* %envptr109504, i64 4              ; &envptr109504[4]
  %g8E$_37drop = load i64, i64* %envptr109505, align 8                               ; load; *envptr109505
  %envptr109506 = inttoptr i64 %env108469 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109507 = getelementptr inbounds i64, i64* %envptr109506, i64 3              ; &envptr109506[3]
  %WBu$_37_62 = load i64, i64* %envptr109507, align 8                                ; load; *envptr109507
  %envptr109508 = inttoptr i64 %env108469 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109509 = getelementptr inbounds i64, i64* %envptr109508, i64 2              ; &envptr109508[2]
  %xfk$_37length = load i64, i64* %envptr109509, align 8                             ; load; *envptr109509
  %envptr109510 = inttoptr i64 %env108469 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109511 = getelementptr inbounds i64, i64* %envptr109510, i64 1              ; &envptr109510[1]
  %Xvl$_37_47 = load i64, i64* %envptr109511, align 8                                ; load; *envptr109511
  %cloptr109512 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109513 = getelementptr inbounds i64, i64* %cloptr109512, i64 0                ; &cloptr109512[0]
  %f109514 = ptrtoint void(i64,i64)* @lam108466 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f109514, i64* %eptr109513                                               ; store fptr
  %arg107362 = ptrtoint i64* %cloptr109512 to i64                                    ; closure cast; i64* -> i64
  %cloptr109515 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr109517 = getelementptr inbounds i64, i64* %cloptr109515, i64 1                ; &eptr109517[1]
  %eptr109518 = getelementptr inbounds i64, i64* %cloptr109515, i64 2                ; &eptr109518[2]
  %eptr109519 = getelementptr inbounds i64, i64* %cloptr109515, i64 3                ; &eptr109519[3]
  %eptr109520 = getelementptr inbounds i64, i64* %cloptr109515, i64 4                ; &eptr109520[4]
  store i64 %Xvl$_37_47, i64* %eptr109517                                            ; *eptr109517 = %Xvl$_37_47
  store i64 %xfk$_37length, i64* %eptr109518                                         ; *eptr109518 = %xfk$_37length
  store i64 %WBu$_37_62, i64* %eptr109519                                            ; *eptr109519 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109520                                           ; *eptr109520 = %g8E$_37drop
  %eptr109516 = getelementptr inbounds i64, i64* %cloptr109515, i64 0                ; &cloptr109515[0]
  %f109521 = ptrtoint void(i64,i64,i64)* @lam108463 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109521, i64* %eptr109516                                               ; store fptr
  %arg107361 = ptrtoint i64* %cloptr109515 to i64                                    ; closure cast; i64* -> i64
  %rva107887 = add i64 0, 0                                                          ; quoted ()
  %rva107886 = call i64 @prim_cons(i64 %arg107361, i64 %rva107887)                   ; call prim_cons
  %cloptr109522 = inttoptr i64 %arg107362 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109522)                                       ; assert function application
  %i0ptr109523 = getelementptr inbounds i64, i64* %cloptr109522, i64 0               ; &cloptr109522[0]
  %f109525 = load i64, i64* %i0ptr109523, align 8                                    ; load; *i0ptr109523
  %fptr109524 = inttoptr i64 %f109525 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109524(i64 %arg107362, i64 %rva107886)              ; tail call
  ret void
}


define void @lam108466(i64 %env108467, i64 %wcE$lst106893) {
  %cont106892 = call i64 @prim_car(i64 %wcE$lst106893)                               ; call prim_car
  %wcE$lst = call i64 @prim_cdr(i64 %wcE$lst106893)                                  ; call prim_cdr
  %arg107366 = add i64 0, 0                                                          ; quoted ()
  %cloptr109526 = inttoptr i64 %cont106892 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109526)                                       ; assert function application
  %i0ptr109527 = getelementptr inbounds i64, i64* %cloptr109526, i64 0               ; &cloptr109526[0]
  %f109529 = load i64, i64* %i0ptr109527, align 8                                    ; load; *i0ptr109527
  %fptr109528 = inttoptr i64 %f109529 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109528(i64 %cont106892, i64 %arg107366, i64 %wcE$lst); tail call
  ret void
}


define void @lam108463(i64 %env108464, i64 %_95106890, i64 %a106752) {
  %envptr109530 = inttoptr i64 %env108464 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109531 = getelementptr inbounds i64, i64* %envptr109530, i64 4              ; &envptr109530[4]
  %g8E$_37drop = load i64, i64* %envptr109531, align 8                               ; load; *envptr109531
  %envptr109532 = inttoptr i64 %env108464 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109533 = getelementptr inbounds i64, i64* %envptr109532, i64 3              ; &envptr109532[3]
  %WBu$_37_62 = load i64, i64* %envptr109533, align 8                                ; load; *envptr109533
  %envptr109534 = inttoptr i64 %env108464 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109535 = getelementptr inbounds i64, i64* %envptr109534, i64 2              ; &envptr109534[2]
  %xfk$_37length = load i64, i64* %envptr109535, align 8                             ; load; *envptr109535
  %envptr109536 = inttoptr i64 %env108464 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109537 = getelementptr inbounds i64, i64* %envptr109536, i64 1              ; &envptr109536[1]
  %Xvl$_37_47 = load i64, i64* %envptr109537, align 8                                ; load; *envptr109537
  %arg107369 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim106891 = call i64 @prim_make_45vector(i64 %arg107369, i64 %a106752)        ; call prim_make_45vector
  %cloptr109538 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr109540 = getelementptr inbounds i64, i64* %cloptr109538, i64 1                ; &eptr109540[1]
  %eptr109541 = getelementptr inbounds i64, i64* %cloptr109538, i64 2                ; &eptr109541[2]
  %eptr109542 = getelementptr inbounds i64, i64* %cloptr109538, i64 3                ; &eptr109542[3]
  %eptr109543 = getelementptr inbounds i64, i64* %cloptr109538, i64 4                ; &eptr109543[4]
  store i64 %Xvl$_37_47, i64* %eptr109540                                            ; *eptr109540 = %Xvl$_37_47
  store i64 %xfk$_37length, i64* %eptr109541                                         ; *eptr109541 = %xfk$_37length
  store i64 %WBu$_37_62, i64* %eptr109542                                            ; *eptr109542 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109543                                           ; *eptr109543 = %g8E$_37drop
  %eptr109539 = getelementptr inbounds i64, i64* %cloptr109538, i64 0                ; &cloptr109538[0]
  %f109544 = ptrtoint void(i64,i64,i64)* @lam108460 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109544, i64* %eptr109539                                               ; store fptr
  %arg107372 = ptrtoint i64* %cloptr109538 to i64                                    ; closure cast; i64* -> i64
  %arg107371 = add i64 0, 0                                                          ; quoted ()
  %cloptr109545 = inttoptr i64 %arg107372 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109545)                                       ; assert function application
  %i0ptr109546 = getelementptr inbounds i64, i64* %cloptr109545, i64 0               ; &cloptr109545[0]
  %f109548 = load i64, i64* %i0ptr109546, align 8                                    ; load; *i0ptr109546
  %fptr109547 = inttoptr i64 %f109548 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109547(i64 %arg107372, i64 %arg107371, i64 %retprim106891); tail call
  ret void
}


define void @lam108460(i64 %env108461, i64 %_95106853, i64 %R5Y$_37wind_45stack) {
  %envptr109549 = inttoptr i64 %env108461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109550 = getelementptr inbounds i64, i64* %envptr109549, i64 4              ; &envptr109549[4]
  %g8E$_37drop = load i64, i64* %envptr109550, align 8                               ; load; *envptr109550
  %envptr109551 = inttoptr i64 %env108461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109552 = getelementptr inbounds i64, i64* %envptr109551, i64 3              ; &envptr109551[3]
  %WBu$_37_62 = load i64, i64* %envptr109552, align 8                                ; load; *envptr109552
  %envptr109553 = inttoptr i64 %env108461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109554 = getelementptr inbounds i64, i64* %envptr109553, i64 2              ; &envptr109553[2]
  %xfk$_37length = load i64, i64* %envptr109554, align 8                             ; load; *envptr109554
  %envptr109555 = inttoptr i64 %env108461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109556 = getelementptr inbounds i64, i64* %envptr109555, i64 1              ; &envptr109555[1]
  %Xvl$_37_47 = load i64, i64* %envptr109556, align 8                                ; load; *envptr109556
  %cloptr109557 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109559 = getelementptr inbounds i64, i64* %cloptr109557, i64 1                ; &eptr109559[1]
  %eptr109560 = getelementptr inbounds i64, i64* %cloptr109557, i64 2                ; &eptr109560[2]
  %eptr109561 = getelementptr inbounds i64, i64* %cloptr109557, i64 3                ; &eptr109561[3]
  store i64 %xfk$_37length, i64* %eptr109559                                         ; *eptr109559 = %xfk$_37length
  store i64 %WBu$_37_62, i64* %eptr109560                                            ; *eptr109560 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109561                                           ; *eptr109561 = %g8E$_37drop
  %eptr109558 = getelementptr inbounds i64, i64* %cloptr109557, i64 0                ; &cloptr109557[0]
  %f109562 = ptrtoint void(i64,i64,i64,i64)* @lam108458 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f109562, i64* %eptr109558                                               ; store fptr
  %H2n$_37common_45tail = ptrtoint i64* %cloptr109557 to i64                         ; closure cast; i64* -> i64
  %cloptr109563 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr109565 = getelementptr inbounds i64, i64* %cloptr109563, i64 1                ; &eptr109565[1]
  %eptr109566 = getelementptr inbounds i64, i64* %cloptr109563, i64 2                ; &eptr109566[2]
  store i64 %H2n$_37common_45tail, i64* %eptr109565                                  ; *eptr109565 = %H2n$_37common_45tail
  store i64 %R5Y$_37wind_45stack, i64* %eptr109566                                   ; *eptr109566 = %R5Y$_37wind_45stack
  %eptr109564 = getelementptr inbounds i64, i64* %cloptr109563, i64 0                ; &cloptr109563[0]
  %f109567 = ptrtoint void(i64,i64,i64)* @lam108416 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109567, i64* %eptr109564                                               ; store fptr
  %J8m$_37do_45wind = ptrtoint i64* %cloptr109563 to i64                             ; closure cast; i64* -> i64
  %cloptr109568 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109569 = getelementptr inbounds i64, i64* %cloptr109568, i64 0                ; &cloptr109568[0]
  %f109570 = ptrtoint void(i64,i64)* @lam108366 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f109570, i64* %eptr109569                                               ; store fptr
  %arg107557 = ptrtoint i64* %cloptr109568 to i64                                    ; closure cast; i64* -> i64
  %rva107885 = add i64 0, 0                                                          ; quoted ()
  %rva107884 = call i64 @prim_cons(i64 %arg107557, i64 %rva107885)                   ; call prim_cons
  %cloptr109571 = inttoptr i64 %Xvl$_37_47 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109571)                                       ; assert function application
  %i0ptr109572 = getelementptr inbounds i64, i64* %cloptr109571, i64 0               ; &cloptr109571[0]
  %f109574 = load i64, i64* %i0ptr109572, align 8                                    ; load; *i0ptr109572
  %fptr109573 = inttoptr i64 %f109574 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109573(i64 %Xvl$_37_47, i64 %rva107884)             ; tail call
  ret void
}


define void @lam108458(i64 %env108459, i64 %cont106854, i64 %BBN$x, i64 %i3g$y) {
  %envptr109575 = inttoptr i64 %env108459 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109576 = getelementptr inbounds i64, i64* %envptr109575, i64 3              ; &envptr109575[3]
  %g8E$_37drop = load i64, i64* %envptr109576, align 8                               ; load; *envptr109576
  %envptr109577 = inttoptr i64 %env108459 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109578 = getelementptr inbounds i64, i64* %envptr109577, i64 2              ; &envptr109577[2]
  %WBu$_37_62 = load i64, i64* %envptr109578, align 8                                ; load; *envptr109578
  %envptr109579 = inttoptr i64 %env108459 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109580 = getelementptr inbounds i64, i64* %envptr109579, i64 1              ; &envptr109579[1]
  %xfk$_37length = load i64, i64* %envptr109580, align 8                             ; load; *envptr109580
  %cloptr109581 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr109583 = getelementptr inbounds i64, i64* %cloptr109581, i64 1                ; &eptr109583[1]
  %eptr109584 = getelementptr inbounds i64, i64* %cloptr109581, i64 2                ; &eptr109584[2]
  %eptr109585 = getelementptr inbounds i64, i64* %cloptr109581, i64 3                ; &eptr109585[3]
  %eptr109586 = getelementptr inbounds i64, i64* %cloptr109581, i64 4                ; &eptr109586[4]
  %eptr109587 = getelementptr inbounds i64, i64* %cloptr109581, i64 5                ; &eptr109587[5]
  %eptr109588 = getelementptr inbounds i64, i64* %cloptr109581, i64 6                ; &eptr109588[6]
  store i64 %BBN$x, i64* %eptr109583                                                 ; *eptr109583 = %BBN$x
  store i64 %xfk$_37length, i64* %eptr109584                                         ; *eptr109584 = %xfk$_37length
  store i64 %WBu$_37_62, i64* %eptr109585                                            ; *eptr109585 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109586                                           ; *eptr109586 = %g8E$_37drop
  store i64 %cont106854, i64* %eptr109587                                            ; *eptr109587 = %cont106854
  store i64 %i3g$y, i64* %eptr109588                                                 ; *eptr109588 = %i3g$y
  %eptr109582 = getelementptr inbounds i64, i64* %cloptr109581, i64 0                ; &cloptr109581[0]
  %f109589 = ptrtoint void(i64,i64,i64)* @lam108456 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109589, i64* %eptr109582                                               ; store fptr
  %arg107374 = ptrtoint i64* %cloptr109581 to i64                                    ; closure cast; i64* -> i64
  %cloptr109590 = inttoptr i64 %xfk$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109590)                                       ; assert function application
  %i0ptr109591 = getelementptr inbounds i64, i64* %cloptr109590, i64 0               ; &cloptr109590[0]
  %f109593 = load i64, i64* %i0ptr109591, align 8                                    ; load; *i0ptr109591
  %fptr109592 = inttoptr i64 %f109593 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109592(i64 %xfk$_37length, i64 %arg107374, i64 %BBN$x); tail call
  ret void
}


define void @lam108456(i64 %env108457, i64 %_95106855, i64 %oEQ$lx) {
  %envptr109594 = inttoptr i64 %env108457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109595 = getelementptr inbounds i64, i64* %envptr109594, i64 6              ; &envptr109594[6]
  %i3g$y = load i64, i64* %envptr109595, align 8                                     ; load; *envptr109595
  %envptr109596 = inttoptr i64 %env108457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109597 = getelementptr inbounds i64, i64* %envptr109596, i64 5              ; &envptr109596[5]
  %cont106854 = load i64, i64* %envptr109597, align 8                                ; load; *envptr109597
  %envptr109598 = inttoptr i64 %env108457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109599 = getelementptr inbounds i64, i64* %envptr109598, i64 4              ; &envptr109598[4]
  %g8E$_37drop = load i64, i64* %envptr109599, align 8                               ; load; *envptr109599
  %envptr109600 = inttoptr i64 %env108457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109601 = getelementptr inbounds i64, i64* %envptr109600, i64 3              ; &envptr109600[3]
  %WBu$_37_62 = load i64, i64* %envptr109601, align 8                                ; load; *envptr109601
  %envptr109602 = inttoptr i64 %env108457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109603 = getelementptr inbounds i64, i64* %envptr109602, i64 2              ; &envptr109602[2]
  %xfk$_37length = load i64, i64* %envptr109603, align 8                             ; load; *envptr109603
  %envptr109604 = inttoptr i64 %env108457 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109605 = getelementptr inbounds i64, i64* %envptr109604, i64 1              ; &envptr109604[1]
  %BBN$x = load i64, i64* %envptr109605, align 8                                     ; load; *envptr109605
  %cloptr109606 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr109608 = getelementptr inbounds i64, i64* %cloptr109606, i64 1                ; &eptr109608[1]
  %eptr109609 = getelementptr inbounds i64, i64* %cloptr109606, i64 2                ; &eptr109609[2]
  %eptr109610 = getelementptr inbounds i64, i64* %cloptr109606, i64 3                ; &eptr109610[3]
  %eptr109611 = getelementptr inbounds i64, i64* %cloptr109606, i64 4                ; &eptr109611[4]
  %eptr109612 = getelementptr inbounds i64, i64* %cloptr109606, i64 5                ; &eptr109612[5]
  %eptr109613 = getelementptr inbounds i64, i64* %cloptr109606, i64 6                ; &eptr109613[6]
  store i64 %BBN$x, i64* %eptr109608                                                 ; *eptr109608 = %BBN$x
  store i64 %WBu$_37_62, i64* %eptr109609                                            ; *eptr109609 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109610                                           ; *eptr109610 = %g8E$_37drop
  store i64 %oEQ$lx, i64* %eptr109611                                                ; *eptr109611 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109612                                            ; *eptr109612 = %cont106854
  store i64 %i3g$y, i64* %eptr109613                                                 ; *eptr109613 = %i3g$y
  %eptr109607 = getelementptr inbounds i64, i64* %cloptr109606, i64 0                ; &cloptr109606[0]
  %f109614 = ptrtoint void(i64,i64,i64)* @lam108454 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109614, i64* %eptr109607                                               ; store fptr
  %arg107377 = ptrtoint i64* %cloptr109606 to i64                                    ; closure cast; i64* -> i64
  %cloptr109615 = inttoptr i64 %xfk$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109615)                                       ; assert function application
  %i0ptr109616 = getelementptr inbounds i64, i64* %cloptr109615, i64 0               ; &cloptr109615[0]
  %f109618 = load i64, i64* %i0ptr109616, align 8                                    ; load; *i0ptr109616
  %fptr109617 = inttoptr i64 %f109618 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109617(i64 %xfk$_37length, i64 %arg107377, i64 %i3g$y); tail call
  ret void
}


define void @lam108454(i64 %env108455, i64 %_95106856, i64 %fBq$ly) {
  %envptr109619 = inttoptr i64 %env108455 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109620 = getelementptr inbounds i64, i64* %envptr109619, i64 6              ; &envptr109619[6]
  %i3g$y = load i64, i64* %envptr109620, align 8                                     ; load; *envptr109620
  %envptr109621 = inttoptr i64 %env108455 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109622 = getelementptr inbounds i64, i64* %envptr109621, i64 5              ; &envptr109621[5]
  %cont106854 = load i64, i64* %envptr109622, align 8                                ; load; *envptr109622
  %envptr109623 = inttoptr i64 %env108455 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109624 = getelementptr inbounds i64, i64* %envptr109623, i64 4              ; &envptr109623[4]
  %oEQ$lx = load i64, i64* %envptr109624, align 8                                    ; load; *envptr109624
  %envptr109625 = inttoptr i64 %env108455 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109626 = getelementptr inbounds i64, i64* %envptr109625, i64 3              ; &envptr109625[3]
  %g8E$_37drop = load i64, i64* %envptr109626, align 8                               ; load; *envptr109626
  %envptr109627 = inttoptr i64 %env108455 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109628 = getelementptr inbounds i64, i64* %envptr109627, i64 2              ; &envptr109627[2]
  %WBu$_37_62 = load i64, i64* %envptr109628, align 8                                ; load; *envptr109628
  %envptr109629 = inttoptr i64 %env108455 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109630 = getelementptr inbounds i64, i64* %envptr109629, i64 1              ; &envptr109629[1]
  %BBN$x = load i64, i64* %envptr109630, align 8                                     ; load; *envptr109630
  %cloptr109631 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109632 = getelementptr inbounds i64, i64* %cloptr109631, i64 0                ; &cloptr109631[0]
  %f109633 = ptrtoint void(i64,i64)* @lam108452 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f109633, i64* %eptr109632                                               ; store fptr
  %arg107380 = ptrtoint i64* %cloptr109631 to i64                                    ; closure cast; i64* -> i64
  %cloptr109634 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr109636 = getelementptr inbounds i64, i64* %cloptr109634, i64 1                ; &eptr109636[1]
  %eptr109637 = getelementptr inbounds i64, i64* %cloptr109634, i64 2                ; &eptr109637[2]
  %eptr109638 = getelementptr inbounds i64, i64* %cloptr109634, i64 3                ; &eptr109638[3]
  %eptr109639 = getelementptr inbounds i64, i64* %cloptr109634, i64 4                ; &eptr109639[4]
  %eptr109640 = getelementptr inbounds i64, i64* %cloptr109634, i64 5                ; &eptr109640[5]
  %eptr109641 = getelementptr inbounds i64, i64* %cloptr109634, i64 6                ; &eptr109641[6]
  %eptr109642 = getelementptr inbounds i64, i64* %cloptr109634, i64 7                ; &eptr109642[7]
  store i64 %BBN$x, i64* %eptr109636                                                 ; *eptr109636 = %BBN$x
  store i64 %WBu$_37_62, i64* %eptr109637                                            ; *eptr109637 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109638                                           ; *eptr109638 = %g8E$_37drop
  store i64 %fBq$ly, i64* %eptr109639                                                ; *eptr109639 = %fBq$ly
  store i64 %oEQ$lx, i64* %eptr109640                                                ; *eptr109640 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109641                                            ; *eptr109641 = %cont106854
  store i64 %i3g$y, i64* %eptr109642                                                 ; *eptr109642 = %i3g$y
  %eptr109635 = getelementptr inbounds i64, i64* %cloptr109634, i64 0                ; &cloptr109634[0]
  %f109643 = ptrtoint void(i64,i64,i64)* @lam108449 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109643, i64* %eptr109635                                               ; store fptr
  %arg107379 = ptrtoint i64* %cloptr109634 to i64                                    ; closure cast; i64* -> i64
  %cloptr109644 = inttoptr i64 %arg107380 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109644)                                       ; assert function application
  %i0ptr109645 = getelementptr inbounds i64, i64* %cloptr109644, i64 0               ; &cloptr109644[0]
  %f109647 = load i64, i64* %i0ptr109645, align 8                                    ; load; *i0ptr109645
  %fptr109646 = inttoptr i64 %f109647 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109646(i64 %arg107380, i64 %arg107379)              ; tail call
  ret void
}


define void @lam108452(i64 %env108453, i64 %w7s$lst106866) {
  %cont106865 = call i64 @prim_car(i64 %w7s$lst106866)                               ; call prim_car
  %w7s$lst = call i64 @prim_cdr(i64 %w7s$lst106866)                                  ; call prim_cdr
  %arg107384 = add i64 0, 0                                                          ; quoted ()
  %cloptr109648 = inttoptr i64 %cont106865 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109648)                                       ; assert function application
  %i0ptr109649 = getelementptr inbounds i64, i64* %cloptr109648, i64 0               ; &cloptr109648[0]
  %f109651 = load i64, i64* %i0ptr109649, align 8                                    ; load; *i0ptr109649
  %fptr109650 = inttoptr i64 %f109651 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109650(i64 %cont106865, i64 %arg107384, i64 %w7s$lst); tail call
  ret void
}


define void @lam108449(i64 %env108450, i64 %_95106863, i64 %a106753) {
  %envptr109652 = inttoptr i64 %env108450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109653 = getelementptr inbounds i64, i64* %envptr109652, i64 7              ; &envptr109652[7]
  %i3g$y = load i64, i64* %envptr109653, align 8                                     ; load; *envptr109653
  %envptr109654 = inttoptr i64 %env108450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109655 = getelementptr inbounds i64, i64* %envptr109654, i64 6              ; &envptr109654[6]
  %cont106854 = load i64, i64* %envptr109655, align 8                                ; load; *envptr109655
  %envptr109656 = inttoptr i64 %env108450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109657 = getelementptr inbounds i64, i64* %envptr109656, i64 5              ; &envptr109656[5]
  %oEQ$lx = load i64, i64* %envptr109657, align 8                                    ; load; *envptr109657
  %envptr109658 = inttoptr i64 %env108450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109659 = getelementptr inbounds i64, i64* %envptr109658, i64 4              ; &envptr109658[4]
  %fBq$ly = load i64, i64* %envptr109659, align 8                                    ; load; *envptr109659
  %envptr109660 = inttoptr i64 %env108450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109661 = getelementptr inbounds i64, i64* %envptr109660, i64 3              ; &envptr109660[3]
  %g8E$_37drop = load i64, i64* %envptr109661, align 8                               ; load; *envptr109661
  %envptr109662 = inttoptr i64 %env108450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109663 = getelementptr inbounds i64, i64* %envptr109662, i64 2              ; &envptr109662[2]
  %WBu$_37_62 = load i64, i64* %envptr109663, align 8                                ; load; *envptr109663
  %envptr109664 = inttoptr i64 %env108450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109665 = getelementptr inbounds i64, i64* %envptr109664, i64 1              ; &envptr109664[1]
  %BBN$x = load i64, i64* %envptr109665, align 8                                     ; load; *envptr109665
  %arg107387 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim106864 = call i64 @prim_make_45vector(i64 %arg107387, i64 %a106753)        ; call prim_make_45vector
  %cloptr109666 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr109668 = getelementptr inbounds i64, i64* %cloptr109666, i64 1                ; &eptr109668[1]
  %eptr109669 = getelementptr inbounds i64, i64* %cloptr109666, i64 2                ; &eptr109669[2]
  %eptr109670 = getelementptr inbounds i64, i64* %cloptr109666, i64 3                ; &eptr109670[3]
  %eptr109671 = getelementptr inbounds i64, i64* %cloptr109666, i64 4                ; &eptr109671[4]
  %eptr109672 = getelementptr inbounds i64, i64* %cloptr109666, i64 5                ; &eptr109672[5]
  %eptr109673 = getelementptr inbounds i64, i64* %cloptr109666, i64 6                ; &eptr109673[6]
  %eptr109674 = getelementptr inbounds i64, i64* %cloptr109666, i64 7                ; &eptr109674[7]
  store i64 %BBN$x, i64* %eptr109668                                                 ; *eptr109668 = %BBN$x
  store i64 %WBu$_37_62, i64* %eptr109669                                            ; *eptr109669 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109670                                           ; *eptr109670 = %g8E$_37drop
  store i64 %fBq$ly, i64* %eptr109671                                                ; *eptr109671 = %fBq$ly
  store i64 %oEQ$lx, i64* %eptr109672                                                ; *eptr109672 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109673                                            ; *eptr109673 = %cont106854
  store i64 %i3g$y, i64* %eptr109674                                                 ; *eptr109674 = %i3g$y
  %eptr109667 = getelementptr inbounds i64, i64* %cloptr109666, i64 0                ; &cloptr109666[0]
  %f109675 = ptrtoint void(i64,i64,i64)* @lam108446 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109675, i64* %eptr109667                                               ; store fptr
  %arg107390 = ptrtoint i64* %cloptr109666 to i64                                    ; closure cast; i64* -> i64
  %arg107389 = add i64 0, 0                                                          ; quoted ()
  %cloptr109676 = inttoptr i64 %arg107390 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109676)                                       ; assert function application
  %i0ptr109677 = getelementptr inbounds i64, i64* %cloptr109676, i64 0               ; &cloptr109676[0]
  %f109679 = load i64, i64* %i0ptr109677, align 8                                    ; load; *i0ptr109677
  %fptr109678 = inttoptr i64 %f109679 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109678(i64 %arg107390, i64 %arg107389, i64 %retprim106864); tail call
  ret void
}


define void @lam108446(i64 %env108447, i64 %_95106857, i64 %vtT$loop) {
  %envptr109680 = inttoptr i64 %env108447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109681 = getelementptr inbounds i64, i64* %envptr109680, i64 7              ; &envptr109680[7]
  %i3g$y = load i64, i64* %envptr109681, align 8                                     ; load; *envptr109681
  %envptr109682 = inttoptr i64 %env108447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109683 = getelementptr inbounds i64, i64* %envptr109682, i64 6              ; &envptr109682[6]
  %cont106854 = load i64, i64* %envptr109683, align 8                                ; load; *envptr109683
  %envptr109684 = inttoptr i64 %env108447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109685 = getelementptr inbounds i64, i64* %envptr109684, i64 5              ; &envptr109684[5]
  %oEQ$lx = load i64, i64* %envptr109685, align 8                                    ; load; *envptr109685
  %envptr109686 = inttoptr i64 %env108447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109687 = getelementptr inbounds i64, i64* %envptr109686, i64 4              ; &envptr109686[4]
  %fBq$ly = load i64, i64* %envptr109687, align 8                                    ; load; *envptr109687
  %envptr109688 = inttoptr i64 %env108447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109689 = getelementptr inbounds i64, i64* %envptr109688, i64 3              ; &envptr109688[3]
  %g8E$_37drop = load i64, i64* %envptr109689, align 8                               ; load; *envptr109689
  %envptr109690 = inttoptr i64 %env108447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109691 = getelementptr inbounds i64, i64* %envptr109690, i64 2              ; &envptr109690[2]
  %WBu$_37_62 = load i64, i64* %envptr109691, align 8                                ; load; *envptr109691
  %envptr109692 = inttoptr i64 %env108447 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109693 = getelementptr inbounds i64, i64* %envptr109692, i64 1              ; &envptr109692[1]
  %BBN$x = load i64, i64* %envptr109693, align 8                                     ; load; *envptr109693
  %arg107392 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr109694 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr109696 = getelementptr inbounds i64, i64* %cloptr109694, i64 1                ; &eptr109696[1]
  store i64 %vtT$loop, i64* %eptr109696                                              ; *eptr109696 = %vtT$loop
  %eptr109695 = getelementptr inbounds i64, i64* %cloptr109694, i64 0                ; &cloptr109694[0]
  %f109697 = ptrtoint void(i64,i64,i64,i64)* @lam108443 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f109697, i64* %eptr109695                                               ; store fptr
  %arg107391 = ptrtoint i64* %cloptr109694 to i64                                    ; closure cast; i64* -> i64
  %A7m$_95106657 = call i64 @prim_vector_45set_33(i64 %vtT$loop, i64 %arg107392, i64 %arg107391); call prim_vector_45set_33
  %arg107407 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106758 = call i64 @prim_vector_45ref(i64 %vtT$loop, i64 %arg107407)              ; call prim_vector_45ref
  %cloptr109698 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr109700 = getelementptr inbounds i64, i64* %cloptr109698, i64 1                ; &eptr109700[1]
  %eptr109701 = getelementptr inbounds i64, i64* %cloptr109698, i64 2                ; &eptr109701[2]
  %eptr109702 = getelementptr inbounds i64, i64* %cloptr109698, i64 3                ; &eptr109702[3]
  %eptr109703 = getelementptr inbounds i64, i64* %cloptr109698, i64 4                ; &eptr109703[4]
  %eptr109704 = getelementptr inbounds i64, i64* %cloptr109698, i64 5                ; &eptr109704[5]
  %eptr109705 = getelementptr inbounds i64, i64* %cloptr109698, i64 6                ; &eptr109705[6]
  %eptr109706 = getelementptr inbounds i64, i64* %cloptr109698, i64 7                ; &eptr109706[7]
  %eptr109707 = getelementptr inbounds i64, i64* %cloptr109698, i64 8                ; &eptr109707[8]
  store i64 %BBN$x, i64* %eptr109700                                                 ; *eptr109700 = %BBN$x
  store i64 %a106758, i64* %eptr109701                                               ; *eptr109701 = %a106758
  store i64 %WBu$_37_62, i64* %eptr109702                                            ; *eptr109702 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109703                                           ; *eptr109703 = %g8E$_37drop
  store i64 %fBq$ly, i64* %eptr109704                                                ; *eptr109704 = %fBq$ly
  store i64 %oEQ$lx, i64* %eptr109705                                                ; *eptr109705 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109706                                            ; *eptr109706 = %cont106854
  store i64 %i3g$y, i64* %eptr109707                                                 ; *eptr109707 = %i3g$y
  %eptr109699 = getelementptr inbounds i64, i64* %cloptr109698, i64 0                ; &cloptr109698[0]
  %f109708 = ptrtoint void(i64,i64,i64)* @lam108438 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109708, i64* %eptr109699                                               ; store fptr
  %arg107411 = ptrtoint i64* %cloptr109698 to i64                                    ; closure cast; i64* -> i64
  %cloptr109709 = inttoptr i64 %WBu$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109709)                                       ; assert function application
  %i0ptr109710 = getelementptr inbounds i64, i64* %cloptr109709, i64 0               ; &cloptr109709[0]
  %f109712 = load i64, i64* %i0ptr109710, align 8                                    ; load; *i0ptr109710
  %fptr109711 = inttoptr i64 %f109712 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109711(i64 %WBu$_37_62, i64 %arg107411, i64 %oEQ$lx, i64 %fBq$ly); tail call
  ret void
}


define void @lam108443(i64 %env108444, i64 %cont106858, i64 %Z0y$x, i64 %oPR$y) {
  %envptr109713 = inttoptr i64 %env108444 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109714 = getelementptr inbounds i64, i64* %envptr109713, i64 1              ; &envptr109713[1]
  %vtT$loop = load i64, i64* %envptr109714, align 8                                  ; load; *envptr109714
  %a106754 = call i64 @prim_eq_63(i64 %Z0y$x, i64 %oPR$y)                            ; call prim_eq_63
  %cmp109715 = icmp eq i64 %a106754, 15                                              ; false?
  br i1 %cmp109715, label %else109717, label %then109716                             ; if

then109716:
  %arg107397 = add i64 0, 0                                                          ; quoted ()
  %cloptr109718 = inttoptr i64 %cont106858 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109718)                                       ; assert function application
  %i0ptr109719 = getelementptr inbounds i64, i64* %cloptr109718, i64 0               ; &cloptr109718[0]
  %f109721 = load i64, i64* %i0ptr109719, align 8                                    ; load; *i0ptr109719
  %fptr109720 = inttoptr i64 %f109721 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109720(i64 %cont106858, i64 %arg107397, i64 %Z0y$x) ; tail call
  ret void

else109717:
  %arg107399 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106755 = call i64 @prim_vector_45ref(i64 %vtT$loop, i64 %arg107399)              ; call prim_vector_45ref
  %a106756 = call i64 @prim_cdr(i64 %Z0y$x)                                          ; call prim_cdr
  %a106757 = call i64 @prim_cdr(i64 %oPR$y)                                          ; call prim_cdr
  %cloptr109722 = inttoptr i64 %a106755 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109722)                                       ; assert function application
  %i0ptr109723 = getelementptr inbounds i64, i64* %cloptr109722, i64 0               ; &cloptr109722[0]
  %f109725 = load i64, i64* %i0ptr109723, align 8                                    ; load; *i0ptr109723
  %fptr109724 = inttoptr i64 %f109725 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109724(i64 %a106755, i64 %cont106858, i64 %a106756, i64 %a106757); tail call
  ret void
}


define void @lam108438(i64 %env108439, i64 %_95106859, i64 %a106759) {
  %envptr109726 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109727 = getelementptr inbounds i64, i64* %envptr109726, i64 8              ; &envptr109726[8]
  %i3g$y = load i64, i64* %envptr109727, align 8                                     ; load; *envptr109727
  %envptr109728 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109729 = getelementptr inbounds i64, i64* %envptr109728, i64 7              ; &envptr109728[7]
  %cont106854 = load i64, i64* %envptr109729, align 8                                ; load; *envptr109729
  %envptr109730 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109731 = getelementptr inbounds i64, i64* %envptr109730, i64 6              ; &envptr109730[6]
  %oEQ$lx = load i64, i64* %envptr109731, align 8                                    ; load; *envptr109731
  %envptr109732 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109733 = getelementptr inbounds i64, i64* %envptr109732, i64 5              ; &envptr109732[5]
  %fBq$ly = load i64, i64* %envptr109733, align 8                                    ; load; *envptr109733
  %envptr109734 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109735 = getelementptr inbounds i64, i64* %envptr109734, i64 4              ; &envptr109734[4]
  %g8E$_37drop = load i64, i64* %envptr109735, align 8                               ; load; *envptr109735
  %envptr109736 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109737 = getelementptr inbounds i64, i64* %envptr109736, i64 3              ; &envptr109736[3]
  %WBu$_37_62 = load i64, i64* %envptr109737, align 8                                ; load; *envptr109737
  %envptr109738 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109739 = getelementptr inbounds i64, i64* %envptr109738, i64 2              ; &envptr109738[2]
  %a106758 = load i64, i64* %envptr109739, align 8                                   ; load; *envptr109739
  %envptr109740 = inttoptr i64 %env108439 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109741 = getelementptr inbounds i64, i64* %envptr109740, i64 1              ; &envptr109740[1]
  %BBN$x = load i64, i64* %envptr109741, align 8                                     ; load; *envptr109741
  %cmp109742 = icmp eq i64 %a106759, 15                                              ; false?
  br i1 %cmp109742, label %else109744, label %then109743                             ; if

then109743:
  %a106760 = call i64 @prim__45(i64 %oEQ$lx, i64 %fBq$ly)                            ; call prim__45
  %cloptr109745 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr109747 = getelementptr inbounds i64, i64* %cloptr109745, i64 1                ; &eptr109747[1]
  %eptr109748 = getelementptr inbounds i64, i64* %cloptr109745, i64 2                ; &eptr109748[2]
  %eptr109749 = getelementptr inbounds i64, i64* %cloptr109745, i64 3                ; &eptr109749[3]
  %eptr109750 = getelementptr inbounds i64, i64* %cloptr109745, i64 4                ; &eptr109750[4]
  %eptr109751 = getelementptr inbounds i64, i64* %cloptr109745, i64 5                ; &eptr109751[5]
  %eptr109752 = getelementptr inbounds i64, i64* %cloptr109745, i64 6                ; &eptr109752[6]
  %eptr109753 = getelementptr inbounds i64, i64* %cloptr109745, i64 7                ; &eptr109753[7]
  store i64 %a106758, i64* %eptr109747                                               ; *eptr109747 = %a106758
  store i64 %WBu$_37_62, i64* %eptr109748                                            ; *eptr109748 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109749                                           ; *eptr109749 = %g8E$_37drop
  store i64 %fBq$ly, i64* %eptr109750                                                ; *eptr109750 = %fBq$ly
  store i64 %oEQ$lx, i64* %eptr109751                                                ; *eptr109751 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109752                                            ; *eptr109752 = %cont106854
  store i64 %i3g$y, i64* %eptr109753                                                 ; *eptr109753 = %i3g$y
  %eptr109746 = getelementptr inbounds i64, i64* %cloptr109745, i64 0                ; &cloptr109745[0]
  %f109754 = ptrtoint void(i64,i64,i64)* @lam108426 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109754, i64* %eptr109746                                               ; store fptr
  %arg107417 = ptrtoint i64* %cloptr109745 to i64                                    ; closure cast; i64* -> i64
  %cloptr109755 = inttoptr i64 %g8E$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109755)                                       ; assert function application
  %i0ptr109756 = getelementptr inbounds i64, i64* %cloptr109755, i64 0               ; &cloptr109755[0]
  %f109758 = load i64, i64* %i0ptr109756, align 8                                    ; load; *i0ptr109756
  %fptr109757 = inttoptr i64 %f109758 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109757(i64 %g8E$_37drop, i64 %arg107417, i64 %BBN$x, i64 %a106760); tail call
  ret void

else109744:
  %cloptr109759 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr109761 = getelementptr inbounds i64, i64* %cloptr109759, i64 1                ; &eptr109761[1]
  %eptr109762 = getelementptr inbounds i64, i64* %cloptr109759, i64 2                ; &eptr109762[2]
  %eptr109763 = getelementptr inbounds i64, i64* %cloptr109759, i64 3                ; &eptr109763[3]
  %eptr109764 = getelementptr inbounds i64, i64* %cloptr109759, i64 4                ; &eptr109764[4]
  %eptr109765 = getelementptr inbounds i64, i64* %cloptr109759, i64 5                ; &eptr109765[5]
  %eptr109766 = getelementptr inbounds i64, i64* %cloptr109759, i64 6                ; &eptr109766[6]
  %eptr109767 = getelementptr inbounds i64, i64* %cloptr109759, i64 7                ; &eptr109767[7]
  store i64 %a106758, i64* %eptr109761                                               ; *eptr109761 = %a106758
  store i64 %WBu$_37_62, i64* %eptr109762                                            ; *eptr109762 = %WBu$_37_62
  store i64 %g8E$_37drop, i64* %eptr109763                                           ; *eptr109763 = %g8E$_37drop
  store i64 %fBq$ly, i64* %eptr109764                                                ; *eptr109764 = %fBq$ly
  store i64 %oEQ$lx, i64* %eptr109765                                                ; *eptr109765 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109766                                            ; *eptr109766 = %cont106854
  store i64 %i3g$y, i64* %eptr109767                                                 ; *eptr109767 = %i3g$y
  %eptr109760 = getelementptr inbounds i64, i64* %cloptr109759, i64 0                ; &cloptr109759[0]
  %f109768 = ptrtoint void(i64,i64,i64)* @lam108436 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109768, i64* %eptr109760                                               ; store fptr
  %arg107442 = ptrtoint i64* %cloptr109759 to i64                                    ; closure cast; i64* -> i64
  %arg107441 = add i64 0, 0                                                          ; quoted ()
  %cloptr109769 = inttoptr i64 %arg107442 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109769)                                       ; assert function application
  %i0ptr109770 = getelementptr inbounds i64, i64* %cloptr109769, i64 0               ; &cloptr109769[0]
  %f109772 = load i64, i64* %i0ptr109770, align 8                                    ; load; *i0ptr109770
  %fptr109771 = inttoptr i64 %f109772 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109771(i64 %arg107442, i64 %arg107441, i64 %BBN$x)  ; tail call
  ret void
}


define void @lam108436(i64 %env108437, i64 %_95106860, i64 %a106761) {
  %envptr109773 = inttoptr i64 %env108437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109774 = getelementptr inbounds i64, i64* %envptr109773, i64 7              ; &envptr109773[7]
  %i3g$y = load i64, i64* %envptr109774, align 8                                     ; load; *envptr109774
  %envptr109775 = inttoptr i64 %env108437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109776 = getelementptr inbounds i64, i64* %envptr109775, i64 6              ; &envptr109775[6]
  %cont106854 = load i64, i64* %envptr109776, align 8                                ; load; *envptr109776
  %envptr109777 = inttoptr i64 %env108437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109778 = getelementptr inbounds i64, i64* %envptr109777, i64 5              ; &envptr109777[5]
  %oEQ$lx = load i64, i64* %envptr109778, align 8                                    ; load; *envptr109778
  %envptr109779 = inttoptr i64 %env108437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109780 = getelementptr inbounds i64, i64* %envptr109779, i64 4              ; &envptr109779[4]
  %fBq$ly = load i64, i64* %envptr109780, align 8                                    ; load; *envptr109780
  %envptr109781 = inttoptr i64 %env108437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109782 = getelementptr inbounds i64, i64* %envptr109781, i64 3              ; &envptr109781[3]
  %g8E$_37drop = load i64, i64* %envptr109782, align 8                               ; load; *envptr109782
  %envptr109783 = inttoptr i64 %env108437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109784 = getelementptr inbounds i64, i64* %envptr109783, i64 2              ; &envptr109783[2]
  %WBu$_37_62 = load i64, i64* %envptr109784, align 8                                ; load; *envptr109784
  %envptr109785 = inttoptr i64 %env108437 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109786 = getelementptr inbounds i64, i64* %envptr109785, i64 1              ; &envptr109785[1]
  %a106758 = load i64, i64* %envptr109786, align 8                                   ; load; *envptr109786
  %cloptr109787 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr109789 = getelementptr inbounds i64, i64* %cloptr109787, i64 1                ; &eptr109789[1]
  %eptr109790 = getelementptr inbounds i64, i64* %cloptr109787, i64 2                ; &eptr109790[2]
  %eptr109791 = getelementptr inbounds i64, i64* %cloptr109787, i64 3                ; &eptr109791[3]
  %eptr109792 = getelementptr inbounds i64, i64* %cloptr109787, i64 4                ; &eptr109792[4]
  %eptr109793 = getelementptr inbounds i64, i64* %cloptr109787, i64 5                ; &eptr109793[5]
  %eptr109794 = getelementptr inbounds i64, i64* %cloptr109787, i64 6                ; &eptr109794[6]
  %eptr109795 = getelementptr inbounds i64, i64* %cloptr109787, i64 7                ; &eptr109795[7]
  store i64 %a106761, i64* %eptr109789                                               ; *eptr109789 = %a106761
  store i64 %a106758, i64* %eptr109790                                               ; *eptr109790 = %a106758
  store i64 %g8E$_37drop, i64* %eptr109791                                           ; *eptr109791 = %g8E$_37drop
  store i64 %fBq$ly, i64* %eptr109792                                                ; *eptr109792 = %fBq$ly
  store i64 %oEQ$lx, i64* %eptr109793                                                ; *eptr109793 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109794                                            ; *eptr109794 = %cont106854
  store i64 %i3g$y, i64* %eptr109795                                                 ; *eptr109795 = %i3g$y
  %eptr109788 = getelementptr inbounds i64, i64* %cloptr109787, i64 0                ; &cloptr109787[0]
  %f109796 = ptrtoint void(i64,i64,i64)* @lam108434 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109796, i64* %eptr109788                                               ; store fptr
  %arg107445 = ptrtoint i64* %cloptr109787 to i64                                    ; closure cast; i64* -> i64
  %cloptr109797 = inttoptr i64 %WBu$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109797)                                       ; assert function application
  %i0ptr109798 = getelementptr inbounds i64, i64* %cloptr109797, i64 0               ; &cloptr109797[0]
  %f109800 = load i64, i64* %i0ptr109798, align 8                                    ; load; *i0ptr109798
  %fptr109799 = inttoptr i64 %f109800 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109799(i64 %WBu$_37_62, i64 %arg107445, i64 %fBq$ly, i64 %oEQ$lx); tail call
  ret void
}


define void @lam108434(i64 %env108435, i64 %_95106861, i64 %a106762) {
  %envptr109801 = inttoptr i64 %env108435 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109802 = getelementptr inbounds i64, i64* %envptr109801, i64 7              ; &envptr109801[7]
  %i3g$y = load i64, i64* %envptr109802, align 8                                     ; load; *envptr109802
  %envptr109803 = inttoptr i64 %env108435 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109804 = getelementptr inbounds i64, i64* %envptr109803, i64 6              ; &envptr109803[6]
  %cont106854 = load i64, i64* %envptr109804, align 8                                ; load; *envptr109804
  %envptr109805 = inttoptr i64 %env108435 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109806 = getelementptr inbounds i64, i64* %envptr109805, i64 5              ; &envptr109805[5]
  %oEQ$lx = load i64, i64* %envptr109806, align 8                                    ; load; *envptr109806
  %envptr109807 = inttoptr i64 %env108435 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109808 = getelementptr inbounds i64, i64* %envptr109807, i64 4              ; &envptr109807[4]
  %fBq$ly = load i64, i64* %envptr109808, align 8                                    ; load; *envptr109808
  %envptr109809 = inttoptr i64 %env108435 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109810 = getelementptr inbounds i64, i64* %envptr109809, i64 3              ; &envptr109809[3]
  %g8E$_37drop = load i64, i64* %envptr109810, align 8                               ; load; *envptr109810
  %envptr109811 = inttoptr i64 %env108435 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109812 = getelementptr inbounds i64, i64* %envptr109811, i64 2              ; &envptr109811[2]
  %a106758 = load i64, i64* %envptr109812, align 8                                   ; load; *envptr109812
  %envptr109813 = inttoptr i64 %env108435 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109814 = getelementptr inbounds i64, i64* %envptr109813, i64 1              ; &envptr109813[1]
  %a106761 = load i64, i64* %envptr109814, align 8                                   ; load; *envptr109814
  %cmp109815 = icmp eq i64 %a106762, 15                                              ; false?
  br i1 %cmp109815, label %else109817, label %then109816                             ; if

then109816:
  %a106763 = call i64 @prim__45(i64 %fBq$ly, i64 %oEQ$lx)                            ; call prim__45
  %cloptr109818 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109820 = getelementptr inbounds i64, i64* %cloptr109818, i64 1                ; &eptr109820[1]
  %eptr109821 = getelementptr inbounds i64, i64* %cloptr109818, i64 2                ; &eptr109821[2]
  %eptr109822 = getelementptr inbounds i64, i64* %cloptr109818, i64 3                ; &eptr109822[3]
  store i64 %a106761, i64* %eptr109820                                               ; *eptr109820 = %a106761
  store i64 %a106758, i64* %eptr109821                                               ; *eptr109821 = %a106758
  store i64 %cont106854, i64* %eptr109822                                            ; *eptr109822 = %cont106854
  %eptr109819 = getelementptr inbounds i64, i64* %cloptr109818, i64 0                ; &cloptr109818[0]
  %f109823 = ptrtoint void(i64,i64,i64)* @lam108429 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109823, i64* %eptr109819                                               ; store fptr
  %arg107451 = ptrtoint i64* %cloptr109818 to i64                                    ; closure cast; i64* -> i64
  %cloptr109824 = inttoptr i64 %g8E$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109824)                                       ; assert function application
  %i0ptr109825 = getelementptr inbounds i64, i64* %cloptr109824, i64 0               ; &cloptr109824[0]
  %f109827 = load i64, i64* %i0ptr109825, align 8                                    ; load; *i0ptr109825
  %fptr109826 = inttoptr i64 %f109827 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109826(i64 %g8E$_37drop, i64 %arg107451, i64 %i3g$y, i64 %a106763); tail call
  ret void

else109817:
  %cloptr109828 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109830 = getelementptr inbounds i64, i64* %cloptr109828, i64 1                ; &eptr109830[1]
  %eptr109831 = getelementptr inbounds i64, i64* %cloptr109828, i64 2                ; &eptr109831[2]
  %eptr109832 = getelementptr inbounds i64, i64* %cloptr109828, i64 3                ; &eptr109832[3]
  store i64 %a106761, i64* %eptr109830                                               ; *eptr109830 = %a106761
  store i64 %a106758, i64* %eptr109831                                               ; *eptr109831 = %a106758
  store i64 %cont106854, i64* %eptr109832                                            ; *eptr109832 = %cont106854
  %eptr109829 = getelementptr inbounds i64, i64* %cloptr109828, i64 0                ; &cloptr109828[0]
  %f109833 = ptrtoint void(i64,i64,i64)* @lam108432 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109833, i64* %eptr109829                                               ; store fptr
  %arg107459 = ptrtoint i64* %cloptr109828 to i64                                    ; closure cast; i64* -> i64
  %arg107458 = add i64 0, 0                                                          ; quoted ()
  %cloptr109834 = inttoptr i64 %arg107459 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109834)                                       ; assert function application
  %i0ptr109835 = getelementptr inbounds i64, i64* %cloptr109834, i64 0               ; &cloptr109834[0]
  %f109837 = load i64, i64* %i0ptr109835, align 8                                    ; load; *i0ptr109835
  %fptr109836 = inttoptr i64 %f109837 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109836(i64 %arg107459, i64 %arg107458, i64 %i3g$y)  ; tail call
  ret void
}


define void @lam108432(i64 %env108433, i64 %_95106862, i64 %a106764) {
  %envptr109838 = inttoptr i64 %env108433 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109839 = getelementptr inbounds i64, i64* %envptr109838, i64 3              ; &envptr109838[3]
  %cont106854 = load i64, i64* %envptr109839, align 8                                ; load; *envptr109839
  %envptr109840 = inttoptr i64 %env108433 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109841 = getelementptr inbounds i64, i64* %envptr109840, i64 2              ; &envptr109840[2]
  %a106758 = load i64, i64* %envptr109841, align 8                                   ; load; *envptr109841
  %envptr109842 = inttoptr i64 %env108433 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109843 = getelementptr inbounds i64, i64* %envptr109842, i64 1              ; &envptr109842[1]
  %a106761 = load i64, i64* %envptr109843, align 8                                   ; load; *envptr109843
  %cloptr109844 = inttoptr i64 %a106758 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109844)                                       ; assert function application
  %i0ptr109845 = getelementptr inbounds i64, i64* %cloptr109844, i64 0               ; &cloptr109844[0]
  %f109847 = load i64, i64* %i0ptr109845, align 8                                    ; load; *i0ptr109845
  %fptr109846 = inttoptr i64 %f109847 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109846(i64 %a106758, i64 %cont106854, i64 %a106761, i64 %a106764); tail call
  ret void
}


define void @lam108429(i64 %env108430, i64 %_95106862, i64 %a106764) {
  %envptr109848 = inttoptr i64 %env108430 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109849 = getelementptr inbounds i64, i64* %envptr109848, i64 3              ; &envptr109848[3]
  %cont106854 = load i64, i64* %envptr109849, align 8                                ; load; *envptr109849
  %envptr109850 = inttoptr i64 %env108430 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109851 = getelementptr inbounds i64, i64* %envptr109850, i64 2              ; &envptr109850[2]
  %a106758 = load i64, i64* %envptr109851, align 8                                   ; load; *envptr109851
  %envptr109852 = inttoptr i64 %env108430 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109853 = getelementptr inbounds i64, i64* %envptr109852, i64 1              ; &envptr109852[1]
  %a106761 = load i64, i64* %envptr109853, align 8                                   ; load; *envptr109853
  %cloptr109854 = inttoptr i64 %a106758 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109854)                                       ; assert function application
  %i0ptr109855 = getelementptr inbounds i64, i64* %cloptr109854, i64 0               ; &cloptr109854[0]
  %f109857 = load i64, i64* %i0ptr109855, align 8                                    ; load; *i0ptr109855
  %fptr109856 = inttoptr i64 %f109857 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109856(i64 %a106758, i64 %cont106854, i64 %a106761, i64 %a106764); tail call
  ret void
}


define void @lam108426(i64 %env108427, i64 %_95106860, i64 %a106761) {
  %envptr109858 = inttoptr i64 %env108427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109859 = getelementptr inbounds i64, i64* %envptr109858, i64 7              ; &envptr109858[7]
  %i3g$y = load i64, i64* %envptr109859, align 8                                     ; load; *envptr109859
  %envptr109860 = inttoptr i64 %env108427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109861 = getelementptr inbounds i64, i64* %envptr109860, i64 6              ; &envptr109860[6]
  %cont106854 = load i64, i64* %envptr109861, align 8                                ; load; *envptr109861
  %envptr109862 = inttoptr i64 %env108427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109863 = getelementptr inbounds i64, i64* %envptr109862, i64 5              ; &envptr109862[5]
  %oEQ$lx = load i64, i64* %envptr109863, align 8                                    ; load; *envptr109863
  %envptr109864 = inttoptr i64 %env108427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109865 = getelementptr inbounds i64, i64* %envptr109864, i64 4              ; &envptr109864[4]
  %fBq$ly = load i64, i64* %envptr109865, align 8                                    ; load; *envptr109865
  %envptr109866 = inttoptr i64 %env108427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109867 = getelementptr inbounds i64, i64* %envptr109866, i64 3              ; &envptr109866[3]
  %g8E$_37drop = load i64, i64* %envptr109867, align 8                               ; load; *envptr109867
  %envptr109868 = inttoptr i64 %env108427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109869 = getelementptr inbounds i64, i64* %envptr109868, i64 2              ; &envptr109868[2]
  %WBu$_37_62 = load i64, i64* %envptr109869, align 8                                ; load; *envptr109869
  %envptr109870 = inttoptr i64 %env108427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109871 = getelementptr inbounds i64, i64* %envptr109870, i64 1              ; &envptr109870[1]
  %a106758 = load i64, i64* %envptr109871, align 8                                   ; load; *envptr109871
  %cloptr109872 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr109874 = getelementptr inbounds i64, i64* %cloptr109872, i64 1                ; &eptr109874[1]
  %eptr109875 = getelementptr inbounds i64, i64* %cloptr109872, i64 2                ; &eptr109875[2]
  %eptr109876 = getelementptr inbounds i64, i64* %cloptr109872, i64 3                ; &eptr109876[3]
  %eptr109877 = getelementptr inbounds i64, i64* %cloptr109872, i64 4                ; &eptr109877[4]
  %eptr109878 = getelementptr inbounds i64, i64* %cloptr109872, i64 5                ; &eptr109878[5]
  %eptr109879 = getelementptr inbounds i64, i64* %cloptr109872, i64 6                ; &eptr109879[6]
  %eptr109880 = getelementptr inbounds i64, i64* %cloptr109872, i64 7                ; &eptr109880[7]
  store i64 %a106761, i64* %eptr109874                                               ; *eptr109874 = %a106761
  store i64 %a106758, i64* %eptr109875                                               ; *eptr109875 = %a106758
  store i64 %g8E$_37drop, i64* %eptr109876                                           ; *eptr109876 = %g8E$_37drop
  store i64 %fBq$ly, i64* %eptr109877                                                ; *eptr109877 = %fBq$ly
  store i64 %oEQ$lx, i64* %eptr109878                                                ; *eptr109878 = %oEQ$lx
  store i64 %cont106854, i64* %eptr109879                                            ; *eptr109879 = %cont106854
  store i64 %i3g$y, i64* %eptr109880                                                 ; *eptr109880 = %i3g$y
  %eptr109873 = getelementptr inbounds i64, i64* %cloptr109872, i64 0                ; &cloptr109872[0]
  %f109881 = ptrtoint void(i64,i64,i64)* @lam108424 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109881, i64* %eptr109873                                               ; store fptr
  %arg107421 = ptrtoint i64* %cloptr109872 to i64                                    ; closure cast; i64* -> i64
  %cloptr109882 = inttoptr i64 %WBu$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109882)                                       ; assert function application
  %i0ptr109883 = getelementptr inbounds i64, i64* %cloptr109882, i64 0               ; &cloptr109882[0]
  %f109885 = load i64, i64* %i0ptr109883, align 8                                    ; load; *i0ptr109883
  %fptr109884 = inttoptr i64 %f109885 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109884(i64 %WBu$_37_62, i64 %arg107421, i64 %fBq$ly, i64 %oEQ$lx); tail call
  ret void
}


define void @lam108424(i64 %env108425, i64 %_95106861, i64 %a106762) {
  %envptr109886 = inttoptr i64 %env108425 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109887 = getelementptr inbounds i64, i64* %envptr109886, i64 7              ; &envptr109886[7]
  %i3g$y = load i64, i64* %envptr109887, align 8                                     ; load; *envptr109887
  %envptr109888 = inttoptr i64 %env108425 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109889 = getelementptr inbounds i64, i64* %envptr109888, i64 6              ; &envptr109888[6]
  %cont106854 = load i64, i64* %envptr109889, align 8                                ; load; *envptr109889
  %envptr109890 = inttoptr i64 %env108425 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109891 = getelementptr inbounds i64, i64* %envptr109890, i64 5              ; &envptr109890[5]
  %oEQ$lx = load i64, i64* %envptr109891, align 8                                    ; load; *envptr109891
  %envptr109892 = inttoptr i64 %env108425 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109893 = getelementptr inbounds i64, i64* %envptr109892, i64 4              ; &envptr109892[4]
  %fBq$ly = load i64, i64* %envptr109893, align 8                                    ; load; *envptr109893
  %envptr109894 = inttoptr i64 %env108425 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109895 = getelementptr inbounds i64, i64* %envptr109894, i64 3              ; &envptr109894[3]
  %g8E$_37drop = load i64, i64* %envptr109895, align 8                               ; load; *envptr109895
  %envptr109896 = inttoptr i64 %env108425 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109897 = getelementptr inbounds i64, i64* %envptr109896, i64 2              ; &envptr109896[2]
  %a106758 = load i64, i64* %envptr109897, align 8                                   ; load; *envptr109897
  %envptr109898 = inttoptr i64 %env108425 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109899 = getelementptr inbounds i64, i64* %envptr109898, i64 1              ; &envptr109898[1]
  %a106761 = load i64, i64* %envptr109899, align 8                                   ; load; *envptr109899
  %cmp109900 = icmp eq i64 %a106762, 15                                              ; false?
  br i1 %cmp109900, label %else109902, label %then109901                             ; if

then109901:
  %a106763 = call i64 @prim__45(i64 %fBq$ly, i64 %oEQ$lx)                            ; call prim__45
  %cloptr109903 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109905 = getelementptr inbounds i64, i64* %cloptr109903, i64 1                ; &eptr109905[1]
  %eptr109906 = getelementptr inbounds i64, i64* %cloptr109903, i64 2                ; &eptr109906[2]
  %eptr109907 = getelementptr inbounds i64, i64* %cloptr109903, i64 3                ; &eptr109907[3]
  store i64 %a106761, i64* %eptr109905                                               ; *eptr109905 = %a106761
  store i64 %a106758, i64* %eptr109906                                               ; *eptr109906 = %a106758
  store i64 %cont106854, i64* %eptr109907                                            ; *eptr109907 = %cont106854
  %eptr109904 = getelementptr inbounds i64, i64* %cloptr109903, i64 0                ; &cloptr109903[0]
  %f109908 = ptrtoint void(i64,i64,i64)* @lam108419 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109908, i64* %eptr109904                                               ; store fptr
  %arg107427 = ptrtoint i64* %cloptr109903 to i64                                    ; closure cast; i64* -> i64
  %cloptr109909 = inttoptr i64 %g8E$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109909)                                       ; assert function application
  %i0ptr109910 = getelementptr inbounds i64, i64* %cloptr109909, i64 0               ; &cloptr109909[0]
  %f109912 = load i64, i64* %i0ptr109910, align 8                                    ; load; *i0ptr109910
  %fptr109911 = inttoptr i64 %f109912 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109911(i64 %g8E$_37drop, i64 %arg107427, i64 %i3g$y, i64 %a106763); tail call
  ret void

else109902:
  %cloptr109913 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109915 = getelementptr inbounds i64, i64* %cloptr109913, i64 1                ; &eptr109915[1]
  %eptr109916 = getelementptr inbounds i64, i64* %cloptr109913, i64 2                ; &eptr109916[2]
  %eptr109917 = getelementptr inbounds i64, i64* %cloptr109913, i64 3                ; &eptr109917[3]
  store i64 %a106761, i64* %eptr109915                                               ; *eptr109915 = %a106761
  store i64 %a106758, i64* %eptr109916                                               ; *eptr109916 = %a106758
  store i64 %cont106854, i64* %eptr109917                                            ; *eptr109917 = %cont106854
  %eptr109914 = getelementptr inbounds i64, i64* %cloptr109913, i64 0                ; &cloptr109913[0]
  %f109918 = ptrtoint void(i64,i64,i64)* @lam108422 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109918, i64* %eptr109914                                               ; store fptr
  %arg107435 = ptrtoint i64* %cloptr109913 to i64                                    ; closure cast; i64* -> i64
  %arg107434 = add i64 0, 0                                                          ; quoted ()
  %cloptr109919 = inttoptr i64 %arg107435 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109919)                                       ; assert function application
  %i0ptr109920 = getelementptr inbounds i64, i64* %cloptr109919, i64 0               ; &cloptr109919[0]
  %f109922 = load i64, i64* %i0ptr109920, align 8                                    ; load; *i0ptr109920
  %fptr109921 = inttoptr i64 %f109922 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109921(i64 %arg107435, i64 %arg107434, i64 %i3g$y)  ; tail call
  ret void
}


define void @lam108422(i64 %env108423, i64 %_95106862, i64 %a106764) {
  %envptr109923 = inttoptr i64 %env108423 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109924 = getelementptr inbounds i64, i64* %envptr109923, i64 3              ; &envptr109923[3]
  %cont106854 = load i64, i64* %envptr109924, align 8                                ; load; *envptr109924
  %envptr109925 = inttoptr i64 %env108423 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109926 = getelementptr inbounds i64, i64* %envptr109925, i64 2              ; &envptr109925[2]
  %a106758 = load i64, i64* %envptr109926, align 8                                   ; load; *envptr109926
  %envptr109927 = inttoptr i64 %env108423 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109928 = getelementptr inbounds i64, i64* %envptr109927, i64 1              ; &envptr109927[1]
  %a106761 = load i64, i64* %envptr109928, align 8                                   ; load; *envptr109928
  %cloptr109929 = inttoptr i64 %a106758 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109929)                                       ; assert function application
  %i0ptr109930 = getelementptr inbounds i64, i64* %cloptr109929, i64 0               ; &cloptr109929[0]
  %f109932 = load i64, i64* %i0ptr109930, align 8                                    ; load; *i0ptr109930
  %fptr109931 = inttoptr i64 %f109932 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109931(i64 %a106758, i64 %cont106854, i64 %a106761, i64 %a106764); tail call
  ret void
}


define void @lam108419(i64 %env108420, i64 %_95106862, i64 %a106764) {
  %envptr109933 = inttoptr i64 %env108420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109934 = getelementptr inbounds i64, i64* %envptr109933, i64 3              ; &envptr109933[3]
  %cont106854 = load i64, i64* %envptr109934, align 8                                ; load; *envptr109934
  %envptr109935 = inttoptr i64 %env108420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109936 = getelementptr inbounds i64, i64* %envptr109935, i64 2              ; &envptr109935[2]
  %a106758 = load i64, i64* %envptr109936, align 8                                   ; load; *envptr109936
  %envptr109937 = inttoptr i64 %env108420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109938 = getelementptr inbounds i64, i64* %envptr109937, i64 1              ; &envptr109937[1]
  %a106761 = load i64, i64* %envptr109938, align 8                                   ; load; *envptr109938
  %cloptr109939 = inttoptr i64 %a106758 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109939)                                       ; assert function application
  %i0ptr109940 = getelementptr inbounds i64, i64* %cloptr109939, i64 0               ; &cloptr109939[0]
  %f109942 = load i64, i64* %i0ptr109940, align 8                                    ; load; *i0ptr109940
  %fptr109941 = inttoptr i64 %f109942 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109941(i64 %a106758, i64 %cont106854, i64 %a106761, i64 %a106764); tail call
  ret void
}


define void @lam108416(i64 %env108417, i64 %cont106867, i64 %RME$new) {
  %envptr109943 = inttoptr i64 %env108417 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109944 = getelementptr inbounds i64, i64* %envptr109943, i64 2              ; &envptr109943[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr109944, align 8                       ; load; *envptr109944
  %envptr109945 = inttoptr i64 %env108417 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109946 = getelementptr inbounds i64, i64* %envptr109945, i64 1              ; &envptr109945[1]
  %H2n$_37common_45tail = load i64, i64* %envptr109946, align 8                      ; load; *envptr109946
  %arg107464 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106765 = call i64 @prim_vector_45ref(i64 %R5Y$_37wind_45stack, i64 %arg107464)   ; call prim_vector_45ref
  %cloptr109947 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr109949 = getelementptr inbounds i64, i64* %cloptr109947, i64 1                ; &eptr109949[1]
  %eptr109950 = getelementptr inbounds i64, i64* %cloptr109947, i64 2                ; &eptr109950[2]
  %eptr109951 = getelementptr inbounds i64, i64* %cloptr109947, i64 3                ; &eptr109951[3]
  store i64 %RME$new, i64* %eptr109949                                               ; *eptr109949 = %RME$new
  store i64 %R5Y$_37wind_45stack, i64* %eptr109950                                   ; *eptr109950 = %R5Y$_37wind_45stack
  store i64 %cont106867, i64* %eptr109951                                            ; *eptr109951 = %cont106867
  %eptr109948 = getelementptr inbounds i64, i64* %cloptr109947, i64 0                ; &cloptr109947[0]
  %f109952 = ptrtoint void(i64,i64,i64)* @lam108413 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109952, i64* %eptr109948                                               ; store fptr
  %arg107468 = ptrtoint i64* %cloptr109947 to i64                                    ; closure cast; i64* -> i64
  %cloptr109953 = inttoptr i64 %H2n$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109953)                                       ; assert function application
  %i0ptr109954 = getelementptr inbounds i64, i64* %cloptr109953, i64 0               ; &cloptr109953[0]
  %f109956 = load i64, i64* %i0ptr109954, align 8                                    ; load; *i0ptr109954
  %fptr109955 = inttoptr i64 %f109956 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109955(i64 %H2n$_37common_45tail, i64 %arg107468, i64 %RME$new, i64 %a106765); tail call
  ret void
}


define void @lam108413(i64 %env108414, i64 %_95106868, i64 %k4Z$tail) {
  %envptr109957 = inttoptr i64 %env108414 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109958 = getelementptr inbounds i64, i64* %envptr109957, i64 3              ; &envptr109957[3]
  %cont106867 = load i64, i64* %envptr109958, align 8                                ; load; *envptr109958
  %envptr109959 = inttoptr i64 %env108414 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109960 = getelementptr inbounds i64, i64* %envptr109959, i64 2              ; &envptr109959[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr109960, align 8                       ; load; *envptr109960
  %envptr109961 = inttoptr i64 %env108414 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109962 = getelementptr inbounds i64, i64* %envptr109961, i64 1              ; &envptr109961[1]
  %RME$new = load i64, i64* %envptr109962, align 8                                   ; load; *envptr109962
  %cloptr109963 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr109964 = getelementptr inbounds i64, i64* %cloptr109963, i64 0                ; &cloptr109963[0]
  %f109965 = ptrtoint void(i64,i64)* @lam108411 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f109965, i64* %eptr109964                                               ; store fptr
  %arg107471 = ptrtoint i64* %cloptr109963 to i64                                    ; closure cast; i64* -> i64
  %cloptr109966 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr109968 = getelementptr inbounds i64, i64* %cloptr109966, i64 1                ; &eptr109968[1]
  %eptr109969 = getelementptr inbounds i64, i64* %cloptr109966, i64 2                ; &eptr109969[2]
  %eptr109970 = getelementptr inbounds i64, i64* %cloptr109966, i64 3                ; &eptr109970[3]
  %eptr109971 = getelementptr inbounds i64, i64* %cloptr109966, i64 4                ; &eptr109971[4]
  store i64 %RME$new, i64* %eptr109968                                               ; *eptr109968 = %RME$new
  store i64 %R5Y$_37wind_45stack, i64* %eptr109969                                   ; *eptr109969 = %R5Y$_37wind_45stack
  store i64 %cont106867, i64* %eptr109970                                            ; *eptr109970 = %cont106867
  store i64 %k4Z$tail, i64* %eptr109971                                              ; *eptr109971 = %k4Z$tail
  %eptr109967 = getelementptr inbounds i64, i64* %cloptr109966, i64 0                ; &cloptr109966[0]
  %f109972 = ptrtoint void(i64,i64,i64)* @lam108408 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109972, i64* %eptr109967                                               ; store fptr
  %arg107470 = ptrtoint i64* %cloptr109966 to i64                                    ; closure cast; i64* -> i64
  %cloptr109973 = inttoptr i64 %arg107471 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109973)                                       ; assert function application
  %i0ptr109974 = getelementptr inbounds i64, i64* %cloptr109973, i64 0               ; &cloptr109973[0]
  %f109976 = load i64, i64* %i0ptr109974, align 8                                    ; load; *i0ptr109974
  %fptr109975 = inttoptr i64 %f109976 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109975(i64 %arg107471, i64 %arg107470)              ; tail call
  ret void
}


define void @lam108411(i64 %env108412, i64 %Wcl$lst106889) {
  %cont106888 = call i64 @prim_car(i64 %Wcl$lst106889)                               ; call prim_car
  %Wcl$lst = call i64 @prim_cdr(i64 %Wcl$lst106889)                                  ; call prim_cdr
  %arg107475 = add i64 0, 0                                                          ; quoted ()
  %cloptr109977 = inttoptr i64 %cont106888 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109977)                                       ; assert function application
  %i0ptr109978 = getelementptr inbounds i64, i64* %cloptr109977, i64 0               ; &cloptr109977[0]
  %f109980 = load i64, i64* %i0ptr109978, align 8                                    ; load; *i0ptr109978
  %fptr109979 = inttoptr i64 %f109980 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109979(i64 %cont106888, i64 %arg107475, i64 %Wcl$lst); tail call
  ret void
}


define void @lam108408(i64 %env108409, i64 %_95106886, i64 %a106766) {
  %envptr109981 = inttoptr i64 %env108409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109982 = getelementptr inbounds i64, i64* %envptr109981, i64 4              ; &envptr109981[4]
  %k4Z$tail = load i64, i64* %envptr109982, align 8                                  ; load; *envptr109982
  %envptr109983 = inttoptr i64 %env108409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109984 = getelementptr inbounds i64, i64* %envptr109983, i64 3              ; &envptr109983[3]
  %cont106867 = load i64, i64* %envptr109984, align 8                                ; load; *envptr109984
  %envptr109985 = inttoptr i64 %env108409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109986 = getelementptr inbounds i64, i64* %envptr109985, i64 2              ; &envptr109985[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr109986, align 8                       ; load; *envptr109986
  %envptr109987 = inttoptr i64 %env108409 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr109988 = getelementptr inbounds i64, i64* %envptr109987, i64 1              ; &envptr109987[1]
  %RME$new = load i64, i64* %envptr109988, align 8                                   ; load; *envptr109988
  %arg107478 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim106887 = call i64 @prim_make_45vector(i64 %arg107478, i64 %a106766)        ; call prim_make_45vector
  %cloptr109989 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr109991 = getelementptr inbounds i64, i64* %cloptr109989, i64 1                ; &eptr109991[1]
  %eptr109992 = getelementptr inbounds i64, i64* %cloptr109989, i64 2                ; &eptr109992[2]
  %eptr109993 = getelementptr inbounds i64, i64* %cloptr109989, i64 3                ; &eptr109993[3]
  %eptr109994 = getelementptr inbounds i64, i64* %cloptr109989, i64 4                ; &eptr109994[4]
  store i64 %RME$new, i64* %eptr109991                                               ; *eptr109991 = %RME$new
  store i64 %R5Y$_37wind_45stack, i64* %eptr109992                                   ; *eptr109992 = %R5Y$_37wind_45stack
  store i64 %cont106867, i64* %eptr109993                                            ; *eptr109993 = %cont106867
  store i64 %k4Z$tail, i64* %eptr109994                                              ; *eptr109994 = %k4Z$tail
  %eptr109990 = getelementptr inbounds i64, i64* %cloptr109989, i64 0                ; &cloptr109989[0]
  %f109995 = ptrtoint void(i64,i64,i64)* @lam108405 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f109995, i64* %eptr109990                                               ; store fptr
  %arg107481 = ptrtoint i64* %cloptr109989 to i64                                    ; closure cast; i64* -> i64
  %arg107480 = add i64 0, 0                                                          ; quoted ()
  %cloptr109996 = inttoptr i64 %arg107481 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr109996)                                       ; assert function application
  %i0ptr109997 = getelementptr inbounds i64, i64* %cloptr109996, i64 0               ; &cloptr109996[0]
  %f109999 = load i64, i64* %i0ptr109997, align 8                                    ; load; *i0ptr109997
  %fptr109998 = inttoptr i64 %f109999 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr109998(i64 %arg107481, i64 %arg107480, i64 %retprim106887); tail call
  ret void
}


define void @lam108405(i64 %env108406, i64 %_95106880, i64 %coh$f) {
  %envptr110000 = inttoptr i64 %env108406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110001 = getelementptr inbounds i64, i64* %envptr110000, i64 4              ; &envptr110000[4]
  %k4Z$tail = load i64, i64* %envptr110001, align 8                                  ; load; *envptr110001
  %envptr110002 = inttoptr i64 %env108406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110003 = getelementptr inbounds i64, i64* %envptr110002, i64 3              ; &envptr110002[3]
  %cont106867 = load i64, i64* %envptr110003, align 8                                ; load; *envptr110003
  %envptr110004 = inttoptr i64 %env108406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110005 = getelementptr inbounds i64, i64* %envptr110004, i64 2              ; &envptr110004[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110005, align 8                       ; load; *envptr110005
  %envptr110006 = inttoptr i64 %env108406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110007 = getelementptr inbounds i64, i64* %envptr110006, i64 1              ; &envptr110006[1]
  %RME$new = load i64, i64* %envptr110007, align 8                                   ; load; *envptr110007
  %arg107483 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr110008 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110010 = getelementptr inbounds i64, i64* %cloptr110008, i64 1                ; &eptr110010[1]
  %eptr110011 = getelementptr inbounds i64, i64* %cloptr110008, i64 2                ; &eptr110011[2]
  %eptr110012 = getelementptr inbounds i64, i64* %cloptr110008, i64 3                ; &eptr110012[3]
  store i64 %coh$f, i64* %eptr110010                                                 ; *eptr110010 = %coh$f
  store i64 %R5Y$_37wind_45stack, i64* %eptr110011                                   ; *eptr110011 = %R5Y$_37wind_45stack
  store i64 %k4Z$tail, i64* %eptr110012                                              ; *eptr110012 = %k4Z$tail
  %eptr110009 = getelementptr inbounds i64, i64* %cloptr110008, i64 0                ; &cloptr110008[0]
  %f110013 = ptrtoint void(i64,i64,i64)* @lam108402 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110013, i64* %eptr110009                                               ; store fptr
  %arg107482 = ptrtoint i64* %cloptr110008 to i64                                    ; closure cast; i64* -> i64
  %Gg8$_95106659 = call i64 @prim_vector_45set_33(i64 %coh$f, i64 %arg107483, i64 %arg107482); call prim_vector_45set_33
  %arg107508 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106774 = call i64 @prim_vector_45ref(i64 %coh$f, i64 %arg107508)                 ; call prim_vector_45ref
  %arg107510 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106775 = call i64 @prim_vector_45ref(i64 %R5Y$_37wind_45stack, i64 %arg107510)   ; call prim_vector_45ref
  %cloptr110014 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110016 = getelementptr inbounds i64, i64* %cloptr110014, i64 1                ; &eptr110016[1]
  %eptr110017 = getelementptr inbounds i64, i64* %cloptr110014, i64 2                ; &eptr110017[2]
  %eptr110018 = getelementptr inbounds i64, i64* %cloptr110014, i64 3                ; &eptr110018[3]
  %eptr110019 = getelementptr inbounds i64, i64* %cloptr110014, i64 4                ; &eptr110019[4]
  store i64 %RME$new, i64* %eptr110016                                               ; *eptr110016 = %RME$new
  store i64 %R5Y$_37wind_45stack, i64* %eptr110017                                   ; *eptr110017 = %R5Y$_37wind_45stack
  store i64 %cont106867, i64* %eptr110018                                            ; *eptr110018 = %cont106867
  store i64 %k4Z$tail, i64* %eptr110019                                              ; *eptr110019 = %k4Z$tail
  %eptr110015 = getelementptr inbounds i64, i64* %cloptr110014, i64 0                ; &cloptr110014[0]
  %f110020 = ptrtoint void(i64,i64,i64)* @lam108390 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110020, i64* %eptr110015                                               ; store fptr
  %arg107513 = ptrtoint i64* %cloptr110014 to i64                                    ; closure cast; i64* -> i64
  %cloptr110021 = inttoptr i64 %a106774 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110021)                                       ; assert function application
  %i0ptr110022 = getelementptr inbounds i64, i64* %cloptr110021, i64 0               ; &cloptr110021[0]
  %f110024 = load i64, i64* %i0ptr110022, align 8                                    ; load; *i0ptr110022
  %fptr110023 = inttoptr i64 %f110024 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110023(i64 %a106774, i64 %arg107513, i64 %a106775)  ; tail call
  ret void
}


define void @lam108402(i64 %env108403, i64 %cont106881, i64 %TY7$l) {
  %envptr110025 = inttoptr i64 %env108403 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110026 = getelementptr inbounds i64, i64* %envptr110025, i64 3              ; &envptr110025[3]
  %k4Z$tail = load i64, i64* %envptr110026, align 8                                  ; load; *envptr110026
  %envptr110027 = inttoptr i64 %env108403 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110028 = getelementptr inbounds i64, i64* %envptr110027, i64 2              ; &envptr110027[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110028, align 8                       ; load; *envptr110028
  %envptr110029 = inttoptr i64 %env108403 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110030 = getelementptr inbounds i64, i64* %envptr110029, i64 1              ; &envptr110029[1]
  %coh$f = load i64, i64* %envptr110030, align 8                                     ; load; *envptr110030
  %a106767 = call i64 @prim_eq_63(i64 %TY7$l, i64 %k4Z$tail)                         ; call prim_eq_63
  %a106768 = call i64 @prim_not(i64 %a106767)                                        ; call prim_not
  %cmp110031 = icmp eq i64 %a106768, 15                                              ; false?
  br i1 %cmp110031, label %else110033, label %then110032                             ; if

then110032:
  %a106769 = call i64 @prim_cdr(i64 %TY7$l)                                          ; call prim_cdr
  %arg107490 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106884 = call i64 @prim_vector_45set_33(i64 %R5Y$_37wind_45stack, i64 %arg107490, i64 %a106769); call prim_vector_45set_33
  %cloptr110034 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110036 = getelementptr inbounds i64, i64* %cloptr110034, i64 1                ; &eptr110036[1]
  %eptr110037 = getelementptr inbounds i64, i64* %cloptr110034, i64 2                ; &eptr110037[2]
  %eptr110038 = getelementptr inbounds i64, i64* %cloptr110034, i64 3                ; &eptr110038[3]
  store i64 %coh$f, i64* %eptr110036                                                 ; *eptr110036 = %coh$f
  store i64 %cont106881, i64* %eptr110037                                            ; *eptr110037 = %cont106881
  store i64 %TY7$l, i64* %eptr110038                                                 ; *eptr110038 = %TY7$l
  %eptr110035 = getelementptr inbounds i64, i64* %cloptr110034, i64 0                ; &cloptr110034[0]
  %f110039 = ptrtoint void(i64,i64,i64)* @lam108398 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110039, i64* %eptr110035                                               ; store fptr
  %arg107494 = ptrtoint i64* %cloptr110034 to i64                                    ; closure cast; i64* -> i64
  %arg107493 = add i64 0, 0                                                          ; quoted ()
  %cloptr110040 = inttoptr i64 %arg107494 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110040)                                       ; assert function application
  %i0ptr110041 = getelementptr inbounds i64, i64* %cloptr110040, i64 0               ; &cloptr110040[0]
  %f110043 = load i64, i64* %i0ptr110041, align 8                                    ; load; *i0ptr110041
  %fptr110042 = inttoptr i64 %f110043 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110042(i64 %arg107494, i64 %arg107493, i64 %retprim106884); tail call
  ret void

else110033:
  %retprim106885 = call i64 @prim_void()                                             ; call prim_void
  %arg107506 = add i64 0, 0                                                          ; quoted ()
  %cloptr110044 = inttoptr i64 %cont106881 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110044)                                       ; assert function application
  %i0ptr110045 = getelementptr inbounds i64, i64* %cloptr110044, i64 0               ; &cloptr110044[0]
  %f110047 = load i64, i64* %i0ptr110045, align 8                                    ; load; *i0ptr110045
  %fptr110046 = inttoptr i64 %f110047 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110046(i64 %cont106881, i64 %arg107506, i64 %retprim106885); tail call
  ret void
}


define void @lam108398(i64 %env108399, i64 %_95106882, i64 %zHe$_95106660) {
  %envptr110048 = inttoptr i64 %env108399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110049 = getelementptr inbounds i64, i64* %envptr110048, i64 3              ; &envptr110048[3]
  %TY7$l = load i64, i64* %envptr110049, align 8                                     ; load; *envptr110049
  %envptr110050 = inttoptr i64 %env108399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110051 = getelementptr inbounds i64, i64* %envptr110050, i64 2              ; &envptr110050[2]
  %cont106881 = load i64, i64* %envptr110051, align 8                                ; load; *envptr110051
  %envptr110052 = inttoptr i64 %env108399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110053 = getelementptr inbounds i64, i64* %envptr110052, i64 1              ; &envptr110052[1]
  %coh$f = load i64, i64* %envptr110053, align 8                                     ; load; *envptr110053
  %a106770 = call i64 @prim_car(i64 %TY7$l)                                          ; call prim_car
  %a106771 = call i64 @prim_cdr(i64 %a106770)                                        ; call prim_cdr
  %cloptr110054 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110056 = getelementptr inbounds i64, i64* %cloptr110054, i64 1                ; &eptr110056[1]
  %eptr110057 = getelementptr inbounds i64, i64* %cloptr110054, i64 2                ; &eptr110057[2]
  %eptr110058 = getelementptr inbounds i64, i64* %cloptr110054, i64 3                ; &eptr110058[3]
  store i64 %coh$f, i64* %eptr110056                                                 ; *eptr110056 = %coh$f
  store i64 %cont106881, i64* %eptr110057                                            ; *eptr110057 = %cont106881
  store i64 %TY7$l, i64* %eptr110058                                                 ; *eptr110058 = %TY7$l
  %eptr110055 = getelementptr inbounds i64, i64* %cloptr110054, i64 0                ; &cloptr110054[0]
  %f110059 = ptrtoint void(i64,i64,i64)* @lam108396 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110059, i64* %eptr110055                                               ; store fptr
  %arg107497 = ptrtoint i64* %cloptr110054 to i64                                    ; closure cast; i64* -> i64
  %cloptr110060 = inttoptr i64 %a106771 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110060)                                       ; assert function application
  %i0ptr110061 = getelementptr inbounds i64, i64* %cloptr110060, i64 0               ; &cloptr110060[0]
  %f110063 = load i64, i64* %i0ptr110061, align 8                                    ; load; *i0ptr110061
  %fptr110062 = inttoptr i64 %f110063 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110062(i64 %a106771, i64 %arg107497)                ; tail call
  ret void
}


define void @lam108396(i64 %env108397, i64 %_95106883, i64 %xSf$_95106661) {
  %envptr110064 = inttoptr i64 %env108397 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110065 = getelementptr inbounds i64, i64* %envptr110064, i64 3              ; &envptr110064[3]
  %TY7$l = load i64, i64* %envptr110065, align 8                                     ; load; *envptr110065
  %envptr110066 = inttoptr i64 %env108397 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110067 = getelementptr inbounds i64, i64* %envptr110066, i64 2              ; &envptr110066[2]
  %cont106881 = load i64, i64* %envptr110067, align 8                                ; load; *envptr110067
  %envptr110068 = inttoptr i64 %env108397 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110069 = getelementptr inbounds i64, i64* %envptr110068, i64 1              ; &envptr110068[1]
  %coh$f = load i64, i64* %envptr110069, align 8                                     ; load; *envptr110069
  %arg107499 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106772 = call i64 @prim_vector_45ref(i64 %coh$f, i64 %arg107499)                 ; call prim_vector_45ref
  %a106773 = call i64 @prim_cdr(i64 %TY7$l)                                          ; call prim_cdr
  %cloptr110070 = inttoptr i64 %a106772 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110070)                                       ; assert function application
  %i0ptr110071 = getelementptr inbounds i64, i64* %cloptr110070, i64 0               ; &cloptr110070[0]
  %f110073 = load i64, i64* %i0ptr110071, align 8                                    ; load; *i0ptr110071
  %fptr110072 = inttoptr i64 %f110073 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110072(i64 %a106772, i64 %cont106881, i64 %a106773) ; tail call
  ret void
}


define void @lam108390(i64 %env108391, i64 %_95106869, i64 %gmQ$_95106658) {
  %envptr110074 = inttoptr i64 %env108391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110075 = getelementptr inbounds i64, i64* %envptr110074, i64 4              ; &envptr110074[4]
  %k4Z$tail = load i64, i64* %envptr110075, align 8                                  ; load; *envptr110075
  %envptr110076 = inttoptr i64 %env108391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110077 = getelementptr inbounds i64, i64* %envptr110076, i64 3              ; &envptr110076[3]
  %cont106867 = load i64, i64* %envptr110077, align 8                                ; load; *envptr110077
  %envptr110078 = inttoptr i64 %env108391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110079 = getelementptr inbounds i64, i64* %envptr110078, i64 2              ; &envptr110078[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110079, align 8                       ; load; *envptr110079
  %envptr110080 = inttoptr i64 %env108391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110081 = getelementptr inbounds i64, i64* %envptr110080, i64 1              ; &envptr110080[1]
  %RME$new = load i64, i64* %envptr110081, align 8                                   ; load; *envptr110081
  %cloptr110082 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110083 = getelementptr inbounds i64, i64* %cloptr110082, i64 0                ; &cloptr110082[0]
  %f110084 = ptrtoint void(i64,i64)* @lam108388 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110084, i64* %eptr110083                                               ; store fptr
  %arg107516 = ptrtoint i64* %cloptr110082 to i64                                    ; closure cast; i64* -> i64
  %cloptr110085 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110087 = getelementptr inbounds i64, i64* %cloptr110085, i64 1                ; &eptr110087[1]
  %eptr110088 = getelementptr inbounds i64, i64* %cloptr110085, i64 2                ; &eptr110088[2]
  %eptr110089 = getelementptr inbounds i64, i64* %cloptr110085, i64 3                ; &eptr110089[3]
  %eptr110090 = getelementptr inbounds i64, i64* %cloptr110085, i64 4                ; &eptr110090[4]
  store i64 %RME$new, i64* %eptr110087                                               ; *eptr110087 = %RME$new
  store i64 %R5Y$_37wind_45stack, i64* %eptr110088                                   ; *eptr110088 = %R5Y$_37wind_45stack
  store i64 %cont106867, i64* %eptr110089                                            ; *eptr110089 = %cont106867
  store i64 %k4Z$tail, i64* %eptr110090                                              ; *eptr110090 = %k4Z$tail
  %eptr110086 = getelementptr inbounds i64, i64* %cloptr110085, i64 0                ; &cloptr110085[0]
  %f110091 = ptrtoint void(i64,i64,i64)* @lam108385 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110091, i64* %eptr110086                                               ; store fptr
  %arg107515 = ptrtoint i64* %cloptr110085 to i64                                    ; closure cast; i64* -> i64
  %cloptr110092 = inttoptr i64 %arg107516 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110092)                                       ; assert function application
  %i0ptr110093 = getelementptr inbounds i64, i64* %cloptr110092, i64 0               ; &cloptr110092[0]
  %f110095 = load i64, i64* %i0ptr110093, align 8                                    ; load; *i0ptr110093
  %fptr110094 = inttoptr i64 %f110095 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110094(i64 %arg107516, i64 %arg107515)              ; tail call
  ret void
}


define void @lam108388(i64 %env108389, i64 %vif$lst106879) {
  %cont106878 = call i64 @prim_car(i64 %vif$lst106879)                               ; call prim_car
  %vif$lst = call i64 @prim_cdr(i64 %vif$lst106879)                                  ; call prim_cdr
  %arg107520 = add i64 0, 0                                                          ; quoted ()
  %cloptr110096 = inttoptr i64 %cont106878 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110096)                                       ; assert function application
  %i0ptr110097 = getelementptr inbounds i64, i64* %cloptr110096, i64 0               ; &cloptr110096[0]
  %f110099 = load i64, i64* %i0ptr110097, align 8                                    ; load; *i0ptr110097
  %fptr110098 = inttoptr i64 %f110099 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110098(i64 %cont106878, i64 %arg107520, i64 %vif$lst); tail call
  ret void
}


define void @lam108385(i64 %env108386, i64 %_95106876, i64 %a106776) {
  %envptr110100 = inttoptr i64 %env108386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110101 = getelementptr inbounds i64, i64* %envptr110100, i64 4              ; &envptr110100[4]
  %k4Z$tail = load i64, i64* %envptr110101, align 8                                  ; load; *envptr110101
  %envptr110102 = inttoptr i64 %env108386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110103 = getelementptr inbounds i64, i64* %envptr110102, i64 3              ; &envptr110102[3]
  %cont106867 = load i64, i64* %envptr110103, align 8                                ; load; *envptr110103
  %envptr110104 = inttoptr i64 %env108386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110105 = getelementptr inbounds i64, i64* %envptr110104, i64 2              ; &envptr110104[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110105, align 8                       ; load; *envptr110105
  %envptr110106 = inttoptr i64 %env108386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110107 = getelementptr inbounds i64, i64* %envptr110106, i64 1              ; &envptr110106[1]
  %RME$new = load i64, i64* %envptr110107, align 8                                   ; load; *envptr110107
  %arg107523 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim106877 = call i64 @prim_make_45vector(i64 %arg107523, i64 %a106776)        ; call prim_make_45vector
  %cloptr110108 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110110 = getelementptr inbounds i64, i64* %cloptr110108, i64 1                ; &eptr110110[1]
  %eptr110111 = getelementptr inbounds i64, i64* %cloptr110108, i64 2                ; &eptr110111[2]
  %eptr110112 = getelementptr inbounds i64, i64* %cloptr110108, i64 3                ; &eptr110112[3]
  %eptr110113 = getelementptr inbounds i64, i64* %cloptr110108, i64 4                ; &eptr110113[4]
  store i64 %RME$new, i64* %eptr110110                                               ; *eptr110110 = %RME$new
  store i64 %R5Y$_37wind_45stack, i64* %eptr110111                                   ; *eptr110111 = %R5Y$_37wind_45stack
  store i64 %cont106867, i64* %eptr110112                                            ; *eptr110112 = %cont106867
  store i64 %k4Z$tail, i64* %eptr110113                                              ; *eptr110113 = %k4Z$tail
  %eptr110109 = getelementptr inbounds i64, i64* %cloptr110108, i64 0                ; &cloptr110108[0]
  %f110114 = ptrtoint void(i64,i64,i64)* @lam108382 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110114, i64* %eptr110109                                               ; store fptr
  %arg107526 = ptrtoint i64* %cloptr110108 to i64                                    ; closure cast; i64* -> i64
  %arg107525 = add i64 0, 0                                                          ; quoted ()
  %cloptr110115 = inttoptr i64 %arg107526 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110115)                                       ; assert function application
  %i0ptr110116 = getelementptr inbounds i64, i64* %cloptr110115, i64 0               ; &cloptr110115[0]
  %f110118 = load i64, i64* %i0ptr110116, align 8                                    ; load; *i0ptr110116
  %fptr110117 = inttoptr i64 %f110118 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110117(i64 %arg107526, i64 %arg107525, i64 %retprim106877); tail call
  ret void
}


define void @lam108382(i64 %env108383, i64 %_95106870, i64 %Tws$f) {
  %envptr110119 = inttoptr i64 %env108383 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110120 = getelementptr inbounds i64, i64* %envptr110119, i64 4              ; &envptr110119[4]
  %k4Z$tail = load i64, i64* %envptr110120, align 8                                  ; load; *envptr110120
  %envptr110121 = inttoptr i64 %env108383 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110122 = getelementptr inbounds i64, i64* %envptr110121, i64 3              ; &envptr110121[3]
  %cont106867 = load i64, i64* %envptr110122, align 8                                ; load; *envptr110122
  %envptr110123 = inttoptr i64 %env108383 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110124 = getelementptr inbounds i64, i64* %envptr110123, i64 2              ; &envptr110123[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110124, align 8                       ; load; *envptr110124
  %envptr110125 = inttoptr i64 %env108383 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110126 = getelementptr inbounds i64, i64* %envptr110125, i64 1              ; &envptr110125[1]
  %RME$new = load i64, i64* %envptr110126, align 8                                   ; load; *envptr110126
  %arg107528 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr110127 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110129 = getelementptr inbounds i64, i64* %cloptr110127, i64 1                ; &eptr110129[1]
  %eptr110130 = getelementptr inbounds i64, i64* %cloptr110127, i64 2                ; &eptr110130[2]
  %eptr110131 = getelementptr inbounds i64, i64* %cloptr110127, i64 3                ; &eptr110131[3]
  store i64 %R5Y$_37wind_45stack, i64* %eptr110129                                   ; *eptr110129 = %R5Y$_37wind_45stack
  store i64 %Tws$f, i64* %eptr110130                                                 ; *eptr110130 = %Tws$f
  store i64 %k4Z$tail, i64* %eptr110131                                              ; *eptr110131 = %k4Z$tail
  %eptr110128 = getelementptr inbounds i64, i64* %cloptr110127, i64 0                ; &cloptr110127[0]
  %f110132 = ptrtoint void(i64,i64,i64)* @lam108379 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110132, i64* %eptr110128                                               ; store fptr
  %arg107527 = ptrtoint i64* %cloptr110127 to i64                                    ; closure cast; i64* -> i64
  %Qri$_95106662 = call i64 @prim_vector_45set_33(i64 %Tws$f, i64 %arg107528, i64 %arg107527); call prim_vector_45set_33
  %arg107552 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106783 = call i64 @prim_vector_45ref(i64 %Tws$f, i64 %arg107552)                 ; call prim_vector_45ref
  %cloptr110133 = inttoptr i64 %a106783 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110133)                                       ; assert function application
  %i0ptr110134 = getelementptr inbounds i64, i64* %cloptr110133, i64 0               ; &cloptr110133[0]
  %f110136 = load i64, i64* %i0ptr110134, align 8                                    ; load; *i0ptr110134
  %fptr110135 = inttoptr i64 %f110136 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110135(i64 %a106783, i64 %cont106867, i64 %RME$new) ; tail call
  ret void
}


define void @lam108379(i64 %env108380, i64 %cont106871, i64 %km8$l) {
  %envptr110137 = inttoptr i64 %env108380 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110138 = getelementptr inbounds i64, i64* %envptr110137, i64 3              ; &envptr110137[3]
  %k4Z$tail = load i64, i64* %envptr110138, align 8                                  ; load; *envptr110138
  %envptr110139 = inttoptr i64 %env108380 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110140 = getelementptr inbounds i64, i64* %envptr110139, i64 2              ; &envptr110139[2]
  %Tws$f = load i64, i64* %envptr110140, align 8                                     ; load; *envptr110140
  %envptr110141 = inttoptr i64 %env108380 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110142 = getelementptr inbounds i64, i64* %envptr110141, i64 1              ; &envptr110141[1]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110142, align 8                       ; load; *envptr110142
  %a106777 = call i64 @prim_eq_63(i64 %km8$l, i64 %k4Z$tail)                         ; call prim_eq_63
  %a106778 = call i64 @prim_not(i64 %a106777)                                        ; call prim_not
  %cmp110143 = icmp eq i64 %a106778, 15                                              ; false?
  br i1 %cmp110143, label %else110145, label %then110144                             ; if

then110144:
  %arg107533 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106779 = call i64 @prim_vector_45ref(i64 %Tws$f, i64 %arg107533)                 ; call prim_vector_45ref
  %a106780 = call i64 @prim_cdr(i64 %km8$l)                                          ; call prim_cdr
  %cloptr110146 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110148 = getelementptr inbounds i64, i64* %cloptr110146, i64 1                ; &eptr110148[1]
  %eptr110149 = getelementptr inbounds i64, i64* %cloptr110146, i64 2                ; &eptr110149[2]
  %eptr110150 = getelementptr inbounds i64, i64* %cloptr110146, i64 3                ; &eptr110150[3]
  store i64 %cont106871, i64* %eptr110148                                            ; *eptr110148 = %cont106871
  store i64 %R5Y$_37wind_45stack, i64* %eptr110149                                   ; *eptr110149 = %R5Y$_37wind_45stack
  store i64 %km8$l, i64* %eptr110150                                                 ; *eptr110150 = %km8$l
  %eptr110147 = getelementptr inbounds i64, i64* %cloptr110146, i64 0                ; &cloptr110146[0]
  %f110151 = ptrtoint void(i64,i64,i64)* @lam108375 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110151, i64* %eptr110147                                               ; store fptr
  %arg107537 = ptrtoint i64* %cloptr110146 to i64                                    ; closure cast; i64* -> i64
  %cloptr110152 = inttoptr i64 %a106779 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110152)                                       ; assert function application
  %i0ptr110153 = getelementptr inbounds i64, i64* %cloptr110152, i64 0               ; &cloptr110152[0]
  %f110155 = load i64, i64* %i0ptr110153, align 8                                    ; load; *i0ptr110153
  %fptr110154 = inttoptr i64 %f110155 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110154(i64 %a106779, i64 %arg107537, i64 %a106780)  ; tail call
  ret void

else110145:
  %retprim106875 = call i64 @prim_void()                                             ; call prim_void
  %arg107550 = add i64 0, 0                                                          ; quoted ()
  %cloptr110156 = inttoptr i64 %cont106871 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110156)                                       ; assert function application
  %i0ptr110157 = getelementptr inbounds i64, i64* %cloptr110156, i64 0               ; &cloptr110156[0]
  %f110159 = load i64, i64* %i0ptr110157, align 8                                    ; load; *i0ptr110157
  %fptr110158 = inttoptr i64 %f110159 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110158(i64 %cont106871, i64 %arg107550, i64 %retprim106875); tail call
  ret void
}


define void @lam108375(i64 %env108376, i64 %_95106872, i64 %PXx$_95106663) {
  %envptr110160 = inttoptr i64 %env108376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110161 = getelementptr inbounds i64, i64* %envptr110160, i64 3              ; &envptr110160[3]
  %km8$l = load i64, i64* %envptr110161, align 8                                     ; load; *envptr110161
  %envptr110162 = inttoptr i64 %env108376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110163 = getelementptr inbounds i64, i64* %envptr110162, i64 2              ; &envptr110162[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110163, align 8                       ; load; *envptr110163
  %envptr110164 = inttoptr i64 %env108376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110165 = getelementptr inbounds i64, i64* %envptr110164, i64 1              ; &envptr110164[1]
  %cont106871 = load i64, i64* %envptr110165, align 8                                ; load; *envptr110165
  %a106781 = call i64 @prim_car(i64 %km8$l)                                          ; call prim_car
  %a106782 = call i64 @prim_car(i64 %a106781)                                        ; call prim_car
  %cloptr110166 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110168 = getelementptr inbounds i64, i64* %cloptr110166, i64 1                ; &eptr110168[1]
  %eptr110169 = getelementptr inbounds i64, i64* %cloptr110166, i64 2                ; &eptr110169[2]
  %eptr110170 = getelementptr inbounds i64, i64* %cloptr110166, i64 3                ; &eptr110170[3]
  store i64 %cont106871, i64* %eptr110168                                            ; *eptr110168 = %cont106871
  store i64 %R5Y$_37wind_45stack, i64* %eptr110169                                   ; *eptr110169 = %R5Y$_37wind_45stack
  store i64 %km8$l, i64* %eptr110170                                                 ; *eptr110170 = %km8$l
  %eptr110167 = getelementptr inbounds i64, i64* %cloptr110166, i64 0                ; &cloptr110166[0]
  %f110171 = ptrtoint void(i64,i64,i64)* @lam108373 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110171, i64* %eptr110167                                               ; store fptr
  %arg107541 = ptrtoint i64* %cloptr110166 to i64                                    ; closure cast; i64* -> i64
  %cloptr110172 = inttoptr i64 %a106782 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110172)                                       ; assert function application
  %i0ptr110173 = getelementptr inbounds i64, i64* %cloptr110172, i64 0               ; &cloptr110172[0]
  %f110175 = load i64, i64* %i0ptr110173, align 8                                    ; load; *i0ptr110173
  %fptr110174 = inttoptr i64 %f110175 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110174(i64 %a106782, i64 %arg107541)                ; tail call
  ret void
}


define void @lam108373(i64 %env108374, i64 %_95106873, i64 %MBW$_95106664) {
  %envptr110176 = inttoptr i64 %env108374 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110177 = getelementptr inbounds i64, i64* %envptr110176, i64 3              ; &envptr110176[3]
  %km8$l = load i64, i64* %envptr110177, align 8                                     ; load; *envptr110177
  %envptr110178 = inttoptr i64 %env108374 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110179 = getelementptr inbounds i64, i64* %envptr110178, i64 2              ; &envptr110178[2]
  %R5Y$_37wind_45stack = load i64, i64* %envptr110179, align 8                       ; load; *envptr110179
  %envptr110180 = inttoptr i64 %env108374 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110181 = getelementptr inbounds i64, i64* %envptr110180, i64 1              ; &envptr110180[1]
  %cont106871 = load i64, i64* %envptr110181, align 8                                ; load; *envptr110181
  %arg107544 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim106874 = call i64 @prim_vector_45set_33(i64 %R5Y$_37wind_45stack, i64 %arg107544, i64 %km8$l); call prim_vector_45set_33
  %arg107547 = add i64 0, 0                                                          ; quoted ()
  %cloptr110182 = inttoptr i64 %cont106871 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110182)                                       ; assert function application
  %i0ptr110183 = getelementptr inbounds i64, i64* %cloptr110182, i64 0               ; &cloptr110182[0]
  %f110185 = load i64, i64* %i0ptr110183, align 8                                    ; load; *i0ptr110183
  %fptr110184 = inttoptr i64 %f110185 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110184(i64 %cont106871, i64 %arg107547, i64 %retprim106874); tail call
  ret void
}


define void @lam108366(i64 %env108367, i64 %rvp107882) {
  %_950 = call i64 @prim_car(i64 %rvp107882)                                         ; call prim_car
  %rvp107880 = call i64 @prim_cdr(i64 %rvp107882)                                    ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp107880)                                            ; call prim_car
  %na107877 = call i64 @prim_cdr(i64 %rvp107880)                                     ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva107879 = add i64 0, 0                                                          ; quoted ()
  %rva107878 = call i64 @prim_cons(i64 %_951, i64 %rva107879)                        ; call prim_cons
  %cloptr110186 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110186)                                       ; assert function application
  %i0ptr110187 = getelementptr inbounds i64, i64* %cloptr110186, i64 0               ; &cloptr110186[0]
  %f110189 = load i64, i64* %i0ptr110187, align 8                                    ; load; *i0ptr110187
  %fptr110188 = inttoptr i64 %f110189 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110188(i64 %_951, i64 %rva107878)                   ; tail call
  ret void
}


define void @lam108358(i64 %env108359, i64 %cont106900, i64 %c7E$_37foldl) {
  %envptr110190 = inttoptr i64 %env108359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110191 = getelementptr inbounds i64, i64* %envptr110190, i64 3              ; &envptr110190[3]
  %zyw$_37map1 = load i64, i64* %envptr110191, align 8                               ; load; *envptr110191
  %envptr110192 = inttoptr i64 %env108359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110193 = getelementptr inbounds i64, i64* %envptr110192, i64 2              ; &envptr110192[2]
  %t6g$_37foldr1 = load i64, i64* %envptr110193, align 8                             ; load; *envptr110193
  %envptr110194 = inttoptr i64 %env108359 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110195 = getelementptr inbounds i64, i64* %envptr110194, i64 1              ; &envptr110194[1]
  %dgl$_37foldr = load i64, i64* %envptr110195, align 8                              ; load; *envptr110195
  %arg107563 = add i64 0, 0                                                          ; quoted ()
  %cloptr110196 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110198 = getelementptr inbounds i64, i64* %cloptr110196, i64 1                ; &eptr110198[1]
  %eptr110199 = getelementptr inbounds i64, i64* %cloptr110196, i64 2                ; &eptr110199[2]
  %eptr110200 = getelementptr inbounds i64, i64* %cloptr110196, i64 3                ; &eptr110200[3]
  %eptr110201 = getelementptr inbounds i64, i64* %cloptr110196, i64 4                ; &eptr110201[4]
  store i64 %dgl$_37foldr, i64* %eptr110198                                          ; *eptr110198 = %dgl$_37foldr
  store i64 %c7E$_37foldl, i64* %eptr110199                                          ; *eptr110199 = %c7E$_37foldl
  store i64 %t6g$_37foldr1, i64* %eptr110200                                         ; *eptr110200 = %t6g$_37foldr1
  store i64 %zyw$_37map1, i64* %eptr110201                                           ; *eptr110201 = %zyw$_37map1
  %eptr110197 = getelementptr inbounds i64, i64* %cloptr110196, i64 0                ; &cloptr110196[0]
  %f110202 = ptrtoint void(i64,i64)* @lam108355 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110202, i64* %eptr110197                                               ; store fptr
  %arg107562 = ptrtoint i64* %cloptr110196 to i64                                    ; closure cast; i64* -> i64
  %cloptr110203 = inttoptr i64 %cont106900 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110203)                                       ; assert function application
  %i0ptr110204 = getelementptr inbounds i64, i64* %cloptr110203, i64 0               ; &cloptr110203[0]
  %f110206 = load i64, i64* %i0ptr110204, align 8                                    ; load; *i0ptr110204
  %fptr110205 = inttoptr i64 %f110206 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110205(i64 %cont106900, i64 %arg107563, i64 %arg107562); tail call
  ret void
}


define void @lam108355(i64 %env108356, i64 %ygs$args106902) {
  %envptr110207 = inttoptr i64 %env108356 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110208 = getelementptr inbounds i64, i64* %envptr110207, i64 4              ; &envptr110207[4]
  %zyw$_37map1 = load i64, i64* %envptr110208, align 8                               ; load; *envptr110208
  %envptr110209 = inttoptr i64 %env108356 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110210 = getelementptr inbounds i64, i64* %envptr110209, i64 3              ; &envptr110209[3]
  %t6g$_37foldr1 = load i64, i64* %envptr110210, align 8                             ; load; *envptr110210
  %envptr110211 = inttoptr i64 %env108356 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110212 = getelementptr inbounds i64, i64* %envptr110211, i64 2              ; &envptr110211[2]
  %c7E$_37foldl = load i64, i64* %envptr110212, align 8                              ; load; *envptr110212
  %envptr110213 = inttoptr i64 %env108356 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110214 = getelementptr inbounds i64, i64* %envptr110213, i64 1              ; &envptr110213[1]
  %dgl$_37foldr = load i64, i64* %envptr110214, align 8                              ; load; *envptr110214
  %cont106901 = call i64 @prim_car(i64 %ygs$args106902)                              ; call prim_car
  %ygs$args = call i64 @prim_cdr(i64 %ygs$args106902)                                ; call prim_cdr
  %dMe$f = call i64 @prim_car(i64 %ygs$args)                                         ; call prim_car
  %a106705 = call i64 @prim_cdr(i64 %ygs$args)                                       ; call prim_cdr
  %retprim106921 = call i64 @prim_car(i64 %a106705)                                  ; call prim_car
  %cloptr110215 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr110217 = getelementptr inbounds i64, i64* %cloptr110215, i64 1                ; &eptr110217[1]
  %eptr110218 = getelementptr inbounds i64, i64* %cloptr110215, i64 2                ; &eptr110218[2]
  %eptr110219 = getelementptr inbounds i64, i64* %cloptr110215, i64 3                ; &eptr110219[3]
  %eptr110220 = getelementptr inbounds i64, i64* %cloptr110215, i64 4                ; &eptr110220[4]
  %eptr110221 = getelementptr inbounds i64, i64* %cloptr110215, i64 5                ; &eptr110221[5]
  %eptr110222 = getelementptr inbounds i64, i64* %cloptr110215, i64 6                ; &eptr110222[6]
  %eptr110223 = getelementptr inbounds i64, i64* %cloptr110215, i64 7                ; &eptr110223[7]
  store i64 %dgl$_37foldr, i64* %eptr110217                                          ; *eptr110217 = %dgl$_37foldr
  store i64 %c7E$_37foldl, i64* %eptr110218                                          ; *eptr110218 = %c7E$_37foldl
  store i64 %dMe$f, i64* %eptr110219                                                 ; *eptr110219 = %dMe$f
  store i64 %cont106901, i64* %eptr110220                                            ; *eptr110220 = %cont106901
  store i64 %t6g$_37foldr1, i64* %eptr110221                                         ; *eptr110221 = %t6g$_37foldr1
  store i64 %zyw$_37map1, i64* %eptr110222                                           ; *eptr110222 = %zyw$_37map1
  store i64 %ygs$args, i64* %eptr110223                                              ; *eptr110223 = %ygs$args
  %eptr110216 = getelementptr inbounds i64, i64* %cloptr110215, i64 0                ; &cloptr110215[0]
  %f110224 = ptrtoint void(i64,i64,i64)* @lam108353 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110224, i64* %eptr110216                                               ; store fptr
  %arg107572 = ptrtoint i64* %cloptr110215 to i64                                    ; closure cast; i64* -> i64
  %arg107571 = add i64 0, 0                                                          ; quoted ()
  %cloptr110225 = inttoptr i64 %arg107572 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110225)                                       ; assert function application
  %i0ptr110226 = getelementptr inbounds i64, i64* %cloptr110225, i64 0               ; &cloptr110225[0]
  %f110228 = load i64, i64* %i0ptr110226, align 8                                    ; load; *i0ptr110226
  %fptr110227 = inttoptr i64 %f110228 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110227(i64 %arg107572, i64 %arg107571, i64 %retprim106921); tail call
  ret void
}


define void @lam108353(i64 %env108354, i64 %_95106903, i64 %mXp$acc) {
  %envptr110229 = inttoptr i64 %env108354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110230 = getelementptr inbounds i64, i64* %envptr110229, i64 7              ; &envptr110229[7]
  %ygs$args = load i64, i64* %envptr110230, align 8                                  ; load; *envptr110230
  %envptr110231 = inttoptr i64 %env108354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110232 = getelementptr inbounds i64, i64* %envptr110231, i64 6              ; &envptr110231[6]
  %zyw$_37map1 = load i64, i64* %envptr110232, align 8                               ; load; *envptr110232
  %envptr110233 = inttoptr i64 %env108354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110234 = getelementptr inbounds i64, i64* %envptr110233, i64 5              ; &envptr110233[5]
  %t6g$_37foldr1 = load i64, i64* %envptr110234, align 8                             ; load; *envptr110234
  %envptr110235 = inttoptr i64 %env108354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110236 = getelementptr inbounds i64, i64* %envptr110235, i64 4              ; &envptr110235[4]
  %cont106901 = load i64, i64* %envptr110236, align 8                                ; load; *envptr110236
  %envptr110237 = inttoptr i64 %env108354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110238 = getelementptr inbounds i64, i64* %envptr110237, i64 3              ; &envptr110237[3]
  %dMe$f = load i64, i64* %envptr110238, align 8                                     ; load; *envptr110238
  %envptr110239 = inttoptr i64 %env108354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110240 = getelementptr inbounds i64, i64* %envptr110239, i64 2              ; &envptr110239[2]
  %c7E$_37foldl = load i64, i64* %envptr110240, align 8                              ; load; *envptr110240
  %envptr110241 = inttoptr i64 %env108354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110242 = getelementptr inbounds i64, i64* %envptr110241, i64 1              ; &envptr110241[1]
  %dgl$_37foldr = load i64, i64* %envptr110242, align 8                              ; load; *envptr110242
  %a106706 = call i64 @prim_cdr(i64 %ygs$args)                                       ; call prim_cdr
  %retprim106920 = call i64 @prim_cdr(i64 %a106706)                                  ; call prim_cdr
  %cloptr110243 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr110245 = getelementptr inbounds i64, i64* %cloptr110243, i64 1                ; &eptr110245[1]
  %eptr110246 = getelementptr inbounds i64, i64* %cloptr110243, i64 2                ; &eptr110246[2]
  %eptr110247 = getelementptr inbounds i64, i64* %cloptr110243, i64 3                ; &eptr110247[3]
  %eptr110248 = getelementptr inbounds i64, i64* %cloptr110243, i64 4                ; &eptr110248[4]
  %eptr110249 = getelementptr inbounds i64, i64* %cloptr110243, i64 5                ; &eptr110249[5]
  %eptr110250 = getelementptr inbounds i64, i64* %cloptr110243, i64 6                ; &eptr110250[6]
  %eptr110251 = getelementptr inbounds i64, i64* %cloptr110243, i64 7                ; &eptr110251[7]
  store i64 %dgl$_37foldr, i64* %eptr110245                                          ; *eptr110245 = %dgl$_37foldr
  store i64 %c7E$_37foldl, i64* %eptr110246                                          ; *eptr110246 = %c7E$_37foldl
  store i64 %dMe$f, i64* %eptr110247                                                 ; *eptr110247 = %dMe$f
  store i64 %cont106901, i64* %eptr110248                                            ; *eptr110248 = %cont106901
  store i64 %t6g$_37foldr1, i64* %eptr110249                                         ; *eptr110249 = %t6g$_37foldr1
  store i64 %zyw$_37map1, i64* %eptr110250                                           ; *eptr110250 = %zyw$_37map1
  store i64 %mXp$acc, i64* %eptr110251                                               ; *eptr110251 = %mXp$acc
  %eptr110244 = getelementptr inbounds i64, i64* %cloptr110243, i64 0                ; &cloptr110243[0]
  %f110252 = ptrtoint void(i64,i64,i64)* @lam108351 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110252, i64* %eptr110244                                               ; store fptr
  %arg107577 = ptrtoint i64* %cloptr110243 to i64                                    ; closure cast; i64* -> i64
  %arg107576 = add i64 0, 0                                                          ; quoted ()
  %cloptr110253 = inttoptr i64 %arg107577 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110253)                                       ; assert function application
  %i0ptr110254 = getelementptr inbounds i64, i64* %cloptr110253, i64 0               ; &cloptr110253[0]
  %f110256 = load i64, i64* %i0ptr110254, align 8                                    ; load; *i0ptr110254
  %fptr110255 = inttoptr i64 %f110256 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110255(i64 %arg107577, i64 %arg107576, i64 %retprim106920); tail call
  ret void
}


define void @lam108351(i64 %env108352, i64 %_95106904, i64 %ZMS$lsts) {
  %envptr110257 = inttoptr i64 %env108352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110258 = getelementptr inbounds i64, i64* %envptr110257, i64 7              ; &envptr110257[7]
  %mXp$acc = load i64, i64* %envptr110258, align 8                                   ; load; *envptr110258
  %envptr110259 = inttoptr i64 %env108352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110260 = getelementptr inbounds i64, i64* %envptr110259, i64 6              ; &envptr110259[6]
  %zyw$_37map1 = load i64, i64* %envptr110260, align 8                               ; load; *envptr110260
  %envptr110261 = inttoptr i64 %env108352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110262 = getelementptr inbounds i64, i64* %envptr110261, i64 5              ; &envptr110261[5]
  %t6g$_37foldr1 = load i64, i64* %envptr110262, align 8                             ; load; *envptr110262
  %envptr110263 = inttoptr i64 %env108352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110264 = getelementptr inbounds i64, i64* %envptr110263, i64 4              ; &envptr110263[4]
  %cont106901 = load i64, i64* %envptr110264, align 8                                ; load; *envptr110264
  %envptr110265 = inttoptr i64 %env108352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110266 = getelementptr inbounds i64, i64* %envptr110265, i64 3              ; &envptr110265[3]
  %dMe$f = load i64, i64* %envptr110266, align 8                                     ; load; *envptr110266
  %envptr110267 = inttoptr i64 %env108352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110268 = getelementptr inbounds i64, i64* %envptr110267, i64 2              ; &envptr110267[2]
  %c7E$_37foldl = load i64, i64* %envptr110268, align 8                              ; load; *envptr110268
  %envptr110269 = inttoptr i64 %env108352 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110270 = getelementptr inbounds i64, i64* %envptr110269, i64 1              ; &envptr110269[1]
  %dgl$_37foldr = load i64, i64* %envptr110270, align 8                              ; load; *envptr110270
  %cloptr110271 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr110273 = getelementptr inbounds i64, i64* %cloptr110271, i64 1                ; &eptr110273[1]
  %eptr110274 = getelementptr inbounds i64, i64* %cloptr110271, i64 2                ; &eptr110274[2]
  %eptr110275 = getelementptr inbounds i64, i64* %cloptr110271, i64 3                ; &eptr110275[3]
  %eptr110276 = getelementptr inbounds i64, i64* %cloptr110271, i64 4                ; &eptr110276[4]
  %eptr110277 = getelementptr inbounds i64, i64* %cloptr110271, i64 5                ; &eptr110277[5]
  %eptr110278 = getelementptr inbounds i64, i64* %cloptr110271, i64 6                ; &eptr110278[6]
  %eptr110279 = getelementptr inbounds i64, i64* %cloptr110271, i64 7                ; &eptr110279[7]
  store i64 %dgl$_37foldr, i64* %eptr110273                                          ; *eptr110273 = %dgl$_37foldr
  store i64 %c7E$_37foldl, i64* %eptr110274                                          ; *eptr110274 = %c7E$_37foldl
  store i64 %dMe$f, i64* %eptr110275                                                 ; *eptr110275 = %dMe$f
  store i64 %cont106901, i64* %eptr110276                                            ; *eptr110276 = %cont106901
  store i64 %ZMS$lsts, i64* %eptr110277                                              ; *eptr110277 = %ZMS$lsts
  store i64 %zyw$_37map1, i64* %eptr110278                                           ; *eptr110278 = %zyw$_37map1
  store i64 %mXp$acc, i64* %eptr110279                                               ; *eptr110279 = %mXp$acc
  %eptr110272 = getelementptr inbounds i64, i64* %cloptr110271, i64 0                ; &cloptr110271[0]
  %f110280 = ptrtoint void(i64,i64)* @lam108349 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110280, i64* %eptr110272                                               ; store fptr
  %arg107581 = ptrtoint i64* %cloptr110271 to i64                                    ; closure cast; i64* -> i64
  %cloptr110281 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110282 = getelementptr inbounds i64, i64* %cloptr110281, i64 0                ; &cloptr110281[0]
  %f110283 = ptrtoint void(i64,i64)* @lam108325 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110283, i64* %eptr110282                                               ; store fptr
  %arg107580 = ptrtoint i64* %cloptr110281 to i64                                    ; closure cast; i64* -> i64
  %arg107579 = call i64 @const_init_false()                                          ; quoted #f
  %rva107957 = add i64 0, 0                                                          ; quoted ()
  %rva107956 = call i64 @prim_cons(i64 %ZMS$lsts, i64 %rva107957)                    ; call prim_cons
  %rva107955 = call i64 @prim_cons(i64 %arg107579, i64 %rva107956)                   ; call prim_cons
  %rva107954 = call i64 @prim_cons(i64 %arg107580, i64 %rva107955)                   ; call prim_cons
  %rva107953 = call i64 @prim_cons(i64 %arg107581, i64 %rva107954)                   ; call prim_cons
  %cloptr110284 = inttoptr i64 %t6g$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110284)                                       ; assert function application
  %i0ptr110285 = getelementptr inbounds i64, i64* %cloptr110284, i64 0               ; &cloptr110284[0]
  %f110287 = load i64, i64* %i0ptr110285, align 8                                    ; load; *i0ptr110285
  %fptr110286 = inttoptr i64 %f110287 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110286(i64 %t6g$_37foldr1, i64 %rva107953)          ; tail call
  ret void
}


define void @lam108349(i64 %env108350, i64 %rvp107937) {
  %envptr110288 = inttoptr i64 %env108350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110289 = getelementptr inbounds i64, i64* %envptr110288, i64 7              ; &envptr110288[7]
  %mXp$acc = load i64, i64* %envptr110289, align 8                                   ; load; *envptr110289
  %envptr110290 = inttoptr i64 %env108350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110291 = getelementptr inbounds i64, i64* %envptr110290, i64 6              ; &envptr110290[6]
  %zyw$_37map1 = load i64, i64* %envptr110291, align 8                               ; load; *envptr110291
  %envptr110292 = inttoptr i64 %env108350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110293 = getelementptr inbounds i64, i64* %envptr110292, i64 5              ; &envptr110292[5]
  %ZMS$lsts = load i64, i64* %envptr110293, align 8                                  ; load; *envptr110293
  %envptr110294 = inttoptr i64 %env108350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110295 = getelementptr inbounds i64, i64* %envptr110294, i64 4              ; &envptr110294[4]
  %cont106901 = load i64, i64* %envptr110295, align 8                                ; load; *envptr110295
  %envptr110296 = inttoptr i64 %env108350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110297 = getelementptr inbounds i64, i64* %envptr110296, i64 3              ; &envptr110296[3]
  %dMe$f = load i64, i64* %envptr110297, align 8                                     ; load; *envptr110297
  %envptr110298 = inttoptr i64 %env108350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110299 = getelementptr inbounds i64, i64* %envptr110298, i64 2              ; &envptr110298[2]
  %c7E$_37foldl = load i64, i64* %envptr110299, align 8                              ; load; *envptr110299
  %envptr110300 = inttoptr i64 %env108350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110301 = getelementptr inbounds i64, i64* %envptr110300, i64 1              ; &envptr110300[1]
  %dgl$_37foldr = load i64, i64* %envptr110301, align 8                              ; load; *envptr110301
  %_95106905 = call i64 @prim_car(i64 %rvp107937)                                    ; call prim_car
  %rvp107935 = call i64 @prim_cdr(i64 %rvp107937)                                    ; call prim_cdr
  %a106707 = call i64 @prim_car(i64 %rvp107935)                                      ; call prim_car
  %na107891 = call i64 @prim_cdr(i64 %rvp107935)                                     ; call prim_cdr
  %cmp110302 = icmp eq i64 %a106707, 15                                              ; false?
  br i1 %cmp110302, label %else110304, label %then110303                             ; if

then110303:
  %arg107584 = add i64 0, 0                                                          ; quoted ()
  %rva107894 = add i64 0, 0                                                          ; quoted ()
  %rva107893 = call i64 @prim_cons(i64 %mXp$acc, i64 %rva107894)                     ; call prim_cons
  %rva107892 = call i64 @prim_cons(i64 %arg107584, i64 %rva107893)                   ; call prim_cons
  %cloptr110305 = inttoptr i64 %cont106901 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110305)                                       ; assert function application
  %i0ptr110306 = getelementptr inbounds i64, i64* %cloptr110305, i64 0               ; &cloptr110305[0]
  %f110308 = load i64, i64* %i0ptr110306, align 8                                    ; load; *i0ptr110306
  %fptr110307 = inttoptr i64 %f110308 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110307(i64 %cont106901, i64 %rva107892)             ; tail call
  ret void

else110304:
  %cloptr110309 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr110311 = getelementptr inbounds i64, i64* %cloptr110309, i64 1                ; &eptr110311[1]
  %eptr110312 = getelementptr inbounds i64, i64* %cloptr110309, i64 2                ; &eptr110312[2]
  %eptr110313 = getelementptr inbounds i64, i64* %cloptr110309, i64 3                ; &eptr110313[3]
  %eptr110314 = getelementptr inbounds i64, i64* %cloptr110309, i64 4                ; &eptr110314[4]
  %eptr110315 = getelementptr inbounds i64, i64* %cloptr110309, i64 5                ; &eptr110315[5]
  %eptr110316 = getelementptr inbounds i64, i64* %cloptr110309, i64 6                ; &eptr110316[6]
  %eptr110317 = getelementptr inbounds i64, i64* %cloptr110309, i64 7                ; &eptr110317[7]
  store i64 %dgl$_37foldr, i64* %eptr110311                                          ; *eptr110311 = %dgl$_37foldr
  store i64 %c7E$_37foldl, i64* %eptr110312                                          ; *eptr110312 = %c7E$_37foldl
  store i64 %dMe$f, i64* %eptr110313                                                 ; *eptr110313 = %dMe$f
  store i64 %cont106901, i64* %eptr110314                                            ; *eptr110314 = %cont106901
  store i64 %ZMS$lsts, i64* %eptr110315                                              ; *eptr110315 = %ZMS$lsts
  store i64 %zyw$_37map1, i64* %eptr110316                                           ; *eptr110316 = %zyw$_37map1
  store i64 %mXp$acc, i64* %eptr110317                                               ; *eptr110317 = %mXp$acc
  %eptr110310 = getelementptr inbounds i64, i64* %cloptr110309, i64 0                ; &cloptr110309[0]
  %f110318 = ptrtoint void(i64,i64)* @lam108347 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110318, i64* %eptr110310                                               ; store fptr
  %arg107588 = ptrtoint i64* %cloptr110309 to i64                                    ; closure cast; i64* -> i64
  %cloptr110319 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110320 = getelementptr inbounds i64, i64* %cloptr110319, i64 0                ; &cloptr110319[0]
  %f110321 = ptrtoint void(i64,i64,i64)* @lam108330 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110321, i64* %eptr110320                                               ; store fptr
  %arg107587 = ptrtoint i64* %cloptr110319 to i64                                    ; closure cast; i64* -> i64
  %cloptr110322 = inttoptr i64 %zyw$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110322)                                       ; assert function application
  %i0ptr110323 = getelementptr inbounds i64, i64* %cloptr110322, i64 0               ; &cloptr110322[0]
  %f110325 = load i64, i64* %i0ptr110323, align 8                                    ; load; *i0ptr110323
  %fptr110324 = inttoptr i64 %f110325 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110324(i64 %zyw$_37map1, i64 %arg107588, i64 %arg107587, i64 %ZMS$lsts); tail call
  ret void
}


define void @lam108347(i64 %env108348, i64 %rvp107933) {
  %envptr110326 = inttoptr i64 %env108348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110327 = getelementptr inbounds i64, i64* %envptr110326, i64 7              ; &envptr110326[7]
  %mXp$acc = load i64, i64* %envptr110327, align 8                                   ; load; *envptr110327
  %envptr110328 = inttoptr i64 %env108348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110329 = getelementptr inbounds i64, i64* %envptr110328, i64 6              ; &envptr110328[6]
  %zyw$_37map1 = load i64, i64* %envptr110329, align 8                               ; load; *envptr110329
  %envptr110330 = inttoptr i64 %env108348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110331 = getelementptr inbounds i64, i64* %envptr110330, i64 5              ; &envptr110330[5]
  %ZMS$lsts = load i64, i64* %envptr110331, align 8                                  ; load; *envptr110331
  %envptr110332 = inttoptr i64 %env108348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110333 = getelementptr inbounds i64, i64* %envptr110332, i64 4              ; &envptr110332[4]
  %cont106901 = load i64, i64* %envptr110333, align 8                                ; load; *envptr110333
  %envptr110334 = inttoptr i64 %env108348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110335 = getelementptr inbounds i64, i64* %envptr110334, i64 3              ; &envptr110334[3]
  %dMe$f = load i64, i64* %envptr110335, align 8                                     ; load; *envptr110335
  %envptr110336 = inttoptr i64 %env108348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110337 = getelementptr inbounds i64, i64* %envptr110336, i64 2              ; &envptr110336[2]
  %c7E$_37foldl = load i64, i64* %envptr110337, align 8                              ; load; *envptr110337
  %envptr110338 = inttoptr i64 %env108348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110339 = getelementptr inbounds i64, i64* %envptr110338, i64 1              ; &envptr110338[1]
  %dgl$_37foldr = load i64, i64* %envptr110339, align 8                              ; load; *envptr110339
  %_95106906 = call i64 @prim_car(i64 %rvp107933)                                    ; call prim_car
  %rvp107931 = call i64 @prim_cdr(i64 %rvp107933)                                    ; call prim_cdr
  %yrI$lsts_43 = call i64 @prim_car(i64 %rvp107931)                                  ; call prim_car
  %na107896 = call i64 @prim_cdr(i64 %rvp107931)                                     ; call prim_cdr
  %cloptr110340 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr110342 = getelementptr inbounds i64, i64* %cloptr110340, i64 1                ; &eptr110342[1]
  %eptr110343 = getelementptr inbounds i64, i64* %cloptr110340, i64 2                ; &eptr110343[2]
  %eptr110344 = getelementptr inbounds i64, i64* %cloptr110340, i64 3                ; &eptr110344[3]
  %eptr110345 = getelementptr inbounds i64, i64* %cloptr110340, i64 4                ; &eptr110345[4]
  %eptr110346 = getelementptr inbounds i64, i64* %cloptr110340, i64 5                ; &eptr110346[5]
  %eptr110347 = getelementptr inbounds i64, i64* %cloptr110340, i64 6                ; &eptr110347[6]
  store i64 %dgl$_37foldr, i64* %eptr110342                                          ; *eptr110342 = %dgl$_37foldr
  store i64 %c7E$_37foldl, i64* %eptr110343                                          ; *eptr110343 = %c7E$_37foldl
  store i64 %yrI$lsts_43, i64* %eptr110344                                           ; *eptr110344 = %yrI$lsts_43
  store i64 %dMe$f, i64* %eptr110345                                                 ; *eptr110345 = %dMe$f
  store i64 %cont106901, i64* %eptr110346                                            ; *eptr110346 = %cont106901
  store i64 %mXp$acc, i64* %eptr110347                                               ; *eptr110347 = %mXp$acc
  %eptr110341 = getelementptr inbounds i64, i64* %cloptr110340, i64 0                ; &cloptr110340[0]
  %f110348 = ptrtoint void(i64,i64)* @lam108345 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110348, i64* %eptr110341                                               ; store fptr
  %arg107592 = ptrtoint i64* %cloptr110340 to i64                                    ; closure cast; i64* -> i64
  %cloptr110349 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110350 = getelementptr inbounds i64, i64* %cloptr110349, i64 0                ; &cloptr110349[0]
  %f110351 = ptrtoint void(i64,i64,i64)* @lam108333 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110351, i64* %eptr110350                                               ; store fptr
  %arg107591 = ptrtoint i64* %cloptr110349 to i64                                    ; closure cast; i64* -> i64
  %cloptr110352 = inttoptr i64 %zyw$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110352)                                       ; assert function application
  %i0ptr110353 = getelementptr inbounds i64, i64* %cloptr110352, i64 0               ; &cloptr110352[0]
  %f110355 = load i64, i64* %i0ptr110353, align 8                                    ; load; *i0ptr110353
  %fptr110354 = inttoptr i64 %f110355 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110354(i64 %zyw$_37map1, i64 %arg107592, i64 %arg107591, i64 %ZMS$lsts); tail call
  ret void
}


define void @lam108345(i64 %env108346, i64 %rvp107929) {
  %envptr110356 = inttoptr i64 %env108346 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110357 = getelementptr inbounds i64, i64* %envptr110356, i64 6              ; &envptr110356[6]
  %mXp$acc = load i64, i64* %envptr110357, align 8                                   ; load; *envptr110357
  %envptr110358 = inttoptr i64 %env108346 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110359 = getelementptr inbounds i64, i64* %envptr110358, i64 5              ; &envptr110358[5]
  %cont106901 = load i64, i64* %envptr110359, align 8                                ; load; *envptr110359
  %envptr110360 = inttoptr i64 %env108346 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110361 = getelementptr inbounds i64, i64* %envptr110360, i64 4              ; &envptr110360[4]
  %dMe$f = load i64, i64* %envptr110361, align 8                                     ; load; *envptr110361
  %envptr110362 = inttoptr i64 %env108346 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110363 = getelementptr inbounds i64, i64* %envptr110362, i64 3              ; &envptr110362[3]
  %yrI$lsts_43 = load i64, i64* %envptr110363, align 8                               ; load; *envptr110363
  %envptr110364 = inttoptr i64 %env108346 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110365 = getelementptr inbounds i64, i64* %envptr110364, i64 2              ; &envptr110364[2]
  %c7E$_37foldl = load i64, i64* %envptr110365, align 8                              ; load; *envptr110365
  %envptr110366 = inttoptr i64 %env108346 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110367 = getelementptr inbounds i64, i64* %envptr110366, i64 1              ; &envptr110366[1]
  %dgl$_37foldr = load i64, i64* %envptr110367, align 8                              ; load; *envptr110367
  %_95106907 = call i64 @prim_car(i64 %rvp107929)                                    ; call prim_car
  %rvp107927 = call i64 @prim_cdr(i64 %rvp107929)                                    ; call prim_cdr
  %uBb$vs = call i64 @prim_car(i64 %rvp107927)                                       ; call prim_car
  %na107898 = call i64 @prim_cdr(i64 %rvp107927)                                     ; call prim_cdr
  %arg107594 = add i64 0, 0                                                          ; quoted ()
  %a106708 = call i64 @prim_cons(i64 %mXp$acc, i64 %arg107594)                       ; call prim_cons
  %cloptr110368 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110370 = getelementptr inbounds i64, i64* %cloptr110368, i64 1                ; &eptr110370[1]
  %eptr110371 = getelementptr inbounds i64, i64* %cloptr110368, i64 2                ; &eptr110371[2]
  %eptr110372 = getelementptr inbounds i64, i64* %cloptr110368, i64 3                ; &eptr110372[3]
  %eptr110373 = getelementptr inbounds i64, i64* %cloptr110368, i64 4                ; &eptr110373[4]
  store i64 %c7E$_37foldl, i64* %eptr110370                                          ; *eptr110370 = %c7E$_37foldl
  store i64 %yrI$lsts_43, i64* %eptr110371                                           ; *eptr110371 = %yrI$lsts_43
  store i64 %dMe$f, i64* %eptr110372                                                 ; *eptr110372 = %dMe$f
  store i64 %cont106901, i64* %eptr110373                                            ; *eptr110373 = %cont106901
  %eptr110369 = getelementptr inbounds i64, i64* %cloptr110368, i64 0                ; &cloptr110368[0]
  %f110374 = ptrtoint void(i64,i64)* @lam108342 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110374, i64* %eptr110369                                               ; store fptr
  %arg107599 = ptrtoint i64* %cloptr110368 to i64                                    ; closure cast; i64* -> i64
  %cloptr110375 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110376 = getelementptr inbounds i64, i64* %cloptr110375, i64 0                ; &cloptr110375[0]
  %f110377 = ptrtoint void(i64,i64)* @lam108338 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110377, i64* %eptr110376                                               ; store fptr
  %arg107598 = ptrtoint i64* %cloptr110375 to i64                                    ; closure cast; i64* -> i64
  %rva107926 = add i64 0, 0                                                          ; quoted ()
  %rva107925 = call i64 @prim_cons(i64 %uBb$vs, i64 %rva107926)                      ; call prim_cons
  %rva107924 = call i64 @prim_cons(i64 %a106708, i64 %rva107925)                     ; call prim_cons
  %rva107923 = call i64 @prim_cons(i64 %arg107598, i64 %rva107924)                   ; call prim_cons
  %rva107922 = call i64 @prim_cons(i64 %arg107599, i64 %rva107923)                   ; call prim_cons
  %cloptr110378 = inttoptr i64 %dgl$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110378)                                       ; assert function application
  %i0ptr110379 = getelementptr inbounds i64, i64* %cloptr110378, i64 0               ; &cloptr110378[0]
  %f110381 = load i64, i64* %i0ptr110379, align 8                                    ; load; *i0ptr110379
  %fptr110380 = inttoptr i64 %f110381 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110380(i64 %dgl$_37foldr, i64 %rva107922)           ; tail call
  ret void
}


define void @lam108342(i64 %env108343, i64 %rvp107909) {
  %envptr110382 = inttoptr i64 %env108343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110383 = getelementptr inbounds i64, i64* %envptr110382, i64 4              ; &envptr110382[4]
  %cont106901 = load i64, i64* %envptr110383, align 8                                ; load; *envptr110383
  %envptr110384 = inttoptr i64 %env108343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110385 = getelementptr inbounds i64, i64* %envptr110384, i64 3              ; &envptr110384[3]
  %dMe$f = load i64, i64* %envptr110385, align 8                                     ; load; *envptr110385
  %envptr110386 = inttoptr i64 %env108343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110387 = getelementptr inbounds i64, i64* %envptr110386, i64 2              ; &envptr110386[2]
  %yrI$lsts_43 = load i64, i64* %envptr110387, align 8                               ; load; *envptr110387
  %envptr110388 = inttoptr i64 %env108343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110389 = getelementptr inbounds i64, i64* %envptr110388, i64 1              ; &envptr110388[1]
  %c7E$_37foldl = load i64, i64* %envptr110389, align 8                              ; load; *envptr110389
  %_95106910 = call i64 @prim_car(i64 %rvp107909)                                    ; call prim_car
  %rvp107907 = call i64 @prim_cdr(i64 %rvp107909)                                    ; call prim_cdr
  %a106709 = call i64 @prim_car(i64 %rvp107907)                                      ; call prim_car
  %na107900 = call i64 @prim_cdr(i64 %rvp107907)                                     ; call prim_cdr
  %cloptr110390 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110392 = getelementptr inbounds i64, i64* %cloptr110390, i64 1                ; &eptr110392[1]
  %eptr110393 = getelementptr inbounds i64, i64* %cloptr110390, i64 2                ; &eptr110393[2]
  %eptr110394 = getelementptr inbounds i64, i64* %cloptr110390, i64 3                ; &eptr110394[3]
  %eptr110395 = getelementptr inbounds i64, i64* %cloptr110390, i64 4                ; &eptr110395[4]
  store i64 %c7E$_37foldl, i64* %eptr110392                                          ; *eptr110392 = %c7E$_37foldl
  store i64 %yrI$lsts_43, i64* %eptr110393                                           ; *eptr110393 = %yrI$lsts_43
  store i64 %dMe$f, i64* %eptr110394                                                 ; *eptr110394 = %dMe$f
  store i64 %cont106901, i64* %eptr110395                                            ; *eptr110395 = %cont106901
  %eptr110391 = getelementptr inbounds i64, i64* %cloptr110390, i64 0                ; &cloptr110390[0]
  %f110396 = ptrtoint void(i64,i64)* @lam108340 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110396, i64* %eptr110391                                               ; store fptr
  %arg107602 = ptrtoint i64* %cloptr110390 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst106911 = call i64 @prim_cons(i64 %arg107602, i64 %a106709)               ; call prim_cons
  %cloptr110397 = inttoptr i64 %dMe$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110397)                                       ; assert function application
  %i0ptr110398 = getelementptr inbounds i64, i64* %cloptr110397, i64 0               ; &cloptr110397[0]
  %f110400 = load i64, i64* %i0ptr110398, align 8                                    ; load; *i0ptr110398
  %fptr110399 = inttoptr i64 %f110400 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110399(i64 %dMe$f, i64 %cps_45lst106911)            ; tail call
  ret void
}


define void @lam108340(i64 %env108341, i64 %rvp107905) {
  %envptr110401 = inttoptr i64 %env108341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110402 = getelementptr inbounds i64, i64* %envptr110401, i64 4              ; &envptr110401[4]
  %cont106901 = load i64, i64* %envptr110402, align 8                                ; load; *envptr110402
  %envptr110403 = inttoptr i64 %env108341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110404 = getelementptr inbounds i64, i64* %envptr110403, i64 3              ; &envptr110403[3]
  %dMe$f = load i64, i64* %envptr110404, align 8                                     ; load; *envptr110404
  %envptr110405 = inttoptr i64 %env108341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110406 = getelementptr inbounds i64, i64* %envptr110405, i64 2              ; &envptr110405[2]
  %yrI$lsts_43 = load i64, i64* %envptr110406, align 8                               ; load; *envptr110406
  %envptr110407 = inttoptr i64 %env108341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110408 = getelementptr inbounds i64, i64* %envptr110407, i64 1              ; &envptr110407[1]
  %c7E$_37foldl = load i64, i64* %envptr110408, align 8                              ; load; *envptr110408
  %_95106908 = call i64 @prim_car(i64 %rvp107905)                                    ; call prim_car
  %rvp107903 = call i64 @prim_cdr(i64 %rvp107905)                                    ; call prim_cdr
  %HTd$acc_43 = call i64 @prim_car(i64 %rvp107903)                                   ; call prim_car
  %na107902 = call i64 @prim_cdr(i64 %rvp107903)                                     ; call prim_cdr
  %a106710 = call i64 @prim_cons(i64 %HTd$acc_43, i64 %yrI$lsts_43)                  ; call prim_cons
  %a106711 = call i64 @prim_cons(i64 %dMe$f, i64 %a106710)                           ; call prim_cons
  %cps_45lst106909 = call i64 @prim_cons(i64 %cont106901, i64 %a106711)              ; call prim_cons
  %cloptr110409 = inttoptr i64 %c7E$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110409)                                       ; assert function application
  %i0ptr110410 = getelementptr inbounds i64, i64* %cloptr110409, i64 0               ; &cloptr110409[0]
  %f110412 = load i64, i64* %i0ptr110410, align 8                                    ; load; *i0ptr110410
  %fptr110411 = inttoptr i64 %f110412 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110411(i64 %c7E$_37foldl, i64 %cps_45lst106909)     ; tail call
  ret void
}


define void @lam108338(i64 %env108339, i64 %rvp107920) {
  %cont106912 = call i64 @prim_car(i64 %rvp107920)                                   ; call prim_car
  %rvp107918 = call i64 @prim_cdr(i64 %rvp107920)                                    ; call prim_cdr
  %Vps$a = call i64 @prim_car(i64 %rvp107918)                                        ; call prim_car
  %rvp107916 = call i64 @prim_cdr(i64 %rvp107918)                                    ; call prim_cdr
  %dd5$b = call i64 @prim_car(i64 %rvp107916)                                        ; call prim_car
  %na107912 = call i64 @prim_cdr(i64 %rvp107916)                                     ; call prim_cdr
  %retprim106913 = call i64 @prim_cons(i64 %Vps$a, i64 %dd5$b)                       ; call prim_cons
  %arg107612 = add i64 0, 0                                                          ; quoted ()
  %rva107915 = add i64 0, 0                                                          ; quoted ()
  %rva107914 = call i64 @prim_cons(i64 %retprim106913, i64 %rva107915)               ; call prim_cons
  %rva107913 = call i64 @prim_cons(i64 %arg107612, i64 %rva107914)                   ; call prim_cons
  %cloptr110413 = inttoptr i64 %cont106912 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110413)                                       ; assert function application
  %i0ptr110414 = getelementptr inbounds i64, i64* %cloptr110413, i64 0               ; &cloptr110413[0]
  %f110416 = load i64, i64* %i0ptr110414, align 8                                    ; load; *i0ptr110414
  %fptr110415 = inttoptr i64 %f110416 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110415(i64 %cont106912, i64 %rva107913)             ; tail call
  ret void
}


define void @lam108333(i64 %env108334, i64 %cont106914, i64 %AfZ$x) {
  %retprim106915 = call i64 @prim_car(i64 %AfZ$x)                                    ; call prim_car
  %arg107616 = add i64 0, 0                                                          ; quoted ()
  %cloptr110417 = inttoptr i64 %cont106914 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110417)                                       ; assert function application
  %i0ptr110418 = getelementptr inbounds i64, i64* %cloptr110417, i64 0               ; &cloptr110417[0]
  %f110420 = load i64, i64* %i0ptr110418, align 8                                    ; load; *i0ptr110418
  %fptr110419 = inttoptr i64 %f110420 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110419(i64 %cont106914, i64 %arg107616, i64 %retprim106915); tail call
  ret void
}


define void @lam108330(i64 %env108331, i64 %cont106916, i64 %xXs$x) {
  %retprim106917 = call i64 @prim_cdr(i64 %xXs$x)                                    ; call prim_cdr
  %arg107620 = add i64 0, 0                                                          ; quoted ()
  %cloptr110421 = inttoptr i64 %cont106916 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110421)                                       ; assert function application
  %i0ptr110422 = getelementptr inbounds i64, i64* %cloptr110421, i64 0               ; &cloptr110421[0]
  %f110424 = load i64, i64* %i0ptr110422, align 8                                    ; load; *i0ptr110422
  %fptr110423 = inttoptr i64 %f110424 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110423(i64 %cont106916, i64 %arg107620, i64 %retprim106917); tail call
  ret void
}


define void @lam108325(i64 %env108326, i64 %rvp107951) {
  %cont106918 = call i64 @prim_car(i64 %rvp107951)                                   ; call prim_car
  %rvp107949 = call i64 @prim_cdr(i64 %rvp107951)                                    ; call prim_cdr
  %PFq$lst = call i64 @prim_car(i64 %rvp107949)                                      ; call prim_car
  %rvp107947 = call i64 @prim_cdr(i64 %rvp107949)                                    ; call prim_cdr
  %vfE$b = call i64 @prim_car(i64 %rvp107947)                                        ; call prim_car
  %na107940 = call i64 @prim_cdr(i64 %rvp107947)                                     ; call prim_cdr
  %cmp110425 = icmp eq i64 %vfE$b, 15                                                ; false?
  br i1 %cmp110425, label %else110427, label %then110426                             ; if

then110426:
  %arg107623 = add i64 0, 0                                                          ; quoted ()
  %rva107943 = add i64 0, 0                                                          ; quoted ()
  %rva107942 = call i64 @prim_cons(i64 %vfE$b, i64 %rva107943)                       ; call prim_cons
  %rva107941 = call i64 @prim_cons(i64 %arg107623, i64 %rva107942)                   ; call prim_cons
  %cloptr110428 = inttoptr i64 %cont106918 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110428)                                       ; assert function application
  %i0ptr110429 = getelementptr inbounds i64, i64* %cloptr110428, i64 0               ; &cloptr110428[0]
  %f110431 = load i64, i64* %i0ptr110429, align 8                                    ; load; *i0ptr110429
  %fptr110430 = inttoptr i64 %f110431 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110430(i64 %cont106918, i64 %rva107941)             ; tail call
  ret void

else110427:
  %retprim106919 = call i64 @prim_null_63(i64 %PFq$lst)                              ; call prim_null_63
  %arg107627 = add i64 0, 0                                                          ; quoted ()
  %rva107946 = add i64 0, 0                                                          ; quoted ()
  %rva107945 = call i64 @prim_cons(i64 %retprim106919, i64 %rva107946)               ; call prim_cons
  %rva107944 = call i64 @prim_cons(i64 %arg107627, i64 %rva107945)                   ; call prim_cons
  %cloptr110432 = inttoptr i64 %cont106918 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110432)                                       ; assert function application
  %i0ptr110433 = getelementptr inbounds i64, i64* %cloptr110432, i64 0               ; &cloptr110432[0]
  %f110435 = load i64, i64* %i0ptr110433, align 8                                    ; load; *i0ptr110433
  %fptr110434 = inttoptr i64 %f110435 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110434(i64 %cont106918, i64 %rva107944)             ; tail call
  ret void
}


define void @lam108315(i64 %env108316, i64 %cont106922, i64 %GLH$_37foldr) {
  %envptr110436 = inttoptr i64 %env108316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110437 = getelementptr inbounds i64, i64* %envptr110436, i64 2              ; &envptr110436[2]
  %t6g$_37foldr1 = load i64, i64* %envptr110437, align 8                             ; load; *envptr110437
  %envptr110438 = inttoptr i64 %env108316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110439 = getelementptr inbounds i64, i64* %envptr110438, i64 1              ; &envptr110438[1]
  %oFV$_37map1 = load i64, i64* %envptr110439, align 8                               ; load; *envptr110439
  %arg107630 = add i64 0, 0                                                          ; quoted ()
  %cloptr110440 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110442 = getelementptr inbounds i64, i64* %cloptr110440, i64 1                ; &eptr110442[1]
  %eptr110443 = getelementptr inbounds i64, i64* %cloptr110440, i64 2                ; &eptr110443[2]
  %eptr110444 = getelementptr inbounds i64, i64* %cloptr110440, i64 3                ; &eptr110444[3]
  store i64 %oFV$_37map1, i64* %eptr110442                                           ; *eptr110442 = %oFV$_37map1
  store i64 %t6g$_37foldr1, i64* %eptr110443                                         ; *eptr110443 = %t6g$_37foldr1
  store i64 %GLH$_37foldr, i64* %eptr110444                                          ; *eptr110444 = %GLH$_37foldr
  %eptr110441 = getelementptr inbounds i64, i64* %cloptr110440, i64 0                ; &cloptr110440[0]
  %f110445 = ptrtoint void(i64,i64)* @lam108312 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110445, i64* %eptr110441                                               ; store fptr
  %arg107629 = ptrtoint i64* %cloptr110440 to i64                                    ; closure cast; i64* -> i64
  %cloptr110446 = inttoptr i64 %cont106922 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110446)                                       ; assert function application
  %i0ptr110447 = getelementptr inbounds i64, i64* %cloptr110446, i64 0               ; &cloptr110446[0]
  %f110449 = load i64, i64* %i0ptr110447, align 8                                    ; load; *i0ptr110447
  %fptr110448 = inttoptr i64 %f110449 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110448(i64 %cont106922, i64 %arg107630, i64 %arg107629); tail call
  ret void
}


define void @lam108312(i64 %env108313, i64 %Uyf$args106924) {
  %envptr110450 = inttoptr i64 %env108313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110451 = getelementptr inbounds i64, i64* %envptr110450, i64 3              ; &envptr110450[3]
  %GLH$_37foldr = load i64, i64* %envptr110451, align 8                              ; load; *envptr110451
  %envptr110452 = inttoptr i64 %env108313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110453 = getelementptr inbounds i64, i64* %envptr110452, i64 2              ; &envptr110452[2]
  %t6g$_37foldr1 = load i64, i64* %envptr110453, align 8                             ; load; *envptr110453
  %envptr110454 = inttoptr i64 %env108313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110455 = getelementptr inbounds i64, i64* %envptr110454, i64 1              ; &envptr110454[1]
  %oFV$_37map1 = load i64, i64* %envptr110455, align 8                               ; load; *envptr110455
  %cont106923 = call i64 @prim_car(i64 %Uyf$args106924)                              ; call prim_car
  %Uyf$args = call i64 @prim_cdr(i64 %Uyf$args106924)                                ; call prim_cdr
  %Xl9$f = call i64 @prim_car(i64 %Uyf$args)                                         ; call prim_car
  %a106691 = call i64 @prim_cdr(i64 %Uyf$args)                                       ; call prim_cdr
  %retprim106943 = call i64 @prim_car(i64 %a106691)                                  ; call prim_car
  %cloptr110456 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr110458 = getelementptr inbounds i64, i64* %cloptr110456, i64 1                ; &eptr110458[1]
  %eptr110459 = getelementptr inbounds i64, i64* %cloptr110456, i64 2                ; &eptr110459[2]
  %eptr110460 = getelementptr inbounds i64, i64* %cloptr110456, i64 3                ; &eptr110460[3]
  %eptr110461 = getelementptr inbounds i64, i64* %cloptr110456, i64 4                ; &eptr110461[4]
  %eptr110462 = getelementptr inbounds i64, i64* %cloptr110456, i64 5                ; &eptr110462[5]
  %eptr110463 = getelementptr inbounds i64, i64* %cloptr110456, i64 6                ; &eptr110463[6]
  store i64 %oFV$_37map1, i64* %eptr110458                                           ; *eptr110458 = %oFV$_37map1
  store i64 %cont106923, i64* %eptr110459                                            ; *eptr110459 = %cont106923
  store i64 %Uyf$args, i64* %eptr110460                                              ; *eptr110460 = %Uyf$args
  store i64 %t6g$_37foldr1, i64* %eptr110461                                         ; *eptr110461 = %t6g$_37foldr1
  store i64 %GLH$_37foldr, i64* %eptr110462                                          ; *eptr110462 = %GLH$_37foldr
  store i64 %Xl9$f, i64* %eptr110463                                                 ; *eptr110463 = %Xl9$f
  %eptr110457 = getelementptr inbounds i64, i64* %cloptr110456, i64 0                ; &cloptr110456[0]
  %f110464 = ptrtoint void(i64,i64,i64)* @lam108310 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110464, i64* %eptr110457                                               ; store fptr
  %arg107639 = ptrtoint i64* %cloptr110456 to i64                                    ; closure cast; i64* -> i64
  %arg107638 = add i64 0, 0                                                          ; quoted ()
  %cloptr110465 = inttoptr i64 %arg107639 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110465)                                       ; assert function application
  %i0ptr110466 = getelementptr inbounds i64, i64* %cloptr110465, i64 0               ; &cloptr110465[0]
  %f110468 = load i64, i64* %i0ptr110466, align 8                                    ; load; *i0ptr110466
  %fptr110467 = inttoptr i64 %f110468 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110467(i64 %arg107639, i64 %arg107638, i64 %retprim106943); tail call
  ret void
}


define void @lam108310(i64 %env108311, i64 %_95106925, i64 %VUe$acc) {
  %envptr110469 = inttoptr i64 %env108311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110470 = getelementptr inbounds i64, i64* %envptr110469, i64 6              ; &envptr110469[6]
  %Xl9$f = load i64, i64* %envptr110470, align 8                                     ; load; *envptr110470
  %envptr110471 = inttoptr i64 %env108311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110472 = getelementptr inbounds i64, i64* %envptr110471, i64 5              ; &envptr110471[5]
  %GLH$_37foldr = load i64, i64* %envptr110472, align 8                              ; load; *envptr110472
  %envptr110473 = inttoptr i64 %env108311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110474 = getelementptr inbounds i64, i64* %envptr110473, i64 4              ; &envptr110473[4]
  %t6g$_37foldr1 = load i64, i64* %envptr110474, align 8                             ; load; *envptr110474
  %envptr110475 = inttoptr i64 %env108311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110476 = getelementptr inbounds i64, i64* %envptr110475, i64 3              ; &envptr110475[3]
  %Uyf$args = load i64, i64* %envptr110476, align 8                                  ; load; *envptr110476
  %envptr110477 = inttoptr i64 %env108311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110478 = getelementptr inbounds i64, i64* %envptr110477, i64 2              ; &envptr110477[2]
  %cont106923 = load i64, i64* %envptr110478, align 8                                ; load; *envptr110478
  %envptr110479 = inttoptr i64 %env108311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110480 = getelementptr inbounds i64, i64* %envptr110479, i64 1              ; &envptr110479[1]
  %oFV$_37map1 = load i64, i64* %envptr110480, align 8                               ; load; *envptr110480
  %a106692 = call i64 @prim_cdr(i64 %Uyf$args)                                       ; call prim_cdr
  %retprim106942 = call i64 @prim_cdr(i64 %a106692)                                  ; call prim_cdr
  %cloptr110481 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr110483 = getelementptr inbounds i64, i64* %cloptr110481, i64 1                ; &eptr110483[1]
  %eptr110484 = getelementptr inbounds i64, i64* %cloptr110481, i64 2                ; &eptr110484[2]
  %eptr110485 = getelementptr inbounds i64, i64* %cloptr110481, i64 3                ; &eptr110485[3]
  %eptr110486 = getelementptr inbounds i64, i64* %cloptr110481, i64 4                ; &eptr110486[4]
  %eptr110487 = getelementptr inbounds i64, i64* %cloptr110481, i64 5                ; &eptr110487[5]
  %eptr110488 = getelementptr inbounds i64, i64* %cloptr110481, i64 6                ; &eptr110488[6]
  store i64 %oFV$_37map1, i64* %eptr110483                                           ; *eptr110483 = %oFV$_37map1
  store i64 %VUe$acc, i64* %eptr110484                                               ; *eptr110484 = %VUe$acc
  store i64 %cont106923, i64* %eptr110485                                            ; *eptr110485 = %cont106923
  store i64 %t6g$_37foldr1, i64* %eptr110486                                         ; *eptr110486 = %t6g$_37foldr1
  store i64 %GLH$_37foldr, i64* %eptr110487                                          ; *eptr110487 = %GLH$_37foldr
  store i64 %Xl9$f, i64* %eptr110488                                                 ; *eptr110488 = %Xl9$f
  %eptr110482 = getelementptr inbounds i64, i64* %cloptr110481, i64 0                ; &cloptr110481[0]
  %f110489 = ptrtoint void(i64,i64,i64)* @lam108308 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110489, i64* %eptr110482                                               ; store fptr
  %arg107644 = ptrtoint i64* %cloptr110481 to i64                                    ; closure cast; i64* -> i64
  %arg107643 = add i64 0, 0                                                          ; quoted ()
  %cloptr110490 = inttoptr i64 %arg107644 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110490)                                       ; assert function application
  %i0ptr110491 = getelementptr inbounds i64, i64* %cloptr110490, i64 0               ; &cloptr110490[0]
  %f110493 = load i64, i64* %i0ptr110491, align 8                                    ; load; *i0ptr110491
  %fptr110492 = inttoptr i64 %f110493 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110492(i64 %arg107644, i64 %arg107643, i64 %retprim106942); tail call
  ret void
}


define void @lam108308(i64 %env108309, i64 %_95106926, i64 %Z3D$lsts) {
  %envptr110494 = inttoptr i64 %env108309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110495 = getelementptr inbounds i64, i64* %envptr110494, i64 6              ; &envptr110494[6]
  %Xl9$f = load i64, i64* %envptr110495, align 8                                     ; load; *envptr110495
  %envptr110496 = inttoptr i64 %env108309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110497 = getelementptr inbounds i64, i64* %envptr110496, i64 5              ; &envptr110496[5]
  %GLH$_37foldr = load i64, i64* %envptr110497, align 8                              ; load; *envptr110497
  %envptr110498 = inttoptr i64 %env108309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110499 = getelementptr inbounds i64, i64* %envptr110498, i64 4              ; &envptr110498[4]
  %t6g$_37foldr1 = load i64, i64* %envptr110499, align 8                             ; load; *envptr110499
  %envptr110500 = inttoptr i64 %env108309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110501 = getelementptr inbounds i64, i64* %envptr110500, i64 3              ; &envptr110500[3]
  %cont106923 = load i64, i64* %envptr110501, align 8                                ; load; *envptr110501
  %envptr110502 = inttoptr i64 %env108309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110503 = getelementptr inbounds i64, i64* %envptr110502, i64 2              ; &envptr110502[2]
  %VUe$acc = load i64, i64* %envptr110503, align 8                                   ; load; *envptr110503
  %envptr110504 = inttoptr i64 %env108309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110505 = getelementptr inbounds i64, i64* %envptr110504, i64 1              ; &envptr110504[1]
  %oFV$_37map1 = load i64, i64* %envptr110505, align 8                               ; load; *envptr110505
  %cloptr110506 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr110508 = getelementptr inbounds i64, i64* %cloptr110506, i64 1                ; &eptr110508[1]
  %eptr110509 = getelementptr inbounds i64, i64* %cloptr110506, i64 2                ; &eptr110509[2]
  %eptr110510 = getelementptr inbounds i64, i64* %cloptr110506, i64 3                ; &eptr110510[3]
  %eptr110511 = getelementptr inbounds i64, i64* %cloptr110506, i64 4                ; &eptr110511[4]
  %eptr110512 = getelementptr inbounds i64, i64* %cloptr110506, i64 5                ; &eptr110512[5]
  %eptr110513 = getelementptr inbounds i64, i64* %cloptr110506, i64 6                ; &eptr110513[6]
  %eptr110514 = getelementptr inbounds i64, i64* %cloptr110506, i64 7                ; &eptr110514[7]
  store i64 %oFV$_37map1, i64* %eptr110508                                           ; *eptr110508 = %oFV$_37map1
  store i64 %VUe$acc, i64* %eptr110509                                               ; *eptr110509 = %VUe$acc
  store i64 %cont106923, i64* %eptr110510                                            ; *eptr110510 = %cont106923
  store i64 %t6g$_37foldr1, i64* %eptr110511                                         ; *eptr110511 = %t6g$_37foldr1
  store i64 %GLH$_37foldr, i64* %eptr110512                                          ; *eptr110512 = %GLH$_37foldr
  store i64 %Xl9$f, i64* %eptr110513                                                 ; *eptr110513 = %Xl9$f
  store i64 %Z3D$lsts, i64* %eptr110514                                              ; *eptr110514 = %Z3D$lsts
  %eptr110507 = getelementptr inbounds i64, i64* %cloptr110506, i64 0                ; &cloptr110506[0]
  %f110515 = ptrtoint void(i64,i64)* @lam108306 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110515, i64* %eptr110507                                               ; store fptr
  %arg107648 = ptrtoint i64* %cloptr110506 to i64                                    ; closure cast; i64* -> i64
  %cloptr110516 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110517 = getelementptr inbounds i64, i64* %cloptr110516, i64 0                ; &cloptr110516[0]
  %f110518 = ptrtoint void(i64,i64)* @lam108278 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110518, i64* %eptr110517                                               ; store fptr
  %arg107647 = ptrtoint i64* %cloptr110516 to i64                                    ; closure cast; i64* -> i64
  %arg107646 = call i64 @const_init_false()                                          ; quoted #f
  %rva108051 = add i64 0, 0                                                          ; quoted ()
  %rva108050 = call i64 @prim_cons(i64 %Z3D$lsts, i64 %rva108051)                    ; call prim_cons
  %rva108049 = call i64 @prim_cons(i64 %arg107646, i64 %rva108050)                   ; call prim_cons
  %rva108048 = call i64 @prim_cons(i64 %arg107647, i64 %rva108049)                   ; call prim_cons
  %rva108047 = call i64 @prim_cons(i64 %arg107648, i64 %rva108048)                   ; call prim_cons
  %cloptr110519 = inttoptr i64 %t6g$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110519)                                       ; assert function application
  %i0ptr110520 = getelementptr inbounds i64, i64* %cloptr110519, i64 0               ; &cloptr110519[0]
  %f110522 = load i64, i64* %i0ptr110520, align 8                                    ; load; *i0ptr110520
  %fptr110521 = inttoptr i64 %f110522 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110521(i64 %t6g$_37foldr1, i64 %rva108047)          ; tail call
  ret void
}


define void @lam108306(i64 %env108307, i64 %rvp108031) {
  %envptr110523 = inttoptr i64 %env108307 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110524 = getelementptr inbounds i64, i64* %envptr110523, i64 7              ; &envptr110523[7]
  %Z3D$lsts = load i64, i64* %envptr110524, align 8                                  ; load; *envptr110524
  %envptr110525 = inttoptr i64 %env108307 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110526 = getelementptr inbounds i64, i64* %envptr110525, i64 6              ; &envptr110525[6]
  %Xl9$f = load i64, i64* %envptr110526, align 8                                     ; load; *envptr110526
  %envptr110527 = inttoptr i64 %env108307 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110528 = getelementptr inbounds i64, i64* %envptr110527, i64 5              ; &envptr110527[5]
  %GLH$_37foldr = load i64, i64* %envptr110528, align 8                              ; load; *envptr110528
  %envptr110529 = inttoptr i64 %env108307 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110530 = getelementptr inbounds i64, i64* %envptr110529, i64 4              ; &envptr110529[4]
  %t6g$_37foldr1 = load i64, i64* %envptr110530, align 8                             ; load; *envptr110530
  %envptr110531 = inttoptr i64 %env108307 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110532 = getelementptr inbounds i64, i64* %envptr110531, i64 3              ; &envptr110531[3]
  %cont106923 = load i64, i64* %envptr110532, align 8                                ; load; *envptr110532
  %envptr110533 = inttoptr i64 %env108307 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110534 = getelementptr inbounds i64, i64* %envptr110533, i64 2              ; &envptr110533[2]
  %VUe$acc = load i64, i64* %envptr110534, align 8                                   ; load; *envptr110534
  %envptr110535 = inttoptr i64 %env108307 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110536 = getelementptr inbounds i64, i64* %envptr110535, i64 1              ; &envptr110535[1]
  %oFV$_37map1 = load i64, i64* %envptr110536, align 8                               ; load; *envptr110536
  %_95106927 = call i64 @prim_car(i64 %rvp108031)                                    ; call prim_car
  %rvp108029 = call i64 @prim_cdr(i64 %rvp108031)                                    ; call prim_cdr
  %a106693 = call i64 @prim_car(i64 %rvp108029)                                      ; call prim_car
  %na107959 = call i64 @prim_cdr(i64 %rvp108029)                                     ; call prim_cdr
  %cmp110537 = icmp eq i64 %a106693, 15                                              ; false?
  br i1 %cmp110537, label %else110539, label %then110538                             ; if

then110538:
  %arg107651 = add i64 0, 0                                                          ; quoted ()
  %rva107962 = add i64 0, 0                                                          ; quoted ()
  %rva107961 = call i64 @prim_cons(i64 %VUe$acc, i64 %rva107962)                     ; call prim_cons
  %rva107960 = call i64 @prim_cons(i64 %arg107651, i64 %rva107961)                   ; call prim_cons
  %cloptr110540 = inttoptr i64 %cont106923 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110540)                                       ; assert function application
  %i0ptr110541 = getelementptr inbounds i64, i64* %cloptr110540, i64 0               ; &cloptr110540[0]
  %f110543 = load i64, i64* %i0ptr110541, align 8                                    ; load; *i0ptr110541
  %fptr110542 = inttoptr i64 %f110543 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110542(i64 %cont106923, i64 %rva107960)             ; tail call
  ret void

else110539:
  %cloptr110544 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr110546 = getelementptr inbounds i64, i64* %cloptr110544, i64 1                ; &eptr110546[1]
  %eptr110547 = getelementptr inbounds i64, i64* %cloptr110544, i64 2                ; &eptr110547[2]
  %eptr110548 = getelementptr inbounds i64, i64* %cloptr110544, i64 3                ; &eptr110548[3]
  %eptr110549 = getelementptr inbounds i64, i64* %cloptr110544, i64 4                ; &eptr110549[4]
  %eptr110550 = getelementptr inbounds i64, i64* %cloptr110544, i64 5                ; &eptr110550[5]
  %eptr110551 = getelementptr inbounds i64, i64* %cloptr110544, i64 6                ; &eptr110551[6]
  %eptr110552 = getelementptr inbounds i64, i64* %cloptr110544, i64 7                ; &eptr110552[7]
  store i64 %oFV$_37map1, i64* %eptr110546                                           ; *eptr110546 = %oFV$_37map1
  store i64 %VUe$acc, i64* %eptr110547                                               ; *eptr110547 = %VUe$acc
  store i64 %cont106923, i64* %eptr110548                                            ; *eptr110548 = %cont106923
  store i64 %t6g$_37foldr1, i64* %eptr110549                                         ; *eptr110549 = %t6g$_37foldr1
  store i64 %GLH$_37foldr, i64* %eptr110550                                          ; *eptr110550 = %GLH$_37foldr
  store i64 %Xl9$f, i64* %eptr110551                                                 ; *eptr110551 = %Xl9$f
  store i64 %Z3D$lsts, i64* %eptr110552                                              ; *eptr110552 = %Z3D$lsts
  %eptr110545 = getelementptr inbounds i64, i64* %cloptr110544, i64 0                ; &cloptr110544[0]
  %f110553 = ptrtoint void(i64,i64)* @lam108304 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110553, i64* %eptr110545                                               ; store fptr
  %arg107655 = ptrtoint i64* %cloptr110544 to i64                                    ; closure cast; i64* -> i64
  %cloptr110554 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110555 = getelementptr inbounds i64, i64* %cloptr110554, i64 0                ; &cloptr110554[0]
  %f110556 = ptrtoint void(i64,i64)* @lam108285 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110556, i64* %eptr110555                                               ; store fptr
  %arg107654 = ptrtoint i64* %cloptr110554 to i64                                    ; closure cast; i64* -> i64
  %rva108028 = add i64 0, 0                                                          ; quoted ()
  %rva108027 = call i64 @prim_cons(i64 %Z3D$lsts, i64 %rva108028)                    ; call prim_cons
  %rva108026 = call i64 @prim_cons(i64 %arg107654, i64 %rva108027)                   ; call prim_cons
  %rva108025 = call i64 @prim_cons(i64 %arg107655, i64 %rva108026)                   ; call prim_cons
  %cloptr110557 = inttoptr i64 %oFV$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110557)                                       ; assert function application
  %i0ptr110558 = getelementptr inbounds i64, i64* %cloptr110557, i64 0               ; &cloptr110557[0]
  %f110560 = load i64, i64* %i0ptr110558, align 8                                    ; load; *i0ptr110558
  %fptr110559 = inttoptr i64 %f110560 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110559(i64 %oFV$_37map1, i64 %rva108025)            ; tail call
  ret void
}


define void @lam108304(i64 %env108305, i64 %rvp108014) {
  %envptr110561 = inttoptr i64 %env108305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110562 = getelementptr inbounds i64, i64* %envptr110561, i64 7              ; &envptr110561[7]
  %Z3D$lsts = load i64, i64* %envptr110562, align 8                                  ; load; *envptr110562
  %envptr110563 = inttoptr i64 %env108305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110564 = getelementptr inbounds i64, i64* %envptr110563, i64 6              ; &envptr110563[6]
  %Xl9$f = load i64, i64* %envptr110564, align 8                                     ; load; *envptr110564
  %envptr110565 = inttoptr i64 %env108305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110566 = getelementptr inbounds i64, i64* %envptr110565, i64 5              ; &envptr110565[5]
  %GLH$_37foldr = load i64, i64* %envptr110566, align 8                              ; load; *envptr110566
  %envptr110567 = inttoptr i64 %env108305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110568 = getelementptr inbounds i64, i64* %envptr110567, i64 4              ; &envptr110567[4]
  %t6g$_37foldr1 = load i64, i64* %envptr110568, align 8                             ; load; *envptr110568
  %envptr110569 = inttoptr i64 %env108305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110570 = getelementptr inbounds i64, i64* %envptr110569, i64 3              ; &envptr110569[3]
  %cont106923 = load i64, i64* %envptr110570, align 8                                ; load; *envptr110570
  %envptr110571 = inttoptr i64 %env108305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110572 = getelementptr inbounds i64, i64* %envptr110571, i64 2              ; &envptr110571[2]
  %VUe$acc = load i64, i64* %envptr110572, align 8                                   ; load; *envptr110572
  %envptr110573 = inttoptr i64 %env108305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110574 = getelementptr inbounds i64, i64* %envptr110573, i64 1              ; &envptr110573[1]
  %oFV$_37map1 = load i64, i64* %envptr110574, align 8                               ; load; *envptr110574
  %_95106928 = call i64 @prim_car(i64 %rvp108014)                                    ; call prim_car
  %rvp108012 = call i64 @prim_cdr(i64 %rvp108014)                                    ; call prim_cdr
  %iMX$lsts_43 = call i64 @prim_car(i64 %rvp108012)                                  ; call prim_car
  %na107964 = call i64 @prim_cdr(i64 %rvp108012)                                     ; call prim_cdr
  %cloptr110575 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr110577 = getelementptr inbounds i64, i64* %cloptr110575, i64 1                ; &eptr110577[1]
  %eptr110578 = getelementptr inbounds i64, i64* %cloptr110575, i64 2                ; &eptr110578[2]
  %eptr110579 = getelementptr inbounds i64, i64* %cloptr110575, i64 3                ; &eptr110579[3]
  %eptr110580 = getelementptr inbounds i64, i64* %cloptr110575, i64 4                ; &eptr110580[4]
  %eptr110581 = getelementptr inbounds i64, i64* %cloptr110575, i64 5                ; &eptr110581[5]
  %eptr110582 = getelementptr inbounds i64, i64* %cloptr110575, i64 6                ; &eptr110582[6]
  store i64 %VUe$acc, i64* %eptr110577                                               ; *eptr110577 = %VUe$acc
  store i64 %cont106923, i64* %eptr110578                                            ; *eptr110578 = %cont106923
  store i64 %t6g$_37foldr1, i64* %eptr110579                                         ; *eptr110579 = %t6g$_37foldr1
  store i64 %GLH$_37foldr, i64* %eptr110580                                          ; *eptr110580 = %GLH$_37foldr
  store i64 %Xl9$f, i64* %eptr110581                                                 ; *eptr110581 = %Xl9$f
  store i64 %iMX$lsts_43, i64* %eptr110582                                           ; *eptr110582 = %iMX$lsts_43
  %eptr110576 = getelementptr inbounds i64, i64* %cloptr110575, i64 0                ; &cloptr110575[0]
  %f110583 = ptrtoint void(i64,i64)* @lam108302 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110583, i64* %eptr110576                                               ; store fptr
  %arg107659 = ptrtoint i64* %cloptr110575 to i64                                    ; closure cast; i64* -> i64
  %cloptr110584 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110585 = getelementptr inbounds i64, i64* %cloptr110584, i64 0                ; &cloptr110584[0]
  %f110586 = ptrtoint void(i64,i64)* @lam108290 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110586, i64* %eptr110585                                               ; store fptr
  %arg107658 = ptrtoint i64* %cloptr110584 to i64                                    ; closure cast; i64* -> i64
  %rva108011 = add i64 0, 0                                                          ; quoted ()
  %rva108010 = call i64 @prim_cons(i64 %Z3D$lsts, i64 %rva108011)                    ; call prim_cons
  %rva108009 = call i64 @prim_cons(i64 %arg107658, i64 %rva108010)                   ; call prim_cons
  %rva108008 = call i64 @prim_cons(i64 %arg107659, i64 %rva108009)                   ; call prim_cons
  %cloptr110587 = inttoptr i64 %oFV$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110587)                                       ; assert function application
  %i0ptr110588 = getelementptr inbounds i64, i64* %cloptr110587, i64 0               ; &cloptr110587[0]
  %f110590 = load i64, i64* %i0ptr110588, align 8                                    ; load; *i0ptr110588
  %fptr110589 = inttoptr i64 %f110590 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110589(i64 %oFV$_37map1, i64 %rva108008)            ; tail call
  ret void
}


define void @lam108302(i64 %env108303, i64 %rvp107997) {
  %envptr110591 = inttoptr i64 %env108303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110592 = getelementptr inbounds i64, i64* %envptr110591, i64 6              ; &envptr110591[6]
  %iMX$lsts_43 = load i64, i64* %envptr110592, align 8                               ; load; *envptr110592
  %envptr110593 = inttoptr i64 %env108303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110594 = getelementptr inbounds i64, i64* %envptr110593, i64 5              ; &envptr110593[5]
  %Xl9$f = load i64, i64* %envptr110594, align 8                                     ; load; *envptr110594
  %envptr110595 = inttoptr i64 %env108303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110596 = getelementptr inbounds i64, i64* %envptr110595, i64 4              ; &envptr110595[4]
  %GLH$_37foldr = load i64, i64* %envptr110596, align 8                              ; load; *envptr110596
  %envptr110597 = inttoptr i64 %env108303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110598 = getelementptr inbounds i64, i64* %envptr110597, i64 3              ; &envptr110597[3]
  %t6g$_37foldr1 = load i64, i64* %envptr110598, align 8                             ; load; *envptr110598
  %envptr110599 = inttoptr i64 %env108303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110600 = getelementptr inbounds i64, i64* %envptr110599, i64 2              ; &envptr110599[2]
  %cont106923 = load i64, i64* %envptr110600, align 8                                ; load; *envptr110600
  %envptr110601 = inttoptr i64 %env108303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110602 = getelementptr inbounds i64, i64* %envptr110601, i64 1              ; &envptr110601[1]
  %VUe$acc = load i64, i64* %envptr110602, align 8                                   ; load; *envptr110602
  %_95106929 = call i64 @prim_car(i64 %rvp107997)                                    ; call prim_car
  %rvp107995 = call i64 @prim_cdr(i64 %rvp107997)                                    ; call prim_cdr
  %nu3$vs = call i64 @prim_car(i64 %rvp107995)                                       ; call prim_car
  %na107966 = call i64 @prim_cdr(i64 %rvp107995)                                     ; call prim_cdr
  %a106694 = call i64 @prim_cons(i64 %VUe$acc, i64 %iMX$lsts_43)                     ; call prim_cons
  %a106695 = call i64 @prim_cons(i64 %Xl9$f, i64 %a106694)                           ; call prim_cons
  %cloptr110603 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110605 = getelementptr inbounds i64, i64* %cloptr110603, i64 1                ; &eptr110605[1]
  %eptr110606 = getelementptr inbounds i64, i64* %cloptr110603, i64 2                ; &eptr110606[2]
  %eptr110607 = getelementptr inbounds i64, i64* %cloptr110603, i64 3                ; &eptr110607[3]
  %eptr110608 = getelementptr inbounds i64, i64* %cloptr110603, i64 4                ; &eptr110608[4]
  store i64 %cont106923, i64* %eptr110605                                            ; *eptr110605 = %cont106923
  store i64 %nu3$vs, i64* %eptr110606                                                ; *eptr110606 = %nu3$vs
  store i64 %t6g$_37foldr1, i64* %eptr110607                                         ; *eptr110607 = %t6g$_37foldr1
  store i64 %Xl9$f, i64* %eptr110608                                                 ; *eptr110608 = %Xl9$f
  %eptr110604 = getelementptr inbounds i64, i64* %cloptr110603, i64 0                ; &cloptr110603[0]
  %f110609 = ptrtoint void(i64,i64)* @lam108300 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110609, i64* %eptr110604                                               ; store fptr
  %arg107666 = ptrtoint i64* %cloptr110603 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst106935 = call i64 @prim_cons(i64 %arg107666, i64 %a106695)               ; call prim_cons
  %cloptr110610 = inttoptr i64 %GLH$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110610)                                       ; assert function application
  %i0ptr110611 = getelementptr inbounds i64, i64* %cloptr110610, i64 0               ; &cloptr110610[0]
  %f110613 = load i64, i64* %i0ptr110611, align 8                                    ; load; *i0ptr110611
  %fptr110612 = inttoptr i64 %f110613 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110612(i64 %GLH$_37foldr, i64 %cps_45lst106935)     ; tail call
  ret void
}


define void @lam108300(i64 %env108301, i64 %rvp107993) {
  %envptr110614 = inttoptr i64 %env108301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110615 = getelementptr inbounds i64, i64* %envptr110614, i64 4              ; &envptr110614[4]
  %Xl9$f = load i64, i64* %envptr110615, align 8                                     ; load; *envptr110615
  %envptr110616 = inttoptr i64 %env108301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110617 = getelementptr inbounds i64, i64* %envptr110616, i64 3              ; &envptr110616[3]
  %t6g$_37foldr1 = load i64, i64* %envptr110617, align 8                             ; load; *envptr110617
  %envptr110618 = inttoptr i64 %env108301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110619 = getelementptr inbounds i64, i64* %envptr110618, i64 2              ; &envptr110618[2]
  %nu3$vs = load i64, i64* %envptr110619, align 8                                    ; load; *envptr110619
  %envptr110620 = inttoptr i64 %env108301 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110621 = getelementptr inbounds i64, i64* %envptr110620, i64 1              ; &envptr110620[1]
  %cont106923 = load i64, i64* %envptr110621, align 8                                ; load; *envptr110621
  %_95106930 = call i64 @prim_car(i64 %rvp107993)                                    ; call prim_car
  %rvp107991 = call i64 @prim_cdr(i64 %rvp107993)                                    ; call prim_cdr
  %a106696 = call i64 @prim_car(i64 %rvp107991)                                      ; call prim_car
  %na107968 = call i64 @prim_cdr(i64 %rvp107991)                                     ; call prim_cdr
  %arg107667 = add i64 0, 0                                                          ; quoted ()
  %a106697 = call i64 @prim_cons(i64 %a106696, i64 %arg107667)                       ; call prim_cons
  %cloptr110622 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr110624 = getelementptr inbounds i64, i64* %cloptr110622, i64 1                ; &eptr110624[1]
  %eptr110625 = getelementptr inbounds i64, i64* %cloptr110622, i64 2                ; &eptr110625[2]
  store i64 %cont106923, i64* %eptr110624                                            ; *eptr110624 = %cont106923
  store i64 %Xl9$f, i64* %eptr110625                                                 ; *eptr110625 = %Xl9$f
  %eptr110623 = getelementptr inbounds i64, i64* %cloptr110622, i64 0                ; &cloptr110622[0]
  %f110626 = ptrtoint void(i64,i64)* @lam108297 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110626, i64* %eptr110623                                               ; store fptr
  %arg107672 = ptrtoint i64* %cloptr110622 to i64                                    ; closure cast; i64* -> i64
  %cloptr110627 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr110628 = getelementptr inbounds i64, i64* %cloptr110627, i64 0                ; &cloptr110627[0]
  %f110629 = ptrtoint void(i64,i64)* @lam108295 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110629, i64* %eptr110628                                               ; store fptr
  %arg107671 = ptrtoint i64* %cloptr110627 to i64                                    ; closure cast; i64* -> i64
  %rva107990 = add i64 0, 0                                                          ; quoted ()
  %rva107989 = call i64 @prim_cons(i64 %nu3$vs, i64 %rva107990)                      ; call prim_cons
  %rva107988 = call i64 @prim_cons(i64 %a106697, i64 %rva107989)                     ; call prim_cons
  %rva107987 = call i64 @prim_cons(i64 %arg107671, i64 %rva107988)                   ; call prim_cons
  %rva107986 = call i64 @prim_cons(i64 %arg107672, i64 %rva107987)                   ; call prim_cons
  %cloptr110630 = inttoptr i64 %t6g$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110630)                                       ; assert function application
  %i0ptr110631 = getelementptr inbounds i64, i64* %cloptr110630, i64 0               ; &cloptr110630[0]
  %f110633 = load i64, i64* %i0ptr110631, align 8                                    ; load; *i0ptr110631
  %fptr110632 = inttoptr i64 %f110633 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110632(i64 %t6g$_37foldr1, i64 %rva107986)          ; tail call
  ret void
}


define void @lam108297(i64 %env108298, i64 %rvp107973) {
  %envptr110634 = inttoptr i64 %env108298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110635 = getelementptr inbounds i64, i64* %envptr110634, i64 2              ; &envptr110634[2]
  %Xl9$f = load i64, i64* %envptr110635, align 8                                     ; load; *envptr110635
  %envptr110636 = inttoptr i64 %env108298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110637 = getelementptr inbounds i64, i64* %envptr110636, i64 1              ; &envptr110636[1]
  %cont106923 = load i64, i64* %envptr110637, align 8                                ; load; *envptr110637
  %_95106931 = call i64 @prim_car(i64 %rvp107973)                                    ; call prim_car
  %rvp107971 = call i64 @prim_cdr(i64 %rvp107973)                                    ; call prim_cdr
  %a106698 = call i64 @prim_car(i64 %rvp107971)                                      ; call prim_car
  %na107970 = call i64 @prim_cdr(i64 %rvp107971)                                     ; call prim_cdr
  %cps_45lst106932 = call i64 @prim_cons(i64 %cont106923, i64 %a106698)              ; call prim_cons
  %cloptr110638 = inttoptr i64 %Xl9$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110638)                                       ; assert function application
  %i0ptr110639 = getelementptr inbounds i64, i64* %cloptr110638, i64 0               ; &cloptr110638[0]
  %f110641 = load i64, i64* %i0ptr110639, align 8                                    ; load; *i0ptr110639
  %fptr110640 = inttoptr i64 %f110641 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110640(i64 %Xl9$f, i64 %cps_45lst106932)            ; tail call
  ret void
}


define void @lam108295(i64 %env108296, i64 %rvp107984) {
  %cont106933 = call i64 @prim_car(i64 %rvp107984)                                   ; call prim_car
  %rvp107982 = call i64 @prim_cdr(i64 %rvp107984)                                    ; call prim_cdr
  %QdL$a = call i64 @prim_car(i64 %rvp107982)                                        ; call prim_car
  %rvp107980 = call i64 @prim_cdr(i64 %rvp107982)                                    ; call prim_cdr
  %idH$b = call i64 @prim_car(i64 %rvp107980)                                        ; call prim_car
  %na107976 = call i64 @prim_cdr(i64 %rvp107980)                                     ; call prim_cdr
  %retprim106934 = call i64 @prim_cons(i64 %QdL$a, i64 %idH$b)                       ; call prim_cons
  %arg107679 = add i64 0, 0                                                          ; quoted ()
  %rva107979 = add i64 0, 0                                                          ; quoted ()
  %rva107978 = call i64 @prim_cons(i64 %retprim106934, i64 %rva107979)               ; call prim_cons
  %rva107977 = call i64 @prim_cons(i64 %arg107679, i64 %rva107978)                   ; call prim_cons
  %cloptr110642 = inttoptr i64 %cont106933 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110642)                                       ; assert function application
  %i0ptr110643 = getelementptr inbounds i64, i64* %cloptr110642, i64 0               ; &cloptr110642[0]
  %f110645 = load i64, i64* %i0ptr110643, align 8                                    ; load; *i0ptr110643
  %fptr110644 = inttoptr i64 %f110645 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110644(i64 %cont106933, i64 %rva107977)             ; tail call
  ret void
}


define void @lam108290(i64 %env108291, i64 %rvp108006) {
  %cont106936 = call i64 @prim_car(i64 %rvp108006)                                   ; call prim_car
  %rvp108004 = call i64 @prim_cdr(i64 %rvp108006)                                    ; call prim_cdr
  %tnv$x = call i64 @prim_car(i64 %rvp108004)                                        ; call prim_car
  %na108000 = call i64 @prim_cdr(i64 %rvp108004)                                     ; call prim_cdr
  %retprim106937 = call i64 @prim_car(i64 %tnv$x)                                    ; call prim_car
  %arg107683 = add i64 0, 0                                                          ; quoted ()
  %rva108003 = add i64 0, 0                                                          ; quoted ()
  %rva108002 = call i64 @prim_cons(i64 %retprim106937, i64 %rva108003)               ; call prim_cons
  %rva108001 = call i64 @prim_cons(i64 %arg107683, i64 %rva108002)                   ; call prim_cons
  %cloptr110646 = inttoptr i64 %cont106936 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110646)                                       ; assert function application
  %i0ptr110647 = getelementptr inbounds i64, i64* %cloptr110646, i64 0               ; &cloptr110646[0]
  %f110649 = load i64, i64* %i0ptr110647, align 8                                    ; load; *i0ptr110647
  %fptr110648 = inttoptr i64 %f110649 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110648(i64 %cont106936, i64 %rva108001)             ; tail call
  ret void
}


define void @lam108285(i64 %env108286, i64 %rvp108023) {
  %cont106938 = call i64 @prim_car(i64 %rvp108023)                                   ; call prim_car
  %rvp108021 = call i64 @prim_cdr(i64 %rvp108023)                                    ; call prim_cdr
  %MAO$x = call i64 @prim_car(i64 %rvp108021)                                        ; call prim_car
  %na108017 = call i64 @prim_cdr(i64 %rvp108021)                                     ; call prim_cdr
  %retprim106939 = call i64 @prim_cdr(i64 %MAO$x)                                    ; call prim_cdr
  %arg107687 = add i64 0, 0                                                          ; quoted ()
  %rva108020 = add i64 0, 0                                                          ; quoted ()
  %rva108019 = call i64 @prim_cons(i64 %retprim106939, i64 %rva108020)               ; call prim_cons
  %rva108018 = call i64 @prim_cons(i64 %arg107687, i64 %rva108019)                   ; call prim_cons
  %cloptr110650 = inttoptr i64 %cont106938 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110650)                                       ; assert function application
  %i0ptr110651 = getelementptr inbounds i64, i64* %cloptr110650, i64 0               ; &cloptr110650[0]
  %f110653 = load i64, i64* %i0ptr110651, align 8                                    ; load; *i0ptr110651
  %fptr110652 = inttoptr i64 %f110653 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110652(i64 %cont106938, i64 %rva108018)             ; tail call
  ret void
}


define void @lam108278(i64 %env108279, i64 %rvp108045) {
  %cont106940 = call i64 @prim_car(i64 %rvp108045)                                   ; call prim_car
  %rvp108043 = call i64 @prim_cdr(i64 %rvp108045)                                    ; call prim_cdr
  %HcT$lst = call i64 @prim_car(i64 %rvp108043)                                      ; call prim_car
  %rvp108041 = call i64 @prim_cdr(i64 %rvp108043)                                    ; call prim_cdr
  %vm3$b = call i64 @prim_car(i64 %rvp108041)                                        ; call prim_car
  %na108034 = call i64 @prim_cdr(i64 %rvp108041)                                     ; call prim_cdr
  %cmp110654 = icmp eq i64 %vm3$b, 15                                                ; false?
  br i1 %cmp110654, label %else110656, label %then110655                             ; if

then110655:
  %arg107690 = add i64 0, 0                                                          ; quoted ()
  %rva108037 = add i64 0, 0                                                          ; quoted ()
  %rva108036 = call i64 @prim_cons(i64 %vm3$b, i64 %rva108037)                       ; call prim_cons
  %rva108035 = call i64 @prim_cons(i64 %arg107690, i64 %rva108036)                   ; call prim_cons
  %cloptr110657 = inttoptr i64 %cont106940 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110657)                                       ; assert function application
  %i0ptr110658 = getelementptr inbounds i64, i64* %cloptr110657, i64 0               ; &cloptr110657[0]
  %f110660 = load i64, i64* %i0ptr110658, align 8                                    ; load; *i0ptr110658
  %fptr110659 = inttoptr i64 %f110660 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110659(i64 %cont106940, i64 %rva108035)             ; tail call
  ret void

else110656:
  %retprim106941 = call i64 @prim_null_63(i64 %HcT$lst)                              ; call prim_null_63
  %arg107694 = add i64 0, 0                                                          ; quoted ()
  %rva108040 = add i64 0, 0                                                          ; quoted ()
  %rva108039 = call i64 @prim_cons(i64 %retprim106941, i64 %rva108040)               ; call prim_cons
  %rva108038 = call i64 @prim_cons(i64 %arg107694, i64 %rva108039)                   ; call prim_cons
  %cloptr110661 = inttoptr i64 %cont106940 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110661)                                       ; assert function application
  %i0ptr110662 = getelementptr inbounds i64, i64* %cloptr110661, i64 0               ; &cloptr110661[0]
  %f110664 = load i64, i64* %i0ptr110662, align 8                                    ; load; *i0ptr110662
  %fptr110663 = inttoptr i64 %f110664 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110663(i64 %cont106940, i64 %rva108038)             ; tail call
  ret void
}


define void @lam108268(i64 %env108269, i64 %cont106944, i64 %jxS$_37foldl1) {
  %arg107697 = add i64 0, 0                                                          ; quoted ()
  %cloptr110665 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr110667 = getelementptr inbounds i64, i64* %cloptr110665, i64 1                ; &eptr110667[1]
  store i64 %jxS$_37foldl1, i64* %eptr110667                                         ; *eptr110667 = %jxS$_37foldl1
  %eptr110666 = getelementptr inbounds i64, i64* %cloptr110665, i64 0                ; &cloptr110665[0]
  %f110668 = ptrtoint void(i64,i64)* @lam108265 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110668, i64* %eptr110666                                               ; store fptr
  %arg107696 = ptrtoint i64* %cloptr110665 to i64                                    ; closure cast; i64* -> i64
  %cloptr110669 = inttoptr i64 %cont106944 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110669)                                       ; assert function application
  %i0ptr110670 = getelementptr inbounds i64, i64* %cloptr110669, i64 0               ; &cloptr110669[0]
  %f110672 = load i64, i64* %i0ptr110670, align 8                                    ; load; *i0ptr110670
  %fptr110671 = inttoptr i64 %f110672 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110671(i64 %cont106944, i64 %arg107697, i64 %arg107696); tail call
  ret void
}


define void @lam108265(i64 %env108266, i64 %rvp108078) {
  %envptr110673 = inttoptr i64 %env108266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110674 = getelementptr inbounds i64, i64* %envptr110673, i64 1              ; &envptr110673[1]
  %jxS$_37foldl1 = load i64, i64* %envptr110674, align 8                             ; load; *envptr110674
  %cont106945 = call i64 @prim_car(i64 %rvp108078)                                   ; call prim_car
  %rvp108076 = call i64 @prim_cdr(i64 %rvp108078)                                    ; call prim_cdr
  %xgo$f = call i64 @prim_car(i64 %rvp108076)                                        ; call prim_car
  %rvp108074 = call i64 @prim_cdr(i64 %rvp108076)                                    ; call prim_cdr
  %T2w$acc = call i64 @prim_car(i64 %rvp108074)                                      ; call prim_car
  %rvp108072 = call i64 @prim_cdr(i64 %rvp108074)                                    ; call prim_cdr
  %F6N$lst = call i64 @prim_car(i64 %rvp108072)                                      ; call prim_car
  %na108053 = call i64 @prim_cdr(i64 %rvp108072)                                     ; call prim_cdr
  %a106685 = call i64 @prim_null_63(i64 %F6N$lst)                                    ; call prim_null_63
  %cmp110675 = icmp eq i64 %a106685, 15                                              ; false?
  br i1 %cmp110675, label %else110677, label %then110676                             ; if

then110676:
  %arg107701 = add i64 0, 0                                                          ; quoted ()
  %rva108056 = add i64 0, 0                                                          ; quoted ()
  %rva108055 = call i64 @prim_cons(i64 %T2w$acc, i64 %rva108056)                     ; call prim_cons
  %rva108054 = call i64 @prim_cons(i64 %arg107701, i64 %rva108055)                   ; call prim_cons
  %cloptr110678 = inttoptr i64 %cont106945 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110678)                                       ; assert function application
  %i0ptr110679 = getelementptr inbounds i64, i64* %cloptr110678, i64 0               ; &cloptr110678[0]
  %f110681 = load i64, i64* %i0ptr110679, align 8                                    ; load; *i0ptr110679
  %fptr110680 = inttoptr i64 %f110681 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110680(i64 %cont106945, i64 %rva108054)             ; tail call
  ret void

else110677:
  %a106686 = call i64 @prim_car(i64 %F6N$lst)                                        ; call prim_car
  %cloptr110682 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110684 = getelementptr inbounds i64, i64* %cloptr110682, i64 1                ; &eptr110684[1]
  %eptr110685 = getelementptr inbounds i64, i64* %cloptr110682, i64 2                ; &eptr110685[2]
  %eptr110686 = getelementptr inbounds i64, i64* %cloptr110682, i64 3                ; &eptr110686[3]
  %eptr110687 = getelementptr inbounds i64, i64* %cloptr110682, i64 4                ; &eptr110687[4]
  store i64 %jxS$_37foldl1, i64* %eptr110684                                         ; *eptr110684 = %jxS$_37foldl1
  store i64 %xgo$f, i64* %eptr110685                                                 ; *eptr110685 = %xgo$f
  store i64 %F6N$lst, i64* %eptr110686                                               ; *eptr110686 = %F6N$lst
  store i64 %cont106945, i64* %eptr110687                                            ; *eptr110687 = %cont106945
  %eptr110683 = getelementptr inbounds i64, i64* %cloptr110682, i64 0                ; &cloptr110682[0]
  %f110688 = ptrtoint void(i64,i64)* @lam108263 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110688, i64* %eptr110683                                               ; store fptr
  %arg107706 = ptrtoint i64* %cloptr110682 to i64                                    ; closure cast; i64* -> i64
  %rva108071 = add i64 0, 0                                                          ; quoted ()
  %rva108070 = call i64 @prim_cons(i64 %T2w$acc, i64 %rva108071)                     ; call prim_cons
  %rva108069 = call i64 @prim_cons(i64 %a106686, i64 %rva108070)                     ; call prim_cons
  %rva108068 = call i64 @prim_cons(i64 %arg107706, i64 %rva108069)                   ; call prim_cons
  %cloptr110689 = inttoptr i64 %xgo$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110689)                                       ; assert function application
  %i0ptr110690 = getelementptr inbounds i64, i64* %cloptr110689, i64 0               ; &cloptr110689[0]
  %f110692 = load i64, i64* %i0ptr110690, align 8                                    ; load; *i0ptr110690
  %fptr110691 = inttoptr i64 %f110692 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110691(i64 %xgo$f, i64 %rva108068)                  ; tail call
  ret void
}


define void @lam108263(i64 %env108264, i64 %rvp108066) {
  %envptr110693 = inttoptr i64 %env108264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110694 = getelementptr inbounds i64, i64* %envptr110693, i64 4              ; &envptr110693[4]
  %cont106945 = load i64, i64* %envptr110694, align 8                                ; load; *envptr110694
  %envptr110695 = inttoptr i64 %env108264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110696 = getelementptr inbounds i64, i64* %envptr110695, i64 3              ; &envptr110695[3]
  %F6N$lst = load i64, i64* %envptr110696, align 8                                   ; load; *envptr110696
  %envptr110697 = inttoptr i64 %env108264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110698 = getelementptr inbounds i64, i64* %envptr110697, i64 2              ; &envptr110697[2]
  %xgo$f = load i64, i64* %envptr110698, align 8                                     ; load; *envptr110698
  %envptr110699 = inttoptr i64 %env108264 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110700 = getelementptr inbounds i64, i64* %envptr110699, i64 1              ; &envptr110699[1]
  %jxS$_37foldl1 = load i64, i64* %envptr110700, align 8                             ; load; *envptr110700
  %_95106946 = call i64 @prim_car(i64 %rvp108066)                                    ; call prim_car
  %rvp108064 = call i64 @prim_cdr(i64 %rvp108066)                                    ; call prim_cdr
  %a106687 = call i64 @prim_car(i64 %rvp108064)                                      ; call prim_car
  %na108058 = call i64 @prim_cdr(i64 %rvp108064)                                     ; call prim_cdr
  %a106688 = call i64 @prim_cdr(i64 %F6N$lst)                                        ; call prim_cdr
  %rva108063 = add i64 0, 0                                                          ; quoted ()
  %rva108062 = call i64 @prim_cons(i64 %a106688, i64 %rva108063)                     ; call prim_cons
  %rva108061 = call i64 @prim_cons(i64 %a106687, i64 %rva108062)                     ; call prim_cons
  %rva108060 = call i64 @prim_cons(i64 %xgo$f, i64 %rva108061)                       ; call prim_cons
  %rva108059 = call i64 @prim_cons(i64 %cont106945, i64 %rva108060)                  ; call prim_cons
  %cloptr110701 = inttoptr i64 %jxS$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110701)                                       ; assert function application
  %i0ptr110702 = getelementptr inbounds i64, i64* %cloptr110701, i64 0               ; &cloptr110701[0]
  %f110704 = load i64, i64* %i0ptr110702, align 8                                    ; load; *i0ptr110702
  %fptr110703 = inttoptr i64 %f110704 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110703(i64 %jxS$_37foldl1, i64 %rva108059)          ; tail call
  ret void
}


define void @lam108257(i64 %env108258, i64 %cont106947, i64 %DrJ$_37length) {
  %arg107715 = add i64 0, 0                                                          ; quoted ()
  %cloptr110705 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr110707 = getelementptr inbounds i64, i64* %cloptr110705, i64 1                ; &eptr110707[1]
  store i64 %DrJ$_37length, i64* %eptr110707                                         ; *eptr110707 = %DrJ$_37length
  %eptr110706 = getelementptr inbounds i64, i64* %cloptr110705, i64 0                ; &cloptr110705[0]
  %f110708 = ptrtoint void(i64,i64)* @lam108254 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110708, i64* %eptr110706                                               ; store fptr
  %arg107714 = ptrtoint i64* %cloptr110705 to i64                                    ; closure cast; i64* -> i64
  %cloptr110709 = inttoptr i64 %cont106947 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110709)                                       ; assert function application
  %i0ptr110710 = getelementptr inbounds i64, i64* %cloptr110709, i64 0               ; &cloptr110709[0]
  %f110712 = load i64, i64* %i0ptr110710, align 8                                    ; load; *i0ptr110710
  %fptr110711 = inttoptr i64 %f110712 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110711(i64 %cont106947, i64 %arg107715, i64 %arg107714); tail call
  ret void
}


define void @lam108254(i64 %env108255, i64 %rvp108099) {
  %envptr110713 = inttoptr i64 %env108255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110714 = getelementptr inbounds i64, i64* %envptr110713, i64 1              ; &envptr110713[1]
  %DrJ$_37length = load i64, i64* %envptr110714, align 8                             ; load; *envptr110714
  %cont106948 = call i64 @prim_car(i64 %rvp108099)                                   ; call prim_car
  %rvp108097 = call i64 @prim_cdr(i64 %rvp108099)                                    ; call prim_cdr
  %sUU$lst = call i64 @prim_car(i64 %rvp108097)                                      ; call prim_car
  %na108081 = call i64 @prim_cdr(i64 %rvp108097)                                     ; call prim_cdr
  %a106682 = call i64 @prim_null_63(i64 %sUU$lst)                                    ; call prim_null_63
  %cmp110715 = icmp eq i64 %a106682, 15                                              ; false?
  br i1 %cmp110715, label %else110717, label %then110716                             ; if

then110716:
  %arg107719 = add i64 0, 0                                                          ; quoted ()
  %arg107718 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %rva108084 = add i64 0, 0                                                          ; quoted ()
  %rva108083 = call i64 @prim_cons(i64 %arg107718, i64 %rva108084)                   ; call prim_cons
  %rva108082 = call i64 @prim_cons(i64 %arg107719, i64 %rva108083)                   ; call prim_cons
  %cloptr110718 = inttoptr i64 %cont106948 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110718)                                       ; assert function application
  %i0ptr110719 = getelementptr inbounds i64, i64* %cloptr110718, i64 0               ; &cloptr110718[0]
  %f110721 = load i64, i64* %i0ptr110719, align 8                                    ; load; *i0ptr110719
  %fptr110720 = inttoptr i64 %f110721 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110720(i64 %cont106948, i64 %rva108082)             ; tail call
  ret void

else110717:
  %a106683 = call i64 @prim_cdr(i64 %sUU$lst)                                        ; call prim_cdr
  %cloptr110722 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr110724 = getelementptr inbounds i64, i64* %cloptr110722, i64 1                ; &eptr110724[1]
  store i64 %cont106948, i64* %eptr110724                                            ; *eptr110724 = %cont106948
  %eptr110723 = getelementptr inbounds i64, i64* %cloptr110722, i64 0                ; &cloptr110722[0]
  %f110725 = ptrtoint void(i64,i64)* @lam108252 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110725, i64* %eptr110723                                               ; store fptr
  %arg107723 = ptrtoint i64* %cloptr110722 to i64                                    ; closure cast; i64* -> i64
  %rva108096 = add i64 0, 0                                                          ; quoted ()
  %rva108095 = call i64 @prim_cons(i64 %a106683, i64 %rva108096)                     ; call prim_cons
  %rva108094 = call i64 @prim_cons(i64 %arg107723, i64 %rva108095)                   ; call prim_cons
  %cloptr110726 = inttoptr i64 %DrJ$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110726)                                       ; assert function application
  %i0ptr110727 = getelementptr inbounds i64, i64* %cloptr110726, i64 0               ; &cloptr110726[0]
  %f110729 = load i64, i64* %i0ptr110727, align 8                                    ; load; *i0ptr110727
  %fptr110728 = inttoptr i64 %f110729 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110728(i64 %DrJ$_37length, i64 %rva108094)          ; tail call
  ret void
}


define void @lam108252(i64 %env108253, i64 %rvp108092) {
  %envptr110730 = inttoptr i64 %env108253 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110731 = getelementptr inbounds i64, i64* %envptr110730, i64 1              ; &envptr110730[1]
  %cont106948 = load i64, i64* %envptr110731, align 8                                ; load; *envptr110731
  %_95106949 = call i64 @prim_car(i64 %rvp108092)                                    ; call prim_car
  %rvp108090 = call i64 @prim_cdr(i64 %rvp108092)                                    ; call prim_cdr
  %a106684 = call i64 @prim_car(i64 %rvp108090)                                      ; call prim_car
  %na108086 = call i64 @prim_cdr(i64 %rvp108090)                                     ; call prim_cdr
  %arg107726 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim106950 = call i64 @prim__43(i64 %arg107726, i64 %a106684)                  ; call prim__43
  %arg107728 = add i64 0, 0                                                          ; quoted ()
  %rva108089 = add i64 0, 0                                                          ; quoted ()
  %rva108088 = call i64 @prim_cons(i64 %retprim106950, i64 %rva108089)               ; call prim_cons
  %rva108087 = call i64 @prim_cons(i64 %arg107728, i64 %rva108088)                   ; call prim_cons
  %cloptr110732 = inttoptr i64 %cont106948 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110732)                                       ; assert function application
  %i0ptr110733 = getelementptr inbounds i64, i64* %cloptr110732, i64 0               ; &cloptr110732[0]
  %f110735 = load i64, i64* %i0ptr110733, align 8                                    ; load; *i0ptr110733
  %fptr110734 = inttoptr i64 %f110735 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110734(i64 %cont106948, i64 %rva108087)             ; tail call
  ret void
}


define void @lam108243(i64 %env108244, i64 %cont106951, i64 %mMB$_37take) {
  %arg107731 = add i64 0, 0                                                          ; quoted ()
  %cloptr110736 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr110738 = getelementptr inbounds i64, i64* %cloptr110736, i64 1                ; &eptr110738[1]
  store i64 %mMB$_37take, i64* %eptr110738                                           ; *eptr110738 = %mMB$_37take
  %eptr110737 = getelementptr inbounds i64, i64* %cloptr110736, i64 0                ; &cloptr110736[0]
  %f110739 = ptrtoint void(i64,i64)* @lam108240 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110739, i64* %eptr110737                                               ; store fptr
  %arg107730 = ptrtoint i64* %cloptr110736 to i64                                    ; closure cast; i64* -> i64
  %cloptr110740 = inttoptr i64 %cont106951 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110740)                                       ; assert function application
  %i0ptr110741 = getelementptr inbounds i64, i64* %cloptr110740, i64 0               ; &cloptr110740[0]
  %f110743 = load i64, i64* %i0ptr110741, align 8                                    ; load; *i0ptr110741
  %fptr110742 = inttoptr i64 %f110743 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110742(i64 %cont106951, i64 %arg107731, i64 %arg107730); tail call
  ret void
}


define void @lam108240(i64 %env108241, i64 %rvp108126) {
  %envptr110744 = inttoptr i64 %env108241 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110745 = getelementptr inbounds i64, i64* %envptr110744, i64 1              ; &envptr110744[1]
  %mMB$_37take = load i64, i64* %envptr110745, align 8                               ; load; *envptr110745
  %cont106952 = call i64 @prim_car(i64 %rvp108126)                                   ; call prim_car
  %rvp108124 = call i64 @prim_cdr(i64 %rvp108126)                                    ; call prim_cdr
  %Kqk$lst = call i64 @prim_car(i64 %rvp108124)                                      ; call prim_car
  %rvp108122 = call i64 @prim_cdr(i64 %rvp108124)                                    ; call prim_cdr
  %cys$n = call i64 @prim_car(i64 %rvp108122)                                        ; call prim_car
  %na108102 = call i64 @prim_cdr(i64 %rvp108122)                                     ; call prim_cdr
  %arg107733 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a106676 = call i64 @prim__61(i64 %cys$n, i64 %arg107733)                          ; call prim__61
  %cmp110746 = icmp eq i64 %a106676, 15                                              ; false?
  br i1 %cmp110746, label %else110748, label %then110747                             ; if

then110747:
  %arg107736 = add i64 0, 0                                                          ; quoted ()
  %arg107735 = add i64 0, 0                                                          ; quoted ()
  %rva108105 = add i64 0, 0                                                          ; quoted ()
  %rva108104 = call i64 @prim_cons(i64 %arg107735, i64 %rva108105)                   ; call prim_cons
  %rva108103 = call i64 @prim_cons(i64 %arg107736, i64 %rva108104)                   ; call prim_cons
  %cloptr110749 = inttoptr i64 %cont106952 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110749)                                       ; assert function application
  %i0ptr110750 = getelementptr inbounds i64, i64* %cloptr110749, i64 0               ; &cloptr110749[0]
  %f110752 = load i64, i64* %i0ptr110750, align 8                                    ; load; *i0ptr110750
  %fptr110751 = inttoptr i64 %f110752 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110751(i64 %cont106952, i64 %rva108103)             ; tail call
  ret void

else110748:
  %a106677 = call i64 @prim_null_63(i64 %Kqk$lst)                                    ; call prim_null_63
  %cmp110753 = icmp eq i64 %a106677, 15                                              ; false?
  br i1 %cmp110753, label %else110755, label %then110754                             ; if

then110754:
  %arg107740 = add i64 0, 0                                                          ; quoted ()
  %arg107739 = add i64 0, 0                                                          ; quoted ()
  %rva108108 = add i64 0, 0                                                          ; quoted ()
  %rva108107 = call i64 @prim_cons(i64 %arg107739, i64 %rva108108)                   ; call prim_cons
  %rva108106 = call i64 @prim_cons(i64 %arg107740, i64 %rva108107)                   ; call prim_cons
  %cloptr110756 = inttoptr i64 %cont106952 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110756)                                       ; assert function application
  %i0ptr110757 = getelementptr inbounds i64, i64* %cloptr110756, i64 0               ; &cloptr110756[0]
  %f110759 = load i64, i64* %i0ptr110757, align 8                                    ; load; *i0ptr110757
  %fptr110758 = inttoptr i64 %f110759 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110758(i64 %cont106952, i64 %rva108106)             ; tail call
  ret void

else110755:
  %a106678 = call i64 @prim_car(i64 %Kqk$lst)                                        ; call prim_car
  %a106679 = call i64 @prim_cdr(i64 %Kqk$lst)                                        ; call prim_cdr
  %arg107744 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a106680 = call i64 @prim__45(i64 %cys$n, i64 %arg107744)                          ; call prim__45
  %cloptr110760 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr110762 = getelementptr inbounds i64, i64* %cloptr110760, i64 1                ; &eptr110762[1]
  %eptr110763 = getelementptr inbounds i64, i64* %cloptr110760, i64 2                ; &eptr110763[2]
  store i64 %a106678, i64* %eptr110762                                               ; *eptr110762 = %a106678
  store i64 %cont106952, i64* %eptr110763                                            ; *eptr110763 = %cont106952
  %eptr110761 = getelementptr inbounds i64, i64* %cloptr110760, i64 0                ; &cloptr110760[0]
  %f110764 = ptrtoint void(i64,i64)* @lam108236 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110764, i64* %eptr110761                                               ; store fptr
  %arg107748 = ptrtoint i64* %cloptr110760 to i64                                    ; closure cast; i64* -> i64
  %rva108121 = add i64 0, 0                                                          ; quoted ()
  %rva108120 = call i64 @prim_cons(i64 %a106680, i64 %rva108121)                     ; call prim_cons
  %rva108119 = call i64 @prim_cons(i64 %a106679, i64 %rva108120)                     ; call prim_cons
  %rva108118 = call i64 @prim_cons(i64 %arg107748, i64 %rva108119)                   ; call prim_cons
  %cloptr110765 = inttoptr i64 %mMB$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110765)                                       ; assert function application
  %i0ptr110766 = getelementptr inbounds i64, i64* %cloptr110765, i64 0               ; &cloptr110765[0]
  %f110768 = load i64, i64* %i0ptr110766, align 8                                    ; load; *i0ptr110766
  %fptr110767 = inttoptr i64 %f110768 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110767(i64 %mMB$_37take, i64 %rva108118)            ; tail call
  ret void
}


define void @lam108236(i64 %env108237, i64 %rvp108116) {
  %envptr110769 = inttoptr i64 %env108237 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110770 = getelementptr inbounds i64, i64* %envptr110769, i64 2              ; &envptr110769[2]
  %cont106952 = load i64, i64* %envptr110770, align 8                                ; load; *envptr110770
  %envptr110771 = inttoptr i64 %env108237 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110772 = getelementptr inbounds i64, i64* %envptr110771, i64 1              ; &envptr110771[1]
  %a106678 = load i64, i64* %envptr110772, align 8                                   ; load; *envptr110772
  %_95106953 = call i64 @prim_car(i64 %rvp108116)                                    ; call prim_car
  %rvp108114 = call i64 @prim_cdr(i64 %rvp108116)                                    ; call prim_cdr
  %a106681 = call i64 @prim_car(i64 %rvp108114)                                      ; call prim_car
  %na108110 = call i64 @prim_cdr(i64 %rvp108114)                                     ; call prim_cdr
  %retprim106954 = call i64 @prim_cons(i64 %a106678, i64 %a106681)                   ; call prim_cons
  %arg107753 = add i64 0, 0                                                          ; quoted ()
  %rva108113 = add i64 0, 0                                                          ; quoted ()
  %rva108112 = call i64 @prim_cons(i64 %retprim106954, i64 %rva108113)               ; call prim_cons
  %rva108111 = call i64 @prim_cons(i64 %arg107753, i64 %rva108112)                   ; call prim_cons
  %cloptr110773 = inttoptr i64 %cont106952 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110773)                                       ; assert function application
  %i0ptr110774 = getelementptr inbounds i64, i64* %cloptr110773, i64 0               ; &cloptr110773[0]
  %f110776 = load i64, i64* %i0ptr110774, align 8                                    ; load; *i0ptr110774
  %fptr110775 = inttoptr i64 %f110776 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110775(i64 %cont106952, i64 %rva108111)             ; tail call
  ret void
}


define void @lam108225(i64 %env108226, i64 %cont106955, i64 %oWU$_37map) {
  %arg107756 = add i64 0, 0                                                          ; quoted ()
  %cloptr110777 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr110779 = getelementptr inbounds i64, i64* %cloptr110777, i64 1                ; &eptr110779[1]
  store i64 %oWU$_37map, i64* %eptr110779                                            ; *eptr110779 = %oWU$_37map
  %eptr110778 = getelementptr inbounds i64, i64* %cloptr110777, i64 0                ; &cloptr110777[0]
  %f110780 = ptrtoint void(i64,i64)* @lam108222 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110780, i64* %eptr110778                                               ; store fptr
  %arg107755 = ptrtoint i64* %cloptr110777 to i64                                    ; closure cast; i64* -> i64
  %cloptr110781 = inttoptr i64 %cont106955 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110781)                                       ; assert function application
  %i0ptr110782 = getelementptr inbounds i64, i64* %cloptr110781, i64 0               ; &cloptr110781[0]
  %f110784 = load i64, i64* %i0ptr110782, align 8                                    ; load; *i0ptr110782
  %fptr110783 = inttoptr i64 %f110784 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110783(i64 %cont106955, i64 %arg107756, i64 %arg107755); tail call
  ret void
}


define void @lam108222(i64 %env108223, i64 %rvp108159) {
  %envptr110785 = inttoptr i64 %env108223 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110786 = getelementptr inbounds i64, i64* %envptr110785, i64 1              ; &envptr110785[1]
  %oWU$_37map = load i64, i64* %envptr110786, align 8                                ; load; *envptr110786
  %cont106956 = call i64 @prim_car(i64 %rvp108159)                                   ; call prim_car
  %rvp108157 = call i64 @prim_cdr(i64 %rvp108159)                                    ; call prim_cdr
  %NT0$f = call i64 @prim_car(i64 %rvp108157)                                        ; call prim_car
  %rvp108155 = call i64 @prim_cdr(i64 %rvp108157)                                    ; call prim_cdr
  %p9Z$lst = call i64 @prim_car(i64 %rvp108155)                                      ; call prim_car
  %na108129 = call i64 @prim_cdr(i64 %rvp108155)                                     ; call prim_cdr
  %a106671 = call i64 @prim_null_63(i64 %p9Z$lst)                                    ; call prim_null_63
  %cmp110787 = icmp eq i64 %a106671, 15                                              ; false?
  br i1 %cmp110787, label %else110789, label %then110788                             ; if

then110788:
  %arg107760 = add i64 0, 0                                                          ; quoted ()
  %arg107759 = add i64 0, 0                                                          ; quoted ()
  %rva108132 = add i64 0, 0                                                          ; quoted ()
  %rva108131 = call i64 @prim_cons(i64 %arg107759, i64 %rva108132)                   ; call prim_cons
  %rva108130 = call i64 @prim_cons(i64 %arg107760, i64 %rva108131)                   ; call prim_cons
  %cloptr110790 = inttoptr i64 %cont106956 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110790)                                       ; assert function application
  %i0ptr110791 = getelementptr inbounds i64, i64* %cloptr110790, i64 0               ; &cloptr110790[0]
  %f110793 = load i64, i64* %i0ptr110791, align 8                                    ; load; *i0ptr110791
  %fptr110792 = inttoptr i64 %f110793 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110792(i64 %cont106956, i64 %rva108130)             ; tail call
  ret void

else110789:
  %a106672 = call i64 @prim_car(i64 %p9Z$lst)                                        ; call prim_car
  %cloptr110794 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr110796 = getelementptr inbounds i64, i64* %cloptr110794, i64 1                ; &eptr110796[1]
  %eptr110797 = getelementptr inbounds i64, i64* %cloptr110794, i64 2                ; &eptr110797[2]
  %eptr110798 = getelementptr inbounds i64, i64* %cloptr110794, i64 3                ; &eptr110798[3]
  %eptr110799 = getelementptr inbounds i64, i64* %cloptr110794, i64 4                ; &eptr110799[4]
  store i64 %oWU$_37map, i64* %eptr110796                                            ; *eptr110796 = %oWU$_37map
  store i64 %NT0$f, i64* %eptr110797                                                 ; *eptr110797 = %NT0$f
  store i64 %p9Z$lst, i64* %eptr110798                                               ; *eptr110798 = %p9Z$lst
  store i64 %cont106956, i64* %eptr110799                                            ; *eptr110799 = %cont106956
  %eptr110795 = getelementptr inbounds i64, i64* %cloptr110794, i64 0                ; &cloptr110794[0]
  %f110800 = ptrtoint void(i64,i64)* @lam108220 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110800, i64* %eptr110795                                               ; store fptr
  %arg107764 = ptrtoint i64* %cloptr110794 to i64                                    ; closure cast; i64* -> i64
  %rva108154 = add i64 0, 0                                                          ; quoted ()
  %rva108153 = call i64 @prim_cons(i64 %a106672, i64 %rva108154)                     ; call prim_cons
  %rva108152 = call i64 @prim_cons(i64 %arg107764, i64 %rva108153)                   ; call prim_cons
  %cloptr110801 = inttoptr i64 %NT0$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110801)                                       ; assert function application
  %i0ptr110802 = getelementptr inbounds i64, i64* %cloptr110801, i64 0               ; &cloptr110801[0]
  %f110804 = load i64, i64* %i0ptr110802, align 8                                    ; load; *i0ptr110802
  %fptr110803 = inttoptr i64 %f110804 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110803(i64 %NT0$f, i64 %rva108152)                  ; tail call
  ret void
}


define void @lam108220(i64 %env108221, i64 %rvp108150) {
  %envptr110805 = inttoptr i64 %env108221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110806 = getelementptr inbounds i64, i64* %envptr110805, i64 4              ; &envptr110805[4]
  %cont106956 = load i64, i64* %envptr110806, align 8                                ; load; *envptr110806
  %envptr110807 = inttoptr i64 %env108221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110808 = getelementptr inbounds i64, i64* %envptr110807, i64 3              ; &envptr110807[3]
  %p9Z$lst = load i64, i64* %envptr110808, align 8                                   ; load; *envptr110808
  %envptr110809 = inttoptr i64 %env108221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110810 = getelementptr inbounds i64, i64* %envptr110809, i64 2              ; &envptr110809[2]
  %NT0$f = load i64, i64* %envptr110810, align 8                                     ; load; *envptr110810
  %envptr110811 = inttoptr i64 %env108221 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110812 = getelementptr inbounds i64, i64* %envptr110811, i64 1              ; &envptr110811[1]
  %oWU$_37map = load i64, i64* %envptr110812, align 8                                ; load; *envptr110812
  %_95106957 = call i64 @prim_car(i64 %rvp108150)                                    ; call prim_car
  %rvp108148 = call i64 @prim_cdr(i64 %rvp108150)                                    ; call prim_cdr
  %a106673 = call i64 @prim_car(i64 %rvp108148)                                      ; call prim_car
  %na108134 = call i64 @prim_cdr(i64 %rvp108148)                                     ; call prim_cdr
  %a106674 = call i64 @prim_cdr(i64 %p9Z$lst)                                        ; call prim_cdr
  %cloptr110813 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr110815 = getelementptr inbounds i64, i64* %cloptr110813, i64 1                ; &eptr110815[1]
  %eptr110816 = getelementptr inbounds i64, i64* %cloptr110813, i64 2                ; &eptr110816[2]
  store i64 %a106673, i64* %eptr110815                                               ; *eptr110815 = %a106673
  store i64 %cont106956, i64* %eptr110816                                            ; *eptr110816 = %cont106956
  %eptr110814 = getelementptr inbounds i64, i64* %cloptr110813, i64 0                ; &cloptr110813[0]
  %f110817 = ptrtoint void(i64,i64)* @lam108218 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110817, i64* %eptr110814                                               ; store fptr
  %arg107769 = ptrtoint i64* %cloptr110813 to i64                                    ; closure cast; i64* -> i64
  %rva108147 = add i64 0, 0                                                          ; quoted ()
  %rva108146 = call i64 @prim_cons(i64 %a106674, i64 %rva108147)                     ; call prim_cons
  %rva108145 = call i64 @prim_cons(i64 %NT0$f, i64 %rva108146)                       ; call prim_cons
  %rva108144 = call i64 @prim_cons(i64 %arg107769, i64 %rva108145)                   ; call prim_cons
  %cloptr110818 = inttoptr i64 %oWU$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110818)                                       ; assert function application
  %i0ptr110819 = getelementptr inbounds i64, i64* %cloptr110818, i64 0               ; &cloptr110818[0]
  %f110821 = load i64, i64* %i0ptr110819, align 8                                    ; load; *i0ptr110819
  %fptr110820 = inttoptr i64 %f110821 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110820(i64 %oWU$_37map, i64 %rva108144)             ; tail call
  ret void
}


define void @lam108218(i64 %env108219, i64 %rvp108142) {
  %envptr110822 = inttoptr i64 %env108219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110823 = getelementptr inbounds i64, i64* %envptr110822, i64 2              ; &envptr110822[2]
  %cont106956 = load i64, i64* %envptr110823, align 8                                ; load; *envptr110823
  %envptr110824 = inttoptr i64 %env108219 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110825 = getelementptr inbounds i64, i64* %envptr110824, i64 1              ; &envptr110824[1]
  %a106673 = load i64, i64* %envptr110825, align 8                                   ; load; *envptr110825
  %_95106958 = call i64 @prim_car(i64 %rvp108142)                                    ; call prim_car
  %rvp108140 = call i64 @prim_cdr(i64 %rvp108142)                                    ; call prim_cdr
  %a106675 = call i64 @prim_car(i64 %rvp108140)                                      ; call prim_car
  %na108136 = call i64 @prim_cdr(i64 %rvp108140)                                     ; call prim_cdr
  %retprim106959 = call i64 @prim_cons(i64 %a106673, i64 %a106675)                   ; call prim_cons
  %arg107774 = add i64 0, 0                                                          ; quoted ()
  %rva108139 = add i64 0, 0                                                          ; quoted ()
  %rva108138 = call i64 @prim_cons(i64 %retprim106959, i64 %rva108139)               ; call prim_cons
  %rva108137 = call i64 @prim_cons(i64 %arg107774, i64 %rva108138)                   ; call prim_cons
  %cloptr110826 = inttoptr i64 %cont106956 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110826)                                       ; assert function application
  %i0ptr110827 = getelementptr inbounds i64, i64* %cloptr110826, i64 0               ; &cloptr110826[0]
  %f110829 = load i64, i64* %i0ptr110827, align 8                                    ; load; *i0ptr110827
  %fptr110828 = inttoptr i64 %f110829 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110828(i64 %cont106956, i64 %rva108137)             ; tail call
  ret void
}


define void @lam108209(i64 %env108210, i64 %cont106960, i64 %jSl$_37foldr1) {
  %arg107777 = add i64 0, 0                                                          ; quoted ()
  %cloptr110830 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr110832 = getelementptr inbounds i64, i64* %cloptr110830, i64 1                ; &eptr110832[1]
  store i64 %jSl$_37foldr1, i64* %eptr110832                                         ; *eptr110832 = %jSl$_37foldr1
  %eptr110831 = getelementptr inbounds i64, i64* %cloptr110830, i64 0                ; &cloptr110830[0]
  %f110833 = ptrtoint void(i64,i64)* @lam108206 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110833, i64* %eptr110831                                               ; store fptr
  %arg107776 = ptrtoint i64* %cloptr110830 to i64                                    ; closure cast; i64* -> i64
  %cloptr110834 = inttoptr i64 %cont106960 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110834)                                       ; assert function application
  %i0ptr110835 = getelementptr inbounds i64, i64* %cloptr110834, i64 0               ; &cloptr110834[0]
  %f110837 = load i64, i64* %i0ptr110835, align 8                                    ; load; *i0ptr110835
  %fptr110836 = inttoptr i64 %f110837 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110836(i64 %cont106960, i64 %arg107777, i64 %arg107776); tail call
  ret void
}


define void @lam108206(i64 %env108207, i64 %rvp108187) {
  %envptr110838 = inttoptr i64 %env108207 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110839 = getelementptr inbounds i64, i64* %envptr110838, i64 1              ; &envptr110838[1]
  %jSl$_37foldr1 = load i64, i64* %envptr110839, align 8                             ; load; *envptr110839
  %cont106961 = call i64 @prim_car(i64 %rvp108187)                                   ; call prim_car
  %rvp108185 = call i64 @prim_cdr(i64 %rvp108187)                                    ; call prim_cdr
  %jas$f = call i64 @prim_car(i64 %rvp108185)                                        ; call prim_car
  %rvp108183 = call i64 @prim_cdr(i64 %rvp108185)                                    ; call prim_cdr
  %eF0$acc = call i64 @prim_car(i64 %rvp108183)                                      ; call prim_car
  %rvp108181 = call i64 @prim_cdr(i64 %rvp108183)                                    ; call prim_cdr
  %UWL$lst = call i64 @prim_car(i64 %rvp108181)                                      ; call prim_car
  %na108162 = call i64 @prim_cdr(i64 %rvp108181)                                     ; call prim_cdr
  %a106667 = call i64 @prim_null_63(i64 %UWL$lst)                                    ; call prim_null_63
  %cmp110840 = icmp eq i64 %a106667, 15                                              ; false?
  br i1 %cmp110840, label %else110842, label %then110841                             ; if

then110841:
  %arg107781 = add i64 0, 0                                                          ; quoted ()
  %rva108165 = add i64 0, 0                                                          ; quoted ()
  %rva108164 = call i64 @prim_cons(i64 %eF0$acc, i64 %rva108165)                     ; call prim_cons
  %rva108163 = call i64 @prim_cons(i64 %arg107781, i64 %rva108164)                   ; call prim_cons
  %cloptr110843 = inttoptr i64 %cont106961 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110843)                                       ; assert function application
  %i0ptr110844 = getelementptr inbounds i64, i64* %cloptr110843, i64 0               ; &cloptr110843[0]
  %f110846 = load i64, i64* %i0ptr110844, align 8                                    ; load; *i0ptr110844
  %fptr110845 = inttoptr i64 %f110846 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110845(i64 %cont106961, i64 %rva108163)             ; tail call
  ret void

else110842:
  %a106668 = call i64 @prim_car(i64 %UWL$lst)                                        ; call prim_car
  %a106669 = call i64 @prim_cdr(i64 %UWL$lst)                                        ; call prim_cdr
  %cloptr110847 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110849 = getelementptr inbounds i64, i64* %cloptr110847, i64 1                ; &eptr110849[1]
  %eptr110850 = getelementptr inbounds i64, i64* %cloptr110847, i64 2                ; &eptr110850[2]
  %eptr110851 = getelementptr inbounds i64, i64* %cloptr110847, i64 3                ; &eptr110851[3]
  store i64 %cont106961, i64* %eptr110849                                            ; *eptr110849 = %cont106961
  store i64 %a106668, i64* %eptr110850                                               ; *eptr110850 = %a106668
  store i64 %jas$f, i64* %eptr110851                                                 ; *eptr110851 = %jas$f
  %eptr110848 = getelementptr inbounds i64, i64* %cloptr110847, i64 0                ; &cloptr110847[0]
  %f110852 = ptrtoint void(i64,i64)* @lam108204 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110852, i64* %eptr110848                                               ; store fptr
  %arg107788 = ptrtoint i64* %cloptr110847 to i64                                    ; closure cast; i64* -> i64
  %rva108180 = add i64 0, 0                                                          ; quoted ()
  %rva108179 = call i64 @prim_cons(i64 %a106669, i64 %rva108180)                     ; call prim_cons
  %rva108178 = call i64 @prim_cons(i64 %eF0$acc, i64 %rva108179)                     ; call prim_cons
  %rva108177 = call i64 @prim_cons(i64 %jas$f, i64 %rva108178)                       ; call prim_cons
  %rva108176 = call i64 @prim_cons(i64 %arg107788, i64 %rva108177)                   ; call prim_cons
  %cloptr110853 = inttoptr i64 %jSl$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110853)                                       ; assert function application
  %i0ptr110854 = getelementptr inbounds i64, i64* %cloptr110853, i64 0               ; &cloptr110853[0]
  %f110856 = load i64, i64* %i0ptr110854, align 8                                    ; load; *i0ptr110854
  %fptr110855 = inttoptr i64 %f110856 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110855(i64 %jSl$_37foldr1, i64 %rva108176)          ; tail call
  ret void
}


define void @lam108204(i64 %env108205, i64 %rvp108174) {
  %envptr110857 = inttoptr i64 %env108205 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110858 = getelementptr inbounds i64, i64* %envptr110857, i64 3              ; &envptr110857[3]
  %jas$f = load i64, i64* %envptr110858, align 8                                     ; load; *envptr110858
  %envptr110859 = inttoptr i64 %env108205 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110860 = getelementptr inbounds i64, i64* %envptr110859, i64 2              ; &envptr110859[2]
  %a106668 = load i64, i64* %envptr110860, align 8                                   ; load; *envptr110860
  %envptr110861 = inttoptr i64 %env108205 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110862 = getelementptr inbounds i64, i64* %envptr110861, i64 1              ; &envptr110861[1]
  %cont106961 = load i64, i64* %envptr110862, align 8                                ; load; *envptr110862
  %_95106962 = call i64 @prim_car(i64 %rvp108174)                                    ; call prim_car
  %rvp108172 = call i64 @prim_cdr(i64 %rvp108174)                                    ; call prim_cdr
  %a106670 = call i64 @prim_car(i64 %rvp108172)                                      ; call prim_car
  %na108167 = call i64 @prim_cdr(i64 %rvp108172)                                     ; call prim_cdr
  %rva108171 = add i64 0, 0                                                          ; quoted ()
  %rva108170 = call i64 @prim_cons(i64 %a106670, i64 %rva108171)                     ; call prim_cons
  %rva108169 = call i64 @prim_cons(i64 %a106668, i64 %rva108170)                     ; call prim_cons
  %rva108168 = call i64 @prim_cons(i64 %cont106961, i64 %rva108169)                  ; call prim_cons
  %cloptr110863 = inttoptr i64 %jas$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110863)                                       ; assert function application
  %i0ptr110864 = getelementptr inbounds i64, i64* %cloptr110863, i64 0               ; &cloptr110863[0]
  %f110866 = load i64, i64* %i0ptr110864, align 8                                    ; load; *i0ptr110864
  %fptr110865 = inttoptr i64 %f110866 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110865(i64 %jas$f, i64 %rva108168)                  ; tail call
  ret void
}


define void @lam108198(i64 %env108199, i64 %cont106964, i64 %uoN$y) {
  %arg107795 = add i64 0, 0                                                          ; quoted ()
  %cloptr110867 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr110869 = getelementptr inbounds i64, i64* %cloptr110867, i64 1                ; &eptr110869[1]
  store i64 %uoN$y, i64* %eptr110869                                                 ; *eptr110869 = %uoN$y
  %eptr110868 = getelementptr inbounds i64, i64* %cloptr110867, i64 0                ; &cloptr110867[0]
  %f110870 = ptrtoint void(i64,i64,i64)* @lam108195 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110870, i64* %eptr110868                                               ; store fptr
  %arg107794 = ptrtoint i64* %cloptr110867 to i64                                    ; closure cast; i64* -> i64
  %cloptr110871 = inttoptr i64 %cont106964 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110871)                                       ; assert function application
  %i0ptr110872 = getelementptr inbounds i64, i64* %cloptr110871, i64 0               ; &cloptr110871[0]
  %f110874 = load i64, i64* %i0ptr110872, align 8                                    ; load; *i0ptr110872
  %fptr110873 = inttoptr i64 %f110874 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110873(i64 %cont106964, i64 %arg107795, i64 %arg107794); tail call
  ret void
}


define void @lam108195(i64 %env108196, i64 %cont106965, i64 %SS4$f) {
  %envptr110875 = inttoptr i64 %env108196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110876 = getelementptr inbounds i64, i64* %envptr110875, i64 1              ; &envptr110875[1]
  %uoN$y = load i64, i64* %envptr110876, align 8                                     ; load; *envptr110876
  %cloptr110877 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr110879 = getelementptr inbounds i64, i64* %cloptr110877, i64 1                ; &eptr110879[1]
  %eptr110880 = getelementptr inbounds i64, i64* %cloptr110877, i64 2                ; &eptr110880[2]
  store i64 %SS4$f, i64* %eptr110879                                                 ; *eptr110879 = %SS4$f
  store i64 %uoN$y, i64* %eptr110880                                                 ; *eptr110880 = %uoN$y
  %eptr110878 = getelementptr inbounds i64, i64* %cloptr110877, i64 0                ; &cloptr110877[0]
  %f110881 = ptrtoint void(i64,i64)* @lam108193 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f110881, i64* %eptr110878                                               ; store fptr
  %arg107797 = ptrtoint i64* %cloptr110877 to i64                                    ; closure cast; i64* -> i64
  %cloptr110882 = inttoptr i64 %SS4$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110882)                                       ; assert function application
  %i0ptr110883 = getelementptr inbounds i64, i64* %cloptr110882, i64 0               ; &cloptr110882[0]
  %f110885 = load i64, i64* %i0ptr110883, align 8                                    ; load; *i0ptr110883
  %fptr110884 = inttoptr i64 %f110885 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110884(i64 %SS4$f, i64 %cont106965, i64 %arg107797) ; tail call
  ret void
}


define void @lam108193(i64 %env108194, i64 %r0g$args106967) {
  %envptr110886 = inttoptr i64 %env108194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110887 = getelementptr inbounds i64, i64* %envptr110886, i64 2              ; &envptr110886[2]
  %uoN$y = load i64, i64* %envptr110887, align 8                                     ; load; *envptr110887
  %envptr110888 = inttoptr i64 %env108194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110889 = getelementptr inbounds i64, i64* %envptr110888, i64 1              ; &envptr110888[1]
  %SS4$f = load i64, i64* %envptr110889, align 8                                     ; load; *envptr110889
  %cont106966 = call i64 @prim_car(i64 %r0g$args106967)                              ; call prim_car
  %r0g$args = call i64 @prim_cdr(i64 %r0g$args106967)                                ; call prim_cdr
  %cloptr110890 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr110892 = getelementptr inbounds i64, i64* %cloptr110890, i64 1                ; &eptr110892[1]
  %eptr110893 = getelementptr inbounds i64, i64* %cloptr110890, i64 2                ; &eptr110893[2]
  %eptr110894 = getelementptr inbounds i64, i64* %cloptr110890, i64 3                ; &eptr110894[3]
  store i64 %r0g$args, i64* %eptr110892                                              ; *eptr110892 = %r0g$args
  store i64 %SS4$f, i64* %eptr110893                                                 ; *eptr110893 = %SS4$f
  store i64 %cont106966, i64* %eptr110894                                            ; *eptr110894 = %cont106966
  %eptr110891 = getelementptr inbounds i64, i64* %cloptr110890, i64 0                ; &cloptr110890[0]
  %f110895 = ptrtoint void(i64,i64,i64)* @lam108191 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110895, i64* %eptr110891                                               ; store fptr
  %arg107803 = ptrtoint i64* %cloptr110890 to i64                                    ; closure cast; i64* -> i64
  %cloptr110896 = inttoptr i64 %uoN$y to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110896)                                       ; assert function application
  %i0ptr110897 = getelementptr inbounds i64, i64* %cloptr110896, i64 0               ; &cloptr110896[0]
  %f110899 = load i64, i64* %i0ptr110897, align 8                                    ; load; *i0ptr110897
  %fptr110898 = inttoptr i64 %f110899 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110898(i64 %uoN$y, i64 %arg107803, i64 %uoN$y)      ; tail call
  ret void
}


define void @lam108191(i64 %env108192, i64 %_95106968, i64 %a106665) {
  %envptr110900 = inttoptr i64 %env108192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110901 = getelementptr inbounds i64, i64* %envptr110900, i64 3              ; &envptr110900[3]
  %cont106966 = load i64, i64* %envptr110901, align 8                                ; load; *envptr110901
  %envptr110902 = inttoptr i64 %env108192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110903 = getelementptr inbounds i64, i64* %envptr110902, i64 2              ; &envptr110902[2]
  %SS4$f = load i64, i64* %envptr110903, align 8                                     ; load; *envptr110903
  %envptr110904 = inttoptr i64 %env108192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110905 = getelementptr inbounds i64, i64* %envptr110904, i64 1              ; &envptr110904[1]
  %r0g$args = load i64, i64* %envptr110905, align 8                                  ; load; *envptr110905
  %cloptr110906 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr110908 = getelementptr inbounds i64, i64* %cloptr110906, i64 1                ; &eptr110908[1]
  %eptr110909 = getelementptr inbounds i64, i64* %cloptr110906, i64 2                ; &eptr110909[2]
  store i64 %r0g$args, i64* %eptr110908                                              ; *eptr110908 = %r0g$args
  store i64 %cont106966, i64* %eptr110909                                            ; *eptr110909 = %cont106966
  %eptr110907 = getelementptr inbounds i64, i64* %cloptr110906, i64 0                ; &cloptr110906[0]
  %f110910 = ptrtoint void(i64,i64,i64)* @lam108189 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f110910, i64* %eptr110907                                               ; store fptr
  %arg107806 = ptrtoint i64* %cloptr110906 to i64                                    ; closure cast; i64* -> i64
  %cloptr110911 = inttoptr i64 %a106665 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110911)                                       ; assert function application
  %i0ptr110912 = getelementptr inbounds i64, i64* %cloptr110911, i64 0               ; &cloptr110911[0]
  %f110914 = load i64, i64* %i0ptr110912, align 8                                    ; load; *i0ptr110912
  %fptr110913 = inttoptr i64 %f110914 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110913(i64 %a106665, i64 %arg107806, i64 %SS4$f)    ; tail call
  ret void
}


define void @lam108189(i64 %env108190, i64 %_95106969, i64 %a106666) {
  %envptr110915 = inttoptr i64 %env108190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110916 = getelementptr inbounds i64, i64* %envptr110915, i64 2              ; &envptr110915[2]
  %cont106966 = load i64, i64* %envptr110916, align 8                                ; load; *envptr110916
  %envptr110917 = inttoptr i64 %env108190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr110918 = getelementptr inbounds i64, i64* %envptr110917, i64 1              ; &envptr110917[1]
  %r0g$args = load i64, i64* %envptr110918, align 8                                  ; load; *envptr110918
  %cps_45lst106970 = call i64 @prim_cons(i64 %cont106966, i64 %r0g$args)             ; call prim_cons
  %cloptr110919 = inttoptr i64 %a106666 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr110919)                                       ; assert function application
  %i0ptr110920 = getelementptr inbounds i64, i64* %cloptr110919, i64 0               ; &cloptr110919[0]
  %f110922 = load i64, i64* %i0ptr110920, align 8                                    ; load; *i0ptr110920
  %fptr110921 = inttoptr i64 %f110922 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr110921(i64 %a106666, i64 %cps_45lst106970)          ; tail call
  ret void
}





@str109449 = private unnamed_addr constant [59 x i8] c"library run-time error: Not enough arguments passed into /\00", align 8
@sym109491 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
