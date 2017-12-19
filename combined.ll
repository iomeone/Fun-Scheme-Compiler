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
  %cloptr143553 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143554 = getelementptr inbounds i64, i64* %cloptr143553, i64 0                ; &cloptr143553[0]
  %f143555 = ptrtoint void(i64,i64,i64)* @lam143551 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143555, i64* %eptr143554                                               ; store fptr
  %arg142243 = ptrtoint i64* %cloptr143553 to i64                                    ; closure cast; i64* -> i64
  %cloptr143556 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143557 = getelementptr inbounds i64, i64* %cloptr143556, i64 0                ; &cloptr143556[0]
  %f143558 = ptrtoint void(i64,i64,i64)* @lam143549 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143558, i64* %eptr143557                                               ; store fptr
  %arg142242 = ptrtoint i64* %cloptr143556 to i64                                    ; closure cast; i64* -> i64
  %cloptr143559 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143560 = getelementptr inbounds i64, i64* %cloptr143559, i64 0                ; &cloptr143559[0]
  %f143561 = ptrtoint void(i64,i64,i64)* @lam143101 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143561, i64* %eptr143560                                               ; store fptr
  %arg142241 = ptrtoint i64* %cloptr143559 to i64                                    ; closure cast; i64* -> i64
  %cloptr143562 = inttoptr i64 %arg142243 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143562)                                       ; assert function application
  %i0ptr143563 = getelementptr inbounds i64, i64* %cloptr143562, i64 0               ; &cloptr143562[0]
  %f143565 = load i64, i64* %i0ptr143563, align 8                                    ; load; *i0ptr143563
  %fptr143564 = inttoptr i64 %f143565 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143564(i64 %arg142243, i64 %arg142242, i64 %arg142241); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam143551(i64 %env143552, i64 %cont142233, i64 %jrf$yu) {
  %cloptr143566 = inttoptr i64 %jrf$yu to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143566)                                       ; assert function application
  %i0ptr143567 = getelementptr inbounds i64, i64* %cloptr143566, i64 0               ; &cloptr143566[0]
  %f143569 = load i64, i64* %i0ptr143567, align 8                                    ; load; *i0ptr143567
  %fptr143568 = inttoptr i64 %f143569 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143568(i64 %jrf$yu, i64 %cont142233, i64 %jrf$yu)   ; tail call
  ret void
}


define void @lam143549(i64 %env143550, i64 %_95142054, i64 %G0u$Ycmb) {
  %cloptr143570 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143572 = getelementptr inbounds i64, i64* %cloptr143570, i64 1                ; &eptr143572[1]
  store i64 %G0u$Ycmb, i64* %eptr143572                                              ; *eptr143572 = %G0u$Ycmb
  %eptr143571 = getelementptr inbounds i64, i64* %cloptr143570, i64 0                ; &cloptr143570[0]
  %f143573 = ptrtoint void(i64,i64,i64)* @lam143547 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143573, i64* %eptr143571                                               ; store fptr
  %arg142248 = ptrtoint i64* %cloptr143570 to i64                                    ; closure cast; i64* -> i64
  %cloptr143574 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143575 = getelementptr inbounds i64, i64* %cloptr143574, i64 0                ; &cloptr143574[0]
  %f143576 = ptrtoint void(i64,i64,i64)* @lam143109 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143576, i64* %eptr143575                                               ; store fptr
  %arg142247 = ptrtoint i64* %cloptr143574 to i64                                    ; closure cast; i64* -> i64
  %cloptr143577 = inttoptr i64 %G0u$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143577)                                       ; assert function application
  %i0ptr143578 = getelementptr inbounds i64, i64* %cloptr143577, i64 0               ; &cloptr143577[0]
  %f143580 = load i64, i64* %i0ptr143578, align 8                                    ; load; *i0ptr143578
  %fptr143579 = inttoptr i64 %f143580 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143579(i64 %G0u$Ycmb, i64 %arg142248, i64 %arg142247); tail call
  ret void
}


define void @lam143547(i64 %env143548, i64 %_95142055, i64 %DVf$_37foldr1) {
  %envptr143581 = inttoptr i64 %env143548 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143582 = getelementptr inbounds i64, i64* %envptr143581, i64 1              ; &envptr143581[1]
  %G0u$Ycmb = load i64, i64* %envptr143582, align 8                                  ; load; *envptr143582
  %cloptr143583 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143585 = getelementptr inbounds i64, i64* %cloptr143583, i64 1                ; &eptr143585[1]
  %eptr143586 = getelementptr inbounds i64, i64* %cloptr143583, i64 2                ; &eptr143586[2]
  store i64 %G0u$Ycmb, i64* %eptr143585                                              ; *eptr143585 = %G0u$Ycmb
  store i64 %DVf$_37foldr1, i64* %eptr143586                                         ; *eptr143586 = %DVf$_37foldr1
  %eptr143584 = getelementptr inbounds i64, i64* %cloptr143583, i64 0                ; &cloptr143583[0]
  %f143587 = ptrtoint void(i64,i64,i64)* @lam143545 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143587, i64* %eptr143584                                               ; store fptr
  %arg142251 = ptrtoint i64* %cloptr143583 to i64                                    ; closure cast; i64* -> i64
  %cloptr143588 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143589 = getelementptr inbounds i64, i64* %cloptr143588, i64 0                ; &cloptr143588[0]
  %f143590 = ptrtoint void(i64,i64,i64)* @lam143121 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143590, i64* %eptr143589                                               ; store fptr
  %arg142250 = ptrtoint i64* %cloptr143588 to i64                                    ; closure cast; i64* -> i64
  %cloptr143591 = inttoptr i64 %G0u$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143591)                                       ; assert function application
  %i0ptr143592 = getelementptr inbounds i64, i64* %cloptr143591, i64 0               ; &cloptr143591[0]
  %f143594 = load i64, i64* %i0ptr143592, align 8                                    ; load; *i0ptr143592
  %fptr143593 = inttoptr i64 %f143594 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143593(i64 %G0u$Ycmb, i64 %arg142251, i64 %arg142250); tail call
  ret void
}


define void @lam143545(i64 %env143546, i64 %_95142056, i64 %Kcc$_37map1) {
  %envptr143595 = inttoptr i64 %env143546 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143596 = getelementptr inbounds i64, i64* %envptr143595, i64 2              ; &envptr143595[2]
  %DVf$_37foldr1 = load i64, i64* %envptr143596, align 8                             ; load; *envptr143596
  %envptr143597 = inttoptr i64 %env143546 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143598 = getelementptr inbounds i64, i64* %envptr143597, i64 1              ; &envptr143597[1]
  %G0u$Ycmb = load i64, i64* %envptr143598, align 8                                  ; load; *envptr143598
  %cloptr143599 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143601 = getelementptr inbounds i64, i64* %cloptr143599, i64 1                ; &eptr143601[1]
  %eptr143602 = getelementptr inbounds i64, i64* %cloptr143599, i64 2                ; &eptr143602[2]
  %eptr143603 = getelementptr inbounds i64, i64* %cloptr143599, i64 3                ; &eptr143603[3]
  store i64 %G0u$Ycmb, i64* %eptr143601                                              ; *eptr143601 = %G0u$Ycmb
  store i64 %DVf$_37foldr1, i64* %eptr143602                                         ; *eptr143602 = %DVf$_37foldr1
  store i64 %Kcc$_37map1, i64* %eptr143603                                           ; *eptr143603 = %Kcc$_37map1
  %eptr143600 = getelementptr inbounds i64, i64* %cloptr143599, i64 0                ; &cloptr143599[0]
  %f143604 = ptrtoint void(i64,i64,i64)* @lam143543 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143604, i64* %eptr143600                                               ; store fptr
  %arg142254 = ptrtoint i64* %cloptr143599 to i64                                    ; closure cast; i64* -> i64
  %cloptr143605 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143606 = getelementptr inbounds i64, i64* %cloptr143605, i64 0                ; &cloptr143605[0]
  %f143607 = ptrtoint void(i64,i64,i64)* @lam143135 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143607, i64* %eptr143606                                               ; store fptr
  %arg142253 = ptrtoint i64* %cloptr143605 to i64                                    ; closure cast; i64* -> i64
  %cloptr143608 = inttoptr i64 %G0u$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143608)                                       ; assert function application
  %i0ptr143609 = getelementptr inbounds i64, i64* %cloptr143608, i64 0               ; &cloptr143608[0]
  %f143611 = load i64, i64* %i0ptr143609, align 8                                    ; load; *i0ptr143609
  %fptr143610 = inttoptr i64 %f143611 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143610(i64 %G0u$Ycmb, i64 %arg142254, i64 %arg142253); tail call
  ret void
}


define void @lam143543(i64 %env143544, i64 %_95142057, i64 %GSR$_37take) {
  %envptr143612 = inttoptr i64 %env143544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143613 = getelementptr inbounds i64, i64* %envptr143612, i64 3              ; &envptr143612[3]
  %Kcc$_37map1 = load i64, i64* %envptr143613, align 8                               ; load; *envptr143613
  %envptr143614 = inttoptr i64 %env143544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143615 = getelementptr inbounds i64, i64* %envptr143614, i64 2              ; &envptr143614[2]
  %DVf$_37foldr1 = load i64, i64* %envptr143615, align 8                             ; load; *envptr143615
  %envptr143616 = inttoptr i64 %env143544 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143617 = getelementptr inbounds i64, i64* %envptr143616, i64 1              ; &envptr143616[1]
  %G0u$Ycmb = load i64, i64* %envptr143617, align 8                                  ; load; *envptr143617
  %cloptr143618 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143620 = getelementptr inbounds i64, i64* %cloptr143618, i64 1                ; &eptr143620[1]
  %eptr143621 = getelementptr inbounds i64, i64* %cloptr143618, i64 2                ; &eptr143621[2]
  %eptr143622 = getelementptr inbounds i64, i64* %cloptr143618, i64 3                ; &eptr143622[3]
  %eptr143623 = getelementptr inbounds i64, i64* %cloptr143618, i64 4                ; &eptr143623[4]
  store i64 %GSR$_37take, i64* %eptr143620                                           ; *eptr143620 = %GSR$_37take
  store i64 %G0u$Ycmb, i64* %eptr143621                                              ; *eptr143621 = %G0u$Ycmb
  store i64 %DVf$_37foldr1, i64* %eptr143622                                         ; *eptr143622 = %DVf$_37foldr1
  store i64 %Kcc$_37map1, i64* %eptr143623                                           ; *eptr143623 = %Kcc$_37map1
  %eptr143619 = getelementptr inbounds i64, i64* %cloptr143618, i64 0                ; &cloptr143618[0]
  %f143624 = ptrtoint void(i64,i64,i64)* @lam143541 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143624, i64* %eptr143619                                               ; store fptr
  %arg142257 = ptrtoint i64* %cloptr143618 to i64                                    ; closure cast; i64* -> i64
  %cloptr143625 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143626 = getelementptr inbounds i64, i64* %cloptr143625, i64 0                ; &cloptr143625[0]
  %f143627 = ptrtoint void(i64,i64,i64)* @lam143146 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143627, i64* %eptr143626                                               ; store fptr
  %arg142256 = ptrtoint i64* %cloptr143625 to i64                                    ; closure cast; i64* -> i64
  %cloptr143628 = inttoptr i64 %G0u$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143628)                                       ; assert function application
  %i0ptr143629 = getelementptr inbounds i64, i64* %cloptr143628, i64 0               ; &cloptr143628[0]
  %f143631 = load i64, i64* %i0ptr143629, align 8                                    ; load; *i0ptr143629
  %fptr143630 = inttoptr i64 %f143631 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143630(i64 %G0u$Ycmb, i64 %arg142257, i64 %arg142256); tail call
  ret void
}


define void @lam143541(i64 %env143542, i64 %_95142058, i64 %RDB$_37length) {
  %envptr143632 = inttoptr i64 %env143542 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143633 = getelementptr inbounds i64, i64* %envptr143632, i64 4              ; &envptr143632[4]
  %Kcc$_37map1 = load i64, i64* %envptr143633, align 8                               ; load; *envptr143633
  %envptr143634 = inttoptr i64 %env143542 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143635 = getelementptr inbounds i64, i64* %envptr143634, i64 3              ; &envptr143634[3]
  %DVf$_37foldr1 = load i64, i64* %envptr143635, align 8                             ; load; *envptr143635
  %envptr143636 = inttoptr i64 %env143542 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143637 = getelementptr inbounds i64, i64* %envptr143636, i64 2              ; &envptr143636[2]
  %G0u$Ycmb = load i64, i64* %envptr143637, align 8                                  ; load; *envptr143637
  %envptr143638 = inttoptr i64 %env143542 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143639 = getelementptr inbounds i64, i64* %envptr143638, i64 1              ; &envptr143638[1]
  %GSR$_37take = load i64, i64* %envptr143639, align 8                               ; load; *envptr143639
  %cloptr143640 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr143642 = getelementptr inbounds i64, i64* %cloptr143640, i64 1                ; &eptr143642[1]
  %eptr143643 = getelementptr inbounds i64, i64* %cloptr143640, i64 2                ; &eptr143643[2]
  %eptr143644 = getelementptr inbounds i64, i64* %cloptr143640, i64 3                ; &eptr143644[3]
  %eptr143645 = getelementptr inbounds i64, i64* %cloptr143640, i64 4                ; &eptr143645[4]
  %eptr143646 = getelementptr inbounds i64, i64* %cloptr143640, i64 5                ; &eptr143646[5]
  store i64 %GSR$_37take, i64* %eptr143642                                           ; *eptr143642 = %GSR$_37take
  store i64 %RDB$_37length, i64* %eptr143643                                         ; *eptr143643 = %RDB$_37length
  store i64 %G0u$Ycmb, i64* %eptr143644                                              ; *eptr143644 = %G0u$Ycmb
  store i64 %DVf$_37foldr1, i64* %eptr143645                                         ; *eptr143645 = %DVf$_37foldr1
  store i64 %Kcc$_37map1, i64* %eptr143646                                           ; *eptr143646 = %Kcc$_37map1
  %eptr143641 = getelementptr inbounds i64, i64* %cloptr143640, i64 0                ; &cloptr143640[0]
  %f143647 = ptrtoint void(i64,i64,i64)* @lam143539 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143647, i64* %eptr143641                                               ; store fptr
  %arg142260 = ptrtoint i64* %cloptr143640 to i64                                    ; closure cast; i64* -> i64
  %cloptr143648 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143649 = getelementptr inbounds i64, i64* %cloptr143648, i64 0                ; &cloptr143648[0]
  %f143650 = ptrtoint void(i64,i64,i64)* @lam143154 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143650, i64* %eptr143649                                               ; store fptr
  %arg142259 = ptrtoint i64* %cloptr143648 to i64                                    ; closure cast; i64* -> i64
  %cloptr143651 = inttoptr i64 %G0u$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143651)                                       ; assert function application
  %i0ptr143652 = getelementptr inbounds i64, i64* %cloptr143651, i64 0               ; &cloptr143651[0]
  %f143654 = load i64, i64* %i0ptr143652, align 8                                    ; load; *i0ptr143652
  %fptr143653 = inttoptr i64 %f143654 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143653(i64 %G0u$Ycmb, i64 %arg142260, i64 %arg142259); tail call
  ret void
}


define void @lam143539(i64 %env143540, i64 %_95142059, i64 %Ovw$_37foldl1) {
  %envptr143655 = inttoptr i64 %env143540 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143656 = getelementptr inbounds i64, i64* %envptr143655, i64 5              ; &envptr143655[5]
  %Kcc$_37map1 = load i64, i64* %envptr143656, align 8                               ; load; *envptr143656
  %envptr143657 = inttoptr i64 %env143540 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143658 = getelementptr inbounds i64, i64* %envptr143657, i64 4              ; &envptr143657[4]
  %DVf$_37foldr1 = load i64, i64* %envptr143658, align 8                             ; load; *envptr143658
  %envptr143659 = inttoptr i64 %env143540 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143660 = getelementptr inbounds i64, i64* %envptr143659, i64 3              ; &envptr143659[3]
  %G0u$Ycmb = load i64, i64* %envptr143660, align 8                                  ; load; *envptr143660
  %envptr143661 = inttoptr i64 %env143540 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143662 = getelementptr inbounds i64, i64* %envptr143661, i64 2              ; &envptr143661[2]
  %RDB$_37length = load i64, i64* %envptr143662, align 8                             ; load; *envptr143662
  %envptr143663 = inttoptr i64 %env143540 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143664 = getelementptr inbounds i64, i64* %envptr143663, i64 1              ; &envptr143663[1]
  %GSR$_37take = load i64, i64* %envptr143664, align 8                               ; load; *envptr143664
  %cloptr143665 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143667 = getelementptr inbounds i64, i64* %cloptr143665, i64 1                ; &eptr143667[1]
  store i64 %Ovw$_37foldl1, i64* %eptr143667                                         ; *eptr143667 = %Ovw$_37foldl1
  %eptr143666 = getelementptr inbounds i64, i64* %cloptr143665, i64 0                ; &cloptr143665[0]
  %f143668 = ptrtoint void(i64,i64,i64)* @lam143537 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143668, i64* %eptr143666                                               ; store fptr
  %DIG$_37last = ptrtoint i64* %cloptr143665 to i64                                  ; closure cast; i64* -> i64
  %cloptr143669 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143671 = getelementptr inbounds i64, i64* %cloptr143669, i64 1                ; &eptr143671[1]
  %eptr143672 = getelementptr inbounds i64, i64* %cloptr143669, i64 2                ; &eptr143672[2]
  store i64 %GSR$_37take, i64* %eptr143671                                           ; *eptr143671 = %GSR$_37take
  store i64 %RDB$_37length, i64* %eptr143672                                         ; *eptr143672 = %RDB$_37length
  %eptr143670 = getelementptr inbounds i64, i64* %cloptr143669, i64 0                ; &cloptr143669[0]
  %f143673 = ptrtoint void(i64,i64,i64,i64)* @lam143531 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143673, i64* %eptr143670                                               ; store fptr
  %Lgw$_37drop_45right = ptrtoint i64* %cloptr143669 to i64                          ; closure cast; i64* -> i64
  %cloptr143674 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr143676 = getelementptr inbounds i64, i64* %cloptr143674, i64 1                ; &eptr143676[1]
  %eptr143677 = getelementptr inbounds i64, i64* %cloptr143674, i64 2                ; &eptr143677[2]
  %eptr143678 = getelementptr inbounds i64, i64* %cloptr143674, i64 3                ; &eptr143678[3]
  %eptr143679 = getelementptr inbounds i64, i64* %cloptr143674, i64 4                ; &eptr143679[4]
  %eptr143680 = getelementptr inbounds i64, i64* %cloptr143674, i64 5                ; &eptr143680[5]
  %eptr143681 = getelementptr inbounds i64, i64* %cloptr143674, i64 6                ; &eptr143681[6]
  store i64 %DIG$_37last, i64* %eptr143676                                           ; *eptr143676 = %DIG$_37last
  store i64 %Lgw$_37drop_45right, i64* %eptr143677                                   ; *eptr143677 = %Lgw$_37drop_45right
  store i64 %RDB$_37length, i64* %eptr143678                                         ; *eptr143678 = %RDB$_37length
  store i64 %Ovw$_37foldl1, i64* %eptr143679                                         ; *eptr143679 = %Ovw$_37foldl1
  store i64 %G0u$Ycmb, i64* %eptr143680                                              ; *eptr143680 = %G0u$Ycmb
  store i64 %DVf$_37foldr1, i64* %eptr143681                                         ; *eptr143681 = %DVf$_37foldr1
  %eptr143675 = getelementptr inbounds i64, i64* %cloptr143674, i64 0                ; &cloptr143674[0]
  %f143682 = ptrtoint void(i64,i64,i64)* @lam143527 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143682, i64* %eptr143675                                               ; store fptr
  %arg142280 = ptrtoint i64* %cloptr143674 to i64                                    ; closure cast; i64* -> i64
  %cloptr143683 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143685 = getelementptr inbounds i64, i64* %cloptr143683, i64 1                ; &eptr143685[1]
  %eptr143686 = getelementptr inbounds i64, i64* %cloptr143683, i64 2                ; &eptr143686[2]
  store i64 %DVf$_37foldr1, i64* %eptr143685                                         ; *eptr143685 = %DVf$_37foldr1
  store i64 %Kcc$_37map1, i64* %eptr143686                                           ; *eptr143686 = %Kcc$_37map1
  %eptr143684 = getelementptr inbounds i64, i64* %cloptr143683, i64 0                ; &cloptr143683[0]
  %f143687 = ptrtoint void(i64,i64,i64)* @lam143191 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143687, i64* %eptr143684                                               ; store fptr
  %arg142279 = ptrtoint i64* %cloptr143683 to i64                                    ; closure cast; i64* -> i64
  %cloptr143688 = inttoptr i64 %G0u$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143688)                                       ; assert function application
  %i0ptr143689 = getelementptr inbounds i64, i64* %cloptr143688, i64 0               ; &cloptr143688[0]
  %f143691 = load i64, i64* %i0ptr143689, align 8                                    ; load; *i0ptr143689
  %fptr143690 = inttoptr i64 %f143691 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143690(i64 %G0u$Ycmb, i64 %arg142280, i64 %arg142279); tail call
  ret void
}


define void @lam143537(i64 %env143538, i64 %cont142060, i64 %cWt$lst) {
  %envptr143692 = inttoptr i64 %env143538 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143693 = getelementptr inbounds i64, i64* %envptr143692, i64 1              ; &envptr143692[1]
  %Ovw$_37foldl1 = load i64, i64* %envptr143693, align 8                             ; load; *envptr143693
  %cloptr143694 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143695 = getelementptr inbounds i64, i64* %cloptr143694, i64 0                ; &cloptr143694[0]
  %f143696 = ptrtoint void(i64,i64,i64,i64)* @lam143535 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143696, i64* %eptr143695                                               ; store fptr
  %arg142264 = ptrtoint i64* %cloptr143694 to i64                                    ; closure cast; i64* -> i64
  %arg142263 = add i64 0, 0                                                          ; quoted ()
  %cloptr143697 = inttoptr i64 %Ovw$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143697)                                       ; assert function application
  %i0ptr143698 = getelementptr inbounds i64, i64* %cloptr143697, i64 0               ; &cloptr143697[0]
  %f143700 = load i64, i64* %i0ptr143698, align 8                                    ; load; *i0ptr143698
  %fptr143699 = inttoptr i64 %f143700 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143699(i64 %Ovw$_37foldl1, i64 %cont142060, i64 %arg142264, i64 %arg142263, i64 %cWt$lst); tail call
  ret void
}


define void @lam143535(i64 %env143536, i64 %cont142061, i64 %rdJ$x, i64 %fjH$y) {
  %arg142268 = add i64 0, 0                                                          ; quoted ()
  %cloptr143701 = inttoptr i64 %cont142061 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143701)                                       ; assert function application
  %i0ptr143702 = getelementptr inbounds i64, i64* %cloptr143701, i64 0               ; &cloptr143701[0]
  %f143704 = load i64, i64* %i0ptr143702, align 8                                    ; load; *i0ptr143702
  %fptr143703 = inttoptr i64 %f143704 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143703(i64 %cont142061, i64 %arg142268, i64 %rdJ$x) ; tail call
  ret void
}


define void @lam143531(i64 %env143532, i64 %cont142062, i64 %VvE$lst, i64 %O1f$n) {
  %envptr143705 = inttoptr i64 %env143532 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143706 = getelementptr inbounds i64, i64* %envptr143705, i64 2              ; &envptr143705[2]
  %RDB$_37length = load i64, i64* %envptr143706, align 8                             ; load; *envptr143706
  %envptr143707 = inttoptr i64 %env143532 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143708 = getelementptr inbounds i64, i64* %envptr143707, i64 1              ; &envptr143707[1]
  %GSR$_37take = load i64, i64* %envptr143708, align 8                               ; load; *envptr143708
  %cloptr143709 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143711 = getelementptr inbounds i64, i64* %cloptr143709, i64 1                ; &eptr143711[1]
  %eptr143712 = getelementptr inbounds i64, i64* %cloptr143709, i64 2                ; &eptr143712[2]
  %eptr143713 = getelementptr inbounds i64, i64* %cloptr143709, i64 3                ; &eptr143713[3]
  %eptr143714 = getelementptr inbounds i64, i64* %cloptr143709, i64 4                ; &eptr143714[4]
  store i64 %GSR$_37take, i64* %eptr143711                                           ; *eptr143711 = %GSR$_37take
  store i64 %O1f$n, i64* %eptr143712                                                 ; *eptr143712 = %O1f$n
  store i64 %VvE$lst, i64* %eptr143713                                               ; *eptr143713 = %VvE$lst
  store i64 %cont142062, i64* %eptr143714                                            ; *eptr143714 = %cont142062
  %eptr143710 = getelementptr inbounds i64, i64* %cloptr143709, i64 0                ; &cloptr143709[0]
  %f143715 = ptrtoint void(i64,i64,i64)* @lam143529 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143715, i64* %eptr143710                                               ; store fptr
  %arg142271 = ptrtoint i64* %cloptr143709 to i64                                    ; closure cast; i64* -> i64
  %cloptr143716 = inttoptr i64 %RDB$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143716)                                       ; assert function application
  %i0ptr143717 = getelementptr inbounds i64, i64* %cloptr143716, i64 0               ; &cloptr143716[0]
  %f143719 = load i64, i64* %i0ptr143717, align 8                                    ; load; *i0ptr143717
  %fptr143718 = inttoptr i64 %f143719 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143718(i64 %RDB$_37length, i64 %arg142271, i64 %VvE$lst); tail call
  ret void
}


define void @lam143529(i64 %env143530, i64 %_95142063, i64 %a141957) {
  %envptr143720 = inttoptr i64 %env143530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143721 = getelementptr inbounds i64, i64* %envptr143720, i64 4              ; &envptr143720[4]
  %cont142062 = load i64, i64* %envptr143721, align 8                                ; load; *envptr143721
  %envptr143722 = inttoptr i64 %env143530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143723 = getelementptr inbounds i64, i64* %envptr143722, i64 3              ; &envptr143722[3]
  %VvE$lst = load i64, i64* %envptr143723, align 8                                   ; load; *envptr143723
  %envptr143724 = inttoptr i64 %env143530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143725 = getelementptr inbounds i64, i64* %envptr143724, i64 2              ; &envptr143724[2]
  %O1f$n = load i64, i64* %envptr143725, align 8                                     ; load; *envptr143725
  %envptr143726 = inttoptr i64 %env143530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143727 = getelementptr inbounds i64, i64* %envptr143726, i64 1              ; &envptr143726[1]
  %GSR$_37take = load i64, i64* %envptr143727, align 8                               ; load; *envptr143727
  %a141958 = call i64 @prim__45(i64 %a141957, i64 %O1f$n)                            ; call prim__45
  %cloptr143728 = inttoptr i64 %GSR$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143728)                                       ; assert function application
  %i0ptr143729 = getelementptr inbounds i64, i64* %cloptr143728, i64 0               ; &cloptr143728[0]
  %f143731 = load i64, i64* %i0ptr143729, align 8                                    ; load; *i0ptr143729
  %fptr143730 = inttoptr i64 %f143731 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143730(i64 %GSR$_37take, i64 %cont142062, i64 %VvE$lst, i64 %a141958); tail call
  ret void
}


define void @lam143527(i64 %env143528, i64 %_95142064, i64 %QRr$_37foldr) {
  %envptr143732 = inttoptr i64 %env143528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143733 = getelementptr inbounds i64, i64* %envptr143732, i64 6              ; &envptr143732[6]
  %DVf$_37foldr1 = load i64, i64* %envptr143733, align 8                             ; load; *envptr143733
  %envptr143734 = inttoptr i64 %env143528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143735 = getelementptr inbounds i64, i64* %envptr143734, i64 5              ; &envptr143734[5]
  %G0u$Ycmb = load i64, i64* %envptr143735, align 8                                  ; load; *envptr143735
  %envptr143736 = inttoptr i64 %env143528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143737 = getelementptr inbounds i64, i64* %envptr143736, i64 4              ; &envptr143736[4]
  %Ovw$_37foldl1 = load i64, i64* %envptr143737, align 8                             ; load; *envptr143737
  %envptr143738 = inttoptr i64 %env143528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143739 = getelementptr inbounds i64, i64* %envptr143738, i64 3              ; &envptr143738[3]
  %RDB$_37length = load i64, i64* %envptr143739, align 8                             ; load; *envptr143739
  %envptr143740 = inttoptr i64 %env143528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143741 = getelementptr inbounds i64, i64* %envptr143740, i64 2              ; &envptr143740[2]
  %Lgw$_37drop_45right = load i64, i64* %envptr143741, align 8                       ; load; *envptr143741
  %envptr143742 = inttoptr i64 %env143528 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143743 = getelementptr inbounds i64, i64* %envptr143742, i64 1              ; &envptr143742[1]
  %DIG$_37last = load i64, i64* %envptr143743, align 8                               ; load; *envptr143743
  %cloptr143744 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143746 = getelementptr inbounds i64, i64* %cloptr143744, i64 1                ; &eptr143746[1]
  store i64 %DVf$_37foldr1, i64* %eptr143746                                         ; *eptr143746 = %DVf$_37foldr1
  %eptr143745 = getelementptr inbounds i64, i64* %cloptr143744, i64 0                ; &cloptr143744[0]
  %f143747 = ptrtoint void(i64,i64,i64,i64)* @lam143525 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143747, i64* %eptr143745                                               ; store fptr
  %URx$_37map1 = ptrtoint i64* %cloptr143744 to i64                                  ; closure cast; i64* -> i64
  %cloptr143748 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143750 = getelementptr inbounds i64, i64* %cloptr143748, i64 1                ; &eptr143750[1]
  %eptr143751 = getelementptr inbounds i64, i64* %cloptr143748, i64 2                ; &eptr143751[2]
  %eptr143752 = getelementptr inbounds i64, i64* %cloptr143748, i64 3                ; &eptr143752[3]
  store i64 %QRr$_37foldr, i64* %eptr143750                                          ; *eptr143750 = %QRr$_37foldr
  store i64 %DIG$_37last, i64* %eptr143751                                           ; *eptr143751 = %DIG$_37last
  store i64 %Lgw$_37drop_45right, i64* %eptr143752                                   ; *eptr143752 = %Lgw$_37drop_45right
  %eptr143749 = getelementptr inbounds i64, i64* %cloptr143748, i64 0                ; &cloptr143748[0]
  %f143753 = ptrtoint void(i64,i64)* @lam143517 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143753, i64* %eptr143749                                               ; store fptr
  %Fon$_37map = ptrtoint i64* %cloptr143748 to i64                                   ; closure cast; i64* -> i64
  %cloptr143754 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143756 = getelementptr inbounds i64, i64* %cloptr143754, i64 1                ; &eptr143756[1]
  %eptr143757 = getelementptr inbounds i64, i64* %cloptr143754, i64 2                ; &eptr143757[2]
  store i64 %RDB$_37length, i64* %eptr143756                                         ; *eptr143756 = %RDB$_37length
  store i64 %Ovw$_37foldl1, i64* %eptr143757                                         ; *eptr143757 = %Ovw$_37foldl1
  %eptr143755 = getelementptr inbounds i64, i64* %cloptr143754, i64 0                ; &cloptr143754[0]
  %f143758 = ptrtoint void(i64,i64,i64)* @lam143504 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143758, i64* %eptr143755                                               ; store fptr
  %arg142322 = ptrtoint i64* %cloptr143754 to i64                                    ; closure cast; i64* -> i64
  %cloptr143759 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143761 = getelementptr inbounds i64, i64* %cloptr143759, i64 1                ; &eptr143761[1]
  %eptr143762 = getelementptr inbounds i64, i64* %cloptr143759, i64 2                ; &eptr143762[2]
  %eptr143763 = getelementptr inbounds i64, i64* %cloptr143759, i64 3                ; &eptr143763[3]
  store i64 %QRr$_37foldr, i64* %eptr143761                                          ; *eptr143761 = %QRr$_37foldr
  store i64 %DVf$_37foldr1, i64* %eptr143762                                         ; *eptr143762 = %DVf$_37foldr1
  store i64 %URx$_37map1, i64* %eptr143763                                           ; *eptr143763 = %URx$_37map1
  %eptr143760 = getelementptr inbounds i64, i64* %cloptr143759, i64 0                ; &cloptr143759[0]
  %f143764 = ptrtoint void(i64,i64,i64)* @lam143228 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143764, i64* %eptr143760                                               ; store fptr
  %arg142321 = ptrtoint i64* %cloptr143759 to i64                                    ; closure cast; i64* -> i64
  %cloptr143765 = inttoptr i64 %G0u$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143765)                                       ; assert function application
  %i0ptr143766 = getelementptr inbounds i64, i64* %cloptr143765, i64 0               ; &cloptr143765[0]
  %f143768 = load i64, i64* %i0ptr143766, align 8                                    ; load; *i0ptr143766
  %fptr143767 = inttoptr i64 %f143768 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143767(i64 %G0u$Ycmb, i64 %arg142322, i64 %arg142321); tail call
  ret void
}


define void @lam143525(i64 %env143526, i64 %cont142065, i64 %v8M$f, i64 %VkL$lst) {
  %envptr143769 = inttoptr i64 %env143526 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143770 = getelementptr inbounds i64, i64* %envptr143769, i64 1              ; &envptr143769[1]
  %DVf$_37foldr1 = load i64, i64* %envptr143770, align 8                             ; load; *envptr143770
  %cloptr143771 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143773 = getelementptr inbounds i64, i64* %cloptr143771, i64 1                ; &eptr143773[1]
  store i64 %v8M$f, i64* %eptr143773                                                 ; *eptr143773 = %v8M$f
  %eptr143772 = getelementptr inbounds i64, i64* %cloptr143771, i64 0                ; &cloptr143771[0]
  %f143774 = ptrtoint void(i64,i64,i64,i64)* @lam143523 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143774, i64* %eptr143772                                               ; store fptr
  %arg142284 = ptrtoint i64* %cloptr143771 to i64                                    ; closure cast; i64* -> i64
  %arg142283 = add i64 0, 0                                                          ; quoted ()
  %cloptr143775 = inttoptr i64 %DVf$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143775)                                       ; assert function application
  %i0ptr143776 = getelementptr inbounds i64, i64* %cloptr143775, i64 0               ; &cloptr143775[0]
  %f143778 = load i64, i64* %i0ptr143776, align 8                                    ; load; *i0ptr143776
  %fptr143777 = inttoptr i64 %f143778 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143777(i64 %DVf$_37foldr1, i64 %cont142065, i64 %arg142284, i64 %arg142283, i64 %VkL$lst); tail call
  ret void
}


define void @lam143523(i64 %env143524, i64 %cont142066, i64 %Maj$v, i64 %XYp$r) {
  %envptr143779 = inttoptr i64 %env143524 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143780 = getelementptr inbounds i64, i64* %envptr143779, i64 1              ; &envptr143779[1]
  %v8M$f = load i64, i64* %envptr143780, align 8                                     ; load; *envptr143780
  %cloptr143781 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143783 = getelementptr inbounds i64, i64* %cloptr143781, i64 1                ; &eptr143783[1]
  %eptr143784 = getelementptr inbounds i64, i64* %cloptr143781, i64 2                ; &eptr143784[2]
  store i64 %XYp$r, i64* %eptr143783                                                 ; *eptr143783 = %XYp$r
  store i64 %cont142066, i64* %eptr143784                                            ; *eptr143784 = %cont142066
  %eptr143782 = getelementptr inbounds i64, i64* %cloptr143781, i64 0                ; &cloptr143781[0]
  %f143785 = ptrtoint void(i64,i64,i64)* @lam143521 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143785, i64* %eptr143782                                               ; store fptr
  %arg142288 = ptrtoint i64* %cloptr143781 to i64                                    ; closure cast; i64* -> i64
  %cloptr143786 = inttoptr i64 %v8M$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143786)                                       ; assert function application
  %i0ptr143787 = getelementptr inbounds i64, i64* %cloptr143786, i64 0               ; &cloptr143786[0]
  %f143789 = load i64, i64* %i0ptr143787, align 8                                    ; load; *i0ptr143787
  %fptr143788 = inttoptr i64 %f143789 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143788(i64 %v8M$f, i64 %arg142288, i64 %Maj$v)      ; tail call
  ret void
}


define void @lam143521(i64 %env143522, i64 %_95142067, i64 %a141967) {
  %envptr143790 = inttoptr i64 %env143522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143791 = getelementptr inbounds i64, i64* %envptr143790, i64 2              ; &envptr143790[2]
  %cont142066 = load i64, i64* %envptr143791, align 8                                ; load; *envptr143791
  %envptr143792 = inttoptr i64 %env143522 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143793 = getelementptr inbounds i64, i64* %envptr143792, i64 1              ; &envptr143792[1]
  %XYp$r = load i64, i64* %envptr143793, align 8                                     ; load; *envptr143793
  %retprim142068 = call i64 @prim_cons(i64 %a141967, i64 %XYp$r)                     ; call prim_cons
  %arg142293 = add i64 0, 0                                                          ; quoted ()
  %cloptr143794 = inttoptr i64 %cont142066 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143794)                                       ; assert function application
  %i0ptr143795 = getelementptr inbounds i64, i64* %cloptr143794, i64 0               ; &cloptr143794[0]
  %f143797 = load i64, i64* %i0ptr143795, align 8                                    ; load; *i0ptr143795
  %fptr143796 = inttoptr i64 %f143797 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143796(i64 %cont142066, i64 %arg142293, i64 %retprim142068); tail call
  ret void
}


define void @lam143517(i64 %env143518, i64 %R73$args142070) {
  %envptr143798 = inttoptr i64 %env143518 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143799 = getelementptr inbounds i64, i64* %envptr143798, i64 3              ; &envptr143798[3]
  %Lgw$_37drop_45right = load i64, i64* %envptr143799, align 8                       ; load; *envptr143799
  %envptr143800 = inttoptr i64 %env143518 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143801 = getelementptr inbounds i64, i64* %envptr143800, i64 2              ; &envptr143800[2]
  %DIG$_37last = load i64, i64* %envptr143801, align 8                               ; load; *envptr143801
  %envptr143802 = inttoptr i64 %env143518 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143803 = getelementptr inbounds i64, i64* %envptr143802, i64 1              ; &envptr143802[1]
  %QRr$_37foldr = load i64, i64* %envptr143803, align 8                              ; load; *envptr143803
  %cont142069 = call i64 @prim_car(i64 %R73$args142070)                              ; call prim_car
  %R73$args = call i64 @prim_cdr(i64 %R73$args142070)                                ; call prim_cdr
  %Cgn$f = call i64 @prim_car(i64 %R73$args)                                         ; call prim_car
  %G9d$lsts = call i64 @prim_cdr(i64 %R73$args)                                      ; call prim_cdr
  %arg142300 = add i64 0, 0                                                          ; quoted ()
  %a141971 = call i64 @prim_cons(i64 %arg142300, i64 %G9d$lsts)                      ; call prim_cons
  %cloptr143804 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143806 = getelementptr inbounds i64, i64* %cloptr143804, i64 1                ; &eptr143806[1]
  %eptr143807 = getelementptr inbounds i64, i64* %cloptr143804, i64 2                ; &eptr143807[2]
  %eptr143808 = getelementptr inbounds i64, i64* %cloptr143804, i64 3                ; &eptr143808[3]
  store i64 %DIG$_37last, i64* %eptr143806                                           ; *eptr143806 = %DIG$_37last
  store i64 %Cgn$f, i64* %eptr143807                                                 ; *eptr143807 = %Cgn$f
  store i64 %Lgw$_37drop_45right, i64* %eptr143808                                   ; *eptr143808 = %Lgw$_37drop_45right
  %eptr143805 = getelementptr inbounds i64, i64* %cloptr143804, i64 0                ; &cloptr143804[0]
  %f143809 = ptrtoint void(i64,i64)* @lam143514 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143809, i64* %eptr143805                                               ; store fptr
  %arg142302 = ptrtoint i64* %cloptr143804 to i64                                    ; closure cast; i64* -> i64
  %a141972 = call i64 @prim_cons(i64 %arg142302, i64 %a141971)                       ; call prim_cons
  %cps_45lst142078 = call i64 @prim_cons(i64 %cont142069, i64 %a141972)              ; call prim_cons
  %cloptr143810 = inttoptr i64 %QRr$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143810)                                       ; assert function application
  %i0ptr143811 = getelementptr inbounds i64, i64* %cloptr143810, i64 0               ; &cloptr143810[0]
  %f143813 = load i64, i64* %i0ptr143811, align 8                                    ; load; *i0ptr143811
  %fptr143812 = inttoptr i64 %f143813 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143812(i64 %QRr$_37foldr, i64 %cps_45lst142078)     ; tail call
  ret void
}


define void @lam143514(i64 %env143515, i64 %ScK$fargs142072) {
  %envptr143814 = inttoptr i64 %env143515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143815 = getelementptr inbounds i64, i64* %envptr143814, i64 3              ; &envptr143814[3]
  %Lgw$_37drop_45right = load i64, i64* %envptr143815, align 8                       ; load; *envptr143815
  %envptr143816 = inttoptr i64 %env143515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143817 = getelementptr inbounds i64, i64* %envptr143816, i64 2              ; &envptr143816[2]
  %Cgn$f = load i64, i64* %envptr143817, align 8                                     ; load; *envptr143817
  %envptr143818 = inttoptr i64 %env143515 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143819 = getelementptr inbounds i64, i64* %envptr143818, i64 1              ; &envptr143818[1]
  %DIG$_37last = load i64, i64* %envptr143819, align 8                               ; load; *envptr143819
  %cont142071 = call i64 @prim_car(i64 %ScK$fargs142072)                             ; call prim_car
  %ScK$fargs = call i64 @prim_cdr(i64 %ScK$fargs142072)                              ; call prim_cdr
  %cloptr143820 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143822 = getelementptr inbounds i64, i64* %cloptr143820, i64 1                ; &eptr143822[1]
  %eptr143823 = getelementptr inbounds i64, i64* %cloptr143820, i64 2                ; &eptr143823[2]
  %eptr143824 = getelementptr inbounds i64, i64* %cloptr143820, i64 3                ; &eptr143824[3]
  %eptr143825 = getelementptr inbounds i64, i64* %cloptr143820, i64 4                ; &eptr143825[4]
  store i64 %cont142071, i64* %eptr143822                                            ; *eptr143822 = %cont142071
  store i64 %DIG$_37last, i64* %eptr143823                                           ; *eptr143823 = %DIG$_37last
  store i64 %Cgn$f, i64* %eptr143824                                                 ; *eptr143824 = %Cgn$f
  store i64 %ScK$fargs, i64* %eptr143825                                             ; *eptr143825 = %ScK$fargs
  %eptr143821 = getelementptr inbounds i64, i64* %cloptr143820, i64 0                ; &cloptr143820[0]
  %f143826 = ptrtoint void(i64,i64,i64)* @lam143512 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143826, i64* %eptr143821                                               ; store fptr
  %arg142307 = ptrtoint i64* %cloptr143820 to i64                                    ; closure cast; i64* -> i64
  %arg142305 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr143827 = inttoptr i64 %Lgw$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143827)                                       ; assert function application
  %i0ptr143828 = getelementptr inbounds i64, i64* %cloptr143827, i64 0               ; &cloptr143827[0]
  %f143830 = load i64, i64* %i0ptr143828, align 8                                    ; load; *i0ptr143828
  %fptr143829 = inttoptr i64 %f143830 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143829(i64 %Lgw$_37drop_45right, i64 %arg142307, i64 %ScK$fargs, i64 %arg142305); tail call
  ret void
}


define void @lam143512(i64 %env143513, i64 %_95142073, i64 %a141968) {
  %envptr143831 = inttoptr i64 %env143513 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143832 = getelementptr inbounds i64, i64* %envptr143831, i64 4              ; &envptr143831[4]
  %ScK$fargs = load i64, i64* %envptr143832, align 8                                 ; load; *envptr143832
  %envptr143833 = inttoptr i64 %env143513 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143834 = getelementptr inbounds i64, i64* %envptr143833, i64 3              ; &envptr143833[3]
  %Cgn$f = load i64, i64* %envptr143834, align 8                                     ; load; *envptr143834
  %envptr143835 = inttoptr i64 %env143513 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143836 = getelementptr inbounds i64, i64* %envptr143835, i64 2              ; &envptr143835[2]
  %DIG$_37last = load i64, i64* %envptr143836, align 8                               ; load; *envptr143836
  %envptr143837 = inttoptr i64 %env143513 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143838 = getelementptr inbounds i64, i64* %envptr143837, i64 1              ; &envptr143837[1]
  %cont142071 = load i64, i64* %envptr143838, align 8                                ; load; *envptr143838
  %cloptr143839 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143841 = getelementptr inbounds i64, i64* %cloptr143839, i64 1                ; &eptr143841[1]
  %eptr143842 = getelementptr inbounds i64, i64* %cloptr143839, i64 2                ; &eptr143842[2]
  %eptr143843 = getelementptr inbounds i64, i64* %cloptr143839, i64 3                ; &eptr143843[3]
  store i64 %cont142071, i64* %eptr143841                                            ; *eptr143841 = %cont142071
  store i64 %DIG$_37last, i64* %eptr143842                                           ; *eptr143842 = %DIG$_37last
  store i64 %ScK$fargs, i64* %eptr143843                                             ; *eptr143843 = %ScK$fargs
  %eptr143840 = getelementptr inbounds i64, i64* %cloptr143839, i64 0                ; &cloptr143839[0]
  %f143844 = ptrtoint void(i64,i64,i64)* @lam143510 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143844, i64* %eptr143840                                               ; store fptr
  %arg142310 = ptrtoint i64* %cloptr143839 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142077 = call i64 @prim_cons(i64 %arg142310, i64 %a141968)               ; call prim_cons
  %cloptr143845 = inttoptr i64 %Cgn$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143845)                                       ; assert function application
  %i0ptr143846 = getelementptr inbounds i64, i64* %cloptr143845, i64 0               ; &cloptr143845[0]
  %f143848 = load i64, i64* %i0ptr143846, align 8                                    ; load; *i0ptr143846
  %fptr143847 = inttoptr i64 %f143848 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143847(i64 %Cgn$f, i64 %cps_45lst142077)            ; tail call
  ret void
}


define void @lam143510(i64 %env143511, i64 %_95142074, i64 %a141969) {
  %envptr143849 = inttoptr i64 %env143511 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143850 = getelementptr inbounds i64, i64* %envptr143849, i64 3              ; &envptr143849[3]
  %ScK$fargs = load i64, i64* %envptr143850, align 8                                 ; load; *envptr143850
  %envptr143851 = inttoptr i64 %env143511 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143852 = getelementptr inbounds i64, i64* %envptr143851, i64 2              ; &envptr143851[2]
  %DIG$_37last = load i64, i64* %envptr143852, align 8                               ; load; *envptr143852
  %envptr143853 = inttoptr i64 %env143511 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143854 = getelementptr inbounds i64, i64* %envptr143853, i64 1              ; &envptr143853[1]
  %cont142071 = load i64, i64* %envptr143854, align 8                                ; load; *envptr143854
  %cloptr143855 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143857 = getelementptr inbounds i64, i64* %cloptr143855, i64 1                ; &eptr143857[1]
  %eptr143858 = getelementptr inbounds i64, i64* %cloptr143855, i64 2                ; &eptr143858[2]
  store i64 %cont142071, i64* %eptr143857                                            ; *eptr143857 = %cont142071
  store i64 %a141969, i64* %eptr143858                                               ; *eptr143858 = %a141969
  %eptr143856 = getelementptr inbounds i64, i64* %cloptr143855, i64 0                ; &cloptr143855[0]
  %f143859 = ptrtoint void(i64,i64,i64)* @lam143508 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143859, i64* %eptr143856                                               ; store fptr
  %arg142312 = ptrtoint i64* %cloptr143855 to i64                                    ; closure cast; i64* -> i64
  %cloptr143860 = inttoptr i64 %DIG$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143860)                                       ; assert function application
  %i0ptr143861 = getelementptr inbounds i64, i64* %cloptr143860, i64 0               ; &cloptr143860[0]
  %f143863 = load i64, i64* %i0ptr143861, align 8                                    ; load; *i0ptr143861
  %fptr143862 = inttoptr i64 %f143863 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143862(i64 %DIG$_37last, i64 %arg142312, i64 %ScK$fargs); tail call
  ret void
}


define void @lam143508(i64 %env143509, i64 %_95142075, i64 %a141970) {
  %envptr143864 = inttoptr i64 %env143509 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143865 = getelementptr inbounds i64, i64* %envptr143864, i64 2              ; &envptr143864[2]
  %a141969 = load i64, i64* %envptr143865, align 8                                   ; load; *envptr143865
  %envptr143866 = inttoptr i64 %env143509 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143867 = getelementptr inbounds i64, i64* %envptr143866, i64 1              ; &envptr143866[1]
  %cont142071 = load i64, i64* %envptr143867, align 8                                ; load; *envptr143867
  %retprim142076 = call i64 @prim_cons(i64 %a141969, i64 %a141970)                   ; call prim_cons
  %arg142317 = add i64 0, 0                                                          ; quoted ()
  %cloptr143868 = inttoptr i64 %cont142071 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143868)                                       ; assert function application
  %i0ptr143869 = getelementptr inbounds i64, i64* %cloptr143868, i64 0               ; &cloptr143868[0]
  %f143871 = load i64, i64* %i0ptr143869, align 8                                    ; load; *i0ptr143869
  %fptr143870 = inttoptr i64 %f143871 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143870(i64 %cont142071, i64 %arg142317, i64 %retprim142076); tail call
  ret void
}


define void @lam143504(i64 %env143505, i64 %_95142079, i64 %Y2m$_37foldl) {
  %envptr143872 = inttoptr i64 %env143505 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143873 = getelementptr inbounds i64, i64* %envptr143872, i64 2              ; &envptr143872[2]
  %Ovw$_37foldl1 = load i64, i64* %envptr143873, align 8                             ; load; *envptr143873
  %envptr143874 = inttoptr i64 %env143505 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143875 = getelementptr inbounds i64, i64* %envptr143874, i64 1              ; &envptr143874[1]
  %RDB$_37length = load i64, i64* %envptr143875, align 8                             ; load; *envptr143875
  %cloptr143876 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143877 = getelementptr inbounds i64, i64* %cloptr143876, i64 0                ; &cloptr143876[0]
  %f143878 = ptrtoint void(i64,i64,i64,i64)* @lam143502 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143878, i64* %eptr143877                                               ; store fptr
  %Y2T$_37_62 = ptrtoint i64* %cloptr143876 to i64                                   ; closure cast; i64* -> i64
  %cloptr143879 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143880 = getelementptr inbounds i64, i64* %cloptr143879, i64 0                ; &cloptr143879[0]
  %f143881 = ptrtoint void(i64,i64,i64,i64)* @lam143499 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143881, i64* %eptr143880                                               ; store fptr
  %vgf$_37_62_61 = ptrtoint i64* %cloptr143879 to i64                                ; closure cast; i64* -> i64
  %arg142337 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg142336 = add i64 0, 0                                                          ; quoted ()
  %LRW$_37append = call i64 @prim_make_45vector(i64 %arg142337, i64 %arg142336)      ; call prim_make_45vector
  %arg142339 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr143882 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143884 = getelementptr inbounds i64, i64* %cloptr143882, i64 1                ; &eptr143884[1]
  store i64 %LRW$_37append, i64* %eptr143884                                         ; *eptr143884 = %LRW$_37append
  %eptr143883 = getelementptr inbounds i64, i64* %cloptr143882, i64 0                ; &cloptr143882[0]
  %f143885 = ptrtoint void(i64,i64,i64,i64)* @lam143493 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143885, i64* %eptr143883                                               ; store fptr
  %arg142338 = ptrtoint i64* %cloptr143882 to i64                                    ; closure cast; i64* -> i64
  %iqJ$_950 = call i64 @prim_vector_45set_33(i64 %LRW$_37append, i64 %arg142339, i64 %arg142338); call prim_vector_45set_33
  %arg142358 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142169 = call i64 @prim_vector_45ref(i64 %LRW$_37append, i64 %arg142358)   ; call prim_vector_45ref
  %cloptr143886 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143888 = getelementptr inbounds i64, i64* %cloptr143886, i64 1                ; &eptr143888[1]
  %eptr143889 = getelementptr inbounds i64, i64* %cloptr143886, i64 2                ; &eptr143889[2]
  %eptr143890 = getelementptr inbounds i64, i64* %cloptr143886, i64 3                ; &eptr143890[3]
  store i64 %RDB$_37length, i64* %eptr143888                                         ; *eptr143888 = %RDB$_37length
  store i64 %Ovw$_37foldl1, i64* %eptr143889                                         ; *eptr143889 = %Ovw$_37foldl1
  store i64 %Y2T$_37_62, i64* %eptr143890                                            ; *eptr143890 = %Y2T$_37_62
  %eptr143887 = getelementptr inbounds i64, i64* %cloptr143886, i64 0                ; &cloptr143886[0]
  %f143891 = ptrtoint void(i64,i64,i64)* @lam143485 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143891, i64* %eptr143887                                               ; store fptr
  %arg142362 = ptrtoint i64* %cloptr143886 to i64                                    ; closure cast; i64* -> i64
  %arg142361 = add i64 0, 0                                                          ; quoted ()
  %cloptr143892 = inttoptr i64 %arg142362 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143892)                                       ; assert function application
  %i0ptr143893 = getelementptr inbounds i64, i64* %cloptr143892, i64 0               ; &cloptr143892[0]
  %f143895 = load i64, i64* %i0ptr143893, align 8                                    ; load; *i0ptr143893
  %fptr143894 = inttoptr i64 %f143895 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143894(i64 %arg142362, i64 %arg142361, i64 %retprim142169); tail call
  ret void
}


define void @lam143502(i64 %env143503, i64 %cont142080, i64 %I8i$a, i64 %mA2$b) {
  %a141980 = call i64 @prim__60_61(i64 %I8i$a, i64 %mA2$b)                           ; call prim__60_61
  %retprim142081 = call i64 @prim_not(i64 %a141980)                                  ; call prim_not
  %arg142328 = add i64 0, 0                                                          ; quoted ()
  %cloptr143896 = inttoptr i64 %cont142080 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143896)                                       ; assert function application
  %i0ptr143897 = getelementptr inbounds i64, i64* %cloptr143896, i64 0               ; &cloptr143896[0]
  %f143899 = load i64, i64* %i0ptr143897, align 8                                    ; load; *i0ptr143897
  %fptr143898 = inttoptr i64 %f143899 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143898(i64 %cont142080, i64 %arg142328, i64 %retprim142081); tail call
  ret void
}


define void @lam143499(i64 %env143500, i64 %cont142082, i64 %jp6$a, i64 %K3K$b) {
  %a141981 = call i64 @prim__60(i64 %jp6$a, i64 %K3K$b)                              ; call prim__60
  %retprim142083 = call i64 @prim_not(i64 %a141981)                                  ; call prim_not
  %arg142334 = add i64 0, 0                                                          ; quoted ()
  %cloptr143900 = inttoptr i64 %cont142082 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143900)                                       ; assert function application
  %i0ptr143901 = getelementptr inbounds i64, i64* %cloptr143900, i64 0               ; &cloptr143900[0]
  %f143903 = load i64, i64* %i0ptr143901, align 8                                    ; load; *i0ptr143901
  %fptr143902 = inttoptr i64 %f143903 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143902(i64 %cont142082, i64 %arg142334, i64 %retprim142083); tail call
  ret void
}


define void @lam143493(i64 %env143494, i64 %cont142166, i64 %lC4$ls0, i64 %Him$ls1) {
  %envptr143904 = inttoptr i64 %env143494 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143905 = getelementptr inbounds i64, i64* %envptr143904, i64 1              ; &envptr143904[1]
  %LRW$_37append = load i64, i64* %envptr143905, align 8                             ; load; *envptr143905
  %a141982 = call i64 @prim_null_63(i64 %lC4$ls0)                                    ; call prim_null_63
  %cmp143906 = icmp eq i64 %a141982, 15                                              ; false?
  br i1 %cmp143906, label %else143908, label %then143907                             ; if

then143907:
  %arg142343 = add i64 0, 0                                                          ; quoted ()
  %cloptr143909 = inttoptr i64 %cont142166 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143909)                                       ; assert function application
  %i0ptr143910 = getelementptr inbounds i64, i64* %cloptr143909, i64 0               ; &cloptr143909[0]
  %f143912 = load i64, i64* %i0ptr143910, align 8                                    ; load; *i0ptr143910
  %fptr143911 = inttoptr i64 %f143912 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143911(i64 %cont142166, i64 %arg142343, i64 %Him$ls1); tail call
  ret void

else143908:
  %a141983 = call i64 @prim_car(i64 %lC4$ls0)                                        ; call prim_car
  %arg142346 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141984 = call i64 @prim_vector_45ref(i64 %LRW$_37append, i64 %arg142346)         ; call prim_vector_45ref
  %a141985 = call i64 @prim_cdr(i64 %lC4$ls0)                                        ; call prim_cdr
  %cloptr143913 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143915 = getelementptr inbounds i64, i64* %cloptr143913, i64 1                ; &eptr143915[1]
  %eptr143916 = getelementptr inbounds i64, i64* %cloptr143913, i64 2                ; &eptr143916[2]
  store i64 %cont142166, i64* %eptr143915                                            ; *eptr143915 = %cont142166
  store i64 %a141983, i64* %eptr143916                                               ; *eptr143916 = %a141983
  %eptr143914 = getelementptr inbounds i64, i64* %cloptr143913, i64 0                ; &cloptr143913[0]
  %f143917 = ptrtoint void(i64,i64,i64)* @lam143490 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143917, i64* %eptr143914                                               ; store fptr
  %arg142351 = ptrtoint i64* %cloptr143913 to i64                                    ; closure cast; i64* -> i64
  %cloptr143918 = inttoptr i64 %a141984 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143918)                                       ; assert function application
  %i0ptr143919 = getelementptr inbounds i64, i64* %cloptr143918, i64 0               ; &cloptr143918[0]
  %f143921 = load i64, i64* %i0ptr143919, align 8                                    ; load; *i0ptr143919
  %fptr143920 = inttoptr i64 %f143921 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143920(i64 %a141984, i64 %arg142351, i64 %a141985, i64 %Him$ls1); tail call
  ret void
}


define void @lam143490(i64 %env143491, i64 %_95142167, i64 %a141986) {
  %envptr143922 = inttoptr i64 %env143491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143923 = getelementptr inbounds i64, i64* %envptr143922, i64 2              ; &envptr143922[2]
  %a141983 = load i64, i64* %envptr143923, align 8                                   ; load; *envptr143923
  %envptr143924 = inttoptr i64 %env143491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143925 = getelementptr inbounds i64, i64* %envptr143924, i64 1              ; &envptr143924[1]
  %cont142166 = load i64, i64* %envptr143925, align 8                                ; load; *envptr143925
  %retprim142168 = call i64 @prim_cons(i64 %a141983, i64 %a141986)                   ; call prim_cons
  %arg142356 = add i64 0, 0                                                          ; quoted ()
  %cloptr143926 = inttoptr i64 %cont142166 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143926)                                       ; assert function application
  %i0ptr143927 = getelementptr inbounds i64, i64* %cloptr143926, i64 0               ; &cloptr143926[0]
  %f143929 = load i64, i64* %i0ptr143927, align 8                                    ; load; *i0ptr143927
  %fptr143928 = inttoptr i64 %f143929 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143928(i64 %cont142166, i64 %arg142356, i64 %retprim142168); tail call
  ret void
}


define void @lam143485(i64 %env143486, i64 %_95142084, i64 %UYc$_37append) {
  %envptr143930 = inttoptr i64 %env143486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143931 = getelementptr inbounds i64, i64* %envptr143930, i64 3              ; &envptr143930[3]
  %Y2T$_37_62 = load i64, i64* %envptr143931, align 8                                ; load; *envptr143931
  %envptr143932 = inttoptr i64 %env143486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143933 = getelementptr inbounds i64, i64* %envptr143932, i64 2              ; &envptr143932[2]
  %Ovw$_37foldl1 = load i64, i64* %envptr143933, align 8                             ; load; *envptr143933
  %envptr143934 = inttoptr i64 %env143486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143935 = getelementptr inbounds i64, i64* %envptr143934, i64 1              ; &envptr143934[1]
  %RDB$_37length = load i64, i64* %envptr143935, align 8                             ; load; *envptr143935
  %cloptr143936 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143937 = getelementptr inbounds i64, i64* %cloptr143936, i64 0                ; &cloptr143936[0]
  %f143938 = ptrtoint void(i64,i64,i64)* @lam143483 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143938, i64* %eptr143937                                               ; store fptr
  %co4$_37list_63 = ptrtoint i64* %cloptr143936 to i64                               ; closure cast; i64* -> i64
  %cloptr143939 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143940 = getelementptr inbounds i64, i64* %cloptr143939, i64 0                ; &cloptr143939[0]
  %f143941 = ptrtoint void(i64,i64,i64,i64)* @lam143443 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143941, i64* %eptr143940                                               ; store fptr
  %b8t$_37drop = ptrtoint i64* %cloptr143939 to i64                                  ; closure cast; i64* -> i64
  %cloptr143942 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143943 = getelementptr inbounds i64, i64* %cloptr143942, i64 0                ; &cloptr143942[0]
  %f143944 = ptrtoint void(i64,i64,i64,i64)* @lam143403 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143944, i64* %eptr143943                                               ; store fptr
  %rVi$_37memv = ptrtoint i64* %cloptr143942 to i64                                  ; closure cast; i64* -> i64
  %cloptr143945 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143947 = getelementptr inbounds i64, i64* %cloptr143945, i64 1                ; &eptr143947[1]
  store i64 %Ovw$_37foldl1, i64* %eptr143947                                         ; *eptr143947 = %Ovw$_37foldl1
  %eptr143946 = getelementptr inbounds i64, i64* %cloptr143945, i64 0                ; &cloptr143945[0]
  %f143948 = ptrtoint void(i64,i64)* @lam143372 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143948, i64* %eptr143946                                               ; store fptr
  %p0Z$_37_47 = ptrtoint i64* %cloptr143945 to i64                                   ; closure cast; i64* -> i64
  %cloptr143949 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143950 = getelementptr inbounds i64, i64* %cloptr143949, i64 0                ; &cloptr143949[0]
  %f143951 = ptrtoint void(i64,i64,i64)* @lam143364 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143951, i64* %eptr143950                                               ; store fptr
  %kYS$_37first = ptrtoint i64* %cloptr143949 to i64                                 ; closure cast; i64* -> i64
  %cloptr143952 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143953 = getelementptr inbounds i64, i64* %cloptr143952, i64 0                ; &cloptr143952[0]
  %f143954 = ptrtoint void(i64,i64,i64)* @lam143361 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143954, i64* %eptr143953                                               ; store fptr
  %aTE$_37second = ptrtoint i64* %cloptr143952 to i64                                ; closure cast; i64* -> i64
  %cloptr143955 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143956 = getelementptr inbounds i64, i64* %cloptr143955, i64 0                ; &cloptr143955[0]
  %f143957 = ptrtoint void(i64,i64,i64)* @lam143358 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143957, i64* %eptr143956                                               ; store fptr
  %xLU$_37third = ptrtoint i64* %cloptr143955 to i64                                 ; closure cast; i64* -> i64
  %cloptr143958 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143959 = getelementptr inbounds i64, i64* %cloptr143958, i64 0                ; &cloptr143958[0]
  %f143960 = ptrtoint void(i64,i64,i64)* @lam143355 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143960, i64* %eptr143959                                               ; store fptr
  %oYU$_37fourth = ptrtoint i64* %cloptr143958 to i64                                ; closure cast; i64* -> i64
  %cloptr143961 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143962 = getelementptr inbounds i64, i64* %cloptr143961, i64 0                ; &cloptr143961[0]
  %f143963 = ptrtoint void(i64,i64,i64)* @lam143352 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143963, i64* %eptr143962                                               ; store fptr
  %ICt$promise_63 = ptrtoint i64* %cloptr143961 to i64                               ; closure cast; i64* -> i64
  %cloptr143964 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143965 = getelementptr inbounds i64, i64* %cloptr143964, i64 0                ; &cloptr143964[0]
  %f143966 = ptrtoint void(i64,i64)* @lam143346 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143966, i64* %eptr143965                                               ; store fptr
  %arg142624 = ptrtoint i64* %cloptr143964 to i64                                    ; closure cast; i64* -> i64
  %cloptr143967 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143969 = getelementptr inbounds i64, i64* %cloptr143967, i64 1                ; &eptr143969[1]
  %eptr143970 = getelementptr inbounds i64, i64* %cloptr143967, i64 2                ; &eptr143970[2]
  %eptr143971 = getelementptr inbounds i64, i64* %cloptr143967, i64 3                ; &eptr143971[3]
  store i64 %RDB$_37length, i64* %eptr143969                                         ; *eptr143969 = %RDB$_37length
  store i64 %Y2T$_37_62, i64* %eptr143970                                            ; *eptr143970 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr143971                                           ; *eptr143971 = %b8t$_37drop
  %eptr143968 = getelementptr inbounds i64, i64* %cloptr143967, i64 0                ; &cloptr143967[0]
  %f143972 = ptrtoint void(i64,i64,i64)* @lam143343 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143972, i64* %eptr143968                                               ; store fptr
  %arg142623 = ptrtoint i64* %cloptr143967 to i64                                    ; closure cast; i64* -> i64
  %rva143091 = add i64 0, 0                                                          ; quoted ()
  %rva143090 = call i64 @prim_cons(i64 %arg142623, i64 %rva143091)                   ; call prim_cons
  %cloptr143973 = inttoptr i64 %arg142624 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143973)                                       ; assert function application
  %i0ptr143974 = getelementptr inbounds i64, i64* %cloptr143973, i64 0               ; &cloptr143973[0]
  %f143976 = load i64, i64* %i0ptr143974, align 8                                    ; load; *i0ptr143974
  %fptr143975 = inttoptr i64 %f143976 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143975(i64 %arg142624, i64 %rva143090)              ; tail call
  ret void
}


define void @lam143483(i64 %env143484, i64 %cont142085, i64 %mSy$a) {
  %arg142364 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %JKO$a = call i64 @prim_make_45vector(i64 %arg142364, i64 %mSy$a)                  ; call prim_make_45vector
  %cloptr143977 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143978 = getelementptr inbounds i64, i64* %cloptr143977, i64 0                ; &cloptr143977[0]
  %f143979 = ptrtoint void(i64,i64,i64)* @lam143480 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143979, i64* %eptr143978                                               ; store fptr
  %arg142367 = ptrtoint i64* %cloptr143977 to i64                                    ; closure cast; i64* -> i64
  %cloptr143980 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143982 = getelementptr inbounds i64, i64* %cloptr143980, i64 1                ; &eptr143982[1]
  %eptr143983 = getelementptr inbounds i64, i64* %cloptr143980, i64 2                ; &eptr143983[2]
  store i64 %JKO$a, i64* %eptr143982                                                 ; *eptr143982 = %JKO$a
  store i64 %cont142085, i64* %eptr143983                                            ; *eptr143983 = %cont142085
  %eptr143981 = getelementptr inbounds i64, i64* %cloptr143980, i64 0                ; &cloptr143980[0]
  %f143984 = ptrtoint void(i64,i64,i64)* @lam143477 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143984, i64* %eptr143981                                               ; store fptr
  %arg142366 = ptrtoint i64* %cloptr143980 to i64                                    ; closure cast; i64* -> i64
  %cloptr143985 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143987 = getelementptr inbounds i64, i64* %cloptr143985, i64 1                ; &eptr143987[1]
  %eptr143988 = getelementptr inbounds i64, i64* %cloptr143985, i64 2                ; &eptr143988[2]
  store i64 %JKO$a, i64* %eptr143987                                                 ; *eptr143987 = %JKO$a
  store i64 %cont142085, i64* %eptr143988                                            ; *eptr143988 = %cont142085
  %eptr143986 = getelementptr inbounds i64, i64* %cloptr143985, i64 0                ; &cloptr143985[0]
  %f143989 = ptrtoint void(i64,i64,i64)* @lam143460 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143989, i64* %eptr143986                                               ; store fptr
  %arg142365 = ptrtoint i64* %cloptr143985 to i64                                    ; closure cast; i64* -> i64
  %cloptr143990 = inttoptr i64 %arg142367 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143990)                                       ; assert function application
  %i0ptr143991 = getelementptr inbounds i64, i64* %cloptr143990, i64 0               ; &cloptr143990[0]
  %f143993 = load i64, i64* %i0ptr143991, align 8                                    ; load; *i0ptr143991
  %fptr143992 = inttoptr i64 %f143993 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143992(i64 %arg142367, i64 %arg142366, i64 %arg142365); tail call
  ret void
}


define void @lam143480(i64 %env143481, i64 %cont142091, i64 %apE$k) {
  %arg142369 = add i64 0, 0                                                          ; quoted ()
  %cloptr143994 = inttoptr i64 %cont142091 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143994)                                       ; assert function application
  %i0ptr143995 = getelementptr inbounds i64, i64* %cloptr143994, i64 0               ; &cloptr143994[0]
  %f143997 = load i64, i64* %i0ptr143995, align 8                                    ; load; *i0ptr143995
  %fptr143996 = inttoptr i64 %f143997 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143996(i64 %cont142091, i64 %arg142369, i64 %apE$k) ; tail call
  ret void
}


define void @lam143477(i64 %env143478, i64 %_95142086, i64 %IvC$cc) {
  %envptr143998 = inttoptr i64 %env143478 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143999 = getelementptr inbounds i64, i64* %envptr143998, i64 2              ; &envptr143998[2]
  %cont142085 = load i64, i64* %envptr143999, align 8                                ; load; *envptr143999
  %envptr144000 = inttoptr i64 %env143478 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144001 = getelementptr inbounds i64, i64* %envptr144000, i64 1              ; &envptr144000[1]
  %JKO$a = load i64, i64* %envptr144001, align 8                                     ; load; *envptr144001
  %arg142371 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141987 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142371)                 ; call prim_vector_45ref
  %a141988 = call i64 @prim_null_63(i64 %a141987)                                    ; call prim_null_63
  %cmp144002 = icmp eq i64 %a141988, 15                                              ; false?
  br i1 %cmp144002, label %else144004, label %then144003                             ; if

then144003:
  %arg142375 = add i64 0, 0                                                          ; quoted ()
  %arg142374 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr144005 = inttoptr i64 %cont142085 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144005)                                       ; assert function application
  %i0ptr144006 = getelementptr inbounds i64, i64* %cloptr144005, i64 0               ; &cloptr144005[0]
  %f144008 = load i64, i64* %i0ptr144006, align 8                                    ; load; *i0ptr144006
  %fptr144007 = inttoptr i64 %f144008 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144007(i64 %cont142085, i64 %arg142375, i64 %arg142374); tail call
  ret void

else144004:
  %arg142377 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141989 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142377)                 ; call prim_vector_45ref
  %a141990 = call i64 @prim_cons_63(i64 %a141989)                                    ; call prim_cons_63
  %cmp144009 = icmp eq i64 %a141990, 15                                              ; false?
  br i1 %cmp144009, label %else144011, label %then144010                             ; if

then144010:
  %arg142380 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141991 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142380)                 ; call prim_vector_45ref
  %retprim142090 = call i64 @prim_cdr(i64 %a141991)                                  ; call prim_cdr
  %cloptr144012 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144014 = getelementptr inbounds i64, i64* %cloptr144012, i64 1                ; &eptr144014[1]
  %eptr144015 = getelementptr inbounds i64, i64* %cloptr144012, i64 2                ; &eptr144015[2]
  %eptr144016 = getelementptr inbounds i64, i64* %cloptr144012, i64 3                ; &eptr144016[3]
  store i64 %IvC$cc, i64* %eptr144014                                                ; *eptr144014 = %IvC$cc
  store i64 %JKO$a, i64* %eptr144015                                                 ; *eptr144015 = %JKO$a
  store i64 %cont142085, i64* %eptr144016                                            ; *eptr144016 = %cont142085
  %eptr144013 = getelementptr inbounds i64, i64* %cloptr144012, i64 0                ; &cloptr144012[0]
  %f144017 = ptrtoint void(i64,i64,i64)* @lam143470 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144017, i64* %eptr144013                                               ; store fptr
  %arg142385 = ptrtoint i64* %cloptr144012 to i64                                    ; closure cast; i64* -> i64
  %arg142384 = add i64 0, 0                                                          ; quoted ()
  %cloptr144018 = inttoptr i64 %arg142385 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144018)                                       ; assert function application
  %i0ptr144019 = getelementptr inbounds i64, i64* %cloptr144018, i64 0               ; &cloptr144018[0]
  %f144021 = load i64, i64* %i0ptr144019, align 8                                    ; load; *i0ptr144019
  %fptr144020 = inttoptr i64 %f144021 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144020(i64 %arg142385, i64 %arg142384, i64 %retprim142090); tail call
  ret void

else144011:
  %arg142399 = add i64 0, 0                                                          ; quoted ()
  %arg142398 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144022 = inttoptr i64 %cont142085 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144022)                                       ; assert function application
  %i0ptr144023 = getelementptr inbounds i64, i64* %cloptr144022, i64 0               ; &cloptr144022[0]
  %f144025 = load i64, i64* %i0ptr144023, align 8                                    ; load; *i0ptr144023
  %fptr144024 = inttoptr i64 %f144025 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144024(i64 %cont142085, i64 %arg142399, i64 %arg142398); tail call
  ret void
}


define void @lam143470(i64 %env143471, i64 %_95142087, i64 %XhX$b) {
  %envptr144026 = inttoptr i64 %env143471 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144027 = getelementptr inbounds i64, i64* %envptr144026, i64 3              ; &envptr144026[3]
  %cont142085 = load i64, i64* %envptr144027, align 8                                ; load; *envptr144027
  %envptr144028 = inttoptr i64 %env143471 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144029 = getelementptr inbounds i64, i64* %envptr144028, i64 2              ; &envptr144028[2]
  %JKO$a = load i64, i64* %envptr144029, align 8                                     ; load; *envptr144029
  %envptr144030 = inttoptr i64 %env143471 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144031 = getelementptr inbounds i64, i64* %envptr144030, i64 1              ; &envptr144030[1]
  %IvC$cc = load i64, i64* %envptr144031, align 8                                    ; load; *envptr144031
  %arg142386 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141992 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142386)                 ; call prim_vector_45ref
  %a141993 = call i64 @prim_cdr(i64 %a141992)                                        ; call prim_cdr
  %arg142390 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142089 = call i64 @prim_vector_45set_33(i64 %JKO$a, i64 %arg142390, i64 %a141993); call prim_vector_45set_33
  %cloptr144032 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144034 = getelementptr inbounds i64, i64* %cloptr144032, i64 1                ; &eptr144034[1]
  %eptr144035 = getelementptr inbounds i64, i64* %cloptr144032, i64 2                ; &eptr144035[2]
  store i64 %IvC$cc, i64* %eptr144034                                                ; *eptr144034 = %IvC$cc
  store i64 %cont142085, i64* %eptr144035                                            ; *eptr144035 = %cont142085
  %eptr144033 = getelementptr inbounds i64, i64* %cloptr144032, i64 0                ; &cloptr144032[0]
  %f144036 = ptrtoint void(i64,i64,i64)* @lam143466 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144036, i64* %eptr144033                                               ; store fptr
  %arg142394 = ptrtoint i64* %cloptr144032 to i64                                    ; closure cast; i64* -> i64
  %arg142393 = add i64 0, 0                                                          ; quoted ()
  %cloptr144037 = inttoptr i64 %arg142394 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144037)                                       ; assert function application
  %i0ptr144038 = getelementptr inbounds i64, i64* %cloptr144037, i64 0               ; &cloptr144037[0]
  %f144040 = load i64, i64* %i0ptr144038, align 8                                    ; load; *i0ptr144038
  %fptr144039 = inttoptr i64 %f144040 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144039(i64 %arg142394, i64 %arg142393, i64 %retprim142089); tail call
  ret void
}


define void @lam143466(i64 %env143467, i64 %_95142088, i64 %yhH$_950) {
  %envptr144041 = inttoptr i64 %env143467 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144042 = getelementptr inbounds i64, i64* %envptr144041, i64 2              ; &envptr144041[2]
  %cont142085 = load i64, i64* %envptr144042, align 8                                ; load; *envptr144042
  %envptr144043 = inttoptr i64 %env143467 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144044 = getelementptr inbounds i64, i64* %envptr144043, i64 1              ; &envptr144043[1]
  %IvC$cc = load i64, i64* %envptr144044, align 8                                    ; load; *envptr144044
  %cloptr144045 = inttoptr i64 %IvC$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144045)                                       ; assert function application
  %i0ptr144046 = getelementptr inbounds i64, i64* %cloptr144045, i64 0               ; &cloptr144045[0]
  %f144048 = load i64, i64* %i0ptr144046, align 8                                    ; load; *i0ptr144046
  %fptr144047 = inttoptr i64 %f144048 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144047(i64 %IvC$cc, i64 %cont142085, i64 %IvC$cc)   ; tail call
  ret void
}


define void @lam143460(i64 %env143461, i64 %_95142086, i64 %IvC$cc) {
  %envptr144049 = inttoptr i64 %env143461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144050 = getelementptr inbounds i64, i64* %envptr144049, i64 2              ; &envptr144049[2]
  %cont142085 = load i64, i64* %envptr144050, align 8                                ; load; *envptr144050
  %envptr144051 = inttoptr i64 %env143461 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144052 = getelementptr inbounds i64, i64* %envptr144051, i64 1              ; &envptr144051[1]
  %JKO$a = load i64, i64* %envptr144052, align 8                                     ; load; *envptr144052
  %arg142401 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141987 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142401)                 ; call prim_vector_45ref
  %a141988 = call i64 @prim_null_63(i64 %a141987)                                    ; call prim_null_63
  %cmp144053 = icmp eq i64 %a141988, 15                                              ; false?
  br i1 %cmp144053, label %else144055, label %then144054                             ; if

then144054:
  %arg142405 = add i64 0, 0                                                          ; quoted ()
  %arg142404 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr144056 = inttoptr i64 %cont142085 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144056)                                       ; assert function application
  %i0ptr144057 = getelementptr inbounds i64, i64* %cloptr144056, i64 0               ; &cloptr144056[0]
  %f144059 = load i64, i64* %i0ptr144057, align 8                                    ; load; *i0ptr144057
  %fptr144058 = inttoptr i64 %f144059 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144058(i64 %cont142085, i64 %arg142405, i64 %arg142404); tail call
  ret void

else144055:
  %arg142407 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141989 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142407)                 ; call prim_vector_45ref
  %a141990 = call i64 @prim_cons_63(i64 %a141989)                                    ; call prim_cons_63
  %cmp144060 = icmp eq i64 %a141990, 15                                              ; false?
  br i1 %cmp144060, label %else144062, label %then144061                             ; if

then144061:
  %arg142410 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141991 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142410)                 ; call prim_vector_45ref
  %retprim142090 = call i64 @prim_cdr(i64 %a141991)                                  ; call prim_cdr
  %cloptr144063 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144065 = getelementptr inbounds i64, i64* %cloptr144063, i64 1                ; &eptr144065[1]
  %eptr144066 = getelementptr inbounds i64, i64* %cloptr144063, i64 2                ; &eptr144066[2]
  %eptr144067 = getelementptr inbounds i64, i64* %cloptr144063, i64 3                ; &eptr144067[3]
  store i64 %IvC$cc, i64* %eptr144065                                                ; *eptr144065 = %IvC$cc
  store i64 %JKO$a, i64* %eptr144066                                                 ; *eptr144066 = %JKO$a
  store i64 %cont142085, i64* %eptr144067                                            ; *eptr144067 = %cont142085
  %eptr144064 = getelementptr inbounds i64, i64* %cloptr144063, i64 0                ; &cloptr144063[0]
  %f144068 = ptrtoint void(i64,i64,i64)* @lam143453 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144068, i64* %eptr144064                                               ; store fptr
  %arg142415 = ptrtoint i64* %cloptr144063 to i64                                    ; closure cast; i64* -> i64
  %arg142414 = add i64 0, 0                                                          ; quoted ()
  %cloptr144069 = inttoptr i64 %arg142415 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144069)                                       ; assert function application
  %i0ptr144070 = getelementptr inbounds i64, i64* %cloptr144069, i64 0               ; &cloptr144069[0]
  %f144072 = load i64, i64* %i0ptr144070, align 8                                    ; load; *i0ptr144070
  %fptr144071 = inttoptr i64 %f144072 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144071(i64 %arg142415, i64 %arg142414, i64 %retprim142090); tail call
  ret void

else144062:
  %arg142429 = add i64 0, 0                                                          ; quoted ()
  %arg142428 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144073 = inttoptr i64 %cont142085 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144073)                                       ; assert function application
  %i0ptr144074 = getelementptr inbounds i64, i64* %cloptr144073, i64 0               ; &cloptr144073[0]
  %f144076 = load i64, i64* %i0ptr144074, align 8                                    ; load; *i0ptr144074
  %fptr144075 = inttoptr i64 %f144076 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144075(i64 %cont142085, i64 %arg142429, i64 %arg142428); tail call
  ret void
}


define void @lam143453(i64 %env143454, i64 %_95142087, i64 %XhX$b) {
  %envptr144077 = inttoptr i64 %env143454 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144078 = getelementptr inbounds i64, i64* %envptr144077, i64 3              ; &envptr144077[3]
  %cont142085 = load i64, i64* %envptr144078, align 8                                ; load; *envptr144078
  %envptr144079 = inttoptr i64 %env143454 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144080 = getelementptr inbounds i64, i64* %envptr144079, i64 2              ; &envptr144079[2]
  %JKO$a = load i64, i64* %envptr144080, align 8                                     ; load; *envptr144080
  %envptr144081 = inttoptr i64 %env143454 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144082 = getelementptr inbounds i64, i64* %envptr144081, i64 1              ; &envptr144081[1]
  %IvC$cc = load i64, i64* %envptr144082, align 8                                    ; load; *envptr144082
  %arg142416 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141992 = call i64 @prim_vector_45ref(i64 %JKO$a, i64 %arg142416)                 ; call prim_vector_45ref
  %a141993 = call i64 @prim_cdr(i64 %a141992)                                        ; call prim_cdr
  %arg142420 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142089 = call i64 @prim_vector_45set_33(i64 %JKO$a, i64 %arg142420, i64 %a141993); call prim_vector_45set_33
  %cloptr144083 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144085 = getelementptr inbounds i64, i64* %cloptr144083, i64 1                ; &eptr144085[1]
  %eptr144086 = getelementptr inbounds i64, i64* %cloptr144083, i64 2                ; &eptr144086[2]
  store i64 %IvC$cc, i64* %eptr144085                                                ; *eptr144085 = %IvC$cc
  store i64 %cont142085, i64* %eptr144086                                            ; *eptr144086 = %cont142085
  %eptr144084 = getelementptr inbounds i64, i64* %cloptr144083, i64 0                ; &cloptr144083[0]
  %f144087 = ptrtoint void(i64,i64,i64)* @lam143449 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144087, i64* %eptr144084                                               ; store fptr
  %arg142424 = ptrtoint i64* %cloptr144083 to i64                                    ; closure cast; i64* -> i64
  %arg142423 = add i64 0, 0                                                          ; quoted ()
  %cloptr144088 = inttoptr i64 %arg142424 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144088)                                       ; assert function application
  %i0ptr144089 = getelementptr inbounds i64, i64* %cloptr144088, i64 0               ; &cloptr144088[0]
  %f144091 = load i64, i64* %i0ptr144089, align 8                                    ; load; *i0ptr144089
  %fptr144090 = inttoptr i64 %f144091 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144090(i64 %arg142424, i64 %arg142423, i64 %retprim142089); tail call
  ret void
}


define void @lam143449(i64 %env143450, i64 %_95142088, i64 %yhH$_950) {
  %envptr144092 = inttoptr i64 %env143450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144093 = getelementptr inbounds i64, i64* %envptr144092, i64 2              ; &envptr144092[2]
  %cont142085 = load i64, i64* %envptr144093, align 8                                ; load; *envptr144093
  %envptr144094 = inttoptr i64 %env143450 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144095 = getelementptr inbounds i64, i64* %envptr144094, i64 1              ; &envptr144094[1]
  %IvC$cc = load i64, i64* %envptr144095, align 8                                    ; load; *envptr144095
  %cloptr144096 = inttoptr i64 %IvC$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144096)                                       ; assert function application
  %i0ptr144097 = getelementptr inbounds i64, i64* %cloptr144096, i64 0               ; &cloptr144096[0]
  %f144099 = load i64, i64* %i0ptr144097, align 8                                    ; load; *i0ptr144097
  %fptr144098 = inttoptr i64 %f144099 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144098(i64 %IvC$cc, i64 %cont142085, i64 %IvC$cc)   ; tail call
  ret void
}


define void @lam143443(i64 %env143444, i64 %cont142092, i64 %Wz9$lst, i64 %Eme$n) {
  %arg142432 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %rSg$lst = call i64 @prim_make_45vector(i64 %arg142432, i64 %Wz9$lst)              ; call prim_make_45vector
  %arg142434 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %wNd$n = call i64 @prim_make_45vector(i64 %arg142434, i64 %Eme$n)                  ; call prim_make_45vector
  %cloptr144100 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144101 = getelementptr inbounds i64, i64* %cloptr144100, i64 0                ; &cloptr144100[0]
  %f144102 = ptrtoint void(i64,i64,i64)* @lam143439 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144102, i64* %eptr144101                                               ; store fptr
  %arg142437 = ptrtoint i64* %cloptr144100 to i64                                    ; closure cast; i64* -> i64
  %cloptr144103 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144105 = getelementptr inbounds i64, i64* %cloptr144103, i64 1                ; &eptr144105[1]
  %eptr144106 = getelementptr inbounds i64, i64* %cloptr144103, i64 2                ; &eptr144106[2]
  %eptr144107 = getelementptr inbounds i64, i64* %cloptr144103, i64 3                ; &eptr144107[3]
  store i64 %wNd$n, i64* %eptr144105                                                 ; *eptr144105 = %wNd$n
  store i64 %rSg$lst, i64* %eptr144106                                               ; *eptr144106 = %rSg$lst
  store i64 %cont142092, i64* %eptr144107                                            ; *eptr144107 = %cont142092
  %eptr144104 = getelementptr inbounds i64, i64* %cloptr144103, i64 0                ; &cloptr144103[0]
  %f144108 = ptrtoint void(i64,i64,i64)* @lam143437 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144108, i64* %eptr144104                                               ; store fptr
  %arg142436 = ptrtoint i64* %cloptr144103 to i64                                    ; closure cast; i64* -> i64
  %cloptr144109 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144111 = getelementptr inbounds i64, i64* %cloptr144109, i64 1                ; &eptr144111[1]
  %eptr144112 = getelementptr inbounds i64, i64* %cloptr144109, i64 2                ; &eptr144112[2]
  %eptr144113 = getelementptr inbounds i64, i64* %cloptr144109, i64 3                ; &eptr144113[3]
  store i64 %wNd$n, i64* %eptr144111                                                 ; *eptr144111 = %wNd$n
  store i64 %rSg$lst, i64* %eptr144112                                               ; *eptr144112 = %rSg$lst
  store i64 %cont142092, i64* %eptr144113                                            ; *eptr144113 = %cont142092
  %eptr144110 = getelementptr inbounds i64, i64* %cloptr144109, i64 0                ; &cloptr144109[0]
  %f144114 = ptrtoint void(i64,i64,i64)* @lam143420 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144114, i64* %eptr144110                                               ; store fptr
  %arg142435 = ptrtoint i64* %cloptr144109 to i64                                    ; closure cast; i64* -> i64
  %cloptr144115 = inttoptr i64 %arg142437 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144115)                                       ; assert function application
  %i0ptr144116 = getelementptr inbounds i64, i64* %cloptr144115, i64 0               ; &cloptr144115[0]
  %f144118 = load i64, i64* %i0ptr144116, align 8                                    ; load; *i0ptr144116
  %fptr144117 = inttoptr i64 %f144118 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144117(i64 %arg142437, i64 %arg142436, i64 %arg142435); tail call
  ret void
}


define void @lam143439(i64 %env143440, i64 %cont142099, i64 %bun$u) {
  %cloptr144119 = inttoptr i64 %bun$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144119)                                       ; assert function application
  %i0ptr144120 = getelementptr inbounds i64, i64* %cloptr144119, i64 0               ; &cloptr144119[0]
  %f144122 = load i64, i64* %i0ptr144120, align 8                                    ; load; *i0ptr144120
  %fptr144121 = inttoptr i64 %f144122 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144121(i64 %bun$u, i64 %cont142099, i64 %bun$u)     ; tail call
  ret void
}


define void @lam143437(i64 %env143438, i64 %_95142093, i64 %ktq$cc) {
  %envptr144123 = inttoptr i64 %env143438 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144124 = getelementptr inbounds i64, i64* %envptr144123, i64 3              ; &envptr144123[3]
  %cont142092 = load i64, i64* %envptr144124, align 8                                ; load; *envptr144124
  %envptr144125 = inttoptr i64 %env143438 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144126 = getelementptr inbounds i64, i64* %envptr144125, i64 2              ; &envptr144125[2]
  %rSg$lst = load i64, i64* %envptr144126, align 8                                   ; load; *envptr144126
  %envptr144127 = inttoptr i64 %env143438 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144128 = getelementptr inbounds i64, i64* %envptr144127, i64 1              ; &envptr144127[1]
  %wNd$n = load i64, i64* %envptr144128, align 8                                     ; load; *envptr144128
  %arg142441 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141994 = call i64 @prim_vector_45ref(i64 %wNd$n, i64 %arg142441)                 ; call prim_vector_45ref
  %arg142444 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141995 = call i64 @prim__61(i64 %arg142444, i64 %a141994)                        ; call prim__61
  %cmp144129 = icmp eq i64 %a141995, 15                                              ; false?
  br i1 %cmp144129, label %else144131, label %then144130                             ; if

then144130:
  %arg142445 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142094 = call i64 @prim_vector_45ref(i64 %rSg$lst, i64 %arg142445)         ; call prim_vector_45ref
  %arg142448 = add i64 0, 0                                                          ; quoted ()
  %cloptr144132 = inttoptr i64 %cont142092 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144132)                                       ; assert function application
  %i0ptr144133 = getelementptr inbounds i64, i64* %cloptr144132, i64 0               ; &cloptr144132[0]
  %f144135 = load i64, i64* %i0ptr144133, align 8                                    ; load; *i0ptr144133
  %fptr144134 = inttoptr i64 %f144135 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144134(i64 %cont142092, i64 %arg142448, i64 %retprim142094); tail call
  ret void

else144131:
  %arg142450 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141996 = call i64 @prim_vector_45ref(i64 %rSg$lst, i64 %arg142450)               ; call prim_vector_45ref
  %a141997 = call i64 @prim_cdr(i64 %a141996)                                        ; call prim_cdr
  %arg142454 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142098 = call i64 @prim_vector_45set_33(i64 %rSg$lst, i64 %arg142454, i64 %a141997); call prim_vector_45set_33
  %cloptr144136 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144138 = getelementptr inbounds i64, i64* %cloptr144136, i64 1                ; &eptr144138[1]
  %eptr144139 = getelementptr inbounds i64, i64* %cloptr144136, i64 2                ; &eptr144139[2]
  %eptr144140 = getelementptr inbounds i64, i64* %cloptr144136, i64 3                ; &eptr144140[3]
  store i64 %ktq$cc, i64* %eptr144138                                                ; *eptr144138 = %ktq$cc
  store i64 %wNd$n, i64* %eptr144139                                                 ; *eptr144139 = %wNd$n
  store i64 %cont142092, i64* %eptr144140                                            ; *eptr144140 = %cont142092
  %eptr144137 = getelementptr inbounds i64, i64* %cloptr144136, i64 0                ; &cloptr144136[0]
  %f144141 = ptrtoint void(i64,i64,i64)* @lam143431 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144141, i64* %eptr144137                                               ; store fptr
  %arg142458 = ptrtoint i64* %cloptr144136 to i64                                    ; closure cast; i64* -> i64
  %arg142457 = add i64 0, 0                                                          ; quoted ()
  %cloptr144142 = inttoptr i64 %arg142458 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144142)                                       ; assert function application
  %i0ptr144143 = getelementptr inbounds i64, i64* %cloptr144142, i64 0               ; &cloptr144142[0]
  %f144145 = load i64, i64* %i0ptr144143, align 8                                    ; load; *i0ptr144143
  %fptr144144 = inttoptr i64 %f144145 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144144(i64 %arg142458, i64 %arg142457, i64 %retprim142098); tail call
  ret void
}


define void @lam143431(i64 %env143432, i64 %_95142095, i64 %gDU$_950) {
  %envptr144146 = inttoptr i64 %env143432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144147 = getelementptr inbounds i64, i64* %envptr144146, i64 3              ; &envptr144146[3]
  %cont142092 = load i64, i64* %envptr144147, align 8                                ; load; *envptr144147
  %envptr144148 = inttoptr i64 %env143432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144149 = getelementptr inbounds i64, i64* %envptr144148, i64 2              ; &envptr144148[2]
  %wNd$n = load i64, i64* %envptr144149, align 8                                     ; load; *envptr144149
  %envptr144150 = inttoptr i64 %env143432 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144151 = getelementptr inbounds i64, i64* %envptr144150, i64 1              ; &envptr144150[1]
  %ktq$cc = load i64, i64* %envptr144151, align 8                                    ; load; *envptr144151
  %arg142459 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141998 = call i64 @prim_vector_45ref(i64 %wNd$n, i64 %arg142459)                 ; call prim_vector_45ref
  %arg142461 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a141999 = call i64 @prim__45(i64 %a141998, i64 %arg142461)                        ; call prim__45
  %arg142464 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142097 = call i64 @prim_vector_45set_33(i64 %wNd$n, i64 %arg142464, i64 %a141999); call prim_vector_45set_33
  %cloptr144152 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144154 = getelementptr inbounds i64, i64* %cloptr144152, i64 1                ; &eptr144154[1]
  %eptr144155 = getelementptr inbounds i64, i64* %cloptr144152, i64 2                ; &eptr144155[2]
  store i64 %ktq$cc, i64* %eptr144154                                                ; *eptr144154 = %ktq$cc
  store i64 %cont142092, i64* %eptr144155                                            ; *eptr144155 = %cont142092
  %eptr144153 = getelementptr inbounds i64, i64* %cloptr144152, i64 0                ; &cloptr144152[0]
  %f144156 = ptrtoint void(i64,i64,i64)* @lam143426 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144156, i64* %eptr144153                                               ; store fptr
  %arg142468 = ptrtoint i64* %cloptr144152 to i64                                    ; closure cast; i64* -> i64
  %arg142467 = add i64 0, 0                                                          ; quoted ()
  %cloptr144157 = inttoptr i64 %arg142468 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144157)                                       ; assert function application
  %i0ptr144158 = getelementptr inbounds i64, i64* %cloptr144157, i64 0               ; &cloptr144157[0]
  %f144160 = load i64, i64* %i0ptr144158, align 8                                    ; load; *i0ptr144158
  %fptr144159 = inttoptr i64 %f144160 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144159(i64 %arg142468, i64 %arg142467, i64 %retprim142097); tail call
  ret void
}


define void @lam143426(i64 %env143427, i64 %_95142096, i64 %kid$_951) {
  %envptr144161 = inttoptr i64 %env143427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144162 = getelementptr inbounds i64, i64* %envptr144161, i64 2              ; &envptr144161[2]
  %cont142092 = load i64, i64* %envptr144162, align 8                                ; load; *envptr144162
  %envptr144163 = inttoptr i64 %env143427 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144164 = getelementptr inbounds i64, i64* %envptr144163, i64 1              ; &envptr144163[1]
  %ktq$cc = load i64, i64* %envptr144164, align 8                                    ; load; *envptr144164
  %cloptr144165 = inttoptr i64 %ktq$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144165)                                       ; assert function application
  %i0ptr144166 = getelementptr inbounds i64, i64* %cloptr144165, i64 0               ; &cloptr144165[0]
  %f144168 = load i64, i64* %i0ptr144166, align 8                                    ; load; *i0ptr144166
  %fptr144167 = inttoptr i64 %f144168 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144167(i64 %ktq$cc, i64 %cont142092, i64 %ktq$cc)   ; tail call
  ret void
}


define void @lam143420(i64 %env143421, i64 %_95142093, i64 %ktq$cc) {
  %envptr144169 = inttoptr i64 %env143421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144170 = getelementptr inbounds i64, i64* %envptr144169, i64 3              ; &envptr144169[3]
  %cont142092 = load i64, i64* %envptr144170, align 8                                ; load; *envptr144170
  %envptr144171 = inttoptr i64 %env143421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144172 = getelementptr inbounds i64, i64* %envptr144171, i64 2              ; &envptr144171[2]
  %rSg$lst = load i64, i64* %envptr144172, align 8                                   ; load; *envptr144172
  %envptr144173 = inttoptr i64 %env143421 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144174 = getelementptr inbounds i64, i64* %envptr144173, i64 1              ; &envptr144173[1]
  %wNd$n = load i64, i64* %envptr144174, align 8                                     ; load; *envptr144174
  %arg142472 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141994 = call i64 @prim_vector_45ref(i64 %wNd$n, i64 %arg142472)                 ; call prim_vector_45ref
  %arg142475 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141995 = call i64 @prim__61(i64 %arg142475, i64 %a141994)                        ; call prim__61
  %cmp144175 = icmp eq i64 %a141995, 15                                              ; false?
  br i1 %cmp144175, label %else144177, label %then144176                             ; if

then144176:
  %arg142476 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142094 = call i64 @prim_vector_45ref(i64 %rSg$lst, i64 %arg142476)         ; call prim_vector_45ref
  %arg142479 = add i64 0, 0                                                          ; quoted ()
  %cloptr144178 = inttoptr i64 %cont142092 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144178)                                       ; assert function application
  %i0ptr144179 = getelementptr inbounds i64, i64* %cloptr144178, i64 0               ; &cloptr144178[0]
  %f144181 = load i64, i64* %i0ptr144179, align 8                                    ; load; *i0ptr144179
  %fptr144180 = inttoptr i64 %f144181 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144180(i64 %cont142092, i64 %arg142479, i64 %retprim142094); tail call
  ret void

else144177:
  %arg142481 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141996 = call i64 @prim_vector_45ref(i64 %rSg$lst, i64 %arg142481)               ; call prim_vector_45ref
  %a141997 = call i64 @prim_cdr(i64 %a141996)                                        ; call prim_cdr
  %arg142485 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142098 = call i64 @prim_vector_45set_33(i64 %rSg$lst, i64 %arg142485, i64 %a141997); call prim_vector_45set_33
  %cloptr144182 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144184 = getelementptr inbounds i64, i64* %cloptr144182, i64 1                ; &eptr144184[1]
  %eptr144185 = getelementptr inbounds i64, i64* %cloptr144182, i64 2                ; &eptr144185[2]
  %eptr144186 = getelementptr inbounds i64, i64* %cloptr144182, i64 3                ; &eptr144186[3]
  store i64 %ktq$cc, i64* %eptr144184                                                ; *eptr144184 = %ktq$cc
  store i64 %wNd$n, i64* %eptr144185                                                 ; *eptr144185 = %wNd$n
  store i64 %cont142092, i64* %eptr144186                                            ; *eptr144186 = %cont142092
  %eptr144183 = getelementptr inbounds i64, i64* %cloptr144182, i64 0                ; &cloptr144182[0]
  %f144187 = ptrtoint void(i64,i64,i64)* @lam143414 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144187, i64* %eptr144183                                               ; store fptr
  %arg142489 = ptrtoint i64* %cloptr144182 to i64                                    ; closure cast; i64* -> i64
  %arg142488 = add i64 0, 0                                                          ; quoted ()
  %cloptr144188 = inttoptr i64 %arg142489 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144188)                                       ; assert function application
  %i0ptr144189 = getelementptr inbounds i64, i64* %cloptr144188, i64 0               ; &cloptr144188[0]
  %f144191 = load i64, i64* %i0ptr144189, align 8                                    ; load; *i0ptr144189
  %fptr144190 = inttoptr i64 %f144191 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144190(i64 %arg142489, i64 %arg142488, i64 %retprim142098); tail call
  ret void
}


define void @lam143414(i64 %env143415, i64 %_95142095, i64 %gDU$_950) {
  %envptr144192 = inttoptr i64 %env143415 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144193 = getelementptr inbounds i64, i64* %envptr144192, i64 3              ; &envptr144192[3]
  %cont142092 = load i64, i64* %envptr144193, align 8                                ; load; *envptr144193
  %envptr144194 = inttoptr i64 %env143415 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144195 = getelementptr inbounds i64, i64* %envptr144194, i64 2              ; &envptr144194[2]
  %wNd$n = load i64, i64* %envptr144195, align 8                                     ; load; *envptr144195
  %envptr144196 = inttoptr i64 %env143415 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144197 = getelementptr inbounds i64, i64* %envptr144196, i64 1              ; &envptr144196[1]
  %ktq$cc = load i64, i64* %envptr144197, align 8                                    ; load; *envptr144197
  %arg142490 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141998 = call i64 @prim_vector_45ref(i64 %wNd$n, i64 %arg142490)                 ; call prim_vector_45ref
  %arg142492 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a141999 = call i64 @prim__45(i64 %a141998, i64 %arg142492)                        ; call prim__45
  %arg142495 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142097 = call i64 @prim_vector_45set_33(i64 %wNd$n, i64 %arg142495, i64 %a141999); call prim_vector_45set_33
  %cloptr144198 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144200 = getelementptr inbounds i64, i64* %cloptr144198, i64 1                ; &eptr144200[1]
  %eptr144201 = getelementptr inbounds i64, i64* %cloptr144198, i64 2                ; &eptr144201[2]
  store i64 %ktq$cc, i64* %eptr144200                                                ; *eptr144200 = %ktq$cc
  store i64 %cont142092, i64* %eptr144201                                            ; *eptr144201 = %cont142092
  %eptr144199 = getelementptr inbounds i64, i64* %cloptr144198, i64 0                ; &cloptr144198[0]
  %f144202 = ptrtoint void(i64,i64,i64)* @lam143409 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144202, i64* %eptr144199                                               ; store fptr
  %arg142499 = ptrtoint i64* %cloptr144198 to i64                                    ; closure cast; i64* -> i64
  %arg142498 = add i64 0, 0                                                          ; quoted ()
  %cloptr144203 = inttoptr i64 %arg142499 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144203)                                       ; assert function application
  %i0ptr144204 = getelementptr inbounds i64, i64* %cloptr144203, i64 0               ; &cloptr144203[0]
  %f144206 = load i64, i64* %i0ptr144204, align 8                                    ; load; *i0ptr144204
  %fptr144205 = inttoptr i64 %f144206 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144205(i64 %arg142499, i64 %arg142498, i64 %retprim142097); tail call
  ret void
}


define void @lam143409(i64 %env143410, i64 %_95142096, i64 %kid$_951) {
  %envptr144207 = inttoptr i64 %env143410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144208 = getelementptr inbounds i64, i64* %envptr144207, i64 2              ; &envptr144207[2]
  %cont142092 = load i64, i64* %envptr144208, align 8                                ; load; *envptr144208
  %envptr144209 = inttoptr i64 %env143410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144210 = getelementptr inbounds i64, i64* %envptr144209, i64 1              ; &envptr144209[1]
  %ktq$cc = load i64, i64* %envptr144210, align 8                                    ; load; *envptr144210
  %cloptr144211 = inttoptr i64 %ktq$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144211)                                       ; assert function application
  %i0ptr144212 = getelementptr inbounds i64, i64* %cloptr144211, i64 0               ; &cloptr144211[0]
  %f144214 = load i64, i64* %i0ptr144212, align 8                                    ; load; *i0ptr144212
  %fptr144213 = inttoptr i64 %f144214 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144213(i64 %ktq$cc, i64 %cont142092, i64 %ktq$cc)   ; tail call
  ret void
}


define void @lam143403(i64 %env143404, i64 %cont142100, i64 %f3l$v, i64 %usX$lst) {
  %arg142504 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %gG6$lst = call i64 @prim_make_45vector(i64 %arg142504, i64 %usX$lst)              ; call prim_make_45vector
  %cloptr144215 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144216 = getelementptr inbounds i64, i64* %cloptr144215, i64 0                ; &cloptr144215[0]
  %f144217 = ptrtoint void(i64,i64,i64)* @lam143400 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144217, i64* %eptr144216                                               ; store fptr
  %arg142507 = ptrtoint i64* %cloptr144215 to i64                                    ; closure cast; i64* -> i64
  %cloptr144218 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144220 = getelementptr inbounds i64, i64* %cloptr144218, i64 1                ; &eptr144220[1]
  %eptr144221 = getelementptr inbounds i64, i64* %cloptr144218, i64 2                ; &eptr144221[2]
  %eptr144222 = getelementptr inbounds i64, i64* %cloptr144218, i64 3                ; &eptr144222[3]
  store i64 %gG6$lst, i64* %eptr144220                                               ; *eptr144220 = %gG6$lst
  store i64 %cont142100, i64* %eptr144221                                            ; *eptr144221 = %cont142100
  store i64 %f3l$v, i64* %eptr144222                                                 ; *eptr144222 = %f3l$v
  %eptr144219 = getelementptr inbounds i64, i64* %cloptr144218, i64 0                ; &cloptr144218[0]
  %f144223 = ptrtoint void(i64,i64,i64)* @lam143398 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144223, i64* %eptr144219                                               ; store fptr
  %arg142506 = ptrtoint i64* %cloptr144218 to i64                                    ; closure cast; i64* -> i64
  %cloptr144224 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144226 = getelementptr inbounds i64, i64* %cloptr144224, i64 1                ; &eptr144226[1]
  %eptr144227 = getelementptr inbounds i64, i64* %cloptr144224, i64 2                ; &eptr144227[2]
  %eptr144228 = getelementptr inbounds i64, i64* %cloptr144224, i64 3                ; &eptr144228[3]
  store i64 %gG6$lst, i64* %eptr144226                                               ; *eptr144226 = %gG6$lst
  store i64 %cont142100, i64* %eptr144227                                            ; *eptr144227 = %cont142100
  store i64 %f3l$v, i64* %eptr144228                                                 ; *eptr144228 = %f3l$v
  %eptr144225 = getelementptr inbounds i64, i64* %cloptr144224, i64 0                ; &cloptr144224[0]
  %f144229 = ptrtoint void(i64,i64,i64)* @lam143385 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144229, i64* %eptr144225                                               ; store fptr
  %arg142505 = ptrtoint i64* %cloptr144224 to i64                                    ; closure cast; i64* -> i64
  %cloptr144230 = inttoptr i64 %arg142507 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144230)                                       ; assert function application
  %i0ptr144231 = getelementptr inbounds i64, i64* %cloptr144230, i64 0               ; &cloptr144230[0]
  %f144233 = load i64, i64* %i0ptr144231, align 8                                    ; load; *i0ptr144231
  %fptr144232 = inttoptr i64 %f144233 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144232(i64 %arg142507, i64 %arg142506, i64 %arg142505); tail call
  ret void
}


define void @lam143400(i64 %env143401, i64 %cont142105, i64 %XAX$u) {
  %cloptr144234 = inttoptr i64 %XAX$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144234)                                       ; assert function application
  %i0ptr144235 = getelementptr inbounds i64, i64* %cloptr144234, i64 0               ; &cloptr144234[0]
  %f144237 = load i64, i64* %i0ptr144235, align 8                                    ; load; *i0ptr144235
  %fptr144236 = inttoptr i64 %f144237 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144236(i64 %XAX$u, i64 %cont142105, i64 %XAX$u)     ; tail call
  ret void
}


define void @lam143398(i64 %env143399, i64 %_95142101, i64 %tEb$cc) {
  %envptr144238 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144239 = getelementptr inbounds i64, i64* %envptr144238, i64 3              ; &envptr144238[3]
  %f3l$v = load i64, i64* %envptr144239, align 8                                     ; load; *envptr144239
  %envptr144240 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144241 = getelementptr inbounds i64, i64* %envptr144240, i64 2              ; &envptr144240[2]
  %cont142100 = load i64, i64* %envptr144241, align 8                                ; load; *envptr144241
  %envptr144242 = inttoptr i64 %env143399 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144243 = getelementptr inbounds i64, i64* %envptr144242, i64 1              ; &envptr144242[1]
  %gG6$lst = load i64, i64* %envptr144243, align 8                                   ; load; *envptr144243
  %arg142511 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142000 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142511)               ; call prim_vector_45ref
  %a142001 = call i64 @prim_null_63(i64 %a142000)                                    ; call prim_null_63
  %cmp144244 = icmp eq i64 %a142001, 15                                              ; false?
  br i1 %cmp144244, label %else144246, label %then144245                             ; if

then144245:
  %arg142515 = add i64 0, 0                                                          ; quoted ()
  %arg142514 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144247 = inttoptr i64 %cont142100 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144247)                                       ; assert function application
  %i0ptr144248 = getelementptr inbounds i64, i64* %cloptr144247, i64 0               ; &cloptr144247[0]
  %f144250 = load i64, i64* %i0ptr144248, align 8                                    ; load; *i0ptr144248
  %fptr144249 = inttoptr i64 %f144250 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144249(i64 %cont142100, i64 %arg142515, i64 %arg142514); tail call
  ret void

else144246:
  %arg142517 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142002 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142517)               ; call prim_vector_45ref
  %a142003 = call i64 @prim_car(i64 %a142002)                                        ; call prim_car
  %a142004 = call i64 @prim_eqv_63(i64 %a142003, i64 %f3l$v)                         ; call prim_eqv_63
  %cmp144251 = icmp eq i64 %a142004, 15                                              ; false?
  br i1 %cmp144251, label %else144253, label %then144252                             ; if

then144252:
  %arg142522 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142102 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142522)         ; call prim_vector_45ref
  %arg142525 = add i64 0, 0                                                          ; quoted ()
  %cloptr144254 = inttoptr i64 %cont142100 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144254)                                       ; assert function application
  %i0ptr144255 = getelementptr inbounds i64, i64* %cloptr144254, i64 0               ; &cloptr144254[0]
  %f144257 = load i64, i64* %i0ptr144255, align 8                                    ; load; *i0ptr144255
  %fptr144256 = inttoptr i64 %f144257 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144256(i64 %cont142100, i64 %arg142525, i64 %retprim142102); tail call
  ret void

else144253:
  %arg142527 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142005 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142527)               ; call prim_vector_45ref
  %a142006 = call i64 @prim_cdr(i64 %a142005)                                        ; call prim_cdr
  %arg142531 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142104 = call i64 @prim_vector_45set_33(i64 %gG6$lst, i64 %arg142531, i64 %a142006); call prim_vector_45set_33
  %cloptr144258 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144260 = getelementptr inbounds i64, i64* %cloptr144258, i64 1                ; &eptr144260[1]
  %eptr144261 = getelementptr inbounds i64, i64* %cloptr144258, i64 2                ; &eptr144261[2]
  store i64 %cont142100, i64* %eptr144260                                            ; *eptr144260 = %cont142100
  store i64 %tEb$cc, i64* %eptr144261                                                ; *eptr144261 = %tEb$cc
  %eptr144259 = getelementptr inbounds i64, i64* %cloptr144258, i64 0                ; &cloptr144258[0]
  %f144262 = ptrtoint void(i64,i64,i64)* @lam143392 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144262, i64* %eptr144259                                               ; store fptr
  %arg142535 = ptrtoint i64* %cloptr144258 to i64                                    ; closure cast; i64* -> i64
  %arg142534 = add i64 0, 0                                                          ; quoted ()
  %cloptr144263 = inttoptr i64 %arg142535 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144263)                                       ; assert function application
  %i0ptr144264 = getelementptr inbounds i64, i64* %cloptr144263, i64 0               ; &cloptr144263[0]
  %f144266 = load i64, i64* %i0ptr144264, align 8                                    ; load; *i0ptr144264
  %fptr144265 = inttoptr i64 %f144266 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144265(i64 %arg142535, i64 %arg142534, i64 %retprim142104); tail call
  ret void
}


define void @lam143392(i64 %env143393, i64 %_95142103, i64 %ZaI$_950) {
  %envptr144267 = inttoptr i64 %env143393 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144268 = getelementptr inbounds i64, i64* %envptr144267, i64 2              ; &envptr144267[2]
  %tEb$cc = load i64, i64* %envptr144268, align 8                                    ; load; *envptr144268
  %envptr144269 = inttoptr i64 %env143393 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144270 = getelementptr inbounds i64, i64* %envptr144269, i64 1              ; &envptr144269[1]
  %cont142100 = load i64, i64* %envptr144270, align 8                                ; load; *envptr144270
  %cloptr144271 = inttoptr i64 %tEb$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144271)                                       ; assert function application
  %i0ptr144272 = getelementptr inbounds i64, i64* %cloptr144271, i64 0               ; &cloptr144271[0]
  %f144274 = load i64, i64* %i0ptr144272, align 8                                    ; load; *i0ptr144272
  %fptr144273 = inttoptr i64 %f144274 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144273(i64 %tEb$cc, i64 %cont142100, i64 %tEb$cc)   ; tail call
  ret void
}


define void @lam143385(i64 %env143386, i64 %_95142101, i64 %tEb$cc) {
  %envptr144275 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144276 = getelementptr inbounds i64, i64* %envptr144275, i64 3              ; &envptr144275[3]
  %f3l$v = load i64, i64* %envptr144276, align 8                                     ; load; *envptr144276
  %envptr144277 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144278 = getelementptr inbounds i64, i64* %envptr144277, i64 2              ; &envptr144277[2]
  %cont142100 = load i64, i64* %envptr144278, align 8                                ; load; *envptr144278
  %envptr144279 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144280 = getelementptr inbounds i64, i64* %envptr144279, i64 1              ; &envptr144279[1]
  %gG6$lst = load i64, i64* %envptr144280, align 8                                   ; load; *envptr144280
  %arg142539 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142000 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142539)               ; call prim_vector_45ref
  %a142001 = call i64 @prim_null_63(i64 %a142000)                                    ; call prim_null_63
  %cmp144281 = icmp eq i64 %a142001, 15                                              ; false?
  br i1 %cmp144281, label %else144283, label %then144282                             ; if

then144282:
  %arg142543 = add i64 0, 0                                                          ; quoted ()
  %arg142542 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144284 = inttoptr i64 %cont142100 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144284)                                       ; assert function application
  %i0ptr144285 = getelementptr inbounds i64, i64* %cloptr144284, i64 0               ; &cloptr144284[0]
  %f144287 = load i64, i64* %i0ptr144285, align 8                                    ; load; *i0ptr144285
  %fptr144286 = inttoptr i64 %f144287 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144286(i64 %cont142100, i64 %arg142543, i64 %arg142542); tail call
  ret void

else144283:
  %arg142545 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142002 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142545)               ; call prim_vector_45ref
  %a142003 = call i64 @prim_car(i64 %a142002)                                        ; call prim_car
  %a142004 = call i64 @prim_eqv_63(i64 %a142003, i64 %f3l$v)                         ; call prim_eqv_63
  %cmp144288 = icmp eq i64 %a142004, 15                                              ; false?
  br i1 %cmp144288, label %else144290, label %then144289                             ; if

then144289:
  %arg142550 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142102 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142550)         ; call prim_vector_45ref
  %arg142553 = add i64 0, 0                                                          ; quoted ()
  %cloptr144291 = inttoptr i64 %cont142100 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144291)                                       ; assert function application
  %i0ptr144292 = getelementptr inbounds i64, i64* %cloptr144291, i64 0               ; &cloptr144291[0]
  %f144294 = load i64, i64* %i0ptr144292, align 8                                    ; load; *i0ptr144292
  %fptr144293 = inttoptr i64 %f144294 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144293(i64 %cont142100, i64 %arg142553, i64 %retprim142102); tail call
  ret void

else144290:
  %arg142555 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142005 = call i64 @prim_vector_45ref(i64 %gG6$lst, i64 %arg142555)               ; call prim_vector_45ref
  %a142006 = call i64 @prim_cdr(i64 %a142005)                                        ; call prim_cdr
  %arg142559 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142104 = call i64 @prim_vector_45set_33(i64 %gG6$lst, i64 %arg142559, i64 %a142006); call prim_vector_45set_33
  %cloptr144295 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144297 = getelementptr inbounds i64, i64* %cloptr144295, i64 1                ; &eptr144297[1]
  %eptr144298 = getelementptr inbounds i64, i64* %cloptr144295, i64 2                ; &eptr144298[2]
  store i64 %cont142100, i64* %eptr144297                                            ; *eptr144297 = %cont142100
  store i64 %tEb$cc, i64* %eptr144298                                                ; *eptr144298 = %tEb$cc
  %eptr144296 = getelementptr inbounds i64, i64* %cloptr144295, i64 0                ; &cloptr144295[0]
  %f144299 = ptrtoint void(i64,i64,i64)* @lam143379 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144299, i64* %eptr144296                                               ; store fptr
  %arg142563 = ptrtoint i64* %cloptr144295 to i64                                    ; closure cast; i64* -> i64
  %arg142562 = add i64 0, 0                                                          ; quoted ()
  %cloptr144300 = inttoptr i64 %arg142563 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144300)                                       ; assert function application
  %i0ptr144301 = getelementptr inbounds i64, i64* %cloptr144300, i64 0               ; &cloptr144300[0]
  %f144303 = load i64, i64* %i0ptr144301, align 8                                    ; load; *i0ptr144301
  %fptr144302 = inttoptr i64 %f144303 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144302(i64 %arg142563, i64 %arg142562, i64 %retprim142104); tail call
  ret void
}


define void @lam143379(i64 %env143380, i64 %_95142103, i64 %ZaI$_950) {
  %envptr144304 = inttoptr i64 %env143380 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144305 = getelementptr inbounds i64, i64* %envptr144304, i64 2              ; &envptr144304[2]
  %tEb$cc = load i64, i64* %envptr144305, align 8                                    ; load; *envptr144305
  %envptr144306 = inttoptr i64 %env143380 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144307 = getelementptr inbounds i64, i64* %envptr144306, i64 1              ; &envptr144306[1]
  %cont142100 = load i64, i64* %envptr144307, align 8                                ; load; *envptr144307
  %cloptr144308 = inttoptr i64 %tEb$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144308)                                       ; assert function application
  %i0ptr144309 = getelementptr inbounds i64, i64* %cloptr144308, i64 0               ; &cloptr144308[0]
  %f144311 = load i64, i64* %i0ptr144309, align 8                                    ; load; *i0ptr144309
  %fptr144310 = inttoptr i64 %f144311 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144310(i64 %tEb$cc, i64 %cont142100, i64 %tEb$cc)   ; tail call
  ret void
}


define void @lam143372(i64 %env143373, i64 %EeM$args142107) {
  %envptr144312 = inttoptr i64 %env143373 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144313 = getelementptr inbounds i64, i64* %envptr144312, i64 1              ; &envptr144312[1]
  %Ovw$_37foldl1 = load i64, i64* %envptr144313, align 8                             ; load; *envptr144313
  %cont142106 = call i64 @prim_car(i64 %EeM$args142107)                              ; call prim_car
  %EeM$args = call i64 @prim_cdr(i64 %EeM$args142107)                                ; call prim_cdr
  %a142007 = call i64 @prim_null_63(i64 %EeM$args)                                   ; call prim_null_63
  %cmp144314 = icmp eq i64 %a142007, 15                                              ; false?
  br i1 %cmp144314, label %else144316, label %then144315                             ; if

then144315:
  %arg142571 = add i64 0, 0                                                          ; quoted ()
  %arg142570 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr144317 = inttoptr i64 %cont142106 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144317)                                       ; assert function application
  %i0ptr144318 = getelementptr inbounds i64, i64* %cloptr144317, i64 0               ; &cloptr144317[0]
  %f144320 = load i64, i64* %i0ptr144318, align 8                                    ; load; *i0ptr144318
  %fptr144319 = inttoptr i64 %f144320 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144319(i64 %cont142106, i64 %arg142571, i64 %arg142570); tail call
  ret void

else144316:
  %a142008 = call i64 @prim_cdr(i64 %EeM$args)                                       ; call prim_cdr
  %a142009 = call i64 @prim_null_63(i64 %a142008)                                    ; call prim_null_63
  %cmp144321 = icmp eq i64 %a142009, 15                                              ; false?
  br i1 %cmp144321, label %else144323, label %then144322                             ; if

then144322:
  %retprim142108 = call i64 @prim_car(i64 %EeM$args)                                 ; call prim_car
  %arg142577 = add i64 0, 0                                                          ; quoted ()
  %cloptr144324 = inttoptr i64 %cont142106 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144324)                                       ; assert function application
  %i0ptr144325 = getelementptr inbounds i64, i64* %cloptr144324, i64 0               ; &cloptr144324[0]
  %f144327 = load i64, i64* %i0ptr144325, align 8                                    ; load; *i0ptr144325
  %fptr144326 = inttoptr i64 %f144327 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144326(i64 %cont142106, i64 %arg142577, i64 %retprim142108); tail call
  ret void

else144323:
  %a142010 = call i64 @prim_car(i64 %EeM$args)                                       ; call prim_car
  %a142011 = call i64 @prim_cdr(i64 %EeM$args)                                       ; call prim_cdr
  %cloptr144328 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144329 = getelementptr inbounds i64, i64* %cloptr144328, i64 0                ; &cloptr144328[0]
  %f144330 = ptrtoint void(i64,i64,i64,i64)* @lam143370 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144330, i64* %eptr144329                                               ; store fptr
  %arg142583 = ptrtoint i64* %cloptr144328 to i64                                    ; closure cast; i64* -> i64
  %cloptr144331 = inttoptr i64 %Ovw$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144331)                                       ; assert function application
  %i0ptr144332 = getelementptr inbounds i64, i64* %cloptr144331, i64 0               ; &cloptr144331[0]
  %f144334 = load i64, i64* %i0ptr144332, align 8                                    ; load; *i0ptr144332
  %fptr144333 = inttoptr i64 %f144334 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144333(i64 %Ovw$_37foldl1, i64 %cont142106, i64 %arg142583, i64 %a142010, i64 %a142011); tail call
  ret void
}


define void @lam143370(i64 %env143371, i64 %cont142109, i64 %fi8$n, i64 %fM2$v) {
  %retprim142110 = call i64 @prim__47(i64 %fM2$v, i64 %fi8$n)                        ; call prim__47
  %arg142589 = add i64 0, 0                                                          ; quoted ()
  %cloptr144335 = inttoptr i64 %cont142109 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144335)                                       ; assert function application
  %i0ptr144336 = getelementptr inbounds i64, i64* %cloptr144335, i64 0               ; &cloptr144335[0]
  %f144338 = load i64, i64* %i0ptr144336, align 8                                    ; load; *i0ptr144336
  %fptr144337 = inttoptr i64 %f144338 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144337(i64 %cont142109, i64 %arg142589, i64 %retprim142110); tail call
  ret void
}


define void @lam143364(i64 %env143365, i64 %cont142111, i64 %aVX$x) {
  %retprim142112 = call i64 @prim_car(i64 %aVX$x)                                    ; call prim_car
  %arg142593 = add i64 0, 0                                                          ; quoted ()
  %cloptr144339 = inttoptr i64 %cont142111 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144339)                                       ; assert function application
  %i0ptr144340 = getelementptr inbounds i64, i64* %cloptr144339, i64 0               ; &cloptr144339[0]
  %f144342 = load i64, i64* %i0ptr144340, align 8                                    ; load; *i0ptr144340
  %fptr144341 = inttoptr i64 %f144342 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144341(i64 %cont142111, i64 %arg142593, i64 %retprim142112); tail call
  ret void
}


define void @lam143361(i64 %env143362, i64 %cont142113, i64 %pbw$x) {
  %a142012 = call i64 @prim_cdr(i64 %pbw$x)                                          ; call prim_cdr
  %retprim142114 = call i64 @prim_car(i64 %a142012)                                  ; call prim_car
  %arg142598 = add i64 0, 0                                                          ; quoted ()
  %cloptr144343 = inttoptr i64 %cont142113 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144343)                                       ; assert function application
  %i0ptr144344 = getelementptr inbounds i64, i64* %cloptr144343, i64 0               ; &cloptr144343[0]
  %f144346 = load i64, i64* %i0ptr144344, align 8                                    ; load; *i0ptr144344
  %fptr144345 = inttoptr i64 %f144346 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144345(i64 %cont142113, i64 %arg142598, i64 %retprim142114); tail call
  ret void
}


define void @lam143358(i64 %env143359, i64 %cont142115, i64 %a6D$x) {
  %a142013 = call i64 @prim_cdr(i64 %a6D$x)                                          ; call prim_cdr
  %a142014 = call i64 @prim_cdr(i64 %a142013)                                        ; call prim_cdr
  %retprim142116 = call i64 @prim_car(i64 %a142014)                                  ; call prim_car
  %arg142604 = add i64 0, 0                                                          ; quoted ()
  %cloptr144347 = inttoptr i64 %cont142115 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144347)                                       ; assert function application
  %i0ptr144348 = getelementptr inbounds i64, i64* %cloptr144347, i64 0               ; &cloptr144347[0]
  %f144350 = load i64, i64* %i0ptr144348, align 8                                    ; load; *i0ptr144348
  %fptr144349 = inttoptr i64 %f144350 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144349(i64 %cont142115, i64 %arg142604, i64 %retprim142116); tail call
  ret void
}


define void @lam143355(i64 %env143356, i64 %cont142117, i64 %PIp$x) {
  %a142015 = call i64 @prim_cdr(i64 %PIp$x)                                          ; call prim_cdr
  %a142016 = call i64 @prim_cdr(i64 %a142015)                                        ; call prim_cdr
  %a142017 = call i64 @prim_cdr(i64 %a142016)                                        ; call prim_cdr
  %retprim142118 = call i64 @prim_car(i64 %a142017)                                  ; call prim_car
  %arg142611 = add i64 0, 0                                                          ; quoted ()
  %cloptr144351 = inttoptr i64 %cont142117 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144351)                                       ; assert function application
  %i0ptr144352 = getelementptr inbounds i64, i64* %cloptr144351, i64 0               ; &cloptr144351[0]
  %f144354 = load i64, i64* %i0ptr144352, align 8                                    ; load; *i0ptr144352
  %fptr144353 = inttoptr i64 %f144354 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144353(i64 %cont142117, i64 %arg142611, i64 %retprim142118); tail call
  ret void
}


define void @lam143352(i64 %env143353, i64 %cont142119, i64 %vo1$p) {
  %a142018 = call i64 @prim_cons_63(i64 %vo1$p)                                      ; call prim_cons_63
  %cmp144355 = icmp eq i64 %a142018, 15                                              ; false?
  br i1 %cmp144355, label %else144357, label %then144356                             ; if

then144356:
  %a142019 = call i64 @prim_car(i64 %vo1$p)                                          ; call prim_car
  %arg142615 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym144358, i32 0, i32 0)); quoted string
  %retprim142120 = call i64 @prim_eq_63(i64 %a142019, i64 %arg142615)                ; call prim_eq_63
  %arg142618 = add i64 0, 0                                                          ; quoted ()
  %cloptr144359 = inttoptr i64 %cont142119 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144359)                                       ; assert function application
  %i0ptr144360 = getelementptr inbounds i64, i64* %cloptr144359, i64 0               ; &cloptr144359[0]
  %f144362 = load i64, i64* %i0ptr144360, align 8                                    ; load; *i0ptr144360
  %fptr144361 = inttoptr i64 %f144362 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144361(i64 %cont142119, i64 %arg142618, i64 %retprim142120); tail call
  ret void

else144357:
  %arg142621 = add i64 0, 0                                                          ; quoted ()
  %arg142620 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144363 = inttoptr i64 %cont142119 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144363)                                       ; assert function application
  %i0ptr144364 = getelementptr inbounds i64, i64* %cloptr144363, i64 0               ; &cloptr144363[0]
  %f144366 = load i64, i64* %i0ptr144364, align 8                                    ; load; *i0ptr144364
  %fptr144365 = inttoptr i64 %f144366 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144365(i64 %cont142119, i64 %arg142621, i64 %arg142620); tail call
  ret void
}


define void @lam143346(i64 %env143347, i64 %uUH$lst142165) {
  %cont142164 = call i64 @prim_car(i64 %uUH$lst142165)                               ; call prim_car
  %uUH$lst = call i64 @prim_cdr(i64 %uUH$lst142165)                                  ; call prim_cdr
  %arg142628 = add i64 0, 0                                                          ; quoted ()
  %cloptr144367 = inttoptr i64 %cont142164 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144367)                                       ; assert function application
  %i0ptr144368 = getelementptr inbounds i64, i64* %cloptr144367, i64 0               ; &cloptr144367[0]
  %f144370 = load i64, i64* %i0ptr144368, align 8                                    ; load; *i0ptr144368
  %fptr144369 = inttoptr i64 %f144370 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144369(i64 %cont142164, i64 %arg142628, i64 %uUH$lst); tail call
  ret void
}


define void @lam143343(i64 %env143344, i64 %_95142121, i64 %UFW$_37raise_45handler) {
  %envptr144371 = inttoptr i64 %env143344 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144372 = getelementptr inbounds i64, i64* %envptr144371, i64 3              ; &envptr144371[3]
  %b8t$_37drop = load i64, i64* %envptr144372, align 8                               ; load; *envptr144372
  %envptr144373 = inttoptr i64 %env143344 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144374 = getelementptr inbounds i64, i64* %envptr144373, i64 2              ; &envptr144373[2]
  %Y2T$_37_62 = load i64, i64* %envptr144374, align 8                                ; load; *envptr144374
  %envptr144375 = inttoptr i64 %env143344 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144376 = getelementptr inbounds i64, i64* %envptr144375, i64 1              ; &envptr144375[1]
  %RDB$_37length = load i64, i64* %envptr144376, align 8                             ; load; *envptr144376
  %cloptr144377 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144378 = getelementptr inbounds i64, i64* %cloptr144377, i64 0                ; &cloptr144377[0]
  %f144379 = ptrtoint void(i64,i64)* @lam143341 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144379, i64* %eptr144378                                               ; store fptr
  %arg142631 = ptrtoint i64* %cloptr144377 to i64                                    ; closure cast; i64* -> i64
  %cloptr144380 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144382 = getelementptr inbounds i64, i64* %cloptr144380, i64 1                ; &eptr144382[1]
  %eptr144383 = getelementptr inbounds i64, i64* %cloptr144380, i64 2                ; &eptr144383[2]
  %eptr144384 = getelementptr inbounds i64, i64* %cloptr144380, i64 3                ; &eptr144384[3]
  store i64 %RDB$_37length, i64* %eptr144382                                         ; *eptr144382 = %RDB$_37length
  store i64 %Y2T$_37_62, i64* %eptr144383                                            ; *eptr144383 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144384                                           ; *eptr144384 = %b8t$_37drop
  %eptr144381 = getelementptr inbounds i64, i64* %cloptr144380, i64 0                ; &cloptr144380[0]
  %f144385 = ptrtoint void(i64,i64,i64)* @lam143338 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144385, i64* %eptr144381                                               ; store fptr
  %arg142630 = ptrtoint i64* %cloptr144380 to i64                                    ; closure cast; i64* -> i64
  %rva143089 = add i64 0, 0                                                          ; quoted ()
  %rva143088 = call i64 @prim_cons(i64 %arg142630, i64 %rva143089)                   ; call prim_cons
  %cloptr144386 = inttoptr i64 %arg142631 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144386)                                       ; assert function application
  %i0ptr144387 = getelementptr inbounds i64, i64* %cloptr144386, i64 0               ; &cloptr144386[0]
  %f144389 = load i64, i64* %i0ptr144387, align 8                                    ; load; *i0ptr144387
  %fptr144388 = inttoptr i64 %f144389 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144388(i64 %arg142631, i64 %rva143088)              ; tail call
  ret void
}


define void @lam143341(i64 %env143342, i64 %r2Z$lst142163) {
  %cont142162 = call i64 @prim_car(i64 %r2Z$lst142163)                               ; call prim_car
  %r2Z$lst = call i64 @prim_cdr(i64 %r2Z$lst142163)                                  ; call prim_cdr
  %arg142635 = add i64 0, 0                                                          ; quoted ()
  %cloptr144390 = inttoptr i64 %cont142162 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144390)                                       ; assert function application
  %i0ptr144391 = getelementptr inbounds i64, i64* %cloptr144390, i64 0               ; &cloptr144390[0]
  %f144393 = load i64, i64* %i0ptr144391, align 8                                    ; load; *i0ptr144391
  %fptr144392 = inttoptr i64 %f144393 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144392(i64 %cont142162, i64 %arg142635, i64 %r2Z$lst); tail call
  ret void
}


define void @lam143338(i64 %env143339, i64 %_95142160, i64 %a142020) {
  %envptr144394 = inttoptr i64 %env143339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144395 = getelementptr inbounds i64, i64* %envptr144394, i64 3              ; &envptr144394[3]
  %b8t$_37drop = load i64, i64* %envptr144395, align 8                               ; load; *envptr144395
  %envptr144396 = inttoptr i64 %env143339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144397 = getelementptr inbounds i64, i64* %envptr144396, i64 2              ; &envptr144396[2]
  %Y2T$_37_62 = load i64, i64* %envptr144397, align 8                                ; load; *envptr144397
  %envptr144398 = inttoptr i64 %env143339 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144399 = getelementptr inbounds i64, i64* %envptr144398, i64 1              ; &envptr144398[1]
  %RDB$_37length = load i64, i64* %envptr144399, align 8                             ; load; *envptr144399
  %arg142638 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142161 = call i64 @prim_make_45vector(i64 %arg142638, i64 %a142020)        ; call prim_make_45vector
  %cloptr144400 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144402 = getelementptr inbounds i64, i64* %cloptr144400, i64 1                ; &eptr144402[1]
  %eptr144403 = getelementptr inbounds i64, i64* %cloptr144400, i64 2                ; &eptr144403[2]
  %eptr144404 = getelementptr inbounds i64, i64* %cloptr144400, i64 3                ; &eptr144404[3]
  store i64 %RDB$_37length, i64* %eptr144402                                         ; *eptr144402 = %RDB$_37length
  store i64 %Y2T$_37_62, i64* %eptr144403                                            ; *eptr144403 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144404                                           ; *eptr144404 = %b8t$_37drop
  %eptr144401 = getelementptr inbounds i64, i64* %cloptr144400, i64 0                ; &cloptr144400[0]
  %f144405 = ptrtoint void(i64,i64,i64)* @lam143335 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144405, i64* %eptr144401                                               ; store fptr
  %arg142641 = ptrtoint i64* %cloptr144400 to i64                                    ; closure cast; i64* -> i64
  %arg142640 = add i64 0, 0                                                          ; quoted ()
  %cloptr144406 = inttoptr i64 %arg142641 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144406)                                       ; assert function application
  %i0ptr144407 = getelementptr inbounds i64, i64* %cloptr144406, i64 0               ; &cloptr144406[0]
  %f144409 = load i64, i64* %i0ptr144407, align 8                                    ; load; *i0ptr144407
  %fptr144408 = inttoptr i64 %f144409 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144408(i64 %arg142641, i64 %arg142640, i64 %retprim142161); tail call
  ret void
}


define void @lam143335(i64 %env143336, i64 %_95142122, i64 %opR$_37wind_45stack) {
  %envptr144410 = inttoptr i64 %env143336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144411 = getelementptr inbounds i64, i64* %envptr144410, i64 3              ; &envptr144410[3]
  %b8t$_37drop = load i64, i64* %envptr144411, align 8                               ; load; *envptr144411
  %envptr144412 = inttoptr i64 %env143336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144413 = getelementptr inbounds i64, i64* %envptr144412, i64 2              ; &envptr144412[2]
  %Y2T$_37_62 = load i64, i64* %envptr144413, align 8                                ; load; *envptr144413
  %envptr144414 = inttoptr i64 %env143336 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144415 = getelementptr inbounds i64, i64* %envptr144414, i64 1              ; &envptr144414[1]
  %RDB$_37length = load i64, i64* %envptr144415, align 8                             ; load; *envptr144415
  %cloptr144416 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144418 = getelementptr inbounds i64, i64* %cloptr144416, i64 1                ; &eptr144418[1]
  %eptr144419 = getelementptr inbounds i64, i64* %cloptr144416, i64 2                ; &eptr144419[2]
  %eptr144420 = getelementptr inbounds i64, i64* %cloptr144416, i64 3                ; &eptr144420[3]
  store i64 %RDB$_37length, i64* %eptr144418                                         ; *eptr144418 = %RDB$_37length
  store i64 %Y2T$_37_62, i64* %eptr144419                                            ; *eptr144419 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144420                                           ; *eptr144420 = %b8t$_37drop
  %eptr144417 = getelementptr inbounds i64, i64* %cloptr144416, i64 0                ; &cloptr144416[0]
  %f144421 = ptrtoint void(i64,i64,i64,i64)* @lam143333 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144421, i64* %eptr144417                                               ; store fptr
  %Icc$_37common_45tail = ptrtoint i64* %cloptr144416 to i64                         ; closure cast; i64* -> i64
  %cloptr144422 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144424 = getelementptr inbounds i64, i64* %cloptr144422, i64 1                ; &eptr144424[1]
  %eptr144425 = getelementptr inbounds i64, i64* %cloptr144422, i64 2                ; &eptr144425[2]
  store i64 %Icc$_37common_45tail, i64* %eptr144424                                  ; *eptr144424 = %Icc$_37common_45tail
  store i64 %opR$_37wind_45stack, i64* %eptr144425                                   ; *eptr144425 = %opR$_37wind_45stack
  %eptr144423 = getelementptr inbounds i64, i64* %cloptr144422, i64 0                ; &cloptr144422[0]
  %f144426 = ptrtoint void(i64,i64,i64)* @lam143291 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144426, i64* %eptr144423                                               ; store fptr
  %dcQ$_37do_45wind = ptrtoint i64* %cloptr144422 to i64                             ; closure cast; i64* -> i64
  %arg142828 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg142827 = call i64 @const_init_int(i64 2)                                       ; quoted int
  %arg142826 = call i64 @const_init_int(i64 3)                                       ; quoted int
  call i64 @too_many_args()                                                          ; arity mismatch cdr
  ret void                                                                           ; 
}


define void @lam143333(i64 %env143334, i64 %cont142123, i64 %f45$x, i64 %PwU$y) {
  %envptr144427 = inttoptr i64 %env143334 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144428 = getelementptr inbounds i64, i64* %envptr144427, i64 3              ; &envptr144427[3]
  %b8t$_37drop = load i64, i64* %envptr144428, align 8                               ; load; *envptr144428
  %envptr144429 = inttoptr i64 %env143334 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144430 = getelementptr inbounds i64, i64* %envptr144429, i64 2              ; &envptr144429[2]
  %Y2T$_37_62 = load i64, i64* %envptr144430, align 8                                ; load; *envptr144430
  %envptr144431 = inttoptr i64 %env143334 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144432 = getelementptr inbounds i64, i64* %envptr144431, i64 1              ; &envptr144431[1]
  %RDB$_37length = load i64, i64* %envptr144432, align 8                             ; load; *envptr144432
  %cloptr144433 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr144435 = getelementptr inbounds i64, i64* %cloptr144433, i64 1                ; &eptr144435[1]
  %eptr144436 = getelementptr inbounds i64, i64* %cloptr144433, i64 2                ; &eptr144436[2]
  %eptr144437 = getelementptr inbounds i64, i64* %cloptr144433, i64 3                ; &eptr144437[3]
  %eptr144438 = getelementptr inbounds i64, i64* %cloptr144433, i64 4                ; &eptr144438[4]
  %eptr144439 = getelementptr inbounds i64, i64* %cloptr144433, i64 5                ; &eptr144439[5]
  %eptr144440 = getelementptr inbounds i64, i64* %cloptr144433, i64 6                ; &eptr144440[6]
  store i64 %RDB$_37length, i64* %eptr144435                                         ; *eptr144435 = %RDB$_37length
  store i64 %Y2T$_37_62, i64* %eptr144436                                            ; *eptr144436 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144437                                           ; *eptr144437 = %b8t$_37drop
  store i64 %cont142123, i64* %eptr144438                                            ; *eptr144438 = %cont142123
  store i64 %PwU$y, i64* %eptr144439                                                 ; *eptr144439 = %PwU$y
  store i64 %f45$x, i64* %eptr144440                                                 ; *eptr144440 = %f45$x
  %eptr144434 = getelementptr inbounds i64, i64* %cloptr144433, i64 0                ; &cloptr144433[0]
  %f144441 = ptrtoint void(i64,i64,i64)* @lam143331 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144441, i64* %eptr144434                                               ; store fptr
  %arg142643 = ptrtoint i64* %cloptr144433 to i64                                    ; closure cast; i64* -> i64
  %cloptr144442 = inttoptr i64 %RDB$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144442)                                       ; assert function application
  %i0ptr144443 = getelementptr inbounds i64, i64* %cloptr144442, i64 0               ; &cloptr144442[0]
  %f144445 = load i64, i64* %i0ptr144443, align 8                                    ; load; *i0ptr144443
  %fptr144444 = inttoptr i64 %f144445 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144444(i64 %RDB$_37length, i64 %arg142643, i64 %f45$x); tail call
  ret void
}


define void @lam143331(i64 %env143332, i64 %_95142124, i64 %HjQ$lx) {
  %envptr144446 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144447 = getelementptr inbounds i64, i64* %envptr144446, i64 6              ; &envptr144446[6]
  %f45$x = load i64, i64* %envptr144447, align 8                                     ; load; *envptr144447
  %envptr144448 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144449 = getelementptr inbounds i64, i64* %envptr144448, i64 5              ; &envptr144448[5]
  %PwU$y = load i64, i64* %envptr144449, align 8                                     ; load; *envptr144449
  %envptr144450 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144451 = getelementptr inbounds i64, i64* %envptr144450, i64 4              ; &envptr144450[4]
  %cont142123 = load i64, i64* %envptr144451, align 8                                ; load; *envptr144451
  %envptr144452 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144453 = getelementptr inbounds i64, i64* %envptr144452, i64 3              ; &envptr144452[3]
  %b8t$_37drop = load i64, i64* %envptr144453, align 8                               ; load; *envptr144453
  %envptr144454 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144455 = getelementptr inbounds i64, i64* %envptr144454, i64 2              ; &envptr144454[2]
  %Y2T$_37_62 = load i64, i64* %envptr144455, align 8                                ; load; *envptr144455
  %envptr144456 = inttoptr i64 %env143332 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144457 = getelementptr inbounds i64, i64* %envptr144456, i64 1              ; &envptr144456[1]
  %RDB$_37length = load i64, i64* %envptr144457, align 8                             ; load; *envptr144457
  %cloptr144458 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr144460 = getelementptr inbounds i64, i64* %cloptr144458, i64 1                ; &eptr144460[1]
  %eptr144461 = getelementptr inbounds i64, i64* %cloptr144458, i64 2                ; &eptr144461[2]
  %eptr144462 = getelementptr inbounds i64, i64* %cloptr144458, i64 3                ; &eptr144462[3]
  %eptr144463 = getelementptr inbounds i64, i64* %cloptr144458, i64 4                ; &eptr144463[4]
  %eptr144464 = getelementptr inbounds i64, i64* %cloptr144458, i64 5                ; &eptr144464[5]
  %eptr144465 = getelementptr inbounds i64, i64* %cloptr144458, i64 6                ; &eptr144465[6]
  store i64 %Y2T$_37_62, i64* %eptr144460                                            ; *eptr144460 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144461                                           ; *eptr144461 = %b8t$_37drop
  store i64 %HjQ$lx, i64* %eptr144462                                                ; *eptr144462 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144463                                            ; *eptr144463 = %cont142123
  store i64 %PwU$y, i64* %eptr144464                                                 ; *eptr144464 = %PwU$y
  store i64 %f45$x, i64* %eptr144465                                                 ; *eptr144465 = %f45$x
  %eptr144459 = getelementptr inbounds i64, i64* %cloptr144458, i64 0                ; &cloptr144458[0]
  %f144466 = ptrtoint void(i64,i64,i64)* @lam143329 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144466, i64* %eptr144459                                               ; store fptr
  %arg142646 = ptrtoint i64* %cloptr144458 to i64                                    ; closure cast; i64* -> i64
  %cloptr144467 = inttoptr i64 %RDB$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144467)                                       ; assert function application
  %i0ptr144468 = getelementptr inbounds i64, i64* %cloptr144467, i64 0               ; &cloptr144467[0]
  %f144470 = load i64, i64* %i0ptr144468, align 8                                    ; load; *i0ptr144468
  %fptr144469 = inttoptr i64 %f144470 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144469(i64 %RDB$_37length, i64 %arg142646, i64 %PwU$y); tail call
  ret void
}


define void @lam143329(i64 %env143330, i64 %_95142125, i64 %ti0$ly) {
  %envptr144471 = inttoptr i64 %env143330 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144472 = getelementptr inbounds i64, i64* %envptr144471, i64 6              ; &envptr144471[6]
  %f45$x = load i64, i64* %envptr144472, align 8                                     ; load; *envptr144472
  %envptr144473 = inttoptr i64 %env143330 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144474 = getelementptr inbounds i64, i64* %envptr144473, i64 5              ; &envptr144473[5]
  %PwU$y = load i64, i64* %envptr144474, align 8                                     ; load; *envptr144474
  %envptr144475 = inttoptr i64 %env143330 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144476 = getelementptr inbounds i64, i64* %envptr144475, i64 4              ; &envptr144475[4]
  %cont142123 = load i64, i64* %envptr144476, align 8                                ; load; *envptr144476
  %envptr144477 = inttoptr i64 %env143330 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144478 = getelementptr inbounds i64, i64* %envptr144477, i64 3              ; &envptr144477[3]
  %HjQ$lx = load i64, i64* %envptr144478, align 8                                    ; load; *envptr144478
  %envptr144479 = inttoptr i64 %env143330 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144480 = getelementptr inbounds i64, i64* %envptr144479, i64 2              ; &envptr144479[2]
  %b8t$_37drop = load i64, i64* %envptr144480, align 8                               ; load; *envptr144480
  %envptr144481 = inttoptr i64 %env143330 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144482 = getelementptr inbounds i64, i64* %envptr144481, i64 1              ; &envptr144481[1]
  %Y2T$_37_62 = load i64, i64* %envptr144482, align 8                                ; load; *envptr144482
  %cloptr144483 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144484 = getelementptr inbounds i64, i64* %cloptr144483, i64 0                ; &cloptr144483[0]
  %f144485 = ptrtoint void(i64,i64)* @lam143327 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144485, i64* %eptr144484                                               ; store fptr
  %arg142649 = ptrtoint i64* %cloptr144483 to i64                                    ; closure cast; i64* -> i64
  %cloptr144486 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144488 = getelementptr inbounds i64, i64* %cloptr144486, i64 1                ; &eptr144488[1]
  %eptr144489 = getelementptr inbounds i64, i64* %cloptr144486, i64 2                ; &eptr144489[2]
  %eptr144490 = getelementptr inbounds i64, i64* %cloptr144486, i64 3                ; &eptr144490[3]
  %eptr144491 = getelementptr inbounds i64, i64* %cloptr144486, i64 4                ; &eptr144491[4]
  %eptr144492 = getelementptr inbounds i64, i64* %cloptr144486, i64 5                ; &eptr144492[5]
  %eptr144493 = getelementptr inbounds i64, i64* %cloptr144486, i64 6                ; &eptr144493[6]
  %eptr144494 = getelementptr inbounds i64, i64* %cloptr144486, i64 7                ; &eptr144494[7]
  store i64 %Y2T$_37_62, i64* %eptr144488                                            ; *eptr144488 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144489                                           ; *eptr144489 = %b8t$_37drop
  store i64 %ti0$ly, i64* %eptr144490                                                ; *eptr144490 = %ti0$ly
  store i64 %HjQ$lx, i64* %eptr144491                                                ; *eptr144491 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144492                                            ; *eptr144492 = %cont142123
  store i64 %PwU$y, i64* %eptr144493                                                 ; *eptr144493 = %PwU$y
  store i64 %f45$x, i64* %eptr144494                                                 ; *eptr144494 = %f45$x
  %eptr144487 = getelementptr inbounds i64, i64* %cloptr144486, i64 0                ; &cloptr144486[0]
  %f144495 = ptrtoint void(i64,i64,i64)* @lam143324 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144495, i64* %eptr144487                                               ; store fptr
  %arg142648 = ptrtoint i64* %cloptr144486 to i64                                    ; closure cast; i64* -> i64
  %cloptr144496 = inttoptr i64 %arg142649 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144496)                                       ; assert function application
  %i0ptr144497 = getelementptr inbounds i64, i64* %cloptr144496, i64 0               ; &cloptr144496[0]
  %f144499 = load i64, i64* %i0ptr144497, align 8                                    ; load; *i0ptr144497
  %fptr144498 = inttoptr i64 %f144499 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144498(i64 %arg142649, i64 %arg142648)              ; tail call
  ret void
}


define void @lam143327(i64 %env143328, i64 %vVo$lst142135) {
  %cont142134 = call i64 @prim_car(i64 %vVo$lst142135)                               ; call prim_car
  %vVo$lst = call i64 @prim_cdr(i64 %vVo$lst142135)                                  ; call prim_cdr
  %arg142653 = add i64 0, 0                                                          ; quoted ()
  %cloptr144500 = inttoptr i64 %cont142134 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144500)                                       ; assert function application
  %i0ptr144501 = getelementptr inbounds i64, i64* %cloptr144500, i64 0               ; &cloptr144500[0]
  %f144503 = load i64, i64* %i0ptr144501, align 8                                    ; load; *i0ptr144501
  %fptr144502 = inttoptr i64 %f144503 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144502(i64 %cont142134, i64 %arg142653, i64 %vVo$lst); tail call
  ret void
}


define void @lam143324(i64 %env143325, i64 %_95142132, i64 %a142021) {
  %envptr144504 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144505 = getelementptr inbounds i64, i64* %envptr144504, i64 7              ; &envptr144504[7]
  %f45$x = load i64, i64* %envptr144505, align 8                                     ; load; *envptr144505
  %envptr144506 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144507 = getelementptr inbounds i64, i64* %envptr144506, i64 6              ; &envptr144506[6]
  %PwU$y = load i64, i64* %envptr144507, align 8                                     ; load; *envptr144507
  %envptr144508 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144509 = getelementptr inbounds i64, i64* %envptr144508, i64 5              ; &envptr144508[5]
  %cont142123 = load i64, i64* %envptr144509, align 8                                ; load; *envptr144509
  %envptr144510 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144511 = getelementptr inbounds i64, i64* %envptr144510, i64 4              ; &envptr144510[4]
  %HjQ$lx = load i64, i64* %envptr144511, align 8                                    ; load; *envptr144511
  %envptr144512 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144513 = getelementptr inbounds i64, i64* %envptr144512, i64 3              ; &envptr144512[3]
  %ti0$ly = load i64, i64* %envptr144513, align 8                                    ; load; *envptr144513
  %envptr144514 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144515 = getelementptr inbounds i64, i64* %envptr144514, i64 2              ; &envptr144514[2]
  %b8t$_37drop = load i64, i64* %envptr144515, align 8                               ; load; *envptr144515
  %envptr144516 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144517 = getelementptr inbounds i64, i64* %envptr144516, i64 1              ; &envptr144516[1]
  %Y2T$_37_62 = load i64, i64* %envptr144517, align 8                                ; load; *envptr144517
  %arg142656 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142133 = call i64 @prim_make_45vector(i64 %arg142656, i64 %a142021)        ; call prim_make_45vector
  %cloptr144518 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144520 = getelementptr inbounds i64, i64* %cloptr144518, i64 1                ; &eptr144520[1]
  %eptr144521 = getelementptr inbounds i64, i64* %cloptr144518, i64 2                ; &eptr144521[2]
  %eptr144522 = getelementptr inbounds i64, i64* %cloptr144518, i64 3                ; &eptr144522[3]
  %eptr144523 = getelementptr inbounds i64, i64* %cloptr144518, i64 4                ; &eptr144523[4]
  %eptr144524 = getelementptr inbounds i64, i64* %cloptr144518, i64 5                ; &eptr144524[5]
  %eptr144525 = getelementptr inbounds i64, i64* %cloptr144518, i64 6                ; &eptr144525[6]
  %eptr144526 = getelementptr inbounds i64, i64* %cloptr144518, i64 7                ; &eptr144526[7]
  store i64 %Y2T$_37_62, i64* %eptr144520                                            ; *eptr144520 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144521                                           ; *eptr144521 = %b8t$_37drop
  store i64 %ti0$ly, i64* %eptr144522                                                ; *eptr144522 = %ti0$ly
  store i64 %HjQ$lx, i64* %eptr144523                                                ; *eptr144523 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144524                                            ; *eptr144524 = %cont142123
  store i64 %PwU$y, i64* %eptr144525                                                 ; *eptr144525 = %PwU$y
  store i64 %f45$x, i64* %eptr144526                                                 ; *eptr144526 = %f45$x
  %eptr144519 = getelementptr inbounds i64, i64* %cloptr144518, i64 0                ; &cloptr144518[0]
  %f144527 = ptrtoint void(i64,i64,i64)* @lam143321 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144527, i64* %eptr144519                                               ; store fptr
  %arg142659 = ptrtoint i64* %cloptr144518 to i64                                    ; closure cast; i64* -> i64
  %arg142658 = add i64 0, 0                                                          ; quoted ()
  %cloptr144528 = inttoptr i64 %arg142659 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144528)                                       ; assert function application
  %i0ptr144529 = getelementptr inbounds i64, i64* %cloptr144528, i64 0               ; &cloptr144528[0]
  %f144531 = load i64, i64* %i0ptr144529, align 8                                    ; load; *i0ptr144529
  %fptr144530 = inttoptr i64 %f144531 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144530(i64 %arg142659, i64 %arg142658, i64 %retprim142133); tail call
  ret void
}


define void @lam143321(i64 %env143322, i64 %_95142126, i64 %rZd$loop) {
  %envptr144532 = inttoptr i64 %env143322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144533 = getelementptr inbounds i64, i64* %envptr144532, i64 7              ; &envptr144532[7]
  %f45$x = load i64, i64* %envptr144533, align 8                                     ; load; *envptr144533
  %envptr144534 = inttoptr i64 %env143322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144535 = getelementptr inbounds i64, i64* %envptr144534, i64 6              ; &envptr144534[6]
  %PwU$y = load i64, i64* %envptr144535, align 8                                     ; load; *envptr144535
  %envptr144536 = inttoptr i64 %env143322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144537 = getelementptr inbounds i64, i64* %envptr144536, i64 5              ; &envptr144536[5]
  %cont142123 = load i64, i64* %envptr144537, align 8                                ; load; *envptr144537
  %envptr144538 = inttoptr i64 %env143322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144539 = getelementptr inbounds i64, i64* %envptr144538, i64 4              ; &envptr144538[4]
  %HjQ$lx = load i64, i64* %envptr144539, align 8                                    ; load; *envptr144539
  %envptr144540 = inttoptr i64 %env143322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144541 = getelementptr inbounds i64, i64* %envptr144540, i64 3              ; &envptr144540[3]
  %ti0$ly = load i64, i64* %envptr144541, align 8                                    ; load; *envptr144541
  %envptr144542 = inttoptr i64 %env143322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144543 = getelementptr inbounds i64, i64* %envptr144542, i64 2              ; &envptr144542[2]
  %b8t$_37drop = load i64, i64* %envptr144543, align 8                               ; load; *envptr144543
  %envptr144544 = inttoptr i64 %env143322 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144545 = getelementptr inbounds i64, i64* %envptr144544, i64 1              ; &envptr144544[1]
  %Y2T$_37_62 = load i64, i64* %envptr144545, align 8                                ; load; *envptr144545
  %arg142661 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr144546 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr144548 = getelementptr inbounds i64, i64* %cloptr144546, i64 1                ; &eptr144548[1]
  store i64 %rZd$loop, i64* %eptr144548                                              ; *eptr144548 = %rZd$loop
  %eptr144547 = getelementptr inbounds i64, i64* %cloptr144546, i64 0                ; &cloptr144546[0]
  %f144549 = ptrtoint void(i64,i64,i64,i64)* @lam143318 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144549, i64* %eptr144547                                               ; store fptr
  %arg142660 = ptrtoint i64* %cloptr144546 to i64                                    ; closure cast; i64* -> i64
  %DzM$_95141925 = call i64 @prim_vector_45set_33(i64 %rZd$loop, i64 %arg142661, i64 %arg142660); call prim_vector_45set_33
  %arg142676 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142026 = call i64 @prim_vector_45ref(i64 %rZd$loop, i64 %arg142676)              ; call prim_vector_45ref
  %cloptr144550 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr144552 = getelementptr inbounds i64, i64* %cloptr144550, i64 1                ; &eptr144552[1]
  %eptr144553 = getelementptr inbounds i64, i64* %cloptr144550, i64 2                ; &eptr144553[2]
  %eptr144554 = getelementptr inbounds i64, i64* %cloptr144550, i64 3                ; &eptr144554[3]
  %eptr144555 = getelementptr inbounds i64, i64* %cloptr144550, i64 4                ; &eptr144555[4]
  %eptr144556 = getelementptr inbounds i64, i64* %cloptr144550, i64 5                ; &eptr144556[5]
  %eptr144557 = getelementptr inbounds i64, i64* %cloptr144550, i64 6                ; &eptr144557[6]
  %eptr144558 = getelementptr inbounds i64, i64* %cloptr144550, i64 7                ; &eptr144558[7]
  %eptr144559 = getelementptr inbounds i64, i64* %cloptr144550, i64 8                ; &eptr144559[8]
  store i64 %a142026, i64* %eptr144552                                               ; *eptr144552 = %a142026
  store i64 %Y2T$_37_62, i64* %eptr144553                                            ; *eptr144553 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144554                                           ; *eptr144554 = %b8t$_37drop
  store i64 %ti0$ly, i64* %eptr144555                                                ; *eptr144555 = %ti0$ly
  store i64 %HjQ$lx, i64* %eptr144556                                                ; *eptr144556 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144557                                            ; *eptr144557 = %cont142123
  store i64 %PwU$y, i64* %eptr144558                                                 ; *eptr144558 = %PwU$y
  store i64 %f45$x, i64* %eptr144559                                                 ; *eptr144559 = %f45$x
  %eptr144551 = getelementptr inbounds i64, i64* %cloptr144550, i64 0                ; &cloptr144550[0]
  %f144560 = ptrtoint void(i64,i64,i64)* @lam143313 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144560, i64* %eptr144551                                               ; store fptr
  %arg142680 = ptrtoint i64* %cloptr144550 to i64                                    ; closure cast; i64* -> i64
  %cloptr144561 = inttoptr i64 %Y2T$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144561)                                       ; assert function application
  %i0ptr144562 = getelementptr inbounds i64, i64* %cloptr144561, i64 0               ; &cloptr144561[0]
  %f144564 = load i64, i64* %i0ptr144562, align 8                                    ; load; *i0ptr144562
  %fptr144563 = inttoptr i64 %f144564 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144563(i64 %Y2T$_37_62, i64 %arg142680, i64 %HjQ$lx, i64 %ti0$ly); tail call
  ret void
}


define void @lam143318(i64 %env143319, i64 %cont142127, i64 %PFa$x, i64 %HFT$y) {
  %envptr144565 = inttoptr i64 %env143319 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144566 = getelementptr inbounds i64, i64* %envptr144565, i64 1              ; &envptr144565[1]
  %rZd$loop = load i64, i64* %envptr144566, align 8                                  ; load; *envptr144566
  %a142022 = call i64 @prim_eq_63(i64 %PFa$x, i64 %HFT$y)                            ; call prim_eq_63
  %cmp144567 = icmp eq i64 %a142022, 15                                              ; false?
  br i1 %cmp144567, label %else144569, label %then144568                             ; if

then144568:
  %arg142666 = add i64 0, 0                                                          ; quoted ()
  %cloptr144570 = inttoptr i64 %cont142127 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144570)                                       ; assert function application
  %i0ptr144571 = getelementptr inbounds i64, i64* %cloptr144570, i64 0               ; &cloptr144570[0]
  %f144573 = load i64, i64* %i0ptr144571, align 8                                    ; load; *i0ptr144571
  %fptr144572 = inttoptr i64 %f144573 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144572(i64 %cont142127, i64 %arg142666, i64 %PFa$x) ; tail call
  ret void

else144569:
  %arg142668 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142023 = call i64 @prim_vector_45ref(i64 %rZd$loop, i64 %arg142668)              ; call prim_vector_45ref
  %a142024 = call i64 @prim_cdr(i64 %PFa$x)                                          ; call prim_cdr
  %a142025 = call i64 @prim_cdr(i64 %HFT$y)                                          ; call prim_cdr
  %cloptr144574 = inttoptr i64 %a142023 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144574)                                       ; assert function application
  %i0ptr144575 = getelementptr inbounds i64, i64* %cloptr144574, i64 0               ; &cloptr144574[0]
  %f144577 = load i64, i64* %i0ptr144575, align 8                                    ; load; *i0ptr144575
  %fptr144576 = inttoptr i64 %f144577 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144576(i64 %a142023, i64 %cont142127, i64 %a142024, i64 %a142025); tail call
  ret void
}


define void @lam143313(i64 %env143314, i64 %_95142128, i64 %a142027) {
  %envptr144578 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144579 = getelementptr inbounds i64, i64* %envptr144578, i64 8              ; &envptr144578[8]
  %f45$x = load i64, i64* %envptr144579, align 8                                     ; load; *envptr144579
  %envptr144580 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144581 = getelementptr inbounds i64, i64* %envptr144580, i64 7              ; &envptr144580[7]
  %PwU$y = load i64, i64* %envptr144581, align 8                                     ; load; *envptr144581
  %envptr144582 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144583 = getelementptr inbounds i64, i64* %envptr144582, i64 6              ; &envptr144582[6]
  %cont142123 = load i64, i64* %envptr144583, align 8                                ; load; *envptr144583
  %envptr144584 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144585 = getelementptr inbounds i64, i64* %envptr144584, i64 5              ; &envptr144584[5]
  %HjQ$lx = load i64, i64* %envptr144585, align 8                                    ; load; *envptr144585
  %envptr144586 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144587 = getelementptr inbounds i64, i64* %envptr144586, i64 4              ; &envptr144586[4]
  %ti0$ly = load i64, i64* %envptr144587, align 8                                    ; load; *envptr144587
  %envptr144588 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144589 = getelementptr inbounds i64, i64* %envptr144588, i64 3              ; &envptr144588[3]
  %b8t$_37drop = load i64, i64* %envptr144589, align 8                               ; load; *envptr144589
  %envptr144590 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144591 = getelementptr inbounds i64, i64* %envptr144590, i64 2              ; &envptr144590[2]
  %Y2T$_37_62 = load i64, i64* %envptr144591, align 8                                ; load; *envptr144591
  %envptr144592 = inttoptr i64 %env143314 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144593 = getelementptr inbounds i64, i64* %envptr144592, i64 1              ; &envptr144592[1]
  %a142026 = load i64, i64* %envptr144593, align 8                                   ; load; *envptr144593
  %cmp144594 = icmp eq i64 %a142027, 15                                              ; false?
  br i1 %cmp144594, label %else144596, label %then144595                             ; if

then144595:
  %a142028 = call i64 @prim__45(i64 %HjQ$lx, i64 %ti0$ly)                            ; call prim__45
  %cloptr144597 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144599 = getelementptr inbounds i64, i64* %cloptr144597, i64 1                ; &eptr144599[1]
  %eptr144600 = getelementptr inbounds i64, i64* %cloptr144597, i64 2                ; &eptr144600[2]
  %eptr144601 = getelementptr inbounds i64, i64* %cloptr144597, i64 3                ; &eptr144601[3]
  %eptr144602 = getelementptr inbounds i64, i64* %cloptr144597, i64 4                ; &eptr144602[4]
  %eptr144603 = getelementptr inbounds i64, i64* %cloptr144597, i64 5                ; &eptr144603[5]
  %eptr144604 = getelementptr inbounds i64, i64* %cloptr144597, i64 6                ; &eptr144604[6]
  %eptr144605 = getelementptr inbounds i64, i64* %cloptr144597, i64 7                ; &eptr144605[7]
  store i64 %a142026, i64* %eptr144599                                               ; *eptr144599 = %a142026
  store i64 %Y2T$_37_62, i64* %eptr144600                                            ; *eptr144600 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144601                                           ; *eptr144601 = %b8t$_37drop
  store i64 %ti0$ly, i64* %eptr144602                                                ; *eptr144602 = %ti0$ly
  store i64 %HjQ$lx, i64* %eptr144603                                                ; *eptr144603 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144604                                            ; *eptr144604 = %cont142123
  store i64 %PwU$y, i64* %eptr144605                                                 ; *eptr144605 = %PwU$y
  %eptr144598 = getelementptr inbounds i64, i64* %cloptr144597, i64 0                ; &cloptr144597[0]
  %f144606 = ptrtoint void(i64,i64,i64)* @lam143301 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144606, i64* %eptr144598                                               ; store fptr
  %arg142686 = ptrtoint i64* %cloptr144597 to i64                                    ; closure cast; i64* -> i64
  %cloptr144607 = inttoptr i64 %b8t$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144607)                                       ; assert function application
  %i0ptr144608 = getelementptr inbounds i64, i64* %cloptr144607, i64 0               ; &cloptr144607[0]
  %f144610 = load i64, i64* %i0ptr144608, align 8                                    ; load; *i0ptr144608
  %fptr144609 = inttoptr i64 %f144610 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144609(i64 %b8t$_37drop, i64 %arg142686, i64 %f45$x, i64 %a142028); tail call
  ret void

else144596:
  %cloptr144611 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144613 = getelementptr inbounds i64, i64* %cloptr144611, i64 1                ; &eptr144613[1]
  %eptr144614 = getelementptr inbounds i64, i64* %cloptr144611, i64 2                ; &eptr144614[2]
  %eptr144615 = getelementptr inbounds i64, i64* %cloptr144611, i64 3                ; &eptr144615[3]
  %eptr144616 = getelementptr inbounds i64, i64* %cloptr144611, i64 4                ; &eptr144616[4]
  %eptr144617 = getelementptr inbounds i64, i64* %cloptr144611, i64 5                ; &eptr144617[5]
  %eptr144618 = getelementptr inbounds i64, i64* %cloptr144611, i64 6                ; &eptr144618[6]
  %eptr144619 = getelementptr inbounds i64, i64* %cloptr144611, i64 7                ; &eptr144619[7]
  store i64 %a142026, i64* %eptr144613                                               ; *eptr144613 = %a142026
  store i64 %Y2T$_37_62, i64* %eptr144614                                            ; *eptr144614 = %Y2T$_37_62
  store i64 %b8t$_37drop, i64* %eptr144615                                           ; *eptr144615 = %b8t$_37drop
  store i64 %ti0$ly, i64* %eptr144616                                                ; *eptr144616 = %ti0$ly
  store i64 %HjQ$lx, i64* %eptr144617                                                ; *eptr144617 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144618                                            ; *eptr144618 = %cont142123
  store i64 %PwU$y, i64* %eptr144619                                                 ; *eptr144619 = %PwU$y
  %eptr144612 = getelementptr inbounds i64, i64* %cloptr144611, i64 0                ; &cloptr144611[0]
  %f144620 = ptrtoint void(i64,i64,i64)* @lam143311 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144620, i64* %eptr144612                                               ; store fptr
  %arg142711 = ptrtoint i64* %cloptr144611 to i64                                    ; closure cast; i64* -> i64
  %arg142710 = add i64 0, 0                                                          ; quoted ()
  %cloptr144621 = inttoptr i64 %arg142711 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144621)                                       ; assert function application
  %i0ptr144622 = getelementptr inbounds i64, i64* %cloptr144621, i64 0               ; &cloptr144621[0]
  %f144624 = load i64, i64* %i0ptr144622, align 8                                    ; load; *i0ptr144622
  %fptr144623 = inttoptr i64 %f144624 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144623(i64 %arg142711, i64 %arg142710, i64 %f45$x)  ; tail call
  ret void
}


define void @lam143311(i64 %env143312, i64 %_95142129, i64 %a142029) {
  %envptr144625 = inttoptr i64 %env143312 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144626 = getelementptr inbounds i64, i64* %envptr144625, i64 7              ; &envptr144625[7]
  %PwU$y = load i64, i64* %envptr144626, align 8                                     ; load; *envptr144626
  %envptr144627 = inttoptr i64 %env143312 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144628 = getelementptr inbounds i64, i64* %envptr144627, i64 6              ; &envptr144627[6]
  %cont142123 = load i64, i64* %envptr144628, align 8                                ; load; *envptr144628
  %envptr144629 = inttoptr i64 %env143312 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144630 = getelementptr inbounds i64, i64* %envptr144629, i64 5              ; &envptr144629[5]
  %HjQ$lx = load i64, i64* %envptr144630, align 8                                    ; load; *envptr144630
  %envptr144631 = inttoptr i64 %env143312 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144632 = getelementptr inbounds i64, i64* %envptr144631, i64 4              ; &envptr144631[4]
  %ti0$ly = load i64, i64* %envptr144632, align 8                                    ; load; *envptr144632
  %envptr144633 = inttoptr i64 %env143312 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144634 = getelementptr inbounds i64, i64* %envptr144633, i64 3              ; &envptr144633[3]
  %b8t$_37drop = load i64, i64* %envptr144634, align 8                               ; load; *envptr144634
  %envptr144635 = inttoptr i64 %env143312 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144636 = getelementptr inbounds i64, i64* %envptr144635, i64 2              ; &envptr144635[2]
  %Y2T$_37_62 = load i64, i64* %envptr144636, align 8                                ; load; *envptr144636
  %envptr144637 = inttoptr i64 %env143312 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144638 = getelementptr inbounds i64, i64* %envptr144637, i64 1              ; &envptr144637[1]
  %a142026 = load i64, i64* %envptr144638, align 8                                   ; load; *envptr144638
  %cloptr144639 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144641 = getelementptr inbounds i64, i64* %cloptr144639, i64 1                ; &eptr144641[1]
  %eptr144642 = getelementptr inbounds i64, i64* %cloptr144639, i64 2                ; &eptr144642[2]
  %eptr144643 = getelementptr inbounds i64, i64* %cloptr144639, i64 3                ; &eptr144643[3]
  %eptr144644 = getelementptr inbounds i64, i64* %cloptr144639, i64 4                ; &eptr144644[4]
  %eptr144645 = getelementptr inbounds i64, i64* %cloptr144639, i64 5                ; &eptr144645[5]
  %eptr144646 = getelementptr inbounds i64, i64* %cloptr144639, i64 6                ; &eptr144646[6]
  %eptr144647 = getelementptr inbounds i64, i64* %cloptr144639, i64 7                ; &eptr144647[7]
  store i64 %a142029, i64* %eptr144641                                               ; *eptr144641 = %a142029
  store i64 %a142026, i64* %eptr144642                                               ; *eptr144642 = %a142026
  store i64 %b8t$_37drop, i64* %eptr144643                                           ; *eptr144643 = %b8t$_37drop
  store i64 %ti0$ly, i64* %eptr144644                                                ; *eptr144644 = %ti0$ly
  store i64 %HjQ$lx, i64* %eptr144645                                                ; *eptr144645 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144646                                            ; *eptr144646 = %cont142123
  store i64 %PwU$y, i64* %eptr144647                                                 ; *eptr144647 = %PwU$y
  %eptr144640 = getelementptr inbounds i64, i64* %cloptr144639, i64 0                ; &cloptr144639[0]
  %f144648 = ptrtoint void(i64,i64,i64)* @lam143309 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144648, i64* %eptr144640                                               ; store fptr
  %arg142714 = ptrtoint i64* %cloptr144639 to i64                                    ; closure cast; i64* -> i64
  %cloptr144649 = inttoptr i64 %Y2T$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144649)                                       ; assert function application
  %i0ptr144650 = getelementptr inbounds i64, i64* %cloptr144649, i64 0               ; &cloptr144649[0]
  %f144652 = load i64, i64* %i0ptr144650, align 8                                    ; load; *i0ptr144650
  %fptr144651 = inttoptr i64 %f144652 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144651(i64 %Y2T$_37_62, i64 %arg142714, i64 %ti0$ly, i64 %HjQ$lx); tail call
  ret void
}


define void @lam143309(i64 %env143310, i64 %_95142130, i64 %a142030) {
  %envptr144653 = inttoptr i64 %env143310 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144654 = getelementptr inbounds i64, i64* %envptr144653, i64 7              ; &envptr144653[7]
  %PwU$y = load i64, i64* %envptr144654, align 8                                     ; load; *envptr144654
  %envptr144655 = inttoptr i64 %env143310 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144656 = getelementptr inbounds i64, i64* %envptr144655, i64 6              ; &envptr144655[6]
  %cont142123 = load i64, i64* %envptr144656, align 8                                ; load; *envptr144656
  %envptr144657 = inttoptr i64 %env143310 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144658 = getelementptr inbounds i64, i64* %envptr144657, i64 5              ; &envptr144657[5]
  %HjQ$lx = load i64, i64* %envptr144658, align 8                                    ; load; *envptr144658
  %envptr144659 = inttoptr i64 %env143310 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144660 = getelementptr inbounds i64, i64* %envptr144659, i64 4              ; &envptr144659[4]
  %ti0$ly = load i64, i64* %envptr144660, align 8                                    ; load; *envptr144660
  %envptr144661 = inttoptr i64 %env143310 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144662 = getelementptr inbounds i64, i64* %envptr144661, i64 3              ; &envptr144661[3]
  %b8t$_37drop = load i64, i64* %envptr144662, align 8                               ; load; *envptr144662
  %envptr144663 = inttoptr i64 %env143310 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144664 = getelementptr inbounds i64, i64* %envptr144663, i64 2              ; &envptr144663[2]
  %a142026 = load i64, i64* %envptr144664, align 8                                   ; load; *envptr144664
  %envptr144665 = inttoptr i64 %env143310 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144666 = getelementptr inbounds i64, i64* %envptr144665, i64 1              ; &envptr144665[1]
  %a142029 = load i64, i64* %envptr144666, align 8                                   ; load; *envptr144666
  %cmp144667 = icmp eq i64 %a142030, 15                                              ; false?
  br i1 %cmp144667, label %else144669, label %then144668                             ; if

then144668:
  %a142031 = call i64 @prim__45(i64 %ti0$ly, i64 %HjQ$lx)                            ; call prim__45
  %cloptr144670 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144672 = getelementptr inbounds i64, i64* %cloptr144670, i64 1                ; &eptr144672[1]
  %eptr144673 = getelementptr inbounds i64, i64* %cloptr144670, i64 2                ; &eptr144673[2]
  %eptr144674 = getelementptr inbounds i64, i64* %cloptr144670, i64 3                ; &eptr144674[3]
  store i64 %a142029, i64* %eptr144672                                               ; *eptr144672 = %a142029
  store i64 %a142026, i64* %eptr144673                                               ; *eptr144673 = %a142026
  store i64 %cont142123, i64* %eptr144674                                            ; *eptr144674 = %cont142123
  %eptr144671 = getelementptr inbounds i64, i64* %cloptr144670, i64 0                ; &cloptr144670[0]
  %f144675 = ptrtoint void(i64,i64,i64)* @lam143304 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144675, i64* %eptr144671                                               ; store fptr
  %arg142720 = ptrtoint i64* %cloptr144670 to i64                                    ; closure cast; i64* -> i64
  %cloptr144676 = inttoptr i64 %b8t$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144676)                                       ; assert function application
  %i0ptr144677 = getelementptr inbounds i64, i64* %cloptr144676, i64 0               ; &cloptr144676[0]
  %f144679 = load i64, i64* %i0ptr144677, align 8                                    ; load; *i0ptr144677
  %fptr144678 = inttoptr i64 %f144679 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144678(i64 %b8t$_37drop, i64 %arg142720, i64 %PwU$y, i64 %a142031); tail call
  ret void

else144669:
  %cloptr144680 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144682 = getelementptr inbounds i64, i64* %cloptr144680, i64 1                ; &eptr144682[1]
  %eptr144683 = getelementptr inbounds i64, i64* %cloptr144680, i64 2                ; &eptr144683[2]
  %eptr144684 = getelementptr inbounds i64, i64* %cloptr144680, i64 3                ; &eptr144684[3]
  store i64 %a142029, i64* %eptr144682                                               ; *eptr144682 = %a142029
  store i64 %a142026, i64* %eptr144683                                               ; *eptr144683 = %a142026
  store i64 %cont142123, i64* %eptr144684                                            ; *eptr144684 = %cont142123
  %eptr144681 = getelementptr inbounds i64, i64* %cloptr144680, i64 0                ; &cloptr144680[0]
  %f144685 = ptrtoint void(i64,i64,i64)* @lam143307 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144685, i64* %eptr144681                                               ; store fptr
  %arg142728 = ptrtoint i64* %cloptr144680 to i64                                    ; closure cast; i64* -> i64
  %arg142727 = add i64 0, 0                                                          ; quoted ()
  %cloptr144686 = inttoptr i64 %arg142728 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144686)                                       ; assert function application
  %i0ptr144687 = getelementptr inbounds i64, i64* %cloptr144686, i64 0               ; &cloptr144686[0]
  %f144689 = load i64, i64* %i0ptr144687, align 8                                    ; load; *i0ptr144687
  %fptr144688 = inttoptr i64 %f144689 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144688(i64 %arg142728, i64 %arg142727, i64 %PwU$y)  ; tail call
  ret void
}


define void @lam143307(i64 %env143308, i64 %_95142131, i64 %a142032) {
  %envptr144690 = inttoptr i64 %env143308 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144691 = getelementptr inbounds i64, i64* %envptr144690, i64 3              ; &envptr144690[3]
  %cont142123 = load i64, i64* %envptr144691, align 8                                ; load; *envptr144691
  %envptr144692 = inttoptr i64 %env143308 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144693 = getelementptr inbounds i64, i64* %envptr144692, i64 2              ; &envptr144692[2]
  %a142026 = load i64, i64* %envptr144693, align 8                                   ; load; *envptr144693
  %envptr144694 = inttoptr i64 %env143308 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144695 = getelementptr inbounds i64, i64* %envptr144694, i64 1              ; &envptr144694[1]
  %a142029 = load i64, i64* %envptr144695, align 8                                   ; load; *envptr144695
  %cloptr144696 = inttoptr i64 %a142026 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144696)                                       ; assert function application
  %i0ptr144697 = getelementptr inbounds i64, i64* %cloptr144696, i64 0               ; &cloptr144696[0]
  %f144699 = load i64, i64* %i0ptr144697, align 8                                    ; load; *i0ptr144697
  %fptr144698 = inttoptr i64 %f144699 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144698(i64 %a142026, i64 %cont142123, i64 %a142029, i64 %a142032); tail call
  ret void
}


define void @lam143304(i64 %env143305, i64 %_95142131, i64 %a142032) {
  %envptr144700 = inttoptr i64 %env143305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144701 = getelementptr inbounds i64, i64* %envptr144700, i64 3              ; &envptr144700[3]
  %cont142123 = load i64, i64* %envptr144701, align 8                                ; load; *envptr144701
  %envptr144702 = inttoptr i64 %env143305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144703 = getelementptr inbounds i64, i64* %envptr144702, i64 2              ; &envptr144702[2]
  %a142026 = load i64, i64* %envptr144703, align 8                                   ; load; *envptr144703
  %envptr144704 = inttoptr i64 %env143305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144705 = getelementptr inbounds i64, i64* %envptr144704, i64 1              ; &envptr144704[1]
  %a142029 = load i64, i64* %envptr144705, align 8                                   ; load; *envptr144705
  %cloptr144706 = inttoptr i64 %a142026 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144706)                                       ; assert function application
  %i0ptr144707 = getelementptr inbounds i64, i64* %cloptr144706, i64 0               ; &cloptr144706[0]
  %f144709 = load i64, i64* %i0ptr144707, align 8                                    ; load; *i0ptr144707
  %fptr144708 = inttoptr i64 %f144709 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144708(i64 %a142026, i64 %cont142123, i64 %a142029, i64 %a142032); tail call
  ret void
}


define void @lam143301(i64 %env143302, i64 %_95142129, i64 %a142029) {
  %envptr144710 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144711 = getelementptr inbounds i64, i64* %envptr144710, i64 7              ; &envptr144710[7]
  %PwU$y = load i64, i64* %envptr144711, align 8                                     ; load; *envptr144711
  %envptr144712 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144713 = getelementptr inbounds i64, i64* %envptr144712, i64 6              ; &envptr144712[6]
  %cont142123 = load i64, i64* %envptr144713, align 8                                ; load; *envptr144713
  %envptr144714 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144715 = getelementptr inbounds i64, i64* %envptr144714, i64 5              ; &envptr144714[5]
  %HjQ$lx = load i64, i64* %envptr144715, align 8                                    ; load; *envptr144715
  %envptr144716 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144717 = getelementptr inbounds i64, i64* %envptr144716, i64 4              ; &envptr144716[4]
  %ti0$ly = load i64, i64* %envptr144717, align 8                                    ; load; *envptr144717
  %envptr144718 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144719 = getelementptr inbounds i64, i64* %envptr144718, i64 3              ; &envptr144718[3]
  %b8t$_37drop = load i64, i64* %envptr144719, align 8                               ; load; *envptr144719
  %envptr144720 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144721 = getelementptr inbounds i64, i64* %envptr144720, i64 2              ; &envptr144720[2]
  %Y2T$_37_62 = load i64, i64* %envptr144721, align 8                                ; load; *envptr144721
  %envptr144722 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144723 = getelementptr inbounds i64, i64* %envptr144722, i64 1              ; &envptr144722[1]
  %a142026 = load i64, i64* %envptr144723, align 8                                   ; load; *envptr144723
  %cloptr144724 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144726 = getelementptr inbounds i64, i64* %cloptr144724, i64 1                ; &eptr144726[1]
  %eptr144727 = getelementptr inbounds i64, i64* %cloptr144724, i64 2                ; &eptr144727[2]
  %eptr144728 = getelementptr inbounds i64, i64* %cloptr144724, i64 3                ; &eptr144728[3]
  %eptr144729 = getelementptr inbounds i64, i64* %cloptr144724, i64 4                ; &eptr144729[4]
  %eptr144730 = getelementptr inbounds i64, i64* %cloptr144724, i64 5                ; &eptr144730[5]
  %eptr144731 = getelementptr inbounds i64, i64* %cloptr144724, i64 6                ; &eptr144731[6]
  %eptr144732 = getelementptr inbounds i64, i64* %cloptr144724, i64 7                ; &eptr144732[7]
  store i64 %a142029, i64* %eptr144726                                               ; *eptr144726 = %a142029
  store i64 %a142026, i64* %eptr144727                                               ; *eptr144727 = %a142026
  store i64 %b8t$_37drop, i64* %eptr144728                                           ; *eptr144728 = %b8t$_37drop
  store i64 %ti0$ly, i64* %eptr144729                                                ; *eptr144729 = %ti0$ly
  store i64 %HjQ$lx, i64* %eptr144730                                                ; *eptr144730 = %HjQ$lx
  store i64 %cont142123, i64* %eptr144731                                            ; *eptr144731 = %cont142123
  store i64 %PwU$y, i64* %eptr144732                                                 ; *eptr144732 = %PwU$y
  %eptr144725 = getelementptr inbounds i64, i64* %cloptr144724, i64 0                ; &cloptr144724[0]
  %f144733 = ptrtoint void(i64,i64,i64)* @lam143299 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144733, i64* %eptr144725                                               ; store fptr
  %arg142690 = ptrtoint i64* %cloptr144724 to i64                                    ; closure cast; i64* -> i64
  %cloptr144734 = inttoptr i64 %Y2T$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144734)                                       ; assert function application
  %i0ptr144735 = getelementptr inbounds i64, i64* %cloptr144734, i64 0               ; &cloptr144734[0]
  %f144737 = load i64, i64* %i0ptr144735, align 8                                    ; load; *i0ptr144735
  %fptr144736 = inttoptr i64 %f144737 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144736(i64 %Y2T$_37_62, i64 %arg142690, i64 %ti0$ly, i64 %HjQ$lx); tail call
  ret void
}


define void @lam143299(i64 %env143300, i64 %_95142130, i64 %a142030) {
  %envptr144738 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144739 = getelementptr inbounds i64, i64* %envptr144738, i64 7              ; &envptr144738[7]
  %PwU$y = load i64, i64* %envptr144739, align 8                                     ; load; *envptr144739
  %envptr144740 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144741 = getelementptr inbounds i64, i64* %envptr144740, i64 6              ; &envptr144740[6]
  %cont142123 = load i64, i64* %envptr144741, align 8                                ; load; *envptr144741
  %envptr144742 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144743 = getelementptr inbounds i64, i64* %envptr144742, i64 5              ; &envptr144742[5]
  %HjQ$lx = load i64, i64* %envptr144743, align 8                                    ; load; *envptr144743
  %envptr144744 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144745 = getelementptr inbounds i64, i64* %envptr144744, i64 4              ; &envptr144744[4]
  %ti0$ly = load i64, i64* %envptr144745, align 8                                    ; load; *envptr144745
  %envptr144746 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144747 = getelementptr inbounds i64, i64* %envptr144746, i64 3              ; &envptr144746[3]
  %b8t$_37drop = load i64, i64* %envptr144747, align 8                               ; load; *envptr144747
  %envptr144748 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144749 = getelementptr inbounds i64, i64* %envptr144748, i64 2              ; &envptr144748[2]
  %a142026 = load i64, i64* %envptr144749, align 8                                   ; load; *envptr144749
  %envptr144750 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144751 = getelementptr inbounds i64, i64* %envptr144750, i64 1              ; &envptr144750[1]
  %a142029 = load i64, i64* %envptr144751, align 8                                   ; load; *envptr144751
  %cmp144752 = icmp eq i64 %a142030, 15                                              ; false?
  br i1 %cmp144752, label %else144754, label %then144753                             ; if

then144753:
  %a142031 = call i64 @prim__45(i64 %ti0$ly, i64 %HjQ$lx)                            ; call prim__45
  %cloptr144755 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144757 = getelementptr inbounds i64, i64* %cloptr144755, i64 1                ; &eptr144757[1]
  %eptr144758 = getelementptr inbounds i64, i64* %cloptr144755, i64 2                ; &eptr144758[2]
  %eptr144759 = getelementptr inbounds i64, i64* %cloptr144755, i64 3                ; &eptr144759[3]
  store i64 %a142029, i64* %eptr144757                                               ; *eptr144757 = %a142029
  store i64 %a142026, i64* %eptr144758                                               ; *eptr144758 = %a142026
  store i64 %cont142123, i64* %eptr144759                                            ; *eptr144759 = %cont142123
  %eptr144756 = getelementptr inbounds i64, i64* %cloptr144755, i64 0                ; &cloptr144755[0]
  %f144760 = ptrtoint void(i64,i64,i64)* @lam143294 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144760, i64* %eptr144756                                               ; store fptr
  %arg142696 = ptrtoint i64* %cloptr144755 to i64                                    ; closure cast; i64* -> i64
  %cloptr144761 = inttoptr i64 %b8t$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144761)                                       ; assert function application
  %i0ptr144762 = getelementptr inbounds i64, i64* %cloptr144761, i64 0               ; &cloptr144761[0]
  %f144764 = load i64, i64* %i0ptr144762, align 8                                    ; load; *i0ptr144762
  %fptr144763 = inttoptr i64 %f144764 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144763(i64 %b8t$_37drop, i64 %arg142696, i64 %PwU$y, i64 %a142031); tail call
  ret void

else144754:
  %cloptr144765 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144767 = getelementptr inbounds i64, i64* %cloptr144765, i64 1                ; &eptr144767[1]
  %eptr144768 = getelementptr inbounds i64, i64* %cloptr144765, i64 2                ; &eptr144768[2]
  %eptr144769 = getelementptr inbounds i64, i64* %cloptr144765, i64 3                ; &eptr144769[3]
  store i64 %a142029, i64* %eptr144767                                               ; *eptr144767 = %a142029
  store i64 %a142026, i64* %eptr144768                                               ; *eptr144768 = %a142026
  store i64 %cont142123, i64* %eptr144769                                            ; *eptr144769 = %cont142123
  %eptr144766 = getelementptr inbounds i64, i64* %cloptr144765, i64 0                ; &cloptr144765[0]
  %f144770 = ptrtoint void(i64,i64,i64)* @lam143297 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144770, i64* %eptr144766                                               ; store fptr
  %arg142704 = ptrtoint i64* %cloptr144765 to i64                                    ; closure cast; i64* -> i64
  %arg142703 = add i64 0, 0                                                          ; quoted ()
  %cloptr144771 = inttoptr i64 %arg142704 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144771)                                       ; assert function application
  %i0ptr144772 = getelementptr inbounds i64, i64* %cloptr144771, i64 0               ; &cloptr144771[0]
  %f144774 = load i64, i64* %i0ptr144772, align 8                                    ; load; *i0ptr144772
  %fptr144773 = inttoptr i64 %f144774 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144773(i64 %arg142704, i64 %arg142703, i64 %PwU$y)  ; tail call
  ret void
}


define void @lam143297(i64 %env143298, i64 %_95142131, i64 %a142032) {
  %envptr144775 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144776 = getelementptr inbounds i64, i64* %envptr144775, i64 3              ; &envptr144775[3]
  %cont142123 = load i64, i64* %envptr144776, align 8                                ; load; *envptr144776
  %envptr144777 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144778 = getelementptr inbounds i64, i64* %envptr144777, i64 2              ; &envptr144777[2]
  %a142026 = load i64, i64* %envptr144778, align 8                                   ; load; *envptr144778
  %envptr144779 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144780 = getelementptr inbounds i64, i64* %envptr144779, i64 1              ; &envptr144779[1]
  %a142029 = load i64, i64* %envptr144780, align 8                                   ; load; *envptr144780
  %cloptr144781 = inttoptr i64 %a142026 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144781)                                       ; assert function application
  %i0ptr144782 = getelementptr inbounds i64, i64* %cloptr144781, i64 0               ; &cloptr144781[0]
  %f144784 = load i64, i64* %i0ptr144782, align 8                                    ; load; *i0ptr144782
  %fptr144783 = inttoptr i64 %f144784 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144783(i64 %a142026, i64 %cont142123, i64 %a142029, i64 %a142032); tail call
  ret void
}


define void @lam143294(i64 %env143295, i64 %_95142131, i64 %a142032) {
  %envptr144785 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144786 = getelementptr inbounds i64, i64* %envptr144785, i64 3              ; &envptr144785[3]
  %cont142123 = load i64, i64* %envptr144786, align 8                                ; load; *envptr144786
  %envptr144787 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144788 = getelementptr inbounds i64, i64* %envptr144787, i64 2              ; &envptr144787[2]
  %a142026 = load i64, i64* %envptr144788, align 8                                   ; load; *envptr144788
  %envptr144789 = inttoptr i64 %env143295 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144790 = getelementptr inbounds i64, i64* %envptr144789, i64 1              ; &envptr144789[1]
  %a142029 = load i64, i64* %envptr144790, align 8                                   ; load; *envptr144790
  %cloptr144791 = inttoptr i64 %a142026 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144791)                                       ; assert function application
  %i0ptr144792 = getelementptr inbounds i64, i64* %cloptr144791, i64 0               ; &cloptr144791[0]
  %f144794 = load i64, i64* %i0ptr144792, align 8                                    ; load; *i0ptr144792
  %fptr144793 = inttoptr i64 %f144794 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144793(i64 %a142026, i64 %cont142123, i64 %a142029, i64 %a142032); tail call
  ret void
}


define void @lam143291(i64 %env143292, i64 %cont142136, i64 %CSO$new) {
  %envptr144795 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144796 = getelementptr inbounds i64, i64* %envptr144795, i64 2              ; &envptr144795[2]
  %opR$_37wind_45stack = load i64, i64* %envptr144796, align 8                       ; load; *envptr144796
  %envptr144797 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144798 = getelementptr inbounds i64, i64* %envptr144797, i64 1              ; &envptr144797[1]
  %Icc$_37common_45tail = load i64, i64* %envptr144798, align 8                      ; load; *envptr144798
  %arg142733 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142033 = call i64 @prim_vector_45ref(i64 %opR$_37wind_45stack, i64 %arg142733)   ; call prim_vector_45ref
  %cloptr144799 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144801 = getelementptr inbounds i64, i64* %cloptr144799, i64 1                ; &eptr144801[1]
  %eptr144802 = getelementptr inbounds i64, i64* %cloptr144799, i64 2                ; &eptr144802[2]
  %eptr144803 = getelementptr inbounds i64, i64* %cloptr144799, i64 3                ; &eptr144803[3]
  store i64 %CSO$new, i64* %eptr144801                                               ; *eptr144801 = %CSO$new
  store i64 %opR$_37wind_45stack, i64* %eptr144802                                   ; *eptr144802 = %opR$_37wind_45stack
  store i64 %cont142136, i64* %eptr144803                                            ; *eptr144803 = %cont142136
  %eptr144800 = getelementptr inbounds i64, i64* %cloptr144799, i64 0                ; &cloptr144799[0]
  %f144804 = ptrtoint void(i64,i64,i64)* @lam143288 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144804, i64* %eptr144800                                               ; store fptr
  %arg142737 = ptrtoint i64* %cloptr144799 to i64                                    ; closure cast; i64* -> i64
  %cloptr144805 = inttoptr i64 %Icc$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144805)                                       ; assert function application
  %i0ptr144806 = getelementptr inbounds i64, i64* %cloptr144805, i64 0               ; &cloptr144805[0]
  %f144808 = load i64, i64* %i0ptr144806, align 8                                    ; load; *i0ptr144806
  %fptr144807 = inttoptr i64 %f144808 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144807(i64 %Icc$_37common_45tail, i64 %arg142737, i64 %CSO$new, i64 %a142033); tail call
  ret void
}


define void @lam143288(i64 %env143289, i64 %_95142137, i64 %TfQ$tail) {
  %envptr144809 = inttoptr i64 %env143289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144810 = getelementptr inbounds i64, i64* %envptr144809, i64 3              ; &envptr144809[3]
  %cont142136 = load i64, i64* %envptr144810, align 8                                ; load; *envptr144810
  %envptr144811 = inttoptr i64 %env143289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144812 = getelementptr inbounds i64, i64* %envptr144811, i64 2              ; &envptr144811[2]
  %opR$_37wind_45stack = load i64, i64* %envptr144812, align 8                       ; load; *envptr144812
  %envptr144813 = inttoptr i64 %env143289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144814 = getelementptr inbounds i64, i64* %envptr144813, i64 1              ; &envptr144813[1]
  %CSO$new = load i64, i64* %envptr144814, align 8                                   ; load; *envptr144814
  %cloptr144815 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144816 = getelementptr inbounds i64, i64* %cloptr144815, i64 0                ; &cloptr144815[0]
  %f144817 = ptrtoint void(i64,i64)* @lam143286 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144817, i64* %eptr144816                                               ; store fptr
  %arg142740 = ptrtoint i64* %cloptr144815 to i64                                    ; closure cast; i64* -> i64
  %cloptr144818 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144820 = getelementptr inbounds i64, i64* %cloptr144818, i64 1                ; &eptr144820[1]
  %eptr144821 = getelementptr inbounds i64, i64* %cloptr144818, i64 2                ; &eptr144821[2]
  %eptr144822 = getelementptr inbounds i64, i64* %cloptr144818, i64 3                ; &eptr144822[3]
  %eptr144823 = getelementptr inbounds i64, i64* %cloptr144818, i64 4                ; &eptr144823[4]
  store i64 %CSO$new, i64* %eptr144820                                               ; *eptr144820 = %CSO$new
  store i64 %opR$_37wind_45stack, i64* %eptr144821                                   ; *eptr144821 = %opR$_37wind_45stack
  store i64 %cont142136, i64* %eptr144822                                            ; *eptr144822 = %cont142136
  store i64 %TfQ$tail, i64* %eptr144823                                              ; *eptr144823 = %TfQ$tail
  %eptr144819 = getelementptr inbounds i64, i64* %cloptr144818, i64 0                ; &cloptr144818[0]
  %f144824 = ptrtoint void(i64,i64,i64)* @lam143283 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144824, i64* %eptr144819                                               ; store fptr
  %arg142739 = ptrtoint i64* %cloptr144818 to i64                                    ; closure cast; i64* -> i64
  %cloptr144825 = inttoptr i64 %arg142740 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144825)                                       ; assert function application
  %i0ptr144826 = getelementptr inbounds i64, i64* %cloptr144825, i64 0               ; &cloptr144825[0]
  %f144828 = load i64, i64* %i0ptr144826, align 8                                    ; load; *i0ptr144826
  %fptr144827 = inttoptr i64 %f144828 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144827(i64 %arg142740, i64 %arg142739)              ; tail call
  ret void
}


define void @lam143286(i64 %env143287, i64 %jVU$lst142158) {
  %cont142157 = call i64 @prim_car(i64 %jVU$lst142158)                               ; call prim_car
  %jVU$lst = call i64 @prim_cdr(i64 %jVU$lst142158)                                  ; call prim_cdr
  %arg142744 = add i64 0, 0                                                          ; quoted ()
  %cloptr144829 = inttoptr i64 %cont142157 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144829)                                       ; assert function application
  %i0ptr144830 = getelementptr inbounds i64, i64* %cloptr144829, i64 0               ; &cloptr144829[0]
  %f144832 = load i64, i64* %i0ptr144830, align 8                                    ; load; *i0ptr144830
  %fptr144831 = inttoptr i64 %f144832 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144831(i64 %cont142157, i64 %arg142744, i64 %jVU$lst); tail call
  ret void
}


define void @lam143283(i64 %env143284, i64 %_95142155, i64 %a142034) {
  %envptr144833 = inttoptr i64 %env143284 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144834 = getelementptr inbounds i64, i64* %envptr144833, i64 4              ; &envptr144833[4]
  %TfQ$tail = load i64, i64* %envptr144834, align 8                                  ; load; *envptr144834
  %envptr144835 = inttoptr i64 %env143284 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144836 = getelementptr inbounds i64, i64* %envptr144835, i64 3              ; &envptr144835[3]
  %cont142136 = load i64, i64* %envptr144836, align 8                                ; load; *envptr144836
  %envptr144837 = inttoptr i64 %env143284 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144838 = getelementptr inbounds i64, i64* %envptr144837, i64 2              ; &envptr144837[2]
  %opR$_37wind_45stack = load i64, i64* %envptr144838, align 8                       ; load; *envptr144838
  %envptr144839 = inttoptr i64 %env143284 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144840 = getelementptr inbounds i64, i64* %envptr144839, i64 1              ; &envptr144839[1]
  %CSO$new = load i64, i64* %envptr144840, align 8                                   ; load; *envptr144840
  %arg142747 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142156 = call i64 @prim_make_45vector(i64 %arg142747, i64 %a142034)        ; call prim_make_45vector
  %cloptr144841 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144843 = getelementptr inbounds i64, i64* %cloptr144841, i64 1                ; &eptr144843[1]
  %eptr144844 = getelementptr inbounds i64, i64* %cloptr144841, i64 2                ; &eptr144844[2]
  %eptr144845 = getelementptr inbounds i64, i64* %cloptr144841, i64 3                ; &eptr144845[3]
  %eptr144846 = getelementptr inbounds i64, i64* %cloptr144841, i64 4                ; &eptr144846[4]
  store i64 %CSO$new, i64* %eptr144843                                               ; *eptr144843 = %CSO$new
  store i64 %opR$_37wind_45stack, i64* %eptr144844                                   ; *eptr144844 = %opR$_37wind_45stack
  store i64 %cont142136, i64* %eptr144845                                            ; *eptr144845 = %cont142136
  store i64 %TfQ$tail, i64* %eptr144846                                              ; *eptr144846 = %TfQ$tail
  %eptr144842 = getelementptr inbounds i64, i64* %cloptr144841, i64 0                ; &cloptr144841[0]
  %f144847 = ptrtoint void(i64,i64,i64)* @lam143280 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144847, i64* %eptr144842                                               ; store fptr
  %arg142750 = ptrtoint i64* %cloptr144841 to i64                                    ; closure cast; i64* -> i64
  %arg142749 = add i64 0, 0                                                          ; quoted ()
  %cloptr144848 = inttoptr i64 %arg142750 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144848)                                       ; assert function application
  %i0ptr144849 = getelementptr inbounds i64, i64* %cloptr144848, i64 0               ; &cloptr144848[0]
  %f144851 = load i64, i64* %i0ptr144849, align 8                                    ; load; *i0ptr144849
  %fptr144850 = inttoptr i64 %f144851 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144850(i64 %arg142750, i64 %arg142749, i64 %retprim142156); tail call
  ret void
}


define void @lam143280(i64 %env143281, i64 %_95142149, i64 %AXi$f) {
  %envptr144852 = inttoptr i64 %env143281 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144853 = getelementptr inbounds i64, i64* %envptr144852, i64 4              ; &envptr144852[4]
  %TfQ$tail = load i64, i64* %envptr144853, align 8                                  ; load; *envptr144853
  %envptr144854 = inttoptr i64 %env143281 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144855 = getelementptr inbounds i64, i64* %envptr144854, i64 3              ; &envptr144854[3]
  %cont142136 = load i64, i64* %envptr144855, align 8                                ; load; *envptr144855
  %envptr144856 = inttoptr i64 %env143281 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144857 = getelementptr inbounds i64, i64* %envptr144856, i64 2              ; &envptr144856[2]
  %opR$_37wind_45stack = load i64, i64* %envptr144857, align 8                       ; load; *envptr144857
  %envptr144858 = inttoptr i64 %env143281 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144859 = getelementptr inbounds i64, i64* %envptr144858, i64 1              ; &envptr144858[1]
  %CSO$new = load i64, i64* %envptr144859, align 8                                   ; load; *envptr144859
  %arg142752 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr144860 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144862 = getelementptr inbounds i64, i64* %cloptr144860, i64 1                ; &eptr144862[1]
  %eptr144863 = getelementptr inbounds i64, i64* %cloptr144860, i64 2                ; &eptr144863[2]
  %eptr144864 = getelementptr inbounds i64, i64* %cloptr144860, i64 3                ; &eptr144864[3]
  store i64 %opR$_37wind_45stack, i64* %eptr144862                                   ; *eptr144862 = %opR$_37wind_45stack
  store i64 %TfQ$tail, i64* %eptr144863                                              ; *eptr144863 = %TfQ$tail
  store i64 %AXi$f, i64* %eptr144864                                                 ; *eptr144864 = %AXi$f
  %eptr144861 = getelementptr inbounds i64, i64* %cloptr144860, i64 0                ; &cloptr144860[0]
  %f144865 = ptrtoint void(i64,i64,i64)* @lam143277 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144865, i64* %eptr144861                                               ; store fptr
  %arg142751 = ptrtoint i64* %cloptr144860 to i64                                    ; closure cast; i64* -> i64
  %OOV$_95141927 = call i64 @prim_vector_45set_33(i64 %AXi$f, i64 %arg142752, i64 %arg142751); call prim_vector_45set_33
  %arg142777 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142042 = call i64 @prim_vector_45ref(i64 %AXi$f, i64 %arg142777)                 ; call prim_vector_45ref
  %arg142779 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142043 = call i64 @prim_vector_45ref(i64 %opR$_37wind_45stack, i64 %arg142779)   ; call prim_vector_45ref
  %cloptr144866 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144868 = getelementptr inbounds i64, i64* %cloptr144866, i64 1                ; &eptr144868[1]
  %eptr144869 = getelementptr inbounds i64, i64* %cloptr144866, i64 2                ; &eptr144869[2]
  %eptr144870 = getelementptr inbounds i64, i64* %cloptr144866, i64 3                ; &eptr144870[3]
  %eptr144871 = getelementptr inbounds i64, i64* %cloptr144866, i64 4                ; &eptr144871[4]
  store i64 %CSO$new, i64* %eptr144868                                               ; *eptr144868 = %CSO$new
  store i64 %opR$_37wind_45stack, i64* %eptr144869                                   ; *eptr144869 = %opR$_37wind_45stack
  store i64 %cont142136, i64* %eptr144870                                            ; *eptr144870 = %cont142136
  store i64 %TfQ$tail, i64* %eptr144871                                              ; *eptr144871 = %TfQ$tail
  %eptr144867 = getelementptr inbounds i64, i64* %cloptr144866, i64 0                ; &cloptr144866[0]
  %f144872 = ptrtoint void(i64,i64,i64)* @lam143265 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144872, i64* %eptr144867                                               ; store fptr
  %arg142782 = ptrtoint i64* %cloptr144866 to i64                                    ; closure cast; i64* -> i64
  %cloptr144873 = inttoptr i64 %a142042 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144873)                                       ; assert function application
  %i0ptr144874 = getelementptr inbounds i64, i64* %cloptr144873, i64 0               ; &cloptr144873[0]
  %f144876 = load i64, i64* %i0ptr144874, align 8                                    ; load; *i0ptr144874
  %fptr144875 = inttoptr i64 %f144876 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144875(i64 %a142042, i64 %arg142782, i64 %a142043)  ; tail call
  ret void
}


define void @lam143277(i64 %env143278, i64 %cont142150, i64 %pW1$l) {
  %envptr144877 = inttoptr i64 %env143278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144878 = getelementptr inbounds i64, i64* %envptr144877, i64 3              ; &envptr144877[3]
  %AXi$f = load i64, i64* %envptr144878, align 8                                     ; load; *envptr144878
  %envptr144879 = inttoptr i64 %env143278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144880 = getelementptr inbounds i64, i64* %envptr144879, i64 2              ; &envptr144879[2]
  %TfQ$tail = load i64, i64* %envptr144880, align 8                                  ; load; *envptr144880
  %envptr144881 = inttoptr i64 %env143278 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144882 = getelementptr inbounds i64, i64* %envptr144881, i64 1              ; &envptr144881[1]
  %opR$_37wind_45stack = load i64, i64* %envptr144882, align 8                       ; load; *envptr144882
  %a142035 = call i64 @prim_eq_63(i64 %pW1$l, i64 %TfQ$tail)                         ; call prim_eq_63
  %a142036 = call i64 @prim_not(i64 %a142035)                                        ; call prim_not
  %cmp144883 = icmp eq i64 %a142036, 15                                              ; false?
  br i1 %cmp144883, label %else144885, label %then144884                             ; if

then144884:
  %a142037 = call i64 @prim_cdr(i64 %pW1$l)                                          ; call prim_cdr
  %arg142759 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142153 = call i64 @prim_vector_45set_33(i64 %opR$_37wind_45stack, i64 %arg142759, i64 %a142037); call prim_vector_45set_33
  %cloptr144886 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144888 = getelementptr inbounds i64, i64* %cloptr144886, i64 1                ; &eptr144888[1]
  %eptr144889 = getelementptr inbounds i64, i64* %cloptr144886, i64 2                ; &eptr144889[2]
  %eptr144890 = getelementptr inbounds i64, i64* %cloptr144886, i64 3                ; &eptr144890[3]
  store i64 %pW1$l, i64* %eptr144888                                                 ; *eptr144888 = %pW1$l
  store i64 %AXi$f, i64* %eptr144889                                                 ; *eptr144889 = %AXi$f
  store i64 %cont142150, i64* %eptr144890                                            ; *eptr144890 = %cont142150
  %eptr144887 = getelementptr inbounds i64, i64* %cloptr144886, i64 0                ; &cloptr144886[0]
  %f144891 = ptrtoint void(i64,i64,i64)* @lam143273 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144891, i64* %eptr144887                                               ; store fptr
  %arg142763 = ptrtoint i64* %cloptr144886 to i64                                    ; closure cast; i64* -> i64
  %arg142762 = add i64 0, 0                                                          ; quoted ()
  %cloptr144892 = inttoptr i64 %arg142763 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144892)                                       ; assert function application
  %i0ptr144893 = getelementptr inbounds i64, i64* %cloptr144892, i64 0               ; &cloptr144892[0]
  %f144895 = load i64, i64* %i0ptr144893, align 8                                    ; load; *i0ptr144893
  %fptr144894 = inttoptr i64 %f144895 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144894(i64 %arg142763, i64 %arg142762, i64 %retprim142153); tail call
  ret void

else144885:
  %retprim142154 = call i64 @prim_void()                                             ; call prim_void
  %arg142775 = add i64 0, 0                                                          ; quoted ()
  %cloptr144896 = inttoptr i64 %cont142150 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144896)                                       ; assert function application
  %i0ptr144897 = getelementptr inbounds i64, i64* %cloptr144896, i64 0               ; &cloptr144896[0]
  %f144899 = load i64, i64* %i0ptr144897, align 8                                    ; load; *i0ptr144897
  %fptr144898 = inttoptr i64 %f144899 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144898(i64 %cont142150, i64 %arg142775, i64 %retprim142154); tail call
  ret void
}


define void @lam143273(i64 %env143274, i64 %_95142151, i64 %gQK$_95141928) {
  %envptr144900 = inttoptr i64 %env143274 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144901 = getelementptr inbounds i64, i64* %envptr144900, i64 3              ; &envptr144900[3]
  %cont142150 = load i64, i64* %envptr144901, align 8                                ; load; *envptr144901
  %envptr144902 = inttoptr i64 %env143274 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144903 = getelementptr inbounds i64, i64* %envptr144902, i64 2              ; &envptr144902[2]
  %AXi$f = load i64, i64* %envptr144903, align 8                                     ; load; *envptr144903
  %envptr144904 = inttoptr i64 %env143274 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144905 = getelementptr inbounds i64, i64* %envptr144904, i64 1              ; &envptr144904[1]
  %pW1$l = load i64, i64* %envptr144905, align 8                                     ; load; *envptr144905
  %a142038 = call i64 @prim_car(i64 %pW1$l)                                          ; call prim_car
  %a142039 = call i64 @prim_cdr(i64 %a142038)                                        ; call prim_cdr
  %cloptr144906 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144908 = getelementptr inbounds i64, i64* %cloptr144906, i64 1                ; &eptr144908[1]
  %eptr144909 = getelementptr inbounds i64, i64* %cloptr144906, i64 2                ; &eptr144909[2]
  %eptr144910 = getelementptr inbounds i64, i64* %cloptr144906, i64 3                ; &eptr144910[3]
  store i64 %pW1$l, i64* %eptr144908                                                 ; *eptr144908 = %pW1$l
  store i64 %AXi$f, i64* %eptr144909                                                 ; *eptr144909 = %AXi$f
  store i64 %cont142150, i64* %eptr144910                                            ; *eptr144910 = %cont142150
  %eptr144907 = getelementptr inbounds i64, i64* %cloptr144906, i64 0                ; &cloptr144906[0]
  %f144911 = ptrtoint void(i64,i64,i64)* @lam143271 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144911, i64* %eptr144907                                               ; store fptr
  %arg142766 = ptrtoint i64* %cloptr144906 to i64                                    ; closure cast; i64* -> i64
  %cloptr144912 = inttoptr i64 %a142039 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144912)                                       ; assert function application
  %i0ptr144913 = getelementptr inbounds i64, i64* %cloptr144912, i64 0               ; &cloptr144912[0]
  %f144915 = load i64, i64* %i0ptr144913, align 8                                    ; load; *i0ptr144913
  %fptr144914 = inttoptr i64 %f144915 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144914(i64 %a142039, i64 %arg142766)                ; tail call
  ret void
}


define void @lam143271(i64 %env143272, i64 %_95142152, i64 %cTk$_95141929) {
  %envptr144916 = inttoptr i64 %env143272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144917 = getelementptr inbounds i64, i64* %envptr144916, i64 3              ; &envptr144916[3]
  %cont142150 = load i64, i64* %envptr144917, align 8                                ; load; *envptr144917
  %envptr144918 = inttoptr i64 %env143272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144919 = getelementptr inbounds i64, i64* %envptr144918, i64 2              ; &envptr144918[2]
  %AXi$f = load i64, i64* %envptr144919, align 8                                     ; load; *envptr144919
  %envptr144920 = inttoptr i64 %env143272 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144921 = getelementptr inbounds i64, i64* %envptr144920, i64 1              ; &envptr144920[1]
  %pW1$l = load i64, i64* %envptr144921, align 8                                     ; load; *envptr144921
  %arg142768 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142040 = call i64 @prim_vector_45ref(i64 %AXi$f, i64 %arg142768)                 ; call prim_vector_45ref
  %a142041 = call i64 @prim_cdr(i64 %pW1$l)                                          ; call prim_cdr
  %cloptr144922 = inttoptr i64 %a142040 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144922)                                       ; assert function application
  %i0ptr144923 = getelementptr inbounds i64, i64* %cloptr144922, i64 0               ; &cloptr144922[0]
  %f144925 = load i64, i64* %i0ptr144923, align 8                                    ; load; *i0ptr144923
  %fptr144924 = inttoptr i64 %f144925 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144924(i64 %a142040, i64 %cont142150, i64 %a142041) ; tail call
  ret void
}


define void @lam143265(i64 %env143266, i64 %_95142138, i64 %wB3$_95141926) {
  %envptr144926 = inttoptr i64 %env143266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144927 = getelementptr inbounds i64, i64* %envptr144926, i64 4              ; &envptr144926[4]
  %TfQ$tail = load i64, i64* %envptr144927, align 8                                  ; load; *envptr144927
  %envptr144928 = inttoptr i64 %env143266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144929 = getelementptr inbounds i64, i64* %envptr144928, i64 3              ; &envptr144928[3]
  %cont142136 = load i64, i64* %envptr144929, align 8                                ; load; *envptr144929
  %envptr144930 = inttoptr i64 %env143266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144931 = getelementptr inbounds i64, i64* %envptr144930, i64 2              ; &envptr144930[2]
  %opR$_37wind_45stack = load i64, i64* %envptr144931, align 8                       ; load; *envptr144931
  %envptr144932 = inttoptr i64 %env143266 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144933 = getelementptr inbounds i64, i64* %envptr144932, i64 1              ; &envptr144932[1]
  %CSO$new = load i64, i64* %envptr144933, align 8                                   ; load; *envptr144933
  %cloptr144934 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144935 = getelementptr inbounds i64, i64* %cloptr144934, i64 0                ; &cloptr144934[0]
  %f144936 = ptrtoint void(i64,i64)* @lam143263 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144936, i64* %eptr144935                                               ; store fptr
  %arg142785 = ptrtoint i64* %cloptr144934 to i64                                    ; closure cast; i64* -> i64
  %cloptr144937 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144939 = getelementptr inbounds i64, i64* %cloptr144937, i64 1                ; &eptr144939[1]
  %eptr144940 = getelementptr inbounds i64, i64* %cloptr144937, i64 2                ; &eptr144940[2]
  %eptr144941 = getelementptr inbounds i64, i64* %cloptr144937, i64 3                ; &eptr144941[3]
  %eptr144942 = getelementptr inbounds i64, i64* %cloptr144937, i64 4                ; &eptr144942[4]
  store i64 %CSO$new, i64* %eptr144939                                               ; *eptr144939 = %CSO$new
  store i64 %opR$_37wind_45stack, i64* %eptr144940                                   ; *eptr144940 = %opR$_37wind_45stack
  store i64 %cont142136, i64* %eptr144941                                            ; *eptr144941 = %cont142136
  store i64 %TfQ$tail, i64* %eptr144942                                              ; *eptr144942 = %TfQ$tail
  %eptr144938 = getelementptr inbounds i64, i64* %cloptr144937, i64 0                ; &cloptr144937[0]
  %f144943 = ptrtoint void(i64,i64,i64)* @lam143260 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144943, i64* %eptr144938                                               ; store fptr
  %arg142784 = ptrtoint i64* %cloptr144937 to i64                                    ; closure cast; i64* -> i64
  %cloptr144944 = inttoptr i64 %arg142785 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144944)                                       ; assert function application
  %i0ptr144945 = getelementptr inbounds i64, i64* %cloptr144944, i64 0               ; &cloptr144944[0]
  %f144947 = load i64, i64* %i0ptr144945, align 8                                    ; load; *i0ptr144945
  %fptr144946 = inttoptr i64 %f144947 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144946(i64 %arg142785, i64 %arg142784)              ; tail call
  ret void
}


define void @lam143263(i64 %env143264, i64 %x6G$lst142148) {
  %cont142147 = call i64 @prim_car(i64 %x6G$lst142148)                               ; call prim_car
  %x6G$lst = call i64 @prim_cdr(i64 %x6G$lst142148)                                  ; call prim_cdr
  %arg142789 = add i64 0, 0                                                          ; quoted ()
  %cloptr144948 = inttoptr i64 %cont142147 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144948)                                       ; assert function application
  %i0ptr144949 = getelementptr inbounds i64, i64* %cloptr144948, i64 0               ; &cloptr144948[0]
  %f144951 = load i64, i64* %i0ptr144949, align 8                                    ; load; *i0ptr144949
  %fptr144950 = inttoptr i64 %f144951 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144950(i64 %cont142147, i64 %arg142789, i64 %x6G$lst); tail call
  ret void
}


define void @lam143260(i64 %env143261, i64 %_95142145, i64 %a142044) {
  %envptr144952 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144953 = getelementptr inbounds i64, i64* %envptr144952, i64 4              ; &envptr144952[4]
  %TfQ$tail = load i64, i64* %envptr144953, align 8                                  ; load; *envptr144953
  %envptr144954 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144955 = getelementptr inbounds i64, i64* %envptr144954, i64 3              ; &envptr144954[3]
  %cont142136 = load i64, i64* %envptr144955, align 8                                ; load; *envptr144955
  %envptr144956 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144957 = getelementptr inbounds i64, i64* %envptr144956, i64 2              ; &envptr144956[2]
  %opR$_37wind_45stack = load i64, i64* %envptr144957, align 8                       ; load; *envptr144957
  %envptr144958 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144959 = getelementptr inbounds i64, i64* %envptr144958, i64 1              ; &envptr144958[1]
  %CSO$new = load i64, i64* %envptr144959, align 8                                   ; load; *envptr144959
  %arg142792 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142146 = call i64 @prim_make_45vector(i64 %arg142792, i64 %a142044)        ; call prim_make_45vector
  %cloptr144960 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144962 = getelementptr inbounds i64, i64* %cloptr144960, i64 1                ; &eptr144962[1]
  %eptr144963 = getelementptr inbounds i64, i64* %cloptr144960, i64 2                ; &eptr144963[2]
  %eptr144964 = getelementptr inbounds i64, i64* %cloptr144960, i64 3                ; &eptr144964[3]
  %eptr144965 = getelementptr inbounds i64, i64* %cloptr144960, i64 4                ; &eptr144965[4]
  store i64 %CSO$new, i64* %eptr144962                                               ; *eptr144962 = %CSO$new
  store i64 %opR$_37wind_45stack, i64* %eptr144963                                   ; *eptr144963 = %opR$_37wind_45stack
  store i64 %cont142136, i64* %eptr144964                                            ; *eptr144964 = %cont142136
  store i64 %TfQ$tail, i64* %eptr144965                                              ; *eptr144965 = %TfQ$tail
  %eptr144961 = getelementptr inbounds i64, i64* %cloptr144960, i64 0                ; &cloptr144960[0]
  %f144966 = ptrtoint void(i64,i64,i64)* @lam143257 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144966, i64* %eptr144961                                               ; store fptr
  %arg142795 = ptrtoint i64* %cloptr144960 to i64                                    ; closure cast; i64* -> i64
  %arg142794 = add i64 0, 0                                                          ; quoted ()
  %cloptr144967 = inttoptr i64 %arg142795 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144967)                                       ; assert function application
  %i0ptr144968 = getelementptr inbounds i64, i64* %cloptr144967, i64 0               ; &cloptr144967[0]
  %f144970 = load i64, i64* %i0ptr144968, align 8                                    ; load; *i0ptr144968
  %fptr144969 = inttoptr i64 %f144970 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144969(i64 %arg142795, i64 %arg142794, i64 %retprim142146); tail call
  ret void
}


define void @lam143257(i64 %env143258, i64 %_95142139, i64 %Xor$f) {
  %envptr144971 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144972 = getelementptr inbounds i64, i64* %envptr144971, i64 4              ; &envptr144971[4]
  %TfQ$tail = load i64, i64* %envptr144972, align 8                                  ; load; *envptr144972
  %envptr144973 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144974 = getelementptr inbounds i64, i64* %envptr144973, i64 3              ; &envptr144973[3]
  %cont142136 = load i64, i64* %envptr144974, align 8                                ; load; *envptr144974
  %envptr144975 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144976 = getelementptr inbounds i64, i64* %envptr144975, i64 2              ; &envptr144975[2]
  %opR$_37wind_45stack = load i64, i64* %envptr144976, align 8                       ; load; *envptr144976
  %envptr144977 = inttoptr i64 %env143258 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144978 = getelementptr inbounds i64, i64* %envptr144977, i64 1              ; &envptr144977[1]
  %CSO$new = load i64, i64* %envptr144978, align 8                                   ; load; *envptr144978
  %arg142797 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr144979 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144981 = getelementptr inbounds i64, i64* %cloptr144979, i64 1                ; &eptr144981[1]
  %eptr144982 = getelementptr inbounds i64, i64* %cloptr144979, i64 2                ; &eptr144982[2]
  %eptr144983 = getelementptr inbounds i64, i64* %cloptr144979, i64 3                ; &eptr144983[3]
  store i64 %opR$_37wind_45stack, i64* %eptr144981                                   ; *eptr144981 = %opR$_37wind_45stack
  store i64 %Xor$f, i64* %eptr144982                                                 ; *eptr144982 = %Xor$f
  store i64 %TfQ$tail, i64* %eptr144983                                              ; *eptr144983 = %TfQ$tail
  %eptr144980 = getelementptr inbounds i64, i64* %cloptr144979, i64 0                ; &cloptr144979[0]
  %f144984 = ptrtoint void(i64,i64,i64)* @lam143254 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144984, i64* %eptr144980                                               ; store fptr
  %arg142796 = ptrtoint i64* %cloptr144979 to i64                                    ; closure cast; i64* -> i64
  %H0C$_95141930 = call i64 @prim_vector_45set_33(i64 %Xor$f, i64 %arg142797, i64 %arg142796); call prim_vector_45set_33
  %arg142821 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142051 = call i64 @prim_vector_45ref(i64 %Xor$f, i64 %arg142821)                 ; call prim_vector_45ref
  %cloptr144985 = inttoptr i64 %a142051 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144985)                                       ; assert function application
  %i0ptr144986 = getelementptr inbounds i64, i64* %cloptr144985, i64 0               ; &cloptr144985[0]
  %f144988 = load i64, i64* %i0ptr144986, align 8                                    ; load; *i0ptr144986
  %fptr144987 = inttoptr i64 %f144988 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144987(i64 %a142051, i64 %cont142136, i64 %CSO$new) ; tail call
  ret void
}


define void @lam143254(i64 %env143255, i64 %cont142140, i64 %Lje$l) {
  %envptr144989 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144990 = getelementptr inbounds i64, i64* %envptr144989, i64 3              ; &envptr144989[3]
  %TfQ$tail = load i64, i64* %envptr144990, align 8                                  ; load; *envptr144990
  %envptr144991 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144992 = getelementptr inbounds i64, i64* %envptr144991, i64 2              ; &envptr144991[2]
  %Xor$f = load i64, i64* %envptr144992, align 8                                     ; load; *envptr144992
  %envptr144993 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144994 = getelementptr inbounds i64, i64* %envptr144993, i64 1              ; &envptr144993[1]
  %opR$_37wind_45stack = load i64, i64* %envptr144994, align 8                       ; load; *envptr144994
  %a142045 = call i64 @prim_eq_63(i64 %Lje$l, i64 %TfQ$tail)                         ; call prim_eq_63
  %a142046 = call i64 @prim_not(i64 %a142045)                                        ; call prim_not
  %cmp144995 = icmp eq i64 %a142046, 15                                              ; false?
  br i1 %cmp144995, label %else144997, label %then144996                             ; if

then144996:
  %arg142802 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142047 = call i64 @prim_vector_45ref(i64 %Xor$f, i64 %arg142802)                 ; call prim_vector_45ref
  %a142048 = call i64 @prim_cdr(i64 %Lje$l)                                          ; call prim_cdr
  %cloptr144998 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145000 = getelementptr inbounds i64, i64* %cloptr144998, i64 1                ; &eptr145000[1]
  %eptr145001 = getelementptr inbounds i64, i64* %cloptr144998, i64 2                ; &eptr145001[2]
  %eptr145002 = getelementptr inbounds i64, i64* %cloptr144998, i64 3                ; &eptr145002[3]
  store i64 %cont142140, i64* %eptr145000                                            ; *eptr145000 = %cont142140
  store i64 %opR$_37wind_45stack, i64* %eptr145001                                   ; *eptr145001 = %opR$_37wind_45stack
  store i64 %Lje$l, i64* %eptr145002                                                 ; *eptr145002 = %Lje$l
  %eptr144999 = getelementptr inbounds i64, i64* %cloptr144998, i64 0                ; &cloptr144998[0]
  %f145003 = ptrtoint void(i64,i64,i64)* @lam143250 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145003, i64* %eptr144999                                               ; store fptr
  %arg142806 = ptrtoint i64* %cloptr144998 to i64                                    ; closure cast; i64* -> i64
  %cloptr145004 = inttoptr i64 %a142047 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145004)                                       ; assert function application
  %i0ptr145005 = getelementptr inbounds i64, i64* %cloptr145004, i64 0               ; &cloptr145004[0]
  %f145007 = load i64, i64* %i0ptr145005, align 8                                    ; load; *i0ptr145005
  %fptr145006 = inttoptr i64 %f145007 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145006(i64 %a142047, i64 %arg142806, i64 %a142048)  ; tail call
  ret void

else144997:
  %retprim142144 = call i64 @prim_void()                                             ; call prim_void
  %arg142819 = add i64 0, 0                                                          ; quoted ()
  %cloptr145008 = inttoptr i64 %cont142140 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145008)                                       ; assert function application
  %i0ptr145009 = getelementptr inbounds i64, i64* %cloptr145008, i64 0               ; &cloptr145008[0]
  %f145011 = load i64, i64* %i0ptr145009, align 8                                    ; load; *i0ptr145009
  %fptr145010 = inttoptr i64 %f145011 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145010(i64 %cont142140, i64 %arg142819, i64 %retprim142144); tail call
  ret void
}


define void @lam143250(i64 %env143251, i64 %_95142141, i64 %y6b$_95141931) {
  %envptr145012 = inttoptr i64 %env143251 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145013 = getelementptr inbounds i64, i64* %envptr145012, i64 3              ; &envptr145012[3]
  %Lje$l = load i64, i64* %envptr145013, align 8                                     ; load; *envptr145013
  %envptr145014 = inttoptr i64 %env143251 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145015 = getelementptr inbounds i64, i64* %envptr145014, i64 2              ; &envptr145014[2]
  %opR$_37wind_45stack = load i64, i64* %envptr145015, align 8                       ; load; *envptr145015
  %envptr145016 = inttoptr i64 %env143251 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145017 = getelementptr inbounds i64, i64* %envptr145016, i64 1              ; &envptr145016[1]
  %cont142140 = load i64, i64* %envptr145017, align 8                                ; load; *envptr145017
  %a142049 = call i64 @prim_car(i64 %Lje$l)                                          ; call prim_car
  %a142050 = call i64 @prim_car(i64 %a142049)                                        ; call prim_car
  %cloptr145018 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145020 = getelementptr inbounds i64, i64* %cloptr145018, i64 1                ; &eptr145020[1]
  %eptr145021 = getelementptr inbounds i64, i64* %cloptr145018, i64 2                ; &eptr145021[2]
  %eptr145022 = getelementptr inbounds i64, i64* %cloptr145018, i64 3                ; &eptr145022[3]
  store i64 %cont142140, i64* %eptr145020                                            ; *eptr145020 = %cont142140
  store i64 %opR$_37wind_45stack, i64* %eptr145021                                   ; *eptr145021 = %opR$_37wind_45stack
  store i64 %Lje$l, i64* %eptr145022                                                 ; *eptr145022 = %Lje$l
  %eptr145019 = getelementptr inbounds i64, i64* %cloptr145018, i64 0                ; &cloptr145018[0]
  %f145023 = ptrtoint void(i64,i64,i64)* @lam143248 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145023, i64* %eptr145019                                               ; store fptr
  %arg142810 = ptrtoint i64* %cloptr145018 to i64                                    ; closure cast; i64* -> i64
  %cloptr145024 = inttoptr i64 %a142050 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145024)                                       ; assert function application
  %i0ptr145025 = getelementptr inbounds i64, i64* %cloptr145024, i64 0               ; &cloptr145024[0]
  %f145027 = load i64, i64* %i0ptr145025, align 8                                    ; load; *i0ptr145025
  %fptr145026 = inttoptr i64 %f145027 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145026(i64 %a142050, i64 %arg142810)                ; tail call
  ret void
}


define void @lam143248(i64 %env143249, i64 %_95142142, i64 %fS7$_95141932) {
  %envptr145028 = inttoptr i64 %env143249 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145029 = getelementptr inbounds i64, i64* %envptr145028, i64 3              ; &envptr145028[3]
  %Lje$l = load i64, i64* %envptr145029, align 8                                     ; load; *envptr145029
  %envptr145030 = inttoptr i64 %env143249 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145031 = getelementptr inbounds i64, i64* %envptr145030, i64 2              ; &envptr145030[2]
  %opR$_37wind_45stack = load i64, i64* %envptr145031, align 8                       ; load; *envptr145031
  %envptr145032 = inttoptr i64 %env143249 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145033 = getelementptr inbounds i64, i64* %envptr145032, i64 1              ; &envptr145032[1]
  %cont142140 = load i64, i64* %envptr145033, align 8                                ; load; *envptr145033
  %arg142813 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142143 = call i64 @prim_vector_45set_33(i64 %opR$_37wind_45stack, i64 %arg142813, i64 %Lje$l); call prim_vector_45set_33
  %arg142816 = add i64 0, 0                                                          ; quoted ()
  %cloptr145034 = inttoptr i64 %cont142140 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145034)                                       ; assert function application
  %i0ptr145035 = getelementptr inbounds i64, i64* %cloptr145034, i64 0               ; &cloptr145034[0]
  %f145037 = load i64, i64* %i0ptr145035, align 8                                    ; load; *i0ptr145035
  %fptr145036 = inttoptr i64 %f145037 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145036(i64 %cont142140, i64 %arg142816, i64 %retprim142143); tail call
  ret void
}


define void @lam143235(i64 %env143236, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr145038 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145038)                                       ; assert function application
  %i0ptr145039 = getelementptr inbounds i64, i64* %cloptr145038, i64 0               ; &cloptr145038[0]
  %f145041 = load i64, i64* %i0ptr145039, align 8                                    ; load; *i0ptr145039
  %fptr145040 = inttoptr i64 %f145041 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145040(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam143228(i64 %env143229, i64 %cont142170, i64 %BPH$_37foldl) {
  %envptr145042 = inttoptr i64 %env143229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145043 = getelementptr inbounds i64, i64* %envptr145042, i64 3              ; &envptr145042[3]
  %URx$_37map1 = load i64, i64* %envptr145043, align 8                               ; load; *envptr145043
  %envptr145044 = inttoptr i64 %env143229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145045 = getelementptr inbounds i64, i64* %envptr145044, i64 2              ; &envptr145044[2]
  %DVf$_37foldr1 = load i64, i64* %envptr145045, align 8                             ; load; *envptr145045
  %envptr145046 = inttoptr i64 %env143229 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145047 = getelementptr inbounds i64, i64* %envptr145046, i64 1              ; &envptr145046[1]
  %QRr$_37foldr = load i64, i64* %envptr145047, align 8                              ; load; *envptr145047
  %arg142841 = add i64 0, 0                                                          ; quoted ()
  %cloptr145048 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145050 = getelementptr inbounds i64, i64* %cloptr145048, i64 1                ; &eptr145050[1]
  %eptr145051 = getelementptr inbounds i64, i64* %cloptr145048, i64 2                ; &eptr145051[2]
  %eptr145052 = getelementptr inbounds i64, i64* %cloptr145048, i64 3                ; &eptr145052[3]
  %eptr145053 = getelementptr inbounds i64, i64* %cloptr145048, i64 4                ; &eptr145053[4]
  store i64 %QRr$_37foldr, i64* %eptr145050                                          ; *eptr145050 = %QRr$_37foldr
  store i64 %BPH$_37foldl, i64* %eptr145051                                          ; *eptr145051 = %BPH$_37foldl
  store i64 %DVf$_37foldr1, i64* %eptr145052                                         ; *eptr145052 = %DVf$_37foldr1
  store i64 %URx$_37map1, i64* %eptr145053                                           ; *eptr145053 = %URx$_37map1
  %eptr145049 = getelementptr inbounds i64, i64* %cloptr145048, i64 0                ; &cloptr145048[0]
  %f145054 = ptrtoint void(i64,i64)* @lam143225 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145054, i64* %eptr145049                                               ; store fptr
  %arg142840 = ptrtoint i64* %cloptr145048 to i64                                    ; closure cast; i64* -> i64
  %cloptr145055 = inttoptr i64 %cont142170 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145055)                                       ; assert function application
  %i0ptr145056 = getelementptr inbounds i64, i64* %cloptr145055, i64 0               ; &cloptr145055[0]
  %f145058 = load i64, i64* %i0ptr145056, align 8                                    ; load; *i0ptr145056
  %fptr145057 = inttoptr i64 %f145058 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145057(i64 %cont142170, i64 %arg142841, i64 %arg142840); tail call
  ret void
}


define void @lam143225(i64 %env143226, i64 %MeH$args142172) {
  %envptr145059 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145060 = getelementptr inbounds i64, i64* %envptr145059, i64 4              ; &envptr145059[4]
  %URx$_37map1 = load i64, i64* %envptr145060, align 8                               ; load; *envptr145060
  %envptr145061 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145062 = getelementptr inbounds i64, i64* %envptr145061, i64 3              ; &envptr145061[3]
  %DVf$_37foldr1 = load i64, i64* %envptr145062, align 8                             ; load; *envptr145062
  %envptr145063 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145064 = getelementptr inbounds i64, i64* %envptr145063, i64 2              ; &envptr145063[2]
  %BPH$_37foldl = load i64, i64* %envptr145064, align 8                              ; load; *envptr145064
  %envptr145065 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145066 = getelementptr inbounds i64, i64* %envptr145065, i64 1              ; &envptr145065[1]
  %QRr$_37foldr = load i64, i64* %envptr145066, align 8                              ; load; *envptr145066
  %cont142171 = call i64 @prim_car(i64 %MeH$args142172)                              ; call prim_car
  %MeH$args = call i64 @prim_cdr(i64 %MeH$args142172)                                ; call prim_cdr
  %DV9$f = call i64 @prim_car(i64 %MeH$args)                                         ; call prim_car
  %a141973 = call i64 @prim_cdr(i64 %MeH$args)                                       ; call prim_cdr
  %retprim142191 = call i64 @prim_car(i64 %a141973)                                  ; call prim_car
  %cloptr145067 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145069 = getelementptr inbounds i64, i64* %cloptr145067, i64 1                ; &eptr145069[1]
  %eptr145070 = getelementptr inbounds i64, i64* %cloptr145067, i64 2                ; &eptr145070[2]
  %eptr145071 = getelementptr inbounds i64, i64* %cloptr145067, i64 3                ; &eptr145071[3]
  %eptr145072 = getelementptr inbounds i64, i64* %cloptr145067, i64 4                ; &eptr145072[4]
  %eptr145073 = getelementptr inbounds i64, i64* %cloptr145067, i64 5                ; &eptr145073[5]
  %eptr145074 = getelementptr inbounds i64, i64* %cloptr145067, i64 6                ; &eptr145074[6]
  %eptr145075 = getelementptr inbounds i64, i64* %cloptr145067, i64 7                ; &eptr145075[7]
  store i64 %QRr$_37foldr, i64* %eptr145069                                          ; *eptr145069 = %QRr$_37foldr
  store i64 %BPH$_37foldl, i64* %eptr145070                                          ; *eptr145070 = %BPH$_37foldl
  store i64 %cont142171, i64* %eptr145071                                            ; *eptr145071 = %cont142171
  store i64 %DV9$f, i64* %eptr145072                                                 ; *eptr145072 = %DV9$f
  store i64 %DVf$_37foldr1, i64* %eptr145073                                         ; *eptr145073 = %DVf$_37foldr1
  store i64 %URx$_37map1, i64* %eptr145074                                           ; *eptr145074 = %URx$_37map1
  store i64 %MeH$args, i64* %eptr145075                                              ; *eptr145075 = %MeH$args
  %eptr145068 = getelementptr inbounds i64, i64* %cloptr145067, i64 0                ; &cloptr145067[0]
  %f145076 = ptrtoint void(i64,i64,i64)* @lam143223 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145076, i64* %eptr145068                                               ; store fptr
  %arg142850 = ptrtoint i64* %cloptr145067 to i64                                    ; closure cast; i64* -> i64
  %arg142849 = add i64 0, 0                                                          ; quoted ()
  %cloptr145077 = inttoptr i64 %arg142850 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145077)                                       ; assert function application
  %i0ptr145078 = getelementptr inbounds i64, i64* %cloptr145077, i64 0               ; &cloptr145077[0]
  %f145080 = load i64, i64* %i0ptr145078, align 8                                    ; load; *i0ptr145078
  %fptr145079 = inttoptr i64 %f145080 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145079(i64 %arg142850, i64 %arg142849, i64 %retprim142191); tail call
  ret void
}


define void @lam143223(i64 %env143224, i64 %_95142173, i64 %ILL$acc) {
  %envptr145081 = inttoptr i64 %env143224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145082 = getelementptr inbounds i64, i64* %envptr145081, i64 7              ; &envptr145081[7]
  %MeH$args = load i64, i64* %envptr145082, align 8                                  ; load; *envptr145082
  %envptr145083 = inttoptr i64 %env143224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145084 = getelementptr inbounds i64, i64* %envptr145083, i64 6              ; &envptr145083[6]
  %URx$_37map1 = load i64, i64* %envptr145084, align 8                               ; load; *envptr145084
  %envptr145085 = inttoptr i64 %env143224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145086 = getelementptr inbounds i64, i64* %envptr145085, i64 5              ; &envptr145085[5]
  %DVf$_37foldr1 = load i64, i64* %envptr145086, align 8                             ; load; *envptr145086
  %envptr145087 = inttoptr i64 %env143224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145088 = getelementptr inbounds i64, i64* %envptr145087, i64 4              ; &envptr145087[4]
  %DV9$f = load i64, i64* %envptr145088, align 8                                     ; load; *envptr145088
  %envptr145089 = inttoptr i64 %env143224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145090 = getelementptr inbounds i64, i64* %envptr145089, i64 3              ; &envptr145089[3]
  %cont142171 = load i64, i64* %envptr145090, align 8                                ; load; *envptr145090
  %envptr145091 = inttoptr i64 %env143224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145092 = getelementptr inbounds i64, i64* %envptr145091, i64 2              ; &envptr145091[2]
  %BPH$_37foldl = load i64, i64* %envptr145092, align 8                              ; load; *envptr145092
  %envptr145093 = inttoptr i64 %env143224 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145094 = getelementptr inbounds i64, i64* %envptr145093, i64 1              ; &envptr145093[1]
  %QRr$_37foldr = load i64, i64* %envptr145094, align 8                              ; load; *envptr145094
  %a141974 = call i64 @prim_cdr(i64 %MeH$args)                                       ; call prim_cdr
  %retprim142190 = call i64 @prim_cdr(i64 %a141974)                                  ; call prim_cdr
  %cloptr145095 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145097 = getelementptr inbounds i64, i64* %cloptr145095, i64 1                ; &eptr145097[1]
  %eptr145098 = getelementptr inbounds i64, i64* %cloptr145095, i64 2                ; &eptr145098[2]
  %eptr145099 = getelementptr inbounds i64, i64* %cloptr145095, i64 3                ; &eptr145099[3]
  %eptr145100 = getelementptr inbounds i64, i64* %cloptr145095, i64 4                ; &eptr145100[4]
  %eptr145101 = getelementptr inbounds i64, i64* %cloptr145095, i64 5                ; &eptr145101[5]
  %eptr145102 = getelementptr inbounds i64, i64* %cloptr145095, i64 6                ; &eptr145102[6]
  %eptr145103 = getelementptr inbounds i64, i64* %cloptr145095, i64 7                ; &eptr145103[7]
  store i64 %QRr$_37foldr, i64* %eptr145097                                          ; *eptr145097 = %QRr$_37foldr
  store i64 %BPH$_37foldl, i64* %eptr145098                                          ; *eptr145098 = %BPH$_37foldl
  store i64 %cont142171, i64* %eptr145099                                            ; *eptr145099 = %cont142171
  store i64 %DV9$f, i64* %eptr145100                                                 ; *eptr145100 = %DV9$f
  store i64 %DVf$_37foldr1, i64* %eptr145101                                         ; *eptr145101 = %DVf$_37foldr1
  store i64 %URx$_37map1, i64* %eptr145102                                           ; *eptr145102 = %URx$_37map1
  store i64 %ILL$acc, i64* %eptr145103                                               ; *eptr145103 = %ILL$acc
  %eptr145096 = getelementptr inbounds i64, i64* %cloptr145095, i64 0                ; &cloptr145095[0]
  %f145104 = ptrtoint void(i64,i64,i64)* @lam143221 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145104, i64* %eptr145096                                               ; store fptr
  %arg142855 = ptrtoint i64* %cloptr145095 to i64                                    ; closure cast; i64* -> i64
  %arg142854 = add i64 0, 0                                                          ; quoted ()
  %cloptr145105 = inttoptr i64 %arg142855 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145105)                                       ; assert function application
  %i0ptr145106 = getelementptr inbounds i64, i64* %cloptr145105, i64 0               ; &cloptr145105[0]
  %f145108 = load i64, i64* %i0ptr145106, align 8                                    ; load; *i0ptr145106
  %fptr145107 = inttoptr i64 %f145108 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145107(i64 %arg142855, i64 %arg142854, i64 %retprim142190); tail call
  ret void
}


define void @lam143221(i64 %env143222, i64 %_95142174, i64 %jPi$lsts) {
  %envptr145109 = inttoptr i64 %env143222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145110 = getelementptr inbounds i64, i64* %envptr145109, i64 7              ; &envptr145109[7]
  %ILL$acc = load i64, i64* %envptr145110, align 8                                   ; load; *envptr145110
  %envptr145111 = inttoptr i64 %env143222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145112 = getelementptr inbounds i64, i64* %envptr145111, i64 6              ; &envptr145111[6]
  %URx$_37map1 = load i64, i64* %envptr145112, align 8                               ; load; *envptr145112
  %envptr145113 = inttoptr i64 %env143222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145114 = getelementptr inbounds i64, i64* %envptr145113, i64 5              ; &envptr145113[5]
  %DVf$_37foldr1 = load i64, i64* %envptr145114, align 8                             ; load; *envptr145114
  %envptr145115 = inttoptr i64 %env143222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145116 = getelementptr inbounds i64, i64* %envptr145115, i64 4              ; &envptr145115[4]
  %DV9$f = load i64, i64* %envptr145116, align 8                                     ; load; *envptr145116
  %envptr145117 = inttoptr i64 %env143222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145118 = getelementptr inbounds i64, i64* %envptr145117, i64 3              ; &envptr145117[3]
  %cont142171 = load i64, i64* %envptr145118, align 8                                ; load; *envptr145118
  %envptr145119 = inttoptr i64 %env143222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145120 = getelementptr inbounds i64, i64* %envptr145119, i64 2              ; &envptr145119[2]
  %BPH$_37foldl = load i64, i64* %envptr145120, align 8                              ; load; *envptr145120
  %envptr145121 = inttoptr i64 %env143222 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145122 = getelementptr inbounds i64, i64* %envptr145121, i64 1              ; &envptr145121[1]
  %QRr$_37foldr = load i64, i64* %envptr145122, align 8                              ; load; *envptr145122
  %cloptr145123 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145125 = getelementptr inbounds i64, i64* %cloptr145123, i64 1                ; &eptr145125[1]
  %eptr145126 = getelementptr inbounds i64, i64* %cloptr145123, i64 2                ; &eptr145126[2]
  %eptr145127 = getelementptr inbounds i64, i64* %cloptr145123, i64 3                ; &eptr145127[3]
  %eptr145128 = getelementptr inbounds i64, i64* %cloptr145123, i64 4                ; &eptr145128[4]
  %eptr145129 = getelementptr inbounds i64, i64* %cloptr145123, i64 5                ; &eptr145129[5]
  %eptr145130 = getelementptr inbounds i64, i64* %cloptr145123, i64 6                ; &eptr145130[6]
  %eptr145131 = getelementptr inbounds i64, i64* %cloptr145123, i64 7                ; &eptr145131[7]
  store i64 %QRr$_37foldr, i64* %eptr145125                                          ; *eptr145125 = %QRr$_37foldr
  store i64 %BPH$_37foldl, i64* %eptr145126                                          ; *eptr145126 = %BPH$_37foldl
  store i64 %cont142171, i64* %eptr145127                                            ; *eptr145127 = %cont142171
  store i64 %DV9$f, i64* %eptr145128                                                 ; *eptr145128 = %DV9$f
  store i64 %jPi$lsts, i64* %eptr145129                                              ; *eptr145129 = %jPi$lsts
  store i64 %URx$_37map1, i64* %eptr145130                                           ; *eptr145130 = %URx$_37map1
  store i64 %ILL$acc, i64* %eptr145131                                               ; *eptr145131 = %ILL$acc
  %eptr145124 = getelementptr inbounds i64, i64* %cloptr145123, i64 0                ; &cloptr145123[0]
  %f145132 = ptrtoint void(i64,i64,i64)* @lam143219 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145132, i64* %eptr145124                                               ; store fptr
  %arg142859 = ptrtoint i64* %cloptr145123 to i64                                    ; closure cast; i64* -> i64
  %cloptr145133 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145134 = getelementptr inbounds i64, i64* %cloptr145133, i64 0                ; &cloptr145133[0]
  %f145135 = ptrtoint void(i64,i64,i64,i64)* @lam143198 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145135, i64* %eptr145134                                               ; store fptr
  %arg142858 = ptrtoint i64* %cloptr145133 to i64                                    ; closure cast; i64* -> i64
  %arg142857 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr145136 = inttoptr i64 %DVf$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145136)                                       ; assert function application
  %i0ptr145137 = getelementptr inbounds i64, i64* %cloptr145136, i64 0               ; &cloptr145136[0]
  %f145139 = load i64, i64* %i0ptr145137, align 8                                    ; load; *i0ptr145137
  %fptr145138 = inttoptr i64 %f145139 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145138(i64 %DVf$_37foldr1, i64 %arg142859, i64 %arg142858, i64 %arg142857, i64 %jPi$lsts); tail call
  ret void
}


define void @lam143219(i64 %env143220, i64 %_95142175, i64 %a141975) {
  %envptr145140 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145141 = getelementptr inbounds i64, i64* %envptr145140, i64 7              ; &envptr145140[7]
  %ILL$acc = load i64, i64* %envptr145141, align 8                                   ; load; *envptr145141
  %envptr145142 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145143 = getelementptr inbounds i64, i64* %envptr145142, i64 6              ; &envptr145142[6]
  %URx$_37map1 = load i64, i64* %envptr145143, align 8                               ; load; *envptr145143
  %envptr145144 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145145 = getelementptr inbounds i64, i64* %envptr145144, i64 5              ; &envptr145144[5]
  %jPi$lsts = load i64, i64* %envptr145145, align 8                                  ; load; *envptr145145
  %envptr145146 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145147 = getelementptr inbounds i64, i64* %envptr145146, i64 4              ; &envptr145146[4]
  %DV9$f = load i64, i64* %envptr145147, align 8                                     ; load; *envptr145147
  %envptr145148 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145149 = getelementptr inbounds i64, i64* %envptr145148, i64 3              ; &envptr145148[3]
  %cont142171 = load i64, i64* %envptr145149, align 8                                ; load; *envptr145149
  %envptr145150 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145151 = getelementptr inbounds i64, i64* %envptr145150, i64 2              ; &envptr145150[2]
  %BPH$_37foldl = load i64, i64* %envptr145151, align 8                              ; load; *envptr145151
  %envptr145152 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145153 = getelementptr inbounds i64, i64* %envptr145152, i64 1              ; &envptr145152[1]
  %QRr$_37foldr = load i64, i64* %envptr145153, align 8                              ; load; *envptr145153
  %cmp145154 = icmp eq i64 %a141975, 15                                              ; false?
  br i1 %cmp145154, label %else145156, label %then145155                             ; if

then145155:
  %arg142862 = add i64 0, 0                                                          ; quoted ()
  %cloptr145157 = inttoptr i64 %cont142171 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145157)                                       ; assert function application
  %i0ptr145158 = getelementptr inbounds i64, i64* %cloptr145157, i64 0               ; &cloptr145157[0]
  %f145160 = load i64, i64* %i0ptr145158, align 8                                    ; load; *i0ptr145158
  %fptr145159 = inttoptr i64 %f145160 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145159(i64 %cont142171, i64 %arg142862, i64 %ILL$acc); tail call
  ret void

else145156:
  %cloptr145161 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145163 = getelementptr inbounds i64, i64* %cloptr145161, i64 1                ; &eptr145163[1]
  %eptr145164 = getelementptr inbounds i64, i64* %cloptr145161, i64 2                ; &eptr145164[2]
  %eptr145165 = getelementptr inbounds i64, i64* %cloptr145161, i64 3                ; &eptr145165[3]
  %eptr145166 = getelementptr inbounds i64, i64* %cloptr145161, i64 4                ; &eptr145166[4]
  %eptr145167 = getelementptr inbounds i64, i64* %cloptr145161, i64 5                ; &eptr145167[5]
  %eptr145168 = getelementptr inbounds i64, i64* %cloptr145161, i64 6                ; &eptr145168[6]
  %eptr145169 = getelementptr inbounds i64, i64* %cloptr145161, i64 7                ; &eptr145169[7]
  store i64 %QRr$_37foldr, i64* %eptr145163                                          ; *eptr145163 = %QRr$_37foldr
  store i64 %BPH$_37foldl, i64* %eptr145164                                          ; *eptr145164 = %BPH$_37foldl
  store i64 %cont142171, i64* %eptr145165                                            ; *eptr145165 = %cont142171
  store i64 %DV9$f, i64* %eptr145166                                                 ; *eptr145166 = %DV9$f
  store i64 %jPi$lsts, i64* %eptr145167                                              ; *eptr145167 = %jPi$lsts
  store i64 %URx$_37map1, i64* %eptr145168                                           ; *eptr145168 = %URx$_37map1
  store i64 %ILL$acc, i64* %eptr145169                                               ; *eptr145169 = %ILL$acc
  %eptr145162 = getelementptr inbounds i64, i64* %cloptr145161, i64 0                ; &cloptr145161[0]
  %f145170 = ptrtoint void(i64,i64,i64)* @lam143217 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145170, i64* %eptr145162                                               ; store fptr
  %arg142866 = ptrtoint i64* %cloptr145161 to i64                                    ; closure cast; i64* -> i64
  %cloptr145171 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145172 = getelementptr inbounds i64, i64* %cloptr145171, i64 0                ; &cloptr145171[0]
  %f145173 = ptrtoint void(i64,i64,i64)* @lam143202 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145173, i64* %eptr145172                                               ; store fptr
  %arg142865 = ptrtoint i64* %cloptr145171 to i64                                    ; closure cast; i64* -> i64
  %cloptr145174 = inttoptr i64 %URx$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145174)                                       ; assert function application
  %i0ptr145175 = getelementptr inbounds i64, i64* %cloptr145174, i64 0               ; &cloptr145174[0]
  %f145177 = load i64, i64* %i0ptr145175, align 8                                    ; load; *i0ptr145175
  %fptr145176 = inttoptr i64 %f145177 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145176(i64 %URx$_37map1, i64 %arg142866, i64 %arg142865, i64 %jPi$lsts); tail call
  ret void
}


define void @lam143217(i64 %env143218, i64 %_95142176, i64 %Vtd$lsts_43) {
  %envptr145178 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145179 = getelementptr inbounds i64, i64* %envptr145178, i64 7              ; &envptr145178[7]
  %ILL$acc = load i64, i64* %envptr145179, align 8                                   ; load; *envptr145179
  %envptr145180 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145181 = getelementptr inbounds i64, i64* %envptr145180, i64 6              ; &envptr145180[6]
  %URx$_37map1 = load i64, i64* %envptr145181, align 8                               ; load; *envptr145181
  %envptr145182 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145183 = getelementptr inbounds i64, i64* %envptr145182, i64 5              ; &envptr145182[5]
  %jPi$lsts = load i64, i64* %envptr145183, align 8                                  ; load; *envptr145183
  %envptr145184 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145185 = getelementptr inbounds i64, i64* %envptr145184, i64 4              ; &envptr145184[4]
  %DV9$f = load i64, i64* %envptr145185, align 8                                     ; load; *envptr145185
  %envptr145186 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145187 = getelementptr inbounds i64, i64* %envptr145186, i64 3              ; &envptr145186[3]
  %cont142171 = load i64, i64* %envptr145187, align 8                                ; load; *envptr145187
  %envptr145188 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145189 = getelementptr inbounds i64, i64* %envptr145188, i64 2              ; &envptr145188[2]
  %BPH$_37foldl = load i64, i64* %envptr145189, align 8                              ; load; *envptr145189
  %envptr145190 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145191 = getelementptr inbounds i64, i64* %envptr145190, i64 1              ; &envptr145190[1]
  %QRr$_37foldr = load i64, i64* %envptr145191, align 8                              ; load; *envptr145191
  %cloptr145192 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145194 = getelementptr inbounds i64, i64* %cloptr145192, i64 1                ; &eptr145194[1]
  %eptr145195 = getelementptr inbounds i64, i64* %cloptr145192, i64 2                ; &eptr145195[2]
  %eptr145196 = getelementptr inbounds i64, i64* %cloptr145192, i64 3                ; &eptr145196[3]
  %eptr145197 = getelementptr inbounds i64, i64* %cloptr145192, i64 4                ; &eptr145197[4]
  %eptr145198 = getelementptr inbounds i64, i64* %cloptr145192, i64 5                ; &eptr145198[5]
  %eptr145199 = getelementptr inbounds i64, i64* %cloptr145192, i64 6                ; &eptr145199[6]
  store i64 %QRr$_37foldr, i64* %eptr145194                                          ; *eptr145194 = %QRr$_37foldr
  store i64 %BPH$_37foldl, i64* %eptr145195                                          ; *eptr145195 = %BPH$_37foldl
  store i64 %cont142171, i64* %eptr145196                                            ; *eptr145196 = %cont142171
  store i64 %Vtd$lsts_43, i64* %eptr145197                                           ; *eptr145197 = %Vtd$lsts_43
  store i64 %DV9$f, i64* %eptr145198                                                 ; *eptr145198 = %DV9$f
  store i64 %ILL$acc, i64* %eptr145199                                               ; *eptr145199 = %ILL$acc
  %eptr145193 = getelementptr inbounds i64, i64* %cloptr145192, i64 0                ; &cloptr145192[0]
  %f145200 = ptrtoint void(i64,i64,i64)* @lam143215 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145200, i64* %eptr145193                                               ; store fptr
  %arg142870 = ptrtoint i64* %cloptr145192 to i64                                    ; closure cast; i64* -> i64
  %cloptr145201 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145202 = getelementptr inbounds i64, i64* %cloptr145201, i64 0                ; &cloptr145201[0]
  %f145203 = ptrtoint void(i64,i64,i64)* @lam143205 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145203, i64* %eptr145202                                               ; store fptr
  %arg142869 = ptrtoint i64* %cloptr145201 to i64                                    ; closure cast; i64* -> i64
  %cloptr145204 = inttoptr i64 %URx$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145204)                                       ; assert function application
  %i0ptr145205 = getelementptr inbounds i64, i64* %cloptr145204, i64 0               ; &cloptr145204[0]
  %f145207 = load i64, i64* %i0ptr145205, align 8                                    ; load; *i0ptr145205
  %fptr145206 = inttoptr i64 %f145207 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145206(i64 %URx$_37map1, i64 %arg142870, i64 %arg142869, i64 %jPi$lsts); tail call
  ret void
}


define void @lam143215(i64 %env143216, i64 %_95142177, i64 %FG7$vs) {
  %envptr145208 = inttoptr i64 %env143216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145209 = getelementptr inbounds i64, i64* %envptr145208, i64 6              ; &envptr145208[6]
  %ILL$acc = load i64, i64* %envptr145209, align 8                                   ; load; *envptr145209
  %envptr145210 = inttoptr i64 %env143216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145211 = getelementptr inbounds i64, i64* %envptr145210, i64 5              ; &envptr145210[5]
  %DV9$f = load i64, i64* %envptr145211, align 8                                     ; load; *envptr145211
  %envptr145212 = inttoptr i64 %env143216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145213 = getelementptr inbounds i64, i64* %envptr145212, i64 4              ; &envptr145212[4]
  %Vtd$lsts_43 = load i64, i64* %envptr145213, align 8                               ; load; *envptr145213
  %envptr145214 = inttoptr i64 %env143216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145215 = getelementptr inbounds i64, i64* %envptr145214, i64 3              ; &envptr145214[3]
  %cont142171 = load i64, i64* %envptr145215, align 8                                ; load; *envptr145215
  %envptr145216 = inttoptr i64 %env143216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145217 = getelementptr inbounds i64, i64* %envptr145216, i64 2              ; &envptr145216[2]
  %BPH$_37foldl = load i64, i64* %envptr145217, align 8                              ; load; *envptr145217
  %envptr145218 = inttoptr i64 %env143216 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145219 = getelementptr inbounds i64, i64* %envptr145218, i64 1              ; &envptr145218[1]
  %QRr$_37foldr = load i64, i64* %envptr145219, align 8                              ; load; *envptr145219
  %arg142872 = add i64 0, 0                                                          ; quoted ()
  %a141976 = call i64 @prim_cons(i64 %ILL$acc, i64 %arg142872)                       ; call prim_cons
  %cloptr145220 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145222 = getelementptr inbounds i64, i64* %cloptr145220, i64 1                ; &eptr145222[1]
  %eptr145223 = getelementptr inbounds i64, i64* %cloptr145220, i64 2                ; &eptr145223[2]
  %eptr145224 = getelementptr inbounds i64, i64* %cloptr145220, i64 3                ; &eptr145224[3]
  %eptr145225 = getelementptr inbounds i64, i64* %cloptr145220, i64 4                ; &eptr145225[4]
  store i64 %BPH$_37foldl, i64* %eptr145222                                          ; *eptr145222 = %BPH$_37foldl
  store i64 %cont142171, i64* %eptr145223                                            ; *eptr145223 = %cont142171
  store i64 %Vtd$lsts_43, i64* %eptr145224                                           ; *eptr145224 = %Vtd$lsts_43
  store i64 %DV9$f, i64* %eptr145225                                                 ; *eptr145225 = %DV9$f
  %eptr145221 = getelementptr inbounds i64, i64* %cloptr145220, i64 0                ; &cloptr145220[0]
  %f145226 = ptrtoint void(i64,i64,i64)* @lam143212 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145226, i64* %eptr145221                                               ; store fptr
  %arg142877 = ptrtoint i64* %cloptr145220 to i64                                    ; closure cast; i64* -> i64
  %cloptr145227 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145228 = getelementptr inbounds i64, i64* %cloptr145227, i64 0                ; &cloptr145227[0]
  %f145229 = ptrtoint void(i64,i64,i64,i64)* @lam143208 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145229, i64* %eptr145228                                               ; store fptr
  %arg142876 = ptrtoint i64* %cloptr145227 to i64                                    ; closure cast; i64* -> i64
  %cloptr145230 = inttoptr i64 %QRr$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145230)                                       ; assert function application
  %i0ptr145231 = getelementptr inbounds i64, i64* %cloptr145230, i64 0               ; &cloptr145230[0]
  %f145233 = load i64, i64* %i0ptr145231, align 8                                    ; load; *i0ptr145231
  %fptr145232 = inttoptr i64 %f145233 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145232(i64 %QRr$_37foldr, i64 %arg142877, i64 %arg142876, i64 %a141976, i64 %FG7$vs); tail call
  ret void
}


define void @lam143212(i64 %env143213, i64 %_95142180, i64 %a141977) {
  %envptr145234 = inttoptr i64 %env143213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145235 = getelementptr inbounds i64, i64* %envptr145234, i64 4              ; &envptr145234[4]
  %DV9$f = load i64, i64* %envptr145235, align 8                                     ; load; *envptr145235
  %envptr145236 = inttoptr i64 %env143213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145237 = getelementptr inbounds i64, i64* %envptr145236, i64 3              ; &envptr145236[3]
  %Vtd$lsts_43 = load i64, i64* %envptr145237, align 8                               ; load; *envptr145237
  %envptr145238 = inttoptr i64 %env143213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145239 = getelementptr inbounds i64, i64* %envptr145238, i64 2              ; &envptr145238[2]
  %cont142171 = load i64, i64* %envptr145239, align 8                                ; load; *envptr145239
  %envptr145240 = inttoptr i64 %env143213 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145241 = getelementptr inbounds i64, i64* %envptr145240, i64 1              ; &envptr145240[1]
  %BPH$_37foldl = load i64, i64* %envptr145241, align 8                              ; load; *envptr145241
  %cloptr145242 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145244 = getelementptr inbounds i64, i64* %cloptr145242, i64 1                ; &eptr145244[1]
  %eptr145245 = getelementptr inbounds i64, i64* %cloptr145242, i64 2                ; &eptr145245[2]
  %eptr145246 = getelementptr inbounds i64, i64* %cloptr145242, i64 3                ; &eptr145246[3]
  %eptr145247 = getelementptr inbounds i64, i64* %cloptr145242, i64 4                ; &eptr145247[4]
  store i64 %BPH$_37foldl, i64* %eptr145244                                          ; *eptr145244 = %BPH$_37foldl
  store i64 %cont142171, i64* %eptr145245                                            ; *eptr145245 = %cont142171
  store i64 %Vtd$lsts_43, i64* %eptr145246                                           ; *eptr145246 = %Vtd$lsts_43
  store i64 %DV9$f, i64* %eptr145247                                                 ; *eptr145247 = %DV9$f
  %eptr145243 = getelementptr inbounds i64, i64* %cloptr145242, i64 0                ; &cloptr145242[0]
  %f145248 = ptrtoint void(i64,i64,i64)* @lam143210 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145248, i64* %eptr145243                                               ; store fptr
  %arg142880 = ptrtoint i64* %cloptr145242 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142181 = call i64 @prim_cons(i64 %arg142880, i64 %a141977)               ; call prim_cons
  %cloptr145249 = inttoptr i64 %DV9$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145249)                                       ; assert function application
  %i0ptr145250 = getelementptr inbounds i64, i64* %cloptr145249, i64 0               ; &cloptr145249[0]
  %f145252 = load i64, i64* %i0ptr145250, align 8                                    ; load; *i0ptr145250
  %fptr145251 = inttoptr i64 %f145252 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145251(i64 %DV9$f, i64 %cps_45lst142181)            ; tail call
  ret void
}


define void @lam143210(i64 %env143211, i64 %_95142178, i64 %Ju1$acc_43) {
  %envptr145253 = inttoptr i64 %env143211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145254 = getelementptr inbounds i64, i64* %envptr145253, i64 4              ; &envptr145253[4]
  %DV9$f = load i64, i64* %envptr145254, align 8                                     ; load; *envptr145254
  %envptr145255 = inttoptr i64 %env143211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145256 = getelementptr inbounds i64, i64* %envptr145255, i64 3              ; &envptr145255[3]
  %Vtd$lsts_43 = load i64, i64* %envptr145256, align 8                               ; load; *envptr145256
  %envptr145257 = inttoptr i64 %env143211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145258 = getelementptr inbounds i64, i64* %envptr145257, i64 2              ; &envptr145257[2]
  %cont142171 = load i64, i64* %envptr145258, align 8                                ; load; *envptr145258
  %envptr145259 = inttoptr i64 %env143211 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145260 = getelementptr inbounds i64, i64* %envptr145259, i64 1              ; &envptr145259[1]
  %BPH$_37foldl = load i64, i64* %envptr145260, align 8                              ; load; *envptr145260
  %a141978 = call i64 @prim_cons(i64 %Ju1$acc_43, i64 %Vtd$lsts_43)                  ; call prim_cons
  %a141979 = call i64 @prim_cons(i64 %DV9$f, i64 %a141978)                           ; call prim_cons
  %cps_45lst142179 = call i64 @prim_cons(i64 %cont142171, i64 %a141979)              ; call prim_cons
  %cloptr145261 = inttoptr i64 %BPH$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145261)                                       ; assert function application
  %i0ptr145262 = getelementptr inbounds i64, i64* %cloptr145261, i64 0               ; &cloptr145261[0]
  %f145264 = load i64, i64* %i0ptr145262, align 8                                    ; load; *i0ptr145262
  %fptr145263 = inttoptr i64 %f145264 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145263(i64 %BPH$_37foldl, i64 %cps_45lst142179)     ; tail call
  ret void
}


define void @lam143208(i64 %env143209, i64 %cont142182, i64 %gEY$a, i64 %p1t$b) {
  %retprim142183 = call i64 @prim_cons(i64 %gEY$a, i64 %p1t$b)                       ; call prim_cons
  %arg142890 = add i64 0, 0                                                          ; quoted ()
  %cloptr145265 = inttoptr i64 %cont142182 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145265)                                       ; assert function application
  %i0ptr145266 = getelementptr inbounds i64, i64* %cloptr145265, i64 0               ; &cloptr145265[0]
  %f145268 = load i64, i64* %i0ptr145266, align 8                                    ; load; *i0ptr145266
  %fptr145267 = inttoptr i64 %f145268 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145267(i64 %cont142182, i64 %arg142890, i64 %retprim142183); tail call
  ret void
}


define void @lam143205(i64 %env143206, i64 %cont142184, i64 %xhK$x) {
  %retprim142185 = call i64 @prim_car(i64 %xhK$x)                                    ; call prim_car
  %arg142894 = add i64 0, 0                                                          ; quoted ()
  %cloptr145269 = inttoptr i64 %cont142184 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145269)                                       ; assert function application
  %i0ptr145270 = getelementptr inbounds i64, i64* %cloptr145269, i64 0               ; &cloptr145269[0]
  %f145272 = load i64, i64* %i0ptr145270, align 8                                    ; load; *i0ptr145270
  %fptr145271 = inttoptr i64 %f145272 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145271(i64 %cont142184, i64 %arg142894, i64 %retprim142185); tail call
  ret void
}


define void @lam143202(i64 %env143203, i64 %cont142186, i64 %hON$x) {
  %retprim142187 = call i64 @prim_cdr(i64 %hON$x)                                    ; call prim_cdr
  %arg142898 = add i64 0, 0                                                          ; quoted ()
  %cloptr145273 = inttoptr i64 %cont142186 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145273)                                       ; assert function application
  %i0ptr145274 = getelementptr inbounds i64, i64* %cloptr145273, i64 0               ; &cloptr145273[0]
  %f145276 = load i64, i64* %i0ptr145274, align 8                                    ; load; *i0ptr145274
  %fptr145275 = inttoptr i64 %f145276 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145275(i64 %cont142186, i64 %arg142898, i64 %retprim142187); tail call
  ret void
}


define void @lam143198(i64 %env143199, i64 %cont142188, i64 %OtO$lst, i64 %REI$b) {
  %cmp145277 = icmp eq i64 %REI$b, 15                                                ; false?
  br i1 %cmp145277, label %else145279, label %then145278                             ; if

then145278:
  %arg142901 = add i64 0, 0                                                          ; quoted ()
  %cloptr145280 = inttoptr i64 %cont142188 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145280)                                       ; assert function application
  %i0ptr145281 = getelementptr inbounds i64, i64* %cloptr145280, i64 0               ; &cloptr145280[0]
  %f145283 = load i64, i64* %i0ptr145281, align 8                                    ; load; *i0ptr145281
  %fptr145282 = inttoptr i64 %f145283 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145282(i64 %cont142188, i64 %arg142901, i64 %REI$b) ; tail call
  ret void

else145279:
  %retprim142189 = call i64 @prim_null_63(i64 %OtO$lst)                              ; call prim_null_63
  %arg142905 = add i64 0, 0                                                          ; quoted ()
  %cloptr145284 = inttoptr i64 %cont142188 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145284)                                       ; assert function application
  %i0ptr145285 = getelementptr inbounds i64, i64* %cloptr145284, i64 0               ; &cloptr145284[0]
  %f145287 = load i64, i64* %i0ptr145285, align 8                                    ; load; *i0ptr145285
  %fptr145286 = inttoptr i64 %f145287 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145286(i64 %cont142188, i64 %arg142905, i64 %retprim142189); tail call
  ret void
}


define void @lam143191(i64 %env143192, i64 %cont142192, i64 %tz4$_37foldr) {
  %envptr145288 = inttoptr i64 %env143192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145289 = getelementptr inbounds i64, i64* %envptr145288, i64 2              ; &envptr145288[2]
  %Kcc$_37map1 = load i64, i64* %envptr145289, align 8                               ; load; *envptr145289
  %envptr145290 = inttoptr i64 %env143192 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145291 = getelementptr inbounds i64, i64* %envptr145290, i64 1              ; &envptr145290[1]
  %DVf$_37foldr1 = load i64, i64* %envptr145291, align 8                             ; load; *envptr145291
  %arg142908 = add i64 0, 0                                                          ; quoted ()
  %cloptr145292 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145294 = getelementptr inbounds i64, i64* %cloptr145292, i64 1                ; &eptr145294[1]
  %eptr145295 = getelementptr inbounds i64, i64* %cloptr145292, i64 2                ; &eptr145295[2]
  %eptr145296 = getelementptr inbounds i64, i64* %cloptr145292, i64 3                ; &eptr145296[3]
  store i64 %DVf$_37foldr1, i64* %eptr145294                                         ; *eptr145294 = %DVf$_37foldr1
  store i64 %tz4$_37foldr, i64* %eptr145295                                          ; *eptr145295 = %tz4$_37foldr
  store i64 %Kcc$_37map1, i64* %eptr145296                                           ; *eptr145296 = %Kcc$_37map1
  %eptr145293 = getelementptr inbounds i64, i64* %cloptr145292, i64 0                ; &cloptr145292[0]
  %f145297 = ptrtoint void(i64,i64)* @lam143188 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145297, i64* %eptr145293                                               ; store fptr
  %arg142907 = ptrtoint i64* %cloptr145292 to i64                                    ; closure cast; i64* -> i64
  %cloptr145298 = inttoptr i64 %cont142192 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145298)                                       ; assert function application
  %i0ptr145299 = getelementptr inbounds i64, i64* %cloptr145298, i64 0               ; &cloptr145298[0]
  %f145301 = load i64, i64* %i0ptr145299, align 8                                    ; load; *i0ptr145299
  %fptr145300 = inttoptr i64 %f145301 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145300(i64 %cont142192, i64 %arg142908, i64 %arg142907); tail call
  ret void
}


define void @lam143188(i64 %env143189, i64 %ozU$args142194) {
  %envptr145302 = inttoptr i64 %env143189 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145303 = getelementptr inbounds i64, i64* %envptr145302, i64 3              ; &envptr145302[3]
  %Kcc$_37map1 = load i64, i64* %envptr145303, align 8                               ; load; *envptr145303
  %envptr145304 = inttoptr i64 %env143189 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145305 = getelementptr inbounds i64, i64* %envptr145304, i64 2              ; &envptr145304[2]
  %tz4$_37foldr = load i64, i64* %envptr145305, align 8                              ; load; *envptr145305
  %envptr145306 = inttoptr i64 %env143189 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145307 = getelementptr inbounds i64, i64* %envptr145306, i64 1              ; &envptr145306[1]
  %DVf$_37foldr1 = load i64, i64* %envptr145307, align 8                             ; load; *envptr145307
  %cont142193 = call i64 @prim_car(i64 %ozU$args142194)                              ; call prim_car
  %ozU$args = call i64 @prim_cdr(i64 %ozU$args142194)                                ; call prim_cdr
  %hlU$f = call i64 @prim_car(i64 %ozU$args)                                         ; call prim_car
  %a141959 = call i64 @prim_cdr(i64 %ozU$args)                                       ; call prim_cdr
  %retprim142213 = call i64 @prim_car(i64 %a141959)                                  ; call prim_car
  %cloptr145308 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145310 = getelementptr inbounds i64, i64* %cloptr145308, i64 1                ; &eptr145310[1]
  %eptr145311 = getelementptr inbounds i64, i64* %cloptr145308, i64 2                ; &eptr145311[2]
  %eptr145312 = getelementptr inbounds i64, i64* %cloptr145308, i64 3                ; &eptr145312[3]
  %eptr145313 = getelementptr inbounds i64, i64* %cloptr145308, i64 4                ; &eptr145313[4]
  %eptr145314 = getelementptr inbounds i64, i64* %cloptr145308, i64 5                ; &eptr145314[5]
  %eptr145315 = getelementptr inbounds i64, i64* %cloptr145308, i64 6                ; &eptr145315[6]
  store i64 %ozU$args, i64* %eptr145310                                              ; *eptr145310 = %ozU$args
  store i64 %DVf$_37foldr1, i64* %eptr145311                                         ; *eptr145311 = %DVf$_37foldr1
  store i64 %tz4$_37foldr, i64* %eptr145312                                          ; *eptr145312 = %tz4$_37foldr
  store i64 %hlU$f, i64* %eptr145313                                                 ; *eptr145313 = %hlU$f
  store i64 %cont142193, i64* %eptr145314                                            ; *eptr145314 = %cont142193
  store i64 %Kcc$_37map1, i64* %eptr145315                                           ; *eptr145315 = %Kcc$_37map1
  %eptr145309 = getelementptr inbounds i64, i64* %cloptr145308, i64 0                ; &cloptr145308[0]
  %f145316 = ptrtoint void(i64,i64,i64)* @lam143186 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145316, i64* %eptr145309                                               ; store fptr
  %arg142917 = ptrtoint i64* %cloptr145308 to i64                                    ; closure cast; i64* -> i64
  %arg142916 = add i64 0, 0                                                          ; quoted ()
  %cloptr145317 = inttoptr i64 %arg142917 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145317)                                       ; assert function application
  %i0ptr145318 = getelementptr inbounds i64, i64* %cloptr145317, i64 0               ; &cloptr145317[0]
  %f145320 = load i64, i64* %i0ptr145318, align 8                                    ; load; *i0ptr145318
  %fptr145319 = inttoptr i64 %f145320 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145319(i64 %arg142917, i64 %arg142916, i64 %retprim142213); tail call
  ret void
}


define void @lam143186(i64 %env143187, i64 %_95142195, i64 %d1w$acc) {
  %envptr145321 = inttoptr i64 %env143187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145322 = getelementptr inbounds i64, i64* %envptr145321, i64 6              ; &envptr145321[6]
  %Kcc$_37map1 = load i64, i64* %envptr145322, align 8                               ; load; *envptr145322
  %envptr145323 = inttoptr i64 %env143187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145324 = getelementptr inbounds i64, i64* %envptr145323, i64 5              ; &envptr145323[5]
  %cont142193 = load i64, i64* %envptr145324, align 8                                ; load; *envptr145324
  %envptr145325 = inttoptr i64 %env143187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145326 = getelementptr inbounds i64, i64* %envptr145325, i64 4              ; &envptr145325[4]
  %hlU$f = load i64, i64* %envptr145326, align 8                                     ; load; *envptr145326
  %envptr145327 = inttoptr i64 %env143187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145328 = getelementptr inbounds i64, i64* %envptr145327, i64 3              ; &envptr145327[3]
  %tz4$_37foldr = load i64, i64* %envptr145328, align 8                              ; load; *envptr145328
  %envptr145329 = inttoptr i64 %env143187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145330 = getelementptr inbounds i64, i64* %envptr145329, i64 2              ; &envptr145329[2]
  %DVf$_37foldr1 = load i64, i64* %envptr145330, align 8                             ; load; *envptr145330
  %envptr145331 = inttoptr i64 %env143187 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145332 = getelementptr inbounds i64, i64* %envptr145331, i64 1              ; &envptr145331[1]
  %ozU$args = load i64, i64* %envptr145332, align 8                                  ; load; *envptr145332
  %a141960 = call i64 @prim_cdr(i64 %ozU$args)                                       ; call prim_cdr
  %retprim142212 = call i64 @prim_cdr(i64 %a141960)                                  ; call prim_cdr
  %cloptr145333 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145335 = getelementptr inbounds i64, i64* %cloptr145333, i64 1                ; &eptr145335[1]
  %eptr145336 = getelementptr inbounds i64, i64* %cloptr145333, i64 2                ; &eptr145336[2]
  %eptr145337 = getelementptr inbounds i64, i64* %cloptr145333, i64 3                ; &eptr145337[3]
  %eptr145338 = getelementptr inbounds i64, i64* %cloptr145333, i64 4                ; &eptr145338[4]
  %eptr145339 = getelementptr inbounds i64, i64* %cloptr145333, i64 5                ; &eptr145339[5]
  %eptr145340 = getelementptr inbounds i64, i64* %cloptr145333, i64 6                ; &eptr145340[6]
  store i64 %d1w$acc, i64* %eptr145335                                               ; *eptr145335 = %d1w$acc
  store i64 %DVf$_37foldr1, i64* %eptr145336                                         ; *eptr145336 = %DVf$_37foldr1
  store i64 %tz4$_37foldr, i64* %eptr145337                                          ; *eptr145337 = %tz4$_37foldr
  store i64 %hlU$f, i64* %eptr145338                                                 ; *eptr145338 = %hlU$f
  store i64 %cont142193, i64* %eptr145339                                            ; *eptr145339 = %cont142193
  store i64 %Kcc$_37map1, i64* %eptr145340                                           ; *eptr145340 = %Kcc$_37map1
  %eptr145334 = getelementptr inbounds i64, i64* %cloptr145333, i64 0                ; &cloptr145333[0]
  %f145341 = ptrtoint void(i64,i64,i64)* @lam143184 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145341, i64* %eptr145334                                               ; store fptr
  %arg142922 = ptrtoint i64* %cloptr145333 to i64                                    ; closure cast; i64* -> i64
  %arg142921 = add i64 0, 0                                                          ; quoted ()
  %cloptr145342 = inttoptr i64 %arg142922 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145342)                                       ; assert function application
  %i0ptr145343 = getelementptr inbounds i64, i64* %cloptr145342, i64 0               ; &cloptr145342[0]
  %f145345 = load i64, i64* %i0ptr145343, align 8                                    ; load; *i0ptr145343
  %fptr145344 = inttoptr i64 %f145345 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145344(i64 %arg142922, i64 %arg142921, i64 %retprim142212); tail call
  ret void
}


define void @lam143184(i64 %env143185, i64 %_95142196, i64 %DW4$lsts) {
  %envptr145346 = inttoptr i64 %env143185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145347 = getelementptr inbounds i64, i64* %envptr145346, i64 6              ; &envptr145346[6]
  %Kcc$_37map1 = load i64, i64* %envptr145347, align 8                               ; load; *envptr145347
  %envptr145348 = inttoptr i64 %env143185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145349 = getelementptr inbounds i64, i64* %envptr145348, i64 5              ; &envptr145348[5]
  %cont142193 = load i64, i64* %envptr145349, align 8                                ; load; *envptr145349
  %envptr145350 = inttoptr i64 %env143185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145351 = getelementptr inbounds i64, i64* %envptr145350, i64 4              ; &envptr145350[4]
  %hlU$f = load i64, i64* %envptr145351, align 8                                     ; load; *envptr145351
  %envptr145352 = inttoptr i64 %env143185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145353 = getelementptr inbounds i64, i64* %envptr145352, i64 3              ; &envptr145352[3]
  %tz4$_37foldr = load i64, i64* %envptr145353, align 8                              ; load; *envptr145353
  %envptr145354 = inttoptr i64 %env143185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145355 = getelementptr inbounds i64, i64* %envptr145354, i64 2              ; &envptr145354[2]
  %DVf$_37foldr1 = load i64, i64* %envptr145355, align 8                             ; load; *envptr145355
  %envptr145356 = inttoptr i64 %env143185 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145357 = getelementptr inbounds i64, i64* %envptr145356, i64 1              ; &envptr145356[1]
  %d1w$acc = load i64, i64* %envptr145357, align 8                                   ; load; *envptr145357
  %cloptr145358 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145360 = getelementptr inbounds i64, i64* %cloptr145358, i64 1                ; &eptr145360[1]
  %eptr145361 = getelementptr inbounds i64, i64* %cloptr145358, i64 2                ; &eptr145361[2]
  %eptr145362 = getelementptr inbounds i64, i64* %cloptr145358, i64 3                ; &eptr145362[3]
  %eptr145363 = getelementptr inbounds i64, i64* %cloptr145358, i64 4                ; &eptr145363[4]
  %eptr145364 = getelementptr inbounds i64, i64* %cloptr145358, i64 5                ; &eptr145364[5]
  %eptr145365 = getelementptr inbounds i64, i64* %cloptr145358, i64 6                ; &eptr145365[6]
  %eptr145366 = getelementptr inbounds i64, i64* %cloptr145358, i64 7                ; &eptr145366[7]
  store i64 %d1w$acc, i64* %eptr145360                                               ; *eptr145360 = %d1w$acc
  store i64 %DVf$_37foldr1, i64* %eptr145361                                         ; *eptr145361 = %DVf$_37foldr1
  store i64 %tz4$_37foldr, i64* %eptr145362                                          ; *eptr145362 = %tz4$_37foldr
  store i64 %hlU$f, i64* %eptr145363                                                 ; *eptr145363 = %hlU$f
  store i64 %cont142193, i64* %eptr145364                                            ; *eptr145364 = %cont142193
  store i64 %DW4$lsts, i64* %eptr145365                                              ; *eptr145365 = %DW4$lsts
  store i64 %Kcc$_37map1, i64* %eptr145366                                           ; *eptr145366 = %Kcc$_37map1
  %eptr145359 = getelementptr inbounds i64, i64* %cloptr145358, i64 0                ; &cloptr145358[0]
  %f145367 = ptrtoint void(i64,i64,i64)* @lam143182 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145367, i64* %eptr145359                                               ; store fptr
  %arg142926 = ptrtoint i64* %cloptr145358 to i64                                    ; closure cast; i64* -> i64
  %cloptr145368 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145369 = getelementptr inbounds i64, i64* %cloptr145368, i64 0                ; &cloptr145368[0]
  %f145370 = ptrtoint void(i64,i64,i64,i64)* @lam143161 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145370, i64* %eptr145369                                               ; store fptr
  %arg142925 = ptrtoint i64* %cloptr145368 to i64                                    ; closure cast; i64* -> i64
  %arg142924 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr145371 = inttoptr i64 %DVf$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145371)                                       ; assert function application
  %i0ptr145372 = getelementptr inbounds i64, i64* %cloptr145371, i64 0               ; &cloptr145371[0]
  %f145374 = load i64, i64* %i0ptr145372, align 8                                    ; load; *i0ptr145372
  %fptr145373 = inttoptr i64 %f145374 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145373(i64 %DVf$_37foldr1, i64 %arg142926, i64 %arg142925, i64 %arg142924, i64 %DW4$lsts); tail call
  ret void
}


define void @lam143182(i64 %env143183, i64 %_95142197, i64 %a141961) {
  %envptr145375 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145376 = getelementptr inbounds i64, i64* %envptr145375, i64 7              ; &envptr145375[7]
  %Kcc$_37map1 = load i64, i64* %envptr145376, align 8                               ; load; *envptr145376
  %envptr145377 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145378 = getelementptr inbounds i64, i64* %envptr145377, i64 6              ; &envptr145377[6]
  %DW4$lsts = load i64, i64* %envptr145378, align 8                                  ; load; *envptr145378
  %envptr145379 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145380 = getelementptr inbounds i64, i64* %envptr145379, i64 5              ; &envptr145379[5]
  %cont142193 = load i64, i64* %envptr145380, align 8                                ; load; *envptr145380
  %envptr145381 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145382 = getelementptr inbounds i64, i64* %envptr145381, i64 4              ; &envptr145381[4]
  %hlU$f = load i64, i64* %envptr145382, align 8                                     ; load; *envptr145382
  %envptr145383 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145384 = getelementptr inbounds i64, i64* %envptr145383, i64 3              ; &envptr145383[3]
  %tz4$_37foldr = load i64, i64* %envptr145384, align 8                              ; load; *envptr145384
  %envptr145385 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145386 = getelementptr inbounds i64, i64* %envptr145385, i64 2              ; &envptr145385[2]
  %DVf$_37foldr1 = load i64, i64* %envptr145386, align 8                             ; load; *envptr145386
  %envptr145387 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145388 = getelementptr inbounds i64, i64* %envptr145387, i64 1              ; &envptr145387[1]
  %d1w$acc = load i64, i64* %envptr145388, align 8                                   ; load; *envptr145388
  %cmp145389 = icmp eq i64 %a141961, 15                                              ; false?
  br i1 %cmp145389, label %else145391, label %then145390                             ; if

then145390:
  %arg142929 = add i64 0, 0                                                          ; quoted ()
  %cloptr145392 = inttoptr i64 %cont142193 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145392)                                       ; assert function application
  %i0ptr145393 = getelementptr inbounds i64, i64* %cloptr145392, i64 0               ; &cloptr145392[0]
  %f145395 = load i64, i64* %i0ptr145393, align 8                                    ; load; *i0ptr145393
  %fptr145394 = inttoptr i64 %f145395 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145394(i64 %cont142193, i64 %arg142929, i64 %d1w$acc); tail call
  ret void

else145391:
  %cloptr145396 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145398 = getelementptr inbounds i64, i64* %cloptr145396, i64 1                ; &eptr145398[1]
  %eptr145399 = getelementptr inbounds i64, i64* %cloptr145396, i64 2                ; &eptr145399[2]
  %eptr145400 = getelementptr inbounds i64, i64* %cloptr145396, i64 3                ; &eptr145400[3]
  %eptr145401 = getelementptr inbounds i64, i64* %cloptr145396, i64 4                ; &eptr145401[4]
  %eptr145402 = getelementptr inbounds i64, i64* %cloptr145396, i64 5                ; &eptr145402[5]
  %eptr145403 = getelementptr inbounds i64, i64* %cloptr145396, i64 6                ; &eptr145403[6]
  %eptr145404 = getelementptr inbounds i64, i64* %cloptr145396, i64 7                ; &eptr145404[7]
  store i64 %d1w$acc, i64* %eptr145398                                               ; *eptr145398 = %d1w$acc
  store i64 %DVf$_37foldr1, i64* %eptr145399                                         ; *eptr145399 = %DVf$_37foldr1
  store i64 %tz4$_37foldr, i64* %eptr145400                                          ; *eptr145400 = %tz4$_37foldr
  store i64 %hlU$f, i64* %eptr145401                                                 ; *eptr145401 = %hlU$f
  store i64 %cont142193, i64* %eptr145402                                            ; *eptr145402 = %cont142193
  store i64 %DW4$lsts, i64* %eptr145403                                              ; *eptr145403 = %DW4$lsts
  store i64 %Kcc$_37map1, i64* %eptr145404                                           ; *eptr145404 = %Kcc$_37map1
  %eptr145397 = getelementptr inbounds i64, i64* %cloptr145396, i64 0                ; &cloptr145396[0]
  %f145405 = ptrtoint void(i64,i64,i64)* @lam143180 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145405, i64* %eptr145397                                               ; store fptr
  %arg142933 = ptrtoint i64* %cloptr145396 to i64                                    ; closure cast; i64* -> i64
  %cloptr145406 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145407 = getelementptr inbounds i64, i64* %cloptr145406, i64 0                ; &cloptr145406[0]
  %f145408 = ptrtoint void(i64,i64,i64)* @lam143165 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145408, i64* %eptr145407                                               ; store fptr
  %arg142932 = ptrtoint i64* %cloptr145406 to i64                                    ; closure cast; i64* -> i64
  %cloptr145409 = inttoptr i64 %Kcc$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145409)                                       ; assert function application
  %i0ptr145410 = getelementptr inbounds i64, i64* %cloptr145409, i64 0               ; &cloptr145409[0]
  %f145412 = load i64, i64* %i0ptr145410, align 8                                    ; load; *i0ptr145410
  %fptr145411 = inttoptr i64 %f145412 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145411(i64 %Kcc$_37map1, i64 %arg142933, i64 %arg142932, i64 %DW4$lsts); tail call
  ret void
}


define void @lam143180(i64 %env143181, i64 %_95142198, i64 %cUD$lsts_43) {
  %envptr145413 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145414 = getelementptr inbounds i64, i64* %envptr145413, i64 7              ; &envptr145413[7]
  %Kcc$_37map1 = load i64, i64* %envptr145414, align 8                               ; load; *envptr145414
  %envptr145415 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145416 = getelementptr inbounds i64, i64* %envptr145415, i64 6              ; &envptr145415[6]
  %DW4$lsts = load i64, i64* %envptr145416, align 8                                  ; load; *envptr145416
  %envptr145417 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145418 = getelementptr inbounds i64, i64* %envptr145417, i64 5              ; &envptr145417[5]
  %cont142193 = load i64, i64* %envptr145418, align 8                                ; load; *envptr145418
  %envptr145419 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145420 = getelementptr inbounds i64, i64* %envptr145419, i64 4              ; &envptr145419[4]
  %hlU$f = load i64, i64* %envptr145420, align 8                                     ; load; *envptr145420
  %envptr145421 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145422 = getelementptr inbounds i64, i64* %envptr145421, i64 3              ; &envptr145421[3]
  %tz4$_37foldr = load i64, i64* %envptr145422, align 8                              ; load; *envptr145422
  %envptr145423 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145424 = getelementptr inbounds i64, i64* %envptr145423, i64 2              ; &envptr145423[2]
  %DVf$_37foldr1 = load i64, i64* %envptr145424, align 8                             ; load; *envptr145424
  %envptr145425 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145426 = getelementptr inbounds i64, i64* %envptr145425, i64 1              ; &envptr145425[1]
  %d1w$acc = load i64, i64* %envptr145426, align 8                                   ; load; *envptr145426
  %cloptr145427 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145429 = getelementptr inbounds i64, i64* %cloptr145427, i64 1                ; &eptr145429[1]
  %eptr145430 = getelementptr inbounds i64, i64* %cloptr145427, i64 2                ; &eptr145430[2]
  %eptr145431 = getelementptr inbounds i64, i64* %cloptr145427, i64 3                ; &eptr145431[3]
  %eptr145432 = getelementptr inbounds i64, i64* %cloptr145427, i64 4                ; &eptr145432[4]
  %eptr145433 = getelementptr inbounds i64, i64* %cloptr145427, i64 5                ; &eptr145433[5]
  %eptr145434 = getelementptr inbounds i64, i64* %cloptr145427, i64 6                ; &eptr145434[6]
  store i64 %d1w$acc, i64* %eptr145429                                               ; *eptr145429 = %d1w$acc
  store i64 %DVf$_37foldr1, i64* %eptr145430                                         ; *eptr145430 = %DVf$_37foldr1
  store i64 %tz4$_37foldr, i64* %eptr145431                                          ; *eptr145431 = %tz4$_37foldr
  store i64 %hlU$f, i64* %eptr145432                                                 ; *eptr145432 = %hlU$f
  store i64 %cUD$lsts_43, i64* %eptr145433                                           ; *eptr145433 = %cUD$lsts_43
  store i64 %cont142193, i64* %eptr145434                                            ; *eptr145434 = %cont142193
  %eptr145428 = getelementptr inbounds i64, i64* %cloptr145427, i64 0                ; &cloptr145427[0]
  %f145435 = ptrtoint void(i64,i64,i64)* @lam143178 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145435, i64* %eptr145428                                               ; store fptr
  %arg142937 = ptrtoint i64* %cloptr145427 to i64                                    ; closure cast; i64* -> i64
  %cloptr145436 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145437 = getelementptr inbounds i64, i64* %cloptr145436, i64 0                ; &cloptr145436[0]
  %f145438 = ptrtoint void(i64,i64,i64)* @lam143168 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145438, i64* %eptr145437                                               ; store fptr
  %arg142936 = ptrtoint i64* %cloptr145436 to i64                                    ; closure cast; i64* -> i64
  %cloptr145439 = inttoptr i64 %Kcc$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145439)                                       ; assert function application
  %i0ptr145440 = getelementptr inbounds i64, i64* %cloptr145439, i64 0               ; &cloptr145439[0]
  %f145442 = load i64, i64* %i0ptr145440, align 8                                    ; load; *i0ptr145440
  %fptr145441 = inttoptr i64 %f145442 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145441(i64 %Kcc$_37map1, i64 %arg142937, i64 %arg142936, i64 %DW4$lsts); tail call
  ret void
}


define void @lam143178(i64 %env143179, i64 %_95142199, i64 %wR5$vs) {
  %envptr145443 = inttoptr i64 %env143179 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145444 = getelementptr inbounds i64, i64* %envptr145443, i64 6              ; &envptr145443[6]
  %cont142193 = load i64, i64* %envptr145444, align 8                                ; load; *envptr145444
  %envptr145445 = inttoptr i64 %env143179 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145446 = getelementptr inbounds i64, i64* %envptr145445, i64 5              ; &envptr145445[5]
  %cUD$lsts_43 = load i64, i64* %envptr145446, align 8                               ; load; *envptr145446
  %envptr145447 = inttoptr i64 %env143179 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145448 = getelementptr inbounds i64, i64* %envptr145447, i64 4              ; &envptr145447[4]
  %hlU$f = load i64, i64* %envptr145448, align 8                                     ; load; *envptr145448
  %envptr145449 = inttoptr i64 %env143179 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145450 = getelementptr inbounds i64, i64* %envptr145449, i64 3              ; &envptr145449[3]
  %tz4$_37foldr = load i64, i64* %envptr145450, align 8                              ; load; *envptr145450
  %envptr145451 = inttoptr i64 %env143179 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145452 = getelementptr inbounds i64, i64* %envptr145451, i64 2              ; &envptr145451[2]
  %DVf$_37foldr1 = load i64, i64* %envptr145452, align 8                             ; load; *envptr145452
  %envptr145453 = inttoptr i64 %env143179 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145454 = getelementptr inbounds i64, i64* %envptr145453, i64 1              ; &envptr145453[1]
  %d1w$acc = load i64, i64* %envptr145454, align 8                                   ; load; *envptr145454
  %a141962 = call i64 @prim_cons(i64 %d1w$acc, i64 %cUD$lsts_43)                     ; call prim_cons
  %a141963 = call i64 @prim_cons(i64 %hlU$f, i64 %a141962)                           ; call prim_cons
  %cloptr145455 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145457 = getelementptr inbounds i64, i64* %cloptr145455, i64 1                ; &eptr145457[1]
  %eptr145458 = getelementptr inbounds i64, i64* %cloptr145455, i64 2                ; &eptr145458[2]
  %eptr145459 = getelementptr inbounds i64, i64* %cloptr145455, i64 3                ; &eptr145459[3]
  %eptr145460 = getelementptr inbounds i64, i64* %cloptr145455, i64 4                ; &eptr145460[4]
  store i64 %wR5$vs, i64* %eptr145457                                                ; *eptr145457 = %wR5$vs
  store i64 %DVf$_37foldr1, i64* %eptr145458                                         ; *eptr145458 = %DVf$_37foldr1
  store i64 %hlU$f, i64* %eptr145459                                                 ; *eptr145459 = %hlU$f
  store i64 %cont142193, i64* %eptr145460                                            ; *eptr145460 = %cont142193
  %eptr145456 = getelementptr inbounds i64, i64* %cloptr145455, i64 0                ; &cloptr145455[0]
  %f145461 = ptrtoint void(i64,i64,i64)* @lam143176 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145461, i64* %eptr145456                                               ; store fptr
  %arg142944 = ptrtoint i64* %cloptr145455 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142205 = call i64 @prim_cons(i64 %arg142944, i64 %a141963)               ; call prim_cons
  %cloptr145462 = inttoptr i64 %tz4$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145462)                                       ; assert function application
  %i0ptr145463 = getelementptr inbounds i64, i64* %cloptr145462, i64 0               ; &cloptr145462[0]
  %f145465 = load i64, i64* %i0ptr145463, align 8                                    ; load; *i0ptr145463
  %fptr145464 = inttoptr i64 %f145465 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145464(i64 %tz4$_37foldr, i64 %cps_45lst142205)     ; tail call
  ret void
}


define void @lam143176(i64 %env143177, i64 %_95142200, i64 %a141964) {
  %envptr145466 = inttoptr i64 %env143177 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145467 = getelementptr inbounds i64, i64* %envptr145466, i64 4              ; &envptr145466[4]
  %cont142193 = load i64, i64* %envptr145467, align 8                                ; load; *envptr145467
  %envptr145468 = inttoptr i64 %env143177 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145469 = getelementptr inbounds i64, i64* %envptr145468, i64 3              ; &envptr145468[3]
  %hlU$f = load i64, i64* %envptr145469, align 8                                     ; load; *envptr145469
  %envptr145470 = inttoptr i64 %env143177 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145471 = getelementptr inbounds i64, i64* %envptr145470, i64 2              ; &envptr145470[2]
  %DVf$_37foldr1 = load i64, i64* %envptr145471, align 8                             ; load; *envptr145471
  %envptr145472 = inttoptr i64 %env143177 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145473 = getelementptr inbounds i64, i64* %envptr145472, i64 1              ; &envptr145472[1]
  %wR5$vs = load i64, i64* %envptr145473, align 8                                    ; load; *envptr145473
  %arg142945 = add i64 0, 0                                                          ; quoted ()
  %a141965 = call i64 @prim_cons(i64 %a141964, i64 %arg142945)                       ; call prim_cons
  %cloptr145474 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145476 = getelementptr inbounds i64, i64* %cloptr145474, i64 1                ; &eptr145476[1]
  %eptr145477 = getelementptr inbounds i64, i64* %cloptr145474, i64 2                ; &eptr145477[2]
  store i64 %hlU$f, i64* %eptr145476                                                 ; *eptr145476 = %hlU$f
  store i64 %cont142193, i64* %eptr145477                                            ; *eptr145477 = %cont142193
  %eptr145475 = getelementptr inbounds i64, i64* %cloptr145474, i64 0                ; &cloptr145474[0]
  %f145478 = ptrtoint void(i64,i64,i64)* @lam143173 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145478, i64* %eptr145475                                               ; store fptr
  %arg142950 = ptrtoint i64* %cloptr145474 to i64                                    ; closure cast; i64* -> i64
  %cloptr145479 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145480 = getelementptr inbounds i64, i64* %cloptr145479, i64 0                ; &cloptr145479[0]
  %f145481 = ptrtoint void(i64,i64,i64,i64)* @lam143171 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145481, i64* %eptr145480                                               ; store fptr
  %arg142949 = ptrtoint i64* %cloptr145479 to i64                                    ; closure cast; i64* -> i64
  %cloptr145482 = inttoptr i64 %DVf$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145482)                                       ; assert function application
  %i0ptr145483 = getelementptr inbounds i64, i64* %cloptr145482, i64 0               ; &cloptr145482[0]
  %f145485 = load i64, i64* %i0ptr145483, align 8                                    ; load; *i0ptr145483
  %fptr145484 = inttoptr i64 %f145485 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145484(i64 %DVf$_37foldr1, i64 %arg142950, i64 %arg142949, i64 %a141965, i64 %wR5$vs); tail call
  ret void
}


define void @lam143173(i64 %env143174, i64 %_95142201, i64 %a141966) {
  %envptr145486 = inttoptr i64 %env143174 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145487 = getelementptr inbounds i64, i64* %envptr145486, i64 2              ; &envptr145486[2]
  %cont142193 = load i64, i64* %envptr145487, align 8                                ; load; *envptr145487
  %envptr145488 = inttoptr i64 %env143174 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145489 = getelementptr inbounds i64, i64* %envptr145488, i64 1              ; &envptr145488[1]
  %hlU$f = load i64, i64* %envptr145489, align 8                                     ; load; *envptr145489
  %cps_45lst142202 = call i64 @prim_cons(i64 %cont142193, i64 %a141966)              ; call prim_cons
  %cloptr145490 = inttoptr i64 %hlU$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145490)                                       ; assert function application
  %i0ptr145491 = getelementptr inbounds i64, i64* %cloptr145490, i64 0               ; &cloptr145490[0]
  %f145493 = load i64, i64* %i0ptr145491, align 8                                    ; load; *i0ptr145491
  %fptr145492 = inttoptr i64 %f145493 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145492(i64 %hlU$f, i64 %cps_45lst142202)            ; tail call
  ret void
}


define void @lam143171(i64 %env143172, i64 %cont142203, i64 %L4b$a, i64 %SHD$b) {
  %retprim142204 = call i64 @prim_cons(i64 %L4b$a, i64 %SHD$b)                       ; call prim_cons
  %arg142957 = add i64 0, 0                                                          ; quoted ()
  %cloptr145494 = inttoptr i64 %cont142203 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145494)                                       ; assert function application
  %i0ptr145495 = getelementptr inbounds i64, i64* %cloptr145494, i64 0               ; &cloptr145494[0]
  %f145497 = load i64, i64* %i0ptr145495, align 8                                    ; load; *i0ptr145495
  %fptr145496 = inttoptr i64 %f145497 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145496(i64 %cont142203, i64 %arg142957, i64 %retprim142204); tail call
  ret void
}


define void @lam143168(i64 %env143169, i64 %cont142206, i64 %Pse$x) {
  %retprim142207 = call i64 @prim_car(i64 %Pse$x)                                    ; call prim_car
  %arg142961 = add i64 0, 0                                                          ; quoted ()
  %cloptr145498 = inttoptr i64 %cont142206 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145498)                                       ; assert function application
  %i0ptr145499 = getelementptr inbounds i64, i64* %cloptr145498, i64 0               ; &cloptr145498[0]
  %f145501 = load i64, i64* %i0ptr145499, align 8                                    ; load; *i0ptr145499
  %fptr145500 = inttoptr i64 %f145501 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145500(i64 %cont142206, i64 %arg142961, i64 %retprim142207); tail call
  ret void
}


define void @lam143165(i64 %env143166, i64 %cont142208, i64 %Lgn$x) {
  %retprim142209 = call i64 @prim_cdr(i64 %Lgn$x)                                    ; call prim_cdr
  %arg142965 = add i64 0, 0                                                          ; quoted ()
  %cloptr145502 = inttoptr i64 %cont142208 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145502)                                       ; assert function application
  %i0ptr145503 = getelementptr inbounds i64, i64* %cloptr145502, i64 0               ; &cloptr145502[0]
  %f145505 = load i64, i64* %i0ptr145503, align 8                                    ; load; *i0ptr145503
  %fptr145504 = inttoptr i64 %f145505 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145504(i64 %cont142208, i64 %arg142965, i64 %retprim142209); tail call
  ret void
}


define void @lam143161(i64 %env143162, i64 %cont142210, i64 %ZJs$lst, i64 %HAC$b) {
  %cmp145506 = icmp eq i64 %HAC$b, 15                                                ; false?
  br i1 %cmp145506, label %else145508, label %then145507                             ; if

then145507:
  %arg142968 = add i64 0, 0                                                          ; quoted ()
  %cloptr145509 = inttoptr i64 %cont142210 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145509)                                       ; assert function application
  %i0ptr145510 = getelementptr inbounds i64, i64* %cloptr145509, i64 0               ; &cloptr145509[0]
  %f145512 = load i64, i64* %i0ptr145510, align 8                                    ; load; *i0ptr145510
  %fptr145511 = inttoptr i64 %f145512 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145511(i64 %cont142210, i64 %arg142968, i64 %HAC$b) ; tail call
  ret void

else145508:
  %retprim142211 = call i64 @prim_null_63(i64 %ZJs$lst)                              ; call prim_null_63
  %arg142972 = add i64 0, 0                                                          ; quoted ()
  %cloptr145513 = inttoptr i64 %cont142210 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145513)                                       ; assert function application
  %i0ptr145514 = getelementptr inbounds i64, i64* %cloptr145513, i64 0               ; &cloptr145513[0]
  %f145516 = load i64, i64* %i0ptr145514, align 8                                    ; load; *i0ptr145514
  %fptr145515 = inttoptr i64 %f145516 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145515(i64 %cont142210, i64 %arg142972, i64 %retprim142211); tail call
  ret void
}


define void @lam143154(i64 %env143155, i64 %cont142214, i64 %l5Q$_37foldl1) {
  %arg142975 = add i64 0, 0                                                          ; quoted ()
  %cloptr145517 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145519 = getelementptr inbounds i64, i64* %cloptr145517, i64 1                ; &eptr145519[1]
  store i64 %l5Q$_37foldl1, i64* %eptr145519                                         ; *eptr145519 = %l5Q$_37foldl1
  %eptr145518 = getelementptr inbounds i64, i64* %cloptr145517, i64 0                ; &cloptr145517[0]
  %f145520 = ptrtoint void(i64,i64,i64,i64,i64)* @lam143151 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f145520, i64* %eptr145518                                               ; store fptr
  %arg142974 = ptrtoint i64* %cloptr145517 to i64                                    ; closure cast; i64* -> i64
  %cloptr145521 = inttoptr i64 %cont142214 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145521)                                       ; assert function application
  %i0ptr145522 = getelementptr inbounds i64, i64* %cloptr145521, i64 0               ; &cloptr145521[0]
  %f145524 = load i64, i64* %i0ptr145522, align 8                                    ; load; *i0ptr145522
  %fptr145523 = inttoptr i64 %f145524 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145523(i64 %cont142214, i64 %arg142975, i64 %arg142974); tail call
  ret void
}


define void @lam143151(i64 %env143152, i64 %cont142215, i64 %rmL$f, i64 %Ct5$acc, i64 %oli$lst) {
  %envptr145525 = inttoptr i64 %env143152 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145526 = getelementptr inbounds i64, i64* %envptr145525, i64 1              ; &envptr145525[1]
  %l5Q$_37foldl1 = load i64, i64* %envptr145526, align 8                             ; load; *envptr145526
  %a141953 = call i64 @prim_null_63(i64 %oli$lst)                                    ; call prim_null_63
  %cmp145527 = icmp eq i64 %a141953, 15                                              ; false?
  br i1 %cmp145527, label %else145529, label %then145528                             ; if

then145528:
  %arg142979 = add i64 0, 0                                                          ; quoted ()
  %cloptr145530 = inttoptr i64 %cont142215 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145530)                                       ; assert function application
  %i0ptr145531 = getelementptr inbounds i64, i64* %cloptr145530, i64 0               ; &cloptr145530[0]
  %f145533 = load i64, i64* %i0ptr145531, align 8                                    ; load; *i0ptr145531
  %fptr145532 = inttoptr i64 %f145533 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145532(i64 %cont142215, i64 %arg142979, i64 %Ct5$acc); tail call
  ret void

else145529:
  %a141954 = call i64 @prim_car(i64 %oli$lst)                                        ; call prim_car
  %cloptr145534 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145536 = getelementptr inbounds i64, i64* %cloptr145534, i64 1                ; &eptr145536[1]
  %eptr145537 = getelementptr inbounds i64, i64* %cloptr145534, i64 2                ; &eptr145537[2]
  %eptr145538 = getelementptr inbounds i64, i64* %cloptr145534, i64 3                ; &eptr145538[3]
  %eptr145539 = getelementptr inbounds i64, i64* %cloptr145534, i64 4                ; &eptr145539[4]
  store i64 %cont142215, i64* %eptr145536                                            ; *eptr145536 = %cont142215
  store i64 %l5Q$_37foldl1, i64* %eptr145537                                         ; *eptr145537 = %l5Q$_37foldl1
  store i64 %rmL$f, i64* %eptr145538                                                 ; *eptr145538 = %rmL$f
  store i64 %oli$lst, i64* %eptr145539                                               ; *eptr145539 = %oli$lst
  %eptr145535 = getelementptr inbounds i64, i64* %cloptr145534, i64 0                ; &cloptr145534[0]
  %f145540 = ptrtoint void(i64,i64,i64)* @lam143149 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145540, i64* %eptr145535                                               ; store fptr
  %arg142984 = ptrtoint i64* %cloptr145534 to i64                                    ; closure cast; i64* -> i64
  %cloptr145541 = inttoptr i64 %rmL$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145541)                                       ; assert function application
  %i0ptr145542 = getelementptr inbounds i64, i64* %cloptr145541, i64 0               ; &cloptr145541[0]
  %f145544 = load i64, i64* %i0ptr145542, align 8                                    ; load; *i0ptr145542
  %fptr145543 = inttoptr i64 %f145544 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145543(i64 %rmL$f, i64 %arg142984, i64 %a141954, i64 %Ct5$acc); tail call
  ret void
}


define void @lam143149(i64 %env143150, i64 %_95142216, i64 %a141955) {
  %envptr145545 = inttoptr i64 %env143150 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145546 = getelementptr inbounds i64, i64* %envptr145545, i64 4              ; &envptr145545[4]
  %oli$lst = load i64, i64* %envptr145546, align 8                                   ; load; *envptr145546
  %envptr145547 = inttoptr i64 %env143150 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145548 = getelementptr inbounds i64, i64* %envptr145547, i64 3              ; &envptr145547[3]
  %rmL$f = load i64, i64* %envptr145548, align 8                                     ; load; *envptr145548
  %envptr145549 = inttoptr i64 %env143150 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145550 = getelementptr inbounds i64, i64* %envptr145549, i64 2              ; &envptr145549[2]
  %l5Q$_37foldl1 = load i64, i64* %envptr145550, align 8                             ; load; *envptr145550
  %envptr145551 = inttoptr i64 %env143150 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145552 = getelementptr inbounds i64, i64* %envptr145551, i64 1              ; &envptr145551[1]
  %cont142215 = load i64, i64* %envptr145552, align 8                                ; load; *envptr145552
  %a141956 = call i64 @prim_cdr(i64 %oli$lst)                                        ; call prim_cdr
  %cloptr145553 = inttoptr i64 %l5Q$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145553)                                       ; assert function application
  %i0ptr145554 = getelementptr inbounds i64, i64* %cloptr145553, i64 0               ; &cloptr145553[0]
  %f145556 = load i64, i64* %i0ptr145554, align 8                                    ; load; *i0ptr145554
  %fptr145555 = inttoptr i64 %f145556 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145555(i64 %l5Q$_37foldl1, i64 %cont142215, i64 %rmL$f, i64 %a141955, i64 %a141956); tail call
  ret void
}


define void @lam143146(i64 %env143147, i64 %cont142217, i64 %g3C$_37length) {
  %arg142993 = add i64 0, 0                                                          ; quoted ()
  %cloptr145557 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145559 = getelementptr inbounds i64, i64* %cloptr145557, i64 1                ; &eptr145559[1]
  store i64 %g3C$_37length, i64* %eptr145559                                         ; *eptr145559 = %g3C$_37length
  %eptr145558 = getelementptr inbounds i64, i64* %cloptr145557, i64 0                ; &cloptr145557[0]
  %f145560 = ptrtoint void(i64,i64,i64)* @lam143143 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145560, i64* %eptr145558                                               ; store fptr
  %arg142992 = ptrtoint i64* %cloptr145557 to i64                                    ; closure cast; i64* -> i64
  %cloptr145561 = inttoptr i64 %cont142217 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145561)                                       ; assert function application
  %i0ptr145562 = getelementptr inbounds i64, i64* %cloptr145561, i64 0               ; &cloptr145561[0]
  %f145564 = load i64, i64* %i0ptr145562, align 8                                    ; load; *i0ptr145562
  %fptr145563 = inttoptr i64 %f145564 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145563(i64 %cont142217, i64 %arg142993, i64 %arg142992); tail call
  ret void
}


define void @lam143143(i64 %env143144, i64 %cont142218, i64 %Uuh$lst) {
  %envptr145565 = inttoptr i64 %env143144 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145566 = getelementptr inbounds i64, i64* %envptr145565, i64 1              ; &envptr145565[1]
  %g3C$_37length = load i64, i64* %envptr145566, align 8                             ; load; *envptr145566
  %a141950 = call i64 @prim_null_63(i64 %Uuh$lst)                                    ; call prim_null_63
  %cmp145567 = icmp eq i64 %a141950, 15                                              ; false?
  br i1 %cmp145567, label %else145569, label %then145568                             ; if

then145568:
  %arg142997 = add i64 0, 0                                                          ; quoted ()
  %arg142996 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr145570 = inttoptr i64 %cont142218 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145570)                                       ; assert function application
  %i0ptr145571 = getelementptr inbounds i64, i64* %cloptr145570, i64 0               ; &cloptr145570[0]
  %f145573 = load i64, i64* %i0ptr145571, align 8                                    ; load; *i0ptr145571
  %fptr145572 = inttoptr i64 %f145573 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145572(i64 %cont142218, i64 %arg142997, i64 %arg142996); tail call
  ret void

else145569:
  %a141951 = call i64 @prim_cdr(i64 %Uuh$lst)                                        ; call prim_cdr
  %cloptr145574 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145576 = getelementptr inbounds i64, i64* %cloptr145574, i64 1                ; &eptr145576[1]
  store i64 %cont142218, i64* %eptr145576                                            ; *eptr145576 = %cont142218
  %eptr145575 = getelementptr inbounds i64, i64* %cloptr145574, i64 0                ; &cloptr145574[0]
  %f145577 = ptrtoint void(i64,i64,i64)* @lam143141 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145577, i64* %eptr145575                                               ; store fptr
  %arg143001 = ptrtoint i64* %cloptr145574 to i64                                    ; closure cast; i64* -> i64
  %cloptr145578 = inttoptr i64 %g3C$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145578)                                       ; assert function application
  %i0ptr145579 = getelementptr inbounds i64, i64* %cloptr145578, i64 0               ; &cloptr145578[0]
  %f145581 = load i64, i64* %i0ptr145579, align 8                                    ; load; *i0ptr145579
  %fptr145580 = inttoptr i64 %f145581 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145580(i64 %g3C$_37length, i64 %arg143001, i64 %a141951); tail call
  ret void
}


define void @lam143141(i64 %env143142, i64 %_95142219, i64 %a141952) {
  %envptr145582 = inttoptr i64 %env143142 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145583 = getelementptr inbounds i64, i64* %envptr145582, i64 1              ; &envptr145582[1]
  %cont142218 = load i64, i64* %envptr145583, align 8                                ; load; *envptr145583
  %arg143004 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142220 = call i64 @prim__43(i64 %arg143004, i64 %a141952)                  ; call prim__43
  %arg143006 = add i64 0, 0                                                          ; quoted ()
  %cloptr145584 = inttoptr i64 %cont142218 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145584)                                       ; assert function application
  %i0ptr145585 = getelementptr inbounds i64, i64* %cloptr145584, i64 0               ; &cloptr145584[0]
  %f145587 = load i64, i64* %i0ptr145585, align 8                                    ; load; *i0ptr145585
  %fptr145586 = inttoptr i64 %f145587 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145586(i64 %cont142218, i64 %arg143006, i64 %retprim142220); tail call
  ret void
}


define void @lam143135(i64 %env143136, i64 %cont142221, i64 %EgQ$_37take) {
  %arg143009 = add i64 0, 0                                                          ; quoted ()
  %cloptr145588 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145590 = getelementptr inbounds i64, i64* %cloptr145588, i64 1                ; &eptr145590[1]
  store i64 %EgQ$_37take, i64* %eptr145590                                           ; *eptr145590 = %EgQ$_37take
  %eptr145589 = getelementptr inbounds i64, i64* %cloptr145588, i64 0                ; &cloptr145588[0]
  %f145591 = ptrtoint void(i64,i64,i64,i64)* @lam143132 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145591, i64* %eptr145589                                               ; store fptr
  %arg143008 = ptrtoint i64* %cloptr145588 to i64                                    ; closure cast; i64* -> i64
  %cloptr145592 = inttoptr i64 %cont142221 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145592)                                       ; assert function application
  %i0ptr145593 = getelementptr inbounds i64, i64* %cloptr145592, i64 0               ; &cloptr145592[0]
  %f145595 = load i64, i64* %i0ptr145593, align 8                                    ; load; *i0ptr145593
  %fptr145594 = inttoptr i64 %f145595 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145594(i64 %cont142221, i64 %arg143009, i64 %arg143008); tail call
  ret void
}


define void @lam143132(i64 %env143133, i64 %cont142222, i64 %CHZ$lst, i64 %cEB$n) {
  %envptr145596 = inttoptr i64 %env143133 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145597 = getelementptr inbounds i64, i64* %envptr145596, i64 1              ; &envptr145596[1]
  %EgQ$_37take = load i64, i64* %envptr145597, align 8                               ; load; *envptr145597
  %arg143011 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a141944 = call i64 @prim__61(i64 %cEB$n, i64 %arg143011)                          ; call prim__61
  %cmp145598 = icmp eq i64 %a141944, 15                                              ; false?
  br i1 %cmp145598, label %else145600, label %then145599                             ; if

then145599:
  %arg143014 = add i64 0, 0                                                          ; quoted ()
  %arg143013 = add i64 0, 0                                                          ; quoted ()
  %cloptr145601 = inttoptr i64 %cont142222 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145601)                                       ; assert function application
  %i0ptr145602 = getelementptr inbounds i64, i64* %cloptr145601, i64 0               ; &cloptr145601[0]
  %f145604 = load i64, i64* %i0ptr145602, align 8                                    ; load; *i0ptr145602
  %fptr145603 = inttoptr i64 %f145604 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145603(i64 %cont142222, i64 %arg143014, i64 %arg143013); tail call
  ret void

else145600:
  %a141945 = call i64 @prim_null_63(i64 %CHZ$lst)                                    ; call prim_null_63
  %cmp145605 = icmp eq i64 %a141945, 15                                              ; false?
  br i1 %cmp145605, label %else145607, label %then145606                             ; if

then145606:
  %arg143018 = add i64 0, 0                                                          ; quoted ()
  %arg143017 = add i64 0, 0                                                          ; quoted ()
  %cloptr145608 = inttoptr i64 %cont142222 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145608)                                       ; assert function application
  %i0ptr145609 = getelementptr inbounds i64, i64* %cloptr145608, i64 0               ; &cloptr145608[0]
  %f145611 = load i64, i64* %i0ptr145609, align 8                                    ; load; *i0ptr145609
  %fptr145610 = inttoptr i64 %f145611 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145610(i64 %cont142222, i64 %arg143018, i64 %arg143017); tail call
  ret void

else145607:
  %a141946 = call i64 @prim_car(i64 %CHZ$lst)                                        ; call prim_car
  %a141947 = call i64 @prim_cdr(i64 %CHZ$lst)                                        ; call prim_cdr
  %arg143022 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a141948 = call i64 @prim__45(i64 %cEB$n, i64 %arg143022)                          ; call prim__45
  %cloptr145612 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145614 = getelementptr inbounds i64, i64* %cloptr145612, i64 1                ; &eptr145614[1]
  %eptr145615 = getelementptr inbounds i64, i64* %cloptr145612, i64 2                ; &eptr145615[2]
  store i64 %a141946, i64* %eptr145614                                               ; *eptr145614 = %a141946
  store i64 %cont142222, i64* %eptr145615                                            ; *eptr145615 = %cont142222
  %eptr145613 = getelementptr inbounds i64, i64* %cloptr145612, i64 0                ; &cloptr145612[0]
  %f145616 = ptrtoint void(i64,i64,i64)* @lam143128 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145616, i64* %eptr145613                                               ; store fptr
  %arg143026 = ptrtoint i64* %cloptr145612 to i64                                    ; closure cast; i64* -> i64
  %cloptr145617 = inttoptr i64 %EgQ$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145617)                                       ; assert function application
  %i0ptr145618 = getelementptr inbounds i64, i64* %cloptr145617, i64 0               ; &cloptr145617[0]
  %f145620 = load i64, i64* %i0ptr145618, align 8                                    ; load; *i0ptr145618
  %fptr145619 = inttoptr i64 %f145620 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145619(i64 %EgQ$_37take, i64 %arg143026, i64 %a141947, i64 %a141948); tail call
  ret void
}


define void @lam143128(i64 %env143129, i64 %_95142223, i64 %a141949) {
  %envptr145621 = inttoptr i64 %env143129 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145622 = getelementptr inbounds i64, i64* %envptr145621, i64 2              ; &envptr145621[2]
  %cont142222 = load i64, i64* %envptr145622, align 8                                ; load; *envptr145622
  %envptr145623 = inttoptr i64 %env143129 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145624 = getelementptr inbounds i64, i64* %envptr145623, i64 1              ; &envptr145623[1]
  %a141946 = load i64, i64* %envptr145624, align 8                                   ; load; *envptr145624
  %retprim142224 = call i64 @prim_cons(i64 %a141946, i64 %a141949)                   ; call prim_cons
  %arg143031 = add i64 0, 0                                                          ; quoted ()
  %cloptr145625 = inttoptr i64 %cont142222 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145625)                                       ; assert function application
  %i0ptr145626 = getelementptr inbounds i64, i64* %cloptr145625, i64 0               ; &cloptr145625[0]
  %f145628 = load i64, i64* %i0ptr145626, align 8                                    ; load; *i0ptr145626
  %fptr145627 = inttoptr i64 %f145628 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145627(i64 %cont142222, i64 %arg143031, i64 %retprim142224); tail call
  ret void
}


define void @lam143121(i64 %env143122, i64 %cont142225, i64 %j82$_37map) {
  %arg143034 = add i64 0, 0                                                          ; quoted ()
  %cloptr145629 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145631 = getelementptr inbounds i64, i64* %cloptr145629, i64 1                ; &eptr145631[1]
  store i64 %j82$_37map, i64* %eptr145631                                            ; *eptr145631 = %j82$_37map
  %eptr145630 = getelementptr inbounds i64, i64* %cloptr145629, i64 0                ; &cloptr145629[0]
  %f145632 = ptrtoint void(i64,i64,i64,i64)* @lam143118 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145632, i64* %eptr145630                                               ; store fptr
  %arg143033 = ptrtoint i64* %cloptr145629 to i64                                    ; closure cast; i64* -> i64
  %cloptr145633 = inttoptr i64 %cont142225 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145633)                                       ; assert function application
  %i0ptr145634 = getelementptr inbounds i64, i64* %cloptr145633, i64 0               ; &cloptr145633[0]
  %f145636 = load i64, i64* %i0ptr145634, align 8                                    ; load; *i0ptr145634
  %fptr145635 = inttoptr i64 %f145636 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145635(i64 %cont142225, i64 %arg143034, i64 %arg143033); tail call
  ret void
}


define void @lam143118(i64 %env143119, i64 %cont142226, i64 %im0$f, i64 %zAy$lst) {
  %envptr145637 = inttoptr i64 %env143119 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145638 = getelementptr inbounds i64, i64* %envptr145637, i64 1              ; &envptr145637[1]
  %j82$_37map = load i64, i64* %envptr145638, align 8                                ; load; *envptr145638
  %a141939 = call i64 @prim_null_63(i64 %zAy$lst)                                    ; call prim_null_63
  %cmp145639 = icmp eq i64 %a141939, 15                                              ; false?
  br i1 %cmp145639, label %else145641, label %then145640                             ; if

then145640:
  %arg143038 = add i64 0, 0                                                          ; quoted ()
  %arg143037 = add i64 0, 0                                                          ; quoted ()
  %cloptr145642 = inttoptr i64 %cont142226 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145642)                                       ; assert function application
  %i0ptr145643 = getelementptr inbounds i64, i64* %cloptr145642, i64 0               ; &cloptr145642[0]
  %f145645 = load i64, i64* %i0ptr145643, align 8                                    ; load; *i0ptr145643
  %fptr145644 = inttoptr i64 %f145645 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145644(i64 %cont142226, i64 %arg143038, i64 %arg143037); tail call
  ret void

else145641:
  %a141940 = call i64 @prim_car(i64 %zAy$lst)                                        ; call prim_car
  %cloptr145646 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145648 = getelementptr inbounds i64, i64* %cloptr145646, i64 1                ; &eptr145648[1]
  %eptr145649 = getelementptr inbounds i64, i64* %cloptr145646, i64 2                ; &eptr145649[2]
  %eptr145650 = getelementptr inbounds i64, i64* %cloptr145646, i64 3                ; &eptr145650[3]
  %eptr145651 = getelementptr inbounds i64, i64* %cloptr145646, i64 4                ; &eptr145651[4]
  store i64 %j82$_37map, i64* %eptr145648                                            ; *eptr145648 = %j82$_37map
  store i64 %im0$f, i64* %eptr145649                                                 ; *eptr145649 = %im0$f
  store i64 %zAy$lst, i64* %eptr145650                                               ; *eptr145650 = %zAy$lst
  store i64 %cont142226, i64* %eptr145651                                            ; *eptr145651 = %cont142226
  %eptr145647 = getelementptr inbounds i64, i64* %cloptr145646, i64 0                ; &cloptr145646[0]
  %f145652 = ptrtoint void(i64,i64,i64)* @lam143116 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145652, i64* %eptr145647                                               ; store fptr
  %arg143042 = ptrtoint i64* %cloptr145646 to i64                                    ; closure cast; i64* -> i64
  %cloptr145653 = inttoptr i64 %im0$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145653)                                       ; assert function application
  %i0ptr145654 = getelementptr inbounds i64, i64* %cloptr145653, i64 0               ; &cloptr145653[0]
  %f145656 = load i64, i64* %i0ptr145654, align 8                                    ; load; *i0ptr145654
  %fptr145655 = inttoptr i64 %f145656 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145655(i64 %im0$f, i64 %arg143042, i64 %a141940)    ; tail call
  ret void
}


define void @lam143116(i64 %env143117, i64 %_95142227, i64 %a141941) {
  %envptr145657 = inttoptr i64 %env143117 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145658 = getelementptr inbounds i64, i64* %envptr145657, i64 4              ; &envptr145657[4]
  %cont142226 = load i64, i64* %envptr145658, align 8                                ; load; *envptr145658
  %envptr145659 = inttoptr i64 %env143117 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145660 = getelementptr inbounds i64, i64* %envptr145659, i64 3              ; &envptr145659[3]
  %zAy$lst = load i64, i64* %envptr145660, align 8                                   ; load; *envptr145660
  %envptr145661 = inttoptr i64 %env143117 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145662 = getelementptr inbounds i64, i64* %envptr145661, i64 2              ; &envptr145661[2]
  %im0$f = load i64, i64* %envptr145662, align 8                                     ; load; *envptr145662
  %envptr145663 = inttoptr i64 %env143117 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145664 = getelementptr inbounds i64, i64* %envptr145663, i64 1              ; &envptr145663[1]
  %j82$_37map = load i64, i64* %envptr145664, align 8                                ; load; *envptr145664
  %a141942 = call i64 @prim_cdr(i64 %zAy$lst)                                        ; call prim_cdr
  %cloptr145665 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145667 = getelementptr inbounds i64, i64* %cloptr145665, i64 1                ; &eptr145667[1]
  %eptr145668 = getelementptr inbounds i64, i64* %cloptr145665, i64 2                ; &eptr145668[2]
  store i64 %a141941, i64* %eptr145667                                               ; *eptr145667 = %a141941
  store i64 %cont142226, i64* %eptr145668                                            ; *eptr145668 = %cont142226
  %eptr145666 = getelementptr inbounds i64, i64* %cloptr145665, i64 0                ; &cloptr145665[0]
  %f145669 = ptrtoint void(i64,i64,i64)* @lam143114 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145669, i64* %eptr145666                                               ; store fptr
  %arg143047 = ptrtoint i64* %cloptr145665 to i64                                    ; closure cast; i64* -> i64
  %cloptr145670 = inttoptr i64 %j82$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145670)                                       ; assert function application
  %i0ptr145671 = getelementptr inbounds i64, i64* %cloptr145670, i64 0               ; &cloptr145670[0]
  %f145673 = load i64, i64* %i0ptr145671, align 8                                    ; load; *i0ptr145671
  %fptr145672 = inttoptr i64 %f145673 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145672(i64 %j82$_37map, i64 %arg143047, i64 %im0$f, i64 %a141942); tail call
  ret void
}


define void @lam143114(i64 %env143115, i64 %_95142228, i64 %a141943) {
  %envptr145674 = inttoptr i64 %env143115 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145675 = getelementptr inbounds i64, i64* %envptr145674, i64 2              ; &envptr145674[2]
  %cont142226 = load i64, i64* %envptr145675, align 8                                ; load; *envptr145675
  %envptr145676 = inttoptr i64 %env143115 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145677 = getelementptr inbounds i64, i64* %envptr145676, i64 1              ; &envptr145676[1]
  %a141941 = load i64, i64* %envptr145677, align 8                                   ; load; *envptr145677
  %retprim142229 = call i64 @prim_cons(i64 %a141941, i64 %a141943)                   ; call prim_cons
  %arg143052 = add i64 0, 0                                                          ; quoted ()
  %cloptr145678 = inttoptr i64 %cont142226 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145678)                                       ; assert function application
  %i0ptr145679 = getelementptr inbounds i64, i64* %cloptr145678, i64 0               ; &cloptr145678[0]
  %f145681 = load i64, i64* %i0ptr145679, align 8                                    ; load; *i0ptr145679
  %fptr145680 = inttoptr i64 %f145681 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145680(i64 %cont142226, i64 %arg143052, i64 %retprim142229); tail call
  ret void
}


define void @lam143109(i64 %env143110, i64 %cont142230, i64 %C8u$_37foldr1) {
  %arg143055 = add i64 0, 0                                                          ; quoted ()
  %cloptr145682 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145684 = getelementptr inbounds i64, i64* %cloptr145682, i64 1                ; &eptr145684[1]
  store i64 %C8u$_37foldr1, i64* %eptr145684                                         ; *eptr145684 = %C8u$_37foldr1
  %eptr145683 = getelementptr inbounds i64, i64* %cloptr145682, i64 0                ; &cloptr145682[0]
  %f145685 = ptrtoint void(i64,i64,i64,i64,i64)* @lam143106 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f145685, i64* %eptr145683                                               ; store fptr
  %arg143054 = ptrtoint i64* %cloptr145682 to i64                                    ; closure cast; i64* -> i64
  %cloptr145686 = inttoptr i64 %cont142230 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145686)                                       ; assert function application
  %i0ptr145687 = getelementptr inbounds i64, i64* %cloptr145686, i64 0               ; &cloptr145686[0]
  %f145689 = load i64, i64* %i0ptr145687, align 8                                    ; load; *i0ptr145687
  %fptr145688 = inttoptr i64 %f145689 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145688(i64 %cont142230, i64 %arg143055, i64 %arg143054); tail call
  ret void
}


define void @lam143106(i64 %env143107, i64 %cont142231, i64 %OJO$f, i64 %M1Z$acc, i64 %orZ$lst) {
  %envptr145690 = inttoptr i64 %env143107 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145691 = getelementptr inbounds i64, i64* %envptr145690, i64 1              ; &envptr145690[1]
  %C8u$_37foldr1 = load i64, i64* %envptr145691, align 8                             ; load; *envptr145691
  %a141935 = call i64 @prim_null_63(i64 %orZ$lst)                                    ; call prim_null_63
  %cmp145692 = icmp eq i64 %a141935, 15                                              ; false?
  br i1 %cmp145692, label %else145694, label %then145693                             ; if

then145693:
  %arg143059 = add i64 0, 0                                                          ; quoted ()
  %cloptr145695 = inttoptr i64 %cont142231 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145695)                                       ; assert function application
  %i0ptr145696 = getelementptr inbounds i64, i64* %cloptr145695, i64 0               ; &cloptr145695[0]
  %f145698 = load i64, i64* %i0ptr145696, align 8                                    ; load; *i0ptr145696
  %fptr145697 = inttoptr i64 %f145698 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145697(i64 %cont142231, i64 %arg143059, i64 %M1Z$acc); tail call
  ret void

else145694:
  %a141936 = call i64 @prim_car(i64 %orZ$lst)                                        ; call prim_car
  %a141937 = call i64 @prim_cdr(i64 %orZ$lst)                                        ; call prim_cdr
  %cloptr145699 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145701 = getelementptr inbounds i64, i64* %cloptr145699, i64 1                ; &eptr145701[1]
  %eptr145702 = getelementptr inbounds i64, i64* %cloptr145699, i64 2                ; &eptr145702[2]
  %eptr145703 = getelementptr inbounds i64, i64* %cloptr145699, i64 3                ; &eptr145703[3]
  store i64 %cont142231, i64* %eptr145701                                            ; *eptr145701 = %cont142231
  store i64 %a141936, i64* %eptr145702                                               ; *eptr145702 = %a141936
  store i64 %OJO$f, i64* %eptr145703                                                 ; *eptr145703 = %OJO$f
  %eptr145700 = getelementptr inbounds i64, i64* %cloptr145699, i64 0                ; &cloptr145699[0]
  %f145704 = ptrtoint void(i64,i64,i64)* @lam143104 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145704, i64* %eptr145700                                               ; store fptr
  %arg143066 = ptrtoint i64* %cloptr145699 to i64                                    ; closure cast; i64* -> i64
  %cloptr145705 = inttoptr i64 %C8u$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145705)                                       ; assert function application
  %i0ptr145706 = getelementptr inbounds i64, i64* %cloptr145705, i64 0               ; &cloptr145705[0]
  %f145708 = load i64, i64* %i0ptr145706, align 8                                    ; load; *i0ptr145706
  %fptr145707 = inttoptr i64 %f145708 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145707(i64 %C8u$_37foldr1, i64 %arg143066, i64 %OJO$f, i64 %M1Z$acc, i64 %a141937); tail call
  ret void
}


define void @lam143104(i64 %env143105, i64 %_95142232, i64 %a141938) {
  %envptr145709 = inttoptr i64 %env143105 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145710 = getelementptr inbounds i64, i64* %envptr145709, i64 3              ; &envptr145709[3]
  %OJO$f = load i64, i64* %envptr145710, align 8                                     ; load; *envptr145710
  %envptr145711 = inttoptr i64 %env143105 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145712 = getelementptr inbounds i64, i64* %envptr145711, i64 2              ; &envptr145711[2]
  %a141936 = load i64, i64* %envptr145712, align 8                                   ; load; *envptr145712
  %envptr145713 = inttoptr i64 %env143105 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145714 = getelementptr inbounds i64, i64* %envptr145713, i64 1              ; &envptr145713[1]
  %cont142231 = load i64, i64* %envptr145714, align 8                                ; load; *envptr145714
  %cloptr145715 = inttoptr i64 %OJO$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145715)                                       ; assert function application
  %i0ptr145716 = getelementptr inbounds i64, i64* %cloptr145715, i64 0               ; &cloptr145715[0]
  %f145718 = load i64, i64* %i0ptr145716, align 8                                    ; load; *i0ptr145716
  %fptr145717 = inttoptr i64 %f145718 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145717(i64 %OJO$f, i64 %cont142231, i64 %a141936, i64 %a141938); tail call
  ret void
}


define void @lam143101(i64 %env143102, i64 %cont142234, i64 %hVO$y) {
  %arg143073 = add i64 0, 0                                                          ; quoted ()
  %cloptr145719 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145721 = getelementptr inbounds i64, i64* %cloptr145719, i64 1                ; &eptr145721[1]
  store i64 %hVO$y, i64* %eptr145721                                                 ; *eptr145721 = %hVO$y
  %eptr145720 = getelementptr inbounds i64, i64* %cloptr145719, i64 0                ; &cloptr145719[0]
  %f145722 = ptrtoint void(i64,i64,i64)* @lam143098 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145722, i64* %eptr145720                                               ; store fptr
  %arg143072 = ptrtoint i64* %cloptr145719 to i64                                    ; closure cast; i64* -> i64
  %cloptr145723 = inttoptr i64 %cont142234 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145723)                                       ; assert function application
  %i0ptr145724 = getelementptr inbounds i64, i64* %cloptr145723, i64 0               ; &cloptr145723[0]
  %f145726 = load i64, i64* %i0ptr145724, align 8                                    ; load; *i0ptr145724
  %fptr145725 = inttoptr i64 %f145726 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145725(i64 %cont142234, i64 %arg143073, i64 %arg143072); tail call
  ret void
}


define void @lam143098(i64 %env143099, i64 %cont142235, i64 %Kil$f) {
  %envptr145727 = inttoptr i64 %env143099 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145728 = getelementptr inbounds i64, i64* %envptr145727, i64 1              ; &envptr145727[1]
  %hVO$y = load i64, i64* %envptr145728, align 8                                     ; load; *envptr145728
  %cloptr145729 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145731 = getelementptr inbounds i64, i64* %cloptr145729, i64 1                ; &eptr145731[1]
  %eptr145732 = getelementptr inbounds i64, i64* %cloptr145729, i64 2                ; &eptr145732[2]
  store i64 %Kil$f, i64* %eptr145731                                                 ; *eptr145731 = %Kil$f
  store i64 %hVO$y, i64* %eptr145732                                                 ; *eptr145732 = %hVO$y
  %eptr145730 = getelementptr inbounds i64, i64* %cloptr145729, i64 0                ; &cloptr145729[0]
  %f145733 = ptrtoint void(i64,i64)* @lam143096 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145733, i64* %eptr145730                                               ; store fptr
  %arg143075 = ptrtoint i64* %cloptr145729 to i64                                    ; closure cast; i64* -> i64
  %cloptr145734 = inttoptr i64 %Kil$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145734)                                       ; assert function application
  %i0ptr145735 = getelementptr inbounds i64, i64* %cloptr145734, i64 0               ; &cloptr145734[0]
  %f145737 = load i64, i64* %i0ptr145735, align 8                                    ; load; *i0ptr145735
  %fptr145736 = inttoptr i64 %f145737 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145736(i64 %Kil$f, i64 %cont142235, i64 %arg143075) ; tail call
  ret void
}


define void @lam143096(i64 %env143097, i64 %ply$args142237) {
  %envptr145738 = inttoptr i64 %env143097 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145739 = getelementptr inbounds i64, i64* %envptr145738, i64 2              ; &envptr145738[2]
  %hVO$y = load i64, i64* %envptr145739, align 8                                     ; load; *envptr145739
  %envptr145740 = inttoptr i64 %env143097 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145741 = getelementptr inbounds i64, i64* %envptr145740, i64 1              ; &envptr145740[1]
  %Kil$f = load i64, i64* %envptr145741, align 8                                     ; load; *envptr145741
  %cont142236 = call i64 @prim_car(i64 %ply$args142237)                              ; call prim_car
  %ply$args = call i64 @prim_cdr(i64 %ply$args142237)                                ; call prim_cdr
  %cloptr145742 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145744 = getelementptr inbounds i64, i64* %cloptr145742, i64 1                ; &eptr145744[1]
  %eptr145745 = getelementptr inbounds i64, i64* %cloptr145742, i64 2                ; &eptr145745[2]
  %eptr145746 = getelementptr inbounds i64, i64* %cloptr145742, i64 3                ; &eptr145746[3]
  store i64 %cont142236, i64* %eptr145744                                            ; *eptr145744 = %cont142236
  store i64 %ply$args, i64* %eptr145745                                              ; *eptr145745 = %ply$args
  store i64 %Kil$f, i64* %eptr145746                                                 ; *eptr145746 = %Kil$f
  %eptr145743 = getelementptr inbounds i64, i64* %cloptr145742, i64 0                ; &cloptr145742[0]
  %f145747 = ptrtoint void(i64,i64,i64)* @lam143094 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145747, i64* %eptr145743                                               ; store fptr
  %arg143081 = ptrtoint i64* %cloptr145742 to i64                                    ; closure cast; i64* -> i64
  %cloptr145748 = inttoptr i64 %hVO$y to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145748)                                       ; assert function application
  %i0ptr145749 = getelementptr inbounds i64, i64* %cloptr145748, i64 0               ; &cloptr145748[0]
  %f145751 = load i64, i64* %i0ptr145749, align 8                                    ; load; *i0ptr145749
  %fptr145750 = inttoptr i64 %f145751 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145750(i64 %hVO$y, i64 %arg143081, i64 %hVO$y)      ; tail call
  ret void
}


define void @lam143094(i64 %env143095, i64 %_95142238, i64 %a141933) {
  %envptr145752 = inttoptr i64 %env143095 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145753 = getelementptr inbounds i64, i64* %envptr145752, i64 3              ; &envptr145752[3]
  %Kil$f = load i64, i64* %envptr145753, align 8                                     ; load; *envptr145753
  %envptr145754 = inttoptr i64 %env143095 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145755 = getelementptr inbounds i64, i64* %envptr145754, i64 2              ; &envptr145754[2]
  %ply$args = load i64, i64* %envptr145755, align 8                                  ; load; *envptr145755
  %envptr145756 = inttoptr i64 %env143095 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145757 = getelementptr inbounds i64, i64* %envptr145756, i64 1              ; &envptr145756[1]
  %cont142236 = load i64, i64* %envptr145757, align 8                                ; load; *envptr145757
  %cloptr145758 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145760 = getelementptr inbounds i64, i64* %cloptr145758, i64 1                ; &eptr145760[1]
  %eptr145761 = getelementptr inbounds i64, i64* %cloptr145758, i64 2                ; &eptr145761[2]
  store i64 %cont142236, i64* %eptr145760                                            ; *eptr145760 = %cont142236
  store i64 %ply$args, i64* %eptr145761                                              ; *eptr145761 = %ply$args
  %eptr145759 = getelementptr inbounds i64, i64* %cloptr145758, i64 0                ; &cloptr145758[0]
  %f145762 = ptrtoint void(i64,i64,i64)* @lam143092 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145762, i64* %eptr145759                                               ; store fptr
  %arg143084 = ptrtoint i64* %cloptr145758 to i64                                    ; closure cast; i64* -> i64
  %cloptr145763 = inttoptr i64 %a141933 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145763)                                       ; assert function application
  %i0ptr145764 = getelementptr inbounds i64, i64* %cloptr145763, i64 0               ; &cloptr145763[0]
  %f145766 = load i64, i64* %i0ptr145764, align 8                                    ; load; *i0ptr145764
  %fptr145765 = inttoptr i64 %f145766 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145765(i64 %a141933, i64 %arg143084, i64 %Kil$f)    ; tail call
  ret void
}


define void @lam143092(i64 %env143093, i64 %_95142239, i64 %a141934) {
  %envptr145767 = inttoptr i64 %env143093 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145768 = getelementptr inbounds i64, i64* %envptr145767, i64 2              ; &envptr145767[2]
  %ply$args = load i64, i64* %envptr145768, align 8                                  ; load; *envptr145768
  %envptr145769 = inttoptr i64 %env143093 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145770 = getelementptr inbounds i64, i64* %envptr145769, i64 1              ; &envptr145769[1]
  %cont142236 = load i64, i64* %envptr145770, align 8                                ; load; *envptr145770
  %cps_45lst142240 = call i64 @prim_cons(i64 %cont142236, i64 %ply$args)             ; call prim_cons
  %cloptr145771 = inttoptr i64 %a141934 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145771)                                       ; assert function application
  %i0ptr145772 = getelementptr inbounds i64, i64* %cloptr145771, i64 0               ; &cloptr145771[0]
  %f145774 = load i64, i64* %i0ptr145772, align 8                                    ; load; *i0ptr145772
  %fptr145773 = inttoptr i64 %f145774 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145773(i64 %a141934, i64 %cps_45lst142240)          ; tail call
  ret void
}





@sym144358 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
