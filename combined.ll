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
@.str.11 = private unnamed_addr constant [39 x i8] c"Arity mismatch in function application\00", align 1
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
  call void @fatal_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i32 0, i32 0))
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
define i64 @prim_set() #0 {
  %h = alloca %class.hamt*, align 8
  %p = alloca i64, align 8
  %1 = call noalias i8* @GC_malloc(i64 120)
  %2 = bitcast i8* %1 to %class.hamt*
  %3 = bitcast %class.hamt* %2 to i8*
  %4 = bitcast i8* %3 to %class.hamt*
  call void @_ZN4hamtI5tupleS0_EC2Ev(%class.hamt* %4)
  store %class.hamt* %4, %class.hamt** %h, align 8
  %5 = load %class.hamt*, %class.hamt** %h, align 8
  %6 = ptrtoint %class.hamt* %5 to i64
  store i64 %6, i64* %p, align 8
  %7 = load i64, i64* %p, align 8
  %8 = or i64 %7, 5
  ret i64 %8
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
  %cloptr139564 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139565 = getelementptr inbounds i64, i64* %cloptr139564, i64 0                ; &cloptr139564[0]
  %f139566 = ptrtoint void(i64,i64,i64)* @lam139562 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139566, i64* %eptr139565                                               ; store fptr
  %arg138254 = ptrtoint i64* %cloptr139564 to i64                                    ; closure cast; i64* -> i64
  %cloptr139567 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139568 = getelementptr inbounds i64, i64* %cloptr139567, i64 0                ; &cloptr139567[0]
  %f139569 = ptrtoint void(i64,i64,i64)* @lam139560 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139569, i64* %eptr139568                                               ; store fptr
  %arg138253 = ptrtoint i64* %cloptr139567 to i64                                    ; closure cast; i64* -> i64
  %cloptr139570 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139571 = getelementptr inbounds i64, i64* %cloptr139570, i64 0                ; &cloptr139570[0]
  %f139572 = ptrtoint void(i64,i64,i64)* @lam139112 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139572, i64* %eptr139571                                               ; store fptr
  %arg138252 = ptrtoint i64* %cloptr139570 to i64                                    ; closure cast; i64* -> i64
  %cloptr139573 = inttoptr i64 %arg138254 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139573)                                       ; assert function application
  %i0ptr139574 = getelementptr inbounds i64, i64* %cloptr139573, i64 0               ; &cloptr139573[0]
  %f139576 = load i64, i64* %i0ptr139574, align 8                                    ; load; *i0ptr139574
  %fptr139575 = inttoptr i64 %f139576 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139575(i64 %arg138254, i64 %arg138253, i64 %arg138252); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam139562(i64 %env139563, i64 %cont138244, i64 %W7l$yu) {
  %cloptr139577 = inttoptr i64 %W7l$yu to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139577)                                       ; assert function application
  %i0ptr139578 = getelementptr inbounds i64, i64* %cloptr139577, i64 0               ; &cloptr139577[0]
  %f139580 = load i64, i64* %i0ptr139578, align 8                                    ; load; *i0ptr139578
  %fptr139579 = inttoptr i64 %f139580 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139579(i64 %W7l$yu, i64 %cont138244, i64 %W7l$yu)   ; tail call
  ret void
}


define void @lam139560(i64 %env139561, i64 %_95138065, i64 %Zfm$Ycmb) {
  %cloptr139581 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr139583 = getelementptr inbounds i64, i64* %cloptr139581, i64 1                ; &eptr139583[1]
  store i64 %Zfm$Ycmb, i64* %eptr139583                                              ; *eptr139583 = %Zfm$Ycmb
  %eptr139582 = getelementptr inbounds i64, i64* %cloptr139581, i64 0                ; &cloptr139581[0]
  %f139584 = ptrtoint void(i64,i64,i64)* @lam139558 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139584, i64* %eptr139582                                               ; store fptr
  %arg138259 = ptrtoint i64* %cloptr139581 to i64                                    ; closure cast; i64* -> i64
  %cloptr139585 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139586 = getelementptr inbounds i64, i64* %cloptr139585, i64 0                ; &cloptr139585[0]
  %f139587 = ptrtoint void(i64,i64,i64)* @lam139120 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139587, i64* %eptr139586                                               ; store fptr
  %arg138258 = ptrtoint i64* %cloptr139585 to i64                                    ; closure cast; i64* -> i64
  %cloptr139588 = inttoptr i64 %Zfm$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139588)                                       ; assert function application
  %i0ptr139589 = getelementptr inbounds i64, i64* %cloptr139588, i64 0               ; &cloptr139588[0]
  %f139591 = load i64, i64* %i0ptr139589, align 8                                    ; load; *i0ptr139589
  %fptr139590 = inttoptr i64 %f139591 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139590(i64 %Zfm$Ycmb, i64 %arg138259, i64 %arg138258); tail call
  ret void
}


define void @lam139558(i64 %env139559, i64 %_95138066, i64 %VVX$_37foldr1) {
  %envptr139592 = inttoptr i64 %env139559 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139593 = getelementptr inbounds i64, i64* %envptr139592, i64 1              ; &envptr139592[1]
  %Zfm$Ycmb = load i64, i64* %envptr139593, align 8                                  ; load; *envptr139593
  %cloptr139594 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139596 = getelementptr inbounds i64, i64* %cloptr139594, i64 1                ; &eptr139596[1]
  %eptr139597 = getelementptr inbounds i64, i64* %cloptr139594, i64 2                ; &eptr139597[2]
  store i64 %Zfm$Ycmb, i64* %eptr139596                                              ; *eptr139596 = %Zfm$Ycmb
  store i64 %VVX$_37foldr1, i64* %eptr139597                                         ; *eptr139597 = %VVX$_37foldr1
  %eptr139595 = getelementptr inbounds i64, i64* %cloptr139594, i64 0                ; &cloptr139594[0]
  %f139598 = ptrtoint void(i64,i64,i64)* @lam139556 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139598, i64* %eptr139595                                               ; store fptr
  %arg138262 = ptrtoint i64* %cloptr139594 to i64                                    ; closure cast; i64* -> i64
  %cloptr139599 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139600 = getelementptr inbounds i64, i64* %cloptr139599, i64 0                ; &cloptr139599[0]
  %f139601 = ptrtoint void(i64,i64,i64)* @lam139132 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139601, i64* %eptr139600                                               ; store fptr
  %arg138261 = ptrtoint i64* %cloptr139599 to i64                                    ; closure cast; i64* -> i64
  %cloptr139602 = inttoptr i64 %Zfm$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139602)                                       ; assert function application
  %i0ptr139603 = getelementptr inbounds i64, i64* %cloptr139602, i64 0               ; &cloptr139602[0]
  %f139605 = load i64, i64* %i0ptr139603, align 8                                    ; load; *i0ptr139603
  %fptr139604 = inttoptr i64 %f139605 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139604(i64 %Zfm$Ycmb, i64 %arg138262, i64 %arg138261); tail call
  ret void
}


define void @lam139556(i64 %env139557, i64 %_95138067, i64 %wSz$_37map1) {
  %envptr139606 = inttoptr i64 %env139557 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139607 = getelementptr inbounds i64, i64* %envptr139606, i64 2              ; &envptr139606[2]
  %VVX$_37foldr1 = load i64, i64* %envptr139607, align 8                             ; load; *envptr139607
  %envptr139608 = inttoptr i64 %env139557 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139609 = getelementptr inbounds i64, i64* %envptr139608, i64 1              ; &envptr139608[1]
  %Zfm$Ycmb = load i64, i64* %envptr139609, align 8                                  ; load; *envptr139609
  %cloptr139610 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr139612 = getelementptr inbounds i64, i64* %cloptr139610, i64 1                ; &eptr139612[1]
  %eptr139613 = getelementptr inbounds i64, i64* %cloptr139610, i64 2                ; &eptr139613[2]
  %eptr139614 = getelementptr inbounds i64, i64* %cloptr139610, i64 3                ; &eptr139614[3]
  store i64 %Zfm$Ycmb, i64* %eptr139612                                              ; *eptr139612 = %Zfm$Ycmb
  store i64 %VVX$_37foldr1, i64* %eptr139613                                         ; *eptr139613 = %VVX$_37foldr1
  store i64 %wSz$_37map1, i64* %eptr139614                                           ; *eptr139614 = %wSz$_37map1
  %eptr139611 = getelementptr inbounds i64, i64* %cloptr139610, i64 0                ; &cloptr139610[0]
  %f139615 = ptrtoint void(i64,i64,i64)* @lam139554 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139615, i64* %eptr139611                                               ; store fptr
  %arg138265 = ptrtoint i64* %cloptr139610 to i64                                    ; closure cast; i64* -> i64
  %cloptr139616 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139617 = getelementptr inbounds i64, i64* %cloptr139616, i64 0                ; &cloptr139616[0]
  %f139618 = ptrtoint void(i64,i64,i64)* @lam139146 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139618, i64* %eptr139617                                               ; store fptr
  %arg138264 = ptrtoint i64* %cloptr139616 to i64                                    ; closure cast; i64* -> i64
  %cloptr139619 = inttoptr i64 %Zfm$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139619)                                       ; assert function application
  %i0ptr139620 = getelementptr inbounds i64, i64* %cloptr139619, i64 0               ; &cloptr139619[0]
  %f139622 = load i64, i64* %i0ptr139620, align 8                                    ; load; *i0ptr139620
  %fptr139621 = inttoptr i64 %f139622 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139621(i64 %Zfm$Ycmb, i64 %arg138265, i64 %arg138264); tail call
  ret void
}


define void @lam139554(i64 %env139555, i64 %_95138068, i64 %SQv$_37take) {
  %envptr139623 = inttoptr i64 %env139555 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139624 = getelementptr inbounds i64, i64* %envptr139623, i64 3              ; &envptr139623[3]
  %wSz$_37map1 = load i64, i64* %envptr139624, align 8                               ; load; *envptr139624
  %envptr139625 = inttoptr i64 %env139555 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139626 = getelementptr inbounds i64, i64* %envptr139625, i64 2              ; &envptr139625[2]
  %VVX$_37foldr1 = load i64, i64* %envptr139626, align 8                             ; load; *envptr139626
  %envptr139627 = inttoptr i64 %env139555 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139628 = getelementptr inbounds i64, i64* %envptr139627, i64 1              ; &envptr139627[1]
  %Zfm$Ycmb = load i64, i64* %envptr139628, align 8                                  ; load; *envptr139628
  %cloptr139629 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr139631 = getelementptr inbounds i64, i64* %cloptr139629, i64 1                ; &eptr139631[1]
  %eptr139632 = getelementptr inbounds i64, i64* %cloptr139629, i64 2                ; &eptr139632[2]
  %eptr139633 = getelementptr inbounds i64, i64* %cloptr139629, i64 3                ; &eptr139633[3]
  %eptr139634 = getelementptr inbounds i64, i64* %cloptr139629, i64 4                ; &eptr139634[4]
  store i64 %Zfm$Ycmb, i64* %eptr139631                                              ; *eptr139631 = %Zfm$Ycmb
  store i64 %VVX$_37foldr1, i64* %eptr139632                                         ; *eptr139632 = %VVX$_37foldr1
  store i64 %wSz$_37map1, i64* %eptr139633                                           ; *eptr139633 = %wSz$_37map1
  store i64 %SQv$_37take, i64* %eptr139634                                           ; *eptr139634 = %SQv$_37take
  %eptr139630 = getelementptr inbounds i64, i64* %cloptr139629, i64 0                ; &cloptr139629[0]
  %f139635 = ptrtoint void(i64,i64,i64)* @lam139552 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139635, i64* %eptr139630                                               ; store fptr
  %arg138268 = ptrtoint i64* %cloptr139629 to i64                                    ; closure cast; i64* -> i64
  %cloptr139636 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139637 = getelementptr inbounds i64, i64* %cloptr139636, i64 0                ; &cloptr139636[0]
  %f139638 = ptrtoint void(i64,i64,i64)* @lam139157 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139638, i64* %eptr139637                                               ; store fptr
  %arg138267 = ptrtoint i64* %cloptr139636 to i64                                    ; closure cast; i64* -> i64
  %cloptr139639 = inttoptr i64 %Zfm$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139639)                                       ; assert function application
  %i0ptr139640 = getelementptr inbounds i64, i64* %cloptr139639, i64 0               ; &cloptr139639[0]
  %f139642 = load i64, i64* %i0ptr139640, align 8                                    ; load; *i0ptr139640
  %fptr139641 = inttoptr i64 %f139642 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139641(i64 %Zfm$Ycmb, i64 %arg138268, i64 %arg138267); tail call
  ret void
}


define void @lam139552(i64 %env139553, i64 %_95138069, i64 %pFG$_37length) {
  %envptr139643 = inttoptr i64 %env139553 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139644 = getelementptr inbounds i64, i64* %envptr139643, i64 4              ; &envptr139643[4]
  %SQv$_37take = load i64, i64* %envptr139644, align 8                               ; load; *envptr139644
  %envptr139645 = inttoptr i64 %env139553 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139646 = getelementptr inbounds i64, i64* %envptr139645, i64 3              ; &envptr139645[3]
  %wSz$_37map1 = load i64, i64* %envptr139646, align 8                               ; load; *envptr139646
  %envptr139647 = inttoptr i64 %env139553 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139648 = getelementptr inbounds i64, i64* %envptr139647, i64 2              ; &envptr139647[2]
  %VVX$_37foldr1 = load i64, i64* %envptr139648, align 8                             ; load; *envptr139648
  %envptr139649 = inttoptr i64 %env139553 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139650 = getelementptr inbounds i64, i64* %envptr139649, i64 1              ; &envptr139649[1]
  %Zfm$Ycmb = load i64, i64* %envptr139650, align 8                                  ; load; *envptr139650
  %cloptr139651 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr139653 = getelementptr inbounds i64, i64* %cloptr139651, i64 1                ; &eptr139653[1]
  %eptr139654 = getelementptr inbounds i64, i64* %cloptr139651, i64 2                ; &eptr139654[2]
  %eptr139655 = getelementptr inbounds i64, i64* %cloptr139651, i64 3                ; &eptr139655[3]
  %eptr139656 = getelementptr inbounds i64, i64* %cloptr139651, i64 4                ; &eptr139656[4]
  %eptr139657 = getelementptr inbounds i64, i64* %cloptr139651, i64 5                ; &eptr139657[5]
  store i64 %pFG$_37length, i64* %eptr139653                                         ; *eptr139653 = %pFG$_37length
  store i64 %Zfm$Ycmb, i64* %eptr139654                                              ; *eptr139654 = %Zfm$Ycmb
  store i64 %VVX$_37foldr1, i64* %eptr139655                                         ; *eptr139655 = %VVX$_37foldr1
  store i64 %wSz$_37map1, i64* %eptr139656                                           ; *eptr139656 = %wSz$_37map1
  store i64 %SQv$_37take, i64* %eptr139657                                           ; *eptr139657 = %SQv$_37take
  %eptr139652 = getelementptr inbounds i64, i64* %cloptr139651, i64 0                ; &cloptr139651[0]
  %f139658 = ptrtoint void(i64,i64,i64)* @lam139550 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139658, i64* %eptr139652                                               ; store fptr
  %arg138271 = ptrtoint i64* %cloptr139651 to i64                                    ; closure cast; i64* -> i64
  %cloptr139659 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139660 = getelementptr inbounds i64, i64* %cloptr139659, i64 0                ; &cloptr139659[0]
  %f139661 = ptrtoint void(i64,i64,i64)* @lam139165 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139661, i64* %eptr139660                                               ; store fptr
  %arg138270 = ptrtoint i64* %cloptr139659 to i64                                    ; closure cast; i64* -> i64
  %cloptr139662 = inttoptr i64 %Zfm$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139662)                                       ; assert function application
  %i0ptr139663 = getelementptr inbounds i64, i64* %cloptr139662, i64 0               ; &cloptr139662[0]
  %f139665 = load i64, i64* %i0ptr139663, align 8                                    ; load; *i0ptr139663
  %fptr139664 = inttoptr i64 %f139665 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139664(i64 %Zfm$Ycmb, i64 %arg138271, i64 %arg138270); tail call
  ret void
}


define void @lam139550(i64 %env139551, i64 %_95138070, i64 %Cu0$_37foldl1) {
  %envptr139666 = inttoptr i64 %env139551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139667 = getelementptr inbounds i64, i64* %envptr139666, i64 5              ; &envptr139666[5]
  %SQv$_37take = load i64, i64* %envptr139667, align 8                               ; load; *envptr139667
  %envptr139668 = inttoptr i64 %env139551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139669 = getelementptr inbounds i64, i64* %envptr139668, i64 4              ; &envptr139668[4]
  %wSz$_37map1 = load i64, i64* %envptr139669, align 8                               ; load; *envptr139669
  %envptr139670 = inttoptr i64 %env139551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139671 = getelementptr inbounds i64, i64* %envptr139670, i64 3              ; &envptr139670[3]
  %VVX$_37foldr1 = load i64, i64* %envptr139671, align 8                             ; load; *envptr139671
  %envptr139672 = inttoptr i64 %env139551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139673 = getelementptr inbounds i64, i64* %envptr139672, i64 2              ; &envptr139672[2]
  %Zfm$Ycmb = load i64, i64* %envptr139673, align 8                                  ; load; *envptr139673
  %envptr139674 = inttoptr i64 %env139551 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139675 = getelementptr inbounds i64, i64* %envptr139674, i64 1              ; &envptr139674[1]
  %pFG$_37length = load i64, i64* %envptr139675, align 8                             ; load; *envptr139675
  %cloptr139676 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr139678 = getelementptr inbounds i64, i64* %cloptr139676, i64 1                ; &eptr139678[1]
  store i64 %Cu0$_37foldl1, i64* %eptr139678                                         ; *eptr139678 = %Cu0$_37foldl1
  %eptr139677 = getelementptr inbounds i64, i64* %cloptr139676, i64 0                ; &cloptr139676[0]
  %f139679 = ptrtoint void(i64,i64,i64)* @lam139548 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139679, i64* %eptr139677                                               ; store fptr
  %Qhb$_37last = ptrtoint i64* %cloptr139676 to i64                                  ; closure cast; i64* -> i64
  %cloptr139680 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139682 = getelementptr inbounds i64, i64* %cloptr139680, i64 1                ; &eptr139682[1]
  %eptr139683 = getelementptr inbounds i64, i64* %cloptr139680, i64 2                ; &eptr139683[2]
  store i64 %pFG$_37length, i64* %eptr139682                                         ; *eptr139682 = %pFG$_37length
  store i64 %SQv$_37take, i64* %eptr139683                                           ; *eptr139683 = %SQv$_37take
  %eptr139681 = getelementptr inbounds i64, i64* %cloptr139680, i64 0                ; &cloptr139680[0]
  %f139684 = ptrtoint void(i64,i64,i64,i64)* @lam139542 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139684, i64* %eptr139681                                               ; store fptr
  %SvR$_37drop_45right = ptrtoint i64* %cloptr139680 to i64                          ; closure cast; i64* -> i64
  %cloptr139685 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr139687 = getelementptr inbounds i64, i64* %cloptr139685, i64 1                ; &eptr139687[1]
  %eptr139688 = getelementptr inbounds i64, i64* %cloptr139685, i64 2                ; &eptr139688[2]
  %eptr139689 = getelementptr inbounds i64, i64* %cloptr139685, i64 3                ; &eptr139689[3]
  %eptr139690 = getelementptr inbounds i64, i64* %cloptr139685, i64 4                ; &eptr139690[4]
  %eptr139691 = getelementptr inbounds i64, i64* %cloptr139685, i64 5                ; &eptr139691[5]
  %eptr139692 = getelementptr inbounds i64, i64* %cloptr139685, i64 6                ; &eptr139692[6]
  store i64 %SvR$_37drop_45right, i64* %eptr139687                                   ; *eptr139687 = %SvR$_37drop_45right
  store i64 %pFG$_37length, i64* %eptr139688                                         ; *eptr139688 = %pFG$_37length
  store i64 %Cu0$_37foldl1, i64* %eptr139689                                         ; *eptr139689 = %Cu0$_37foldl1
  store i64 %Zfm$Ycmb, i64* %eptr139690                                              ; *eptr139690 = %Zfm$Ycmb
  store i64 %VVX$_37foldr1, i64* %eptr139691                                         ; *eptr139691 = %VVX$_37foldr1
  store i64 %Qhb$_37last, i64* %eptr139692                                           ; *eptr139692 = %Qhb$_37last
  %eptr139686 = getelementptr inbounds i64, i64* %cloptr139685, i64 0                ; &cloptr139685[0]
  %f139693 = ptrtoint void(i64,i64,i64)* @lam139538 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139693, i64* %eptr139686                                               ; store fptr
  %arg138291 = ptrtoint i64* %cloptr139685 to i64                                    ; closure cast; i64* -> i64
  %cloptr139694 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139696 = getelementptr inbounds i64, i64* %cloptr139694, i64 1                ; &eptr139696[1]
  %eptr139697 = getelementptr inbounds i64, i64* %cloptr139694, i64 2                ; &eptr139697[2]
  store i64 %VVX$_37foldr1, i64* %eptr139696                                         ; *eptr139696 = %VVX$_37foldr1
  store i64 %wSz$_37map1, i64* %eptr139697                                           ; *eptr139697 = %wSz$_37map1
  %eptr139695 = getelementptr inbounds i64, i64* %cloptr139694, i64 0                ; &cloptr139694[0]
  %f139698 = ptrtoint void(i64,i64,i64)* @lam139202 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139698, i64* %eptr139695                                               ; store fptr
  %arg138290 = ptrtoint i64* %cloptr139694 to i64                                    ; closure cast; i64* -> i64
  %cloptr139699 = inttoptr i64 %Zfm$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139699)                                       ; assert function application
  %i0ptr139700 = getelementptr inbounds i64, i64* %cloptr139699, i64 0               ; &cloptr139699[0]
  %f139702 = load i64, i64* %i0ptr139700, align 8                                    ; load; *i0ptr139700
  %fptr139701 = inttoptr i64 %f139702 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139701(i64 %Zfm$Ycmb, i64 %arg138291, i64 %arg138290); tail call
  ret void
}


define void @lam139548(i64 %env139549, i64 %cont138071, i64 %HNX$lst) {
  %envptr139703 = inttoptr i64 %env139549 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139704 = getelementptr inbounds i64, i64* %envptr139703, i64 1              ; &envptr139703[1]
  %Cu0$_37foldl1 = load i64, i64* %envptr139704, align 8                             ; load; *envptr139704
  %cloptr139705 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139706 = getelementptr inbounds i64, i64* %cloptr139705, i64 0                ; &cloptr139705[0]
  %f139707 = ptrtoint void(i64,i64,i64,i64)* @lam139546 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139707, i64* %eptr139706                                               ; store fptr
  %arg138275 = ptrtoint i64* %cloptr139705 to i64                                    ; closure cast; i64* -> i64
  %arg138274 = add i64 0, 0                                                          ; quoted ()
  %cloptr139708 = inttoptr i64 %Cu0$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139708)                                       ; assert function application
  %i0ptr139709 = getelementptr inbounds i64, i64* %cloptr139708, i64 0               ; &cloptr139708[0]
  %f139711 = load i64, i64* %i0ptr139709, align 8                                    ; load; *i0ptr139709
  %fptr139710 = inttoptr i64 %f139711 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139710(i64 %Cu0$_37foldl1, i64 %cont138071, i64 %arg138275, i64 %arg138274, i64 %HNX$lst); tail call
  ret void
}


define void @lam139546(i64 %env139547, i64 %cont138072, i64 %TOP$x, i64 %hCh$y) {
  %arg138279 = add i64 0, 0                                                          ; quoted ()
  %cloptr139712 = inttoptr i64 %cont138072 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139712)                                       ; assert function application
  %i0ptr139713 = getelementptr inbounds i64, i64* %cloptr139712, i64 0               ; &cloptr139712[0]
  %f139715 = load i64, i64* %i0ptr139713, align 8                                    ; load; *i0ptr139713
  %fptr139714 = inttoptr i64 %f139715 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139714(i64 %cont138072, i64 %arg138279, i64 %TOP$x) ; tail call
  ret void
}


define void @lam139542(i64 %env139543, i64 %cont138073, i64 %peo$lst, i64 %JKH$n) {
  %envptr139716 = inttoptr i64 %env139543 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139717 = getelementptr inbounds i64, i64* %envptr139716, i64 2              ; &envptr139716[2]
  %SQv$_37take = load i64, i64* %envptr139717, align 8                               ; load; *envptr139717
  %envptr139718 = inttoptr i64 %env139543 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139719 = getelementptr inbounds i64, i64* %envptr139718, i64 1              ; &envptr139718[1]
  %pFG$_37length = load i64, i64* %envptr139719, align 8                             ; load; *envptr139719
  %cloptr139720 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr139722 = getelementptr inbounds i64, i64* %cloptr139720, i64 1                ; &eptr139722[1]
  %eptr139723 = getelementptr inbounds i64, i64* %cloptr139720, i64 2                ; &eptr139723[2]
  %eptr139724 = getelementptr inbounds i64, i64* %cloptr139720, i64 3                ; &eptr139724[3]
  %eptr139725 = getelementptr inbounds i64, i64* %cloptr139720, i64 4                ; &eptr139725[4]
  store i64 %JKH$n, i64* %eptr139722                                                 ; *eptr139722 = %JKH$n
  store i64 %peo$lst, i64* %eptr139723                                               ; *eptr139723 = %peo$lst
  store i64 %cont138073, i64* %eptr139724                                            ; *eptr139724 = %cont138073
  store i64 %SQv$_37take, i64* %eptr139725                                           ; *eptr139725 = %SQv$_37take
  %eptr139721 = getelementptr inbounds i64, i64* %cloptr139720, i64 0                ; &cloptr139720[0]
  %f139726 = ptrtoint void(i64,i64,i64)* @lam139540 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139726, i64* %eptr139721                                               ; store fptr
  %arg138282 = ptrtoint i64* %cloptr139720 to i64                                    ; closure cast; i64* -> i64
  %cloptr139727 = inttoptr i64 %pFG$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139727)                                       ; assert function application
  %i0ptr139728 = getelementptr inbounds i64, i64* %cloptr139727, i64 0               ; &cloptr139727[0]
  %f139730 = load i64, i64* %i0ptr139728, align 8                                    ; load; *i0ptr139728
  %fptr139729 = inttoptr i64 %f139730 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139729(i64 %pFG$_37length, i64 %arg138282, i64 %peo$lst); tail call
  ret void
}


define void @lam139540(i64 %env139541, i64 %_95138074, i64 %a137968) {
  %envptr139731 = inttoptr i64 %env139541 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139732 = getelementptr inbounds i64, i64* %envptr139731, i64 4              ; &envptr139731[4]
  %SQv$_37take = load i64, i64* %envptr139732, align 8                               ; load; *envptr139732
  %envptr139733 = inttoptr i64 %env139541 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139734 = getelementptr inbounds i64, i64* %envptr139733, i64 3              ; &envptr139733[3]
  %cont138073 = load i64, i64* %envptr139734, align 8                                ; load; *envptr139734
  %envptr139735 = inttoptr i64 %env139541 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139736 = getelementptr inbounds i64, i64* %envptr139735, i64 2              ; &envptr139735[2]
  %peo$lst = load i64, i64* %envptr139736, align 8                                   ; load; *envptr139736
  %envptr139737 = inttoptr i64 %env139541 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139738 = getelementptr inbounds i64, i64* %envptr139737, i64 1              ; &envptr139737[1]
  %JKH$n = load i64, i64* %envptr139738, align 8                                     ; load; *envptr139738
  %a137969 = call i64 @prim__45(i64 %a137968, i64 %JKH$n)                            ; call prim__45
  %cloptr139739 = inttoptr i64 %SQv$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139739)                                       ; assert function application
  %i0ptr139740 = getelementptr inbounds i64, i64* %cloptr139739, i64 0               ; &cloptr139739[0]
  %f139742 = load i64, i64* %i0ptr139740, align 8                                    ; load; *i0ptr139740
  %fptr139741 = inttoptr i64 %f139742 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139741(i64 %SQv$_37take, i64 %cont138073, i64 %peo$lst, i64 %a137969); tail call
  ret void
}


define void @lam139538(i64 %env139539, i64 %_95138075, i64 %GbW$_37foldr) {
  %envptr139743 = inttoptr i64 %env139539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139744 = getelementptr inbounds i64, i64* %envptr139743, i64 6              ; &envptr139743[6]
  %Qhb$_37last = load i64, i64* %envptr139744, align 8                               ; load; *envptr139744
  %envptr139745 = inttoptr i64 %env139539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139746 = getelementptr inbounds i64, i64* %envptr139745, i64 5              ; &envptr139745[5]
  %VVX$_37foldr1 = load i64, i64* %envptr139746, align 8                             ; load; *envptr139746
  %envptr139747 = inttoptr i64 %env139539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139748 = getelementptr inbounds i64, i64* %envptr139747, i64 4              ; &envptr139747[4]
  %Zfm$Ycmb = load i64, i64* %envptr139748, align 8                                  ; load; *envptr139748
  %envptr139749 = inttoptr i64 %env139539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139750 = getelementptr inbounds i64, i64* %envptr139749, i64 3              ; &envptr139749[3]
  %Cu0$_37foldl1 = load i64, i64* %envptr139750, align 8                             ; load; *envptr139750
  %envptr139751 = inttoptr i64 %env139539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139752 = getelementptr inbounds i64, i64* %envptr139751, i64 2              ; &envptr139751[2]
  %pFG$_37length = load i64, i64* %envptr139752, align 8                             ; load; *envptr139752
  %envptr139753 = inttoptr i64 %env139539 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139754 = getelementptr inbounds i64, i64* %envptr139753, i64 1              ; &envptr139753[1]
  %SvR$_37drop_45right = load i64, i64* %envptr139754, align 8                       ; load; *envptr139754
  %cloptr139755 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr139757 = getelementptr inbounds i64, i64* %cloptr139755, i64 1                ; &eptr139757[1]
  store i64 %VVX$_37foldr1, i64* %eptr139757                                         ; *eptr139757 = %VVX$_37foldr1
  %eptr139756 = getelementptr inbounds i64, i64* %cloptr139755, i64 0                ; &cloptr139755[0]
  %f139758 = ptrtoint void(i64,i64,i64,i64)* @lam139536 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139758, i64* %eptr139756                                               ; store fptr
  %edO$_37map1 = ptrtoint i64* %cloptr139755 to i64                                  ; closure cast; i64* -> i64
  %cloptr139759 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr139761 = getelementptr inbounds i64, i64* %cloptr139759, i64 1                ; &eptr139761[1]
  %eptr139762 = getelementptr inbounds i64, i64* %cloptr139759, i64 2                ; &eptr139762[2]
  %eptr139763 = getelementptr inbounds i64, i64* %cloptr139759, i64 3                ; &eptr139763[3]
  store i64 %SvR$_37drop_45right, i64* %eptr139761                                   ; *eptr139761 = %SvR$_37drop_45right
  store i64 %GbW$_37foldr, i64* %eptr139762                                          ; *eptr139762 = %GbW$_37foldr
  store i64 %Qhb$_37last, i64* %eptr139763                                           ; *eptr139763 = %Qhb$_37last
  %eptr139760 = getelementptr inbounds i64, i64* %cloptr139759, i64 0                ; &cloptr139759[0]
  %f139764 = ptrtoint void(i64,i64)* @lam139528 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f139764, i64* %eptr139760                                               ; store fptr
  %zrg$_37map = ptrtoint i64* %cloptr139759 to i64                                   ; closure cast; i64* -> i64
  %cloptr139765 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139767 = getelementptr inbounds i64, i64* %cloptr139765, i64 1                ; &eptr139767[1]
  %eptr139768 = getelementptr inbounds i64, i64* %cloptr139765, i64 2                ; &eptr139768[2]
  store i64 %pFG$_37length, i64* %eptr139767                                         ; *eptr139767 = %pFG$_37length
  store i64 %Cu0$_37foldl1, i64* %eptr139768                                         ; *eptr139768 = %Cu0$_37foldl1
  %eptr139766 = getelementptr inbounds i64, i64* %cloptr139765, i64 0                ; &cloptr139765[0]
  %f139769 = ptrtoint void(i64,i64,i64)* @lam139515 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139769, i64* %eptr139766                                               ; store fptr
  %arg138333 = ptrtoint i64* %cloptr139765 to i64                                    ; closure cast; i64* -> i64
  %cloptr139770 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr139772 = getelementptr inbounds i64, i64* %cloptr139770, i64 1                ; &eptr139772[1]
  %eptr139773 = getelementptr inbounds i64, i64* %cloptr139770, i64 2                ; &eptr139773[2]
  %eptr139774 = getelementptr inbounds i64, i64* %cloptr139770, i64 3                ; &eptr139774[3]
  store i64 %VVX$_37foldr1, i64* %eptr139772                                         ; *eptr139772 = %VVX$_37foldr1
  store i64 %edO$_37map1, i64* %eptr139773                                           ; *eptr139773 = %edO$_37map1
  store i64 %GbW$_37foldr, i64* %eptr139774                                          ; *eptr139774 = %GbW$_37foldr
  %eptr139771 = getelementptr inbounds i64, i64* %cloptr139770, i64 0                ; &cloptr139770[0]
  %f139775 = ptrtoint void(i64,i64,i64)* @lam139239 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139775, i64* %eptr139771                                               ; store fptr
  %arg138332 = ptrtoint i64* %cloptr139770 to i64                                    ; closure cast; i64* -> i64
  %cloptr139776 = inttoptr i64 %Zfm$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139776)                                       ; assert function application
  %i0ptr139777 = getelementptr inbounds i64, i64* %cloptr139776, i64 0               ; &cloptr139776[0]
  %f139779 = load i64, i64* %i0ptr139777, align 8                                    ; load; *i0ptr139777
  %fptr139778 = inttoptr i64 %f139779 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139778(i64 %Zfm$Ycmb, i64 %arg138333, i64 %arg138332); tail call
  ret void
}


define void @lam139536(i64 %env139537, i64 %cont138076, i64 %E9B$f, i64 %tQE$lst) {
  %envptr139780 = inttoptr i64 %env139537 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139781 = getelementptr inbounds i64, i64* %envptr139780, i64 1              ; &envptr139780[1]
  %VVX$_37foldr1 = load i64, i64* %envptr139781, align 8                             ; load; *envptr139781
  %cloptr139782 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr139784 = getelementptr inbounds i64, i64* %cloptr139782, i64 1                ; &eptr139784[1]
  store i64 %E9B$f, i64* %eptr139784                                                 ; *eptr139784 = %E9B$f
  %eptr139783 = getelementptr inbounds i64, i64* %cloptr139782, i64 0                ; &cloptr139782[0]
  %f139785 = ptrtoint void(i64,i64,i64,i64)* @lam139534 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139785, i64* %eptr139783                                               ; store fptr
  %arg138295 = ptrtoint i64* %cloptr139782 to i64                                    ; closure cast; i64* -> i64
  %arg138294 = add i64 0, 0                                                          ; quoted ()
  %cloptr139786 = inttoptr i64 %VVX$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139786)                                       ; assert function application
  %i0ptr139787 = getelementptr inbounds i64, i64* %cloptr139786, i64 0               ; &cloptr139786[0]
  %f139789 = load i64, i64* %i0ptr139787, align 8                                    ; load; *i0ptr139787
  %fptr139788 = inttoptr i64 %f139789 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139788(i64 %VVX$_37foldr1, i64 %cont138076, i64 %arg138295, i64 %arg138294, i64 %tQE$lst); tail call
  ret void
}


define void @lam139534(i64 %env139535, i64 %cont138077, i64 %aVe$v, i64 %wLp$r) {
  %envptr139790 = inttoptr i64 %env139535 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139791 = getelementptr inbounds i64, i64* %envptr139790, i64 1              ; &envptr139790[1]
  %E9B$f = load i64, i64* %envptr139791, align 8                                     ; load; *envptr139791
  %cloptr139792 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139794 = getelementptr inbounds i64, i64* %cloptr139792, i64 1                ; &eptr139794[1]
  %eptr139795 = getelementptr inbounds i64, i64* %cloptr139792, i64 2                ; &eptr139795[2]
  store i64 %wLp$r, i64* %eptr139794                                                 ; *eptr139794 = %wLp$r
  store i64 %cont138077, i64* %eptr139795                                            ; *eptr139795 = %cont138077
  %eptr139793 = getelementptr inbounds i64, i64* %cloptr139792, i64 0                ; &cloptr139792[0]
  %f139796 = ptrtoint void(i64,i64,i64)* @lam139532 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139796, i64* %eptr139793                                               ; store fptr
  %arg138299 = ptrtoint i64* %cloptr139792 to i64                                    ; closure cast; i64* -> i64
  %cloptr139797 = inttoptr i64 %E9B$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139797)                                       ; assert function application
  %i0ptr139798 = getelementptr inbounds i64, i64* %cloptr139797, i64 0               ; &cloptr139797[0]
  %f139800 = load i64, i64* %i0ptr139798, align 8                                    ; load; *i0ptr139798
  %fptr139799 = inttoptr i64 %f139800 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139799(i64 %E9B$f, i64 %arg138299, i64 %aVe$v)      ; tail call
  ret void
}


define void @lam139532(i64 %env139533, i64 %_95138078, i64 %a137978) {
  %envptr139801 = inttoptr i64 %env139533 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139802 = getelementptr inbounds i64, i64* %envptr139801, i64 2              ; &envptr139801[2]
  %cont138077 = load i64, i64* %envptr139802, align 8                                ; load; *envptr139802
  %envptr139803 = inttoptr i64 %env139533 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139804 = getelementptr inbounds i64, i64* %envptr139803, i64 1              ; &envptr139803[1]
  %wLp$r = load i64, i64* %envptr139804, align 8                                     ; load; *envptr139804
  %retprim138079 = call i64 @prim_cons(i64 %a137978, i64 %wLp$r)                     ; call prim_cons
  %arg138304 = add i64 0, 0                                                          ; quoted ()
  %cloptr139805 = inttoptr i64 %cont138077 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139805)                                       ; assert function application
  %i0ptr139806 = getelementptr inbounds i64, i64* %cloptr139805, i64 0               ; &cloptr139805[0]
  %f139808 = load i64, i64* %i0ptr139806, align 8                                    ; load; *i0ptr139806
  %fptr139807 = inttoptr i64 %f139808 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139807(i64 %cont138077, i64 %arg138304, i64 %retprim138079); tail call
  ret void
}


define void @lam139528(i64 %env139529, i64 %En4$args138081) {
  %envptr139809 = inttoptr i64 %env139529 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139810 = getelementptr inbounds i64, i64* %envptr139809, i64 3              ; &envptr139809[3]
  %Qhb$_37last = load i64, i64* %envptr139810, align 8                               ; load; *envptr139810
  %envptr139811 = inttoptr i64 %env139529 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139812 = getelementptr inbounds i64, i64* %envptr139811, i64 2              ; &envptr139811[2]
  %GbW$_37foldr = load i64, i64* %envptr139812, align 8                              ; load; *envptr139812
  %envptr139813 = inttoptr i64 %env139529 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139814 = getelementptr inbounds i64, i64* %envptr139813, i64 1              ; &envptr139813[1]
  %SvR$_37drop_45right = load i64, i64* %envptr139814, align 8                       ; load; *envptr139814
  %cont138080 = call i64 @prim_car(i64 %En4$args138081)                              ; call prim_car
  %En4$args = call i64 @prim_cdr(i64 %En4$args138081)                                ; call prim_cdr
  %UEf$f = call i64 @prim_car(i64 %En4$args)                                         ; call prim_car
  %HAm$lsts = call i64 @prim_cdr(i64 %En4$args)                                      ; call prim_cdr
  %arg138311 = add i64 0, 0                                                          ; quoted ()
  %a137982 = call i64 @prim_cons(i64 %arg138311, i64 %HAm$lsts)                      ; call prim_cons
  %cloptr139815 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr139817 = getelementptr inbounds i64, i64* %cloptr139815, i64 1                ; &eptr139817[1]
  %eptr139818 = getelementptr inbounds i64, i64* %cloptr139815, i64 2                ; &eptr139818[2]
  %eptr139819 = getelementptr inbounds i64, i64* %cloptr139815, i64 3                ; &eptr139819[3]
  store i64 %SvR$_37drop_45right, i64* %eptr139817                                   ; *eptr139817 = %SvR$_37drop_45right
  store i64 %Qhb$_37last, i64* %eptr139818                                           ; *eptr139818 = %Qhb$_37last
  store i64 %UEf$f, i64* %eptr139819                                                 ; *eptr139819 = %UEf$f
  %eptr139816 = getelementptr inbounds i64, i64* %cloptr139815, i64 0                ; &cloptr139815[0]
  %f139820 = ptrtoint void(i64,i64)* @lam139525 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f139820, i64* %eptr139816                                               ; store fptr
  %arg138313 = ptrtoint i64* %cloptr139815 to i64                                    ; closure cast; i64* -> i64
  %a137983 = call i64 @prim_cons(i64 %arg138313, i64 %a137982)                       ; call prim_cons
  %cps_45lst138089 = call i64 @prim_cons(i64 %cont138080, i64 %a137983)              ; call prim_cons
  %cloptr139821 = inttoptr i64 %GbW$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139821)                                       ; assert function application
  %i0ptr139822 = getelementptr inbounds i64, i64* %cloptr139821, i64 0               ; &cloptr139821[0]
  %f139824 = load i64, i64* %i0ptr139822, align 8                                    ; load; *i0ptr139822
  %fptr139823 = inttoptr i64 %f139824 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139823(i64 %GbW$_37foldr, i64 %cps_45lst138089)     ; tail call
  ret void
}


define void @lam139525(i64 %env139526, i64 %Cet$fargs138083) {
  %envptr139825 = inttoptr i64 %env139526 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139826 = getelementptr inbounds i64, i64* %envptr139825, i64 3              ; &envptr139825[3]
  %UEf$f = load i64, i64* %envptr139826, align 8                                     ; load; *envptr139826
  %envptr139827 = inttoptr i64 %env139526 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139828 = getelementptr inbounds i64, i64* %envptr139827, i64 2              ; &envptr139827[2]
  %Qhb$_37last = load i64, i64* %envptr139828, align 8                               ; load; *envptr139828
  %envptr139829 = inttoptr i64 %env139526 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139830 = getelementptr inbounds i64, i64* %envptr139829, i64 1              ; &envptr139829[1]
  %SvR$_37drop_45right = load i64, i64* %envptr139830, align 8                       ; load; *envptr139830
  %cont138082 = call i64 @prim_car(i64 %Cet$fargs138083)                             ; call prim_car
  %Cet$fargs = call i64 @prim_cdr(i64 %Cet$fargs138083)                              ; call prim_cdr
  %cloptr139831 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr139833 = getelementptr inbounds i64, i64* %cloptr139831, i64 1                ; &eptr139833[1]
  %eptr139834 = getelementptr inbounds i64, i64* %cloptr139831, i64 2                ; &eptr139834[2]
  %eptr139835 = getelementptr inbounds i64, i64* %cloptr139831, i64 3                ; &eptr139835[3]
  %eptr139836 = getelementptr inbounds i64, i64* %cloptr139831, i64 4                ; &eptr139836[4]
  store i64 %cont138082, i64* %eptr139833                                            ; *eptr139833 = %cont138082
  store i64 %Qhb$_37last, i64* %eptr139834                                           ; *eptr139834 = %Qhb$_37last
  store i64 %UEf$f, i64* %eptr139835                                                 ; *eptr139835 = %UEf$f
  store i64 %Cet$fargs, i64* %eptr139836                                             ; *eptr139836 = %Cet$fargs
  %eptr139832 = getelementptr inbounds i64, i64* %cloptr139831, i64 0                ; &cloptr139831[0]
  %f139837 = ptrtoint void(i64,i64,i64)* @lam139523 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139837, i64* %eptr139832                                               ; store fptr
  %arg138318 = ptrtoint i64* %cloptr139831 to i64                                    ; closure cast; i64* -> i64
  %arg138316 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr139838 = inttoptr i64 %SvR$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139838)                                       ; assert function application
  %i0ptr139839 = getelementptr inbounds i64, i64* %cloptr139838, i64 0               ; &cloptr139838[0]
  %f139841 = load i64, i64* %i0ptr139839, align 8                                    ; load; *i0ptr139839
  %fptr139840 = inttoptr i64 %f139841 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139840(i64 %SvR$_37drop_45right, i64 %arg138318, i64 %Cet$fargs, i64 %arg138316); tail call
  ret void
}


define void @lam139523(i64 %env139524, i64 %_95138084, i64 %a137979) {
  %envptr139842 = inttoptr i64 %env139524 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139843 = getelementptr inbounds i64, i64* %envptr139842, i64 4              ; &envptr139842[4]
  %Cet$fargs = load i64, i64* %envptr139843, align 8                                 ; load; *envptr139843
  %envptr139844 = inttoptr i64 %env139524 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139845 = getelementptr inbounds i64, i64* %envptr139844, i64 3              ; &envptr139844[3]
  %UEf$f = load i64, i64* %envptr139845, align 8                                     ; load; *envptr139845
  %envptr139846 = inttoptr i64 %env139524 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139847 = getelementptr inbounds i64, i64* %envptr139846, i64 2              ; &envptr139846[2]
  %Qhb$_37last = load i64, i64* %envptr139847, align 8                               ; load; *envptr139847
  %envptr139848 = inttoptr i64 %env139524 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139849 = getelementptr inbounds i64, i64* %envptr139848, i64 1              ; &envptr139848[1]
  %cont138082 = load i64, i64* %envptr139849, align 8                                ; load; *envptr139849
  %cloptr139850 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr139852 = getelementptr inbounds i64, i64* %cloptr139850, i64 1                ; &eptr139852[1]
  %eptr139853 = getelementptr inbounds i64, i64* %cloptr139850, i64 2                ; &eptr139853[2]
  %eptr139854 = getelementptr inbounds i64, i64* %cloptr139850, i64 3                ; &eptr139854[3]
  store i64 %cont138082, i64* %eptr139852                                            ; *eptr139852 = %cont138082
  store i64 %Qhb$_37last, i64* %eptr139853                                           ; *eptr139853 = %Qhb$_37last
  store i64 %Cet$fargs, i64* %eptr139854                                             ; *eptr139854 = %Cet$fargs
  %eptr139851 = getelementptr inbounds i64, i64* %cloptr139850, i64 0                ; &cloptr139850[0]
  %f139855 = ptrtoint void(i64,i64,i64)* @lam139521 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139855, i64* %eptr139851                                               ; store fptr
  %arg138321 = ptrtoint i64* %cloptr139850 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst138088 = call i64 @prim_cons(i64 %arg138321, i64 %a137979)               ; call prim_cons
  %cloptr139856 = inttoptr i64 %UEf$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139856)                                       ; assert function application
  %i0ptr139857 = getelementptr inbounds i64, i64* %cloptr139856, i64 0               ; &cloptr139856[0]
  %f139859 = load i64, i64* %i0ptr139857, align 8                                    ; load; *i0ptr139857
  %fptr139858 = inttoptr i64 %f139859 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139858(i64 %UEf$f, i64 %cps_45lst138088)            ; tail call
  ret void
}


define void @lam139521(i64 %env139522, i64 %_95138085, i64 %a137980) {
  %envptr139860 = inttoptr i64 %env139522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139861 = getelementptr inbounds i64, i64* %envptr139860, i64 3              ; &envptr139860[3]
  %Cet$fargs = load i64, i64* %envptr139861, align 8                                 ; load; *envptr139861
  %envptr139862 = inttoptr i64 %env139522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139863 = getelementptr inbounds i64, i64* %envptr139862, i64 2              ; &envptr139862[2]
  %Qhb$_37last = load i64, i64* %envptr139863, align 8                               ; load; *envptr139863
  %envptr139864 = inttoptr i64 %env139522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139865 = getelementptr inbounds i64, i64* %envptr139864, i64 1              ; &envptr139864[1]
  %cont138082 = load i64, i64* %envptr139865, align 8                                ; load; *envptr139865
  %cloptr139866 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139868 = getelementptr inbounds i64, i64* %cloptr139866, i64 1                ; &eptr139868[1]
  %eptr139869 = getelementptr inbounds i64, i64* %cloptr139866, i64 2                ; &eptr139869[2]
  store i64 %cont138082, i64* %eptr139868                                            ; *eptr139868 = %cont138082
  store i64 %a137980, i64* %eptr139869                                               ; *eptr139869 = %a137980
  %eptr139867 = getelementptr inbounds i64, i64* %cloptr139866, i64 0                ; &cloptr139866[0]
  %f139870 = ptrtoint void(i64,i64,i64)* @lam139519 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139870, i64* %eptr139867                                               ; store fptr
  %arg138323 = ptrtoint i64* %cloptr139866 to i64                                    ; closure cast; i64* -> i64
  %cloptr139871 = inttoptr i64 %Qhb$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139871)                                       ; assert function application
  %i0ptr139872 = getelementptr inbounds i64, i64* %cloptr139871, i64 0               ; &cloptr139871[0]
  %f139874 = load i64, i64* %i0ptr139872, align 8                                    ; load; *i0ptr139872
  %fptr139873 = inttoptr i64 %f139874 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139873(i64 %Qhb$_37last, i64 %arg138323, i64 %Cet$fargs); tail call
  ret void
}


define void @lam139519(i64 %env139520, i64 %_95138086, i64 %a137981) {
  %envptr139875 = inttoptr i64 %env139520 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139876 = getelementptr inbounds i64, i64* %envptr139875, i64 2              ; &envptr139875[2]
  %a137980 = load i64, i64* %envptr139876, align 8                                   ; load; *envptr139876
  %envptr139877 = inttoptr i64 %env139520 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139878 = getelementptr inbounds i64, i64* %envptr139877, i64 1              ; &envptr139877[1]
  %cont138082 = load i64, i64* %envptr139878, align 8                                ; load; *envptr139878
  %retprim138087 = call i64 @prim_cons(i64 %a137980, i64 %a137981)                   ; call prim_cons
  %arg138328 = add i64 0, 0                                                          ; quoted ()
  %cloptr139879 = inttoptr i64 %cont138082 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139879)                                       ; assert function application
  %i0ptr139880 = getelementptr inbounds i64, i64* %cloptr139879, i64 0               ; &cloptr139879[0]
  %f139882 = load i64, i64* %i0ptr139880, align 8                                    ; load; *i0ptr139880
  %fptr139881 = inttoptr i64 %f139882 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139881(i64 %cont138082, i64 %arg138328, i64 %retprim138087); tail call
  ret void
}


define void @lam139515(i64 %env139516, i64 %_95138090, i64 %BZf$_37foldl) {
  %envptr139883 = inttoptr i64 %env139516 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139884 = getelementptr inbounds i64, i64* %envptr139883, i64 2              ; &envptr139883[2]
  %Cu0$_37foldl1 = load i64, i64* %envptr139884, align 8                             ; load; *envptr139884
  %envptr139885 = inttoptr i64 %env139516 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139886 = getelementptr inbounds i64, i64* %envptr139885, i64 1              ; &envptr139885[1]
  %pFG$_37length = load i64, i64* %envptr139886, align 8                             ; load; *envptr139886
  %cloptr139887 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139888 = getelementptr inbounds i64, i64* %cloptr139887, i64 0                ; &cloptr139887[0]
  %f139889 = ptrtoint void(i64,i64,i64,i64)* @lam139513 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139889, i64* %eptr139888                                               ; store fptr
  %dR5$_37_62 = ptrtoint i64* %cloptr139887 to i64                                   ; closure cast; i64* -> i64
  %cloptr139890 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139891 = getelementptr inbounds i64, i64* %cloptr139890, i64 0                ; &cloptr139890[0]
  %f139892 = ptrtoint void(i64,i64,i64,i64)* @lam139510 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139892, i64* %eptr139891                                               ; store fptr
  %UYf$_37_62_61 = ptrtoint i64* %cloptr139890 to i64                                ; closure cast; i64* -> i64
  %arg138348 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg138347 = add i64 0, 0                                                          ; quoted ()
  %qxw$_37append = call i64 @prim_make_45vector(i64 %arg138348, i64 %arg138347)      ; call prim_make_45vector
  %arg138350 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr139893 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr139895 = getelementptr inbounds i64, i64* %cloptr139893, i64 1                ; &eptr139895[1]
  store i64 %qxw$_37append, i64* %eptr139895                                         ; *eptr139895 = %qxw$_37append
  %eptr139894 = getelementptr inbounds i64, i64* %cloptr139893, i64 0                ; &cloptr139893[0]
  %f139896 = ptrtoint void(i64,i64,i64,i64)* @lam139504 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139896, i64* %eptr139894                                               ; store fptr
  %arg138349 = ptrtoint i64* %cloptr139893 to i64                                    ; closure cast; i64* -> i64
  %Dn2$_950 = call i64 @prim_vector_45set_33(i64 %qxw$_37append, i64 %arg138350, i64 %arg138349); call prim_vector_45set_33
  %arg138369 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138180 = call i64 @prim_vector_45ref(i64 %qxw$_37append, i64 %arg138369)   ; call prim_vector_45ref
  %cloptr139897 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr139899 = getelementptr inbounds i64, i64* %cloptr139897, i64 1                ; &eptr139899[1]
  %eptr139900 = getelementptr inbounds i64, i64* %cloptr139897, i64 2                ; &eptr139900[2]
  %eptr139901 = getelementptr inbounds i64, i64* %cloptr139897, i64 3                ; &eptr139901[3]
  store i64 %pFG$_37length, i64* %eptr139899                                         ; *eptr139899 = %pFG$_37length
  store i64 %Cu0$_37foldl1, i64* %eptr139900                                         ; *eptr139900 = %Cu0$_37foldl1
  store i64 %dR5$_37_62, i64* %eptr139901                                            ; *eptr139901 = %dR5$_37_62
  %eptr139898 = getelementptr inbounds i64, i64* %cloptr139897, i64 0                ; &cloptr139897[0]
  %f139902 = ptrtoint void(i64,i64,i64)* @lam139496 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139902, i64* %eptr139898                                               ; store fptr
  %arg138373 = ptrtoint i64* %cloptr139897 to i64                                    ; closure cast; i64* -> i64
  %arg138372 = add i64 0, 0                                                          ; quoted ()
  %cloptr139903 = inttoptr i64 %arg138373 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139903)                                       ; assert function application
  %i0ptr139904 = getelementptr inbounds i64, i64* %cloptr139903, i64 0               ; &cloptr139903[0]
  %f139906 = load i64, i64* %i0ptr139904, align 8                                    ; load; *i0ptr139904
  %fptr139905 = inttoptr i64 %f139906 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139905(i64 %arg138373, i64 %arg138372, i64 %retprim138180); tail call
  ret void
}


define void @lam139513(i64 %env139514, i64 %cont138091, i64 %k0n$a, i64 %FK8$b) {
  %a137991 = call i64 @prim__60_61(i64 %k0n$a, i64 %FK8$b)                           ; call prim__60_61
  %retprim138092 = call i64 @prim_not(i64 %a137991)                                  ; call prim_not
  %arg138339 = add i64 0, 0                                                          ; quoted ()
  %cloptr139907 = inttoptr i64 %cont138091 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139907)                                       ; assert function application
  %i0ptr139908 = getelementptr inbounds i64, i64* %cloptr139907, i64 0               ; &cloptr139907[0]
  %f139910 = load i64, i64* %i0ptr139908, align 8                                    ; load; *i0ptr139908
  %fptr139909 = inttoptr i64 %f139910 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139909(i64 %cont138091, i64 %arg138339, i64 %retprim138092); tail call
  ret void
}


define void @lam139510(i64 %env139511, i64 %cont138093, i64 %J2g$a, i64 %q1T$b) {
  %a137992 = call i64 @prim__60(i64 %J2g$a, i64 %q1T$b)                              ; call prim__60
  %retprim138094 = call i64 @prim_not(i64 %a137992)                                  ; call prim_not
  %arg138345 = add i64 0, 0                                                          ; quoted ()
  %cloptr139911 = inttoptr i64 %cont138093 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139911)                                       ; assert function application
  %i0ptr139912 = getelementptr inbounds i64, i64* %cloptr139911, i64 0               ; &cloptr139911[0]
  %f139914 = load i64, i64* %i0ptr139912, align 8                                    ; load; *i0ptr139912
  %fptr139913 = inttoptr i64 %f139914 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139913(i64 %cont138093, i64 %arg138345, i64 %retprim138094); tail call
  ret void
}


define void @lam139504(i64 %env139505, i64 %cont138177, i64 %C9w$ls0, i64 %OAK$ls1) {
  %envptr139915 = inttoptr i64 %env139505 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139916 = getelementptr inbounds i64, i64* %envptr139915, i64 1              ; &envptr139915[1]
  %qxw$_37append = load i64, i64* %envptr139916, align 8                             ; load; *envptr139916
  %a137993 = call i64 @prim_null_63(i64 %C9w$ls0)                                    ; call prim_null_63
  %cmp139917 = icmp eq i64 %a137993, 15                                              ; false?
  br i1 %cmp139917, label %else139919, label %then139918                             ; if

then139918:
  %arg138354 = add i64 0, 0                                                          ; quoted ()
  %cloptr139920 = inttoptr i64 %cont138177 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139920)                                       ; assert function application
  %i0ptr139921 = getelementptr inbounds i64, i64* %cloptr139920, i64 0               ; &cloptr139920[0]
  %f139923 = load i64, i64* %i0ptr139921, align 8                                    ; load; *i0ptr139921
  %fptr139922 = inttoptr i64 %f139923 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139922(i64 %cont138177, i64 %arg138354, i64 %OAK$ls1); tail call
  ret void

else139919:
  %a137994 = call i64 @prim_car(i64 %C9w$ls0)                                        ; call prim_car
  %arg138357 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a137995 = call i64 @prim_vector_45ref(i64 %qxw$_37append, i64 %arg138357)         ; call prim_vector_45ref
  %a137996 = call i64 @prim_cdr(i64 %C9w$ls0)                                        ; call prim_cdr
  %cloptr139924 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139926 = getelementptr inbounds i64, i64* %cloptr139924, i64 1                ; &eptr139926[1]
  %eptr139927 = getelementptr inbounds i64, i64* %cloptr139924, i64 2                ; &eptr139927[2]
  store i64 %cont138177, i64* %eptr139926                                            ; *eptr139926 = %cont138177
  store i64 %a137994, i64* %eptr139927                                               ; *eptr139927 = %a137994
  %eptr139925 = getelementptr inbounds i64, i64* %cloptr139924, i64 0                ; &cloptr139924[0]
  %f139928 = ptrtoint void(i64,i64,i64)* @lam139501 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139928, i64* %eptr139925                                               ; store fptr
  %arg138362 = ptrtoint i64* %cloptr139924 to i64                                    ; closure cast; i64* -> i64
  %cloptr139929 = inttoptr i64 %a137995 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139929)                                       ; assert function application
  %i0ptr139930 = getelementptr inbounds i64, i64* %cloptr139929, i64 0               ; &cloptr139929[0]
  %f139932 = load i64, i64* %i0ptr139930, align 8                                    ; load; *i0ptr139930
  %fptr139931 = inttoptr i64 %f139932 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139931(i64 %a137995, i64 %arg138362, i64 %a137996, i64 %OAK$ls1); tail call
  ret void
}


define void @lam139501(i64 %env139502, i64 %_95138178, i64 %a137997) {
  %envptr139933 = inttoptr i64 %env139502 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139934 = getelementptr inbounds i64, i64* %envptr139933, i64 2              ; &envptr139933[2]
  %a137994 = load i64, i64* %envptr139934, align 8                                   ; load; *envptr139934
  %envptr139935 = inttoptr i64 %env139502 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139936 = getelementptr inbounds i64, i64* %envptr139935, i64 1              ; &envptr139935[1]
  %cont138177 = load i64, i64* %envptr139936, align 8                                ; load; *envptr139936
  %retprim138179 = call i64 @prim_cons(i64 %a137994, i64 %a137997)                   ; call prim_cons
  %arg138367 = add i64 0, 0                                                          ; quoted ()
  %cloptr139937 = inttoptr i64 %cont138177 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139937)                                       ; assert function application
  %i0ptr139938 = getelementptr inbounds i64, i64* %cloptr139937, i64 0               ; &cloptr139937[0]
  %f139940 = load i64, i64* %i0ptr139938, align 8                                    ; load; *i0ptr139938
  %fptr139939 = inttoptr i64 %f139940 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139939(i64 %cont138177, i64 %arg138367, i64 %retprim138179); tail call
  ret void
}


define void @lam139496(i64 %env139497, i64 %_95138095, i64 %T1F$_37append) {
  %envptr139941 = inttoptr i64 %env139497 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139942 = getelementptr inbounds i64, i64* %envptr139941, i64 3              ; &envptr139941[3]
  %dR5$_37_62 = load i64, i64* %envptr139942, align 8                                ; load; *envptr139942
  %envptr139943 = inttoptr i64 %env139497 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139944 = getelementptr inbounds i64, i64* %envptr139943, i64 2              ; &envptr139943[2]
  %Cu0$_37foldl1 = load i64, i64* %envptr139944, align 8                             ; load; *envptr139944
  %envptr139945 = inttoptr i64 %env139497 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr139946 = getelementptr inbounds i64, i64* %envptr139945, i64 1              ; &envptr139945[1]
  %pFG$_37length = load i64, i64* %envptr139946, align 8                             ; load; *envptr139946
  %cloptr139947 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139948 = getelementptr inbounds i64, i64* %cloptr139947, i64 0                ; &cloptr139947[0]
  %f139949 = ptrtoint void(i64,i64,i64)* @lam139494 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139949, i64* %eptr139948                                               ; store fptr
  %EUJ$_37list_63 = ptrtoint i64* %cloptr139947 to i64                               ; closure cast; i64* -> i64
  %cloptr139950 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139951 = getelementptr inbounds i64, i64* %cloptr139950, i64 0                ; &cloptr139950[0]
  %f139952 = ptrtoint void(i64,i64,i64,i64)* @lam139454 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139952, i64* %eptr139951                                               ; store fptr
  %azM$_37drop = ptrtoint i64* %cloptr139950 to i64                                  ; closure cast; i64* -> i64
  %cloptr139953 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139954 = getelementptr inbounds i64, i64* %cloptr139953, i64 0                ; &cloptr139953[0]
  %f139955 = ptrtoint void(i64,i64,i64,i64)* @lam139414 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f139955, i64* %eptr139954                                               ; store fptr
  %FOl$_37memv = ptrtoint i64* %cloptr139953 to i64                                  ; closure cast; i64* -> i64
  %cloptr139956 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr139958 = getelementptr inbounds i64, i64* %cloptr139956, i64 1                ; &eptr139958[1]
  store i64 %Cu0$_37foldl1, i64* %eptr139958                                         ; *eptr139958 = %Cu0$_37foldl1
  %eptr139957 = getelementptr inbounds i64, i64* %cloptr139956, i64 0                ; &cloptr139956[0]
  %f139959 = ptrtoint void(i64,i64)* @lam139383 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f139959, i64* %eptr139957                                               ; store fptr
  %ofQ$_37_47 = ptrtoint i64* %cloptr139956 to i64                                   ; closure cast; i64* -> i64
  %cloptr139960 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139961 = getelementptr inbounds i64, i64* %cloptr139960, i64 0                ; &cloptr139960[0]
  %f139962 = ptrtoint void(i64,i64,i64)* @lam139375 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139962, i64* %eptr139961                                               ; store fptr
  %AXX$_37first = ptrtoint i64* %cloptr139960 to i64                                 ; closure cast; i64* -> i64
  %cloptr139963 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139964 = getelementptr inbounds i64, i64* %cloptr139963, i64 0                ; &cloptr139963[0]
  %f139965 = ptrtoint void(i64,i64,i64)* @lam139372 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139965, i64* %eptr139964                                               ; store fptr
  %oDY$_37second = ptrtoint i64* %cloptr139963 to i64                                ; closure cast; i64* -> i64
  %cloptr139966 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139967 = getelementptr inbounds i64, i64* %cloptr139966, i64 0                ; &cloptr139966[0]
  %f139968 = ptrtoint void(i64,i64,i64)* @lam139369 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139968, i64* %eptr139967                                               ; store fptr
  %lY6$_37third = ptrtoint i64* %cloptr139966 to i64                                 ; closure cast; i64* -> i64
  %cloptr139969 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139970 = getelementptr inbounds i64, i64* %cloptr139969, i64 0                ; &cloptr139969[0]
  %f139971 = ptrtoint void(i64,i64,i64)* @lam139366 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139971, i64* %eptr139970                                               ; store fptr
  %LCW$_37fourth = ptrtoint i64* %cloptr139969 to i64                                ; closure cast; i64* -> i64
  %cloptr139972 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139973 = getelementptr inbounds i64, i64* %cloptr139972, i64 0                ; &cloptr139972[0]
  %f139974 = ptrtoint void(i64,i64,i64)* @lam139363 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139974, i64* %eptr139973                                               ; store fptr
  %yLs$promise_63 = ptrtoint i64* %cloptr139972 to i64                               ; closure cast; i64* -> i64
  %cloptr139975 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139976 = getelementptr inbounds i64, i64* %cloptr139975, i64 0                ; &cloptr139975[0]
  %f139977 = ptrtoint void(i64,i64)* @lam139357 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f139977, i64* %eptr139976                                               ; store fptr
  %arg138635 = ptrtoint i64* %cloptr139975 to i64                                    ; closure cast; i64* -> i64
  %cloptr139978 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr139980 = getelementptr inbounds i64, i64* %cloptr139978, i64 1                ; &eptr139980[1]
  %eptr139981 = getelementptr inbounds i64, i64* %cloptr139978, i64 2                ; &eptr139981[2]
  %eptr139982 = getelementptr inbounds i64, i64* %cloptr139978, i64 3                ; &eptr139982[3]
  store i64 %pFG$_37length, i64* %eptr139980                                         ; *eptr139980 = %pFG$_37length
  store i64 %dR5$_37_62, i64* %eptr139981                                            ; *eptr139981 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr139982                                           ; *eptr139982 = %azM$_37drop
  %eptr139979 = getelementptr inbounds i64, i64* %cloptr139978, i64 0                ; &cloptr139978[0]
  %f139983 = ptrtoint void(i64,i64,i64)* @lam139354 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139983, i64* %eptr139979                                               ; store fptr
  %arg138634 = ptrtoint i64* %cloptr139978 to i64                                    ; closure cast; i64* -> i64
  %rva139102 = add i64 0, 0                                                          ; quoted ()
  %rva139101 = call i64 @prim_cons(i64 %arg138634, i64 %rva139102)                   ; call prim_cons
  %cloptr139984 = inttoptr i64 %arg138635 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr139984)                                       ; assert function application
  %i0ptr139985 = getelementptr inbounds i64, i64* %cloptr139984, i64 0               ; &cloptr139984[0]
  %f139987 = load i64, i64* %i0ptr139985, align 8                                    ; load; *i0ptr139985
  %fptr139986 = inttoptr i64 %f139987 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr139986(i64 %arg138635, i64 %rva139101)              ; tail call
  ret void
}


define void @lam139494(i64 %env139495, i64 %cont138096, i64 %yOM$a) {
  %arg138375 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %Zwu$a = call i64 @prim_make_45vector(i64 %arg138375, i64 %yOM$a)                  ; call prim_make_45vector
  %cloptr139988 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr139989 = getelementptr inbounds i64, i64* %cloptr139988, i64 0                ; &cloptr139988[0]
  %f139990 = ptrtoint void(i64,i64,i64)* @lam139491 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139990, i64* %eptr139989                                               ; store fptr
  %arg138378 = ptrtoint i64* %cloptr139988 to i64                                    ; closure cast; i64* -> i64
  %cloptr139991 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139993 = getelementptr inbounds i64, i64* %cloptr139991, i64 1                ; &eptr139993[1]
  %eptr139994 = getelementptr inbounds i64, i64* %cloptr139991, i64 2                ; &eptr139994[2]
  store i64 %Zwu$a, i64* %eptr139993                                                 ; *eptr139993 = %Zwu$a
  store i64 %cont138096, i64* %eptr139994                                            ; *eptr139994 = %cont138096
  %eptr139992 = getelementptr inbounds i64, i64* %cloptr139991, i64 0                ; &cloptr139991[0]
  %f139995 = ptrtoint void(i64,i64,i64)* @lam139488 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f139995, i64* %eptr139992                                               ; store fptr
  %arg138377 = ptrtoint i64* %cloptr139991 to i64                                    ; closure cast; i64* -> i64
  %cloptr139996 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr139998 = getelementptr inbounds i64, i64* %cloptr139996, i64 1                ; &eptr139998[1]
  %eptr139999 = getelementptr inbounds i64, i64* %cloptr139996, i64 2                ; &eptr139999[2]
  store i64 %Zwu$a, i64* %eptr139998                                                 ; *eptr139998 = %Zwu$a
  store i64 %cont138096, i64* %eptr139999                                            ; *eptr139999 = %cont138096
  %eptr139997 = getelementptr inbounds i64, i64* %cloptr139996, i64 0                ; &cloptr139996[0]
  %f140000 = ptrtoint void(i64,i64,i64)* @lam139471 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140000, i64* %eptr139997                                               ; store fptr
  %arg138376 = ptrtoint i64* %cloptr139996 to i64                                    ; closure cast; i64* -> i64
  %cloptr140001 = inttoptr i64 %arg138378 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140001)                                       ; assert function application
  %i0ptr140002 = getelementptr inbounds i64, i64* %cloptr140001, i64 0               ; &cloptr140001[0]
  %f140004 = load i64, i64* %i0ptr140002, align 8                                    ; load; *i0ptr140002
  %fptr140003 = inttoptr i64 %f140004 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140003(i64 %arg138378, i64 %arg138377, i64 %arg138376); tail call
  ret void
}


define void @lam139491(i64 %env139492, i64 %cont138102, i64 %Bf2$k) {
  %arg138380 = add i64 0, 0                                                          ; quoted ()
  %cloptr140005 = inttoptr i64 %cont138102 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140005)                                       ; assert function application
  %i0ptr140006 = getelementptr inbounds i64, i64* %cloptr140005, i64 0               ; &cloptr140005[0]
  %f140008 = load i64, i64* %i0ptr140006, align 8                                    ; load; *i0ptr140006
  %fptr140007 = inttoptr i64 %f140008 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140007(i64 %cont138102, i64 %arg138380, i64 %Bf2$k) ; tail call
  ret void
}


define void @lam139488(i64 %env139489, i64 %_95138097, i64 %GjT$cc) {
  %envptr140009 = inttoptr i64 %env139489 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140010 = getelementptr inbounds i64, i64* %envptr140009, i64 2              ; &envptr140009[2]
  %cont138096 = load i64, i64* %envptr140010, align 8                                ; load; *envptr140010
  %envptr140011 = inttoptr i64 %env139489 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140012 = getelementptr inbounds i64, i64* %envptr140011, i64 1              ; &envptr140011[1]
  %Zwu$a = load i64, i64* %envptr140012, align 8                                     ; load; *envptr140012
  %arg138382 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a137998 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138382)                 ; call prim_vector_45ref
  %a137999 = call i64 @prim_null_63(i64 %a137998)                                    ; call prim_null_63
  %cmp140013 = icmp eq i64 %a137999, 15                                              ; false?
  br i1 %cmp140013, label %else140015, label %then140014                             ; if

then140014:
  %arg138386 = add i64 0, 0                                                          ; quoted ()
  %arg138385 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr140016 = inttoptr i64 %cont138096 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140016)                                       ; assert function application
  %i0ptr140017 = getelementptr inbounds i64, i64* %cloptr140016, i64 0               ; &cloptr140016[0]
  %f140019 = load i64, i64* %i0ptr140017, align 8                                    ; load; *i0ptr140017
  %fptr140018 = inttoptr i64 %f140019 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140018(i64 %cont138096, i64 %arg138386, i64 %arg138385); tail call
  ret void

else140015:
  %arg138388 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138000 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138388)                 ; call prim_vector_45ref
  %a138001 = call i64 @prim_cons_63(i64 %a138000)                                    ; call prim_cons_63
  %cmp140020 = icmp eq i64 %a138001, 15                                              ; false?
  br i1 %cmp140020, label %else140022, label %then140021                             ; if

then140021:
  %arg138391 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138002 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138391)                 ; call prim_vector_45ref
  %retprim138101 = call i64 @prim_cdr(i64 %a138002)                                  ; call prim_cdr
  %cloptr140023 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140025 = getelementptr inbounds i64, i64* %cloptr140023, i64 1                ; &eptr140025[1]
  %eptr140026 = getelementptr inbounds i64, i64* %cloptr140023, i64 2                ; &eptr140026[2]
  %eptr140027 = getelementptr inbounds i64, i64* %cloptr140023, i64 3                ; &eptr140027[3]
  store i64 %GjT$cc, i64* %eptr140025                                                ; *eptr140025 = %GjT$cc
  store i64 %Zwu$a, i64* %eptr140026                                                 ; *eptr140026 = %Zwu$a
  store i64 %cont138096, i64* %eptr140027                                            ; *eptr140027 = %cont138096
  %eptr140024 = getelementptr inbounds i64, i64* %cloptr140023, i64 0                ; &cloptr140023[0]
  %f140028 = ptrtoint void(i64,i64,i64)* @lam139481 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140028, i64* %eptr140024                                               ; store fptr
  %arg138396 = ptrtoint i64* %cloptr140023 to i64                                    ; closure cast; i64* -> i64
  %arg138395 = add i64 0, 0                                                          ; quoted ()
  %cloptr140029 = inttoptr i64 %arg138396 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140029)                                       ; assert function application
  %i0ptr140030 = getelementptr inbounds i64, i64* %cloptr140029, i64 0               ; &cloptr140029[0]
  %f140032 = load i64, i64* %i0ptr140030, align 8                                    ; load; *i0ptr140030
  %fptr140031 = inttoptr i64 %f140032 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140031(i64 %arg138396, i64 %arg138395, i64 %retprim138101); tail call
  ret void

else140022:
  %arg138410 = add i64 0, 0                                                          ; quoted ()
  %arg138409 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr140033 = inttoptr i64 %cont138096 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140033)                                       ; assert function application
  %i0ptr140034 = getelementptr inbounds i64, i64* %cloptr140033, i64 0               ; &cloptr140033[0]
  %f140036 = load i64, i64* %i0ptr140034, align 8                                    ; load; *i0ptr140034
  %fptr140035 = inttoptr i64 %f140036 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140035(i64 %cont138096, i64 %arg138410, i64 %arg138409); tail call
  ret void
}


define void @lam139481(i64 %env139482, i64 %_95138098, i64 %JFh$b) {
  %envptr140037 = inttoptr i64 %env139482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140038 = getelementptr inbounds i64, i64* %envptr140037, i64 3              ; &envptr140037[3]
  %cont138096 = load i64, i64* %envptr140038, align 8                                ; load; *envptr140038
  %envptr140039 = inttoptr i64 %env139482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140040 = getelementptr inbounds i64, i64* %envptr140039, i64 2              ; &envptr140039[2]
  %Zwu$a = load i64, i64* %envptr140040, align 8                                     ; load; *envptr140040
  %envptr140041 = inttoptr i64 %env139482 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140042 = getelementptr inbounds i64, i64* %envptr140041, i64 1              ; &envptr140041[1]
  %GjT$cc = load i64, i64* %envptr140042, align 8                                    ; load; *envptr140042
  %arg138397 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138003 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138397)                 ; call prim_vector_45ref
  %a138004 = call i64 @prim_cdr(i64 %a138003)                                        ; call prim_cdr
  %arg138401 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138100 = call i64 @prim_vector_45set_33(i64 %Zwu$a, i64 %arg138401, i64 %a138004); call prim_vector_45set_33
  %cloptr140043 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr140045 = getelementptr inbounds i64, i64* %cloptr140043, i64 1                ; &eptr140045[1]
  %eptr140046 = getelementptr inbounds i64, i64* %cloptr140043, i64 2                ; &eptr140046[2]
  store i64 %GjT$cc, i64* %eptr140045                                                ; *eptr140045 = %GjT$cc
  store i64 %cont138096, i64* %eptr140046                                            ; *eptr140046 = %cont138096
  %eptr140044 = getelementptr inbounds i64, i64* %cloptr140043, i64 0                ; &cloptr140043[0]
  %f140047 = ptrtoint void(i64,i64,i64)* @lam139477 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140047, i64* %eptr140044                                               ; store fptr
  %arg138405 = ptrtoint i64* %cloptr140043 to i64                                    ; closure cast; i64* -> i64
  %arg138404 = add i64 0, 0                                                          ; quoted ()
  %cloptr140048 = inttoptr i64 %arg138405 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140048)                                       ; assert function application
  %i0ptr140049 = getelementptr inbounds i64, i64* %cloptr140048, i64 0               ; &cloptr140048[0]
  %f140051 = load i64, i64* %i0ptr140049, align 8                                    ; load; *i0ptr140049
  %fptr140050 = inttoptr i64 %f140051 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140050(i64 %arg138405, i64 %arg138404, i64 %retprim138100); tail call
  ret void
}


define void @lam139477(i64 %env139478, i64 %_95138099, i64 %ZX1$_950) {
  %envptr140052 = inttoptr i64 %env139478 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140053 = getelementptr inbounds i64, i64* %envptr140052, i64 2              ; &envptr140052[2]
  %cont138096 = load i64, i64* %envptr140053, align 8                                ; load; *envptr140053
  %envptr140054 = inttoptr i64 %env139478 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140055 = getelementptr inbounds i64, i64* %envptr140054, i64 1              ; &envptr140054[1]
  %GjT$cc = load i64, i64* %envptr140055, align 8                                    ; load; *envptr140055
  %cloptr140056 = inttoptr i64 %GjT$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140056)                                       ; assert function application
  %i0ptr140057 = getelementptr inbounds i64, i64* %cloptr140056, i64 0               ; &cloptr140056[0]
  %f140059 = load i64, i64* %i0ptr140057, align 8                                    ; load; *i0ptr140057
  %fptr140058 = inttoptr i64 %f140059 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140058(i64 %GjT$cc, i64 %cont138096, i64 %GjT$cc)   ; tail call
  ret void
}


define void @lam139471(i64 %env139472, i64 %_95138097, i64 %GjT$cc) {
  %envptr140060 = inttoptr i64 %env139472 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140061 = getelementptr inbounds i64, i64* %envptr140060, i64 2              ; &envptr140060[2]
  %cont138096 = load i64, i64* %envptr140061, align 8                                ; load; *envptr140061
  %envptr140062 = inttoptr i64 %env139472 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140063 = getelementptr inbounds i64, i64* %envptr140062, i64 1              ; &envptr140062[1]
  %Zwu$a = load i64, i64* %envptr140063, align 8                                     ; load; *envptr140063
  %arg138412 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a137998 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138412)                 ; call prim_vector_45ref
  %a137999 = call i64 @prim_null_63(i64 %a137998)                                    ; call prim_null_63
  %cmp140064 = icmp eq i64 %a137999, 15                                              ; false?
  br i1 %cmp140064, label %else140066, label %then140065                             ; if

then140065:
  %arg138416 = add i64 0, 0                                                          ; quoted ()
  %arg138415 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr140067 = inttoptr i64 %cont138096 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140067)                                       ; assert function application
  %i0ptr140068 = getelementptr inbounds i64, i64* %cloptr140067, i64 0               ; &cloptr140067[0]
  %f140070 = load i64, i64* %i0ptr140068, align 8                                    ; load; *i0ptr140068
  %fptr140069 = inttoptr i64 %f140070 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140069(i64 %cont138096, i64 %arg138416, i64 %arg138415); tail call
  ret void

else140066:
  %arg138418 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138000 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138418)                 ; call prim_vector_45ref
  %a138001 = call i64 @prim_cons_63(i64 %a138000)                                    ; call prim_cons_63
  %cmp140071 = icmp eq i64 %a138001, 15                                              ; false?
  br i1 %cmp140071, label %else140073, label %then140072                             ; if

then140072:
  %arg138421 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138002 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138421)                 ; call prim_vector_45ref
  %retprim138101 = call i64 @prim_cdr(i64 %a138002)                                  ; call prim_cdr
  %cloptr140074 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140076 = getelementptr inbounds i64, i64* %cloptr140074, i64 1                ; &eptr140076[1]
  %eptr140077 = getelementptr inbounds i64, i64* %cloptr140074, i64 2                ; &eptr140077[2]
  %eptr140078 = getelementptr inbounds i64, i64* %cloptr140074, i64 3                ; &eptr140078[3]
  store i64 %GjT$cc, i64* %eptr140076                                                ; *eptr140076 = %GjT$cc
  store i64 %Zwu$a, i64* %eptr140077                                                 ; *eptr140077 = %Zwu$a
  store i64 %cont138096, i64* %eptr140078                                            ; *eptr140078 = %cont138096
  %eptr140075 = getelementptr inbounds i64, i64* %cloptr140074, i64 0                ; &cloptr140074[0]
  %f140079 = ptrtoint void(i64,i64,i64)* @lam139464 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140079, i64* %eptr140075                                               ; store fptr
  %arg138426 = ptrtoint i64* %cloptr140074 to i64                                    ; closure cast; i64* -> i64
  %arg138425 = add i64 0, 0                                                          ; quoted ()
  %cloptr140080 = inttoptr i64 %arg138426 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140080)                                       ; assert function application
  %i0ptr140081 = getelementptr inbounds i64, i64* %cloptr140080, i64 0               ; &cloptr140080[0]
  %f140083 = load i64, i64* %i0ptr140081, align 8                                    ; load; *i0ptr140081
  %fptr140082 = inttoptr i64 %f140083 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140082(i64 %arg138426, i64 %arg138425, i64 %retprim138101); tail call
  ret void

else140073:
  %arg138440 = add i64 0, 0                                                          ; quoted ()
  %arg138439 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr140084 = inttoptr i64 %cont138096 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140084)                                       ; assert function application
  %i0ptr140085 = getelementptr inbounds i64, i64* %cloptr140084, i64 0               ; &cloptr140084[0]
  %f140087 = load i64, i64* %i0ptr140085, align 8                                    ; load; *i0ptr140085
  %fptr140086 = inttoptr i64 %f140087 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140086(i64 %cont138096, i64 %arg138440, i64 %arg138439); tail call
  ret void
}


define void @lam139464(i64 %env139465, i64 %_95138098, i64 %JFh$b) {
  %envptr140088 = inttoptr i64 %env139465 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140089 = getelementptr inbounds i64, i64* %envptr140088, i64 3              ; &envptr140088[3]
  %cont138096 = load i64, i64* %envptr140089, align 8                                ; load; *envptr140089
  %envptr140090 = inttoptr i64 %env139465 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140091 = getelementptr inbounds i64, i64* %envptr140090, i64 2              ; &envptr140090[2]
  %Zwu$a = load i64, i64* %envptr140091, align 8                                     ; load; *envptr140091
  %envptr140092 = inttoptr i64 %env139465 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140093 = getelementptr inbounds i64, i64* %envptr140092, i64 1              ; &envptr140092[1]
  %GjT$cc = load i64, i64* %envptr140093, align 8                                    ; load; *envptr140093
  %arg138427 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138003 = call i64 @prim_vector_45ref(i64 %Zwu$a, i64 %arg138427)                 ; call prim_vector_45ref
  %a138004 = call i64 @prim_cdr(i64 %a138003)                                        ; call prim_cdr
  %arg138431 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138100 = call i64 @prim_vector_45set_33(i64 %Zwu$a, i64 %arg138431, i64 %a138004); call prim_vector_45set_33
  %cloptr140094 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr140096 = getelementptr inbounds i64, i64* %cloptr140094, i64 1                ; &eptr140096[1]
  %eptr140097 = getelementptr inbounds i64, i64* %cloptr140094, i64 2                ; &eptr140097[2]
  store i64 %GjT$cc, i64* %eptr140096                                                ; *eptr140096 = %GjT$cc
  store i64 %cont138096, i64* %eptr140097                                            ; *eptr140097 = %cont138096
  %eptr140095 = getelementptr inbounds i64, i64* %cloptr140094, i64 0                ; &cloptr140094[0]
  %f140098 = ptrtoint void(i64,i64,i64)* @lam139460 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140098, i64* %eptr140095                                               ; store fptr
  %arg138435 = ptrtoint i64* %cloptr140094 to i64                                    ; closure cast; i64* -> i64
  %arg138434 = add i64 0, 0                                                          ; quoted ()
  %cloptr140099 = inttoptr i64 %arg138435 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140099)                                       ; assert function application
  %i0ptr140100 = getelementptr inbounds i64, i64* %cloptr140099, i64 0               ; &cloptr140099[0]
  %f140102 = load i64, i64* %i0ptr140100, align 8                                    ; load; *i0ptr140100
  %fptr140101 = inttoptr i64 %f140102 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140101(i64 %arg138435, i64 %arg138434, i64 %retprim138100); tail call
  ret void
}


define void @lam139460(i64 %env139461, i64 %_95138099, i64 %ZX1$_950) {
  %envptr140103 = inttoptr i64 %env139461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140104 = getelementptr inbounds i64, i64* %envptr140103, i64 2              ; &envptr140103[2]
  %cont138096 = load i64, i64* %envptr140104, align 8                                ; load; *envptr140104
  %envptr140105 = inttoptr i64 %env139461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140106 = getelementptr inbounds i64, i64* %envptr140105, i64 1              ; &envptr140105[1]
  %GjT$cc = load i64, i64* %envptr140106, align 8                                    ; load; *envptr140106
  %cloptr140107 = inttoptr i64 %GjT$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140107)                                       ; assert function application
  %i0ptr140108 = getelementptr inbounds i64, i64* %cloptr140107, i64 0               ; &cloptr140107[0]
  %f140110 = load i64, i64* %i0ptr140108, align 8                                    ; load; *i0ptr140108
  %fptr140109 = inttoptr i64 %f140110 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140109(i64 %GjT$cc, i64 %cont138096, i64 %GjT$cc)   ; tail call
  ret void
}


define void @lam139454(i64 %env139455, i64 %cont138103, i64 %UIC$lst, i64 %HhQ$n) {
  %arg138443 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %koV$lst = call i64 @prim_make_45vector(i64 %arg138443, i64 %UIC$lst)              ; call prim_make_45vector
  %arg138445 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %O3v$n = call i64 @prim_make_45vector(i64 %arg138445, i64 %HhQ$n)                  ; call prim_make_45vector
  %cloptr140111 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr140112 = getelementptr inbounds i64, i64* %cloptr140111, i64 0                ; &cloptr140111[0]
  %f140113 = ptrtoint void(i64,i64,i64)* @lam139450 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140113, i64* %eptr140112                                               ; store fptr
  %arg138448 = ptrtoint i64* %cloptr140111 to i64                                    ; closure cast; i64* -> i64
  %cloptr140114 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140116 = getelementptr inbounds i64, i64* %cloptr140114, i64 1                ; &eptr140116[1]
  %eptr140117 = getelementptr inbounds i64, i64* %cloptr140114, i64 2                ; &eptr140117[2]
  %eptr140118 = getelementptr inbounds i64, i64* %cloptr140114, i64 3                ; &eptr140118[3]
  store i64 %O3v$n, i64* %eptr140116                                                 ; *eptr140116 = %O3v$n
  store i64 %koV$lst, i64* %eptr140117                                               ; *eptr140117 = %koV$lst
  store i64 %cont138103, i64* %eptr140118                                            ; *eptr140118 = %cont138103
  %eptr140115 = getelementptr inbounds i64, i64* %cloptr140114, i64 0                ; &cloptr140114[0]
  %f140119 = ptrtoint void(i64,i64,i64)* @lam139448 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140119, i64* %eptr140115                                               ; store fptr
  %arg138447 = ptrtoint i64* %cloptr140114 to i64                                    ; closure cast; i64* -> i64
  %cloptr140120 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140122 = getelementptr inbounds i64, i64* %cloptr140120, i64 1                ; &eptr140122[1]
  %eptr140123 = getelementptr inbounds i64, i64* %cloptr140120, i64 2                ; &eptr140123[2]
  %eptr140124 = getelementptr inbounds i64, i64* %cloptr140120, i64 3                ; &eptr140124[3]
  store i64 %O3v$n, i64* %eptr140122                                                 ; *eptr140122 = %O3v$n
  store i64 %koV$lst, i64* %eptr140123                                               ; *eptr140123 = %koV$lst
  store i64 %cont138103, i64* %eptr140124                                            ; *eptr140124 = %cont138103
  %eptr140121 = getelementptr inbounds i64, i64* %cloptr140120, i64 0                ; &cloptr140120[0]
  %f140125 = ptrtoint void(i64,i64,i64)* @lam139431 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140125, i64* %eptr140121                                               ; store fptr
  %arg138446 = ptrtoint i64* %cloptr140120 to i64                                    ; closure cast; i64* -> i64
  %cloptr140126 = inttoptr i64 %arg138448 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140126)                                       ; assert function application
  %i0ptr140127 = getelementptr inbounds i64, i64* %cloptr140126, i64 0               ; &cloptr140126[0]
  %f140129 = load i64, i64* %i0ptr140127, align 8                                    ; load; *i0ptr140127
  %fptr140128 = inttoptr i64 %f140129 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140128(i64 %arg138448, i64 %arg138447, i64 %arg138446); tail call
  ret void
}


define void @lam139450(i64 %env139451, i64 %cont138110, i64 %zaa$u) {
  %cloptr140130 = inttoptr i64 %zaa$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140130)                                       ; assert function application
  %i0ptr140131 = getelementptr inbounds i64, i64* %cloptr140130, i64 0               ; &cloptr140130[0]
  %f140133 = load i64, i64* %i0ptr140131, align 8                                    ; load; *i0ptr140131
  %fptr140132 = inttoptr i64 %f140133 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140132(i64 %zaa$u, i64 %cont138110, i64 %zaa$u)     ; tail call
  ret void
}


define void @lam139448(i64 %env139449, i64 %_95138104, i64 %JrT$cc) {
  %envptr140134 = inttoptr i64 %env139449 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140135 = getelementptr inbounds i64, i64* %envptr140134, i64 3              ; &envptr140134[3]
  %cont138103 = load i64, i64* %envptr140135, align 8                                ; load; *envptr140135
  %envptr140136 = inttoptr i64 %env139449 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140137 = getelementptr inbounds i64, i64* %envptr140136, i64 2              ; &envptr140136[2]
  %koV$lst = load i64, i64* %envptr140137, align 8                                   ; load; *envptr140137
  %envptr140138 = inttoptr i64 %env139449 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140139 = getelementptr inbounds i64, i64* %envptr140138, i64 1              ; &envptr140138[1]
  %O3v$n = load i64, i64* %envptr140139, align 8                                     ; load; *envptr140139
  %arg138452 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138005 = call i64 @prim_vector_45ref(i64 %O3v$n, i64 %arg138452)                 ; call prim_vector_45ref
  %arg138455 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138006 = call i64 @prim__61(i64 %arg138455, i64 %a138005)                        ; call prim__61
  %cmp140140 = icmp eq i64 %a138006, 15                                              ; false?
  br i1 %cmp140140, label %else140142, label %then140141                             ; if

then140141:
  %arg138456 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138105 = call i64 @prim_vector_45ref(i64 %koV$lst, i64 %arg138456)         ; call prim_vector_45ref
  %arg138459 = add i64 0, 0                                                          ; quoted ()
  %cloptr140143 = inttoptr i64 %cont138103 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140143)                                       ; assert function application
  %i0ptr140144 = getelementptr inbounds i64, i64* %cloptr140143, i64 0               ; &cloptr140143[0]
  %f140146 = load i64, i64* %i0ptr140144, align 8                                    ; load; *i0ptr140144
  %fptr140145 = inttoptr i64 %f140146 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140145(i64 %cont138103, i64 %arg138459, i64 %retprim138105); tail call
  ret void

else140142:
  %arg138461 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138007 = call i64 @prim_vector_45ref(i64 %koV$lst, i64 %arg138461)               ; call prim_vector_45ref
  %a138008 = call i64 @prim_cdr(i64 %a138007)                                        ; call prim_cdr
  %arg138465 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138109 = call i64 @prim_vector_45set_33(i64 %koV$lst, i64 %arg138465, i64 %a138008); call prim_vector_45set_33
  %cloptr140147 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140149 = getelementptr inbounds i64, i64* %cloptr140147, i64 1                ; &eptr140149[1]
  %eptr140150 = getelementptr inbounds i64, i64* %cloptr140147, i64 2                ; &eptr140150[2]
  %eptr140151 = getelementptr inbounds i64, i64* %cloptr140147, i64 3                ; &eptr140151[3]
  store i64 %O3v$n, i64* %eptr140149                                                 ; *eptr140149 = %O3v$n
  store i64 %cont138103, i64* %eptr140150                                            ; *eptr140150 = %cont138103
  store i64 %JrT$cc, i64* %eptr140151                                                ; *eptr140151 = %JrT$cc
  %eptr140148 = getelementptr inbounds i64, i64* %cloptr140147, i64 0                ; &cloptr140147[0]
  %f140152 = ptrtoint void(i64,i64,i64)* @lam139442 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140152, i64* %eptr140148                                               ; store fptr
  %arg138469 = ptrtoint i64* %cloptr140147 to i64                                    ; closure cast; i64* -> i64
  %arg138468 = add i64 0, 0                                                          ; quoted ()
  %cloptr140153 = inttoptr i64 %arg138469 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140153)                                       ; assert function application
  %i0ptr140154 = getelementptr inbounds i64, i64* %cloptr140153, i64 0               ; &cloptr140153[0]
  %f140156 = load i64, i64* %i0ptr140154, align 8                                    ; load; *i0ptr140154
  %fptr140155 = inttoptr i64 %f140156 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140155(i64 %arg138469, i64 %arg138468, i64 %retprim138109); tail call
  ret void
}


define void @lam139442(i64 %env139443, i64 %_95138106, i64 %Q5z$_950) {
  %envptr140157 = inttoptr i64 %env139443 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140158 = getelementptr inbounds i64, i64* %envptr140157, i64 3              ; &envptr140157[3]
  %JrT$cc = load i64, i64* %envptr140158, align 8                                    ; load; *envptr140158
  %envptr140159 = inttoptr i64 %env139443 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140160 = getelementptr inbounds i64, i64* %envptr140159, i64 2              ; &envptr140159[2]
  %cont138103 = load i64, i64* %envptr140160, align 8                                ; load; *envptr140160
  %envptr140161 = inttoptr i64 %env139443 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140162 = getelementptr inbounds i64, i64* %envptr140161, i64 1              ; &envptr140161[1]
  %O3v$n = load i64, i64* %envptr140162, align 8                                     ; load; *envptr140162
  %arg138470 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138009 = call i64 @prim_vector_45ref(i64 %O3v$n, i64 %arg138470)                 ; call prim_vector_45ref
  %arg138472 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a138010 = call i64 @prim__45(i64 %a138009, i64 %arg138472)                        ; call prim__45
  %arg138475 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138108 = call i64 @prim_vector_45set_33(i64 %O3v$n, i64 %arg138475, i64 %a138010); call prim_vector_45set_33
  %cloptr140163 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr140165 = getelementptr inbounds i64, i64* %cloptr140163, i64 1                ; &eptr140165[1]
  %eptr140166 = getelementptr inbounds i64, i64* %cloptr140163, i64 2                ; &eptr140166[2]
  store i64 %cont138103, i64* %eptr140165                                            ; *eptr140165 = %cont138103
  store i64 %JrT$cc, i64* %eptr140166                                                ; *eptr140166 = %JrT$cc
  %eptr140164 = getelementptr inbounds i64, i64* %cloptr140163, i64 0                ; &cloptr140163[0]
  %f140167 = ptrtoint void(i64,i64,i64)* @lam139437 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140167, i64* %eptr140164                                               ; store fptr
  %arg138479 = ptrtoint i64* %cloptr140163 to i64                                    ; closure cast; i64* -> i64
  %arg138478 = add i64 0, 0                                                          ; quoted ()
  %cloptr140168 = inttoptr i64 %arg138479 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140168)                                       ; assert function application
  %i0ptr140169 = getelementptr inbounds i64, i64* %cloptr140168, i64 0               ; &cloptr140168[0]
  %f140171 = load i64, i64* %i0ptr140169, align 8                                    ; load; *i0ptr140169
  %fptr140170 = inttoptr i64 %f140171 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140170(i64 %arg138479, i64 %arg138478, i64 %retprim138108); tail call
  ret void
}


define void @lam139437(i64 %env139438, i64 %_95138107, i64 %YKz$_951) {
  %envptr140172 = inttoptr i64 %env139438 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140173 = getelementptr inbounds i64, i64* %envptr140172, i64 2              ; &envptr140172[2]
  %JrT$cc = load i64, i64* %envptr140173, align 8                                    ; load; *envptr140173
  %envptr140174 = inttoptr i64 %env139438 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140175 = getelementptr inbounds i64, i64* %envptr140174, i64 1              ; &envptr140174[1]
  %cont138103 = load i64, i64* %envptr140175, align 8                                ; load; *envptr140175
  %cloptr140176 = inttoptr i64 %JrT$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140176)                                       ; assert function application
  %i0ptr140177 = getelementptr inbounds i64, i64* %cloptr140176, i64 0               ; &cloptr140176[0]
  %f140179 = load i64, i64* %i0ptr140177, align 8                                    ; load; *i0ptr140177
  %fptr140178 = inttoptr i64 %f140179 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140178(i64 %JrT$cc, i64 %cont138103, i64 %JrT$cc)   ; tail call
  ret void
}


define void @lam139431(i64 %env139432, i64 %_95138104, i64 %JrT$cc) {
  %envptr140180 = inttoptr i64 %env139432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140181 = getelementptr inbounds i64, i64* %envptr140180, i64 3              ; &envptr140180[3]
  %cont138103 = load i64, i64* %envptr140181, align 8                                ; load; *envptr140181
  %envptr140182 = inttoptr i64 %env139432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140183 = getelementptr inbounds i64, i64* %envptr140182, i64 2              ; &envptr140182[2]
  %koV$lst = load i64, i64* %envptr140183, align 8                                   ; load; *envptr140183
  %envptr140184 = inttoptr i64 %env139432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140185 = getelementptr inbounds i64, i64* %envptr140184, i64 1              ; &envptr140184[1]
  %O3v$n = load i64, i64* %envptr140185, align 8                                     ; load; *envptr140185
  %arg138483 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138005 = call i64 @prim_vector_45ref(i64 %O3v$n, i64 %arg138483)                 ; call prim_vector_45ref
  %arg138486 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138006 = call i64 @prim__61(i64 %arg138486, i64 %a138005)                        ; call prim__61
  %cmp140186 = icmp eq i64 %a138006, 15                                              ; false?
  br i1 %cmp140186, label %else140188, label %then140187                             ; if

then140187:
  %arg138487 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138105 = call i64 @prim_vector_45ref(i64 %koV$lst, i64 %arg138487)         ; call prim_vector_45ref
  %arg138490 = add i64 0, 0                                                          ; quoted ()
  %cloptr140189 = inttoptr i64 %cont138103 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140189)                                       ; assert function application
  %i0ptr140190 = getelementptr inbounds i64, i64* %cloptr140189, i64 0               ; &cloptr140189[0]
  %f140192 = load i64, i64* %i0ptr140190, align 8                                    ; load; *i0ptr140190
  %fptr140191 = inttoptr i64 %f140192 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140191(i64 %cont138103, i64 %arg138490, i64 %retprim138105); tail call
  ret void

else140188:
  %arg138492 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138007 = call i64 @prim_vector_45ref(i64 %koV$lst, i64 %arg138492)               ; call prim_vector_45ref
  %a138008 = call i64 @prim_cdr(i64 %a138007)                                        ; call prim_cdr
  %arg138496 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138109 = call i64 @prim_vector_45set_33(i64 %koV$lst, i64 %arg138496, i64 %a138008); call prim_vector_45set_33
  %cloptr140193 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140195 = getelementptr inbounds i64, i64* %cloptr140193, i64 1                ; &eptr140195[1]
  %eptr140196 = getelementptr inbounds i64, i64* %cloptr140193, i64 2                ; &eptr140196[2]
  %eptr140197 = getelementptr inbounds i64, i64* %cloptr140193, i64 3                ; &eptr140197[3]
  store i64 %O3v$n, i64* %eptr140195                                                 ; *eptr140195 = %O3v$n
  store i64 %cont138103, i64* %eptr140196                                            ; *eptr140196 = %cont138103
  store i64 %JrT$cc, i64* %eptr140197                                                ; *eptr140197 = %JrT$cc
  %eptr140194 = getelementptr inbounds i64, i64* %cloptr140193, i64 0                ; &cloptr140193[0]
  %f140198 = ptrtoint void(i64,i64,i64)* @lam139425 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140198, i64* %eptr140194                                               ; store fptr
  %arg138500 = ptrtoint i64* %cloptr140193 to i64                                    ; closure cast; i64* -> i64
  %arg138499 = add i64 0, 0                                                          ; quoted ()
  %cloptr140199 = inttoptr i64 %arg138500 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140199)                                       ; assert function application
  %i0ptr140200 = getelementptr inbounds i64, i64* %cloptr140199, i64 0               ; &cloptr140199[0]
  %f140202 = load i64, i64* %i0ptr140200, align 8                                    ; load; *i0ptr140200
  %fptr140201 = inttoptr i64 %f140202 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140201(i64 %arg138500, i64 %arg138499, i64 %retprim138109); tail call
  ret void
}


define void @lam139425(i64 %env139426, i64 %_95138106, i64 %Q5z$_950) {
  %envptr140203 = inttoptr i64 %env139426 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140204 = getelementptr inbounds i64, i64* %envptr140203, i64 3              ; &envptr140203[3]
  %JrT$cc = load i64, i64* %envptr140204, align 8                                    ; load; *envptr140204
  %envptr140205 = inttoptr i64 %env139426 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140206 = getelementptr inbounds i64, i64* %envptr140205, i64 2              ; &envptr140205[2]
  %cont138103 = load i64, i64* %envptr140206, align 8                                ; load; *envptr140206
  %envptr140207 = inttoptr i64 %env139426 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140208 = getelementptr inbounds i64, i64* %envptr140207, i64 1              ; &envptr140207[1]
  %O3v$n = load i64, i64* %envptr140208, align 8                                     ; load; *envptr140208
  %arg138501 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138009 = call i64 @prim_vector_45ref(i64 %O3v$n, i64 %arg138501)                 ; call prim_vector_45ref
  %arg138503 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a138010 = call i64 @prim__45(i64 %a138009, i64 %arg138503)                        ; call prim__45
  %arg138506 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138108 = call i64 @prim_vector_45set_33(i64 %O3v$n, i64 %arg138506, i64 %a138010); call prim_vector_45set_33
  %cloptr140209 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr140211 = getelementptr inbounds i64, i64* %cloptr140209, i64 1                ; &eptr140211[1]
  %eptr140212 = getelementptr inbounds i64, i64* %cloptr140209, i64 2                ; &eptr140212[2]
  store i64 %cont138103, i64* %eptr140211                                            ; *eptr140211 = %cont138103
  store i64 %JrT$cc, i64* %eptr140212                                                ; *eptr140212 = %JrT$cc
  %eptr140210 = getelementptr inbounds i64, i64* %cloptr140209, i64 0                ; &cloptr140209[0]
  %f140213 = ptrtoint void(i64,i64,i64)* @lam139420 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140213, i64* %eptr140210                                               ; store fptr
  %arg138510 = ptrtoint i64* %cloptr140209 to i64                                    ; closure cast; i64* -> i64
  %arg138509 = add i64 0, 0                                                          ; quoted ()
  %cloptr140214 = inttoptr i64 %arg138510 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140214)                                       ; assert function application
  %i0ptr140215 = getelementptr inbounds i64, i64* %cloptr140214, i64 0               ; &cloptr140214[0]
  %f140217 = load i64, i64* %i0ptr140215, align 8                                    ; load; *i0ptr140215
  %fptr140216 = inttoptr i64 %f140217 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140216(i64 %arg138510, i64 %arg138509, i64 %retprim138108); tail call
  ret void
}


define void @lam139420(i64 %env139421, i64 %_95138107, i64 %YKz$_951) {
  %envptr140218 = inttoptr i64 %env139421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140219 = getelementptr inbounds i64, i64* %envptr140218, i64 2              ; &envptr140218[2]
  %JrT$cc = load i64, i64* %envptr140219, align 8                                    ; load; *envptr140219
  %envptr140220 = inttoptr i64 %env139421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140221 = getelementptr inbounds i64, i64* %envptr140220, i64 1              ; &envptr140220[1]
  %cont138103 = load i64, i64* %envptr140221, align 8                                ; load; *envptr140221
  %cloptr140222 = inttoptr i64 %JrT$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140222)                                       ; assert function application
  %i0ptr140223 = getelementptr inbounds i64, i64* %cloptr140222, i64 0               ; &cloptr140222[0]
  %f140225 = load i64, i64* %i0ptr140223, align 8                                    ; load; *i0ptr140223
  %fptr140224 = inttoptr i64 %f140225 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140224(i64 %JrT$cc, i64 %cont138103, i64 %JrT$cc)   ; tail call
  ret void
}


define void @lam139414(i64 %env139415, i64 %cont138111, i64 %wSx$v, i64 %lrx$lst) {
  %arg138515 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %ZY7$lst = call i64 @prim_make_45vector(i64 %arg138515, i64 %lrx$lst)              ; call prim_make_45vector
  %cloptr140226 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr140227 = getelementptr inbounds i64, i64* %cloptr140226, i64 0                ; &cloptr140226[0]
  %f140228 = ptrtoint void(i64,i64,i64)* @lam139411 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140228, i64* %eptr140227                                               ; store fptr
  %arg138518 = ptrtoint i64* %cloptr140226 to i64                                    ; closure cast; i64* -> i64
  %cloptr140229 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140231 = getelementptr inbounds i64, i64* %cloptr140229, i64 1                ; &eptr140231[1]
  %eptr140232 = getelementptr inbounds i64, i64* %cloptr140229, i64 2                ; &eptr140232[2]
  %eptr140233 = getelementptr inbounds i64, i64* %cloptr140229, i64 3                ; &eptr140233[3]
  store i64 %cont138111, i64* %eptr140231                                            ; *eptr140231 = %cont138111
  store i64 %wSx$v, i64* %eptr140232                                                 ; *eptr140232 = %wSx$v
  store i64 %ZY7$lst, i64* %eptr140233                                               ; *eptr140233 = %ZY7$lst
  %eptr140230 = getelementptr inbounds i64, i64* %cloptr140229, i64 0                ; &cloptr140229[0]
  %f140234 = ptrtoint void(i64,i64,i64)* @lam139409 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140234, i64* %eptr140230                                               ; store fptr
  %arg138517 = ptrtoint i64* %cloptr140229 to i64                                    ; closure cast; i64* -> i64
  %cloptr140235 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140237 = getelementptr inbounds i64, i64* %cloptr140235, i64 1                ; &eptr140237[1]
  %eptr140238 = getelementptr inbounds i64, i64* %cloptr140235, i64 2                ; &eptr140238[2]
  %eptr140239 = getelementptr inbounds i64, i64* %cloptr140235, i64 3                ; &eptr140239[3]
  store i64 %cont138111, i64* %eptr140237                                            ; *eptr140237 = %cont138111
  store i64 %wSx$v, i64* %eptr140238                                                 ; *eptr140238 = %wSx$v
  store i64 %ZY7$lst, i64* %eptr140239                                               ; *eptr140239 = %ZY7$lst
  %eptr140236 = getelementptr inbounds i64, i64* %cloptr140235, i64 0                ; &cloptr140235[0]
  %f140240 = ptrtoint void(i64,i64,i64)* @lam139396 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140240, i64* %eptr140236                                               ; store fptr
  %arg138516 = ptrtoint i64* %cloptr140235 to i64                                    ; closure cast; i64* -> i64
  %cloptr140241 = inttoptr i64 %arg138518 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140241)                                       ; assert function application
  %i0ptr140242 = getelementptr inbounds i64, i64* %cloptr140241, i64 0               ; &cloptr140241[0]
  %f140244 = load i64, i64* %i0ptr140242, align 8                                    ; load; *i0ptr140242
  %fptr140243 = inttoptr i64 %f140244 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140243(i64 %arg138518, i64 %arg138517, i64 %arg138516); tail call
  ret void
}


define void @lam139411(i64 %env139412, i64 %cont138116, i64 %B9p$u) {
  %cloptr140245 = inttoptr i64 %B9p$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140245)                                       ; assert function application
  %i0ptr140246 = getelementptr inbounds i64, i64* %cloptr140245, i64 0               ; &cloptr140245[0]
  %f140248 = load i64, i64* %i0ptr140246, align 8                                    ; load; *i0ptr140246
  %fptr140247 = inttoptr i64 %f140248 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140247(i64 %B9p$u, i64 %cont138116, i64 %B9p$u)     ; tail call
  ret void
}


define void @lam139409(i64 %env139410, i64 %_95138112, i64 %b8n$cc) {
  %envptr140249 = inttoptr i64 %env139410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140250 = getelementptr inbounds i64, i64* %envptr140249, i64 3              ; &envptr140249[3]
  %ZY7$lst = load i64, i64* %envptr140250, align 8                                   ; load; *envptr140250
  %envptr140251 = inttoptr i64 %env139410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140252 = getelementptr inbounds i64, i64* %envptr140251, i64 2              ; &envptr140251[2]
  %wSx$v = load i64, i64* %envptr140252, align 8                                     ; load; *envptr140252
  %envptr140253 = inttoptr i64 %env139410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140254 = getelementptr inbounds i64, i64* %envptr140253, i64 1              ; &envptr140253[1]
  %cont138111 = load i64, i64* %envptr140254, align 8                                ; load; *envptr140254
  %arg138522 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138011 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138522)               ; call prim_vector_45ref
  %a138012 = call i64 @prim_null_63(i64 %a138011)                                    ; call prim_null_63
  %cmp140255 = icmp eq i64 %a138012, 15                                              ; false?
  br i1 %cmp140255, label %else140257, label %then140256                             ; if

then140256:
  %arg138526 = add i64 0, 0                                                          ; quoted ()
  %arg138525 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr140258 = inttoptr i64 %cont138111 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140258)                                       ; assert function application
  %i0ptr140259 = getelementptr inbounds i64, i64* %cloptr140258, i64 0               ; &cloptr140258[0]
  %f140261 = load i64, i64* %i0ptr140259, align 8                                    ; load; *i0ptr140259
  %fptr140260 = inttoptr i64 %f140261 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140260(i64 %cont138111, i64 %arg138526, i64 %arg138525); tail call
  ret void

else140257:
  %arg138528 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138013 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138528)               ; call prim_vector_45ref
  %a138014 = call i64 @prim_car(i64 %a138013)                                        ; call prim_car
  %a138015 = call i64 @prim_eqv_63(i64 %a138014, i64 %wSx$v)                         ; call prim_eqv_63
  %cmp140262 = icmp eq i64 %a138015, 15                                              ; false?
  br i1 %cmp140262, label %else140264, label %then140263                             ; if

then140263:
  %arg138533 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138113 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138533)         ; call prim_vector_45ref
  %arg138536 = add i64 0, 0                                                          ; quoted ()
  %cloptr140265 = inttoptr i64 %cont138111 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140265)                                       ; assert function application
  %i0ptr140266 = getelementptr inbounds i64, i64* %cloptr140265, i64 0               ; &cloptr140265[0]
  %f140268 = load i64, i64* %i0ptr140266, align 8                                    ; load; *i0ptr140266
  %fptr140267 = inttoptr i64 %f140268 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140267(i64 %cont138111, i64 %arg138536, i64 %retprim138113); tail call
  ret void

else140264:
  %arg138538 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138016 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138538)               ; call prim_vector_45ref
  %a138017 = call i64 @prim_cdr(i64 %a138016)                                        ; call prim_cdr
  %arg138542 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138115 = call i64 @prim_vector_45set_33(i64 %ZY7$lst, i64 %arg138542, i64 %a138017); call prim_vector_45set_33
  %cloptr140269 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr140271 = getelementptr inbounds i64, i64* %cloptr140269, i64 1                ; &eptr140271[1]
  %eptr140272 = getelementptr inbounds i64, i64* %cloptr140269, i64 2                ; &eptr140272[2]
  store i64 %cont138111, i64* %eptr140271                                            ; *eptr140271 = %cont138111
  store i64 %b8n$cc, i64* %eptr140272                                                ; *eptr140272 = %b8n$cc
  %eptr140270 = getelementptr inbounds i64, i64* %cloptr140269, i64 0                ; &cloptr140269[0]
  %f140273 = ptrtoint void(i64,i64,i64)* @lam139403 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140273, i64* %eptr140270                                               ; store fptr
  %arg138546 = ptrtoint i64* %cloptr140269 to i64                                    ; closure cast; i64* -> i64
  %arg138545 = add i64 0, 0                                                          ; quoted ()
  %cloptr140274 = inttoptr i64 %arg138546 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140274)                                       ; assert function application
  %i0ptr140275 = getelementptr inbounds i64, i64* %cloptr140274, i64 0               ; &cloptr140274[0]
  %f140277 = load i64, i64* %i0ptr140275, align 8                                    ; load; *i0ptr140275
  %fptr140276 = inttoptr i64 %f140277 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140276(i64 %arg138546, i64 %arg138545, i64 %retprim138115); tail call
  ret void
}


define void @lam139403(i64 %env139404, i64 %_95138114, i64 %qyx$_950) {
  %envptr140278 = inttoptr i64 %env139404 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140279 = getelementptr inbounds i64, i64* %envptr140278, i64 2              ; &envptr140278[2]
  %b8n$cc = load i64, i64* %envptr140279, align 8                                    ; load; *envptr140279
  %envptr140280 = inttoptr i64 %env139404 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140281 = getelementptr inbounds i64, i64* %envptr140280, i64 1              ; &envptr140280[1]
  %cont138111 = load i64, i64* %envptr140281, align 8                                ; load; *envptr140281
  %cloptr140282 = inttoptr i64 %b8n$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140282)                                       ; assert function application
  %i0ptr140283 = getelementptr inbounds i64, i64* %cloptr140282, i64 0               ; &cloptr140282[0]
  %f140285 = load i64, i64* %i0ptr140283, align 8                                    ; load; *i0ptr140283
  %fptr140284 = inttoptr i64 %f140285 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140284(i64 %b8n$cc, i64 %cont138111, i64 %b8n$cc)   ; tail call
  ret void
}


define void @lam139396(i64 %env139397, i64 %_95138112, i64 %b8n$cc) {
  %envptr140286 = inttoptr i64 %env139397 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140287 = getelementptr inbounds i64, i64* %envptr140286, i64 3              ; &envptr140286[3]
  %ZY7$lst = load i64, i64* %envptr140287, align 8                                   ; load; *envptr140287
  %envptr140288 = inttoptr i64 %env139397 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140289 = getelementptr inbounds i64, i64* %envptr140288, i64 2              ; &envptr140288[2]
  %wSx$v = load i64, i64* %envptr140289, align 8                                     ; load; *envptr140289
  %envptr140290 = inttoptr i64 %env139397 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140291 = getelementptr inbounds i64, i64* %envptr140290, i64 1              ; &envptr140290[1]
  %cont138111 = load i64, i64* %envptr140291, align 8                                ; load; *envptr140291
  %arg138550 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138011 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138550)               ; call prim_vector_45ref
  %a138012 = call i64 @prim_null_63(i64 %a138011)                                    ; call prim_null_63
  %cmp140292 = icmp eq i64 %a138012, 15                                              ; false?
  br i1 %cmp140292, label %else140294, label %then140293                             ; if

then140293:
  %arg138554 = add i64 0, 0                                                          ; quoted ()
  %arg138553 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr140295 = inttoptr i64 %cont138111 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140295)                                       ; assert function application
  %i0ptr140296 = getelementptr inbounds i64, i64* %cloptr140295, i64 0               ; &cloptr140295[0]
  %f140298 = load i64, i64* %i0ptr140296, align 8                                    ; load; *i0ptr140296
  %fptr140297 = inttoptr i64 %f140298 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140297(i64 %cont138111, i64 %arg138554, i64 %arg138553); tail call
  ret void

else140294:
  %arg138556 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138013 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138556)               ; call prim_vector_45ref
  %a138014 = call i64 @prim_car(i64 %a138013)                                        ; call prim_car
  %a138015 = call i64 @prim_eqv_63(i64 %a138014, i64 %wSx$v)                         ; call prim_eqv_63
  %cmp140299 = icmp eq i64 %a138015, 15                                              ; false?
  br i1 %cmp140299, label %else140301, label %then140300                             ; if

then140300:
  %arg138561 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138113 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138561)         ; call prim_vector_45ref
  %arg138564 = add i64 0, 0                                                          ; quoted ()
  %cloptr140302 = inttoptr i64 %cont138111 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140302)                                       ; assert function application
  %i0ptr140303 = getelementptr inbounds i64, i64* %cloptr140302, i64 0               ; &cloptr140302[0]
  %f140305 = load i64, i64* %i0ptr140303, align 8                                    ; load; *i0ptr140303
  %fptr140304 = inttoptr i64 %f140305 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140304(i64 %cont138111, i64 %arg138564, i64 %retprim138113); tail call
  ret void

else140301:
  %arg138566 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138016 = call i64 @prim_vector_45ref(i64 %ZY7$lst, i64 %arg138566)               ; call prim_vector_45ref
  %a138017 = call i64 @prim_cdr(i64 %a138016)                                        ; call prim_cdr
  %arg138570 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138115 = call i64 @prim_vector_45set_33(i64 %ZY7$lst, i64 %arg138570, i64 %a138017); call prim_vector_45set_33
  %cloptr140306 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr140308 = getelementptr inbounds i64, i64* %cloptr140306, i64 1                ; &eptr140308[1]
  %eptr140309 = getelementptr inbounds i64, i64* %cloptr140306, i64 2                ; &eptr140309[2]
  store i64 %cont138111, i64* %eptr140308                                            ; *eptr140308 = %cont138111
  store i64 %b8n$cc, i64* %eptr140309                                                ; *eptr140309 = %b8n$cc
  %eptr140307 = getelementptr inbounds i64, i64* %cloptr140306, i64 0                ; &cloptr140306[0]
  %f140310 = ptrtoint void(i64,i64,i64)* @lam139390 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140310, i64* %eptr140307                                               ; store fptr
  %arg138574 = ptrtoint i64* %cloptr140306 to i64                                    ; closure cast; i64* -> i64
  %arg138573 = add i64 0, 0                                                          ; quoted ()
  %cloptr140311 = inttoptr i64 %arg138574 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140311)                                       ; assert function application
  %i0ptr140312 = getelementptr inbounds i64, i64* %cloptr140311, i64 0               ; &cloptr140311[0]
  %f140314 = load i64, i64* %i0ptr140312, align 8                                    ; load; *i0ptr140312
  %fptr140313 = inttoptr i64 %f140314 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140313(i64 %arg138574, i64 %arg138573, i64 %retprim138115); tail call
  ret void
}


define void @lam139390(i64 %env139391, i64 %_95138114, i64 %qyx$_950) {
  %envptr140315 = inttoptr i64 %env139391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140316 = getelementptr inbounds i64, i64* %envptr140315, i64 2              ; &envptr140315[2]
  %b8n$cc = load i64, i64* %envptr140316, align 8                                    ; load; *envptr140316
  %envptr140317 = inttoptr i64 %env139391 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140318 = getelementptr inbounds i64, i64* %envptr140317, i64 1              ; &envptr140317[1]
  %cont138111 = load i64, i64* %envptr140318, align 8                                ; load; *envptr140318
  %cloptr140319 = inttoptr i64 %b8n$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140319)                                       ; assert function application
  %i0ptr140320 = getelementptr inbounds i64, i64* %cloptr140319, i64 0               ; &cloptr140319[0]
  %f140322 = load i64, i64* %i0ptr140320, align 8                                    ; load; *i0ptr140320
  %fptr140321 = inttoptr i64 %f140322 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140321(i64 %b8n$cc, i64 %cont138111, i64 %b8n$cc)   ; tail call
  ret void
}


define void @lam139383(i64 %env139384, i64 %Mdv$args138118) {
  %envptr140323 = inttoptr i64 %env139384 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140324 = getelementptr inbounds i64, i64* %envptr140323, i64 1              ; &envptr140323[1]
  %Cu0$_37foldl1 = load i64, i64* %envptr140324, align 8                             ; load; *envptr140324
  %cont138117 = call i64 @prim_car(i64 %Mdv$args138118)                              ; call prim_car
  %Mdv$args = call i64 @prim_cdr(i64 %Mdv$args138118)                                ; call prim_cdr
  %a138018 = call i64 @prim_null_63(i64 %Mdv$args)                                   ; call prim_null_63
  %cmp140325 = icmp eq i64 %a138018, 15                                              ; false?
  br i1 %cmp140325, label %else140327, label %then140326                             ; if

then140326:
  %arg138582 = add i64 0, 0                                                          ; quoted ()
  %arg138581 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr140328 = inttoptr i64 %cont138117 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140328)                                       ; assert function application
  %i0ptr140329 = getelementptr inbounds i64, i64* %cloptr140328, i64 0               ; &cloptr140328[0]
  %f140331 = load i64, i64* %i0ptr140329, align 8                                    ; load; *i0ptr140329
  %fptr140330 = inttoptr i64 %f140331 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140330(i64 %cont138117, i64 %arg138582, i64 %arg138581); tail call
  ret void

else140327:
  %a138019 = call i64 @prim_cdr(i64 %Mdv$args)                                       ; call prim_cdr
  %a138020 = call i64 @prim_null_63(i64 %a138019)                                    ; call prim_null_63
  %cmp140332 = icmp eq i64 %a138020, 15                                              ; false?
  br i1 %cmp140332, label %else140334, label %then140333                             ; if

then140333:
  %retprim138119 = call i64 @prim_car(i64 %Mdv$args)                                 ; call prim_car
  %arg138588 = add i64 0, 0                                                          ; quoted ()
  %cloptr140335 = inttoptr i64 %cont138117 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140335)                                       ; assert function application
  %i0ptr140336 = getelementptr inbounds i64, i64* %cloptr140335, i64 0               ; &cloptr140335[0]
  %f140338 = load i64, i64* %i0ptr140336, align 8                                    ; load; *i0ptr140336
  %fptr140337 = inttoptr i64 %f140338 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140337(i64 %cont138117, i64 %arg138588, i64 %retprim138119); tail call
  ret void

else140334:
  %a138021 = call i64 @prim_car(i64 %Mdv$args)                                       ; call prim_car
  %a138022 = call i64 @prim_cdr(i64 %Mdv$args)                                       ; call prim_cdr
  %cloptr140339 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr140340 = getelementptr inbounds i64, i64* %cloptr140339, i64 0                ; &cloptr140339[0]
  %f140341 = ptrtoint void(i64,i64,i64,i64)* @lam139381 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f140341, i64* %eptr140340                                               ; store fptr
  %arg138594 = ptrtoint i64* %cloptr140339 to i64                                    ; closure cast; i64* -> i64
  %cloptr140342 = inttoptr i64 %Cu0$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140342)                                       ; assert function application
  %i0ptr140343 = getelementptr inbounds i64, i64* %cloptr140342, i64 0               ; &cloptr140342[0]
  %f140345 = load i64, i64* %i0ptr140343, align 8                                    ; load; *i0ptr140343
  %fptr140344 = inttoptr i64 %f140345 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140344(i64 %Cu0$_37foldl1, i64 %cont138117, i64 %arg138594, i64 %a138021, i64 %a138022); tail call
  ret void
}


define void @lam139381(i64 %env139382, i64 %cont138120, i64 %a2A$n, i64 %h45$v) {
  %retprim138121 = call i64 @prim__47(i64 %h45$v, i64 %a2A$n)                        ; call prim__47
  %arg138600 = add i64 0, 0                                                          ; quoted ()
  %cloptr140346 = inttoptr i64 %cont138120 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140346)                                       ; assert function application
  %i0ptr140347 = getelementptr inbounds i64, i64* %cloptr140346, i64 0               ; &cloptr140346[0]
  %f140349 = load i64, i64* %i0ptr140347, align 8                                    ; load; *i0ptr140347
  %fptr140348 = inttoptr i64 %f140349 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140348(i64 %cont138120, i64 %arg138600, i64 %retprim138121); tail call
  ret void
}


define void @lam139375(i64 %env139376, i64 %cont138122, i64 %ZzZ$x) {
  %retprim138123 = call i64 @prim_car(i64 %ZzZ$x)                                    ; call prim_car
  %arg138604 = add i64 0, 0                                                          ; quoted ()
  %cloptr140350 = inttoptr i64 %cont138122 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140350)                                       ; assert function application
  %i0ptr140351 = getelementptr inbounds i64, i64* %cloptr140350, i64 0               ; &cloptr140350[0]
  %f140353 = load i64, i64* %i0ptr140351, align 8                                    ; load; *i0ptr140351
  %fptr140352 = inttoptr i64 %f140353 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140352(i64 %cont138122, i64 %arg138604, i64 %retprim138123); tail call
  ret void
}


define void @lam139372(i64 %env139373, i64 %cont138124, i64 %HIB$x) {
  %a138023 = call i64 @prim_cdr(i64 %HIB$x)                                          ; call prim_cdr
  %retprim138125 = call i64 @prim_car(i64 %a138023)                                  ; call prim_car
  %arg138609 = add i64 0, 0                                                          ; quoted ()
  %cloptr140354 = inttoptr i64 %cont138124 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140354)                                       ; assert function application
  %i0ptr140355 = getelementptr inbounds i64, i64* %cloptr140354, i64 0               ; &cloptr140354[0]
  %f140357 = load i64, i64* %i0ptr140355, align 8                                    ; load; *i0ptr140355
  %fptr140356 = inttoptr i64 %f140357 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140356(i64 %cont138124, i64 %arg138609, i64 %retprim138125); tail call
  ret void
}


define void @lam139369(i64 %env139370, i64 %cont138126, i64 %nRY$x) {
  %a138024 = call i64 @prim_cdr(i64 %nRY$x)                                          ; call prim_cdr
  %a138025 = call i64 @prim_cdr(i64 %a138024)                                        ; call prim_cdr
  %retprim138127 = call i64 @prim_car(i64 %a138025)                                  ; call prim_car
  %arg138615 = add i64 0, 0                                                          ; quoted ()
  %cloptr140358 = inttoptr i64 %cont138126 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140358)                                       ; assert function application
  %i0ptr140359 = getelementptr inbounds i64, i64* %cloptr140358, i64 0               ; &cloptr140358[0]
  %f140361 = load i64, i64* %i0ptr140359, align 8                                    ; load; *i0ptr140359
  %fptr140360 = inttoptr i64 %f140361 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140360(i64 %cont138126, i64 %arg138615, i64 %retprim138127); tail call
  ret void
}


define void @lam139366(i64 %env139367, i64 %cont138128, i64 %Z0I$x) {
  %a138026 = call i64 @prim_cdr(i64 %Z0I$x)                                          ; call prim_cdr
  %a138027 = call i64 @prim_cdr(i64 %a138026)                                        ; call prim_cdr
  %a138028 = call i64 @prim_cdr(i64 %a138027)                                        ; call prim_cdr
  %retprim138129 = call i64 @prim_car(i64 %a138028)                                  ; call prim_car
  %arg138622 = add i64 0, 0                                                          ; quoted ()
  %cloptr140362 = inttoptr i64 %cont138128 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140362)                                       ; assert function application
  %i0ptr140363 = getelementptr inbounds i64, i64* %cloptr140362, i64 0               ; &cloptr140362[0]
  %f140365 = load i64, i64* %i0ptr140363, align 8                                    ; load; *i0ptr140363
  %fptr140364 = inttoptr i64 %f140365 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140364(i64 %cont138128, i64 %arg138622, i64 %retprim138129); tail call
  ret void
}


define void @lam139363(i64 %env139364, i64 %cont138130, i64 %Ae5$p) {
  %a138029 = call i64 @prim_cons_63(i64 %Ae5$p)                                      ; call prim_cons_63
  %cmp140366 = icmp eq i64 %a138029, 15                                              ; false?
  br i1 %cmp140366, label %else140368, label %then140367                             ; if

then140367:
  %a138030 = call i64 @prim_car(i64 %Ae5$p)                                          ; call prim_car
  %arg138626 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym140369, i32 0, i32 0)); quoted string
  %retprim138131 = call i64 @prim_eq_63(i64 %a138030, i64 %arg138626)                ; call prim_eq_63
  %arg138629 = add i64 0, 0                                                          ; quoted ()
  %cloptr140370 = inttoptr i64 %cont138130 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140370)                                       ; assert function application
  %i0ptr140371 = getelementptr inbounds i64, i64* %cloptr140370, i64 0               ; &cloptr140370[0]
  %f140373 = load i64, i64* %i0ptr140371, align 8                                    ; load; *i0ptr140371
  %fptr140372 = inttoptr i64 %f140373 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140372(i64 %cont138130, i64 %arg138629, i64 %retprim138131); tail call
  ret void

else140368:
  %arg138632 = add i64 0, 0                                                          ; quoted ()
  %arg138631 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr140374 = inttoptr i64 %cont138130 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140374)                                       ; assert function application
  %i0ptr140375 = getelementptr inbounds i64, i64* %cloptr140374, i64 0               ; &cloptr140374[0]
  %f140377 = load i64, i64* %i0ptr140375, align 8                                    ; load; *i0ptr140375
  %fptr140376 = inttoptr i64 %f140377 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140376(i64 %cont138130, i64 %arg138632, i64 %arg138631); tail call
  ret void
}


define void @lam139357(i64 %env139358, i64 %PWg$lst138176) {
  %cont138175 = call i64 @prim_car(i64 %PWg$lst138176)                               ; call prim_car
  %PWg$lst = call i64 @prim_cdr(i64 %PWg$lst138176)                                  ; call prim_cdr
  %arg138639 = add i64 0, 0                                                          ; quoted ()
  %cloptr140378 = inttoptr i64 %cont138175 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140378)                                       ; assert function application
  %i0ptr140379 = getelementptr inbounds i64, i64* %cloptr140378, i64 0               ; &cloptr140378[0]
  %f140381 = load i64, i64* %i0ptr140379, align 8                                    ; load; *i0ptr140379
  %fptr140380 = inttoptr i64 %f140381 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140380(i64 %cont138175, i64 %arg138639, i64 %PWg$lst); tail call
  ret void
}


define void @lam139354(i64 %env139355, i64 %_95138132, i64 %ZAf$_37raise_45handler) {
  %envptr140382 = inttoptr i64 %env139355 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140383 = getelementptr inbounds i64, i64* %envptr140382, i64 3              ; &envptr140382[3]
  %azM$_37drop = load i64, i64* %envptr140383, align 8                               ; load; *envptr140383
  %envptr140384 = inttoptr i64 %env139355 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140385 = getelementptr inbounds i64, i64* %envptr140384, i64 2              ; &envptr140384[2]
  %dR5$_37_62 = load i64, i64* %envptr140385, align 8                                ; load; *envptr140385
  %envptr140386 = inttoptr i64 %env139355 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140387 = getelementptr inbounds i64, i64* %envptr140386, i64 1              ; &envptr140386[1]
  %pFG$_37length = load i64, i64* %envptr140387, align 8                             ; load; *envptr140387
  %cloptr140388 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr140389 = getelementptr inbounds i64, i64* %cloptr140388, i64 0                ; &cloptr140388[0]
  %f140390 = ptrtoint void(i64,i64)* @lam139352 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f140390, i64* %eptr140389                                               ; store fptr
  %arg138642 = ptrtoint i64* %cloptr140388 to i64                                    ; closure cast; i64* -> i64
  %cloptr140391 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140393 = getelementptr inbounds i64, i64* %cloptr140391, i64 1                ; &eptr140393[1]
  %eptr140394 = getelementptr inbounds i64, i64* %cloptr140391, i64 2                ; &eptr140394[2]
  %eptr140395 = getelementptr inbounds i64, i64* %cloptr140391, i64 3                ; &eptr140395[3]
  store i64 %pFG$_37length, i64* %eptr140393                                         ; *eptr140393 = %pFG$_37length
  store i64 %dR5$_37_62, i64* %eptr140394                                            ; *eptr140394 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140395                                           ; *eptr140395 = %azM$_37drop
  %eptr140392 = getelementptr inbounds i64, i64* %cloptr140391, i64 0                ; &cloptr140391[0]
  %f140396 = ptrtoint void(i64,i64,i64)* @lam139349 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140396, i64* %eptr140392                                               ; store fptr
  %arg138641 = ptrtoint i64* %cloptr140391 to i64                                    ; closure cast; i64* -> i64
  %rva139100 = add i64 0, 0                                                          ; quoted ()
  %rva139099 = call i64 @prim_cons(i64 %arg138641, i64 %rva139100)                   ; call prim_cons
  %cloptr140397 = inttoptr i64 %arg138642 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140397)                                       ; assert function application
  %i0ptr140398 = getelementptr inbounds i64, i64* %cloptr140397, i64 0               ; &cloptr140397[0]
  %f140400 = load i64, i64* %i0ptr140398, align 8                                    ; load; *i0ptr140398
  %fptr140399 = inttoptr i64 %f140400 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140399(i64 %arg138642, i64 %rva139099)              ; tail call
  ret void
}


define void @lam139352(i64 %env139353, i64 %vGL$lst138174) {
  %cont138173 = call i64 @prim_car(i64 %vGL$lst138174)                               ; call prim_car
  %vGL$lst = call i64 @prim_cdr(i64 %vGL$lst138174)                                  ; call prim_cdr
  %arg138646 = add i64 0, 0                                                          ; quoted ()
  %cloptr140401 = inttoptr i64 %cont138173 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140401)                                       ; assert function application
  %i0ptr140402 = getelementptr inbounds i64, i64* %cloptr140401, i64 0               ; &cloptr140401[0]
  %f140404 = load i64, i64* %i0ptr140402, align 8                                    ; load; *i0ptr140402
  %fptr140403 = inttoptr i64 %f140404 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140403(i64 %cont138173, i64 %arg138646, i64 %vGL$lst); tail call
  ret void
}


define void @lam139349(i64 %env139350, i64 %_95138171, i64 %a138031) {
  %envptr140405 = inttoptr i64 %env139350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140406 = getelementptr inbounds i64, i64* %envptr140405, i64 3              ; &envptr140405[3]
  %azM$_37drop = load i64, i64* %envptr140406, align 8                               ; load; *envptr140406
  %envptr140407 = inttoptr i64 %env139350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140408 = getelementptr inbounds i64, i64* %envptr140407, i64 2              ; &envptr140407[2]
  %dR5$_37_62 = load i64, i64* %envptr140408, align 8                                ; load; *envptr140408
  %envptr140409 = inttoptr i64 %env139350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140410 = getelementptr inbounds i64, i64* %envptr140409, i64 1              ; &envptr140409[1]
  %pFG$_37length = load i64, i64* %envptr140410, align 8                             ; load; *envptr140410
  %arg138649 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim138172 = call i64 @prim_make_45vector(i64 %arg138649, i64 %a138031)        ; call prim_make_45vector
  %cloptr140411 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140413 = getelementptr inbounds i64, i64* %cloptr140411, i64 1                ; &eptr140413[1]
  %eptr140414 = getelementptr inbounds i64, i64* %cloptr140411, i64 2                ; &eptr140414[2]
  %eptr140415 = getelementptr inbounds i64, i64* %cloptr140411, i64 3                ; &eptr140415[3]
  store i64 %pFG$_37length, i64* %eptr140413                                         ; *eptr140413 = %pFG$_37length
  store i64 %dR5$_37_62, i64* %eptr140414                                            ; *eptr140414 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140415                                           ; *eptr140415 = %azM$_37drop
  %eptr140412 = getelementptr inbounds i64, i64* %cloptr140411, i64 0                ; &cloptr140411[0]
  %f140416 = ptrtoint void(i64,i64,i64)* @lam139346 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140416, i64* %eptr140412                                               ; store fptr
  %arg138652 = ptrtoint i64* %cloptr140411 to i64                                    ; closure cast; i64* -> i64
  %arg138651 = add i64 0, 0                                                          ; quoted ()
  %cloptr140417 = inttoptr i64 %arg138652 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140417)                                       ; assert function application
  %i0ptr140418 = getelementptr inbounds i64, i64* %cloptr140417, i64 0               ; &cloptr140417[0]
  %f140420 = load i64, i64* %i0ptr140418, align 8                                    ; load; *i0ptr140418
  %fptr140419 = inttoptr i64 %f140420 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140419(i64 %arg138652, i64 %arg138651, i64 %retprim138172); tail call
  ret void
}


define void @lam139346(i64 %env139347, i64 %_95138133, i64 %K1z$_37wind_45stack) {
  %envptr140421 = inttoptr i64 %env139347 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140422 = getelementptr inbounds i64, i64* %envptr140421, i64 3              ; &envptr140421[3]
  %azM$_37drop = load i64, i64* %envptr140422, align 8                               ; load; *envptr140422
  %envptr140423 = inttoptr i64 %env139347 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140424 = getelementptr inbounds i64, i64* %envptr140423, i64 2              ; &envptr140423[2]
  %dR5$_37_62 = load i64, i64* %envptr140424, align 8                                ; load; *envptr140424
  %envptr140425 = inttoptr i64 %env139347 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140426 = getelementptr inbounds i64, i64* %envptr140425, i64 1              ; &envptr140425[1]
  %pFG$_37length = load i64, i64* %envptr140426, align 8                             ; load; *envptr140426
  %cloptr140427 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140429 = getelementptr inbounds i64, i64* %cloptr140427, i64 1                ; &eptr140429[1]
  %eptr140430 = getelementptr inbounds i64, i64* %cloptr140427, i64 2                ; &eptr140430[2]
  %eptr140431 = getelementptr inbounds i64, i64* %cloptr140427, i64 3                ; &eptr140431[3]
  store i64 %pFG$_37length, i64* %eptr140429                                         ; *eptr140429 = %pFG$_37length
  store i64 %dR5$_37_62, i64* %eptr140430                                            ; *eptr140430 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140431                                           ; *eptr140431 = %azM$_37drop
  %eptr140428 = getelementptr inbounds i64, i64* %cloptr140427, i64 0                ; &cloptr140427[0]
  %f140432 = ptrtoint void(i64,i64,i64,i64)* @lam139344 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f140432, i64* %eptr140428                                               ; store fptr
  %uxu$_37common_45tail = ptrtoint i64* %cloptr140427 to i64                         ; closure cast; i64* -> i64
  %cloptr140433 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr140435 = getelementptr inbounds i64, i64* %cloptr140433, i64 1                ; &eptr140435[1]
  %eptr140436 = getelementptr inbounds i64, i64* %cloptr140433, i64 2                ; &eptr140436[2]
  store i64 %K1z$_37wind_45stack, i64* %eptr140435                                   ; *eptr140435 = %K1z$_37wind_45stack
  store i64 %uxu$_37common_45tail, i64* %eptr140436                                  ; *eptr140436 = %uxu$_37common_45tail
  %eptr140434 = getelementptr inbounds i64, i64* %cloptr140433, i64 0                ; &cloptr140433[0]
  %f140437 = ptrtoint void(i64,i64,i64)* @lam139302 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140437, i64* %eptr140434                                               ; store fptr
  %SVD$_37do_45wind = ptrtoint i64* %cloptr140433 to i64                             ; closure cast; i64* -> i64
  %arg138839 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg138838 = call i64 @const_init_int(i64 2)                                       ; quoted int
  %arg138837 = call i64 @const_init_int(i64 3)                                       ; quoted int
  call i64 @too_many_args()                                                          ; arity mismatch cdr
  ret void                                                                           ; 
}


define void @lam139344(i64 %env139345, i64 %cont138134, i64 %DDc$x, i64 %bb6$y) {
  %envptr140438 = inttoptr i64 %env139345 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140439 = getelementptr inbounds i64, i64* %envptr140438, i64 3              ; &envptr140438[3]
  %azM$_37drop = load i64, i64* %envptr140439, align 8                               ; load; *envptr140439
  %envptr140440 = inttoptr i64 %env139345 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140441 = getelementptr inbounds i64, i64* %envptr140440, i64 2              ; &envptr140440[2]
  %dR5$_37_62 = load i64, i64* %envptr140441, align 8                                ; load; *envptr140441
  %envptr140442 = inttoptr i64 %env139345 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140443 = getelementptr inbounds i64, i64* %envptr140442, i64 1              ; &envptr140442[1]
  %pFG$_37length = load i64, i64* %envptr140443, align 8                             ; load; *envptr140443
  %cloptr140444 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr140446 = getelementptr inbounds i64, i64* %cloptr140444, i64 1                ; &eptr140446[1]
  %eptr140447 = getelementptr inbounds i64, i64* %cloptr140444, i64 2                ; &eptr140447[2]
  %eptr140448 = getelementptr inbounds i64, i64* %cloptr140444, i64 3                ; &eptr140448[3]
  %eptr140449 = getelementptr inbounds i64, i64* %cloptr140444, i64 4                ; &eptr140449[4]
  %eptr140450 = getelementptr inbounds i64, i64* %cloptr140444, i64 5                ; &eptr140450[5]
  %eptr140451 = getelementptr inbounds i64, i64* %cloptr140444, i64 6                ; &eptr140451[6]
  store i64 %pFG$_37length, i64* %eptr140446                                         ; *eptr140446 = %pFG$_37length
  store i64 %dR5$_37_62, i64* %eptr140447                                            ; *eptr140447 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140448                                           ; *eptr140448 = %azM$_37drop
  store i64 %cont138134, i64* %eptr140449                                            ; *eptr140449 = %cont138134
  store i64 %bb6$y, i64* %eptr140450                                                 ; *eptr140450 = %bb6$y
  store i64 %DDc$x, i64* %eptr140451                                                 ; *eptr140451 = %DDc$x
  %eptr140445 = getelementptr inbounds i64, i64* %cloptr140444, i64 0                ; &cloptr140444[0]
  %f140452 = ptrtoint void(i64,i64,i64)* @lam139342 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140452, i64* %eptr140445                                               ; store fptr
  %arg138654 = ptrtoint i64* %cloptr140444 to i64                                    ; closure cast; i64* -> i64
  %cloptr140453 = inttoptr i64 %pFG$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140453)                                       ; assert function application
  %i0ptr140454 = getelementptr inbounds i64, i64* %cloptr140453, i64 0               ; &cloptr140453[0]
  %f140456 = load i64, i64* %i0ptr140454, align 8                                    ; load; *i0ptr140454
  %fptr140455 = inttoptr i64 %f140456 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140455(i64 %pFG$_37length, i64 %arg138654, i64 %DDc$x); tail call
  ret void
}


define void @lam139342(i64 %env139343, i64 %_95138135, i64 %x9D$lx) {
  %envptr140457 = inttoptr i64 %env139343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140458 = getelementptr inbounds i64, i64* %envptr140457, i64 6              ; &envptr140457[6]
  %DDc$x = load i64, i64* %envptr140458, align 8                                     ; load; *envptr140458
  %envptr140459 = inttoptr i64 %env139343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140460 = getelementptr inbounds i64, i64* %envptr140459, i64 5              ; &envptr140459[5]
  %bb6$y = load i64, i64* %envptr140460, align 8                                     ; load; *envptr140460
  %envptr140461 = inttoptr i64 %env139343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140462 = getelementptr inbounds i64, i64* %envptr140461, i64 4              ; &envptr140461[4]
  %cont138134 = load i64, i64* %envptr140462, align 8                                ; load; *envptr140462
  %envptr140463 = inttoptr i64 %env139343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140464 = getelementptr inbounds i64, i64* %envptr140463, i64 3              ; &envptr140463[3]
  %azM$_37drop = load i64, i64* %envptr140464, align 8                               ; load; *envptr140464
  %envptr140465 = inttoptr i64 %env139343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140466 = getelementptr inbounds i64, i64* %envptr140465, i64 2              ; &envptr140465[2]
  %dR5$_37_62 = load i64, i64* %envptr140466, align 8                                ; load; *envptr140466
  %envptr140467 = inttoptr i64 %env139343 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140468 = getelementptr inbounds i64, i64* %envptr140467, i64 1              ; &envptr140467[1]
  %pFG$_37length = load i64, i64* %envptr140468, align 8                             ; load; *envptr140468
  %cloptr140469 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr140471 = getelementptr inbounds i64, i64* %cloptr140469, i64 1                ; &eptr140471[1]
  %eptr140472 = getelementptr inbounds i64, i64* %cloptr140469, i64 2                ; &eptr140472[2]
  %eptr140473 = getelementptr inbounds i64, i64* %cloptr140469, i64 3                ; &eptr140473[3]
  %eptr140474 = getelementptr inbounds i64, i64* %cloptr140469, i64 4                ; &eptr140474[4]
  %eptr140475 = getelementptr inbounds i64, i64* %cloptr140469, i64 5                ; &eptr140475[5]
  %eptr140476 = getelementptr inbounds i64, i64* %cloptr140469, i64 6                ; &eptr140476[6]
  store i64 %dR5$_37_62, i64* %eptr140471                                            ; *eptr140471 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140472                                           ; *eptr140472 = %azM$_37drop
  store i64 %x9D$lx, i64* %eptr140473                                                ; *eptr140473 = %x9D$lx
  store i64 %cont138134, i64* %eptr140474                                            ; *eptr140474 = %cont138134
  store i64 %bb6$y, i64* %eptr140475                                                 ; *eptr140475 = %bb6$y
  store i64 %DDc$x, i64* %eptr140476                                                 ; *eptr140476 = %DDc$x
  %eptr140470 = getelementptr inbounds i64, i64* %cloptr140469, i64 0                ; &cloptr140469[0]
  %f140477 = ptrtoint void(i64,i64,i64)* @lam139340 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140477, i64* %eptr140470                                               ; store fptr
  %arg138657 = ptrtoint i64* %cloptr140469 to i64                                    ; closure cast; i64* -> i64
  %cloptr140478 = inttoptr i64 %pFG$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140478)                                       ; assert function application
  %i0ptr140479 = getelementptr inbounds i64, i64* %cloptr140478, i64 0               ; &cloptr140478[0]
  %f140481 = load i64, i64* %i0ptr140479, align 8                                    ; load; *i0ptr140479
  %fptr140480 = inttoptr i64 %f140481 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140480(i64 %pFG$_37length, i64 %arg138657, i64 %bb6$y); tail call
  ret void
}


define void @lam139340(i64 %env139341, i64 %_95138136, i64 %K4u$ly) {
  %envptr140482 = inttoptr i64 %env139341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140483 = getelementptr inbounds i64, i64* %envptr140482, i64 6              ; &envptr140482[6]
  %DDc$x = load i64, i64* %envptr140483, align 8                                     ; load; *envptr140483
  %envptr140484 = inttoptr i64 %env139341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140485 = getelementptr inbounds i64, i64* %envptr140484, i64 5              ; &envptr140484[5]
  %bb6$y = load i64, i64* %envptr140485, align 8                                     ; load; *envptr140485
  %envptr140486 = inttoptr i64 %env139341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140487 = getelementptr inbounds i64, i64* %envptr140486, i64 4              ; &envptr140486[4]
  %cont138134 = load i64, i64* %envptr140487, align 8                                ; load; *envptr140487
  %envptr140488 = inttoptr i64 %env139341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140489 = getelementptr inbounds i64, i64* %envptr140488, i64 3              ; &envptr140488[3]
  %x9D$lx = load i64, i64* %envptr140489, align 8                                    ; load; *envptr140489
  %envptr140490 = inttoptr i64 %env139341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140491 = getelementptr inbounds i64, i64* %envptr140490, i64 2              ; &envptr140490[2]
  %azM$_37drop = load i64, i64* %envptr140491, align 8                               ; load; *envptr140491
  %envptr140492 = inttoptr i64 %env139341 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140493 = getelementptr inbounds i64, i64* %envptr140492, i64 1              ; &envptr140492[1]
  %dR5$_37_62 = load i64, i64* %envptr140493, align 8                                ; load; *envptr140493
  %cloptr140494 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr140495 = getelementptr inbounds i64, i64* %cloptr140494, i64 0                ; &cloptr140494[0]
  %f140496 = ptrtoint void(i64,i64)* @lam139338 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f140496, i64* %eptr140495                                               ; store fptr
  %arg138660 = ptrtoint i64* %cloptr140494 to i64                                    ; closure cast; i64* -> i64
  %cloptr140497 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr140499 = getelementptr inbounds i64, i64* %cloptr140497, i64 1                ; &eptr140499[1]
  %eptr140500 = getelementptr inbounds i64, i64* %cloptr140497, i64 2                ; &eptr140500[2]
  %eptr140501 = getelementptr inbounds i64, i64* %cloptr140497, i64 3                ; &eptr140501[3]
  %eptr140502 = getelementptr inbounds i64, i64* %cloptr140497, i64 4                ; &eptr140502[4]
  %eptr140503 = getelementptr inbounds i64, i64* %cloptr140497, i64 5                ; &eptr140503[5]
  %eptr140504 = getelementptr inbounds i64, i64* %cloptr140497, i64 6                ; &eptr140504[6]
  %eptr140505 = getelementptr inbounds i64, i64* %cloptr140497, i64 7                ; &eptr140505[7]
  store i64 %dR5$_37_62, i64* %eptr140499                                            ; *eptr140499 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140500                                           ; *eptr140500 = %azM$_37drop
  store i64 %K4u$ly, i64* %eptr140501                                                ; *eptr140501 = %K4u$ly
  store i64 %x9D$lx, i64* %eptr140502                                                ; *eptr140502 = %x9D$lx
  store i64 %cont138134, i64* %eptr140503                                            ; *eptr140503 = %cont138134
  store i64 %bb6$y, i64* %eptr140504                                                 ; *eptr140504 = %bb6$y
  store i64 %DDc$x, i64* %eptr140505                                                 ; *eptr140505 = %DDc$x
  %eptr140498 = getelementptr inbounds i64, i64* %cloptr140497, i64 0                ; &cloptr140497[0]
  %f140506 = ptrtoint void(i64,i64,i64)* @lam139335 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140506, i64* %eptr140498                                               ; store fptr
  %arg138659 = ptrtoint i64* %cloptr140497 to i64                                    ; closure cast; i64* -> i64
  %cloptr140507 = inttoptr i64 %arg138660 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140507)                                       ; assert function application
  %i0ptr140508 = getelementptr inbounds i64, i64* %cloptr140507, i64 0               ; &cloptr140507[0]
  %f140510 = load i64, i64* %i0ptr140508, align 8                                    ; load; *i0ptr140508
  %fptr140509 = inttoptr i64 %f140510 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140509(i64 %arg138660, i64 %arg138659)              ; tail call
  ret void
}


define void @lam139338(i64 %env139339, i64 %AGR$lst138146) {
  %cont138145 = call i64 @prim_car(i64 %AGR$lst138146)                               ; call prim_car
  %AGR$lst = call i64 @prim_cdr(i64 %AGR$lst138146)                                  ; call prim_cdr
  %arg138664 = add i64 0, 0                                                          ; quoted ()
  %cloptr140511 = inttoptr i64 %cont138145 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140511)                                       ; assert function application
  %i0ptr140512 = getelementptr inbounds i64, i64* %cloptr140511, i64 0               ; &cloptr140511[0]
  %f140514 = load i64, i64* %i0ptr140512, align 8                                    ; load; *i0ptr140512
  %fptr140513 = inttoptr i64 %f140514 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140513(i64 %cont138145, i64 %arg138664, i64 %AGR$lst); tail call
  ret void
}


define void @lam139335(i64 %env139336, i64 %_95138143, i64 %a138032) {
  %envptr140515 = inttoptr i64 %env139336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140516 = getelementptr inbounds i64, i64* %envptr140515, i64 7              ; &envptr140515[7]
  %DDc$x = load i64, i64* %envptr140516, align 8                                     ; load; *envptr140516
  %envptr140517 = inttoptr i64 %env139336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140518 = getelementptr inbounds i64, i64* %envptr140517, i64 6              ; &envptr140517[6]
  %bb6$y = load i64, i64* %envptr140518, align 8                                     ; load; *envptr140518
  %envptr140519 = inttoptr i64 %env139336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140520 = getelementptr inbounds i64, i64* %envptr140519, i64 5              ; &envptr140519[5]
  %cont138134 = load i64, i64* %envptr140520, align 8                                ; load; *envptr140520
  %envptr140521 = inttoptr i64 %env139336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140522 = getelementptr inbounds i64, i64* %envptr140521, i64 4              ; &envptr140521[4]
  %x9D$lx = load i64, i64* %envptr140522, align 8                                    ; load; *envptr140522
  %envptr140523 = inttoptr i64 %env139336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140524 = getelementptr inbounds i64, i64* %envptr140523, i64 3              ; &envptr140523[3]
  %K4u$ly = load i64, i64* %envptr140524, align 8                                    ; load; *envptr140524
  %envptr140525 = inttoptr i64 %env139336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140526 = getelementptr inbounds i64, i64* %envptr140525, i64 2              ; &envptr140525[2]
  %azM$_37drop = load i64, i64* %envptr140526, align 8                               ; load; *envptr140526
  %envptr140527 = inttoptr i64 %env139336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140528 = getelementptr inbounds i64, i64* %envptr140527, i64 1              ; &envptr140527[1]
  %dR5$_37_62 = load i64, i64* %envptr140528, align 8                                ; load; *envptr140528
  %arg138667 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim138144 = call i64 @prim_make_45vector(i64 %arg138667, i64 %a138032)        ; call prim_make_45vector
  %cloptr140529 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr140531 = getelementptr inbounds i64, i64* %cloptr140529, i64 1                ; &eptr140531[1]
  %eptr140532 = getelementptr inbounds i64, i64* %cloptr140529, i64 2                ; &eptr140532[2]
  %eptr140533 = getelementptr inbounds i64, i64* %cloptr140529, i64 3                ; &eptr140533[3]
  %eptr140534 = getelementptr inbounds i64, i64* %cloptr140529, i64 4                ; &eptr140534[4]
  %eptr140535 = getelementptr inbounds i64, i64* %cloptr140529, i64 5                ; &eptr140535[5]
  %eptr140536 = getelementptr inbounds i64, i64* %cloptr140529, i64 6                ; &eptr140536[6]
  %eptr140537 = getelementptr inbounds i64, i64* %cloptr140529, i64 7                ; &eptr140537[7]
  store i64 %dR5$_37_62, i64* %eptr140531                                            ; *eptr140531 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140532                                           ; *eptr140532 = %azM$_37drop
  store i64 %K4u$ly, i64* %eptr140533                                                ; *eptr140533 = %K4u$ly
  store i64 %x9D$lx, i64* %eptr140534                                                ; *eptr140534 = %x9D$lx
  store i64 %cont138134, i64* %eptr140535                                            ; *eptr140535 = %cont138134
  store i64 %bb6$y, i64* %eptr140536                                                 ; *eptr140536 = %bb6$y
  store i64 %DDc$x, i64* %eptr140537                                                 ; *eptr140537 = %DDc$x
  %eptr140530 = getelementptr inbounds i64, i64* %cloptr140529, i64 0                ; &cloptr140529[0]
  %f140538 = ptrtoint void(i64,i64,i64)* @lam139332 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140538, i64* %eptr140530                                               ; store fptr
  %arg138670 = ptrtoint i64* %cloptr140529 to i64                                    ; closure cast; i64* -> i64
  %arg138669 = add i64 0, 0                                                          ; quoted ()
  %cloptr140539 = inttoptr i64 %arg138670 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140539)                                       ; assert function application
  %i0ptr140540 = getelementptr inbounds i64, i64* %cloptr140539, i64 0               ; &cloptr140539[0]
  %f140542 = load i64, i64* %i0ptr140540, align 8                                    ; load; *i0ptr140540
  %fptr140541 = inttoptr i64 %f140542 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140541(i64 %arg138670, i64 %arg138669, i64 %retprim138144); tail call
  ret void
}


define void @lam139332(i64 %env139333, i64 %_95138137, i64 %UZz$loop) {
  %envptr140543 = inttoptr i64 %env139333 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140544 = getelementptr inbounds i64, i64* %envptr140543, i64 7              ; &envptr140543[7]
  %DDc$x = load i64, i64* %envptr140544, align 8                                     ; load; *envptr140544
  %envptr140545 = inttoptr i64 %env139333 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140546 = getelementptr inbounds i64, i64* %envptr140545, i64 6              ; &envptr140545[6]
  %bb6$y = load i64, i64* %envptr140546, align 8                                     ; load; *envptr140546
  %envptr140547 = inttoptr i64 %env139333 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140548 = getelementptr inbounds i64, i64* %envptr140547, i64 5              ; &envptr140547[5]
  %cont138134 = load i64, i64* %envptr140548, align 8                                ; load; *envptr140548
  %envptr140549 = inttoptr i64 %env139333 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140550 = getelementptr inbounds i64, i64* %envptr140549, i64 4              ; &envptr140549[4]
  %x9D$lx = load i64, i64* %envptr140550, align 8                                    ; load; *envptr140550
  %envptr140551 = inttoptr i64 %env139333 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140552 = getelementptr inbounds i64, i64* %envptr140551, i64 3              ; &envptr140551[3]
  %K4u$ly = load i64, i64* %envptr140552, align 8                                    ; load; *envptr140552
  %envptr140553 = inttoptr i64 %env139333 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140554 = getelementptr inbounds i64, i64* %envptr140553, i64 2              ; &envptr140553[2]
  %azM$_37drop = load i64, i64* %envptr140554, align 8                               ; load; *envptr140554
  %envptr140555 = inttoptr i64 %env139333 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140556 = getelementptr inbounds i64, i64* %envptr140555, i64 1              ; &envptr140555[1]
  %dR5$_37_62 = load i64, i64* %envptr140556, align 8                                ; load; *envptr140556
  %arg138672 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr140557 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr140559 = getelementptr inbounds i64, i64* %cloptr140557, i64 1                ; &eptr140559[1]
  store i64 %UZz$loop, i64* %eptr140559                                              ; *eptr140559 = %UZz$loop
  %eptr140558 = getelementptr inbounds i64, i64* %cloptr140557, i64 0                ; &cloptr140557[0]
  %f140560 = ptrtoint void(i64,i64,i64,i64)* @lam139329 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f140560, i64* %eptr140558                                               ; store fptr
  %arg138671 = ptrtoint i64* %cloptr140557 to i64                                    ; closure cast; i64* -> i64
  %pbR$_95137936 = call i64 @prim_vector_45set_33(i64 %UZz$loop, i64 %arg138672, i64 %arg138671); call prim_vector_45set_33
  %arg138687 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138037 = call i64 @prim_vector_45ref(i64 %UZz$loop, i64 %arg138687)              ; call prim_vector_45ref
  %cloptr140561 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr140563 = getelementptr inbounds i64, i64* %cloptr140561, i64 1                ; &eptr140563[1]
  %eptr140564 = getelementptr inbounds i64, i64* %cloptr140561, i64 2                ; &eptr140564[2]
  %eptr140565 = getelementptr inbounds i64, i64* %cloptr140561, i64 3                ; &eptr140565[3]
  %eptr140566 = getelementptr inbounds i64, i64* %cloptr140561, i64 4                ; &eptr140566[4]
  %eptr140567 = getelementptr inbounds i64, i64* %cloptr140561, i64 5                ; &eptr140567[5]
  %eptr140568 = getelementptr inbounds i64, i64* %cloptr140561, i64 6                ; &eptr140568[6]
  %eptr140569 = getelementptr inbounds i64, i64* %cloptr140561, i64 7                ; &eptr140569[7]
  %eptr140570 = getelementptr inbounds i64, i64* %cloptr140561, i64 8                ; &eptr140570[8]
  store i64 %a138037, i64* %eptr140563                                               ; *eptr140563 = %a138037
  store i64 %dR5$_37_62, i64* %eptr140564                                            ; *eptr140564 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140565                                           ; *eptr140565 = %azM$_37drop
  store i64 %K4u$ly, i64* %eptr140566                                                ; *eptr140566 = %K4u$ly
  store i64 %x9D$lx, i64* %eptr140567                                                ; *eptr140567 = %x9D$lx
  store i64 %cont138134, i64* %eptr140568                                            ; *eptr140568 = %cont138134
  store i64 %bb6$y, i64* %eptr140569                                                 ; *eptr140569 = %bb6$y
  store i64 %DDc$x, i64* %eptr140570                                                 ; *eptr140570 = %DDc$x
  %eptr140562 = getelementptr inbounds i64, i64* %cloptr140561, i64 0                ; &cloptr140561[0]
  %f140571 = ptrtoint void(i64,i64,i64)* @lam139324 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140571, i64* %eptr140562                                               ; store fptr
  %arg138691 = ptrtoint i64* %cloptr140561 to i64                                    ; closure cast; i64* -> i64
  %cloptr140572 = inttoptr i64 %dR5$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140572)                                       ; assert function application
  %i0ptr140573 = getelementptr inbounds i64, i64* %cloptr140572, i64 0               ; &cloptr140572[0]
  %f140575 = load i64, i64* %i0ptr140573, align 8                                    ; load; *i0ptr140573
  %fptr140574 = inttoptr i64 %f140575 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140574(i64 %dR5$_37_62, i64 %arg138691, i64 %x9D$lx, i64 %K4u$ly); tail call
  ret void
}


define void @lam139329(i64 %env139330, i64 %cont138138, i64 %Y9o$x, i64 %skM$y) {
  %envptr140576 = inttoptr i64 %env139330 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140577 = getelementptr inbounds i64, i64* %envptr140576, i64 1              ; &envptr140576[1]
  %UZz$loop = load i64, i64* %envptr140577, align 8                                  ; load; *envptr140577
  %a138033 = call i64 @prim_eq_63(i64 %Y9o$x, i64 %skM$y)                            ; call prim_eq_63
  %cmp140578 = icmp eq i64 %a138033, 15                                              ; false?
  br i1 %cmp140578, label %else140580, label %then140579                             ; if

then140579:
  %arg138677 = add i64 0, 0                                                          ; quoted ()
  %cloptr140581 = inttoptr i64 %cont138138 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140581)                                       ; assert function application
  %i0ptr140582 = getelementptr inbounds i64, i64* %cloptr140581, i64 0               ; &cloptr140581[0]
  %f140584 = load i64, i64* %i0ptr140582, align 8                                    ; load; *i0ptr140582
  %fptr140583 = inttoptr i64 %f140584 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140583(i64 %cont138138, i64 %arg138677, i64 %Y9o$x) ; tail call
  ret void

else140580:
  %arg138679 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138034 = call i64 @prim_vector_45ref(i64 %UZz$loop, i64 %arg138679)              ; call prim_vector_45ref
  %a138035 = call i64 @prim_cdr(i64 %Y9o$x)                                          ; call prim_cdr
  %a138036 = call i64 @prim_cdr(i64 %skM$y)                                          ; call prim_cdr
  %cloptr140585 = inttoptr i64 %a138034 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140585)                                       ; assert function application
  %i0ptr140586 = getelementptr inbounds i64, i64* %cloptr140585, i64 0               ; &cloptr140585[0]
  %f140588 = load i64, i64* %i0ptr140586, align 8                                    ; load; *i0ptr140586
  %fptr140587 = inttoptr i64 %f140588 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140587(i64 %a138034, i64 %cont138138, i64 %a138035, i64 %a138036); tail call
  ret void
}


define void @lam139324(i64 %env139325, i64 %_95138139, i64 %a138038) {
  %envptr140589 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140590 = getelementptr inbounds i64, i64* %envptr140589, i64 8              ; &envptr140589[8]
  %DDc$x = load i64, i64* %envptr140590, align 8                                     ; load; *envptr140590
  %envptr140591 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140592 = getelementptr inbounds i64, i64* %envptr140591, i64 7              ; &envptr140591[7]
  %bb6$y = load i64, i64* %envptr140592, align 8                                     ; load; *envptr140592
  %envptr140593 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140594 = getelementptr inbounds i64, i64* %envptr140593, i64 6              ; &envptr140593[6]
  %cont138134 = load i64, i64* %envptr140594, align 8                                ; load; *envptr140594
  %envptr140595 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140596 = getelementptr inbounds i64, i64* %envptr140595, i64 5              ; &envptr140595[5]
  %x9D$lx = load i64, i64* %envptr140596, align 8                                    ; load; *envptr140596
  %envptr140597 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140598 = getelementptr inbounds i64, i64* %envptr140597, i64 4              ; &envptr140597[4]
  %K4u$ly = load i64, i64* %envptr140598, align 8                                    ; load; *envptr140598
  %envptr140599 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140600 = getelementptr inbounds i64, i64* %envptr140599, i64 3              ; &envptr140599[3]
  %azM$_37drop = load i64, i64* %envptr140600, align 8                               ; load; *envptr140600
  %envptr140601 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140602 = getelementptr inbounds i64, i64* %envptr140601, i64 2              ; &envptr140601[2]
  %dR5$_37_62 = load i64, i64* %envptr140602, align 8                                ; load; *envptr140602
  %envptr140603 = inttoptr i64 %env139325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140604 = getelementptr inbounds i64, i64* %envptr140603, i64 1              ; &envptr140603[1]
  %a138037 = load i64, i64* %envptr140604, align 8                                   ; load; *envptr140604
  %cmp140605 = icmp eq i64 %a138038, 15                                              ; false?
  br i1 %cmp140605, label %else140607, label %then140606                             ; if

then140606:
  %a138039 = call i64 @prim__45(i64 %x9D$lx, i64 %K4u$ly)                            ; call prim__45
  %cloptr140608 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr140610 = getelementptr inbounds i64, i64* %cloptr140608, i64 1                ; &eptr140610[1]
  %eptr140611 = getelementptr inbounds i64, i64* %cloptr140608, i64 2                ; &eptr140611[2]
  %eptr140612 = getelementptr inbounds i64, i64* %cloptr140608, i64 3                ; &eptr140612[3]
  %eptr140613 = getelementptr inbounds i64, i64* %cloptr140608, i64 4                ; &eptr140613[4]
  %eptr140614 = getelementptr inbounds i64, i64* %cloptr140608, i64 5                ; &eptr140614[5]
  %eptr140615 = getelementptr inbounds i64, i64* %cloptr140608, i64 6                ; &eptr140615[6]
  %eptr140616 = getelementptr inbounds i64, i64* %cloptr140608, i64 7                ; &eptr140616[7]
  store i64 %a138037, i64* %eptr140610                                               ; *eptr140610 = %a138037
  store i64 %dR5$_37_62, i64* %eptr140611                                            ; *eptr140611 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140612                                           ; *eptr140612 = %azM$_37drop
  store i64 %K4u$ly, i64* %eptr140613                                                ; *eptr140613 = %K4u$ly
  store i64 %x9D$lx, i64* %eptr140614                                                ; *eptr140614 = %x9D$lx
  store i64 %cont138134, i64* %eptr140615                                            ; *eptr140615 = %cont138134
  store i64 %bb6$y, i64* %eptr140616                                                 ; *eptr140616 = %bb6$y
  %eptr140609 = getelementptr inbounds i64, i64* %cloptr140608, i64 0                ; &cloptr140608[0]
  %f140617 = ptrtoint void(i64,i64,i64)* @lam139312 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140617, i64* %eptr140609                                               ; store fptr
  %arg138697 = ptrtoint i64* %cloptr140608 to i64                                    ; closure cast; i64* -> i64
  %cloptr140618 = inttoptr i64 %azM$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140618)                                       ; assert function application
  %i0ptr140619 = getelementptr inbounds i64, i64* %cloptr140618, i64 0               ; &cloptr140618[0]
  %f140621 = load i64, i64* %i0ptr140619, align 8                                    ; load; *i0ptr140619
  %fptr140620 = inttoptr i64 %f140621 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140620(i64 %azM$_37drop, i64 %arg138697, i64 %DDc$x, i64 %a138039); tail call
  ret void

else140607:
  %cloptr140622 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr140624 = getelementptr inbounds i64, i64* %cloptr140622, i64 1                ; &eptr140624[1]
  %eptr140625 = getelementptr inbounds i64, i64* %cloptr140622, i64 2                ; &eptr140625[2]
  %eptr140626 = getelementptr inbounds i64, i64* %cloptr140622, i64 3                ; &eptr140626[3]
  %eptr140627 = getelementptr inbounds i64, i64* %cloptr140622, i64 4                ; &eptr140627[4]
  %eptr140628 = getelementptr inbounds i64, i64* %cloptr140622, i64 5                ; &eptr140628[5]
  %eptr140629 = getelementptr inbounds i64, i64* %cloptr140622, i64 6                ; &eptr140629[6]
  %eptr140630 = getelementptr inbounds i64, i64* %cloptr140622, i64 7                ; &eptr140630[7]
  store i64 %a138037, i64* %eptr140624                                               ; *eptr140624 = %a138037
  store i64 %dR5$_37_62, i64* %eptr140625                                            ; *eptr140625 = %dR5$_37_62
  store i64 %azM$_37drop, i64* %eptr140626                                           ; *eptr140626 = %azM$_37drop
  store i64 %K4u$ly, i64* %eptr140627                                                ; *eptr140627 = %K4u$ly
  store i64 %x9D$lx, i64* %eptr140628                                                ; *eptr140628 = %x9D$lx
  store i64 %cont138134, i64* %eptr140629                                            ; *eptr140629 = %cont138134
  store i64 %bb6$y, i64* %eptr140630                                                 ; *eptr140630 = %bb6$y
  %eptr140623 = getelementptr inbounds i64, i64* %cloptr140622, i64 0                ; &cloptr140622[0]
  %f140631 = ptrtoint void(i64,i64,i64)* @lam139322 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140631, i64* %eptr140623                                               ; store fptr
  %arg138722 = ptrtoint i64* %cloptr140622 to i64                                    ; closure cast; i64* -> i64
  %arg138721 = add i64 0, 0                                                          ; quoted ()
  %cloptr140632 = inttoptr i64 %arg138722 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140632)                                       ; assert function application
  %i0ptr140633 = getelementptr inbounds i64, i64* %cloptr140632, i64 0               ; &cloptr140632[0]
  %f140635 = load i64, i64* %i0ptr140633, align 8                                    ; load; *i0ptr140633
  %fptr140634 = inttoptr i64 %f140635 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140634(i64 %arg138722, i64 %arg138721, i64 %DDc$x)  ; tail call
  ret void
}


define void @lam139322(i64 %env139323, i64 %_95138140, i64 %a138040) {
  %envptr140636 = inttoptr i64 %env139323 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140637 = getelementptr inbounds i64, i64* %envptr140636, i64 7              ; &envptr140636[7]
  %bb6$y = load i64, i64* %envptr140637, align 8                                     ; load; *envptr140637
  %envptr140638 = inttoptr i64 %env139323 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140639 = getelementptr inbounds i64, i64* %envptr140638, i64 6              ; &envptr140638[6]
  %cont138134 = load i64, i64* %envptr140639, align 8                                ; load; *envptr140639
  %envptr140640 = inttoptr i64 %env139323 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140641 = getelementptr inbounds i64, i64* %envptr140640, i64 5              ; &envptr140640[5]
  %x9D$lx = load i64, i64* %envptr140641, align 8                                    ; load; *envptr140641
  %envptr140642 = inttoptr i64 %env139323 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140643 = getelementptr inbounds i64, i64* %envptr140642, i64 4              ; &envptr140642[4]
  %K4u$ly = load i64, i64* %envptr140643, align 8                                    ; load; *envptr140643
  %envptr140644 = inttoptr i64 %env139323 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140645 = getelementptr inbounds i64, i64* %envptr140644, i64 3              ; &envptr140644[3]
  %azM$_37drop = load i64, i64* %envptr140645, align 8                               ; load; *envptr140645
  %envptr140646 = inttoptr i64 %env139323 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140647 = getelementptr inbounds i64, i64* %envptr140646, i64 2              ; &envptr140646[2]
  %dR5$_37_62 = load i64, i64* %envptr140647, align 8                                ; load; *envptr140647
  %envptr140648 = inttoptr i64 %env139323 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140649 = getelementptr inbounds i64, i64* %envptr140648, i64 1              ; &envptr140648[1]
  %a138037 = load i64, i64* %envptr140649, align 8                                   ; load; *envptr140649
  %cloptr140650 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr140652 = getelementptr inbounds i64, i64* %cloptr140650, i64 1                ; &eptr140652[1]
  %eptr140653 = getelementptr inbounds i64, i64* %cloptr140650, i64 2                ; &eptr140653[2]
  %eptr140654 = getelementptr inbounds i64, i64* %cloptr140650, i64 3                ; &eptr140654[3]
  %eptr140655 = getelementptr inbounds i64, i64* %cloptr140650, i64 4                ; &eptr140655[4]
  %eptr140656 = getelementptr inbounds i64, i64* %cloptr140650, i64 5                ; &eptr140656[5]
  %eptr140657 = getelementptr inbounds i64, i64* %cloptr140650, i64 6                ; &eptr140657[6]
  %eptr140658 = getelementptr inbounds i64, i64* %cloptr140650, i64 7                ; &eptr140658[7]
  store i64 %a138040, i64* %eptr140652                                               ; *eptr140652 = %a138040
  store i64 %a138037, i64* %eptr140653                                               ; *eptr140653 = %a138037
  store i64 %azM$_37drop, i64* %eptr140654                                           ; *eptr140654 = %azM$_37drop
  store i64 %K4u$ly, i64* %eptr140655                                                ; *eptr140655 = %K4u$ly
  store i64 %x9D$lx, i64* %eptr140656                                                ; *eptr140656 = %x9D$lx
  store i64 %cont138134, i64* %eptr140657                                            ; *eptr140657 = %cont138134
  store i64 %bb6$y, i64* %eptr140658                                                 ; *eptr140658 = %bb6$y
  %eptr140651 = getelementptr inbounds i64, i64* %cloptr140650, i64 0                ; &cloptr140650[0]
  %f140659 = ptrtoint void(i64,i64,i64)* @lam139320 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140659, i64* %eptr140651                                               ; store fptr
  %arg138725 = ptrtoint i64* %cloptr140650 to i64                                    ; closure cast; i64* -> i64
  %cloptr140660 = inttoptr i64 %dR5$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140660)                                       ; assert function application
  %i0ptr140661 = getelementptr inbounds i64, i64* %cloptr140660, i64 0               ; &cloptr140660[0]
  %f140663 = load i64, i64* %i0ptr140661, align 8                                    ; load; *i0ptr140661
  %fptr140662 = inttoptr i64 %f140663 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140662(i64 %dR5$_37_62, i64 %arg138725, i64 %K4u$ly, i64 %x9D$lx); tail call
  ret void
}


define void @lam139320(i64 %env139321, i64 %_95138141, i64 %a138041) {
  %envptr140664 = inttoptr i64 %env139321 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140665 = getelementptr inbounds i64, i64* %envptr140664, i64 7              ; &envptr140664[7]
  %bb6$y = load i64, i64* %envptr140665, align 8                                     ; load; *envptr140665
  %envptr140666 = inttoptr i64 %env139321 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140667 = getelementptr inbounds i64, i64* %envptr140666, i64 6              ; &envptr140666[6]
  %cont138134 = load i64, i64* %envptr140667, align 8                                ; load; *envptr140667
  %envptr140668 = inttoptr i64 %env139321 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140669 = getelementptr inbounds i64, i64* %envptr140668, i64 5              ; &envptr140668[5]
  %x9D$lx = load i64, i64* %envptr140669, align 8                                    ; load; *envptr140669
  %envptr140670 = inttoptr i64 %env139321 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140671 = getelementptr inbounds i64, i64* %envptr140670, i64 4              ; &envptr140670[4]
  %K4u$ly = load i64, i64* %envptr140671, align 8                                    ; load; *envptr140671
  %envptr140672 = inttoptr i64 %env139321 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140673 = getelementptr inbounds i64, i64* %envptr140672, i64 3              ; &envptr140672[3]
  %azM$_37drop = load i64, i64* %envptr140673, align 8                               ; load; *envptr140673
  %envptr140674 = inttoptr i64 %env139321 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140675 = getelementptr inbounds i64, i64* %envptr140674, i64 2              ; &envptr140674[2]
  %a138037 = load i64, i64* %envptr140675, align 8                                   ; load; *envptr140675
  %envptr140676 = inttoptr i64 %env139321 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140677 = getelementptr inbounds i64, i64* %envptr140676, i64 1              ; &envptr140676[1]
  %a138040 = load i64, i64* %envptr140677, align 8                                   ; load; *envptr140677
  %cmp140678 = icmp eq i64 %a138041, 15                                              ; false?
  br i1 %cmp140678, label %else140680, label %then140679                             ; if

then140679:
  %a138042 = call i64 @prim__45(i64 %K4u$ly, i64 %x9D$lx)                            ; call prim__45
  %cloptr140681 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140683 = getelementptr inbounds i64, i64* %cloptr140681, i64 1                ; &eptr140683[1]
  %eptr140684 = getelementptr inbounds i64, i64* %cloptr140681, i64 2                ; &eptr140684[2]
  %eptr140685 = getelementptr inbounds i64, i64* %cloptr140681, i64 3                ; &eptr140685[3]
  store i64 %a138040, i64* %eptr140683                                               ; *eptr140683 = %a138040
  store i64 %a138037, i64* %eptr140684                                               ; *eptr140684 = %a138037
  store i64 %cont138134, i64* %eptr140685                                            ; *eptr140685 = %cont138134
  %eptr140682 = getelementptr inbounds i64, i64* %cloptr140681, i64 0                ; &cloptr140681[0]
  %f140686 = ptrtoint void(i64,i64,i64)* @lam139315 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140686, i64* %eptr140682                                               ; store fptr
  %arg138731 = ptrtoint i64* %cloptr140681 to i64                                    ; closure cast; i64* -> i64
  %cloptr140687 = inttoptr i64 %azM$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140687)                                       ; assert function application
  %i0ptr140688 = getelementptr inbounds i64, i64* %cloptr140687, i64 0               ; &cloptr140687[0]
  %f140690 = load i64, i64* %i0ptr140688, align 8                                    ; load; *i0ptr140688
  %fptr140689 = inttoptr i64 %f140690 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140689(i64 %azM$_37drop, i64 %arg138731, i64 %bb6$y, i64 %a138042); tail call
  ret void

else140680:
  %cloptr140691 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140693 = getelementptr inbounds i64, i64* %cloptr140691, i64 1                ; &eptr140693[1]
  %eptr140694 = getelementptr inbounds i64, i64* %cloptr140691, i64 2                ; &eptr140694[2]
  %eptr140695 = getelementptr inbounds i64, i64* %cloptr140691, i64 3                ; &eptr140695[3]
  store i64 %a138040, i64* %eptr140693                                               ; *eptr140693 = %a138040
  store i64 %a138037, i64* %eptr140694                                               ; *eptr140694 = %a138037
  store i64 %cont138134, i64* %eptr140695                                            ; *eptr140695 = %cont138134
  %eptr140692 = getelementptr inbounds i64, i64* %cloptr140691, i64 0                ; &cloptr140691[0]
  %f140696 = ptrtoint void(i64,i64,i64)* @lam139318 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140696, i64* %eptr140692                                               ; store fptr
  %arg138739 = ptrtoint i64* %cloptr140691 to i64                                    ; closure cast; i64* -> i64
  %arg138738 = add i64 0, 0                                                          ; quoted ()
  %cloptr140697 = inttoptr i64 %arg138739 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140697)                                       ; assert function application
  %i0ptr140698 = getelementptr inbounds i64, i64* %cloptr140697, i64 0               ; &cloptr140697[0]
  %f140700 = load i64, i64* %i0ptr140698, align 8                                    ; load; *i0ptr140698
  %fptr140699 = inttoptr i64 %f140700 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140699(i64 %arg138739, i64 %arg138738, i64 %bb6$y)  ; tail call
  ret void
}


define void @lam139318(i64 %env139319, i64 %_95138142, i64 %a138043) {
  %envptr140701 = inttoptr i64 %env139319 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140702 = getelementptr inbounds i64, i64* %envptr140701, i64 3              ; &envptr140701[3]
  %cont138134 = load i64, i64* %envptr140702, align 8                                ; load; *envptr140702
  %envptr140703 = inttoptr i64 %env139319 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140704 = getelementptr inbounds i64, i64* %envptr140703, i64 2              ; &envptr140703[2]
  %a138037 = load i64, i64* %envptr140704, align 8                                   ; load; *envptr140704
  %envptr140705 = inttoptr i64 %env139319 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140706 = getelementptr inbounds i64, i64* %envptr140705, i64 1              ; &envptr140705[1]
  %a138040 = load i64, i64* %envptr140706, align 8                                   ; load; *envptr140706
  %cloptr140707 = inttoptr i64 %a138037 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140707)                                       ; assert function application
  %i0ptr140708 = getelementptr inbounds i64, i64* %cloptr140707, i64 0               ; &cloptr140707[0]
  %f140710 = load i64, i64* %i0ptr140708, align 8                                    ; load; *i0ptr140708
  %fptr140709 = inttoptr i64 %f140710 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140709(i64 %a138037, i64 %cont138134, i64 %a138040, i64 %a138043); tail call
  ret void
}


define void @lam139315(i64 %env139316, i64 %_95138142, i64 %a138043) {
  %envptr140711 = inttoptr i64 %env139316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140712 = getelementptr inbounds i64, i64* %envptr140711, i64 3              ; &envptr140711[3]
  %cont138134 = load i64, i64* %envptr140712, align 8                                ; load; *envptr140712
  %envptr140713 = inttoptr i64 %env139316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140714 = getelementptr inbounds i64, i64* %envptr140713, i64 2              ; &envptr140713[2]
  %a138037 = load i64, i64* %envptr140714, align 8                                   ; load; *envptr140714
  %envptr140715 = inttoptr i64 %env139316 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140716 = getelementptr inbounds i64, i64* %envptr140715, i64 1              ; &envptr140715[1]
  %a138040 = load i64, i64* %envptr140716, align 8                                   ; load; *envptr140716
  %cloptr140717 = inttoptr i64 %a138037 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140717)                                       ; assert function application
  %i0ptr140718 = getelementptr inbounds i64, i64* %cloptr140717, i64 0               ; &cloptr140717[0]
  %f140720 = load i64, i64* %i0ptr140718, align 8                                    ; load; *i0ptr140718
  %fptr140719 = inttoptr i64 %f140720 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140719(i64 %a138037, i64 %cont138134, i64 %a138040, i64 %a138043); tail call
  ret void
}


define void @lam139312(i64 %env139313, i64 %_95138140, i64 %a138040) {
  %envptr140721 = inttoptr i64 %env139313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140722 = getelementptr inbounds i64, i64* %envptr140721, i64 7              ; &envptr140721[7]
  %bb6$y = load i64, i64* %envptr140722, align 8                                     ; load; *envptr140722
  %envptr140723 = inttoptr i64 %env139313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140724 = getelementptr inbounds i64, i64* %envptr140723, i64 6              ; &envptr140723[6]
  %cont138134 = load i64, i64* %envptr140724, align 8                                ; load; *envptr140724
  %envptr140725 = inttoptr i64 %env139313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140726 = getelementptr inbounds i64, i64* %envptr140725, i64 5              ; &envptr140725[5]
  %x9D$lx = load i64, i64* %envptr140726, align 8                                    ; load; *envptr140726
  %envptr140727 = inttoptr i64 %env139313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140728 = getelementptr inbounds i64, i64* %envptr140727, i64 4              ; &envptr140727[4]
  %K4u$ly = load i64, i64* %envptr140728, align 8                                    ; load; *envptr140728
  %envptr140729 = inttoptr i64 %env139313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140730 = getelementptr inbounds i64, i64* %envptr140729, i64 3              ; &envptr140729[3]
  %azM$_37drop = load i64, i64* %envptr140730, align 8                               ; load; *envptr140730
  %envptr140731 = inttoptr i64 %env139313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140732 = getelementptr inbounds i64, i64* %envptr140731, i64 2              ; &envptr140731[2]
  %dR5$_37_62 = load i64, i64* %envptr140732, align 8                                ; load; *envptr140732
  %envptr140733 = inttoptr i64 %env139313 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140734 = getelementptr inbounds i64, i64* %envptr140733, i64 1              ; &envptr140733[1]
  %a138037 = load i64, i64* %envptr140734, align 8                                   ; load; *envptr140734
  %cloptr140735 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr140737 = getelementptr inbounds i64, i64* %cloptr140735, i64 1                ; &eptr140737[1]
  %eptr140738 = getelementptr inbounds i64, i64* %cloptr140735, i64 2                ; &eptr140738[2]
  %eptr140739 = getelementptr inbounds i64, i64* %cloptr140735, i64 3                ; &eptr140739[3]
  %eptr140740 = getelementptr inbounds i64, i64* %cloptr140735, i64 4                ; &eptr140740[4]
  %eptr140741 = getelementptr inbounds i64, i64* %cloptr140735, i64 5                ; &eptr140741[5]
  %eptr140742 = getelementptr inbounds i64, i64* %cloptr140735, i64 6                ; &eptr140742[6]
  %eptr140743 = getelementptr inbounds i64, i64* %cloptr140735, i64 7                ; &eptr140743[7]
  store i64 %a138040, i64* %eptr140737                                               ; *eptr140737 = %a138040
  store i64 %a138037, i64* %eptr140738                                               ; *eptr140738 = %a138037
  store i64 %azM$_37drop, i64* %eptr140739                                           ; *eptr140739 = %azM$_37drop
  store i64 %K4u$ly, i64* %eptr140740                                                ; *eptr140740 = %K4u$ly
  store i64 %x9D$lx, i64* %eptr140741                                                ; *eptr140741 = %x9D$lx
  store i64 %cont138134, i64* %eptr140742                                            ; *eptr140742 = %cont138134
  store i64 %bb6$y, i64* %eptr140743                                                 ; *eptr140743 = %bb6$y
  %eptr140736 = getelementptr inbounds i64, i64* %cloptr140735, i64 0                ; &cloptr140735[0]
  %f140744 = ptrtoint void(i64,i64,i64)* @lam139310 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140744, i64* %eptr140736                                               ; store fptr
  %arg138701 = ptrtoint i64* %cloptr140735 to i64                                    ; closure cast; i64* -> i64
  %cloptr140745 = inttoptr i64 %dR5$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140745)                                       ; assert function application
  %i0ptr140746 = getelementptr inbounds i64, i64* %cloptr140745, i64 0               ; &cloptr140745[0]
  %f140748 = load i64, i64* %i0ptr140746, align 8                                    ; load; *i0ptr140746
  %fptr140747 = inttoptr i64 %f140748 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140747(i64 %dR5$_37_62, i64 %arg138701, i64 %K4u$ly, i64 %x9D$lx); tail call
  ret void
}


define void @lam139310(i64 %env139311, i64 %_95138141, i64 %a138041) {
  %envptr140749 = inttoptr i64 %env139311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140750 = getelementptr inbounds i64, i64* %envptr140749, i64 7              ; &envptr140749[7]
  %bb6$y = load i64, i64* %envptr140750, align 8                                     ; load; *envptr140750
  %envptr140751 = inttoptr i64 %env139311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140752 = getelementptr inbounds i64, i64* %envptr140751, i64 6              ; &envptr140751[6]
  %cont138134 = load i64, i64* %envptr140752, align 8                                ; load; *envptr140752
  %envptr140753 = inttoptr i64 %env139311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140754 = getelementptr inbounds i64, i64* %envptr140753, i64 5              ; &envptr140753[5]
  %x9D$lx = load i64, i64* %envptr140754, align 8                                    ; load; *envptr140754
  %envptr140755 = inttoptr i64 %env139311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140756 = getelementptr inbounds i64, i64* %envptr140755, i64 4              ; &envptr140755[4]
  %K4u$ly = load i64, i64* %envptr140756, align 8                                    ; load; *envptr140756
  %envptr140757 = inttoptr i64 %env139311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140758 = getelementptr inbounds i64, i64* %envptr140757, i64 3              ; &envptr140757[3]
  %azM$_37drop = load i64, i64* %envptr140758, align 8                               ; load; *envptr140758
  %envptr140759 = inttoptr i64 %env139311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140760 = getelementptr inbounds i64, i64* %envptr140759, i64 2              ; &envptr140759[2]
  %a138037 = load i64, i64* %envptr140760, align 8                                   ; load; *envptr140760
  %envptr140761 = inttoptr i64 %env139311 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140762 = getelementptr inbounds i64, i64* %envptr140761, i64 1              ; &envptr140761[1]
  %a138040 = load i64, i64* %envptr140762, align 8                                   ; load; *envptr140762
  %cmp140763 = icmp eq i64 %a138041, 15                                              ; false?
  br i1 %cmp140763, label %else140765, label %then140764                             ; if

then140764:
  %a138042 = call i64 @prim__45(i64 %K4u$ly, i64 %x9D$lx)                            ; call prim__45
  %cloptr140766 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140768 = getelementptr inbounds i64, i64* %cloptr140766, i64 1                ; &eptr140768[1]
  %eptr140769 = getelementptr inbounds i64, i64* %cloptr140766, i64 2                ; &eptr140769[2]
  %eptr140770 = getelementptr inbounds i64, i64* %cloptr140766, i64 3                ; &eptr140770[3]
  store i64 %a138040, i64* %eptr140768                                               ; *eptr140768 = %a138040
  store i64 %a138037, i64* %eptr140769                                               ; *eptr140769 = %a138037
  store i64 %cont138134, i64* %eptr140770                                            ; *eptr140770 = %cont138134
  %eptr140767 = getelementptr inbounds i64, i64* %cloptr140766, i64 0                ; &cloptr140766[0]
  %f140771 = ptrtoint void(i64,i64,i64)* @lam139305 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140771, i64* %eptr140767                                               ; store fptr
  %arg138707 = ptrtoint i64* %cloptr140766 to i64                                    ; closure cast; i64* -> i64
  %cloptr140772 = inttoptr i64 %azM$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140772)                                       ; assert function application
  %i0ptr140773 = getelementptr inbounds i64, i64* %cloptr140772, i64 0               ; &cloptr140772[0]
  %f140775 = load i64, i64* %i0ptr140773, align 8                                    ; load; *i0ptr140773
  %fptr140774 = inttoptr i64 %f140775 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140774(i64 %azM$_37drop, i64 %arg138707, i64 %bb6$y, i64 %a138042); tail call
  ret void

else140765:
  %cloptr140776 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140778 = getelementptr inbounds i64, i64* %cloptr140776, i64 1                ; &eptr140778[1]
  %eptr140779 = getelementptr inbounds i64, i64* %cloptr140776, i64 2                ; &eptr140779[2]
  %eptr140780 = getelementptr inbounds i64, i64* %cloptr140776, i64 3                ; &eptr140780[3]
  store i64 %a138040, i64* %eptr140778                                               ; *eptr140778 = %a138040
  store i64 %a138037, i64* %eptr140779                                               ; *eptr140779 = %a138037
  store i64 %cont138134, i64* %eptr140780                                            ; *eptr140780 = %cont138134
  %eptr140777 = getelementptr inbounds i64, i64* %cloptr140776, i64 0                ; &cloptr140776[0]
  %f140781 = ptrtoint void(i64,i64,i64)* @lam139308 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140781, i64* %eptr140777                                               ; store fptr
  %arg138715 = ptrtoint i64* %cloptr140776 to i64                                    ; closure cast; i64* -> i64
  %arg138714 = add i64 0, 0                                                          ; quoted ()
  %cloptr140782 = inttoptr i64 %arg138715 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140782)                                       ; assert function application
  %i0ptr140783 = getelementptr inbounds i64, i64* %cloptr140782, i64 0               ; &cloptr140782[0]
  %f140785 = load i64, i64* %i0ptr140783, align 8                                    ; load; *i0ptr140783
  %fptr140784 = inttoptr i64 %f140785 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140784(i64 %arg138715, i64 %arg138714, i64 %bb6$y)  ; tail call
  ret void
}


define void @lam139308(i64 %env139309, i64 %_95138142, i64 %a138043) {
  %envptr140786 = inttoptr i64 %env139309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140787 = getelementptr inbounds i64, i64* %envptr140786, i64 3              ; &envptr140786[3]
  %cont138134 = load i64, i64* %envptr140787, align 8                                ; load; *envptr140787
  %envptr140788 = inttoptr i64 %env139309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140789 = getelementptr inbounds i64, i64* %envptr140788, i64 2              ; &envptr140788[2]
  %a138037 = load i64, i64* %envptr140789, align 8                                   ; load; *envptr140789
  %envptr140790 = inttoptr i64 %env139309 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140791 = getelementptr inbounds i64, i64* %envptr140790, i64 1              ; &envptr140790[1]
  %a138040 = load i64, i64* %envptr140791, align 8                                   ; load; *envptr140791
  %cloptr140792 = inttoptr i64 %a138037 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140792)                                       ; assert function application
  %i0ptr140793 = getelementptr inbounds i64, i64* %cloptr140792, i64 0               ; &cloptr140792[0]
  %f140795 = load i64, i64* %i0ptr140793, align 8                                    ; load; *i0ptr140793
  %fptr140794 = inttoptr i64 %f140795 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140794(i64 %a138037, i64 %cont138134, i64 %a138040, i64 %a138043); tail call
  ret void
}


define void @lam139305(i64 %env139306, i64 %_95138142, i64 %a138043) {
  %envptr140796 = inttoptr i64 %env139306 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140797 = getelementptr inbounds i64, i64* %envptr140796, i64 3              ; &envptr140796[3]
  %cont138134 = load i64, i64* %envptr140797, align 8                                ; load; *envptr140797
  %envptr140798 = inttoptr i64 %env139306 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140799 = getelementptr inbounds i64, i64* %envptr140798, i64 2              ; &envptr140798[2]
  %a138037 = load i64, i64* %envptr140799, align 8                                   ; load; *envptr140799
  %envptr140800 = inttoptr i64 %env139306 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140801 = getelementptr inbounds i64, i64* %envptr140800, i64 1              ; &envptr140800[1]
  %a138040 = load i64, i64* %envptr140801, align 8                                   ; load; *envptr140801
  %cloptr140802 = inttoptr i64 %a138037 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140802)                                       ; assert function application
  %i0ptr140803 = getelementptr inbounds i64, i64* %cloptr140802, i64 0               ; &cloptr140802[0]
  %f140805 = load i64, i64* %i0ptr140803, align 8                                    ; load; *i0ptr140803
  %fptr140804 = inttoptr i64 %f140805 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140804(i64 %a138037, i64 %cont138134, i64 %a138040, i64 %a138043); tail call
  ret void
}


define void @lam139302(i64 %env139303, i64 %cont138147, i64 %mtw$new) {
  %envptr140806 = inttoptr i64 %env139303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140807 = getelementptr inbounds i64, i64* %envptr140806, i64 2              ; &envptr140806[2]
  %uxu$_37common_45tail = load i64, i64* %envptr140807, align 8                      ; load; *envptr140807
  %envptr140808 = inttoptr i64 %env139303 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140809 = getelementptr inbounds i64, i64* %envptr140808, i64 1              ; &envptr140808[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140809, align 8                       ; load; *envptr140809
  %arg138744 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138044 = call i64 @prim_vector_45ref(i64 %K1z$_37wind_45stack, i64 %arg138744)   ; call prim_vector_45ref
  %cloptr140810 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140812 = getelementptr inbounds i64, i64* %cloptr140810, i64 1                ; &eptr140812[1]
  %eptr140813 = getelementptr inbounds i64, i64* %cloptr140810, i64 2                ; &eptr140813[2]
  %eptr140814 = getelementptr inbounds i64, i64* %cloptr140810, i64 3                ; &eptr140814[3]
  store i64 %K1z$_37wind_45stack, i64* %eptr140812                                   ; *eptr140812 = %K1z$_37wind_45stack
  store i64 %cont138147, i64* %eptr140813                                            ; *eptr140813 = %cont138147
  store i64 %mtw$new, i64* %eptr140814                                               ; *eptr140814 = %mtw$new
  %eptr140811 = getelementptr inbounds i64, i64* %cloptr140810, i64 0                ; &cloptr140810[0]
  %f140815 = ptrtoint void(i64,i64,i64)* @lam139299 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140815, i64* %eptr140811                                               ; store fptr
  %arg138748 = ptrtoint i64* %cloptr140810 to i64                                    ; closure cast; i64* -> i64
  %cloptr140816 = inttoptr i64 %uxu$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140816)                                       ; assert function application
  %i0ptr140817 = getelementptr inbounds i64, i64* %cloptr140816, i64 0               ; &cloptr140816[0]
  %f140819 = load i64, i64* %i0ptr140817, align 8                                    ; load; *i0ptr140817
  %fptr140818 = inttoptr i64 %f140819 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140818(i64 %uxu$_37common_45tail, i64 %arg138748, i64 %mtw$new, i64 %a138044); tail call
  ret void
}


define void @lam139299(i64 %env139300, i64 %_95138148, i64 %O6u$tail) {
  %envptr140820 = inttoptr i64 %env139300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140821 = getelementptr inbounds i64, i64* %envptr140820, i64 3              ; &envptr140820[3]
  %mtw$new = load i64, i64* %envptr140821, align 8                                   ; load; *envptr140821
  %envptr140822 = inttoptr i64 %env139300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140823 = getelementptr inbounds i64, i64* %envptr140822, i64 2              ; &envptr140822[2]
  %cont138147 = load i64, i64* %envptr140823, align 8                                ; load; *envptr140823
  %envptr140824 = inttoptr i64 %env139300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140825 = getelementptr inbounds i64, i64* %envptr140824, i64 1              ; &envptr140824[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140825, align 8                       ; load; *envptr140825
  %cloptr140826 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr140827 = getelementptr inbounds i64, i64* %cloptr140826, i64 0                ; &cloptr140826[0]
  %f140828 = ptrtoint void(i64,i64)* @lam139297 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f140828, i64* %eptr140827                                               ; store fptr
  %arg138751 = ptrtoint i64* %cloptr140826 to i64                                    ; closure cast; i64* -> i64
  %cloptr140829 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr140831 = getelementptr inbounds i64, i64* %cloptr140829, i64 1                ; &eptr140831[1]
  %eptr140832 = getelementptr inbounds i64, i64* %cloptr140829, i64 2                ; &eptr140832[2]
  %eptr140833 = getelementptr inbounds i64, i64* %cloptr140829, i64 3                ; &eptr140833[3]
  %eptr140834 = getelementptr inbounds i64, i64* %cloptr140829, i64 4                ; &eptr140834[4]
  store i64 %K1z$_37wind_45stack, i64* %eptr140831                                   ; *eptr140831 = %K1z$_37wind_45stack
  store i64 %cont138147, i64* %eptr140832                                            ; *eptr140832 = %cont138147
  store i64 %O6u$tail, i64* %eptr140833                                              ; *eptr140833 = %O6u$tail
  store i64 %mtw$new, i64* %eptr140834                                               ; *eptr140834 = %mtw$new
  %eptr140830 = getelementptr inbounds i64, i64* %cloptr140829, i64 0                ; &cloptr140829[0]
  %f140835 = ptrtoint void(i64,i64,i64)* @lam139294 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140835, i64* %eptr140830                                               ; store fptr
  %arg138750 = ptrtoint i64* %cloptr140829 to i64                                    ; closure cast; i64* -> i64
  %cloptr140836 = inttoptr i64 %arg138751 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140836)                                       ; assert function application
  %i0ptr140837 = getelementptr inbounds i64, i64* %cloptr140836, i64 0               ; &cloptr140836[0]
  %f140839 = load i64, i64* %i0ptr140837, align 8                                    ; load; *i0ptr140837
  %fptr140838 = inttoptr i64 %f140839 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140838(i64 %arg138751, i64 %arg138750)              ; tail call
  ret void
}


define void @lam139297(i64 %env139298, i64 %OqR$lst138169) {
  %cont138168 = call i64 @prim_car(i64 %OqR$lst138169)                               ; call prim_car
  %OqR$lst = call i64 @prim_cdr(i64 %OqR$lst138169)                                  ; call prim_cdr
  %arg138755 = add i64 0, 0                                                          ; quoted ()
  %cloptr140840 = inttoptr i64 %cont138168 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140840)                                       ; assert function application
  %i0ptr140841 = getelementptr inbounds i64, i64* %cloptr140840, i64 0               ; &cloptr140840[0]
  %f140843 = load i64, i64* %i0ptr140841, align 8                                    ; load; *i0ptr140841
  %fptr140842 = inttoptr i64 %f140843 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140842(i64 %cont138168, i64 %arg138755, i64 %OqR$lst); tail call
  ret void
}


define void @lam139294(i64 %env139295, i64 %_95138166, i64 %a138045) {
  %envptr140844 = inttoptr i64 %env139295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140845 = getelementptr inbounds i64, i64* %envptr140844, i64 4              ; &envptr140844[4]
  %mtw$new = load i64, i64* %envptr140845, align 8                                   ; load; *envptr140845
  %envptr140846 = inttoptr i64 %env139295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140847 = getelementptr inbounds i64, i64* %envptr140846, i64 3              ; &envptr140846[3]
  %O6u$tail = load i64, i64* %envptr140847, align 8                                  ; load; *envptr140847
  %envptr140848 = inttoptr i64 %env139295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140849 = getelementptr inbounds i64, i64* %envptr140848, i64 2              ; &envptr140848[2]
  %cont138147 = load i64, i64* %envptr140849, align 8                                ; load; *envptr140849
  %envptr140850 = inttoptr i64 %env139295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140851 = getelementptr inbounds i64, i64* %envptr140850, i64 1              ; &envptr140850[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140851, align 8                       ; load; *envptr140851
  %arg138758 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim138167 = call i64 @prim_make_45vector(i64 %arg138758, i64 %a138045)        ; call prim_make_45vector
  %cloptr140852 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr140854 = getelementptr inbounds i64, i64* %cloptr140852, i64 1                ; &eptr140854[1]
  %eptr140855 = getelementptr inbounds i64, i64* %cloptr140852, i64 2                ; &eptr140855[2]
  %eptr140856 = getelementptr inbounds i64, i64* %cloptr140852, i64 3                ; &eptr140856[3]
  %eptr140857 = getelementptr inbounds i64, i64* %cloptr140852, i64 4                ; &eptr140857[4]
  store i64 %K1z$_37wind_45stack, i64* %eptr140854                                   ; *eptr140854 = %K1z$_37wind_45stack
  store i64 %cont138147, i64* %eptr140855                                            ; *eptr140855 = %cont138147
  store i64 %O6u$tail, i64* %eptr140856                                              ; *eptr140856 = %O6u$tail
  store i64 %mtw$new, i64* %eptr140857                                               ; *eptr140857 = %mtw$new
  %eptr140853 = getelementptr inbounds i64, i64* %cloptr140852, i64 0                ; &cloptr140852[0]
  %f140858 = ptrtoint void(i64,i64,i64)* @lam139291 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140858, i64* %eptr140853                                               ; store fptr
  %arg138761 = ptrtoint i64* %cloptr140852 to i64                                    ; closure cast; i64* -> i64
  %arg138760 = add i64 0, 0                                                          ; quoted ()
  %cloptr140859 = inttoptr i64 %arg138761 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140859)                                       ; assert function application
  %i0ptr140860 = getelementptr inbounds i64, i64* %cloptr140859, i64 0               ; &cloptr140859[0]
  %f140862 = load i64, i64* %i0ptr140860, align 8                                    ; load; *i0ptr140860
  %fptr140861 = inttoptr i64 %f140862 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140861(i64 %arg138761, i64 %arg138760, i64 %retprim138167); tail call
  ret void
}


define void @lam139291(i64 %env139292, i64 %_95138160, i64 %ZFE$f) {
  %envptr140863 = inttoptr i64 %env139292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140864 = getelementptr inbounds i64, i64* %envptr140863, i64 4              ; &envptr140863[4]
  %mtw$new = load i64, i64* %envptr140864, align 8                                   ; load; *envptr140864
  %envptr140865 = inttoptr i64 %env139292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140866 = getelementptr inbounds i64, i64* %envptr140865, i64 3              ; &envptr140865[3]
  %O6u$tail = load i64, i64* %envptr140866, align 8                                  ; load; *envptr140866
  %envptr140867 = inttoptr i64 %env139292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140868 = getelementptr inbounds i64, i64* %envptr140867, i64 2              ; &envptr140867[2]
  %cont138147 = load i64, i64* %envptr140868, align 8                                ; load; *envptr140868
  %envptr140869 = inttoptr i64 %env139292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140870 = getelementptr inbounds i64, i64* %envptr140869, i64 1              ; &envptr140869[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140870, align 8                       ; load; *envptr140870
  %arg138763 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr140871 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140873 = getelementptr inbounds i64, i64* %cloptr140871, i64 1                ; &eptr140873[1]
  %eptr140874 = getelementptr inbounds i64, i64* %cloptr140871, i64 2                ; &eptr140874[2]
  %eptr140875 = getelementptr inbounds i64, i64* %cloptr140871, i64 3                ; &eptr140875[3]
  store i64 %K1z$_37wind_45stack, i64* %eptr140873                                   ; *eptr140873 = %K1z$_37wind_45stack
  store i64 %O6u$tail, i64* %eptr140874                                              ; *eptr140874 = %O6u$tail
  store i64 %ZFE$f, i64* %eptr140875                                                 ; *eptr140875 = %ZFE$f
  %eptr140872 = getelementptr inbounds i64, i64* %cloptr140871, i64 0                ; &cloptr140871[0]
  %f140876 = ptrtoint void(i64,i64,i64)* @lam139288 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140876, i64* %eptr140872                                               ; store fptr
  %arg138762 = ptrtoint i64* %cloptr140871 to i64                                    ; closure cast; i64* -> i64
  %ouQ$_95137938 = call i64 @prim_vector_45set_33(i64 %ZFE$f, i64 %arg138763, i64 %arg138762); call prim_vector_45set_33
  %arg138788 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138053 = call i64 @prim_vector_45ref(i64 %ZFE$f, i64 %arg138788)                 ; call prim_vector_45ref
  %arg138790 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138054 = call i64 @prim_vector_45ref(i64 %K1z$_37wind_45stack, i64 %arg138790)   ; call prim_vector_45ref
  %cloptr140877 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr140879 = getelementptr inbounds i64, i64* %cloptr140877, i64 1                ; &eptr140879[1]
  %eptr140880 = getelementptr inbounds i64, i64* %cloptr140877, i64 2                ; &eptr140880[2]
  %eptr140881 = getelementptr inbounds i64, i64* %cloptr140877, i64 3                ; &eptr140881[3]
  %eptr140882 = getelementptr inbounds i64, i64* %cloptr140877, i64 4                ; &eptr140882[4]
  store i64 %K1z$_37wind_45stack, i64* %eptr140879                                   ; *eptr140879 = %K1z$_37wind_45stack
  store i64 %cont138147, i64* %eptr140880                                            ; *eptr140880 = %cont138147
  store i64 %O6u$tail, i64* %eptr140881                                              ; *eptr140881 = %O6u$tail
  store i64 %mtw$new, i64* %eptr140882                                               ; *eptr140882 = %mtw$new
  %eptr140878 = getelementptr inbounds i64, i64* %cloptr140877, i64 0                ; &cloptr140877[0]
  %f140883 = ptrtoint void(i64,i64,i64)* @lam139276 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140883, i64* %eptr140878                                               ; store fptr
  %arg138793 = ptrtoint i64* %cloptr140877 to i64                                    ; closure cast; i64* -> i64
  %cloptr140884 = inttoptr i64 %a138053 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140884)                                       ; assert function application
  %i0ptr140885 = getelementptr inbounds i64, i64* %cloptr140884, i64 0               ; &cloptr140884[0]
  %f140887 = load i64, i64* %i0ptr140885, align 8                                    ; load; *i0ptr140885
  %fptr140886 = inttoptr i64 %f140887 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140886(i64 %a138053, i64 %arg138793, i64 %a138054)  ; tail call
  ret void
}


define void @lam139288(i64 %env139289, i64 %cont138161, i64 %CJ6$l) {
  %envptr140888 = inttoptr i64 %env139289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140889 = getelementptr inbounds i64, i64* %envptr140888, i64 3              ; &envptr140888[3]
  %ZFE$f = load i64, i64* %envptr140889, align 8                                     ; load; *envptr140889
  %envptr140890 = inttoptr i64 %env139289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140891 = getelementptr inbounds i64, i64* %envptr140890, i64 2              ; &envptr140890[2]
  %O6u$tail = load i64, i64* %envptr140891, align 8                                  ; load; *envptr140891
  %envptr140892 = inttoptr i64 %env139289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140893 = getelementptr inbounds i64, i64* %envptr140892, i64 1              ; &envptr140892[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140893, align 8                       ; load; *envptr140893
  %a138046 = call i64 @prim_eq_63(i64 %CJ6$l, i64 %O6u$tail)                         ; call prim_eq_63
  %a138047 = call i64 @prim_not(i64 %a138046)                                        ; call prim_not
  %cmp140894 = icmp eq i64 %a138047, 15                                              ; false?
  br i1 %cmp140894, label %else140896, label %then140895                             ; if

then140895:
  %a138048 = call i64 @prim_cdr(i64 %CJ6$l)                                          ; call prim_cdr
  %arg138770 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138164 = call i64 @prim_vector_45set_33(i64 %K1z$_37wind_45stack, i64 %arg138770, i64 %a138048); call prim_vector_45set_33
  %cloptr140897 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140899 = getelementptr inbounds i64, i64* %cloptr140897, i64 1                ; &eptr140899[1]
  %eptr140900 = getelementptr inbounds i64, i64* %cloptr140897, i64 2                ; &eptr140900[2]
  %eptr140901 = getelementptr inbounds i64, i64* %cloptr140897, i64 3                ; &eptr140901[3]
  store i64 %ZFE$f, i64* %eptr140899                                                 ; *eptr140899 = %ZFE$f
  store i64 %cont138161, i64* %eptr140900                                            ; *eptr140900 = %cont138161
  store i64 %CJ6$l, i64* %eptr140901                                                 ; *eptr140901 = %CJ6$l
  %eptr140898 = getelementptr inbounds i64, i64* %cloptr140897, i64 0                ; &cloptr140897[0]
  %f140902 = ptrtoint void(i64,i64,i64)* @lam139284 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140902, i64* %eptr140898                                               ; store fptr
  %arg138774 = ptrtoint i64* %cloptr140897 to i64                                    ; closure cast; i64* -> i64
  %arg138773 = add i64 0, 0                                                          ; quoted ()
  %cloptr140903 = inttoptr i64 %arg138774 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140903)                                       ; assert function application
  %i0ptr140904 = getelementptr inbounds i64, i64* %cloptr140903, i64 0               ; &cloptr140903[0]
  %f140906 = load i64, i64* %i0ptr140904, align 8                                    ; load; *i0ptr140904
  %fptr140905 = inttoptr i64 %f140906 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140905(i64 %arg138774, i64 %arg138773, i64 %retprim138164); tail call
  ret void

else140896:
  %retprim138165 = call i64 @prim_void()                                             ; call prim_void
  %arg138786 = add i64 0, 0                                                          ; quoted ()
  %cloptr140907 = inttoptr i64 %cont138161 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140907)                                       ; assert function application
  %i0ptr140908 = getelementptr inbounds i64, i64* %cloptr140907, i64 0               ; &cloptr140907[0]
  %f140910 = load i64, i64* %i0ptr140908, align 8                                    ; load; *i0ptr140908
  %fptr140909 = inttoptr i64 %f140910 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140909(i64 %cont138161, i64 %arg138786, i64 %retprim138165); tail call
  ret void
}


define void @lam139284(i64 %env139285, i64 %_95138162, i64 %Kg8$_95137939) {
  %envptr140911 = inttoptr i64 %env139285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140912 = getelementptr inbounds i64, i64* %envptr140911, i64 3              ; &envptr140911[3]
  %CJ6$l = load i64, i64* %envptr140912, align 8                                     ; load; *envptr140912
  %envptr140913 = inttoptr i64 %env139285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140914 = getelementptr inbounds i64, i64* %envptr140913, i64 2              ; &envptr140913[2]
  %cont138161 = load i64, i64* %envptr140914, align 8                                ; load; *envptr140914
  %envptr140915 = inttoptr i64 %env139285 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140916 = getelementptr inbounds i64, i64* %envptr140915, i64 1              ; &envptr140915[1]
  %ZFE$f = load i64, i64* %envptr140916, align 8                                     ; load; *envptr140916
  %a138049 = call i64 @prim_car(i64 %CJ6$l)                                          ; call prim_car
  %a138050 = call i64 @prim_cdr(i64 %a138049)                                        ; call prim_cdr
  %cloptr140917 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140919 = getelementptr inbounds i64, i64* %cloptr140917, i64 1                ; &eptr140919[1]
  %eptr140920 = getelementptr inbounds i64, i64* %cloptr140917, i64 2                ; &eptr140920[2]
  %eptr140921 = getelementptr inbounds i64, i64* %cloptr140917, i64 3                ; &eptr140921[3]
  store i64 %ZFE$f, i64* %eptr140919                                                 ; *eptr140919 = %ZFE$f
  store i64 %cont138161, i64* %eptr140920                                            ; *eptr140920 = %cont138161
  store i64 %CJ6$l, i64* %eptr140921                                                 ; *eptr140921 = %CJ6$l
  %eptr140918 = getelementptr inbounds i64, i64* %cloptr140917, i64 0                ; &cloptr140917[0]
  %f140922 = ptrtoint void(i64,i64,i64)* @lam139282 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140922, i64* %eptr140918                                               ; store fptr
  %arg138777 = ptrtoint i64* %cloptr140917 to i64                                    ; closure cast; i64* -> i64
  %cloptr140923 = inttoptr i64 %a138050 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140923)                                       ; assert function application
  %i0ptr140924 = getelementptr inbounds i64, i64* %cloptr140923, i64 0               ; &cloptr140923[0]
  %f140926 = load i64, i64* %i0ptr140924, align 8                                    ; load; *i0ptr140924
  %fptr140925 = inttoptr i64 %f140926 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140925(i64 %a138050, i64 %arg138777)                ; tail call
  ret void
}


define void @lam139282(i64 %env139283, i64 %_95138163, i64 %pCR$_95137940) {
  %envptr140927 = inttoptr i64 %env139283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140928 = getelementptr inbounds i64, i64* %envptr140927, i64 3              ; &envptr140927[3]
  %CJ6$l = load i64, i64* %envptr140928, align 8                                     ; load; *envptr140928
  %envptr140929 = inttoptr i64 %env139283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140930 = getelementptr inbounds i64, i64* %envptr140929, i64 2              ; &envptr140929[2]
  %cont138161 = load i64, i64* %envptr140930, align 8                                ; load; *envptr140930
  %envptr140931 = inttoptr i64 %env139283 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140932 = getelementptr inbounds i64, i64* %envptr140931, i64 1              ; &envptr140931[1]
  %ZFE$f = load i64, i64* %envptr140932, align 8                                     ; load; *envptr140932
  %arg138779 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138051 = call i64 @prim_vector_45ref(i64 %ZFE$f, i64 %arg138779)                 ; call prim_vector_45ref
  %a138052 = call i64 @prim_cdr(i64 %CJ6$l)                                          ; call prim_cdr
  %cloptr140933 = inttoptr i64 %a138051 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140933)                                       ; assert function application
  %i0ptr140934 = getelementptr inbounds i64, i64* %cloptr140933, i64 0               ; &cloptr140933[0]
  %f140936 = load i64, i64* %i0ptr140934, align 8                                    ; load; *i0ptr140934
  %fptr140935 = inttoptr i64 %f140936 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140935(i64 %a138051, i64 %cont138161, i64 %a138052) ; tail call
  ret void
}


define void @lam139276(i64 %env139277, i64 %_95138149, i64 %Cmv$_95137937) {
  %envptr140937 = inttoptr i64 %env139277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140938 = getelementptr inbounds i64, i64* %envptr140937, i64 4              ; &envptr140937[4]
  %mtw$new = load i64, i64* %envptr140938, align 8                                   ; load; *envptr140938
  %envptr140939 = inttoptr i64 %env139277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140940 = getelementptr inbounds i64, i64* %envptr140939, i64 3              ; &envptr140939[3]
  %O6u$tail = load i64, i64* %envptr140940, align 8                                  ; load; *envptr140940
  %envptr140941 = inttoptr i64 %env139277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140942 = getelementptr inbounds i64, i64* %envptr140941, i64 2              ; &envptr140941[2]
  %cont138147 = load i64, i64* %envptr140942, align 8                                ; load; *envptr140942
  %envptr140943 = inttoptr i64 %env139277 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140944 = getelementptr inbounds i64, i64* %envptr140943, i64 1              ; &envptr140943[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140944, align 8                       ; load; *envptr140944
  %cloptr140945 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr140946 = getelementptr inbounds i64, i64* %cloptr140945, i64 0                ; &cloptr140945[0]
  %f140947 = ptrtoint void(i64,i64)* @lam139274 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f140947, i64* %eptr140946                                               ; store fptr
  %arg138796 = ptrtoint i64* %cloptr140945 to i64                                    ; closure cast; i64* -> i64
  %cloptr140948 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr140950 = getelementptr inbounds i64, i64* %cloptr140948, i64 1                ; &eptr140950[1]
  %eptr140951 = getelementptr inbounds i64, i64* %cloptr140948, i64 2                ; &eptr140951[2]
  %eptr140952 = getelementptr inbounds i64, i64* %cloptr140948, i64 3                ; &eptr140952[3]
  %eptr140953 = getelementptr inbounds i64, i64* %cloptr140948, i64 4                ; &eptr140953[4]
  store i64 %K1z$_37wind_45stack, i64* %eptr140950                                   ; *eptr140950 = %K1z$_37wind_45stack
  store i64 %cont138147, i64* %eptr140951                                            ; *eptr140951 = %cont138147
  store i64 %O6u$tail, i64* %eptr140952                                              ; *eptr140952 = %O6u$tail
  store i64 %mtw$new, i64* %eptr140953                                               ; *eptr140953 = %mtw$new
  %eptr140949 = getelementptr inbounds i64, i64* %cloptr140948, i64 0                ; &cloptr140948[0]
  %f140954 = ptrtoint void(i64,i64,i64)* @lam139271 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140954, i64* %eptr140949                                               ; store fptr
  %arg138795 = ptrtoint i64* %cloptr140948 to i64                                    ; closure cast; i64* -> i64
  %cloptr140955 = inttoptr i64 %arg138796 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140955)                                       ; assert function application
  %i0ptr140956 = getelementptr inbounds i64, i64* %cloptr140955, i64 0               ; &cloptr140955[0]
  %f140958 = load i64, i64* %i0ptr140956, align 8                                    ; load; *i0ptr140956
  %fptr140957 = inttoptr i64 %f140958 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140957(i64 %arg138796, i64 %arg138795)              ; tail call
  ret void
}


define void @lam139274(i64 %env139275, i64 %Snu$lst138159) {
  %cont138158 = call i64 @prim_car(i64 %Snu$lst138159)                               ; call prim_car
  %Snu$lst = call i64 @prim_cdr(i64 %Snu$lst138159)                                  ; call prim_cdr
  %arg138800 = add i64 0, 0                                                          ; quoted ()
  %cloptr140959 = inttoptr i64 %cont138158 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140959)                                       ; assert function application
  %i0ptr140960 = getelementptr inbounds i64, i64* %cloptr140959, i64 0               ; &cloptr140959[0]
  %f140962 = load i64, i64* %i0ptr140960, align 8                                    ; load; *i0ptr140960
  %fptr140961 = inttoptr i64 %f140962 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140961(i64 %cont138158, i64 %arg138800, i64 %Snu$lst); tail call
  ret void
}


define void @lam139271(i64 %env139272, i64 %_95138156, i64 %a138055) {
  %envptr140963 = inttoptr i64 %env139272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140964 = getelementptr inbounds i64, i64* %envptr140963, i64 4              ; &envptr140963[4]
  %mtw$new = load i64, i64* %envptr140964, align 8                                   ; load; *envptr140964
  %envptr140965 = inttoptr i64 %env139272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140966 = getelementptr inbounds i64, i64* %envptr140965, i64 3              ; &envptr140965[3]
  %O6u$tail = load i64, i64* %envptr140966, align 8                                  ; load; *envptr140966
  %envptr140967 = inttoptr i64 %env139272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140968 = getelementptr inbounds i64, i64* %envptr140967, i64 2              ; &envptr140967[2]
  %cont138147 = load i64, i64* %envptr140968, align 8                                ; load; *envptr140968
  %envptr140969 = inttoptr i64 %env139272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140970 = getelementptr inbounds i64, i64* %envptr140969, i64 1              ; &envptr140969[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140970, align 8                       ; load; *envptr140970
  %arg138803 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim138157 = call i64 @prim_make_45vector(i64 %arg138803, i64 %a138055)        ; call prim_make_45vector
  %cloptr140971 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr140973 = getelementptr inbounds i64, i64* %cloptr140971, i64 1                ; &eptr140973[1]
  %eptr140974 = getelementptr inbounds i64, i64* %cloptr140971, i64 2                ; &eptr140974[2]
  %eptr140975 = getelementptr inbounds i64, i64* %cloptr140971, i64 3                ; &eptr140975[3]
  %eptr140976 = getelementptr inbounds i64, i64* %cloptr140971, i64 4                ; &eptr140976[4]
  store i64 %K1z$_37wind_45stack, i64* %eptr140973                                   ; *eptr140973 = %K1z$_37wind_45stack
  store i64 %cont138147, i64* %eptr140974                                            ; *eptr140974 = %cont138147
  store i64 %O6u$tail, i64* %eptr140975                                              ; *eptr140975 = %O6u$tail
  store i64 %mtw$new, i64* %eptr140976                                               ; *eptr140976 = %mtw$new
  %eptr140972 = getelementptr inbounds i64, i64* %cloptr140971, i64 0                ; &cloptr140971[0]
  %f140977 = ptrtoint void(i64,i64,i64)* @lam139268 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140977, i64* %eptr140972                                               ; store fptr
  %arg138806 = ptrtoint i64* %cloptr140971 to i64                                    ; closure cast; i64* -> i64
  %arg138805 = add i64 0, 0                                                          ; quoted ()
  %cloptr140978 = inttoptr i64 %arg138806 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140978)                                       ; assert function application
  %i0ptr140979 = getelementptr inbounds i64, i64* %cloptr140978, i64 0               ; &cloptr140978[0]
  %f140981 = load i64, i64* %i0ptr140979, align 8                                    ; load; *i0ptr140979
  %fptr140980 = inttoptr i64 %f140981 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140980(i64 %arg138806, i64 %arg138805, i64 %retprim138157); tail call
  ret void
}


define void @lam139268(i64 %env139269, i64 %_95138150, i64 %QGq$f) {
  %envptr140982 = inttoptr i64 %env139269 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140983 = getelementptr inbounds i64, i64* %envptr140982, i64 4              ; &envptr140982[4]
  %mtw$new = load i64, i64* %envptr140983, align 8                                   ; load; *envptr140983
  %envptr140984 = inttoptr i64 %env139269 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140985 = getelementptr inbounds i64, i64* %envptr140984, i64 3              ; &envptr140984[3]
  %O6u$tail = load i64, i64* %envptr140985, align 8                                  ; load; *envptr140985
  %envptr140986 = inttoptr i64 %env139269 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140987 = getelementptr inbounds i64, i64* %envptr140986, i64 2              ; &envptr140986[2]
  %cont138147 = load i64, i64* %envptr140987, align 8                                ; load; *envptr140987
  %envptr140988 = inttoptr i64 %env139269 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr140989 = getelementptr inbounds i64, i64* %envptr140988, i64 1              ; &envptr140988[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr140989, align 8                       ; load; *envptr140989
  %arg138808 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr140990 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr140992 = getelementptr inbounds i64, i64* %cloptr140990, i64 1                ; &eptr140992[1]
  %eptr140993 = getelementptr inbounds i64, i64* %cloptr140990, i64 2                ; &eptr140993[2]
  %eptr140994 = getelementptr inbounds i64, i64* %cloptr140990, i64 3                ; &eptr140994[3]
  store i64 %K1z$_37wind_45stack, i64* %eptr140992                                   ; *eptr140992 = %K1z$_37wind_45stack
  store i64 %QGq$f, i64* %eptr140993                                                 ; *eptr140993 = %QGq$f
  store i64 %O6u$tail, i64* %eptr140994                                              ; *eptr140994 = %O6u$tail
  %eptr140991 = getelementptr inbounds i64, i64* %cloptr140990, i64 0                ; &cloptr140990[0]
  %f140995 = ptrtoint void(i64,i64,i64)* @lam139265 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f140995, i64* %eptr140991                                               ; store fptr
  %arg138807 = ptrtoint i64* %cloptr140990 to i64                                    ; closure cast; i64* -> i64
  %v6G$_95137941 = call i64 @prim_vector_45set_33(i64 %QGq$f, i64 %arg138808, i64 %arg138807); call prim_vector_45set_33
  %arg138832 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138062 = call i64 @prim_vector_45ref(i64 %QGq$f, i64 %arg138832)                 ; call prim_vector_45ref
  %cloptr140996 = inttoptr i64 %a138062 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr140996)                                       ; assert function application
  %i0ptr140997 = getelementptr inbounds i64, i64* %cloptr140996, i64 0               ; &cloptr140996[0]
  %f140999 = load i64, i64* %i0ptr140997, align 8                                    ; load; *i0ptr140997
  %fptr140998 = inttoptr i64 %f140999 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr140998(i64 %a138062, i64 %cont138147, i64 %mtw$new) ; tail call
  ret void
}


define void @lam139265(i64 %env139266, i64 %cont138151, i64 %VRu$l) {
  %envptr141000 = inttoptr i64 %env139266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141001 = getelementptr inbounds i64, i64* %envptr141000, i64 3              ; &envptr141000[3]
  %O6u$tail = load i64, i64* %envptr141001, align 8                                  ; load; *envptr141001
  %envptr141002 = inttoptr i64 %env139266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141003 = getelementptr inbounds i64, i64* %envptr141002, i64 2              ; &envptr141002[2]
  %QGq$f = load i64, i64* %envptr141003, align 8                                     ; load; *envptr141003
  %envptr141004 = inttoptr i64 %env139266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141005 = getelementptr inbounds i64, i64* %envptr141004, i64 1              ; &envptr141004[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr141005, align 8                       ; load; *envptr141005
  %a138056 = call i64 @prim_eq_63(i64 %VRu$l, i64 %O6u$tail)                         ; call prim_eq_63
  %a138057 = call i64 @prim_not(i64 %a138056)                                        ; call prim_not
  %cmp141006 = icmp eq i64 %a138057, 15                                              ; false?
  br i1 %cmp141006, label %else141008, label %then141007                             ; if

then141007:
  %arg138813 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a138058 = call i64 @prim_vector_45ref(i64 %QGq$f, i64 %arg138813)                 ; call prim_vector_45ref
  %a138059 = call i64 @prim_cdr(i64 %VRu$l)                                          ; call prim_cdr
  %cloptr141009 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr141011 = getelementptr inbounds i64, i64* %cloptr141009, i64 1                ; &eptr141011[1]
  %eptr141012 = getelementptr inbounds i64, i64* %cloptr141009, i64 2                ; &eptr141012[2]
  %eptr141013 = getelementptr inbounds i64, i64* %cloptr141009, i64 3                ; &eptr141013[3]
  store i64 %K1z$_37wind_45stack, i64* %eptr141011                                   ; *eptr141011 = %K1z$_37wind_45stack
  store i64 %VRu$l, i64* %eptr141012                                                 ; *eptr141012 = %VRu$l
  store i64 %cont138151, i64* %eptr141013                                            ; *eptr141013 = %cont138151
  %eptr141010 = getelementptr inbounds i64, i64* %cloptr141009, i64 0                ; &cloptr141009[0]
  %f141014 = ptrtoint void(i64,i64,i64)* @lam139261 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141014, i64* %eptr141010                                               ; store fptr
  %arg138817 = ptrtoint i64* %cloptr141009 to i64                                    ; closure cast; i64* -> i64
  %cloptr141015 = inttoptr i64 %a138058 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141015)                                       ; assert function application
  %i0ptr141016 = getelementptr inbounds i64, i64* %cloptr141015, i64 0               ; &cloptr141015[0]
  %f141018 = load i64, i64* %i0ptr141016, align 8                                    ; load; *i0ptr141016
  %fptr141017 = inttoptr i64 %f141018 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141017(i64 %a138058, i64 %arg138817, i64 %a138059)  ; tail call
  ret void

else141008:
  %retprim138155 = call i64 @prim_void()                                             ; call prim_void
  %arg138830 = add i64 0, 0                                                          ; quoted ()
  %cloptr141019 = inttoptr i64 %cont138151 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141019)                                       ; assert function application
  %i0ptr141020 = getelementptr inbounds i64, i64* %cloptr141019, i64 0               ; &cloptr141019[0]
  %f141022 = load i64, i64* %i0ptr141020, align 8                                    ; load; *i0ptr141020
  %fptr141021 = inttoptr i64 %f141022 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141021(i64 %cont138151, i64 %arg138830, i64 %retprim138155); tail call
  ret void
}


define void @lam139261(i64 %env139262, i64 %_95138152, i64 %j6a$_95137942) {
  %envptr141023 = inttoptr i64 %env139262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141024 = getelementptr inbounds i64, i64* %envptr141023, i64 3              ; &envptr141023[3]
  %cont138151 = load i64, i64* %envptr141024, align 8                                ; load; *envptr141024
  %envptr141025 = inttoptr i64 %env139262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141026 = getelementptr inbounds i64, i64* %envptr141025, i64 2              ; &envptr141025[2]
  %VRu$l = load i64, i64* %envptr141026, align 8                                     ; load; *envptr141026
  %envptr141027 = inttoptr i64 %env139262 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141028 = getelementptr inbounds i64, i64* %envptr141027, i64 1              ; &envptr141027[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr141028, align 8                       ; load; *envptr141028
  %a138060 = call i64 @prim_car(i64 %VRu$l)                                          ; call prim_car
  %a138061 = call i64 @prim_car(i64 %a138060)                                        ; call prim_car
  %cloptr141029 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr141031 = getelementptr inbounds i64, i64* %cloptr141029, i64 1                ; &eptr141031[1]
  %eptr141032 = getelementptr inbounds i64, i64* %cloptr141029, i64 2                ; &eptr141032[2]
  %eptr141033 = getelementptr inbounds i64, i64* %cloptr141029, i64 3                ; &eptr141033[3]
  store i64 %K1z$_37wind_45stack, i64* %eptr141031                                   ; *eptr141031 = %K1z$_37wind_45stack
  store i64 %VRu$l, i64* %eptr141032                                                 ; *eptr141032 = %VRu$l
  store i64 %cont138151, i64* %eptr141033                                            ; *eptr141033 = %cont138151
  %eptr141030 = getelementptr inbounds i64, i64* %cloptr141029, i64 0                ; &cloptr141029[0]
  %f141034 = ptrtoint void(i64,i64,i64)* @lam139259 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141034, i64* %eptr141030                                               ; store fptr
  %arg138821 = ptrtoint i64* %cloptr141029 to i64                                    ; closure cast; i64* -> i64
  %cloptr141035 = inttoptr i64 %a138061 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141035)                                       ; assert function application
  %i0ptr141036 = getelementptr inbounds i64, i64* %cloptr141035, i64 0               ; &cloptr141035[0]
  %f141038 = load i64, i64* %i0ptr141036, align 8                                    ; load; *i0ptr141036
  %fptr141037 = inttoptr i64 %f141038 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141037(i64 %a138061, i64 %arg138821)                ; tail call
  ret void
}


define void @lam139259(i64 %env139260, i64 %_95138153, i64 %v8u$_95137943) {
  %envptr141039 = inttoptr i64 %env139260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141040 = getelementptr inbounds i64, i64* %envptr141039, i64 3              ; &envptr141039[3]
  %cont138151 = load i64, i64* %envptr141040, align 8                                ; load; *envptr141040
  %envptr141041 = inttoptr i64 %env139260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141042 = getelementptr inbounds i64, i64* %envptr141041, i64 2              ; &envptr141041[2]
  %VRu$l = load i64, i64* %envptr141042, align 8                                     ; load; *envptr141042
  %envptr141043 = inttoptr i64 %env139260 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141044 = getelementptr inbounds i64, i64* %envptr141043, i64 1              ; &envptr141043[1]
  %K1z$_37wind_45stack = load i64, i64* %envptr141044, align 8                       ; load; *envptr141044
  %arg138824 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim138154 = call i64 @prim_vector_45set_33(i64 %K1z$_37wind_45stack, i64 %arg138824, i64 %VRu$l); call prim_vector_45set_33
  %arg138827 = add i64 0, 0                                                          ; quoted ()
  %cloptr141045 = inttoptr i64 %cont138151 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141045)                                       ; assert function application
  %i0ptr141046 = getelementptr inbounds i64, i64* %cloptr141045, i64 0               ; &cloptr141045[0]
  %f141048 = load i64, i64* %i0ptr141046, align 8                                    ; load; *i0ptr141046
  %fptr141047 = inttoptr i64 %f141048 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141047(i64 %cont138151, i64 %arg138827, i64 %retprim138154); tail call
  ret void
}


define void @lam139246(i64 %env139247, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr141049 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141049)                                       ; assert function application
  %i0ptr141050 = getelementptr inbounds i64, i64* %cloptr141049, i64 0               ; &cloptr141049[0]
  %f141052 = load i64, i64* %i0ptr141050, align 8                                    ; load; *i0ptr141050
  %fptr141051 = inttoptr i64 %f141052 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141051(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam139239(i64 %env139240, i64 %cont138181, i64 %ht6$_37foldl) {
  %envptr141053 = inttoptr i64 %env139240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141054 = getelementptr inbounds i64, i64* %envptr141053, i64 3              ; &envptr141053[3]
  %GbW$_37foldr = load i64, i64* %envptr141054, align 8                              ; load; *envptr141054
  %envptr141055 = inttoptr i64 %env139240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141056 = getelementptr inbounds i64, i64* %envptr141055, i64 2              ; &envptr141055[2]
  %edO$_37map1 = load i64, i64* %envptr141056, align 8                               ; load; *envptr141056
  %envptr141057 = inttoptr i64 %env139240 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141058 = getelementptr inbounds i64, i64* %envptr141057, i64 1              ; &envptr141057[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141058, align 8                             ; load; *envptr141058
  %arg138852 = add i64 0, 0                                                          ; quoted ()
  %cloptr141059 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr141061 = getelementptr inbounds i64, i64* %cloptr141059, i64 1                ; &eptr141061[1]
  %eptr141062 = getelementptr inbounds i64, i64* %cloptr141059, i64 2                ; &eptr141062[2]
  %eptr141063 = getelementptr inbounds i64, i64* %cloptr141059, i64 3                ; &eptr141063[3]
  %eptr141064 = getelementptr inbounds i64, i64* %cloptr141059, i64 4                ; &eptr141064[4]
  store i64 %ht6$_37foldl, i64* %eptr141061                                          ; *eptr141061 = %ht6$_37foldl
  store i64 %VVX$_37foldr1, i64* %eptr141062                                         ; *eptr141062 = %VVX$_37foldr1
  store i64 %edO$_37map1, i64* %eptr141063                                           ; *eptr141063 = %edO$_37map1
  store i64 %GbW$_37foldr, i64* %eptr141064                                          ; *eptr141064 = %GbW$_37foldr
  %eptr141060 = getelementptr inbounds i64, i64* %cloptr141059, i64 0                ; &cloptr141059[0]
  %f141065 = ptrtoint void(i64,i64)* @lam139236 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f141065, i64* %eptr141060                                               ; store fptr
  %arg138851 = ptrtoint i64* %cloptr141059 to i64                                    ; closure cast; i64* -> i64
  %cloptr141066 = inttoptr i64 %cont138181 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141066)                                       ; assert function application
  %i0ptr141067 = getelementptr inbounds i64, i64* %cloptr141066, i64 0               ; &cloptr141066[0]
  %f141069 = load i64, i64* %i0ptr141067, align 8                                    ; load; *i0ptr141067
  %fptr141068 = inttoptr i64 %f141069 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141068(i64 %cont138181, i64 %arg138852, i64 %arg138851); tail call
  ret void
}


define void @lam139236(i64 %env139237, i64 %RlF$args138183) {
  %envptr141070 = inttoptr i64 %env139237 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141071 = getelementptr inbounds i64, i64* %envptr141070, i64 4              ; &envptr141070[4]
  %GbW$_37foldr = load i64, i64* %envptr141071, align 8                              ; load; *envptr141071
  %envptr141072 = inttoptr i64 %env139237 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141073 = getelementptr inbounds i64, i64* %envptr141072, i64 3              ; &envptr141072[3]
  %edO$_37map1 = load i64, i64* %envptr141073, align 8                               ; load; *envptr141073
  %envptr141074 = inttoptr i64 %env139237 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141075 = getelementptr inbounds i64, i64* %envptr141074, i64 2              ; &envptr141074[2]
  %VVX$_37foldr1 = load i64, i64* %envptr141075, align 8                             ; load; *envptr141075
  %envptr141076 = inttoptr i64 %env139237 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141077 = getelementptr inbounds i64, i64* %envptr141076, i64 1              ; &envptr141076[1]
  %ht6$_37foldl = load i64, i64* %envptr141077, align 8                              ; load; *envptr141077
  %cont138182 = call i64 @prim_car(i64 %RlF$args138183)                              ; call prim_car
  %RlF$args = call i64 @prim_cdr(i64 %RlF$args138183)                                ; call prim_cdr
  %KkX$f = call i64 @prim_car(i64 %RlF$args)                                         ; call prim_car
  %a137984 = call i64 @prim_cdr(i64 %RlF$args)                                       ; call prim_cdr
  %retprim138202 = call i64 @prim_car(i64 %a137984)                                  ; call prim_car
  %cloptr141078 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr141080 = getelementptr inbounds i64, i64* %cloptr141078, i64 1                ; &eptr141080[1]
  %eptr141081 = getelementptr inbounds i64, i64* %cloptr141078, i64 2                ; &eptr141081[2]
  %eptr141082 = getelementptr inbounds i64, i64* %cloptr141078, i64 3                ; &eptr141082[3]
  %eptr141083 = getelementptr inbounds i64, i64* %cloptr141078, i64 4                ; &eptr141083[4]
  %eptr141084 = getelementptr inbounds i64, i64* %cloptr141078, i64 5                ; &eptr141084[5]
  %eptr141085 = getelementptr inbounds i64, i64* %cloptr141078, i64 6                ; &eptr141085[6]
  %eptr141086 = getelementptr inbounds i64, i64* %cloptr141078, i64 7                ; &eptr141086[7]
  store i64 %ht6$_37foldl, i64* %eptr141080                                          ; *eptr141080 = %ht6$_37foldl
  store i64 %cont138182, i64* %eptr141081                                            ; *eptr141081 = %cont138182
  store i64 %KkX$f, i64* %eptr141082                                                 ; *eptr141082 = %KkX$f
  store i64 %VVX$_37foldr1, i64* %eptr141083                                         ; *eptr141083 = %VVX$_37foldr1
  store i64 %edO$_37map1, i64* %eptr141084                                           ; *eptr141084 = %edO$_37map1
  store i64 %RlF$args, i64* %eptr141085                                              ; *eptr141085 = %RlF$args
  store i64 %GbW$_37foldr, i64* %eptr141086                                          ; *eptr141086 = %GbW$_37foldr
  %eptr141079 = getelementptr inbounds i64, i64* %cloptr141078, i64 0                ; &cloptr141078[0]
  %f141087 = ptrtoint void(i64,i64,i64)* @lam139234 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141087, i64* %eptr141079                                               ; store fptr
  %arg138861 = ptrtoint i64* %cloptr141078 to i64                                    ; closure cast; i64* -> i64
  %arg138860 = add i64 0, 0                                                          ; quoted ()
  %cloptr141088 = inttoptr i64 %arg138861 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141088)                                       ; assert function application
  %i0ptr141089 = getelementptr inbounds i64, i64* %cloptr141088, i64 0               ; &cloptr141088[0]
  %f141091 = load i64, i64* %i0ptr141089, align 8                                    ; load; *i0ptr141089
  %fptr141090 = inttoptr i64 %f141091 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141090(i64 %arg138861, i64 %arg138860, i64 %retprim138202); tail call
  ret void
}


define void @lam139234(i64 %env139235, i64 %_95138184, i64 %mhi$acc) {
  %envptr141092 = inttoptr i64 %env139235 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141093 = getelementptr inbounds i64, i64* %envptr141092, i64 7              ; &envptr141092[7]
  %GbW$_37foldr = load i64, i64* %envptr141093, align 8                              ; load; *envptr141093
  %envptr141094 = inttoptr i64 %env139235 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141095 = getelementptr inbounds i64, i64* %envptr141094, i64 6              ; &envptr141094[6]
  %RlF$args = load i64, i64* %envptr141095, align 8                                  ; load; *envptr141095
  %envptr141096 = inttoptr i64 %env139235 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141097 = getelementptr inbounds i64, i64* %envptr141096, i64 5              ; &envptr141096[5]
  %edO$_37map1 = load i64, i64* %envptr141097, align 8                               ; load; *envptr141097
  %envptr141098 = inttoptr i64 %env139235 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141099 = getelementptr inbounds i64, i64* %envptr141098, i64 4              ; &envptr141098[4]
  %VVX$_37foldr1 = load i64, i64* %envptr141099, align 8                             ; load; *envptr141099
  %envptr141100 = inttoptr i64 %env139235 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141101 = getelementptr inbounds i64, i64* %envptr141100, i64 3              ; &envptr141100[3]
  %KkX$f = load i64, i64* %envptr141101, align 8                                     ; load; *envptr141101
  %envptr141102 = inttoptr i64 %env139235 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141103 = getelementptr inbounds i64, i64* %envptr141102, i64 2              ; &envptr141102[2]
  %cont138182 = load i64, i64* %envptr141103, align 8                                ; load; *envptr141103
  %envptr141104 = inttoptr i64 %env139235 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141105 = getelementptr inbounds i64, i64* %envptr141104, i64 1              ; &envptr141104[1]
  %ht6$_37foldl = load i64, i64* %envptr141105, align 8                              ; load; *envptr141105
  %a137985 = call i64 @prim_cdr(i64 %RlF$args)                                       ; call prim_cdr
  %retprim138201 = call i64 @prim_cdr(i64 %a137985)                                  ; call prim_cdr
  %cloptr141106 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr141108 = getelementptr inbounds i64, i64* %cloptr141106, i64 1                ; &eptr141108[1]
  %eptr141109 = getelementptr inbounds i64, i64* %cloptr141106, i64 2                ; &eptr141109[2]
  %eptr141110 = getelementptr inbounds i64, i64* %cloptr141106, i64 3                ; &eptr141110[3]
  %eptr141111 = getelementptr inbounds i64, i64* %cloptr141106, i64 4                ; &eptr141111[4]
  %eptr141112 = getelementptr inbounds i64, i64* %cloptr141106, i64 5                ; &eptr141112[5]
  %eptr141113 = getelementptr inbounds i64, i64* %cloptr141106, i64 6                ; &eptr141113[6]
  %eptr141114 = getelementptr inbounds i64, i64* %cloptr141106, i64 7                ; &eptr141114[7]
  store i64 %ht6$_37foldl, i64* %eptr141108                                          ; *eptr141108 = %ht6$_37foldl
  store i64 %cont138182, i64* %eptr141109                                            ; *eptr141109 = %cont138182
  store i64 %KkX$f, i64* %eptr141110                                                 ; *eptr141110 = %KkX$f
  store i64 %VVX$_37foldr1, i64* %eptr141111                                         ; *eptr141111 = %VVX$_37foldr1
  store i64 %edO$_37map1, i64* %eptr141112                                           ; *eptr141112 = %edO$_37map1
  store i64 %mhi$acc, i64* %eptr141113                                               ; *eptr141113 = %mhi$acc
  store i64 %GbW$_37foldr, i64* %eptr141114                                          ; *eptr141114 = %GbW$_37foldr
  %eptr141107 = getelementptr inbounds i64, i64* %cloptr141106, i64 0                ; &cloptr141106[0]
  %f141115 = ptrtoint void(i64,i64,i64)* @lam139232 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141115, i64* %eptr141107                                               ; store fptr
  %arg138866 = ptrtoint i64* %cloptr141106 to i64                                    ; closure cast; i64* -> i64
  %arg138865 = add i64 0, 0                                                          ; quoted ()
  %cloptr141116 = inttoptr i64 %arg138866 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141116)                                       ; assert function application
  %i0ptr141117 = getelementptr inbounds i64, i64* %cloptr141116, i64 0               ; &cloptr141116[0]
  %f141119 = load i64, i64* %i0ptr141117, align 8                                    ; load; *i0ptr141117
  %fptr141118 = inttoptr i64 %f141119 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141118(i64 %arg138866, i64 %arg138865, i64 %retprim138201); tail call
  ret void
}


define void @lam139232(i64 %env139233, i64 %_95138185, i64 %moh$lsts) {
  %envptr141120 = inttoptr i64 %env139233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141121 = getelementptr inbounds i64, i64* %envptr141120, i64 7              ; &envptr141120[7]
  %GbW$_37foldr = load i64, i64* %envptr141121, align 8                              ; load; *envptr141121
  %envptr141122 = inttoptr i64 %env139233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141123 = getelementptr inbounds i64, i64* %envptr141122, i64 6              ; &envptr141122[6]
  %mhi$acc = load i64, i64* %envptr141123, align 8                                   ; load; *envptr141123
  %envptr141124 = inttoptr i64 %env139233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141125 = getelementptr inbounds i64, i64* %envptr141124, i64 5              ; &envptr141124[5]
  %edO$_37map1 = load i64, i64* %envptr141125, align 8                               ; load; *envptr141125
  %envptr141126 = inttoptr i64 %env139233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141127 = getelementptr inbounds i64, i64* %envptr141126, i64 4              ; &envptr141126[4]
  %VVX$_37foldr1 = load i64, i64* %envptr141127, align 8                             ; load; *envptr141127
  %envptr141128 = inttoptr i64 %env139233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141129 = getelementptr inbounds i64, i64* %envptr141128, i64 3              ; &envptr141128[3]
  %KkX$f = load i64, i64* %envptr141129, align 8                                     ; load; *envptr141129
  %envptr141130 = inttoptr i64 %env139233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141131 = getelementptr inbounds i64, i64* %envptr141130, i64 2              ; &envptr141130[2]
  %cont138182 = load i64, i64* %envptr141131, align 8                                ; load; *envptr141131
  %envptr141132 = inttoptr i64 %env139233 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141133 = getelementptr inbounds i64, i64* %envptr141132, i64 1              ; &envptr141132[1]
  %ht6$_37foldl = load i64, i64* %envptr141133, align 8                              ; load; *envptr141133
  %cloptr141134 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr141136 = getelementptr inbounds i64, i64* %cloptr141134, i64 1                ; &eptr141136[1]
  %eptr141137 = getelementptr inbounds i64, i64* %cloptr141134, i64 2                ; &eptr141137[2]
  %eptr141138 = getelementptr inbounds i64, i64* %cloptr141134, i64 3                ; &eptr141138[3]
  %eptr141139 = getelementptr inbounds i64, i64* %cloptr141134, i64 4                ; &eptr141139[4]
  %eptr141140 = getelementptr inbounds i64, i64* %cloptr141134, i64 5                ; &eptr141140[5]
  %eptr141141 = getelementptr inbounds i64, i64* %cloptr141134, i64 6                ; &eptr141141[6]
  %eptr141142 = getelementptr inbounds i64, i64* %cloptr141134, i64 7                ; &eptr141142[7]
  store i64 %ht6$_37foldl, i64* %eptr141136                                          ; *eptr141136 = %ht6$_37foldl
  store i64 %cont138182, i64* %eptr141137                                            ; *eptr141137 = %cont138182
  store i64 %KkX$f, i64* %eptr141138                                                 ; *eptr141138 = %KkX$f
  store i64 %moh$lsts, i64* %eptr141139                                              ; *eptr141139 = %moh$lsts
  store i64 %edO$_37map1, i64* %eptr141140                                           ; *eptr141140 = %edO$_37map1
  store i64 %mhi$acc, i64* %eptr141141                                               ; *eptr141141 = %mhi$acc
  store i64 %GbW$_37foldr, i64* %eptr141142                                          ; *eptr141142 = %GbW$_37foldr
  %eptr141135 = getelementptr inbounds i64, i64* %cloptr141134, i64 0                ; &cloptr141134[0]
  %f141143 = ptrtoint void(i64,i64,i64)* @lam139230 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141143, i64* %eptr141135                                               ; store fptr
  %arg138870 = ptrtoint i64* %cloptr141134 to i64                                    ; closure cast; i64* -> i64
  %cloptr141144 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141145 = getelementptr inbounds i64, i64* %cloptr141144, i64 0                ; &cloptr141144[0]
  %f141146 = ptrtoint void(i64,i64,i64,i64)* @lam139209 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f141146, i64* %eptr141145                                               ; store fptr
  %arg138869 = ptrtoint i64* %cloptr141144 to i64                                    ; closure cast; i64* -> i64
  %arg138868 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr141147 = inttoptr i64 %VVX$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141147)                                       ; assert function application
  %i0ptr141148 = getelementptr inbounds i64, i64* %cloptr141147, i64 0               ; &cloptr141147[0]
  %f141150 = load i64, i64* %i0ptr141148, align 8                                    ; load; *i0ptr141148
  %fptr141149 = inttoptr i64 %f141150 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141149(i64 %VVX$_37foldr1, i64 %arg138870, i64 %arg138869, i64 %arg138868, i64 %moh$lsts); tail call
  ret void
}


define void @lam139230(i64 %env139231, i64 %_95138186, i64 %a137986) {
  %envptr141151 = inttoptr i64 %env139231 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141152 = getelementptr inbounds i64, i64* %envptr141151, i64 7              ; &envptr141151[7]
  %GbW$_37foldr = load i64, i64* %envptr141152, align 8                              ; load; *envptr141152
  %envptr141153 = inttoptr i64 %env139231 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141154 = getelementptr inbounds i64, i64* %envptr141153, i64 6              ; &envptr141153[6]
  %mhi$acc = load i64, i64* %envptr141154, align 8                                   ; load; *envptr141154
  %envptr141155 = inttoptr i64 %env139231 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141156 = getelementptr inbounds i64, i64* %envptr141155, i64 5              ; &envptr141155[5]
  %edO$_37map1 = load i64, i64* %envptr141156, align 8                               ; load; *envptr141156
  %envptr141157 = inttoptr i64 %env139231 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141158 = getelementptr inbounds i64, i64* %envptr141157, i64 4              ; &envptr141157[4]
  %moh$lsts = load i64, i64* %envptr141158, align 8                                  ; load; *envptr141158
  %envptr141159 = inttoptr i64 %env139231 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141160 = getelementptr inbounds i64, i64* %envptr141159, i64 3              ; &envptr141159[3]
  %KkX$f = load i64, i64* %envptr141160, align 8                                     ; load; *envptr141160
  %envptr141161 = inttoptr i64 %env139231 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141162 = getelementptr inbounds i64, i64* %envptr141161, i64 2              ; &envptr141161[2]
  %cont138182 = load i64, i64* %envptr141162, align 8                                ; load; *envptr141162
  %envptr141163 = inttoptr i64 %env139231 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141164 = getelementptr inbounds i64, i64* %envptr141163, i64 1              ; &envptr141163[1]
  %ht6$_37foldl = load i64, i64* %envptr141164, align 8                              ; load; *envptr141164
  %cmp141165 = icmp eq i64 %a137986, 15                                              ; false?
  br i1 %cmp141165, label %else141167, label %then141166                             ; if

then141166:
  %arg138873 = add i64 0, 0                                                          ; quoted ()
  %cloptr141168 = inttoptr i64 %cont138182 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141168)                                       ; assert function application
  %i0ptr141169 = getelementptr inbounds i64, i64* %cloptr141168, i64 0               ; &cloptr141168[0]
  %f141171 = load i64, i64* %i0ptr141169, align 8                                    ; load; *i0ptr141169
  %fptr141170 = inttoptr i64 %f141171 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141170(i64 %cont138182, i64 %arg138873, i64 %mhi$acc); tail call
  ret void

else141167:
  %cloptr141172 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr141174 = getelementptr inbounds i64, i64* %cloptr141172, i64 1                ; &eptr141174[1]
  %eptr141175 = getelementptr inbounds i64, i64* %cloptr141172, i64 2                ; &eptr141175[2]
  %eptr141176 = getelementptr inbounds i64, i64* %cloptr141172, i64 3                ; &eptr141176[3]
  %eptr141177 = getelementptr inbounds i64, i64* %cloptr141172, i64 4                ; &eptr141177[4]
  %eptr141178 = getelementptr inbounds i64, i64* %cloptr141172, i64 5                ; &eptr141178[5]
  %eptr141179 = getelementptr inbounds i64, i64* %cloptr141172, i64 6                ; &eptr141179[6]
  %eptr141180 = getelementptr inbounds i64, i64* %cloptr141172, i64 7                ; &eptr141180[7]
  store i64 %ht6$_37foldl, i64* %eptr141174                                          ; *eptr141174 = %ht6$_37foldl
  store i64 %cont138182, i64* %eptr141175                                            ; *eptr141175 = %cont138182
  store i64 %KkX$f, i64* %eptr141176                                                 ; *eptr141176 = %KkX$f
  store i64 %moh$lsts, i64* %eptr141177                                              ; *eptr141177 = %moh$lsts
  store i64 %edO$_37map1, i64* %eptr141178                                           ; *eptr141178 = %edO$_37map1
  store i64 %mhi$acc, i64* %eptr141179                                               ; *eptr141179 = %mhi$acc
  store i64 %GbW$_37foldr, i64* %eptr141180                                          ; *eptr141180 = %GbW$_37foldr
  %eptr141173 = getelementptr inbounds i64, i64* %cloptr141172, i64 0                ; &cloptr141172[0]
  %f141181 = ptrtoint void(i64,i64,i64)* @lam139228 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141181, i64* %eptr141173                                               ; store fptr
  %arg138877 = ptrtoint i64* %cloptr141172 to i64                                    ; closure cast; i64* -> i64
  %cloptr141182 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141183 = getelementptr inbounds i64, i64* %cloptr141182, i64 0                ; &cloptr141182[0]
  %f141184 = ptrtoint void(i64,i64,i64)* @lam139213 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141184, i64* %eptr141183                                               ; store fptr
  %arg138876 = ptrtoint i64* %cloptr141182 to i64                                    ; closure cast; i64* -> i64
  %cloptr141185 = inttoptr i64 %edO$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141185)                                       ; assert function application
  %i0ptr141186 = getelementptr inbounds i64, i64* %cloptr141185, i64 0               ; &cloptr141185[0]
  %f141188 = load i64, i64* %i0ptr141186, align 8                                    ; load; *i0ptr141186
  %fptr141187 = inttoptr i64 %f141188 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141187(i64 %edO$_37map1, i64 %arg138877, i64 %arg138876, i64 %moh$lsts); tail call
  ret void
}


define void @lam139228(i64 %env139229, i64 %_95138187, i64 %EVN$lsts_43) {
  %envptr141189 = inttoptr i64 %env139229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141190 = getelementptr inbounds i64, i64* %envptr141189, i64 7              ; &envptr141189[7]
  %GbW$_37foldr = load i64, i64* %envptr141190, align 8                              ; load; *envptr141190
  %envptr141191 = inttoptr i64 %env139229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141192 = getelementptr inbounds i64, i64* %envptr141191, i64 6              ; &envptr141191[6]
  %mhi$acc = load i64, i64* %envptr141192, align 8                                   ; load; *envptr141192
  %envptr141193 = inttoptr i64 %env139229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141194 = getelementptr inbounds i64, i64* %envptr141193, i64 5              ; &envptr141193[5]
  %edO$_37map1 = load i64, i64* %envptr141194, align 8                               ; load; *envptr141194
  %envptr141195 = inttoptr i64 %env139229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141196 = getelementptr inbounds i64, i64* %envptr141195, i64 4              ; &envptr141195[4]
  %moh$lsts = load i64, i64* %envptr141196, align 8                                  ; load; *envptr141196
  %envptr141197 = inttoptr i64 %env139229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141198 = getelementptr inbounds i64, i64* %envptr141197, i64 3              ; &envptr141197[3]
  %KkX$f = load i64, i64* %envptr141198, align 8                                     ; load; *envptr141198
  %envptr141199 = inttoptr i64 %env139229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141200 = getelementptr inbounds i64, i64* %envptr141199, i64 2              ; &envptr141199[2]
  %cont138182 = load i64, i64* %envptr141200, align 8                                ; load; *envptr141200
  %envptr141201 = inttoptr i64 %env139229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141202 = getelementptr inbounds i64, i64* %envptr141201, i64 1              ; &envptr141201[1]
  %ht6$_37foldl = load i64, i64* %envptr141202, align 8                              ; load; *envptr141202
  %cloptr141203 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr141205 = getelementptr inbounds i64, i64* %cloptr141203, i64 1                ; &eptr141205[1]
  %eptr141206 = getelementptr inbounds i64, i64* %cloptr141203, i64 2                ; &eptr141206[2]
  %eptr141207 = getelementptr inbounds i64, i64* %cloptr141203, i64 3                ; &eptr141207[3]
  %eptr141208 = getelementptr inbounds i64, i64* %cloptr141203, i64 4                ; &eptr141208[4]
  %eptr141209 = getelementptr inbounds i64, i64* %cloptr141203, i64 5                ; &eptr141209[5]
  %eptr141210 = getelementptr inbounds i64, i64* %cloptr141203, i64 6                ; &eptr141210[6]
  store i64 %ht6$_37foldl, i64* %eptr141205                                          ; *eptr141205 = %ht6$_37foldl
  store i64 %cont138182, i64* %eptr141206                                            ; *eptr141206 = %cont138182
  store i64 %EVN$lsts_43, i64* %eptr141207                                           ; *eptr141207 = %EVN$lsts_43
  store i64 %KkX$f, i64* %eptr141208                                                 ; *eptr141208 = %KkX$f
  store i64 %mhi$acc, i64* %eptr141209                                               ; *eptr141209 = %mhi$acc
  store i64 %GbW$_37foldr, i64* %eptr141210                                          ; *eptr141210 = %GbW$_37foldr
  %eptr141204 = getelementptr inbounds i64, i64* %cloptr141203, i64 0                ; &cloptr141203[0]
  %f141211 = ptrtoint void(i64,i64,i64)* @lam139226 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141211, i64* %eptr141204                                               ; store fptr
  %arg138881 = ptrtoint i64* %cloptr141203 to i64                                    ; closure cast; i64* -> i64
  %cloptr141212 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141213 = getelementptr inbounds i64, i64* %cloptr141212, i64 0                ; &cloptr141212[0]
  %f141214 = ptrtoint void(i64,i64,i64)* @lam139216 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141214, i64* %eptr141213                                               ; store fptr
  %arg138880 = ptrtoint i64* %cloptr141212 to i64                                    ; closure cast; i64* -> i64
  %cloptr141215 = inttoptr i64 %edO$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141215)                                       ; assert function application
  %i0ptr141216 = getelementptr inbounds i64, i64* %cloptr141215, i64 0               ; &cloptr141215[0]
  %f141218 = load i64, i64* %i0ptr141216, align 8                                    ; load; *i0ptr141216
  %fptr141217 = inttoptr i64 %f141218 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141217(i64 %edO$_37map1, i64 %arg138881, i64 %arg138880, i64 %moh$lsts); tail call
  ret void
}


define void @lam139226(i64 %env139227, i64 %_95138188, i64 %vQs$vs) {
  %envptr141219 = inttoptr i64 %env139227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141220 = getelementptr inbounds i64, i64* %envptr141219, i64 6              ; &envptr141219[6]
  %GbW$_37foldr = load i64, i64* %envptr141220, align 8                              ; load; *envptr141220
  %envptr141221 = inttoptr i64 %env139227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141222 = getelementptr inbounds i64, i64* %envptr141221, i64 5              ; &envptr141221[5]
  %mhi$acc = load i64, i64* %envptr141222, align 8                                   ; load; *envptr141222
  %envptr141223 = inttoptr i64 %env139227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141224 = getelementptr inbounds i64, i64* %envptr141223, i64 4              ; &envptr141223[4]
  %KkX$f = load i64, i64* %envptr141224, align 8                                     ; load; *envptr141224
  %envptr141225 = inttoptr i64 %env139227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141226 = getelementptr inbounds i64, i64* %envptr141225, i64 3              ; &envptr141225[3]
  %EVN$lsts_43 = load i64, i64* %envptr141226, align 8                               ; load; *envptr141226
  %envptr141227 = inttoptr i64 %env139227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141228 = getelementptr inbounds i64, i64* %envptr141227, i64 2              ; &envptr141227[2]
  %cont138182 = load i64, i64* %envptr141228, align 8                                ; load; *envptr141228
  %envptr141229 = inttoptr i64 %env139227 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141230 = getelementptr inbounds i64, i64* %envptr141229, i64 1              ; &envptr141229[1]
  %ht6$_37foldl = load i64, i64* %envptr141230, align 8                              ; load; *envptr141230
  %arg138883 = add i64 0, 0                                                          ; quoted ()
  %a137987 = call i64 @prim_cons(i64 %mhi$acc, i64 %arg138883)                       ; call prim_cons
  %cloptr141231 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr141233 = getelementptr inbounds i64, i64* %cloptr141231, i64 1                ; &eptr141233[1]
  %eptr141234 = getelementptr inbounds i64, i64* %cloptr141231, i64 2                ; &eptr141234[2]
  %eptr141235 = getelementptr inbounds i64, i64* %cloptr141231, i64 3                ; &eptr141235[3]
  %eptr141236 = getelementptr inbounds i64, i64* %cloptr141231, i64 4                ; &eptr141236[4]
  store i64 %ht6$_37foldl, i64* %eptr141233                                          ; *eptr141233 = %ht6$_37foldl
  store i64 %cont138182, i64* %eptr141234                                            ; *eptr141234 = %cont138182
  store i64 %EVN$lsts_43, i64* %eptr141235                                           ; *eptr141235 = %EVN$lsts_43
  store i64 %KkX$f, i64* %eptr141236                                                 ; *eptr141236 = %KkX$f
  %eptr141232 = getelementptr inbounds i64, i64* %cloptr141231, i64 0                ; &cloptr141231[0]
  %f141237 = ptrtoint void(i64,i64,i64)* @lam139223 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141237, i64* %eptr141232                                               ; store fptr
  %arg138888 = ptrtoint i64* %cloptr141231 to i64                                    ; closure cast; i64* -> i64
  %cloptr141238 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141239 = getelementptr inbounds i64, i64* %cloptr141238, i64 0                ; &cloptr141238[0]
  %f141240 = ptrtoint void(i64,i64,i64,i64)* @lam139219 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f141240, i64* %eptr141239                                               ; store fptr
  %arg138887 = ptrtoint i64* %cloptr141238 to i64                                    ; closure cast; i64* -> i64
  %cloptr141241 = inttoptr i64 %GbW$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141241)                                       ; assert function application
  %i0ptr141242 = getelementptr inbounds i64, i64* %cloptr141241, i64 0               ; &cloptr141241[0]
  %f141244 = load i64, i64* %i0ptr141242, align 8                                    ; load; *i0ptr141242
  %fptr141243 = inttoptr i64 %f141244 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141243(i64 %GbW$_37foldr, i64 %arg138888, i64 %arg138887, i64 %a137987, i64 %vQs$vs); tail call
  ret void
}


define void @lam139223(i64 %env139224, i64 %_95138191, i64 %a137988) {
  %envptr141245 = inttoptr i64 %env139224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141246 = getelementptr inbounds i64, i64* %envptr141245, i64 4              ; &envptr141245[4]
  %KkX$f = load i64, i64* %envptr141246, align 8                                     ; load; *envptr141246
  %envptr141247 = inttoptr i64 %env139224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141248 = getelementptr inbounds i64, i64* %envptr141247, i64 3              ; &envptr141247[3]
  %EVN$lsts_43 = load i64, i64* %envptr141248, align 8                               ; load; *envptr141248
  %envptr141249 = inttoptr i64 %env139224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141250 = getelementptr inbounds i64, i64* %envptr141249, i64 2              ; &envptr141249[2]
  %cont138182 = load i64, i64* %envptr141250, align 8                                ; load; *envptr141250
  %envptr141251 = inttoptr i64 %env139224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141252 = getelementptr inbounds i64, i64* %envptr141251, i64 1              ; &envptr141251[1]
  %ht6$_37foldl = load i64, i64* %envptr141252, align 8                              ; load; *envptr141252
  %cloptr141253 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr141255 = getelementptr inbounds i64, i64* %cloptr141253, i64 1                ; &eptr141255[1]
  %eptr141256 = getelementptr inbounds i64, i64* %cloptr141253, i64 2                ; &eptr141256[2]
  %eptr141257 = getelementptr inbounds i64, i64* %cloptr141253, i64 3                ; &eptr141257[3]
  %eptr141258 = getelementptr inbounds i64, i64* %cloptr141253, i64 4                ; &eptr141258[4]
  store i64 %ht6$_37foldl, i64* %eptr141255                                          ; *eptr141255 = %ht6$_37foldl
  store i64 %cont138182, i64* %eptr141256                                            ; *eptr141256 = %cont138182
  store i64 %EVN$lsts_43, i64* %eptr141257                                           ; *eptr141257 = %EVN$lsts_43
  store i64 %KkX$f, i64* %eptr141258                                                 ; *eptr141258 = %KkX$f
  %eptr141254 = getelementptr inbounds i64, i64* %cloptr141253, i64 0                ; &cloptr141253[0]
  %f141259 = ptrtoint void(i64,i64,i64)* @lam139221 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141259, i64* %eptr141254                                               ; store fptr
  %arg138891 = ptrtoint i64* %cloptr141253 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst138192 = call i64 @prim_cons(i64 %arg138891, i64 %a137988)               ; call prim_cons
  %cloptr141260 = inttoptr i64 %KkX$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141260)                                       ; assert function application
  %i0ptr141261 = getelementptr inbounds i64, i64* %cloptr141260, i64 0               ; &cloptr141260[0]
  %f141263 = load i64, i64* %i0ptr141261, align 8                                    ; load; *i0ptr141261
  %fptr141262 = inttoptr i64 %f141263 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141262(i64 %KkX$f, i64 %cps_45lst138192)            ; tail call
  ret void
}


define void @lam139221(i64 %env139222, i64 %_95138189, i64 %ZMC$acc_43) {
  %envptr141264 = inttoptr i64 %env139222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141265 = getelementptr inbounds i64, i64* %envptr141264, i64 4              ; &envptr141264[4]
  %KkX$f = load i64, i64* %envptr141265, align 8                                     ; load; *envptr141265
  %envptr141266 = inttoptr i64 %env139222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141267 = getelementptr inbounds i64, i64* %envptr141266, i64 3              ; &envptr141266[3]
  %EVN$lsts_43 = load i64, i64* %envptr141267, align 8                               ; load; *envptr141267
  %envptr141268 = inttoptr i64 %env139222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141269 = getelementptr inbounds i64, i64* %envptr141268, i64 2              ; &envptr141268[2]
  %cont138182 = load i64, i64* %envptr141269, align 8                                ; load; *envptr141269
  %envptr141270 = inttoptr i64 %env139222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141271 = getelementptr inbounds i64, i64* %envptr141270, i64 1              ; &envptr141270[1]
  %ht6$_37foldl = load i64, i64* %envptr141271, align 8                              ; load; *envptr141271
  %a137989 = call i64 @prim_cons(i64 %ZMC$acc_43, i64 %EVN$lsts_43)                  ; call prim_cons
  %a137990 = call i64 @prim_cons(i64 %KkX$f, i64 %a137989)                           ; call prim_cons
  %cps_45lst138190 = call i64 @prim_cons(i64 %cont138182, i64 %a137990)              ; call prim_cons
  %cloptr141272 = inttoptr i64 %ht6$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141272)                                       ; assert function application
  %i0ptr141273 = getelementptr inbounds i64, i64* %cloptr141272, i64 0               ; &cloptr141272[0]
  %f141275 = load i64, i64* %i0ptr141273, align 8                                    ; load; *i0ptr141273
  %fptr141274 = inttoptr i64 %f141275 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141274(i64 %ht6$_37foldl, i64 %cps_45lst138190)     ; tail call
  ret void
}


define void @lam139219(i64 %env139220, i64 %cont138193, i64 %MDs$a, i64 %eOl$b) {
  %retprim138194 = call i64 @prim_cons(i64 %MDs$a, i64 %eOl$b)                       ; call prim_cons
  %arg138901 = add i64 0, 0                                                          ; quoted ()
  %cloptr141276 = inttoptr i64 %cont138193 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141276)                                       ; assert function application
  %i0ptr141277 = getelementptr inbounds i64, i64* %cloptr141276, i64 0               ; &cloptr141276[0]
  %f141279 = load i64, i64* %i0ptr141277, align 8                                    ; load; *i0ptr141277
  %fptr141278 = inttoptr i64 %f141279 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141278(i64 %cont138193, i64 %arg138901, i64 %retprim138194); tail call
  ret void
}


define void @lam139216(i64 %env139217, i64 %cont138195, i64 %CnQ$x) {
  %retprim138196 = call i64 @prim_car(i64 %CnQ$x)                                    ; call prim_car
  %arg138905 = add i64 0, 0                                                          ; quoted ()
  %cloptr141280 = inttoptr i64 %cont138195 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141280)                                       ; assert function application
  %i0ptr141281 = getelementptr inbounds i64, i64* %cloptr141280, i64 0               ; &cloptr141280[0]
  %f141283 = load i64, i64* %i0ptr141281, align 8                                    ; load; *i0ptr141281
  %fptr141282 = inttoptr i64 %f141283 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141282(i64 %cont138195, i64 %arg138905, i64 %retprim138196); tail call
  ret void
}


define void @lam139213(i64 %env139214, i64 %cont138197, i64 %NDN$x) {
  %retprim138198 = call i64 @prim_cdr(i64 %NDN$x)                                    ; call prim_cdr
  %arg138909 = add i64 0, 0                                                          ; quoted ()
  %cloptr141284 = inttoptr i64 %cont138197 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141284)                                       ; assert function application
  %i0ptr141285 = getelementptr inbounds i64, i64* %cloptr141284, i64 0               ; &cloptr141284[0]
  %f141287 = load i64, i64* %i0ptr141285, align 8                                    ; load; *i0ptr141285
  %fptr141286 = inttoptr i64 %f141287 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141286(i64 %cont138197, i64 %arg138909, i64 %retprim138198); tail call
  ret void
}


define void @lam139209(i64 %env139210, i64 %cont138199, i64 %aZ2$lst, i64 %M39$b) {
  %cmp141288 = icmp eq i64 %M39$b, 15                                                ; false?
  br i1 %cmp141288, label %else141290, label %then141289                             ; if

then141289:
  %arg138912 = add i64 0, 0                                                          ; quoted ()
  %cloptr141291 = inttoptr i64 %cont138199 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141291)                                       ; assert function application
  %i0ptr141292 = getelementptr inbounds i64, i64* %cloptr141291, i64 0               ; &cloptr141291[0]
  %f141294 = load i64, i64* %i0ptr141292, align 8                                    ; load; *i0ptr141292
  %fptr141293 = inttoptr i64 %f141294 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141293(i64 %cont138199, i64 %arg138912, i64 %M39$b) ; tail call
  ret void

else141290:
  %retprim138200 = call i64 @prim_null_63(i64 %aZ2$lst)                              ; call prim_null_63
  %arg138916 = add i64 0, 0                                                          ; quoted ()
  %cloptr141295 = inttoptr i64 %cont138199 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141295)                                       ; assert function application
  %i0ptr141296 = getelementptr inbounds i64, i64* %cloptr141295, i64 0               ; &cloptr141295[0]
  %f141298 = load i64, i64* %i0ptr141296, align 8                                    ; load; *i0ptr141296
  %fptr141297 = inttoptr i64 %f141298 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141297(i64 %cont138199, i64 %arg138916, i64 %retprim138200); tail call
  ret void
}


define void @lam139202(i64 %env139203, i64 %cont138203, i64 %Jib$_37foldr) {
  %envptr141299 = inttoptr i64 %env139203 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141300 = getelementptr inbounds i64, i64* %envptr141299, i64 2              ; &envptr141299[2]
  %wSz$_37map1 = load i64, i64* %envptr141300, align 8                               ; load; *envptr141300
  %envptr141301 = inttoptr i64 %env139203 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141302 = getelementptr inbounds i64, i64* %envptr141301, i64 1              ; &envptr141301[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141302, align 8                             ; load; *envptr141302
  %arg138919 = add i64 0, 0                                                          ; quoted ()
  %cloptr141303 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr141305 = getelementptr inbounds i64, i64* %cloptr141303, i64 1                ; &eptr141305[1]
  %eptr141306 = getelementptr inbounds i64, i64* %cloptr141303, i64 2                ; &eptr141306[2]
  %eptr141307 = getelementptr inbounds i64, i64* %cloptr141303, i64 3                ; &eptr141307[3]
  store i64 %VVX$_37foldr1, i64* %eptr141305                                         ; *eptr141305 = %VVX$_37foldr1
  store i64 %Jib$_37foldr, i64* %eptr141306                                          ; *eptr141306 = %Jib$_37foldr
  store i64 %wSz$_37map1, i64* %eptr141307                                           ; *eptr141307 = %wSz$_37map1
  %eptr141304 = getelementptr inbounds i64, i64* %cloptr141303, i64 0                ; &cloptr141303[0]
  %f141308 = ptrtoint void(i64,i64)* @lam139199 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f141308, i64* %eptr141304                                               ; store fptr
  %arg138918 = ptrtoint i64* %cloptr141303 to i64                                    ; closure cast; i64* -> i64
  %cloptr141309 = inttoptr i64 %cont138203 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141309)                                       ; assert function application
  %i0ptr141310 = getelementptr inbounds i64, i64* %cloptr141309, i64 0               ; &cloptr141309[0]
  %f141312 = load i64, i64* %i0ptr141310, align 8                                    ; load; *i0ptr141310
  %fptr141311 = inttoptr i64 %f141312 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141311(i64 %cont138203, i64 %arg138919, i64 %arg138918); tail call
  ret void
}


define void @lam139199(i64 %env139200, i64 %G0Z$args138205) {
  %envptr141313 = inttoptr i64 %env139200 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141314 = getelementptr inbounds i64, i64* %envptr141313, i64 3              ; &envptr141313[3]
  %wSz$_37map1 = load i64, i64* %envptr141314, align 8                               ; load; *envptr141314
  %envptr141315 = inttoptr i64 %env139200 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141316 = getelementptr inbounds i64, i64* %envptr141315, i64 2              ; &envptr141315[2]
  %Jib$_37foldr = load i64, i64* %envptr141316, align 8                              ; load; *envptr141316
  %envptr141317 = inttoptr i64 %env139200 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141318 = getelementptr inbounds i64, i64* %envptr141317, i64 1              ; &envptr141317[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141318, align 8                             ; load; *envptr141318
  %cont138204 = call i64 @prim_car(i64 %G0Z$args138205)                              ; call prim_car
  %G0Z$args = call i64 @prim_cdr(i64 %G0Z$args138205)                                ; call prim_cdr
  %FF5$f = call i64 @prim_car(i64 %G0Z$args)                                         ; call prim_car
  %a137970 = call i64 @prim_cdr(i64 %G0Z$args)                                       ; call prim_cdr
  %retprim138224 = call i64 @prim_car(i64 %a137970)                                  ; call prim_car
  %cloptr141319 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr141321 = getelementptr inbounds i64, i64* %cloptr141319, i64 1                ; &eptr141321[1]
  %eptr141322 = getelementptr inbounds i64, i64* %cloptr141319, i64 2                ; &eptr141322[2]
  %eptr141323 = getelementptr inbounds i64, i64* %cloptr141319, i64 3                ; &eptr141323[3]
  %eptr141324 = getelementptr inbounds i64, i64* %cloptr141319, i64 4                ; &eptr141324[4]
  %eptr141325 = getelementptr inbounds i64, i64* %cloptr141319, i64 5                ; &eptr141325[5]
  %eptr141326 = getelementptr inbounds i64, i64* %cloptr141319, i64 6                ; &eptr141326[6]
  store i64 %VVX$_37foldr1, i64* %eptr141321                                         ; *eptr141321 = %VVX$_37foldr1
  store i64 %Jib$_37foldr, i64* %eptr141322                                          ; *eptr141322 = %Jib$_37foldr
  store i64 %FF5$f, i64* %eptr141323                                                 ; *eptr141323 = %FF5$f
  store i64 %cont138204, i64* %eptr141324                                            ; *eptr141324 = %cont138204
  store i64 %wSz$_37map1, i64* %eptr141325                                           ; *eptr141325 = %wSz$_37map1
  store i64 %G0Z$args, i64* %eptr141326                                              ; *eptr141326 = %G0Z$args
  %eptr141320 = getelementptr inbounds i64, i64* %cloptr141319, i64 0                ; &cloptr141319[0]
  %f141327 = ptrtoint void(i64,i64,i64)* @lam139197 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141327, i64* %eptr141320                                               ; store fptr
  %arg138928 = ptrtoint i64* %cloptr141319 to i64                                    ; closure cast; i64* -> i64
  %arg138927 = add i64 0, 0                                                          ; quoted ()
  %cloptr141328 = inttoptr i64 %arg138928 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141328)                                       ; assert function application
  %i0ptr141329 = getelementptr inbounds i64, i64* %cloptr141328, i64 0               ; &cloptr141328[0]
  %f141331 = load i64, i64* %i0ptr141329, align 8                                    ; load; *i0ptr141329
  %fptr141330 = inttoptr i64 %f141331 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141330(i64 %arg138928, i64 %arg138927, i64 %retprim138224); tail call
  ret void
}


define void @lam139197(i64 %env139198, i64 %_95138206, i64 %P4N$acc) {
  %envptr141332 = inttoptr i64 %env139198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141333 = getelementptr inbounds i64, i64* %envptr141332, i64 6              ; &envptr141332[6]
  %G0Z$args = load i64, i64* %envptr141333, align 8                                  ; load; *envptr141333
  %envptr141334 = inttoptr i64 %env139198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141335 = getelementptr inbounds i64, i64* %envptr141334, i64 5              ; &envptr141334[5]
  %wSz$_37map1 = load i64, i64* %envptr141335, align 8                               ; load; *envptr141335
  %envptr141336 = inttoptr i64 %env139198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141337 = getelementptr inbounds i64, i64* %envptr141336, i64 4              ; &envptr141336[4]
  %cont138204 = load i64, i64* %envptr141337, align 8                                ; load; *envptr141337
  %envptr141338 = inttoptr i64 %env139198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141339 = getelementptr inbounds i64, i64* %envptr141338, i64 3              ; &envptr141338[3]
  %FF5$f = load i64, i64* %envptr141339, align 8                                     ; load; *envptr141339
  %envptr141340 = inttoptr i64 %env139198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141341 = getelementptr inbounds i64, i64* %envptr141340, i64 2              ; &envptr141340[2]
  %Jib$_37foldr = load i64, i64* %envptr141341, align 8                              ; load; *envptr141341
  %envptr141342 = inttoptr i64 %env139198 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141343 = getelementptr inbounds i64, i64* %envptr141342, i64 1              ; &envptr141342[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141343, align 8                             ; load; *envptr141343
  %a137971 = call i64 @prim_cdr(i64 %G0Z$args)                                       ; call prim_cdr
  %retprim138223 = call i64 @prim_cdr(i64 %a137971)                                  ; call prim_cdr
  %cloptr141344 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr141346 = getelementptr inbounds i64, i64* %cloptr141344, i64 1                ; &eptr141346[1]
  %eptr141347 = getelementptr inbounds i64, i64* %cloptr141344, i64 2                ; &eptr141347[2]
  %eptr141348 = getelementptr inbounds i64, i64* %cloptr141344, i64 3                ; &eptr141348[3]
  %eptr141349 = getelementptr inbounds i64, i64* %cloptr141344, i64 4                ; &eptr141349[4]
  %eptr141350 = getelementptr inbounds i64, i64* %cloptr141344, i64 5                ; &eptr141350[5]
  %eptr141351 = getelementptr inbounds i64, i64* %cloptr141344, i64 6                ; &eptr141351[6]
  store i64 %VVX$_37foldr1, i64* %eptr141346                                         ; *eptr141346 = %VVX$_37foldr1
  store i64 %Jib$_37foldr, i64* %eptr141347                                          ; *eptr141347 = %Jib$_37foldr
  store i64 %FF5$f, i64* %eptr141348                                                 ; *eptr141348 = %FF5$f
  store i64 %cont138204, i64* %eptr141349                                            ; *eptr141349 = %cont138204
  store i64 %wSz$_37map1, i64* %eptr141350                                           ; *eptr141350 = %wSz$_37map1
  store i64 %P4N$acc, i64* %eptr141351                                               ; *eptr141351 = %P4N$acc
  %eptr141345 = getelementptr inbounds i64, i64* %cloptr141344, i64 0                ; &cloptr141344[0]
  %f141352 = ptrtoint void(i64,i64,i64)* @lam139195 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141352, i64* %eptr141345                                               ; store fptr
  %arg138933 = ptrtoint i64* %cloptr141344 to i64                                    ; closure cast; i64* -> i64
  %arg138932 = add i64 0, 0                                                          ; quoted ()
  %cloptr141353 = inttoptr i64 %arg138933 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141353)                                       ; assert function application
  %i0ptr141354 = getelementptr inbounds i64, i64* %cloptr141353, i64 0               ; &cloptr141353[0]
  %f141356 = load i64, i64* %i0ptr141354, align 8                                    ; load; *i0ptr141354
  %fptr141355 = inttoptr i64 %f141356 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141355(i64 %arg138933, i64 %arg138932, i64 %retprim138223); tail call
  ret void
}


define void @lam139195(i64 %env139196, i64 %_95138207, i64 %O7K$lsts) {
  %envptr141357 = inttoptr i64 %env139196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141358 = getelementptr inbounds i64, i64* %envptr141357, i64 6              ; &envptr141357[6]
  %P4N$acc = load i64, i64* %envptr141358, align 8                                   ; load; *envptr141358
  %envptr141359 = inttoptr i64 %env139196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141360 = getelementptr inbounds i64, i64* %envptr141359, i64 5              ; &envptr141359[5]
  %wSz$_37map1 = load i64, i64* %envptr141360, align 8                               ; load; *envptr141360
  %envptr141361 = inttoptr i64 %env139196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141362 = getelementptr inbounds i64, i64* %envptr141361, i64 4              ; &envptr141361[4]
  %cont138204 = load i64, i64* %envptr141362, align 8                                ; load; *envptr141362
  %envptr141363 = inttoptr i64 %env139196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141364 = getelementptr inbounds i64, i64* %envptr141363, i64 3              ; &envptr141363[3]
  %FF5$f = load i64, i64* %envptr141364, align 8                                     ; load; *envptr141364
  %envptr141365 = inttoptr i64 %env139196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141366 = getelementptr inbounds i64, i64* %envptr141365, i64 2              ; &envptr141365[2]
  %Jib$_37foldr = load i64, i64* %envptr141366, align 8                              ; load; *envptr141366
  %envptr141367 = inttoptr i64 %env139196 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141368 = getelementptr inbounds i64, i64* %envptr141367, i64 1              ; &envptr141367[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141368, align 8                             ; load; *envptr141368
  %cloptr141369 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr141371 = getelementptr inbounds i64, i64* %cloptr141369, i64 1                ; &eptr141371[1]
  %eptr141372 = getelementptr inbounds i64, i64* %cloptr141369, i64 2                ; &eptr141372[2]
  %eptr141373 = getelementptr inbounds i64, i64* %cloptr141369, i64 3                ; &eptr141373[3]
  %eptr141374 = getelementptr inbounds i64, i64* %cloptr141369, i64 4                ; &eptr141374[4]
  %eptr141375 = getelementptr inbounds i64, i64* %cloptr141369, i64 5                ; &eptr141375[5]
  %eptr141376 = getelementptr inbounds i64, i64* %cloptr141369, i64 6                ; &eptr141376[6]
  %eptr141377 = getelementptr inbounds i64, i64* %cloptr141369, i64 7                ; &eptr141377[7]
  store i64 %VVX$_37foldr1, i64* %eptr141371                                         ; *eptr141371 = %VVX$_37foldr1
  store i64 %Jib$_37foldr, i64* %eptr141372                                          ; *eptr141372 = %Jib$_37foldr
  store i64 %FF5$f, i64* %eptr141373                                                 ; *eptr141373 = %FF5$f
  store i64 %cont138204, i64* %eptr141374                                            ; *eptr141374 = %cont138204
  store i64 %O7K$lsts, i64* %eptr141375                                              ; *eptr141375 = %O7K$lsts
  store i64 %wSz$_37map1, i64* %eptr141376                                           ; *eptr141376 = %wSz$_37map1
  store i64 %P4N$acc, i64* %eptr141377                                               ; *eptr141377 = %P4N$acc
  %eptr141370 = getelementptr inbounds i64, i64* %cloptr141369, i64 0                ; &cloptr141369[0]
  %f141378 = ptrtoint void(i64,i64,i64)* @lam139193 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141378, i64* %eptr141370                                               ; store fptr
  %arg138937 = ptrtoint i64* %cloptr141369 to i64                                    ; closure cast; i64* -> i64
  %cloptr141379 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141380 = getelementptr inbounds i64, i64* %cloptr141379, i64 0                ; &cloptr141379[0]
  %f141381 = ptrtoint void(i64,i64,i64,i64)* @lam139172 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f141381, i64* %eptr141380                                               ; store fptr
  %arg138936 = ptrtoint i64* %cloptr141379 to i64                                    ; closure cast; i64* -> i64
  %arg138935 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr141382 = inttoptr i64 %VVX$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141382)                                       ; assert function application
  %i0ptr141383 = getelementptr inbounds i64, i64* %cloptr141382, i64 0               ; &cloptr141382[0]
  %f141385 = load i64, i64* %i0ptr141383, align 8                                    ; load; *i0ptr141383
  %fptr141384 = inttoptr i64 %f141385 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141384(i64 %VVX$_37foldr1, i64 %arg138937, i64 %arg138936, i64 %arg138935, i64 %O7K$lsts); tail call
  ret void
}


define void @lam139193(i64 %env139194, i64 %_95138208, i64 %a137972) {
  %envptr141386 = inttoptr i64 %env139194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141387 = getelementptr inbounds i64, i64* %envptr141386, i64 7              ; &envptr141386[7]
  %P4N$acc = load i64, i64* %envptr141387, align 8                                   ; load; *envptr141387
  %envptr141388 = inttoptr i64 %env139194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141389 = getelementptr inbounds i64, i64* %envptr141388, i64 6              ; &envptr141388[6]
  %wSz$_37map1 = load i64, i64* %envptr141389, align 8                               ; load; *envptr141389
  %envptr141390 = inttoptr i64 %env139194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141391 = getelementptr inbounds i64, i64* %envptr141390, i64 5              ; &envptr141390[5]
  %O7K$lsts = load i64, i64* %envptr141391, align 8                                  ; load; *envptr141391
  %envptr141392 = inttoptr i64 %env139194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141393 = getelementptr inbounds i64, i64* %envptr141392, i64 4              ; &envptr141392[4]
  %cont138204 = load i64, i64* %envptr141393, align 8                                ; load; *envptr141393
  %envptr141394 = inttoptr i64 %env139194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141395 = getelementptr inbounds i64, i64* %envptr141394, i64 3              ; &envptr141394[3]
  %FF5$f = load i64, i64* %envptr141395, align 8                                     ; load; *envptr141395
  %envptr141396 = inttoptr i64 %env139194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141397 = getelementptr inbounds i64, i64* %envptr141396, i64 2              ; &envptr141396[2]
  %Jib$_37foldr = load i64, i64* %envptr141397, align 8                              ; load; *envptr141397
  %envptr141398 = inttoptr i64 %env139194 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141399 = getelementptr inbounds i64, i64* %envptr141398, i64 1              ; &envptr141398[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141399, align 8                             ; load; *envptr141399
  %cmp141400 = icmp eq i64 %a137972, 15                                              ; false?
  br i1 %cmp141400, label %else141402, label %then141401                             ; if

then141401:
  %arg138940 = add i64 0, 0                                                          ; quoted ()
  %cloptr141403 = inttoptr i64 %cont138204 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141403)                                       ; assert function application
  %i0ptr141404 = getelementptr inbounds i64, i64* %cloptr141403, i64 0               ; &cloptr141403[0]
  %f141406 = load i64, i64* %i0ptr141404, align 8                                    ; load; *i0ptr141404
  %fptr141405 = inttoptr i64 %f141406 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141405(i64 %cont138204, i64 %arg138940, i64 %P4N$acc); tail call
  ret void

else141402:
  %cloptr141407 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr141409 = getelementptr inbounds i64, i64* %cloptr141407, i64 1                ; &eptr141409[1]
  %eptr141410 = getelementptr inbounds i64, i64* %cloptr141407, i64 2                ; &eptr141410[2]
  %eptr141411 = getelementptr inbounds i64, i64* %cloptr141407, i64 3                ; &eptr141411[3]
  %eptr141412 = getelementptr inbounds i64, i64* %cloptr141407, i64 4                ; &eptr141412[4]
  %eptr141413 = getelementptr inbounds i64, i64* %cloptr141407, i64 5                ; &eptr141413[5]
  %eptr141414 = getelementptr inbounds i64, i64* %cloptr141407, i64 6                ; &eptr141414[6]
  %eptr141415 = getelementptr inbounds i64, i64* %cloptr141407, i64 7                ; &eptr141415[7]
  store i64 %VVX$_37foldr1, i64* %eptr141409                                         ; *eptr141409 = %VVX$_37foldr1
  store i64 %Jib$_37foldr, i64* %eptr141410                                          ; *eptr141410 = %Jib$_37foldr
  store i64 %FF5$f, i64* %eptr141411                                                 ; *eptr141411 = %FF5$f
  store i64 %cont138204, i64* %eptr141412                                            ; *eptr141412 = %cont138204
  store i64 %O7K$lsts, i64* %eptr141413                                              ; *eptr141413 = %O7K$lsts
  store i64 %wSz$_37map1, i64* %eptr141414                                           ; *eptr141414 = %wSz$_37map1
  store i64 %P4N$acc, i64* %eptr141415                                               ; *eptr141415 = %P4N$acc
  %eptr141408 = getelementptr inbounds i64, i64* %cloptr141407, i64 0                ; &cloptr141407[0]
  %f141416 = ptrtoint void(i64,i64,i64)* @lam139191 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141416, i64* %eptr141408                                               ; store fptr
  %arg138944 = ptrtoint i64* %cloptr141407 to i64                                    ; closure cast; i64* -> i64
  %cloptr141417 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141418 = getelementptr inbounds i64, i64* %cloptr141417, i64 0                ; &cloptr141417[0]
  %f141419 = ptrtoint void(i64,i64,i64)* @lam139176 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141419, i64* %eptr141418                                               ; store fptr
  %arg138943 = ptrtoint i64* %cloptr141417 to i64                                    ; closure cast; i64* -> i64
  %cloptr141420 = inttoptr i64 %wSz$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141420)                                       ; assert function application
  %i0ptr141421 = getelementptr inbounds i64, i64* %cloptr141420, i64 0               ; &cloptr141420[0]
  %f141423 = load i64, i64* %i0ptr141421, align 8                                    ; load; *i0ptr141421
  %fptr141422 = inttoptr i64 %f141423 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141422(i64 %wSz$_37map1, i64 %arg138944, i64 %arg138943, i64 %O7K$lsts); tail call
  ret void
}


define void @lam139191(i64 %env139192, i64 %_95138209, i64 %qDd$lsts_43) {
  %envptr141424 = inttoptr i64 %env139192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141425 = getelementptr inbounds i64, i64* %envptr141424, i64 7              ; &envptr141424[7]
  %P4N$acc = load i64, i64* %envptr141425, align 8                                   ; load; *envptr141425
  %envptr141426 = inttoptr i64 %env139192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141427 = getelementptr inbounds i64, i64* %envptr141426, i64 6              ; &envptr141426[6]
  %wSz$_37map1 = load i64, i64* %envptr141427, align 8                               ; load; *envptr141427
  %envptr141428 = inttoptr i64 %env139192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141429 = getelementptr inbounds i64, i64* %envptr141428, i64 5              ; &envptr141428[5]
  %O7K$lsts = load i64, i64* %envptr141429, align 8                                  ; load; *envptr141429
  %envptr141430 = inttoptr i64 %env139192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141431 = getelementptr inbounds i64, i64* %envptr141430, i64 4              ; &envptr141430[4]
  %cont138204 = load i64, i64* %envptr141431, align 8                                ; load; *envptr141431
  %envptr141432 = inttoptr i64 %env139192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141433 = getelementptr inbounds i64, i64* %envptr141432, i64 3              ; &envptr141432[3]
  %FF5$f = load i64, i64* %envptr141433, align 8                                     ; load; *envptr141433
  %envptr141434 = inttoptr i64 %env139192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141435 = getelementptr inbounds i64, i64* %envptr141434, i64 2              ; &envptr141434[2]
  %Jib$_37foldr = load i64, i64* %envptr141435, align 8                              ; load; *envptr141435
  %envptr141436 = inttoptr i64 %env139192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141437 = getelementptr inbounds i64, i64* %envptr141436, i64 1              ; &envptr141436[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141437, align 8                             ; load; *envptr141437
  %cloptr141438 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr141440 = getelementptr inbounds i64, i64* %cloptr141438, i64 1                ; &eptr141440[1]
  %eptr141441 = getelementptr inbounds i64, i64* %cloptr141438, i64 2                ; &eptr141441[2]
  %eptr141442 = getelementptr inbounds i64, i64* %cloptr141438, i64 3                ; &eptr141442[3]
  %eptr141443 = getelementptr inbounds i64, i64* %cloptr141438, i64 4                ; &eptr141443[4]
  %eptr141444 = getelementptr inbounds i64, i64* %cloptr141438, i64 5                ; &eptr141444[5]
  %eptr141445 = getelementptr inbounds i64, i64* %cloptr141438, i64 6                ; &eptr141445[6]
  store i64 %VVX$_37foldr1, i64* %eptr141440                                         ; *eptr141440 = %VVX$_37foldr1
  store i64 %Jib$_37foldr, i64* %eptr141441                                          ; *eptr141441 = %Jib$_37foldr
  store i64 %FF5$f, i64* %eptr141442                                                 ; *eptr141442 = %FF5$f
  store i64 %qDd$lsts_43, i64* %eptr141443                                           ; *eptr141443 = %qDd$lsts_43
  store i64 %cont138204, i64* %eptr141444                                            ; *eptr141444 = %cont138204
  store i64 %P4N$acc, i64* %eptr141445                                               ; *eptr141445 = %P4N$acc
  %eptr141439 = getelementptr inbounds i64, i64* %cloptr141438, i64 0                ; &cloptr141438[0]
  %f141446 = ptrtoint void(i64,i64,i64)* @lam139189 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141446, i64* %eptr141439                                               ; store fptr
  %arg138948 = ptrtoint i64* %cloptr141438 to i64                                    ; closure cast; i64* -> i64
  %cloptr141447 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141448 = getelementptr inbounds i64, i64* %cloptr141447, i64 0                ; &cloptr141447[0]
  %f141449 = ptrtoint void(i64,i64,i64)* @lam139179 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141449, i64* %eptr141448                                               ; store fptr
  %arg138947 = ptrtoint i64* %cloptr141447 to i64                                    ; closure cast; i64* -> i64
  %cloptr141450 = inttoptr i64 %wSz$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141450)                                       ; assert function application
  %i0ptr141451 = getelementptr inbounds i64, i64* %cloptr141450, i64 0               ; &cloptr141450[0]
  %f141453 = load i64, i64* %i0ptr141451, align 8                                    ; load; *i0ptr141451
  %fptr141452 = inttoptr i64 %f141453 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141452(i64 %wSz$_37map1, i64 %arg138948, i64 %arg138947, i64 %O7K$lsts); tail call
  ret void
}


define void @lam139189(i64 %env139190, i64 %_95138210, i64 %lTt$vs) {
  %envptr141454 = inttoptr i64 %env139190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141455 = getelementptr inbounds i64, i64* %envptr141454, i64 6              ; &envptr141454[6]
  %P4N$acc = load i64, i64* %envptr141455, align 8                                   ; load; *envptr141455
  %envptr141456 = inttoptr i64 %env139190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141457 = getelementptr inbounds i64, i64* %envptr141456, i64 5              ; &envptr141456[5]
  %cont138204 = load i64, i64* %envptr141457, align 8                                ; load; *envptr141457
  %envptr141458 = inttoptr i64 %env139190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141459 = getelementptr inbounds i64, i64* %envptr141458, i64 4              ; &envptr141458[4]
  %qDd$lsts_43 = load i64, i64* %envptr141459, align 8                               ; load; *envptr141459
  %envptr141460 = inttoptr i64 %env139190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141461 = getelementptr inbounds i64, i64* %envptr141460, i64 3              ; &envptr141460[3]
  %FF5$f = load i64, i64* %envptr141461, align 8                                     ; load; *envptr141461
  %envptr141462 = inttoptr i64 %env139190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141463 = getelementptr inbounds i64, i64* %envptr141462, i64 2              ; &envptr141462[2]
  %Jib$_37foldr = load i64, i64* %envptr141463, align 8                              ; load; *envptr141463
  %envptr141464 = inttoptr i64 %env139190 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141465 = getelementptr inbounds i64, i64* %envptr141464, i64 1              ; &envptr141464[1]
  %VVX$_37foldr1 = load i64, i64* %envptr141465, align 8                             ; load; *envptr141465
  %a137973 = call i64 @prim_cons(i64 %P4N$acc, i64 %qDd$lsts_43)                     ; call prim_cons
  %a137974 = call i64 @prim_cons(i64 %FF5$f, i64 %a137973)                           ; call prim_cons
  %cloptr141466 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr141468 = getelementptr inbounds i64, i64* %cloptr141466, i64 1                ; &eptr141468[1]
  %eptr141469 = getelementptr inbounds i64, i64* %cloptr141466, i64 2                ; &eptr141469[2]
  %eptr141470 = getelementptr inbounds i64, i64* %cloptr141466, i64 3                ; &eptr141470[3]
  %eptr141471 = getelementptr inbounds i64, i64* %cloptr141466, i64 4                ; &eptr141471[4]
  store i64 %lTt$vs, i64* %eptr141468                                                ; *eptr141468 = %lTt$vs
  store i64 %VVX$_37foldr1, i64* %eptr141469                                         ; *eptr141469 = %VVX$_37foldr1
  store i64 %FF5$f, i64* %eptr141470                                                 ; *eptr141470 = %FF5$f
  store i64 %cont138204, i64* %eptr141471                                            ; *eptr141471 = %cont138204
  %eptr141467 = getelementptr inbounds i64, i64* %cloptr141466, i64 0                ; &cloptr141466[0]
  %f141472 = ptrtoint void(i64,i64,i64)* @lam139187 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141472, i64* %eptr141467                                               ; store fptr
  %arg138955 = ptrtoint i64* %cloptr141466 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst138216 = call i64 @prim_cons(i64 %arg138955, i64 %a137974)               ; call prim_cons
  %cloptr141473 = inttoptr i64 %Jib$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141473)                                       ; assert function application
  %i0ptr141474 = getelementptr inbounds i64, i64* %cloptr141473, i64 0               ; &cloptr141473[0]
  %f141476 = load i64, i64* %i0ptr141474, align 8                                    ; load; *i0ptr141474
  %fptr141475 = inttoptr i64 %f141476 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141475(i64 %Jib$_37foldr, i64 %cps_45lst138216)     ; tail call
  ret void
}


define void @lam139187(i64 %env139188, i64 %_95138211, i64 %a137975) {
  %envptr141477 = inttoptr i64 %env139188 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141478 = getelementptr inbounds i64, i64* %envptr141477, i64 4              ; &envptr141477[4]
  %cont138204 = load i64, i64* %envptr141478, align 8                                ; load; *envptr141478
  %envptr141479 = inttoptr i64 %env139188 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141480 = getelementptr inbounds i64, i64* %envptr141479, i64 3              ; &envptr141479[3]
  %FF5$f = load i64, i64* %envptr141480, align 8                                     ; load; *envptr141480
  %envptr141481 = inttoptr i64 %env139188 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141482 = getelementptr inbounds i64, i64* %envptr141481, i64 2              ; &envptr141481[2]
  %VVX$_37foldr1 = load i64, i64* %envptr141482, align 8                             ; load; *envptr141482
  %envptr141483 = inttoptr i64 %env139188 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141484 = getelementptr inbounds i64, i64* %envptr141483, i64 1              ; &envptr141483[1]
  %lTt$vs = load i64, i64* %envptr141484, align 8                                    ; load; *envptr141484
  %arg138956 = add i64 0, 0                                                          ; quoted ()
  %a137976 = call i64 @prim_cons(i64 %a137975, i64 %arg138956)                       ; call prim_cons
  %cloptr141485 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr141487 = getelementptr inbounds i64, i64* %cloptr141485, i64 1                ; &eptr141487[1]
  %eptr141488 = getelementptr inbounds i64, i64* %cloptr141485, i64 2                ; &eptr141488[2]
  store i64 %FF5$f, i64* %eptr141487                                                 ; *eptr141487 = %FF5$f
  store i64 %cont138204, i64* %eptr141488                                            ; *eptr141488 = %cont138204
  %eptr141486 = getelementptr inbounds i64, i64* %cloptr141485, i64 0                ; &cloptr141485[0]
  %f141489 = ptrtoint void(i64,i64,i64)* @lam139184 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141489, i64* %eptr141486                                               ; store fptr
  %arg138961 = ptrtoint i64* %cloptr141485 to i64                                    ; closure cast; i64* -> i64
  %cloptr141490 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr141491 = getelementptr inbounds i64, i64* %cloptr141490, i64 0                ; &cloptr141490[0]
  %f141492 = ptrtoint void(i64,i64,i64,i64)* @lam139182 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f141492, i64* %eptr141491                                               ; store fptr
  %arg138960 = ptrtoint i64* %cloptr141490 to i64                                    ; closure cast; i64* -> i64
  %cloptr141493 = inttoptr i64 %VVX$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141493)                                       ; assert function application
  %i0ptr141494 = getelementptr inbounds i64, i64* %cloptr141493, i64 0               ; &cloptr141493[0]
  %f141496 = load i64, i64* %i0ptr141494, align 8                                    ; load; *i0ptr141494
  %fptr141495 = inttoptr i64 %f141496 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141495(i64 %VVX$_37foldr1, i64 %arg138961, i64 %arg138960, i64 %a137976, i64 %lTt$vs); tail call
  ret void
}


define void @lam139184(i64 %env139185, i64 %_95138212, i64 %a137977) {
  %envptr141497 = inttoptr i64 %env139185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141498 = getelementptr inbounds i64, i64* %envptr141497, i64 2              ; &envptr141497[2]
  %cont138204 = load i64, i64* %envptr141498, align 8                                ; load; *envptr141498
  %envptr141499 = inttoptr i64 %env139185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141500 = getelementptr inbounds i64, i64* %envptr141499, i64 1              ; &envptr141499[1]
  %FF5$f = load i64, i64* %envptr141500, align 8                                     ; load; *envptr141500
  %cps_45lst138213 = call i64 @prim_cons(i64 %cont138204, i64 %a137977)              ; call prim_cons
  %cloptr141501 = inttoptr i64 %FF5$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141501)                                       ; assert function application
  %i0ptr141502 = getelementptr inbounds i64, i64* %cloptr141501, i64 0               ; &cloptr141501[0]
  %f141504 = load i64, i64* %i0ptr141502, align 8                                    ; load; *i0ptr141502
  %fptr141503 = inttoptr i64 %f141504 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141503(i64 %FF5$f, i64 %cps_45lst138213)            ; tail call
  ret void
}


define void @lam139182(i64 %env139183, i64 %cont138214, i64 %ZcP$a, i64 %e4X$b) {
  %retprim138215 = call i64 @prim_cons(i64 %ZcP$a, i64 %e4X$b)                       ; call prim_cons
  %arg138968 = add i64 0, 0                                                          ; quoted ()
  %cloptr141505 = inttoptr i64 %cont138214 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141505)                                       ; assert function application
  %i0ptr141506 = getelementptr inbounds i64, i64* %cloptr141505, i64 0               ; &cloptr141505[0]
  %f141508 = load i64, i64* %i0ptr141506, align 8                                    ; load; *i0ptr141506
  %fptr141507 = inttoptr i64 %f141508 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141507(i64 %cont138214, i64 %arg138968, i64 %retprim138215); tail call
  ret void
}


define void @lam139179(i64 %env139180, i64 %cont138217, i64 %s6z$x) {
  %retprim138218 = call i64 @prim_car(i64 %s6z$x)                                    ; call prim_car
  %arg138972 = add i64 0, 0                                                          ; quoted ()
  %cloptr141509 = inttoptr i64 %cont138217 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141509)                                       ; assert function application
  %i0ptr141510 = getelementptr inbounds i64, i64* %cloptr141509, i64 0               ; &cloptr141509[0]
  %f141512 = load i64, i64* %i0ptr141510, align 8                                    ; load; *i0ptr141510
  %fptr141511 = inttoptr i64 %f141512 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141511(i64 %cont138217, i64 %arg138972, i64 %retprim138218); tail call
  ret void
}


define void @lam139176(i64 %env139177, i64 %cont138219, i64 %G03$x) {
  %retprim138220 = call i64 @prim_cdr(i64 %G03$x)                                    ; call prim_cdr
  %arg138976 = add i64 0, 0                                                          ; quoted ()
  %cloptr141513 = inttoptr i64 %cont138219 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141513)                                       ; assert function application
  %i0ptr141514 = getelementptr inbounds i64, i64* %cloptr141513, i64 0               ; &cloptr141513[0]
  %f141516 = load i64, i64* %i0ptr141514, align 8                                    ; load; *i0ptr141514
  %fptr141515 = inttoptr i64 %f141516 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141515(i64 %cont138219, i64 %arg138976, i64 %retprim138220); tail call
  ret void
}


define void @lam139172(i64 %env139173, i64 %cont138221, i64 %Yxq$lst, i64 %fVM$b) {
  %cmp141517 = icmp eq i64 %fVM$b, 15                                                ; false?
  br i1 %cmp141517, label %else141519, label %then141518                             ; if

then141518:
  %arg138979 = add i64 0, 0                                                          ; quoted ()
  %cloptr141520 = inttoptr i64 %cont138221 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141520)                                       ; assert function application
  %i0ptr141521 = getelementptr inbounds i64, i64* %cloptr141520, i64 0               ; &cloptr141520[0]
  %f141523 = load i64, i64* %i0ptr141521, align 8                                    ; load; *i0ptr141521
  %fptr141522 = inttoptr i64 %f141523 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141522(i64 %cont138221, i64 %arg138979, i64 %fVM$b) ; tail call
  ret void

else141519:
  %retprim138222 = call i64 @prim_null_63(i64 %Yxq$lst)                              ; call prim_null_63
  %arg138983 = add i64 0, 0                                                          ; quoted ()
  %cloptr141524 = inttoptr i64 %cont138221 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141524)                                       ; assert function application
  %i0ptr141525 = getelementptr inbounds i64, i64* %cloptr141524, i64 0               ; &cloptr141524[0]
  %f141527 = load i64, i64* %i0ptr141525, align 8                                    ; load; *i0ptr141525
  %fptr141526 = inttoptr i64 %f141527 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141526(i64 %cont138221, i64 %arg138983, i64 %retprim138222); tail call
  ret void
}


define void @lam139165(i64 %env139166, i64 %cont138225, i64 %ZiC$_37foldl1) {
  %arg138986 = add i64 0, 0                                                          ; quoted ()
  %cloptr141528 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr141530 = getelementptr inbounds i64, i64* %cloptr141528, i64 1                ; &eptr141530[1]
  store i64 %ZiC$_37foldl1, i64* %eptr141530                                         ; *eptr141530 = %ZiC$_37foldl1
  %eptr141529 = getelementptr inbounds i64, i64* %cloptr141528, i64 0                ; &cloptr141528[0]
  %f141531 = ptrtoint void(i64,i64,i64,i64,i64)* @lam139162 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f141531, i64* %eptr141529                                               ; store fptr
  %arg138985 = ptrtoint i64* %cloptr141528 to i64                                    ; closure cast; i64* -> i64
  %cloptr141532 = inttoptr i64 %cont138225 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141532)                                       ; assert function application
  %i0ptr141533 = getelementptr inbounds i64, i64* %cloptr141532, i64 0               ; &cloptr141532[0]
  %f141535 = load i64, i64* %i0ptr141533, align 8                                    ; load; *i0ptr141533
  %fptr141534 = inttoptr i64 %f141535 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141534(i64 %cont138225, i64 %arg138986, i64 %arg138985); tail call
  ret void
}


define void @lam139162(i64 %env139163, i64 %cont138226, i64 %CQ3$f, i64 %vJU$acc, i64 %cKG$lst) {
  %envptr141536 = inttoptr i64 %env139163 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141537 = getelementptr inbounds i64, i64* %envptr141536, i64 1              ; &envptr141536[1]
  %ZiC$_37foldl1 = load i64, i64* %envptr141537, align 8                             ; load; *envptr141537
  %a137964 = call i64 @prim_null_63(i64 %cKG$lst)                                    ; call prim_null_63
  %cmp141538 = icmp eq i64 %a137964, 15                                              ; false?
  br i1 %cmp141538, label %else141540, label %then141539                             ; if

then141539:
  %arg138990 = add i64 0, 0                                                          ; quoted ()
  %cloptr141541 = inttoptr i64 %cont138226 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141541)                                       ; assert function application
  %i0ptr141542 = getelementptr inbounds i64, i64* %cloptr141541, i64 0               ; &cloptr141541[0]
  %f141544 = load i64, i64* %i0ptr141542, align 8                                    ; load; *i0ptr141542
  %fptr141543 = inttoptr i64 %f141544 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141543(i64 %cont138226, i64 %arg138990, i64 %vJU$acc); tail call
  ret void

else141540:
  %a137965 = call i64 @prim_car(i64 %cKG$lst)                                        ; call prim_car
  %cloptr141545 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr141547 = getelementptr inbounds i64, i64* %cloptr141545, i64 1                ; &eptr141547[1]
  %eptr141548 = getelementptr inbounds i64, i64* %cloptr141545, i64 2                ; &eptr141548[2]
  %eptr141549 = getelementptr inbounds i64, i64* %cloptr141545, i64 3                ; &eptr141549[3]
  %eptr141550 = getelementptr inbounds i64, i64* %cloptr141545, i64 4                ; &eptr141550[4]
  store i64 %cont138226, i64* %eptr141547                                            ; *eptr141547 = %cont138226
  store i64 %ZiC$_37foldl1, i64* %eptr141548                                         ; *eptr141548 = %ZiC$_37foldl1
  store i64 %CQ3$f, i64* %eptr141549                                                 ; *eptr141549 = %CQ3$f
  store i64 %cKG$lst, i64* %eptr141550                                               ; *eptr141550 = %cKG$lst
  %eptr141546 = getelementptr inbounds i64, i64* %cloptr141545, i64 0                ; &cloptr141545[0]
  %f141551 = ptrtoint void(i64,i64,i64)* @lam139160 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141551, i64* %eptr141546                                               ; store fptr
  %arg138995 = ptrtoint i64* %cloptr141545 to i64                                    ; closure cast; i64* -> i64
  %cloptr141552 = inttoptr i64 %CQ3$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141552)                                       ; assert function application
  %i0ptr141553 = getelementptr inbounds i64, i64* %cloptr141552, i64 0               ; &cloptr141552[0]
  %f141555 = load i64, i64* %i0ptr141553, align 8                                    ; load; *i0ptr141553
  %fptr141554 = inttoptr i64 %f141555 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141554(i64 %CQ3$f, i64 %arg138995, i64 %a137965, i64 %vJU$acc); tail call
  ret void
}


define void @lam139160(i64 %env139161, i64 %_95138227, i64 %a137966) {
  %envptr141556 = inttoptr i64 %env139161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141557 = getelementptr inbounds i64, i64* %envptr141556, i64 4              ; &envptr141556[4]
  %cKG$lst = load i64, i64* %envptr141557, align 8                                   ; load; *envptr141557
  %envptr141558 = inttoptr i64 %env139161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141559 = getelementptr inbounds i64, i64* %envptr141558, i64 3              ; &envptr141558[3]
  %CQ3$f = load i64, i64* %envptr141559, align 8                                     ; load; *envptr141559
  %envptr141560 = inttoptr i64 %env139161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141561 = getelementptr inbounds i64, i64* %envptr141560, i64 2              ; &envptr141560[2]
  %ZiC$_37foldl1 = load i64, i64* %envptr141561, align 8                             ; load; *envptr141561
  %envptr141562 = inttoptr i64 %env139161 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141563 = getelementptr inbounds i64, i64* %envptr141562, i64 1              ; &envptr141562[1]
  %cont138226 = load i64, i64* %envptr141563, align 8                                ; load; *envptr141563
  %a137967 = call i64 @prim_cdr(i64 %cKG$lst)                                        ; call prim_cdr
  %cloptr141564 = inttoptr i64 %ZiC$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141564)                                       ; assert function application
  %i0ptr141565 = getelementptr inbounds i64, i64* %cloptr141564, i64 0               ; &cloptr141564[0]
  %f141567 = load i64, i64* %i0ptr141565, align 8                                    ; load; *i0ptr141565
  %fptr141566 = inttoptr i64 %f141567 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141566(i64 %ZiC$_37foldl1, i64 %cont138226, i64 %CQ3$f, i64 %a137966, i64 %a137967); tail call
  ret void
}


define void @lam139157(i64 %env139158, i64 %cont138228, i64 %PCk$_37length) {
  %arg139004 = add i64 0, 0                                                          ; quoted ()
  %cloptr141568 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr141570 = getelementptr inbounds i64, i64* %cloptr141568, i64 1                ; &eptr141570[1]
  store i64 %PCk$_37length, i64* %eptr141570                                         ; *eptr141570 = %PCk$_37length
  %eptr141569 = getelementptr inbounds i64, i64* %cloptr141568, i64 0                ; &cloptr141568[0]
  %f141571 = ptrtoint void(i64,i64,i64)* @lam139154 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141571, i64* %eptr141569                                               ; store fptr
  %arg139003 = ptrtoint i64* %cloptr141568 to i64                                    ; closure cast; i64* -> i64
  %cloptr141572 = inttoptr i64 %cont138228 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141572)                                       ; assert function application
  %i0ptr141573 = getelementptr inbounds i64, i64* %cloptr141572, i64 0               ; &cloptr141572[0]
  %f141575 = load i64, i64* %i0ptr141573, align 8                                    ; load; *i0ptr141573
  %fptr141574 = inttoptr i64 %f141575 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141574(i64 %cont138228, i64 %arg139004, i64 %arg139003); tail call
  ret void
}


define void @lam139154(i64 %env139155, i64 %cont138229, i64 %L4f$lst) {
  %envptr141576 = inttoptr i64 %env139155 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141577 = getelementptr inbounds i64, i64* %envptr141576, i64 1              ; &envptr141576[1]
  %PCk$_37length = load i64, i64* %envptr141577, align 8                             ; load; *envptr141577
  %a137961 = call i64 @prim_null_63(i64 %L4f$lst)                                    ; call prim_null_63
  %cmp141578 = icmp eq i64 %a137961, 15                                              ; false?
  br i1 %cmp141578, label %else141580, label %then141579                             ; if

then141579:
  %arg139008 = add i64 0, 0                                                          ; quoted ()
  %arg139007 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr141581 = inttoptr i64 %cont138229 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141581)                                       ; assert function application
  %i0ptr141582 = getelementptr inbounds i64, i64* %cloptr141581, i64 0               ; &cloptr141581[0]
  %f141584 = load i64, i64* %i0ptr141582, align 8                                    ; load; *i0ptr141582
  %fptr141583 = inttoptr i64 %f141584 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141583(i64 %cont138229, i64 %arg139008, i64 %arg139007); tail call
  ret void

else141580:
  %a137962 = call i64 @prim_cdr(i64 %L4f$lst)                                        ; call prim_cdr
  %cloptr141585 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr141587 = getelementptr inbounds i64, i64* %cloptr141585, i64 1                ; &eptr141587[1]
  store i64 %cont138229, i64* %eptr141587                                            ; *eptr141587 = %cont138229
  %eptr141586 = getelementptr inbounds i64, i64* %cloptr141585, i64 0                ; &cloptr141585[0]
  %f141588 = ptrtoint void(i64,i64,i64)* @lam139152 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141588, i64* %eptr141586                                               ; store fptr
  %arg139012 = ptrtoint i64* %cloptr141585 to i64                                    ; closure cast; i64* -> i64
  %cloptr141589 = inttoptr i64 %PCk$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141589)                                       ; assert function application
  %i0ptr141590 = getelementptr inbounds i64, i64* %cloptr141589, i64 0               ; &cloptr141589[0]
  %f141592 = load i64, i64* %i0ptr141590, align 8                                    ; load; *i0ptr141590
  %fptr141591 = inttoptr i64 %f141592 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141591(i64 %PCk$_37length, i64 %arg139012, i64 %a137962); tail call
  ret void
}


define void @lam139152(i64 %env139153, i64 %_95138230, i64 %a137963) {
  %envptr141593 = inttoptr i64 %env139153 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141594 = getelementptr inbounds i64, i64* %envptr141593, i64 1              ; &envptr141593[1]
  %cont138229 = load i64, i64* %envptr141594, align 8                                ; load; *envptr141594
  %arg139015 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim138231 = call i64 @prim__43(i64 %arg139015, i64 %a137963)                  ; call prim__43
  %arg139017 = add i64 0, 0                                                          ; quoted ()
  %cloptr141595 = inttoptr i64 %cont138229 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141595)                                       ; assert function application
  %i0ptr141596 = getelementptr inbounds i64, i64* %cloptr141595, i64 0               ; &cloptr141595[0]
  %f141598 = load i64, i64* %i0ptr141596, align 8                                    ; load; *i0ptr141596
  %fptr141597 = inttoptr i64 %f141598 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141597(i64 %cont138229, i64 %arg139017, i64 %retprim138231); tail call
  ret void
}


define void @lam139146(i64 %env139147, i64 %cont138232, i64 %d4k$_37take) {
  %arg139020 = add i64 0, 0                                                          ; quoted ()
  %cloptr141599 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr141601 = getelementptr inbounds i64, i64* %cloptr141599, i64 1                ; &eptr141601[1]
  store i64 %d4k$_37take, i64* %eptr141601                                           ; *eptr141601 = %d4k$_37take
  %eptr141600 = getelementptr inbounds i64, i64* %cloptr141599, i64 0                ; &cloptr141599[0]
  %f141602 = ptrtoint void(i64,i64,i64,i64)* @lam139143 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f141602, i64* %eptr141600                                               ; store fptr
  %arg139019 = ptrtoint i64* %cloptr141599 to i64                                    ; closure cast; i64* -> i64
  %cloptr141603 = inttoptr i64 %cont138232 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141603)                                       ; assert function application
  %i0ptr141604 = getelementptr inbounds i64, i64* %cloptr141603, i64 0               ; &cloptr141603[0]
  %f141606 = load i64, i64* %i0ptr141604, align 8                                    ; load; *i0ptr141604
  %fptr141605 = inttoptr i64 %f141606 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141605(i64 %cont138232, i64 %arg139020, i64 %arg139019); tail call
  ret void
}


define void @lam139143(i64 %env139144, i64 %cont138233, i64 %pvZ$lst, i64 %DFR$n) {
  %envptr141607 = inttoptr i64 %env139144 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141608 = getelementptr inbounds i64, i64* %envptr141607, i64 1              ; &envptr141607[1]
  %d4k$_37take = load i64, i64* %envptr141608, align 8                               ; load; *envptr141608
  %arg139022 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a137955 = call i64 @prim__61(i64 %DFR$n, i64 %arg139022)                          ; call prim__61
  %cmp141609 = icmp eq i64 %a137955, 15                                              ; false?
  br i1 %cmp141609, label %else141611, label %then141610                             ; if

then141610:
  %arg139025 = add i64 0, 0                                                          ; quoted ()
  %arg139024 = add i64 0, 0                                                          ; quoted ()
  %cloptr141612 = inttoptr i64 %cont138233 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141612)                                       ; assert function application
  %i0ptr141613 = getelementptr inbounds i64, i64* %cloptr141612, i64 0               ; &cloptr141612[0]
  %f141615 = load i64, i64* %i0ptr141613, align 8                                    ; load; *i0ptr141613
  %fptr141614 = inttoptr i64 %f141615 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141614(i64 %cont138233, i64 %arg139025, i64 %arg139024); tail call
  ret void

else141611:
  %a137956 = call i64 @prim_null_63(i64 %pvZ$lst)                                    ; call prim_null_63
  %cmp141616 = icmp eq i64 %a137956, 15                                              ; false?
  br i1 %cmp141616, label %else141618, label %then141617                             ; if

then141617:
  %arg139029 = add i64 0, 0                                                          ; quoted ()
  %arg139028 = add i64 0, 0                                                          ; quoted ()
  %cloptr141619 = inttoptr i64 %cont138233 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141619)                                       ; assert function application
  %i0ptr141620 = getelementptr inbounds i64, i64* %cloptr141619, i64 0               ; &cloptr141619[0]
  %f141622 = load i64, i64* %i0ptr141620, align 8                                    ; load; *i0ptr141620
  %fptr141621 = inttoptr i64 %f141622 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141621(i64 %cont138233, i64 %arg139029, i64 %arg139028); tail call
  ret void

else141618:
  %a137957 = call i64 @prim_car(i64 %pvZ$lst)                                        ; call prim_car
  %a137958 = call i64 @prim_cdr(i64 %pvZ$lst)                                        ; call prim_cdr
  %arg139033 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a137959 = call i64 @prim__45(i64 %DFR$n, i64 %arg139033)                          ; call prim__45
  %cloptr141623 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr141625 = getelementptr inbounds i64, i64* %cloptr141623, i64 1                ; &eptr141625[1]
  %eptr141626 = getelementptr inbounds i64, i64* %cloptr141623, i64 2                ; &eptr141626[2]
  store i64 %cont138233, i64* %eptr141625                                            ; *eptr141625 = %cont138233
  store i64 %a137957, i64* %eptr141626                                               ; *eptr141626 = %a137957
  %eptr141624 = getelementptr inbounds i64, i64* %cloptr141623, i64 0                ; &cloptr141623[0]
  %f141627 = ptrtoint void(i64,i64,i64)* @lam139139 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141627, i64* %eptr141624                                               ; store fptr
  %arg139037 = ptrtoint i64* %cloptr141623 to i64                                    ; closure cast; i64* -> i64
  %cloptr141628 = inttoptr i64 %d4k$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141628)                                       ; assert function application
  %i0ptr141629 = getelementptr inbounds i64, i64* %cloptr141628, i64 0               ; &cloptr141628[0]
  %f141631 = load i64, i64* %i0ptr141629, align 8                                    ; load; *i0ptr141629
  %fptr141630 = inttoptr i64 %f141631 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141630(i64 %d4k$_37take, i64 %arg139037, i64 %a137958, i64 %a137959); tail call
  ret void
}


define void @lam139139(i64 %env139140, i64 %_95138234, i64 %a137960) {
  %envptr141632 = inttoptr i64 %env139140 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141633 = getelementptr inbounds i64, i64* %envptr141632, i64 2              ; &envptr141632[2]
  %a137957 = load i64, i64* %envptr141633, align 8                                   ; load; *envptr141633
  %envptr141634 = inttoptr i64 %env139140 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141635 = getelementptr inbounds i64, i64* %envptr141634, i64 1              ; &envptr141634[1]
  %cont138233 = load i64, i64* %envptr141635, align 8                                ; load; *envptr141635
  %retprim138235 = call i64 @prim_cons(i64 %a137957, i64 %a137960)                   ; call prim_cons
  %arg139042 = add i64 0, 0                                                          ; quoted ()
  %cloptr141636 = inttoptr i64 %cont138233 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141636)                                       ; assert function application
  %i0ptr141637 = getelementptr inbounds i64, i64* %cloptr141636, i64 0               ; &cloptr141636[0]
  %f141639 = load i64, i64* %i0ptr141637, align 8                                    ; load; *i0ptr141637
  %fptr141638 = inttoptr i64 %f141639 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141638(i64 %cont138233, i64 %arg139042, i64 %retprim138235); tail call
  ret void
}


define void @lam139132(i64 %env139133, i64 %cont138236, i64 %vN1$_37map) {
  %arg139045 = add i64 0, 0                                                          ; quoted ()
  %cloptr141640 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr141642 = getelementptr inbounds i64, i64* %cloptr141640, i64 1                ; &eptr141642[1]
  store i64 %vN1$_37map, i64* %eptr141642                                            ; *eptr141642 = %vN1$_37map
  %eptr141641 = getelementptr inbounds i64, i64* %cloptr141640, i64 0                ; &cloptr141640[0]
  %f141643 = ptrtoint void(i64,i64,i64,i64)* @lam139129 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f141643, i64* %eptr141641                                               ; store fptr
  %arg139044 = ptrtoint i64* %cloptr141640 to i64                                    ; closure cast; i64* -> i64
  %cloptr141644 = inttoptr i64 %cont138236 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141644)                                       ; assert function application
  %i0ptr141645 = getelementptr inbounds i64, i64* %cloptr141644, i64 0               ; &cloptr141644[0]
  %f141647 = load i64, i64* %i0ptr141645, align 8                                    ; load; *i0ptr141645
  %fptr141646 = inttoptr i64 %f141647 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141646(i64 %cont138236, i64 %arg139045, i64 %arg139044); tail call
  ret void
}


define void @lam139129(i64 %env139130, i64 %cont138237, i64 %PmH$f, i64 %q8b$lst) {
  %envptr141648 = inttoptr i64 %env139130 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141649 = getelementptr inbounds i64, i64* %envptr141648, i64 1              ; &envptr141648[1]
  %vN1$_37map = load i64, i64* %envptr141649, align 8                                ; load; *envptr141649
  %a137950 = call i64 @prim_null_63(i64 %q8b$lst)                                    ; call prim_null_63
  %cmp141650 = icmp eq i64 %a137950, 15                                              ; false?
  br i1 %cmp141650, label %else141652, label %then141651                             ; if

then141651:
  %arg139049 = add i64 0, 0                                                          ; quoted ()
  %arg139048 = add i64 0, 0                                                          ; quoted ()
  %cloptr141653 = inttoptr i64 %cont138237 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141653)                                       ; assert function application
  %i0ptr141654 = getelementptr inbounds i64, i64* %cloptr141653, i64 0               ; &cloptr141653[0]
  %f141656 = load i64, i64* %i0ptr141654, align 8                                    ; load; *i0ptr141654
  %fptr141655 = inttoptr i64 %f141656 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141655(i64 %cont138237, i64 %arg139049, i64 %arg139048); tail call
  ret void

else141652:
  %a137951 = call i64 @prim_car(i64 %q8b$lst)                                        ; call prim_car
  %cloptr141657 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr141659 = getelementptr inbounds i64, i64* %cloptr141657, i64 1                ; &eptr141659[1]
  %eptr141660 = getelementptr inbounds i64, i64* %cloptr141657, i64 2                ; &eptr141660[2]
  %eptr141661 = getelementptr inbounds i64, i64* %cloptr141657, i64 3                ; &eptr141661[3]
  %eptr141662 = getelementptr inbounds i64, i64* %cloptr141657, i64 4                ; &eptr141662[4]
  store i64 %vN1$_37map, i64* %eptr141659                                            ; *eptr141659 = %vN1$_37map
  store i64 %PmH$f, i64* %eptr141660                                                 ; *eptr141660 = %PmH$f
  store i64 %q8b$lst, i64* %eptr141661                                               ; *eptr141661 = %q8b$lst
  store i64 %cont138237, i64* %eptr141662                                            ; *eptr141662 = %cont138237
  %eptr141658 = getelementptr inbounds i64, i64* %cloptr141657, i64 0                ; &cloptr141657[0]
  %f141663 = ptrtoint void(i64,i64,i64)* @lam139127 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141663, i64* %eptr141658                                               ; store fptr
  %arg139053 = ptrtoint i64* %cloptr141657 to i64                                    ; closure cast; i64* -> i64
  %cloptr141664 = inttoptr i64 %PmH$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141664)                                       ; assert function application
  %i0ptr141665 = getelementptr inbounds i64, i64* %cloptr141664, i64 0               ; &cloptr141664[0]
  %f141667 = load i64, i64* %i0ptr141665, align 8                                    ; load; *i0ptr141665
  %fptr141666 = inttoptr i64 %f141667 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141666(i64 %PmH$f, i64 %arg139053, i64 %a137951)    ; tail call
  ret void
}


define void @lam139127(i64 %env139128, i64 %_95138238, i64 %a137952) {
  %envptr141668 = inttoptr i64 %env139128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141669 = getelementptr inbounds i64, i64* %envptr141668, i64 4              ; &envptr141668[4]
  %cont138237 = load i64, i64* %envptr141669, align 8                                ; load; *envptr141669
  %envptr141670 = inttoptr i64 %env139128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141671 = getelementptr inbounds i64, i64* %envptr141670, i64 3              ; &envptr141670[3]
  %q8b$lst = load i64, i64* %envptr141671, align 8                                   ; load; *envptr141671
  %envptr141672 = inttoptr i64 %env139128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141673 = getelementptr inbounds i64, i64* %envptr141672, i64 2              ; &envptr141672[2]
  %PmH$f = load i64, i64* %envptr141673, align 8                                     ; load; *envptr141673
  %envptr141674 = inttoptr i64 %env139128 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141675 = getelementptr inbounds i64, i64* %envptr141674, i64 1              ; &envptr141674[1]
  %vN1$_37map = load i64, i64* %envptr141675, align 8                                ; load; *envptr141675
  %a137953 = call i64 @prim_cdr(i64 %q8b$lst)                                        ; call prim_cdr
  %cloptr141676 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr141678 = getelementptr inbounds i64, i64* %cloptr141676, i64 1                ; &eptr141678[1]
  %eptr141679 = getelementptr inbounds i64, i64* %cloptr141676, i64 2                ; &eptr141679[2]
  store i64 %cont138237, i64* %eptr141678                                            ; *eptr141678 = %cont138237
  store i64 %a137952, i64* %eptr141679                                               ; *eptr141679 = %a137952
  %eptr141677 = getelementptr inbounds i64, i64* %cloptr141676, i64 0                ; &cloptr141676[0]
  %f141680 = ptrtoint void(i64,i64,i64)* @lam139125 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141680, i64* %eptr141677                                               ; store fptr
  %arg139058 = ptrtoint i64* %cloptr141676 to i64                                    ; closure cast; i64* -> i64
  %cloptr141681 = inttoptr i64 %vN1$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141681)                                       ; assert function application
  %i0ptr141682 = getelementptr inbounds i64, i64* %cloptr141681, i64 0               ; &cloptr141681[0]
  %f141684 = load i64, i64* %i0ptr141682, align 8                                    ; load; *i0ptr141682
  %fptr141683 = inttoptr i64 %f141684 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141683(i64 %vN1$_37map, i64 %arg139058, i64 %PmH$f, i64 %a137953); tail call
  ret void
}


define void @lam139125(i64 %env139126, i64 %_95138239, i64 %a137954) {
  %envptr141685 = inttoptr i64 %env139126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141686 = getelementptr inbounds i64, i64* %envptr141685, i64 2              ; &envptr141685[2]
  %a137952 = load i64, i64* %envptr141686, align 8                                   ; load; *envptr141686
  %envptr141687 = inttoptr i64 %env139126 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141688 = getelementptr inbounds i64, i64* %envptr141687, i64 1              ; &envptr141687[1]
  %cont138237 = load i64, i64* %envptr141688, align 8                                ; load; *envptr141688
  %retprim138240 = call i64 @prim_cons(i64 %a137952, i64 %a137954)                   ; call prim_cons
  %arg139063 = add i64 0, 0                                                          ; quoted ()
  %cloptr141689 = inttoptr i64 %cont138237 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141689)                                       ; assert function application
  %i0ptr141690 = getelementptr inbounds i64, i64* %cloptr141689, i64 0               ; &cloptr141689[0]
  %f141692 = load i64, i64* %i0ptr141690, align 8                                    ; load; *i0ptr141690
  %fptr141691 = inttoptr i64 %f141692 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141691(i64 %cont138237, i64 %arg139063, i64 %retprim138240); tail call
  ret void
}


define void @lam139120(i64 %env139121, i64 %cont138241, i64 %mzq$_37foldr1) {
  %arg139066 = add i64 0, 0                                                          ; quoted ()
  %cloptr141693 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr141695 = getelementptr inbounds i64, i64* %cloptr141693, i64 1                ; &eptr141695[1]
  store i64 %mzq$_37foldr1, i64* %eptr141695                                         ; *eptr141695 = %mzq$_37foldr1
  %eptr141694 = getelementptr inbounds i64, i64* %cloptr141693, i64 0                ; &cloptr141693[0]
  %f141696 = ptrtoint void(i64,i64,i64,i64,i64)* @lam139117 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f141696, i64* %eptr141694                                               ; store fptr
  %arg139065 = ptrtoint i64* %cloptr141693 to i64                                    ; closure cast; i64* -> i64
  %cloptr141697 = inttoptr i64 %cont138241 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141697)                                       ; assert function application
  %i0ptr141698 = getelementptr inbounds i64, i64* %cloptr141697, i64 0               ; &cloptr141697[0]
  %f141700 = load i64, i64* %i0ptr141698, align 8                                    ; load; *i0ptr141698
  %fptr141699 = inttoptr i64 %f141700 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141699(i64 %cont138241, i64 %arg139066, i64 %arg139065); tail call
  ret void
}


define void @lam139117(i64 %env139118, i64 %cont138242, i64 %RYz$f, i64 %asc$acc, i64 %YQG$lst) {
  %envptr141701 = inttoptr i64 %env139118 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141702 = getelementptr inbounds i64, i64* %envptr141701, i64 1              ; &envptr141701[1]
  %mzq$_37foldr1 = load i64, i64* %envptr141702, align 8                             ; load; *envptr141702
  %a137946 = call i64 @prim_null_63(i64 %YQG$lst)                                    ; call prim_null_63
  %cmp141703 = icmp eq i64 %a137946, 15                                              ; false?
  br i1 %cmp141703, label %else141705, label %then141704                             ; if

then141704:
  %arg139070 = add i64 0, 0                                                          ; quoted ()
  %cloptr141706 = inttoptr i64 %cont138242 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141706)                                       ; assert function application
  %i0ptr141707 = getelementptr inbounds i64, i64* %cloptr141706, i64 0               ; &cloptr141706[0]
  %f141709 = load i64, i64* %i0ptr141707, align 8                                    ; load; *i0ptr141707
  %fptr141708 = inttoptr i64 %f141709 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141708(i64 %cont138242, i64 %arg139070, i64 %asc$acc); tail call
  ret void

else141705:
  %a137947 = call i64 @prim_car(i64 %YQG$lst)                                        ; call prim_car
  %a137948 = call i64 @prim_cdr(i64 %YQG$lst)                                        ; call prim_cdr
  %cloptr141710 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr141712 = getelementptr inbounds i64, i64* %cloptr141710, i64 1                ; &eptr141712[1]
  %eptr141713 = getelementptr inbounds i64, i64* %cloptr141710, i64 2                ; &eptr141713[2]
  %eptr141714 = getelementptr inbounds i64, i64* %cloptr141710, i64 3                ; &eptr141714[3]
  store i64 %a137947, i64* %eptr141712                                               ; *eptr141712 = %a137947
  store i64 %RYz$f, i64* %eptr141713                                                 ; *eptr141713 = %RYz$f
  store i64 %cont138242, i64* %eptr141714                                            ; *eptr141714 = %cont138242
  %eptr141711 = getelementptr inbounds i64, i64* %cloptr141710, i64 0                ; &cloptr141710[0]
  %f141715 = ptrtoint void(i64,i64,i64)* @lam139115 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141715, i64* %eptr141711                                               ; store fptr
  %arg139077 = ptrtoint i64* %cloptr141710 to i64                                    ; closure cast; i64* -> i64
  %cloptr141716 = inttoptr i64 %mzq$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141716)                                       ; assert function application
  %i0ptr141717 = getelementptr inbounds i64, i64* %cloptr141716, i64 0               ; &cloptr141716[0]
  %f141719 = load i64, i64* %i0ptr141717, align 8                                    ; load; *i0ptr141717
  %fptr141718 = inttoptr i64 %f141719 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141718(i64 %mzq$_37foldr1, i64 %arg139077, i64 %RYz$f, i64 %asc$acc, i64 %a137948); tail call
  ret void
}


define void @lam139115(i64 %env139116, i64 %_95138243, i64 %a137949) {
  %envptr141720 = inttoptr i64 %env139116 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141721 = getelementptr inbounds i64, i64* %envptr141720, i64 3              ; &envptr141720[3]
  %cont138242 = load i64, i64* %envptr141721, align 8                                ; load; *envptr141721
  %envptr141722 = inttoptr i64 %env139116 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141723 = getelementptr inbounds i64, i64* %envptr141722, i64 2              ; &envptr141722[2]
  %RYz$f = load i64, i64* %envptr141723, align 8                                     ; load; *envptr141723
  %envptr141724 = inttoptr i64 %env139116 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141725 = getelementptr inbounds i64, i64* %envptr141724, i64 1              ; &envptr141724[1]
  %a137947 = load i64, i64* %envptr141725, align 8                                   ; load; *envptr141725
  %cloptr141726 = inttoptr i64 %RYz$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141726)                                       ; assert function application
  %i0ptr141727 = getelementptr inbounds i64, i64* %cloptr141726, i64 0               ; &cloptr141726[0]
  %f141729 = load i64, i64* %i0ptr141727, align 8                                    ; load; *i0ptr141727
  %fptr141728 = inttoptr i64 %f141729 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141728(i64 %RYz$f, i64 %cont138242, i64 %a137947, i64 %a137949); tail call
  ret void
}


define void @lam139112(i64 %env139113, i64 %cont138245, i64 %jxZ$y) {
  %arg139084 = add i64 0, 0                                                          ; quoted ()
  %cloptr141730 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr141732 = getelementptr inbounds i64, i64* %cloptr141730, i64 1                ; &eptr141732[1]
  store i64 %jxZ$y, i64* %eptr141732                                                 ; *eptr141732 = %jxZ$y
  %eptr141731 = getelementptr inbounds i64, i64* %cloptr141730, i64 0                ; &cloptr141730[0]
  %f141733 = ptrtoint void(i64,i64,i64)* @lam139109 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141733, i64* %eptr141731                                               ; store fptr
  %arg139083 = ptrtoint i64* %cloptr141730 to i64                                    ; closure cast; i64* -> i64
  %cloptr141734 = inttoptr i64 %cont138245 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141734)                                       ; assert function application
  %i0ptr141735 = getelementptr inbounds i64, i64* %cloptr141734, i64 0               ; &cloptr141734[0]
  %f141737 = load i64, i64* %i0ptr141735, align 8                                    ; load; *i0ptr141735
  %fptr141736 = inttoptr i64 %f141737 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141736(i64 %cont138245, i64 %arg139084, i64 %arg139083); tail call
  ret void
}


define void @lam139109(i64 %env139110, i64 %cont138246, i64 %XsM$f) {
  %envptr141738 = inttoptr i64 %env139110 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141739 = getelementptr inbounds i64, i64* %envptr141738, i64 1              ; &envptr141738[1]
  %jxZ$y = load i64, i64* %envptr141739, align 8                                     ; load; *envptr141739
  %cloptr141740 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr141742 = getelementptr inbounds i64, i64* %cloptr141740, i64 1                ; &eptr141742[1]
  %eptr141743 = getelementptr inbounds i64, i64* %cloptr141740, i64 2                ; &eptr141743[2]
  store i64 %XsM$f, i64* %eptr141742                                                 ; *eptr141742 = %XsM$f
  store i64 %jxZ$y, i64* %eptr141743                                                 ; *eptr141743 = %jxZ$y
  %eptr141741 = getelementptr inbounds i64, i64* %cloptr141740, i64 0                ; &cloptr141740[0]
  %f141744 = ptrtoint void(i64,i64)* @lam139107 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f141744, i64* %eptr141741                                               ; store fptr
  %arg139086 = ptrtoint i64* %cloptr141740 to i64                                    ; closure cast; i64* -> i64
  %cloptr141745 = inttoptr i64 %XsM$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141745)                                       ; assert function application
  %i0ptr141746 = getelementptr inbounds i64, i64* %cloptr141745, i64 0               ; &cloptr141745[0]
  %f141748 = load i64, i64* %i0ptr141746, align 8                                    ; load; *i0ptr141746
  %fptr141747 = inttoptr i64 %f141748 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141747(i64 %XsM$f, i64 %cont138246, i64 %arg139086) ; tail call
  ret void
}


define void @lam139107(i64 %env139108, i64 %fX2$args138248) {
  %envptr141749 = inttoptr i64 %env139108 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141750 = getelementptr inbounds i64, i64* %envptr141749, i64 2              ; &envptr141749[2]
  %jxZ$y = load i64, i64* %envptr141750, align 8                                     ; load; *envptr141750
  %envptr141751 = inttoptr i64 %env139108 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141752 = getelementptr inbounds i64, i64* %envptr141751, i64 1              ; &envptr141751[1]
  %XsM$f = load i64, i64* %envptr141752, align 8                                     ; load; *envptr141752
  %cont138247 = call i64 @prim_car(i64 %fX2$args138248)                              ; call prim_car
  %fX2$args = call i64 @prim_cdr(i64 %fX2$args138248)                                ; call prim_cdr
  %cloptr141753 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr141755 = getelementptr inbounds i64, i64* %cloptr141753, i64 1                ; &eptr141755[1]
  %eptr141756 = getelementptr inbounds i64, i64* %cloptr141753, i64 2                ; &eptr141756[2]
  %eptr141757 = getelementptr inbounds i64, i64* %cloptr141753, i64 3                ; &eptr141757[3]
  store i64 %cont138247, i64* %eptr141755                                            ; *eptr141755 = %cont138247
  store i64 %fX2$args, i64* %eptr141756                                              ; *eptr141756 = %fX2$args
  store i64 %XsM$f, i64* %eptr141757                                                 ; *eptr141757 = %XsM$f
  %eptr141754 = getelementptr inbounds i64, i64* %cloptr141753, i64 0                ; &cloptr141753[0]
  %f141758 = ptrtoint void(i64,i64,i64)* @lam139105 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141758, i64* %eptr141754                                               ; store fptr
  %arg139092 = ptrtoint i64* %cloptr141753 to i64                                    ; closure cast; i64* -> i64
  %cloptr141759 = inttoptr i64 %jxZ$y to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141759)                                       ; assert function application
  %i0ptr141760 = getelementptr inbounds i64, i64* %cloptr141759, i64 0               ; &cloptr141759[0]
  %f141762 = load i64, i64* %i0ptr141760, align 8                                    ; load; *i0ptr141760
  %fptr141761 = inttoptr i64 %f141762 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141761(i64 %jxZ$y, i64 %arg139092, i64 %jxZ$y)      ; tail call
  ret void
}


define void @lam139105(i64 %env139106, i64 %_95138249, i64 %a137944) {
  %envptr141763 = inttoptr i64 %env139106 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141764 = getelementptr inbounds i64, i64* %envptr141763, i64 3              ; &envptr141763[3]
  %XsM$f = load i64, i64* %envptr141764, align 8                                     ; load; *envptr141764
  %envptr141765 = inttoptr i64 %env139106 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141766 = getelementptr inbounds i64, i64* %envptr141765, i64 2              ; &envptr141765[2]
  %fX2$args = load i64, i64* %envptr141766, align 8                                  ; load; *envptr141766
  %envptr141767 = inttoptr i64 %env139106 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141768 = getelementptr inbounds i64, i64* %envptr141767, i64 1              ; &envptr141767[1]
  %cont138247 = load i64, i64* %envptr141768, align 8                                ; load; *envptr141768
  %cloptr141769 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr141771 = getelementptr inbounds i64, i64* %cloptr141769, i64 1                ; &eptr141771[1]
  %eptr141772 = getelementptr inbounds i64, i64* %cloptr141769, i64 2                ; &eptr141772[2]
  store i64 %cont138247, i64* %eptr141771                                            ; *eptr141771 = %cont138247
  store i64 %fX2$args, i64* %eptr141772                                              ; *eptr141772 = %fX2$args
  %eptr141770 = getelementptr inbounds i64, i64* %cloptr141769, i64 0                ; &cloptr141769[0]
  %f141773 = ptrtoint void(i64,i64,i64)* @lam139103 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f141773, i64* %eptr141770                                               ; store fptr
  %arg139095 = ptrtoint i64* %cloptr141769 to i64                                    ; closure cast; i64* -> i64
  %cloptr141774 = inttoptr i64 %a137944 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141774)                                       ; assert function application
  %i0ptr141775 = getelementptr inbounds i64, i64* %cloptr141774, i64 0               ; &cloptr141774[0]
  %f141777 = load i64, i64* %i0ptr141775, align 8                                    ; load; *i0ptr141775
  %fptr141776 = inttoptr i64 %f141777 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141776(i64 %a137944, i64 %arg139095, i64 %XsM$f)    ; tail call
  ret void
}


define void @lam139103(i64 %env139104, i64 %_95138250, i64 %a137945) {
  %envptr141778 = inttoptr i64 %env139104 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141779 = getelementptr inbounds i64, i64* %envptr141778, i64 2              ; &envptr141778[2]
  %fX2$args = load i64, i64* %envptr141779, align 8                                  ; load; *envptr141779
  %envptr141780 = inttoptr i64 %env139104 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr141781 = getelementptr inbounds i64, i64* %envptr141780, i64 1              ; &envptr141780[1]
  %cont138247 = load i64, i64* %envptr141781, align 8                                ; load; *envptr141781
  %cps_45lst138251 = call i64 @prim_cons(i64 %cont138247, i64 %fX2$args)             ; call prim_cons
  %cloptr141782 = inttoptr i64 %a137945 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr141782)                                       ; assert function application
  %i0ptr141783 = getelementptr inbounds i64, i64* %cloptr141782, i64 0               ; &cloptr141782[0]
  %f141785 = load i64, i64* %i0ptr141783, align 8                                    ; load; *i0ptr141783
  %fptr141784 = inttoptr i64 %f141785 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr141784(i64 %a137945, i64 %cps_45lst138251)          ; tail call
  ret void
}





@sym140369 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
