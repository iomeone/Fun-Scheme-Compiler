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
  %cloptr143629 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143630 = getelementptr inbounds i64, i64* %cloptr143629, i64 0                ; &cloptr143629[0]
  %f143631 = ptrtoint void(i64,i64,i64)* @lam143627 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143631, i64* %eptr143630                                               ; store fptr
  %arg142319 = ptrtoint i64* %cloptr143629 to i64                                    ; closure cast; i64* -> i64
  %cloptr143632 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143633 = getelementptr inbounds i64, i64* %cloptr143632, i64 0                ; &cloptr143632[0]
  %f143634 = ptrtoint void(i64,i64,i64)* @lam143625 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143634, i64* %eptr143633                                               ; store fptr
  %arg142318 = ptrtoint i64* %cloptr143632 to i64                                    ; closure cast; i64* -> i64
  %cloptr143635 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143636 = getelementptr inbounds i64, i64* %cloptr143635, i64 0                ; &cloptr143635[0]
  %f143637 = ptrtoint void(i64,i64,i64)* @lam143177 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143637, i64* %eptr143636                                               ; store fptr
  %arg142317 = ptrtoint i64* %cloptr143635 to i64                                    ; closure cast; i64* -> i64
  %cloptr143638 = inttoptr i64 %arg142319 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143638)                                       ; assert function application
  %i0ptr143639 = getelementptr inbounds i64, i64* %cloptr143638, i64 0               ; &cloptr143638[0]
  %f143641 = load i64, i64* %i0ptr143639, align 8                                    ; load; *i0ptr143639
  %fptr143640 = inttoptr i64 %f143641 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143640(i64 %arg142319, i64 %arg142318, i64 %arg142317); tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam143627(i64 %env143628, i64 %cont142309, i64 %rWj$yu) {
  %cloptr143642 = inttoptr i64 %rWj$yu to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143642)                                       ; assert function application
  %i0ptr143643 = getelementptr inbounds i64, i64* %cloptr143642, i64 0               ; &cloptr143642[0]
  %f143645 = load i64, i64* %i0ptr143643, align 8                                    ; load; *i0ptr143643
  %fptr143644 = inttoptr i64 %f143645 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143644(i64 %rWj$yu, i64 %cont142309, i64 %rWj$yu)   ; tail call
  ret void
}


define void @lam143625(i64 %env143626, i64 %_95142130, i64 %E2i$Ycmb) {
  %cloptr143646 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143648 = getelementptr inbounds i64, i64* %cloptr143646, i64 1                ; &eptr143648[1]
  store i64 %E2i$Ycmb, i64* %eptr143648                                              ; *eptr143648 = %E2i$Ycmb
  %eptr143647 = getelementptr inbounds i64, i64* %cloptr143646, i64 0                ; &cloptr143646[0]
  %f143649 = ptrtoint void(i64,i64,i64)* @lam143623 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143649, i64* %eptr143647                                               ; store fptr
  %arg142324 = ptrtoint i64* %cloptr143646 to i64                                    ; closure cast; i64* -> i64
  %cloptr143650 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143651 = getelementptr inbounds i64, i64* %cloptr143650, i64 0                ; &cloptr143650[0]
  %f143652 = ptrtoint void(i64,i64,i64)* @lam143185 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143652, i64* %eptr143651                                               ; store fptr
  %arg142323 = ptrtoint i64* %cloptr143650 to i64                                    ; closure cast; i64* -> i64
  %cloptr143653 = inttoptr i64 %E2i$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143653)                                       ; assert function application
  %i0ptr143654 = getelementptr inbounds i64, i64* %cloptr143653, i64 0               ; &cloptr143653[0]
  %f143656 = load i64, i64* %i0ptr143654, align 8                                    ; load; *i0ptr143654
  %fptr143655 = inttoptr i64 %f143656 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143655(i64 %E2i$Ycmb, i64 %arg142324, i64 %arg142323); tail call
  ret void
}


define void @lam143623(i64 %env143624, i64 %_95142131, i64 %RWL$_37foldr1) {
  %envptr143657 = inttoptr i64 %env143624 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143658 = getelementptr inbounds i64, i64* %envptr143657, i64 1              ; &envptr143657[1]
  %E2i$Ycmb = load i64, i64* %envptr143658, align 8                                  ; load; *envptr143658
  %cloptr143659 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143661 = getelementptr inbounds i64, i64* %cloptr143659, i64 1                ; &eptr143661[1]
  %eptr143662 = getelementptr inbounds i64, i64* %cloptr143659, i64 2                ; &eptr143662[2]
  store i64 %E2i$Ycmb, i64* %eptr143661                                              ; *eptr143661 = %E2i$Ycmb
  store i64 %RWL$_37foldr1, i64* %eptr143662                                         ; *eptr143662 = %RWL$_37foldr1
  %eptr143660 = getelementptr inbounds i64, i64* %cloptr143659, i64 0                ; &cloptr143659[0]
  %f143663 = ptrtoint void(i64,i64,i64)* @lam143621 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143663, i64* %eptr143660                                               ; store fptr
  %arg142327 = ptrtoint i64* %cloptr143659 to i64                                    ; closure cast; i64* -> i64
  %cloptr143664 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143665 = getelementptr inbounds i64, i64* %cloptr143664, i64 0                ; &cloptr143664[0]
  %f143666 = ptrtoint void(i64,i64,i64)* @lam143197 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143666, i64* %eptr143665                                               ; store fptr
  %arg142326 = ptrtoint i64* %cloptr143664 to i64                                    ; closure cast; i64* -> i64
  %cloptr143667 = inttoptr i64 %E2i$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143667)                                       ; assert function application
  %i0ptr143668 = getelementptr inbounds i64, i64* %cloptr143667, i64 0               ; &cloptr143667[0]
  %f143670 = load i64, i64* %i0ptr143668, align 8                                    ; load; *i0ptr143668
  %fptr143669 = inttoptr i64 %f143670 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143669(i64 %E2i$Ycmb, i64 %arg142327, i64 %arg142326); tail call
  ret void
}


define void @lam143621(i64 %env143622, i64 %_95142132, i64 %GBF$_37map1) {
  %envptr143671 = inttoptr i64 %env143622 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143672 = getelementptr inbounds i64, i64* %envptr143671, i64 2              ; &envptr143671[2]
  %RWL$_37foldr1 = load i64, i64* %envptr143672, align 8                             ; load; *envptr143672
  %envptr143673 = inttoptr i64 %env143622 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143674 = getelementptr inbounds i64, i64* %envptr143673, i64 1              ; &envptr143673[1]
  %E2i$Ycmb = load i64, i64* %envptr143674, align 8                                  ; load; *envptr143674
  %cloptr143675 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143677 = getelementptr inbounds i64, i64* %cloptr143675, i64 1                ; &eptr143677[1]
  %eptr143678 = getelementptr inbounds i64, i64* %cloptr143675, i64 2                ; &eptr143678[2]
  %eptr143679 = getelementptr inbounds i64, i64* %cloptr143675, i64 3                ; &eptr143679[3]
  store i64 %E2i$Ycmb, i64* %eptr143677                                              ; *eptr143677 = %E2i$Ycmb
  store i64 %RWL$_37foldr1, i64* %eptr143678                                         ; *eptr143678 = %RWL$_37foldr1
  store i64 %GBF$_37map1, i64* %eptr143679                                           ; *eptr143679 = %GBF$_37map1
  %eptr143676 = getelementptr inbounds i64, i64* %cloptr143675, i64 0                ; &cloptr143675[0]
  %f143680 = ptrtoint void(i64,i64,i64)* @lam143619 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143680, i64* %eptr143676                                               ; store fptr
  %arg142330 = ptrtoint i64* %cloptr143675 to i64                                    ; closure cast; i64* -> i64
  %cloptr143681 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143682 = getelementptr inbounds i64, i64* %cloptr143681, i64 0                ; &cloptr143681[0]
  %f143683 = ptrtoint void(i64,i64,i64)* @lam143211 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143683, i64* %eptr143682                                               ; store fptr
  %arg142329 = ptrtoint i64* %cloptr143681 to i64                                    ; closure cast; i64* -> i64
  %cloptr143684 = inttoptr i64 %E2i$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143684)                                       ; assert function application
  %i0ptr143685 = getelementptr inbounds i64, i64* %cloptr143684, i64 0               ; &cloptr143684[0]
  %f143687 = load i64, i64* %i0ptr143685, align 8                                    ; load; *i0ptr143685
  %fptr143686 = inttoptr i64 %f143687 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143686(i64 %E2i$Ycmb, i64 %arg142330, i64 %arg142329); tail call
  ret void
}


define void @lam143619(i64 %env143620, i64 %_95142133, i64 %QSH$_37take) {
  %envptr143688 = inttoptr i64 %env143620 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143689 = getelementptr inbounds i64, i64* %envptr143688, i64 3              ; &envptr143688[3]
  %GBF$_37map1 = load i64, i64* %envptr143689, align 8                               ; load; *envptr143689
  %envptr143690 = inttoptr i64 %env143620 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143691 = getelementptr inbounds i64, i64* %envptr143690, i64 2              ; &envptr143690[2]
  %RWL$_37foldr1 = load i64, i64* %envptr143691, align 8                             ; load; *envptr143691
  %envptr143692 = inttoptr i64 %env143620 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143693 = getelementptr inbounds i64, i64* %envptr143692, i64 1              ; &envptr143692[1]
  %E2i$Ycmb = load i64, i64* %envptr143693, align 8                                  ; load; *envptr143693
  %cloptr143694 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143696 = getelementptr inbounds i64, i64* %cloptr143694, i64 1                ; &eptr143696[1]
  %eptr143697 = getelementptr inbounds i64, i64* %cloptr143694, i64 2                ; &eptr143697[2]
  %eptr143698 = getelementptr inbounds i64, i64* %cloptr143694, i64 3                ; &eptr143698[3]
  %eptr143699 = getelementptr inbounds i64, i64* %cloptr143694, i64 4                ; &eptr143699[4]
  store i64 %E2i$Ycmb, i64* %eptr143696                                              ; *eptr143696 = %E2i$Ycmb
  store i64 %RWL$_37foldr1, i64* %eptr143697                                         ; *eptr143697 = %RWL$_37foldr1
  store i64 %GBF$_37map1, i64* %eptr143698                                           ; *eptr143698 = %GBF$_37map1
  store i64 %QSH$_37take, i64* %eptr143699                                           ; *eptr143699 = %QSH$_37take
  %eptr143695 = getelementptr inbounds i64, i64* %cloptr143694, i64 0                ; &cloptr143694[0]
  %f143700 = ptrtoint void(i64,i64,i64)* @lam143617 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143700, i64* %eptr143695                                               ; store fptr
  %arg142333 = ptrtoint i64* %cloptr143694 to i64                                    ; closure cast; i64* -> i64
  %cloptr143701 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143702 = getelementptr inbounds i64, i64* %cloptr143701, i64 0                ; &cloptr143701[0]
  %f143703 = ptrtoint void(i64,i64,i64)* @lam143222 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143703, i64* %eptr143702                                               ; store fptr
  %arg142332 = ptrtoint i64* %cloptr143701 to i64                                    ; closure cast; i64* -> i64
  %cloptr143704 = inttoptr i64 %E2i$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143704)                                       ; assert function application
  %i0ptr143705 = getelementptr inbounds i64, i64* %cloptr143704, i64 0               ; &cloptr143704[0]
  %f143707 = load i64, i64* %i0ptr143705, align 8                                    ; load; *i0ptr143705
  %fptr143706 = inttoptr i64 %f143707 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143706(i64 %E2i$Ycmb, i64 %arg142333, i64 %arg142332); tail call
  ret void
}


define void @lam143617(i64 %env143618, i64 %_95142134, i64 %mGC$_37length) {
  %envptr143708 = inttoptr i64 %env143618 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143709 = getelementptr inbounds i64, i64* %envptr143708, i64 4              ; &envptr143708[4]
  %QSH$_37take = load i64, i64* %envptr143709, align 8                               ; load; *envptr143709
  %envptr143710 = inttoptr i64 %env143618 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143711 = getelementptr inbounds i64, i64* %envptr143710, i64 3              ; &envptr143710[3]
  %GBF$_37map1 = load i64, i64* %envptr143711, align 8                               ; load; *envptr143711
  %envptr143712 = inttoptr i64 %env143618 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143713 = getelementptr inbounds i64, i64* %envptr143712, i64 2              ; &envptr143712[2]
  %RWL$_37foldr1 = load i64, i64* %envptr143713, align 8                             ; load; *envptr143713
  %envptr143714 = inttoptr i64 %env143618 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143715 = getelementptr inbounds i64, i64* %envptr143714, i64 1              ; &envptr143714[1]
  %E2i$Ycmb = load i64, i64* %envptr143715, align 8                                  ; load; *envptr143715
  %cloptr143716 = call i64* @alloc(i64 48)                                           ; malloc
  %eptr143718 = getelementptr inbounds i64, i64* %cloptr143716, i64 1                ; &eptr143718[1]
  %eptr143719 = getelementptr inbounds i64, i64* %cloptr143716, i64 2                ; &eptr143719[2]
  %eptr143720 = getelementptr inbounds i64, i64* %cloptr143716, i64 3                ; &eptr143720[3]
  %eptr143721 = getelementptr inbounds i64, i64* %cloptr143716, i64 4                ; &eptr143721[4]
  %eptr143722 = getelementptr inbounds i64, i64* %cloptr143716, i64 5                ; &eptr143722[5]
  store i64 %mGC$_37length, i64* %eptr143718                                         ; *eptr143718 = %mGC$_37length
  store i64 %E2i$Ycmb, i64* %eptr143719                                              ; *eptr143719 = %E2i$Ycmb
  store i64 %RWL$_37foldr1, i64* %eptr143720                                         ; *eptr143720 = %RWL$_37foldr1
  store i64 %GBF$_37map1, i64* %eptr143721                                           ; *eptr143721 = %GBF$_37map1
  store i64 %QSH$_37take, i64* %eptr143722                                           ; *eptr143722 = %QSH$_37take
  %eptr143717 = getelementptr inbounds i64, i64* %cloptr143716, i64 0                ; &cloptr143716[0]
  %f143723 = ptrtoint void(i64,i64,i64)* @lam143615 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143723, i64* %eptr143717                                               ; store fptr
  %arg142336 = ptrtoint i64* %cloptr143716 to i64                                    ; closure cast; i64* -> i64
  %cloptr143724 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143725 = getelementptr inbounds i64, i64* %cloptr143724, i64 0                ; &cloptr143724[0]
  %f143726 = ptrtoint void(i64,i64,i64)* @lam143230 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143726, i64* %eptr143725                                               ; store fptr
  %arg142335 = ptrtoint i64* %cloptr143724 to i64                                    ; closure cast; i64* -> i64
  %cloptr143727 = inttoptr i64 %E2i$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143727)                                       ; assert function application
  %i0ptr143728 = getelementptr inbounds i64, i64* %cloptr143727, i64 0               ; &cloptr143727[0]
  %f143730 = load i64, i64* %i0ptr143728, align 8                                    ; load; *i0ptr143728
  %fptr143729 = inttoptr i64 %f143730 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143729(i64 %E2i$Ycmb, i64 %arg142336, i64 %arg142335); tail call
  ret void
}


define void @lam143615(i64 %env143616, i64 %_95142135, i64 %tfR$_37foldl1) {
  %envptr143731 = inttoptr i64 %env143616 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143732 = getelementptr inbounds i64, i64* %envptr143731, i64 5              ; &envptr143731[5]
  %QSH$_37take = load i64, i64* %envptr143732, align 8                               ; load; *envptr143732
  %envptr143733 = inttoptr i64 %env143616 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143734 = getelementptr inbounds i64, i64* %envptr143733, i64 4              ; &envptr143733[4]
  %GBF$_37map1 = load i64, i64* %envptr143734, align 8                               ; load; *envptr143734
  %envptr143735 = inttoptr i64 %env143616 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143736 = getelementptr inbounds i64, i64* %envptr143735, i64 3              ; &envptr143735[3]
  %RWL$_37foldr1 = load i64, i64* %envptr143736, align 8                             ; load; *envptr143736
  %envptr143737 = inttoptr i64 %env143616 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143738 = getelementptr inbounds i64, i64* %envptr143737, i64 2              ; &envptr143737[2]
  %E2i$Ycmb = load i64, i64* %envptr143738, align 8                                  ; load; *envptr143738
  %envptr143739 = inttoptr i64 %env143616 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143740 = getelementptr inbounds i64, i64* %envptr143739, i64 1              ; &envptr143739[1]
  %mGC$_37length = load i64, i64* %envptr143740, align 8                             ; load; *envptr143740
  %cloptr143741 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143743 = getelementptr inbounds i64, i64* %cloptr143741, i64 1                ; &eptr143743[1]
  store i64 %tfR$_37foldl1, i64* %eptr143743                                         ; *eptr143743 = %tfR$_37foldl1
  %eptr143742 = getelementptr inbounds i64, i64* %cloptr143741, i64 0                ; &cloptr143741[0]
  %f143744 = ptrtoint void(i64,i64,i64)* @lam143613 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143744, i64* %eptr143742                                               ; store fptr
  %N3q$_37last = ptrtoint i64* %cloptr143741 to i64                                  ; closure cast; i64* -> i64
  %cloptr143745 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143747 = getelementptr inbounds i64, i64* %cloptr143745, i64 1                ; &eptr143747[1]
  %eptr143748 = getelementptr inbounds i64, i64* %cloptr143745, i64 2                ; &eptr143748[2]
  store i64 %mGC$_37length, i64* %eptr143747                                         ; *eptr143747 = %mGC$_37length
  store i64 %QSH$_37take, i64* %eptr143748                                           ; *eptr143748 = %QSH$_37take
  %eptr143746 = getelementptr inbounds i64, i64* %cloptr143745, i64 0                ; &cloptr143745[0]
  %f143749 = ptrtoint void(i64,i64,i64,i64)* @lam143607 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143749, i64* %eptr143746                                               ; store fptr
  %leY$_37drop_45right = ptrtoint i64* %cloptr143745 to i64                          ; closure cast; i64* -> i64
  %cloptr143750 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr143752 = getelementptr inbounds i64, i64* %cloptr143750, i64 1                ; &eptr143752[1]
  %eptr143753 = getelementptr inbounds i64, i64* %cloptr143750, i64 2                ; &eptr143753[2]
  %eptr143754 = getelementptr inbounds i64, i64* %cloptr143750, i64 3                ; &eptr143754[3]
  %eptr143755 = getelementptr inbounds i64, i64* %cloptr143750, i64 4                ; &eptr143755[4]
  %eptr143756 = getelementptr inbounds i64, i64* %cloptr143750, i64 5                ; &eptr143756[5]
  %eptr143757 = getelementptr inbounds i64, i64* %cloptr143750, i64 6                ; &eptr143757[6]
  store i64 %mGC$_37length, i64* %eptr143752                                         ; *eptr143752 = %mGC$_37length
  store i64 %tfR$_37foldl1, i64* %eptr143753                                         ; *eptr143753 = %tfR$_37foldl1
  store i64 %E2i$Ycmb, i64* %eptr143754                                              ; *eptr143754 = %E2i$Ycmb
  store i64 %RWL$_37foldr1, i64* %eptr143755                                         ; *eptr143755 = %RWL$_37foldr1
  store i64 %N3q$_37last, i64* %eptr143756                                           ; *eptr143756 = %N3q$_37last
  store i64 %leY$_37drop_45right, i64* %eptr143757                                   ; *eptr143757 = %leY$_37drop_45right
  %eptr143751 = getelementptr inbounds i64, i64* %cloptr143750, i64 0                ; &cloptr143750[0]
  %f143758 = ptrtoint void(i64,i64,i64)* @lam143603 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143758, i64* %eptr143751                                               ; store fptr
  %arg142356 = ptrtoint i64* %cloptr143750 to i64                                    ; closure cast; i64* -> i64
  %cloptr143759 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143761 = getelementptr inbounds i64, i64* %cloptr143759, i64 1                ; &eptr143761[1]
  %eptr143762 = getelementptr inbounds i64, i64* %cloptr143759, i64 2                ; &eptr143762[2]
  store i64 %RWL$_37foldr1, i64* %eptr143761                                         ; *eptr143761 = %RWL$_37foldr1
  store i64 %GBF$_37map1, i64* %eptr143762                                           ; *eptr143762 = %GBF$_37map1
  %eptr143760 = getelementptr inbounds i64, i64* %cloptr143759, i64 0                ; &cloptr143759[0]
  %f143763 = ptrtoint void(i64,i64,i64)* @lam143267 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143763, i64* %eptr143760                                               ; store fptr
  %arg142355 = ptrtoint i64* %cloptr143759 to i64                                    ; closure cast; i64* -> i64
  %cloptr143764 = inttoptr i64 %E2i$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143764)                                       ; assert function application
  %i0ptr143765 = getelementptr inbounds i64, i64* %cloptr143764, i64 0               ; &cloptr143764[0]
  %f143767 = load i64, i64* %i0ptr143765, align 8                                    ; load; *i0ptr143765
  %fptr143766 = inttoptr i64 %f143767 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143766(i64 %E2i$Ycmb, i64 %arg142356, i64 %arg142355); tail call
  ret void
}


define void @lam143613(i64 %env143614, i64 %cont142136, i64 %Bug$lst) {
  %envptr143768 = inttoptr i64 %env143614 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143769 = getelementptr inbounds i64, i64* %envptr143768, i64 1              ; &envptr143768[1]
  %tfR$_37foldl1 = load i64, i64* %envptr143769, align 8                             ; load; *envptr143769
  %cloptr143770 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143771 = getelementptr inbounds i64, i64* %cloptr143770, i64 0                ; &cloptr143770[0]
  %f143772 = ptrtoint void(i64,i64,i64,i64)* @lam143611 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143772, i64* %eptr143771                                               ; store fptr
  %arg142340 = ptrtoint i64* %cloptr143770 to i64                                    ; closure cast; i64* -> i64
  %arg142339 = add i64 0, 0                                                          ; quoted ()
  %cloptr143773 = inttoptr i64 %tfR$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143773)                                       ; assert function application
  %i0ptr143774 = getelementptr inbounds i64, i64* %cloptr143773, i64 0               ; &cloptr143773[0]
  %f143776 = load i64, i64* %i0ptr143774, align 8                                    ; load; *i0ptr143774
  %fptr143775 = inttoptr i64 %f143776 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143775(i64 %tfR$_37foldl1, i64 %cont142136, i64 %arg142340, i64 %arg142339, i64 %Bug$lst); tail call
  ret void
}


define void @lam143611(i64 %env143612, i64 %cont142137, i64 %Tmg$x, i64 %ume$y) {
  %arg142344 = add i64 0, 0                                                          ; quoted ()
  %cloptr143777 = inttoptr i64 %cont142137 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143777)                                       ; assert function application
  %i0ptr143778 = getelementptr inbounds i64, i64* %cloptr143777, i64 0               ; &cloptr143777[0]
  %f143780 = load i64, i64* %i0ptr143778, align 8                                    ; load; *i0ptr143778
  %fptr143779 = inttoptr i64 %f143780 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143779(i64 %cont142137, i64 %arg142344, i64 %Tmg$x) ; tail call
  ret void
}


define void @lam143607(i64 %env143608, i64 %cont142138, i64 %v8s$lst, i64 %w47$n) {
  %envptr143781 = inttoptr i64 %env143608 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143782 = getelementptr inbounds i64, i64* %envptr143781, i64 2              ; &envptr143781[2]
  %QSH$_37take = load i64, i64* %envptr143782, align 8                               ; load; *envptr143782
  %envptr143783 = inttoptr i64 %env143608 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143784 = getelementptr inbounds i64, i64* %envptr143783, i64 1              ; &envptr143783[1]
  %mGC$_37length = load i64, i64* %envptr143784, align 8                             ; load; *envptr143784
  %cloptr143785 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143787 = getelementptr inbounds i64, i64* %cloptr143785, i64 1                ; &eptr143787[1]
  %eptr143788 = getelementptr inbounds i64, i64* %cloptr143785, i64 2                ; &eptr143788[2]
  %eptr143789 = getelementptr inbounds i64, i64* %cloptr143785, i64 3                ; &eptr143789[3]
  %eptr143790 = getelementptr inbounds i64, i64* %cloptr143785, i64 4                ; &eptr143790[4]
  store i64 %v8s$lst, i64* %eptr143787                                               ; *eptr143787 = %v8s$lst
  store i64 %cont142138, i64* %eptr143788                                            ; *eptr143788 = %cont142138
  store i64 %QSH$_37take, i64* %eptr143789                                           ; *eptr143789 = %QSH$_37take
  store i64 %w47$n, i64* %eptr143790                                                 ; *eptr143790 = %w47$n
  %eptr143786 = getelementptr inbounds i64, i64* %cloptr143785, i64 0                ; &cloptr143785[0]
  %f143791 = ptrtoint void(i64,i64,i64)* @lam143605 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143791, i64* %eptr143786                                               ; store fptr
  %arg142347 = ptrtoint i64* %cloptr143785 to i64                                    ; closure cast; i64* -> i64
  %cloptr143792 = inttoptr i64 %mGC$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143792)                                       ; assert function application
  %i0ptr143793 = getelementptr inbounds i64, i64* %cloptr143792, i64 0               ; &cloptr143792[0]
  %f143795 = load i64, i64* %i0ptr143793, align 8                                    ; load; *i0ptr143793
  %fptr143794 = inttoptr i64 %f143795 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143794(i64 %mGC$_37length, i64 %arg142347, i64 %v8s$lst); tail call
  ret void
}


define void @lam143605(i64 %env143606, i64 %_95142139, i64 %a142033) {
  %envptr143796 = inttoptr i64 %env143606 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143797 = getelementptr inbounds i64, i64* %envptr143796, i64 4              ; &envptr143796[4]
  %w47$n = load i64, i64* %envptr143797, align 8                                     ; load; *envptr143797
  %envptr143798 = inttoptr i64 %env143606 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143799 = getelementptr inbounds i64, i64* %envptr143798, i64 3              ; &envptr143798[3]
  %QSH$_37take = load i64, i64* %envptr143799, align 8                               ; load; *envptr143799
  %envptr143800 = inttoptr i64 %env143606 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143801 = getelementptr inbounds i64, i64* %envptr143800, i64 2              ; &envptr143800[2]
  %cont142138 = load i64, i64* %envptr143801, align 8                                ; load; *envptr143801
  %envptr143802 = inttoptr i64 %env143606 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143803 = getelementptr inbounds i64, i64* %envptr143802, i64 1              ; &envptr143802[1]
  %v8s$lst = load i64, i64* %envptr143803, align 8                                   ; load; *envptr143803
  %a142034 = call i64 @prim__45(i64 %a142033, i64 %w47$n)                            ; call prim__45
  %cloptr143804 = inttoptr i64 %QSH$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143804)                                       ; assert function application
  %i0ptr143805 = getelementptr inbounds i64, i64* %cloptr143804, i64 0               ; &cloptr143804[0]
  %f143807 = load i64, i64* %i0ptr143805, align 8                                    ; load; *i0ptr143805
  %fptr143806 = inttoptr i64 %f143807 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143806(i64 %QSH$_37take, i64 %cont142138, i64 %v8s$lst, i64 %a142034); tail call
  ret void
}


define void @lam143603(i64 %env143604, i64 %_95142140, i64 %K3q$_37foldr) {
  %envptr143808 = inttoptr i64 %env143604 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143809 = getelementptr inbounds i64, i64* %envptr143808, i64 6              ; &envptr143808[6]
  %leY$_37drop_45right = load i64, i64* %envptr143809, align 8                       ; load; *envptr143809
  %envptr143810 = inttoptr i64 %env143604 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143811 = getelementptr inbounds i64, i64* %envptr143810, i64 5              ; &envptr143810[5]
  %N3q$_37last = load i64, i64* %envptr143811, align 8                               ; load; *envptr143811
  %envptr143812 = inttoptr i64 %env143604 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143813 = getelementptr inbounds i64, i64* %envptr143812, i64 4              ; &envptr143812[4]
  %RWL$_37foldr1 = load i64, i64* %envptr143813, align 8                             ; load; *envptr143813
  %envptr143814 = inttoptr i64 %env143604 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143815 = getelementptr inbounds i64, i64* %envptr143814, i64 3              ; &envptr143814[3]
  %E2i$Ycmb = load i64, i64* %envptr143815, align 8                                  ; load; *envptr143815
  %envptr143816 = inttoptr i64 %env143604 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143817 = getelementptr inbounds i64, i64* %envptr143816, i64 2              ; &envptr143816[2]
  %tfR$_37foldl1 = load i64, i64* %envptr143817, align 8                             ; load; *envptr143817
  %envptr143818 = inttoptr i64 %env143604 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143819 = getelementptr inbounds i64, i64* %envptr143818, i64 1              ; &envptr143818[1]
  %mGC$_37length = load i64, i64* %envptr143819, align 8                             ; load; *envptr143819
  %cloptr143820 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143822 = getelementptr inbounds i64, i64* %cloptr143820, i64 1                ; &eptr143822[1]
  store i64 %RWL$_37foldr1, i64* %eptr143822                                         ; *eptr143822 = %RWL$_37foldr1
  %eptr143821 = getelementptr inbounds i64, i64* %cloptr143820, i64 0                ; &cloptr143820[0]
  %f143823 = ptrtoint void(i64,i64,i64,i64)* @lam143601 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143823, i64* %eptr143821                                               ; store fptr
  %jpk$_37map1 = ptrtoint i64* %cloptr143820 to i64                                  ; closure cast; i64* -> i64
  %cloptr143824 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143826 = getelementptr inbounds i64, i64* %cloptr143824, i64 1                ; &eptr143826[1]
  %eptr143827 = getelementptr inbounds i64, i64* %cloptr143824, i64 2                ; &eptr143827[2]
  %eptr143828 = getelementptr inbounds i64, i64* %cloptr143824, i64 3                ; &eptr143828[3]
  store i64 %K3q$_37foldr, i64* %eptr143826                                          ; *eptr143826 = %K3q$_37foldr
  store i64 %N3q$_37last, i64* %eptr143827                                           ; *eptr143827 = %N3q$_37last
  store i64 %leY$_37drop_45right, i64* %eptr143828                                   ; *eptr143828 = %leY$_37drop_45right
  %eptr143825 = getelementptr inbounds i64, i64* %cloptr143824, i64 0                ; &cloptr143824[0]
  %f143829 = ptrtoint void(i64,i64)* @lam143593 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143829, i64* %eptr143825                                               ; store fptr
  %G3M$_37map = ptrtoint i64* %cloptr143824 to i64                                   ; closure cast; i64* -> i64
  %cloptr143830 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143832 = getelementptr inbounds i64, i64* %cloptr143830, i64 1                ; &eptr143832[1]
  %eptr143833 = getelementptr inbounds i64, i64* %cloptr143830, i64 2                ; &eptr143833[2]
  store i64 %mGC$_37length, i64* %eptr143832                                         ; *eptr143832 = %mGC$_37length
  store i64 %tfR$_37foldl1, i64* %eptr143833                                         ; *eptr143833 = %tfR$_37foldl1
  %eptr143831 = getelementptr inbounds i64, i64* %cloptr143830, i64 0                ; &cloptr143830[0]
  %f143834 = ptrtoint void(i64,i64,i64)* @lam143580 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143834, i64* %eptr143831                                               ; store fptr
  %arg142398 = ptrtoint i64* %cloptr143830 to i64                                    ; closure cast; i64* -> i64
  %cloptr143835 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143837 = getelementptr inbounds i64, i64* %cloptr143835, i64 1                ; &eptr143837[1]
  %eptr143838 = getelementptr inbounds i64, i64* %cloptr143835, i64 2                ; &eptr143838[2]
  %eptr143839 = getelementptr inbounds i64, i64* %cloptr143835, i64 3                ; &eptr143839[3]
  store i64 %RWL$_37foldr1, i64* %eptr143837                                         ; *eptr143837 = %RWL$_37foldr1
  store i64 %jpk$_37map1, i64* %eptr143838                                           ; *eptr143838 = %jpk$_37map1
  store i64 %K3q$_37foldr, i64* %eptr143839                                          ; *eptr143839 = %K3q$_37foldr
  %eptr143836 = getelementptr inbounds i64, i64* %cloptr143835, i64 0                ; &cloptr143835[0]
  %f143840 = ptrtoint void(i64,i64,i64)* @lam143304 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143840, i64* %eptr143836                                               ; store fptr
  %arg142397 = ptrtoint i64* %cloptr143835 to i64                                    ; closure cast; i64* -> i64
  %cloptr143841 = inttoptr i64 %E2i$Ycmb to i64*                                     ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143841)                                       ; assert function application
  %i0ptr143842 = getelementptr inbounds i64, i64* %cloptr143841, i64 0               ; &cloptr143841[0]
  %f143844 = load i64, i64* %i0ptr143842, align 8                                    ; load; *i0ptr143842
  %fptr143843 = inttoptr i64 %f143844 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143843(i64 %E2i$Ycmb, i64 %arg142398, i64 %arg142397); tail call
  ret void
}


define void @lam143601(i64 %env143602, i64 %cont142141, i64 %EGk$f, i64 %cfZ$lst) {
  %envptr143845 = inttoptr i64 %env143602 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143846 = getelementptr inbounds i64, i64* %envptr143845, i64 1              ; &envptr143845[1]
  %RWL$_37foldr1 = load i64, i64* %envptr143846, align 8                             ; load; *envptr143846
  %cloptr143847 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143849 = getelementptr inbounds i64, i64* %cloptr143847, i64 1                ; &eptr143849[1]
  store i64 %EGk$f, i64* %eptr143849                                                 ; *eptr143849 = %EGk$f
  %eptr143848 = getelementptr inbounds i64, i64* %cloptr143847, i64 0                ; &cloptr143847[0]
  %f143850 = ptrtoint void(i64,i64,i64,i64)* @lam143599 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143850, i64* %eptr143848                                               ; store fptr
  %arg142360 = ptrtoint i64* %cloptr143847 to i64                                    ; closure cast; i64* -> i64
  %arg142359 = add i64 0, 0                                                          ; quoted ()
  %cloptr143851 = inttoptr i64 %RWL$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143851)                                       ; assert function application
  %i0ptr143852 = getelementptr inbounds i64, i64* %cloptr143851, i64 0               ; &cloptr143851[0]
  %f143854 = load i64, i64* %i0ptr143852, align 8                                    ; load; *i0ptr143852
  %fptr143853 = inttoptr i64 %f143854 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143853(i64 %RWL$_37foldr1, i64 %cont142141, i64 %arg142360, i64 %arg142359, i64 %cfZ$lst); tail call
  ret void
}


define void @lam143599(i64 %env143600, i64 %cont142142, i64 %ap1$v, i64 %H9I$r) {
  %envptr143855 = inttoptr i64 %env143600 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143856 = getelementptr inbounds i64, i64* %envptr143855, i64 1              ; &envptr143855[1]
  %EGk$f = load i64, i64* %envptr143856, align 8                                     ; load; *envptr143856
  %cloptr143857 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143859 = getelementptr inbounds i64, i64* %cloptr143857, i64 1                ; &eptr143859[1]
  %eptr143860 = getelementptr inbounds i64, i64* %cloptr143857, i64 2                ; &eptr143860[2]
  store i64 %H9I$r, i64* %eptr143859                                                 ; *eptr143859 = %H9I$r
  store i64 %cont142142, i64* %eptr143860                                            ; *eptr143860 = %cont142142
  %eptr143858 = getelementptr inbounds i64, i64* %cloptr143857, i64 0                ; &cloptr143857[0]
  %f143861 = ptrtoint void(i64,i64,i64)* @lam143597 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143861, i64* %eptr143858                                               ; store fptr
  %arg142364 = ptrtoint i64* %cloptr143857 to i64                                    ; closure cast; i64* -> i64
  %cloptr143862 = inttoptr i64 %EGk$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143862)                                       ; assert function application
  %i0ptr143863 = getelementptr inbounds i64, i64* %cloptr143862, i64 0               ; &cloptr143862[0]
  %f143865 = load i64, i64* %i0ptr143863, align 8                                    ; load; *i0ptr143863
  %fptr143864 = inttoptr i64 %f143865 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143864(i64 %EGk$f, i64 %arg142364, i64 %ap1$v)      ; tail call
  ret void
}


define void @lam143597(i64 %env143598, i64 %_95142143, i64 %a142043) {
  %envptr143866 = inttoptr i64 %env143598 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143867 = getelementptr inbounds i64, i64* %envptr143866, i64 2              ; &envptr143866[2]
  %cont142142 = load i64, i64* %envptr143867, align 8                                ; load; *envptr143867
  %envptr143868 = inttoptr i64 %env143598 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143869 = getelementptr inbounds i64, i64* %envptr143868, i64 1              ; &envptr143868[1]
  %H9I$r = load i64, i64* %envptr143869, align 8                                     ; load; *envptr143869
  %retprim142144 = call i64 @prim_cons(i64 %a142043, i64 %H9I$r)                     ; call prim_cons
  %arg142369 = add i64 0, 0                                                          ; quoted ()
  %cloptr143870 = inttoptr i64 %cont142142 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143870)                                       ; assert function application
  %i0ptr143871 = getelementptr inbounds i64, i64* %cloptr143870, i64 0               ; &cloptr143870[0]
  %f143873 = load i64, i64* %i0ptr143871, align 8                                    ; load; *i0ptr143871
  %fptr143872 = inttoptr i64 %f143873 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143872(i64 %cont142142, i64 %arg142369, i64 %retprim142144); tail call
  ret void
}


define void @lam143593(i64 %env143594, i64 %PjO$args142146) {
  %envptr143874 = inttoptr i64 %env143594 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143875 = getelementptr inbounds i64, i64* %envptr143874, i64 3              ; &envptr143874[3]
  %leY$_37drop_45right = load i64, i64* %envptr143875, align 8                       ; load; *envptr143875
  %envptr143876 = inttoptr i64 %env143594 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143877 = getelementptr inbounds i64, i64* %envptr143876, i64 2              ; &envptr143876[2]
  %N3q$_37last = load i64, i64* %envptr143877, align 8                               ; load; *envptr143877
  %envptr143878 = inttoptr i64 %env143594 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143879 = getelementptr inbounds i64, i64* %envptr143878, i64 1              ; &envptr143878[1]
  %K3q$_37foldr = load i64, i64* %envptr143879, align 8                              ; load; *envptr143879
  %cont142145 = call i64 @prim_car(i64 %PjO$args142146)                              ; call prim_car
  %PjO$args = call i64 @prim_cdr(i64 %PjO$args142146)                                ; call prim_cdr
  %jKA$f = call i64 @prim_car(i64 %PjO$args)                                         ; call prim_car
  %ADO$lsts = call i64 @prim_cdr(i64 %PjO$args)                                      ; call prim_cdr
  %arg142376 = add i64 0, 0                                                          ; quoted ()
  %a142047 = call i64 @prim_cons(i64 %arg142376, i64 %ADO$lsts)                      ; call prim_cons
  %cloptr143880 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143882 = getelementptr inbounds i64, i64* %cloptr143880, i64 1                ; &eptr143882[1]
  %eptr143883 = getelementptr inbounds i64, i64* %cloptr143880, i64 2                ; &eptr143883[2]
  %eptr143884 = getelementptr inbounds i64, i64* %cloptr143880, i64 3                ; &eptr143884[3]
  store i64 %N3q$_37last, i64* %eptr143882                                           ; *eptr143882 = %N3q$_37last
  store i64 %jKA$f, i64* %eptr143883                                                 ; *eptr143883 = %jKA$f
  store i64 %leY$_37drop_45right, i64* %eptr143884                                   ; *eptr143884 = %leY$_37drop_45right
  %eptr143881 = getelementptr inbounds i64, i64* %cloptr143880, i64 0                ; &cloptr143880[0]
  %f143885 = ptrtoint void(i64,i64)* @lam143590 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f143885, i64* %eptr143881                                               ; store fptr
  %arg142378 = ptrtoint i64* %cloptr143880 to i64                                    ; closure cast; i64* -> i64
  %a142048 = call i64 @prim_cons(i64 %arg142378, i64 %a142047)                       ; call prim_cons
  %cps_45lst142154 = call i64 @prim_cons(i64 %cont142145, i64 %a142048)              ; call prim_cons
  %cloptr143886 = inttoptr i64 %K3q$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143886)                                       ; assert function application
  %i0ptr143887 = getelementptr inbounds i64, i64* %cloptr143886, i64 0               ; &cloptr143886[0]
  %f143889 = load i64, i64* %i0ptr143887, align 8                                    ; load; *i0ptr143887
  %fptr143888 = inttoptr i64 %f143889 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143888(i64 %K3q$_37foldr, i64 %cps_45lst142154)     ; tail call
  ret void
}


define void @lam143590(i64 %env143591, i64 %w3Q$fargs142148) {
  %envptr143890 = inttoptr i64 %env143591 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143891 = getelementptr inbounds i64, i64* %envptr143890, i64 3              ; &envptr143890[3]
  %leY$_37drop_45right = load i64, i64* %envptr143891, align 8                       ; load; *envptr143891
  %envptr143892 = inttoptr i64 %env143591 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143893 = getelementptr inbounds i64, i64* %envptr143892, i64 2              ; &envptr143892[2]
  %jKA$f = load i64, i64* %envptr143893, align 8                                     ; load; *envptr143893
  %envptr143894 = inttoptr i64 %env143591 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143895 = getelementptr inbounds i64, i64* %envptr143894, i64 1              ; &envptr143894[1]
  %N3q$_37last = load i64, i64* %envptr143895, align 8                               ; load; *envptr143895
  %cont142147 = call i64 @prim_car(i64 %w3Q$fargs142148)                             ; call prim_car
  %w3Q$fargs = call i64 @prim_cdr(i64 %w3Q$fargs142148)                              ; call prim_cdr
  %cloptr143896 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr143898 = getelementptr inbounds i64, i64* %cloptr143896, i64 1                ; &eptr143898[1]
  %eptr143899 = getelementptr inbounds i64, i64* %cloptr143896, i64 2                ; &eptr143899[2]
  %eptr143900 = getelementptr inbounds i64, i64* %cloptr143896, i64 3                ; &eptr143900[3]
  %eptr143901 = getelementptr inbounds i64, i64* %cloptr143896, i64 4                ; &eptr143901[4]
  store i64 %cont142147, i64* %eptr143898                                            ; *eptr143898 = %cont142147
  store i64 %N3q$_37last, i64* %eptr143899                                           ; *eptr143899 = %N3q$_37last
  store i64 %jKA$f, i64* %eptr143900                                                 ; *eptr143900 = %jKA$f
  store i64 %w3Q$fargs, i64* %eptr143901                                             ; *eptr143901 = %w3Q$fargs
  %eptr143897 = getelementptr inbounds i64, i64* %cloptr143896, i64 0                ; &cloptr143896[0]
  %f143902 = ptrtoint void(i64,i64,i64)* @lam143588 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143902, i64* %eptr143897                                               ; store fptr
  %arg142383 = ptrtoint i64* %cloptr143896 to i64                                    ; closure cast; i64* -> i64
  %arg142381 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr143903 = inttoptr i64 %leY$_37drop_45right to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143903)                                       ; assert function application
  %i0ptr143904 = getelementptr inbounds i64, i64* %cloptr143903, i64 0               ; &cloptr143903[0]
  %f143906 = load i64, i64* %i0ptr143904, align 8                                    ; load; *i0ptr143904
  %fptr143905 = inttoptr i64 %f143906 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143905(i64 %leY$_37drop_45right, i64 %arg142383, i64 %w3Q$fargs, i64 %arg142381); tail call
  ret void
}


define void @lam143588(i64 %env143589, i64 %_95142149, i64 %a142044) {
  %envptr143907 = inttoptr i64 %env143589 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143908 = getelementptr inbounds i64, i64* %envptr143907, i64 4              ; &envptr143907[4]
  %w3Q$fargs = load i64, i64* %envptr143908, align 8                                 ; load; *envptr143908
  %envptr143909 = inttoptr i64 %env143589 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143910 = getelementptr inbounds i64, i64* %envptr143909, i64 3              ; &envptr143909[3]
  %jKA$f = load i64, i64* %envptr143910, align 8                                     ; load; *envptr143910
  %envptr143911 = inttoptr i64 %env143589 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143912 = getelementptr inbounds i64, i64* %envptr143911, i64 2              ; &envptr143911[2]
  %N3q$_37last = load i64, i64* %envptr143912, align 8                               ; load; *envptr143912
  %envptr143913 = inttoptr i64 %env143589 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143914 = getelementptr inbounds i64, i64* %envptr143913, i64 1              ; &envptr143913[1]
  %cont142147 = load i64, i64* %envptr143914, align 8                                ; load; *envptr143914
  %cloptr143915 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143917 = getelementptr inbounds i64, i64* %cloptr143915, i64 1                ; &eptr143917[1]
  %eptr143918 = getelementptr inbounds i64, i64* %cloptr143915, i64 2                ; &eptr143918[2]
  %eptr143919 = getelementptr inbounds i64, i64* %cloptr143915, i64 3                ; &eptr143919[3]
  store i64 %cont142147, i64* %eptr143917                                            ; *eptr143917 = %cont142147
  store i64 %N3q$_37last, i64* %eptr143918                                           ; *eptr143918 = %N3q$_37last
  store i64 %w3Q$fargs, i64* %eptr143919                                             ; *eptr143919 = %w3Q$fargs
  %eptr143916 = getelementptr inbounds i64, i64* %cloptr143915, i64 0                ; &cloptr143915[0]
  %f143920 = ptrtoint void(i64,i64,i64)* @lam143586 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143920, i64* %eptr143916                                               ; store fptr
  %arg142386 = ptrtoint i64* %cloptr143915 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142153 = call i64 @prim_cons(i64 %arg142386, i64 %a142044)               ; call prim_cons
  %cloptr143921 = inttoptr i64 %jKA$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143921)                                       ; assert function application
  %i0ptr143922 = getelementptr inbounds i64, i64* %cloptr143921, i64 0               ; &cloptr143921[0]
  %f143924 = load i64, i64* %i0ptr143922, align 8                                    ; load; *i0ptr143922
  %fptr143923 = inttoptr i64 %f143924 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143923(i64 %jKA$f, i64 %cps_45lst142153)            ; tail call
  ret void
}


define void @lam143586(i64 %env143587, i64 %_95142150, i64 %a142045) {
  %envptr143925 = inttoptr i64 %env143587 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143926 = getelementptr inbounds i64, i64* %envptr143925, i64 3              ; &envptr143925[3]
  %w3Q$fargs = load i64, i64* %envptr143926, align 8                                 ; load; *envptr143926
  %envptr143927 = inttoptr i64 %env143587 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143928 = getelementptr inbounds i64, i64* %envptr143927, i64 2              ; &envptr143927[2]
  %N3q$_37last = load i64, i64* %envptr143928, align 8                               ; load; *envptr143928
  %envptr143929 = inttoptr i64 %env143587 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143930 = getelementptr inbounds i64, i64* %envptr143929, i64 1              ; &envptr143929[1]
  %cont142147 = load i64, i64* %envptr143930, align 8                                ; load; *envptr143930
  %cloptr143931 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143933 = getelementptr inbounds i64, i64* %cloptr143931, i64 1                ; &eptr143933[1]
  %eptr143934 = getelementptr inbounds i64, i64* %cloptr143931, i64 2                ; &eptr143934[2]
  store i64 %cont142147, i64* %eptr143933                                            ; *eptr143933 = %cont142147
  store i64 %a142045, i64* %eptr143934                                               ; *eptr143934 = %a142045
  %eptr143932 = getelementptr inbounds i64, i64* %cloptr143931, i64 0                ; &cloptr143931[0]
  %f143935 = ptrtoint void(i64,i64,i64)* @lam143584 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143935, i64* %eptr143932                                               ; store fptr
  %arg142388 = ptrtoint i64* %cloptr143931 to i64                                    ; closure cast; i64* -> i64
  %cloptr143936 = inttoptr i64 %N3q$_37last to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143936)                                       ; assert function application
  %i0ptr143937 = getelementptr inbounds i64, i64* %cloptr143936, i64 0               ; &cloptr143936[0]
  %f143939 = load i64, i64* %i0ptr143937, align 8                                    ; load; *i0ptr143937
  %fptr143938 = inttoptr i64 %f143939 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143938(i64 %N3q$_37last, i64 %arg142388, i64 %w3Q$fargs); tail call
  ret void
}


define void @lam143584(i64 %env143585, i64 %_95142151, i64 %a142046) {
  %envptr143940 = inttoptr i64 %env143585 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143941 = getelementptr inbounds i64, i64* %envptr143940, i64 2              ; &envptr143940[2]
  %a142045 = load i64, i64* %envptr143941, align 8                                   ; load; *envptr143941
  %envptr143942 = inttoptr i64 %env143585 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143943 = getelementptr inbounds i64, i64* %envptr143942, i64 1              ; &envptr143942[1]
  %cont142147 = load i64, i64* %envptr143943, align 8                                ; load; *envptr143943
  %retprim142152 = call i64 @prim_cons(i64 %a142045, i64 %a142046)                   ; call prim_cons
  %arg142393 = add i64 0, 0                                                          ; quoted ()
  %cloptr143944 = inttoptr i64 %cont142147 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143944)                                       ; assert function application
  %i0ptr143945 = getelementptr inbounds i64, i64* %cloptr143944, i64 0               ; &cloptr143944[0]
  %f143947 = load i64, i64* %i0ptr143945, align 8                                    ; load; *i0ptr143945
  %fptr143946 = inttoptr i64 %f143947 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143946(i64 %cont142147, i64 %arg142393, i64 %retprim142152); tail call
  ret void
}


define void @lam143580(i64 %env143581, i64 %_95142155, i64 %ZKi$_37foldl) {
  %envptr143948 = inttoptr i64 %env143581 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143949 = getelementptr inbounds i64, i64* %envptr143948, i64 2              ; &envptr143948[2]
  %tfR$_37foldl1 = load i64, i64* %envptr143949, align 8                             ; load; *envptr143949
  %envptr143950 = inttoptr i64 %env143581 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143951 = getelementptr inbounds i64, i64* %envptr143950, i64 1              ; &envptr143950[1]
  %mGC$_37length = load i64, i64* %envptr143951, align 8                             ; load; *envptr143951
  %cloptr143952 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143953 = getelementptr inbounds i64, i64* %cloptr143952, i64 0                ; &cloptr143952[0]
  %f143954 = ptrtoint void(i64,i64,i64,i64)* @lam143578 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143954, i64* %eptr143953                                               ; store fptr
  %Y3e$_37_62 = ptrtoint i64* %cloptr143952 to i64                                   ; closure cast; i64* -> i64
  %cloptr143955 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr143956 = getelementptr inbounds i64, i64* %cloptr143955, i64 0                ; &cloptr143955[0]
  %f143957 = ptrtoint void(i64,i64,i64,i64)* @lam143575 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143957, i64* %eptr143956                                               ; store fptr
  %MCD$_37_62_61 = ptrtoint i64* %cloptr143955 to i64                                ; closure cast; i64* -> i64
  %arg142413 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg142412 = add i64 0, 0                                                          ; quoted ()
  %seq$_37append = call i64 @prim_make_45vector(i64 %arg142413, i64 %arg142412)      ; call prim_make_45vector
  %arg142415 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr143958 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr143960 = getelementptr inbounds i64, i64* %cloptr143958, i64 1                ; &eptr143960[1]
  store i64 %seq$_37append, i64* %eptr143960                                         ; *eptr143960 = %seq$_37append
  %eptr143959 = getelementptr inbounds i64, i64* %cloptr143958, i64 0                ; &cloptr143958[0]
  %f143961 = ptrtoint void(i64,i64,i64,i64)* @lam143569 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f143961, i64* %eptr143959                                               ; store fptr
  %arg142414 = ptrtoint i64* %cloptr143958 to i64                                    ; closure cast; i64* -> i64
  %XsW$_950 = call i64 @prim_vector_45set_33(i64 %seq$_37append, i64 %arg142415, i64 %arg142414); call prim_vector_45set_33
  %arg142434 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142245 = call i64 @prim_vector_45ref(i64 %seq$_37append, i64 %arg142434)   ; call prim_vector_45ref
  %cloptr143962 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr143964 = getelementptr inbounds i64, i64* %cloptr143962, i64 1                ; &eptr143964[1]
  %eptr143965 = getelementptr inbounds i64, i64* %cloptr143962, i64 2                ; &eptr143965[2]
  %eptr143966 = getelementptr inbounds i64, i64* %cloptr143962, i64 3                ; &eptr143966[3]
  store i64 %mGC$_37length, i64* %eptr143964                                         ; *eptr143964 = %mGC$_37length
  store i64 %tfR$_37foldl1, i64* %eptr143965                                         ; *eptr143965 = %tfR$_37foldl1
  store i64 %Y3e$_37_62, i64* %eptr143966                                            ; *eptr143966 = %Y3e$_37_62
  %eptr143963 = getelementptr inbounds i64, i64* %cloptr143962, i64 0                ; &cloptr143962[0]
  %f143967 = ptrtoint void(i64,i64,i64)* @lam143561 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143967, i64* %eptr143963                                               ; store fptr
  %arg142438 = ptrtoint i64* %cloptr143962 to i64                                    ; closure cast; i64* -> i64
  %arg142437 = add i64 0, 0                                                          ; quoted ()
  %cloptr143968 = inttoptr i64 %arg142438 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143968)                                       ; assert function application
  %i0ptr143969 = getelementptr inbounds i64, i64* %cloptr143968, i64 0               ; &cloptr143968[0]
  %f143971 = load i64, i64* %i0ptr143969, align 8                                    ; load; *i0ptr143969
  %fptr143970 = inttoptr i64 %f143971 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143970(i64 %arg142438, i64 %arg142437, i64 %retprim142245); tail call
  ret void
}


define void @lam143578(i64 %env143579, i64 %cont142156, i64 %ncR$a, i64 %pke$b) {
  %a142056 = call i64 @prim__60_61(i64 %ncR$a, i64 %pke$b)                           ; call prim__60_61
  %retprim142157 = call i64 @prim_not(i64 %a142056)                                  ; call prim_not
  %arg142404 = add i64 0, 0                                                          ; quoted ()
  %cloptr143972 = inttoptr i64 %cont142156 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143972)                                       ; assert function application
  %i0ptr143973 = getelementptr inbounds i64, i64* %cloptr143972, i64 0               ; &cloptr143972[0]
  %f143975 = load i64, i64* %i0ptr143973, align 8                                    ; load; *i0ptr143973
  %fptr143974 = inttoptr i64 %f143975 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143974(i64 %cont142156, i64 %arg142404, i64 %retprim142157); tail call
  ret void
}


define void @lam143575(i64 %env143576, i64 %cont142158, i64 %F7u$a, i64 %n3t$b) {
  %a142057 = call i64 @prim__60(i64 %F7u$a, i64 %n3t$b)                              ; call prim__60
  %retprim142159 = call i64 @prim_not(i64 %a142057)                                  ; call prim_not
  %arg142410 = add i64 0, 0                                                          ; quoted ()
  %cloptr143976 = inttoptr i64 %cont142158 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143976)                                       ; assert function application
  %i0ptr143977 = getelementptr inbounds i64, i64* %cloptr143976, i64 0               ; &cloptr143976[0]
  %f143979 = load i64, i64* %i0ptr143977, align 8                                    ; load; *i0ptr143977
  %fptr143978 = inttoptr i64 %f143979 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143978(i64 %cont142158, i64 %arg142410, i64 %retprim142159); tail call
  ret void
}


define void @lam143569(i64 %env143570, i64 %cont142242, i64 %jcU$ls0, i64 %Iic$ls1) {
  %envptr143980 = inttoptr i64 %env143570 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143981 = getelementptr inbounds i64, i64* %envptr143980, i64 1              ; &envptr143980[1]
  %seq$_37append = load i64, i64* %envptr143981, align 8                             ; load; *envptr143981
  %a142058 = call i64 @prim_null_63(i64 %jcU$ls0)                                    ; call prim_null_63
  %cmp143982 = icmp eq i64 %a142058, 15                                              ; false?
  br i1 %cmp143982, label %else143984, label %then143983                             ; if

then143983:
  %arg142419 = add i64 0, 0                                                          ; quoted ()
  %cloptr143985 = inttoptr i64 %cont142242 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143985)                                       ; assert function application
  %i0ptr143986 = getelementptr inbounds i64, i64* %cloptr143985, i64 0               ; &cloptr143985[0]
  %f143988 = load i64, i64* %i0ptr143986, align 8                                    ; load; *i0ptr143986
  %fptr143987 = inttoptr i64 %f143988 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143987(i64 %cont142242, i64 %arg142419, i64 %Iic$ls1); tail call
  ret void

else143984:
  %a142059 = call i64 @prim_car(i64 %jcU$ls0)                                        ; call prim_car
  %arg142422 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142060 = call i64 @prim_vector_45ref(i64 %seq$_37append, i64 %arg142422)         ; call prim_vector_45ref
  %a142061 = call i64 @prim_cdr(i64 %jcU$ls0)                                        ; call prim_cdr
  %cloptr143989 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr143991 = getelementptr inbounds i64, i64* %cloptr143989, i64 1                ; &eptr143991[1]
  %eptr143992 = getelementptr inbounds i64, i64* %cloptr143989, i64 2                ; &eptr143992[2]
  store i64 %a142059, i64* %eptr143991                                               ; *eptr143991 = %a142059
  store i64 %cont142242, i64* %eptr143992                                            ; *eptr143992 = %cont142242
  %eptr143990 = getelementptr inbounds i64, i64* %cloptr143989, i64 0                ; &cloptr143989[0]
  %f143993 = ptrtoint void(i64,i64,i64)* @lam143566 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f143993, i64* %eptr143990                                               ; store fptr
  %arg142427 = ptrtoint i64* %cloptr143989 to i64                                    ; closure cast; i64* -> i64
  %cloptr143994 = inttoptr i64 %a142060 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr143994)                                       ; assert function application
  %i0ptr143995 = getelementptr inbounds i64, i64* %cloptr143994, i64 0               ; &cloptr143994[0]
  %f143997 = load i64, i64* %i0ptr143995, align 8                                    ; load; *i0ptr143995
  %fptr143996 = inttoptr i64 %f143997 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr143996(i64 %a142060, i64 %arg142427, i64 %a142061, i64 %Iic$ls1); tail call
  ret void
}


define void @lam143566(i64 %env143567, i64 %_95142243, i64 %a142062) {
  %envptr143998 = inttoptr i64 %env143567 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr143999 = getelementptr inbounds i64, i64* %envptr143998, i64 2              ; &envptr143998[2]
  %cont142242 = load i64, i64* %envptr143999, align 8                                ; load; *envptr143999
  %envptr144000 = inttoptr i64 %env143567 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144001 = getelementptr inbounds i64, i64* %envptr144000, i64 1              ; &envptr144000[1]
  %a142059 = load i64, i64* %envptr144001, align 8                                   ; load; *envptr144001
  %retprim142244 = call i64 @prim_cons(i64 %a142059, i64 %a142062)                   ; call prim_cons
  %arg142432 = add i64 0, 0                                                          ; quoted ()
  %cloptr144002 = inttoptr i64 %cont142242 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144002)                                       ; assert function application
  %i0ptr144003 = getelementptr inbounds i64, i64* %cloptr144002, i64 0               ; &cloptr144002[0]
  %f144005 = load i64, i64* %i0ptr144003, align 8                                    ; load; *i0ptr144003
  %fptr144004 = inttoptr i64 %f144005 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144004(i64 %cont142242, i64 %arg142432, i64 %retprim142244); tail call
  ret void
}


define void @lam143561(i64 %env143562, i64 %_95142160, i64 %XUi$_37append) {
  %envptr144006 = inttoptr i64 %env143562 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144007 = getelementptr inbounds i64, i64* %envptr144006, i64 3              ; &envptr144006[3]
  %Y3e$_37_62 = load i64, i64* %envptr144007, align 8                                ; load; *envptr144007
  %envptr144008 = inttoptr i64 %env143562 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144009 = getelementptr inbounds i64, i64* %envptr144008, i64 2              ; &envptr144008[2]
  %tfR$_37foldl1 = load i64, i64* %envptr144009, align 8                             ; load; *envptr144009
  %envptr144010 = inttoptr i64 %env143562 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144011 = getelementptr inbounds i64, i64* %envptr144010, i64 1              ; &envptr144010[1]
  %mGC$_37length = load i64, i64* %envptr144011, align 8                             ; load; *envptr144011
  %cloptr144012 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144013 = getelementptr inbounds i64, i64* %cloptr144012, i64 0                ; &cloptr144012[0]
  %f144014 = ptrtoint void(i64,i64,i64)* @lam143559 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144014, i64* %eptr144013                                               ; store fptr
  %SiU$_37list_63 = ptrtoint i64* %cloptr144012 to i64                               ; closure cast; i64* -> i64
  %cloptr144015 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144016 = getelementptr inbounds i64, i64* %cloptr144015, i64 0                ; &cloptr144015[0]
  %f144017 = ptrtoint void(i64,i64,i64,i64)* @lam143519 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144017, i64* %eptr144016                                               ; store fptr
  %vBA$_37drop = ptrtoint i64* %cloptr144015 to i64                                  ; closure cast; i64* -> i64
  %cloptr144018 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144019 = getelementptr inbounds i64, i64* %cloptr144018, i64 0                ; &cloptr144018[0]
  %f144020 = ptrtoint void(i64,i64,i64,i64)* @lam143479 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144020, i64* %eptr144019                                               ; store fptr
  %ktH$_37memv = ptrtoint i64* %cloptr144018 to i64                                  ; closure cast; i64* -> i64
  %cloptr144021 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr144023 = getelementptr inbounds i64, i64* %cloptr144021, i64 1                ; &eptr144023[1]
  store i64 %tfR$_37foldl1, i64* %eptr144023                                         ; *eptr144023 = %tfR$_37foldl1
  %eptr144022 = getelementptr inbounds i64, i64* %cloptr144021, i64 0                ; &cloptr144021[0]
  %f144024 = ptrtoint void(i64,i64)* @lam143448 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144024, i64* %eptr144022                                               ; store fptr
  %qqO$_37_47 = ptrtoint i64* %cloptr144021 to i64                                   ; closure cast; i64* -> i64
  %cloptr144025 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144026 = getelementptr inbounds i64, i64* %cloptr144025, i64 0                ; &cloptr144025[0]
  %f144027 = ptrtoint void(i64,i64,i64)* @lam143440 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144027, i64* %eptr144026                                               ; store fptr
  %DH3$_37first = ptrtoint i64* %cloptr144025 to i64                                 ; closure cast; i64* -> i64
  %cloptr144028 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144029 = getelementptr inbounds i64, i64* %cloptr144028, i64 0                ; &cloptr144028[0]
  %f144030 = ptrtoint void(i64,i64,i64)* @lam143437 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144030, i64* %eptr144029                                               ; store fptr
  %Ftx$_37second = ptrtoint i64* %cloptr144028 to i64                                ; closure cast; i64* -> i64
  %cloptr144031 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144032 = getelementptr inbounds i64, i64* %cloptr144031, i64 0                ; &cloptr144031[0]
  %f144033 = ptrtoint void(i64,i64,i64)* @lam143434 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144033, i64* %eptr144032                                               ; store fptr
  %EQj$_37third = ptrtoint i64* %cloptr144031 to i64                                 ; closure cast; i64* -> i64
  %cloptr144034 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144035 = getelementptr inbounds i64, i64* %cloptr144034, i64 0                ; &cloptr144034[0]
  %f144036 = ptrtoint void(i64,i64,i64)* @lam143431 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144036, i64* %eptr144035                                               ; store fptr
  %wa2$_37fourth = ptrtoint i64* %cloptr144034 to i64                                ; closure cast; i64* -> i64
  %cloptr144037 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144038 = getelementptr inbounds i64, i64* %cloptr144037, i64 0                ; &cloptr144037[0]
  %f144039 = ptrtoint void(i64,i64,i64)* @lam143428 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144039, i64* %eptr144038                                               ; store fptr
  %gqS$promise_63 = ptrtoint i64* %cloptr144037 to i64                               ; closure cast; i64* -> i64
  %cloptr144040 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144041 = getelementptr inbounds i64, i64* %cloptr144040, i64 0                ; &cloptr144040[0]
  %f144042 = ptrtoint void(i64,i64)* @lam143422 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144042, i64* %eptr144041                                               ; store fptr
  %arg142700 = ptrtoint i64* %cloptr144040 to i64                                    ; closure cast; i64* -> i64
  %cloptr144043 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144045 = getelementptr inbounds i64, i64* %cloptr144043, i64 1                ; &eptr144045[1]
  %eptr144046 = getelementptr inbounds i64, i64* %cloptr144043, i64 2                ; &eptr144046[2]
  %eptr144047 = getelementptr inbounds i64, i64* %cloptr144043, i64 3                ; &eptr144047[3]
  store i64 %mGC$_37length, i64* %eptr144045                                         ; *eptr144045 = %mGC$_37length
  store i64 %Y3e$_37_62, i64* %eptr144046                                            ; *eptr144046 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144047                                           ; *eptr144047 = %vBA$_37drop
  %eptr144044 = getelementptr inbounds i64, i64* %cloptr144043, i64 0                ; &cloptr144043[0]
  %f144048 = ptrtoint void(i64,i64,i64)* @lam143419 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144048, i64* %eptr144044                                               ; store fptr
  %arg142699 = ptrtoint i64* %cloptr144043 to i64                                    ; closure cast; i64* -> i64
  %rva143167 = add i64 0, 0                                                          ; quoted ()
  %rva143166 = call i64 @prim_cons(i64 %arg142699, i64 %rva143167)                   ; call prim_cons
  %cloptr144049 = inttoptr i64 %arg142700 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144049)                                       ; assert function application
  %i0ptr144050 = getelementptr inbounds i64, i64* %cloptr144049, i64 0               ; &cloptr144049[0]
  %f144052 = load i64, i64* %i0ptr144050, align 8                                    ; load; *i0ptr144050
  %fptr144051 = inttoptr i64 %f144052 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144051(i64 %arg142700, i64 %rva143166)              ; tail call
  ret void
}


define void @lam143559(i64 %env143560, i64 %cont142161, i64 %tkO$a) {
  %arg142440 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %Uty$a = call i64 @prim_make_45vector(i64 %arg142440, i64 %tkO$a)                  ; call prim_make_45vector
  %cloptr144053 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144054 = getelementptr inbounds i64, i64* %cloptr144053, i64 0                ; &cloptr144053[0]
  %f144055 = ptrtoint void(i64,i64,i64)* @lam143556 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144055, i64* %eptr144054                                               ; store fptr
  %arg142443 = ptrtoint i64* %cloptr144053 to i64                                    ; closure cast; i64* -> i64
  %cloptr144056 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144058 = getelementptr inbounds i64, i64* %cloptr144056, i64 1                ; &eptr144058[1]
  %eptr144059 = getelementptr inbounds i64, i64* %cloptr144056, i64 2                ; &eptr144059[2]
  store i64 %Uty$a, i64* %eptr144058                                                 ; *eptr144058 = %Uty$a
  store i64 %cont142161, i64* %eptr144059                                            ; *eptr144059 = %cont142161
  %eptr144057 = getelementptr inbounds i64, i64* %cloptr144056, i64 0                ; &cloptr144056[0]
  %f144060 = ptrtoint void(i64,i64,i64)* @lam143553 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144060, i64* %eptr144057                                               ; store fptr
  %arg142442 = ptrtoint i64* %cloptr144056 to i64                                    ; closure cast; i64* -> i64
  %cloptr144061 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144063 = getelementptr inbounds i64, i64* %cloptr144061, i64 1                ; &eptr144063[1]
  %eptr144064 = getelementptr inbounds i64, i64* %cloptr144061, i64 2                ; &eptr144064[2]
  store i64 %Uty$a, i64* %eptr144063                                                 ; *eptr144063 = %Uty$a
  store i64 %cont142161, i64* %eptr144064                                            ; *eptr144064 = %cont142161
  %eptr144062 = getelementptr inbounds i64, i64* %cloptr144061, i64 0                ; &cloptr144061[0]
  %f144065 = ptrtoint void(i64,i64,i64)* @lam143536 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144065, i64* %eptr144062                                               ; store fptr
  %arg142441 = ptrtoint i64* %cloptr144061 to i64                                    ; closure cast; i64* -> i64
  %cloptr144066 = inttoptr i64 %arg142443 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144066)                                       ; assert function application
  %i0ptr144067 = getelementptr inbounds i64, i64* %cloptr144066, i64 0               ; &cloptr144066[0]
  %f144069 = load i64, i64* %i0ptr144067, align 8                                    ; load; *i0ptr144067
  %fptr144068 = inttoptr i64 %f144069 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144068(i64 %arg142443, i64 %arg142442, i64 %arg142441); tail call
  ret void
}


define void @lam143556(i64 %env143557, i64 %cont142167, i64 %kpj$k) {
  %arg142445 = add i64 0, 0                                                          ; quoted ()
  %cloptr144070 = inttoptr i64 %cont142167 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144070)                                       ; assert function application
  %i0ptr144071 = getelementptr inbounds i64, i64* %cloptr144070, i64 0               ; &cloptr144070[0]
  %f144073 = load i64, i64* %i0ptr144071, align 8                                    ; load; *i0ptr144071
  %fptr144072 = inttoptr i64 %f144073 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144072(i64 %cont142167, i64 %arg142445, i64 %kpj$k) ; tail call
  ret void
}


define void @lam143553(i64 %env143554, i64 %_95142162, i64 %jN4$cc) {
  %envptr144074 = inttoptr i64 %env143554 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144075 = getelementptr inbounds i64, i64* %envptr144074, i64 2              ; &envptr144074[2]
  %cont142161 = load i64, i64* %envptr144075, align 8                                ; load; *envptr144075
  %envptr144076 = inttoptr i64 %env143554 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144077 = getelementptr inbounds i64, i64* %envptr144076, i64 1              ; &envptr144076[1]
  %Uty$a = load i64, i64* %envptr144077, align 8                                     ; load; *envptr144077
  %arg142447 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142063 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142447)                 ; call prim_vector_45ref
  %a142064 = call i64 @prim_null_63(i64 %a142063)                                    ; call prim_null_63
  %cmp144078 = icmp eq i64 %a142064, 15                                              ; false?
  br i1 %cmp144078, label %else144080, label %then144079                             ; if

then144079:
  %arg142451 = add i64 0, 0                                                          ; quoted ()
  %arg142450 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr144081 = inttoptr i64 %cont142161 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144081)                                       ; assert function application
  %i0ptr144082 = getelementptr inbounds i64, i64* %cloptr144081, i64 0               ; &cloptr144081[0]
  %f144084 = load i64, i64* %i0ptr144082, align 8                                    ; load; *i0ptr144082
  %fptr144083 = inttoptr i64 %f144084 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144083(i64 %cont142161, i64 %arg142451, i64 %arg142450); tail call
  ret void

else144080:
  %arg142453 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142065 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142453)                 ; call prim_vector_45ref
  %a142066 = call i64 @prim_cons_63(i64 %a142065)                                    ; call prim_cons_63
  %cmp144085 = icmp eq i64 %a142066, 15                                              ; false?
  br i1 %cmp144085, label %else144087, label %then144086                             ; if

then144086:
  %arg142456 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142067 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142456)                 ; call prim_vector_45ref
  %retprim142166 = call i64 @prim_cdr(i64 %a142067)                                  ; call prim_cdr
  %cloptr144088 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144090 = getelementptr inbounds i64, i64* %cloptr144088, i64 1                ; &eptr144090[1]
  %eptr144091 = getelementptr inbounds i64, i64* %cloptr144088, i64 2                ; &eptr144091[2]
  %eptr144092 = getelementptr inbounds i64, i64* %cloptr144088, i64 3                ; &eptr144092[3]
  store i64 %jN4$cc, i64* %eptr144090                                                ; *eptr144090 = %jN4$cc
  store i64 %Uty$a, i64* %eptr144091                                                 ; *eptr144091 = %Uty$a
  store i64 %cont142161, i64* %eptr144092                                            ; *eptr144092 = %cont142161
  %eptr144089 = getelementptr inbounds i64, i64* %cloptr144088, i64 0                ; &cloptr144088[0]
  %f144093 = ptrtoint void(i64,i64,i64)* @lam143546 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144093, i64* %eptr144089                                               ; store fptr
  %arg142461 = ptrtoint i64* %cloptr144088 to i64                                    ; closure cast; i64* -> i64
  %arg142460 = add i64 0, 0                                                          ; quoted ()
  %cloptr144094 = inttoptr i64 %arg142461 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144094)                                       ; assert function application
  %i0ptr144095 = getelementptr inbounds i64, i64* %cloptr144094, i64 0               ; &cloptr144094[0]
  %f144097 = load i64, i64* %i0ptr144095, align 8                                    ; load; *i0ptr144095
  %fptr144096 = inttoptr i64 %f144097 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144096(i64 %arg142461, i64 %arg142460, i64 %retprim142166); tail call
  ret void

else144087:
  %arg142475 = add i64 0, 0                                                          ; quoted ()
  %arg142474 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144098 = inttoptr i64 %cont142161 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144098)                                       ; assert function application
  %i0ptr144099 = getelementptr inbounds i64, i64* %cloptr144098, i64 0               ; &cloptr144098[0]
  %f144101 = load i64, i64* %i0ptr144099, align 8                                    ; load; *i0ptr144099
  %fptr144100 = inttoptr i64 %f144101 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144100(i64 %cont142161, i64 %arg142475, i64 %arg142474); tail call
  ret void
}


define void @lam143546(i64 %env143547, i64 %_95142163, i64 %Vso$b) {
  %envptr144102 = inttoptr i64 %env143547 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144103 = getelementptr inbounds i64, i64* %envptr144102, i64 3              ; &envptr144102[3]
  %cont142161 = load i64, i64* %envptr144103, align 8                                ; load; *envptr144103
  %envptr144104 = inttoptr i64 %env143547 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144105 = getelementptr inbounds i64, i64* %envptr144104, i64 2              ; &envptr144104[2]
  %Uty$a = load i64, i64* %envptr144105, align 8                                     ; load; *envptr144105
  %envptr144106 = inttoptr i64 %env143547 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144107 = getelementptr inbounds i64, i64* %envptr144106, i64 1              ; &envptr144106[1]
  %jN4$cc = load i64, i64* %envptr144107, align 8                                    ; load; *envptr144107
  %arg142462 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142068 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142462)                 ; call prim_vector_45ref
  %a142069 = call i64 @prim_cdr(i64 %a142068)                                        ; call prim_cdr
  %arg142466 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142165 = call i64 @prim_vector_45set_33(i64 %Uty$a, i64 %arg142466, i64 %a142069); call prim_vector_45set_33
  %cloptr144108 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144110 = getelementptr inbounds i64, i64* %cloptr144108, i64 1                ; &eptr144110[1]
  %eptr144111 = getelementptr inbounds i64, i64* %cloptr144108, i64 2                ; &eptr144111[2]
  store i64 %jN4$cc, i64* %eptr144110                                                ; *eptr144110 = %jN4$cc
  store i64 %cont142161, i64* %eptr144111                                            ; *eptr144111 = %cont142161
  %eptr144109 = getelementptr inbounds i64, i64* %cloptr144108, i64 0                ; &cloptr144108[0]
  %f144112 = ptrtoint void(i64,i64,i64)* @lam143542 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144112, i64* %eptr144109                                               ; store fptr
  %arg142470 = ptrtoint i64* %cloptr144108 to i64                                    ; closure cast; i64* -> i64
  %arg142469 = add i64 0, 0                                                          ; quoted ()
  %cloptr144113 = inttoptr i64 %arg142470 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144113)                                       ; assert function application
  %i0ptr144114 = getelementptr inbounds i64, i64* %cloptr144113, i64 0               ; &cloptr144113[0]
  %f144116 = load i64, i64* %i0ptr144114, align 8                                    ; load; *i0ptr144114
  %fptr144115 = inttoptr i64 %f144116 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144115(i64 %arg142470, i64 %arg142469, i64 %retprim142165); tail call
  ret void
}


define void @lam143542(i64 %env143543, i64 %_95142164, i64 %t5F$_950) {
  %envptr144117 = inttoptr i64 %env143543 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144118 = getelementptr inbounds i64, i64* %envptr144117, i64 2              ; &envptr144117[2]
  %cont142161 = load i64, i64* %envptr144118, align 8                                ; load; *envptr144118
  %envptr144119 = inttoptr i64 %env143543 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144120 = getelementptr inbounds i64, i64* %envptr144119, i64 1              ; &envptr144119[1]
  %jN4$cc = load i64, i64* %envptr144120, align 8                                    ; load; *envptr144120
  %cloptr144121 = inttoptr i64 %jN4$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144121)                                       ; assert function application
  %i0ptr144122 = getelementptr inbounds i64, i64* %cloptr144121, i64 0               ; &cloptr144121[0]
  %f144124 = load i64, i64* %i0ptr144122, align 8                                    ; load; *i0ptr144122
  %fptr144123 = inttoptr i64 %f144124 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144123(i64 %jN4$cc, i64 %cont142161, i64 %jN4$cc)   ; tail call
  ret void
}


define void @lam143536(i64 %env143537, i64 %_95142162, i64 %jN4$cc) {
  %envptr144125 = inttoptr i64 %env143537 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144126 = getelementptr inbounds i64, i64* %envptr144125, i64 2              ; &envptr144125[2]
  %cont142161 = load i64, i64* %envptr144126, align 8                                ; load; *envptr144126
  %envptr144127 = inttoptr i64 %env143537 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144128 = getelementptr inbounds i64, i64* %envptr144127, i64 1              ; &envptr144127[1]
  %Uty$a = load i64, i64* %envptr144128, align 8                                     ; load; *envptr144128
  %arg142477 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142063 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142477)                 ; call prim_vector_45ref
  %a142064 = call i64 @prim_null_63(i64 %a142063)                                    ; call prim_null_63
  %cmp144129 = icmp eq i64 %a142064, 15                                              ; false?
  br i1 %cmp144129, label %else144131, label %then144130                             ; if

then144130:
  %arg142481 = add i64 0, 0                                                          ; quoted ()
  %arg142480 = call i64 @const_init_true()                                           ; quoted #t
  %cloptr144132 = inttoptr i64 %cont142161 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144132)                                       ; assert function application
  %i0ptr144133 = getelementptr inbounds i64, i64* %cloptr144132, i64 0               ; &cloptr144132[0]
  %f144135 = load i64, i64* %i0ptr144133, align 8                                    ; load; *i0ptr144133
  %fptr144134 = inttoptr i64 %f144135 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144134(i64 %cont142161, i64 %arg142481, i64 %arg142480); tail call
  ret void

else144131:
  %arg142483 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142065 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142483)                 ; call prim_vector_45ref
  %a142066 = call i64 @prim_cons_63(i64 %a142065)                                    ; call prim_cons_63
  %cmp144136 = icmp eq i64 %a142066, 15                                              ; false?
  br i1 %cmp144136, label %else144138, label %then144137                             ; if

then144137:
  %arg142486 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142067 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142486)                 ; call prim_vector_45ref
  %retprim142166 = call i64 @prim_cdr(i64 %a142067)                                  ; call prim_cdr
  %cloptr144139 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144141 = getelementptr inbounds i64, i64* %cloptr144139, i64 1                ; &eptr144141[1]
  %eptr144142 = getelementptr inbounds i64, i64* %cloptr144139, i64 2                ; &eptr144142[2]
  %eptr144143 = getelementptr inbounds i64, i64* %cloptr144139, i64 3                ; &eptr144143[3]
  store i64 %jN4$cc, i64* %eptr144141                                                ; *eptr144141 = %jN4$cc
  store i64 %Uty$a, i64* %eptr144142                                                 ; *eptr144142 = %Uty$a
  store i64 %cont142161, i64* %eptr144143                                            ; *eptr144143 = %cont142161
  %eptr144140 = getelementptr inbounds i64, i64* %cloptr144139, i64 0                ; &cloptr144139[0]
  %f144144 = ptrtoint void(i64,i64,i64)* @lam143529 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144144, i64* %eptr144140                                               ; store fptr
  %arg142491 = ptrtoint i64* %cloptr144139 to i64                                    ; closure cast; i64* -> i64
  %arg142490 = add i64 0, 0                                                          ; quoted ()
  %cloptr144145 = inttoptr i64 %arg142491 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144145)                                       ; assert function application
  %i0ptr144146 = getelementptr inbounds i64, i64* %cloptr144145, i64 0               ; &cloptr144145[0]
  %f144148 = load i64, i64* %i0ptr144146, align 8                                    ; load; *i0ptr144146
  %fptr144147 = inttoptr i64 %f144148 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144147(i64 %arg142491, i64 %arg142490, i64 %retprim142166); tail call
  ret void

else144138:
  %arg142505 = add i64 0, 0                                                          ; quoted ()
  %arg142504 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144149 = inttoptr i64 %cont142161 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144149)                                       ; assert function application
  %i0ptr144150 = getelementptr inbounds i64, i64* %cloptr144149, i64 0               ; &cloptr144149[0]
  %f144152 = load i64, i64* %i0ptr144150, align 8                                    ; load; *i0ptr144150
  %fptr144151 = inttoptr i64 %f144152 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144151(i64 %cont142161, i64 %arg142505, i64 %arg142504); tail call
  ret void
}


define void @lam143529(i64 %env143530, i64 %_95142163, i64 %Vso$b) {
  %envptr144153 = inttoptr i64 %env143530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144154 = getelementptr inbounds i64, i64* %envptr144153, i64 3              ; &envptr144153[3]
  %cont142161 = load i64, i64* %envptr144154, align 8                                ; load; *envptr144154
  %envptr144155 = inttoptr i64 %env143530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144156 = getelementptr inbounds i64, i64* %envptr144155, i64 2              ; &envptr144155[2]
  %Uty$a = load i64, i64* %envptr144156, align 8                                     ; load; *envptr144156
  %envptr144157 = inttoptr i64 %env143530 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144158 = getelementptr inbounds i64, i64* %envptr144157, i64 1              ; &envptr144157[1]
  %jN4$cc = load i64, i64* %envptr144158, align 8                                    ; load; *envptr144158
  %arg142492 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142068 = call i64 @prim_vector_45ref(i64 %Uty$a, i64 %arg142492)                 ; call prim_vector_45ref
  %a142069 = call i64 @prim_cdr(i64 %a142068)                                        ; call prim_cdr
  %arg142496 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142165 = call i64 @prim_vector_45set_33(i64 %Uty$a, i64 %arg142496, i64 %a142069); call prim_vector_45set_33
  %cloptr144159 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144161 = getelementptr inbounds i64, i64* %cloptr144159, i64 1                ; &eptr144161[1]
  %eptr144162 = getelementptr inbounds i64, i64* %cloptr144159, i64 2                ; &eptr144162[2]
  store i64 %jN4$cc, i64* %eptr144161                                                ; *eptr144161 = %jN4$cc
  store i64 %cont142161, i64* %eptr144162                                            ; *eptr144162 = %cont142161
  %eptr144160 = getelementptr inbounds i64, i64* %cloptr144159, i64 0                ; &cloptr144159[0]
  %f144163 = ptrtoint void(i64,i64,i64)* @lam143525 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144163, i64* %eptr144160                                               ; store fptr
  %arg142500 = ptrtoint i64* %cloptr144159 to i64                                    ; closure cast; i64* -> i64
  %arg142499 = add i64 0, 0                                                          ; quoted ()
  %cloptr144164 = inttoptr i64 %arg142500 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144164)                                       ; assert function application
  %i0ptr144165 = getelementptr inbounds i64, i64* %cloptr144164, i64 0               ; &cloptr144164[0]
  %f144167 = load i64, i64* %i0ptr144165, align 8                                    ; load; *i0ptr144165
  %fptr144166 = inttoptr i64 %f144167 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144166(i64 %arg142500, i64 %arg142499, i64 %retprim142165); tail call
  ret void
}


define void @lam143525(i64 %env143526, i64 %_95142164, i64 %t5F$_950) {
  %envptr144168 = inttoptr i64 %env143526 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144169 = getelementptr inbounds i64, i64* %envptr144168, i64 2              ; &envptr144168[2]
  %cont142161 = load i64, i64* %envptr144169, align 8                                ; load; *envptr144169
  %envptr144170 = inttoptr i64 %env143526 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144171 = getelementptr inbounds i64, i64* %envptr144170, i64 1              ; &envptr144170[1]
  %jN4$cc = load i64, i64* %envptr144171, align 8                                    ; load; *envptr144171
  %cloptr144172 = inttoptr i64 %jN4$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144172)                                       ; assert function application
  %i0ptr144173 = getelementptr inbounds i64, i64* %cloptr144172, i64 0               ; &cloptr144172[0]
  %f144175 = load i64, i64* %i0ptr144173, align 8                                    ; load; *i0ptr144173
  %fptr144174 = inttoptr i64 %f144175 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144174(i64 %jN4$cc, i64 %cont142161, i64 %jN4$cc)   ; tail call
  ret void
}


define void @lam143519(i64 %env143520, i64 %cont142168, i64 %C1t$lst, i64 %hU6$n) {
  %arg142508 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %yUv$lst = call i64 @prim_make_45vector(i64 %arg142508, i64 %C1t$lst)              ; call prim_make_45vector
  %arg142510 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %qV1$n = call i64 @prim_make_45vector(i64 %arg142510, i64 %hU6$n)                  ; call prim_make_45vector
  %cloptr144176 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144177 = getelementptr inbounds i64, i64* %cloptr144176, i64 0                ; &cloptr144176[0]
  %f144178 = ptrtoint void(i64,i64,i64)* @lam143515 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144178, i64* %eptr144177                                               ; store fptr
  %arg142513 = ptrtoint i64* %cloptr144176 to i64                                    ; closure cast; i64* -> i64
  %cloptr144179 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144181 = getelementptr inbounds i64, i64* %cloptr144179, i64 1                ; &eptr144181[1]
  %eptr144182 = getelementptr inbounds i64, i64* %cloptr144179, i64 2                ; &eptr144182[2]
  %eptr144183 = getelementptr inbounds i64, i64* %cloptr144179, i64 3                ; &eptr144183[3]
  store i64 %yUv$lst, i64* %eptr144181                                               ; *eptr144181 = %yUv$lst
  store i64 %cont142168, i64* %eptr144182                                            ; *eptr144182 = %cont142168
  store i64 %qV1$n, i64* %eptr144183                                                 ; *eptr144183 = %qV1$n
  %eptr144180 = getelementptr inbounds i64, i64* %cloptr144179, i64 0                ; &cloptr144179[0]
  %f144184 = ptrtoint void(i64,i64,i64)* @lam143513 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144184, i64* %eptr144180                                               ; store fptr
  %arg142512 = ptrtoint i64* %cloptr144179 to i64                                    ; closure cast; i64* -> i64
  %cloptr144185 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144187 = getelementptr inbounds i64, i64* %cloptr144185, i64 1                ; &eptr144187[1]
  %eptr144188 = getelementptr inbounds i64, i64* %cloptr144185, i64 2                ; &eptr144188[2]
  %eptr144189 = getelementptr inbounds i64, i64* %cloptr144185, i64 3                ; &eptr144189[3]
  store i64 %yUv$lst, i64* %eptr144187                                               ; *eptr144187 = %yUv$lst
  store i64 %cont142168, i64* %eptr144188                                            ; *eptr144188 = %cont142168
  store i64 %qV1$n, i64* %eptr144189                                                 ; *eptr144189 = %qV1$n
  %eptr144186 = getelementptr inbounds i64, i64* %cloptr144185, i64 0                ; &cloptr144185[0]
  %f144190 = ptrtoint void(i64,i64,i64)* @lam143496 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144190, i64* %eptr144186                                               ; store fptr
  %arg142511 = ptrtoint i64* %cloptr144185 to i64                                    ; closure cast; i64* -> i64
  %cloptr144191 = inttoptr i64 %arg142513 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144191)                                       ; assert function application
  %i0ptr144192 = getelementptr inbounds i64, i64* %cloptr144191, i64 0               ; &cloptr144191[0]
  %f144194 = load i64, i64* %i0ptr144192, align 8                                    ; load; *i0ptr144192
  %fptr144193 = inttoptr i64 %f144194 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144193(i64 %arg142513, i64 %arg142512, i64 %arg142511); tail call
  ret void
}


define void @lam143515(i64 %env143516, i64 %cont142175, i64 %ldF$u) {
  %cloptr144195 = inttoptr i64 %ldF$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144195)                                       ; assert function application
  %i0ptr144196 = getelementptr inbounds i64, i64* %cloptr144195, i64 0               ; &cloptr144195[0]
  %f144198 = load i64, i64* %i0ptr144196, align 8                                    ; load; *i0ptr144196
  %fptr144197 = inttoptr i64 %f144198 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144197(i64 %ldF$u, i64 %cont142175, i64 %ldF$u)     ; tail call
  ret void
}


define void @lam143513(i64 %env143514, i64 %_95142169, i64 %i4E$cc) {
  %envptr144199 = inttoptr i64 %env143514 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144200 = getelementptr inbounds i64, i64* %envptr144199, i64 3              ; &envptr144199[3]
  %qV1$n = load i64, i64* %envptr144200, align 8                                     ; load; *envptr144200
  %envptr144201 = inttoptr i64 %env143514 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144202 = getelementptr inbounds i64, i64* %envptr144201, i64 2              ; &envptr144201[2]
  %cont142168 = load i64, i64* %envptr144202, align 8                                ; load; *envptr144202
  %envptr144203 = inttoptr i64 %env143514 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144204 = getelementptr inbounds i64, i64* %envptr144203, i64 1              ; &envptr144203[1]
  %yUv$lst = load i64, i64* %envptr144204, align 8                                   ; load; *envptr144204
  %arg142517 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142070 = call i64 @prim_vector_45ref(i64 %qV1$n, i64 %arg142517)                 ; call prim_vector_45ref
  %arg142520 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142071 = call i64 @prim__61(i64 %arg142520, i64 %a142070)                        ; call prim__61
  %cmp144205 = icmp eq i64 %a142071, 15                                              ; false?
  br i1 %cmp144205, label %else144207, label %then144206                             ; if

then144206:
  %arg142521 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142170 = call i64 @prim_vector_45ref(i64 %yUv$lst, i64 %arg142521)         ; call prim_vector_45ref
  %arg142524 = add i64 0, 0                                                          ; quoted ()
  %cloptr144208 = inttoptr i64 %cont142168 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144208)                                       ; assert function application
  %i0ptr144209 = getelementptr inbounds i64, i64* %cloptr144208, i64 0               ; &cloptr144208[0]
  %f144211 = load i64, i64* %i0ptr144209, align 8                                    ; load; *i0ptr144209
  %fptr144210 = inttoptr i64 %f144211 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144210(i64 %cont142168, i64 %arg142524, i64 %retprim142170); tail call
  ret void

else144207:
  %arg142526 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142072 = call i64 @prim_vector_45ref(i64 %yUv$lst, i64 %arg142526)               ; call prim_vector_45ref
  %a142073 = call i64 @prim_cdr(i64 %a142072)                                        ; call prim_cdr
  %arg142530 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142174 = call i64 @prim_vector_45set_33(i64 %yUv$lst, i64 %arg142530, i64 %a142073); call prim_vector_45set_33
  %cloptr144212 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144214 = getelementptr inbounds i64, i64* %cloptr144212, i64 1                ; &eptr144214[1]
  %eptr144215 = getelementptr inbounds i64, i64* %cloptr144212, i64 2                ; &eptr144215[2]
  %eptr144216 = getelementptr inbounds i64, i64* %cloptr144212, i64 3                ; &eptr144216[3]
  store i64 %cont142168, i64* %eptr144214                                            ; *eptr144214 = %cont142168
  store i64 %i4E$cc, i64* %eptr144215                                                ; *eptr144215 = %i4E$cc
  store i64 %qV1$n, i64* %eptr144216                                                 ; *eptr144216 = %qV1$n
  %eptr144213 = getelementptr inbounds i64, i64* %cloptr144212, i64 0                ; &cloptr144212[0]
  %f144217 = ptrtoint void(i64,i64,i64)* @lam143507 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144217, i64* %eptr144213                                               ; store fptr
  %arg142534 = ptrtoint i64* %cloptr144212 to i64                                    ; closure cast; i64* -> i64
  %arg142533 = add i64 0, 0                                                          ; quoted ()
  %cloptr144218 = inttoptr i64 %arg142534 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144218)                                       ; assert function application
  %i0ptr144219 = getelementptr inbounds i64, i64* %cloptr144218, i64 0               ; &cloptr144218[0]
  %f144221 = load i64, i64* %i0ptr144219, align 8                                    ; load; *i0ptr144219
  %fptr144220 = inttoptr i64 %f144221 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144220(i64 %arg142534, i64 %arg142533, i64 %retprim142174); tail call
  ret void
}


define void @lam143507(i64 %env143508, i64 %_95142171, i64 %GFT$_950) {
  %envptr144222 = inttoptr i64 %env143508 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144223 = getelementptr inbounds i64, i64* %envptr144222, i64 3              ; &envptr144222[3]
  %qV1$n = load i64, i64* %envptr144223, align 8                                     ; load; *envptr144223
  %envptr144224 = inttoptr i64 %env143508 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144225 = getelementptr inbounds i64, i64* %envptr144224, i64 2              ; &envptr144224[2]
  %i4E$cc = load i64, i64* %envptr144225, align 8                                    ; load; *envptr144225
  %envptr144226 = inttoptr i64 %env143508 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144227 = getelementptr inbounds i64, i64* %envptr144226, i64 1              ; &envptr144226[1]
  %cont142168 = load i64, i64* %envptr144227, align 8                                ; load; *envptr144227
  %arg142535 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142074 = call i64 @prim_vector_45ref(i64 %qV1$n, i64 %arg142535)                 ; call prim_vector_45ref
  %arg142537 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a142075 = call i64 @prim__45(i64 %a142074, i64 %arg142537)                        ; call prim__45
  %arg142540 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142173 = call i64 @prim_vector_45set_33(i64 %qV1$n, i64 %arg142540, i64 %a142075); call prim_vector_45set_33
  %cloptr144228 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144230 = getelementptr inbounds i64, i64* %cloptr144228, i64 1                ; &eptr144230[1]
  %eptr144231 = getelementptr inbounds i64, i64* %cloptr144228, i64 2                ; &eptr144231[2]
  store i64 %cont142168, i64* %eptr144230                                            ; *eptr144230 = %cont142168
  store i64 %i4E$cc, i64* %eptr144231                                                ; *eptr144231 = %i4E$cc
  %eptr144229 = getelementptr inbounds i64, i64* %cloptr144228, i64 0                ; &cloptr144228[0]
  %f144232 = ptrtoint void(i64,i64,i64)* @lam143502 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144232, i64* %eptr144229                                               ; store fptr
  %arg142544 = ptrtoint i64* %cloptr144228 to i64                                    ; closure cast; i64* -> i64
  %arg142543 = add i64 0, 0                                                          ; quoted ()
  %cloptr144233 = inttoptr i64 %arg142544 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144233)                                       ; assert function application
  %i0ptr144234 = getelementptr inbounds i64, i64* %cloptr144233, i64 0               ; &cloptr144233[0]
  %f144236 = load i64, i64* %i0ptr144234, align 8                                    ; load; *i0ptr144234
  %fptr144235 = inttoptr i64 %f144236 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144235(i64 %arg142544, i64 %arg142543, i64 %retprim142173); tail call
  ret void
}


define void @lam143502(i64 %env143503, i64 %_95142172, i64 %jUd$_951) {
  %envptr144237 = inttoptr i64 %env143503 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144238 = getelementptr inbounds i64, i64* %envptr144237, i64 2              ; &envptr144237[2]
  %i4E$cc = load i64, i64* %envptr144238, align 8                                    ; load; *envptr144238
  %envptr144239 = inttoptr i64 %env143503 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144240 = getelementptr inbounds i64, i64* %envptr144239, i64 1              ; &envptr144239[1]
  %cont142168 = load i64, i64* %envptr144240, align 8                                ; load; *envptr144240
  %cloptr144241 = inttoptr i64 %i4E$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144241)                                       ; assert function application
  %i0ptr144242 = getelementptr inbounds i64, i64* %cloptr144241, i64 0               ; &cloptr144241[0]
  %f144244 = load i64, i64* %i0ptr144242, align 8                                    ; load; *i0ptr144242
  %fptr144243 = inttoptr i64 %f144244 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144243(i64 %i4E$cc, i64 %cont142168, i64 %i4E$cc)   ; tail call
  ret void
}


define void @lam143496(i64 %env143497, i64 %_95142169, i64 %i4E$cc) {
  %envptr144245 = inttoptr i64 %env143497 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144246 = getelementptr inbounds i64, i64* %envptr144245, i64 3              ; &envptr144245[3]
  %qV1$n = load i64, i64* %envptr144246, align 8                                     ; load; *envptr144246
  %envptr144247 = inttoptr i64 %env143497 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144248 = getelementptr inbounds i64, i64* %envptr144247, i64 2              ; &envptr144247[2]
  %cont142168 = load i64, i64* %envptr144248, align 8                                ; load; *envptr144248
  %envptr144249 = inttoptr i64 %env143497 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144250 = getelementptr inbounds i64, i64* %envptr144249, i64 1              ; &envptr144249[1]
  %yUv$lst = load i64, i64* %envptr144250, align 8                                   ; load; *envptr144250
  %arg142548 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142070 = call i64 @prim_vector_45ref(i64 %qV1$n, i64 %arg142548)                 ; call prim_vector_45ref
  %arg142551 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142071 = call i64 @prim__61(i64 %arg142551, i64 %a142070)                        ; call prim__61
  %cmp144251 = icmp eq i64 %a142071, 15                                              ; false?
  br i1 %cmp144251, label %else144253, label %then144252                             ; if

then144252:
  %arg142552 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142170 = call i64 @prim_vector_45ref(i64 %yUv$lst, i64 %arg142552)         ; call prim_vector_45ref
  %arg142555 = add i64 0, 0                                                          ; quoted ()
  %cloptr144254 = inttoptr i64 %cont142168 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144254)                                       ; assert function application
  %i0ptr144255 = getelementptr inbounds i64, i64* %cloptr144254, i64 0               ; &cloptr144254[0]
  %f144257 = load i64, i64* %i0ptr144255, align 8                                    ; load; *i0ptr144255
  %fptr144256 = inttoptr i64 %f144257 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144256(i64 %cont142168, i64 %arg142555, i64 %retprim142170); tail call
  ret void

else144253:
  %arg142557 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142072 = call i64 @prim_vector_45ref(i64 %yUv$lst, i64 %arg142557)               ; call prim_vector_45ref
  %a142073 = call i64 @prim_cdr(i64 %a142072)                                        ; call prim_cdr
  %arg142561 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142174 = call i64 @prim_vector_45set_33(i64 %yUv$lst, i64 %arg142561, i64 %a142073); call prim_vector_45set_33
  %cloptr144258 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144260 = getelementptr inbounds i64, i64* %cloptr144258, i64 1                ; &eptr144260[1]
  %eptr144261 = getelementptr inbounds i64, i64* %cloptr144258, i64 2                ; &eptr144261[2]
  %eptr144262 = getelementptr inbounds i64, i64* %cloptr144258, i64 3                ; &eptr144262[3]
  store i64 %cont142168, i64* %eptr144260                                            ; *eptr144260 = %cont142168
  store i64 %i4E$cc, i64* %eptr144261                                                ; *eptr144261 = %i4E$cc
  store i64 %qV1$n, i64* %eptr144262                                                 ; *eptr144262 = %qV1$n
  %eptr144259 = getelementptr inbounds i64, i64* %cloptr144258, i64 0                ; &cloptr144258[0]
  %f144263 = ptrtoint void(i64,i64,i64)* @lam143490 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144263, i64* %eptr144259                                               ; store fptr
  %arg142565 = ptrtoint i64* %cloptr144258 to i64                                    ; closure cast; i64* -> i64
  %arg142564 = add i64 0, 0                                                          ; quoted ()
  %cloptr144264 = inttoptr i64 %arg142565 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144264)                                       ; assert function application
  %i0ptr144265 = getelementptr inbounds i64, i64* %cloptr144264, i64 0               ; &cloptr144264[0]
  %f144267 = load i64, i64* %i0ptr144265, align 8                                    ; load; *i0ptr144265
  %fptr144266 = inttoptr i64 %f144267 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144266(i64 %arg142565, i64 %arg142564, i64 %retprim142174); tail call
  ret void
}


define void @lam143490(i64 %env143491, i64 %_95142171, i64 %GFT$_950) {
  %envptr144268 = inttoptr i64 %env143491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144269 = getelementptr inbounds i64, i64* %envptr144268, i64 3              ; &envptr144268[3]
  %qV1$n = load i64, i64* %envptr144269, align 8                                     ; load; *envptr144269
  %envptr144270 = inttoptr i64 %env143491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144271 = getelementptr inbounds i64, i64* %envptr144270, i64 2              ; &envptr144270[2]
  %i4E$cc = load i64, i64* %envptr144271, align 8                                    ; load; *envptr144271
  %envptr144272 = inttoptr i64 %env143491 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144273 = getelementptr inbounds i64, i64* %envptr144272, i64 1              ; &envptr144272[1]
  %cont142168 = load i64, i64* %envptr144273, align 8                                ; load; *envptr144273
  %arg142566 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142074 = call i64 @prim_vector_45ref(i64 %qV1$n, i64 %arg142566)                 ; call prim_vector_45ref
  %arg142568 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a142075 = call i64 @prim__45(i64 %a142074, i64 %arg142568)                        ; call prim__45
  %arg142571 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142173 = call i64 @prim_vector_45set_33(i64 %qV1$n, i64 %arg142571, i64 %a142075); call prim_vector_45set_33
  %cloptr144274 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144276 = getelementptr inbounds i64, i64* %cloptr144274, i64 1                ; &eptr144276[1]
  %eptr144277 = getelementptr inbounds i64, i64* %cloptr144274, i64 2                ; &eptr144277[2]
  store i64 %cont142168, i64* %eptr144276                                            ; *eptr144276 = %cont142168
  store i64 %i4E$cc, i64* %eptr144277                                                ; *eptr144277 = %i4E$cc
  %eptr144275 = getelementptr inbounds i64, i64* %cloptr144274, i64 0                ; &cloptr144274[0]
  %f144278 = ptrtoint void(i64,i64,i64)* @lam143485 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144278, i64* %eptr144275                                               ; store fptr
  %arg142575 = ptrtoint i64* %cloptr144274 to i64                                    ; closure cast; i64* -> i64
  %arg142574 = add i64 0, 0                                                          ; quoted ()
  %cloptr144279 = inttoptr i64 %arg142575 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144279)                                       ; assert function application
  %i0ptr144280 = getelementptr inbounds i64, i64* %cloptr144279, i64 0               ; &cloptr144279[0]
  %f144282 = load i64, i64* %i0ptr144280, align 8                                    ; load; *i0ptr144280
  %fptr144281 = inttoptr i64 %f144282 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144281(i64 %arg142575, i64 %arg142574, i64 %retprim142173); tail call
  ret void
}


define void @lam143485(i64 %env143486, i64 %_95142172, i64 %jUd$_951) {
  %envptr144283 = inttoptr i64 %env143486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144284 = getelementptr inbounds i64, i64* %envptr144283, i64 2              ; &envptr144283[2]
  %i4E$cc = load i64, i64* %envptr144284, align 8                                    ; load; *envptr144284
  %envptr144285 = inttoptr i64 %env143486 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144286 = getelementptr inbounds i64, i64* %envptr144285, i64 1              ; &envptr144285[1]
  %cont142168 = load i64, i64* %envptr144286, align 8                                ; load; *envptr144286
  %cloptr144287 = inttoptr i64 %i4E$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144287)                                       ; assert function application
  %i0ptr144288 = getelementptr inbounds i64, i64* %cloptr144287, i64 0               ; &cloptr144287[0]
  %f144290 = load i64, i64* %i0ptr144288, align 8                                    ; load; *i0ptr144288
  %fptr144289 = inttoptr i64 %f144290 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144289(i64 %i4E$cc, i64 %cont142168, i64 %i4E$cc)   ; tail call
  ret void
}


define void @lam143479(i64 %env143480, i64 %cont142176, i64 %knc$v, i64 %GD1$lst) {
  %arg142580 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %zGm$lst = call i64 @prim_make_45vector(i64 %arg142580, i64 %GD1$lst)              ; call prim_make_45vector
  %cloptr144291 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144292 = getelementptr inbounds i64, i64* %cloptr144291, i64 0                ; &cloptr144291[0]
  %f144293 = ptrtoint void(i64,i64,i64)* @lam143476 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144293, i64* %eptr144292                                               ; store fptr
  %arg142583 = ptrtoint i64* %cloptr144291 to i64                                    ; closure cast; i64* -> i64
  %cloptr144294 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144296 = getelementptr inbounds i64, i64* %cloptr144294, i64 1                ; &eptr144296[1]
  %eptr144297 = getelementptr inbounds i64, i64* %cloptr144294, i64 2                ; &eptr144297[2]
  %eptr144298 = getelementptr inbounds i64, i64* %cloptr144294, i64 3                ; &eptr144298[3]
  store i64 %knc$v, i64* %eptr144296                                                 ; *eptr144296 = %knc$v
  store i64 %zGm$lst, i64* %eptr144297                                               ; *eptr144297 = %zGm$lst
  store i64 %cont142176, i64* %eptr144298                                            ; *eptr144298 = %cont142176
  %eptr144295 = getelementptr inbounds i64, i64* %cloptr144294, i64 0                ; &cloptr144294[0]
  %f144299 = ptrtoint void(i64,i64,i64)* @lam143474 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144299, i64* %eptr144295                                               ; store fptr
  %arg142582 = ptrtoint i64* %cloptr144294 to i64                                    ; closure cast; i64* -> i64
  %cloptr144300 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144302 = getelementptr inbounds i64, i64* %cloptr144300, i64 1                ; &eptr144302[1]
  %eptr144303 = getelementptr inbounds i64, i64* %cloptr144300, i64 2                ; &eptr144303[2]
  %eptr144304 = getelementptr inbounds i64, i64* %cloptr144300, i64 3                ; &eptr144304[3]
  store i64 %knc$v, i64* %eptr144302                                                 ; *eptr144302 = %knc$v
  store i64 %zGm$lst, i64* %eptr144303                                               ; *eptr144303 = %zGm$lst
  store i64 %cont142176, i64* %eptr144304                                            ; *eptr144304 = %cont142176
  %eptr144301 = getelementptr inbounds i64, i64* %cloptr144300, i64 0                ; &cloptr144300[0]
  %f144305 = ptrtoint void(i64,i64,i64)* @lam143461 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144305, i64* %eptr144301                                               ; store fptr
  %arg142581 = ptrtoint i64* %cloptr144300 to i64                                    ; closure cast; i64* -> i64
  %cloptr144306 = inttoptr i64 %arg142583 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144306)                                       ; assert function application
  %i0ptr144307 = getelementptr inbounds i64, i64* %cloptr144306, i64 0               ; &cloptr144306[0]
  %f144309 = load i64, i64* %i0ptr144307, align 8                                    ; load; *i0ptr144307
  %fptr144308 = inttoptr i64 %f144309 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144308(i64 %arg142583, i64 %arg142582, i64 %arg142581); tail call
  ret void
}


define void @lam143476(i64 %env143477, i64 %cont142181, i64 %qPz$u) {
  %cloptr144310 = inttoptr i64 %qPz$u to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144310)                                       ; assert function application
  %i0ptr144311 = getelementptr inbounds i64, i64* %cloptr144310, i64 0               ; &cloptr144310[0]
  %f144313 = load i64, i64* %i0ptr144311, align 8                                    ; load; *i0ptr144311
  %fptr144312 = inttoptr i64 %f144313 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144312(i64 %qPz$u, i64 %cont142181, i64 %qPz$u)     ; tail call
  ret void
}


define void @lam143474(i64 %env143475, i64 %_95142177, i64 %TnA$cc) {
  %envptr144314 = inttoptr i64 %env143475 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144315 = getelementptr inbounds i64, i64* %envptr144314, i64 3              ; &envptr144314[3]
  %cont142176 = load i64, i64* %envptr144315, align 8                                ; load; *envptr144315
  %envptr144316 = inttoptr i64 %env143475 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144317 = getelementptr inbounds i64, i64* %envptr144316, i64 2              ; &envptr144316[2]
  %zGm$lst = load i64, i64* %envptr144317, align 8                                   ; load; *envptr144317
  %envptr144318 = inttoptr i64 %env143475 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144319 = getelementptr inbounds i64, i64* %envptr144318, i64 1              ; &envptr144318[1]
  %knc$v = load i64, i64* %envptr144319, align 8                                     ; load; *envptr144319
  %arg142587 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142076 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142587)               ; call prim_vector_45ref
  %a142077 = call i64 @prim_null_63(i64 %a142076)                                    ; call prim_null_63
  %cmp144320 = icmp eq i64 %a142077, 15                                              ; false?
  br i1 %cmp144320, label %else144322, label %then144321                             ; if

then144321:
  %arg142591 = add i64 0, 0                                                          ; quoted ()
  %arg142590 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144323 = inttoptr i64 %cont142176 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144323)                                       ; assert function application
  %i0ptr144324 = getelementptr inbounds i64, i64* %cloptr144323, i64 0               ; &cloptr144323[0]
  %f144326 = load i64, i64* %i0ptr144324, align 8                                    ; load; *i0ptr144324
  %fptr144325 = inttoptr i64 %f144326 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144325(i64 %cont142176, i64 %arg142591, i64 %arg142590); tail call
  ret void

else144322:
  %arg142593 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142078 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142593)               ; call prim_vector_45ref
  %a142079 = call i64 @prim_car(i64 %a142078)                                        ; call prim_car
  %a142080 = call i64 @prim_eqv_63(i64 %a142079, i64 %knc$v)                         ; call prim_eqv_63
  %cmp144327 = icmp eq i64 %a142080, 15                                              ; false?
  br i1 %cmp144327, label %else144329, label %then144328                             ; if

then144328:
  %arg142598 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142178 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142598)         ; call prim_vector_45ref
  %arg142601 = add i64 0, 0                                                          ; quoted ()
  %cloptr144330 = inttoptr i64 %cont142176 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144330)                                       ; assert function application
  %i0ptr144331 = getelementptr inbounds i64, i64* %cloptr144330, i64 0               ; &cloptr144330[0]
  %f144333 = load i64, i64* %i0ptr144331, align 8                                    ; load; *i0ptr144331
  %fptr144332 = inttoptr i64 %f144333 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144332(i64 %cont142176, i64 %arg142601, i64 %retprim142178); tail call
  ret void

else144329:
  %arg142603 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142081 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142603)               ; call prim_vector_45ref
  %a142082 = call i64 @prim_cdr(i64 %a142081)                                        ; call prim_cdr
  %arg142607 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142180 = call i64 @prim_vector_45set_33(i64 %zGm$lst, i64 %arg142607, i64 %a142082); call prim_vector_45set_33
  %cloptr144334 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144336 = getelementptr inbounds i64, i64* %cloptr144334, i64 1                ; &eptr144336[1]
  %eptr144337 = getelementptr inbounds i64, i64* %cloptr144334, i64 2                ; &eptr144337[2]
  store i64 %TnA$cc, i64* %eptr144336                                                ; *eptr144336 = %TnA$cc
  store i64 %cont142176, i64* %eptr144337                                            ; *eptr144337 = %cont142176
  %eptr144335 = getelementptr inbounds i64, i64* %cloptr144334, i64 0                ; &cloptr144334[0]
  %f144338 = ptrtoint void(i64,i64,i64)* @lam143468 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144338, i64* %eptr144335                                               ; store fptr
  %arg142611 = ptrtoint i64* %cloptr144334 to i64                                    ; closure cast; i64* -> i64
  %arg142610 = add i64 0, 0                                                          ; quoted ()
  %cloptr144339 = inttoptr i64 %arg142611 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144339)                                       ; assert function application
  %i0ptr144340 = getelementptr inbounds i64, i64* %cloptr144339, i64 0               ; &cloptr144339[0]
  %f144342 = load i64, i64* %i0ptr144340, align 8                                    ; load; *i0ptr144340
  %fptr144341 = inttoptr i64 %f144342 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144341(i64 %arg142611, i64 %arg142610, i64 %retprim142180); tail call
  ret void
}


define void @lam143468(i64 %env143469, i64 %_95142179, i64 %s5m$_950) {
  %envptr144343 = inttoptr i64 %env143469 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144344 = getelementptr inbounds i64, i64* %envptr144343, i64 2              ; &envptr144343[2]
  %cont142176 = load i64, i64* %envptr144344, align 8                                ; load; *envptr144344
  %envptr144345 = inttoptr i64 %env143469 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144346 = getelementptr inbounds i64, i64* %envptr144345, i64 1              ; &envptr144345[1]
  %TnA$cc = load i64, i64* %envptr144346, align 8                                    ; load; *envptr144346
  %cloptr144347 = inttoptr i64 %TnA$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144347)                                       ; assert function application
  %i0ptr144348 = getelementptr inbounds i64, i64* %cloptr144347, i64 0               ; &cloptr144347[0]
  %f144350 = load i64, i64* %i0ptr144348, align 8                                    ; load; *i0ptr144348
  %fptr144349 = inttoptr i64 %f144350 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144349(i64 %TnA$cc, i64 %cont142176, i64 %TnA$cc)   ; tail call
  ret void
}


define void @lam143461(i64 %env143462, i64 %_95142177, i64 %TnA$cc) {
  %envptr144351 = inttoptr i64 %env143462 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144352 = getelementptr inbounds i64, i64* %envptr144351, i64 3              ; &envptr144351[3]
  %cont142176 = load i64, i64* %envptr144352, align 8                                ; load; *envptr144352
  %envptr144353 = inttoptr i64 %env143462 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144354 = getelementptr inbounds i64, i64* %envptr144353, i64 2              ; &envptr144353[2]
  %zGm$lst = load i64, i64* %envptr144354, align 8                                   ; load; *envptr144354
  %envptr144355 = inttoptr i64 %env143462 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144356 = getelementptr inbounds i64, i64* %envptr144355, i64 1              ; &envptr144355[1]
  %knc$v = load i64, i64* %envptr144356, align 8                                     ; load; *envptr144356
  %arg142615 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142076 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142615)               ; call prim_vector_45ref
  %a142077 = call i64 @prim_null_63(i64 %a142076)                                    ; call prim_null_63
  %cmp144357 = icmp eq i64 %a142077, 15                                              ; false?
  br i1 %cmp144357, label %else144359, label %then144358                             ; if

then144358:
  %arg142619 = add i64 0, 0                                                          ; quoted ()
  %arg142618 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144360 = inttoptr i64 %cont142176 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144360)                                       ; assert function application
  %i0ptr144361 = getelementptr inbounds i64, i64* %cloptr144360, i64 0               ; &cloptr144360[0]
  %f144363 = load i64, i64* %i0ptr144361, align 8                                    ; load; *i0ptr144361
  %fptr144362 = inttoptr i64 %f144363 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144362(i64 %cont142176, i64 %arg142619, i64 %arg142618); tail call
  ret void

else144359:
  %arg142621 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142078 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142621)               ; call prim_vector_45ref
  %a142079 = call i64 @prim_car(i64 %a142078)                                        ; call prim_car
  %a142080 = call i64 @prim_eqv_63(i64 %a142079, i64 %knc$v)                         ; call prim_eqv_63
  %cmp144364 = icmp eq i64 %a142080, 15                                              ; false?
  br i1 %cmp144364, label %else144366, label %then144365                             ; if

then144365:
  %arg142626 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142178 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142626)         ; call prim_vector_45ref
  %arg142629 = add i64 0, 0                                                          ; quoted ()
  %cloptr144367 = inttoptr i64 %cont142176 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144367)                                       ; assert function application
  %i0ptr144368 = getelementptr inbounds i64, i64* %cloptr144367, i64 0               ; &cloptr144367[0]
  %f144370 = load i64, i64* %i0ptr144368, align 8                                    ; load; *i0ptr144368
  %fptr144369 = inttoptr i64 %f144370 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144369(i64 %cont142176, i64 %arg142629, i64 %retprim142178); tail call
  ret void

else144366:
  %arg142631 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142081 = call i64 @prim_vector_45ref(i64 %zGm$lst, i64 %arg142631)               ; call prim_vector_45ref
  %a142082 = call i64 @prim_cdr(i64 %a142081)                                        ; call prim_cdr
  %arg142635 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142180 = call i64 @prim_vector_45set_33(i64 %zGm$lst, i64 %arg142635, i64 %a142082); call prim_vector_45set_33
  %cloptr144371 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144373 = getelementptr inbounds i64, i64* %cloptr144371, i64 1                ; &eptr144373[1]
  %eptr144374 = getelementptr inbounds i64, i64* %cloptr144371, i64 2                ; &eptr144374[2]
  store i64 %TnA$cc, i64* %eptr144373                                                ; *eptr144373 = %TnA$cc
  store i64 %cont142176, i64* %eptr144374                                            ; *eptr144374 = %cont142176
  %eptr144372 = getelementptr inbounds i64, i64* %cloptr144371, i64 0                ; &cloptr144371[0]
  %f144375 = ptrtoint void(i64,i64,i64)* @lam143455 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144375, i64* %eptr144372                                               ; store fptr
  %arg142639 = ptrtoint i64* %cloptr144371 to i64                                    ; closure cast; i64* -> i64
  %arg142638 = add i64 0, 0                                                          ; quoted ()
  %cloptr144376 = inttoptr i64 %arg142639 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144376)                                       ; assert function application
  %i0ptr144377 = getelementptr inbounds i64, i64* %cloptr144376, i64 0               ; &cloptr144376[0]
  %f144379 = load i64, i64* %i0ptr144377, align 8                                    ; load; *i0ptr144377
  %fptr144378 = inttoptr i64 %f144379 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144378(i64 %arg142639, i64 %arg142638, i64 %retprim142180); tail call
  ret void
}


define void @lam143455(i64 %env143456, i64 %_95142179, i64 %s5m$_950) {
  %envptr144380 = inttoptr i64 %env143456 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144381 = getelementptr inbounds i64, i64* %envptr144380, i64 2              ; &envptr144380[2]
  %cont142176 = load i64, i64* %envptr144381, align 8                                ; load; *envptr144381
  %envptr144382 = inttoptr i64 %env143456 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144383 = getelementptr inbounds i64, i64* %envptr144382, i64 1              ; &envptr144382[1]
  %TnA$cc = load i64, i64* %envptr144383, align 8                                    ; load; *envptr144383
  %cloptr144384 = inttoptr i64 %TnA$cc to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144384)                                       ; assert function application
  %i0ptr144385 = getelementptr inbounds i64, i64* %cloptr144384, i64 0               ; &cloptr144384[0]
  %f144387 = load i64, i64* %i0ptr144385, align 8                                    ; load; *i0ptr144385
  %fptr144386 = inttoptr i64 %f144387 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144386(i64 %TnA$cc, i64 %cont142176, i64 %TnA$cc)   ; tail call
  ret void
}


define void @lam143448(i64 %env143449, i64 %u65$args142183) {
  %envptr144388 = inttoptr i64 %env143449 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144389 = getelementptr inbounds i64, i64* %envptr144388, i64 1              ; &envptr144388[1]
  %tfR$_37foldl1 = load i64, i64* %envptr144389, align 8                             ; load; *envptr144389
  %cont142182 = call i64 @prim_car(i64 %u65$args142183)                              ; call prim_car
  %u65$args = call i64 @prim_cdr(i64 %u65$args142183)                                ; call prim_cdr
  %a142083 = call i64 @prim_null_63(i64 %u65$args)                                   ; call prim_null_63
  %cmp144390 = icmp eq i64 %a142083, 15                                              ; false?
  br i1 %cmp144390, label %else144392, label %then144391                             ; if

then144391:
  %arg142647 = add i64 0, 0                                                          ; quoted ()
  %arg142646 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %cloptr144393 = inttoptr i64 %cont142182 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144393)                                       ; assert function application
  %i0ptr144394 = getelementptr inbounds i64, i64* %cloptr144393, i64 0               ; &cloptr144393[0]
  %f144396 = load i64, i64* %i0ptr144394, align 8                                    ; load; *i0ptr144394
  %fptr144395 = inttoptr i64 %f144396 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144395(i64 %cont142182, i64 %arg142647, i64 %arg142646); tail call
  ret void

else144392:
  %a142084 = call i64 @prim_cdr(i64 %u65$args)                                       ; call prim_cdr
  %a142085 = call i64 @prim_null_63(i64 %a142084)                                    ; call prim_null_63
  %cmp144397 = icmp eq i64 %a142085, 15                                              ; false?
  br i1 %cmp144397, label %else144399, label %then144398                             ; if

then144398:
  %retprim142184 = call i64 @prim_car(i64 %u65$args)                                 ; call prim_car
  %arg142653 = add i64 0, 0                                                          ; quoted ()
  %cloptr144400 = inttoptr i64 %cont142182 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144400)                                       ; assert function application
  %i0ptr144401 = getelementptr inbounds i64, i64* %cloptr144400, i64 0               ; &cloptr144400[0]
  %f144403 = load i64, i64* %i0ptr144401, align 8                                    ; load; *i0ptr144401
  %fptr144402 = inttoptr i64 %f144403 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144402(i64 %cont142182, i64 %arg142653, i64 %retprim142184); tail call
  ret void

else144399:
  %a142086 = call i64 @prim_car(i64 %u65$args)                                       ; call prim_car
  %a142087 = call i64 @prim_cdr(i64 %u65$args)                                       ; call prim_cdr
  %cloptr144404 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144405 = getelementptr inbounds i64, i64* %cloptr144404, i64 0                ; &cloptr144404[0]
  %f144406 = ptrtoint void(i64,i64,i64,i64)* @lam143446 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144406, i64* %eptr144405                                               ; store fptr
  %arg142659 = ptrtoint i64* %cloptr144404 to i64                                    ; closure cast; i64* -> i64
  %cloptr144407 = inttoptr i64 %tfR$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144407)                                       ; assert function application
  %i0ptr144408 = getelementptr inbounds i64, i64* %cloptr144407, i64 0               ; &cloptr144407[0]
  %f144410 = load i64, i64* %i0ptr144408, align 8                                    ; load; *i0ptr144408
  %fptr144409 = inttoptr i64 %f144410 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144409(i64 %tfR$_37foldl1, i64 %cont142182, i64 %arg142659, i64 %a142086, i64 %a142087); tail call
  ret void
}


define void @lam143446(i64 %env143447, i64 %cont142185, i64 %We7$n, i64 %Z4n$v) {
  %retprim142186 = call i64 @prim__47(i64 %Z4n$v, i64 %We7$n)                        ; call prim__47
  %arg142665 = add i64 0, 0                                                          ; quoted ()
  %cloptr144411 = inttoptr i64 %cont142185 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144411)                                       ; assert function application
  %i0ptr144412 = getelementptr inbounds i64, i64* %cloptr144411, i64 0               ; &cloptr144411[0]
  %f144414 = load i64, i64* %i0ptr144412, align 8                                    ; load; *i0ptr144412
  %fptr144413 = inttoptr i64 %f144414 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144413(i64 %cont142185, i64 %arg142665, i64 %retprim142186); tail call
  ret void
}


define void @lam143440(i64 %env143441, i64 %cont142187, i64 %Ol7$x) {
  %retprim142188 = call i64 @prim_car(i64 %Ol7$x)                                    ; call prim_car
  %arg142669 = add i64 0, 0                                                          ; quoted ()
  %cloptr144415 = inttoptr i64 %cont142187 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144415)                                       ; assert function application
  %i0ptr144416 = getelementptr inbounds i64, i64* %cloptr144415, i64 0               ; &cloptr144415[0]
  %f144418 = load i64, i64* %i0ptr144416, align 8                                    ; load; *i0ptr144416
  %fptr144417 = inttoptr i64 %f144418 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144417(i64 %cont142187, i64 %arg142669, i64 %retprim142188); tail call
  ret void
}


define void @lam143437(i64 %env143438, i64 %cont142189, i64 %UW9$x) {
  %a142088 = call i64 @prim_cdr(i64 %UW9$x)                                          ; call prim_cdr
  %retprim142190 = call i64 @prim_car(i64 %a142088)                                  ; call prim_car
  %arg142674 = add i64 0, 0                                                          ; quoted ()
  %cloptr144419 = inttoptr i64 %cont142189 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144419)                                       ; assert function application
  %i0ptr144420 = getelementptr inbounds i64, i64* %cloptr144419, i64 0               ; &cloptr144419[0]
  %f144422 = load i64, i64* %i0ptr144420, align 8                                    ; load; *i0ptr144420
  %fptr144421 = inttoptr i64 %f144422 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144421(i64 %cont142189, i64 %arg142674, i64 %retprim142190); tail call
  ret void
}


define void @lam143434(i64 %env143435, i64 %cont142191, i64 %BzR$x) {
  %a142089 = call i64 @prim_cdr(i64 %BzR$x)                                          ; call prim_cdr
  %a142090 = call i64 @prim_cdr(i64 %a142089)                                        ; call prim_cdr
  %retprim142192 = call i64 @prim_car(i64 %a142090)                                  ; call prim_car
  %arg142680 = add i64 0, 0                                                          ; quoted ()
  %cloptr144423 = inttoptr i64 %cont142191 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144423)                                       ; assert function application
  %i0ptr144424 = getelementptr inbounds i64, i64* %cloptr144423, i64 0               ; &cloptr144423[0]
  %f144426 = load i64, i64* %i0ptr144424, align 8                                    ; load; *i0ptr144424
  %fptr144425 = inttoptr i64 %f144426 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144425(i64 %cont142191, i64 %arg142680, i64 %retprim142192); tail call
  ret void
}


define void @lam143431(i64 %env143432, i64 %cont142193, i64 %wHI$x) {
  %a142091 = call i64 @prim_cdr(i64 %wHI$x)                                          ; call prim_cdr
  %a142092 = call i64 @prim_cdr(i64 %a142091)                                        ; call prim_cdr
  %a142093 = call i64 @prim_cdr(i64 %a142092)                                        ; call prim_cdr
  %retprim142194 = call i64 @prim_car(i64 %a142093)                                  ; call prim_car
  %arg142687 = add i64 0, 0                                                          ; quoted ()
  %cloptr144427 = inttoptr i64 %cont142193 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144427)                                       ; assert function application
  %i0ptr144428 = getelementptr inbounds i64, i64* %cloptr144427, i64 0               ; &cloptr144427[0]
  %f144430 = load i64, i64* %i0ptr144428, align 8                                    ; load; *i0ptr144428
  %fptr144429 = inttoptr i64 %f144430 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144429(i64 %cont142193, i64 %arg142687, i64 %retprim142194); tail call
  ret void
}


define void @lam143428(i64 %env143429, i64 %cont142195, i64 %oBP$p) {
  %a142094 = call i64 @prim_cons_63(i64 %oBP$p)                                      ; call prim_cons_63
  %cmp144431 = icmp eq i64 %a142094, 15                                              ; false?
  br i1 %cmp144431, label %else144433, label %then144432                             ; if

then144432:
  %a142095 = call i64 @prim_car(i64 %oBP$p)                                          ; call prim_car
  %arg142691 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym144434, i32 0, i32 0)); quoted string
  %retprim142196 = call i64 @prim_eq_63(i64 %a142095, i64 %arg142691)                ; call prim_eq_63
  %arg142694 = add i64 0, 0                                                          ; quoted ()
  %cloptr144435 = inttoptr i64 %cont142195 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144435)                                       ; assert function application
  %i0ptr144436 = getelementptr inbounds i64, i64* %cloptr144435, i64 0               ; &cloptr144435[0]
  %f144438 = load i64, i64* %i0ptr144436, align 8                                    ; load; *i0ptr144436
  %fptr144437 = inttoptr i64 %f144438 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144437(i64 %cont142195, i64 %arg142694, i64 %retprim142196); tail call
  ret void

else144433:
  %arg142697 = add i64 0, 0                                                          ; quoted ()
  %arg142696 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr144439 = inttoptr i64 %cont142195 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144439)                                       ; assert function application
  %i0ptr144440 = getelementptr inbounds i64, i64* %cloptr144439, i64 0               ; &cloptr144439[0]
  %f144442 = load i64, i64* %i0ptr144440, align 8                                    ; load; *i0ptr144440
  %fptr144441 = inttoptr i64 %f144442 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144441(i64 %cont142195, i64 %arg142697, i64 %arg142696); tail call
  ret void
}


define void @lam143422(i64 %env143423, i64 %RPk$lst142241) {
  %cont142240 = call i64 @prim_car(i64 %RPk$lst142241)                               ; call prim_car
  %RPk$lst = call i64 @prim_cdr(i64 %RPk$lst142241)                                  ; call prim_cdr
  %arg142704 = add i64 0, 0                                                          ; quoted ()
  %cloptr144443 = inttoptr i64 %cont142240 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144443)                                       ; assert function application
  %i0ptr144444 = getelementptr inbounds i64, i64* %cloptr144443, i64 0               ; &cloptr144443[0]
  %f144446 = load i64, i64* %i0ptr144444, align 8                                    ; load; *i0ptr144444
  %fptr144445 = inttoptr i64 %f144446 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144445(i64 %cont142240, i64 %arg142704, i64 %RPk$lst); tail call
  ret void
}


define void @lam143419(i64 %env143420, i64 %_95142197, i64 %Gei$_37raise_45handler) {
  %envptr144447 = inttoptr i64 %env143420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144448 = getelementptr inbounds i64, i64* %envptr144447, i64 3              ; &envptr144447[3]
  %vBA$_37drop = load i64, i64* %envptr144448, align 8                               ; load; *envptr144448
  %envptr144449 = inttoptr i64 %env143420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144450 = getelementptr inbounds i64, i64* %envptr144449, i64 2              ; &envptr144449[2]
  %Y3e$_37_62 = load i64, i64* %envptr144450, align 8                                ; load; *envptr144450
  %envptr144451 = inttoptr i64 %env143420 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144452 = getelementptr inbounds i64, i64* %envptr144451, i64 1              ; &envptr144451[1]
  %mGC$_37length = load i64, i64* %envptr144452, align 8                             ; load; *envptr144452
  %cloptr144453 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144454 = getelementptr inbounds i64, i64* %cloptr144453, i64 0                ; &cloptr144453[0]
  %f144455 = ptrtoint void(i64,i64)* @lam143417 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144455, i64* %eptr144454                                               ; store fptr
  %arg142707 = ptrtoint i64* %cloptr144453 to i64                                    ; closure cast; i64* -> i64
  %cloptr144456 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144458 = getelementptr inbounds i64, i64* %cloptr144456, i64 1                ; &eptr144458[1]
  %eptr144459 = getelementptr inbounds i64, i64* %cloptr144456, i64 2                ; &eptr144459[2]
  %eptr144460 = getelementptr inbounds i64, i64* %cloptr144456, i64 3                ; &eptr144460[3]
  store i64 %mGC$_37length, i64* %eptr144458                                         ; *eptr144458 = %mGC$_37length
  store i64 %Y3e$_37_62, i64* %eptr144459                                            ; *eptr144459 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144460                                           ; *eptr144460 = %vBA$_37drop
  %eptr144457 = getelementptr inbounds i64, i64* %cloptr144456, i64 0                ; &cloptr144456[0]
  %f144461 = ptrtoint void(i64,i64,i64)* @lam143414 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144461, i64* %eptr144457                                               ; store fptr
  %arg142706 = ptrtoint i64* %cloptr144456 to i64                                    ; closure cast; i64* -> i64
  %rva143165 = add i64 0, 0                                                          ; quoted ()
  %rva143164 = call i64 @prim_cons(i64 %arg142706, i64 %rva143165)                   ; call prim_cons
  %cloptr144462 = inttoptr i64 %arg142707 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144462)                                       ; assert function application
  %i0ptr144463 = getelementptr inbounds i64, i64* %cloptr144462, i64 0               ; &cloptr144462[0]
  %f144465 = load i64, i64* %i0ptr144463, align 8                                    ; load; *i0ptr144463
  %fptr144464 = inttoptr i64 %f144465 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144464(i64 %arg142707, i64 %rva143164)              ; tail call
  ret void
}


define void @lam143417(i64 %env143418, i64 %pz6$lst142239) {
  %cont142238 = call i64 @prim_car(i64 %pz6$lst142239)                               ; call prim_car
  %pz6$lst = call i64 @prim_cdr(i64 %pz6$lst142239)                                  ; call prim_cdr
  %arg142711 = add i64 0, 0                                                          ; quoted ()
  %cloptr144466 = inttoptr i64 %cont142238 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144466)                                       ; assert function application
  %i0ptr144467 = getelementptr inbounds i64, i64* %cloptr144466, i64 0               ; &cloptr144466[0]
  %f144469 = load i64, i64* %i0ptr144467, align 8                                    ; load; *i0ptr144467
  %fptr144468 = inttoptr i64 %f144469 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144468(i64 %cont142238, i64 %arg142711, i64 %pz6$lst); tail call
  ret void
}


define void @lam143414(i64 %env143415, i64 %_95142236, i64 %a142096) {
  %envptr144470 = inttoptr i64 %env143415 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144471 = getelementptr inbounds i64, i64* %envptr144470, i64 3              ; &envptr144470[3]
  %vBA$_37drop = load i64, i64* %envptr144471, align 8                               ; load; *envptr144471
  %envptr144472 = inttoptr i64 %env143415 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144473 = getelementptr inbounds i64, i64* %envptr144472, i64 2              ; &envptr144472[2]
  %Y3e$_37_62 = load i64, i64* %envptr144473, align 8                                ; load; *envptr144473
  %envptr144474 = inttoptr i64 %env143415 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144475 = getelementptr inbounds i64, i64* %envptr144474, i64 1              ; &envptr144474[1]
  %mGC$_37length = load i64, i64* %envptr144475, align 8                             ; load; *envptr144475
  %arg142714 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142237 = call i64 @prim_make_45vector(i64 %arg142714, i64 %a142096)        ; call prim_make_45vector
  %cloptr144476 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144478 = getelementptr inbounds i64, i64* %cloptr144476, i64 1                ; &eptr144478[1]
  %eptr144479 = getelementptr inbounds i64, i64* %cloptr144476, i64 2                ; &eptr144479[2]
  %eptr144480 = getelementptr inbounds i64, i64* %cloptr144476, i64 3                ; &eptr144480[3]
  store i64 %mGC$_37length, i64* %eptr144478                                         ; *eptr144478 = %mGC$_37length
  store i64 %Y3e$_37_62, i64* %eptr144479                                            ; *eptr144479 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144480                                           ; *eptr144480 = %vBA$_37drop
  %eptr144477 = getelementptr inbounds i64, i64* %cloptr144476, i64 0                ; &cloptr144476[0]
  %f144481 = ptrtoint void(i64,i64,i64)* @lam143411 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144481, i64* %eptr144477                                               ; store fptr
  %arg142717 = ptrtoint i64* %cloptr144476 to i64                                    ; closure cast; i64* -> i64
  %arg142716 = add i64 0, 0                                                          ; quoted ()
  %cloptr144482 = inttoptr i64 %arg142717 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144482)                                       ; assert function application
  %i0ptr144483 = getelementptr inbounds i64, i64* %cloptr144482, i64 0               ; &cloptr144482[0]
  %f144485 = load i64, i64* %i0ptr144483, align 8                                    ; load; *i0ptr144483
  %fptr144484 = inttoptr i64 %f144485 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144484(i64 %arg142717, i64 %arg142716, i64 %retprim142237); tail call
  ret void
}


define void @lam143411(i64 %env143412, i64 %_95142198, i64 %ZAo$_37wind_45stack) {
  %envptr144486 = inttoptr i64 %env143412 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144487 = getelementptr inbounds i64, i64* %envptr144486, i64 3              ; &envptr144486[3]
  %vBA$_37drop = load i64, i64* %envptr144487, align 8                               ; load; *envptr144487
  %envptr144488 = inttoptr i64 %env143412 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144489 = getelementptr inbounds i64, i64* %envptr144488, i64 2              ; &envptr144488[2]
  %Y3e$_37_62 = load i64, i64* %envptr144489, align 8                                ; load; *envptr144489
  %envptr144490 = inttoptr i64 %env143412 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144491 = getelementptr inbounds i64, i64* %envptr144490, i64 1              ; &envptr144490[1]
  %mGC$_37length = load i64, i64* %envptr144491, align 8                             ; load; *envptr144491
  %cloptr144492 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144494 = getelementptr inbounds i64, i64* %cloptr144492, i64 1                ; &eptr144494[1]
  %eptr144495 = getelementptr inbounds i64, i64* %cloptr144492, i64 2                ; &eptr144495[2]
  %eptr144496 = getelementptr inbounds i64, i64* %cloptr144492, i64 3                ; &eptr144496[3]
  store i64 %mGC$_37length, i64* %eptr144494                                         ; *eptr144494 = %mGC$_37length
  store i64 %Y3e$_37_62, i64* %eptr144495                                            ; *eptr144495 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144496                                           ; *eptr144496 = %vBA$_37drop
  %eptr144493 = getelementptr inbounds i64, i64* %cloptr144492, i64 0                ; &cloptr144492[0]
  %f144497 = ptrtoint void(i64,i64,i64,i64)* @lam143409 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144497, i64* %eptr144493                                               ; store fptr
  %dsl$_37common_45tail = ptrtoint i64* %cloptr144492 to i64                         ; closure cast; i64* -> i64
  %cloptr144498 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr144500 = getelementptr inbounds i64, i64* %cloptr144498, i64 1                ; &eptr144500[1]
  %eptr144501 = getelementptr inbounds i64, i64* %cloptr144498, i64 2                ; &eptr144501[2]
  store i64 %dsl$_37common_45tail, i64* %eptr144500                                  ; *eptr144500 = %dsl$_37common_45tail
  store i64 %ZAo$_37wind_45stack, i64* %eptr144501                                   ; *eptr144501 = %ZAo$_37wind_45stack
  %eptr144499 = getelementptr inbounds i64, i64* %cloptr144498, i64 0                ; &cloptr144498[0]
  %f144502 = ptrtoint void(i64,i64,i64)* @lam143367 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144502, i64* %eptr144499                                               ; store fptr
  %cte$_37do_45wind = ptrtoint i64* %cloptr144498 to i64                             ; closure cast; i64* -> i64
  %arg142904 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %arg142903 = call i64 @const_init_int(i64 2)                                       ; quoted int
  %arg142902 = call i64 @const_init_int(i64 3)                                       ; quoted int
  call i64 @too_many_args()                                                          ; arity mismatch cdr
  ret void                                                                           ; 
}


define void @lam143409(i64 %env143410, i64 %cont142199, i64 %hHb$x, i64 %Kpz$y) {
  %envptr144503 = inttoptr i64 %env143410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144504 = getelementptr inbounds i64, i64* %envptr144503, i64 3              ; &envptr144503[3]
  %vBA$_37drop = load i64, i64* %envptr144504, align 8                               ; load; *envptr144504
  %envptr144505 = inttoptr i64 %env143410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144506 = getelementptr inbounds i64, i64* %envptr144505, i64 2              ; &envptr144505[2]
  %Y3e$_37_62 = load i64, i64* %envptr144506, align 8                                ; load; *envptr144506
  %envptr144507 = inttoptr i64 %env143410 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144508 = getelementptr inbounds i64, i64* %envptr144507, i64 1              ; &envptr144507[1]
  %mGC$_37length = load i64, i64* %envptr144508, align 8                             ; load; *envptr144508
  %cloptr144509 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr144511 = getelementptr inbounds i64, i64* %cloptr144509, i64 1                ; &eptr144511[1]
  %eptr144512 = getelementptr inbounds i64, i64* %cloptr144509, i64 2                ; &eptr144512[2]
  %eptr144513 = getelementptr inbounds i64, i64* %cloptr144509, i64 3                ; &eptr144513[3]
  %eptr144514 = getelementptr inbounds i64, i64* %cloptr144509, i64 4                ; &eptr144514[4]
  %eptr144515 = getelementptr inbounds i64, i64* %cloptr144509, i64 5                ; &eptr144515[5]
  %eptr144516 = getelementptr inbounds i64, i64* %cloptr144509, i64 6                ; &eptr144516[6]
  store i64 %mGC$_37length, i64* %eptr144511                                         ; *eptr144511 = %mGC$_37length
  store i64 %Y3e$_37_62, i64* %eptr144512                                            ; *eptr144512 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144513                                           ; *eptr144513 = %vBA$_37drop
  store i64 %cont142199, i64* %eptr144514                                            ; *eptr144514 = %cont142199
  store i64 %Kpz$y, i64* %eptr144515                                                 ; *eptr144515 = %Kpz$y
  store i64 %hHb$x, i64* %eptr144516                                                 ; *eptr144516 = %hHb$x
  %eptr144510 = getelementptr inbounds i64, i64* %cloptr144509, i64 0                ; &cloptr144509[0]
  %f144517 = ptrtoint void(i64,i64,i64)* @lam143407 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144517, i64* %eptr144510                                               ; store fptr
  %arg142719 = ptrtoint i64* %cloptr144509 to i64                                    ; closure cast; i64* -> i64
  %cloptr144518 = inttoptr i64 %mGC$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144518)                                       ; assert function application
  %i0ptr144519 = getelementptr inbounds i64, i64* %cloptr144518, i64 0               ; &cloptr144518[0]
  %f144521 = load i64, i64* %i0ptr144519, align 8                                    ; load; *i0ptr144519
  %fptr144520 = inttoptr i64 %f144521 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144520(i64 %mGC$_37length, i64 %arg142719, i64 %hHb$x); tail call
  ret void
}


define void @lam143407(i64 %env143408, i64 %_95142200, i64 %CK2$lx) {
  %envptr144522 = inttoptr i64 %env143408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144523 = getelementptr inbounds i64, i64* %envptr144522, i64 6              ; &envptr144522[6]
  %hHb$x = load i64, i64* %envptr144523, align 8                                     ; load; *envptr144523
  %envptr144524 = inttoptr i64 %env143408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144525 = getelementptr inbounds i64, i64* %envptr144524, i64 5              ; &envptr144524[5]
  %Kpz$y = load i64, i64* %envptr144525, align 8                                     ; load; *envptr144525
  %envptr144526 = inttoptr i64 %env143408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144527 = getelementptr inbounds i64, i64* %envptr144526, i64 4              ; &envptr144526[4]
  %cont142199 = load i64, i64* %envptr144527, align 8                                ; load; *envptr144527
  %envptr144528 = inttoptr i64 %env143408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144529 = getelementptr inbounds i64, i64* %envptr144528, i64 3              ; &envptr144528[3]
  %vBA$_37drop = load i64, i64* %envptr144529, align 8                               ; load; *envptr144529
  %envptr144530 = inttoptr i64 %env143408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144531 = getelementptr inbounds i64, i64* %envptr144530, i64 2              ; &envptr144530[2]
  %Y3e$_37_62 = load i64, i64* %envptr144531, align 8                                ; load; *envptr144531
  %envptr144532 = inttoptr i64 %env143408 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144533 = getelementptr inbounds i64, i64* %envptr144532, i64 1              ; &envptr144532[1]
  %mGC$_37length = load i64, i64* %envptr144533, align 8                             ; load; *envptr144533
  %cloptr144534 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr144536 = getelementptr inbounds i64, i64* %cloptr144534, i64 1                ; &eptr144536[1]
  %eptr144537 = getelementptr inbounds i64, i64* %cloptr144534, i64 2                ; &eptr144537[2]
  %eptr144538 = getelementptr inbounds i64, i64* %cloptr144534, i64 3                ; &eptr144538[3]
  %eptr144539 = getelementptr inbounds i64, i64* %cloptr144534, i64 4                ; &eptr144539[4]
  %eptr144540 = getelementptr inbounds i64, i64* %cloptr144534, i64 5                ; &eptr144540[5]
  %eptr144541 = getelementptr inbounds i64, i64* %cloptr144534, i64 6                ; &eptr144541[6]
  store i64 %Y3e$_37_62, i64* %eptr144536                                            ; *eptr144536 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144537                                           ; *eptr144537 = %vBA$_37drop
  store i64 %CK2$lx, i64* %eptr144538                                                ; *eptr144538 = %CK2$lx
  store i64 %cont142199, i64* %eptr144539                                            ; *eptr144539 = %cont142199
  store i64 %Kpz$y, i64* %eptr144540                                                 ; *eptr144540 = %Kpz$y
  store i64 %hHb$x, i64* %eptr144541                                                 ; *eptr144541 = %hHb$x
  %eptr144535 = getelementptr inbounds i64, i64* %cloptr144534, i64 0                ; &cloptr144534[0]
  %f144542 = ptrtoint void(i64,i64,i64)* @lam143405 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144542, i64* %eptr144535                                               ; store fptr
  %arg142722 = ptrtoint i64* %cloptr144534 to i64                                    ; closure cast; i64* -> i64
  %cloptr144543 = inttoptr i64 %mGC$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144543)                                       ; assert function application
  %i0ptr144544 = getelementptr inbounds i64, i64* %cloptr144543, i64 0               ; &cloptr144543[0]
  %f144546 = load i64, i64* %i0ptr144544, align 8                                    ; load; *i0ptr144544
  %fptr144545 = inttoptr i64 %f144546 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144545(i64 %mGC$_37length, i64 %arg142722, i64 %Kpz$y); tail call
  ret void
}


define void @lam143405(i64 %env143406, i64 %_95142201, i64 %glV$ly) {
  %envptr144547 = inttoptr i64 %env143406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144548 = getelementptr inbounds i64, i64* %envptr144547, i64 6              ; &envptr144547[6]
  %hHb$x = load i64, i64* %envptr144548, align 8                                     ; load; *envptr144548
  %envptr144549 = inttoptr i64 %env143406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144550 = getelementptr inbounds i64, i64* %envptr144549, i64 5              ; &envptr144549[5]
  %Kpz$y = load i64, i64* %envptr144550, align 8                                     ; load; *envptr144550
  %envptr144551 = inttoptr i64 %env143406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144552 = getelementptr inbounds i64, i64* %envptr144551, i64 4              ; &envptr144551[4]
  %cont142199 = load i64, i64* %envptr144552, align 8                                ; load; *envptr144552
  %envptr144553 = inttoptr i64 %env143406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144554 = getelementptr inbounds i64, i64* %envptr144553, i64 3              ; &envptr144553[3]
  %CK2$lx = load i64, i64* %envptr144554, align 8                                    ; load; *envptr144554
  %envptr144555 = inttoptr i64 %env143406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144556 = getelementptr inbounds i64, i64* %envptr144555, i64 2              ; &envptr144555[2]
  %vBA$_37drop = load i64, i64* %envptr144556, align 8                               ; load; *envptr144556
  %envptr144557 = inttoptr i64 %env143406 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144558 = getelementptr inbounds i64, i64* %envptr144557, i64 1              ; &envptr144557[1]
  %Y3e$_37_62 = load i64, i64* %envptr144558, align 8                                ; load; *envptr144558
  %cloptr144559 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144560 = getelementptr inbounds i64, i64* %cloptr144559, i64 0                ; &cloptr144559[0]
  %f144561 = ptrtoint void(i64,i64)* @lam143403 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144561, i64* %eptr144560                                               ; store fptr
  %arg142725 = ptrtoint i64* %cloptr144559 to i64                                    ; closure cast; i64* -> i64
  %cloptr144562 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144564 = getelementptr inbounds i64, i64* %cloptr144562, i64 1                ; &eptr144564[1]
  %eptr144565 = getelementptr inbounds i64, i64* %cloptr144562, i64 2                ; &eptr144565[2]
  %eptr144566 = getelementptr inbounds i64, i64* %cloptr144562, i64 3                ; &eptr144566[3]
  %eptr144567 = getelementptr inbounds i64, i64* %cloptr144562, i64 4                ; &eptr144567[4]
  %eptr144568 = getelementptr inbounds i64, i64* %cloptr144562, i64 5                ; &eptr144568[5]
  %eptr144569 = getelementptr inbounds i64, i64* %cloptr144562, i64 6                ; &eptr144569[6]
  %eptr144570 = getelementptr inbounds i64, i64* %cloptr144562, i64 7                ; &eptr144570[7]
  store i64 %Y3e$_37_62, i64* %eptr144564                                            ; *eptr144564 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144565                                           ; *eptr144565 = %vBA$_37drop
  store i64 %glV$ly, i64* %eptr144566                                                ; *eptr144566 = %glV$ly
  store i64 %CK2$lx, i64* %eptr144567                                                ; *eptr144567 = %CK2$lx
  store i64 %cont142199, i64* %eptr144568                                            ; *eptr144568 = %cont142199
  store i64 %Kpz$y, i64* %eptr144569                                                 ; *eptr144569 = %Kpz$y
  store i64 %hHb$x, i64* %eptr144570                                                 ; *eptr144570 = %hHb$x
  %eptr144563 = getelementptr inbounds i64, i64* %cloptr144562, i64 0                ; &cloptr144562[0]
  %f144571 = ptrtoint void(i64,i64,i64)* @lam143400 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144571, i64* %eptr144563                                               ; store fptr
  %arg142724 = ptrtoint i64* %cloptr144562 to i64                                    ; closure cast; i64* -> i64
  %cloptr144572 = inttoptr i64 %arg142725 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144572)                                       ; assert function application
  %i0ptr144573 = getelementptr inbounds i64, i64* %cloptr144572, i64 0               ; &cloptr144572[0]
  %f144575 = load i64, i64* %i0ptr144573, align 8                                    ; load; *i0ptr144573
  %fptr144574 = inttoptr i64 %f144575 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144574(i64 %arg142725, i64 %arg142724)              ; tail call
  ret void
}


define void @lam143403(i64 %env143404, i64 %ph2$lst142211) {
  %cont142210 = call i64 @prim_car(i64 %ph2$lst142211)                               ; call prim_car
  %ph2$lst = call i64 @prim_cdr(i64 %ph2$lst142211)                                  ; call prim_cdr
  %arg142729 = add i64 0, 0                                                          ; quoted ()
  %cloptr144576 = inttoptr i64 %cont142210 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144576)                                       ; assert function application
  %i0ptr144577 = getelementptr inbounds i64, i64* %cloptr144576, i64 0               ; &cloptr144576[0]
  %f144579 = load i64, i64* %i0ptr144577, align 8                                    ; load; *i0ptr144577
  %fptr144578 = inttoptr i64 %f144579 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144578(i64 %cont142210, i64 %arg142729, i64 %ph2$lst); tail call
  ret void
}


define void @lam143400(i64 %env143401, i64 %_95142208, i64 %a142097) {
  %envptr144580 = inttoptr i64 %env143401 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144581 = getelementptr inbounds i64, i64* %envptr144580, i64 7              ; &envptr144580[7]
  %hHb$x = load i64, i64* %envptr144581, align 8                                     ; load; *envptr144581
  %envptr144582 = inttoptr i64 %env143401 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144583 = getelementptr inbounds i64, i64* %envptr144582, i64 6              ; &envptr144582[6]
  %Kpz$y = load i64, i64* %envptr144583, align 8                                     ; load; *envptr144583
  %envptr144584 = inttoptr i64 %env143401 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144585 = getelementptr inbounds i64, i64* %envptr144584, i64 5              ; &envptr144584[5]
  %cont142199 = load i64, i64* %envptr144585, align 8                                ; load; *envptr144585
  %envptr144586 = inttoptr i64 %env143401 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144587 = getelementptr inbounds i64, i64* %envptr144586, i64 4              ; &envptr144586[4]
  %CK2$lx = load i64, i64* %envptr144587, align 8                                    ; load; *envptr144587
  %envptr144588 = inttoptr i64 %env143401 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144589 = getelementptr inbounds i64, i64* %envptr144588, i64 3              ; &envptr144588[3]
  %glV$ly = load i64, i64* %envptr144589, align 8                                    ; load; *envptr144589
  %envptr144590 = inttoptr i64 %env143401 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144591 = getelementptr inbounds i64, i64* %envptr144590, i64 2              ; &envptr144590[2]
  %vBA$_37drop = load i64, i64* %envptr144591, align 8                               ; load; *envptr144591
  %envptr144592 = inttoptr i64 %env143401 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144593 = getelementptr inbounds i64, i64* %envptr144592, i64 1              ; &envptr144592[1]
  %Y3e$_37_62 = load i64, i64* %envptr144593, align 8                                ; load; *envptr144593
  %arg142732 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142209 = call i64 @prim_make_45vector(i64 %arg142732, i64 %a142097)        ; call prim_make_45vector
  %cloptr144594 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144596 = getelementptr inbounds i64, i64* %cloptr144594, i64 1                ; &eptr144596[1]
  %eptr144597 = getelementptr inbounds i64, i64* %cloptr144594, i64 2                ; &eptr144597[2]
  %eptr144598 = getelementptr inbounds i64, i64* %cloptr144594, i64 3                ; &eptr144598[3]
  %eptr144599 = getelementptr inbounds i64, i64* %cloptr144594, i64 4                ; &eptr144599[4]
  %eptr144600 = getelementptr inbounds i64, i64* %cloptr144594, i64 5                ; &eptr144600[5]
  %eptr144601 = getelementptr inbounds i64, i64* %cloptr144594, i64 6                ; &eptr144601[6]
  %eptr144602 = getelementptr inbounds i64, i64* %cloptr144594, i64 7                ; &eptr144602[7]
  store i64 %Y3e$_37_62, i64* %eptr144596                                            ; *eptr144596 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144597                                           ; *eptr144597 = %vBA$_37drop
  store i64 %glV$ly, i64* %eptr144598                                                ; *eptr144598 = %glV$ly
  store i64 %CK2$lx, i64* %eptr144599                                                ; *eptr144599 = %CK2$lx
  store i64 %cont142199, i64* %eptr144600                                            ; *eptr144600 = %cont142199
  store i64 %Kpz$y, i64* %eptr144601                                                 ; *eptr144601 = %Kpz$y
  store i64 %hHb$x, i64* %eptr144602                                                 ; *eptr144602 = %hHb$x
  %eptr144595 = getelementptr inbounds i64, i64* %cloptr144594, i64 0                ; &cloptr144594[0]
  %f144603 = ptrtoint void(i64,i64,i64)* @lam143397 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144603, i64* %eptr144595                                               ; store fptr
  %arg142735 = ptrtoint i64* %cloptr144594 to i64                                    ; closure cast; i64* -> i64
  %arg142734 = add i64 0, 0                                                          ; quoted ()
  %cloptr144604 = inttoptr i64 %arg142735 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144604)                                       ; assert function application
  %i0ptr144605 = getelementptr inbounds i64, i64* %cloptr144604, i64 0               ; &cloptr144604[0]
  %f144607 = load i64, i64* %i0ptr144605, align 8                                    ; load; *i0ptr144605
  %fptr144606 = inttoptr i64 %f144607 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144606(i64 %arg142735, i64 %arg142734, i64 %retprim142209); tail call
  ret void
}


define void @lam143397(i64 %env143398, i64 %_95142202, i64 %og1$loop) {
  %envptr144608 = inttoptr i64 %env143398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144609 = getelementptr inbounds i64, i64* %envptr144608, i64 7              ; &envptr144608[7]
  %hHb$x = load i64, i64* %envptr144609, align 8                                     ; load; *envptr144609
  %envptr144610 = inttoptr i64 %env143398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144611 = getelementptr inbounds i64, i64* %envptr144610, i64 6              ; &envptr144610[6]
  %Kpz$y = load i64, i64* %envptr144611, align 8                                     ; load; *envptr144611
  %envptr144612 = inttoptr i64 %env143398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144613 = getelementptr inbounds i64, i64* %envptr144612, i64 5              ; &envptr144612[5]
  %cont142199 = load i64, i64* %envptr144613, align 8                                ; load; *envptr144613
  %envptr144614 = inttoptr i64 %env143398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144615 = getelementptr inbounds i64, i64* %envptr144614, i64 4              ; &envptr144614[4]
  %CK2$lx = load i64, i64* %envptr144615, align 8                                    ; load; *envptr144615
  %envptr144616 = inttoptr i64 %env143398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144617 = getelementptr inbounds i64, i64* %envptr144616, i64 3              ; &envptr144616[3]
  %glV$ly = load i64, i64* %envptr144617, align 8                                    ; load; *envptr144617
  %envptr144618 = inttoptr i64 %env143398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144619 = getelementptr inbounds i64, i64* %envptr144618, i64 2              ; &envptr144618[2]
  %vBA$_37drop = load i64, i64* %envptr144619, align 8                               ; load; *envptr144619
  %envptr144620 = inttoptr i64 %env143398 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144621 = getelementptr inbounds i64, i64* %envptr144620, i64 1              ; &envptr144620[1]
  %Y3e$_37_62 = load i64, i64* %envptr144621, align 8                                ; load; *envptr144621
  %arg142737 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr144622 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr144624 = getelementptr inbounds i64, i64* %cloptr144622, i64 1                ; &eptr144624[1]
  store i64 %og1$loop, i64* %eptr144624                                              ; *eptr144624 = %og1$loop
  %eptr144623 = getelementptr inbounds i64, i64* %cloptr144622, i64 0                ; &cloptr144622[0]
  %f144625 = ptrtoint void(i64,i64,i64,i64)* @lam143394 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f144625, i64* %eptr144623                                               ; store fptr
  %arg142736 = ptrtoint i64* %cloptr144622 to i64                                    ; closure cast; i64* -> i64
  %TvQ$_95142001 = call i64 @prim_vector_45set_33(i64 %og1$loop, i64 %arg142737, i64 %arg142736); call prim_vector_45set_33
  %arg142752 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142102 = call i64 @prim_vector_45ref(i64 %og1$loop, i64 %arg142752)              ; call prim_vector_45ref
  %cloptr144626 = call i64* @alloc(i64 72)                                           ; malloc
  %eptr144628 = getelementptr inbounds i64, i64* %cloptr144626, i64 1                ; &eptr144628[1]
  %eptr144629 = getelementptr inbounds i64, i64* %cloptr144626, i64 2                ; &eptr144629[2]
  %eptr144630 = getelementptr inbounds i64, i64* %cloptr144626, i64 3                ; &eptr144630[3]
  %eptr144631 = getelementptr inbounds i64, i64* %cloptr144626, i64 4                ; &eptr144631[4]
  %eptr144632 = getelementptr inbounds i64, i64* %cloptr144626, i64 5                ; &eptr144632[5]
  %eptr144633 = getelementptr inbounds i64, i64* %cloptr144626, i64 6                ; &eptr144633[6]
  %eptr144634 = getelementptr inbounds i64, i64* %cloptr144626, i64 7                ; &eptr144634[7]
  %eptr144635 = getelementptr inbounds i64, i64* %cloptr144626, i64 8                ; &eptr144635[8]
  store i64 %a142102, i64* %eptr144628                                               ; *eptr144628 = %a142102
  store i64 %Y3e$_37_62, i64* %eptr144629                                            ; *eptr144629 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144630                                           ; *eptr144630 = %vBA$_37drop
  store i64 %glV$ly, i64* %eptr144631                                                ; *eptr144631 = %glV$ly
  store i64 %CK2$lx, i64* %eptr144632                                                ; *eptr144632 = %CK2$lx
  store i64 %cont142199, i64* %eptr144633                                            ; *eptr144633 = %cont142199
  store i64 %Kpz$y, i64* %eptr144634                                                 ; *eptr144634 = %Kpz$y
  store i64 %hHb$x, i64* %eptr144635                                                 ; *eptr144635 = %hHb$x
  %eptr144627 = getelementptr inbounds i64, i64* %cloptr144626, i64 0                ; &cloptr144626[0]
  %f144636 = ptrtoint void(i64,i64,i64)* @lam143389 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144636, i64* %eptr144627                                               ; store fptr
  %arg142756 = ptrtoint i64* %cloptr144626 to i64                                    ; closure cast; i64* -> i64
  %cloptr144637 = inttoptr i64 %Y3e$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144637)                                       ; assert function application
  %i0ptr144638 = getelementptr inbounds i64, i64* %cloptr144637, i64 0               ; &cloptr144637[0]
  %f144640 = load i64, i64* %i0ptr144638, align 8                                    ; load; *i0ptr144638
  %fptr144639 = inttoptr i64 %f144640 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144639(i64 %Y3e$_37_62, i64 %arg142756, i64 %CK2$lx, i64 %glV$ly); tail call
  ret void
}


define void @lam143394(i64 %env143395, i64 %cont142203, i64 %amw$x, i64 %kUO$y) {
  %envptr144641 = inttoptr i64 %env143395 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144642 = getelementptr inbounds i64, i64* %envptr144641, i64 1              ; &envptr144641[1]
  %og1$loop = load i64, i64* %envptr144642, align 8                                  ; load; *envptr144642
  %a142098 = call i64 @prim_eq_63(i64 %amw$x, i64 %kUO$y)                            ; call prim_eq_63
  %cmp144643 = icmp eq i64 %a142098, 15                                              ; false?
  br i1 %cmp144643, label %else144645, label %then144644                             ; if

then144644:
  %arg142742 = add i64 0, 0                                                          ; quoted ()
  %cloptr144646 = inttoptr i64 %cont142203 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144646)                                       ; assert function application
  %i0ptr144647 = getelementptr inbounds i64, i64* %cloptr144646, i64 0               ; &cloptr144646[0]
  %f144649 = load i64, i64* %i0ptr144647, align 8                                    ; load; *i0ptr144647
  %fptr144648 = inttoptr i64 %f144649 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144648(i64 %cont142203, i64 %arg142742, i64 %amw$x) ; tail call
  ret void

else144645:
  %arg142744 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142099 = call i64 @prim_vector_45ref(i64 %og1$loop, i64 %arg142744)              ; call prim_vector_45ref
  %a142100 = call i64 @prim_cdr(i64 %amw$x)                                          ; call prim_cdr
  %a142101 = call i64 @prim_cdr(i64 %kUO$y)                                          ; call prim_cdr
  %cloptr144650 = inttoptr i64 %a142099 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144650)                                       ; assert function application
  %i0ptr144651 = getelementptr inbounds i64, i64* %cloptr144650, i64 0               ; &cloptr144650[0]
  %f144653 = load i64, i64* %i0ptr144651, align 8                                    ; load; *i0ptr144651
  %fptr144652 = inttoptr i64 %f144653 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144652(i64 %a142099, i64 %cont142203, i64 %a142100, i64 %a142101); tail call
  ret void
}


define void @lam143389(i64 %env143390, i64 %_95142204, i64 %a142103) {
  %envptr144654 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144655 = getelementptr inbounds i64, i64* %envptr144654, i64 8              ; &envptr144654[8]
  %hHb$x = load i64, i64* %envptr144655, align 8                                     ; load; *envptr144655
  %envptr144656 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144657 = getelementptr inbounds i64, i64* %envptr144656, i64 7              ; &envptr144656[7]
  %Kpz$y = load i64, i64* %envptr144657, align 8                                     ; load; *envptr144657
  %envptr144658 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144659 = getelementptr inbounds i64, i64* %envptr144658, i64 6              ; &envptr144658[6]
  %cont142199 = load i64, i64* %envptr144659, align 8                                ; load; *envptr144659
  %envptr144660 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144661 = getelementptr inbounds i64, i64* %envptr144660, i64 5              ; &envptr144660[5]
  %CK2$lx = load i64, i64* %envptr144661, align 8                                    ; load; *envptr144661
  %envptr144662 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144663 = getelementptr inbounds i64, i64* %envptr144662, i64 4              ; &envptr144662[4]
  %glV$ly = load i64, i64* %envptr144663, align 8                                    ; load; *envptr144663
  %envptr144664 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144665 = getelementptr inbounds i64, i64* %envptr144664, i64 3              ; &envptr144664[3]
  %vBA$_37drop = load i64, i64* %envptr144665, align 8                               ; load; *envptr144665
  %envptr144666 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144667 = getelementptr inbounds i64, i64* %envptr144666, i64 2              ; &envptr144666[2]
  %Y3e$_37_62 = load i64, i64* %envptr144667, align 8                                ; load; *envptr144667
  %envptr144668 = inttoptr i64 %env143390 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144669 = getelementptr inbounds i64, i64* %envptr144668, i64 1              ; &envptr144668[1]
  %a142102 = load i64, i64* %envptr144669, align 8                                   ; load; *envptr144669
  %cmp144670 = icmp eq i64 %a142103, 15                                              ; false?
  br i1 %cmp144670, label %else144672, label %then144671                             ; if

then144671:
  %a142104 = call i64 @prim__45(i64 %CK2$lx, i64 %glV$ly)                            ; call prim__45
  %cloptr144673 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144675 = getelementptr inbounds i64, i64* %cloptr144673, i64 1                ; &eptr144675[1]
  %eptr144676 = getelementptr inbounds i64, i64* %cloptr144673, i64 2                ; &eptr144676[2]
  %eptr144677 = getelementptr inbounds i64, i64* %cloptr144673, i64 3                ; &eptr144677[3]
  %eptr144678 = getelementptr inbounds i64, i64* %cloptr144673, i64 4                ; &eptr144678[4]
  %eptr144679 = getelementptr inbounds i64, i64* %cloptr144673, i64 5                ; &eptr144679[5]
  %eptr144680 = getelementptr inbounds i64, i64* %cloptr144673, i64 6                ; &eptr144680[6]
  %eptr144681 = getelementptr inbounds i64, i64* %cloptr144673, i64 7                ; &eptr144681[7]
  store i64 %a142102, i64* %eptr144675                                               ; *eptr144675 = %a142102
  store i64 %Y3e$_37_62, i64* %eptr144676                                            ; *eptr144676 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144677                                           ; *eptr144677 = %vBA$_37drop
  store i64 %glV$ly, i64* %eptr144678                                                ; *eptr144678 = %glV$ly
  store i64 %CK2$lx, i64* %eptr144679                                                ; *eptr144679 = %CK2$lx
  store i64 %cont142199, i64* %eptr144680                                            ; *eptr144680 = %cont142199
  store i64 %Kpz$y, i64* %eptr144681                                                 ; *eptr144681 = %Kpz$y
  %eptr144674 = getelementptr inbounds i64, i64* %cloptr144673, i64 0                ; &cloptr144673[0]
  %f144682 = ptrtoint void(i64,i64,i64)* @lam143377 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144682, i64* %eptr144674                                               ; store fptr
  %arg142762 = ptrtoint i64* %cloptr144673 to i64                                    ; closure cast; i64* -> i64
  %cloptr144683 = inttoptr i64 %vBA$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144683)                                       ; assert function application
  %i0ptr144684 = getelementptr inbounds i64, i64* %cloptr144683, i64 0               ; &cloptr144683[0]
  %f144686 = load i64, i64* %i0ptr144684, align 8                                    ; load; *i0ptr144684
  %fptr144685 = inttoptr i64 %f144686 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144685(i64 %vBA$_37drop, i64 %arg142762, i64 %hHb$x, i64 %a142104); tail call
  ret void

else144672:
  %cloptr144687 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144689 = getelementptr inbounds i64, i64* %cloptr144687, i64 1                ; &eptr144689[1]
  %eptr144690 = getelementptr inbounds i64, i64* %cloptr144687, i64 2                ; &eptr144690[2]
  %eptr144691 = getelementptr inbounds i64, i64* %cloptr144687, i64 3                ; &eptr144691[3]
  %eptr144692 = getelementptr inbounds i64, i64* %cloptr144687, i64 4                ; &eptr144692[4]
  %eptr144693 = getelementptr inbounds i64, i64* %cloptr144687, i64 5                ; &eptr144693[5]
  %eptr144694 = getelementptr inbounds i64, i64* %cloptr144687, i64 6                ; &eptr144694[6]
  %eptr144695 = getelementptr inbounds i64, i64* %cloptr144687, i64 7                ; &eptr144695[7]
  store i64 %a142102, i64* %eptr144689                                               ; *eptr144689 = %a142102
  store i64 %Y3e$_37_62, i64* %eptr144690                                            ; *eptr144690 = %Y3e$_37_62
  store i64 %vBA$_37drop, i64* %eptr144691                                           ; *eptr144691 = %vBA$_37drop
  store i64 %glV$ly, i64* %eptr144692                                                ; *eptr144692 = %glV$ly
  store i64 %CK2$lx, i64* %eptr144693                                                ; *eptr144693 = %CK2$lx
  store i64 %cont142199, i64* %eptr144694                                            ; *eptr144694 = %cont142199
  store i64 %Kpz$y, i64* %eptr144695                                                 ; *eptr144695 = %Kpz$y
  %eptr144688 = getelementptr inbounds i64, i64* %cloptr144687, i64 0                ; &cloptr144687[0]
  %f144696 = ptrtoint void(i64,i64,i64)* @lam143387 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144696, i64* %eptr144688                                               ; store fptr
  %arg142787 = ptrtoint i64* %cloptr144687 to i64                                    ; closure cast; i64* -> i64
  %arg142786 = add i64 0, 0                                                          ; quoted ()
  %cloptr144697 = inttoptr i64 %arg142787 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144697)                                       ; assert function application
  %i0ptr144698 = getelementptr inbounds i64, i64* %cloptr144697, i64 0               ; &cloptr144697[0]
  %f144700 = load i64, i64* %i0ptr144698, align 8                                    ; load; *i0ptr144698
  %fptr144699 = inttoptr i64 %f144700 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144699(i64 %arg142787, i64 %arg142786, i64 %hHb$x)  ; tail call
  ret void
}


define void @lam143387(i64 %env143388, i64 %_95142205, i64 %a142105) {
  %envptr144701 = inttoptr i64 %env143388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144702 = getelementptr inbounds i64, i64* %envptr144701, i64 7              ; &envptr144701[7]
  %Kpz$y = load i64, i64* %envptr144702, align 8                                     ; load; *envptr144702
  %envptr144703 = inttoptr i64 %env143388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144704 = getelementptr inbounds i64, i64* %envptr144703, i64 6              ; &envptr144703[6]
  %cont142199 = load i64, i64* %envptr144704, align 8                                ; load; *envptr144704
  %envptr144705 = inttoptr i64 %env143388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144706 = getelementptr inbounds i64, i64* %envptr144705, i64 5              ; &envptr144705[5]
  %CK2$lx = load i64, i64* %envptr144706, align 8                                    ; load; *envptr144706
  %envptr144707 = inttoptr i64 %env143388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144708 = getelementptr inbounds i64, i64* %envptr144707, i64 4              ; &envptr144707[4]
  %glV$ly = load i64, i64* %envptr144708, align 8                                    ; load; *envptr144708
  %envptr144709 = inttoptr i64 %env143388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144710 = getelementptr inbounds i64, i64* %envptr144709, i64 3              ; &envptr144709[3]
  %vBA$_37drop = load i64, i64* %envptr144710, align 8                               ; load; *envptr144710
  %envptr144711 = inttoptr i64 %env143388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144712 = getelementptr inbounds i64, i64* %envptr144711, i64 2              ; &envptr144711[2]
  %Y3e$_37_62 = load i64, i64* %envptr144712, align 8                                ; load; *envptr144712
  %envptr144713 = inttoptr i64 %env143388 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144714 = getelementptr inbounds i64, i64* %envptr144713, i64 1              ; &envptr144713[1]
  %a142102 = load i64, i64* %envptr144714, align 8                                   ; load; *envptr144714
  %cloptr144715 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144717 = getelementptr inbounds i64, i64* %cloptr144715, i64 1                ; &eptr144717[1]
  %eptr144718 = getelementptr inbounds i64, i64* %cloptr144715, i64 2                ; &eptr144718[2]
  %eptr144719 = getelementptr inbounds i64, i64* %cloptr144715, i64 3                ; &eptr144719[3]
  %eptr144720 = getelementptr inbounds i64, i64* %cloptr144715, i64 4                ; &eptr144720[4]
  %eptr144721 = getelementptr inbounds i64, i64* %cloptr144715, i64 5                ; &eptr144721[5]
  %eptr144722 = getelementptr inbounds i64, i64* %cloptr144715, i64 6                ; &eptr144722[6]
  %eptr144723 = getelementptr inbounds i64, i64* %cloptr144715, i64 7                ; &eptr144723[7]
  store i64 %a142105, i64* %eptr144717                                               ; *eptr144717 = %a142105
  store i64 %a142102, i64* %eptr144718                                               ; *eptr144718 = %a142102
  store i64 %vBA$_37drop, i64* %eptr144719                                           ; *eptr144719 = %vBA$_37drop
  store i64 %glV$ly, i64* %eptr144720                                                ; *eptr144720 = %glV$ly
  store i64 %CK2$lx, i64* %eptr144721                                                ; *eptr144721 = %CK2$lx
  store i64 %cont142199, i64* %eptr144722                                            ; *eptr144722 = %cont142199
  store i64 %Kpz$y, i64* %eptr144723                                                 ; *eptr144723 = %Kpz$y
  %eptr144716 = getelementptr inbounds i64, i64* %cloptr144715, i64 0                ; &cloptr144715[0]
  %f144724 = ptrtoint void(i64,i64,i64)* @lam143385 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144724, i64* %eptr144716                                               ; store fptr
  %arg142790 = ptrtoint i64* %cloptr144715 to i64                                    ; closure cast; i64* -> i64
  %cloptr144725 = inttoptr i64 %Y3e$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144725)                                       ; assert function application
  %i0ptr144726 = getelementptr inbounds i64, i64* %cloptr144725, i64 0               ; &cloptr144725[0]
  %f144728 = load i64, i64* %i0ptr144726, align 8                                    ; load; *i0ptr144726
  %fptr144727 = inttoptr i64 %f144728 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144727(i64 %Y3e$_37_62, i64 %arg142790, i64 %glV$ly, i64 %CK2$lx); tail call
  ret void
}


define void @lam143385(i64 %env143386, i64 %_95142206, i64 %a142106) {
  %envptr144729 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144730 = getelementptr inbounds i64, i64* %envptr144729, i64 7              ; &envptr144729[7]
  %Kpz$y = load i64, i64* %envptr144730, align 8                                     ; load; *envptr144730
  %envptr144731 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144732 = getelementptr inbounds i64, i64* %envptr144731, i64 6              ; &envptr144731[6]
  %cont142199 = load i64, i64* %envptr144732, align 8                                ; load; *envptr144732
  %envptr144733 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144734 = getelementptr inbounds i64, i64* %envptr144733, i64 5              ; &envptr144733[5]
  %CK2$lx = load i64, i64* %envptr144734, align 8                                    ; load; *envptr144734
  %envptr144735 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144736 = getelementptr inbounds i64, i64* %envptr144735, i64 4              ; &envptr144735[4]
  %glV$ly = load i64, i64* %envptr144736, align 8                                    ; load; *envptr144736
  %envptr144737 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144738 = getelementptr inbounds i64, i64* %envptr144737, i64 3              ; &envptr144737[3]
  %vBA$_37drop = load i64, i64* %envptr144738, align 8                               ; load; *envptr144738
  %envptr144739 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144740 = getelementptr inbounds i64, i64* %envptr144739, i64 2              ; &envptr144739[2]
  %a142102 = load i64, i64* %envptr144740, align 8                                   ; load; *envptr144740
  %envptr144741 = inttoptr i64 %env143386 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144742 = getelementptr inbounds i64, i64* %envptr144741, i64 1              ; &envptr144741[1]
  %a142105 = load i64, i64* %envptr144742, align 8                                   ; load; *envptr144742
  %cmp144743 = icmp eq i64 %a142106, 15                                              ; false?
  br i1 %cmp144743, label %else144745, label %then144744                             ; if

then144744:
  %a142107 = call i64 @prim__45(i64 %glV$ly, i64 %CK2$lx)                            ; call prim__45
  %cloptr144746 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144748 = getelementptr inbounds i64, i64* %cloptr144746, i64 1                ; &eptr144748[1]
  %eptr144749 = getelementptr inbounds i64, i64* %cloptr144746, i64 2                ; &eptr144749[2]
  %eptr144750 = getelementptr inbounds i64, i64* %cloptr144746, i64 3                ; &eptr144750[3]
  store i64 %a142105, i64* %eptr144748                                               ; *eptr144748 = %a142105
  store i64 %a142102, i64* %eptr144749                                               ; *eptr144749 = %a142102
  store i64 %cont142199, i64* %eptr144750                                            ; *eptr144750 = %cont142199
  %eptr144747 = getelementptr inbounds i64, i64* %cloptr144746, i64 0                ; &cloptr144746[0]
  %f144751 = ptrtoint void(i64,i64,i64)* @lam143380 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144751, i64* %eptr144747                                               ; store fptr
  %arg142796 = ptrtoint i64* %cloptr144746 to i64                                    ; closure cast; i64* -> i64
  %cloptr144752 = inttoptr i64 %vBA$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144752)                                       ; assert function application
  %i0ptr144753 = getelementptr inbounds i64, i64* %cloptr144752, i64 0               ; &cloptr144752[0]
  %f144755 = load i64, i64* %i0ptr144753, align 8                                    ; load; *i0ptr144753
  %fptr144754 = inttoptr i64 %f144755 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144754(i64 %vBA$_37drop, i64 %arg142796, i64 %Kpz$y, i64 %a142107); tail call
  ret void

else144745:
  %cloptr144756 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144758 = getelementptr inbounds i64, i64* %cloptr144756, i64 1                ; &eptr144758[1]
  %eptr144759 = getelementptr inbounds i64, i64* %cloptr144756, i64 2                ; &eptr144759[2]
  %eptr144760 = getelementptr inbounds i64, i64* %cloptr144756, i64 3                ; &eptr144760[3]
  store i64 %a142105, i64* %eptr144758                                               ; *eptr144758 = %a142105
  store i64 %a142102, i64* %eptr144759                                               ; *eptr144759 = %a142102
  store i64 %cont142199, i64* %eptr144760                                            ; *eptr144760 = %cont142199
  %eptr144757 = getelementptr inbounds i64, i64* %cloptr144756, i64 0                ; &cloptr144756[0]
  %f144761 = ptrtoint void(i64,i64,i64)* @lam143383 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144761, i64* %eptr144757                                               ; store fptr
  %arg142804 = ptrtoint i64* %cloptr144756 to i64                                    ; closure cast; i64* -> i64
  %arg142803 = add i64 0, 0                                                          ; quoted ()
  %cloptr144762 = inttoptr i64 %arg142804 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144762)                                       ; assert function application
  %i0ptr144763 = getelementptr inbounds i64, i64* %cloptr144762, i64 0               ; &cloptr144762[0]
  %f144765 = load i64, i64* %i0ptr144763, align 8                                    ; load; *i0ptr144763
  %fptr144764 = inttoptr i64 %f144765 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144764(i64 %arg142804, i64 %arg142803, i64 %Kpz$y)  ; tail call
  ret void
}


define void @lam143383(i64 %env143384, i64 %_95142207, i64 %a142108) {
  %envptr144766 = inttoptr i64 %env143384 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144767 = getelementptr inbounds i64, i64* %envptr144766, i64 3              ; &envptr144766[3]
  %cont142199 = load i64, i64* %envptr144767, align 8                                ; load; *envptr144767
  %envptr144768 = inttoptr i64 %env143384 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144769 = getelementptr inbounds i64, i64* %envptr144768, i64 2              ; &envptr144768[2]
  %a142102 = load i64, i64* %envptr144769, align 8                                   ; load; *envptr144769
  %envptr144770 = inttoptr i64 %env143384 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144771 = getelementptr inbounds i64, i64* %envptr144770, i64 1              ; &envptr144770[1]
  %a142105 = load i64, i64* %envptr144771, align 8                                   ; load; *envptr144771
  %cloptr144772 = inttoptr i64 %a142102 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144772)                                       ; assert function application
  %i0ptr144773 = getelementptr inbounds i64, i64* %cloptr144772, i64 0               ; &cloptr144772[0]
  %f144775 = load i64, i64* %i0ptr144773, align 8                                    ; load; *i0ptr144773
  %fptr144774 = inttoptr i64 %f144775 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144774(i64 %a142102, i64 %cont142199, i64 %a142105, i64 %a142108); tail call
  ret void
}


define void @lam143380(i64 %env143381, i64 %_95142207, i64 %a142108) {
  %envptr144776 = inttoptr i64 %env143381 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144777 = getelementptr inbounds i64, i64* %envptr144776, i64 3              ; &envptr144776[3]
  %cont142199 = load i64, i64* %envptr144777, align 8                                ; load; *envptr144777
  %envptr144778 = inttoptr i64 %env143381 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144779 = getelementptr inbounds i64, i64* %envptr144778, i64 2              ; &envptr144778[2]
  %a142102 = load i64, i64* %envptr144779, align 8                                   ; load; *envptr144779
  %envptr144780 = inttoptr i64 %env143381 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144781 = getelementptr inbounds i64, i64* %envptr144780, i64 1              ; &envptr144780[1]
  %a142105 = load i64, i64* %envptr144781, align 8                                   ; load; *envptr144781
  %cloptr144782 = inttoptr i64 %a142102 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144782)                                       ; assert function application
  %i0ptr144783 = getelementptr inbounds i64, i64* %cloptr144782, i64 0               ; &cloptr144782[0]
  %f144785 = load i64, i64* %i0ptr144783, align 8                                    ; load; *i0ptr144783
  %fptr144784 = inttoptr i64 %f144785 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144784(i64 %a142102, i64 %cont142199, i64 %a142105, i64 %a142108); tail call
  ret void
}


define void @lam143377(i64 %env143378, i64 %_95142205, i64 %a142105) {
  %envptr144786 = inttoptr i64 %env143378 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144787 = getelementptr inbounds i64, i64* %envptr144786, i64 7              ; &envptr144786[7]
  %Kpz$y = load i64, i64* %envptr144787, align 8                                     ; load; *envptr144787
  %envptr144788 = inttoptr i64 %env143378 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144789 = getelementptr inbounds i64, i64* %envptr144788, i64 6              ; &envptr144788[6]
  %cont142199 = load i64, i64* %envptr144789, align 8                                ; load; *envptr144789
  %envptr144790 = inttoptr i64 %env143378 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144791 = getelementptr inbounds i64, i64* %envptr144790, i64 5              ; &envptr144790[5]
  %CK2$lx = load i64, i64* %envptr144791, align 8                                    ; load; *envptr144791
  %envptr144792 = inttoptr i64 %env143378 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144793 = getelementptr inbounds i64, i64* %envptr144792, i64 4              ; &envptr144792[4]
  %glV$ly = load i64, i64* %envptr144793, align 8                                    ; load; *envptr144793
  %envptr144794 = inttoptr i64 %env143378 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144795 = getelementptr inbounds i64, i64* %envptr144794, i64 3              ; &envptr144794[3]
  %vBA$_37drop = load i64, i64* %envptr144795, align 8                               ; load; *envptr144795
  %envptr144796 = inttoptr i64 %env143378 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144797 = getelementptr inbounds i64, i64* %envptr144796, i64 2              ; &envptr144796[2]
  %Y3e$_37_62 = load i64, i64* %envptr144797, align 8                                ; load; *envptr144797
  %envptr144798 = inttoptr i64 %env143378 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144799 = getelementptr inbounds i64, i64* %envptr144798, i64 1              ; &envptr144798[1]
  %a142102 = load i64, i64* %envptr144799, align 8                                   ; load; *envptr144799
  %cloptr144800 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr144802 = getelementptr inbounds i64, i64* %cloptr144800, i64 1                ; &eptr144802[1]
  %eptr144803 = getelementptr inbounds i64, i64* %cloptr144800, i64 2                ; &eptr144803[2]
  %eptr144804 = getelementptr inbounds i64, i64* %cloptr144800, i64 3                ; &eptr144804[3]
  %eptr144805 = getelementptr inbounds i64, i64* %cloptr144800, i64 4                ; &eptr144805[4]
  %eptr144806 = getelementptr inbounds i64, i64* %cloptr144800, i64 5                ; &eptr144806[5]
  %eptr144807 = getelementptr inbounds i64, i64* %cloptr144800, i64 6                ; &eptr144807[6]
  %eptr144808 = getelementptr inbounds i64, i64* %cloptr144800, i64 7                ; &eptr144808[7]
  store i64 %a142105, i64* %eptr144802                                               ; *eptr144802 = %a142105
  store i64 %a142102, i64* %eptr144803                                               ; *eptr144803 = %a142102
  store i64 %vBA$_37drop, i64* %eptr144804                                           ; *eptr144804 = %vBA$_37drop
  store i64 %glV$ly, i64* %eptr144805                                                ; *eptr144805 = %glV$ly
  store i64 %CK2$lx, i64* %eptr144806                                                ; *eptr144806 = %CK2$lx
  store i64 %cont142199, i64* %eptr144807                                            ; *eptr144807 = %cont142199
  store i64 %Kpz$y, i64* %eptr144808                                                 ; *eptr144808 = %Kpz$y
  %eptr144801 = getelementptr inbounds i64, i64* %cloptr144800, i64 0                ; &cloptr144800[0]
  %f144809 = ptrtoint void(i64,i64,i64)* @lam143375 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144809, i64* %eptr144801                                               ; store fptr
  %arg142766 = ptrtoint i64* %cloptr144800 to i64                                    ; closure cast; i64* -> i64
  %cloptr144810 = inttoptr i64 %Y3e$_37_62 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144810)                                       ; assert function application
  %i0ptr144811 = getelementptr inbounds i64, i64* %cloptr144810, i64 0               ; &cloptr144810[0]
  %f144813 = load i64, i64* %i0ptr144811, align 8                                    ; load; *i0ptr144811
  %fptr144812 = inttoptr i64 %f144813 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144812(i64 %Y3e$_37_62, i64 %arg142766, i64 %glV$ly, i64 %CK2$lx); tail call
  ret void
}


define void @lam143375(i64 %env143376, i64 %_95142206, i64 %a142106) {
  %envptr144814 = inttoptr i64 %env143376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144815 = getelementptr inbounds i64, i64* %envptr144814, i64 7              ; &envptr144814[7]
  %Kpz$y = load i64, i64* %envptr144815, align 8                                     ; load; *envptr144815
  %envptr144816 = inttoptr i64 %env143376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144817 = getelementptr inbounds i64, i64* %envptr144816, i64 6              ; &envptr144816[6]
  %cont142199 = load i64, i64* %envptr144817, align 8                                ; load; *envptr144817
  %envptr144818 = inttoptr i64 %env143376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144819 = getelementptr inbounds i64, i64* %envptr144818, i64 5              ; &envptr144818[5]
  %CK2$lx = load i64, i64* %envptr144819, align 8                                    ; load; *envptr144819
  %envptr144820 = inttoptr i64 %env143376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144821 = getelementptr inbounds i64, i64* %envptr144820, i64 4              ; &envptr144820[4]
  %glV$ly = load i64, i64* %envptr144821, align 8                                    ; load; *envptr144821
  %envptr144822 = inttoptr i64 %env143376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144823 = getelementptr inbounds i64, i64* %envptr144822, i64 3              ; &envptr144822[3]
  %vBA$_37drop = load i64, i64* %envptr144823, align 8                               ; load; *envptr144823
  %envptr144824 = inttoptr i64 %env143376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144825 = getelementptr inbounds i64, i64* %envptr144824, i64 2              ; &envptr144824[2]
  %a142102 = load i64, i64* %envptr144825, align 8                                   ; load; *envptr144825
  %envptr144826 = inttoptr i64 %env143376 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144827 = getelementptr inbounds i64, i64* %envptr144826, i64 1              ; &envptr144826[1]
  %a142105 = load i64, i64* %envptr144827, align 8                                   ; load; *envptr144827
  %cmp144828 = icmp eq i64 %a142106, 15                                              ; false?
  br i1 %cmp144828, label %else144830, label %then144829                             ; if

then144829:
  %a142107 = call i64 @prim__45(i64 %glV$ly, i64 %CK2$lx)                            ; call prim__45
  %cloptr144831 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144833 = getelementptr inbounds i64, i64* %cloptr144831, i64 1                ; &eptr144833[1]
  %eptr144834 = getelementptr inbounds i64, i64* %cloptr144831, i64 2                ; &eptr144834[2]
  %eptr144835 = getelementptr inbounds i64, i64* %cloptr144831, i64 3                ; &eptr144835[3]
  store i64 %a142105, i64* %eptr144833                                               ; *eptr144833 = %a142105
  store i64 %a142102, i64* %eptr144834                                               ; *eptr144834 = %a142102
  store i64 %cont142199, i64* %eptr144835                                            ; *eptr144835 = %cont142199
  %eptr144832 = getelementptr inbounds i64, i64* %cloptr144831, i64 0                ; &cloptr144831[0]
  %f144836 = ptrtoint void(i64,i64,i64)* @lam143370 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144836, i64* %eptr144832                                               ; store fptr
  %arg142772 = ptrtoint i64* %cloptr144831 to i64                                    ; closure cast; i64* -> i64
  %cloptr144837 = inttoptr i64 %vBA$_37drop to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144837)                                       ; assert function application
  %i0ptr144838 = getelementptr inbounds i64, i64* %cloptr144837, i64 0               ; &cloptr144837[0]
  %f144840 = load i64, i64* %i0ptr144838, align 8                                    ; load; *i0ptr144838
  %fptr144839 = inttoptr i64 %f144840 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144839(i64 %vBA$_37drop, i64 %arg142772, i64 %Kpz$y, i64 %a142107); tail call
  ret void

else144830:
  %cloptr144841 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144843 = getelementptr inbounds i64, i64* %cloptr144841, i64 1                ; &eptr144843[1]
  %eptr144844 = getelementptr inbounds i64, i64* %cloptr144841, i64 2                ; &eptr144844[2]
  %eptr144845 = getelementptr inbounds i64, i64* %cloptr144841, i64 3                ; &eptr144845[3]
  store i64 %a142105, i64* %eptr144843                                               ; *eptr144843 = %a142105
  store i64 %a142102, i64* %eptr144844                                               ; *eptr144844 = %a142102
  store i64 %cont142199, i64* %eptr144845                                            ; *eptr144845 = %cont142199
  %eptr144842 = getelementptr inbounds i64, i64* %cloptr144841, i64 0                ; &cloptr144841[0]
  %f144846 = ptrtoint void(i64,i64,i64)* @lam143373 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144846, i64* %eptr144842                                               ; store fptr
  %arg142780 = ptrtoint i64* %cloptr144841 to i64                                    ; closure cast; i64* -> i64
  %arg142779 = add i64 0, 0                                                          ; quoted ()
  %cloptr144847 = inttoptr i64 %arg142780 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144847)                                       ; assert function application
  %i0ptr144848 = getelementptr inbounds i64, i64* %cloptr144847, i64 0               ; &cloptr144847[0]
  %f144850 = load i64, i64* %i0ptr144848, align 8                                    ; load; *i0ptr144848
  %fptr144849 = inttoptr i64 %f144850 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144849(i64 %arg142780, i64 %arg142779, i64 %Kpz$y)  ; tail call
  ret void
}


define void @lam143373(i64 %env143374, i64 %_95142207, i64 %a142108) {
  %envptr144851 = inttoptr i64 %env143374 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144852 = getelementptr inbounds i64, i64* %envptr144851, i64 3              ; &envptr144851[3]
  %cont142199 = load i64, i64* %envptr144852, align 8                                ; load; *envptr144852
  %envptr144853 = inttoptr i64 %env143374 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144854 = getelementptr inbounds i64, i64* %envptr144853, i64 2              ; &envptr144853[2]
  %a142102 = load i64, i64* %envptr144854, align 8                                   ; load; *envptr144854
  %envptr144855 = inttoptr i64 %env143374 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144856 = getelementptr inbounds i64, i64* %envptr144855, i64 1              ; &envptr144855[1]
  %a142105 = load i64, i64* %envptr144856, align 8                                   ; load; *envptr144856
  %cloptr144857 = inttoptr i64 %a142102 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144857)                                       ; assert function application
  %i0ptr144858 = getelementptr inbounds i64, i64* %cloptr144857, i64 0               ; &cloptr144857[0]
  %f144860 = load i64, i64* %i0ptr144858, align 8                                    ; load; *i0ptr144858
  %fptr144859 = inttoptr i64 %f144860 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144859(i64 %a142102, i64 %cont142199, i64 %a142105, i64 %a142108); tail call
  ret void
}


define void @lam143370(i64 %env143371, i64 %_95142207, i64 %a142108) {
  %envptr144861 = inttoptr i64 %env143371 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144862 = getelementptr inbounds i64, i64* %envptr144861, i64 3              ; &envptr144861[3]
  %cont142199 = load i64, i64* %envptr144862, align 8                                ; load; *envptr144862
  %envptr144863 = inttoptr i64 %env143371 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144864 = getelementptr inbounds i64, i64* %envptr144863, i64 2              ; &envptr144863[2]
  %a142102 = load i64, i64* %envptr144864, align 8                                   ; load; *envptr144864
  %envptr144865 = inttoptr i64 %env143371 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144866 = getelementptr inbounds i64, i64* %envptr144865, i64 1              ; &envptr144865[1]
  %a142105 = load i64, i64* %envptr144866, align 8                                   ; load; *envptr144866
  %cloptr144867 = inttoptr i64 %a142102 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144867)                                       ; assert function application
  %i0ptr144868 = getelementptr inbounds i64, i64* %cloptr144867, i64 0               ; &cloptr144867[0]
  %f144870 = load i64, i64* %i0ptr144868, align 8                                    ; load; *i0ptr144868
  %fptr144869 = inttoptr i64 %f144870 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144869(i64 %a142102, i64 %cont142199, i64 %a142105, i64 %a142108); tail call
  ret void
}


define void @lam143367(i64 %env143368, i64 %cont142212, i64 %z56$new) {
  %envptr144871 = inttoptr i64 %env143368 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144872 = getelementptr inbounds i64, i64* %envptr144871, i64 2              ; &envptr144871[2]
  %ZAo$_37wind_45stack = load i64, i64* %envptr144872, align 8                       ; load; *envptr144872
  %envptr144873 = inttoptr i64 %env143368 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144874 = getelementptr inbounds i64, i64* %envptr144873, i64 1              ; &envptr144873[1]
  %dsl$_37common_45tail = load i64, i64* %envptr144874, align 8                      ; load; *envptr144874
  %arg142809 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142109 = call i64 @prim_vector_45ref(i64 %ZAo$_37wind_45stack, i64 %arg142809)   ; call prim_vector_45ref
  %cloptr144875 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144877 = getelementptr inbounds i64, i64* %cloptr144875, i64 1                ; &eptr144877[1]
  %eptr144878 = getelementptr inbounds i64, i64* %cloptr144875, i64 2                ; &eptr144878[2]
  %eptr144879 = getelementptr inbounds i64, i64* %cloptr144875, i64 3                ; &eptr144879[3]
  store i64 %cont142212, i64* %eptr144877                                            ; *eptr144877 = %cont142212
  store i64 %z56$new, i64* %eptr144878                                               ; *eptr144878 = %z56$new
  store i64 %ZAo$_37wind_45stack, i64* %eptr144879                                   ; *eptr144879 = %ZAo$_37wind_45stack
  %eptr144876 = getelementptr inbounds i64, i64* %cloptr144875, i64 0                ; &cloptr144875[0]
  %f144880 = ptrtoint void(i64,i64,i64)* @lam143364 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144880, i64* %eptr144876                                               ; store fptr
  %arg142813 = ptrtoint i64* %cloptr144875 to i64                                    ; closure cast; i64* -> i64
  %cloptr144881 = inttoptr i64 %dsl$_37common_45tail to i64*                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144881)                                       ; assert function application
  %i0ptr144882 = getelementptr inbounds i64, i64* %cloptr144881, i64 0               ; &cloptr144881[0]
  %f144884 = load i64, i64* %i0ptr144882, align 8                                    ; load; *i0ptr144882
  %fptr144883 = inttoptr i64 %f144884 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144883(i64 %dsl$_37common_45tail, i64 %arg142813, i64 %z56$new, i64 %a142109); tail call
  ret void
}


define void @lam143364(i64 %env143365, i64 %_95142213, i64 %WLY$tail) {
  %envptr144885 = inttoptr i64 %env143365 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144886 = getelementptr inbounds i64, i64* %envptr144885, i64 3              ; &envptr144885[3]
  %ZAo$_37wind_45stack = load i64, i64* %envptr144886, align 8                       ; load; *envptr144886
  %envptr144887 = inttoptr i64 %env143365 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144888 = getelementptr inbounds i64, i64* %envptr144887, i64 2              ; &envptr144887[2]
  %z56$new = load i64, i64* %envptr144888, align 8                                   ; load; *envptr144888
  %envptr144889 = inttoptr i64 %env143365 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144890 = getelementptr inbounds i64, i64* %envptr144889, i64 1              ; &envptr144889[1]
  %cont142212 = load i64, i64* %envptr144890, align 8                                ; load; *envptr144890
  %cloptr144891 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr144892 = getelementptr inbounds i64, i64* %cloptr144891, i64 0                ; &cloptr144891[0]
  %f144893 = ptrtoint void(i64,i64)* @lam143362 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f144893, i64* %eptr144892                                               ; store fptr
  %arg142816 = ptrtoint i64* %cloptr144891 to i64                                    ; closure cast; i64* -> i64
  %cloptr144894 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144896 = getelementptr inbounds i64, i64* %cloptr144894, i64 1                ; &eptr144896[1]
  %eptr144897 = getelementptr inbounds i64, i64* %cloptr144894, i64 2                ; &eptr144897[2]
  %eptr144898 = getelementptr inbounds i64, i64* %cloptr144894, i64 3                ; &eptr144898[3]
  %eptr144899 = getelementptr inbounds i64, i64* %cloptr144894, i64 4                ; &eptr144899[4]
  store i64 %cont142212, i64* %eptr144896                                            ; *eptr144896 = %cont142212
  store i64 %WLY$tail, i64* %eptr144897                                              ; *eptr144897 = %WLY$tail
  store i64 %z56$new, i64* %eptr144898                                               ; *eptr144898 = %z56$new
  store i64 %ZAo$_37wind_45stack, i64* %eptr144899                                   ; *eptr144899 = %ZAo$_37wind_45stack
  %eptr144895 = getelementptr inbounds i64, i64* %cloptr144894, i64 0                ; &cloptr144894[0]
  %f144900 = ptrtoint void(i64,i64,i64)* @lam143359 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144900, i64* %eptr144895                                               ; store fptr
  %arg142815 = ptrtoint i64* %cloptr144894 to i64                                    ; closure cast; i64* -> i64
  %cloptr144901 = inttoptr i64 %arg142816 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144901)                                       ; assert function application
  %i0ptr144902 = getelementptr inbounds i64, i64* %cloptr144901, i64 0               ; &cloptr144901[0]
  %f144904 = load i64, i64* %i0ptr144902, align 8                                    ; load; *i0ptr144902
  %fptr144903 = inttoptr i64 %f144904 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144903(i64 %arg142816, i64 %arg142815)              ; tail call
  ret void
}


define void @lam143362(i64 %env143363, i64 %zZW$lst142234) {
  %cont142233 = call i64 @prim_car(i64 %zZW$lst142234)                               ; call prim_car
  %zZW$lst = call i64 @prim_cdr(i64 %zZW$lst142234)                                  ; call prim_cdr
  %arg142820 = add i64 0, 0                                                          ; quoted ()
  %cloptr144905 = inttoptr i64 %cont142233 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144905)                                       ; assert function application
  %i0ptr144906 = getelementptr inbounds i64, i64* %cloptr144905, i64 0               ; &cloptr144905[0]
  %f144908 = load i64, i64* %i0ptr144906, align 8                                    ; load; *i0ptr144906
  %fptr144907 = inttoptr i64 %f144908 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144907(i64 %cont142233, i64 %arg142820, i64 %zZW$lst); tail call
  ret void
}


define void @lam143359(i64 %env143360, i64 %_95142231, i64 %a142110) {
  %envptr144909 = inttoptr i64 %env143360 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144910 = getelementptr inbounds i64, i64* %envptr144909, i64 4              ; &envptr144909[4]
  %ZAo$_37wind_45stack = load i64, i64* %envptr144910, align 8                       ; load; *envptr144910
  %envptr144911 = inttoptr i64 %env143360 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144912 = getelementptr inbounds i64, i64* %envptr144911, i64 3              ; &envptr144911[3]
  %z56$new = load i64, i64* %envptr144912, align 8                                   ; load; *envptr144912
  %envptr144913 = inttoptr i64 %env143360 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144914 = getelementptr inbounds i64, i64* %envptr144913, i64 2              ; &envptr144913[2]
  %WLY$tail = load i64, i64* %envptr144914, align 8                                  ; load; *envptr144914
  %envptr144915 = inttoptr i64 %env143360 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144916 = getelementptr inbounds i64, i64* %envptr144915, i64 1              ; &envptr144915[1]
  %cont142212 = load i64, i64* %envptr144916, align 8                                ; load; *envptr144916
  %arg142823 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142232 = call i64 @prim_make_45vector(i64 %arg142823, i64 %a142110)        ; call prim_make_45vector
  %cloptr144917 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144919 = getelementptr inbounds i64, i64* %cloptr144917, i64 1                ; &eptr144919[1]
  %eptr144920 = getelementptr inbounds i64, i64* %cloptr144917, i64 2                ; &eptr144920[2]
  %eptr144921 = getelementptr inbounds i64, i64* %cloptr144917, i64 3                ; &eptr144921[3]
  %eptr144922 = getelementptr inbounds i64, i64* %cloptr144917, i64 4                ; &eptr144922[4]
  store i64 %cont142212, i64* %eptr144919                                            ; *eptr144919 = %cont142212
  store i64 %WLY$tail, i64* %eptr144920                                              ; *eptr144920 = %WLY$tail
  store i64 %z56$new, i64* %eptr144921                                               ; *eptr144921 = %z56$new
  store i64 %ZAo$_37wind_45stack, i64* %eptr144922                                   ; *eptr144922 = %ZAo$_37wind_45stack
  %eptr144918 = getelementptr inbounds i64, i64* %cloptr144917, i64 0                ; &cloptr144917[0]
  %f144923 = ptrtoint void(i64,i64,i64)* @lam143356 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144923, i64* %eptr144918                                               ; store fptr
  %arg142826 = ptrtoint i64* %cloptr144917 to i64                                    ; closure cast; i64* -> i64
  %arg142825 = add i64 0, 0                                                          ; quoted ()
  %cloptr144924 = inttoptr i64 %arg142826 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144924)                                       ; assert function application
  %i0ptr144925 = getelementptr inbounds i64, i64* %cloptr144924, i64 0               ; &cloptr144924[0]
  %f144927 = load i64, i64* %i0ptr144925, align 8                                    ; load; *i0ptr144925
  %fptr144926 = inttoptr i64 %f144927 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144926(i64 %arg142826, i64 %arg142825, i64 %retprim142232); tail call
  ret void
}


define void @lam143356(i64 %env143357, i64 %_95142225, i64 %zos$f) {
  %envptr144928 = inttoptr i64 %env143357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144929 = getelementptr inbounds i64, i64* %envptr144928, i64 4              ; &envptr144928[4]
  %ZAo$_37wind_45stack = load i64, i64* %envptr144929, align 8                       ; load; *envptr144929
  %envptr144930 = inttoptr i64 %env143357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144931 = getelementptr inbounds i64, i64* %envptr144930, i64 3              ; &envptr144930[3]
  %z56$new = load i64, i64* %envptr144931, align 8                                   ; load; *envptr144931
  %envptr144932 = inttoptr i64 %env143357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144933 = getelementptr inbounds i64, i64* %envptr144932, i64 2              ; &envptr144932[2]
  %WLY$tail = load i64, i64* %envptr144933, align 8                                  ; load; *envptr144933
  %envptr144934 = inttoptr i64 %env143357 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144935 = getelementptr inbounds i64, i64* %envptr144934, i64 1              ; &envptr144934[1]
  %cont142212 = load i64, i64* %envptr144935, align 8                                ; load; *envptr144935
  %arg142828 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr144936 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144938 = getelementptr inbounds i64, i64* %cloptr144936, i64 1                ; &eptr144938[1]
  %eptr144939 = getelementptr inbounds i64, i64* %cloptr144936, i64 2                ; &eptr144939[2]
  %eptr144940 = getelementptr inbounds i64, i64* %cloptr144936, i64 3                ; &eptr144940[3]
  store i64 %WLY$tail, i64* %eptr144938                                              ; *eptr144938 = %WLY$tail
  store i64 %zos$f, i64* %eptr144939                                                 ; *eptr144939 = %zos$f
  store i64 %ZAo$_37wind_45stack, i64* %eptr144940                                   ; *eptr144940 = %ZAo$_37wind_45stack
  %eptr144937 = getelementptr inbounds i64, i64* %cloptr144936, i64 0                ; &cloptr144936[0]
  %f144941 = ptrtoint void(i64,i64,i64)* @lam143353 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144941, i64* %eptr144937                                               ; store fptr
  %arg142827 = ptrtoint i64* %cloptr144936 to i64                                    ; closure cast; i64* -> i64
  %Ecw$_95142003 = call i64 @prim_vector_45set_33(i64 %zos$f, i64 %arg142828, i64 %arg142827); call prim_vector_45set_33
  %arg142853 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142118 = call i64 @prim_vector_45ref(i64 %zos$f, i64 %arg142853)                 ; call prim_vector_45ref
  %arg142855 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142119 = call i64 @prim_vector_45ref(i64 %ZAo$_37wind_45stack, i64 %arg142855)   ; call prim_vector_45ref
  %cloptr144942 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr144944 = getelementptr inbounds i64, i64* %cloptr144942, i64 1                ; &eptr144944[1]
  %eptr144945 = getelementptr inbounds i64, i64* %cloptr144942, i64 2                ; &eptr144945[2]
  %eptr144946 = getelementptr inbounds i64, i64* %cloptr144942, i64 3                ; &eptr144946[3]
  %eptr144947 = getelementptr inbounds i64, i64* %cloptr144942, i64 4                ; &eptr144947[4]
  store i64 %cont142212, i64* %eptr144944                                            ; *eptr144944 = %cont142212
  store i64 %WLY$tail, i64* %eptr144945                                              ; *eptr144945 = %WLY$tail
  store i64 %z56$new, i64* %eptr144946                                               ; *eptr144946 = %z56$new
  store i64 %ZAo$_37wind_45stack, i64* %eptr144947                                   ; *eptr144947 = %ZAo$_37wind_45stack
  %eptr144943 = getelementptr inbounds i64, i64* %cloptr144942, i64 0                ; &cloptr144942[0]
  %f144948 = ptrtoint void(i64,i64,i64)* @lam143341 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144948, i64* %eptr144943                                               ; store fptr
  %arg142858 = ptrtoint i64* %cloptr144942 to i64                                    ; closure cast; i64* -> i64
  %cloptr144949 = inttoptr i64 %a142118 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144949)                                       ; assert function application
  %i0ptr144950 = getelementptr inbounds i64, i64* %cloptr144949, i64 0               ; &cloptr144949[0]
  %f144952 = load i64, i64* %i0ptr144950, align 8                                    ; load; *i0ptr144950
  %fptr144951 = inttoptr i64 %f144952 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144951(i64 %a142118, i64 %arg142858, i64 %a142119)  ; tail call
  ret void
}


define void @lam143353(i64 %env143354, i64 %cont142226, i64 %ncj$l) {
  %envptr144953 = inttoptr i64 %env143354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144954 = getelementptr inbounds i64, i64* %envptr144953, i64 3              ; &envptr144953[3]
  %ZAo$_37wind_45stack = load i64, i64* %envptr144954, align 8                       ; load; *envptr144954
  %envptr144955 = inttoptr i64 %env143354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144956 = getelementptr inbounds i64, i64* %envptr144955, i64 2              ; &envptr144955[2]
  %zos$f = load i64, i64* %envptr144956, align 8                                     ; load; *envptr144956
  %envptr144957 = inttoptr i64 %env143354 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144958 = getelementptr inbounds i64, i64* %envptr144957, i64 1              ; &envptr144957[1]
  %WLY$tail = load i64, i64* %envptr144958, align 8                                  ; load; *envptr144958
  %a142111 = call i64 @prim_eq_63(i64 %ncj$l, i64 %WLY$tail)                         ; call prim_eq_63
  %a142112 = call i64 @prim_not(i64 %a142111)                                        ; call prim_not
  %cmp144959 = icmp eq i64 %a142112, 15                                              ; false?
  br i1 %cmp144959, label %else144961, label %then144960                             ; if

then144960:
  %a142113 = call i64 @prim_cdr(i64 %ncj$l)                                          ; call prim_cdr
  %arg142835 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142229 = call i64 @prim_vector_45set_33(i64 %ZAo$_37wind_45stack, i64 %arg142835, i64 %a142113); call prim_vector_45set_33
  %cloptr144962 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144964 = getelementptr inbounds i64, i64* %cloptr144962, i64 1                ; &eptr144964[1]
  %eptr144965 = getelementptr inbounds i64, i64* %cloptr144962, i64 2                ; &eptr144965[2]
  %eptr144966 = getelementptr inbounds i64, i64* %cloptr144962, i64 3                ; &eptr144966[3]
  store i64 %cont142226, i64* %eptr144964                                            ; *eptr144964 = %cont142226
  store i64 %zos$f, i64* %eptr144965                                                 ; *eptr144965 = %zos$f
  store i64 %ncj$l, i64* %eptr144966                                                 ; *eptr144966 = %ncj$l
  %eptr144963 = getelementptr inbounds i64, i64* %cloptr144962, i64 0                ; &cloptr144962[0]
  %f144967 = ptrtoint void(i64,i64,i64)* @lam143349 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144967, i64* %eptr144963                                               ; store fptr
  %arg142839 = ptrtoint i64* %cloptr144962 to i64                                    ; closure cast; i64* -> i64
  %arg142838 = add i64 0, 0                                                          ; quoted ()
  %cloptr144968 = inttoptr i64 %arg142839 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144968)                                       ; assert function application
  %i0ptr144969 = getelementptr inbounds i64, i64* %cloptr144968, i64 0               ; &cloptr144968[0]
  %f144971 = load i64, i64* %i0ptr144969, align 8                                    ; load; *i0ptr144969
  %fptr144970 = inttoptr i64 %f144971 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144970(i64 %arg142839, i64 %arg142838, i64 %retprim142229); tail call
  ret void

else144961:
  %retprim142230 = call i64 @prim_void()                                             ; call prim_void
  %arg142851 = add i64 0, 0                                                          ; quoted ()
  %cloptr144972 = inttoptr i64 %cont142226 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144972)                                       ; assert function application
  %i0ptr144973 = getelementptr inbounds i64, i64* %cloptr144972, i64 0               ; &cloptr144972[0]
  %f144975 = load i64, i64* %i0ptr144973, align 8                                    ; load; *i0ptr144973
  %fptr144974 = inttoptr i64 %f144975 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144974(i64 %cont142226, i64 %arg142851, i64 %retprim142230); tail call
  ret void
}


define void @lam143349(i64 %env143350, i64 %_95142227, i64 %Kvj$_95142004) {
  %envptr144976 = inttoptr i64 %env143350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144977 = getelementptr inbounds i64, i64* %envptr144976, i64 3              ; &envptr144976[3]
  %ncj$l = load i64, i64* %envptr144977, align 8                                     ; load; *envptr144977
  %envptr144978 = inttoptr i64 %env143350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144979 = getelementptr inbounds i64, i64* %envptr144978, i64 2              ; &envptr144978[2]
  %zos$f = load i64, i64* %envptr144979, align 8                                     ; load; *envptr144979
  %envptr144980 = inttoptr i64 %env143350 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144981 = getelementptr inbounds i64, i64* %envptr144980, i64 1              ; &envptr144980[1]
  %cont142226 = load i64, i64* %envptr144981, align 8                                ; load; *envptr144981
  %a142114 = call i64 @prim_car(i64 %ncj$l)                                          ; call prim_car
  %a142115 = call i64 @prim_cdr(i64 %a142114)                                        ; call prim_cdr
  %cloptr144982 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr144984 = getelementptr inbounds i64, i64* %cloptr144982, i64 1                ; &eptr144984[1]
  %eptr144985 = getelementptr inbounds i64, i64* %cloptr144982, i64 2                ; &eptr144985[2]
  %eptr144986 = getelementptr inbounds i64, i64* %cloptr144982, i64 3                ; &eptr144986[3]
  store i64 %cont142226, i64* %eptr144984                                            ; *eptr144984 = %cont142226
  store i64 %zos$f, i64* %eptr144985                                                 ; *eptr144985 = %zos$f
  store i64 %ncj$l, i64* %eptr144986                                                 ; *eptr144986 = %ncj$l
  %eptr144983 = getelementptr inbounds i64, i64* %cloptr144982, i64 0                ; &cloptr144982[0]
  %f144987 = ptrtoint void(i64,i64,i64)* @lam143347 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f144987, i64* %eptr144983                                               ; store fptr
  %arg142842 = ptrtoint i64* %cloptr144982 to i64                                    ; closure cast; i64* -> i64
  %cloptr144988 = inttoptr i64 %a142115 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144988)                                       ; assert function application
  %i0ptr144989 = getelementptr inbounds i64, i64* %cloptr144988, i64 0               ; &cloptr144988[0]
  %f144991 = load i64, i64* %i0ptr144989, align 8                                    ; load; *i0ptr144989
  %fptr144990 = inttoptr i64 %f144991 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr144990(i64 %a142115, i64 %arg142842)                ; tail call
  ret void
}


define void @lam143347(i64 %env143348, i64 %_95142228, i64 %el4$_95142005) {
  %envptr144992 = inttoptr i64 %env143348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144993 = getelementptr inbounds i64, i64* %envptr144992, i64 3              ; &envptr144992[3]
  %ncj$l = load i64, i64* %envptr144993, align 8                                     ; load; *envptr144993
  %envptr144994 = inttoptr i64 %env143348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144995 = getelementptr inbounds i64, i64* %envptr144994, i64 2              ; &envptr144994[2]
  %zos$f = load i64, i64* %envptr144995, align 8                                     ; load; *envptr144995
  %envptr144996 = inttoptr i64 %env143348 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr144997 = getelementptr inbounds i64, i64* %envptr144996, i64 1              ; &envptr144996[1]
  %cont142226 = load i64, i64* %envptr144997, align 8                                ; load; *envptr144997
  %arg142844 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142116 = call i64 @prim_vector_45ref(i64 %zos$f, i64 %arg142844)                 ; call prim_vector_45ref
  %a142117 = call i64 @prim_cdr(i64 %ncj$l)                                          ; call prim_cdr
  %cloptr144998 = inttoptr i64 %a142116 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr144998)                                       ; assert function application
  %i0ptr144999 = getelementptr inbounds i64, i64* %cloptr144998, i64 0               ; &cloptr144998[0]
  %f145001 = load i64, i64* %i0ptr144999, align 8                                    ; load; *i0ptr144999
  %fptr145000 = inttoptr i64 %f145001 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145000(i64 %a142116, i64 %cont142226, i64 %a142117) ; tail call
  ret void
}


define void @lam143341(i64 %env143342, i64 %_95142214, i64 %p7Q$_95142002) {
  %envptr145002 = inttoptr i64 %env143342 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145003 = getelementptr inbounds i64, i64* %envptr145002, i64 4              ; &envptr145002[4]
  %ZAo$_37wind_45stack = load i64, i64* %envptr145003, align 8                       ; load; *envptr145003
  %envptr145004 = inttoptr i64 %env143342 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145005 = getelementptr inbounds i64, i64* %envptr145004, i64 3              ; &envptr145004[3]
  %z56$new = load i64, i64* %envptr145005, align 8                                   ; load; *envptr145005
  %envptr145006 = inttoptr i64 %env143342 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145007 = getelementptr inbounds i64, i64* %envptr145006, i64 2              ; &envptr145006[2]
  %WLY$tail = load i64, i64* %envptr145007, align 8                                  ; load; *envptr145007
  %envptr145008 = inttoptr i64 %env143342 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145009 = getelementptr inbounds i64, i64* %envptr145008, i64 1              ; &envptr145008[1]
  %cont142212 = load i64, i64* %envptr145009, align 8                                ; load; *envptr145009
  %cloptr145010 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145011 = getelementptr inbounds i64, i64* %cloptr145010, i64 0                ; &cloptr145010[0]
  %f145012 = ptrtoint void(i64,i64)* @lam143339 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145012, i64* %eptr145011                                               ; store fptr
  %arg142861 = ptrtoint i64* %cloptr145010 to i64                                    ; closure cast; i64* -> i64
  %cloptr145013 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145015 = getelementptr inbounds i64, i64* %cloptr145013, i64 1                ; &eptr145015[1]
  %eptr145016 = getelementptr inbounds i64, i64* %cloptr145013, i64 2                ; &eptr145016[2]
  %eptr145017 = getelementptr inbounds i64, i64* %cloptr145013, i64 3                ; &eptr145017[3]
  %eptr145018 = getelementptr inbounds i64, i64* %cloptr145013, i64 4                ; &eptr145018[4]
  store i64 %cont142212, i64* %eptr145015                                            ; *eptr145015 = %cont142212
  store i64 %WLY$tail, i64* %eptr145016                                              ; *eptr145016 = %WLY$tail
  store i64 %z56$new, i64* %eptr145017                                               ; *eptr145017 = %z56$new
  store i64 %ZAo$_37wind_45stack, i64* %eptr145018                                   ; *eptr145018 = %ZAo$_37wind_45stack
  %eptr145014 = getelementptr inbounds i64, i64* %cloptr145013, i64 0                ; &cloptr145013[0]
  %f145019 = ptrtoint void(i64,i64,i64)* @lam143336 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145019, i64* %eptr145014                                               ; store fptr
  %arg142860 = ptrtoint i64* %cloptr145013 to i64                                    ; closure cast; i64* -> i64
  %cloptr145020 = inttoptr i64 %arg142861 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145020)                                       ; assert function application
  %i0ptr145021 = getelementptr inbounds i64, i64* %cloptr145020, i64 0               ; &cloptr145020[0]
  %f145023 = load i64, i64* %i0ptr145021, align 8                                    ; load; *i0ptr145021
  %fptr145022 = inttoptr i64 %f145023 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145022(i64 %arg142861, i64 %arg142860)              ; tail call
  ret void
}


define void @lam143339(i64 %env143340, i64 %pOt$lst142224) {
  %cont142223 = call i64 @prim_car(i64 %pOt$lst142224)                               ; call prim_car
  %pOt$lst = call i64 @prim_cdr(i64 %pOt$lst142224)                                  ; call prim_cdr
  %arg142865 = add i64 0, 0                                                          ; quoted ()
  %cloptr145024 = inttoptr i64 %cont142223 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145024)                                       ; assert function application
  %i0ptr145025 = getelementptr inbounds i64, i64* %cloptr145024, i64 0               ; &cloptr145024[0]
  %f145027 = load i64, i64* %i0ptr145025, align 8                                    ; load; *i0ptr145025
  %fptr145026 = inttoptr i64 %f145027 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145026(i64 %cont142223, i64 %arg142865, i64 %pOt$lst); tail call
  ret void
}


define void @lam143336(i64 %env143337, i64 %_95142221, i64 %a142120) {
  %envptr145028 = inttoptr i64 %env143337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145029 = getelementptr inbounds i64, i64* %envptr145028, i64 4              ; &envptr145028[4]
  %ZAo$_37wind_45stack = load i64, i64* %envptr145029, align 8                       ; load; *envptr145029
  %envptr145030 = inttoptr i64 %env143337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145031 = getelementptr inbounds i64, i64* %envptr145030, i64 3              ; &envptr145030[3]
  %z56$new = load i64, i64* %envptr145031, align 8                                   ; load; *envptr145031
  %envptr145032 = inttoptr i64 %env143337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145033 = getelementptr inbounds i64, i64* %envptr145032, i64 2              ; &envptr145032[2]
  %WLY$tail = load i64, i64* %envptr145033, align 8                                  ; load; *envptr145033
  %envptr145034 = inttoptr i64 %env143337 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145035 = getelementptr inbounds i64, i64* %envptr145034, i64 1              ; &envptr145034[1]
  %cont142212 = load i64, i64* %envptr145035, align 8                                ; load; *envptr145035
  %arg142868 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142222 = call i64 @prim_make_45vector(i64 %arg142868, i64 %a142120)        ; call prim_make_45vector
  %cloptr145036 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145038 = getelementptr inbounds i64, i64* %cloptr145036, i64 1                ; &eptr145038[1]
  %eptr145039 = getelementptr inbounds i64, i64* %cloptr145036, i64 2                ; &eptr145039[2]
  %eptr145040 = getelementptr inbounds i64, i64* %cloptr145036, i64 3                ; &eptr145040[3]
  %eptr145041 = getelementptr inbounds i64, i64* %cloptr145036, i64 4                ; &eptr145041[4]
  store i64 %cont142212, i64* %eptr145038                                            ; *eptr145038 = %cont142212
  store i64 %WLY$tail, i64* %eptr145039                                              ; *eptr145039 = %WLY$tail
  store i64 %z56$new, i64* %eptr145040                                               ; *eptr145040 = %z56$new
  store i64 %ZAo$_37wind_45stack, i64* %eptr145041                                   ; *eptr145041 = %ZAo$_37wind_45stack
  %eptr145037 = getelementptr inbounds i64, i64* %cloptr145036, i64 0                ; &cloptr145036[0]
  %f145042 = ptrtoint void(i64,i64,i64)* @lam143333 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145042, i64* %eptr145037                                               ; store fptr
  %arg142871 = ptrtoint i64* %cloptr145036 to i64                                    ; closure cast; i64* -> i64
  %arg142870 = add i64 0, 0                                                          ; quoted ()
  %cloptr145043 = inttoptr i64 %arg142871 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145043)                                       ; assert function application
  %i0ptr145044 = getelementptr inbounds i64, i64* %cloptr145043, i64 0               ; &cloptr145043[0]
  %f145046 = load i64, i64* %i0ptr145044, align 8                                    ; load; *i0ptr145044
  %fptr145045 = inttoptr i64 %f145046 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145045(i64 %arg142871, i64 %arg142870, i64 %retprim142222); tail call
  ret void
}


define void @lam143333(i64 %env143334, i64 %_95142215, i64 %War$f) {
  %envptr145047 = inttoptr i64 %env143334 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145048 = getelementptr inbounds i64, i64* %envptr145047, i64 4              ; &envptr145047[4]
  %ZAo$_37wind_45stack = load i64, i64* %envptr145048, align 8                       ; load; *envptr145048
  %envptr145049 = inttoptr i64 %env143334 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145050 = getelementptr inbounds i64, i64* %envptr145049, i64 3              ; &envptr145049[3]
  %z56$new = load i64, i64* %envptr145050, align 8                                   ; load; *envptr145050
  %envptr145051 = inttoptr i64 %env143334 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145052 = getelementptr inbounds i64, i64* %envptr145051, i64 2              ; &envptr145051[2]
  %WLY$tail = load i64, i64* %envptr145052, align 8                                  ; load; *envptr145052
  %envptr145053 = inttoptr i64 %env143334 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145054 = getelementptr inbounds i64, i64* %envptr145053, i64 1              ; &envptr145053[1]
  %cont142212 = load i64, i64* %envptr145054, align 8                                ; load; *envptr145054
  %arg142873 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr145055 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145057 = getelementptr inbounds i64, i64* %cloptr145055, i64 1                ; &eptr145057[1]
  %eptr145058 = getelementptr inbounds i64, i64* %cloptr145055, i64 2                ; &eptr145058[2]
  %eptr145059 = getelementptr inbounds i64, i64* %cloptr145055, i64 3                ; &eptr145059[3]
  store i64 %War$f, i64* %eptr145057                                                 ; *eptr145057 = %War$f
  store i64 %WLY$tail, i64* %eptr145058                                              ; *eptr145058 = %WLY$tail
  store i64 %ZAo$_37wind_45stack, i64* %eptr145059                                   ; *eptr145059 = %ZAo$_37wind_45stack
  %eptr145056 = getelementptr inbounds i64, i64* %cloptr145055, i64 0                ; &cloptr145055[0]
  %f145060 = ptrtoint void(i64,i64,i64)* @lam143330 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145060, i64* %eptr145056                                               ; store fptr
  %arg142872 = ptrtoint i64* %cloptr145055 to i64                                    ; closure cast; i64* -> i64
  %IRg$_95142006 = call i64 @prim_vector_45set_33(i64 %War$f, i64 %arg142873, i64 %arg142872); call prim_vector_45set_33
  %arg142897 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142127 = call i64 @prim_vector_45ref(i64 %War$f, i64 %arg142897)                 ; call prim_vector_45ref
  %cloptr145061 = inttoptr i64 %a142127 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145061)                                       ; assert function application
  %i0ptr145062 = getelementptr inbounds i64, i64* %cloptr145061, i64 0               ; &cloptr145061[0]
  %f145064 = load i64, i64* %i0ptr145062, align 8                                    ; load; *i0ptr145062
  %fptr145063 = inttoptr i64 %f145064 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145063(i64 %a142127, i64 %cont142212, i64 %z56$new) ; tail call
  ret void
}


define void @lam143330(i64 %env143331, i64 %cont142216, i64 %JdA$l) {
  %envptr145065 = inttoptr i64 %env143331 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145066 = getelementptr inbounds i64, i64* %envptr145065, i64 3              ; &envptr145065[3]
  %ZAo$_37wind_45stack = load i64, i64* %envptr145066, align 8                       ; load; *envptr145066
  %envptr145067 = inttoptr i64 %env143331 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145068 = getelementptr inbounds i64, i64* %envptr145067, i64 2              ; &envptr145067[2]
  %WLY$tail = load i64, i64* %envptr145068, align 8                                  ; load; *envptr145068
  %envptr145069 = inttoptr i64 %env143331 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145070 = getelementptr inbounds i64, i64* %envptr145069, i64 1              ; &envptr145069[1]
  %War$f = load i64, i64* %envptr145070, align 8                                     ; load; *envptr145070
  %a142121 = call i64 @prim_eq_63(i64 %JdA$l, i64 %WLY$tail)                         ; call prim_eq_63
  %a142122 = call i64 @prim_not(i64 %a142121)                                        ; call prim_not
  %cmp145071 = icmp eq i64 %a142122, 15                                              ; false?
  br i1 %cmp145071, label %else145073, label %then145072                             ; if

then145072:
  %arg142878 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142123 = call i64 @prim_vector_45ref(i64 %War$f, i64 %arg142878)                 ; call prim_vector_45ref
  %a142124 = call i64 @prim_cdr(i64 %JdA$l)                                          ; call prim_cdr
  %cloptr145074 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145076 = getelementptr inbounds i64, i64* %cloptr145074, i64 1                ; &eptr145076[1]
  %eptr145077 = getelementptr inbounds i64, i64* %cloptr145074, i64 2                ; &eptr145077[2]
  %eptr145078 = getelementptr inbounds i64, i64* %cloptr145074, i64 3                ; &eptr145078[3]
  store i64 %JdA$l, i64* %eptr145076                                                 ; *eptr145076 = %JdA$l
  store i64 %cont142216, i64* %eptr145077                                            ; *eptr145077 = %cont142216
  store i64 %ZAo$_37wind_45stack, i64* %eptr145078                                   ; *eptr145078 = %ZAo$_37wind_45stack
  %eptr145075 = getelementptr inbounds i64, i64* %cloptr145074, i64 0                ; &cloptr145074[0]
  %f145079 = ptrtoint void(i64,i64,i64)* @lam143326 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145079, i64* %eptr145075                                               ; store fptr
  %arg142882 = ptrtoint i64* %cloptr145074 to i64                                    ; closure cast; i64* -> i64
  %cloptr145080 = inttoptr i64 %a142123 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145080)                                       ; assert function application
  %i0ptr145081 = getelementptr inbounds i64, i64* %cloptr145080, i64 0               ; &cloptr145080[0]
  %f145083 = load i64, i64* %i0ptr145081, align 8                                    ; load; *i0ptr145081
  %fptr145082 = inttoptr i64 %f145083 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145082(i64 %a142123, i64 %arg142882, i64 %a142124)  ; tail call
  ret void

else145073:
  %retprim142220 = call i64 @prim_void()                                             ; call prim_void
  %arg142895 = add i64 0, 0                                                          ; quoted ()
  %cloptr145084 = inttoptr i64 %cont142216 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145084)                                       ; assert function application
  %i0ptr145085 = getelementptr inbounds i64, i64* %cloptr145084, i64 0               ; &cloptr145084[0]
  %f145087 = load i64, i64* %i0ptr145085, align 8                                    ; load; *i0ptr145085
  %fptr145086 = inttoptr i64 %f145087 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145086(i64 %cont142216, i64 %arg142895, i64 %retprim142220); tail call
  ret void
}


define void @lam143326(i64 %env143327, i64 %_95142217, i64 %SF3$_95142007) {
  %envptr145088 = inttoptr i64 %env143327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145089 = getelementptr inbounds i64, i64* %envptr145088, i64 3              ; &envptr145088[3]
  %ZAo$_37wind_45stack = load i64, i64* %envptr145089, align 8                       ; load; *envptr145089
  %envptr145090 = inttoptr i64 %env143327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145091 = getelementptr inbounds i64, i64* %envptr145090, i64 2              ; &envptr145090[2]
  %cont142216 = load i64, i64* %envptr145091, align 8                                ; load; *envptr145091
  %envptr145092 = inttoptr i64 %env143327 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145093 = getelementptr inbounds i64, i64* %envptr145092, i64 1              ; &envptr145092[1]
  %JdA$l = load i64, i64* %envptr145093, align 8                                     ; load; *envptr145093
  %a142125 = call i64 @prim_car(i64 %JdA$l)                                          ; call prim_car
  %a142126 = call i64 @prim_car(i64 %a142125)                                        ; call prim_car
  %cloptr145094 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145096 = getelementptr inbounds i64, i64* %cloptr145094, i64 1                ; &eptr145096[1]
  %eptr145097 = getelementptr inbounds i64, i64* %cloptr145094, i64 2                ; &eptr145097[2]
  %eptr145098 = getelementptr inbounds i64, i64* %cloptr145094, i64 3                ; &eptr145098[3]
  store i64 %JdA$l, i64* %eptr145096                                                 ; *eptr145096 = %JdA$l
  store i64 %cont142216, i64* %eptr145097                                            ; *eptr145097 = %cont142216
  store i64 %ZAo$_37wind_45stack, i64* %eptr145098                                   ; *eptr145098 = %ZAo$_37wind_45stack
  %eptr145095 = getelementptr inbounds i64, i64* %cloptr145094, i64 0                ; &cloptr145094[0]
  %f145099 = ptrtoint void(i64,i64,i64)* @lam143324 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145099, i64* %eptr145095                                               ; store fptr
  %arg142886 = ptrtoint i64* %cloptr145094 to i64                                    ; closure cast; i64* -> i64
  %cloptr145100 = inttoptr i64 %a142126 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145100)                                       ; assert function application
  %i0ptr145101 = getelementptr inbounds i64, i64* %cloptr145100, i64 0               ; &cloptr145100[0]
  %f145103 = load i64, i64* %i0ptr145101, align 8                                    ; load; *i0ptr145101
  %fptr145102 = inttoptr i64 %f145103 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145102(i64 %a142126, i64 %arg142886)                ; tail call
  ret void
}


define void @lam143324(i64 %env143325, i64 %_95142218, i64 %PYZ$_95142008) {
  %envptr145104 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145105 = getelementptr inbounds i64, i64* %envptr145104, i64 3              ; &envptr145104[3]
  %ZAo$_37wind_45stack = load i64, i64* %envptr145105, align 8                       ; load; *envptr145105
  %envptr145106 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145107 = getelementptr inbounds i64, i64* %envptr145106, i64 2              ; &envptr145106[2]
  %cont142216 = load i64, i64* %envptr145107, align 8                                ; load; *envptr145107
  %envptr145108 = inttoptr i64 %env143325 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145109 = getelementptr inbounds i64, i64* %envptr145108, i64 1              ; &envptr145108[1]
  %JdA$l = load i64, i64* %envptr145109, align 8                                     ; load; *envptr145109
  %arg142889 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %retprim142219 = call i64 @prim_vector_45set_33(i64 %ZAo$_37wind_45stack, i64 %arg142889, i64 %JdA$l); call prim_vector_45set_33
  %arg142892 = add i64 0, 0                                                          ; quoted ()
  %cloptr145110 = inttoptr i64 %cont142216 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145110)                                       ; assert function application
  %i0ptr145111 = getelementptr inbounds i64, i64* %cloptr145110, i64 0               ; &cloptr145110[0]
  %f145113 = load i64, i64* %i0ptr145111, align 8                                    ; load; *i0ptr145111
  %fptr145112 = inttoptr i64 %f145113 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145112(i64 %cont142216, i64 %arg142892, i64 %retprim142219); tail call
  ret void
}


define void @lam143311(i64 %env143312, i64 %_950, i64 %x) {
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %cloptr145114 = inttoptr i64 %_951 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145114)                                       ; assert function application
  %i0ptr145115 = getelementptr inbounds i64, i64* %cloptr145114, i64 0               ; &cloptr145114[0]
  %f145117 = load i64, i64* %i0ptr145115, align 8                                    ; load; *i0ptr145115
  %fptr145116 = inttoptr i64 %f145117 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145116(i64 %_951, i64 %_951)                        ; tail call
  ret void
}


define void @lam143304(i64 %env143305, i64 %cont142246, i64 %N4u$_37foldl) {
  %envptr145118 = inttoptr i64 %env143305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145119 = getelementptr inbounds i64, i64* %envptr145118, i64 3              ; &envptr145118[3]
  %K3q$_37foldr = load i64, i64* %envptr145119, align 8                              ; load; *envptr145119
  %envptr145120 = inttoptr i64 %env143305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145121 = getelementptr inbounds i64, i64* %envptr145120, i64 2              ; &envptr145120[2]
  %jpk$_37map1 = load i64, i64* %envptr145121, align 8                               ; load; *envptr145121
  %envptr145122 = inttoptr i64 %env143305 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145123 = getelementptr inbounds i64, i64* %envptr145122, i64 1              ; &envptr145122[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145123, align 8                             ; load; *envptr145123
  %arg142917 = add i64 0, 0                                                          ; quoted ()
  %cloptr145124 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145126 = getelementptr inbounds i64, i64* %cloptr145124, i64 1                ; &eptr145126[1]
  %eptr145127 = getelementptr inbounds i64, i64* %cloptr145124, i64 2                ; &eptr145127[2]
  %eptr145128 = getelementptr inbounds i64, i64* %cloptr145124, i64 3                ; &eptr145128[3]
  %eptr145129 = getelementptr inbounds i64, i64* %cloptr145124, i64 4                ; &eptr145129[4]
  store i64 %N4u$_37foldl, i64* %eptr145126                                          ; *eptr145126 = %N4u$_37foldl
  store i64 %RWL$_37foldr1, i64* %eptr145127                                         ; *eptr145127 = %RWL$_37foldr1
  store i64 %jpk$_37map1, i64* %eptr145128                                           ; *eptr145128 = %jpk$_37map1
  store i64 %K3q$_37foldr, i64* %eptr145129                                          ; *eptr145129 = %K3q$_37foldr
  %eptr145125 = getelementptr inbounds i64, i64* %cloptr145124, i64 0                ; &cloptr145124[0]
  %f145130 = ptrtoint void(i64,i64)* @lam143301 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145130, i64* %eptr145125                                               ; store fptr
  %arg142916 = ptrtoint i64* %cloptr145124 to i64                                    ; closure cast; i64* -> i64
  %cloptr145131 = inttoptr i64 %cont142246 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145131)                                       ; assert function application
  %i0ptr145132 = getelementptr inbounds i64, i64* %cloptr145131, i64 0               ; &cloptr145131[0]
  %f145134 = load i64, i64* %i0ptr145132, align 8                                    ; load; *i0ptr145132
  %fptr145133 = inttoptr i64 %f145134 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145133(i64 %cont142246, i64 %arg142917, i64 %arg142916); tail call
  ret void
}


define void @lam143301(i64 %env143302, i64 %kvb$args142248) {
  %envptr145135 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145136 = getelementptr inbounds i64, i64* %envptr145135, i64 4              ; &envptr145135[4]
  %K3q$_37foldr = load i64, i64* %envptr145136, align 8                              ; load; *envptr145136
  %envptr145137 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145138 = getelementptr inbounds i64, i64* %envptr145137, i64 3              ; &envptr145137[3]
  %jpk$_37map1 = load i64, i64* %envptr145138, align 8                               ; load; *envptr145138
  %envptr145139 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145140 = getelementptr inbounds i64, i64* %envptr145139, i64 2              ; &envptr145139[2]
  %RWL$_37foldr1 = load i64, i64* %envptr145140, align 8                             ; load; *envptr145140
  %envptr145141 = inttoptr i64 %env143302 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145142 = getelementptr inbounds i64, i64* %envptr145141, i64 1              ; &envptr145141[1]
  %N4u$_37foldl = load i64, i64* %envptr145142, align 8                              ; load; *envptr145142
  %cont142247 = call i64 @prim_car(i64 %kvb$args142248)                              ; call prim_car
  %kvb$args = call i64 @prim_cdr(i64 %kvb$args142248)                                ; call prim_cdr
  %vBe$f = call i64 @prim_car(i64 %kvb$args)                                         ; call prim_car
  %a142049 = call i64 @prim_cdr(i64 %kvb$args)                                       ; call prim_cdr
  %retprim142267 = call i64 @prim_car(i64 %a142049)                                  ; call prim_car
  %cloptr145143 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145145 = getelementptr inbounds i64, i64* %cloptr145143, i64 1                ; &eptr145145[1]
  %eptr145146 = getelementptr inbounds i64, i64* %cloptr145143, i64 2                ; &eptr145146[2]
  %eptr145147 = getelementptr inbounds i64, i64* %cloptr145143, i64 3                ; &eptr145147[3]
  %eptr145148 = getelementptr inbounds i64, i64* %cloptr145143, i64 4                ; &eptr145148[4]
  %eptr145149 = getelementptr inbounds i64, i64* %cloptr145143, i64 5                ; &eptr145149[5]
  %eptr145150 = getelementptr inbounds i64, i64* %cloptr145143, i64 6                ; &eptr145150[6]
  %eptr145151 = getelementptr inbounds i64, i64* %cloptr145143, i64 7                ; &eptr145151[7]
  store i64 %cont142247, i64* %eptr145145                                            ; *eptr145145 = %cont142247
  store i64 %N4u$_37foldl, i64* %eptr145146                                          ; *eptr145146 = %N4u$_37foldl
  store i64 %vBe$f, i64* %eptr145147                                                 ; *eptr145147 = %vBe$f
  store i64 %RWL$_37foldr1, i64* %eptr145148                                         ; *eptr145148 = %RWL$_37foldr1
  store i64 %jpk$_37map1, i64* %eptr145149                                           ; *eptr145149 = %jpk$_37map1
  store i64 %kvb$args, i64* %eptr145150                                              ; *eptr145150 = %kvb$args
  store i64 %K3q$_37foldr, i64* %eptr145151                                          ; *eptr145151 = %K3q$_37foldr
  %eptr145144 = getelementptr inbounds i64, i64* %cloptr145143, i64 0                ; &cloptr145143[0]
  %f145152 = ptrtoint void(i64,i64,i64)* @lam143299 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145152, i64* %eptr145144                                               ; store fptr
  %arg142926 = ptrtoint i64* %cloptr145143 to i64                                    ; closure cast; i64* -> i64
  %arg142925 = add i64 0, 0                                                          ; quoted ()
  %cloptr145153 = inttoptr i64 %arg142926 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145153)                                       ; assert function application
  %i0ptr145154 = getelementptr inbounds i64, i64* %cloptr145153, i64 0               ; &cloptr145153[0]
  %f145156 = load i64, i64* %i0ptr145154, align 8                                    ; load; *i0ptr145154
  %fptr145155 = inttoptr i64 %f145156 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145155(i64 %arg142926, i64 %arg142925, i64 %retprim142267); tail call
  ret void
}


define void @lam143299(i64 %env143300, i64 %_95142249, i64 %Bwn$acc) {
  %envptr145157 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145158 = getelementptr inbounds i64, i64* %envptr145157, i64 7              ; &envptr145157[7]
  %K3q$_37foldr = load i64, i64* %envptr145158, align 8                              ; load; *envptr145158
  %envptr145159 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145160 = getelementptr inbounds i64, i64* %envptr145159, i64 6              ; &envptr145159[6]
  %kvb$args = load i64, i64* %envptr145160, align 8                                  ; load; *envptr145160
  %envptr145161 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145162 = getelementptr inbounds i64, i64* %envptr145161, i64 5              ; &envptr145161[5]
  %jpk$_37map1 = load i64, i64* %envptr145162, align 8                               ; load; *envptr145162
  %envptr145163 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145164 = getelementptr inbounds i64, i64* %envptr145163, i64 4              ; &envptr145163[4]
  %RWL$_37foldr1 = load i64, i64* %envptr145164, align 8                             ; load; *envptr145164
  %envptr145165 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145166 = getelementptr inbounds i64, i64* %envptr145165, i64 3              ; &envptr145165[3]
  %vBe$f = load i64, i64* %envptr145166, align 8                                     ; load; *envptr145166
  %envptr145167 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145168 = getelementptr inbounds i64, i64* %envptr145167, i64 2              ; &envptr145167[2]
  %N4u$_37foldl = load i64, i64* %envptr145168, align 8                              ; load; *envptr145168
  %envptr145169 = inttoptr i64 %env143300 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145170 = getelementptr inbounds i64, i64* %envptr145169, i64 1              ; &envptr145169[1]
  %cont142247 = load i64, i64* %envptr145170, align 8                                ; load; *envptr145170
  %a142050 = call i64 @prim_cdr(i64 %kvb$args)                                       ; call prim_cdr
  %retprim142266 = call i64 @prim_cdr(i64 %a142050)                                  ; call prim_cdr
  %cloptr145171 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145173 = getelementptr inbounds i64, i64* %cloptr145171, i64 1                ; &eptr145173[1]
  %eptr145174 = getelementptr inbounds i64, i64* %cloptr145171, i64 2                ; &eptr145174[2]
  %eptr145175 = getelementptr inbounds i64, i64* %cloptr145171, i64 3                ; &eptr145175[3]
  %eptr145176 = getelementptr inbounds i64, i64* %cloptr145171, i64 4                ; &eptr145176[4]
  %eptr145177 = getelementptr inbounds i64, i64* %cloptr145171, i64 5                ; &eptr145177[5]
  %eptr145178 = getelementptr inbounds i64, i64* %cloptr145171, i64 6                ; &eptr145178[6]
  %eptr145179 = getelementptr inbounds i64, i64* %cloptr145171, i64 7                ; &eptr145179[7]
  store i64 %cont142247, i64* %eptr145173                                            ; *eptr145173 = %cont142247
  store i64 %N4u$_37foldl, i64* %eptr145174                                          ; *eptr145174 = %N4u$_37foldl
  store i64 %vBe$f, i64* %eptr145175                                                 ; *eptr145175 = %vBe$f
  store i64 %RWL$_37foldr1, i64* %eptr145176                                         ; *eptr145176 = %RWL$_37foldr1
  store i64 %jpk$_37map1, i64* %eptr145177                                           ; *eptr145177 = %jpk$_37map1
  store i64 %Bwn$acc, i64* %eptr145178                                               ; *eptr145178 = %Bwn$acc
  store i64 %K3q$_37foldr, i64* %eptr145179                                          ; *eptr145179 = %K3q$_37foldr
  %eptr145172 = getelementptr inbounds i64, i64* %cloptr145171, i64 0                ; &cloptr145171[0]
  %f145180 = ptrtoint void(i64,i64,i64)* @lam143297 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145180, i64* %eptr145172                                               ; store fptr
  %arg142931 = ptrtoint i64* %cloptr145171 to i64                                    ; closure cast; i64* -> i64
  %arg142930 = add i64 0, 0                                                          ; quoted ()
  %cloptr145181 = inttoptr i64 %arg142931 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145181)                                       ; assert function application
  %i0ptr145182 = getelementptr inbounds i64, i64* %cloptr145181, i64 0               ; &cloptr145181[0]
  %f145184 = load i64, i64* %i0ptr145182, align 8                                    ; load; *i0ptr145182
  %fptr145183 = inttoptr i64 %f145184 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145183(i64 %arg142931, i64 %arg142930, i64 %retprim142266); tail call
  ret void
}


define void @lam143297(i64 %env143298, i64 %_95142250, i64 %LdU$lsts) {
  %envptr145185 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145186 = getelementptr inbounds i64, i64* %envptr145185, i64 7              ; &envptr145185[7]
  %K3q$_37foldr = load i64, i64* %envptr145186, align 8                              ; load; *envptr145186
  %envptr145187 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145188 = getelementptr inbounds i64, i64* %envptr145187, i64 6              ; &envptr145187[6]
  %Bwn$acc = load i64, i64* %envptr145188, align 8                                   ; load; *envptr145188
  %envptr145189 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145190 = getelementptr inbounds i64, i64* %envptr145189, i64 5              ; &envptr145189[5]
  %jpk$_37map1 = load i64, i64* %envptr145190, align 8                               ; load; *envptr145190
  %envptr145191 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145192 = getelementptr inbounds i64, i64* %envptr145191, i64 4              ; &envptr145191[4]
  %RWL$_37foldr1 = load i64, i64* %envptr145192, align 8                             ; load; *envptr145192
  %envptr145193 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145194 = getelementptr inbounds i64, i64* %envptr145193, i64 3              ; &envptr145193[3]
  %vBe$f = load i64, i64* %envptr145194, align 8                                     ; load; *envptr145194
  %envptr145195 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145196 = getelementptr inbounds i64, i64* %envptr145195, i64 2              ; &envptr145195[2]
  %N4u$_37foldl = load i64, i64* %envptr145196, align 8                              ; load; *envptr145196
  %envptr145197 = inttoptr i64 %env143298 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145198 = getelementptr inbounds i64, i64* %envptr145197, i64 1              ; &envptr145197[1]
  %cont142247 = load i64, i64* %envptr145198, align 8                                ; load; *envptr145198
  %cloptr145199 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145201 = getelementptr inbounds i64, i64* %cloptr145199, i64 1                ; &eptr145201[1]
  %eptr145202 = getelementptr inbounds i64, i64* %cloptr145199, i64 2                ; &eptr145202[2]
  %eptr145203 = getelementptr inbounds i64, i64* %cloptr145199, i64 3                ; &eptr145203[3]
  %eptr145204 = getelementptr inbounds i64, i64* %cloptr145199, i64 4                ; &eptr145204[4]
  %eptr145205 = getelementptr inbounds i64, i64* %cloptr145199, i64 5                ; &eptr145205[5]
  %eptr145206 = getelementptr inbounds i64, i64* %cloptr145199, i64 6                ; &eptr145206[6]
  %eptr145207 = getelementptr inbounds i64, i64* %cloptr145199, i64 7                ; &eptr145207[7]
  store i64 %cont142247, i64* %eptr145201                                            ; *eptr145201 = %cont142247
  store i64 %N4u$_37foldl, i64* %eptr145202                                          ; *eptr145202 = %N4u$_37foldl
  store i64 %vBe$f, i64* %eptr145203                                                 ; *eptr145203 = %vBe$f
  store i64 %LdU$lsts, i64* %eptr145204                                              ; *eptr145204 = %LdU$lsts
  store i64 %jpk$_37map1, i64* %eptr145205                                           ; *eptr145205 = %jpk$_37map1
  store i64 %Bwn$acc, i64* %eptr145206                                               ; *eptr145206 = %Bwn$acc
  store i64 %K3q$_37foldr, i64* %eptr145207                                          ; *eptr145207 = %K3q$_37foldr
  %eptr145200 = getelementptr inbounds i64, i64* %cloptr145199, i64 0                ; &cloptr145199[0]
  %f145208 = ptrtoint void(i64,i64,i64)* @lam143295 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145208, i64* %eptr145200                                               ; store fptr
  %arg142935 = ptrtoint i64* %cloptr145199 to i64                                    ; closure cast; i64* -> i64
  %cloptr145209 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145210 = getelementptr inbounds i64, i64* %cloptr145209, i64 0                ; &cloptr145209[0]
  %f145211 = ptrtoint void(i64,i64,i64,i64)* @lam143274 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145211, i64* %eptr145210                                               ; store fptr
  %arg142934 = ptrtoint i64* %cloptr145209 to i64                                    ; closure cast; i64* -> i64
  %arg142933 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr145212 = inttoptr i64 %RWL$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145212)                                       ; assert function application
  %i0ptr145213 = getelementptr inbounds i64, i64* %cloptr145212, i64 0               ; &cloptr145212[0]
  %f145215 = load i64, i64* %i0ptr145213, align 8                                    ; load; *i0ptr145213
  %fptr145214 = inttoptr i64 %f145215 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145214(i64 %RWL$_37foldr1, i64 %arg142935, i64 %arg142934, i64 %arg142933, i64 %LdU$lsts); tail call
  ret void
}


define void @lam143295(i64 %env143296, i64 %_95142251, i64 %a142051) {
  %envptr145216 = inttoptr i64 %env143296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145217 = getelementptr inbounds i64, i64* %envptr145216, i64 7              ; &envptr145216[7]
  %K3q$_37foldr = load i64, i64* %envptr145217, align 8                              ; load; *envptr145217
  %envptr145218 = inttoptr i64 %env143296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145219 = getelementptr inbounds i64, i64* %envptr145218, i64 6              ; &envptr145218[6]
  %Bwn$acc = load i64, i64* %envptr145219, align 8                                   ; load; *envptr145219
  %envptr145220 = inttoptr i64 %env143296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145221 = getelementptr inbounds i64, i64* %envptr145220, i64 5              ; &envptr145220[5]
  %jpk$_37map1 = load i64, i64* %envptr145221, align 8                               ; load; *envptr145221
  %envptr145222 = inttoptr i64 %env143296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145223 = getelementptr inbounds i64, i64* %envptr145222, i64 4              ; &envptr145222[4]
  %LdU$lsts = load i64, i64* %envptr145223, align 8                                  ; load; *envptr145223
  %envptr145224 = inttoptr i64 %env143296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145225 = getelementptr inbounds i64, i64* %envptr145224, i64 3              ; &envptr145224[3]
  %vBe$f = load i64, i64* %envptr145225, align 8                                     ; load; *envptr145225
  %envptr145226 = inttoptr i64 %env143296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145227 = getelementptr inbounds i64, i64* %envptr145226, i64 2              ; &envptr145226[2]
  %N4u$_37foldl = load i64, i64* %envptr145227, align 8                              ; load; *envptr145227
  %envptr145228 = inttoptr i64 %env143296 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145229 = getelementptr inbounds i64, i64* %envptr145228, i64 1              ; &envptr145228[1]
  %cont142247 = load i64, i64* %envptr145229, align 8                                ; load; *envptr145229
  %cmp145230 = icmp eq i64 %a142051, 15                                              ; false?
  br i1 %cmp145230, label %else145232, label %then145231                             ; if

then145231:
  %arg142938 = add i64 0, 0                                                          ; quoted ()
  %cloptr145233 = inttoptr i64 %cont142247 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145233)                                       ; assert function application
  %i0ptr145234 = getelementptr inbounds i64, i64* %cloptr145233, i64 0               ; &cloptr145233[0]
  %f145236 = load i64, i64* %i0ptr145234, align 8                                    ; load; *i0ptr145234
  %fptr145235 = inttoptr i64 %f145236 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145235(i64 %cont142247, i64 %arg142938, i64 %Bwn$acc); tail call
  ret void

else145232:
  %cloptr145237 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145239 = getelementptr inbounds i64, i64* %cloptr145237, i64 1                ; &eptr145239[1]
  %eptr145240 = getelementptr inbounds i64, i64* %cloptr145237, i64 2                ; &eptr145240[2]
  %eptr145241 = getelementptr inbounds i64, i64* %cloptr145237, i64 3                ; &eptr145241[3]
  %eptr145242 = getelementptr inbounds i64, i64* %cloptr145237, i64 4                ; &eptr145242[4]
  %eptr145243 = getelementptr inbounds i64, i64* %cloptr145237, i64 5                ; &eptr145243[5]
  %eptr145244 = getelementptr inbounds i64, i64* %cloptr145237, i64 6                ; &eptr145244[6]
  %eptr145245 = getelementptr inbounds i64, i64* %cloptr145237, i64 7                ; &eptr145245[7]
  store i64 %cont142247, i64* %eptr145239                                            ; *eptr145239 = %cont142247
  store i64 %N4u$_37foldl, i64* %eptr145240                                          ; *eptr145240 = %N4u$_37foldl
  store i64 %vBe$f, i64* %eptr145241                                                 ; *eptr145241 = %vBe$f
  store i64 %LdU$lsts, i64* %eptr145242                                              ; *eptr145242 = %LdU$lsts
  store i64 %jpk$_37map1, i64* %eptr145243                                           ; *eptr145243 = %jpk$_37map1
  store i64 %Bwn$acc, i64* %eptr145244                                               ; *eptr145244 = %Bwn$acc
  store i64 %K3q$_37foldr, i64* %eptr145245                                          ; *eptr145245 = %K3q$_37foldr
  %eptr145238 = getelementptr inbounds i64, i64* %cloptr145237, i64 0                ; &cloptr145237[0]
  %f145246 = ptrtoint void(i64,i64,i64)* @lam143293 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145246, i64* %eptr145238                                               ; store fptr
  %arg142942 = ptrtoint i64* %cloptr145237 to i64                                    ; closure cast; i64* -> i64
  %cloptr145247 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145248 = getelementptr inbounds i64, i64* %cloptr145247, i64 0                ; &cloptr145247[0]
  %f145249 = ptrtoint void(i64,i64,i64)* @lam143278 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145249, i64* %eptr145248                                               ; store fptr
  %arg142941 = ptrtoint i64* %cloptr145247 to i64                                    ; closure cast; i64* -> i64
  %cloptr145250 = inttoptr i64 %jpk$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145250)                                       ; assert function application
  %i0ptr145251 = getelementptr inbounds i64, i64* %cloptr145250, i64 0               ; &cloptr145250[0]
  %f145253 = load i64, i64* %i0ptr145251, align 8                                    ; load; *i0ptr145251
  %fptr145252 = inttoptr i64 %f145253 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145252(i64 %jpk$_37map1, i64 %arg142942, i64 %arg142941, i64 %LdU$lsts); tail call
  ret void
}


define void @lam143293(i64 %env143294, i64 %_95142252, i64 %HNW$lsts_43) {
  %envptr145254 = inttoptr i64 %env143294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145255 = getelementptr inbounds i64, i64* %envptr145254, i64 7              ; &envptr145254[7]
  %K3q$_37foldr = load i64, i64* %envptr145255, align 8                              ; load; *envptr145255
  %envptr145256 = inttoptr i64 %env143294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145257 = getelementptr inbounds i64, i64* %envptr145256, i64 6              ; &envptr145256[6]
  %Bwn$acc = load i64, i64* %envptr145257, align 8                                   ; load; *envptr145257
  %envptr145258 = inttoptr i64 %env143294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145259 = getelementptr inbounds i64, i64* %envptr145258, i64 5              ; &envptr145258[5]
  %jpk$_37map1 = load i64, i64* %envptr145259, align 8                               ; load; *envptr145259
  %envptr145260 = inttoptr i64 %env143294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145261 = getelementptr inbounds i64, i64* %envptr145260, i64 4              ; &envptr145260[4]
  %LdU$lsts = load i64, i64* %envptr145261, align 8                                  ; load; *envptr145261
  %envptr145262 = inttoptr i64 %env143294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145263 = getelementptr inbounds i64, i64* %envptr145262, i64 3              ; &envptr145262[3]
  %vBe$f = load i64, i64* %envptr145263, align 8                                     ; load; *envptr145263
  %envptr145264 = inttoptr i64 %env143294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145265 = getelementptr inbounds i64, i64* %envptr145264, i64 2              ; &envptr145264[2]
  %N4u$_37foldl = load i64, i64* %envptr145265, align 8                              ; load; *envptr145265
  %envptr145266 = inttoptr i64 %env143294 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145267 = getelementptr inbounds i64, i64* %envptr145266, i64 1              ; &envptr145266[1]
  %cont142247 = load i64, i64* %envptr145267, align 8                                ; load; *envptr145267
  %cloptr145268 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145270 = getelementptr inbounds i64, i64* %cloptr145268, i64 1                ; &eptr145270[1]
  %eptr145271 = getelementptr inbounds i64, i64* %cloptr145268, i64 2                ; &eptr145271[2]
  %eptr145272 = getelementptr inbounds i64, i64* %cloptr145268, i64 3                ; &eptr145272[3]
  %eptr145273 = getelementptr inbounds i64, i64* %cloptr145268, i64 4                ; &eptr145273[4]
  %eptr145274 = getelementptr inbounds i64, i64* %cloptr145268, i64 5                ; &eptr145274[5]
  %eptr145275 = getelementptr inbounds i64, i64* %cloptr145268, i64 6                ; &eptr145275[6]
  store i64 %cont142247, i64* %eptr145270                                            ; *eptr145270 = %cont142247
  store i64 %N4u$_37foldl, i64* %eptr145271                                          ; *eptr145271 = %N4u$_37foldl
  store i64 %HNW$lsts_43, i64* %eptr145272                                           ; *eptr145272 = %HNW$lsts_43
  store i64 %vBe$f, i64* %eptr145273                                                 ; *eptr145273 = %vBe$f
  store i64 %Bwn$acc, i64* %eptr145274                                               ; *eptr145274 = %Bwn$acc
  store i64 %K3q$_37foldr, i64* %eptr145275                                          ; *eptr145275 = %K3q$_37foldr
  %eptr145269 = getelementptr inbounds i64, i64* %cloptr145268, i64 0                ; &cloptr145268[0]
  %f145276 = ptrtoint void(i64,i64,i64)* @lam143291 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145276, i64* %eptr145269                                               ; store fptr
  %arg142946 = ptrtoint i64* %cloptr145268 to i64                                    ; closure cast; i64* -> i64
  %cloptr145277 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145278 = getelementptr inbounds i64, i64* %cloptr145277, i64 0                ; &cloptr145277[0]
  %f145279 = ptrtoint void(i64,i64,i64)* @lam143281 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145279, i64* %eptr145278                                               ; store fptr
  %arg142945 = ptrtoint i64* %cloptr145277 to i64                                    ; closure cast; i64* -> i64
  %cloptr145280 = inttoptr i64 %jpk$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145280)                                       ; assert function application
  %i0ptr145281 = getelementptr inbounds i64, i64* %cloptr145280, i64 0               ; &cloptr145280[0]
  %f145283 = load i64, i64* %i0ptr145281, align 8                                    ; load; *i0ptr145281
  %fptr145282 = inttoptr i64 %f145283 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145282(i64 %jpk$_37map1, i64 %arg142946, i64 %arg142945, i64 %LdU$lsts); tail call
  ret void
}


define void @lam143291(i64 %env143292, i64 %_95142253, i64 %J1B$vs) {
  %envptr145284 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145285 = getelementptr inbounds i64, i64* %envptr145284, i64 6              ; &envptr145284[6]
  %K3q$_37foldr = load i64, i64* %envptr145285, align 8                              ; load; *envptr145285
  %envptr145286 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145287 = getelementptr inbounds i64, i64* %envptr145286, i64 5              ; &envptr145286[5]
  %Bwn$acc = load i64, i64* %envptr145287, align 8                                   ; load; *envptr145287
  %envptr145288 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145289 = getelementptr inbounds i64, i64* %envptr145288, i64 4              ; &envptr145288[4]
  %vBe$f = load i64, i64* %envptr145289, align 8                                     ; load; *envptr145289
  %envptr145290 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145291 = getelementptr inbounds i64, i64* %envptr145290, i64 3              ; &envptr145290[3]
  %HNW$lsts_43 = load i64, i64* %envptr145291, align 8                               ; load; *envptr145291
  %envptr145292 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145293 = getelementptr inbounds i64, i64* %envptr145292, i64 2              ; &envptr145292[2]
  %N4u$_37foldl = load i64, i64* %envptr145293, align 8                              ; load; *envptr145293
  %envptr145294 = inttoptr i64 %env143292 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145295 = getelementptr inbounds i64, i64* %envptr145294, i64 1              ; &envptr145294[1]
  %cont142247 = load i64, i64* %envptr145295, align 8                                ; load; *envptr145295
  %arg142948 = add i64 0, 0                                                          ; quoted ()
  %a142052 = call i64 @prim_cons(i64 %Bwn$acc, i64 %arg142948)                       ; call prim_cons
  %cloptr145296 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145298 = getelementptr inbounds i64, i64* %cloptr145296, i64 1                ; &eptr145298[1]
  %eptr145299 = getelementptr inbounds i64, i64* %cloptr145296, i64 2                ; &eptr145299[2]
  %eptr145300 = getelementptr inbounds i64, i64* %cloptr145296, i64 3                ; &eptr145300[3]
  %eptr145301 = getelementptr inbounds i64, i64* %cloptr145296, i64 4                ; &eptr145301[4]
  store i64 %cont142247, i64* %eptr145298                                            ; *eptr145298 = %cont142247
  store i64 %N4u$_37foldl, i64* %eptr145299                                          ; *eptr145299 = %N4u$_37foldl
  store i64 %HNW$lsts_43, i64* %eptr145300                                           ; *eptr145300 = %HNW$lsts_43
  store i64 %vBe$f, i64* %eptr145301                                                 ; *eptr145301 = %vBe$f
  %eptr145297 = getelementptr inbounds i64, i64* %cloptr145296, i64 0                ; &cloptr145296[0]
  %f145302 = ptrtoint void(i64,i64,i64)* @lam143288 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145302, i64* %eptr145297                                               ; store fptr
  %arg142953 = ptrtoint i64* %cloptr145296 to i64                                    ; closure cast; i64* -> i64
  %cloptr145303 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145304 = getelementptr inbounds i64, i64* %cloptr145303, i64 0                ; &cloptr145303[0]
  %f145305 = ptrtoint void(i64,i64,i64,i64)* @lam143284 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145305, i64* %eptr145304                                               ; store fptr
  %arg142952 = ptrtoint i64* %cloptr145303 to i64                                    ; closure cast; i64* -> i64
  %cloptr145306 = inttoptr i64 %K3q$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145306)                                       ; assert function application
  %i0ptr145307 = getelementptr inbounds i64, i64* %cloptr145306, i64 0               ; &cloptr145306[0]
  %f145309 = load i64, i64* %i0ptr145307, align 8                                    ; load; *i0ptr145307
  %fptr145308 = inttoptr i64 %f145309 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145308(i64 %K3q$_37foldr, i64 %arg142953, i64 %arg142952, i64 %a142052, i64 %J1B$vs); tail call
  ret void
}


define void @lam143288(i64 %env143289, i64 %_95142256, i64 %a142053) {
  %envptr145310 = inttoptr i64 %env143289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145311 = getelementptr inbounds i64, i64* %envptr145310, i64 4              ; &envptr145310[4]
  %vBe$f = load i64, i64* %envptr145311, align 8                                     ; load; *envptr145311
  %envptr145312 = inttoptr i64 %env143289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145313 = getelementptr inbounds i64, i64* %envptr145312, i64 3              ; &envptr145312[3]
  %HNW$lsts_43 = load i64, i64* %envptr145313, align 8                               ; load; *envptr145313
  %envptr145314 = inttoptr i64 %env143289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145315 = getelementptr inbounds i64, i64* %envptr145314, i64 2              ; &envptr145314[2]
  %N4u$_37foldl = load i64, i64* %envptr145315, align 8                              ; load; *envptr145315
  %envptr145316 = inttoptr i64 %env143289 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145317 = getelementptr inbounds i64, i64* %envptr145316, i64 1              ; &envptr145316[1]
  %cont142247 = load i64, i64* %envptr145317, align 8                                ; load; *envptr145317
  %cloptr145318 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145320 = getelementptr inbounds i64, i64* %cloptr145318, i64 1                ; &eptr145320[1]
  %eptr145321 = getelementptr inbounds i64, i64* %cloptr145318, i64 2                ; &eptr145321[2]
  %eptr145322 = getelementptr inbounds i64, i64* %cloptr145318, i64 3                ; &eptr145322[3]
  %eptr145323 = getelementptr inbounds i64, i64* %cloptr145318, i64 4                ; &eptr145323[4]
  store i64 %cont142247, i64* %eptr145320                                            ; *eptr145320 = %cont142247
  store i64 %N4u$_37foldl, i64* %eptr145321                                          ; *eptr145321 = %N4u$_37foldl
  store i64 %HNW$lsts_43, i64* %eptr145322                                           ; *eptr145322 = %HNW$lsts_43
  store i64 %vBe$f, i64* %eptr145323                                                 ; *eptr145323 = %vBe$f
  %eptr145319 = getelementptr inbounds i64, i64* %cloptr145318, i64 0                ; &cloptr145318[0]
  %f145324 = ptrtoint void(i64,i64,i64)* @lam143286 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145324, i64* %eptr145319                                               ; store fptr
  %arg142956 = ptrtoint i64* %cloptr145318 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142257 = call i64 @prim_cons(i64 %arg142956, i64 %a142053)               ; call prim_cons
  %cloptr145325 = inttoptr i64 %vBe$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145325)                                       ; assert function application
  %i0ptr145326 = getelementptr inbounds i64, i64* %cloptr145325, i64 0               ; &cloptr145325[0]
  %f145328 = load i64, i64* %i0ptr145326, align 8                                    ; load; *i0ptr145326
  %fptr145327 = inttoptr i64 %f145328 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145327(i64 %vBe$f, i64 %cps_45lst142257)            ; tail call
  ret void
}


define void @lam143286(i64 %env143287, i64 %_95142254, i64 %yXQ$acc_43) {
  %envptr145329 = inttoptr i64 %env143287 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145330 = getelementptr inbounds i64, i64* %envptr145329, i64 4              ; &envptr145329[4]
  %vBe$f = load i64, i64* %envptr145330, align 8                                     ; load; *envptr145330
  %envptr145331 = inttoptr i64 %env143287 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145332 = getelementptr inbounds i64, i64* %envptr145331, i64 3              ; &envptr145331[3]
  %HNW$lsts_43 = load i64, i64* %envptr145332, align 8                               ; load; *envptr145332
  %envptr145333 = inttoptr i64 %env143287 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145334 = getelementptr inbounds i64, i64* %envptr145333, i64 2              ; &envptr145333[2]
  %N4u$_37foldl = load i64, i64* %envptr145334, align 8                              ; load; *envptr145334
  %envptr145335 = inttoptr i64 %env143287 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145336 = getelementptr inbounds i64, i64* %envptr145335, i64 1              ; &envptr145335[1]
  %cont142247 = load i64, i64* %envptr145336, align 8                                ; load; *envptr145336
  %a142054 = call i64 @prim_cons(i64 %yXQ$acc_43, i64 %HNW$lsts_43)                  ; call prim_cons
  %a142055 = call i64 @prim_cons(i64 %vBe$f, i64 %a142054)                           ; call prim_cons
  %cps_45lst142255 = call i64 @prim_cons(i64 %cont142247, i64 %a142055)              ; call prim_cons
  %cloptr145337 = inttoptr i64 %N4u$_37foldl to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145337)                                       ; assert function application
  %i0ptr145338 = getelementptr inbounds i64, i64* %cloptr145337, i64 0               ; &cloptr145337[0]
  %f145340 = load i64, i64* %i0ptr145338, align 8                                    ; load; *i0ptr145338
  %fptr145339 = inttoptr i64 %f145340 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145339(i64 %N4u$_37foldl, i64 %cps_45lst142255)     ; tail call
  ret void
}


define void @lam143284(i64 %env143285, i64 %cont142258, i64 %D1k$a, i64 %Awv$b) {
  %retprim142259 = call i64 @prim_cons(i64 %D1k$a, i64 %Awv$b)                       ; call prim_cons
  %arg142966 = add i64 0, 0                                                          ; quoted ()
  %cloptr145341 = inttoptr i64 %cont142258 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145341)                                       ; assert function application
  %i0ptr145342 = getelementptr inbounds i64, i64* %cloptr145341, i64 0               ; &cloptr145341[0]
  %f145344 = load i64, i64* %i0ptr145342, align 8                                    ; load; *i0ptr145342
  %fptr145343 = inttoptr i64 %f145344 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145343(i64 %cont142258, i64 %arg142966, i64 %retprim142259); tail call
  ret void
}


define void @lam143281(i64 %env143282, i64 %cont142260, i64 %ss9$x) {
  %retprim142261 = call i64 @prim_car(i64 %ss9$x)                                    ; call prim_car
  %arg142970 = add i64 0, 0                                                          ; quoted ()
  %cloptr145345 = inttoptr i64 %cont142260 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145345)                                       ; assert function application
  %i0ptr145346 = getelementptr inbounds i64, i64* %cloptr145345, i64 0               ; &cloptr145345[0]
  %f145348 = load i64, i64* %i0ptr145346, align 8                                    ; load; *i0ptr145346
  %fptr145347 = inttoptr i64 %f145348 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145347(i64 %cont142260, i64 %arg142970, i64 %retprim142261); tail call
  ret void
}


define void @lam143278(i64 %env143279, i64 %cont142262, i64 %bNK$x) {
  %retprim142263 = call i64 @prim_cdr(i64 %bNK$x)                                    ; call prim_cdr
  %arg142974 = add i64 0, 0                                                          ; quoted ()
  %cloptr145349 = inttoptr i64 %cont142262 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145349)                                       ; assert function application
  %i0ptr145350 = getelementptr inbounds i64, i64* %cloptr145349, i64 0               ; &cloptr145349[0]
  %f145352 = load i64, i64* %i0ptr145350, align 8                                    ; load; *i0ptr145350
  %fptr145351 = inttoptr i64 %f145352 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145351(i64 %cont142262, i64 %arg142974, i64 %retprim142263); tail call
  ret void
}


define void @lam143274(i64 %env143275, i64 %cont142264, i64 %vwK$lst, i64 %grK$b) {
  %cmp145353 = icmp eq i64 %grK$b, 15                                                ; false?
  br i1 %cmp145353, label %else145355, label %then145354                             ; if

then145354:
  %arg142977 = add i64 0, 0                                                          ; quoted ()
  %cloptr145356 = inttoptr i64 %cont142264 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145356)                                       ; assert function application
  %i0ptr145357 = getelementptr inbounds i64, i64* %cloptr145356, i64 0               ; &cloptr145356[0]
  %f145359 = load i64, i64* %i0ptr145357, align 8                                    ; load; *i0ptr145357
  %fptr145358 = inttoptr i64 %f145359 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145358(i64 %cont142264, i64 %arg142977, i64 %grK$b) ; tail call
  ret void

else145355:
  %retprim142265 = call i64 @prim_null_63(i64 %vwK$lst)                              ; call prim_null_63
  %arg142981 = add i64 0, 0                                                          ; quoted ()
  %cloptr145360 = inttoptr i64 %cont142264 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145360)                                       ; assert function application
  %i0ptr145361 = getelementptr inbounds i64, i64* %cloptr145360, i64 0               ; &cloptr145360[0]
  %f145363 = load i64, i64* %i0ptr145361, align 8                                    ; load; *i0ptr145361
  %fptr145362 = inttoptr i64 %f145363 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145362(i64 %cont142264, i64 %arg142981, i64 %retprim142265); tail call
  ret void
}


define void @lam143267(i64 %env143268, i64 %cont142268, i64 %w6s$_37foldr) {
  %envptr145364 = inttoptr i64 %env143268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145365 = getelementptr inbounds i64, i64* %envptr145364, i64 2              ; &envptr145364[2]
  %GBF$_37map1 = load i64, i64* %envptr145365, align 8                               ; load; *envptr145365
  %envptr145366 = inttoptr i64 %env143268 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145367 = getelementptr inbounds i64, i64* %envptr145366, i64 1              ; &envptr145366[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145367, align 8                             ; load; *envptr145367
  %arg142984 = add i64 0, 0                                                          ; quoted ()
  %cloptr145368 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145370 = getelementptr inbounds i64, i64* %cloptr145368, i64 1                ; &eptr145370[1]
  %eptr145371 = getelementptr inbounds i64, i64* %cloptr145368, i64 2                ; &eptr145371[2]
  %eptr145372 = getelementptr inbounds i64, i64* %cloptr145368, i64 3                ; &eptr145372[3]
  store i64 %RWL$_37foldr1, i64* %eptr145370                                         ; *eptr145370 = %RWL$_37foldr1
  store i64 %w6s$_37foldr, i64* %eptr145371                                          ; *eptr145371 = %w6s$_37foldr
  store i64 %GBF$_37map1, i64* %eptr145372                                           ; *eptr145372 = %GBF$_37map1
  %eptr145369 = getelementptr inbounds i64, i64* %cloptr145368, i64 0                ; &cloptr145368[0]
  %f145373 = ptrtoint void(i64,i64)* @lam143264 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145373, i64* %eptr145369                                               ; store fptr
  %arg142983 = ptrtoint i64* %cloptr145368 to i64                                    ; closure cast; i64* -> i64
  %cloptr145374 = inttoptr i64 %cont142268 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145374)                                       ; assert function application
  %i0ptr145375 = getelementptr inbounds i64, i64* %cloptr145374, i64 0               ; &cloptr145374[0]
  %f145377 = load i64, i64* %i0ptr145375, align 8                                    ; load; *i0ptr145375
  %fptr145376 = inttoptr i64 %f145377 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145376(i64 %cont142268, i64 %arg142984, i64 %arg142983); tail call
  ret void
}


define void @lam143264(i64 %env143265, i64 %Fbn$args142270) {
  %envptr145378 = inttoptr i64 %env143265 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145379 = getelementptr inbounds i64, i64* %envptr145378, i64 3              ; &envptr145378[3]
  %GBF$_37map1 = load i64, i64* %envptr145379, align 8                               ; load; *envptr145379
  %envptr145380 = inttoptr i64 %env143265 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145381 = getelementptr inbounds i64, i64* %envptr145380, i64 2              ; &envptr145380[2]
  %w6s$_37foldr = load i64, i64* %envptr145381, align 8                              ; load; *envptr145381
  %envptr145382 = inttoptr i64 %env143265 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145383 = getelementptr inbounds i64, i64* %envptr145382, i64 1              ; &envptr145382[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145383, align 8                             ; load; *envptr145383
  %cont142269 = call i64 @prim_car(i64 %Fbn$args142270)                              ; call prim_car
  %Fbn$args = call i64 @prim_cdr(i64 %Fbn$args142270)                                ; call prim_cdr
  %ga0$f = call i64 @prim_car(i64 %Fbn$args)                                         ; call prim_car
  %a142035 = call i64 @prim_cdr(i64 %Fbn$args)                                       ; call prim_cdr
  %retprim142289 = call i64 @prim_car(i64 %a142035)                                  ; call prim_car
  %cloptr145384 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145386 = getelementptr inbounds i64, i64* %cloptr145384, i64 1                ; &eptr145386[1]
  %eptr145387 = getelementptr inbounds i64, i64* %cloptr145384, i64 2                ; &eptr145387[2]
  %eptr145388 = getelementptr inbounds i64, i64* %cloptr145384, i64 3                ; &eptr145388[3]
  %eptr145389 = getelementptr inbounds i64, i64* %cloptr145384, i64 4                ; &eptr145389[4]
  %eptr145390 = getelementptr inbounds i64, i64* %cloptr145384, i64 5                ; &eptr145390[5]
  %eptr145391 = getelementptr inbounds i64, i64* %cloptr145384, i64 6                ; &eptr145391[6]
  store i64 %RWL$_37foldr1, i64* %eptr145386                                         ; *eptr145386 = %RWL$_37foldr1
  store i64 %w6s$_37foldr, i64* %eptr145387                                          ; *eptr145387 = %w6s$_37foldr
  store i64 %ga0$f, i64* %eptr145388                                                 ; *eptr145388 = %ga0$f
  store i64 %cont142269, i64* %eptr145389                                            ; *eptr145389 = %cont142269
  store i64 %GBF$_37map1, i64* %eptr145390                                           ; *eptr145390 = %GBF$_37map1
  store i64 %Fbn$args, i64* %eptr145391                                              ; *eptr145391 = %Fbn$args
  %eptr145385 = getelementptr inbounds i64, i64* %cloptr145384, i64 0                ; &cloptr145384[0]
  %f145392 = ptrtoint void(i64,i64,i64)* @lam143262 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145392, i64* %eptr145385                                               ; store fptr
  %arg142993 = ptrtoint i64* %cloptr145384 to i64                                    ; closure cast; i64* -> i64
  %arg142992 = add i64 0, 0                                                          ; quoted ()
  %cloptr145393 = inttoptr i64 %arg142993 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145393)                                       ; assert function application
  %i0ptr145394 = getelementptr inbounds i64, i64* %cloptr145393, i64 0               ; &cloptr145393[0]
  %f145396 = load i64, i64* %i0ptr145394, align 8                                    ; load; *i0ptr145394
  %fptr145395 = inttoptr i64 %f145396 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145395(i64 %arg142993, i64 %arg142992, i64 %retprim142289); tail call
  ret void
}


define void @lam143262(i64 %env143263, i64 %_95142271, i64 %pMI$acc) {
  %envptr145397 = inttoptr i64 %env143263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145398 = getelementptr inbounds i64, i64* %envptr145397, i64 6              ; &envptr145397[6]
  %Fbn$args = load i64, i64* %envptr145398, align 8                                  ; load; *envptr145398
  %envptr145399 = inttoptr i64 %env143263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145400 = getelementptr inbounds i64, i64* %envptr145399, i64 5              ; &envptr145399[5]
  %GBF$_37map1 = load i64, i64* %envptr145400, align 8                               ; load; *envptr145400
  %envptr145401 = inttoptr i64 %env143263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145402 = getelementptr inbounds i64, i64* %envptr145401, i64 4              ; &envptr145401[4]
  %cont142269 = load i64, i64* %envptr145402, align 8                                ; load; *envptr145402
  %envptr145403 = inttoptr i64 %env143263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145404 = getelementptr inbounds i64, i64* %envptr145403, i64 3              ; &envptr145403[3]
  %ga0$f = load i64, i64* %envptr145404, align 8                                     ; load; *envptr145404
  %envptr145405 = inttoptr i64 %env143263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145406 = getelementptr inbounds i64, i64* %envptr145405, i64 2              ; &envptr145405[2]
  %w6s$_37foldr = load i64, i64* %envptr145406, align 8                              ; load; *envptr145406
  %envptr145407 = inttoptr i64 %env143263 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145408 = getelementptr inbounds i64, i64* %envptr145407, i64 1              ; &envptr145407[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145408, align 8                             ; load; *envptr145408
  %a142036 = call i64 @prim_cdr(i64 %Fbn$args)                                       ; call prim_cdr
  %retprim142288 = call i64 @prim_cdr(i64 %a142036)                                  ; call prim_cdr
  %cloptr145409 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145411 = getelementptr inbounds i64, i64* %cloptr145409, i64 1                ; &eptr145411[1]
  %eptr145412 = getelementptr inbounds i64, i64* %cloptr145409, i64 2                ; &eptr145412[2]
  %eptr145413 = getelementptr inbounds i64, i64* %cloptr145409, i64 3                ; &eptr145413[3]
  %eptr145414 = getelementptr inbounds i64, i64* %cloptr145409, i64 4                ; &eptr145414[4]
  %eptr145415 = getelementptr inbounds i64, i64* %cloptr145409, i64 5                ; &eptr145415[5]
  %eptr145416 = getelementptr inbounds i64, i64* %cloptr145409, i64 6                ; &eptr145416[6]
  store i64 %RWL$_37foldr1, i64* %eptr145411                                         ; *eptr145411 = %RWL$_37foldr1
  store i64 %w6s$_37foldr, i64* %eptr145412                                          ; *eptr145412 = %w6s$_37foldr
  store i64 %ga0$f, i64* %eptr145413                                                 ; *eptr145413 = %ga0$f
  store i64 %cont142269, i64* %eptr145414                                            ; *eptr145414 = %cont142269
  store i64 %GBF$_37map1, i64* %eptr145415                                           ; *eptr145415 = %GBF$_37map1
  store i64 %pMI$acc, i64* %eptr145416                                               ; *eptr145416 = %pMI$acc
  %eptr145410 = getelementptr inbounds i64, i64* %cloptr145409, i64 0                ; &cloptr145409[0]
  %f145417 = ptrtoint void(i64,i64,i64)* @lam143260 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145417, i64* %eptr145410                                               ; store fptr
  %arg142998 = ptrtoint i64* %cloptr145409 to i64                                    ; closure cast; i64* -> i64
  %arg142997 = add i64 0, 0                                                          ; quoted ()
  %cloptr145418 = inttoptr i64 %arg142998 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145418)                                       ; assert function application
  %i0ptr145419 = getelementptr inbounds i64, i64* %cloptr145418, i64 0               ; &cloptr145418[0]
  %f145421 = load i64, i64* %i0ptr145419, align 8                                    ; load; *i0ptr145419
  %fptr145420 = inttoptr i64 %f145421 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145420(i64 %arg142998, i64 %arg142997, i64 %retprim142288); tail call
  ret void
}


define void @lam143260(i64 %env143261, i64 %_95142272, i64 %OFN$lsts) {
  %envptr145422 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145423 = getelementptr inbounds i64, i64* %envptr145422, i64 6              ; &envptr145422[6]
  %pMI$acc = load i64, i64* %envptr145423, align 8                                   ; load; *envptr145423
  %envptr145424 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145425 = getelementptr inbounds i64, i64* %envptr145424, i64 5              ; &envptr145424[5]
  %GBF$_37map1 = load i64, i64* %envptr145425, align 8                               ; load; *envptr145425
  %envptr145426 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145427 = getelementptr inbounds i64, i64* %envptr145426, i64 4              ; &envptr145426[4]
  %cont142269 = load i64, i64* %envptr145427, align 8                                ; load; *envptr145427
  %envptr145428 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145429 = getelementptr inbounds i64, i64* %envptr145428, i64 3              ; &envptr145428[3]
  %ga0$f = load i64, i64* %envptr145429, align 8                                     ; load; *envptr145429
  %envptr145430 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145431 = getelementptr inbounds i64, i64* %envptr145430, i64 2              ; &envptr145430[2]
  %w6s$_37foldr = load i64, i64* %envptr145431, align 8                              ; load; *envptr145431
  %envptr145432 = inttoptr i64 %env143261 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145433 = getelementptr inbounds i64, i64* %envptr145432, i64 1              ; &envptr145432[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145433, align 8                             ; load; *envptr145433
  %cloptr145434 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145436 = getelementptr inbounds i64, i64* %cloptr145434, i64 1                ; &eptr145436[1]
  %eptr145437 = getelementptr inbounds i64, i64* %cloptr145434, i64 2                ; &eptr145437[2]
  %eptr145438 = getelementptr inbounds i64, i64* %cloptr145434, i64 3                ; &eptr145438[3]
  %eptr145439 = getelementptr inbounds i64, i64* %cloptr145434, i64 4                ; &eptr145439[4]
  %eptr145440 = getelementptr inbounds i64, i64* %cloptr145434, i64 5                ; &eptr145440[5]
  %eptr145441 = getelementptr inbounds i64, i64* %cloptr145434, i64 6                ; &eptr145441[6]
  %eptr145442 = getelementptr inbounds i64, i64* %cloptr145434, i64 7                ; &eptr145442[7]
  store i64 %RWL$_37foldr1, i64* %eptr145436                                         ; *eptr145436 = %RWL$_37foldr1
  store i64 %w6s$_37foldr, i64* %eptr145437                                          ; *eptr145437 = %w6s$_37foldr
  store i64 %ga0$f, i64* %eptr145438                                                 ; *eptr145438 = %ga0$f
  store i64 %cont142269, i64* %eptr145439                                            ; *eptr145439 = %cont142269
  store i64 %OFN$lsts, i64* %eptr145440                                              ; *eptr145440 = %OFN$lsts
  store i64 %GBF$_37map1, i64* %eptr145441                                           ; *eptr145441 = %GBF$_37map1
  store i64 %pMI$acc, i64* %eptr145442                                               ; *eptr145442 = %pMI$acc
  %eptr145435 = getelementptr inbounds i64, i64* %cloptr145434, i64 0                ; &cloptr145434[0]
  %f145443 = ptrtoint void(i64,i64,i64)* @lam143258 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145443, i64* %eptr145435                                               ; store fptr
  %arg143002 = ptrtoint i64* %cloptr145434 to i64                                    ; closure cast; i64* -> i64
  %cloptr145444 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145445 = getelementptr inbounds i64, i64* %cloptr145444, i64 0                ; &cloptr145444[0]
  %f145446 = ptrtoint void(i64,i64,i64,i64)* @lam143237 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145446, i64* %eptr145445                                               ; store fptr
  %arg143001 = ptrtoint i64* %cloptr145444 to i64                                    ; closure cast; i64* -> i64
  %arg143000 = call i64 @const_init_false()                                          ; quoted #f
  %cloptr145447 = inttoptr i64 %RWL$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145447)                                       ; assert function application
  %i0ptr145448 = getelementptr inbounds i64, i64* %cloptr145447, i64 0               ; &cloptr145447[0]
  %f145450 = load i64, i64* %i0ptr145448, align 8                                    ; load; *i0ptr145448
  %fptr145449 = inttoptr i64 %f145450 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145449(i64 %RWL$_37foldr1, i64 %arg143002, i64 %arg143001, i64 %arg143000, i64 %OFN$lsts); tail call
  ret void
}


define void @lam143258(i64 %env143259, i64 %_95142273, i64 %a142037) {
  %envptr145451 = inttoptr i64 %env143259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145452 = getelementptr inbounds i64, i64* %envptr145451, i64 7              ; &envptr145451[7]
  %pMI$acc = load i64, i64* %envptr145452, align 8                                   ; load; *envptr145452
  %envptr145453 = inttoptr i64 %env143259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145454 = getelementptr inbounds i64, i64* %envptr145453, i64 6              ; &envptr145453[6]
  %GBF$_37map1 = load i64, i64* %envptr145454, align 8                               ; load; *envptr145454
  %envptr145455 = inttoptr i64 %env143259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145456 = getelementptr inbounds i64, i64* %envptr145455, i64 5              ; &envptr145455[5]
  %OFN$lsts = load i64, i64* %envptr145456, align 8                                  ; load; *envptr145456
  %envptr145457 = inttoptr i64 %env143259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145458 = getelementptr inbounds i64, i64* %envptr145457, i64 4              ; &envptr145457[4]
  %cont142269 = load i64, i64* %envptr145458, align 8                                ; load; *envptr145458
  %envptr145459 = inttoptr i64 %env143259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145460 = getelementptr inbounds i64, i64* %envptr145459, i64 3              ; &envptr145459[3]
  %ga0$f = load i64, i64* %envptr145460, align 8                                     ; load; *envptr145460
  %envptr145461 = inttoptr i64 %env143259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145462 = getelementptr inbounds i64, i64* %envptr145461, i64 2              ; &envptr145461[2]
  %w6s$_37foldr = load i64, i64* %envptr145462, align 8                              ; load; *envptr145462
  %envptr145463 = inttoptr i64 %env143259 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145464 = getelementptr inbounds i64, i64* %envptr145463, i64 1              ; &envptr145463[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145464, align 8                             ; load; *envptr145464
  %cmp145465 = icmp eq i64 %a142037, 15                                              ; false?
  br i1 %cmp145465, label %else145467, label %then145466                             ; if

then145466:
  %arg143005 = add i64 0, 0                                                          ; quoted ()
  %cloptr145468 = inttoptr i64 %cont142269 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145468)                                       ; assert function application
  %i0ptr145469 = getelementptr inbounds i64, i64* %cloptr145468, i64 0               ; &cloptr145468[0]
  %f145471 = load i64, i64* %i0ptr145469, align 8                                    ; load; *i0ptr145469
  %fptr145470 = inttoptr i64 %f145471 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145470(i64 %cont142269, i64 %arg143005, i64 %pMI$acc); tail call
  ret void

else145467:
  %cloptr145472 = call i64* @alloc(i64 64)                                           ; malloc
  %eptr145474 = getelementptr inbounds i64, i64* %cloptr145472, i64 1                ; &eptr145474[1]
  %eptr145475 = getelementptr inbounds i64, i64* %cloptr145472, i64 2                ; &eptr145475[2]
  %eptr145476 = getelementptr inbounds i64, i64* %cloptr145472, i64 3                ; &eptr145476[3]
  %eptr145477 = getelementptr inbounds i64, i64* %cloptr145472, i64 4                ; &eptr145477[4]
  %eptr145478 = getelementptr inbounds i64, i64* %cloptr145472, i64 5                ; &eptr145478[5]
  %eptr145479 = getelementptr inbounds i64, i64* %cloptr145472, i64 6                ; &eptr145479[6]
  %eptr145480 = getelementptr inbounds i64, i64* %cloptr145472, i64 7                ; &eptr145480[7]
  store i64 %RWL$_37foldr1, i64* %eptr145474                                         ; *eptr145474 = %RWL$_37foldr1
  store i64 %w6s$_37foldr, i64* %eptr145475                                          ; *eptr145475 = %w6s$_37foldr
  store i64 %ga0$f, i64* %eptr145476                                                 ; *eptr145476 = %ga0$f
  store i64 %cont142269, i64* %eptr145477                                            ; *eptr145477 = %cont142269
  store i64 %OFN$lsts, i64* %eptr145478                                              ; *eptr145478 = %OFN$lsts
  store i64 %GBF$_37map1, i64* %eptr145479                                           ; *eptr145479 = %GBF$_37map1
  store i64 %pMI$acc, i64* %eptr145480                                               ; *eptr145480 = %pMI$acc
  %eptr145473 = getelementptr inbounds i64, i64* %cloptr145472, i64 0                ; &cloptr145472[0]
  %f145481 = ptrtoint void(i64,i64,i64)* @lam143256 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145481, i64* %eptr145473                                               ; store fptr
  %arg143009 = ptrtoint i64* %cloptr145472 to i64                                    ; closure cast; i64* -> i64
  %cloptr145482 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145483 = getelementptr inbounds i64, i64* %cloptr145482, i64 0                ; &cloptr145482[0]
  %f145484 = ptrtoint void(i64,i64,i64)* @lam143241 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145484, i64* %eptr145483                                               ; store fptr
  %arg143008 = ptrtoint i64* %cloptr145482 to i64                                    ; closure cast; i64* -> i64
  %cloptr145485 = inttoptr i64 %GBF$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145485)                                       ; assert function application
  %i0ptr145486 = getelementptr inbounds i64, i64* %cloptr145485, i64 0               ; &cloptr145485[0]
  %f145488 = load i64, i64* %i0ptr145486, align 8                                    ; load; *i0ptr145486
  %fptr145487 = inttoptr i64 %f145488 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145487(i64 %GBF$_37map1, i64 %arg143009, i64 %arg143008, i64 %OFN$lsts); tail call
  ret void
}


define void @lam143256(i64 %env143257, i64 %_95142274, i64 %Vqe$lsts_43) {
  %envptr145489 = inttoptr i64 %env143257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145490 = getelementptr inbounds i64, i64* %envptr145489, i64 7              ; &envptr145489[7]
  %pMI$acc = load i64, i64* %envptr145490, align 8                                   ; load; *envptr145490
  %envptr145491 = inttoptr i64 %env143257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145492 = getelementptr inbounds i64, i64* %envptr145491, i64 6              ; &envptr145491[6]
  %GBF$_37map1 = load i64, i64* %envptr145492, align 8                               ; load; *envptr145492
  %envptr145493 = inttoptr i64 %env143257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145494 = getelementptr inbounds i64, i64* %envptr145493, i64 5              ; &envptr145493[5]
  %OFN$lsts = load i64, i64* %envptr145494, align 8                                  ; load; *envptr145494
  %envptr145495 = inttoptr i64 %env143257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145496 = getelementptr inbounds i64, i64* %envptr145495, i64 4              ; &envptr145495[4]
  %cont142269 = load i64, i64* %envptr145496, align 8                                ; load; *envptr145496
  %envptr145497 = inttoptr i64 %env143257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145498 = getelementptr inbounds i64, i64* %envptr145497, i64 3              ; &envptr145497[3]
  %ga0$f = load i64, i64* %envptr145498, align 8                                     ; load; *envptr145498
  %envptr145499 = inttoptr i64 %env143257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145500 = getelementptr inbounds i64, i64* %envptr145499, i64 2              ; &envptr145499[2]
  %w6s$_37foldr = load i64, i64* %envptr145500, align 8                              ; load; *envptr145500
  %envptr145501 = inttoptr i64 %env143257 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145502 = getelementptr inbounds i64, i64* %envptr145501, i64 1              ; &envptr145501[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145502, align 8                             ; load; *envptr145502
  %cloptr145503 = call i64* @alloc(i64 56)                                           ; malloc
  %eptr145505 = getelementptr inbounds i64, i64* %cloptr145503, i64 1                ; &eptr145505[1]
  %eptr145506 = getelementptr inbounds i64, i64* %cloptr145503, i64 2                ; &eptr145506[2]
  %eptr145507 = getelementptr inbounds i64, i64* %cloptr145503, i64 3                ; &eptr145507[3]
  %eptr145508 = getelementptr inbounds i64, i64* %cloptr145503, i64 4                ; &eptr145508[4]
  %eptr145509 = getelementptr inbounds i64, i64* %cloptr145503, i64 5                ; &eptr145509[5]
  %eptr145510 = getelementptr inbounds i64, i64* %cloptr145503, i64 6                ; &eptr145510[6]
  store i64 %RWL$_37foldr1, i64* %eptr145505                                         ; *eptr145505 = %RWL$_37foldr1
  store i64 %w6s$_37foldr, i64* %eptr145506                                          ; *eptr145506 = %w6s$_37foldr
  store i64 %ga0$f, i64* %eptr145507                                                 ; *eptr145507 = %ga0$f
  store i64 %Vqe$lsts_43, i64* %eptr145508                                           ; *eptr145508 = %Vqe$lsts_43
  store i64 %cont142269, i64* %eptr145509                                            ; *eptr145509 = %cont142269
  store i64 %pMI$acc, i64* %eptr145510                                               ; *eptr145510 = %pMI$acc
  %eptr145504 = getelementptr inbounds i64, i64* %cloptr145503, i64 0                ; &cloptr145503[0]
  %f145511 = ptrtoint void(i64,i64,i64)* @lam143254 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145511, i64* %eptr145504                                               ; store fptr
  %arg143013 = ptrtoint i64* %cloptr145503 to i64                                    ; closure cast; i64* -> i64
  %cloptr145512 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145513 = getelementptr inbounds i64, i64* %cloptr145512, i64 0                ; &cloptr145512[0]
  %f145514 = ptrtoint void(i64,i64,i64)* @lam143244 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145514, i64* %eptr145513                                               ; store fptr
  %arg143012 = ptrtoint i64* %cloptr145512 to i64                                    ; closure cast; i64* -> i64
  %cloptr145515 = inttoptr i64 %GBF$_37map1 to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145515)                                       ; assert function application
  %i0ptr145516 = getelementptr inbounds i64, i64* %cloptr145515, i64 0               ; &cloptr145515[0]
  %f145518 = load i64, i64* %i0ptr145516, align 8                                    ; load; *i0ptr145516
  %fptr145517 = inttoptr i64 %f145518 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145517(i64 %GBF$_37map1, i64 %arg143013, i64 %arg143012, i64 %OFN$lsts); tail call
  ret void
}


define void @lam143254(i64 %env143255, i64 %_95142275, i64 %pyT$vs) {
  %envptr145519 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145520 = getelementptr inbounds i64, i64* %envptr145519, i64 6              ; &envptr145519[6]
  %pMI$acc = load i64, i64* %envptr145520, align 8                                   ; load; *envptr145520
  %envptr145521 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145522 = getelementptr inbounds i64, i64* %envptr145521, i64 5              ; &envptr145521[5]
  %cont142269 = load i64, i64* %envptr145522, align 8                                ; load; *envptr145522
  %envptr145523 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145524 = getelementptr inbounds i64, i64* %envptr145523, i64 4              ; &envptr145523[4]
  %Vqe$lsts_43 = load i64, i64* %envptr145524, align 8                               ; load; *envptr145524
  %envptr145525 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145526 = getelementptr inbounds i64, i64* %envptr145525, i64 3              ; &envptr145525[3]
  %ga0$f = load i64, i64* %envptr145526, align 8                                     ; load; *envptr145526
  %envptr145527 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145528 = getelementptr inbounds i64, i64* %envptr145527, i64 2              ; &envptr145527[2]
  %w6s$_37foldr = load i64, i64* %envptr145528, align 8                              ; load; *envptr145528
  %envptr145529 = inttoptr i64 %env143255 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145530 = getelementptr inbounds i64, i64* %envptr145529, i64 1              ; &envptr145529[1]
  %RWL$_37foldr1 = load i64, i64* %envptr145530, align 8                             ; load; *envptr145530
  %a142038 = call i64 @prim_cons(i64 %pMI$acc, i64 %Vqe$lsts_43)                     ; call prim_cons
  %a142039 = call i64 @prim_cons(i64 %ga0$f, i64 %a142038)                           ; call prim_cons
  %cloptr145531 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145533 = getelementptr inbounds i64, i64* %cloptr145531, i64 1                ; &eptr145533[1]
  %eptr145534 = getelementptr inbounds i64, i64* %cloptr145531, i64 2                ; &eptr145534[2]
  %eptr145535 = getelementptr inbounds i64, i64* %cloptr145531, i64 3                ; &eptr145535[3]
  %eptr145536 = getelementptr inbounds i64, i64* %cloptr145531, i64 4                ; &eptr145536[4]
  store i64 %pyT$vs, i64* %eptr145533                                                ; *eptr145533 = %pyT$vs
  store i64 %RWL$_37foldr1, i64* %eptr145534                                         ; *eptr145534 = %RWL$_37foldr1
  store i64 %ga0$f, i64* %eptr145535                                                 ; *eptr145535 = %ga0$f
  store i64 %cont142269, i64* %eptr145536                                            ; *eptr145536 = %cont142269
  %eptr145532 = getelementptr inbounds i64, i64* %cloptr145531, i64 0                ; &cloptr145531[0]
  %f145537 = ptrtoint void(i64,i64,i64)* @lam143252 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145537, i64* %eptr145532                                               ; store fptr
  %arg143020 = ptrtoint i64* %cloptr145531 to i64                                    ; closure cast; i64* -> i64
  %cps_45lst142281 = call i64 @prim_cons(i64 %arg143020, i64 %a142039)               ; call prim_cons
  %cloptr145538 = inttoptr i64 %w6s$_37foldr to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145538)                                       ; assert function application
  %i0ptr145539 = getelementptr inbounds i64, i64* %cloptr145538, i64 0               ; &cloptr145538[0]
  %f145541 = load i64, i64* %i0ptr145539, align 8                                    ; load; *i0ptr145539
  %fptr145540 = inttoptr i64 %f145541 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145540(i64 %w6s$_37foldr, i64 %cps_45lst142281)     ; tail call
  ret void
}


define void @lam143252(i64 %env143253, i64 %_95142276, i64 %a142040) {
  %envptr145542 = inttoptr i64 %env143253 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145543 = getelementptr inbounds i64, i64* %envptr145542, i64 4              ; &envptr145542[4]
  %cont142269 = load i64, i64* %envptr145543, align 8                                ; load; *envptr145543
  %envptr145544 = inttoptr i64 %env143253 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145545 = getelementptr inbounds i64, i64* %envptr145544, i64 3              ; &envptr145544[3]
  %ga0$f = load i64, i64* %envptr145545, align 8                                     ; load; *envptr145545
  %envptr145546 = inttoptr i64 %env143253 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145547 = getelementptr inbounds i64, i64* %envptr145546, i64 2              ; &envptr145546[2]
  %RWL$_37foldr1 = load i64, i64* %envptr145547, align 8                             ; load; *envptr145547
  %envptr145548 = inttoptr i64 %env143253 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145549 = getelementptr inbounds i64, i64* %envptr145548, i64 1              ; &envptr145548[1]
  %pyT$vs = load i64, i64* %envptr145549, align 8                                    ; load; *envptr145549
  %arg143021 = add i64 0, 0                                                          ; quoted ()
  %a142041 = call i64 @prim_cons(i64 %a142040, i64 %arg143021)                       ; call prim_cons
  %cloptr145550 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145552 = getelementptr inbounds i64, i64* %cloptr145550, i64 1                ; &eptr145552[1]
  %eptr145553 = getelementptr inbounds i64, i64* %cloptr145550, i64 2                ; &eptr145553[2]
  store i64 %ga0$f, i64* %eptr145552                                                 ; *eptr145552 = %ga0$f
  store i64 %cont142269, i64* %eptr145553                                            ; *eptr145553 = %cont142269
  %eptr145551 = getelementptr inbounds i64, i64* %cloptr145550, i64 0                ; &cloptr145550[0]
  %f145554 = ptrtoint void(i64,i64,i64)* @lam143249 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145554, i64* %eptr145551                                               ; store fptr
  %arg143026 = ptrtoint i64* %cloptr145550 to i64                                    ; closure cast; i64* -> i64
  %cloptr145555 = call i64* @alloc(i64 8)                                            ; malloc
  %eptr145556 = getelementptr inbounds i64, i64* %cloptr145555, i64 0                ; &cloptr145555[0]
  %f145557 = ptrtoint void(i64,i64,i64,i64)* @lam143247 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145557, i64* %eptr145556                                               ; store fptr
  %arg143025 = ptrtoint i64* %cloptr145555 to i64                                    ; closure cast; i64* -> i64
  %cloptr145558 = inttoptr i64 %RWL$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145558)                                       ; assert function application
  %i0ptr145559 = getelementptr inbounds i64, i64* %cloptr145558, i64 0               ; &cloptr145558[0]
  %f145561 = load i64, i64* %i0ptr145559, align 8                                    ; load; *i0ptr145559
  %fptr145560 = inttoptr i64 %f145561 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145560(i64 %RWL$_37foldr1, i64 %arg143026, i64 %arg143025, i64 %a142041, i64 %pyT$vs); tail call
  ret void
}


define void @lam143249(i64 %env143250, i64 %_95142277, i64 %a142042) {
  %envptr145562 = inttoptr i64 %env143250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145563 = getelementptr inbounds i64, i64* %envptr145562, i64 2              ; &envptr145562[2]
  %cont142269 = load i64, i64* %envptr145563, align 8                                ; load; *envptr145563
  %envptr145564 = inttoptr i64 %env143250 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145565 = getelementptr inbounds i64, i64* %envptr145564, i64 1              ; &envptr145564[1]
  %ga0$f = load i64, i64* %envptr145565, align 8                                     ; load; *envptr145565
  %cps_45lst142278 = call i64 @prim_cons(i64 %cont142269, i64 %a142042)              ; call prim_cons
  %cloptr145566 = inttoptr i64 %ga0$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145566)                                       ; assert function application
  %i0ptr145567 = getelementptr inbounds i64, i64* %cloptr145566, i64 0               ; &cloptr145566[0]
  %f145569 = load i64, i64* %i0ptr145567, align 8                                    ; load; *i0ptr145567
  %fptr145568 = inttoptr i64 %f145569 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145568(i64 %ga0$f, i64 %cps_45lst142278)            ; tail call
  ret void
}


define void @lam143247(i64 %env143248, i64 %cont142279, i64 %jH6$a, i64 %yfI$b) {
  %retprim142280 = call i64 @prim_cons(i64 %jH6$a, i64 %yfI$b)                       ; call prim_cons
  %arg143033 = add i64 0, 0                                                          ; quoted ()
  %cloptr145570 = inttoptr i64 %cont142279 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145570)                                       ; assert function application
  %i0ptr145571 = getelementptr inbounds i64, i64* %cloptr145570, i64 0               ; &cloptr145570[0]
  %f145573 = load i64, i64* %i0ptr145571, align 8                                    ; load; *i0ptr145571
  %fptr145572 = inttoptr i64 %f145573 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145572(i64 %cont142279, i64 %arg143033, i64 %retprim142280); tail call
  ret void
}


define void @lam143244(i64 %env143245, i64 %cont142282, i64 %jkz$x) {
  %retprim142283 = call i64 @prim_car(i64 %jkz$x)                                    ; call prim_car
  %arg143037 = add i64 0, 0                                                          ; quoted ()
  %cloptr145574 = inttoptr i64 %cont142282 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145574)                                       ; assert function application
  %i0ptr145575 = getelementptr inbounds i64, i64* %cloptr145574, i64 0               ; &cloptr145574[0]
  %f145577 = load i64, i64* %i0ptr145575, align 8                                    ; load; *i0ptr145575
  %fptr145576 = inttoptr i64 %f145577 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145576(i64 %cont142282, i64 %arg143037, i64 %retprim142283); tail call
  ret void
}


define void @lam143241(i64 %env143242, i64 %cont142284, i64 %wiS$x) {
  %retprim142285 = call i64 @prim_cdr(i64 %wiS$x)                                    ; call prim_cdr
  %arg143041 = add i64 0, 0                                                          ; quoted ()
  %cloptr145578 = inttoptr i64 %cont142284 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145578)                                       ; assert function application
  %i0ptr145579 = getelementptr inbounds i64, i64* %cloptr145578, i64 0               ; &cloptr145578[0]
  %f145581 = load i64, i64* %i0ptr145579, align 8                                    ; load; *i0ptr145579
  %fptr145580 = inttoptr i64 %f145581 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145580(i64 %cont142284, i64 %arg143041, i64 %retprim142285); tail call
  ret void
}


define void @lam143237(i64 %env143238, i64 %cont142286, i64 %ym3$lst, i64 %LC7$b) {
  %cmp145582 = icmp eq i64 %LC7$b, 15                                                ; false?
  br i1 %cmp145582, label %else145584, label %then145583                             ; if

then145583:
  %arg143044 = add i64 0, 0                                                          ; quoted ()
  %cloptr145585 = inttoptr i64 %cont142286 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145585)                                       ; assert function application
  %i0ptr145586 = getelementptr inbounds i64, i64* %cloptr145585, i64 0               ; &cloptr145585[0]
  %f145588 = load i64, i64* %i0ptr145586, align 8                                    ; load; *i0ptr145586
  %fptr145587 = inttoptr i64 %f145588 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145587(i64 %cont142286, i64 %arg143044, i64 %LC7$b) ; tail call
  ret void

else145584:
  %retprim142287 = call i64 @prim_null_63(i64 %ym3$lst)                              ; call prim_null_63
  %arg143048 = add i64 0, 0                                                          ; quoted ()
  %cloptr145589 = inttoptr i64 %cont142286 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145589)                                       ; assert function application
  %i0ptr145590 = getelementptr inbounds i64, i64* %cloptr145589, i64 0               ; &cloptr145589[0]
  %f145592 = load i64, i64* %i0ptr145590, align 8                                    ; load; *i0ptr145590
  %fptr145591 = inttoptr i64 %f145592 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145591(i64 %cont142286, i64 %arg143048, i64 %retprim142287); tail call
  ret void
}


define void @lam143230(i64 %env143231, i64 %cont142290, i64 %hMn$_37foldl1) {
  %arg143051 = add i64 0, 0                                                          ; quoted ()
  %cloptr145593 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145595 = getelementptr inbounds i64, i64* %cloptr145593, i64 1                ; &eptr145595[1]
  store i64 %hMn$_37foldl1, i64* %eptr145595                                         ; *eptr145595 = %hMn$_37foldl1
  %eptr145594 = getelementptr inbounds i64, i64* %cloptr145593, i64 0                ; &cloptr145593[0]
  %f145596 = ptrtoint void(i64,i64,i64,i64,i64)* @lam143227 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f145596, i64* %eptr145594                                               ; store fptr
  %arg143050 = ptrtoint i64* %cloptr145593 to i64                                    ; closure cast; i64* -> i64
  %cloptr145597 = inttoptr i64 %cont142290 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145597)                                       ; assert function application
  %i0ptr145598 = getelementptr inbounds i64, i64* %cloptr145597, i64 0               ; &cloptr145597[0]
  %f145600 = load i64, i64* %i0ptr145598, align 8                                    ; load; *i0ptr145598
  %fptr145599 = inttoptr i64 %f145600 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145599(i64 %cont142290, i64 %arg143051, i64 %arg143050); tail call
  ret void
}


define void @lam143227(i64 %env143228, i64 %cont142291, i64 %DZk$f, i64 %qvz$acc, i64 %yiz$lst) {
  %envptr145601 = inttoptr i64 %env143228 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145602 = getelementptr inbounds i64, i64* %envptr145601, i64 1              ; &envptr145601[1]
  %hMn$_37foldl1 = load i64, i64* %envptr145602, align 8                             ; load; *envptr145602
  %a142029 = call i64 @prim_null_63(i64 %yiz$lst)                                    ; call prim_null_63
  %cmp145603 = icmp eq i64 %a142029, 15                                              ; false?
  br i1 %cmp145603, label %else145605, label %then145604                             ; if

then145604:
  %arg143055 = add i64 0, 0                                                          ; quoted ()
  %cloptr145606 = inttoptr i64 %cont142291 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145606)                                       ; assert function application
  %i0ptr145607 = getelementptr inbounds i64, i64* %cloptr145606, i64 0               ; &cloptr145606[0]
  %f145609 = load i64, i64* %i0ptr145607, align 8                                    ; load; *i0ptr145607
  %fptr145608 = inttoptr i64 %f145609 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145608(i64 %cont142291, i64 %arg143055, i64 %qvz$acc); tail call
  ret void

else145605:
  %a142030 = call i64 @prim_car(i64 %yiz$lst)                                        ; call prim_car
  %cloptr145610 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145612 = getelementptr inbounds i64, i64* %cloptr145610, i64 1                ; &eptr145612[1]
  %eptr145613 = getelementptr inbounds i64, i64* %cloptr145610, i64 2                ; &eptr145613[2]
  %eptr145614 = getelementptr inbounds i64, i64* %cloptr145610, i64 3                ; &eptr145614[3]
  %eptr145615 = getelementptr inbounds i64, i64* %cloptr145610, i64 4                ; &eptr145615[4]
  store i64 %cont142291, i64* %eptr145612                                            ; *eptr145612 = %cont142291
  store i64 %hMn$_37foldl1, i64* %eptr145613                                         ; *eptr145613 = %hMn$_37foldl1
  store i64 %DZk$f, i64* %eptr145614                                                 ; *eptr145614 = %DZk$f
  store i64 %yiz$lst, i64* %eptr145615                                               ; *eptr145615 = %yiz$lst
  %eptr145611 = getelementptr inbounds i64, i64* %cloptr145610, i64 0                ; &cloptr145610[0]
  %f145616 = ptrtoint void(i64,i64,i64)* @lam143225 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145616, i64* %eptr145611                                               ; store fptr
  %arg143060 = ptrtoint i64* %cloptr145610 to i64                                    ; closure cast; i64* -> i64
  %cloptr145617 = inttoptr i64 %DZk$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145617)                                       ; assert function application
  %i0ptr145618 = getelementptr inbounds i64, i64* %cloptr145617, i64 0               ; &cloptr145617[0]
  %f145620 = load i64, i64* %i0ptr145618, align 8                                    ; load; *i0ptr145618
  %fptr145619 = inttoptr i64 %f145620 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145619(i64 %DZk$f, i64 %arg143060, i64 %a142030, i64 %qvz$acc); tail call
  ret void
}


define void @lam143225(i64 %env143226, i64 %_95142292, i64 %a142031) {
  %envptr145621 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145622 = getelementptr inbounds i64, i64* %envptr145621, i64 4              ; &envptr145621[4]
  %yiz$lst = load i64, i64* %envptr145622, align 8                                   ; load; *envptr145622
  %envptr145623 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145624 = getelementptr inbounds i64, i64* %envptr145623, i64 3              ; &envptr145623[3]
  %DZk$f = load i64, i64* %envptr145624, align 8                                     ; load; *envptr145624
  %envptr145625 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145626 = getelementptr inbounds i64, i64* %envptr145625, i64 2              ; &envptr145625[2]
  %hMn$_37foldl1 = load i64, i64* %envptr145626, align 8                             ; load; *envptr145626
  %envptr145627 = inttoptr i64 %env143226 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145628 = getelementptr inbounds i64, i64* %envptr145627, i64 1              ; &envptr145627[1]
  %cont142291 = load i64, i64* %envptr145628, align 8                                ; load; *envptr145628
  %a142032 = call i64 @prim_cdr(i64 %yiz$lst)                                        ; call prim_cdr
  %cloptr145629 = inttoptr i64 %hMn$_37foldl1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145629)                                       ; assert function application
  %i0ptr145630 = getelementptr inbounds i64, i64* %cloptr145629, i64 0               ; &cloptr145629[0]
  %f145632 = load i64, i64* %i0ptr145630, align 8                                    ; load; *i0ptr145630
  %fptr145631 = inttoptr i64 %f145632 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145631(i64 %hMn$_37foldl1, i64 %cont142291, i64 %DZk$f, i64 %a142031, i64 %a142032); tail call
  ret void
}


define void @lam143222(i64 %env143223, i64 %cont142293, i64 %VpN$_37length) {
  %arg143069 = add i64 0, 0                                                          ; quoted ()
  %cloptr145633 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145635 = getelementptr inbounds i64, i64* %cloptr145633, i64 1                ; &eptr145635[1]
  store i64 %VpN$_37length, i64* %eptr145635                                         ; *eptr145635 = %VpN$_37length
  %eptr145634 = getelementptr inbounds i64, i64* %cloptr145633, i64 0                ; &cloptr145633[0]
  %f145636 = ptrtoint void(i64,i64,i64)* @lam143219 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145636, i64* %eptr145634                                               ; store fptr
  %arg143068 = ptrtoint i64* %cloptr145633 to i64                                    ; closure cast; i64* -> i64
  %cloptr145637 = inttoptr i64 %cont142293 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145637)                                       ; assert function application
  %i0ptr145638 = getelementptr inbounds i64, i64* %cloptr145637, i64 0               ; &cloptr145637[0]
  %f145640 = load i64, i64* %i0ptr145638, align 8                                    ; load; *i0ptr145638
  %fptr145639 = inttoptr i64 %f145640 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145639(i64 %cont142293, i64 %arg143069, i64 %arg143068); tail call
  ret void
}


define void @lam143219(i64 %env143220, i64 %cont142294, i64 %C9N$lst) {
  %envptr145641 = inttoptr i64 %env143220 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145642 = getelementptr inbounds i64, i64* %envptr145641, i64 1              ; &envptr145641[1]
  %VpN$_37length = load i64, i64* %envptr145642, align 8                             ; load; *envptr145642
  %a142026 = call i64 @prim_null_63(i64 %C9N$lst)                                    ; call prim_null_63
  %cmp145643 = icmp eq i64 %a142026, 15                                              ; false?
  br i1 %cmp145643, label %else145645, label %then145644                             ; if

then145644:
  %arg143073 = add i64 0, 0                                                          ; quoted ()
  %arg143072 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %cloptr145646 = inttoptr i64 %cont142294 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145646)                                       ; assert function application
  %i0ptr145647 = getelementptr inbounds i64, i64* %cloptr145646, i64 0               ; &cloptr145646[0]
  %f145649 = load i64, i64* %i0ptr145647, align 8                                    ; load; *i0ptr145647
  %fptr145648 = inttoptr i64 %f145649 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145648(i64 %cont142294, i64 %arg143073, i64 %arg143072); tail call
  ret void

else145645:
  %a142027 = call i64 @prim_cdr(i64 %C9N$lst)                                        ; call prim_cdr
  %cloptr145650 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145652 = getelementptr inbounds i64, i64* %cloptr145650, i64 1                ; &eptr145652[1]
  store i64 %cont142294, i64* %eptr145652                                            ; *eptr145652 = %cont142294
  %eptr145651 = getelementptr inbounds i64, i64* %cloptr145650, i64 0                ; &cloptr145650[0]
  %f145653 = ptrtoint void(i64,i64,i64)* @lam143217 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145653, i64* %eptr145651                                               ; store fptr
  %arg143077 = ptrtoint i64* %cloptr145650 to i64                                    ; closure cast; i64* -> i64
  %cloptr145654 = inttoptr i64 %VpN$_37length to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145654)                                       ; assert function application
  %i0ptr145655 = getelementptr inbounds i64, i64* %cloptr145654, i64 0               ; &cloptr145654[0]
  %f145657 = load i64, i64* %i0ptr145655, align 8                                    ; load; *i0ptr145655
  %fptr145656 = inttoptr i64 %f145657 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145656(i64 %VpN$_37length, i64 %arg143077, i64 %a142027); tail call
  ret void
}


define void @lam143217(i64 %env143218, i64 %_95142295, i64 %a142028) {
  %envptr145658 = inttoptr i64 %env143218 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145659 = getelementptr inbounds i64, i64* %envptr145658, i64 1              ; &envptr145658[1]
  %cont142294 = load i64, i64* %envptr145659, align 8                                ; load; *envptr145659
  %arg143080 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %retprim142296 = call i64 @prim__43(i64 %arg143080, i64 %a142028)                  ; call prim__43
  %arg143082 = add i64 0, 0                                                          ; quoted ()
  %cloptr145660 = inttoptr i64 %cont142294 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145660)                                       ; assert function application
  %i0ptr145661 = getelementptr inbounds i64, i64* %cloptr145660, i64 0               ; &cloptr145660[0]
  %f145663 = load i64, i64* %i0ptr145661, align 8                                    ; load; *i0ptr145661
  %fptr145662 = inttoptr i64 %f145663 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145662(i64 %cont142294, i64 %arg143082, i64 %retprim142296); tail call
  ret void
}


define void @lam143211(i64 %env143212, i64 %cont142297, i64 %PWu$_37take) {
  %arg143085 = add i64 0, 0                                                          ; quoted ()
  %cloptr145664 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145666 = getelementptr inbounds i64, i64* %cloptr145664, i64 1                ; &eptr145666[1]
  store i64 %PWu$_37take, i64* %eptr145666                                           ; *eptr145666 = %PWu$_37take
  %eptr145665 = getelementptr inbounds i64, i64* %cloptr145664, i64 0                ; &cloptr145664[0]
  %f145667 = ptrtoint void(i64,i64,i64,i64)* @lam143208 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145667, i64* %eptr145665                                               ; store fptr
  %arg143084 = ptrtoint i64* %cloptr145664 to i64                                    ; closure cast; i64* -> i64
  %cloptr145668 = inttoptr i64 %cont142297 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145668)                                       ; assert function application
  %i0ptr145669 = getelementptr inbounds i64, i64* %cloptr145668, i64 0               ; &cloptr145668[0]
  %f145671 = load i64, i64* %i0ptr145669, align 8                                    ; load; *i0ptr145669
  %fptr145670 = inttoptr i64 %f145671 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145670(i64 %cont142297, i64 %arg143085, i64 %arg143084); tail call
  ret void
}


define void @lam143208(i64 %env143209, i64 %cont142298, i64 %PZw$lst, i64 %Dkr$n) {
  %envptr145672 = inttoptr i64 %env143209 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145673 = getelementptr inbounds i64, i64* %envptr145672, i64 1              ; &envptr145672[1]
  %PWu$_37take = load i64, i64* %envptr145673, align 8                               ; load; *envptr145673
  %arg143087 = call i64 @const_init_int(i64 0)                                       ; quoted int
  %a142020 = call i64 @prim__61(i64 %Dkr$n, i64 %arg143087)                          ; call prim__61
  %cmp145674 = icmp eq i64 %a142020, 15                                              ; false?
  br i1 %cmp145674, label %else145676, label %then145675                             ; if

then145675:
  %arg143090 = add i64 0, 0                                                          ; quoted ()
  %arg143089 = add i64 0, 0                                                          ; quoted ()
  %cloptr145677 = inttoptr i64 %cont142298 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145677)                                       ; assert function application
  %i0ptr145678 = getelementptr inbounds i64, i64* %cloptr145677, i64 0               ; &cloptr145677[0]
  %f145680 = load i64, i64* %i0ptr145678, align 8                                    ; load; *i0ptr145678
  %fptr145679 = inttoptr i64 %f145680 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145679(i64 %cont142298, i64 %arg143090, i64 %arg143089); tail call
  ret void

else145676:
  %a142021 = call i64 @prim_null_63(i64 %PZw$lst)                                    ; call prim_null_63
  %cmp145681 = icmp eq i64 %a142021, 15                                              ; false?
  br i1 %cmp145681, label %else145683, label %then145682                             ; if

then145682:
  %arg143094 = add i64 0, 0                                                          ; quoted ()
  %arg143093 = add i64 0, 0                                                          ; quoted ()
  %cloptr145684 = inttoptr i64 %cont142298 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145684)                                       ; assert function application
  %i0ptr145685 = getelementptr inbounds i64, i64* %cloptr145684, i64 0               ; &cloptr145684[0]
  %f145687 = load i64, i64* %i0ptr145685, align 8                                    ; load; *i0ptr145685
  %fptr145686 = inttoptr i64 %f145687 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145686(i64 %cont142298, i64 %arg143094, i64 %arg143093); tail call
  ret void

else145683:
  %a142022 = call i64 @prim_car(i64 %PZw$lst)                                        ; call prim_car
  %a142023 = call i64 @prim_cdr(i64 %PZw$lst)                                        ; call prim_cdr
  %arg143098 = call i64 @const_init_int(i64 1)                                       ; quoted int
  %a142024 = call i64 @prim__45(i64 %Dkr$n, i64 %arg143098)                          ; call prim__45
  %cloptr145688 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145690 = getelementptr inbounds i64, i64* %cloptr145688, i64 1                ; &eptr145690[1]
  %eptr145691 = getelementptr inbounds i64, i64* %cloptr145688, i64 2                ; &eptr145691[2]
  store i64 %cont142298, i64* %eptr145690                                            ; *eptr145690 = %cont142298
  store i64 %a142022, i64* %eptr145691                                               ; *eptr145691 = %a142022
  %eptr145689 = getelementptr inbounds i64, i64* %cloptr145688, i64 0                ; &cloptr145688[0]
  %f145692 = ptrtoint void(i64,i64,i64)* @lam143204 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145692, i64* %eptr145689                                               ; store fptr
  %arg143102 = ptrtoint i64* %cloptr145688 to i64                                    ; closure cast; i64* -> i64
  %cloptr145693 = inttoptr i64 %PWu$_37take to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145693)                                       ; assert function application
  %i0ptr145694 = getelementptr inbounds i64, i64* %cloptr145693, i64 0               ; &cloptr145693[0]
  %f145696 = load i64, i64* %i0ptr145694, align 8                                    ; load; *i0ptr145694
  %fptr145695 = inttoptr i64 %f145696 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145695(i64 %PWu$_37take, i64 %arg143102, i64 %a142023, i64 %a142024); tail call
  ret void
}


define void @lam143204(i64 %env143205, i64 %_95142299, i64 %a142025) {
  %envptr145697 = inttoptr i64 %env143205 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145698 = getelementptr inbounds i64, i64* %envptr145697, i64 2              ; &envptr145697[2]
  %a142022 = load i64, i64* %envptr145698, align 8                                   ; load; *envptr145698
  %envptr145699 = inttoptr i64 %env143205 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145700 = getelementptr inbounds i64, i64* %envptr145699, i64 1              ; &envptr145699[1]
  %cont142298 = load i64, i64* %envptr145700, align 8                                ; load; *envptr145700
  %retprim142300 = call i64 @prim_cons(i64 %a142022, i64 %a142025)                   ; call prim_cons
  %arg143107 = add i64 0, 0                                                          ; quoted ()
  %cloptr145701 = inttoptr i64 %cont142298 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145701)                                       ; assert function application
  %i0ptr145702 = getelementptr inbounds i64, i64* %cloptr145701, i64 0               ; &cloptr145701[0]
  %f145704 = load i64, i64* %i0ptr145702, align 8                                    ; load; *i0ptr145702
  %fptr145703 = inttoptr i64 %f145704 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145703(i64 %cont142298, i64 %arg143107, i64 %retprim142300); tail call
  ret void
}


define void @lam143197(i64 %env143198, i64 %cont142301, i64 %VTT$_37map) {
  %arg143110 = add i64 0, 0                                                          ; quoted ()
  %cloptr145705 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145707 = getelementptr inbounds i64, i64* %cloptr145705, i64 1                ; &eptr145707[1]
  store i64 %VTT$_37map, i64* %eptr145707                                            ; *eptr145707 = %VTT$_37map
  %eptr145706 = getelementptr inbounds i64, i64* %cloptr145705, i64 0                ; &cloptr145705[0]
  %f145708 = ptrtoint void(i64,i64,i64,i64)* @lam143194 to i64                       ; fptr cast; i64(...)* -> i64
  store i64 %f145708, i64* %eptr145706                                               ; store fptr
  %arg143109 = ptrtoint i64* %cloptr145705 to i64                                    ; closure cast; i64* -> i64
  %cloptr145709 = inttoptr i64 %cont142301 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145709)                                       ; assert function application
  %i0ptr145710 = getelementptr inbounds i64, i64* %cloptr145709, i64 0               ; &cloptr145709[0]
  %f145712 = load i64, i64* %i0ptr145710, align 8                                    ; load; *i0ptr145710
  %fptr145711 = inttoptr i64 %f145712 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145711(i64 %cont142301, i64 %arg143110, i64 %arg143109); tail call
  ret void
}


define void @lam143194(i64 %env143195, i64 %cont142302, i64 %XtN$f, i64 %Qas$lst) {
  %envptr145713 = inttoptr i64 %env143195 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145714 = getelementptr inbounds i64, i64* %envptr145713, i64 1              ; &envptr145713[1]
  %VTT$_37map = load i64, i64* %envptr145714, align 8                                ; load; *envptr145714
  %a142015 = call i64 @prim_null_63(i64 %Qas$lst)                                    ; call prim_null_63
  %cmp145715 = icmp eq i64 %a142015, 15                                              ; false?
  br i1 %cmp145715, label %else145717, label %then145716                             ; if

then145716:
  %arg143114 = add i64 0, 0                                                          ; quoted ()
  %arg143113 = add i64 0, 0                                                          ; quoted ()
  %cloptr145718 = inttoptr i64 %cont142302 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145718)                                       ; assert function application
  %i0ptr145719 = getelementptr inbounds i64, i64* %cloptr145718, i64 0               ; &cloptr145718[0]
  %f145721 = load i64, i64* %i0ptr145719, align 8                                    ; load; *i0ptr145719
  %fptr145720 = inttoptr i64 %f145721 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145720(i64 %cont142302, i64 %arg143114, i64 %arg143113); tail call
  ret void

else145717:
  %a142016 = call i64 @prim_car(i64 %Qas$lst)                                        ; call prim_car
  %cloptr145722 = call i64* @alloc(i64 40)                                           ; malloc
  %eptr145724 = getelementptr inbounds i64, i64* %cloptr145722, i64 1                ; &eptr145724[1]
  %eptr145725 = getelementptr inbounds i64, i64* %cloptr145722, i64 2                ; &eptr145725[2]
  %eptr145726 = getelementptr inbounds i64, i64* %cloptr145722, i64 3                ; &eptr145726[3]
  %eptr145727 = getelementptr inbounds i64, i64* %cloptr145722, i64 4                ; &eptr145727[4]
  store i64 %VTT$_37map, i64* %eptr145724                                            ; *eptr145724 = %VTT$_37map
  store i64 %XtN$f, i64* %eptr145725                                                 ; *eptr145725 = %XtN$f
  store i64 %cont142302, i64* %eptr145726                                            ; *eptr145726 = %cont142302
  store i64 %Qas$lst, i64* %eptr145727                                               ; *eptr145727 = %Qas$lst
  %eptr145723 = getelementptr inbounds i64, i64* %cloptr145722, i64 0                ; &cloptr145722[0]
  %f145728 = ptrtoint void(i64,i64,i64)* @lam143192 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145728, i64* %eptr145723                                               ; store fptr
  %arg143118 = ptrtoint i64* %cloptr145722 to i64                                    ; closure cast; i64* -> i64
  %cloptr145729 = inttoptr i64 %XtN$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145729)                                       ; assert function application
  %i0ptr145730 = getelementptr inbounds i64, i64* %cloptr145729, i64 0               ; &cloptr145729[0]
  %f145732 = load i64, i64* %i0ptr145730, align 8                                    ; load; *i0ptr145730
  %fptr145731 = inttoptr i64 %f145732 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145731(i64 %XtN$f, i64 %arg143118, i64 %a142016)    ; tail call
  ret void
}


define void @lam143192(i64 %env143193, i64 %_95142303, i64 %a142017) {
  %envptr145733 = inttoptr i64 %env143193 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145734 = getelementptr inbounds i64, i64* %envptr145733, i64 4              ; &envptr145733[4]
  %Qas$lst = load i64, i64* %envptr145734, align 8                                   ; load; *envptr145734
  %envptr145735 = inttoptr i64 %env143193 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145736 = getelementptr inbounds i64, i64* %envptr145735, i64 3              ; &envptr145735[3]
  %cont142302 = load i64, i64* %envptr145736, align 8                                ; load; *envptr145736
  %envptr145737 = inttoptr i64 %env143193 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145738 = getelementptr inbounds i64, i64* %envptr145737, i64 2              ; &envptr145737[2]
  %XtN$f = load i64, i64* %envptr145738, align 8                                     ; load; *envptr145738
  %envptr145739 = inttoptr i64 %env143193 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145740 = getelementptr inbounds i64, i64* %envptr145739, i64 1              ; &envptr145739[1]
  %VTT$_37map = load i64, i64* %envptr145740, align 8                                ; load; *envptr145740
  %a142018 = call i64 @prim_cdr(i64 %Qas$lst)                                        ; call prim_cdr
  %cloptr145741 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145743 = getelementptr inbounds i64, i64* %cloptr145741, i64 1                ; &eptr145743[1]
  %eptr145744 = getelementptr inbounds i64, i64* %cloptr145741, i64 2                ; &eptr145744[2]
  store i64 %cont142302, i64* %eptr145743                                            ; *eptr145743 = %cont142302
  store i64 %a142017, i64* %eptr145744                                               ; *eptr145744 = %a142017
  %eptr145742 = getelementptr inbounds i64, i64* %cloptr145741, i64 0                ; &cloptr145741[0]
  %f145745 = ptrtoint void(i64,i64,i64)* @lam143190 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145745, i64* %eptr145742                                               ; store fptr
  %arg143123 = ptrtoint i64* %cloptr145741 to i64                                    ; closure cast; i64* -> i64
  %cloptr145746 = inttoptr i64 %VTT$_37map to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145746)                                       ; assert function application
  %i0ptr145747 = getelementptr inbounds i64, i64* %cloptr145746, i64 0               ; &cloptr145746[0]
  %f145749 = load i64, i64* %i0ptr145747, align 8                                    ; load; *i0ptr145747
  %fptr145748 = inttoptr i64 %f145749 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145748(i64 %VTT$_37map, i64 %arg143123, i64 %XtN$f, i64 %a142018); tail call
  ret void
}


define void @lam143190(i64 %env143191, i64 %_95142304, i64 %a142019) {
  %envptr145750 = inttoptr i64 %env143191 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145751 = getelementptr inbounds i64, i64* %envptr145750, i64 2              ; &envptr145750[2]
  %a142017 = load i64, i64* %envptr145751, align 8                                   ; load; *envptr145751
  %envptr145752 = inttoptr i64 %env143191 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145753 = getelementptr inbounds i64, i64* %envptr145752, i64 1              ; &envptr145752[1]
  %cont142302 = load i64, i64* %envptr145753, align 8                                ; load; *envptr145753
  %retprim142305 = call i64 @prim_cons(i64 %a142017, i64 %a142019)                   ; call prim_cons
  %arg143128 = add i64 0, 0                                                          ; quoted ()
  %cloptr145754 = inttoptr i64 %cont142302 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145754)                                       ; assert function application
  %i0ptr145755 = getelementptr inbounds i64, i64* %cloptr145754, i64 0               ; &cloptr145754[0]
  %f145757 = load i64, i64* %i0ptr145755, align 8                                    ; load; *i0ptr145755
  %fptr145756 = inttoptr i64 %f145757 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145756(i64 %cont142302, i64 %arg143128, i64 %retprim142305); tail call
  ret void
}


define void @lam143185(i64 %env143186, i64 %cont142306, i64 %P1P$_37foldr1) {
  %arg143131 = add i64 0, 0                                                          ; quoted ()
  %cloptr145758 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145760 = getelementptr inbounds i64, i64* %cloptr145758, i64 1                ; &eptr145760[1]
  store i64 %P1P$_37foldr1, i64* %eptr145760                                         ; *eptr145760 = %P1P$_37foldr1
  %eptr145759 = getelementptr inbounds i64, i64* %cloptr145758, i64 0                ; &cloptr145758[0]
  %f145761 = ptrtoint void(i64,i64,i64,i64,i64)* @lam143182 to i64                   ; fptr cast; i64(...)* -> i64
  store i64 %f145761, i64* %eptr145759                                               ; store fptr
  %arg143130 = ptrtoint i64* %cloptr145758 to i64                                    ; closure cast; i64* -> i64
  %cloptr145762 = inttoptr i64 %cont142306 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145762)                                       ; assert function application
  %i0ptr145763 = getelementptr inbounds i64, i64* %cloptr145762, i64 0               ; &cloptr145762[0]
  %f145765 = load i64, i64* %i0ptr145763, align 8                                    ; load; *i0ptr145763
  %fptr145764 = inttoptr i64 %f145765 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145764(i64 %cont142306, i64 %arg143131, i64 %arg143130); tail call
  ret void
}


define void @lam143182(i64 %env143183, i64 %cont142307, i64 %aT3$f, i64 %Nds$acc, i64 %RXx$lst) {
  %envptr145766 = inttoptr i64 %env143183 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145767 = getelementptr inbounds i64, i64* %envptr145766, i64 1              ; &envptr145766[1]
  %P1P$_37foldr1 = load i64, i64* %envptr145767, align 8                             ; load; *envptr145767
  %a142011 = call i64 @prim_null_63(i64 %RXx$lst)                                    ; call prim_null_63
  %cmp145768 = icmp eq i64 %a142011, 15                                              ; false?
  br i1 %cmp145768, label %else145770, label %then145769                             ; if

then145769:
  %arg143135 = add i64 0, 0                                                          ; quoted ()
  %cloptr145771 = inttoptr i64 %cont142307 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145771)                                       ; assert function application
  %i0ptr145772 = getelementptr inbounds i64, i64* %cloptr145771, i64 0               ; &cloptr145771[0]
  %f145774 = load i64, i64* %i0ptr145772, align 8                                    ; load; *i0ptr145772
  %fptr145773 = inttoptr i64 %f145774 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145773(i64 %cont142307, i64 %arg143135, i64 %Nds$acc); tail call
  ret void

else145770:
  %a142012 = call i64 @prim_car(i64 %RXx$lst)                                        ; call prim_car
  %a142013 = call i64 @prim_cdr(i64 %RXx$lst)                                        ; call prim_cdr
  %cloptr145775 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145777 = getelementptr inbounds i64, i64* %cloptr145775, i64 1                ; &eptr145777[1]
  %eptr145778 = getelementptr inbounds i64, i64* %cloptr145775, i64 2                ; &eptr145778[2]
  %eptr145779 = getelementptr inbounds i64, i64* %cloptr145775, i64 3                ; &eptr145779[3]
  store i64 %a142012, i64* %eptr145777                                               ; *eptr145777 = %a142012
  store i64 %aT3$f, i64* %eptr145778                                                 ; *eptr145778 = %aT3$f
  store i64 %cont142307, i64* %eptr145779                                            ; *eptr145779 = %cont142307
  %eptr145776 = getelementptr inbounds i64, i64* %cloptr145775, i64 0                ; &cloptr145775[0]
  %f145780 = ptrtoint void(i64,i64,i64)* @lam143180 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145780, i64* %eptr145776                                               ; store fptr
  %arg143142 = ptrtoint i64* %cloptr145775 to i64                                    ; closure cast; i64* -> i64
  %cloptr145781 = inttoptr i64 %P1P$_37foldr1 to i64*                                ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145781)                                       ; assert function application
  %i0ptr145782 = getelementptr inbounds i64, i64* %cloptr145781, i64 0               ; &cloptr145781[0]
  %f145784 = load i64, i64* %i0ptr145782, align 8                                    ; load; *i0ptr145782
  %fptr145783 = inttoptr i64 %f145784 to void (i64,i64,i64,i64,i64)*                 ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145783(i64 %P1P$_37foldr1, i64 %arg143142, i64 %aT3$f, i64 %Nds$acc, i64 %a142013); tail call
  ret void
}


define void @lam143180(i64 %env143181, i64 %_95142308, i64 %a142014) {
  %envptr145785 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145786 = getelementptr inbounds i64, i64* %envptr145785, i64 3              ; &envptr145785[3]
  %cont142307 = load i64, i64* %envptr145786, align 8                                ; load; *envptr145786
  %envptr145787 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145788 = getelementptr inbounds i64, i64* %envptr145787, i64 2              ; &envptr145787[2]
  %aT3$f = load i64, i64* %envptr145788, align 8                                     ; load; *envptr145788
  %envptr145789 = inttoptr i64 %env143181 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145790 = getelementptr inbounds i64, i64* %envptr145789, i64 1              ; &envptr145789[1]
  %a142012 = load i64, i64* %envptr145790, align 8                                   ; load; *envptr145790
  %cloptr145791 = inttoptr i64 %aT3$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145791)                                       ; assert function application
  %i0ptr145792 = getelementptr inbounds i64, i64* %cloptr145791, i64 0               ; &cloptr145791[0]
  %f145794 = load i64, i64* %i0ptr145792, align 8                                    ; load; *i0ptr145792
  %fptr145793 = inttoptr i64 %f145794 to void (i64,i64,i64,i64)*                     ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145793(i64 %aT3$f, i64 %cont142307, i64 %a142012, i64 %a142014); tail call
  ret void
}


define void @lam143177(i64 %env143178, i64 %cont142310, i64 %C0s$y) {
  %arg143149 = add i64 0, 0                                                          ; quoted ()
  %cloptr145795 = call i64* @alloc(i64 16)                                           ; malloc
  %eptr145797 = getelementptr inbounds i64, i64* %cloptr145795, i64 1                ; &eptr145797[1]
  store i64 %C0s$y, i64* %eptr145797                                                 ; *eptr145797 = %C0s$y
  %eptr145796 = getelementptr inbounds i64, i64* %cloptr145795, i64 0                ; &cloptr145795[0]
  %f145798 = ptrtoint void(i64,i64,i64)* @lam143174 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145798, i64* %eptr145796                                               ; store fptr
  %arg143148 = ptrtoint i64* %cloptr145795 to i64                                    ; closure cast; i64* -> i64
  %cloptr145799 = inttoptr i64 %cont142310 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145799)                                       ; assert function application
  %i0ptr145800 = getelementptr inbounds i64, i64* %cloptr145799, i64 0               ; &cloptr145799[0]
  %f145802 = load i64, i64* %i0ptr145800, align 8                                    ; load; *i0ptr145800
  %fptr145801 = inttoptr i64 %f145802 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145801(i64 %cont142310, i64 %arg143149, i64 %arg143148); tail call
  ret void
}


define void @lam143174(i64 %env143175, i64 %cont142311, i64 %gvB$f) {
  %envptr145803 = inttoptr i64 %env143175 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145804 = getelementptr inbounds i64, i64* %envptr145803, i64 1              ; &envptr145803[1]
  %C0s$y = load i64, i64* %envptr145804, align 8                                     ; load; *envptr145804
  %cloptr145805 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145807 = getelementptr inbounds i64, i64* %cloptr145805, i64 1                ; &eptr145807[1]
  %eptr145808 = getelementptr inbounds i64, i64* %cloptr145805, i64 2                ; &eptr145808[2]
  store i64 %gvB$f, i64* %eptr145807                                                 ; *eptr145807 = %gvB$f
  store i64 %C0s$y, i64* %eptr145808                                                 ; *eptr145808 = %C0s$y
  %eptr145806 = getelementptr inbounds i64, i64* %cloptr145805, i64 0                ; &cloptr145805[0]
  %f145809 = ptrtoint void(i64,i64)* @lam143172 to i64                               ; fptr cast; i64(...)* -> i64
  store i64 %f145809, i64* %eptr145806                                               ; store fptr
  %arg143151 = ptrtoint i64* %cloptr145805 to i64                                    ; closure cast; i64* -> i64
  %cloptr145810 = inttoptr i64 %gvB$f to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145810)                                       ; assert function application
  %i0ptr145811 = getelementptr inbounds i64, i64* %cloptr145810, i64 0               ; &cloptr145810[0]
  %f145813 = load i64, i64* %i0ptr145811, align 8                                    ; load; *i0ptr145811
  %fptr145812 = inttoptr i64 %f145813 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145812(i64 %gvB$f, i64 %cont142311, i64 %arg143151) ; tail call
  ret void
}


define void @lam143172(i64 %env143173, i64 %w5B$args142313) {
  %envptr145814 = inttoptr i64 %env143173 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145815 = getelementptr inbounds i64, i64* %envptr145814, i64 2              ; &envptr145814[2]
  %C0s$y = load i64, i64* %envptr145815, align 8                                     ; load; *envptr145815
  %envptr145816 = inttoptr i64 %env143173 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145817 = getelementptr inbounds i64, i64* %envptr145816, i64 1              ; &envptr145816[1]
  %gvB$f = load i64, i64* %envptr145817, align 8                                     ; load; *envptr145817
  %cont142312 = call i64 @prim_car(i64 %w5B$args142313)                              ; call prim_car
  %w5B$args = call i64 @prim_cdr(i64 %w5B$args142313)                                ; call prim_cdr
  %cloptr145818 = call i64* @alloc(i64 32)                                           ; malloc
  %eptr145820 = getelementptr inbounds i64, i64* %cloptr145818, i64 1                ; &eptr145820[1]
  %eptr145821 = getelementptr inbounds i64, i64* %cloptr145818, i64 2                ; &eptr145821[2]
  %eptr145822 = getelementptr inbounds i64, i64* %cloptr145818, i64 3                ; &eptr145822[3]
  store i64 %cont142312, i64* %eptr145820                                            ; *eptr145820 = %cont142312
  store i64 %w5B$args, i64* %eptr145821                                              ; *eptr145821 = %w5B$args
  store i64 %gvB$f, i64* %eptr145822                                                 ; *eptr145822 = %gvB$f
  %eptr145819 = getelementptr inbounds i64, i64* %cloptr145818, i64 0                ; &cloptr145818[0]
  %f145823 = ptrtoint void(i64,i64,i64)* @lam143170 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145823, i64* %eptr145819                                               ; store fptr
  %arg143157 = ptrtoint i64* %cloptr145818 to i64                                    ; closure cast; i64* -> i64
  %cloptr145824 = inttoptr i64 %C0s$y to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145824)                                       ; assert function application
  %i0ptr145825 = getelementptr inbounds i64, i64* %cloptr145824, i64 0               ; &cloptr145824[0]
  %f145827 = load i64, i64* %i0ptr145825, align 8                                    ; load; *i0ptr145825
  %fptr145826 = inttoptr i64 %f145827 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145826(i64 %C0s$y, i64 %arg143157, i64 %C0s$y)      ; tail call
  ret void
}


define void @lam143170(i64 %env143171, i64 %_95142314, i64 %a142009) {
  %envptr145828 = inttoptr i64 %env143171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145829 = getelementptr inbounds i64, i64* %envptr145828, i64 3              ; &envptr145828[3]
  %gvB$f = load i64, i64* %envptr145829, align 8                                     ; load; *envptr145829
  %envptr145830 = inttoptr i64 %env143171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145831 = getelementptr inbounds i64, i64* %envptr145830, i64 2              ; &envptr145830[2]
  %w5B$args = load i64, i64* %envptr145831, align 8                                  ; load; *envptr145831
  %envptr145832 = inttoptr i64 %env143171 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145833 = getelementptr inbounds i64, i64* %envptr145832, i64 1              ; &envptr145832[1]
  %cont142312 = load i64, i64* %envptr145833, align 8                                ; load; *envptr145833
  %cloptr145834 = call i64* @alloc(i64 24)                                           ; malloc
  %eptr145836 = getelementptr inbounds i64, i64* %cloptr145834, i64 1                ; &eptr145836[1]
  %eptr145837 = getelementptr inbounds i64, i64* %cloptr145834, i64 2                ; &eptr145837[2]
  store i64 %cont142312, i64* %eptr145836                                            ; *eptr145836 = %cont142312
  store i64 %w5B$args, i64* %eptr145837                                              ; *eptr145837 = %w5B$args
  %eptr145835 = getelementptr inbounds i64, i64* %cloptr145834, i64 0                ; &cloptr145834[0]
  %f145838 = ptrtoint void(i64,i64,i64)* @lam143168 to i64                           ; fptr cast; i64(...)* -> i64
  store i64 %f145838, i64* %eptr145835                                               ; store fptr
  %arg143160 = ptrtoint i64* %cloptr145834 to i64                                    ; closure cast; i64* -> i64
  %cloptr145839 = inttoptr i64 %a142009 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145839)                                       ; assert function application
  %i0ptr145840 = getelementptr inbounds i64, i64* %cloptr145839, i64 0               ; &cloptr145839[0]
  %f145842 = load i64, i64* %i0ptr145840, align 8                                    ; load; *i0ptr145840
  %fptr145841 = inttoptr i64 %f145842 to void (i64,i64,i64)*                         ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145841(i64 %a142009, i64 %arg143160, i64 %gvB$f)    ; tail call
  ret void
}


define void @lam143168(i64 %env143169, i64 %_95142315, i64 %a142010) {
  %envptr145843 = inttoptr i64 %env143169 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145844 = getelementptr inbounds i64, i64* %envptr145843, i64 2              ; &envptr145843[2]
  %w5B$args = load i64, i64* %envptr145844, align 8                                  ; load; *envptr145844
  %envptr145845 = inttoptr i64 %env143169 to i64*                                    ; closure/env cast; i64 -> i64*
  %envptr145846 = getelementptr inbounds i64, i64* %envptr145845, i64 1              ; &envptr145845[1]
  %cont142312 = load i64, i64* %envptr145846, align 8                                ; load; *envptr145846
  %cps_45lst142316 = call i64 @prim_cons(i64 %cont142312, i64 %w5B$args)             ; call prim_cons
  %cloptr145847 = inttoptr i64 %a142010 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr145847)                                       ; assert function application
  %i0ptr145848 = getelementptr inbounds i64, i64* %cloptr145847, i64 0               ; &cloptr145847[0]
  %f145850 = load i64, i64* %i0ptr145848, align 8                                    ; load; *i0ptr145848
  %fptr145849 = inttoptr i64 %f145850 to void (i64,i64)*                             ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr145849(i64 %a142010, i64 %cps_45lst142316)          ; tail call
  ret void
}





@sym144434 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
