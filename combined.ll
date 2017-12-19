; ModuleID = 'header.cpp'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.hamt = type { [7 x %class.KV], i64 }
%class.KV = type { %"union.KV<tuple, tuple, 0>::Key", %"union.KV<tuple, tuple, 0>::Val" }
%"union.KV<tuple, tuple, 0>::Key" = type { i64 }
%"union.KV<tuple, tuple, 0>::Val" = type { %class.KV.0* }
%class.KV.0 = type opaque
%class.tuple = type { i64 }

$_ZN4hamtI5tupleS0_EC2Ev = comdat any

$_ZN5tupleC2Em = comdat any

$_ZN2KVI5tupleS0_Lj0EEC2Ev = comdat any

$_ZN2KVI5tupleS0_Lj0EE3KeyC2Em = comdat any

$_ZN2KVI5tupleS0_Lj0EE3ValC2EPKS0_ = comdat any

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
  br label %131

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %130

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
  br label %129

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
  br label %128

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
  br label %127

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
  br label %126

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
  br label %125

; <label>:99                                      ; preds = %62, %58
  %100 = load i64, i64* %1, align 8
  %101 = icmp eq i64 %100, 39
  br i1 %101, label %102, label %104

; <label>:102                                     ; preds = %99
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  br label %124

; <label>:104                                     ; preds = %99
  %105 = load i64, i64* %1, align 8
  %106 = icmp eq i64 %105, 15
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %123

; <label>:109                                     ; preds = %104
  %110 = load i64, i64* %1, align 8
  %111 = icmp eq i64 %110, 31
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %122

; <label>:114                                     ; preds = %109
  %115 = load i64, i64* %1, align 8
  %116 = load i64, i64* %1, align 8
  %117 = trunc i64 %116 to i32
  %118 = zext i32 %117 to i64
  %119 = shl i64 %118, 32
  %120 = or i64 %119, 2
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0), i64 %115, i64 %120)
  br label %122

; <label>:122                                     ; preds = %114, %112
  br label %123

; <label>:123                                     ; preds = %122, %107
  br label %124

; <label>:124                                     ; preds = %123, %102
  br label %125

; <label>:125                                     ; preds = %124, %97
  br label %126

; <label>:126                                     ; preds = %125, %53
  br label %127

; <label>:127                                     ; preds = %126, %44
  br label %128

; <label>:128                                     ; preds = %127, %35
  br label %129

; <label>:129                                     ; preds = %128, %16
  br label %130

; <label>:130                                     ; preds = %129, %10
  br label %131

; <label>:131                                     ; preds = %130, %4
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
  br label %128

; <label>:6                                       ; preds = %0
  %7 = load i64, i64* %1, align 8
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

; <label>:10                                      ; preds = %6
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  br label %127

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
  br label %126

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
  br label %125

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
  br label %124

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
  br label %123

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
  br label %122

; <label>:99                                      ; preds = %62, %58
  %100 = load i64, i64* %1, align 8
  %101 = icmp eq i64 %100, 39
  br i1 %101, label %102, label %104

; <label>:102                                     ; preds = %99
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0))
  br label %121

; <label>:104                                     ; preds = %99
  %105 = load i64, i64* %1, align 8
  %106 = icmp eq i64 %105, 15
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %120

; <label>:109                                     ; preds = %104
  %110 = load i64, i64* %1, align 8
  %111 = icmp eq i64 %110, 31
  br i1 %111, label %112, label %114

; <label>:112                                     ; preds = %109
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %119

; <label>:114                                     ; preds = %109
  %115 = load i64, i64* %1, align 8
  %116 = load i64, i64* %1, align 8
  %117 = and i64 %116, 7
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i32 0, i32 0), i64 %115, i64 %117)
  br label %119

; <label>:119                                     ; preds = %114, %112
  br label %120

; <label>:120                                     ; preds = %119, %107
  br label %121

; <label>:121                                     ; preds = %120, %102
  br label %122

; <label>:122                                     ; preds = %121, %97
  br label %123

; <label>:123                                     ; preds = %122, %53
  br label %124

; <label>:124                                     ; preds = %123, %44
  br label %125

; <label>:125                                     ; preds = %124, %35
  br label %126

; <label>:126                                     ; preds = %125, %16
  br label %127

; <label>:127                                     ; preds = %126, %10
  br label %128

; <label>:128                                     ; preds = %127, %4
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

; Function Attrs: uwtable
define i64* @prim_set() #0 {
  %h = alloca %class.hamt*, align 8
  %1 = call noalias i8* @GC_malloc(i64 120)
  %2 = bitcast i8* %1 to %class.hamt*
  %3 = bitcast %class.hamt* %2 to i8*
  %4 = bitcast i8* %3 to %class.hamt*
  call void @_ZN4hamtI5tupleS0_EC2Ev(%class.hamt* %4)
  store %class.hamt* %4, %class.hamt** %h, align 8
  ret i64* null
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4hamtI5tupleS0_EC2Ev(%class.hamt* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %class.hamt*, align 8
  store %class.hamt* %this, %class.hamt** %1, align 8
  %2 = load %class.hamt*, %class.hamt** %1, align 8
  %3 = getelementptr inbounds %class.hamt, %class.hamt* %2, i32 0, i32 0
  %4 = getelementptr inbounds [7 x %class.KV], [7 x %class.KV]* %3, i64 0, i64 0
  %5 = getelementptr inbounds %class.KV, %class.KV* %4, i64 7
  br label %6

; <label>:6                                       ; preds = %6, %0
  %7 = phi %class.KV* [ %4, %0 ], [ %8, %6 ]
  call void @_ZN2KVI5tupleS0_Lj0EEC2Ev(%class.KV* %7)
  %8 = getelementptr inbounds %class.KV, %class.KV* %7, i64 1
  %9 = icmp eq %class.KV* %8, %5
  br i1 %9, label %10, label %6

; <label>:10                                      ; preds = %6
  %11 = getelementptr inbounds %class.hamt, %class.hamt* %2, i32 0, i32 1
  store i64 0, i64* %11, align 8
  ret void
}

; Function Attrs: uwtable
define i64 @prim_set_45add(i64 %set, i64 %val) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %h = alloca %class.hamt*, align 8
  %t = alloca %class.tuple*, align 8
  store i64 %set, i64* %1, align 8
  store i64 %val, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i64*
  %6 = bitcast i64* %5 to %class.hamt*
  store %class.hamt* %6, %class.hamt** %h, align 8
  %7 = call noalias i8* @GC_malloc(i64 8)
  %8 = bitcast i8* %7 to %class.tuple*
  %9 = bitcast %class.tuple* %8 to i8*
  %10 = bitcast i8* %9 to %class.tuple*
  %11 = load i64, i64* %2, align 8
  call void @_ZN5tupleC2Em(%class.tuple* %10, i64 %11)
  store %class.tuple* %10, %class.tuple** %t, align 8
  %12 = load i64, i64* %1, align 8
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN5tupleC2Em(%class.tuple* %this, i64 %x) unnamed_addr #3 comdat align 2 {
  %1 = alloca %class.tuple*, align 8
  %2 = alloca i64, align 8
  store %class.tuple* %this, %class.tuple** %1, align 8
  store i64 %x, i64* %2, align 8
  %3 = load %class.tuple*, %class.tuple** %1, align 8
  %4 = getelementptr inbounds %class.tuple, %class.tuple* %3, i32 0, i32 0
  %5 = load i64, i64* %2, align 8
  store i64 %5, i64* %4, align 8
  ret void
}

; Function Attrs: uwtable
define i64 @prim_set_45remove(i64 %set, i64 %val) #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %h = alloca %class.hamt*, align 8
  %t = alloca %class.tuple*, align 8
  store i64 %set, i64* %1, align 8
  store i64 %val, i64* %2, align 8
  %3 = load i64, i64* %1, align 8
  %4 = and i64 %3, -8
  %5 = inttoptr i64 %4 to i64*
  %6 = bitcast i64* %5 to %class.hamt*
  store %class.hamt* %6, %class.hamt** %h, align 8
  %7 = call noalias i8* @GC_malloc(i64 8)
  %8 = bitcast i8* %7 to %class.tuple*
  %9 = bitcast %class.tuple* %8 to i8*
  %10 = bitcast i8* %9 to %class.tuple*
  %11 = load i64, i64* %2, align 8
  call void @_ZN5tupleC2Em(%class.tuple* %10, i64 %11)
  store %class.tuple* %10, %class.tuple** %t, align 8
  %12 = load i64, i64* %1, align 8
  ret i64 %12
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN2KVI5tupleS0_Lj0EEC2Ev(%class.KV* %this) unnamed_addr #0 comdat align 2 {
  %1 = alloca %class.KV*, align 8
  store %class.KV* %this, %class.KV** %1, align 8
  %2 = load %class.KV*, %class.KV** %1, align 8
  %3 = getelementptr inbounds %class.KV, %class.KV* %2, i32 0, i32 0
  call void @_ZN2KVI5tupleS0_Lj0EE3KeyC2Em(%"union.KV<tuple, tuple, 0>::Key"* %3, i64 0)
  %4 = getelementptr inbounds %class.KV, %class.KV* %2, i32 0, i32 1
  call void @_ZN2KVI5tupleS0_Lj0EE3ValC2EPKS0_(%"union.KV<tuple, tuple, 0>::Val"* %4, %class.tuple* null)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN2KVI5tupleS0_Lj0EE3KeyC2Em(%"union.KV<tuple, tuple, 0>::Key"* %this, i64 %bm) unnamed_addr #3 comdat align 2 {
  %1 = alloca %"union.KV<tuple, tuple, 0>::Key"*, align 8
  %2 = alloca i64, align 8
  store %"union.KV<tuple, tuple, 0>::Key"* %this, %"union.KV<tuple, tuple, 0>::Key"** %1, align 8
  store i64 %bm, i64* %2, align 8
  %3 = load %"union.KV<tuple, tuple, 0>::Key"*, %"union.KV<tuple, tuple, 0>::Key"** %1, align 8
  %4 = bitcast %"union.KV<tuple, tuple, 0>::Key"* %3 to i64*
  %5 = load i64, i64* %2, align 8
  store i64 %5, i64* %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN2KVI5tupleS0_Lj0EE3ValC2EPKS0_(%"union.KV<tuple, tuple, 0>::Val"* %this, %class.tuple* %val) unnamed_addr #3 comdat align 2 {
  %1 = alloca %"union.KV<tuple, tuple, 0>::Val"*, align 8
  %2 = alloca %class.tuple*, align 8
  store %"union.KV<tuple, tuple, 0>::Val"* %this, %"union.KV<tuple, tuple, 0>::Val"** %1, align 8
  store %class.tuple* %val, %class.tuple** %2, align 8
  %3 = load %"union.KV<tuple, tuple, 0>::Val"*, %"union.KV<tuple, tuple, 0>::Val"** %1, align 8
  %4 = bitcast %"union.KV<tuple, tuple, 0>::Val"* %3 to %class.tuple**
  %5 = load %class.tuple*, %class.tuple** %2, align 8
  store %class.tuple* %5, %class.tuple** %4, align 8
  ret void
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
  %cloptr8565 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8566 = getelementptr inbounds i64, i64* %cloptr8565, i64 0                    ; &cloptr8565[0]
  %f8567 = ptrtoint void(i64,i64,i64)* @lam8563 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8567, i64* %eptr8566                                                   ; store fptr
  %arg7255 = ptrtoint i64* %cloptr8565 to i64                                        ; closure cast; i64* -> i64
  %cloptr8568 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8569 = getelementptr inbounds i64, i64* %cloptr8568, i64 0                    ; &cloptr8568[0]
  %f8570 = ptrtoint void(i64,i64,i64)* @lam8561 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8570, i64* %eptr8569                                                   ; store fptr
  %arg7254 = ptrtoint i64* %cloptr8568 to i64                                        ; closure cast; i64* -> i64
  %cloptr8571 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8572 = getelementptr inbounds i64, i64* %cloptr8571, i64 0                    ; &cloptr8571[0]
  %f8573 = ptrtoint void(i64,i64,i64)* @lam8113 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8573, i64* %eptr8572                                                   ; store fptr
  %arg7253 = ptrtoint i64* %cloptr8571 to i64                                        ; closure cast; i64* -> i64
  %cloptr8574 = inttoptr i64 %arg7255 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8574)                                         ; assert function application
  %i0ptr8575 = getelementptr inbounds i64, i64* %cloptr8574, i64 0                   ; &cloptr8574[0]
  %f8577 = load i64, i64* %i0ptr8575, align 8                                        ; load; *i0ptr8575
  %fptr8576 = inttoptr i64 %f8577 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8576(i64 %arg7255, i64 %arg7254, i64 %arg7253)      ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam8563(i64 %env8564, i64 %cont7245, i64 %xSQ$yu) {
  %cloptr8578 = inttoptr i64 %xSQ$yu to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8578)                                         ; assert function application
  %i0ptr8579 = getelementptr inbounds i64, i64* %cloptr8578, i64 0                   ; &cloptr8578[0]
  %f8581 = load i64, i64* %i0ptr8579, align 8                                        ; load; *i0ptr8579
  %fptr8580 = inttoptr i64 %f8581 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8580(i64 %xSQ$yu, i64 %cont7245, i64 %xSQ$yu)       ; tail call
  ret void
}


define void @lam8561(i64 %env8562, i64 %_957066, i64 %IcL$Ycmb) {
  %cloptr8582 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8584 = getelementptr inbounds i64, i64* %cloptr8582, i64 1                    ; &eptr8584[1]
  store i64 %IcL$Ycmb, i64* %eptr8584                                                ; *eptr8584 = %IcL$Ycmb
  %eptr8583 = getelementptr inbounds i64, i64* %cloptr8582, i64 0                    ; &cloptr8582[0]
  %f8585 = ptrtoint void(i64,i64,i64)* @lam8559 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8585, i64* %eptr8583                                                   ; store fptr
  %arg7260 = ptrtoint i64* %cloptr8582 to i64                                        ; closure cast; i64* -> i64
  %cloptr8586 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8587 = getelementptr inbounds i64, i64* %cloptr8586, i64 0                    ; &cloptr8586[0]
  %f8588 = ptrtoint void(i64,i64,i64)* @lam8121 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8588, i64* %eptr8587                                                   ; store fptr
  %arg7259 = ptrtoint i64* %cloptr8586 to i64                                        ; closure cast; i64* -> i64
  %cloptr8589 = inttoptr i64 %IcL$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8589)                                         ; assert function application
  %i0ptr8590 = getelementptr inbounds i64, i64* %cloptr8589, i64 0                   ; &cloptr8589[0]
  %f8592 = load i64, i64* %i0ptr8590, align 8                                        ; load; *i0ptr8590
  %fptr8591 = inttoptr i64 %f8592 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8591(i64 %IcL$Ycmb, i64 %arg7260, i64 %arg7259)     ; tail call
  ret void
}


define void @lam8559(i64 %env8560, i64 %_957067, i64 %Yrh$_37foldr1) {
  %envptr8593 = inttoptr i64 %env8560 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8594 = getelementptr inbounds i64, i64* %envptr8593, i64 1                  ; &envptr8593[1]
  %IcL$Ycmb = load i64, i64* %envptr8594, align 8                                    ; load; *envptr8594
  %cloptr8595 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8597 = getelementptr inbounds i64, i64* %cloptr8595, i64 1                    ; &eptr8597[1]
  %eptr8598 = getelementptr inbounds i64, i64* %cloptr8595, i64 2                    ; &eptr8598[2]
  store i64 %IcL$Ycmb, i64* %eptr8597                                                ; *eptr8597 = %IcL$Ycmb
  store i64 %Yrh$_37foldr1, i64* %eptr8598                                           ; *eptr8598 = %Yrh$_37foldr1
  %eptr8596 = getelementptr inbounds i64, i64* %cloptr8595, i64 0                    ; &cloptr8595[0]
  %f8599 = ptrtoint void(i64,i64,i64)* @lam8557 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8599, i64* %eptr8596                                                   ; store fptr
  %arg7263 = ptrtoint i64* %cloptr8595 to i64                                        ; closure cast; i64* -> i64
  %cloptr8600 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8601 = getelementptr inbounds i64, i64* %cloptr8600, i64 0                    ; &cloptr8600[0]
  %f8602 = ptrtoint void(i64,i64,i64)* @lam8133 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8602, i64* %eptr8601                                                   ; store fptr
  %arg7262 = ptrtoint i64* %cloptr8600 to i64                                        ; closure cast; i64* -> i64
  %cloptr8603 = inttoptr i64 %IcL$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8603)                                         ; assert function application
  %i0ptr8604 = getelementptr inbounds i64, i64* %cloptr8603, i64 0                   ; &cloptr8603[0]
  %f8606 = load i64, i64* %i0ptr8604, align 8                                        ; load; *i0ptr8604
  %fptr8605 = inttoptr i64 %f8606 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8605(i64 %IcL$Ycmb, i64 %arg7263, i64 %arg7262)     ; tail call
  ret void
}


define void @lam8557(i64 %env8558, i64 %_957068, i64 %YVW$_37map1) {
  %envptr8607 = inttoptr i64 %env8558 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8608 = getelementptr inbounds i64, i64* %envptr8607, i64 2                  ; &envptr8607[2]
  %Yrh$_37foldr1 = load i64, i64* %envptr8608, align 8                               ; load; *envptr8608
  %envptr8609 = inttoptr i64 %env8558 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8610 = getelementptr inbounds i64, i64* %envptr8609, i64 1                  ; &envptr8609[1]
  %IcL$Ycmb = load i64, i64* %envptr8610, align 8                                    ; load; *envptr8610
  %cloptr8611 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8613 = getelementptr inbounds i64, i64* %cloptr8611, i64 1                    ; &eptr8613[1]
  %eptr8614 = getelementptr inbounds i64, i64* %cloptr8611, i64 2                    ; &eptr8614[2]
  %eptr8615 = getelementptr inbounds i64, i64* %cloptr8611, i64 3                    ; &eptr8615[3]
  store i64 %IcL$Ycmb, i64* %eptr8613                                                ; *eptr8613 = %IcL$Ycmb
  store i64 %Yrh$_37foldr1, i64* %eptr8614                                           ; *eptr8614 = %Yrh$_37foldr1
  store i64 %YVW$_37map1, i64* %eptr8615                                             ; *eptr8615 = %YVW$_37map1
  %eptr8612 = getelementptr inbounds i64, i64* %cloptr8611, i64 0                    ; &cloptr8611[0]
  %f8616 = ptrtoint void(i64,i64,i64)* @lam8555 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8616, i64* %eptr8612                                                   ; store fptr
  %arg7266 = ptrtoint i64* %cloptr8611 to i64                                        ; closure cast; i64* -> i64
  %cloptr8617 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8618 = getelementptr inbounds i64, i64* %cloptr8617, i64 0                    ; &cloptr8617[0]
  %f8619 = ptrtoint void(i64,i64,i64)* @lam8147 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8619, i64* %eptr8618                                                   ; store fptr
  %arg7265 = ptrtoint i64* %cloptr8617 to i64                                        ; closure cast; i64* -> i64
  %cloptr8620 = inttoptr i64 %IcL$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8620)                                         ; assert function application
  %i0ptr8621 = getelementptr inbounds i64, i64* %cloptr8620, i64 0                   ; &cloptr8620[0]
  %f8623 = load i64, i64* %i0ptr8621, align 8                                        ; load; *i0ptr8621
  %fptr8622 = inttoptr i64 %f8623 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8622(i64 %IcL$Ycmb, i64 %arg7266, i64 %arg7265)     ; tail call
  ret void
}


define void @lam8555(i64 %env8556, i64 %_957069, i64 %aqS$_37take) {
  %envptr8624 = inttoptr i64 %env8556 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8625 = getelementptr inbounds i64, i64* %envptr8624, i64 3                  ; &envptr8624[3]
  %YVW$_37map1 = load i64, i64* %envptr8625, align 8                                 ; load; *envptr8625
  %envptr8626 = inttoptr i64 %env8556 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8627 = getelementptr inbounds i64, i64* %envptr8626, i64 2                  ; &envptr8626[2]
  %Yrh$_37foldr1 = load i64, i64* %envptr8627, align 8                               ; load; *envptr8627
  %envptr8628 = inttoptr i64 %env8556 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8629 = getelementptr inbounds i64, i64* %envptr8628, i64 1                  ; &envptr8628[1]
  %IcL$Ycmb = load i64, i64* %envptr8629, align 8                                    ; load; *envptr8629
  %cloptr8630 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8632 = getelementptr inbounds i64, i64* %cloptr8630, i64 1                    ; &eptr8632[1]
  %eptr8633 = getelementptr inbounds i64, i64* %cloptr8630, i64 2                    ; &eptr8633[2]
  %eptr8634 = getelementptr inbounds i64, i64* %cloptr8630, i64 3                    ; &eptr8634[3]
  %eptr8635 = getelementptr inbounds i64, i64* %cloptr8630, i64 4                    ; &eptr8635[4]
  store i64 %aqS$_37take, i64* %eptr8632                                             ; *eptr8632 = %aqS$_37take
  store i64 %IcL$Ycmb, i64* %eptr8633                                                ; *eptr8633 = %IcL$Ycmb
  store i64 %Yrh$_37foldr1, i64* %eptr8634                                           ; *eptr8634 = %Yrh$_37foldr1
  store i64 %YVW$_37map1, i64* %eptr8635                                             ; *eptr8635 = %YVW$_37map1
  %eptr8631 = getelementptr inbounds i64, i64* %cloptr8630, i64 0                    ; &cloptr8630[0]
  %f8636 = ptrtoint void(i64,i64,i64)* @lam8553 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8636, i64* %eptr8631                                                   ; store fptr
  %arg7269 = ptrtoint i64* %cloptr8630 to i64                                        ; closure cast; i64* -> i64
  %cloptr8637 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8638 = getelementptr inbounds i64, i64* %cloptr8637, i64 0                    ; &cloptr8637[0]
  %f8639 = ptrtoint void(i64,i64,i64)* @lam8158 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8639, i64* %eptr8638                                                   ; store fptr
  %arg7268 = ptrtoint i64* %cloptr8637 to i64                                        ; closure cast; i64* -> i64
  %cloptr8640 = inttoptr i64 %IcL$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8640)                                         ; assert function application
  %i0ptr8641 = getelementptr inbounds i64, i64* %cloptr8640, i64 0                   ; &cloptr8640[0]
  %f8643 = load i64, i64* %i0ptr8641, align 8                                        ; load; *i0ptr8641
  %fptr8642 = inttoptr i64 %f8643 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8642(i64 %IcL$Ycmb, i64 %arg7269, i64 %arg7268)     ; tail call
  ret void
}


define void @lam8553(i64 %env8554, i64 %_957070, i64 %Va3$_37length) {
  %envptr8644 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8645 = getelementptr inbounds i64, i64* %envptr8644, i64 4                  ; &envptr8644[4]
  %YVW$_37map1 = load i64, i64* %envptr8645, align 8                                 ; load; *envptr8645
  %envptr8646 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8647 = getelementptr inbounds i64, i64* %envptr8646, i64 3                  ; &envptr8646[3]
  %Yrh$_37foldr1 = load i64, i64* %envptr8647, align 8                               ; load; *envptr8647
  %envptr8648 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8649 = getelementptr inbounds i64, i64* %envptr8648, i64 2                  ; &envptr8648[2]
  %IcL$Ycmb = load i64, i64* %envptr8649, align 8                                    ; load; *envptr8649
  %envptr8650 = inttoptr i64 %env8554 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8651 = getelementptr inbounds i64, i64* %envptr8650, i64 1                  ; &envptr8650[1]
  %aqS$_37take = load i64, i64* %envptr8651, align 8                                 ; load; *envptr8651
  %cloptr8652 = call i64* @alloc(i64 48)                                             ; malloc
  %eptr8654 = getelementptr inbounds i64, i64* %cloptr8652, i64 1                    ; &eptr8654[1]
  %eptr8655 = getelementptr inbounds i64, i64* %cloptr8652, i64 2                    ; &eptr8655[2]
  %eptr8656 = getelementptr inbounds i64, i64* %cloptr8652, i64 3                    ; &eptr8656[3]
  %eptr8657 = getelementptr inbounds i64, i64* %cloptr8652, i64 4                    ; &eptr8657[4]
  %eptr8658 = getelementptr inbounds i64, i64* %cloptr8652, i64 5                    ; &eptr8658[5]
  store i64 %aqS$_37take, i64* %eptr8654                                             ; *eptr8654 = %aqS$_37take
  store i64 %Va3$_37length, i64* %eptr8655                                           ; *eptr8655 = %Va3$_37length
  store i64 %IcL$Ycmb, i64* %eptr8656                                                ; *eptr8656 = %IcL$Ycmb
  store i64 %Yrh$_37foldr1, i64* %eptr8657                                           ; *eptr8657 = %Yrh$_37foldr1
  store i64 %YVW$_37map1, i64* %eptr8658                                             ; *eptr8658 = %YVW$_37map1
  %eptr8653 = getelementptr inbounds i64, i64* %cloptr8652, i64 0                    ; &cloptr8652[0]
  %f8659 = ptrtoint void(i64,i64,i64)* @lam8551 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8659, i64* %eptr8653                                                   ; store fptr
  %arg7272 = ptrtoint i64* %cloptr8652 to i64                                        ; closure cast; i64* -> i64
  %cloptr8660 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8661 = getelementptr inbounds i64, i64* %cloptr8660, i64 0                    ; &cloptr8660[0]
  %f8662 = ptrtoint void(i64,i64,i64)* @lam8166 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8662, i64* %eptr8661                                                   ; store fptr
  %arg7271 = ptrtoint i64* %cloptr8660 to i64                                        ; closure cast; i64* -> i64
  %cloptr8663 = inttoptr i64 %IcL$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8663)                                         ; assert function application
  %i0ptr8664 = getelementptr inbounds i64, i64* %cloptr8663, i64 0                   ; &cloptr8663[0]
  %f8666 = load i64, i64* %i0ptr8664, align 8                                        ; load; *i0ptr8664
  %fptr8665 = inttoptr i64 %f8666 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8665(i64 %IcL$Ycmb, i64 %arg7272, i64 %arg7271)     ; tail call
  ret void
}


define void @lam8551(i64 %env8552, i64 %_957071, i64 %fVq$_37foldl1) {
  %envptr8667 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8668 = getelementptr inbounds i64, i64* %envptr8667, i64 5                  ; &envptr8667[5]
  %YVW$_37map1 = load i64, i64* %envptr8668, align 8                                 ; load; *envptr8668
  %envptr8669 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8670 = getelementptr inbounds i64, i64* %envptr8669, i64 4                  ; &envptr8669[4]
  %Yrh$_37foldr1 = load i64, i64* %envptr8670, align 8                               ; load; *envptr8670
  %envptr8671 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8672 = getelementptr inbounds i64, i64* %envptr8671, i64 3                  ; &envptr8671[3]
  %IcL$Ycmb = load i64, i64* %envptr8672, align 8                                    ; load; *envptr8672
  %envptr8673 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8674 = getelementptr inbounds i64, i64* %envptr8673, i64 2                  ; &envptr8673[2]
  %Va3$_37length = load i64, i64* %envptr8674, align 8                               ; load; *envptr8674
  %envptr8675 = inttoptr i64 %env8552 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8676 = getelementptr inbounds i64, i64* %envptr8675, i64 1                  ; &envptr8675[1]
  %aqS$_37take = load i64, i64* %envptr8676, align 8                                 ; load; *envptr8676
  %cloptr8677 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8679 = getelementptr inbounds i64, i64* %cloptr8677, i64 1                    ; &eptr8679[1]
  store i64 %fVq$_37foldl1, i64* %eptr8679                                           ; *eptr8679 = %fVq$_37foldl1
  %eptr8678 = getelementptr inbounds i64, i64* %cloptr8677, i64 0                    ; &cloptr8677[0]
  %f8680 = ptrtoint void(i64,i64,i64)* @lam8549 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8680, i64* %eptr8678                                                   ; store fptr
  %AfU$_37last = ptrtoint i64* %cloptr8677 to i64                                    ; closure cast; i64* -> i64
  %cloptr8681 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8683 = getelementptr inbounds i64, i64* %cloptr8681, i64 1                    ; &eptr8683[1]
  %eptr8684 = getelementptr inbounds i64, i64* %cloptr8681, i64 2                    ; &eptr8684[2]
  store i64 %aqS$_37take, i64* %eptr8683                                             ; *eptr8683 = %aqS$_37take
  store i64 %Va3$_37length, i64* %eptr8684                                           ; *eptr8684 = %Va3$_37length
  %eptr8682 = getelementptr inbounds i64, i64* %cloptr8681, i64 0                    ; &cloptr8681[0]
  %f8685 = ptrtoint void(i64,i64,i64,i64)* @lam8543 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8685, i64* %eptr8682                                                   ; store fptr
  %KiO$_37drop_45right = ptrtoint i64* %cloptr8681 to i64                            ; closure cast; i64* -> i64
  %cloptr8686 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr8688 = getelementptr inbounds i64, i64* %cloptr8686, i64 1                    ; &eptr8688[1]
  %eptr8689 = getelementptr inbounds i64, i64* %cloptr8686, i64 2                    ; &eptr8689[2]
  %eptr8690 = getelementptr inbounds i64, i64* %cloptr8686, i64 3                    ; &eptr8690[3]
  %eptr8691 = getelementptr inbounds i64, i64* %cloptr8686, i64 4                    ; &eptr8691[4]
  %eptr8692 = getelementptr inbounds i64, i64* %cloptr8686, i64 5                    ; &eptr8692[5]
  %eptr8693 = getelementptr inbounds i64, i64* %cloptr8686, i64 6                    ; &eptr8693[6]
  store i64 %KiO$_37drop_45right, i64* %eptr8688                                     ; *eptr8688 = %KiO$_37drop_45right
  store i64 %Va3$_37length, i64* %eptr8689                                           ; *eptr8689 = %Va3$_37length
  store i64 %fVq$_37foldl1, i64* %eptr8690                                           ; *eptr8690 = %fVq$_37foldl1
  store i64 %IcL$Ycmb, i64* %eptr8691                                                ; *eptr8691 = %IcL$Ycmb
  store i64 %Yrh$_37foldr1, i64* %eptr8692                                           ; *eptr8692 = %Yrh$_37foldr1
  store i64 %AfU$_37last, i64* %eptr8693                                             ; *eptr8693 = %AfU$_37last
  %eptr8687 = getelementptr inbounds i64, i64* %cloptr8686, i64 0                    ; &cloptr8686[0]
  %f8694 = ptrtoint void(i64,i64,i64)* @lam8539 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8694, i64* %eptr8687                                                   ; store fptr
  %arg7292 = ptrtoint i64* %cloptr8686 to i64                                        ; closure cast; i64* -> i64
  %cloptr8695 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8697 = getelementptr inbounds i64, i64* %cloptr8695, i64 1                    ; &eptr8697[1]
  %eptr8698 = getelementptr inbounds i64, i64* %cloptr8695, i64 2                    ; &eptr8698[2]
  store i64 %Yrh$_37foldr1, i64* %eptr8697                                           ; *eptr8697 = %Yrh$_37foldr1
  store i64 %YVW$_37map1, i64* %eptr8698                                             ; *eptr8698 = %YVW$_37map1
  %eptr8696 = getelementptr inbounds i64, i64* %cloptr8695, i64 0                    ; &cloptr8695[0]
  %f8699 = ptrtoint void(i64,i64,i64)* @lam8203 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8699, i64* %eptr8696                                                   ; store fptr
  %arg7291 = ptrtoint i64* %cloptr8695 to i64                                        ; closure cast; i64* -> i64
  %cloptr8700 = inttoptr i64 %IcL$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8700)                                         ; assert function application
  %i0ptr8701 = getelementptr inbounds i64, i64* %cloptr8700, i64 0                   ; &cloptr8700[0]
  %f8703 = load i64, i64* %i0ptr8701, align 8                                        ; load; *i0ptr8701
  %fptr8702 = inttoptr i64 %f8703 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8702(i64 %IcL$Ycmb, i64 %arg7292, i64 %arg7291)     ; tail call
  ret void
}


define void @lam8549(i64 %env8550, i64 %cont7072, i64 %aKb$lst) {
  %envptr8704 = inttoptr i64 %env8550 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8705 = getelementptr inbounds i64, i64* %envptr8704, i64 1                  ; &envptr8704[1]
  %fVq$_37foldl1 = load i64, i64* %envptr8705, align 8                               ; load; *envptr8705
  %cloptr8706 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8707 = getelementptr inbounds i64, i64* %cloptr8706, i64 0                    ; &cloptr8706[0]
  %f8708 = ptrtoint void(i64,i64,i64,i64)* @lam8547 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8708, i64* %eptr8707                                                   ; store fptr
  %arg7276 = ptrtoint i64* %cloptr8706 to i64                                        ; closure cast; i64* -> i64
  %arg7275 = add i64 0, 0                                                            ; quoted ()
  %cloptr8709 = inttoptr i64 %fVq$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8709)                                         ; assert function application
  %i0ptr8710 = getelementptr inbounds i64, i64* %cloptr8709, i64 0                   ; &cloptr8709[0]
  %f8712 = load i64, i64* %i0ptr8710, align 8                                        ; load; *i0ptr8710
  %fptr8711 = inttoptr i64 %f8712 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8711(i64 %fVq$_37foldl1, i64 %cont7072, i64 %arg7276, i64 %arg7275, i64 %aKb$lst); tail call
  ret void
}


define void @lam8547(i64 %env8548, i64 %cont7073, i64 %auG$x, i64 %NrE$y) {
  %arg7280 = add i64 0, 0                                                            ; quoted ()
  %cloptr8713 = inttoptr i64 %cont7073 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8713)                                         ; assert function application
  %i0ptr8714 = getelementptr inbounds i64, i64* %cloptr8713, i64 0                   ; &cloptr8713[0]
  %f8716 = load i64, i64* %i0ptr8714, align 8                                        ; load; *i0ptr8714
  %fptr8715 = inttoptr i64 %f8716 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8715(i64 %cont7073, i64 %arg7280, i64 %auG$x)       ; tail call
  ret void
}


define void @lam8543(i64 %env8544, i64 %cont7074, i64 %qwm$lst, i64 %N9W$n) {
  %envptr8717 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8718 = getelementptr inbounds i64, i64* %envptr8717, i64 2                  ; &envptr8717[2]
  %Va3$_37length = load i64, i64* %envptr8718, align 8                               ; load; *envptr8718
  %envptr8719 = inttoptr i64 %env8544 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8720 = getelementptr inbounds i64, i64* %envptr8719, i64 1                  ; &envptr8719[1]
  %aqS$_37take = load i64, i64* %envptr8720, align 8                                 ; load; *envptr8720
  %cloptr8721 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8723 = getelementptr inbounds i64, i64* %cloptr8721, i64 1                    ; &eptr8723[1]
  %eptr8724 = getelementptr inbounds i64, i64* %cloptr8721, i64 2                    ; &eptr8724[2]
  %eptr8725 = getelementptr inbounds i64, i64* %cloptr8721, i64 3                    ; &eptr8725[3]
  %eptr8726 = getelementptr inbounds i64, i64* %cloptr8721, i64 4                    ; &eptr8726[4]
  store i64 %aqS$_37take, i64* %eptr8723                                             ; *eptr8723 = %aqS$_37take
  store i64 %N9W$n, i64* %eptr8724                                                   ; *eptr8724 = %N9W$n
  store i64 %qwm$lst, i64* %eptr8725                                                 ; *eptr8725 = %qwm$lst
  store i64 %cont7074, i64* %eptr8726                                                ; *eptr8726 = %cont7074
  %eptr8722 = getelementptr inbounds i64, i64* %cloptr8721, i64 0                    ; &cloptr8721[0]
  %f8727 = ptrtoint void(i64,i64,i64)* @lam8541 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8727, i64* %eptr8722                                                   ; store fptr
  %arg7283 = ptrtoint i64* %cloptr8721 to i64                                        ; closure cast; i64* -> i64
  %cloptr8728 = inttoptr i64 %Va3$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8728)                                         ; assert function application
  %i0ptr8729 = getelementptr inbounds i64, i64* %cloptr8728, i64 0                   ; &cloptr8728[0]
  %f8731 = load i64, i64* %i0ptr8729, align 8                                        ; load; *i0ptr8729
  %fptr8730 = inttoptr i64 %f8731 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8730(i64 %Va3$_37length, i64 %arg7283, i64 %qwm$lst); tail call
  ret void
}


define void @lam8541(i64 %env8542, i64 %_957075, i64 %a6969) {
  %envptr8732 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8733 = getelementptr inbounds i64, i64* %envptr8732, i64 4                  ; &envptr8732[4]
  %cont7074 = load i64, i64* %envptr8733, align 8                                    ; load; *envptr8733
  %envptr8734 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8735 = getelementptr inbounds i64, i64* %envptr8734, i64 3                  ; &envptr8734[3]
  %qwm$lst = load i64, i64* %envptr8735, align 8                                     ; load; *envptr8735
  %envptr8736 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8737 = getelementptr inbounds i64, i64* %envptr8736, i64 2                  ; &envptr8736[2]
  %N9W$n = load i64, i64* %envptr8737, align 8                                       ; load; *envptr8737
  %envptr8738 = inttoptr i64 %env8542 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8739 = getelementptr inbounds i64, i64* %envptr8738, i64 1                  ; &envptr8738[1]
  %aqS$_37take = load i64, i64* %envptr8739, align 8                                 ; load; *envptr8739
  %a6970 = call i64 @prim__45(i64 %a6969, i64 %N9W$n)                                ; call prim__45
  %cloptr8740 = inttoptr i64 %aqS$_37take to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8740)                                         ; assert function application
  %i0ptr8741 = getelementptr inbounds i64, i64* %cloptr8740, i64 0                   ; &cloptr8740[0]
  %f8743 = load i64, i64* %i0ptr8741, align 8                                        ; load; *i0ptr8741
  %fptr8742 = inttoptr i64 %f8743 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8742(i64 %aqS$_37take, i64 %cont7074, i64 %qwm$lst, i64 %a6970); tail call
  ret void
}


define void @lam8539(i64 %env8540, i64 %_957076, i64 %Ini$_37foldr) {
  %envptr8744 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8745 = getelementptr inbounds i64, i64* %envptr8744, i64 6                  ; &envptr8744[6]
  %AfU$_37last = load i64, i64* %envptr8745, align 8                                 ; load; *envptr8745
  %envptr8746 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8747 = getelementptr inbounds i64, i64* %envptr8746, i64 5                  ; &envptr8746[5]
  %Yrh$_37foldr1 = load i64, i64* %envptr8747, align 8                               ; load; *envptr8747
  %envptr8748 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8749 = getelementptr inbounds i64, i64* %envptr8748, i64 4                  ; &envptr8748[4]
  %IcL$Ycmb = load i64, i64* %envptr8749, align 8                                    ; load; *envptr8749
  %envptr8750 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8751 = getelementptr inbounds i64, i64* %envptr8750, i64 3                  ; &envptr8750[3]
  %fVq$_37foldl1 = load i64, i64* %envptr8751, align 8                               ; load; *envptr8751
  %envptr8752 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8753 = getelementptr inbounds i64, i64* %envptr8752, i64 2                  ; &envptr8752[2]
  %Va3$_37length = load i64, i64* %envptr8753, align 8                               ; load; *envptr8753
  %envptr8754 = inttoptr i64 %env8540 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8755 = getelementptr inbounds i64, i64* %envptr8754, i64 1                  ; &envptr8754[1]
  %KiO$_37drop_45right = load i64, i64* %envptr8755, align 8                         ; load; *envptr8755
  %cloptr8756 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8758 = getelementptr inbounds i64, i64* %cloptr8756, i64 1                    ; &eptr8758[1]
  store i64 %Yrh$_37foldr1, i64* %eptr8758                                           ; *eptr8758 = %Yrh$_37foldr1
  %eptr8757 = getelementptr inbounds i64, i64* %cloptr8756, i64 0                    ; &cloptr8756[0]
  %f8759 = ptrtoint void(i64,i64,i64,i64)* @lam8537 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8759, i64* %eptr8757                                                   ; store fptr
  %KqY$_37map1 = ptrtoint i64* %cloptr8756 to i64                                    ; closure cast; i64* -> i64
  %cloptr8760 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8762 = getelementptr inbounds i64, i64* %cloptr8760, i64 1                    ; &eptr8762[1]
  %eptr8763 = getelementptr inbounds i64, i64* %cloptr8760, i64 2                    ; &eptr8763[2]
  %eptr8764 = getelementptr inbounds i64, i64* %cloptr8760, i64 3                    ; &eptr8764[3]
  store i64 %KiO$_37drop_45right, i64* %eptr8762                                     ; *eptr8762 = %KiO$_37drop_45right
  store i64 %Ini$_37foldr, i64* %eptr8763                                            ; *eptr8763 = %Ini$_37foldr
  store i64 %AfU$_37last, i64* %eptr8764                                             ; *eptr8764 = %AfU$_37last
  %eptr8761 = getelementptr inbounds i64, i64* %cloptr8760, i64 0                    ; &cloptr8760[0]
  %f8765 = ptrtoint void(i64,i64)* @lam8529 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8765, i64* %eptr8761                                                   ; store fptr
  %Obd$_37map = ptrtoint i64* %cloptr8760 to i64                                     ; closure cast; i64* -> i64
  %cloptr8766 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8768 = getelementptr inbounds i64, i64* %cloptr8766, i64 1                    ; &eptr8768[1]
  %eptr8769 = getelementptr inbounds i64, i64* %cloptr8766, i64 2                    ; &eptr8769[2]
  store i64 %Va3$_37length, i64* %eptr8768                                           ; *eptr8768 = %Va3$_37length
  store i64 %fVq$_37foldl1, i64* %eptr8769                                           ; *eptr8769 = %fVq$_37foldl1
  %eptr8767 = getelementptr inbounds i64, i64* %cloptr8766, i64 0                    ; &cloptr8766[0]
  %f8770 = ptrtoint void(i64,i64,i64)* @lam8516 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8770, i64* %eptr8767                                                   ; store fptr
  %arg7334 = ptrtoint i64* %cloptr8766 to i64                                        ; closure cast; i64* -> i64
  %cloptr8771 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8773 = getelementptr inbounds i64, i64* %cloptr8771, i64 1                    ; &eptr8773[1]
  %eptr8774 = getelementptr inbounds i64, i64* %cloptr8771, i64 2                    ; &eptr8774[2]
  %eptr8775 = getelementptr inbounds i64, i64* %cloptr8771, i64 3                    ; &eptr8775[3]
  store i64 %Yrh$_37foldr1, i64* %eptr8773                                           ; *eptr8773 = %Yrh$_37foldr1
  store i64 %KqY$_37map1, i64* %eptr8774                                             ; *eptr8774 = %KqY$_37map1
  store i64 %Ini$_37foldr, i64* %eptr8775                                            ; *eptr8775 = %Ini$_37foldr
  %eptr8772 = getelementptr inbounds i64, i64* %cloptr8771, i64 0                    ; &cloptr8771[0]
  %f8776 = ptrtoint void(i64,i64,i64)* @lam8240 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8776, i64* %eptr8772                                                   ; store fptr
  %arg7333 = ptrtoint i64* %cloptr8771 to i64                                        ; closure cast; i64* -> i64
  %cloptr8777 = inttoptr i64 %IcL$Ycmb to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8777)                                         ; assert function application
  %i0ptr8778 = getelementptr inbounds i64, i64* %cloptr8777, i64 0                   ; &cloptr8777[0]
  %f8780 = load i64, i64* %i0ptr8778, align 8                                        ; load; *i0ptr8778
  %fptr8779 = inttoptr i64 %f8780 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8779(i64 %IcL$Ycmb, i64 %arg7334, i64 %arg7333)     ; tail call
  ret void
}


define void @lam8537(i64 %env8538, i64 %cont7077, i64 %RbS$f, i64 %Vf1$lst) {
  %envptr8781 = inttoptr i64 %env8538 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8782 = getelementptr inbounds i64, i64* %envptr8781, i64 1                  ; &envptr8781[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr8782, align 8                               ; load; *envptr8782
  %cloptr8783 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8785 = getelementptr inbounds i64, i64* %cloptr8783, i64 1                    ; &eptr8785[1]
  store i64 %RbS$f, i64* %eptr8785                                                   ; *eptr8785 = %RbS$f
  %eptr8784 = getelementptr inbounds i64, i64* %cloptr8783, i64 0                    ; &cloptr8783[0]
  %f8786 = ptrtoint void(i64,i64,i64,i64)* @lam8535 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8786, i64* %eptr8784                                                   ; store fptr
  %arg7296 = ptrtoint i64* %cloptr8783 to i64                                        ; closure cast; i64* -> i64
  %arg7295 = add i64 0, 0                                                            ; quoted ()
  %cloptr8787 = inttoptr i64 %Yrh$_37foldr1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8787)                                         ; assert function application
  %i0ptr8788 = getelementptr inbounds i64, i64* %cloptr8787, i64 0                   ; &cloptr8787[0]
  %f8790 = load i64, i64* %i0ptr8788, align 8                                        ; load; *i0ptr8788
  %fptr8789 = inttoptr i64 %f8790 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8789(i64 %Yrh$_37foldr1, i64 %cont7077, i64 %arg7296, i64 %arg7295, i64 %Vf1$lst); tail call
  ret void
}


define void @lam8535(i64 %env8536, i64 %cont7078, i64 %b4e$v, i64 %otE$r) {
  %envptr8791 = inttoptr i64 %env8536 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8792 = getelementptr inbounds i64, i64* %envptr8791, i64 1                  ; &envptr8791[1]
  %RbS$f = load i64, i64* %envptr8792, align 8                                       ; load; *envptr8792
  %cloptr8793 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8795 = getelementptr inbounds i64, i64* %cloptr8793, i64 1                    ; &eptr8795[1]
  %eptr8796 = getelementptr inbounds i64, i64* %cloptr8793, i64 2                    ; &eptr8796[2]
  store i64 %otE$r, i64* %eptr8795                                                   ; *eptr8795 = %otE$r
  store i64 %cont7078, i64* %eptr8796                                                ; *eptr8796 = %cont7078
  %eptr8794 = getelementptr inbounds i64, i64* %cloptr8793, i64 0                    ; &cloptr8793[0]
  %f8797 = ptrtoint void(i64,i64,i64)* @lam8533 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8797, i64* %eptr8794                                                   ; store fptr
  %arg7300 = ptrtoint i64* %cloptr8793 to i64                                        ; closure cast; i64* -> i64
  %cloptr8798 = inttoptr i64 %RbS$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8798)                                         ; assert function application
  %i0ptr8799 = getelementptr inbounds i64, i64* %cloptr8798, i64 0                   ; &cloptr8798[0]
  %f8801 = load i64, i64* %i0ptr8799, align 8                                        ; load; *i0ptr8799
  %fptr8800 = inttoptr i64 %f8801 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8800(i64 %RbS$f, i64 %arg7300, i64 %b4e$v)          ; tail call
  ret void
}


define void @lam8533(i64 %env8534, i64 %_957079, i64 %a6979) {
  %envptr8802 = inttoptr i64 %env8534 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8803 = getelementptr inbounds i64, i64* %envptr8802, i64 2                  ; &envptr8802[2]
  %cont7078 = load i64, i64* %envptr8803, align 8                                    ; load; *envptr8803
  %envptr8804 = inttoptr i64 %env8534 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8805 = getelementptr inbounds i64, i64* %envptr8804, i64 1                  ; &envptr8804[1]
  %otE$r = load i64, i64* %envptr8805, align 8                                       ; load; *envptr8805
  %retprim7080 = call i64 @prim_cons(i64 %a6979, i64 %otE$r)                         ; call prim_cons
  %arg7305 = add i64 0, 0                                                            ; quoted ()
  %cloptr8806 = inttoptr i64 %cont7078 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8806)                                         ; assert function application
  %i0ptr8807 = getelementptr inbounds i64, i64* %cloptr8806, i64 0                   ; &cloptr8806[0]
  %f8809 = load i64, i64* %i0ptr8807, align 8                                        ; load; *i0ptr8807
  %fptr8808 = inttoptr i64 %f8809 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8808(i64 %cont7078, i64 %arg7305, i64 %retprim7080) ; tail call
  ret void
}


define void @lam8529(i64 %env8530, i64 %xOy$args7082) {
  %envptr8810 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8811 = getelementptr inbounds i64, i64* %envptr8810, i64 3                  ; &envptr8810[3]
  %AfU$_37last = load i64, i64* %envptr8811, align 8                                 ; load; *envptr8811
  %envptr8812 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8813 = getelementptr inbounds i64, i64* %envptr8812, i64 2                  ; &envptr8812[2]
  %Ini$_37foldr = load i64, i64* %envptr8813, align 8                                ; load; *envptr8813
  %envptr8814 = inttoptr i64 %env8530 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8815 = getelementptr inbounds i64, i64* %envptr8814, i64 1                  ; &envptr8814[1]
  %KiO$_37drop_45right = load i64, i64* %envptr8815, align 8                         ; load; *envptr8815
  %cont7081 = call i64 @prim_car(i64 %xOy$args7082)                                  ; call prim_car
  %xOy$args = call i64 @prim_cdr(i64 %xOy$args7082)                                  ; call prim_cdr
  %bH1$f = call i64 @prim_car(i64 %xOy$args)                                         ; call prim_car
  %WNC$lsts = call i64 @prim_cdr(i64 %xOy$args)                                      ; call prim_cdr
  %arg7312 = add i64 0, 0                                                            ; quoted ()
  %a6983 = call i64 @prim_cons(i64 %arg7312, i64 %WNC$lsts)                          ; call prim_cons
  %cloptr8816 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8818 = getelementptr inbounds i64, i64* %cloptr8816, i64 1                    ; &eptr8818[1]
  %eptr8819 = getelementptr inbounds i64, i64* %cloptr8816, i64 2                    ; &eptr8819[2]
  %eptr8820 = getelementptr inbounds i64, i64* %cloptr8816, i64 3                    ; &eptr8820[3]
  store i64 %KiO$_37drop_45right, i64* %eptr8818                                     ; *eptr8818 = %KiO$_37drop_45right
  store i64 %AfU$_37last, i64* %eptr8819                                             ; *eptr8819 = %AfU$_37last
  store i64 %bH1$f, i64* %eptr8820                                                   ; *eptr8820 = %bH1$f
  %eptr8817 = getelementptr inbounds i64, i64* %cloptr8816, i64 0                    ; &cloptr8816[0]
  %f8821 = ptrtoint void(i64,i64)* @lam8526 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8821, i64* %eptr8817                                                   ; store fptr
  %arg7314 = ptrtoint i64* %cloptr8816 to i64                                        ; closure cast; i64* -> i64
  %a6984 = call i64 @prim_cons(i64 %arg7314, i64 %a6983)                             ; call prim_cons
  %cps_45lst7090 = call i64 @prim_cons(i64 %cont7081, i64 %a6984)                    ; call prim_cons
  %cloptr8822 = inttoptr i64 %Ini$_37foldr to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8822)                                         ; assert function application
  %i0ptr8823 = getelementptr inbounds i64, i64* %cloptr8822, i64 0                   ; &cloptr8822[0]
  %f8825 = load i64, i64* %i0ptr8823, align 8                                        ; load; *i0ptr8823
  %fptr8824 = inttoptr i64 %f8825 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8824(i64 %Ini$_37foldr, i64 %cps_45lst7090)         ; tail call
  ret void
}


define void @lam8526(i64 %env8527, i64 %HbK$fargs7084) {
  %envptr8826 = inttoptr i64 %env8527 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8827 = getelementptr inbounds i64, i64* %envptr8826, i64 3                  ; &envptr8826[3]
  %bH1$f = load i64, i64* %envptr8827, align 8                                       ; load; *envptr8827
  %envptr8828 = inttoptr i64 %env8527 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8829 = getelementptr inbounds i64, i64* %envptr8828, i64 2                  ; &envptr8828[2]
  %AfU$_37last = load i64, i64* %envptr8829, align 8                                 ; load; *envptr8829
  %envptr8830 = inttoptr i64 %env8527 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8831 = getelementptr inbounds i64, i64* %envptr8830, i64 1                  ; &envptr8830[1]
  %KiO$_37drop_45right = load i64, i64* %envptr8831, align 8                         ; load; *envptr8831
  %cont7083 = call i64 @prim_car(i64 %HbK$fargs7084)                                 ; call prim_car
  %HbK$fargs = call i64 @prim_cdr(i64 %HbK$fargs7084)                                ; call prim_cdr
  %cloptr8832 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr8834 = getelementptr inbounds i64, i64* %cloptr8832, i64 1                    ; &eptr8834[1]
  %eptr8835 = getelementptr inbounds i64, i64* %cloptr8832, i64 2                    ; &eptr8835[2]
  %eptr8836 = getelementptr inbounds i64, i64* %cloptr8832, i64 3                    ; &eptr8836[3]
  %eptr8837 = getelementptr inbounds i64, i64* %cloptr8832, i64 4                    ; &eptr8837[4]
  store i64 %HbK$fargs, i64* %eptr8834                                               ; *eptr8834 = %HbK$fargs
  store i64 %cont7083, i64* %eptr8835                                                ; *eptr8835 = %cont7083
  store i64 %AfU$_37last, i64* %eptr8836                                             ; *eptr8836 = %AfU$_37last
  store i64 %bH1$f, i64* %eptr8837                                                   ; *eptr8837 = %bH1$f
  %eptr8833 = getelementptr inbounds i64, i64* %cloptr8832, i64 0                    ; &cloptr8832[0]
  %f8838 = ptrtoint void(i64,i64,i64)* @lam8524 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8838, i64* %eptr8833                                                   ; store fptr
  %arg7319 = ptrtoint i64* %cloptr8832 to i64                                        ; closure cast; i64* -> i64
  %arg7317 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr8839 = inttoptr i64 %KiO$_37drop_45right to i64*                            ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8839)                                         ; assert function application
  %i0ptr8840 = getelementptr inbounds i64, i64* %cloptr8839, i64 0                   ; &cloptr8839[0]
  %f8842 = load i64, i64* %i0ptr8840, align 8                                        ; load; *i0ptr8840
  %fptr8841 = inttoptr i64 %f8842 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8841(i64 %KiO$_37drop_45right, i64 %arg7319, i64 %HbK$fargs, i64 %arg7317); tail call
  ret void
}


define void @lam8524(i64 %env8525, i64 %_957085, i64 %a6980) {
  %envptr8843 = inttoptr i64 %env8525 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8844 = getelementptr inbounds i64, i64* %envptr8843, i64 4                  ; &envptr8843[4]
  %bH1$f = load i64, i64* %envptr8844, align 8                                       ; load; *envptr8844
  %envptr8845 = inttoptr i64 %env8525 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8846 = getelementptr inbounds i64, i64* %envptr8845, i64 3                  ; &envptr8845[3]
  %AfU$_37last = load i64, i64* %envptr8846, align 8                                 ; load; *envptr8846
  %envptr8847 = inttoptr i64 %env8525 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8848 = getelementptr inbounds i64, i64* %envptr8847, i64 2                  ; &envptr8847[2]
  %cont7083 = load i64, i64* %envptr8848, align 8                                    ; load; *envptr8848
  %envptr8849 = inttoptr i64 %env8525 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8850 = getelementptr inbounds i64, i64* %envptr8849, i64 1                  ; &envptr8849[1]
  %HbK$fargs = load i64, i64* %envptr8850, align 8                                   ; load; *envptr8850
  %cloptr8851 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8853 = getelementptr inbounds i64, i64* %cloptr8851, i64 1                    ; &eptr8853[1]
  %eptr8854 = getelementptr inbounds i64, i64* %cloptr8851, i64 2                    ; &eptr8854[2]
  %eptr8855 = getelementptr inbounds i64, i64* %cloptr8851, i64 3                    ; &eptr8855[3]
  store i64 %HbK$fargs, i64* %eptr8853                                               ; *eptr8853 = %HbK$fargs
  store i64 %cont7083, i64* %eptr8854                                                ; *eptr8854 = %cont7083
  store i64 %AfU$_37last, i64* %eptr8855                                             ; *eptr8855 = %AfU$_37last
  %eptr8852 = getelementptr inbounds i64, i64* %cloptr8851, i64 0                    ; &cloptr8851[0]
  %f8856 = ptrtoint void(i64,i64,i64)* @lam8522 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8856, i64* %eptr8852                                                   ; store fptr
  %arg7322 = ptrtoint i64* %cloptr8851 to i64                                        ; closure cast; i64* -> i64
  %cps_45lst7089 = call i64 @prim_cons(i64 %arg7322, i64 %a6980)                     ; call prim_cons
  %cloptr8857 = inttoptr i64 %bH1$f to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8857)                                         ; assert function application
  %i0ptr8858 = getelementptr inbounds i64, i64* %cloptr8857, i64 0                   ; &cloptr8857[0]
  %f8860 = load i64, i64* %i0ptr8858, align 8                                        ; load; *i0ptr8858
  %fptr8859 = inttoptr i64 %f8860 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8859(i64 %bH1$f, i64 %cps_45lst7089)                ; tail call
  ret void
}


define void @lam8522(i64 %env8523, i64 %_957086, i64 %a6981) {
  %envptr8861 = inttoptr i64 %env8523 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8862 = getelementptr inbounds i64, i64* %envptr8861, i64 3                  ; &envptr8861[3]
  %AfU$_37last = load i64, i64* %envptr8862, align 8                                 ; load; *envptr8862
  %envptr8863 = inttoptr i64 %env8523 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8864 = getelementptr inbounds i64, i64* %envptr8863, i64 2                  ; &envptr8863[2]
  %cont7083 = load i64, i64* %envptr8864, align 8                                    ; load; *envptr8864
  %envptr8865 = inttoptr i64 %env8523 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8866 = getelementptr inbounds i64, i64* %envptr8865, i64 1                  ; &envptr8865[1]
  %HbK$fargs = load i64, i64* %envptr8866, align 8                                   ; load; *envptr8866
  %cloptr8867 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8869 = getelementptr inbounds i64, i64* %cloptr8867, i64 1                    ; &eptr8869[1]
  %eptr8870 = getelementptr inbounds i64, i64* %cloptr8867, i64 2                    ; &eptr8870[2]
  store i64 %cont7083, i64* %eptr8869                                                ; *eptr8869 = %cont7083
  store i64 %a6981, i64* %eptr8870                                                   ; *eptr8870 = %a6981
  %eptr8868 = getelementptr inbounds i64, i64* %cloptr8867, i64 0                    ; &cloptr8867[0]
  %f8871 = ptrtoint void(i64,i64,i64)* @lam8520 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8871, i64* %eptr8868                                                   ; store fptr
  %arg7324 = ptrtoint i64* %cloptr8867 to i64                                        ; closure cast; i64* -> i64
  %cloptr8872 = inttoptr i64 %AfU$_37last to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8872)                                         ; assert function application
  %i0ptr8873 = getelementptr inbounds i64, i64* %cloptr8872, i64 0                   ; &cloptr8872[0]
  %f8875 = load i64, i64* %i0ptr8873, align 8                                        ; load; *i0ptr8873
  %fptr8874 = inttoptr i64 %f8875 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8874(i64 %AfU$_37last, i64 %arg7324, i64 %HbK$fargs); tail call
  ret void
}


define void @lam8520(i64 %env8521, i64 %_957087, i64 %a6982) {
  %envptr8876 = inttoptr i64 %env8521 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8877 = getelementptr inbounds i64, i64* %envptr8876, i64 2                  ; &envptr8876[2]
  %a6981 = load i64, i64* %envptr8877, align 8                                       ; load; *envptr8877
  %envptr8878 = inttoptr i64 %env8521 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8879 = getelementptr inbounds i64, i64* %envptr8878, i64 1                  ; &envptr8878[1]
  %cont7083 = load i64, i64* %envptr8879, align 8                                    ; load; *envptr8879
  %retprim7088 = call i64 @prim_cons(i64 %a6981, i64 %a6982)                         ; call prim_cons
  %arg7329 = add i64 0, 0                                                            ; quoted ()
  %cloptr8880 = inttoptr i64 %cont7083 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8880)                                         ; assert function application
  %i0ptr8881 = getelementptr inbounds i64, i64* %cloptr8880, i64 0                   ; &cloptr8880[0]
  %f8883 = load i64, i64* %i0ptr8881, align 8                                        ; load; *i0ptr8881
  %fptr8882 = inttoptr i64 %f8883 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8882(i64 %cont7083, i64 %arg7329, i64 %retprim7088) ; tail call
  ret void
}


define void @lam8516(i64 %env8517, i64 %_957091, i64 %OFI$_37foldl) {
  %envptr8884 = inttoptr i64 %env8517 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8885 = getelementptr inbounds i64, i64* %envptr8884, i64 2                  ; &envptr8884[2]
  %fVq$_37foldl1 = load i64, i64* %envptr8885, align 8                               ; load; *envptr8885
  %envptr8886 = inttoptr i64 %env8517 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8887 = getelementptr inbounds i64, i64* %envptr8886, i64 1                  ; &envptr8886[1]
  %Va3$_37length = load i64, i64* %envptr8887, align 8                               ; load; *envptr8887
  %cloptr8888 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8889 = getelementptr inbounds i64, i64* %cloptr8888, i64 0                    ; &cloptr8888[0]
  %f8890 = ptrtoint void(i64,i64,i64,i64)* @lam8514 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8890, i64* %eptr8889                                                   ; store fptr
  %OTq$_37_62 = ptrtoint i64* %cloptr8888 to i64                                     ; closure cast; i64* -> i64
  %cloptr8891 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8892 = getelementptr inbounds i64, i64* %cloptr8891, i64 0                    ; &cloptr8891[0]
  %f8893 = ptrtoint void(i64,i64,i64,i64)* @lam8511 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8893, i64* %eptr8892                                                   ; store fptr
  %E0s$_37_62_61 = ptrtoint i64* %cloptr8891 to i64                                  ; closure cast; i64* -> i64
  %arg7349 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7348 = add i64 0, 0                                                            ; quoted ()
  %Dky$_37append = call i64 @prim_make_45vector(i64 %arg7349, i64 %arg7348)          ; call prim_make_45vector
  %arg7351 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr8894 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8896 = getelementptr inbounds i64, i64* %cloptr8894, i64 1                    ; &eptr8896[1]
  store i64 %Dky$_37append, i64* %eptr8896                                           ; *eptr8896 = %Dky$_37append
  %eptr8895 = getelementptr inbounds i64, i64* %cloptr8894, i64 0                    ; &cloptr8894[0]
  %f8897 = ptrtoint void(i64,i64,i64,i64)* @lam8505 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8897, i64* %eptr8895                                                   ; store fptr
  %arg7350 = ptrtoint i64* %cloptr8894 to i64                                        ; closure cast; i64* -> i64
  %rkN$_950 = call i64 @prim_vector_45set_33(i64 %Dky$_37append, i64 %arg7351, i64 %arg7350); call prim_vector_45set_33
  %arg7370 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7181 = call i64 @prim_vector_45ref(i64 %Dky$_37append, i64 %arg7370)       ; call prim_vector_45ref
  %cloptr8898 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8900 = getelementptr inbounds i64, i64* %cloptr8898, i64 1                    ; &eptr8900[1]
  %eptr8901 = getelementptr inbounds i64, i64* %cloptr8898, i64 2                    ; &eptr8901[2]
  %eptr8902 = getelementptr inbounds i64, i64* %cloptr8898, i64 3                    ; &eptr8902[3]
  store i64 %Va3$_37length, i64* %eptr8900                                           ; *eptr8900 = %Va3$_37length
  store i64 %fVq$_37foldl1, i64* %eptr8901                                           ; *eptr8901 = %fVq$_37foldl1
  store i64 %OTq$_37_62, i64* %eptr8902                                              ; *eptr8902 = %OTq$_37_62
  %eptr8899 = getelementptr inbounds i64, i64* %cloptr8898, i64 0                    ; &cloptr8898[0]
  %f8903 = ptrtoint void(i64,i64,i64)* @lam8497 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8903, i64* %eptr8899                                                   ; store fptr
  %arg7374 = ptrtoint i64* %cloptr8898 to i64                                        ; closure cast; i64* -> i64
  %arg7373 = add i64 0, 0                                                            ; quoted ()
  %cloptr8904 = inttoptr i64 %arg7374 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8904)                                         ; assert function application
  %i0ptr8905 = getelementptr inbounds i64, i64* %cloptr8904, i64 0                   ; &cloptr8904[0]
  %f8907 = load i64, i64* %i0ptr8905, align 8                                        ; load; *i0ptr8905
  %fptr8906 = inttoptr i64 %f8907 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8906(i64 %arg7374, i64 %arg7373, i64 %retprim7181)  ; tail call
  ret void
}


define void @lam8514(i64 %env8515, i64 %cont7092, i64 %sL4$a, i64 %fBA$b) {
  %a6992 = call i64 @prim__60_61(i64 %sL4$a, i64 %fBA$b)                             ; call prim__60_61
  %retprim7093 = call i64 @prim_not(i64 %a6992)                                      ; call prim_not
  %arg7340 = add i64 0, 0                                                            ; quoted ()
  %cloptr8908 = inttoptr i64 %cont7092 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8908)                                         ; assert function application
  %i0ptr8909 = getelementptr inbounds i64, i64* %cloptr8908, i64 0                   ; &cloptr8908[0]
  %f8911 = load i64, i64* %i0ptr8909, align 8                                        ; load; *i0ptr8909
  %fptr8910 = inttoptr i64 %f8911 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8910(i64 %cont7092, i64 %arg7340, i64 %retprim7093) ; tail call
  ret void
}


define void @lam8511(i64 %env8512, i64 %cont7094, i64 %NMl$a, i64 %n8L$b) {
  %a6993 = call i64 @prim__60(i64 %NMl$a, i64 %n8L$b)                                ; call prim__60
  %retprim7095 = call i64 @prim_not(i64 %a6993)                                      ; call prim_not
  %arg7346 = add i64 0, 0                                                            ; quoted ()
  %cloptr8912 = inttoptr i64 %cont7094 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8912)                                         ; assert function application
  %i0ptr8913 = getelementptr inbounds i64, i64* %cloptr8912, i64 0                   ; &cloptr8912[0]
  %f8915 = load i64, i64* %i0ptr8913, align 8                                        ; load; *i0ptr8913
  %fptr8914 = inttoptr i64 %f8915 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8914(i64 %cont7094, i64 %arg7346, i64 %retprim7095) ; tail call
  ret void
}


define void @lam8505(i64 %env8506, i64 %cont7178, i64 %yua$ls0, i64 %TBF$ls1) {
  %envptr8916 = inttoptr i64 %env8506 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8917 = getelementptr inbounds i64, i64* %envptr8916, i64 1                  ; &envptr8916[1]
  %Dky$_37append = load i64, i64* %envptr8917, align 8                               ; load; *envptr8917
  %a6994 = call i64 @prim_null_63(i64 %yua$ls0)                                      ; call prim_null_63
  %cmp8918 = icmp eq i64 %a6994, 15                                                  ; false?
  br i1 %cmp8918, label %else8920, label %then8919                                   ; if

then8919:
  %arg7355 = add i64 0, 0                                                            ; quoted ()
  %cloptr8921 = inttoptr i64 %cont7178 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8921)                                         ; assert function application
  %i0ptr8922 = getelementptr inbounds i64, i64* %cloptr8921, i64 0                   ; &cloptr8921[0]
  %f8924 = load i64, i64* %i0ptr8922, align 8                                        ; load; *i0ptr8922
  %fptr8923 = inttoptr i64 %f8924 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8923(i64 %cont7178, i64 %arg7355, i64 %TBF$ls1)     ; tail call
  ret void

else8920:
  %a6995 = call i64 @prim_car(i64 %yua$ls0)                                          ; call prim_car
  %arg7358 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6996 = call i64 @prim_vector_45ref(i64 %Dky$_37append, i64 %arg7358)             ; call prim_vector_45ref
  %a6997 = call i64 @prim_cdr(i64 %yua$ls0)                                          ; call prim_cdr
  %cloptr8925 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8927 = getelementptr inbounds i64, i64* %cloptr8925, i64 1                    ; &eptr8927[1]
  %eptr8928 = getelementptr inbounds i64, i64* %cloptr8925, i64 2                    ; &eptr8928[2]
  store i64 %cont7178, i64* %eptr8927                                                ; *eptr8927 = %cont7178
  store i64 %a6995, i64* %eptr8928                                                   ; *eptr8928 = %a6995
  %eptr8926 = getelementptr inbounds i64, i64* %cloptr8925, i64 0                    ; &cloptr8925[0]
  %f8929 = ptrtoint void(i64,i64,i64)* @lam8502 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8929, i64* %eptr8926                                                   ; store fptr
  %arg7363 = ptrtoint i64* %cloptr8925 to i64                                        ; closure cast; i64* -> i64
  %cloptr8930 = inttoptr i64 %a6996 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8930)                                         ; assert function application
  %i0ptr8931 = getelementptr inbounds i64, i64* %cloptr8930, i64 0                   ; &cloptr8930[0]
  %f8933 = load i64, i64* %i0ptr8931, align 8                                        ; load; *i0ptr8931
  %fptr8932 = inttoptr i64 %f8933 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8932(i64 %a6996, i64 %arg7363, i64 %a6997, i64 %TBF$ls1); tail call
  ret void
}


define void @lam8502(i64 %env8503, i64 %_957179, i64 %a6998) {
  %envptr8934 = inttoptr i64 %env8503 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8935 = getelementptr inbounds i64, i64* %envptr8934, i64 2                  ; &envptr8934[2]
  %a6995 = load i64, i64* %envptr8935, align 8                                       ; load; *envptr8935
  %envptr8936 = inttoptr i64 %env8503 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8937 = getelementptr inbounds i64, i64* %envptr8936, i64 1                  ; &envptr8936[1]
  %cont7178 = load i64, i64* %envptr8937, align 8                                    ; load; *envptr8937
  %retprim7180 = call i64 @prim_cons(i64 %a6995, i64 %a6998)                         ; call prim_cons
  %arg7368 = add i64 0, 0                                                            ; quoted ()
  %cloptr8938 = inttoptr i64 %cont7178 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8938)                                         ; assert function application
  %i0ptr8939 = getelementptr inbounds i64, i64* %cloptr8938, i64 0                   ; &cloptr8938[0]
  %f8941 = load i64, i64* %i0ptr8939, align 8                                        ; load; *i0ptr8939
  %fptr8940 = inttoptr i64 %f8941 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8940(i64 %cont7178, i64 %arg7368, i64 %retprim7180) ; tail call
  ret void
}


define void @lam8497(i64 %env8498, i64 %_957096, i64 %mva$_37append) {
  %envptr8942 = inttoptr i64 %env8498 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8943 = getelementptr inbounds i64, i64* %envptr8942, i64 3                  ; &envptr8942[3]
  %OTq$_37_62 = load i64, i64* %envptr8943, align 8                                  ; load; *envptr8943
  %envptr8944 = inttoptr i64 %env8498 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8945 = getelementptr inbounds i64, i64* %envptr8944, i64 2                  ; &envptr8944[2]
  %fVq$_37foldl1 = load i64, i64* %envptr8945, align 8                               ; load; *envptr8945
  %envptr8946 = inttoptr i64 %env8498 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr8947 = getelementptr inbounds i64, i64* %envptr8946, i64 1                  ; &envptr8946[1]
  %Va3$_37length = load i64, i64* %envptr8947, align 8                               ; load; *envptr8947
  %cloptr8948 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8949 = getelementptr inbounds i64, i64* %cloptr8948, i64 0                    ; &cloptr8948[0]
  %f8950 = ptrtoint void(i64,i64,i64)* @lam8495 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8950, i64* %eptr8949                                                   ; store fptr
  %NTz$_37list_63 = ptrtoint i64* %cloptr8948 to i64                                 ; closure cast; i64* -> i64
  %cloptr8951 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8952 = getelementptr inbounds i64, i64* %cloptr8951, i64 0                    ; &cloptr8951[0]
  %f8953 = ptrtoint void(i64,i64,i64,i64)* @lam8455 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8953, i64* %eptr8952                                                   ; store fptr
  %SfN$_37drop = ptrtoint i64* %cloptr8951 to i64                                    ; closure cast; i64* -> i64
  %cloptr8954 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8955 = getelementptr inbounds i64, i64* %cloptr8954, i64 0                    ; &cloptr8954[0]
  %f8956 = ptrtoint void(i64,i64,i64,i64)* @lam8415 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f8956, i64* %eptr8955                                                   ; store fptr
  %KCT$_37memv = ptrtoint i64* %cloptr8954 to i64                                    ; closure cast; i64* -> i64
  %cloptr8957 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr8959 = getelementptr inbounds i64, i64* %cloptr8957, i64 1                    ; &eptr8959[1]
  store i64 %fVq$_37foldl1, i64* %eptr8959                                           ; *eptr8959 = %fVq$_37foldl1
  %eptr8958 = getelementptr inbounds i64, i64* %cloptr8957, i64 0                    ; &cloptr8957[0]
  %f8960 = ptrtoint void(i64,i64)* @lam8384 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8960, i64* %eptr8958                                                   ; store fptr
  %fx5$_37_47 = ptrtoint i64* %cloptr8957 to i64                                     ; closure cast; i64* -> i64
  %cloptr8961 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8962 = getelementptr inbounds i64, i64* %cloptr8961, i64 0                    ; &cloptr8961[0]
  %f8963 = ptrtoint void(i64,i64,i64)* @lam8376 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8963, i64* %eptr8962                                                   ; store fptr
  %ZmX$_37first = ptrtoint i64* %cloptr8961 to i64                                   ; closure cast; i64* -> i64
  %cloptr8964 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8965 = getelementptr inbounds i64, i64* %cloptr8964, i64 0                    ; &cloptr8964[0]
  %f8966 = ptrtoint void(i64,i64,i64)* @lam8373 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8966, i64* %eptr8965                                                   ; store fptr
  %ZCG$_37second = ptrtoint i64* %cloptr8964 to i64                                  ; closure cast; i64* -> i64
  %cloptr8967 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8968 = getelementptr inbounds i64, i64* %cloptr8967, i64 0                    ; &cloptr8967[0]
  %f8969 = ptrtoint void(i64,i64,i64)* @lam8370 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8969, i64* %eptr8968                                                   ; store fptr
  %Ere$_37third = ptrtoint i64* %cloptr8967 to i64                                   ; closure cast; i64* -> i64
  %cloptr8970 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8971 = getelementptr inbounds i64, i64* %cloptr8970, i64 0                    ; &cloptr8970[0]
  %f8972 = ptrtoint void(i64,i64,i64)* @lam8367 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8972, i64* %eptr8971                                                   ; store fptr
  %Qjo$_37fourth = ptrtoint i64* %cloptr8970 to i64                                  ; closure cast; i64* -> i64
  %cloptr8973 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8974 = getelementptr inbounds i64, i64* %cloptr8973, i64 0                    ; &cloptr8973[0]
  %f8975 = ptrtoint void(i64,i64,i64)* @lam8364 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8975, i64* %eptr8974                                                   ; store fptr
  %vry$promise_63 = ptrtoint i64* %cloptr8973 to i64                                 ; closure cast; i64* -> i64
  %cloptr8976 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8977 = getelementptr inbounds i64, i64* %cloptr8976, i64 0                    ; &cloptr8976[0]
  %f8978 = ptrtoint void(i64,i64)* @lam8358 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f8978, i64* %eptr8977                                                   ; store fptr
  %arg7636 = ptrtoint i64* %cloptr8976 to i64                                        ; closure cast; i64* -> i64
  %cloptr8979 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr8981 = getelementptr inbounds i64, i64* %cloptr8979, i64 1                    ; &eptr8981[1]
  %eptr8982 = getelementptr inbounds i64, i64* %cloptr8979, i64 2                    ; &eptr8982[2]
  %eptr8983 = getelementptr inbounds i64, i64* %cloptr8979, i64 3                    ; &eptr8983[3]
  store i64 %Va3$_37length, i64* %eptr8981                                           ; *eptr8981 = %Va3$_37length
  store i64 %OTq$_37_62, i64* %eptr8982                                              ; *eptr8982 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr8983                                             ; *eptr8983 = %SfN$_37drop
  %eptr8980 = getelementptr inbounds i64, i64* %cloptr8979, i64 0                    ; &cloptr8979[0]
  %f8984 = ptrtoint void(i64,i64,i64)* @lam8355 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8984, i64* %eptr8980                                                   ; store fptr
  %arg7635 = ptrtoint i64* %cloptr8979 to i64                                        ; closure cast; i64* -> i64
  %rva8103 = add i64 0, 0                                                            ; quoted ()
  %rva8102 = call i64 @prim_cons(i64 %arg7635, i64 %rva8103)                         ; call prim_cons
  %cloptr8985 = inttoptr i64 %arg7636 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr8985)                                         ; assert function application
  %i0ptr8986 = getelementptr inbounds i64, i64* %cloptr8985, i64 0                   ; &cloptr8985[0]
  %f8988 = load i64, i64* %i0ptr8986, align 8                                        ; load; *i0ptr8986
  %fptr8987 = inttoptr i64 %f8988 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr8987(i64 %arg7636, i64 %rva8102)                    ; tail call
  ret void
}


define void @lam8495(i64 %env8496, i64 %cont7097, i64 %aXa$a) {
  %arg7376 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %Nwi$a = call i64 @prim_make_45vector(i64 %arg7376, i64 %aXa$a)                    ; call prim_make_45vector
  %cloptr8989 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr8990 = getelementptr inbounds i64, i64* %cloptr8989, i64 0                    ; &cloptr8989[0]
  %f8991 = ptrtoint void(i64,i64,i64)* @lam8492 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8991, i64* %eptr8990                                                   ; store fptr
  %arg7379 = ptrtoint i64* %cloptr8989 to i64                                        ; closure cast; i64* -> i64
  %cloptr8992 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8994 = getelementptr inbounds i64, i64* %cloptr8992, i64 1                    ; &eptr8994[1]
  %eptr8995 = getelementptr inbounds i64, i64* %cloptr8992, i64 2                    ; &eptr8995[2]
  store i64 %Nwi$a, i64* %eptr8994                                                   ; *eptr8994 = %Nwi$a
  store i64 %cont7097, i64* %eptr8995                                                ; *eptr8995 = %cont7097
  %eptr8993 = getelementptr inbounds i64, i64* %cloptr8992, i64 0                    ; &cloptr8992[0]
  %f8996 = ptrtoint void(i64,i64,i64)* @lam8489 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f8996, i64* %eptr8993                                                   ; store fptr
  %arg7378 = ptrtoint i64* %cloptr8992 to i64                                        ; closure cast; i64* -> i64
  %cloptr8997 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr8999 = getelementptr inbounds i64, i64* %cloptr8997, i64 1                    ; &eptr8999[1]
  %eptr9000 = getelementptr inbounds i64, i64* %cloptr8997, i64 2                    ; &eptr9000[2]
  store i64 %Nwi$a, i64* %eptr8999                                                   ; *eptr8999 = %Nwi$a
  store i64 %cont7097, i64* %eptr9000                                                ; *eptr9000 = %cont7097
  %eptr8998 = getelementptr inbounds i64, i64* %cloptr8997, i64 0                    ; &cloptr8997[0]
  %f9001 = ptrtoint void(i64,i64,i64)* @lam8472 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9001, i64* %eptr8998                                                   ; store fptr
  %arg7377 = ptrtoint i64* %cloptr8997 to i64                                        ; closure cast; i64* -> i64
  %cloptr9002 = inttoptr i64 %arg7379 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9002)                                         ; assert function application
  %i0ptr9003 = getelementptr inbounds i64, i64* %cloptr9002, i64 0                   ; &cloptr9002[0]
  %f9005 = load i64, i64* %i0ptr9003, align 8                                        ; load; *i0ptr9003
  %fptr9004 = inttoptr i64 %f9005 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9004(i64 %arg7379, i64 %arg7378, i64 %arg7377)      ; tail call
  ret void
}


define void @lam8492(i64 %env8493, i64 %cont7103, i64 %r32$k) {
  %arg7381 = add i64 0, 0                                                            ; quoted ()
  %cloptr9006 = inttoptr i64 %cont7103 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9006)                                         ; assert function application
  %i0ptr9007 = getelementptr inbounds i64, i64* %cloptr9006, i64 0                   ; &cloptr9006[0]
  %f9009 = load i64, i64* %i0ptr9007, align 8                                        ; load; *i0ptr9007
  %fptr9008 = inttoptr i64 %f9009 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9008(i64 %cont7103, i64 %arg7381, i64 %r32$k)       ; tail call
  ret void
}


define void @lam8489(i64 %env8490, i64 %_957098, i64 %kEY$cc) {
  %envptr9010 = inttoptr i64 %env8490 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9011 = getelementptr inbounds i64, i64* %envptr9010, i64 2                  ; &envptr9010[2]
  %cont7097 = load i64, i64* %envptr9011, align 8                                    ; load; *envptr9011
  %envptr9012 = inttoptr i64 %env8490 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9013 = getelementptr inbounds i64, i64* %envptr9012, i64 1                  ; &envptr9012[1]
  %Nwi$a = load i64, i64* %envptr9013, align 8                                       ; load; *envptr9013
  %arg7383 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7383)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9014 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9014, label %else9016, label %then9015                                   ; if

then9015:
  %arg7387 = add i64 0, 0                                                            ; quoted ()
  %arg7386 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9017 = inttoptr i64 %cont7097 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9017)                                         ; assert function application
  %i0ptr9018 = getelementptr inbounds i64, i64* %cloptr9017, i64 0                   ; &cloptr9017[0]
  %f9020 = load i64, i64* %i0ptr9018, align 8                                        ; load; *i0ptr9018
  %fptr9019 = inttoptr i64 %f9020 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9019(i64 %cont7097, i64 %arg7387, i64 %arg7386)     ; tail call
  ret void

else9016:
  %arg7389 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7389)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9021 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9021, label %else9023, label %then9022                                   ; if

then9022:
  %arg7392 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7392)                     ; call prim_vector_45ref
  %retprim7102 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9024 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9026 = getelementptr inbounds i64, i64* %cloptr9024, i64 1                    ; &eptr9026[1]
  %eptr9027 = getelementptr inbounds i64, i64* %cloptr9024, i64 2                    ; &eptr9027[2]
  %eptr9028 = getelementptr inbounds i64, i64* %cloptr9024, i64 3                    ; &eptr9028[3]
  store i64 %kEY$cc, i64* %eptr9026                                                  ; *eptr9026 = %kEY$cc
  store i64 %Nwi$a, i64* %eptr9027                                                   ; *eptr9027 = %Nwi$a
  store i64 %cont7097, i64* %eptr9028                                                ; *eptr9028 = %cont7097
  %eptr9025 = getelementptr inbounds i64, i64* %cloptr9024, i64 0                    ; &cloptr9024[0]
  %f9029 = ptrtoint void(i64,i64,i64)* @lam8482 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9029, i64* %eptr9025                                                   ; store fptr
  %arg7397 = ptrtoint i64* %cloptr9024 to i64                                        ; closure cast; i64* -> i64
  %arg7396 = add i64 0, 0                                                            ; quoted ()
  %cloptr9030 = inttoptr i64 %arg7397 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9030)                                         ; assert function application
  %i0ptr9031 = getelementptr inbounds i64, i64* %cloptr9030, i64 0                   ; &cloptr9030[0]
  %f9033 = load i64, i64* %i0ptr9031, align 8                                        ; load; *i0ptr9031
  %fptr9032 = inttoptr i64 %f9033 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9032(i64 %arg7397, i64 %arg7396, i64 %retprim7102)  ; tail call
  ret void

else9023:
  %arg7411 = add i64 0, 0                                                            ; quoted ()
  %arg7410 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9034 = inttoptr i64 %cont7097 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9034)                                         ; assert function application
  %i0ptr9035 = getelementptr inbounds i64, i64* %cloptr9034, i64 0                   ; &cloptr9034[0]
  %f9037 = load i64, i64* %i0ptr9035, align 8                                        ; load; *i0ptr9035
  %fptr9036 = inttoptr i64 %f9037 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9036(i64 %cont7097, i64 %arg7411, i64 %arg7410)     ; tail call
  ret void
}


define void @lam8482(i64 %env8483, i64 %_957099, i64 %QXB$b) {
  %envptr9038 = inttoptr i64 %env8483 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9039 = getelementptr inbounds i64, i64* %envptr9038, i64 3                  ; &envptr9038[3]
  %cont7097 = load i64, i64* %envptr9039, align 8                                    ; load; *envptr9039
  %envptr9040 = inttoptr i64 %env8483 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9041 = getelementptr inbounds i64, i64* %envptr9040, i64 2                  ; &envptr9040[2]
  %Nwi$a = load i64, i64* %envptr9041, align 8                                       ; load; *envptr9041
  %envptr9042 = inttoptr i64 %env8483 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9043 = getelementptr inbounds i64, i64* %envptr9042, i64 1                  ; &envptr9042[1]
  %kEY$cc = load i64, i64* %envptr9043, align 8                                      ; load; *envptr9043
  %arg7398 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7398)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7402 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7101 = call i64 @prim_vector_45set_33(i64 %Nwi$a, i64 %arg7402, i64 %a7005); call prim_vector_45set_33
  %cloptr9044 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9046 = getelementptr inbounds i64, i64* %cloptr9044, i64 1                    ; &eptr9046[1]
  %eptr9047 = getelementptr inbounds i64, i64* %cloptr9044, i64 2                    ; &eptr9047[2]
  store i64 %kEY$cc, i64* %eptr9046                                                  ; *eptr9046 = %kEY$cc
  store i64 %cont7097, i64* %eptr9047                                                ; *eptr9047 = %cont7097
  %eptr9045 = getelementptr inbounds i64, i64* %cloptr9044, i64 0                    ; &cloptr9044[0]
  %f9048 = ptrtoint void(i64,i64,i64)* @lam8478 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9048, i64* %eptr9045                                                   ; store fptr
  %arg7406 = ptrtoint i64* %cloptr9044 to i64                                        ; closure cast; i64* -> i64
  %arg7405 = add i64 0, 0                                                            ; quoted ()
  %cloptr9049 = inttoptr i64 %arg7406 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9049)                                         ; assert function application
  %i0ptr9050 = getelementptr inbounds i64, i64* %cloptr9049, i64 0                   ; &cloptr9049[0]
  %f9052 = load i64, i64* %i0ptr9050, align 8                                        ; load; *i0ptr9050
  %fptr9051 = inttoptr i64 %f9052 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9051(i64 %arg7406, i64 %arg7405, i64 %retprim7101)  ; tail call
  ret void
}


define void @lam8478(i64 %env8479, i64 %_957100, i64 %MUc$_950) {
  %envptr9053 = inttoptr i64 %env8479 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9054 = getelementptr inbounds i64, i64* %envptr9053, i64 2                  ; &envptr9053[2]
  %cont7097 = load i64, i64* %envptr9054, align 8                                    ; load; *envptr9054
  %envptr9055 = inttoptr i64 %env8479 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9056 = getelementptr inbounds i64, i64* %envptr9055, i64 1                  ; &envptr9055[1]
  %kEY$cc = load i64, i64* %envptr9056, align 8                                      ; load; *envptr9056
  %cloptr9057 = inttoptr i64 %kEY$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9057)                                         ; assert function application
  %i0ptr9058 = getelementptr inbounds i64, i64* %cloptr9057, i64 0                   ; &cloptr9057[0]
  %f9060 = load i64, i64* %i0ptr9058, align 8                                        ; load; *i0ptr9058
  %fptr9059 = inttoptr i64 %f9060 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9059(i64 %kEY$cc, i64 %cont7097, i64 %kEY$cc)       ; tail call
  ret void
}


define void @lam8472(i64 %env8473, i64 %_957098, i64 %kEY$cc) {
  %envptr9061 = inttoptr i64 %env8473 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9062 = getelementptr inbounds i64, i64* %envptr9061, i64 2                  ; &envptr9061[2]
  %cont7097 = load i64, i64* %envptr9062, align 8                                    ; load; *envptr9062
  %envptr9063 = inttoptr i64 %env8473 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9064 = getelementptr inbounds i64, i64* %envptr9063, i64 1                  ; &envptr9063[1]
  %Nwi$a = load i64, i64* %envptr9064, align 8                                       ; load; *envptr9064
  %arg7413 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6999 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7413)                     ; call prim_vector_45ref
  %a7000 = call i64 @prim_null_63(i64 %a6999)                                        ; call prim_null_63
  %cmp9065 = icmp eq i64 %a7000, 15                                                  ; false?
  br i1 %cmp9065, label %else9067, label %then9066                                   ; if

then9066:
  %arg7417 = add i64 0, 0                                                            ; quoted ()
  %arg7416 = call i64 @const_init_true()                                             ; quoted #t
  %cloptr9068 = inttoptr i64 %cont7097 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9068)                                         ; assert function application
  %i0ptr9069 = getelementptr inbounds i64, i64* %cloptr9068, i64 0                   ; &cloptr9068[0]
  %f9071 = load i64, i64* %i0ptr9069, align 8                                        ; load; *i0ptr9069
  %fptr9070 = inttoptr i64 %f9071 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9070(i64 %cont7097, i64 %arg7417, i64 %arg7416)     ; tail call
  ret void

else9067:
  %arg7419 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7001 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7419)                     ; call prim_vector_45ref
  %a7002 = call i64 @prim_cons_63(i64 %a7001)                                        ; call prim_cons_63
  %cmp9072 = icmp eq i64 %a7002, 15                                                  ; false?
  br i1 %cmp9072, label %else9074, label %then9073                                   ; if

then9073:
  %arg7422 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7003 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7422)                     ; call prim_vector_45ref
  %retprim7102 = call i64 @prim_cdr(i64 %a7003)                                      ; call prim_cdr
  %cloptr9075 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9077 = getelementptr inbounds i64, i64* %cloptr9075, i64 1                    ; &eptr9077[1]
  %eptr9078 = getelementptr inbounds i64, i64* %cloptr9075, i64 2                    ; &eptr9078[2]
  %eptr9079 = getelementptr inbounds i64, i64* %cloptr9075, i64 3                    ; &eptr9079[3]
  store i64 %kEY$cc, i64* %eptr9077                                                  ; *eptr9077 = %kEY$cc
  store i64 %Nwi$a, i64* %eptr9078                                                   ; *eptr9078 = %Nwi$a
  store i64 %cont7097, i64* %eptr9079                                                ; *eptr9079 = %cont7097
  %eptr9076 = getelementptr inbounds i64, i64* %cloptr9075, i64 0                    ; &cloptr9075[0]
  %f9080 = ptrtoint void(i64,i64,i64)* @lam8465 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9080, i64* %eptr9076                                                   ; store fptr
  %arg7427 = ptrtoint i64* %cloptr9075 to i64                                        ; closure cast; i64* -> i64
  %arg7426 = add i64 0, 0                                                            ; quoted ()
  %cloptr9081 = inttoptr i64 %arg7427 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9081)                                         ; assert function application
  %i0ptr9082 = getelementptr inbounds i64, i64* %cloptr9081, i64 0                   ; &cloptr9081[0]
  %f9084 = load i64, i64* %i0ptr9082, align 8                                        ; load; *i0ptr9082
  %fptr9083 = inttoptr i64 %f9084 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9083(i64 %arg7427, i64 %arg7426, i64 %retprim7102)  ; tail call
  ret void

else9074:
  %arg7441 = add i64 0, 0                                                            ; quoted ()
  %arg7440 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9085 = inttoptr i64 %cont7097 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9085)                                         ; assert function application
  %i0ptr9086 = getelementptr inbounds i64, i64* %cloptr9085, i64 0                   ; &cloptr9085[0]
  %f9088 = load i64, i64* %i0ptr9086, align 8                                        ; load; *i0ptr9086
  %fptr9087 = inttoptr i64 %f9088 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9087(i64 %cont7097, i64 %arg7441, i64 %arg7440)     ; tail call
  ret void
}


define void @lam8465(i64 %env8466, i64 %_957099, i64 %QXB$b) {
  %envptr9089 = inttoptr i64 %env8466 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9090 = getelementptr inbounds i64, i64* %envptr9089, i64 3                  ; &envptr9089[3]
  %cont7097 = load i64, i64* %envptr9090, align 8                                    ; load; *envptr9090
  %envptr9091 = inttoptr i64 %env8466 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9092 = getelementptr inbounds i64, i64* %envptr9091, i64 2                  ; &envptr9091[2]
  %Nwi$a = load i64, i64* %envptr9092, align 8                                       ; load; *envptr9092
  %envptr9093 = inttoptr i64 %env8466 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9094 = getelementptr inbounds i64, i64* %envptr9093, i64 1                  ; &envptr9093[1]
  %kEY$cc = load i64, i64* %envptr9094, align 8                                      ; load; *envptr9094
  %arg7428 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7004 = call i64 @prim_vector_45ref(i64 %Nwi$a, i64 %arg7428)                     ; call prim_vector_45ref
  %a7005 = call i64 @prim_cdr(i64 %a7004)                                            ; call prim_cdr
  %arg7432 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7101 = call i64 @prim_vector_45set_33(i64 %Nwi$a, i64 %arg7432, i64 %a7005); call prim_vector_45set_33
  %cloptr9095 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9097 = getelementptr inbounds i64, i64* %cloptr9095, i64 1                    ; &eptr9097[1]
  %eptr9098 = getelementptr inbounds i64, i64* %cloptr9095, i64 2                    ; &eptr9098[2]
  store i64 %kEY$cc, i64* %eptr9097                                                  ; *eptr9097 = %kEY$cc
  store i64 %cont7097, i64* %eptr9098                                                ; *eptr9098 = %cont7097
  %eptr9096 = getelementptr inbounds i64, i64* %cloptr9095, i64 0                    ; &cloptr9095[0]
  %f9099 = ptrtoint void(i64,i64,i64)* @lam8461 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9099, i64* %eptr9096                                                   ; store fptr
  %arg7436 = ptrtoint i64* %cloptr9095 to i64                                        ; closure cast; i64* -> i64
  %arg7435 = add i64 0, 0                                                            ; quoted ()
  %cloptr9100 = inttoptr i64 %arg7436 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9100)                                         ; assert function application
  %i0ptr9101 = getelementptr inbounds i64, i64* %cloptr9100, i64 0                   ; &cloptr9100[0]
  %f9103 = load i64, i64* %i0ptr9101, align 8                                        ; load; *i0ptr9101
  %fptr9102 = inttoptr i64 %f9103 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9102(i64 %arg7436, i64 %arg7435, i64 %retprim7101)  ; tail call
  ret void
}


define void @lam8461(i64 %env8462, i64 %_957100, i64 %MUc$_950) {
  %envptr9104 = inttoptr i64 %env8462 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9105 = getelementptr inbounds i64, i64* %envptr9104, i64 2                  ; &envptr9104[2]
  %cont7097 = load i64, i64* %envptr9105, align 8                                    ; load; *envptr9105
  %envptr9106 = inttoptr i64 %env8462 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9107 = getelementptr inbounds i64, i64* %envptr9106, i64 1                  ; &envptr9106[1]
  %kEY$cc = load i64, i64* %envptr9107, align 8                                      ; load; *envptr9107
  %cloptr9108 = inttoptr i64 %kEY$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9108)                                         ; assert function application
  %i0ptr9109 = getelementptr inbounds i64, i64* %cloptr9108, i64 0                   ; &cloptr9108[0]
  %f9111 = load i64, i64* %i0ptr9109, align 8                                        ; load; *i0ptr9109
  %fptr9110 = inttoptr i64 %f9111 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9110(i64 %kEY$cc, i64 %cont7097, i64 %kEY$cc)       ; tail call
  ret void
}


define void @lam8455(i64 %env8456, i64 %cont7104, i64 %ywZ$lst, i64 %Tqh$n) {
  %arg7444 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %XOH$lst = call i64 @prim_make_45vector(i64 %arg7444, i64 %ywZ$lst)                ; call prim_make_45vector
  %arg7446 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %FkA$n = call i64 @prim_make_45vector(i64 %arg7446, i64 %Tqh$n)                    ; call prim_make_45vector
  %cloptr9112 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9113 = getelementptr inbounds i64, i64* %cloptr9112, i64 0                    ; &cloptr9112[0]
  %f9114 = ptrtoint void(i64,i64,i64)* @lam8451 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9114, i64* %eptr9113                                                   ; store fptr
  %arg7449 = ptrtoint i64* %cloptr9112 to i64                                        ; closure cast; i64* -> i64
  %cloptr9115 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9117 = getelementptr inbounds i64, i64* %cloptr9115, i64 1                    ; &eptr9117[1]
  %eptr9118 = getelementptr inbounds i64, i64* %cloptr9115, i64 2                    ; &eptr9118[2]
  %eptr9119 = getelementptr inbounds i64, i64* %cloptr9115, i64 3                    ; &eptr9119[3]
  store i64 %FkA$n, i64* %eptr9117                                                   ; *eptr9117 = %FkA$n
  store i64 %XOH$lst, i64* %eptr9118                                                 ; *eptr9118 = %XOH$lst
  store i64 %cont7104, i64* %eptr9119                                                ; *eptr9119 = %cont7104
  %eptr9116 = getelementptr inbounds i64, i64* %cloptr9115, i64 0                    ; &cloptr9115[0]
  %f9120 = ptrtoint void(i64,i64,i64)* @lam8449 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9120, i64* %eptr9116                                                   ; store fptr
  %arg7448 = ptrtoint i64* %cloptr9115 to i64                                        ; closure cast; i64* -> i64
  %cloptr9121 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9123 = getelementptr inbounds i64, i64* %cloptr9121, i64 1                    ; &eptr9123[1]
  %eptr9124 = getelementptr inbounds i64, i64* %cloptr9121, i64 2                    ; &eptr9124[2]
  %eptr9125 = getelementptr inbounds i64, i64* %cloptr9121, i64 3                    ; &eptr9125[3]
  store i64 %FkA$n, i64* %eptr9123                                                   ; *eptr9123 = %FkA$n
  store i64 %XOH$lst, i64* %eptr9124                                                 ; *eptr9124 = %XOH$lst
  store i64 %cont7104, i64* %eptr9125                                                ; *eptr9125 = %cont7104
  %eptr9122 = getelementptr inbounds i64, i64* %cloptr9121, i64 0                    ; &cloptr9121[0]
  %f9126 = ptrtoint void(i64,i64,i64)* @lam8432 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9126, i64* %eptr9122                                                   ; store fptr
  %arg7447 = ptrtoint i64* %cloptr9121 to i64                                        ; closure cast; i64* -> i64
  %cloptr9127 = inttoptr i64 %arg7449 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9127)                                         ; assert function application
  %i0ptr9128 = getelementptr inbounds i64, i64* %cloptr9127, i64 0                   ; &cloptr9127[0]
  %f9130 = load i64, i64* %i0ptr9128, align 8                                        ; load; *i0ptr9128
  %fptr9129 = inttoptr i64 %f9130 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9129(i64 %arg7449, i64 %arg7448, i64 %arg7447)      ; tail call
  ret void
}


define void @lam8451(i64 %env8452, i64 %cont7111, i64 %jGD$u) {
  %cloptr9131 = inttoptr i64 %jGD$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9131)                                         ; assert function application
  %i0ptr9132 = getelementptr inbounds i64, i64* %cloptr9131, i64 0                   ; &cloptr9131[0]
  %f9134 = load i64, i64* %i0ptr9132, align 8                                        ; load; *i0ptr9132
  %fptr9133 = inttoptr i64 %f9134 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9133(i64 %jGD$u, i64 %cont7111, i64 %jGD$u)         ; tail call
  ret void
}


define void @lam8449(i64 %env8450, i64 %_957105, i64 %OQa$cc) {
  %envptr9135 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9136 = getelementptr inbounds i64, i64* %envptr9135, i64 3                  ; &envptr9135[3]
  %cont7104 = load i64, i64* %envptr9136, align 8                                    ; load; *envptr9136
  %envptr9137 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9138 = getelementptr inbounds i64, i64* %envptr9137, i64 2                  ; &envptr9137[2]
  %XOH$lst = load i64, i64* %envptr9138, align 8                                     ; load; *envptr9138
  %envptr9139 = inttoptr i64 %env8450 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9140 = getelementptr inbounds i64, i64* %envptr9139, i64 1                  ; &envptr9139[1]
  %FkA$n = load i64, i64* %envptr9140, align 8                                       ; load; *envptr9140
  %arg7453 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %FkA$n, i64 %arg7453)                     ; call prim_vector_45ref
  %arg7456 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7456, i64 %a7006)                              ; call prim__61
  %cmp9141 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9141, label %else9143, label %then9142                                   ; if

then9142:
  %arg7457 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7106 = call i64 @prim_vector_45ref(i64 %XOH$lst, i64 %arg7457)             ; call prim_vector_45ref
  %arg7460 = add i64 0, 0                                                            ; quoted ()
  %cloptr9144 = inttoptr i64 %cont7104 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9144)                                         ; assert function application
  %i0ptr9145 = getelementptr inbounds i64, i64* %cloptr9144, i64 0                   ; &cloptr9144[0]
  %f9147 = load i64, i64* %i0ptr9145, align 8                                        ; load; *i0ptr9145
  %fptr9146 = inttoptr i64 %f9147 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9146(i64 %cont7104, i64 %arg7460, i64 %retprim7106) ; tail call
  ret void

else9143:
  %arg7462 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %XOH$lst, i64 %arg7462)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7466 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7110 = call i64 @prim_vector_45set_33(i64 %XOH$lst, i64 %arg7466, i64 %a7009); call prim_vector_45set_33
  %cloptr9148 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9150 = getelementptr inbounds i64, i64* %cloptr9148, i64 1                    ; &eptr9150[1]
  %eptr9151 = getelementptr inbounds i64, i64* %cloptr9148, i64 2                    ; &eptr9151[2]
  %eptr9152 = getelementptr inbounds i64, i64* %cloptr9148, i64 3                    ; &eptr9152[3]
  store i64 %FkA$n, i64* %eptr9150                                                   ; *eptr9150 = %FkA$n
  store i64 %cont7104, i64* %eptr9151                                                ; *eptr9151 = %cont7104
  store i64 %OQa$cc, i64* %eptr9152                                                  ; *eptr9152 = %OQa$cc
  %eptr9149 = getelementptr inbounds i64, i64* %cloptr9148, i64 0                    ; &cloptr9148[0]
  %f9153 = ptrtoint void(i64,i64,i64)* @lam8443 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9153, i64* %eptr9149                                                   ; store fptr
  %arg7470 = ptrtoint i64* %cloptr9148 to i64                                        ; closure cast; i64* -> i64
  %arg7469 = add i64 0, 0                                                            ; quoted ()
  %cloptr9154 = inttoptr i64 %arg7470 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9154)                                         ; assert function application
  %i0ptr9155 = getelementptr inbounds i64, i64* %cloptr9154, i64 0                   ; &cloptr9154[0]
  %f9157 = load i64, i64* %i0ptr9155, align 8                                        ; load; *i0ptr9155
  %fptr9156 = inttoptr i64 %f9157 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9156(i64 %arg7470, i64 %arg7469, i64 %retprim7110)  ; tail call
  ret void
}


define void @lam8443(i64 %env8444, i64 %_957107, i64 %F7S$_950) {
  %envptr9158 = inttoptr i64 %env8444 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9159 = getelementptr inbounds i64, i64* %envptr9158, i64 3                  ; &envptr9158[3]
  %OQa$cc = load i64, i64* %envptr9159, align 8                                      ; load; *envptr9159
  %envptr9160 = inttoptr i64 %env8444 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9161 = getelementptr inbounds i64, i64* %envptr9160, i64 2                  ; &envptr9160[2]
  %cont7104 = load i64, i64* %envptr9161, align 8                                    ; load; *envptr9161
  %envptr9162 = inttoptr i64 %env8444 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9163 = getelementptr inbounds i64, i64* %envptr9162, i64 1                  ; &envptr9162[1]
  %FkA$n = load i64, i64* %envptr9163, align 8                                       ; load; *envptr9163
  %arg7471 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %FkA$n, i64 %arg7471)                     ; call prim_vector_45ref
  %arg7473 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7473)                              ; call prim__45
  %arg7476 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45set_33(i64 %FkA$n, i64 %arg7476, i64 %a7011); call prim_vector_45set_33
  %cloptr9164 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9166 = getelementptr inbounds i64, i64* %cloptr9164, i64 1                    ; &eptr9166[1]
  %eptr9167 = getelementptr inbounds i64, i64* %cloptr9164, i64 2                    ; &eptr9167[2]
  store i64 %cont7104, i64* %eptr9166                                                ; *eptr9166 = %cont7104
  store i64 %OQa$cc, i64* %eptr9167                                                  ; *eptr9167 = %OQa$cc
  %eptr9165 = getelementptr inbounds i64, i64* %cloptr9164, i64 0                    ; &cloptr9164[0]
  %f9168 = ptrtoint void(i64,i64,i64)* @lam8438 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9168, i64* %eptr9165                                                   ; store fptr
  %arg7480 = ptrtoint i64* %cloptr9164 to i64                                        ; closure cast; i64* -> i64
  %arg7479 = add i64 0, 0                                                            ; quoted ()
  %cloptr9169 = inttoptr i64 %arg7480 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9169)                                         ; assert function application
  %i0ptr9170 = getelementptr inbounds i64, i64* %cloptr9169, i64 0                   ; &cloptr9169[0]
  %f9172 = load i64, i64* %i0ptr9170, align 8                                        ; load; *i0ptr9170
  %fptr9171 = inttoptr i64 %f9172 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9171(i64 %arg7480, i64 %arg7479, i64 %retprim7109)  ; tail call
  ret void
}


define void @lam8438(i64 %env8439, i64 %_957108, i64 %aac$_951) {
  %envptr9173 = inttoptr i64 %env8439 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9174 = getelementptr inbounds i64, i64* %envptr9173, i64 2                  ; &envptr9173[2]
  %OQa$cc = load i64, i64* %envptr9174, align 8                                      ; load; *envptr9174
  %envptr9175 = inttoptr i64 %env8439 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9176 = getelementptr inbounds i64, i64* %envptr9175, i64 1                  ; &envptr9175[1]
  %cont7104 = load i64, i64* %envptr9176, align 8                                    ; load; *envptr9176
  %cloptr9177 = inttoptr i64 %OQa$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9177)                                         ; assert function application
  %i0ptr9178 = getelementptr inbounds i64, i64* %cloptr9177, i64 0                   ; &cloptr9177[0]
  %f9180 = load i64, i64* %i0ptr9178, align 8                                        ; load; *i0ptr9178
  %fptr9179 = inttoptr i64 %f9180 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9179(i64 %OQa$cc, i64 %cont7104, i64 %OQa$cc)       ; tail call
  ret void
}


define void @lam8432(i64 %env8433, i64 %_957105, i64 %OQa$cc) {
  %envptr9181 = inttoptr i64 %env8433 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9182 = getelementptr inbounds i64, i64* %envptr9181, i64 3                  ; &envptr9181[3]
  %cont7104 = load i64, i64* %envptr9182, align 8                                    ; load; *envptr9182
  %envptr9183 = inttoptr i64 %env8433 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9184 = getelementptr inbounds i64, i64* %envptr9183, i64 2                  ; &envptr9183[2]
  %XOH$lst = load i64, i64* %envptr9184, align 8                                     ; load; *envptr9184
  %envptr9185 = inttoptr i64 %env8433 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9186 = getelementptr inbounds i64, i64* %envptr9185, i64 1                  ; &envptr9185[1]
  %FkA$n = load i64, i64* %envptr9186, align 8                                       ; load; *envptr9186
  %arg7484 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7006 = call i64 @prim_vector_45ref(i64 %FkA$n, i64 %arg7484)                     ; call prim_vector_45ref
  %arg7487 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7007 = call i64 @prim__61(i64 %arg7487, i64 %a7006)                              ; call prim__61
  %cmp9187 = icmp eq i64 %a7007, 15                                                  ; false?
  br i1 %cmp9187, label %else9189, label %then9188                                   ; if

then9188:
  %arg7488 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7106 = call i64 @prim_vector_45ref(i64 %XOH$lst, i64 %arg7488)             ; call prim_vector_45ref
  %arg7491 = add i64 0, 0                                                            ; quoted ()
  %cloptr9190 = inttoptr i64 %cont7104 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9190)                                         ; assert function application
  %i0ptr9191 = getelementptr inbounds i64, i64* %cloptr9190, i64 0                   ; &cloptr9190[0]
  %f9193 = load i64, i64* %i0ptr9191, align 8                                        ; load; *i0ptr9191
  %fptr9192 = inttoptr i64 %f9193 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9192(i64 %cont7104, i64 %arg7491, i64 %retprim7106) ; tail call
  ret void

else9189:
  %arg7493 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7008 = call i64 @prim_vector_45ref(i64 %XOH$lst, i64 %arg7493)                   ; call prim_vector_45ref
  %a7009 = call i64 @prim_cdr(i64 %a7008)                                            ; call prim_cdr
  %arg7497 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7110 = call i64 @prim_vector_45set_33(i64 %XOH$lst, i64 %arg7497, i64 %a7009); call prim_vector_45set_33
  %cloptr9194 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9196 = getelementptr inbounds i64, i64* %cloptr9194, i64 1                    ; &eptr9196[1]
  %eptr9197 = getelementptr inbounds i64, i64* %cloptr9194, i64 2                    ; &eptr9197[2]
  %eptr9198 = getelementptr inbounds i64, i64* %cloptr9194, i64 3                    ; &eptr9198[3]
  store i64 %FkA$n, i64* %eptr9196                                                   ; *eptr9196 = %FkA$n
  store i64 %cont7104, i64* %eptr9197                                                ; *eptr9197 = %cont7104
  store i64 %OQa$cc, i64* %eptr9198                                                  ; *eptr9198 = %OQa$cc
  %eptr9195 = getelementptr inbounds i64, i64* %cloptr9194, i64 0                    ; &cloptr9194[0]
  %f9199 = ptrtoint void(i64,i64,i64)* @lam8426 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9199, i64* %eptr9195                                                   ; store fptr
  %arg7501 = ptrtoint i64* %cloptr9194 to i64                                        ; closure cast; i64* -> i64
  %arg7500 = add i64 0, 0                                                            ; quoted ()
  %cloptr9200 = inttoptr i64 %arg7501 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9200)                                         ; assert function application
  %i0ptr9201 = getelementptr inbounds i64, i64* %cloptr9200, i64 0                   ; &cloptr9200[0]
  %f9203 = load i64, i64* %i0ptr9201, align 8                                        ; load; *i0ptr9201
  %fptr9202 = inttoptr i64 %f9203 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9202(i64 %arg7501, i64 %arg7500, i64 %retprim7110)  ; tail call
  ret void
}


define void @lam8426(i64 %env8427, i64 %_957107, i64 %F7S$_950) {
  %envptr9204 = inttoptr i64 %env8427 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9205 = getelementptr inbounds i64, i64* %envptr9204, i64 3                  ; &envptr9204[3]
  %OQa$cc = load i64, i64* %envptr9205, align 8                                      ; load; *envptr9205
  %envptr9206 = inttoptr i64 %env8427 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9207 = getelementptr inbounds i64, i64* %envptr9206, i64 2                  ; &envptr9206[2]
  %cont7104 = load i64, i64* %envptr9207, align 8                                    ; load; *envptr9207
  %envptr9208 = inttoptr i64 %env8427 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9209 = getelementptr inbounds i64, i64* %envptr9208, i64 1                  ; &envptr9208[1]
  %FkA$n = load i64, i64* %envptr9209, align 8                                       ; load; *envptr9209
  %arg7502 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7010 = call i64 @prim_vector_45ref(i64 %FkA$n, i64 %arg7502)                     ; call prim_vector_45ref
  %arg7504 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7011 = call i64 @prim__45(i64 %a7010, i64 %arg7504)                              ; call prim__45
  %arg7507 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7109 = call i64 @prim_vector_45set_33(i64 %FkA$n, i64 %arg7507, i64 %a7011); call prim_vector_45set_33
  %cloptr9210 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9212 = getelementptr inbounds i64, i64* %cloptr9210, i64 1                    ; &eptr9212[1]
  %eptr9213 = getelementptr inbounds i64, i64* %cloptr9210, i64 2                    ; &eptr9213[2]
  store i64 %cont7104, i64* %eptr9212                                                ; *eptr9212 = %cont7104
  store i64 %OQa$cc, i64* %eptr9213                                                  ; *eptr9213 = %OQa$cc
  %eptr9211 = getelementptr inbounds i64, i64* %cloptr9210, i64 0                    ; &cloptr9210[0]
  %f9214 = ptrtoint void(i64,i64,i64)* @lam8421 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9214, i64* %eptr9211                                                   ; store fptr
  %arg7511 = ptrtoint i64* %cloptr9210 to i64                                        ; closure cast; i64* -> i64
  %arg7510 = add i64 0, 0                                                            ; quoted ()
  %cloptr9215 = inttoptr i64 %arg7511 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9215)                                         ; assert function application
  %i0ptr9216 = getelementptr inbounds i64, i64* %cloptr9215, i64 0                   ; &cloptr9215[0]
  %f9218 = load i64, i64* %i0ptr9216, align 8                                        ; load; *i0ptr9216
  %fptr9217 = inttoptr i64 %f9218 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9217(i64 %arg7511, i64 %arg7510, i64 %retprim7109)  ; tail call
  ret void
}


define void @lam8421(i64 %env8422, i64 %_957108, i64 %aac$_951) {
  %envptr9219 = inttoptr i64 %env8422 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9220 = getelementptr inbounds i64, i64* %envptr9219, i64 2                  ; &envptr9219[2]
  %OQa$cc = load i64, i64* %envptr9220, align 8                                      ; load; *envptr9220
  %envptr9221 = inttoptr i64 %env8422 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9222 = getelementptr inbounds i64, i64* %envptr9221, i64 1                  ; &envptr9221[1]
  %cont7104 = load i64, i64* %envptr9222, align 8                                    ; load; *envptr9222
  %cloptr9223 = inttoptr i64 %OQa$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9223)                                         ; assert function application
  %i0ptr9224 = getelementptr inbounds i64, i64* %cloptr9223, i64 0                   ; &cloptr9223[0]
  %f9226 = load i64, i64* %i0ptr9224, align 8                                        ; load; *i0ptr9224
  %fptr9225 = inttoptr i64 %f9226 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9225(i64 %OQa$cc, i64 %cont7104, i64 %OQa$cc)       ; tail call
  ret void
}


define void @lam8415(i64 %env8416, i64 %cont7112, i64 %nDr$v, i64 %Jbf$lst) {
  %arg7516 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %c04$lst = call i64 @prim_make_45vector(i64 %arg7516, i64 %Jbf$lst)                ; call prim_make_45vector
  %cloptr9227 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9228 = getelementptr inbounds i64, i64* %cloptr9227, i64 0                    ; &cloptr9227[0]
  %f9229 = ptrtoint void(i64,i64,i64)* @lam8412 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9229, i64* %eptr9228                                                   ; store fptr
  %arg7519 = ptrtoint i64* %cloptr9227 to i64                                        ; closure cast; i64* -> i64
  %cloptr9230 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9232 = getelementptr inbounds i64, i64* %cloptr9230, i64 1                    ; &eptr9232[1]
  %eptr9233 = getelementptr inbounds i64, i64* %cloptr9230, i64 2                    ; &eptr9233[2]
  %eptr9234 = getelementptr inbounds i64, i64* %cloptr9230, i64 3                    ; &eptr9234[3]
  store i64 %cont7112, i64* %eptr9232                                                ; *eptr9232 = %cont7112
  store i64 %nDr$v, i64* %eptr9233                                                   ; *eptr9233 = %nDr$v
  store i64 %c04$lst, i64* %eptr9234                                                 ; *eptr9234 = %c04$lst
  %eptr9231 = getelementptr inbounds i64, i64* %cloptr9230, i64 0                    ; &cloptr9230[0]
  %f9235 = ptrtoint void(i64,i64,i64)* @lam8410 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9235, i64* %eptr9231                                                   ; store fptr
  %arg7518 = ptrtoint i64* %cloptr9230 to i64                                        ; closure cast; i64* -> i64
  %cloptr9236 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9238 = getelementptr inbounds i64, i64* %cloptr9236, i64 1                    ; &eptr9238[1]
  %eptr9239 = getelementptr inbounds i64, i64* %cloptr9236, i64 2                    ; &eptr9239[2]
  %eptr9240 = getelementptr inbounds i64, i64* %cloptr9236, i64 3                    ; &eptr9240[3]
  store i64 %cont7112, i64* %eptr9238                                                ; *eptr9238 = %cont7112
  store i64 %nDr$v, i64* %eptr9239                                                   ; *eptr9239 = %nDr$v
  store i64 %c04$lst, i64* %eptr9240                                                 ; *eptr9240 = %c04$lst
  %eptr9237 = getelementptr inbounds i64, i64* %cloptr9236, i64 0                    ; &cloptr9236[0]
  %f9241 = ptrtoint void(i64,i64,i64)* @lam8397 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9241, i64* %eptr9237                                                   ; store fptr
  %arg7517 = ptrtoint i64* %cloptr9236 to i64                                        ; closure cast; i64* -> i64
  %cloptr9242 = inttoptr i64 %arg7519 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9242)                                         ; assert function application
  %i0ptr9243 = getelementptr inbounds i64, i64* %cloptr9242, i64 0                   ; &cloptr9242[0]
  %f9245 = load i64, i64* %i0ptr9243, align 8                                        ; load; *i0ptr9243
  %fptr9244 = inttoptr i64 %f9245 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9244(i64 %arg7519, i64 %arg7518, i64 %arg7517)      ; tail call
  ret void
}


define void @lam8412(i64 %env8413, i64 %cont7117, i64 %UE3$u) {
  %cloptr9246 = inttoptr i64 %UE3$u to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9246)                                         ; assert function application
  %i0ptr9247 = getelementptr inbounds i64, i64* %cloptr9246, i64 0                   ; &cloptr9246[0]
  %f9249 = load i64, i64* %i0ptr9247, align 8                                        ; load; *i0ptr9247
  %fptr9248 = inttoptr i64 %f9249 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9248(i64 %UE3$u, i64 %cont7117, i64 %UE3$u)         ; tail call
  ret void
}


define void @lam8410(i64 %env8411, i64 %_957113, i64 %evd$cc) {
  %envptr9250 = inttoptr i64 %env8411 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9251 = getelementptr inbounds i64, i64* %envptr9250, i64 3                  ; &envptr9250[3]
  %c04$lst = load i64, i64* %envptr9251, align 8                                     ; load; *envptr9251
  %envptr9252 = inttoptr i64 %env8411 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9253 = getelementptr inbounds i64, i64* %envptr9252, i64 2                  ; &envptr9252[2]
  %nDr$v = load i64, i64* %envptr9253, align 8                                       ; load; *envptr9253
  %envptr9254 = inttoptr i64 %env8411 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9255 = getelementptr inbounds i64, i64* %envptr9254, i64 1                  ; &envptr9254[1]
  %cont7112 = load i64, i64* %envptr9255, align 8                                    ; load; *envptr9255
  %arg7523 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7523)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9256 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9256, label %else9258, label %then9257                                   ; if

then9257:
  %arg7527 = add i64 0, 0                                                            ; quoted ()
  %arg7526 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9259 = inttoptr i64 %cont7112 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9259)                                         ; assert function application
  %i0ptr9260 = getelementptr inbounds i64, i64* %cloptr9259, i64 0                   ; &cloptr9259[0]
  %f9262 = load i64, i64* %i0ptr9260, align 8                                        ; load; *i0ptr9260
  %fptr9261 = inttoptr i64 %f9262 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9261(i64 %cont7112, i64 %arg7527, i64 %arg7526)     ; tail call
  ret void

else9258:
  %arg7529 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7529)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %nDr$v)                             ; call prim_eqv_63
  %cmp9263 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9263, label %else9265, label %then9264                                   ; if

then9264:
  %arg7534 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7114 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7534)             ; call prim_vector_45ref
  %arg7537 = add i64 0, 0                                                            ; quoted ()
  %cloptr9266 = inttoptr i64 %cont7112 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9266)                                         ; assert function application
  %i0ptr9267 = getelementptr inbounds i64, i64* %cloptr9266, i64 0                   ; &cloptr9266[0]
  %f9269 = load i64, i64* %i0ptr9267, align 8                                        ; load; *i0ptr9267
  %fptr9268 = inttoptr i64 %f9269 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9268(i64 %cont7112, i64 %arg7537, i64 %retprim7114) ; tail call
  ret void

else9265:
  %arg7539 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7539)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7543 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7116 = call i64 @prim_vector_45set_33(i64 %c04$lst, i64 %arg7543, i64 %a7018); call prim_vector_45set_33
  %cloptr9270 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9272 = getelementptr inbounds i64, i64* %cloptr9270, i64 1                    ; &eptr9272[1]
  %eptr9273 = getelementptr inbounds i64, i64* %cloptr9270, i64 2                    ; &eptr9273[2]
  store i64 %cont7112, i64* %eptr9272                                                ; *eptr9272 = %cont7112
  store i64 %evd$cc, i64* %eptr9273                                                  ; *eptr9273 = %evd$cc
  %eptr9271 = getelementptr inbounds i64, i64* %cloptr9270, i64 0                    ; &cloptr9270[0]
  %f9274 = ptrtoint void(i64,i64,i64)* @lam8404 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9274, i64* %eptr9271                                                   ; store fptr
  %arg7547 = ptrtoint i64* %cloptr9270 to i64                                        ; closure cast; i64* -> i64
  %arg7546 = add i64 0, 0                                                            ; quoted ()
  %cloptr9275 = inttoptr i64 %arg7547 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9275)                                         ; assert function application
  %i0ptr9276 = getelementptr inbounds i64, i64* %cloptr9275, i64 0                   ; &cloptr9275[0]
  %f9278 = load i64, i64* %i0ptr9276, align 8                                        ; load; *i0ptr9276
  %fptr9277 = inttoptr i64 %f9278 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9277(i64 %arg7547, i64 %arg7546, i64 %retprim7116)  ; tail call
  ret void
}


define void @lam8404(i64 %env8405, i64 %_957115, i64 %y2w$_950) {
  %envptr9279 = inttoptr i64 %env8405 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9280 = getelementptr inbounds i64, i64* %envptr9279, i64 2                  ; &envptr9279[2]
  %evd$cc = load i64, i64* %envptr9280, align 8                                      ; load; *envptr9280
  %envptr9281 = inttoptr i64 %env8405 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9282 = getelementptr inbounds i64, i64* %envptr9281, i64 1                  ; &envptr9281[1]
  %cont7112 = load i64, i64* %envptr9282, align 8                                    ; load; *envptr9282
  %cloptr9283 = inttoptr i64 %evd$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9283)                                         ; assert function application
  %i0ptr9284 = getelementptr inbounds i64, i64* %cloptr9283, i64 0                   ; &cloptr9283[0]
  %f9286 = load i64, i64* %i0ptr9284, align 8                                        ; load; *i0ptr9284
  %fptr9285 = inttoptr i64 %f9286 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9285(i64 %evd$cc, i64 %cont7112, i64 %evd$cc)       ; tail call
  ret void
}


define void @lam8397(i64 %env8398, i64 %_957113, i64 %evd$cc) {
  %envptr9287 = inttoptr i64 %env8398 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9288 = getelementptr inbounds i64, i64* %envptr9287, i64 3                  ; &envptr9287[3]
  %c04$lst = load i64, i64* %envptr9288, align 8                                     ; load; *envptr9288
  %envptr9289 = inttoptr i64 %env8398 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9290 = getelementptr inbounds i64, i64* %envptr9289, i64 2                  ; &envptr9289[2]
  %nDr$v = load i64, i64* %envptr9290, align 8                                       ; load; *envptr9290
  %envptr9291 = inttoptr i64 %env8398 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9292 = getelementptr inbounds i64, i64* %envptr9291, i64 1                  ; &envptr9291[1]
  %cont7112 = load i64, i64* %envptr9292, align 8                                    ; load; *envptr9292
  %arg7551 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7012 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7551)                   ; call prim_vector_45ref
  %a7013 = call i64 @prim_null_63(i64 %a7012)                                        ; call prim_null_63
  %cmp9293 = icmp eq i64 %a7013, 15                                                  ; false?
  br i1 %cmp9293, label %else9295, label %then9294                                   ; if

then9294:
  %arg7555 = add i64 0, 0                                                            ; quoted ()
  %arg7554 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9296 = inttoptr i64 %cont7112 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9296)                                         ; assert function application
  %i0ptr9297 = getelementptr inbounds i64, i64* %cloptr9296, i64 0                   ; &cloptr9296[0]
  %f9299 = load i64, i64* %i0ptr9297, align 8                                        ; load; *i0ptr9297
  %fptr9298 = inttoptr i64 %f9299 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9298(i64 %cont7112, i64 %arg7555, i64 %arg7554)     ; tail call
  ret void

else9295:
  %arg7557 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7014 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7557)                   ; call prim_vector_45ref
  %a7015 = call i64 @prim_car(i64 %a7014)                                            ; call prim_car
  %a7016 = call i64 @prim_eqv_63(i64 %a7015, i64 %nDr$v)                             ; call prim_eqv_63
  %cmp9300 = icmp eq i64 %a7016, 15                                                  ; false?
  br i1 %cmp9300, label %else9302, label %then9301                                   ; if

then9301:
  %arg7562 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7114 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7562)             ; call prim_vector_45ref
  %arg7565 = add i64 0, 0                                                            ; quoted ()
  %cloptr9303 = inttoptr i64 %cont7112 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9303)                                         ; assert function application
  %i0ptr9304 = getelementptr inbounds i64, i64* %cloptr9303, i64 0                   ; &cloptr9303[0]
  %f9306 = load i64, i64* %i0ptr9304, align 8                                        ; load; *i0ptr9304
  %fptr9305 = inttoptr i64 %f9306 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9305(i64 %cont7112, i64 %arg7565, i64 %retprim7114) ; tail call
  ret void

else9302:
  %arg7567 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7017 = call i64 @prim_vector_45ref(i64 %c04$lst, i64 %arg7567)                   ; call prim_vector_45ref
  %a7018 = call i64 @prim_cdr(i64 %a7017)                                            ; call prim_cdr
  %arg7571 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7116 = call i64 @prim_vector_45set_33(i64 %c04$lst, i64 %arg7571, i64 %a7018); call prim_vector_45set_33
  %cloptr9307 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9309 = getelementptr inbounds i64, i64* %cloptr9307, i64 1                    ; &eptr9309[1]
  %eptr9310 = getelementptr inbounds i64, i64* %cloptr9307, i64 2                    ; &eptr9310[2]
  store i64 %cont7112, i64* %eptr9309                                                ; *eptr9309 = %cont7112
  store i64 %evd$cc, i64* %eptr9310                                                  ; *eptr9310 = %evd$cc
  %eptr9308 = getelementptr inbounds i64, i64* %cloptr9307, i64 0                    ; &cloptr9307[0]
  %f9311 = ptrtoint void(i64,i64,i64)* @lam8391 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9311, i64* %eptr9308                                                   ; store fptr
  %arg7575 = ptrtoint i64* %cloptr9307 to i64                                        ; closure cast; i64* -> i64
  %arg7574 = add i64 0, 0                                                            ; quoted ()
  %cloptr9312 = inttoptr i64 %arg7575 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9312)                                         ; assert function application
  %i0ptr9313 = getelementptr inbounds i64, i64* %cloptr9312, i64 0                   ; &cloptr9312[0]
  %f9315 = load i64, i64* %i0ptr9313, align 8                                        ; load; *i0ptr9313
  %fptr9314 = inttoptr i64 %f9315 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9314(i64 %arg7575, i64 %arg7574, i64 %retprim7116)  ; tail call
  ret void
}


define void @lam8391(i64 %env8392, i64 %_957115, i64 %y2w$_950) {
  %envptr9316 = inttoptr i64 %env8392 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9317 = getelementptr inbounds i64, i64* %envptr9316, i64 2                  ; &envptr9316[2]
  %evd$cc = load i64, i64* %envptr9317, align 8                                      ; load; *envptr9317
  %envptr9318 = inttoptr i64 %env8392 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9319 = getelementptr inbounds i64, i64* %envptr9318, i64 1                  ; &envptr9318[1]
  %cont7112 = load i64, i64* %envptr9319, align 8                                    ; load; *envptr9319
  %cloptr9320 = inttoptr i64 %evd$cc to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9320)                                         ; assert function application
  %i0ptr9321 = getelementptr inbounds i64, i64* %cloptr9320, i64 0                   ; &cloptr9320[0]
  %f9323 = load i64, i64* %i0ptr9321, align 8                                        ; load; *i0ptr9321
  %fptr9322 = inttoptr i64 %f9323 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9322(i64 %evd$cc, i64 %cont7112, i64 %evd$cc)       ; tail call
  ret void
}


define void @lam8384(i64 %env8385, i64 %T41$args7119) {
  %envptr9324 = inttoptr i64 %env8385 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9325 = getelementptr inbounds i64, i64* %envptr9324, i64 1                  ; &envptr9324[1]
  %fVq$_37foldl1 = load i64, i64* %envptr9325, align 8                               ; load; *envptr9325
  %cont7118 = call i64 @prim_car(i64 %T41$args7119)                                  ; call prim_car
  %T41$args = call i64 @prim_cdr(i64 %T41$args7119)                                  ; call prim_cdr
  %a7019 = call i64 @prim_null_63(i64 %T41$args)                                     ; call prim_null_63
  %cmp9326 = icmp eq i64 %a7019, 15                                                  ; false?
  br i1 %cmp9326, label %else9328, label %then9327                                   ; if

then9327:
  %arg7583 = add i64 0, 0                                                            ; quoted ()
  %arg7582 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %cloptr9329 = inttoptr i64 %cont7118 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9329)                                         ; assert function application
  %i0ptr9330 = getelementptr inbounds i64, i64* %cloptr9329, i64 0                   ; &cloptr9329[0]
  %f9332 = load i64, i64* %i0ptr9330, align 8                                        ; load; *i0ptr9330
  %fptr9331 = inttoptr i64 %f9332 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9331(i64 %cont7118, i64 %arg7583, i64 %arg7582)     ; tail call
  ret void

else9328:
  %a7020 = call i64 @prim_cdr(i64 %T41$args)                                         ; call prim_cdr
  %a7021 = call i64 @prim_null_63(i64 %a7020)                                        ; call prim_null_63
  %cmp9333 = icmp eq i64 %a7021, 15                                                  ; false?
  br i1 %cmp9333, label %else9335, label %then9334                                   ; if

then9334:
  %retprim7120 = call i64 @prim_car(i64 %T41$args)                                   ; call prim_car
  %arg7589 = add i64 0, 0                                                            ; quoted ()
  %cloptr9336 = inttoptr i64 %cont7118 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9336)                                         ; assert function application
  %i0ptr9337 = getelementptr inbounds i64, i64* %cloptr9336, i64 0                   ; &cloptr9336[0]
  %f9339 = load i64, i64* %i0ptr9337, align 8                                        ; load; *i0ptr9337
  %fptr9338 = inttoptr i64 %f9339 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9338(i64 %cont7118, i64 %arg7589, i64 %retprim7120) ; tail call
  ret void

else9335:
  %a7022 = call i64 @prim_car(i64 %T41$args)                                         ; call prim_car
  %a7023 = call i64 @prim_cdr(i64 %T41$args)                                         ; call prim_cdr
  %cloptr9340 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9341 = getelementptr inbounds i64, i64* %cloptr9340, i64 0                    ; &cloptr9340[0]
  %f9342 = ptrtoint void(i64,i64,i64,i64)* @lam8382 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9342, i64* %eptr9341                                                   ; store fptr
  %arg7595 = ptrtoint i64* %cloptr9340 to i64                                        ; closure cast; i64* -> i64
  %cloptr9343 = inttoptr i64 %fVq$_37foldl1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9343)                                         ; assert function application
  %i0ptr9344 = getelementptr inbounds i64, i64* %cloptr9343, i64 0                   ; &cloptr9343[0]
  %f9346 = load i64, i64* %i0ptr9344, align 8                                        ; load; *i0ptr9344
  %fptr9345 = inttoptr i64 %f9346 to void (i64,i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9345(i64 %fVq$_37foldl1, i64 %cont7118, i64 %arg7595, i64 %a7022, i64 %a7023); tail call
  ret void
}


define void @lam8382(i64 %env8383, i64 %cont7121, i64 %WPB$n, i64 %YZ1$v) {
  %retprim7122 = call i64 @prim__47(i64 %YZ1$v, i64 %WPB$n)                          ; call prim__47
  %arg7601 = add i64 0, 0                                                            ; quoted ()
  %cloptr9347 = inttoptr i64 %cont7121 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9347)                                         ; assert function application
  %i0ptr9348 = getelementptr inbounds i64, i64* %cloptr9347, i64 0                   ; &cloptr9347[0]
  %f9350 = load i64, i64* %i0ptr9348, align 8                                        ; load; *i0ptr9348
  %fptr9349 = inttoptr i64 %f9350 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9349(i64 %cont7121, i64 %arg7601, i64 %retprim7122) ; tail call
  ret void
}


define void @lam8376(i64 %env8377, i64 %cont7123, i64 %Gfo$x) {
  %retprim7124 = call i64 @prim_car(i64 %Gfo$x)                                      ; call prim_car
  %arg7605 = add i64 0, 0                                                            ; quoted ()
  %cloptr9351 = inttoptr i64 %cont7123 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9351)                                         ; assert function application
  %i0ptr9352 = getelementptr inbounds i64, i64* %cloptr9351, i64 0                   ; &cloptr9351[0]
  %f9354 = load i64, i64* %i0ptr9352, align 8                                        ; load; *i0ptr9352
  %fptr9353 = inttoptr i64 %f9354 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9353(i64 %cont7123, i64 %arg7605, i64 %retprim7124) ; tail call
  ret void
}


define void @lam8373(i64 %env8374, i64 %cont7125, i64 %dPh$x) {
  %a7024 = call i64 @prim_cdr(i64 %dPh$x)                                            ; call prim_cdr
  %retprim7126 = call i64 @prim_car(i64 %a7024)                                      ; call prim_car
  %arg7610 = add i64 0, 0                                                            ; quoted ()
  %cloptr9355 = inttoptr i64 %cont7125 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9355)                                         ; assert function application
  %i0ptr9356 = getelementptr inbounds i64, i64* %cloptr9355, i64 0                   ; &cloptr9355[0]
  %f9358 = load i64, i64* %i0ptr9356, align 8                                        ; load; *i0ptr9356
  %fptr9357 = inttoptr i64 %f9358 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9357(i64 %cont7125, i64 %arg7610, i64 %retprim7126) ; tail call
  ret void
}


define void @lam8370(i64 %env8371, i64 %cont7127, i64 %OWa$x) {
  %a7025 = call i64 @prim_cdr(i64 %OWa$x)                                            ; call prim_cdr
  %a7026 = call i64 @prim_cdr(i64 %a7025)                                            ; call prim_cdr
  %retprim7128 = call i64 @prim_car(i64 %a7026)                                      ; call prim_car
  %arg7616 = add i64 0, 0                                                            ; quoted ()
  %cloptr9359 = inttoptr i64 %cont7127 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9359)                                         ; assert function application
  %i0ptr9360 = getelementptr inbounds i64, i64* %cloptr9359, i64 0                   ; &cloptr9359[0]
  %f9362 = load i64, i64* %i0ptr9360, align 8                                        ; load; *i0ptr9360
  %fptr9361 = inttoptr i64 %f9362 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9361(i64 %cont7127, i64 %arg7616, i64 %retprim7128) ; tail call
  ret void
}


define void @lam8367(i64 %env8368, i64 %cont7129, i64 %hLY$x) {
  %a7027 = call i64 @prim_cdr(i64 %hLY$x)                                            ; call prim_cdr
  %a7028 = call i64 @prim_cdr(i64 %a7027)                                            ; call prim_cdr
  %a7029 = call i64 @prim_cdr(i64 %a7028)                                            ; call prim_cdr
  %retprim7130 = call i64 @prim_car(i64 %a7029)                                      ; call prim_car
  %arg7623 = add i64 0, 0                                                            ; quoted ()
  %cloptr9363 = inttoptr i64 %cont7129 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9363)                                         ; assert function application
  %i0ptr9364 = getelementptr inbounds i64, i64* %cloptr9363, i64 0                   ; &cloptr9363[0]
  %f9366 = load i64, i64* %i0ptr9364, align 8                                        ; load; *i0ptr9364
  %fptr9365 = inttoptr i64 %f9366 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9365(i64 %cont7129, i64 %arg7623, i64 %retprim7130) ; tail call
  ret void
}


define void @lam8364(i64 %env8365, i64 %cont7131, i64 %JXG$p) {
  %a7030 = call i64 @prim_cons_63(i64 %JXG$p)                                        ; call prim_cons_63
  %cmp9367 = icmp eq i64 %a7030, 15                                                  ; false?
  br i1 %cmp9367, label %else9369, label %then9368                                   ; if

then9368:
  %a7031 = call i64 @prim_car(i64 %JXG$p)                                            ; call prim_car
  %arg7627 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym9370, i32 0, i32 0)); quoted string
  %retprim7132 = call i64 @prim_eq_63(i64 %a7031, i64 %arg7627)                      ; call prim_eq_63
  %arg7630 = add i64 0, 0                                                            ; quoted ()
  %cloptr9371 = inttoptr i64 %cont7131 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9371)                                         ; assert function application
  %i0ptr9372 = getelementptr inbounds i64, i64* %cloptr9371, i64 0                   ; &cloptr9371[0]
  %f9374 = load i64, i64* %i0ptr9372, align 8                                        ; load; *i0ptr9372
  %fptr9373 = inttoptr i64 %f9374 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9373(i64 %cont7131, i64 %arg7630, i64 %retprim7132) ; tail call
  ret void

else9369:
  %arg7633 = add i64 0, 0                                                            ; quoted ()
  %arg7632 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr9375 = inttoptr i64 %cont7131 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9375)                                         ; assert function application
  %i0ptr9376 = getelementptr inbounds i64, i64* %cloptr9375, i64 0                   ; &cloptr9375[0]
  %f9378 = load i64, i64* %i0ptr9376, align 8                                        ; load; *i0ptr9376
  %fptr9377 = inttoptr i64 %f9378 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9377(i64 %cont7131, i64 %arg7633, i64 %arg7632)     ; tail call
  ret void
}


define void @lam8358(i64 %env8359, i64 %tkR$lst7177) {
  %cont7176 = call i64 @prim_car(i64 %tkR$lst7177)                                   ; call prim_car
  %tkR$lst = call i64 @prim_cdr(i64 %tkR$lst7177)                                    ; call prim_cdr
  %arg7640 = add i64 0, 0                                                            ; quoted ()
  %cloptr9379 = inttoptr i64 %cont7176 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9379)                                         ; assert function application
  %i0ptr9380 = getelementptr inbounds i64, i64* %cloptr9379, i64 0                   ; &cloptr9379[0]
  %f9382 = load i64, i64* %i0ptr9380, align 8                                        ; load; *i0ptr9380
  %fptr9381 = inttoptr i64 %f9382 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9381(i64 %cont7176, i64 %arg7640, i64 %tkR$lst)     ; tail call
  ret void
}


define void @lam8355(i64 %env8356, i64 %_957133, i64 %cXD$_37raise_45handler) {
  %envptr9383 = inttoptr i64 %env8356 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9384 = getelementptr inbounds i64, i64* %envptr9383, i64 3                  ; &envptr9383[3]
  %SfN$_37drop = load i64, i64* %envptr9384, align 8                                 ; load; *envptr9384
  %envptr9385 = inttoptr i64 %env8356 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9386 = getelementptr inbounds i64, i64* %envptr9385, i64 2                  ; &envptr9385[2]
  %OTq$_37_62 = load i64, i64* %envptr9386, align 8                                  ; load; *envptr9386
  %envptr9387 = inttoptr i64 %env8356 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9388 = getelementptr inbounds i64, i64* %envptr9387, i64 1                  ; &envptr9387[1]
  %Va3$_37length = load i64, i64* %envptr9388, align 8                               ; load; *envptr9388
  %cloptr9389 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9390 = getelementptr inbounds i64, i64* %cloptr9389, i64 0                    ; &cloptr9389[0]
  %f9391 = ptrtoint void(i64,i64)* @lam8353 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9391, i64* %eptr9390                                                   ; store fptr
  %arg7643 = ptrtoint i64* %cloptr9389 to i64                                        ; closure cast; i64* -> i64
  %cloptr9392 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9394 = getelementptr inbounds i64, i64* %cloptr9392, i64 1                    ; &eptr9394[1]
  %eptr9395 = getelementptr inbounds i64, i64* %cloptr9392, i64 2                    ; &eptr9395[2]
  %eptr9396 = getelementptr inbounds i64, i64* %cloptr9392, i64 3                    ; &eptr9396[3]
  store i64 %Va3$_37length, i64* %eptr9394                                           ; *eptr9394 = %Va3$_37length
  store i64 %OTq$_37_62, i64* %eptr9395                                              ; *eptr9395 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9396                                             ; *eptr9396 = %SfN$_37drop
  %eptr9393 = getelementptr inbounds i64, i64* %cloptr9392, i64 0                    ; &cloptr9392[0]
  %f9397 = ptrtoint void(i64,i64,i64)* @lam8350 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9397, i64* %eptr9393                                                   ; store fptr
  %arg7642 = ptrtoint i64* %cloptr9392 to i64                                        ; closure cast; i64* -> i64
  %rva8101 = add i64 0, 0                                                            ; quoted ()
  %rva8100 = call i64 @prim_cons(i64 %arg7642, i64 %rva8101)                         ; call prim_cons
  %cloptr9398 = inttoptr i64 %arg7643 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9398)                                         ; assert function application
  %i0ptr9399 = getelementptr inbounds i64, i64* %cloptr9398, i64 0                   ; &cloptr9398[0]
  %f9401 = load i64, i64* %i0ptr9399, align 8                                        ; load; *i0ptr9399
  %fptr9400 = inttoptr i64 %f9401 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9400(i64 %arg7643, i64 %rva8100)                    ; tail call
  ret void
}


define void @lam8353(i64 %env8354, i64 %oLN$lst7175) {
  %cont7174 = call i64 @prim_car(i64 %oLN$lst7175)                                   ; call prim_car
  %oLN$lst = call i64 @prim_cdr(i64 %oLN$lst7175)                                    ; call prim_cdr
  %arg7647 = add i64 0, 0                                                            ; quoted ()
  %cloptr9402 = inttoptr i64 %cont7174 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9402)                                         ; assert function application
  %i0ptr9403 = getelementptr inbounds i64, i64* %cloptr9402, i64 0                   ; &cloptr9402[0]
  %f9405 = load i64, i64* %i0ptr9403, align 8                                        ; load; *i0ptr9403
  %fptr9404 = inttoptr i64 %f9405 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9404(i64 %cont7174, i64 %arg7647, i64 %oLN$lst)     ; tail call
  ret void
}


define void @lam8350(i64 %env8351, i64 %_957172, i64 %a7032) {
  %envptr9406 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9407 = getelementptr inbounds i64, i64* %envptr9406, i64 3                  ; &envptr9406[3]
  %SfN$_37drop = load i64, i64* %envptr9407, align 8                                 ; load; *envptr9407
  %envptr9408 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9409 = getelementptr inbounds i64, i64* %envptr9408, i64 2                  ; &envptr9408[2]
  %OTq$_37_62 = load i64, i64* %envptr9409, align 8                                  ; load; *envptr9409
  %envptr9410 = inttoptr i64 %env8351 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9411 = getelementptr inbounds i64, i64* %envptr9410, i64 1                  ; &envptr9410[1]
  %Va3$_37length = load i64, i64* %envptr9411, align 8                               ; load; *envptr9411
  %arg7650 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7173 = call i64 @prim_make_45vector(i64 %arg7650, i64 %a7032)              ; call prim_make_45vector
  %cloptr9412 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9414 = getelementptr inbounds i64, i64* %cloptr9412, i64 1                    ; &eptr9414[1]
  %eptr9415 = getelementptr inbounds i64, i64* %cloptr9412, i64 2                    ; &eptr9415[2]
  %eptr9416 = getelementptr inbounds i64, i64* %cloptr9412, i64 3                    ; &eptr9416[3]
  store i64 %Va3$_37length, i64* %eptr9414                                           ; *eptr9414 = %Va3$_37length
  store i64 %OTq$_37_62, i64* %eptr9415                                              ; *eptr9415 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9416                                             ; *eptr9416 = %SfN$_37drop
  %eptr9413 = getelementptr inbounds i64, i64* %cloptr9412, i64 0                    ; &cloptr9412[0]
  %f9417 = ptrtoint void(i64,i64,i64)* @lam8347 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9417, i64* %eptr9413                                                   ; store fptr
  %arg7653 = ptrtoint i64* %cloptr9412 to i64                                        ; closure cast; i64* -> i64
  %arg7652 = add i64 0, 0                                                            ; quoted ()
  %cloptr9418 = inttoptr i64 %arg7653 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9418)                                         ; assert function application
  %i0ptr9419 = getelementptr inbounds i64, i64* %cloptr9418, i64 0                   ; &cloptr9418[0]
  %f9421 = load i64, i64* %i0ptr9419, align 8                                        ; load; *i0ptr9419
  %fptr9420 = inttoptr i64 %f9421 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9420(i64 %arg7653, i64 %arg7652, i64 %retprim7173)  ; tail call
  ret void
}


define void @lam8347(i64 %env8348, i64 %_957134, i64 %ZUv$_37wind_45stack) {
  %envptr9422 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9423 = getelementptr inbounds i64, i64* %envptr9422, i64 3                  ; &envptr9422[3]
  %SfN$_37drop = load i64, i64* %envptr9423, align 8                                 ; load; *envptr9423
  %envptr9424 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9425 = getelementptr inbounds i64, i64* %envptr9424, i64 2                  ; &envptr9424[2]
  %OTq$_37_62 = load i64, i64* %envptr9425, align 8                                  ; load; *envptr9425
  %envptr9426 = inttoptr i64 %env8348 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9427 = getelementptr inbounds i64, i64* %envptr9426, i64 1                  ; &envptr9426[1]
  %Va3$_37length = load i64, i64* %envptr9427, align 8                               ; load; *envptr9427
  %cloptr9428 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9430 = getelementptr inbounds i64, i64* %cloptr9428, i64 1                    ; &eptr9430[1]
  %eptr9431 = getelementptr inbounds i64, i64* %cloptr9428, i64 2                    ; &eptr9431[2]
  %eptr9432 = getelementptr inbounds i64, i64* %cloptr9428, i64 3                    ; &eptr9432[3]
  store i64 %Va3$_37length, i64* %eptr9430                                           ; *eptr9430 = %Va3$_37length
  store i64 %OTq$_37_62, i64* %eptr9431                                              ; *eptr9431 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9432                                             ; *eptr9432 = %SfN$_37drop
  %eptr9429 = getelementptr inbounds i64, i64* %cloptr9428, i64 0                    ; &cloptr9428[0]
  %f9433 = ptrtoint void(i64,i64,i64,i64)* @lam8345 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9433, i64* %eptr9429                                                   ; store fptr
  %KuX$_37common_45tail = ptrtoint i64* %cloptr9428 to i64                           ; closure cast; i64* -> i64
  %cloptr9434 = call i64* @alloc(i64 24)                                             ; malloc
  %eptr9436 = getelementptr inbounds i64, i64* %cloptr9434, i64 1                    ; &eptr9436[1]
  %eptr9437 = getelementptr inbounds i64, i64* %cloptr9434, i64 2                    ; &eptr9437[2]
  store i64 %KuX$_37common_45tail, i64* %eptr9436                                    ; *eptr9436 = %KuX$_37common_45tail
  store i64 %ZUv$_37wind_45stack, i64* %eptr9437                                     ; *eptr9437 = %ZUv$_37wind_45stack
  %eptr9435 = getelementptr inbounds i64, i64* %cloptr9434, i64 0                    ; &cloptr9434[0]
  %f9438 = ptrtoint void(i64,i64,i64)* @lam8303 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9438, i64* %eptr9435                                                   ; store fptr
  %yUV$_37do_45wind = ptrtoint i64* %cloptr9434 to i64                               ; closure cast; i64* -> i64
  %arg7840 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7839 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %arg7838 = call i64 @const_init_int(i64 3)                                         ; quoted int
  call i64 @too_many_args()                                                          ; too many args for cdr
  ret void                                                                           ; 
}


define void @lam8345(i64 %env8346, i64 %cont7135, i64 %Ym6$x, i64 %fL3$y) {
  %envptr9439 = inttoptr i64 %env8346 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9440 = getelementptr inbounds i64, i64* %envptr9439, i64 3                  ; &envptr9439[3]
  %SfN$_37drop = load i64, i64* %envptr9440, align 8                                 ; load; *envptr9440
  %envptr9441 = inttoptr i64 %env8346 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9442 = getelementptr inbounds i64, i64* %envptr9441, i64 2                  ; &envptr9441[2]
  %OTq$_37_62 = load i64, i64* %envptr9442, align 8                                  ; load; *envptr9442
  %envptr9443 = inttoptr i64 %env8346 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9444 = getelementptr inbounds i64, i64* %envptr9443, i64 1                  ; &envptr9443[1]
  %Va3$_37length = load i64, i64* %envptr9444, align 8                               ; load; *envptr9444
  %cloptr9445 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9447 = getelementptr inbounds i64, i64* %cloptr9445, i64 1                    ; &eptr9447[1]
  %eptr9448 = getelementptr inbounds i64, i64* %cloptr9445, i64 2                    ; &eptr9448[2]
  %eptr9449 = getelementptr inbounds i64, i64* %cloptr9445, i64 3                    ; &eptr9449[3]
  %eptr9450 = getelementptr inbounds i64, i64* %cloptr9445, i64 4                    ; &eptr9450[4]
  %eptr9451 = getelementptr inbounds i64, i64* %cloptr9445, i64 5                    ; &eptr9451[5]
  %eptr9452 = getelementptr inbounds i64, i64* %cloptr9445, i64 6                    ; &eptr9452[6]
  store i64 %Va3$_37length, i64* %eptr9447                                           ; *eptr9447 = %Va3$_37length
  store i64 %OTq$_37_62, i64* %eptr9448                                              ; *eptr9448 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9449                                             ; *eptr9449 = %SfN$_37drop
  store i64 %cont7135, i64* %eptr9450                                                ; *eptr9450 = %cont7135
  store i64 %fL3$y, i64* %eptr9451                                                   ; *eptr9451 = %fL3$y
  store i64 %Ym6$x, i64* %eptr9452                                                   ; *eptr9452 = %Ym6$x
  %eptr9446 = getelementptr inbounds i64, i64* %cloptr9445, i64 0                    ; &cloptr9445[0]
  %f9453 = ptrtoint void(i64,i64,i64)* @lam8343 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9453, i64* %eptr9446                                                   ; store fptr
  %arg7655 = ptrtoint i64* %cloptr9445 to i64                                        ; closure cast; i64* -> i64
  %cloptr9454 = inttoptr i64 %Va3$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9454)                                         ; assert function application
  %i0ptr9455 = getelementptr inbounds i64, i64* %cloptr9454, i64 0                   ; &cloptr9454[0]
  %f9457 = load i64, i64* %i0ptr9455, align 8                                        ; load; *i0ptr9455
  %fptr9456 = inttoptr i64 %f9457 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9456(i64 %Va3$_37length, i64 %arg7655, i64 %Ym6$x)  ; tail call
  ret void
}


define void @lam8343(i64 %env8344, i64 %_957136, i64 %JR8$lx) {
  %envptr9458 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9459 = getelementptr inbounds i64, i64* %envptr9458, i64 6                  ; &envptr9458[6]
  %Ym6$x = load i64, i64* %envptr9459, align 8                                       ; load; *envptr9459
  %envptr9460 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9461 = getelementptr inbounds i64, i64* %envptr9460, i64 5                  ; &envptr9460[5]
  %fL3$y = load i64, i64* %envptr9461, align 8                                       ; load; *envptr9461
  %envptr9462 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9463 = getelementptr inbounds i64, i64* %envptr9462, i64 4                  ; &envptr9462[4]
  %cont7135 = load i64, i64* %envptr9463, align 8                                    ; load; *envptr9463
  %envptr9464 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9465 = getelementptr inbounds i64, i64* %envptr9464, i64 3                  ; &envptr9464[3]
  %SfN$_37drop = load i64, i64* %envptr9465, align 8                                 ; load; *envptr9465
  %envptr9466 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9467 = getelementptr inbounds i64, i64* %envptr9466, i64 2                  ; &envptr9466[2]
  %OTq$_37_62 = load i64, i64* %envptr9467, align 8                                  ; load; *envptr9467
  %envptr9468 = inttoptr i64 %env8344 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9469 = getelementptr inbounds i64, i64* %envptr9468, i64 1                  ; &envptr9468[1]
  %Va3$_37length = load i64, i64* %envptr9469, align 8                               ; load; *envptr9469
  %cloptr9470 = call i64* @alloc(i64 56)                                             ; malloc
  %eptr9472 = getelementptr inbounds i64, i64* %cloptr9470, i64 1                    ; &eptr9472[1]
  %eptr9473 = getelementptr inbounds i64, i64* %cloptr9470, i64 2                    ; &eptr9473[2]
  %eptr9474 = getelementptr inbounds i64, i64* %cloptr9470, i64 3                    ; &eptr9474[3]
  %eptr9475 = getelementptr inbounds i64, i64* %cloptr9470, i64 4                    ; &eptr9475[4]
  %eptr9476 = getelementptr inbounds i64, i64* %cloptr9470, i64 5                    ; &eptr9476[5]
  %eptr9477 = getelementptr inbounds i64, i64* %cloptr9470, i64 6                    ; &eptr9477[6]
  store i64 %OTq$_37_62, i64* %eptr9472                                              ; *eptr9472 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9473                                             ; *eptr9473 = %SfN$_37drop
  store i64 %JR8$lx, i64* %eptr9474                                                  ; *eptr9474 = %JR8$lx
  store i64 %cont7135, i64* %eptr9475                                                ; *eptr9475 = %cont7135
  store i64 %fL3$y, i64* %eptr9476                                                   ; *eptr9476 = %fL3$y
  store i64 %Ym6$x, i64* %eptr9477                                                   ; *eptr9477 = %Ym6$x
  %eptr9471 = getelementptr inbounds i64, i64* %cloptr9470, i64 0                    ; &cloptr9470[0]
  %f9478 = ptrtoint void(i64,i64,i64)* @lam8341 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9478, i64* %eptr9471                                                   ; store fptr
  %arg7658 = ptrtoint i64* %cloptr9470 to i64                                        ; closure cast; i64* -> i64
  %cloptr9479 = inttoptr i64 %Va3$_37length to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9479)                                         ; assert function application
  %i0ptr9480 = getelementptr inbounds i64, i64* %cloptr9479, i64 0                   ; &cloptr9479[0]
  %f9482 = load i64, i64* %i0ptr9480, align 8                                        ; load; *i0ptr9480
  %fptr9481 = inttoptr i64 %f9482 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9481(i64 %Va3$_37length, i64 %arg7658, i64 %fL3$y)  ; tail call
  ret void
}


define void @lam8341(i64 %env8342, i64 %_957137, i64 %ias$ly) {
  %envptr9483 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9484 = getelementptr inbounds i64, i64* %envptr9483, i64 6                  ; &envptr9483[6]
  %Ym6$x = load i64, i64* %envptr9484, align 8                                       ; load; *envptr9484
  %envptr9485 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9486 = getelementptr inbounds i64, i64* %envptr9485, i64 5                  ; &envptr9485[5]
  %fL3$y = load i64, i64* %envptr9486, align 8                                       ; load; *envptr9486
  %envptr9487 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9488 = getelementptr inbounds i64, i64* %envptr9487, i64 4                  ; &envptr9487[4]
  %cont7135 = load i64, i64* %envptr9488, align 8                                    ; load; *envptr9488
  %envptr9489 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9490 = getelementptr inbounds i64, i64* %envptr9489, i64 3                  ; &envptr9489[3]
  %JR8$lx = load i64, i64* %envptr9490, align 8                                      ; load; *envptr9490
  %envptr9491 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9492 = getelementptr inbounds i64, i64* %envptr9491, i64 2                  ; &envptr9491[2]
  %SfN$_37drop = load i64, i64* %envptr9492, align 8                                 ; load; *envptr9492
  %envptr9493 = inttoptr i64 %env8342 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9494 = getelementptr inbounds i64, i64* %envptr9493, i64 1                  ; &envptr9493[1]
  %OTq$_37_62 = load i64, i64* %envptr9494, align 8                                  ; load; *envptr9494
  %cloptr9495 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9496 = getelementptr inbounds i64, i64* %cloptr9495, i64 0                    ; &cloptr9495[0]
  %f9497 = ptrtoint void(i64,i64)* @lam8339 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9497, i64* %eptr9496                                                   ; store fptr
  %arg7661 = ptrtoint i64* %cloptr9495 to i64                                        ; closure cast; i64* -> i64
  %cloptr9498 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9500 = getelementptr inbounds i64, i64* %cloptr9498, i64 1                    ; &eptr9500[1]
  %eptr9501 = getelementptr inbounds i64, i64* %cloptr9498, i64 2                    ; &eptr9501[2]
  %eptr9502 = getelementptr inbounds i64, i64* %cloptr9498, i64 3                    ; &eptr9502[3]
  %eptr9503 = getelementptr inbounds i64, i64* %cloptr9498, i64 4                    ; &eptr9503[4]
  %eptr9504 = getelementptr inbounds i64, i64* %cloptr9498, i64 5                    ; &eptr9504[5]
  %eptr9505 = getelementptr inbounds i64, i64* %cloptr9498, i64 6                    ; &eptr9505[6]
  %eptr9506 = getelementptr inbounds i64, i64* %cloptr9498, i64 7                    ; &eptr9506[7]
  store i64 %OTq$_37_62, i64* %eptr9500                                              ; *eptr9500 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9501                                             ; *eptr9501 = %SfN$_37drop
  store i64 %ias$ly, i64* %eptr9502                                                  ; *eptr9502 = %ias$ly
  store i64 %JR8$lx, i64* %eptr9503                                                  ; *eptr9503 = %JR8$lx
  store i64 %cont7135, i64* %eptr9504                                                ; *eptr9504 = %cont7135
  store i64 %fL3$y, i64* %eptr9505                                                   ; *eptr9505 = %fL3$y
  store i64 %Ym6$x, i64* %eptr9506                                                   ; *eptr9506 = %Ym6$x
  %eptr9499 = getelementptr inbounds i64, i64* %cloptr9498, i64 0                    ; &cloptr9498[0]
  %f9507 = ptrtoint void(i64,i64,i64)* @lam8336 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9507, i64* %eptr9499                                                   ; store fptr
  %arg7660 = ptrtoint i64* %cloptr9498 to i64                                        ; closure cast; i64* -> i64
  %cloptr9508 = inttoptr i64 %arg7661 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9508)                                         ; assert function application
  %i0ptr9509 = getelementptr inbounds i64, i64* %cloptr9508, i64 0                   ; &cloptr9508[0]
  %f9511 = load i64, i64* %i0ptr9509, align 8                                        ; load; *i0ptr9509
  %fptr9510 = inttoptr i64 %f9511 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9510(i64 %arg7661, i64 %arg7660)                    ; tail call
  ret void
}


define void @lam8339(i64 %env8340, i64 %jpM$lst7147) {
  %cont7146 = call i64 @prim_car(i64 %jpM$lst7147)                                   ; call prim_car
  %jpM$lst = call i64 @prim_cdr(i64 %jpM$lst7147)                                    ; call prim_cdr
  %arg7665 = add i64 0, 0                                                            ; quoted ()
  %cloptr9512 = inttoptr i64 %cont7146 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9512)                                         ; assert function application
  %i0ptr9513 = getelementptr inbounds i64, i64* %cloptr9512, i64 0                   ; &cloptr9512[0]
  %f9515 = load i64, i64* %i0ptr9513, align 8                                        ; load; *i0ptr9513
  %fptr9514 = inttoptr i64 %f9515 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9514(i64 %cont7146, i64 %arg7665, i64 %jpM$lst)     ; tail call
  ret void
}


define void @lam8336(i64 %env8337, i64 %_957144, i64 %a7033) {
  %envptr9516 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9517 = getelementptr inbounds i64, i64* %envptr9516, i64 7                  ; &envptr9516[7]
  %Ym6$x = load i64, i64* %envptr9517, align 8                                       ; load; *envptr9517
  %envptr9518 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9519 = getelementptr inbounds i64, i64* %envptr9518, i64 6                  ; &envptr9518[6]
  %fL3$y = load i64, i64* %envptr9519, align 8                                       ; load; *envptr9519
  %envptr9520 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9521 = getelementptr inbounds i64, i64* %envptr9520, i64 5                  ; &envptr9520[5]
  %cont7135 = load i64, i64* %envptr9521, align 8                                    ; load; *envptr9521
  %envptr9522 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9523 = getelementptr inbounds i64, i64* %envptr9522, i64 4                  ; &envptr9522[4]
  %JR8$lx = load i64, i64* %envptr9523, align 8                                      ; load; *envptr9523
  %envptr9524 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9525 = getelementptr inbounds i64, i64* %envptr9524, i64 3                  ; &envptr9524[3]
  %ias$ly = load i64, i64* %envptr9525, align 8                                      ; load; *envptr9525
  %envptr9526 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9527 = getelementptr inbounds i64, i64* %envptr9526, i64 2                  ; &envptr9526[2]
  %SfN$_37drop = load i64, i64* %envptr9527, align 8                                 ; load; *envptr9527
  %envptr9528 = inttoptr i64 %env8337 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9529 = getelementptr inbounds i64, i64* %envptr9528, i64 1                  ; &envptr9528[1]
  %OTq$_37_62 = load i64, i64* %envptr9529, align 8                                  ; load; *envptr9529
  %arg7668 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7145 = call i64 @prim_make_45vector(i64 %arg7668, i64 %a7033)              ; call prim_make_45vector
  %cloptr9530 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9532 = getelementptr inbounds i64, i64* %cloptr9530, i64 1                    ; &eptr9532[1]
  %eptr9533 = getelementptr inbounds i64, i64* %cloptr9530, i64 2                    ; &eptr9533[2]
  %eptr9534 = getelementptr inbounds i64, i64* %cloptr9530, i64 3                    ; &eptr9534[3]
  %eptr9535 = getelementptr inbounds i64, i64* %cloptr9530, i64 4                    ; &eptr9535[4]
  %eptr9536 = getelementptr inbounds i64, i64* %cloptr9530, i64 5                    ; &eptr9536[5]
  %eptr9537 = getelementptr inbounds i64, i64* %cloptr9530, i64 6                    ; &eptr9537[6]
  %eptr9538 = getelementptr inbounds i64, i64* %cloptr9530, i64 7                    ; &eptr9538[7]
  store i64 %OTq$_37_62, i64* %eptr9532                                              ; *eptr9532 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9533                                             ; *eptr9533 = %SfN$_37drop
  store i64 %ias$ly, i64* %eptr9534                                                  ; *eptr9534 = %ias$ly
  store i64 %JR8$lx, i64* %eptr9535                                                  ; *eptr9535 = %JR8$lx
  store i64 %cont7135, i64* %eptr9536                                                ; *eptr9536 = %cont7135
  store i64 %fL3$y, i64* %eptr9537                                                   ; *eptr9537 = %fL3$y
  store i64 %Ym6$x, i64* %eptr9538                                                   ; *eptr9538 = %Ym6$x
  %eptr9531 = getelementptr inbounds i64, i64* %cloptr9530, i64 0                    ; &cloptr9530[0]
  %f9539 = ptrtoint void(i64,i64,i64)* @lam8333 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9539, i64* %eptr9531                                                   ; store fptr
  %arg7671 = ptrtoint i64* %cloptr9530 to i64                                        ; closure cast; i64* -> i64
  %arg7670 = add i64 0, 0                                                            ; quoted ()
  %cloptr9540 = inttoptr i64 %arg7671 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9540)                                         ; assert function application
  %i0ptr9541 = getelementptr inbounds i64, i64* %cloptr9540, i64 0                   ; &cloptr9540[0]
  %f9543 = load i64, i64* %i0ptr9541, align 8                                        ; load; *i0ptr9541
  %fptr9542 = inttoptr i64 %f9543 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9542(i64 %arg7671, i64 %arg7670, i64 %retprim7145)  ; tail call
  ret void
}


define void @lam8333(i64 %env8334, i64 %_957138, i64 %o59$loop) {
  %envptr9544 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9545 = getelementptr inbounds i64, i64* %envptr9544, i64 7                  ; &envptr9544[7]
  %Ym6$x = load i64, i64* %envptr9545, align 8                                       ; load; *envptr9545
  %envptr9546 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9547 = getelementptr inbounds i64, i64* %envptr9546, i64 6                  ; &envptr9546[6]
  %fL3$y = load i64, i64* %envptr9547, align 8                                       ; load; *envptr9547
  %envptr9548 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9549 = getelementptr inbounds i64, i64* %envptr9548, i64 5                  ; &envptr9548[5]
  %cont7135 = load i64, i64* %envptr9549, align 8                                    ; load; *envptr9549
  %envptr9550 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9551 = getelementptr inbounds i64, i64* %envptr9550, i64 4                  ; &envptr9550[4]
  %JR8$lx = load i64, i64* %envptr9551, align 8                                      ; load; *envptr9551
  %envptr9552 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9553 = getelementptr inbounds i64, i64* %envptr9552, i64 3                  ; &envptr9552[3]
  %ias$ly = load i64, i64* %envptr9553, align 8                                      ; load; *envptr9553
  %envptr9554 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9555 = getelementptr inbounds i64, i64* %envptr9554, i64 2                  ; &envptr9554[2]
  %SfN$_37drop = load i64, i64* %envptr9555, align 8                                 ; load; *envptr9555
  %envptr9556 = inttoptr i64 %env8334 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9557 = getelementptr inbounds i64, i64* %envptr9556, i64 1                  ; &envptr9556[1]
  %OTq$_37_62 = load i64, i64* %envptr9557, align 8                                  ; load; *envptr9557
  %arg7673 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9558 = call i64* @alloc(i64 16)                                             ; malloc
  %eptr9560 = getelementptr inbounds i64, i64* %cloptr9558, i64 1                    ; &eptr9560[1]
  store i64 %o59$loop, i64* %eptr9560                                                ; *eptr9560 = %o59$loop
  %eptr9559 = getelementptr inbounds i64, i64* %cloptr9558, i64 0                    ; &cloptr9558[0]
  %f9561 = ptrtoint void(i64,i64,i64,i64)* @lam8330 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f9561, i64* %eptr9559                                                   ; store fptr
  %arg7672 = ptrtoint i64* %cloptr9558 to i64                                        ; closure cast; i64* -> i64
  %Xox$_956937 = call i64 @prim_vector_45set_33(i64 %o59$loop, i64 %arg7673, i64 %arg7672); call prim_vector_45set_33
  %arg7688 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7038 = call i64 @prim_vector_45ref(i64 %o59$loop, i64 %arg7688)                  ; call prim_vector_45ref
  %cloptr9562 = call i64* @alloc(i64 72)                                             ; malloc
  %eptr9564 = getelementptr inbounds i64, i64* %cloptr9562, i64 1                    ; &eptr9564[1]
  %eptr9565 = getelementptr inbounds i64, i64* %cloptr9562, i64 2                    ; &eptr9565[2]
  %eptr9566 = getelementptr inbounds i64, i64* %cloptr9562, i64 3                    ; &eptr9566[3]
  %eptr9567 = getelementptr inbounds i64, i64* %cloptr9562, i64 4                    ; &eptr9567[4]
  %eptr9568 = getelementptr inbounds i64, i64* %cloptr9562, i64 5                    ; &eptr9568[5]
  %eptr9569 = getelementptr inbounds i64, i64* %cloptr9562, i64 6                    ; &eptr9569[6]
  %eptr9570 = getelementptr inbounds i64, i64* %cloptr9562, i64 7                    ; &eptr9570[7]
  %eptr9571 = getelementptr inbounds i64, i64* %cloptr9562, i64 8                    ; &eptr9571[8]
  store i64 %a7038, i64* %eptr9564                                                   ; *eptr9564 = %a7038
  store i64 %OTq$_37_62, i64* %eptr9565                                              ; *eptr9565 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9566                                             ; *eptr9566 = %SfN$_37drop
  store i64 %ias$ly, i64* %eptr9567                                                  ; *eptr9567 = %ias$ly
  store i64 %JR8$lx, i64* %eptr9568                                                  ; *eptr9568 = %JR8$lx
  store i64 %cont7135, i64* %eptr9569                                                ; *eptr9569 = %cont7135
  store i64 %fL3$y, i64* %eptr9570                                                   ; *eptr9570 = %fL3$y
  store i64 %Ym6$x, i64* %eptr9571                                                   ; *eptr9571 = %Ym6$x
  %eptr9563 = getelementptr inbounds i64, i64* %cloptr9562, i64 0                    ; &cloptr9562[0]
  %f9572 = ptrtoint void(i64,i64,i64)* @lam8325 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9572, i64* %eptr9563                                                   ; store fptr
  %arg7692 = ptrtoint i64* %cloptr9562 to i64                                        ; closure cast; i64* -> i64
  %cloptr9573 = inttoptr i64 %OTq$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9573)                                         ; assert function application
  %i0ptr9574 = getelementptr inbounds i64, i64* %cloptr9573, i64 0                   ; &cloptr9573[0]
  %f9576 = load i64, i64* %i0ptr9574, align 8                                        ; load; *i0ptr9574
  %fptr9575 = inttoptr i64 %f9576 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9575(i64 %OTq$_37_62, i64 %arg7692, i64 %JR8$lx, i64 %ias$ly); tail call
  ret void
}


define void @lam8330(i64 %env8331, i64 %cont7139, i64 %j47$x, i64 %IAH$y) {
  %envptr9577 = inttoptr i64 %env8331 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9578 = getelementptr inbounds i64, i64* %envptr9577, i64 1                  ; &envptr9577[1]
  %o59$loop = load i64, i64* %envptr9578, align 8                                    ; load; *envptr9578
  %a7034 = call i64 @prim_eq_63(i64 %j47$x, i64 %IAH$y)                              ; call prim_eq_63
  %cmp9579 = icmp eq i64 %a7034, 15                                                  ; false?
  br i1 %cmp9579, label %else9581, label %then9580                                   ; if

then9580:
  %arg7678 = add i64 0, 0                                                            ; quoted ()
  %cloptr9582 = inttoptr i64 %cont7139 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9582)                                         ; assert function application
  %i0ptr9583 = getelementptr inbounds i64, i64* %cloptr9582, i64 0                   ; &cloptr9582[0]
  %f9585 = load i64, i64* %i0ptr9583, align 8                                        ; load; *i0ptr9583
  %fptr9584 = inttoptr i64 %f9585 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9584(i64 %cont7139, i64 %arg7678, i64 %j47$x)       ; tail call
  ret void

else9581:
  %arg7680 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7035 = call i64 @prim_vector_45ref(i64 %o59$loop, i64 %arg7680)                  ; call prim_vector_45ref
  %a7036 = call i64 @prim_cdr(i64 %j47$x)                                            ; call prim_cdr
  %a7037 = call i64 @prim_cdr(i64 %IAH$y)                                            ; call prim_cdr
  %cloptr9586 = inttoptr i64 %a7035 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9586)                                         ; assert function application
  %i0ptr9587 = getelementptr inbounds i64, i64* %cloptr9586, i64 0                   ; &cloptr9586[0]
  %f9589 = load i64, i64* %i0ptr9587, align 8                                        ; load; *i0ptr9587
  %fptr9588 = inttoptr i64 %f9589 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9588(i64 %a7035, i64 %cont7139, i64 %a7036, i64 %a7037); tail call
  ret void
}


define void @lam8325(i64 %env8326, i64 %_957140, i64 %a7039) {
  %envptr9590 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9591 = getelementptr inbounds i64, i64* %envptr9590, i64 8                  ; &envptr9590[8]
  %Ym6$x = load i64, i64* %envptr9591, align 8                                       ; load; *envptr9591
  %envptr9592 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9593 = getelementptr inbounds i64, i64* %envptr9592, i64 7                  ; &envptr9592[7]
  %fL3$y = load i64, i64* %envptr9593, align 8                                       ; load; *envptr9593
  %envptr9594 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9595 = getelementptr inbounds i64, i64* %envptr9594, i64 6                  ; &envptr9594[6]
  %cont7135 = load i64, i64* %envptr9595, align 8                                    ; load; *envptr9595
  %envptr9596 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9597 = getelementptr inbounds i64, i64* %envptr9596, i64 5                  ; &envptr9596[5]
  %JR8$lx = load i64, i64* %envptr9597, align 8                                      ; load; *envptr9597
  %envptr9598 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9599 = getelementptr inbounds i64, i64* %envptr9598, i64 4                  ; &envptr9598[4]
  %ias$ly = load i64, i64* %envptr9599, align 8                                      ; load; *envptr9599
  %envptr9600 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9601 = getelementptr inbounds i64, i64* %envptr9600, i64 3                  ; &envptr9600[3]
  %SfN$_37drop = load i64, i64* %envptr9601, align 8                                 ; load; *envptr9601
  %envptr9602 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9603 = getelementptr inbounds i64, i64* %envptr9602, i64 2                  ; &envptr9602[2]
  %OTq$_37_62 = load i64, i64* %envptr9603, align 8                                  ; load; *envptr9603
  %envptr9604 = inttoptr i64 %env8326 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9605 = getelementptr inbounds i64, i64* %envptr9604, i64 1                  ; &envptr9604[1]
  %a7038 = load i64, i64* %envptr9605, align 8                                       ; load; *envptr9605
  %cmp9606 = icmp eq i64 %a7039, 15                                                  ; false?
  br i1 %cmp9606, label %else9608, label %then9607                                   ; if

then9607:
  %a7040 = call i64 @prim__45(i64 %JR8$lx, i64 %ias$ly)                              ; call prim__45
  %cloptr9609 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9611 = getelementptr inbounds i64, i64* %cloptr9609, i64 1                    ; &eptr9611[1]
  %eptr9612 = getelementptr inbounds i64, i64* %cloptr9609, i64 2                    ; &eptr9612[2]
  %eptr9613 = getelementptr inbounds i64, i64* %cloptr9609, i64 3                    ; &eptr9613[3]
  %eptr9614 = getelementptr inbounds i64, i64* %cloptr9609, i64 4                    ; &eptr9614[4]
  %eptr9615 = getelementptr inbounds i64, i64* %cloptr9609, i64 5                    ; &eptr9615[5]
  %eptr9616 = getelementptr inbounds i64, i64* %cloptr9609, i64 6                    ; &eptr9616[6]
  %eptr9617 = getelementptr inbounds i64, i64* %cloptr9609, i64 7                    ; &eptr9617[7]
  store i64 %a7038, i64* %eptr9611                                                   ; *eptr9611 = %a7038
  store i64 %OTq$_37_62, i64* %eptr9612                                              ; *eptr9612 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9613                                             ; *eptr9613 = %SfN$_37drop
  store i64 %ias$ly, i64* %eptr9614                                                  ; *eptr9614 = %ias$ly
  store i64 %JR8$lx, i64* %eptr9615                                                  ; *eptr9615 = %JR8$lx
  store i64 %cont7135, i64* %eptr9616                                                ; *eptr9616 = %cont7135
  store i64 %fL3$y, i64* %eptr9617                                                   ; *eptr9617 = %fL3$y
  %eptr9610 = getelementptr inbounds i64, i64* %cloptr9609, i64 0                    ; &cloptr9609[0]
  %f9618 = ptrtoint void(i64,i64,i64)* @lam8313 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9618, i64* %eptr9610                                                   ; store fptr
  %arg7698 = ptrtoint i64* %cloptr9609 to i64                                        ; closure cast; i64* -> i64
  %cloptr9619 = inttoptr i64 %SfN$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9619)                                         ; assert function application
  %i0ptr9620 = getelementptr inbounds i64, i64* %cloptr9619, i64 0                   ; &cloptr9619[0]
  %f9622 = load i64, i64* %i0ptr9620, align 8                                        ; load; *i0ptr9620
  %fptr9621 = inttoptr i64 %f9622 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9621(i64 %SfN$_37drop, i64 %arg7698, i64 %Ym6$x, i64 %a7040); tail call
  ret void

else9608:
  %cloptr9623 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9625 = getelementptr inbounds i64, i64* %cloptr9623, i64 1                    ; &eptr9625[1]
  %eptr9626 = getelementptr inbounds i64, i64* %cloptr9623, i64 2                    ; &eptr9626[2]
  %eptr9627 = getelementptr inbounds i64, i64* %cloptr9623, i64 3                    ; &eptr9627[3]
  %eptr9628 = getelementptr inbounds i64, i64* %cloptr9623, i64 4                    ; &eptr9628[4]
  %eptr9629 = getelementptr inbounds i64, i64* %cloptr9623, i64 5                    ; &eptr9629[5]
  %eptr9630 = getelementptr inbounds i64, i64* %cloptr9623, i64 6                    ; &eptr9630[6]
  %eptr9631 = getelementptr inbounds i64, i64* %cloptr9623, i64 7                    ; &eptr9631[7]
  store i64 %a7038, i64* %eptr9625                                                   ; *eptr9625 = %a7038
  store i64 %OTq$_37_62, i64* %eptr9626                                              ; *eptr9626 = %OTq$_37_62
  store i64 %SfN$_37drop, i64* %eptr9627                                             ; *eptr9627 = %SfN$_37drop
  store i64 %ias$ly, i64* %eptr9628                                                  ; *eptr9628 = %ias$ly
  store i64 %JR8$lx, i64* %eptr9629                                                  ; *eptr9629 = %JR8$lx
  store i64 %cont7135, i64* %eptr9630                                                ; *eptr9630 = %cont7135
  store i64 %fL3$y, i64* %eptr9631                                                   ; *eptr9631 = %fL3$y
  %eptr9624 = getelementptr inbounds i64, i64* %cloptr9623, i64 0                    ; &cloptr9623[0]
  %f9632 = ptrtoint void(i64,i64,i64)* @lam8323 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9632, i64* %eptr9624                                                   ; store fptr
  %arg7723 = ptrtoint i64* %cloptr9623 to i64                                        ; closure cast; i64* -> i64
  %arg7722 = add i64 0, 0                                                            ; quoted ()
  %cloptr9633 = inttoptr i64 %arg7723 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9633)                                         ; assert function application
  %i0ptr9634 = getelementptr inbounds i64, i64* %cloptr9633, i64 0                   ; &cloptr9633[0]
  %f9636 = load i64, i64* %i0ptr9634, align 8                                        ; load; *i0ptr9634
  %fptr9635 = inttoptr i64 %f9636 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9635(i64 %arg7723, i64 %arg7722, i64 %Ym6$x)        ; tail call
  ret void
}


define void @lam8323(i64 %env8324, i64 %_957141, i64 %a7041) {
  %envptr9637 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9638 = getelementptr inbounds i64, i64* %envptr9637, i64 7                  ; &envptr9637[7]
  %fL3$y = load i64, i64* %envptr9638, align 8                                       ; load; *envptr9638
  %envptr9639 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9640 = getelementptr inbounds i64, i64* %envptr9639, i64 6                  ; &envptr9639[6]
  %cont7135 = load i64, i64* %envptr9640, align 8                                    ; load; *envptr9640
  %envptr9641 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9642 = getelementptr inbounds i64, i64* %envptr9641, i64 5                  ; &envptr9641[5]
  %JR8$lx = load i64, i64* %envptr9642, align 8                                      ; load; *envptr9642
  %envptr9643 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9644 = getelementptr inbounds i64, i64* %envptr9643, i64 4                  ; &envptr9643[4]
  %ias$ly = load i64, i64* %envptr9644, align 8                                      ; load; *envptr9644
  %envptr9645 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9646 = getelementptr inbounds i64, i64* %envptr9645, i64 3                  ; &envptr9645[3]
  %SfN$_37drop = load i64, i64* %envptr9646, align 8                                 ; load; *envptr9646
  %envptr9647 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9648 = getelementptr inbounds i64, i64* %envptr9647, i64 2                  ; &envptr9647[2]
  %OTq$_37_62 = load i64, i64* %envptr9648, align 8                                  ; load; *envptr9648
  %envptr9649 = inttoptr i64 %env8324 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9650 = getelementptr inbounds i64, i64* %envptr9649, i64 1                  ; &envptr9649[1]
  %a7038 = load i64, i64* %envptr9650, align 8                                       ; load; *envptr9650
  %cloptr9651 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9653 = getelementptr inbounds i64, i64* %cloptr9651, i64 1                    ; &eptr9653[1]
  %eptr9654 = getelementptr inbounds i64, i64* %cloptr9651, i64 2                    ; &eptr9654[2]
  %eptr9655 = getelementptr inbounds i64, i64* %cloptr9651, i64 3                    ; &eptr9655[3]
  %eptr9656 = getelementptr inbounds i64, i64* %cloptr9651, i64 4                    ; &eptr9656[4]
  %eptr9657 = getelementptr inbounds i64, i64* %cloptr9651, i64 5                    ; &eptr9657[5]
  %eptr9658 = getelementptr inbounds i64, i64* %cloptr9651, i64 6                    ; &eptr9658[6]
  %eptr9659 = getelementptr inbounds i64, i64* %cloptr9651, i64 7                    ; &eptr9659[7]
  store i64 %a7041, i64* %eptr9653                                                   ; *eptr9653 = %a7041
  store i64 %a7038, i64* %eptr9654                                                   ; *eptr9654 = %a7038
  store i64 %SfN$_37drop, i64* %eptr9655                                             ; *eptr9655 = %SfN$_37drop
  store i64 %ias$ly, i64* %eptr9656                                                  ; *eptr9656 = %ias$ly
  store i64 %JR8$lx, i64* %eptr9657                                                  ; *eptr9657 = %JR8$lx
  store i64 %cont7135, i64* %eptr9658                                                ; *eptr9658 = %cont7135
  store i64 %fL3$y, i64* %eptr9659                                                   ; *eptr9659 = %fL3$y
  %eptr9652 = getelementptr inbounds i64, i64* %cloptr9651, i64 0                    ; &cloptr9651[0]
  %f9660 = ptrtoint void(i64,i64,i64)* @lam8321 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9660, i64* %eptr9652                                                   ; store fptr
  %arg7726 = ptrtoint i64* %cloptr9651 to i64                                        ; closure cast; i64* -> i64
  %cloptr9661 = inttoptr i64 %OTq$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9661)                                         ; assert function application
  %i0ptr9662 = getelementptr inbounds i64, i64* %cloptr9661, i64 0                   ; &cloptr9661[0]
  %f9664 = load i64, i64* %i0ptr9662, align 8                                        ; load; *i0ptr9662
  %fptr9663 = inttoptr i64 %f9664 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9663(i64 %OTq$_37_62, i64 %arg7726, i64 %ias$ly, i64 %JR8$lx); tail call
  ret void
}


define void @lam8321(i64 %env8322, i64 %_957142, i64 %a7042) {
  %envptr9665 = inttoptr i64 %env8322 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9666 = getelementptr inbounds i64, i64* %envptr9665, i64 7                  ; &envptr9665[7]
  %fL3$y = load i64, i64* %envptr9666, align 8                                       ; load; *envptr9666
  %envptr9667 = inttoptr i64 %env8322 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9668 = getelementptr inbounds i64, i64* %envptr9667, i64 6                  ; &envptr9667[6]
  %cont7135 = load i64, i64* %envptr9668, align 8                                    ; load; *envptr9668
  %envptr9669 = inttoptr i64 %env8322 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9670 = getelementptr inbounds i64, i64* %envptr9669, i64 5                  ; &envptr9669[5]
  %JR8$lx = load i64, i64* %envptr9670, align 8                                      ; load; *envptr9670
  %envptr9671 = inttoptr i64 %env8322 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9672 = getelementptr inbounds i64, i64* %envptr9671, i64 4                  ; &envptr9671[4]
  %ias$ly = load i64, i64* %envptr9672, align 8                                      ; load; *envptr9672
  %envptr9673 = inttoptr i64 %env8322 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9674 = getelementptr inbounds i64, i64* %envptr9673, i64 3                  ; &envptr9673[3]
  %SfN$_37drop = load i64, i64* %envptr9674, align 8                                 ; load; *envptr9674
  %envptr9675 = inttoptr i64 %env8322 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9676 = getelementptr inbounds i64, i64* %envptr9675, i64 2                  ; &envptr9675[2]
  %a7038 = load i64, i64* %envptr9676, align 8                                       ; load; *envptr9676
  %envptr9677 = inttoptr i64 %env8322 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9678 = getelementptr inbounds i64, i64* %envptr9677, i64 1                  ; &envptr9677[1]
  %a7041 = load i64, i64* %envptr9678, align 8                                       ; load; *envptr9678
  %cmp9679 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9679, label %else9681, label %then9680                                   ; if

then9680:
  %a7043 = call i64 @prim__45(i64 %ias$ly, i64 %JR8$lx)                              ; call prim__45
  %cloptr9682 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9684 = getelementptr inbounds i64, i64* %cloptr9682, i64 1                    ; &eptr9684[1]
  %eptr9685 = getelementptr inbounds i64, i64* %cloptr9682, i64 2                    ; &eptr9685[2]
  %eptr9686 = getelementptr inbounds i64, i64* %cloptr9682, i64 3                    ; &eptr9686[3]
  store i64 %a7041, i64* %eptr9684                                                   ; *eptr9684 = %a7041
  store i64 %a7038, i64* %eptr9685                                                   ; *eptr9685 = %a7038
  store i64 %cont7135, i64* %eptr9686                                                ; *eptr9686 = %cont7135
  %eptr9683 = getelementptr inbounds i64, i64* %cloptr9682, i64 0                    ; &cloptr9682[0]
  %f9687 = ptrtoint void(i64,i64,i64)* @lam8316 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9687, i64* %eptr9683                                                   ; store fptr
  %arg7732 = ptrtoint i64* %cloptr9682 to i64                                        ; closure cast; i64* -> i64
  %cloptr9688 = inttoptr i64 %SfN$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9688)                                         ; assert function application
  %i0ptr9689 = getelementptr inbounds i64, i64* %cloptr9688, i64 0                   ; &cloptr9688[0]
  %f9691 = load i64, i64* %i0ptr9689, align 8                                        ; load; *i0ptr9689
  %fptr9690 = inttoptr i64 %f9691 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9690(i64 %SfN$_37drop, i64 %arg7732, i64 %fL3$y, i64 %a7043); tail call
  ret void

else9681:
  %cloptr9692 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9694 = getelementptr inbounds i64, i64* %cloptr9692, i64 1                    ; &eptr9694[1]
  %eptr9695 = getelementptr inbounds i64, i64* %cloptr9692, i64 2                    ; &eptr9695[2]
  %eptr9696 = getelementptr inbounds i64, i64* %cloptr9692, i64 3                    ; &eptr9696[3]
  store i64 %a7041, i64* %eptr9694                                                   ; *eptr9694 = %a7041
  store i64 %a7038, i64* %eptr9695                                                   ; *eptr9695 = %a7038
  store i64 %cont7135, i64* %eptr9696                                                ; *eptr9696 = %cont7135
  %eptr9693 = getelementptr inbounds i64, i64* %cloptr9692, i64 0                    ; &cloptr9692[0]
  %f9697 = ptrtoint void(i64,i64,i64)* @lam8319 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9697, i64* %eptr9693                                                   ; store fptr
  %arg7740 = ptrtoint i64* %cloptr9692 to i64                                        ; closure cast; i64* -> i64
  %arg7739 = add i64 0, 0                                                            ; quoted ()
  %cloptr9698 = inttoptr i64 %arg7740 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9698)                                         ; assert function application
  %i0ptr9699 = getelementptr inbounds i64, i64* %cloptr9698, i64 0                   ; &cloptr9698[0]
  %f9701 = load i64, i64* %i0ptr9699, align 8                                        ; load; *i0ptr9699
  %fptr9700 = inttoptr i64 %f9701 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9700(i64 %arg7740, i64 %arg7739, i64 %fL3$y)        ; tail call
  ret void
}


define void @lam8319(i64 %env8320, i64 %_957143, i64 %a7044) {
  %envptr9702 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9703 = getelementptr inbounds i64, i64* %envptr9702, i64 3                  ; &envptr9702[3]
  %cont7135 = load i64, i64* %envptr9703, align 8                                    ; load; *envptr9703
  %envptr9704 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9705 = getelementptr inbounds i64, i64* %envptr9704, i64 2                  ; &envptr9704[2]
  %a7038 = load i64, i64* %envptr9705, align 8                                       ; load; *envptr9705
  %envptr9706 = inttoptr i64 %env8320 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9707 = getelementptr inbounds i64, i64* %envptr9706, i64 1                  ; &envptr9706[1]
  %a7041 = load i64, i64* %envptr9707, align 8                                       ; load; *envptr9707
  %cloptr9708 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9708)                                         ; assert function application
  %i0ptr9709 = getelementptr inbounds i64, i64* %cloptr9708, i64 0                   ; &cloptr9708[0]
  %f9711 = load i64, i64* %i0ptr9709, align 8                                        ; load; *i0ptr9709
  %fptr9710 = inttoptr i64 %f9711 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9710(i64 %a7038, i64 %cont7135, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8316(i64 %env8317, i64 %_957143, i64 %a7044) {
  %envptr9712 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9713 = getelementptr inbounds i64, i64* %envptr9712, i64 3                  ; &envptr9712[3]
  %cont7135 = load i64, i64* %envptr9713, align 8                                    ; load; *envptr9713
  %envptr9714 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9715 = getelementptr inbounds i64, i64* %envptr9714, i64 2                  ; &envptr9714[2]
  %a7038 = load i64, i64* %envptr9715, align 8                                       ; load; *envptr9715
  %envptr9716 = inttoptr i64 %env8317 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9717 = getelementptr inbounds i64, i64* %envptr9716, i64 1                  ; &envptr9716[1]
  %a7041 = load i64, i64* %envptr9717, align 8                                       ; load; *envptr9717
  %cloptr9718 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9718)                                         ; assert function application
  %i0ptr9719 = getelementptr inbounds i64, i64* %cloptr9718, i64 0                   ; &cloptr9718[0]
  %f9721 = load i64, i64* %i0ptr9719, align 8                                        ; load; *i0ptr9719
  %fptr9720 = inttoptr i64 %f9721 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9720(i64 %a7038, i64 %cont7135, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8313(i64 %env8314, i64 %_957141, i64 %a7041) {
  %envptr9722 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9723 = getelementptr inbounds i64, i64* %envptr9722, i64 7                  ; &envptr9722[7]
  %fL3$y = load i64, i64* %envptr9723, align 8                                       ; load; *envptr9723
  %envptr9724 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9725 = getelementptr inbounds i64, i64* %envptr9724, i64 6                  ; &envptr9724[6]
  %cont7135 = load i64, i64* %envptr9725, align 8                                    ; load; *envptr9725
  %envptr9726 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9727 = getelementptr inbounds i64, i64* %envptr9726, i64 5                  ; &envptr9726[5]
  %JR8$lx = load i64, i64* %envptr9727, align 8                                      ; load; *envptr9727
  %envptr9728 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9729 = getelementptr inbounds i64, i64* %envptr9728, i64 4                  ; &envptr9728[4]
  %ias$ly = load i64, i64* %envptr9729, align 8                                      ; load; *envptr9729
  %envptr9730 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9731 = getelementptr inbounds i64, i64* %envptr9730, i64 3                  ; &envptr9730[3]
  %SfN$_37drop = load i64, i64* %envptr9731, align 8                                 ; load; *envptr9731
  %envptr9732 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9733 = getelementptr inbounds i64, i64* %envptr9732, i64 2                  ; &envptr9732[2]
  %OTq$_37_62 = load i64, i64* %envptr9733, align 8                                  ; load; *envptr9733
  %envptr9734 = inttoptr i64 %env8314 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9735 = getelementptr inbounds i64, i64* %envptr9734, i64 1                  ; &envptr9734[1]
  %a7038 = load i64, i64* %envptr9735, align 8                                       ; load; *envptr9735
  %cloptr9736 = call i64* @alloc(i64 64)                                             ; malloc
  %eptr9738 = getelementptr inbounds i64, i64* %cloptr9736, i64 1                    ; &eptr9738[1]
  %eptr9739 = getelementptr inbounds i64, i64* %cloptr9736, i64 2                    ; &eptr9739[2]
  %eptr9740 = getelementptr inbounds i64, i64* %cloptr9736, i64 3                    ; &eptr9740[3]
  %eptr9741 = getelementptr inbounds i64, i64* %cloptr9736, i64 4                    ; &eptr9741[4]
  %eptr9742 = getelementptr inbounds i64, i64* %cloptr9736, i64 5                    ; &eptr9742[5]
  %eptr9743 = getelementptr inbounds i64, i64* %cloptr9736, i64 6                    ; &eptr9743[6]
  %eptr9744 = getelementptr inbounds i64, i64* %cloptr9736, i64 7                    ; &eptr9744[7]
  store i64 %a7041, i64* %eptr9738                                                   ; *eptr9738 = %a7041
  store i64 %a7038, i64* %eptr9739                                                   ; *eptr9739 = %a7038
  store i64 %SfN$_37drop, i64* %eptr9740                                             ; *eptr9740 = %SfN$_37drop
  store i64 %ias$ly, i64* %eptr9741                                                  ; *eptr9741 = %ias$ly
  store i64 %JR8$lx, i64* %eptr9742                                                  ; *eptr9742 = %JR8$lx
  store i64 %cont7135, i64* %eptr9743                                                ; *eptr9743 = %cont7135
  store i64 %fL3$y, i64* %eptr9744                                                   ; *eptr9744 = %fL3$y
  %eptr9737 = getelementptr inbounds i64, i64* %cloptr9736, i64 0                    ; &cloptr9736[0]
  %f9745 = ptrtoint void(i64,i64,i64)* @lam8311 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9745, i64* %eptr9737                                                   ; store fptr
  %arg7702 = ptrtoint i64* %cloptr9736 to i64                                        ; closure cast; i64* -> i64
  %cloptr9746 = inttoptr i64 %OTq$_37_62 to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9746)                                         ; assert function application
  %i0ptr9747 = getelementptr inbounds i64, i64* %cloptr9746, i64 0                   ; &cloptr9746[0]
  %f9749 = load i64, i64* %i0ptr9747, align 8                                        ; load; *i0ptr9747
  %fptr9748 = inttoptr i64 %f9749 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9748(i64 %OTq$_37_62, i64 %arg7702, i64 %ias$ly, i64 %JR8$lx); tail call
  ret void
}


define void @lam8311(i64 %env8312, i64 %_957142, i64 %a7042) {
  %envptr9750 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9751 = getelementptr inbounds i64, i64* %envptr9750, i64 7                  ; &envptr9750[7]
  %fL3$y = load i64, i64* %envptr9751, align 8                                       ; load; *envptr9751
  %envptr9752 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9753 = getelementptr inbounds i64, i64* %envptr9752, i64 6                  ; &envptr9752[6]
  %cont7135 = load i64, i64* %envptr9753, align 8                                    ; load; *envptr9753
  %envptr9754 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9755 = getelementptr inbounds i64, i64* %envptr9754, i64 5                  ; &envptr9754[5]
  %JR8$lx = load i64, i64* %envptr9755, align 8                                      ; load; *envptr9755
  %envptr9756 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9757 = getelementptr inbounds i64, i64* %envptr9756, i64 4                  ; &envptr9756[4]
  %ias$ly = load i64, i64* %envptr9757, align 8                                      ; load; *envptr9757
  %envptr9758 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9759 = getelementptr inbounds i64, i64* %envptr9758, i64 3                  ; &envptr9758[3]
  %SfN$_37drop = load i64, i64* %envptr9759, align 8                                 ; load; *envptr9759
  %envptr9760 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9761 = getelementptr inbounds i64, i64* %envptr9760, i64 2                  ; &envptr9760[2]
  %a7038 = load i64, i64* %envptr9761, align 8                                       ; load; *envptr9761
  %envptr9762 = inttoptr i64 %env8312 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9763 = getelementptr inbounds i64, i64* %envptr9762, i64 1                  ; &envptr9762[1]
  %a7041 = load i64, i64* %envptr9763, align 8                                       ; load; *envptr9763
  %cmp9764 = icmp eq i64 %a7042, 15                                                  ; false?
  br i1 %cmp9764, label %else9766, label %then9765                                   ; if

then9765:
  %a7043 = call i64 @prim__45(i64 %ias$ly, i64 %JR8$lx)                              ; call prim__45
  %cloptr9767 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9769 = getelementptr inbounds i64, i64* %cloptr9767, i64 1                    ; &eptr9769[1]
  %eptr9770 = getelementptr inbounds i64, i64* %cloptr9767, i64 2                    ; &eptr9770[2]
  %eptr9771 = getelementptr inbounds i64, i64* %cloptr9767, i64 3                    ; &eptr9771[3]
  store i64 %a7041, i64* %eptr9769                                                   ; *eptr9769 = %a7041
  store i64 %a7038, i64* %eptr9770                                                   ; *eptr9770 = %a7038
  store i64 %cont7135, i64* %eptr9771                                                ; *eptr9771 = %cont7135
  %eptr9768 = getelementptr inbounds i64, i64* %cloptr9767, i64 0                    ; &cloptr9767[0]
  %f9772 = ptrtoint void(i64,i64,i64)* @lam8306 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9772, i64* %eptr9768                                                   ; store fptr
  %arg7708 = ptrtoint i64* %cloptr9767 to i64                                        ; closure cast; i64* -> i64
  %cloptr9773 = inttoptr i64 %SfN$_37drop to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9773)                                         ; assert function application
  %i0ptr9774 = getelementptr inbounds i64, i64* %cloptr9773, i64 0                   ; &cloptr9773[0]
  %f9776 = load i64, i64* %i0ptr9774, align 8                                        ; load; *i0ptr9774
  %fptr9775 = inttoptr i64 %f9776 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9775(i64 %SfN$_37drop, i64 %arg7708, i64 %fL3$y, i64 %a7043); tail call
  ret void

else9766:
  %cloptr9777 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9779 = getelementptr inbounds i64, i64* %cloptr9777, i64 1                    ; &eptr9779[1]
  %eptr9780 = getelementptr inbounds i64, i64* %cloptr9777, i64 2                    ; &eptr9780[2]
  %eptr9781 = getelementptr inbounds i64, i64* %cloptr9777, i64 3                    ; &eptr9781[3]
  store i64 %a7041, i64* %eptr9779                                                   ; *eptr9779 = %a7041
  store i64 %a7038, i64* %eptr9780                                                   ; *eptr9780 = %a7038
  store i64 %cont7135, i64* %eptr9781                                                ; *eptr9781 = %cont7135
  %eptr9778 = getelementptr inbounds i64, i64* %cloptr9777, i64 0                    ; &cloptr9777[0]
  %f9782 = ptrtoint void(i64,i64,i64)* @lam8309 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9782, i64* %eptr9778                                                   ; store fptr
  %arg7716 = ptrtoint i64* %cloptr9777 to i64                                        ; closure cast; i64* -> i64
  %arg7715 = add i64 0, 0                                                            ; quoted ()
  %cloptr9783 = inttoptr i64 %arg7716 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9783)                                         ; assert function application
  %i0ptr9784 = getelementptr inbounds i64, i64* %cloptr9783, i64 0                   ; &cloptr9783[0]
  %f9786 = load i64, i64* %i0ptr9784, align 8                                        ; load; *i0ptr9784
  %fptr9785 = inttoptr i64 %f9786 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9785(i64 %arg7716, i64 %arg7715, i64 %fL3$y)        ; tail call
  ret void
}


define void @lam8309(i64 %env8310, i64 %_957143, i64 %a7044) {
  %envptr9787 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9788 = getelementptr inbounds i64, i64* %envptr9787, i64 3                  ; &envptr9787[3]
  %cont7135 = load i64, i64* %envptr9788, align 8                                    ; load; *envptr9788
  %envptr9789 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9790 = getelementptr inbounds i64, i64* %envptr9789, i64 2                  ; &envptr9789[2]
  %a7038 = load i64, i64* %envptr9790, align 8                                       ; load; *envptr9790
  %envptr9791 = inttoptr i64 %env8310 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9792 = getelementptr inbounds i64, i64* %envptr9791, i64 1                  ; &envptr9791[1]
  %a7041 = load i64, i64* %envptr9792, align 8                                       ; load; *envptr9792
  %cloptr9793 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9793)                                         ; assert function application
  %i0ptr9794 = getelementptr inbounds i64, i64* %cloptr9793, i64 0                   ; &cloptr9793[0]
  %f9796 = load i64, i64* %i0ptr9794, align 8                                        ; load; *i0ptr9794
  %fptr9795 = inttoptr i64 %f9796 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9795(i64 %a7038, i64 %cont7135, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8306(i64 %env8307, i64 %_957143, i64 %a7044) {
  %envptr9797 = inttoptr i64 %env8307 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9798 = getelementptr inbounds i64, i64* %envptr9797, i64 3                  ; &envptr9797[3]
  %cont7135 = load i64, i64* %envptr9798, align 8                                    ; load; *envptr9798
  %envptr9799 = inttoptr i64 %env8307 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9800 = getelementptr inbounds i64, i64* %envptr9799, i64 2                  ; &envptr9799[2]
  %a7038 = load i64, i64* %envptr9800, align 8                                       ; load; *envptr9800
  %envptr9801 = inttoptr i64 %env8307 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9802 = getelementptr inbounds i64, i64* %envptr9801, i64 1                  ; &envptr9801[1]
  %a7041 = load i64, i64* %envptr9802, align 8                                       ; load; *envptr9802
  %cloptr9803 = inttoptr i64 %a7038 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9803)                                         ; assert function application
  %i0ptr9804 = getelementptr inbounds i64, i64* %cloptr9803, i64 0                   ; &cloptr9803[0]
  %f9806 = load i64, i64* %i0ptr9804, align 8                                        ; load; *i0ptr9804
  %fptr9805 = inttoptr i64 %f9806 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9805(i64 %a7038, i64 %cont7135, i64 %a7041, i64 %a7044); tail call
  ret void
}


define void @lam8303(i64 %env8304, i64 %cont7148, i64 %igq$new) {
  %envptr9807 = inttoptr i64 %env8304 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9808 = getelementptr inbounds i64, i64* %envptr9807, i64 2                  ; &envptr9807[2]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9808, align 8                         ; load; *envptr9808
  %envptr9809 = inttoptr i64 %env8304 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9810 = getelementptr inbounds i64, i64* %envptr9809, i64 1                  ; &envptr9809[1]
  %KuX$_37common_45tail = load i64, i64* %envptr9810, align 8                        ; load; *envptr9810
  %arg7745 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7045 = call i64 @prim_vector_45ref(i64 %ZUv$_37wind_45stack, i64 %arg7745)       ; call prim_vector_45ref
  %cloptr9811 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9813 = getelementptr inbounds i64, i64* %cloptr9811, i64 1                    ; &eptr9813[1]
  %eptr9814 = getelementptr inbounds i64, i64* %cloptr9811, i64 2                    ; &eptr9814[2]
  %eptr9815 = getelementptr inbounds i64, i64* %cloptr9811, i64 3                    ; &eptr9815[3]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9813                                     ; *eptr9813 = %ZUv$_37wind_45stack
  store i64 %cont7148, i64* %eptr9814                                                ; *eptr9814 = %cont7148
  store i64 %igq$new, i64* %eptr9815                                                 ; *eptr9815 = %igq$new
  %eptr9812 = getelementptr inbounds i64, i64* %cloptr9811, i64 0                    ; &cloptr9811[0]
  %f9816 = ptrtoint void(i64,i64,i64)* @lam8300 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9816, i64* %eptr9812                                                   ; store fptr
  %arg7749 = ptrtoint i64* %cloptr9811 to i64                                        ; closure cast; i64* -> i64
  %cloptr9817 = inttoptr i64 %KuX$_37common_45tail to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9817)                                         ; assert function application
  %i0ptr9818 = getelementptr inbounds i64, i64* %cloptr9817, i64 0                   ; &cloptr9817[0]
  %f9820 = load i64, i64* %i0ptr9818, align 8                                        ; load; *i0ptr9818
  %fptr9819 = inttoptr i64 %f9820 to void (i64,i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9819(i64 %KuX$_37common_45tail, i64 %arg7749, i64 %igq$new, i64 %a7045); tail call
  ret void
}


define void @lam8300(i64 %env8301, i64 %_957149, i64 %Gbr$tail) {
  %envptr9821 = inttoptr i64 %env8301 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9822 = getelementptr inbounds i64, i64* %envptr9821, i64 3                  ; &envptr9821[3]
  %igq$new = load i64, i64* %envptr9822, align 8                                     ; load; *envptr9822
  %envptr9823 = inttoptr i64 %env8301 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9824 = getelementptr inbounds i64, i64* %envptr9823, i64 2                  ; &envptr9823[2]
  %cont7148 = load i64, i64* %envptr9824, align 8                                    ; load; *envptr9824
  %envptr9825 = inttoptr i64 %env8301 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9826 = getelementptr inbounds i64, i64* %envptr9825, i64 1                  ; &envptr9825[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9826, align 8                         ; load; *envptr9826
  %cloptr9827 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9828 = getelementptr inbounds i64, i64* %cloptr9827, i64 0                    ; &cloptr9827[0]
  %f9829 = ptrtoint void(i64,i64)* @lam8298 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9829, i64* %eptr9828                                                   ; store fptr
  %arg7752 = ptrtoint i64* %cloptr9827 to i64                                        ; closure cast; i64* -> i64
  %cloptr9830 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9832 = getelementptr inbounds i64, i64* %cloptr9830, i64 1                    ; &eptr9832[1]
  %eptr9833 = getelementptr inbounds i64, i64* %cloptr9830, i64 2                    ; &eptr9833[2]
  %eptr9834 = getelementptr inbounds i64, i64* %cloptr9830, i64 3                    ; &eptr9834[3]
  %eptr9835 = getelementptr inbounds i64, i64* %cloptr9830, i64 4                    ; &eptr9835[4]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9832                                     ; *eptr9832 = %ZUv$_37wind_45stack
  store i64 %cont7148, i64* %eptr9833                                                ; *eptr9833 = %cont7148
  store i64 %Gbr$tail, i64* %eptr9834                                                ; *eptr9834 = %Gbr$tail
  store i64 %igq$new, i64* %eptr9835                                                 ; *eptr9835 = %igq$new
  %eptr9831 = getelementptr inbounds i64, i64* %cloptr9830, i64 0                    ; &cloptr9830[0]
  %f9836 = ptrtoint void(i64,i64,i64)* @lam8295 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9836, i64* %eptr9831                                                   ; store fptr
  %arg7751 = ptrtoint i64* %cloptr9830 to i64                                        ; closure cast; i64* -> i64
  %cloptr9837 = inttoptr i64 %arg7752 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9837)                                         ; assert function application
  %i0ptr9838 = getelementptr inbounds i64, i64* %cloptr9837, i64 0                   ; &cloptr9837[0]
  %f9840 = load i64, i64* %i0ptr9838, align 8                                        ; load; *i0ptr9838
  %fptr9839 = inttoptr i64 %f9840 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9839(i64 %arg7752, i64 %arg7751)                    ; tail call
  ret void
}


define void @lam8298(i64 %env8299, i64 %hGV$lst7170) {
  %cont7169 = call i64 @prim_car(i64 %hGV$lst7170)                                   ; call prim_car
  %hGV$lst = call i64 @prim_cdr(i64 %hGV$lst7170)                                    ; call prim_cdr
  %arg7756 = add i64 0, 0                                                            ; quoted ()
  %cloptr9841 = inttoptr i64 %cont7169 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9841)                                         ; assert function application
  %i0ptr9842 = getelementptr inbounds i64, i64* %cloptr9841, i64 0                   ; &cloptr9841[0]
  %f9844 = load i64, i64* %i0ptr9842, align 8                                        ; load; *i0ptr9842
  %fptr9843 = inttoptr i64 %f9844 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9843(i64 %cont7169, i64 %arg7756, i64 %hGV$lst)     ; tail call
  ret void
}


define void @lam8295(i64 %env8296, i64 %_957167, i64 %a7046) {
  %envptr9845 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9846 = getelementptr inbounds i64, i64* %envptr9845, i64 4                  ; &envptr9845[4]
  %igq$new = load i64, i64* %envptr9846, align 8                                     ; load; *envptr9846
  %envptr9847 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9848 = getelementptr inbounds i64, i64* %envptr9847, i64 3                  ; &envptr9847[3]
  %Gbr$tail = load i64, i64* %envptr9848, align 8                                    ; load; *envptr9848
  %envptr9849 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9850 = getelementptr inbounds i64, i64* %envptr9849, i64 2                  ; &envptr9849[2]
  %cont7148 = load i64, i64* %envptr9850, align 8                                    ; load; *envptr9850
  %envptr9851 = inttoptr i64 %env8296 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9852 = getelementptr inbounds i64, i64* %envptr9851, i64 1                  ; &envptr9851[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9852, align 8                         ; load; *envptr9852
  %arg7759 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7168 = call i64 @prim_make_45vector(i64 %arg7759, i64 %a7046)              ; call prim_make_45vector
  %cloptr9853 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9855 = getelementptr inbounds i64, i64* %cloptr9853, i64 1                    ; &eptr9855[1]
  %eptr9856 = getelementptr inbounds i64, i64* %cloptr9853, i64 2                    ; &eptr9856[2]
  %eptr9857 = getelementptr inbounds i64, i64* %cloptr9853, i64 3                    ; &eptr9857[3]
  %eptr9858 = getelementptr inbounds i64, i64* %cloptr9853, i64 4                    ; &eptr9858[4]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9855                                     ; *eptr9855 = %ZUv$_37wind_45stack
  store i64 %cont7148, i64* %eptr9856                                                ; *eptr9856 = %cont7148
  store i64 %Gbr$tail, i64* %eptr9857                                                ; *eptr9857 = %Gbr$tail
  store i64 %igq$new, i64* %eptr9858                                                 ; *eptr9858 = %igq$new
  %eptr9854 = getelementptr inbounds i64, i64* %cloptr9853, i64 0                    ; &cloptr9853[0]
  %f9859 = ptrtoint void(i64,i64,i64)* @lam8292 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9859, i64* %eptr9854                                                   ; store fptr
  %arg7762 = ptrtoint i64* %cloptr9853 to i64                                        ; closure cast; i64* -> i64
  %arg7761 = add i64 0, 0                                                            ; quoted ()
  %cloptr9860 = inttoptr i64 %arg7762 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9860)                                         ; assert function application
  %i0ptr9861 = getelementptr inbounds i64, i64* %cloptr9860, i64 0                   ; &cloptr9860[0]
  %f9863 = load i64, i64* %i0ptr9861, align 8                                        ; load; *i0ptr9861
  %fptr9862 = inttoptr i64 %f9863 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9862(i64 %arg7762, i64 %arg7761, i64 %retprim7168)  ; tail call
  ret void
}


define void @lam8292(i64 %env8293, i64 %_957161, i64 %lIr$f) {
  %envptr9864 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9865 = getelementptr inbounds i64, i64* %envptr9864, i64 4                  ; &envptr9864[4]
  %igq$new = load i64, i64* %envptr9865, align 8                                     ; load; *envptr9865
  %envptr9866 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9867 = getelementptr inbounds i64, i64* %envptr9866, i64 3                  ; &envptr9866[3]
  %Gbr$tail = load i64, i64* %envptr9867, align 8                                    ; load; *envptr9867
  %envptr9868 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9869 = getelementptr inbounds i64, i64* %envptr9868, i64 2                  ; &envptr9868[2]
  %cont7148 = load i64, i64* %envptr9869, align 8                                    ; load; *envptr9869
  %envptr9870 = inttoptr i64 %env8293 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9871 = getelementptr inbounds i64, i64* %envptr9870, i64 1                  ; &envptr9870[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9871, align 8                         ; load; *envptr9871
  %arg7764 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9872 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9874 = getelementptr inbounds i64, i64* %cloptr9872, i64 1                    ; &eptr9874[1]
  %eptr9875 = getelementptr inbounds i64, i64* %cloptr9872, i64 2                    ; &eptr9875[2]
  %eptr9876 = getelementptr inbounds i64, i64* %cloptr9872, i64 3                    ; &eptr9876[3]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9874                                     ; *eptr9874 = %ZUv$_37wind_45stack
  store i64 %Gbr$tail, i64* %eptr9875                                                ; *eptr9875 = %Gbr$tail
  store i64 %lIr$f, i64* %eptr9876                                                   ; *eptr9876 = %lIr$f
  %eptr9873 = getelementptr inbounds i64, i64* %cloptr9872, i64 0                    ; &cloptr9872[0]
  %f9877 = ptrtoint void(i64,i64,i64)* @lam8289 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9877, i64* %eptr9873                                                   ; store fptr
  %arg7763 = ptrtoint i64* %cloptr9872 to i64                                        ; closure cast; i64* -> i64
  %glO$_956939 = call i64 @prim_vector_45set_33(i64 %lIr$f, i64 %arg7764, i64 %arg7763); call prim_vector_45set_33
  %arg7789 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7054 = call i64 @prim_vector_45ref(i64 %lIr$f, i64 %arg7789)                     ; call prim_vector_45ref
  %arg7791 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7055 = call i64 @prim_vector_45ref(i64 %ZUv$_37wind_45stack, i64 %arg7791)       ; call prim_vector_45ref
  %cloptr9878 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9880 = getelementptr inbounds i64, i64* %cloptr9878, i64 1                    ; &eptr9880[1]
  %eptr9881 = getelementptr inbounds i64, i64* %cloptr9878, i64 2                    ; &eptr9881[2]
  %eptr9882 = getelementptr inbounds i64, i64* %cloptr9878, i64 3                    ; &eptr9882[3]
  %eptr9883 = getelementptr inbounds i64, i64* %cloptr9878, i64 4                    ; &eptr9883[4]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9880                                     ; *eptr9880 = %ZUv$_37wind_45stack
  store i64 %cont7148, i64* %eptr9881                                                ; *eptr9881 = %cont7148
  store i64 %Gbr$tail, i64* %eptr9882                                                ; *eptr9882 = %Gbr$tail
  store i64 %igq$new, i64* %eptr9883                                                 ; *eptr9883 = %igq$new
  %eptr9879 = getelementptr inbounds i64, i64* %cloptr9878, i64 0                    ; &cloptr9878[0]
  %f9884 = ptrtoint void(i64,i64,i64)* @lam8277 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9884, i64* %eptr9879                                                   ; store fptr
  %arg7794 = ptrtoint i64* %cloptr9878 to i64                                        ; closure cast; i64* -> i64
  %cloptr9885 = inttoptr i64 %a7054 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9885)                                         ; assert function application
  %i0ptr9886 = getelementptr inbounds i64, i64* %cloptr9885, i64 0                   ; &cloptr9885[0]
  %f9888 = load i64, i64* %i0ptr9886, align 8                                        ; load; *i0ptr9886
  %fptr9887 = inttoptr i64 %f9888 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9887(i64 %a7054, i64 %arg7794, i64 %a7055)          ; tail call
  ret void
}


define void @lam8289(i64 %env8290, i64 %cont7162, i64 %dMh$l) {
  %envptr9889 = inttoptr i64 %env8290 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9890 = getelementptr inbounds i64, i64* %envptr9889, i64 3                  ; &envptr9889[3]
  %lIr$f = load i64, i64* %envptr9890, align 8                                       ; load; *envptr9890
  %envptr9891 = inttoptr i64 %env8290 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9892 = getelementptr inbounds i64, i64* %envptr9891, i64 2                  ; &envptr9891[2]
  %Gbr$tail = load i64, i64* %envptr9892, align 8                                    ; load; *envptr9892
  %envptr9893 = inttoptr i64 %env8290 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9894 = getelementptr inbounds i64, i64* %envptr9893, i64 1                  ; &envptr9893[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9894, align 8                         ; load; *envptr9894
  %a7047 = call i64 @prim_eq_63(i64 %dMh$l, i64 %Gbr$tail)                           ; call prim_eq_63
  %a7048 = call i64 @prim_not(i64 %a7047)                                            ; call prim_not
  %cmp9895 = icmp eq i64 %a7048, 15                                                  ; false?
  br i1 %cmp9895, label %else9897, label %then9896                                   ; if

then9896:
  %a7049 = call i64 @prim_cdr(i64 %dMh$l)                                            ; call prim_cdr
  %arg7771 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7165 = call i64 @prim_vector_45set_33(i64 %ZUv$_37wind_45stack, i64 %arg7771, i64 %a7049); call prim_vector_45set_33
  %cloptr9898 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9900 = getelementptr inbounds i64, i64* %cloptr9898, i64 1                    ; &eptr9900[1]
  %eptr9901 = getelementptr inbounds i64, i64* %cloptr9898, i64 2                    ; &eptr9901[2]
  %eptr9902 = getelementptr inbounds i64, i64* %cloptr9898, i64 3                    ; &eptr9902[3]
  store i64 %cont7162, i64* %eptr9900                                                ; *eptr9900 = %cont7162
  store i64 %lIr$f, i64* %eptr9901                                                   ; *eptr9901 = %lIr$f
  store i64 %dMh$l, i64* %eptr9902                                                   ; *eptr9902 = %dMh$l
  %eptr9899 = getelementptr inbounds i64, i64* %cloptr9898, i64 0                    ; &cloptr9898[0]
  %f9903 = ptrtoint void(i64,i64,i64)* @lam8285 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9903, i64* %eptr9899                                                   ; store fptr
  %arg7775 = ptrtoint i64* %cloptr9898 to i64                                        ; closure cast; i64* -> i64
  %arg7774 = add i64 0, 0                                                            ; quoted ()
  %cloptr9904 = inttoptr i64 %arg7775 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9904)                                         ; assert function application
  %i0ptr9905 = getelementptr inbounds i64, i64* %cloptr9904, i64 0                   ; &cloptr9904[0]
  %f9907 = load i64, i64* %i0ptr9905, align 8                                        ; load; *i0ptr9905
  %fptr9906 = inttoptr i64 %f9907 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9906(i64 %arg7775, i64 %arg7774, i64 %retprim7165)  ; tail call
  ret void

else9897:
  %retprim7166 = call i64 @prim_void()                                               ; call prim_void
  %arg7787 = add i64 0, 0                                                            ; quoted ()
  %cloptr9908 = inttoptr i64 %cont7162 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9908)                                         ; assert function application
  %i0ptr9909 = getelementptr inbounds i64, i64* %cloptr9908, i64 0                   ; &cloptr9908[0]
  %f9911 = load i64, i64* %i0ptr9909, align 8                                        ; load; *i0ptr9909
  %fptr9910 = inttoptr i64 %f9911 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9910(i64 %cont7162, i64 %arg7787, i64 %retprim7166) ; tail call
  ret void
}


define void @lam8285(i64 %env8286, i64 %_957163, i64 %xo8$_956940) {
  %envptr9912 = inttoptr i64 %env8286 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9913 = getelementptr inbounds i64, i64* %envptr9912, i64 3                  ; &envptr9912[3]
  %dMh$l = load i64, i64* %envptr9913, align 8                                       ; load; *envptr9913
  %envptr9914 = inttoptr i64 %env8286 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9915 = getelementptr inbounds i64, i64* %envptr9914, i64 2                  ; &envptr9914[2]
  %lIr$f = load i64, i64* %envptr9915, align 8                                       ; load; *envptr9915
  %envptr9916 = inttoptr i64 %env8286 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9917 = getelementptr inbounds i64, i64* %envptr9916, i64 1                  ; &envptr9916[1]
  %cont7162 = load i64, i64* %envptr9917, align 8                                    ; load; *envptr9917
  %a7050 = call i64 @prim_car(i64 %dMh$l)                                            ; call prim_car
  %a7051 = call i64 @prim_cdr(i64 %a7050)                                            ; call prim_cdr
  %cloptr9918 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9920 = getelementptr inbounds i64, i64* %cloptr9918, i64 1                    ; &eptr9920[1]
  %eptr9921 = getelementptr inbounds i64, i64* %cloptr9918, i64 2                    ; &eptr9921[2]
  %eptr9922 = getelementptr inbounds i64, i64* %cloptr9918, i64 3                    ; &eptr9922[3]
  store i64 %cont7162, i64* %eptr9920                                                ; *eptr9920 = %cont7162
  store i64 %lIr$f, i64* %eptr9921                                                   ; *eptr9921 = %lIr$f
  store i64 %dMh$l, i64* %eptr9922                                                   ; *eptr9922 = %dMh$l
  %eptr9919 = getelementptr inbounds i64, i64* %cloptr9918, i64 0                    ; &cloptr9918[0]
  %f9923 = ptrtoint void(i64,i64,i64)* @lam8283 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9923, i64* %eptr9919                                                   ; store fptr
  %arg7778 = ptrtoint i64* %cloptr9918 to i64                                        ; closure cast; i64* -> i64
  %cloptr9924 = inttoptr i64 %a7051 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9924)                                         ; assert function application
  %i0ptr9925 = getelementptr inbounds i64, i64* %cloptr9924, i64 0                   ; &cloptr9924[0]
  %f9927 = load i64, i64* %i0ptr9925, align 8                                        ; load; *i0ptr9925
  %fptr9926 = inttoptr i64 %f9927 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9926(i64 %a7051, i64 %arg7778)                      ; tail call
  ret void
}


define void @lam8283(i64 %env8284, i64 %_957164, i64 %vXo$_956941) {
  %envptr9928 = inttoptr i64 %env8284 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9929 = getelementptr inbounds i64, i64* %envptr9928, i64 3                  ; &envptr9928[3]
  %dMh$l = load i64, i64* %envptr9929, align 8                                       ; load; *envptr9929
  %envptr9930 = inttoptr i64 %env8284 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9931 = getelementptr inbounds i64, i64* %envptr9930, i64 2                  ; &envptr9930[2]
  %lIr$f = load i64, i64* %envptr9931, align 8                                       ; load; *envptr9931
  %envptr9932 = inttoptr i64 %env8284 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9933 = getelementptr inbounds i64, i64* %envptr9932, i64 1                  ; &envptr9932[1]
  %cont7162 = load i64, i64* %envptr9933, align 8                                    ; load; *envptr9933
  %arg7780 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7052 = call i64 @prim_vector_45ref(i64 %lIr$f, i64 %arg7780)                     ; call prim_vector_45ref
  %a7053 = call i64 @prim_cdr(i64 %dMh$l)                                            ; call prim_cdr
  %cloptr9934 = inttoptr i64 %a7052 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9934)                                         ; assert function application
  %i0ptr9935 = getelementptr inbounds i64, i64* %cloptr9934, i64 0                   ; &cloptr9934[0]
  %f9937 = load i64, i64* %i0ptr9935, align 8                                        ; load; *i0ptr9935
  %fptr9936 = inttoptr i64 %f9937 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9936(i64 %a7052, i64 %cont7162, i64 %a7053)         ; tail call
  ret void
}


define void @lam8277(i64 %env8278, i64 %_957150, i64 %ae5$_956938) {
  %envptr9938 = inttoptr i64 %env8278 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9939 = getelementptr inbounds i64, i64* %envptr9938, i64 4                  ; &envptr9938[4]
  %igq$new = load i64, i64* %envptr9939, align 8                                     ; load; *envptr9939
  %envptr9940 = inttoptr i64 %env8278 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9941 = getelementptr inbounds i64, i64* %envptr9940, i64 3                  ; &envptr9940[3]
  %Gbr$tail = load i64, i64* %envptr9941, align 8                                    ; load; *envptr9941
  %envptr9942 = inttoptr i64 %env8278 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9943 = getelementptr inbounds i64, i64* %envptr9942, i64 2                  ; &envptr9942[2]
  %cont7148 = load i64, i64* %envptr9943, align 8                                    ; load; *envptr9943
  %envptr9944 = inttoptr i64 %env8278 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9945 = getelementptr inbounds i64, i64* %envptr9944, i64 1                  ; &envptr9944[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9945, align 8                         ; load; *envptr9945
  %cloptr9946 = call i64* @alloc(i64 8)                                              ; malloc
  %eptr9947 = getelementptr inbounds i64, i64* %cloptr9946, i64 0                    ; &cloptr9946[0]
  %f9948 = ptrtoint void(i64,i64)* @lam8275 to i64                                   ; fptr cast; i64(...)* -> i64
  store i64 %f9948, i64* %eptr9947                                                   ; store fptr
  %arg7797 = ptrtoint i64* %cloptr9946 to i64                                        ; closure cast; i64* -> i64
  %cloptr9949 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9951 = getelementptr inbounds i64, i64* %cloptr9949, i64 1                    ; &eptr9951[1]
  %eptr9952 = getelementptr inbounds i64, i64* %cloptr9949, i64 2                    ; &eptr9952[2]
  %eptr9953 = getelementptr inbounds i64, i64* %cloptr9949, i64 3                    ; &eptr9953[3]
  %eptr9954 = getelementptr inbounds i64, i64* %cloptr9949, i64 4                    ; &eptr9954[4]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9951                                     ; *eptr9951 = %ZUv$_37wind_45stack
  store i64 %cont7148, i64* %eptr9952                                                ; *eptr9952 = %cont7148
  store i64 %Gbr$tail, i64* %eptr9953                                                ; *eptr9953 = %Gbr$tail
  store i64 %igq$new, i64* %eptr9954                                                 ; *eptr9954 = %igq$new
  %eptr9950 = getelementptr inbounds i64, i64* %cloptr9949, i64 0                    ; &cloptr9949[0]
  %f9955 = ptrtoint void(i64,i64,i64)* @lam8272 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9955, i64* %eptr9950                                                   ; store fptr
  %arg7796 = ptrtoint i64* %cloptr9949 to i64                                        ; closure cast; i64* -> i64
  %cloptr9956 = inttoptr i64 %arg7797 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9956)                                         ; assert function application
  %i0ptr9957 = getelementptr inbounds i64, i64* %cloptr9956, i64 0                   ; &cloptr9956[0]
  %f9959 = load i64, i64* %i0ptr9957, align 8                                        ; load; *i0ptr9957
  %fptr9958 = inttoptr i64 %f9959 to void (i64,i64)*                                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9958(i64 %arg7797, i64 %arg7796)                    ; tail call
  ret void
}


define void @lam8275(i64 %env8276, i64 %PMY$lst7160) {
  %cont7159 = call i64 @prim_car(i64 %PMY$lst7160)                                   ; call prim_car
  %PMY$lst = call i64 @prim_cdr(i64 %PMY$lst7160)                                    ; call prim_cdr
  %arg7801 = add i64 0, 0                                                            ; quoted ()
  %cloptr9960 = inttoptr i64 %cont7159 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9960)                                         ; assert function application
  %i0ptr9961 = getelementptr inbounds i64, i64* %cloptr9960, i64 0                   ; &cloptr9960[0]
  %f9963 = load i64, i64* %i0ptr9961, align 8                                        ; load; *i0ptr9961
  %fptr9962 = inttoptr i64 %f9963 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9962(i64 %cont7159, i64 %arg7801, i64 %PMY$lst)     ; tail call
  ret void
}


define void @lam8272(i64 %env8273, i64 %_957157, i64 %a7056) {
  %envptr9964 = inttoptr i64 %env8273 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9965 = getelementptr inbounds i64, i64* %envptr9964, i64 4                  ; &envptr9964[4]
  %igq$new = load i64, i64* %envptr9965, align 8                                     ; load; *envptr9965
  %envptr9966 = inttoptr i64 %env8273 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9967 = getelementptr inbounds i64, i64* %envptr9966, i64 3                  ; &envptr9966[3]
  %Gbr$tail = load i64, i64* %envptr9967, align 8                                    ; load; *envptr9967
  %envptr9968 = inttoptr i64 %env8273 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9969 = getelementptr inbounds i64, i64* %envptr9968, i64 2                  ; &envptr9968[2]
  %cont7148 = load i64, i64* %envptr9969, align 8                                    ; load; *envptr9969
  %envptr9970 = inttoptr i64 %env8273 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9971 = getelementptr inbounds i64, i64* %envptr9970, i64 1                  ; &envptr9970[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9971, align 8                         ; load; *envptr9971
  %arg7804 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7158 = call i64 @prim_make_45vector(i64 %arg7804, i64 %a7056)              ; call prim_make_45vector
  %cloptr9972 = call i64* @alloc(i64 40)                                             ; malloc
  %eptr9974 = getelementptr inbounds i64, i64* %cloptr9972, i64 1                    ; &eptr9974[1]
  %eptr9975 = getelementptr inbounds i64, i64* %cloptr9972, i64 2                    ; &eptr9975[2]
  %eptr9976 = getelementptr inbounds i64, i64* %cloptr9972, i64 3                    ; &eptr9976[3]
  %eptr9977 = getelementptr inbounds i64, i64* %cloptr9972, i64 4                    ; &eptr9977[4]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9974                                     ; *eptr9974 = %ZUv$_37wind_45stack
  store i64 %cont7148, i64* %eptr9975                                                ; *eptr9975 = %cont7148
  store i64 %Gbr$tail, i64* %eptr9976                                                ; *eptr9976 = %Gbr$tail
  store i64 %igq$new, i64* %eptr9977                                                 ; *eptr9977 = %igq$new
  %eptr9973 = getelementptr inbounds i64, i64* %cloptr9972, i64 0                    ; &cloptr9972[0]
  %f9978 = ptrtoint void(i64,i64,i64)* @lam8269 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9978, i64* %eptr9973                                                   ; store fptr
  %arg7807 = ptrtoint i64* %cloptr9972 to i64                                        ; closure cast; i64* -> i64
  %arg7806 = add i64 0, 0                                                            ; quoted ()
  %cloptr9979 = inttoptr i64 %arg7807 to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9979)                                         ; assert function application
  %i0ptr9980 = getelementptr inbounds i64, i64* %cloptr9979, i64 0                   ; &cloptr9979[0]
  %f9982 = load i64, i64* %i0ptr9980, align 8                                        ; load; *i0ptr9980
  %fptr9981 = inttoptr i64 %f9982 to void (i64,i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9981(i64 %arg7807, i64 %arg7806, i64 %retprim7158)  ; tail call
  ret void
}


define void @lam8269(i64 %env8270, i64 %_957151, i64 %xda$f) {
  %envptr9983 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9984 = getelementptr inbounds i64, i64* %envptr9983, i64 4                  ; &envptr9983[4]
  %igq$new = load i64, i64* %envptr9984, align 8                                     ; load; *envptr9984
  %envptr9985 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9986 = getelementptr inbounds i64, i64* %envptr9985, i64 3                  ; &envptr9985[3]
  %Gbr$tail = load i64, i64* %envptr9986, align 8                                    ; load; *envptr9986
  %envptr9987 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9988 = getelementptr inbounds i64, i64* %envptr9987, i64 2                  ; &envptr9987[2]
  %cont7148 = load i64, i64* %envptr9988, align 8                                    ; load; *envptr9988
  %envptr9989 = inttoptr i64 %env8270 to i64*                                        ; closure/env cast; i64 -> i64*
  %envptr9990 = getelementptr inbounds i64, i64* %envptr9989, i64 1                  ; &envptr9989[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr9990, align 8                         ; load; *envptr9990
  %arg7809 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr9991 = call i64* @alloc(i64 32)                                             ; malloc
  %eptr9993 = getelementptr inbounds i64, i64* %cloptr9991, i64 1                    ; &eptr9993[1]
  %eptr9994 = getelementptr inbounds i64, i64* %cloptr9991, i64 2                    ; &eptr9994[2]
  %eptr9995 = getelementptr inbounds i64, i64* %cloptr9991, i64 3                    ; &eptr9995[3]
  store i64 %ZUv$_37wind_45stack, i64* %eptr9993                                     ; *eptr9993 = %ZUv$_37wind_45stack
  store i64 %xda$f, i64* %eptr9994                                                   ; *eptr9994 = %xda$f
  store i64 %Gbr$tail, i64* %eptr9995                                                ; *eptr9995 = %Gbr$tail
  %eptr9992 = getelementptr inbounds i64, i64* %cloptr9991, i64 0                    ; &cloptr9991[0]
  %f9996 = ptrtoint void(i64,i64,i64)* @lam8266 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f9996, i64* %eptr9992                                                   ; store fptr
  %arg7808 = ptrtoint i64* %cloptr9991 to i64                                        ; closure cast; i64* -> i64
  %GD5$_956942 = call i64 @prim_vector_45set_33(i64 %xda$f, i64 %arg7809, i64 %arg7808); call prim_vector_45set_33
  %arg7833 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7063 = call i64 @prim_vector_45ref(i64 %xda$f, i64 %arg7833)                     ; call prim_vector_45ref
  %cloptr9997 = inttoptr i64 %a7063 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr9997)                                         ; assert function application
  %i0ptr9998 = getelementptr inbounds i64, i64* %cloptr9997, i64 0                   ; &cloptr9997[0]
  %f10000 = load i64, i64* %i0ptr9998, align 8                                       ; load; *i0ptr9998
  %fptr9999 = inttoptr i64 %f10000 to void (i64,i64,i64)*                            ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr9999(i64 %a7063, i64 %cont7148, i64 %igq$new)       ; tail call
  ret void
}


define void @lam8266(i64 %env8267, i64 %cont7152, i64 %tHG$l) {
  %envptr10001 = inttoptr i64 %env8267 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10002 = getelementptr inbounds i64, i64* %envptr10001, i64 3                ; &envptr10001[3]
  %Gbr$tail = load i64, i64* %envptr10002, align 8                                   ; load; *envptr10002
  %envptr10003 = inttoptr i64 %env8267 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10004 = getelementptr inbounds i64, i64* %envptr10003, i64 2                ; &envptr10003[2]
  %xda$f = load i64, i64* %envptr10004, align 8                                      ; load; *envptr10004
  %envptr10005 = inttoptr i64 %env8267 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10006 = getelementptr inbounds i64, i64* %envptr10005, i64 1                ; &envptr10005[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr10006, align 8                        ; load; *envptr10006
  %a7057 = call i64 @prim_eq_63(i64 %tHG$l, i64 %Gbr$tail)                           ; call prim_eq_63
  %a7058 = call i64 @prim_not(i64 %a7057)                                            ; call prim_not
  %cmp10007 = icmp eq i64 %a7058, 15                                                 ; false?
  br i1 %cmp10007, label %else10009, label %then10008                                ; if

then10008:
  %arg7814 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7059 = call i64 @prim_vector_45ref(i64 %xda$f, i64 %arg7814)                     ; call prim_vector_45ref
  %a7060 = call i64 @prim_cdr(i64 %tHG$l)                                            ; call prim_cdr
  %cloptr10010 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10012 = getelementptr inbounds i64, i64* %cloptr10010, i64 1                  ; &eptr10012[1]
  %eptr10013 = getelementptr inbounds i64, i64* %cloptr10010, i64 2                  ; &eptr10013[2]
  %eptr10014 = getelementptr inbounds i64, i64* %cloptr10010, i64 3                  ; &eptr10014[3]
  store i64 %ZUv$_37wind_45stack, i64* %eptr10012                                    ; *eptr10012 = %ZUv$_37wind_45stack
  store i64 %tHG$l, i64* %eptr10013                                                  ; *eptr10013 = %tHG$l
  store i64 %cont7152, i64* %eptr10014                                               ; *eptr10014 = %cont7152
  %eptr10011 = getelementptr inbounds i64, i64* %cloptr10010, i64 0                  ; &cloptr10010[0]
  %f10015 = ptrtoint void(i64,i64,i64)* @lam8262 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10015, i64* %eptr10011                                                 ; store fptr
  %arg7818 = ptrtoint i64* %cloptr10010 to i64                                       ; closure cast; i64* -> i64
  %cloptr10016 = inttoptr i64 %a7059 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10016)                                        ; assert function application
  %i0ptr10017 = getelementptr inbounds i64, i64* %cloptr10016, i64 0                 ; &cloptr10016[0]
  %f10019 = load i64, i64* %i0ptr10017, align 8                                      ; load; *i0ptr10017
  %fptr10018 = inttoptr i64 %f10019 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10018(i64 %a7059, i64 %arg7818, i64 %a7060)         ; tail call
  ret void

else10009:
  %retprim7156 = call i64 @prim_void()                                               ; call prim_void
  %arg7831 = add i64 0, 0                                                            ; quoted ()
  %cloptr10020 = inttoptr i64 %cont7152 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10020)                                        ; assert function application
  %i0ptr10021 = getelementptr inbounds i64, i64* %cloptr10020, i64 0                 ; &cloptr10020[0]
  %f10023 = load i64, i64* %i0ptr10021, align 8                                      ; load; *i0ptr10021
  %fptr10022 = inttoptr i64 %f10023 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10022(i64 %cont7152, i64 %arg7831, i64 %retprim7156); tail call
  ret void
}


define void @lam8262(i64 %env8263, i64 %_957153, i64 %KEc$_956943) {
  %envptr10024 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10025 = getelementptr inbounds i64, i64* %envptr10024, i64 3                ; &envptr10024[3]
  %cont7152 = load i64, i64* %envptr10025, align 8                                   ; load; *envptr10025
  %envptr10026 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10027 = getelementptr inbounds i64, i64* %envptr10026, i64 2                ; &envptr10026[2]
  %tHG$l = load i64, i64* %envptr10027, align 8                                      ; load; *envptr10027
  %envptr10028 = inttoptr i64 %env8263 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10029 = getelementptr inbounds i64, i64* %envptr10028, i64 1                ; &envptr10028[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr10029, align 8                        ; load; *envptr10029
  %a7061 = call i64 @prim_car(i64 %tHG$l)                                            ; call prim_car
  %a7062 = call i64 @prim_car(i64 %a7061)                                            ; call prim_car
  %cloptr10030 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10032 = getelementptr inbounds i64, i64* %cloptr10030, i64 1                  ; &eptr10032[1]
  %eptr10033 = getelementptr inbounds i64, i64* %cloptr10030, i64 2                  ; &eptr10033[2]
  %eptr10034 = getelementptr inbounds i64, i64* %cloptr10030, i64 3                  ; &eptr10034[3]
  store i64 %ZUv$_37wind_45stack, i64* %eptr10032                                    ; *eptr10032 = %ZUv$_37wind_45stack
  store i64 %tHG$l, i64* %eptr10033                                                  ; *eptr10033 = %tHG$l
  store i64 %cont7152, i64* %eptr10034                                               ; *eptr10034 = %cont7152
  %eptr10031 = getelementptr inbounds i64, i64* %cloptr10030, i64 0                  ; &cloptr10030[0]
  %f10035 = ptrtoint void(i64,i64,i64)* @lam8260 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10035, i64* %eptr10031                                                 ; store fptr
  %arg7822 = ptrtoint i64* %cloptr10030 to i64                                       ; closure cast; i64* -> i64
  %cloptr10036 = inttoptr i64 %a7062 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10036)                                        ; assert function application
  %i0ptr10037 = getelementptr inbounds i64, i64* %cloptr10036, i64 0                 ; &cloptr10036[0]
  %f10039 = load i64, i64* %i0ptr10037, align 8                                      ; load; *i0ptr10037
  %fptr10038 = inttoptr i64 %f10039 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10038(i64 %a7062, i64 %arg7822)                     ; tail call
  ret void
}


define void @lam8260(i64 %env8261, i64 %_957154, i64 %Xxq$_956944) {
  %envptr10040 = inttoptr i64 %env8261 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10041 = getelementptr inbounds i64, i64* %envptr10040, i64 3                ; &envptr10040[3]
  %cont7152 = load i64, i64* %envptr10041, align 8                                   ; load; *envptr10041
  %envptr10042 = inttoptr i64 %env8261 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10043 = getelementptr inbounds i64, i64* %envptr10042, i64 2                ; &envptr10042[2]
  %tHG$l = load i64, i64* %envptr10043, align 8                                      ; load; *envptr10043
  %envptr10044 = inttoptr i64 %env8261 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10045 = getelementptr inbounds i64, i64* %envptr10044, i64 1                ; &envptr10044[1]
  %ZUv$_37wind_45stack = load i64, i64* %envptr10045, align 8                        ; load; *envptr10045
  %arg7825 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7155 = call i64 @prim_vector_45set_33(i64 %ZUv$_37wind_45stack, i64 %arg7825, i64 %tHG$l); call prim_vector_45set_33
  %arg7828 = add i64 0, 0                                                            ; quoted ()
  %cloptr10046 = inttoptr i64 %cont7152 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10046)                                        ; assert function application
  %i0ptr10047 = getelementptr inbounds i64, i64* %cloptr10046, i64 0                 ; &cloptr10046[0]
  %f10049 = load i64, i64* %i0ptr10047, align 8                                      ; load; *i0ptr10047
  %fptr10048 = inttoptr i64 %f10049 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10048(i64 %cont7152, i64 %arg7828, i64 %retprim7155); tail call
  ret void
}


define void @lam8247(i64 %env8248, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr10050 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10050)                                        ; assert function application
  %i0ptr10051 = getelementptr inbounds i64, i64* %cloptr10050, i64 0                 ; &cloptr10050[0]
  %f10053 = load i64, i64* %i0ptr10051, align 8                                      ; load; *i0ptr10051
  %fptr10052 = inttoptr i64 %f10053 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10052(i64 %_951, i64 %_951)                         ; tail call
  ret void
}


define void @lam8240(i64 %env8241, i64 %cont7182, i64 %xPk$_37foldl) {
  %envptr10054 = inttoptr i64 %env8241 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10055 = getelementptr inbounds i64, i64* %envptr10054, i64 3                ; &envptr10054[3]
  %Ini$_37foldr = load i64, i64* %envptr10055, align 8                               ; load; *envptr10055
  %envptr10056 = inttoptr i64 %env8241 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10057 = getelementptr inbounds i64, i64* %envptr10056, i64 2                ; &envptr10056[2]
  %KqY$_37map1 = load i64, i64* %envptr10057, align 8                                ; load; *envptr10057
  %envptr10058 = inttoptr i64 %env8241 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10059 = getelementptr inbounds i64, i64* %envptr10058, i64 1                ; &envptr10058[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10059, align 8                              ; load; *envptr10059
  %arg7853 = add i64 0, 0                                                            ; quoted ()
  %cloptr10060 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10062 = getelementptr inbounds i64, i64* %cloptr10060, i64 1                  ; &eptr10062[1]
  %eptr10063 = getelementptr inbounds i64, i64* %cloptr10060, i64 2                  ; &eptr10063[2]
  %eptr10064 = getelementptr inbounds i64, i64* %cloptr10060, i64 3                  ; &eptr10064[3]
  %eptr10065 = getelementptr inbounds i64, i64* %cloptr10060, i64 4                  ; &eptr10065[4]
  store i64 %xPk$_37foldl, i64* %eptr10062                                           ; *eptr10062 = %xPk$_37foldl
  store i64 %Yrh$_37foldr1, i64* %eptr10063                                          ; *eptr10063 = %Yrh$_37foldr1
  store i64 %KqY$_37map1, i64* %eptr10064                                            ; *eptr10064 = %KqY$_37map1
  store i64 %Ini$_37foldr, i64* %eptr10065                                           ; *eptr10065 = %Ini$_37foldr
  %eptr10061 = getelementptr inbounds i64, i64* %cloptr10060, i64 0                  ; &cloptr10060[0]
  %f10066 = ptrtoint void(i64,i64)* @lam8237 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10066, i64* %eptr10061                                                 ; store fptr
  %arg7852 = ptrtoint i64* %cloptr10060 to i64                                       ; closure cast; i64* -> i64
  %cloptr10067 = inttoptr i64 %cont7182 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10067)                                        ; assert function application
  %i0ptr10068 = getelementptr inbounds i64, i64* %cloptr10067, i64 0                 ; &cloptr10067[0]
  %f10070 = load i64, i64* %i0ptr10068, align 8                                      ; load; *i0ptr10068
  %fptr10069 = inttoptr i64 %f10070 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10069(i64 %cont7182, i64 %arg7853, i64 %arg7852)    ; tail call
  ret void
}


define void @lam8237(i64 %env8238, i64 %NlC$args7184) {
  %envptr10071 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10072 = getelementptr inbounds i64, i64* %envptr10071, i64 4                ; &envptr10071[4]
  %Ini$_37foldr = load i64, i64* %envptr10072, align 8                               ; load; *envptr10072
  %envptr10073 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10074 = getelementptr inbounds i64, i64* %envptr10073, i64 3                ; &envptr10073[3]
  %KqY$_37map1 = load i64, i64* %envptr10074, align 8                                ; load; *envptr10074
  %envptr10075 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10076 = getelementptr inbounds i64, i64* %envptr10075, i64 2                ; &envptr10075[2]
  %Yrh$_37foldr1 = load i64, i64* %envptr10076, align 8                              ; load; *envptr10076
  %envptr10077 = inttoptr i64 %env8238 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10078 = getelementptr inbounds i64, i64* %envptr10077, i64 1                ; &envptr10077[1]
  %xPk$_37foldl = load i64, i64* %envptr10078, align 8                               ; load; *envptr10078
  %cont7183 = call i64 @prim_car(i64 %NlC$args7184)                                  ; call prim_car
  %NlC$args = call i64 @prim_cdr(i64 %NlC$args7184)                                  ; call prim_cdr
  %ME8$f = call i64 @prim_car(i64 %NlC$args)                                         ; call prim_car
  %a6985 = call i64 @prim_cdr(i64 %NlC$args)                                         ; call prim_cdr
  %retprim7203 = call i64 @prim_car(i64 %a6985)                                      ; call prim_car
  %cloptr10079 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10081 = getelementptr inbounds i64, i64* %cloptr10079, i64 1                  ; &eptr10081[1]
  %eptr10082 = getelementptr inbounds i64, i64* %cloptr10079, i64 2                  ; &eptr10082[2]
  %eptr10083 = getelementptr inbounds i64, i64* %cloptr10079, i64 3                  ; &eptr10083[3]
  %eptr10084 = getelementptr inbounds i64, i64* %cloptr10079, i64 4                  ; &eptr10084[4]
  %eptr10085 = getelementptr inbounds i64, i64* %cloptr10079, i64 5                  ; &eptr10085[5]
  %eptr10086 = getelementptr inbounds i64, i64* %cloptr10079, i64 6                  ; &eptr10086[6]
  %eptr10087 = getelementptr inbounds i64, i64* %cloptr10079, i64 7                  ; &eptr10087[7]
  store i64 %xPk$_37foldl, i64* %eptr10081                                           ; *eptr10081 = %xPk$_37foldl
  store i64 %cont7183, i64* %eptr10082                                               ; *eptr10082 = %cont7183
  store i64 %ME8$f, i64* %eptr10083                                                  ; *eptr10083 = %ME8$f
  store i64 %Yrh$_37foldr1, i64* %eptr10084                                          ; *eptr10084 = %Yrh$_37foldr1
  store i64 %KqY$_37map1, i64* %eptr10085                                            ; *eptr10085 = %KqY$_37map1
  store i64 %NlC$args, i64* %eptr10086                                               ; *eptr10086 = %NlC$args
  store i64 %Ini$_37foldr, i64* %eptr10087                                           ; *eptr10087 = %Ini$_37foldr
  %eptr10080 = getelementptr inbounds i64, i64* %cloptr10079, i64 0                  ; &cloptr10079[0]
  %f10088 = ptrtoint void(i64,i64,i64)* @lam8235 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10088, i64* %eptr10080                                                 ; store fptr
  %arg7862 = ptrtoint i64* %cloptr10079 to i64                                       ; closure cast; i64* -> i64
  %arg7861 = add i64 0, 0                                                            ; quoted ()
  %cloptr10089 = inttoptr i64 %arg7862 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10089)                                        ; assert function application
  %i0ptr10090 = getelementptr inbounds i64, i64* %cloptr10089, i64 0                 ; &cloptr10089[0]
  %f10092 = load i64, i64* %i0ptr10090, align 8                                      ; load; *i0ptr10090
  %fptr10091 = inttoptr i64 %f10092 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10091(i64 %arg7862, i64 %arg7861, i64 %retprim7203) ; tail call
  ret void
}


define void @lam8235(i64 %env8236, i64 %_957185, i64 %Kr2$acc) {
  %envptr10093 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10094 = getelementptr inbounds i64, i64* %envptr10093, i64 7                ; &envptr10093[7]
  %Ini$_37foldr = load i64, i64* %envptr10094, align 8                               ; load; *envptr10094
  %envptr10095 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10096 = getelementptr inbounds i64, i64* %envptr10095, i64 6                ; &envptr10095[6]
  %NlC$args = load i64, i64* %envptr10096, align 8                                   ; load; *envptr10096
  %envptr10097 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10098 = getelementptr inbounds i64, i64* %envptr10097, i64 5                ; &envptr10097[5]
  %KqY$_37map1 = load i64, i64* %envptr10098, align 8                                ; load; *envptr10098
  %envptr10099 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10100 = getelementptr inbounds i64, i64* %envptr10099, i64 4                ; &envptr10099[4]
  %Yrh$_37foldr1 = load i64, i64* %envptr10100, align 8                              ; load; *envptr10100
  %envptr10101 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10102 = getelementptr inbounds i64, i64* %envptr10101, i64 3                ; &envptr10101[3]
  %ME8$f = load i64, i64* %envptr10102, align 8                                      ; load; *envptr10102
  %envptr10103 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10104 = getelementptr inbounds i64, i64* %envptr10103, i64 2                ; &envptr10103[2]
  %cont7183 = load i64, i64* %envptr10104, align 8                                   ; load; *envptr10104
  %envptr10105 = inttoptr i64 %env8236 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10106 = getelementptr inbounds i64, i64* %envptr10105, i64 1                ; &envptr10105[1]
  %xPk$_37foldl = load i64, i64* %envptr10106, align 8                               ; load; *envptr10106
  %a6986 = call i64 @prim_cdr(i64 %NlC$args)                                         ; call prim_cdr
  %retprim7202 = call i64 @prim_cdr(i64 %a6986)                                      ; call prim_cdr
  %cloptr10107 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10109 = getelementptr inbounds i64, i64* %cloptr10107, i64 1                  ; &eptr10109[1]
  %eptr10110 = getelementptr inbounds i64, i64* %cloptr10107, i64 2                  ; &eptr10110[2]
  %eptr10111 = getelementptr inbounds i64, i64* %cloptr10107, i64 3                  ; &eptr10111[3]
  %eptr10112 = getelementptr inbounds i64, i64* %cloptr10107, i64 4                  ; &eptr10112[4]
  %eptr10113 = getelementptr inbounds i64, i64* %cloptr10107, i64 5                  ; &eptr10113[5]
  %eptr10114 = getelementptr inbounds i64, i64* %cloptr10107, i64 6                  ; &eptr10114[6]
  %eptr10115 = getelementptr inbounds i64, i64* %cloptr10107, i64 7                  ; &eptr10115[7]
  store i64 %xPk$_37foldl, i64* %eptr10109                                           ; *eptr10109 = %xPk$_37foldl
  store i64 %cont7183, i64* %eptr10110                                               ; *eptr10110 = %cont7183
  store i64 %ME8$f, i64* %eptr10111                                                  ; *eptr10111 = %ME8$f
  store i64 %Yrh$_37foldr1, i64* %eptr10112                                          ; *eptr10112 = %Yrh$_37foldr1
  store i64 %KqY$_37map1, i64* %eptr10113                                            ; *eptr10113 = %KqY$_37map1
  store i64 %Kr2$acc, i64* %eptr10114                                                ; *eptr10114 = %Kr2$acc
  store i64 %Ini$_37foldr, i64* %eptr10115                                           ; *eptr10115 = %Ini$_37foldr
  %eptr10108 = getelementptr inbounds i64, i64* %cloptr10107, i64 0                  ; &cloptr10107[0]
  %f10116 = ptrtoint void(i64,i64,i64)* @lam8233 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10116, i64* %eptr10108                                                 ; store fptr
  %arg7867 = ptrtoint i64* %cloptr10107 to i64                                       ; closure cast; i64* -> i64
  %arg7866 = add i64 0, 0                                                            ; quoted ()
  %cloptr10117 = inttoptr i64 %arg7867 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10117)                                        ; assert function application
  %i0ptr10118 = getelementptr inbounds i64, i64* %cloptr10117, i64 0                 ; &cloptr10117[0]
  %f10120 = load i64, i64* %i0ptr10118, align 8                                      ; load; *i0ptr10118
  %fptr10119 = inttoptr i64 %f10120 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10119(i64 %arg7867, i64 %arg7866, i64 %retprim7202) ; tail call
  ret void
}


define void @lam8233(i64 %env8234, i64 %_957186, i64 %HAy$lsts) {
  %envptr10121 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10122 = getelementptr inbounds i64, i64* %envptr10121, i64 7                ; &envptr10121[7]
  %Ini$_37foldr = load i64, i64* %envptr10122, align 8                               ; load; *envptr10122
  %envptr10123 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10124 = getelementptr inbounds i64, i64* %envptr10123, i64 6                ; &envptr10123[6]
  %Kr2$acc = load i64, i64* %envptr10124, align 8                                    ; load; *envptr10124
  %envptr10125 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10126 = getelementptr inbounds i64, i64* %envptr10125, i64 5                ; &envptr10125[5]
  %KqY$_37map1 = load i64, i64* %envptr10126, align 8                                ; load; *envptr10126
  %envptr10127 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10128 = getelementptr inbounds i64, i64* %envptr10127, i64 4                ; &envptr10127[4]
  %Yrh$_37foldr1 = load i64, i64* %envptr10128, align 8                              ; load; *envptr10128
  %envptr10129 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10130 = getelementptr inbounds i64, i64* %envptr10129, i64 3                ; &envptr10129[3]
  %ME8$f = load i64, i64* %envptr10130, align 8                                      ; load; *envptr10130
  %envptr10131 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10132 = getelementptr inbounds i64, i64* %envptr10131, i64 2                ; &envptr10131[2]
  %cont7183 = load i64, i64* %envptr10132, align 8                                   ; load; *envptr10132
  %envptr10133 = inttoptr i64 %env8234 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10134 = getelementptr inbounds i64, i64* %envptr10133, i64 1                ; &envptr10133[1]
  %xPk$_37foldl = load i64, i64* %envptr10134, align 8                               ; load; *envptr10134
  %cloptr10135 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10137 = getelementptr inbounds i64, i64* %cloptr10135, i64 1                  ; &eptr10137[1]
  %eptr10138 = getelementptr inbounds i64, i64* %cloptr10135, i64 2                  ; &eptr10138[2]
  %eptr10139 = getelementptr inbounds i64, i64* %cloptr10135, i64 3                  ; &eptr10139[3]
  %eptr10140 = getelementptr inbounds i64, i64* %cloptr10135, i64 4                  ; &eptr10140[4]
  %eptr10141 = getelementptr inbounds i64, i64* %cloptr10135, i64 5                  ; &eptr10141[5]
  %eptr10142 = getelementptr inbounds i64, i64* %cloptr10135, i64 6                  ; &eptr10142[6]
  %eptr10143 = getelementptr inbounds i64, i64* %cloptr10135, i64 7                  ; &eptr10143[7]
  store i64 %xPk$_37foldl, i64* %eptr10137                                           ; *eptr10137 = %xPk$_37foldl
  store i64 %cont7183, i64* %eptr10138                                               ; *eptr10138 = %cont7183
  store i64 %ME8$f, i64* %eptr10139                                                  ; *eptr10139 = %ME8$f
  store i64 %HAy$lsts, i64* %eptr10140                                               ; *eptr10140 = %HAy$lsts
  store i64 %KqY$_37map1, i64* %eptr10141                                            ; *eptr10141 = %KqY$_37map1
  store i64 %Kr2$acc, i64* %eptr10142                                                ; *eptr10142 = %Kr2$acc
  store i64 %Ini$_37foldr, i64* %eptr10143                                           ; *eptr10143 = %Ini$_37foldr
  %eptr10136 = getelementptr inbounds i64, i64* %cloptr10135, i64 0                  ; &cloptr10135[0]
  %f10144 = ptrtoint void(i64,i64,i64)* @lam8231 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10144, i64* %eptr10136                                                 ; store fptr
  %arg7871 = ptrtoint i64* %cloptr10135 to i64                                       ; closure cast; i64* -> i64
  %cloptr10145 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10146 = getelementptr inbounds i64, i64* %cloptr10145, i64 0                  ; &cloptr10145[0]
  %f10147 = ptrtoint void(i64,i64,i64,i64)* @lam8210 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10147, i64* %eptr10146                                                 ; store fptr
  %arg7870 = ptrtoint i64* %cloptr10145 to i64                                       ; closure cast; i64* -> i64
  %arg7869 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10148 = inttoptr i64 %Yrh$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10148)                                        ; assert function application
  %i0ptr10149 = getelementptr inbounds i64, i64* %cloptr10148, i64 0                 ; &cloptr10148[0]
  %f10151 = load i64, i64* %i0ptr10149, align 8                                      ; load; *i0ptr10149
  %fptr10150 = inttoptr i64 %f10151 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10150(i64 %Yrh$_37foldr1, i64 %arg7871, i64 %arg7870, i64 %arg7869, i64 %HAy$lsts); tail call
  ret void
}


define void @lam8231(i64 %env8232, i64 %_957187, i64 %a6987) {
  %envptr10152 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10153 = getelementptr inbounds i64, i64* %envptr10152, i64 7                ; &envptr10152[7]
  %Ini$_37foldr = load i64, i64* %envptr10153, align 8                               ; load; *envptr10153
  %envptr10154 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10155 = getelementptr inbounds i64, i64* %envptr10154, i64 6                ; &envptr10154[6]
  %Kr2$acc = load i64, i64* %envptr10155, align 8                                    ; load; *envptr10155
  %envptr10156 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10157 = getelementptr inbounds i64, i64* %envptr10156, i64 5                ; &envptr10156[5]
  %KqY$_37map1 = load i64, i64* %envptr10157, align 8                                ; load; *envptr10157
  %envptr10158 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10159 = getelementptr inbounds i64, i64* %envptr10158, i64 4                ; &envptr10158[4]
  %HAy$lsts = load i64, i64* %envptr10159, align 8                                   ; load; *envptr10159
  %envptr10160 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10161 = getelementptr inbounds i64, i64* %envptr10160, i64 3                ; &envptr10160[3]
  %ME8$f = load i64, i64* %envptr10161, align 8                                      ; load; *envptr10161
  %envptr10162 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10163 = getelementptr inbounds i64, i64* %envptr10162, i64 2                ; &envptr10162[2]
  %cont7183 = load i64, i64* %envptr10163, align 8                                   ; load; *envptr10163
  %envptr10164 = inttoptr i64 %env8232 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10165 = getelementptr inbounds i64, i64* %envptr10164, i64 1                ; &envptr10164[1]
  %xPk$_37foldl = load i64, i64* %envptr10165, align 8                               ; load; *envptr10165
  %cmp10166 = icmp eq i64 %a6987, 15                                                 ; false?
  br i1 %cmp10166, label %else10168, label %then10167                                ; if

then10167:
  %arg7874 = add i64 0, 0                                                            ; quoted ()
  %cloptr10169 = inttoptr i64 %cont7183 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10169)                                        ; assert function application
  %i0ptr10170 = getelementptr inbounds i64, i64* %cloptr10169, i64 0                 ; &cloptr10169[0]
  %f10172 = load i64, i64* %i0ptr10170, align 8                                      ; load; *i0ptr10170
  %fptr10171 = inttoptr i64 %f10172 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10171(i64 %cont7183, i64 %arg7874, i64 %Kr2$acc)    ; tail call
  ret void

else10168:
  %cloptr10173 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10175 = getelementptr inbounds i64, i64* %cloptr10173, i64 1                  ; &eptr10175[1]
  %eptr10176 = getelementptr inbounds i64, i64* %cloptr10173, i64 2                  ; &eptr10176[2]
  %eptr10177 = getelementptr inbounds i64, i64* %cloptr10173, i64 3                  ; &eptr10177[3]
  %eptr10178 = getelementptr inbounds i64, i64* %cloptr10173, i64 4                  ; &eptr10178[4]
  %eptr10179 = getelementptr inbounds i64, i64* %cloptr10173, i64 5                  ; &eptr10179[5]
  %eptr10180 = getelementptr inbounds i64, i64* %cloptr10173, i64 6                  ; &eptr10180[6]
  %eptr10181 = getelementptr inbounds i64, i64* %cloptr10173, i64 7                  ; &eptr10181[7]
  store i64 %xPk$_37foldl, i64* %eptr10175                                           ; *eptr10175 = %xPk$_37foldl
  store i64 %cont7183, i64* %eptr10176                                               ; *eptr10176 = %cont7183
  store i64 %ME8$f, i64* %eptr10177                                                  ; *eptr10177 = %ME8$f
  store i64 %HAy$lsts, i64* %eptr10178                                               ; *eptr10178 = %HAy$lsts
  store i64 %KqY$_37map1, i64* %eptr10179                                            ; *eptr10179 = %KqY$_37map1
  store i64 %Kr2$acc, i64* %eptr10180                                                ; *eptr10180 = %Kr2$acc
  store i64 %Ini$_37foldr, i64* %eptr10181                                           ; *eptr10181 = %Ini$_37foldr
  %eptr10174 = getelementptr inbounds i64, i64* %cloptr10173, i64 0                  ; &cloptr10173[0]
  %f10182 = ptrtoint void(i64,i64,i64)* @lam8229 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10182, i64* %eptr10174                                                 ; store fptr
  %arg7878 = ptrtoint i64* %cloptr10173 to i64                                       ; closure cast; i64* -> i64
  %cloptr10183 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10184 = getelementptr inbounds i64, i64* %cloptr10183, i64 0                  ; &cloptr10183[0]
  %f10185 = ptrtoint void(i64,i64,i64)* @lam8214 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10185, i64* %eptr10184                                                 ; store fptr
  %arg7877 = ptrtoint i64* %cloptr10183 to i64                                       ; closure cast; i64* -> i64
  %cloptr10186 = inttoptr i64 %KqY$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10186)                                        ; assert function application
  %i0ptr10187 = getelementptr inbounds i64, i64* %cloptr10186, i64 0                 ; &cloptr10186[0]
  %f10189 = load i64, i64* %i0ptr10187, align 8                                      ; load; *i0ptr10187
  %fptr10188 = inttoptr i64 %f10189 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10188(i64 %KqY$_37map1, i64 %arg7878, i64 %arg7877, i64 %HAy$lsts); tail call
  ret void
}


define void @lam8229(i64 %env8230, i64 %_957188, i64 %KiH$lsts_43) {
  %envptr10190 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10191 = getelementptr inbounds i64, i64* %envptr10190, i64 7                ; &envptr10190[7]
  %Ini$_37foldr = load i64, i64* %envptr10191, align 8                               ; load; *envptr10191
  %envptr10192 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10193 = getelementptr inbounds i64, i64* %envptr10192, i64 6                ; &envptr10192[6]
  %Kr2$acc = load i64, i64* %envptr10193, align 8                                    ; load; *envptr10193
  %envptr10194 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10195 = getelementptr inbounds i64, i64* %envptr10194, i64 5                ; &envptr10194[5]
  %KqY$_37map1 = load i64, i64* %envptr10195, align 8                                ; load; *envptr10195
  %envptr10196 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10197 = getelementptr inbounds i64, i64* %envptr10196, i64 4                ; &envptr10196[4]
  %HAy$lsts = load i64, i64* %envptr10197, align 8                                   ; load; *envptr10197
  %envptr10198 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10199 = getelementptr inbounds i64, i64* %envptr10198, i64 3                ; &envptr10198[3]
  %ME8$f = load i64, i64* %envptr10199, align 8                                      ; load; *envptr10199
  %envptr10200 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10201 = getelementptr inbounds i64, i64* %envptr10200, i64 2                ; &envptr10200[2]
  %cont7183 = load i64, i64* %envptr10201, align 8                                   ; load; *envptr10201
  %envptr10202 = inttoptr i64 %env8230 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10203 = getelementptr inbounds i64, i64* %envptr10202, i64 1                ; &envptr10202[1]
  %xPk$_37foldl = load i64, i64* %envptr10203, align 8                               ; load; *envptr10203
  %cloptr10204 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10206 = getelementptr inbounds i64, i64* %cloptr10204, i64 1                  ; &eptr10206[1]
  %eptr10207 = getelementptr inbounds i64, i64* %cloptr10204, i64 2                  ; &eptr10207[2]
  %eptr10208 = getelementptr inbounds i64, i64* %cloptr10204, i64 3                  ; &eptr10208[3]
  %eptr10209 = getelementptr inbounds i64, i64* %cloptr10204, i64 4                  ; &eptr10209[4]
  %eptr10210 = getelementptr inbounds i64, i64* %cloptr10204, i64 5                  ; &eptr10210[5]
  %eptr10211 = getelementptr inbounds i64, i64* %cloptr10204, i64 6                  ; &eptr10211[6]
  store i64 %xPk$_37foldl, i64* %eptr10206                                           ; *eptr10206 = %xPk$_37foldl
  store i64 %cont7183, i64* %eptr10207                                               ; *eptr10207 = %cont7183
  store i64 %KiH$lsts_43, i64* %eptr10208                                            ; *eptr10208 = %KiH$lsts_43
  store i64 %ME8$f, i64* %eptr10209                                                  ; *eptr10209 = %ME8$f
  store i64 %Kr2$acc, i64* %eptr10210                                                ; *eptr10210 = %Kr2$acc
  store i64 %Ini$_37foldr, i64* %eptr10211                                           ; *eptr10211 = %Ini$_37foldr
  %eptr10205 = getelementptr inbounds i64, i64* %cloptr10204, i64 0                  ; &cloptr10204[0]
  %f10212 = ptrtoint void(i64,i64,i64)* @lam8227 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10212, i64* %eptr10205                                                 ; store fptr
  %arg7882 = ptrtoint i64* %cloptr10204 to i64                                       ; closure cast; i64* -> i64
  %cloptr10213 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10214 = getelementptr inbounds i64, i64* %cloptr10213, i64 0                  ; &cloptr10213[0]
  %f10215 = ptrtoint void(i64,i64,i64)* @lam8217 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10215, i64* %eptr10214                                                 ; store fptr
  %arg7881 = ptrtoint i64* %cloptr10213 to i64                                       ; closure cast; i64* -> i64
  %cloptr10216 = inttoptr i64 %KqY$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10216)                                        ; assert function application
  %i0ptr10217 = getelementptr inbounds i64, i64* %cloptr10216, i64 0                 ; &cloptr10216[0]
  %f10219 = load i64, i64* %i0ptr10217, align 8                                      ; load; *i0ptr10217
  %fptr10218 = inttoptr i64 %f10219 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10218(i64 %KqY$_37map1, i64 %arg7882, i64 %arg7881, i64 %HAy$lsts); tail call
  ret void
}


define void @lam8227(i64 %env8228, i64 %_957189, i64 %VJC$vs) {
  %envptr10220 = inttoptr i64 %env8228 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10221 = getelementptr inbounds i64, i64* %envptr10220, i64 6                ; &envptr10220[6]
  %Ini$_37foldr = load i64, i64* %envptr10221, align 8                               ; load; *envptr10221
  %envptr10222 = inttoptr i64 %env8228 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10223 = getelementptr inbounds i64, i64* %envptr10222, i64 5                ; &envptr10222[5]
  %Kr2$acc = load i64, i64* %envptr10223, align 8                                    ; load; *envptr10223
  %envptr10224 = inttoptr i64 %env8228 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10225 = getelementptr inbounds i64, i64* %envptr10224, i64 4                ; &envptr10224[4]
  %ME8$f = load i64, i64* %envptr10225, align 8                                      ; load; *envptr10225
  %envptr10226 = inttoptr i64 %env8228 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10227 = getelementptr inbounds i64, i64* %envptr10226, i64 3                ; &envptr10226[3]
  %KiH$lsts_43 = load i64, i64* %envptr10227, align 8                                ; load; *envptr10227
  %envptr10228 = inttoptr i64 %env8228 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10229 = getelementptr inbounds i64, i64* %envptr10228, i64 2                ; &envptr10228[2]
  %cont7183 = load i64, i64* %envptr10229, align 8                                   ; load; *envptr10229
  %envptr10230 = inttoptr i64 %env8228 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10231 = getelementptr inbounds i64, i64* %envptr10230, i64 1                ; &envptr10230[1]
  %xPk$_37foldl = load i64, i64* %envptr10231, align 8                               ; load; *envptr10231
  %arg7884 = add i64 0, 0                                                            ; quoted ()
  %a6988 = call i64 @prim_cons(i64 %Kr2$acc, i64 %arg7884)                           ; call prim_cons
  %cloptr10232 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10234 = getelementptr inbounds i64, i64* %cloptr10232, i64 1                  ; &eptr10234[1]
  %eptr10235 = getelementptr inbounds i64, i64* %cloptr10232, i64 2                  ; &eptr10235[2]
  %eptr10236 = getelementptr inbounds i64, i64* %cloptr10232, i64 3                  ; &eptr10236[3]
  %eptr10237 = getelementptr inbounds i64, i64* %cloptr10232, i64 4                  ; &eptr10237[4]
  store i64 %xPk$_37foldl, i64* %eptr10234                                           ; *eptr10234 = %xPk$_37foldl
  store i64 %cont7183, i64* %eptr10235                                               ; *eptr10235 = %cont7183
  store i64 %KiH$lsts_43, i64* %eptr10236                                            ; *eptr10236 = %KiH$lsts_43
  store i64 %ME8$f, i64* %eptr10237                                                  ; *eptr10237 = %ME8$f
  %eptr10233 = getelementptr inbounds i64, i64* %cloptr10232, i64 0                  ; &cloptr10232[0]
  %f10238 = ptrtoint void(i64,i64,i64)* @lam8224 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10238, i64* %eptr10233                                                 ; store fptr
  %arg7889 = ptrtoint i64* %cloptr10232 to i64                                       ; closure cast; i64* -> i64
  %cloptr10239 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10240 = getelementptr inbounds i64, i64* %cloptr10239, i64 0                  ; &cloptr10239[0]
  %f10241 = ptrtoint void(i64,i64,i64,i64)* @lam8220 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10241, i64* %eptr10240                                                 ; store fptr
  %arg7888 = ptrtoint i64* %cloptr10239 to i64                                       ; closure cast; i64* -> i64
  %cloptr10242 = inttoptr i64 %Ini$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10242)                                        ; assert function application
  %i0ptr10243 = getelementptr inbounds i64, i64* %cloptr10242, i64 0                 ; &cloptr10242[0]
  %f10245 = load i64, i64* %i0ptr10243, align 8                                      ; load; *i0ptr10243
  %fptr10244 = inttoptr i64 %f10245 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10244(i64 %Ini$_37foldr, i64 %arg7889, i64 %arg7888, i64 %a6988, i64 %VJC$vs); tail call
  ret void
}


define void @lam8224(i64 %env8225, i64 %_957192, i64 %a6989) {
  %envptr10246 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10247 = getelementptr inbounds i64, i64* %envptr10246, i64 4                ; &envptr10246[4]
  %ME8$f = load i64, i64* %envptr10247, align 8                                      ; load; *envptr10247
  %envptr10248 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10249 = getelementptr inbounds i64, i64* %envptr10248, i64 3                ; &envptr10248[3]
  %KiH$lsts_43 = load i64, i64* %envptr10249, align 8                                ; load; *envptr10249
  %envptr10250 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10251 = getelementptr inbounds i64, i64* %envptr10250, i64 2                ; &envptr10250[2]
  %cont7183 = load i64, i64* %envptr10251, align 8                                   ; load; *envptr10251
  %envptr10252 = inttoptr i64 %env8225 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10253 = getelementptr inbounds i64, i64* %envptr10252, i64 1                ; &envptr10252[1]
  %xPk$_37foldl = load i64, i64* %envptr10253, align 8                               ; load; *envptr10253
  %cloptr10254 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10256 = getelementptr inbounds i64, i64* %cloptr10254, i64 1                  ; &eptr10256[1]
  %eptr10257 = getelementptr inbounds i64, i64* %cloptr10254, i64 2                  ; &eptr10257[2]
  %eptr10258 = getelementptr inbounds i64, i64* %cloptr10254, i64 3                  ; &eptr10258[3]
  %eptr10259 = getelementptr inbounds i64, i64* %cloptr10254, i64 4                  ; &eptr10259[4]
  store i64 %xPk$_37foldl, i64* %eptr10256                                           ; *eptr10256 = %xPk$_37foldl
  store i64 %cont7183, i64* %eptr10257                                               ; *eptr10257 = %cont7183
  store i64 %KiH$lsts_43, i64* %eptr10258                                            ; *eptr10258 = %KiH$lsts_43
  store i64 %ME8$f, i64* %eptr10259                                                  ; *eptr10259 = %ME8$f
  %eptr10255 = getelementptr inbounds i64, i64* %cloptr10254, i64 0                  ; &cloptr10254[0]
  %f10260 = ptrtoint void(i64,i64,i64)* @lam8222 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10260, i64* %eptr10255                                                 ; store fptr
  %arg7892 = ptrtoint i64* %cloptr10254 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7193 = call i64 @prim_cons(i64 %arg7892, i64 %a6989)                     ; call prim_cons
  %cloptr10261 = inttoptr i64 %ME8$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10261)                                        ; assert function application
  %i0ptr10262 = getelementptr inbounds i64, i64* %cloptr10261, i64 0                 ; &cloptr10261[0]
  %f10264 = load i64, i64* %i0ptr10262, align 8                                      ; load; *i0ptr10262
  %fptr10263 = inttoptr i64 %f10264 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10263(i64 %ME8$f, i64 %cps_45lst7193)               ; tail call
  ret void
}


define void @lam8222(i64 %env8223, i64 %_957190, i64 %WQl$acc_43) {
  %envptr10265 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10266 = getelementptr inbounds i64, i64* %envptr10265, i64 4                ; &envptr10265[4]
  %ME8$f = load i64, i64* %envptr10266, align 8                                      ; load; *envptr10266
  %envptr10267 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10268 = getelementptr inbounds i64, i64* %envptr10267, i64 3                ; &envptr10267[3]
  %KiH$lsts_43 = load i64, i64* %envptr10268, align 8                                ; load; *envptr10268
  %envptr10269 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10270 = getelementptr inbounds i64, i64* %envptr10269, i64 2                ; &envptr10269[2]
  %cont7183 = load i64, i64* %envptr10270, align 8                                   ; load; *envptr10270
  %envptr10271 = inttoptr i64 %env8223 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10272 = getelementptr inbounds i64, i64* %envptr10271, i64 1                ; &envptr10271[1]
  %xPk$_37foldl = load i64, i64* %envptr10272, align 8                               ; load; *envptr10272
  %a6990 = call i64 @prim_cons(i64 %WQl$acc_43, i64 %KiH$lsts_43)                    ; call prim_cons
  %a6991 = call i64 @prim_cons(i64 %ME8$f, i64 %a6990)                               ; call prim_cons
  %cps_45lst7191 = call i64 @prim_cons(i64 %cont7183, i64 %a6991)                    ; call prim_cons
  %cloptr10273 = inttoptr i64 %xPk$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10273)                                        ; assert function application
  %i0ptr10274 = getelementptr inbounds i64, i64* %cloptr10273, i64 0                 ; &cloptr10273[0]
  %f10276 = load i64, i64* %i0ptr10274, align 8                                      ; load; *i0ptr10274
  %fptr10275 = inttoptr i64 %f10276 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10275(i64 %xPk$_37foldl, i64 %cps_45lst7191)        ; tail call
  ret void
}


define void @lam8220(i64 %env8221, i64 %cont7194, i64 %zh5$a, i64 %U8i$b) {
  %retprim7195 = call i64 @prim_cons(i64 %zh5$a, i64 %U8i$b)                         ; call prim_cons
  %arg7902 = add i64 0, 0                                                            ; quoted ()
  %cloptr10277 = inttoptr i64 %cont7194 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10277)                                        ; assert function application
  %i0ptr10278 = getelementptr inbounds i64, i64* %cloptr10277, i64 0                 ; &cloptr10277[0]
  %f10280 = load i64, i64* %i0ptr10278, align 8                                      ; load; *i0ptr10278
  %fptr10279 = inttoptr i64 %f10280 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10279(i64 %cont7194, i64 %arg7902, i64 %retprim7195); tail call
  ret void
}


define void @lam8217(i64 %env8218, i64 %cont7196, i64 %ilB$x) {
  %retprim7197 = call i64 @prim_car(i64 %ilB$x)                                      ; call prim_car
  %arg7906 = add i64 0, 0                                                            ; quoted ()
  %cloptr10281 = inttoptr i64 %cont7196 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10281)                                        ; assert function application
  %i0ptr10282 = getelementptr inbounds i64, i64* %cloptr10281, i64 0                 ; &cloptr10281[0]
  %f10284 = load i64, i64* %i0ptr10282, align 8                                      ; load; *i0ptr10282
  %fptr10283 = inttoptr i64 %f10284 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10283(i64 %cont7196, i64 %arg7906, i64 %retprim7197); tail call
  ret void
}


define void @lam8214(i64 %env8215, i64 %cont7198, i64 %kaJ$x) {
  %retprim7199 = call i64 @prim_cdr(i64 %kaJ$x)                                      ; call prim_cdr
  %arg7910 = add i64 0, 0                                                            ; quoted ()
  %cloptr10285 = inttoptr i64 %cont7198 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10285)                                        ; assert function application
  %i0ptr10286 = getelementptr inbounds i64, i64* %cloptr10285, i64 0                 ; &cloptr10285[0]
  %f10288 = load i64, i64* %i0ptr10286, align 8                                      ; load; *i0ptr10286
  %fptr10287 = inttoptr i64 %f10288 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10287(i64 %cont7198, i64 %arg7910, i64 %retprim7199); tail call
  ret void
}


define void @lam8210(i64 %env8211, i64 %cont7200, i64 %SCG$lst, i64 %YXb$b) {
  %cmp10289 = icmp eq i64 %YXb$b, 15                                                 ; false?
  br i1 %cmp10289, label %else10291, label %then10290                                ; if

then10290:
  %arg7913 = add i64 0, 0                                                            ; quoted ()
  %cloptr10292 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10292)                                        ; assert function application
  %i0ptr10293 = getelementptr inbounds i64, i64* %cloptr10292, i64 0                 ; &cloptr10292[0]
  %f10295 = load i64, i64* %i0ptr10293, align 8                                      ; load; *i0ptr10293
  %fptr10294 = inttoptr i64 %f10295 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10294(i64 %cont7200, i64 %arg7913, i64 %YXb$b)      ; tail call
  ret void

else10291:
  %retprim7201 = call i64 @prim_null_63(i64 %SCG$lst)                                ; call prim_null_63
  %arg7917 = add i64 0, 0                                                            ; quoted ()
  %cloptr10296 = inttoptr i64 %cont7200 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10296)                                        ; assert function application
  %i0ptr10297 = getelementptr inbounds i64, i64* %cloptr10296, i64 0                 ; &cloptr10296[0]
  %f10299 = load i64, i64* %i0ptr10297, align 8                                      ; load; *i0ptr10297
  %fptr10298 = inttoptr i64 %f10299 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10298(i64 %cont7200, i64 %arg7917, i64 %retprim7201); tail call
  ret void
}


define void @lam8203(i64 %env8204, i64 %cont7204, i64 %JzO$_37foldr) {
  %envptr10300 = inttoptr i64 %env8204 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10301 = getelementptr inbounds i64, i64* %envptr10300, i64 2                ; &envptr10300[2]
  %YVW$_37map1 = load i64, i64* %envptr10301, align 8                                ; load; *envptr10301
  %envptr10302 = inttoptr i64 %env8204 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10303 = getelementptr inbounds i64, i64* %envptr10302, i64 1                ; &envptr10302[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10303, align 8                              ; load; *envptr10303
  %arg7920 = add i64 0, 0                                                            ; quoted ()
  %cloptr10304 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10306 = getelementptr inbounds i64, i64* %cloptr10304, i64 1                  ; &eptr10306[1]
  %eptr10307 = getelementptr inbounds i64, i64* %cloptr10304, i64 2                  ; &eptr10307[2]
  %eptr10308 = getelementptr inbounds i64, i64* %cloptr10304, i64 3                  ; &eptr10308[3]
  store i64 %Yrh$_37foldr1, i64* %eptr10306                                          ; *eptr10306 = %Yrh$_37foldr1
  store i64 %JzO$_37foldr, i64* %eptr10307                                           ; *eptr10307 = %JzO$_37foldr
  store i64 %YVW$_37map1, i64* %eptr10308                                            ; *eptr10308 = %YVW$_37map1
  %eptr10305 = getelementptr inbounds i64, i64* %cloptr10304, i64 0                  ; &cloptr10304[0]
  %f10309 = ptrtoint void(i64,i64)* @lam8200 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10309, i64* %eptr10305                                                 ; store fptr
  %arg7919 = ptrtoint i64* %cloptr10304 to i64                                       ; closure cast; i64* -> i64
  %cloptr10310 = inttoptr i64 %cont7204 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10310)                                        ; assert function application
  %i0ptr10311 = getelementptr inbounds i64, i64* %cloptr10310, i64 0                 ; &cloptr10310[0]
  %f10313 = load i64, i64* %i0ptr10311, align 8                                      ; load; *i0ptr10311
  %fptr10312 = inttoptr i64 %f10313 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10312(i64 %cont7204, i64 %arg7920, i64 %arg7919)    ; tail call
  ret void
}


define void @lam8200(i64 %env8201, i64 %V5u$args7206) {
  %envptr10314 = inttoptr i64 %env8201 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10315 = getelementptr inbounds i64, i64* %envptr10314, i64 3                ; &envptr10314[3]
  %YVW$_37map1 = load i64, i64* %envptr10315, align 8                                ; load; *envptr10315
  %envptr10316 = inttoptr i64 %env8201 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10317 = getelementptr inbounds i64, i64* %envptr10316, i64 2                ; &envptr10316[2]
  %JzO$_37foldr = load i64, i64* %envptr10317, align 8                               ; load; *envptr10317
  %envptr10318 = inttoptr i64 %env8201 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10319 = getelementptr inbounds i64, i64* %envptr10318, i64 1                ; &envptr10318[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10319, align 8                              ; load; *envptr10319
  %cont7205 = call i64 @prim_car(i64 %V5u$args7206)                                  ; call prim_car
  %V5u$args = call i64 @prim_cdr(i64 %V5u$args7206)                                  ; call prim_cdr
  %iVc$f = call i64 @prim_car(i64 %V5u$args)                                         ; call prim_car
  %a6971 = call i64 @prim_cdr(i64 %V5u$args)                                         ; call prim_cdr
  %retprim7225 = call i64 @prim_car(i64 %a6971)                                      ; call prim_car
  %cloptr10320 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10322 = getelementptr inbounds i64, i64* %cloptr10320, i64 1                  ; &eptr10322[1]
  %eptr10323 = getelementptr inbounds i64, i64* %cloptr10320, i64 2                  ; &eptr10323[2]
  %eptr10324 = getelementptr inbounds i64, i64* %cloptr10320, i64 3                  ; &eptr10324[3]
  %eptr10325 = getelementptr inbounds i64, i64* %cloptr10320, i64 4                  ; &eptr10325[4]
  %eptr10326 = getelementptr inbounds i64, i64* %cloptr10320, i64 5                  ; &eptr10326[5]
  %eptr10327 = getelementptr inbounds i64, i64* %cloptr10320, i64 6                  ; &eptr10327[6]
  store i64 %Yrh$_37foldr1, i64* %eptr10322                                          ; *eptr10322 = %Yrh$_37foldr1
  store i64 %JzO$_37foldr, i64* %eptr10323                                           ; *eptr10323 = %JzO$_37foldr
  store i64 %iVc$f, i64* %eptr10324                                                  ; *eptr10324 = %iVc$f
  store i64 %cont7205, i64* %eptr10325                                               ; *eptr10325 = %cont7205
  store i64 %YVW$_37map1, i64* %eptr10326                                            ; *eptr10326 = %YVW$_37map1
  store i64 %V5u$args, i64* %eptr10327                                               ; *eptr10327 = %V5u$args
  %eptr10321 = getelementptr inbounds i64, i64* %cloptr10320, i64 0                  ; &cloptr10320[0]
  %f10328 = ptrtoint void(i64,i64,i64)* @lam8198 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10328, i64* %eptr10321                                                 ; store fptr
  %arg7929 = ptrtoint i64* %cloptr10320 to i64                                       ; closure cast; i64* -> i64
  %arg7928 = add i64 0, 0                                                            ; quoted ()
  %cloptr10329 = inttoptr i64 %arg7929 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10329)                                        ; assert function application
  %i0ptr10330 = getelementptr inbounds i64, i64* %cloptr10329, i64 0                 ; &cloptr10329[0]
  %f10332 = load i64, i64* %i0ptr10330, align 8                                      ; load; *i0ptr10330
  %fptr10331 = inttoptr i64 %f10332 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10331(i64 %arg7929, i64 %arg7928, i64 %retprim7225) ; tail call
  ret void
}


define void @lam8198(i64 %env8199, i64 %_957207, i64 %bZ7$acc) {
  %envptr10333 = inttoptr i64 %env8199 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10334 = getelementptr inbounds i64, i64* %envptr10333, i64 6                ; &envptr10333[6]
  %V5u$args = load i64, i64* %envptr10334, align 8                                   ; load; *envptr10334
  %envptr10335 = inttoptr i64 %env8199 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10336 = getelementptr inbounds i64, i64* %envptr10335, i64 5                ; &envptr10335[5]
  %YVW$_37map1 = load i64, i64* %envptr10336, align 8                                ; load; *envptr10336
  %envptr10337 = inttoptr i64 %env8199 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10338 = getelementptr inbounds i64, i64* %envptr10337, i64 4                ; &envptr10337[4]
  %cont7205 = load i64, i64* %envptr10338, align 8                                   ; load; *envptr10338
  %envptr10339 = inttoptr i64 %env8199 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10340 = getelementptr inbounds i64, i64* %envptr10339, i64 3                ; &envptr10339[3]
  %iVc$f = load i64, i64* %envptr10340, align 8                                      ; load; *envptr10340
  %envptr10341 = inttoptr i64 %env8199 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10342 = getelementptr inbounds i64, i64* %envptr10341, i64 2                ; &envptr10341[2]
  %JzO$_37foldr = load i64, i64* %envptr10342, align 8                               ; load; *envptr10342
  %envptr10343 = inttoptr i64 %env8199 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10344 = getelementptr inbounds i64, i64* %envptr10343, i64 1                ; &envptr10343[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10344, align 8                              ; load; *envptr10344
  %a6972 = call i64 @prim_cdr(i64 %V5u$args)                                         ; call prim_cdr
  %retprim7224 = call i64 @prim_cdr(i64 %a6972)                                      ; call prim_cdr
  %cloptr10345 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10347 = getelementptr inbounds i64, i64* %cloptr10345, i64 1                  ; &eptr10347[1]
  %eptr10348 = getelementptr inbounds i64, i64* %cloptr10345, i64 2                  ; &eptr10348[2]
  %eptr10349 = getelementptr inbounds i64, i64* %cloptr10345, i64 3                  ; &eptr10349[3]
  %eptr10350 = getelementptr inbounds i64, i64* %cloptr10345, i64 4                  ; &eptr10350[4]
  %eptr10351 = getelementptr inbounds i64, i64* %cloptr10345, i64 5                  ; &eptr10351[5]
  %eptr10352 = getelementptr inbounds i64, i64* %cloptr10345, i64 6                  ; &eptr10352[6]
  store i64 %Yrh$_37foldr1, i64* %eptr10347                                          ; *eptr10347 = %Yrh$_37foldr1
  store i64 %JzO$_37foldr, i64* %eptr10348                                           ; *eptr10348 = %JzO$_37foldr
  store i64 %iVc$f, i64* %eptr10349                                                  ; *eptr10349 = %iVc$f
  store i64 %cont7205, i64* %eptr10350                                               ; *eptr10350 = %cont7205
  store i64 %YVW$_37map1, i64* %eptr10351                                            ; *eptr10351 = %YVW$_37map1
  store i64 %bZ7$acc, i64* %eptr10352                                                ; *eptr10352 = %bZ7$acc
  %eptr10346 = getelementptr inbounds i64, i64* %cloptr10345, i64 0                  ; &cloptr10345[0]
  %f10353 = ptrtoint void(i64,i64,i64)* @lam8196 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10353, i64* %eptr10346                                                 ; store fptr
  %arg7934 = ptrtoint i64* %cloptr10345 to i64                                       ; closure cast; i64* -> i64
  %arg7933 = add i64 0, 0                                                            ; quoted ()
  %cloptr10354 = inttoptr i64 %arg7934 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10354)                                        ; assert function application
  %i0ptr10355 = getelementptr inbounds i64, i64* %cloptr10354, i64 0                 ; &cloptr10354[0]
  %f10357 = load i64, i64* %i0ptr10355, align 8                                      ; load; *i0ptr10355
  %fptr10356 = inttoptr i64 %f10357 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10356(i64 %arg7934, i64 %arg7933, i64 %retprim7224) ; tail call
  ret void
}


define void @lam8196(i64 %env8197, i64 %_957208, i64 %nZv$lsts) {
  %envptr10358 = inttoptr i64 %env8197 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10359 = getelementptr inbounds i64, i64* %envptr10358, i64 6                ; &envptr10358[6]
  %bZ7$acc = load i64, i64* %envptr10359, align 8                                    ; load; *envptr10359
  %envptr10360 = inttoptr i64 %env8197 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10361 = getelementptr inbounds i64, i64* %envptr10360, i64 5                ; &envptr10360[5]
  %YVW$_37map1 = load i64, i64* %envptr10361, align 8                                ; load; *envptr10361
  %envptr10362 = inttoptr i64 %env8197 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10363 = getelementptr inbounds i64, i64* %envptr10362, i64 4                ; &envptr10362[4]
  %cont7205 = load i64, i64* %envptr10363, align 8                                   ; load; *envptr10363
  %envptr10364 = inttoptr i64 %env8197 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10365 = getelementptr inbounds i64, i64* %envptr10364, i64 3                ; &envptr10364[3]
  %iVc$f = load i64, i64* %envptr10365, align 8                                      ; load; *envptr10365
  %envptr10366 = inttoptr i64 %env8197 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10367 = getelementptr inbounds i64, i64* %envptr10366, i64 2                ; &envptr10366[2]
  %JzO$_37foldr = load i64, i64* %envptr10367, align 8                               ; load; *envptr10367
  %envptr10368 = inttoptr i64 %env8197 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10369 = getelementptr inbounds i64, i64* %envptr10368, i64 1                ; &envptr10368[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10369, align 8                              ; load; *envptr10369
  %cloptr10370 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10372 = getelementptr inbounds i64, i64* %cloptr10370, i64 1                  ; &eptr10372[1]
  %eptr10373 = getelementptr inbounds i64, i64* %cloptr10370, i64 2                  ; &eptr10373[2]
  %eptr10374 = getelementptr inbounds i64, i64* %cloptr10370, i64 3                  ; &eptr10374[3]
  %eptr10375 = getelementptr inbounds i64, i64* %cloptr10370, i64 4                  ; &eptr10375[4]
  %eptr10376 = getelementptr inbounds i64, i64* %cloptr10370, i64 5                  ; &eptr10376[5]
  %eptr10377 = getelementptr inbounds i64, i64* %cloptr10370, i64 6                  ; &eptr10377[6]
  %eptr10378 = getelementptr inbounds i64, i64* %cloptr10370, i64 7                  ; &eptr10378[7]
  store i64 %Yrh$_37foldr1, i64* %eptr10372                                          ; *eptr10372 = %Yrh$_37foldr1
  store i64 %JzO$_37foldr, i64* %eptr10373                                           ; *eptr10373 = %JzO$_37foldr
  store i64 %iVc$f, i64* %eptr10374                                                  ; *eptr10374 = %iVc$f
  store i64 %cont7205, i64* %eptr10375                                               ; *eptr10375 = %cont7205
  store i64 %nZv$lsts, i64* %eptr10376                                               ; *eptr10376 = %nZv$lsts
  store i64 %YVW$_37map1, i64* %eptr10377                                            ; *eptr10377 = %YVW$_37map1
  store i64 %bZ7$acc, i64* %eptr10378                                                ; *eptr10378 = %bZ7$acc
  %eptr10371 = getelementptr inbounds i64, i64* %cloptr10370, i64 0                  ; &cloptr10370[0]
  %f10379 = ptrtoint void(i64,i64,i64)* @lam8194 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10379, i64* %eptr10371                                                 ; store fptr
  %arg7938 = ptrtoint i64* %cloptr10370 to i64                                       ; closure cast; i64* -> i64
  %cloptr10380 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10381 = getelementptr inbounds i64, i64* %cloptr10380, i64 0                  ; &cloptr10380[0]
  %f10382 = ptrtoint void(i64,i64,i64,i64)* @lam8173 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10382, i64* %eptr10381                                                 ; store fptr
  %arg7937 = ptrtoint i64* %cloptr10380 to i64                                       ; closure cast; i64* -> i64
  %arg7936 = call i64 @const_init_false()                                            ; quoted #f
  %cloptr10383 = inttoptr i64 %Yrh$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10383)                                        ; assert function application
  %i0ptr10384 = getelementptr inbounds i64, i64* %cloptr10383, i64 0                 ; &cloptr10383[0]
  %f10386 = load i64, i64* %i0ptr10384, align 8                                      ; load; *i0ptr10384
  %fptr10385 = inttoptr i64 %f10386 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10385(i64 %Yrh$_37foldr1, i64 %arg7938, i64 %arg7937, i64 %arg7936, i64 %nZv$lsts); tail call
  ret void
}


define void @lam8194(i64 %env8195, i64 %_957209, i64 %a6973) {
  %envptr10387 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10388 = getelementptr inbounds i64, i64* %envptr10387, i64 7                ; &envptr10387[7]
  %bZ7$acc = load i64, i64* %envptr10388, align 8                                    ; load; *envptr10388
  %envptr10389 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10390 = getelementptr inbounds i64, i64* %envptr10389, i64 6                ; &envptr10389[6]
  %YVW$_37map1 = load i64, i64* %envptr10390, align 8                                ; load; *envptr10390
  %envptr10391 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10392 = getelementptr inbounds i64, i64* %envptr10391, i64 5                ; &envptr10391[5]
  %nZv$lsts = load i64, i64* %envptr10392, align 8                                   ; load; *envptr10392
  %envptr10393 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10394 = getelementptr inbounds i64, i64* %envptr10393, i64 4                ; &envptr10393[4]
  %cont7205 = load i64, i64* %envptr10394, align 8                                   ; load; *envptr10394
  %envptr10395 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10396 = getelementptr inbounds i64, i64* %envptr10395, i64 3                ; &envptr10395[3]
  %iVc$f = load i64, i64* %envptr10396, align 8                                      ; load; *envptr10396
  %envptr10397 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10398 = getelementptr inbounds i64, i64* %envptr10397, i64 2                ; &envptr10397[2]
  %JzO$_37foldr = load i64, i64* %envptr10398, align 8                               ; load; *envptr10398
  %envptr10399 = inttoptr i64 %env8195 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10400 = getelementptr inbounds i64, i64* %envptr10399, i64 1                ; &envptr10399[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10400, align 8                              ; load; *envptr10400
  %cmp10401 = icmp eq i64 %a6973, 15                                                 ; false?
  br i1 %cmp10401, label %else10403, label %then10402                                ; if

then10402:
  %arg7941 = add i64 0, 0                                                            ; quoted ()
  %cloptr10404 = inttoptr i64 %cont7205 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10404)                                        ; assert function application
  %i0ptr10405 = getelementptr inbounds i64, i64* %cloptr10404, i64 0                 ; &cloptr10404[0]
  %f10407 = load i64, i64* %i0ptr10405, align 8                                      ; load; *i0ptr10405
  %fptr10406 = inttoptr i64 %f10407 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10406(i64 %cont7205, i64 %arg7941, i64 %bZ7$acc)    ; tail call
  ret void

else10403:
  %cloptr10408 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr10410 = getelementptr inbounds i64, i64* %cloptr10408, i64 1                  ; &eptr10410[1]
  %eptr10411 = getelementptr inbounds i64, i64* %cloptr10408, i64 2                  ; &eptr10411[2]
  %eptr10412 = getelementptr inbounds i64, i64* %cloptr10408, i64 3                  ; &eptr10412[3]
  %eptr10413 = getelementptr inbounds i64, i64* %cloptr10408, i64 4                  ; &eptr10413[4]
  %eptr10414 = getelementptr inbounds i64, i64* %cloptr10408, i64 5                  ; &eptr10414[5]
  %eptr10415 = getelementptr inbounds i64, i64* %cloptr10408, i64 6                  ; &eptr10415[6]
  %eptr10416 = getelementptr inbounds i64, i64* %cloptr10408, i64 7                  ; &eptr10416[7]
  store i64 %Yrh$_37foldr1, i64* %eptr10410                                          ; *eptr10410 = %Yrh$_37foldr1
  store i64 %JzO$_37foldr, i64* %eptr10411                                           ; *eptr10411 = %JzO$_37foldr
  store i64 %iVc$f, i64* %eptr10412                                                  ; *eptr10412 = %iVc$f
  store i64 %cont7205, i64* %eptr10413                                               ; *eptr10413 = %cont7205
  store i64 %nZv$lsts, i64* %eptr10414                                               ; *eptr10414 = %nZv$lsts
  store i64 %YVW$_37map1, i64* %eptr10415                                            ; *eptr10415 = %YVW$_37map1
  store i64 %bZ7$acc, i64* %eptr10416                                                ; *eptr10416 = %bZ7$acc
  %eptr10409 = getelementptr inbounds i64, i64* %cloptr10408, i64 0                  ; &cloptr10408[0]
  %f10417 = ptrtoint void(i64,i64,i64)* @lam8192 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10417, i64* %eptr10409                                                 ; store fptr
  %arg7945 = ptrtoint i64* %cloptr10408 to i64                                       ; closure cast; i64* -> i64
  %cloptr10418 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10419 = getelementptr inbounds i64, i64* %cloptr10418, i64 0                  ; &cloptr10418[0]
  %f10420 = ptrtoint void(i64,i64,i64)* @lam8177 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10420, i64* %eptr10419                                                 ; store fptr
  %arg7944 = ptrtoint i64* %cloptr10418 to i64                                       ; closure cast; i64* -> i64
  %cloptr10421 = inttoptr i64 %YVW$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10421)                                        ; assert function application
  %i0ptr10422 = getelementptr inbounds i64, i64* %cloptr10421, i64 0                 ; &cloptr10421[0]
  %f10424 = load i64, i64* %i0ptr10422, align 8                                      ; load; *i0ptr10422
  %fptr10423 = inttoptr i64 %f10424 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10423(i64 %YVW$_37map1, i64 %arg7945, i64 %arg7944, i64 %nZv$lsts); tail call
  ret void
}


define void @lam8192(i64 %env8193, i64 %_957210, i64 %tAm$lsts_43) {
  %envptr10425 = inttoptr i64 %env8193 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10426 = getelementptr inbounds i64, i64* %envptr10425, i64 7                ; &envptr10425[7]
  %bZ7$acc = load i64, i64* %envptr10426, align 8                                    ; load; *envptr10426
  %envptr10427 = inttoptr i64 %env8193 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10428 = getelementptr inbounds i64, i64* %envptr10427, i64 6                ; &envptr10427[6]
  %YVW$_37map1 = load i64, i64* %envptr10428, align 8                                ; load; *envptr10428
  %envptr10429 = inttoptr i64 %env8193 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10430 = getelementptr inbounds i64, i64* %envptr10429, i64 5                ; &envptr10429[5]
  %nZv$lsts = load i64, i64* %envptr10430, align 8                                   ; load; *envptr10430
  %envptr10431 = inttoptr i64 %env8193 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10432 = getelementptr inbounds i64, i64* %envptr10431, i64 4                ; &envptr10431[4]
  %cont7205 = load i64, i64* %envptr10432, align 8                                   ; load; *envptr10432
  %envptr10433 = inttoptr i64 %env8193 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10434 = getelementptr inbounds i64, i64* %envptr10433, i64 3                ; &envptr10433[3]
  %iVc$f = load i64, i64* %envptr10434, align 8                                      ; load; *envptr10434
  %envptr10435 = inttoptr i64 %env8193 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10436 = getelementptr inbounds i64, i64* %envptr10435, i64 2                ; &envptr10435[2]
  %JzO$_37foldr = load i64, i64* %envptr10436, align 8                               ; load; *envptr10436
  %envptr10437 = inttoptr i64 %env8193 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10438 = getelementptr inbounds i64, i64* %envptr10437, i64 1                ; &envptr10437[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10438, align 8                              ; load; *envptr10438
  %cloptr10439 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr10441 = getelementptr inbounds i64, i64* %cloptr10439, i64 1                  ; &eptr10441[1]
  %eptr10442 = getelementptr inbounds i64, i64* %cloptr10439, i64 2                  ; &eptr10442[2]
  %eptr10443 = getelementptr inbounds i64, i64* %cloptr10439, i64 3                  ; &eptr10443[3]
  %eptr10444 = getelementptr inbounds i64, i64* %cloptr10439, i64 4                  ; &eptr10444[4]
  %eptr10445 = getelementptr inbounds i64, i64* %cloptr10439, i64 5                  ; &eptr10445[5]
  %eptr10446 = getelementptr inbounds i64, i64* %cloptr10439, i64 6                  ; &eptr10446[6]
  store i64 %Yrh$_37foldr1, i64* %eptr10441                                          ; *eptr10441 = %Yrh$_37foldr1
  store i64 %JzO$_37foldr, i64* %eptr10442                                           ; *eptr10442 = %JzO$_37foldr
  store i64 %iVc$f, i64* %eptr10443                                                  ; *eptr10443 = %iVc$f
  store i64 %tAm$lsts_43, i64* %eptr10444                                            ; *eptr10444 = %tAm$lsts_43
  store i64 %cont7205, i64* %eptr10445                                               ; *eptr10445 = %cont7205
  store i64 %bZ7$acc, i64* %eptr10446                                                ; *eptr10446 = %bZ7$acc
  %eptr10440 = getelementptr inbounds i64, i64* %cloptr10439, i64 0                  ; &cloptr10439[0]
  %f10447 = ptrtoint void(i64,i64,i64)* @lam8190 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10447, i64* %eptr10440                                                 ; store fptr
  %arg7949 = ptrtoint i64* %cloptr10439 to i64                                       ; closure cast; i64* -> i64
  %cloptr10448 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10449 = getelementptr inbounds i64, i64* %cloptr10448, i64 0                  ; &cloptr10448[0]
  %f10450 = ptrtoint void(i64,i64,i64)* @lam8180 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10450, i64* %eptr10449                                                 ; store fptr
  %arg7948 = ptrtoint i64* %cloptr10448 to i64                                       ; closure cast; i64* -> i64
  %cloptr10451 = inttoptr i64 %YVW$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10451)                                        ; assert function application
  %i0ptr10452 = getelementptr inbounds i64, i64* %cloptr10451, i64 0                 ; &cloptr10451[0]
  %f10454 = load i64, i64* %i0ptr10452, align 8                                      ; load; *i0ptr10452
  %fptr10453 = inttoptr i64 %f10454 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10453(i64 %YVW$_37map1, i64 %arg7949, i64 %arg7948, i64 %nZv$lsts); tail call
  ret void
}


define void @lam8190(i64 %env8191, i64 %_957211, i64 %OEl$vs) {
  %envptr10455 = inttoptr i64 %env8191 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10456 = getelementptr inbounds i64, i64* %envptr10455, i64 6                ; &envptr10455[6]
  %bZ7$acc = load i64, i64* %envptr10456, align 8                                    ; load; *envptr10456
  %envptr10457 = inttoptr i64 %env8191 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10458 = getelementptr inbounds i64, i64* %envptr10457, i64 5                ; &envptr10457[5]
  %cont7205 = load i64, i64* %envptr10458, align 8                                   ; load; *envptr10458
  %envptr10459 = inttoptr i64 %env8191 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10460 = getelementptr inbounds i64, i64* %envptr10459, i64 4                ; &envptr10459[4]
  %tAm$lsts_43 = load i64, i64* %envptr10460, align 8                                ; load; *envptr10460
  %envptr10461 = inttoptr i64 %env8191 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10462 = getelementptr inbounds i64, i64* %envptr10461, i64 3                ; &envptr10461[3]
  %iVc$f = load i64, i64* %envptr10462, align 8                                      ; load; *envptr10462
  %envptr10463 = inttoptr i64 %env8191 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10464 = getelementptr inbounds i64, i64* %envptr10463, i64 2                ; &envptr10463[2]
  %JzO$_37foldr = load i64, i64* %envptr10464, align 8                               ; load; *envptr10464
  %envptr10465 = inttoptr i64 %env8191 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10466 = getelementptr inbounds i64, i64* %envptr10465, i64 1                ; &envptr10465[1]
  %Yrh$_37foldr1 = load i64, i64* %envptr10466, align 8                              ; load; *envptr10466
  %a6974 = call i64 @prim_cons(i64 %bZ7$acc, i64 %tAm$lsts_43)                       ; call prim_cons
  %a6975 = call i64 @prim_cons(i64 %iVc$f, i64 %a6974)                               ; call prim_cons
  %cloptr10467 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10469 = getelementptr inbounds i64, i64* %cloptr10467, i64 1                  ; &eptr10469[1]
  %eptr10470 = getelementptr inbounds i64, i64* %cloptr10467, i64 2                  ; &eptr10470[2]
  %eptr10471 = getelementptr inbounds i64, i64* %cloptr10467, i64 3                  ; &eptr10471[3]
  %eptr10472 = getelementptr inbounds i64, i64* %cloptr10467, i64 4                  ; &eptr10472[4]
  store i64 %OEl$vs, i64* %eptr10469                                                 ; *eptr10469 = %OEl$vs
  store i64 %Yrh$_37foldr1, i64* %eptr10470                                          ; *eptr10470 = %Yrh$_37foldr1
  store i64 %iVc$f, i64* %eptr10471                                                  ; *eptr10471 = %iVc$f
  store i64 %cont7205, i64* %eptr10472                                               ; *eptr10472 = %cont7205
  %eptr10468 = getelementptr inbounds i64, i64* %cloptr10467, i64 0                  ; &cloptr10467[0]
  %f10473 = ptrtoint void(i64,i64,i64)* @lam8188 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10473, i64* %eptr10468                                                 ; store fptr
  %arg7956 = ptrtoint i64* %cloptr10467 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7217 = call i64 @prim_cons(i64 %arg7956, i64 %a6975)                     ; call prim_cons
  %cloptr10474 = inttoptr i64 %JzO$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10474)                                        ; assert function application
  %i0ptr10475 = getelementptr inbounds i64, i64* %cloptr10474, i64 0                 ; &cloptr10474[0]
  %f10477 = load i64, i64* %i0ptr10475, align 8                                      ; load; *i0ptr10475
  %fptr10476 = inttoptr i64 %f10477 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10476(i64 %JzO$_37foldr, i64 %cps_45lst7217)        ; tail call
  ret void
}


define void @lam8188(i64 %env8189, i64 %_957212, i64 %a6976) {
  %envptr10478 = inttoptr i64 %env8189 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10479 = getelementptr inbounds i64, i64* %envptr10478, i64 4                ; &envptr10478[4]
  %cont7205 = load i64, i64* %envptr10479, align 8                                   ; load; *envptr10479
  %envptr10480 = inttoptr i64 %env8189 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10481 = getelementptr inbounds i64, i64* %envptr10480, i64 3                ; &envptr10480[3]
  %iVc$f = load i64, i64* %envptr10481, align 8                                      ; load; *envptr10481
  %envptr10482 = inttoptr i64 %env8189 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10483 = getelementptr inbounds i64, i64* %envptr10482, i64 2                ; &envptr10482[2]
  %Yrh$_37foldr1 = load i64, i64* %envptr10483, align 8                              ; load; *envptr10483
  %envptr10484 = inttoptr i64 %env8189 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10485 = getelementptr inbounds i64, i64* %envptr10484, i64 1                ; &envptr10484[1]
  %OEl$vs = load i64, i64* %envptr10485, align 8                                     ; load; *envptr10485
  %arg7957 = add i64 0, 0                                                            ; quoted ()
  %a6977 = call i64 @prim_cons(i64 %a6976, i64 %arg7957)                             ; call prim_cons
  %cloptr10486 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10488 = getelementptr inbounds i64, i64* %cloptr10486, i64 1                  ; &eptr10488[1]
  %eptr10489 = getelementptr inbounds i64, i64* %cloptr10486, i64 2                  ; &eptr10489[2]
  store i64 %iVc$f, i64* %eptr10488                                                  ; *eptr10488 = %iVc$f
  store i64 %cont7205, i64* %eptr10489                                               ; *eptr10489 = %cont7205
  %eptr10487 = getelementptr inbounds i64, i64* %cloptr10486, i64 0                  ; &cloptr10486[0]
  %f10490 = ptrtoint void(i64,i64,i64)* @lam8185 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10490, i64* %eptr10487                                                 ; store fptr
  %arg7962 = ptrtoint i64* %cloptr10486 to i64                                       ; closure cast; i64* -> i64
  %cloptr10491 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr10492 = getelementptr inbounds i64, i64* %cloptr10491, i64 0                  ; &cloptr10491[0]
  %f10493 = ptrtoint void(i64,i64,i64,i64)* @lam8183 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10493, i64* %eptr10492                                                 ; store fptr
  %arg7961 = ptrtoint i64* %cloptr10491 to i64                                       ; closure cast; i64* -> i64
  %cloptr10494 = inttoptr i64 %Yrh$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10494)                                        ; assert function application
  %i0ptr10495 = getelementptr inbounds i64, i64* %cloptr10494, i64 0                 ; &cloptr10494[0]
  %f10497 = load i64, i64* %i0ptr10495, align 8                                      ; load; *i0ptr10495
  %fptr10496 = inttoptr i64 %f10497 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10496(i64 %Yrh$_37foldr1, i64 %arg7962, i64 %arg7961, i64 %a6977, i64 %OEl$vs); tail call
  ret void
}


define void @lam8185(i64 %env8186, i64 %_957213, i64 %a6978) {
  %envptr10498 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10499 = getelementptr inbounds i64, i64* %envptr10498, i64 2                ; &envptr10498[2]
  %cont7205 = load i64, i64* %envptr10499, align 8                                   ; load; *envptr10499
  %envptr10500 = inttoptr i64 %env8186 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10501 = getelementptr inbounds i64, i64* %envptr10500, i64 1                ; &envptr10500[1]
  %iVc$f = load i64, i64* %envptr10501, align 8                                      ; load; *envptr10501
  %cps_45lst7214 = call i64 @prim_cons(i64 %cont7205, i64 %a6978)                    ; call prim_cons
  %cloptr10502 = inttoptr i64 %iVc$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10502)                                        ; assert function application
  %i0ptr10503 = getelementptr inbounds i64, i64* %cloptr10502, i64 0                 ; &cloptr10502[0]
  %f10505 = load i64, i64* %i0ptr10503, align 8                                      ; load; *i0ptr10503
  %fptr10504 = inttoptr i64 %f10505 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10504(i64 %iVc$f, i64 %cps_45lst7214)               ; tail call
  ret void
}


define void @lam8183(i64 %env8184, i64 %cont7215, i64 %GlH$a, i64 %CQv$b) {
  %retprim7216 = call i64 @prim_cons(i64 %GlH$a, i64 %CQv$b)                         ; call prim_cons
  %arg7969 = add i64 0, 0                                                            ; quoted ()
  %cloptr10506 = inttoptr i64 %cont7215 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10506)                                        ; assert function application
  %i0ptr10507 = getelementptr inbounds i64, i64* %cloptr10506, i64 0                 ; &cloptr10506[0]
  %f10509 = load i64, i64* %i0ptr10507, align 8                                      ; load; *i0ptr10507
  %fptr10508 = inttoptr i64 %f10509 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10508(i64 %cont7215, i64 %arg7969, i64 %retprim7216); tail call
  ret void
}


define void @lam8180(i64 %env8181, i64 %cont7218, i64 %hRC$x) {
  %retprim7219 = call i64 @prim_car(i64 %hRC$x)                                      ; call prim_car
  %arg7973 = add i64 0, 0                                                            ; quoted ()
  %cloptr10510 = inttoptr i64 %cont7218 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10510)                                        ; assert function application
  %i0ptr10511 = getelementptr inbounds i64, i64* %cloptr10510, i64 0                 ; &cloptr10510[0]
  %f10513 = load i64, i64* %i0ptr10511, align 8                                      ; load; *i0ptr10511
  %fptr10512 = inttoptr i64 %f10513 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10512(i64 %cont7218, i64 %arg7973, i64 %retprim7219); tail call
  ret void
}


define void @lam8177(i64 %env8178, i64 %cont7220, i64 %WUI$x) {
  %retprim7221 = call i64 @prim_cdr(i64 %WUI$x)                                      ; call prim_cdr
  %arg7977 = add i64 0, 0                                                            ; quoted ()
  %cloptr10514 = inttoptr i64 %cont7220 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10514)                                        ; assert function application
  %i0ptr10515 = getelementptr inbounds i64, i64* %cloptr10514, i64 0                 ; &cloptr10514[0]
  %f10517 = load i64, i64* %i0ptr10515, align 8                                      ; load; *i0ptr10515
  %fptr10516 = inttoptr i64 %f10517 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10516(i64 %cont7220, i64 %arg7977, i64 %retprim7221); tail call
  ret void
}


define void @lam8173(i64 %env8174, i64 %cont7222, i64 %zGc$lst, i64 %WcX$b) {
  %cmp10518 = icmp eq i64 %WcX$b, 15                                                 ; false?
  br i1 %cmp10518, label %else10520, label %then10519                                ; if

then10519:
  %arg7980 = add i64 0, 0                                                            ; quoted ()
  %cloptr10521 = inttoptr i64 %cont7222 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10521)                                        ; assert function application
  %i0ptr10522 = getelementptr inbounds i64, i64* %cloptr10521, i64 0                 ; &cloptr10521[0]
  %f10524 = load i64, i64* %i0ptr10522, align 8                                      ; load; *i0ptr10522
  %fptr10523 = inttoptr i64 %f10524 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10523(i64 %cont7222, i64 %arg7980, i64 %WcX$b)      ; tail call
  ret void

else10520:
  %retprim7223 = call i64 @prim_null_63(i64 %zGc$lst)                                ; call prim_null_63
  %arg7984 = add i64 0, 0                                                            ; quoted ()
  %cloptr10525 = inttoptr i64 %cont7222 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10525)                                        ; assert function application
  %i0ptr10526 = getelementptr inbounds i64, i64* %cloptr10525, i64 0                 ; &cloptr10525[0]
  %f10528 = load i64, i64* %i0ptr10526, align 8                                      ; load; *i0ptr10526
  %fptr10527 = inttoptr i64 %f10528 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10527(i64 %cont7222, i64 %arg7984, i64 %retprim7223); tail call
  ret void
}


define void @lam8166(i64 %env8167, i64 %cont7226, i64 %sPu$_37foldl1) {
  %arg7987 = add i64 0, 0                                                            ; quoted ()
  %cloptr10529 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10531 = getelementptr inbounds i64, i64* %cloptr10529, i64 1                  ; &eptr10531[1]
  store i64 %sPu$_37foldl1, i64* %eptr10531                                          ; *eptr10531 = %sPu$_37foldl1
  %eptr10530 = getelementptr inbounds i64, i64* %cloptr10529, i64 0                  ; &cloptr10529[0]
  %f10532 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8163 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10532, i64* %eptr10530                                                 ; store fptr
  %arg7986 = ptrtoint i64* %cloptr10529 to i64                                       ; closure cast; i64* -> i64
  %cloptr10533 = inttoptr i64 %cont7226 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10533)                                        ; assert function application
  %i0ptr10534 = getelementptr inbounds i64, i64* %cloptr10533, i64 0                 ; &cloptr10533[0]
  %f10536 = load i64, i64* %i0ptr10534, align 8                                      ; load; *i0ptr10534
  %fptr10535 = inttoptr i64 %f10536 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10535(i64 %cont7226, i64 %arg7987, i64 %arg7986)    ; tail call
  ret void
}


define void @lam8163(i64 %env8164, i64 %cont7227, i64 %QG8$f, i64 %yC4$acc, i64 %pt7$lst) {
  %envptr10537 = inttoptr i64 %env8164 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10538 = getelementptr inbounds i64, i64* %envptr10537, i64 1                ; &envptr10537[1]
  %sPu$_37foldl1 = load i64, i64* %envptr10538, align 8                              ; load; *envptr10538
  %a6965 = call i64 @prim_null_63(i64 %pt7$lst)                                      ; call prim_null_63
  %cmp10539 = icmp eq i64 %a6965, 15                                                 ; false?
  br i1 %cmp10539, label %else10541, label %then10540                                ; if

then10540:
  %arg7991 = add i64 0, 0                                                            ; quoted ()
  %cloptr10542 = inttoptr i64 %cont7227 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10542)                                        ; assert function application
  %i0ptr10543 = getelementptr inbounds i64, i64* %cloptr10542, i64 0                 ; &cloptr10542[0]
  %f10545 = load i64, i64* %i0ptr10543, align 8                                      ; load; *i0ptr10543
  %fptr10544 = inttoptr i64 %f10545 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10544(i64 %cont7227, i64 %arg7991, i64 %yC4$acc)    ; tail call
  ret void

else10541:
  %a6966 = call i64 @prim_car(i64 %pt7$lst)                                          ; call prim_car
  %cloptr10546 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10548 = getelementptr inbounds i64, i64* %cloptr10546, i64 1                  ; &eptr10548[1]
  %eptr10549 = getelementptr inbounds i64, i64* %cloptr10546, i64 2                  ; &eptr10549[2]
  %eptr10550 = getelementptr inbounds i64, i64* %cloptr10546, i64 3                  ; &eptr10550[3]
  %eptr10551 = getelementptr inbounds i64, i64* %cloptr10546, i64 4                  ; &eptr10551[4]
  store i64 %cont7227, i64* %eptr10548                                               ; *eptr10548 = %cont7227
  store i64 %sPu$_37foldl1, i64* %eptr10549                                          ; *eptr10549 = %sPu$_37foldl1
  store i64 %QG8$f, i64* %eptr10550                                                  ; *eptr10550 = %QG8$f
  store i64 %pt7$lst, i64* %eptr10551                                                ; *eptr10551 = %pt7$lst
  %eptr10547 = getelementptr inbounds i64, i64* %cloptr10546, i64 0                  ; &cloptr10546[0]
  %f10552 = ptrtoint void(i64,i64,i64)* @lam8161 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10552, i64* %eptr10547                                                 ; store fptr
  %arg7996 = ptrtoint i64* %cloptr10546 to i64                                       ; closure cast; i64* -> i64
  %cloptr10553 = inttoptr i64 %QG8$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10553)                                        ; assert function application
  %i0ptr10554 = getelementptr inbounds i64, i64* %cloptr10553, i64 0                 ; &cloptr10553[0]
  %f10556 = load i64, i64* %i0ptr10554, align 8                                      ; load; *i0ptr10554
  %fptr10555 = inttoptr i64 %f10556 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10555(i64 %QG8$f, i64 %arg7996, i64 %a6966, i64 %yC4$acc); tail call
  ret void
}


define void @lam8161(i64 %env8162, i64 %_957228, i64 %a6967) {
  %envptr10557 = inttoptr i64 %env8162 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10558 = getelementptr inbounds i64, i64* %envptr10557, i64 4                ; &envptr10557[4]
  %pt7$lst = load i64, i64* %envptr10558, align 8                                    ; load; *envptr10558
  %envptr10559 = inttoptr i64 %env8162 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10560 = getelementptr inbounds i64, i64* %envptr10559, i64 3                ; &envptr10559[3]
  %QG8$f = load i64, i64* %envptr10560, align 8                                      ; load; *envptr10560
  %envptr10561 = inttoptr i64 %env8162 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10562 = getelementptr inbounds i64, i64* %envptr10561, i64 2                ; &envptr10561[2]
  %sPu$_37foldl1 = load i64, i64* %envptr10562, align 8                              ; load; *envptr10562
  %envptr10563 = inttoptr i64 %env8162 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10564 = getelementptr inbounds i64, i64* %envptr10563, i64 1                ; &envptr10563[1]
  %cont7227 = load i64, i64* %envptr10564, align 8                                   ; load; *envptr10564
  %a6968 = call i64 @prim_cdr(i64 %pt7$lst)                                          ; call prim_cdr
  %cloptr10565 = inttoptr i64 %sPu$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10565)                                        ; assert function application
  %i0ptr10566 = getelementptr inbounds i64, i64* %cloptr10565, i64 0                 ; &cloptr10565[0]
  %f10568 = load i64, i64* %i0ptr10566, align 8                                      ; load; *i0ptr10566
  %fptr10567 = inttoptr i64 %f10568 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10567(i64 %sPu$_37foldl1, i64 %cont7227, i64 %QG8$f, i64 %a6967, i64 %a6968); tail call
  ret void
}


define void @lam8158(i64 %env8159, i64 %cont7229, i64 %JZl$_37length) {
  %arg8005 = add i64 0, 0                                                            ; quoted ()
  %cloptr10569 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10571 = getelementptr inbounds i64, i64* %cloptr10569, i64 1                  ; &eptr10571[1]
  store i64 %JZl$_37length, i64* %eptr10571                                          ; *eptr10571 = %JZl$_37length
  %eptr10570 = getelementptr inbounds i64, i64* %cloptr10569, i64 0                  ; &cloptr10569[0]
  %f10572 = ptrtoint void(i64,i64,i64)* @lam8155 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10572, i64* %eptr10570                                                 ; store fptr
  %arg8004 = ptrtoint i64* %cloptr10569 to i64                                       ; closure cast; i64* -> i64
  %cloptr10573 = inttoptr i64 %cont7229 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10573)                                        ; assert function application
  %i0ptr10574 = getelementptr inbounds i64, i64* %cloptr10573, i64 0                 ; &cloptr10573[0]
  %f10576 = load i64, i64* %i0ptr10574, align 8                                      ; load; *i0ptr10574
  %fptr10575 = inttoptr i64 %f10576 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10575(i64 %cont7229, i64 %arg8005, i64 %arg8004)    ; tail call
  ret void
}


define void @lam8155(i64 %env8156, i64 %cont7230, i64 %A2S$lst) {
  %envptr10577 = inttoptr i64 %env8156 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10578 = getelementptr inbounds i64, i64* %envptr10577, i64 1                ; &envptr10577[1]
  %JZl$_37length = load i64, i64* %envptr10578, align 8                              ; load; *envptr10578
  %a6962 = call i64 @prim_null_63(i64 %A2S$lst)                                      ; call prim_null_63
  %cmp10579 = icmp eq i64 %a6962, 15                                                 ; false?
  br i1 %cmp10579, label %else10581, label %then10580                                ; if

then10580:
  %arg8009 = add i64 0, 0                                                            ; quoted ()
  %arg8008 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr10582 = inttoptr i64 %cont7230 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10582)                                        ; assert function application
  %i0ptr10583 = getelementptr inbounds i64, i64* %cloptr10582, i64 0                 ; &cloptr10582[0]
  %f10585 = load i64, i64* %i0ptr10583, align 8                                      ; load; *i0ptr10583
  %fptr10584 = inttoptr i64 %f10585 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10584(i64 %cont7230, i64 %arg8009, i64 %arg8008)    ; tail call
  ret void

else10581:
  %a6963 = call i64 @prim_cdr(i64 %A2S$lst)                                          ; call prim_cdr
  %cloptr10586 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10588 = getelementptr inbounds i64, i64* %cloptr10586, i64 1                  ; &eptr10588[1]
  store i64 %cont7230, i64* %eptr10588                                               ; *eptr10588 = %cont7230
  %eptr10587 = getelementptr inbounds i64, i64* %cloptr10586, i64 0                  ; &cloptr10586[0]
  %f10589 = ptrtoint void(i64,i64,i64)* @lam8153 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10589, i64* %eptr10587                                                 ; store fptr
  %arg8013 = ptrtoint i64* %cloptr10586 to i64                                       ; closure cast; i64* -> i64
  %cloptr10590 = inttoptr i64 %JZl$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10590)                                        ; assert function application
  %i0ptr10591 = getelementptr inbounds i64, i64* %cloptr10590, i64 0                 ; &cloptr10590[0]
  %f10593 = load i64, i64* %i0ptr10591, align 8                                      ; load; *i0ptr10591
  %fptr10592 = inttoptr i64 %f10593 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10592(i64 %JZl$_37length, i64 %arg8013, i64 %a6963) ; tail call
  ret void
}


define void @lam8153(i64 %env8154, i64 %_957231, i64 %a6964) {
  %envptr10594 = inttoptr i64 %env8154 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10595 = getelementptr inbounds i64, i64* %envptr10594, i64 1                ; &envptr10594[1]
  %cont7230 = load i64, i64* %envptr10595, align 8                                   ; load; *envptr10595
  %arg8016 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7232 = call i64 @prim__43(i64 %arg8016, i64 %a6964)                        ; call prim__43
  %arg8018 = add i64 0, 0                                                            ; quoted ()
  %cloptr10596 = inttoptr i64 %cont7230 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10596)                                        ; assert function application
  %i0ptr10597 = getelementptr inbounds i64, i64* %cloptr10596, i64 0                 ; &cloptr10596[0]
  %f10599 = load i64, i64* %i0ptr10597, align 8                                      ; load; *i0ptr10597
  %fptr10598 = inttoptr i64 %f10599 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10598(i64 %cont7230, i64 %arg8018, i64 %retprim7232); tail call
  ret void
}


define void @lam8147(i64 %env8148, i64 %cont7233, i64 %SKB$_37take) {
  %arg8021 = add i64 0, 0                                                            ; quoted ()
  %cloptr10600 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10602 = getelementptr inbounds i64, i64* %cloptr10600, i64 1                  ; &eptr10602[1]
  store i64 %SKB$_37take, i64* %eptr10602                                            ; *eptr10602 = %SKB$_37take
  %eptr10601 = getelementptr inbounds i64, i64* %cloptr10600, i64 0                  ; &cloptr10600[0]
  %f10603 = ptrtoint void(i64,i64,i64,i64)* @lam8144 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10603, i64* %eptr10601                                                 ; store fptr
  %arg8020 = ptrtoint i64* %cloptr10600 to i64                                       ; closure cast; i64* -> i64
  %cloptr10604 = inttoptr i64 %cont7233 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10604)                                        ; assert function application
  %i0ptr10605 = getelementptr inbounds i64, i64* %cloptr10604, i64 0                 ; &cloptr10604[0]
  %f10607 = load i64, i64* %i0ptr10605, align 8                                      ; load; *i0ptr10605
  %fptr10606 = inttoptr i64 %f10607 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10606(i64 %cont7233, i64 %arg8021, i64 %arg8020)    ; tail call
  ret void
}


define void @lam8144(i64 %env8145, i64 %cont7234, i64 %nlU$lst, i64 %rF5$n) {
  %envptr10608 = inttoptr i64 %env8145 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10609 = getelementptr inbounds i64, i64* %envptr10608, i64 1                ; &envptr10608[1]
  %SKB$_37take = load i64, i64* %envptr10609, align 8                                ; load; *envptr10609
  %arg8023 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a6956 = call i64 @prim__61(i64 %rF5$n, i64 %arg8023)                              ; call prim__61
  %cmp10610 = icmp eq i64 %a6956, 15                                                 ; false?
  br i1 %cmp10610, label %else10612, label %then10611                                ; if

then10611:
  %arg8026 = add i64 0, 0                                                            ; quoted ()
  %arg8025 = add i64 0, 0                                                            ; quoted ()
  %cloptr10613 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10613)                                        ; assert function application
  %i0ptr10614 = getelementptr inbounds i64, i64* %cloptr10613, i64 0                 ; &cloptr10613[0]
  %f10616 = load i64, i64* %i0ptr10614, align 8                                      ; load; *i0ptr10614
  %fptr10615 = inttoptr i64 %f10616 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10615(i64 %cont7234, i64 %arg8026, i64 %arg8025)    ; tail call
  ret void

else10612:
  %a6957 = call i64 @prim_null_63(i64 %nlU$lst)                                      ; call prim_null_63
  %cmp10617 = icmp eq i64 %a6957, 15                                                 ; false?
  br i1 %cmp10617, label %else10619, label %then10618                                ; if

then10618:
  %arg8030 = add i64 0, 0                                                            ; quoted ()
  %arg8029 = add i64 0, 0                                                            ; quoted ()
  %cloptr10620 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10620)                                        ; assert function application
  %i0ptr10621 = getelementptr inbounds i64, i64* %cloptr10620, i64 0                 ; &cloptr10620[0]
  %f10623 = load i64, i64* %i0ptr10621, align 8                                      ; load; *i0ptr10621
  %fptr10622 = inttoptr i64 %f10623 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10622(i64 %cont7234, i64 %arg8030, i64 %arg8029)    ; tail call
  ret void

else10619:
  %a6958 = call i64 @prim_car(i64 %nlU$lst)                                          ; call prim_car
  %a6959 = call i64 @prim_cdr(i64 %nlU$lst)                                          ; call prim_cdr
  %arg8034 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a6960 = call i64 @prim__45(i64 %rF5$n, i64 %arg8034)                              ; call prim__45
  %cloptr10624 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10626 = getelementptr inbounds i64, i64* %cloptr10624, i64 1                  ; &eptr10626[1]
  %eptr10627 = getelementptr inbounds i64, i64* %cloptr10624, i64 2                  ; &eptr10627[2]
  store i64 %cont7234, i64* %eptr10626                                               ; *eptr10626 = %cont7234
  store i64 %a6958, i64* %eptr10627                                                  ; *eptr10627 = %a6958
  %eptr10625 = getelementptr inbounds i64, i64* %cloptr10624, i64 0                  ; &cloptr10624[0]
  %f10628 = ptrtoint void(i64,i64,i64)* @lam8140 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10628, i64* %eptr10625                                                 ; store fptr
  %arg8038 = ptrtoint i64* %cloptr10624 to i64                                       ; closure cast; i64* -> i64
  %cloptr10629 = inttoptr i64 %SKB$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10629)                                        ; assert function application
  %i0ptr10630 = getelementptr inbounds i64, i64* %cloptr10629, i64 0                 ; &cloptr10629[0]
  %f10632 = load i64, i64* %i0ptr10630, align 8                                      ; load; *i0ptr10630
  %fptr10631 = inttoptr i64 %f10632 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10631(i64 %SKB$_37take, i64 %arg8038, i64 %a6959, i64 %a6960); tail call
  ret void
}


define void @lam8140(i64 %env8141, i64 %_957235, i64 %a6961) {
  %envptr10633 = inttoptr i64 %env8141 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10634 = getelementptr inbounds i64, i64* %envptr10633, i64 2                ; &envptr10633[2]
  %a6958 = load i64, i64* %envptr10634, align 8                                      ; load; *envptr10634
  %envptr10635 = inttoptr i64 %env8141 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10636 = getelementptr inbounds i64, i64* %envptr10635, i64 1                ; &envptr10635[1]
  %cont7234 = load i64, i64* %envptr10636, align 8                                   ; load; *envptr10636
  %retprim7236 = call i64 @prim_cons(i64 %a6958, i64 %a6961)                         ; call prim_cons
  %arg8043 = add i64 0, 0                                                            ; quoted ()
  %cloptr10637 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10637)                                        ; assert function application
  %i0ptr10638 = getelementptr inbounds i64, i64* %cloptr10637, i64 0                 ; &cloptr10637[0]
  %f10640 = load i64, i64* %i0ptr10638, align 8                                      ; load; *i0ptr10638
  %fptr10639 = inttoptr i64 %f10640 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10639(i64 %cont7234, i64 %arg8043, i64 %retprim7236); tail call
  ret void
}


define void @lam8133(i64 %env8134, i64 %cont7237, i64 %Ubc$_37map) {
  %arg8046 = add i64 0, 0                                                            ; quoted ()
  %cloptr10641 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10643 = getelementptr inbounds i64, i64* %cloptr10641, i64 1                  ; &eptr10643[1]
  store i64 %Ubc$_37map, i64* %eptr10643                                             ; *eptr10643 = %Ubc$_37map
  %eptr10642 = getelementptr inbounds i64, i64* %cloptr10641, i64 0                  ; &cloptr10641[0]
  %f10644 = ptrtoint void(i64,i64,i64,i64)* @lam8130 to i64                          ; fptr cast; i64(...)* -> i64
  store i64 %f10644, i64* %eptr10642                                                 ; store fptr
  %arg8045 = ptrtoint i64* %cloptr10641 to i64                                       ; closure cast; i64* -> i64
  %cloptr10645 = inttoptr i64 %cont7237 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10645)                                        ; assert function application
  %i0ptr10646 = getelementptr inbounds i64, i64* %cloptr10645, i64 0                 ; &cloptr10645[0]
  %f10648 = load i64, i64* %i0ptr10646, align 8                                      ; load; *i0ptr10646
  %fptr10647 = inttoptr i64 %f10648 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10647(i64 %cont7237, i64 %arg8046, i64 %arg8045)    ; tail call
  ret void
}


define void @lam8130(i64 %env8131, i64 %cont7238, i64 %uVZ$f, i64 %NQR$lst) {
  %envptr10649 = inttoptr i64 %env8131 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10650 = getelementptr inbounds i64, i64* %envptr10649, i64 1                ; &envptr10649[1]
  %Ubc$_37map = load i64, i64* %envptr10650, align 8                                 ; load; *envptr10650
  %a6951 = call i64 @prim_null_63(i64 %NQR$lst)                                      ; call prim_null_63
  %cmp10651 = icmp eq i64 %a6951, 15                                                 ; false?
  br i1 %cmp10651, label %else10653, label %then10652                                ; if

then10652:
  %arg8050 = add i64 0, 0                                                            ; quoted ()
  %arg8049 = add i64 0, 0                                                            ; quoted ()
  %cloptr10654 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10654)                                        ; assert function application
  %i0ptr10655 = getelementptr inbounds i64, i64* %cloptr10654, i64 0                 ; &cloptr10654[0]
  %f10657 = load i64, i64* %i0ptr10655, align 8                                      ; load; *i0ptr10655
  %fptr10656 = inttoptr i64 %f10657 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10656(i64 %cont7238, i64 %arg8050, i64 %arg8049)    ; tail call
  ret void

else10653:
  %a6952 = call i64 @prim_car(i64 %NQR$lst)                                          ; call prim_car
  %cloptr10658 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr10660 = getelementptr inbounds i64, i64* %cloptr10658, i64 1                  ; &eptr10660[1]
  %eptr10661 = getelementptr inbounds i64, i64* %cloptr10658, i64 2                  ; &eptr10661[2]
  %eptr10662 = getelementptr inbounds i64, i64* %cloptr10658, i64 3                  ; &eptr10662[3]
  %eptr10663 = getelementptr inbounds i64, i64* %cloptr10658, i64 4                  ; &eptr10663[4]
  store i64 %Ubc$_37map, i64* %eptr10660                                             ; *eptr10660 = %Ubc$_37map
  store i64 %uVZ$f, i64* %eptr10661                                                  ; *eptr10661 = %uVZ$f
  store i64 %NQR$lst, i64* %eptr10662                                                ; *eptr10662 = %NQR$lst
  store i64 %cont7238, i64* %eptr10663                                               ; *eptr10663 = %cont7238
  %eptr10659 = getelementptr inbounds i64, i64* %cloptr10658, i64 0                  ; &cloptr10658[0]
  %f10664 = ptrtoint void(i64,i64,i64)* @lam8128 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10664, i64* %eptr10659                                                 ; store fptr
  %arg8054 = ptrtoint i64* %cloptr10658 to i64                                       ; closure cast; i64* -> i64
  %cloptr10665 = inttoptr i64 %uVZ$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10665)                                        ; assert function application
  %i0ptr10666 = getelementptr inbounds i64, i64* %cloptr10665, i64 0                 ; &cloptr10665[0]
  %f10668 = load i64, i64* %i0ptr10666, align 8                                      ; load; *i0ptr10666
  %fptr10667 = inttoptr i64 %f10668 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10667(i64 %uVZ$f, i64 %arg8054, i64 %a6952)         ; tail call
  ret void
}


define void @lam8128(i64 %env8129, i64 %_957239, i64 %a6953) {
  %envptr10669 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10670 = getelementptr inbounds i64, i64* %envptr10669, i64 4                ; &envptr10669[4]
  %cont7238 = load i64, i64* %envptr10670, align 8                                   ; load; *envptr10670
  %envptr10671 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10672 = getelementptr inbounds i64, i64* %envptr10671, i64 3                ; &envptr10671[3]
  %NQR$lst = load i64, i64* %envptr10672, align 8                                    ; load; *envptr10672
  %envptr10673 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10674 = getelementptr inbounds i64, i64* %envptr10673, i64 2                ; &envptr10673[2]
  %uVZ$f = load i64, i64* %envptr10674, align 8                                      ; load; *envptr10674
  %envptr10675 = inttoptr i64 %env8129 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10676 = getelementptr inbounds i64, i64* %envptr10675, i64 1                ; &envptr10675[1]
  %Ubc$_37map = load i64, i64* %envptr10676, align 8                                 ; load; *envptr10676
  %a6954 = call i64 @prim_cdr(i64 %NQR$lst)                                          ; call prim_cdr
  %cloptr10677 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10679 = getelementptr inbounds i64, i64* %cloptr10677, i64 1                  ; &eptr10679[1]
  %eptr10680 = getelementptr inbounds i64, i64* %cloptr10677, i64 2                  ; &eptr10680[2]
  store i64 %a6953, i64* %eptr10679                                                  ; *eptr10679 = %a6953
  store i64 %cont7238, i64* %eptr10680                                               ; *eptr10680 = %cont7238
  %eptr10678 = getelementptr inbounds i64, i64* %cloptr10677, i64 0                  ; &cloptr10677[0]
  %f10681 = ptrtoint void(i64,i64,i64)* @lam8126 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10681, i64* %eptr10678                                                 ; store fptr
  %arg8059 = ptrtoint i64* %cloptr10677 to i64                                       ; closure cast; i64* -> i64
  %cloptr10682 = inttoptr i64 %Ubc$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10682)                                        ; assert function application
  %i0ptr10683 = getelementptr inbounds i64, i64* %cloptr10682, i64 0                 ; &cloptr10682[0]
  %f10685 = load i64, i64* %i0ptr10683, align 8                                      ; load; *i0ptr10683
  %fptr10684 = inttoptr i64 %f10685 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10684(i64 %Ubc$_37map, i64 %arg8059, i64 %uVZ$f, i64 %a6954); tail call
  ret void
}


define void @lam8126(i64 %env8127, i64 %_957240, i64 %a6955) {
  %envptr10686 = inttoptr i64 %env8127 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10687 = getelementptr inbounds i64, i64* %envptr10686, i64 2                ; &envptr10686[2]
  %cont7238 = load i64, i64* %envptr10687, align 8                                   ; load; *envptr10687
  %envptr10688 = inttoptr i64 %env8127 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10689 = getelementptr inbounds i64, i64* %envptr10688, i64 1                ; &envptr10688[1]
  %a6953 = load i64, i64* %envptr10689, align 8                                      ; load; *envptr10689
  %retprim7241 = call i64 @prim_cons(i64 %a6953, i64 %a6955)                         ; call prim_cons
  %arg8064 = add i64 0, 0                                                            ; quoted ()
  %cloptr10690 = inttoptr i64 %cont7238 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10690)                                        ; assert function application
  %i0ptr10691 = getelementptr inbounds i64, i64* %cloptr10690, i64 0                 ; &cloptr10690[0]
  %f10693 = load i64, i64* %i0ptr10691, align 8                                      ; load; *i0ptr10691
  %fptr10692 = inttoptr i64 %f10693 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10692(i64 %cont7238, i64 %arg8064, i64 %retprim7241); tail call
  ret void
}


define void @lam8121(i64 %env8122, i64 %cont7242, i64 %Ahw$_37foldr1) {
  %arg8067 = add i64 0, 0                                                            ; quoted ()
  %cloptr10694 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10696 = getelementptr inbounds i64, i64* %cloptr10694, i64 1                  ; &eptr10696[1]
  store i64 %Ahw$_37foldr1, i64* %eptr10696                                          ; *eptr10696 = %Ahw$_37foldr1
  %eptr10695 = getelementptr inbounds i64, i64* %cloptr10694, i64 0                  ; &cloptr10694[0]
  %f10697 = ptrtoint void(i64,i64,i64,i64,i64)* @lam8118 to i64                      ; fptr cast; i64(...)* -> i64
  store i64 %f10697, i64* %eptr10695                                                 ; store fptr
  %arg8066 = ptrtoint i64* %cloptr10694 to i64                                       ; closure cast; i64* -> i64
  %cloptr10698 = inttoptr i64 %cont7242 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10698)                                        ; assert function application
  %i0ptr10699 = getelementptr inbounds i64, i64* %cloptr10698, i64 0                 ; &cloptr10698[0]
  %f10701 = load i64, i64* %i0ptr10699, align 8                                      ; load; *i0ptr10699
  %fptr10700 = inttoptr i64 %f10701 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10700(i64 %cont7242, i64 %arg8067, i64 %arg8066)    ; tail call
  ret void
}


define void @lam8118(i64 %env8119, i64 %cont7243, i64 %jQe$f, i64 %PWS$acc, i64 %b4Z$lst) {
  %envptr10702 = inttoptr i64 %env8119 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10703 = getelementptr inbounds i64, i64* %envptr10702, i64 1                ; &envptr10702[1]
  %Ahw$_37foldr1 = load i64, i64* %envptr10703, align 8                              ; load; *envptr10703
  %a6947 = call i64 @prim_null_63(i64 %b4Z$lst)                                      ; call prim_null_63
  %cmp10704 = icmp eq i64 %a6947, 15                                                 ; false?
  br i1 %cmp10704, label %else10706, label %then10705                                ; if

then10705:
  %arg8071 = add i64 0, 0                                                            ; quoted ()
  %cloptr10707 = inttoptr i64 %cont7243 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10707)                                        ; assert function application
  %i0ptr10708 = getelementptr inbounds i64, i64* %cloptr10707, i64 0                 ; &cloptr10707[0]
  %f10710 = load i64, i64* %i0ptr10708, align 8                                      ; load; *i0ptr10708
  %fptr10709 = inttoptr i64 %f10710 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10709(i64 %cont7243, i64 %arg8071, i64 %PWS$acc)    ; tail call
  ret void

else10706:
  %a6948 = call i64 @prim_car(i64 %b4Z$lst)                                          ; call prim_car
  %a6949 = call i64 @prim_cdr(i64 %b4Z$lst)                                          ; call prim_cdr
  %cloptr10711 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10713 = getelementptr inbounds i64, i64* %cloptr10711, i64 1                  ; &eptr10713[1]
  %eptr10714 = getelementptr inbounds i64, i64* %cloptr10711, i64 2                  ; &eptr10714[2]
  %eptr10715 = getelementptr inbounds i64, i64* %cloptr10711, i64 3                  ; &eptr10715[3]
  store i64 %a6948, i64* %eptr10713                                                  ; *eptr10713 = %a6948
  store i64 %jQe$f, i64* %eptr10714                                                  ; *eptr10714 = %jQe$f
  store i64 %cont7243, i64* %eptr10715                                               ; *eptr10715 = %cont7243
  %eptr10712 = getelementptr inbounds i64, i64* %cloptr10711, i64 0                  ; &cloptr10711[0]
  %f10716 = ptrtoint void(i64,i64,i64)* @lam8116 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10716, i64* %eptr10712                                                 ; store fptr
  %arg8078 = ptrtoint i64* %cloptr10711 to i64                                       ; closure cast; i64* -> i64
  %cloptr10717 = inttoptr i64 %Ahw$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10717)                                        ; assert function application
  %i0ptr10718 = getelementptr inbounds i64, i64* %cloptr10717, i64 0                 ; &cloptr10717[0]
  %f10720 = load i64, i64* %i0ptr10718, align 8                                      ; load; *i0ptr10718
  %fptr10719 = inttoptr i64 %f10720 to void (i64,i64,i64,i64,i64)*                   ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10719(i64 %Ahw$_37foldr1, i64 %arg8078, i64 %jQe$f, i64 %PWS$acc, i64 %a6949); tail call
  ret void
}


define void @lam8116(i64 %env8117, i64 %_957244, i64 %a6950) {
  %envptr10721 = inttoptr i64 %env8117 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10722 = getelementptr inbounds i64, i64* %envptr10721, i64 3                ; &envptr10721[3]
  %cont7243 = load i64, i64* %envptr10722, align 8                                   ; load; *envptr10722
  %envptr10723 = inttoptr i64 %env8117 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10724 = getelementptr inbounds i64, i64* %envptr10723, i64 2                ; &envptr10723[2]
  %jQe$f = load i64, i64* %envptr10724, align 8                                      ; load; *envptr10724
  %envptr10725 = inttoptr i64 %env8117 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10726 = getelementptr inbounds i64, i64* %envptr10725, i64 1                ; &envptr10725[1]
  %a6948 = load i64, i64* %envptr10726, align 8                                      ; load; *envptr10726
  %cloptr10727 = inttoptr i64 %jQe$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10727)                                        ; assert function application
  %i0ptr10728 = getelementptr inbounds i64, i64* %cloptr10727, i64 0                 ; &cloptr10727[0]
  %f10730 = load i64, i64* %i0ptr10728, align 8                                      ; load; *i0ptr10728
  %fptr10729 = inttoptr i64 %f10730 to void (i64,i64,i64,i64)*                       ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10729(i64 %jQe$f, i64 %cont7243, i64 %a6948, i64 %a6950); tail call
  ret void
}


define void @lam8113(i64 %env8114, i64 %cont7246, i64 %qVs$y) {
  %arg8085 = add i64 0, 0                                                            ; quoted ()
  %cloptr10731 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr10733 = getelementptr inbounds i64, i64* %cloptr10731, i64 1                  ; &eptr10733[1]
  store i64 %qVs$y, i64* %eptr10733                                                  ; *eptr10733 = %qVs$y
  %eptr10732 = getelementptr inbounds i64, i64* %cloptr10731, i64 0                  ; &cloptr10731[0]
  %f10734 = ptrtoint void(i64,i64,i64)* @lam8110 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10734, i64* %eptr10732                                                 ; store fptr
  %arg8084 = ptrtoint i64* %cloptr10731 to i64                                       ; closure cast; i64* -> i64
  %cloptr10735 = inttoptr i64 %cont7246 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10735)                                        ; assert function application
  %i0ptr10736 = getelementptr inbounds i64, i64* %cloptr10735, i64 0                 ; &cloptr10735[0]
  %f10738 = load i64, i64* %i0ptr10736, align 8                                      ; load; *i0ptr10736
  %fptr10737 = inttoptr i64 %f10738 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10737(i64 %cont7246, i64 %arg8085, i64 %arg8084)    ; tail call
  ret void
}


define void @lam8110(i64 %env8111, i64 %cont7247, i64 %S3Z$f) {
  %envptr10739 = inttoptr i64 %env8111 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10740 = getelementptr inbounds i64, i64* %envptr10739, i64 1                ; &envptr10739[1]
  %qVs$y = load i64, i64* %envptr10740, align 8                                      ; load; *envptr10740
  %cloptr10741 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10743 = getelementptr inbounds i64, i64* %cloptr10741, i64 1                  ; &eptr10743[1]
  %eptr10744 = getelementptr inbounds i64, i64* %cloptr10741, i64 2                  ; &eptr10744[2]
  store i64 %S3Z$f, i64* %eptr10743                                                  ; *eptr10743 = %S3Z$f
  store i64 %qVs$y, i64* %eptr10744                                                  ; *eptr10744 = %qVs$y
  %eptr10742 = getelementptr inbounds i64, i64* %cloptr10741, i64 0                  ; &cloptr10741[0]
  %f10745 = ptrtoint void(i64,i64)* @lam8108 to i64                                  ; fptr cast; i64(...)* -> i64
  store i64 %f10745, i64* %eptr10742                                                 ; store fptr
  %arg8087 = ptrtoint i64* %cloptr10741 to i64                                       ; closure cast; i64* -> i64
  %cloptr10746 = inttoptr i64 %S3Z$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10746)                                        ; assert function application
  %i0ptr10747 = getelementptr inbounds i64, i64* %cloptr10746, i64 0                 ; &cloptr10746[0]
  %f10749 = load i64, i64* %i0ptr10747, align 8                                      ; load; *i0ptr10747
  %fptr10748 = inttoptr i64 %f10749 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10748(i64 %S3Z$f, i64 %cont7247, i64 %arg8087)      ; tail call
  ret void
}


define void @lam8108(i64 %env8109, i64 %kHW$args7249) {
  %envptr10750 = inttoptr i64 %env8109 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10751 = getelementptr inbounds i64, i64* %envptr10750, i64 2                ; &envptr10750[2]
  %qVs$y = load i64, i64* %envptr10751, align 8                                      ; load; *envptr10751
  %envptr10752 = inttoptr i64 %env8109 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10753 = getelementptr inbounds i64, i64* %envptr10752, i64 1                ; &envptr10752[1]
  %S3Z$f = load i64, i64* %envptr10753, align 8                                      ; load; *envptr10753
  %cont7248 = call i64 @prim_car(i64 %kHW$args7249)                                  ; call prim_car
  %kHW$args = call i64 @prim_cdr(i64 %kHW$args7249)                                  ; call prim_cdr
  %cloptr10754 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr10756 = getelementptr inbounds i64, i64* %cloptr10754, i64 1                  ; &eptr10756[1]
  %eptr10757 = getelementptr inbounds i64, i64* %cloptr10754, i64 2                  ; &eptr10757[2]
  %eptr10758 = getelementptr inbounds i64, i64* %cloptr10754, i64 3                  ; &eptr10758[3]
  store i64 %cont7248, i64* %eptr10756                                               ; *eptr10756 = %cont7248
  store i64 %kHW$args, i64* %eptr10757                                               ; *eptr10757 = %kHW$args
  store i64 %S3Z$f, i64* %eptr10758                                                  ; *eptr10758 = %S3Z$f
  %eptr10755 = getelementptr inbounds i64, i64* %cloptr10754, i64 0                  ; &cloptr10754[0]
  %f10759 = ptrtoint void(i64,i64,i64)* @lam8106 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10759, i64* %eptr10755                                                 ; store fptr
  %arg8093 = ptrtoint i64* %cloptr10754 to i64                                       ; closure cast; i64* -> i64
  %cloptr10760 = inttoptr i64 %qVs$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10760)                                        ; assert function application
  %i0ptr10761 = getelementptr inbounds i64, i64* %cloptr10760, i64 0                 ; &cloptr10760[0]
  %f10763 = load i64, i64* %i0ptr10761, align 8                                      ; load; *i0ptr10761
  %fptr10762 = inttoptr i64 %f10763 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10762(i64 %qVs$y, i64 %arg8093, i64 %qVs$y)         ; tail call
  ret void
}


define void @lam8106(i64 %env8107, i64 %_957250, i64 %a6945) {
  %envptr10764 = inttoptr i64 %env8107 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10765 = getelementptr inbounds i64, i64* %envptr10764, i64 3                ; &envptr10764[3]
  %S3Z$f = load i64, i64* %envptr10765, align 8                                      ; load; *envptr10765
  %envptr10766 = inttoptr i64 %env8107 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10767 = getelementptr inbounds i64, i64* %envptr10766, i64 2                ; &envptr10766[2]
  %kHW$args = load i64, i64* %envptr10767, align 8                                   ; load; *envptr10767
  %envptr10768 = inttoptr i64 %env8107 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10769 = getelementptr inbounds i64, i64* %envptr10768, i64 1                ; &envptr10768[1]
  %cont7248 = load i64, i64* %envptr10769, align 8                                   ; load; *envptr10769
  %cloptr10770 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr10772 = getelementptr inbounds i64, i64* %cloptr10770, i64 1                  ; &eptr10772[1]
  %eptr10773 = getelementptr inbounds i64, i64* %cloptr10770, i64 2                  ; &eptr10773[2]
  store i64 %cont7248, i64* %eptr10772                                               ; *eptr10772 = %cont7248
  store i64 %kHW$args, i64* %eptr10773                                               ; *eptr10773 = %kHW$args
  %eptr10771 = getelementptr inbounds i64, i64* %cloptr10770, i64 0                  ; &cloptr10770[0]
  %f10774 = ptrtoint void(i64,i64,i64)* @lam8104 to i64                              ; fptr cast; i64(...)* -> i64
  store i64 %f10774, i64* %eptr10771                                                 ; store fptr
  %arg8096 = ptrtoint i64* %cloptr10770 to i64                                       ; closure cast; i64* -> i64
  %cloptr10775 = inttoptr i64 %a6945 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10775)                                        ; assert function application
  %i0ptr10776 = getelementptr inbounds i64, i64* %cloptr10775, i64 0                 ; &cloptr10775[0]
  %f10778 = load i64, i64* %i0ptr10776, align 8                                      ; load; *i0ptr10776
  %fptr10777 = inttoptr i64 %f10778 to void (i64,i64,i64)*                           ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10777(i64 %a6945, i64 %arg8096, i64 %S3Z$f)         ; tail call
  ret void
}


define void @lam8104(i64 %env8105, i64 %_957251, i64 %a6946) {
  %envptr10779 = inttoptr i64 %env8105 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10780 = getelementptr inbounds i64, i64* %envptr10779, i64 2                ; &envptr10779[2]
  %kHW$args = load i64, i64* %envptr10780, align 8                                   ; load; *envptr10780
  %envptr10781 = inttoptr i64 %env8105 to i64*                                       ; closure/env cast; i64 -> i64*
  %envptr10782 = getelementptr inbounds i64, i64* %envptr10781, i64 1                ; &envptr10781[1]
  %cont7248 = load i64, i64* %envptr10782, align 8                                   ; load; *envptr10782
  %cps_45lst7252 = call i64 @prim_cons(i64 %cont7248, i64 %kHW$args)                 ; call prim_cons
  %cloptr10783 = inttoptr i64 %a6946 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr10783)                                        ; assert function application
  %i0ptr10784 = getelementptr inbounds i64, i64* %cloptr10783, i64 0                 ; &cloptr10783[0]
  %f10786 = load i64, i64* %i0ptr10784, align 8                                      ; load; *i0ptr10784
  %fptr10785 = inttoptr i64 %f10786 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr10785(i64 %a6946, i64 %cps_45lst7252)               ; tail call
  ret void
}





@sym9370 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
