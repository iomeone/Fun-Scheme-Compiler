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
  %cloptr11448 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11449 = getelementptr inbounds i64, i64* %cloptr11448, i64 0                  ; &cloptr11448[0]
  %f11450 = ptrtoint void(i64,i64)* @lam11446 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11450, i64* %eptr11449                                                 ; store fptr
  %arg7497 = ptrtoint i64* %cloptr11448 to i64                                       ; closure cast; i64* -> i64
  %cloptr11451 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11452 = getelementptr inbounds i64, i64* %cloptr11451, i64 0                  ; &cloptr11451[0]
  %f11453 = ptrtoint void(i64,i64)* @lam11443 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11453, i64* %eptr11452                                                 ; store fptr
  %arg7496 = ptrtoint i64* %cloptr11451 to i64                                       ; closure cast; i64* -> i64
  %cloptr11454 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11455 = getelementptr inbounds i64, i64* %cloptr11454, i64 0                  ; &cloptr11454[0]
  %f11456 = ptrtoint void(i64,i64)* @lam10548 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11456, i64* %eptr11455                                                 ; store fptr
  %arg7495 = ptrtoint i64* %cloptr11454 to i64                                       ; closure cast; i64* -> i64
  %rva10533 = add i64 0, 0                                                           ; quoted ()
  %rva10532 = call i64 @prim_cons(i64 %arg7495, i64 %rva10533)                       ; call prim_cons
  %rva10531 = call i64 @prim_cons(i64 %arg7496, i64 %rva10532)                       ; call prim_cons
  %cloptr11457 = inttoptr i64 %arg7497 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11457)                                        ; assert function application
  %i0ptr11458 = getelementptr inbounds i64, i64* %cloptr11457, i64 0                 ; &cloptr11457[0]
  %f11460 = load i64, i64* %i0ptr11458, align 8                                      ; load; *i0ptr11458
  %fptr11459 = inttoptr i64 %f11460 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11459(i64 %arg7497, i64 %rva10531)                  ; tail call
  ret void
}


define i32 @main() {
  call fastcc void @proc_main()
  ret i32 0
}



define void @lam11446(i64 %env11447, i64 %rvp8726) {
  %cont7487 = call i64 @prim_car(i64 %rvp8726)                                       ; call prim_car
  %rvp8724 = call i64 @prim_cdr(i64 %rvp8726)                                        ; call prim_cdr
  %qyp$yu = call i64 @prim_car(i64 %rvp8724)                                         ; call prim_car
  %na8720 = call i64 @prim_cdr(i64 %rvp8724)                                         ; call prim_cdr
  %rva8723 = add i64 0, 0                                                            ; quoted ()
  %rva8722 = call i64 @prim_cons(i64 %qyp$yu, i64 %rva8723)                          ; call prim_cons
  %rva8721 = call i64 @prim_cons(i64 %cont7487, i64 %rva8722)                        ; call prim_cons
  %cloptr11461 = inttoptr i64 %qyp$yu to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11461)                                        ; assert function application
  %i0ptr11462 = getelementptr inbounds i64, i64* %cloptr11461, i64 0                 ; &cloptr11461[0]
  %f11464 = load i64, i64* %i0ptr11462, align 8                                      ; load; *i0ptr11462
  %fptr11463 = inttoptr i64 %f11464 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11463(i64 %qyp$yu, i64 %rva8721)                    ; tail call
  ret void
}


define void @lam11443(i64 %env11444, i64 %rvp10493) {
  %_957227 = call i64 @prim_car(i64 %rvp10493)                                       ; call prim_car
  %rvp10491 = call i64 @prim_cdr(i64 %rvp10493)                                      ; call prim_cdr
  %pI8$Ycmb = call i64 @prim_car(i64 %rvp10491)                                      ; call prim_car
  %na8729 = call i64 @prim_cdr(i64 %rvp10491)                                        ; call prim_cdr
  %cloptr11465 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11467 = getelementptr inbounds i64, i64* %cloptr11465, i64 1                  ; &eptr11467[1]
  store i64 %pI8$Ycmb, i64* %eptr11467                                               ; *eptr11467 = %pI8$Ycmb
  %eptr11466 = getelementptr inbounds i64, i64* %cloptr11465, i64 0                  ; &cloptr11465[0]
  %f11468 = ptrtoint void(i64,i64)* @lam11441 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11468, i64* %eptr11466                                                 ; store fptr
  %arg7502 = ptrtoint i64* %cloptr11465 to i64                                       ; closure cast; i64* -> i64
  %cloptr11469 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11470 = getelementptr inbounds i64, i64* %cloptr11469, i64 0                  ; &cloptr11469[0]
  %f11471 = ptrtoint void(i64,i64)* @lam10561 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11471, i64* %eptr11470                                                 ; store fptr
  %arg7501 = ptrtoint i64* %cloptr11469 to i64                                       ; closure cast; i64* -> i64
  %rva10490 = add i64 0, 0                                                           ; quoted ()
  %rva10489 = call i64 @prim_cons(i64 %arg7501, i64 %rva10490)                       ; call prim_cons
  %rva10488 = call i64 @prim_cons(i64 %arg7502, i64 %rva10489)                       ; call prim_cons
  %cloptr11472 = inttoptr i64 %pI8$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11472)                                        ; assert function application
  %i0ptr11473 = getelementptr inbounds i64, i64* %cloptr11472, i64 0                 ; &cloptr11472[0]
  %f11475 = load i64, i64* %i0ptr11473, align 8                                      ; load; *i0ptr11473
  %fptr11474 = inttoptr i64 %f11475 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11474(i64 %pI8$Ycmb, i64 %rva10488)                 ; tail call
  ret void
}


define void @lam11441(i64 %env11442, i64 %rvp10449) {
  %envptr11476 = inttoptr i64 %env11442 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11477 = getelementptr inbounds i64, i64* %envptr11476, i64 1                ; &envptr11476[1]
  %pI8$Ycmb = load i64, i64* %envptr11477, align 8                                   ; load; *envptr11477
  %_957228 = call i64 @prim_car(i64 %rvp10449)                                       ; call prim_car
  %rvp10447 = call i64 @prim_cdr(i64 %rvp10449)                                      ; call prim_cdr
  %kPq$_37foldr1 = call i64 @prim_car(i64 %rvp10447)                                 ; call prim_car
  %na8731 = call i64 @prim_cdr(i64 %rvp10447)                                        ; call prim_cdr
  %cloptr11478 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11480 = getelementptr inbounds i64, i64* %cloptr11478, i64 1                  ; &eptr11480[1]
  %eptr11481 = getelementptr inbounds i64, i64* %cloptr11478, i64 2                  ; &eptr11481[2]
  store i64 %kPq$_37foldr1, i64* %eptr11480                                          ; *eptr11480 = %kPq$_37foldr1
  store i64 %pI8$Ycmb, i64* %eptr11481                                               ; *eptr11481 = %pI8$Ycmb
  %eptr11479 = getelementptr inbounds i64, i64* %cloptr11478, i64 0                  ; &cloptr11478[0]
  %f11482 = ptrtoint void(i64,i64)* @lam11439 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11482, i64* %eptr11479                                                 ; store fptr
  %arg7505 = ptrtoint i64* %cloptr11478 to i64                                       ; closure cast; i64* -> i64
  %cloptr11483 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11484 = getelementptr inbounds i64, i64* %cloptr11483, i64 0                  ; &cloptr11483[0]
  %f11485 = ptrtoint void(i64,i64)* @lam10579 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11485, i64* %eptr11484                                                 ; store fptr
  %arg7504 = ptrtoint i64* %cloptr11483 to i64                                       ; closure cast; i64* -> i64
  %rva10446 = add i64 0, 0                                                           ; quoted ()
  %rva10445 = call i64 @prim_cons(i64 %arg7504, i64 %rva10446)                       ; call prim_cons
  %rva10444 = call i64 @prim_cons(i64 %arg7505, i64 %rva10445)                       ; call prim_cons
  %cloptr11486 = inttoptr i64 %pI8$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11486)                                        ; assert function application
  %i0ptr11487 = getelementptr inbounds i64, i64* %cloptr11486, i64 0                 ; &cloptr11486[0]
  %f11489 = load i64, i64* %i0ptr11487, align 8                                      ; load; *i0ptr11487
  %fptr11488 = inttoptr i64 %f11489 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11488(i64 %pI8$Ycmb, i64 %rva10444)                 ; tail call
  ret void
}


define void @lam11439(i64 %env11440, i64 %rvp10400) {
  %envptr11490 = inttoptr i64 %env11440 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11491 = getelementptr inbounds i64, i64* %envptr11490, i64 2                ; &envptr11490[2]
  %pI8$Ycmb = load i64, i64* %envptr11491, align 8                                   ; load; *envptr11491
  %envptr11492 = inttoptr i64 %env11440 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11493 = getelementptr inbounds i64, i64* %envptr11492, i64 1                ; &envptr11492[1]
  %kPq$_37foldr1 = load i64, i64* %envptr11493, align 8                              ; load; *envptr11493
  %_957229 = call i64 @prim_car(i64 %rvp10400)                                       ; call prim_car
  %rvp10398 = call i64 @prim_cdr(i64 %rvp10400)                                      ; call prim_cdr
  %Khi$_37map1 = call i64 @prim_car(i64 %rvp10398)                                   ; call prim_car
  %na8733 = call i64 @prim_cdr(i64 %rvp10398)                                        ; call prim_cdr
  %cloptr11494 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11496 = getelementptr inbounds i64, i64* %cloptr11494, i64 1                  ; &eptr11496[1]
  %eptr11497 = getelementptr inbounds i64, i64* %cloptr11494, i64 2                  ; &eptr11497[2]
  %eptr11498 = getelementptr inbounds i64, i64* %cloptr11494, i64 3                  ; &eptr11498[3]
  store i64 %kPq$_37foldr1, i64* %eptr11496                                          ; *eptr11496 = %kPq$_37foldr1
  store i64 %Khi$_37map1, i64* %eptr11497                                            ; *eptr11497 = %Khi$_37map1
  store i64 %pI8$Ycmb, i64* %eptr11498                                               ; *eptr11498 = %pI8$Ycmb
  %eptr11495 = getelementptr inbounds i64, i64* %cloptr11494, i64 0                  ; &cloptr11494[0]
  %f11499 = ptrtoint void(i64,i64)* @lam11437 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11499, i64* %eptr11495                                                 ; store fptr
  %arg7508 = ptrtoint i64* %cloptr11494 to i64                                       ; closure cast; i64* -> i64
  %cloptr11500 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11501 = getelementptr inbounds i64, i64* %cloptr11500, i64 0                  ; &cloptr11500[0]
  %f11502 = ptrtoint void(i64,i64)* @lam10599 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11502, i64* %eptr11501                                                 ; store fptr
  %arg7507 = ptrtoint i64* %cloptr11500 to i64                                       ; closure cast; i64* -> i64
  %rva10397 = add i64 0, 0                                                           ; quoted ()
  %rva10396 = call i64 @prim_cons(i64 %arg7507, i64 %rva10397)                       ; call prim_cons
  %rva10395 = call i64 @prim_cons(i64 %arg7508, i64 %rva10396)                       ; call prim_cons
  %cloptr11503 = inttoptr i64 %pI8$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11503)                                        ; assert function application
  %i0ptr11504 = getelementptr inbounds i64, i64* %cloptr11503, i64 0                 ; &cloptr11503[0]
  %f11506 = load i64, i64* %i0ptr11504, align 8                                      ; load; *i0ptr11504
  %fptr11505 = inttoptr i64 %f11506 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11505(i64 %pI8$Ycmb, i64 %rva10395)                 ; tail call
  ret void
}


define void @lam11437(i64 %env11438, i64 %rvp10357) {
  %envptr11507 = inttoptr i64 %env11438 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11508 = getelementptr inbounds i64, i64* %envptr11507, i64 3                ; &envptr11507[3]
  %pI8$Ycmb = load i64, i64* %envptr11508, align 8                                   ; load; *envptr11508
  %envptr11509 = inttoptr i64 %env11438 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11510 = getelementptr inbounds i64, i64* %envptr11509, i64 2                ; &envptr11509[2]
  %Khi$_37map1 = load i64, i64* %envptr11510, align 8                                ; load; *envptr11510
  %envptr11511 = inttoptr i64 %env11438 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11512 = getelementptr inbounds i64, i64* %envptr11511, i64 1                ; &envptr11511[1]
  %kPq$_37foldr1 = load i64, i64* %envptr11512, align 8                              ; load; *envptr11512
  %_957230 = call i64 @prim_car(i64 %rvp10357)                                       ; call prim_car
  %rvp10355 = call i64 @prim_cdr(i64 %rvp10357)                                      ; call prim_cdr
  %ocq$_37take = call i64 @prim_car(i64 %rvp10355)                                   ; call prim_car
  %na8735 = call i64 @prim_cdr(i64 %rvp10355)                                        ; call prim_cdr
  %cloptr11513 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11515 = getelementptr inbounds i64, i64* %cloptr11513, i64 1                  ; &eptr11515[1]
  %eptr11516 = getelementptr inbounds i64, i64* %cloptr11513, i64 2                  ; &eptr11516[2]
  %eptr11517 = getelementptr inbounds i64, i64* %cloptr11513, i64 3                  ; &eptr11517[3]
  %eptr11518 = getelementptr inbounds i64, i64* %cloptr11513, i64 4                  ; &eptr11518[4]
  store i64 %kPq$_37foldr1, i64* %eptr11515                                          ; *eptr11515 = %kPq$_37foldr1
  store i64 %Khi$_37map1, i64* %eptr11516                                            ; *eptr11516 = %Khi$_37map1
  store i64 %ocq$_37take, i64* %eptr11517                                            ; *eptr11517 = %ocq$_37take
  store i64 %pI8$Ycmb, i64* %eptr11518                                               ; *eptr11518 = %pI8$Ycmb
  %eptr11514 = getelementptr inbounds i64, i64* %cloptr11513, i64 0                  ; &cloptr11513[0]
  %f11519 = ptrtoint void(i64,i64)* @lam11435 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11519, i64* %eptr11514                                                 ; store fptr
  %arg7511 = ptrtoint i64* %cloptr11513 to i64                                       ; closure cast; i64* -> i64
  %cloptr11520 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11521 = getelementptr inbounds i64, i64* %cloptr11520, i64 0                  ; &cloptr11520[0]
  %f11522 = ptrtoint void(i64,i64)* @lam10615 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11522, i64* %eptr11521                                                 ; store fptr
  %arg7510 = ptrtoint i64* %cloptr11520 to i64                                       ; closure cast; i64* -> i64
  %rva10354 = add i64 0, 0                                                           ; quoted ()
  %rva10353 = call i64 @prim_cons(i64 %arg7510, i64 %rva10354)                       ; call prim_cons
  %rva10352 = call i64 @prim_cons(i64 %arg7511, i64 %rva10353)                       ; call prim_cons
  %cloptr11523 = inttoptr i64 %pI8$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11523)                                        ; assert function application
  %i0ptr11524 = getelementptr inbounds i64, i64* %cloptr11523, i64 0                 ; &cloptr11523[0]
  %f11526 = load i64, i64* %i0ptr11524, align 8                                      ; load; *i0ptr11524
  %fptr11525 = inttoptr i64 %f11526 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11525(i64 %pI8$Ycmb, i64 %rva10352)                 ; tail call
  ret void
}


define void @lam11435(i64 %env11436, i64 %rvp10320) {
  %envptr11527 = inttoptr i64 %env11436 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11528 = getelementptr inbounds i64, i64* %envptr11527, i64 4                ; &envptr11527[4]
  %pI8$Ycmb = load i64, i64* %envptr11528, align 8                                   ; load; *envptr11528
  %envptr11529 = inttoptr i64 %env11436 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11530 = getelementptr inbounds i64, i64* %envptr11529, i64 3                ; &envptr11529[3]
  %ocq$_37take = load i64, i64* %envptr11530, align 8                                ; load; *envptr11530
  %envptr11531 = inttoptr i64 %env11436 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11532 = getelementptr inbounds i64, i64* %envptr11531, i64 2                ; &envptr11531[2]
  %Khi$_37map1 = load i64, i64* %envptr11532, align 8                                ; load; *envptr11532
  %envptr11533 = inttoptr i64 %env11436 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11534 = getelementptr inbounds i64, i64* %envptr11533, i64 1                ; &envptr11533[1]
  %kPq$_37foldr1 = load i64, i64* %envptr11534, align 8                              ; load; *envptr11534
  %_957231 = call i64 @prim_car(i64 %rvp10320)                                       ; call prim_car
  %rvp10318 = call i64 @prim_cdr(i64 %rvp10320)                                      ; call prim_cdr
  %s70$_37length = call i64 @prim_car(i64 %rvp10318)                                 ; call prim_car
  %na8737 = call i64 @prim_cdr(i64 %rvp10318)                                        ; call prim_cdr
  %cloptr11535 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr11537 = getelementptr inbounds i64, i64* %cloptr11535, i64 1                  ; &eptr11537[1]
  %eptr11538 = getelementptr inbounds i64, i64* %cloptr11535, i64 2                  ; &eptr11538[2]
  %eptr11539 = getelementptr inbounds i64, i64* %cloptr11535, i64 3                  ; &eptr11539[3]
  %eptr11540 = getelementptr inbounds i64, i64* %cloptr11535, i64 4                  ; &eptr11540[4]
  %eptr11541 = getelementptr inbounds i64, i64* %cloptr11535, i64 5                  ; &eptr11541[5]
  store i64 %kPq$_37foldr1, i64* %eptr11537                                          ; *eptr11537 = %kPq$_37foldr1
  store i64 %Khi$_37map1, i64* %eptr11538                                            ; *eptr11538 = %Khi$_37map1
  store i64 %ocq$_37take, i64* %eptr11539                                            ; *eptr11539 = %ocq$_37take
  store i64 %s70$_37length, i64* %eptr11540                                          ; *eptr11540 = %s70$_37length
  store i64 %pI8$Ycmb, i64* %eptr11541                                               ; *eptr11541 = %pI8$Ycmb
  %eptr11536 = getelementptr inbounds i64, i64* %cloptr11535, i64 0                  ; &cloptr11535[0]
  %f11542 = ptrtoint void(i64,i64)* @lam11433 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11542, i64* %eptr11536                                                 ; store fptr
  %arg7514 = ptrtoint i64* %cloptr11535 to i64                                       ; closure cast; i64* -> i64
  %cloptr11543 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11544 = getelementptr inbounds i64, i64* %cloptr11543, i64 0                  ; &cloptr11543[0]
  %f11545 = ptrtoint void(i64,i64)* @lam10628 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11545, i64* %eptr11544                                                 ; store fptr
  %arg7513 = ptrtoint i64* %cloptr11543 to i64                                       ; closure cast; i64* -> i64
  %rva10317 = add i64 0, 0                                                           ; quoted ()
  %rva10316 = call i64 @prim_cons(i64 %arg7513, i64 %rva10317)                       ; call prim_cons
  %rva10315 = call i64 @prim_cons(i64 %arg7514, i64 %rva10316)                       ; call prim_cons
  %cloptr11546 = inttoptr i64 %pI8$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11546)                                        ; assert function application
  %i0ptr11547 = getelementptr inbounds i64, i64* %cloptr11546, i64 0                 ; &cloptr11546[0]
  %f11549 = load i64, i64* %i0ptr11547, align 8                                      ; load; *i0ptr11547
  %fptr11548 = inttoptr i64 %f11549 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11548(i64 %pI8$Ycmb, i64 %rva10315)                 ; tail call
  ret void
}


define void @lam11433(i64 %env11434, i64 %rvp10276) {
  %envptr11550 = inttoptr i64 %env11434 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11551 = getelementptr inbounds i64, i64* %envptr11550, i64 5                ; &envptr11550[5]
  %pI8$Ycmb = load i64, i64* %envptr11551, align 8                                   ; load; *envptr11551
  %envptr11552 = inttoptr i64 %env11434 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11553 = getelementptr inbounds i64, i64* %envptr11552, i64 4                ; &envptr11552[4]
  %s70$_37length = load i64, i64* %envptr11553, align 8                              ; load; *envptr11553
  %envptr11554 = inttoptr i64 %env11434 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11555 = getelementptr inbounds i64, i64* %envptr11554, i64 3                ; &envptr11554[3]
  %ocq$_37take = load i64, i64* %envptr11555, align 8                                ; load; *envptr11555
  %envptr11556 = inttoptr i64 %env11434 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11557 = getelementptr inbounds i64, i64* %envptr11556, i64 2                ; &envptr11556[2]
  %Khi$_37map1 = load i64, i64* %envptr11557, align 8                                ; load; *envptr11557
  %envptr11558 = inttoptr i64 %env11434 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11559 = getelementptr inbounds i64, i64* %envptr11558, i64 1                ; &envptr11558[1]
  %kPq$_37foldr1 = load i64, i64* %envptr11559, align 8                              ; load; *envptr11559
  %_957232 = call i64 @prim_car(i64 %rvp10276)                                       ; call prim_car
  %rvp10274 = call i64 @prim_cdr(i64 %rvp10276)                                      ; call prim_cdr
  %B59$_37foldl1 = call i64 @prim_car(i64 %rvp10274)                                 ; call prim_car
  %na8739 = call i64 @prim_cdr(i64 %rvp10274)                                        ; call prim_cdr
  %cloptr11560 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11562 = getelementptr inbounds i64, i64* %cloptr11560, i64 1                  ; &eptr11562[1]
  store i64 %B59$_37foldl1, i64* %eptr11562                                          ; *eptr11562 = %B59$_37foldl1
  %eptr11561 = getelementptr inbounds i64, i64* %cloptr11560, i64 0                  ; &cloptr11560[0]
  %f11563 = ptrtoint void(i64,i64)* @lam11431 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11563, i64* %eptr11561                                                 ; store fptr
  %X9D$_37last = ptrtoint i64* %cloptr11560 to i64                                   ; closure cast; i64* -> i64
  %cloptr11564 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11566 = getelementptr inbounds i64, i64* %cloptr11564, i64 1                  ; &eptr11566[1]
  %eptr11567 = getelementptr inbounds i64, i64* %cloptr11564, i64 2                  ; &eptr11567[2]
  store i64 %ocq$_37take, i64* %eptr11566                                            ; *eptr11566 = %ocq$_37take
  store i64 %s70$_37length, i64* %eptr11567                                          ; *eptr11567 = %s70$_37length
  %eptr11565 = getelementptr inbounds i64, i64* %cloptr11564, i64 0                  ; &cloptr11564[0]
  %f11568 = ptrtoint void(i64,i64)* @lam11423 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11568, i64* %eptr11565                                                 ; store fptr
  %DJj$_37drop_45right = ptrtoint i64* %cloptr11564 to i64                           ; closure cast; i64* -> i64
  %cloptr11569 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr11571 = getelementptr inbounds i64, i64* %cloptr11569, i64 1                  ; &eptr11571[1]
  %eptr11572 = getelementptr inbounds i64, i64* %cloptr11569, i64 2                  ; &eptr11572[2]
  %eptr11573 = getelementptr inbounds i64, i64* %cloptr11569, i64 3                  ; &eptr11573[3]
  %eptr11574 = getelementptr inbounds i64, i64* %cloptr11569, i64 4                  ; &eptr11574[4]
  %eptr11575 = getelementptr inbounds i64, i64* %cloptr11569, i64 5                  ; &eptr11575[5]
  %eptr11576 = getelementptr inbounds i64, i64* %cloptr11569, i64 6                  ; &eptr11576[6]
  store i64 %kPq$_37foldr1, i64* %eptr11571                                          ; *eptr11571 = %kPq$_37foldr1
  store i64 %X9D$_37last, i64* %eptr11572                                            ; *eptr11572 = %X9D$_37last
  store i64 %DJj$_37drop_45right, i64* %eptr11573                                    ; *eptr11573 = %DJj$_37drop_45right
  store i64 %s70$_37length, i64* %eptr11574                                          ; *eptr11574 = %s70$_37length
  store i64 %pI8$Ycmb, i64* %eptr11575                                               ; *eptr11575 = %pI8$Ycmb
  store i64 %B59$_37foldl1, i64* %eptr11576                                          ; *eptr11576 = %B59$_37foldl1
  %eptr11570 = getelementptr inbounds i64, i64* %cloptr11569, i64 0                  ; &cloptr11569[0]
  %f11577 = ptrtoint void(i64,i64)* @lam11417 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11577, i64* %eptr11570                                                 ; store fptr
  %arg7534 = ptrtoint i64* %cloptr11569 to i64                                       ; closure cast; i64* -> i64
  %cloptr11578 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11580 = getelementptr inbounds i64, i64* %cloptr11578, i64 1                  ; &eptr11580[1]
  %eptr11581 = getelementptr inbounds i64, i64* %cloptr11578, i64 2                  ; &eptr11581[2]
  store i64 %kPq$_37foldr1, i64* %eptr11580                                          ; *eptr11580 = %kPq$_37foldr1
  store i64 %Khi$_37map1, i64* %eptr11581                                            ; *eptr11581 = %Khi$_37map1
  %eptr11579 = getelementptr inbounds i64, i64* %cloptr11578, i64 0                  ; &cloptr11578[0]
  %f11582 = ptrtoint void(i64,i64)* @lam10679 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11582, i64* %eptr11579                                                 ; store fptr
  %arg7533 = ptrtoint i64* %cloptr11578 to i64                                       ; closure cast; i64* -> i64
  %rva10273 = add i64 0, 0                                                           ; quoted ()
  %rva10272 = call i64 @prim_cons(i64 %arg7533, i64 %rva10273)                       ; call prim_cons
  %rva10271 = call i64 @prim_cons(i64 %arg7534, i64 %rva10272)                       ; call prim_cons
  %cloptr11583 = inttoptr i64 %pI8$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11583)                                        ; assert function application
  %i0ptr11584 = getelementptr inbounds i64, i64* %cloptr11583, i64 0                 ; &cloptr11583[0]
  %f11586 = load i64, i64* %i0ptr11584, align 8                                      ; load; *i0ptr11584
  %fptr11585 = inttoptr i64 %f11586 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11585(i64 %pI8$Ycmb, i64 %rva10271)                 ; tail call
  ret void
}


define void @lam11431(i64 %env11432, i64 %rvp8760) {
  %envptr11587 = inttoptr i64 %env11432 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11588 = getelementptr inbounds i64, i64* %envptr11587, i64 1                ; &envptr11587[1]
  %B59$_37foldl1 = load i64, i64* %envptr11588, align 8                              ; load; *envptr11588
  %cont7233 = call i64 @prim_car(i64 %rvp8760)                                       ; call prim_car
  %rvp8758 = call i64 @prim_cdr(i64 %rvp8760)                                        ; call prim_cdr
  %mLR$lst = call i64 @prim_car(i64 %rvp8758)                                        ; call prim_car
  %na8741 = call i64 @prim_cdr(i64 %rvp8758)                                         ; call prim_cdr
  %cloptr11589 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11590 = getelementptr inbounds i64, i64* %cloptr11589, i64 0                  ; &cloptr11589[0]
  %f11591 = ptrtoint void(i64,i64)* @lam11429 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11591, i64* %eptr11590                                                 ; store fptr
  %arg7518 = ptrtoint i64* %cloptr11589 to i64                                       ; closure cast; i64* -> i64
  %arg7517 = add i64 0, 0                                                            ; quoted ()
  %rva8757 = add i64 0, 0                                                            ; quoted ()
  %rva8756 = call i64 @prim_cons(i64 %mLR$lst, i64 %rva8757)                         ; call prim_cons
  %rva8755 = call i64 @prim_cons(i64 %arg7517, i64 %rva8756)                         ; call prim_cons
  %rva8754 = call i64 @prim_cons(i64 %arg7518, i64 %rva8755)                         ; call prim_cons
  %rva8753 = call i64 @prim_cons(i64 %cont7233, i64 %rva8754)                        ; call prim_cons
  %cloptr11592 = inttoptr i64 %B59$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11592)                                        ; assert function application
  %i0ptr11593 = getelementptr inbounds i64, i64* %cloptr11592, i64 0                 ; &cloptr11592[0]
  %f11595 = load i64, i64* %i0ptr11593, align 8                                      ; load; *i0ptr11593
  %fptr11594 = inttoptr i64 %f11595 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11594(i64 %B59$_37foldl1, i64 %rva8753)             ; tail call
  ret void
}


define void @lam11429(i64 %env11430, i64 %rvp8751) {
  %cont7234 = call i64 @prim_car(i64 %rvp8751)                                       ; call prim_car
  %rvp8749 = call i64 @prim_cdr(i64 %rvp8751)                                        ; call prim_cdr
  %bFy$x = call i64 @prim_car(i64 %rvp8749)                                          ; call prim_car
  %rvp8747 = call i64 @prim_cdr(i64 %rvp8749)                                        ; call prim_cdr
  %oFz$y = call i64 @prim_car(i64 %rvp8747)                                          ; call prim_car
  %na8743 = call i64 @prim_cdr(i64 %rvp8747)                                         ; call prim_cdr
  %arg7522 = add i64 0, 0                                                            ; quoted ()
  %rva8746 = add i64 0, 0                                                            ; quoted ()
  %rva8745 = call i64 @prim_cons(i64 %bFy$x, i64 %rva8746)                           ; call prim_cons
  %rva8744 = call i64 @prim_cons(i64 %arg7522, i64 %rva8745)                         ; call prim_cons
  %cloptr11596 = inttoptr i64 %cont7234 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11596)                                        ; assert function application
  %i0ptr11597 = getelementptr inbounds i64, i64* %cloptr11596, i64 0                 ; &cloptr11596[0]
  %f11599 = load i64, i64* %i0ptr11597, align 8                                      ; load; *i0ptr11597
  %fptr11598 = inttoptr i64 %f11599 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11598(i64 %cont7234, i64 %rva8744)                  ; tail call
  ret void
}


define void @lam11423(i64 %env11424, i64 %rvp8781) {
  %envptr11600 = inttoptr i64 %env11424 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11601 = getelementptr inbounds i64, i64* %envptr11600, i64 2                ; &envptr11600[2]
  %s70$_37length = load i64, i64* %envptr11601, align 8                              ; load; *envptr11601
  %envptr11602 = inttoptr i64 %env11424 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11603 = getelementptr inbounds i64, i64* %envptr11602, i64 1                ; &envptr11602[1]
  %ocq$_37take = load i64, i64* %envptr11603, align 8                                ; load; *envptr11603
  %cont7235 = call i64 @prim_car(i64 %rvp8781)                                       ; call prim_car
  %rvp8779 = call i64 @prim_cdr(i64 %rvp8781)                                        ; call prim_cdr
  %gbC$lst = call i64 @prim_car(i64 %rvp8779)                                        ; call prim_car
  %rvp8777 = call i64 @prim_cdr(i64 %rvp8779)                                        ; call prim_cdr
  %oIG$n = call i64 @prim_car(i64 %rvp8777)                                          ; call prim_car
  %na8763 = call i64 @prim_cdr(i64 %rvp8777)                                         ; call prim_cdr
  %cloptr11604 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11606 = getelementptr inbounds i64, i64* %cloptr11604, i64 1                  ; &eptr11606[1]
  %eptr11607 = getelementptr inbounds i64, i64* %cloptr11604, i64 2                  ; &eptr11607[2]
  %eptr11608 = getelementptr inbounds i64, i64* %cloptr11604, i64 3                  ; &eptr11608[3]
  %eptr11609 = getelementptr inbounds i64, i64* %cloptr11604, i64 4                  ; &eptr11609[4]
  store i64 %cont7235, i64* %eptr11606                                               ; *eptr11606 = %cont7235
  store i64 %ocq$_37take, i64* %eptr11607                                            ; *eptr11607 = %ocq$_37take
  store i64 %oIG$n, i64* %eptr11608                                                  ; *eptr11608 = %oIG$n
  store i64 %gbC$lst, i64* %eptr11609                                                ; *eptr11609 = %gbC$lst
  %eptr11605 = getelementptr inbounds i64, i64* %cloptr11604, i64 0                  ; &cloptr11604[0]
  %f11610 = ptrtoint void(i64,i64)* @lam11421 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11610, i64* %eptr11605                                                 ; store fptr
  %arg7525 = ptrtoint i64* %cloptr11604 to i64                                       ; closure cast; i64* -> i64
  %rva8776 = add i64 0, 0                                                            ; quoted ()
  %rva8775 = call i64 @prim_cons(i64 %gbC$lst, i64 %rva8776)                         ; call prim_cons
  %rva8774 = call i64 @prim_cons(i64 %arg7525, i64 %rva8775)                         ; call prim_cons
  %cloptr11611 = inttoptr i64 %s70$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11611)                                        ; assert function application
  %i0ptr11612 = getelementptr inbounds i64, i64* %cloptr11611, i64 0                 ; &cloptr11611[0]
  %f11614 = load i64, i64* %i0ptr11612, align 8                                      ; load; *i0ptr11612
  %fptr11613 = inttoptr i64 %f11614 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11613(i64 %s70$_37length, i64 %rva8774)             ; tail call
  ret void
}


define void @lam11421(i64 %env11422, i64 %rvp8772) {
  %envptr11615 = inttoptr i64 %env11422 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11616 = getelementptr inbounds i64, i64* %envptr11615, i64 4                ; &envptr11615[4]
  %gbC$lst = load i64, i64* %envptr11616, align 8                                    ; load; *envptr11616
  %envptr11617 = inttoptr i64 %env11422 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11618 = getelementptr inbounds i64, i64* %envptr11617, i64 3                ; &envptr11617[3]
  %oIG$n = load i64, i64* %envptr11618, align 8                                      ; load; *envptr11618
  %envptr11619 = inttoptr i64 %env11422 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11620 = getelementptr inbounds i64, i64* %envptr11619, i64 2                ; &envptr11619[2]
  %ocq$_37take = load i64, i64* %envptr11620, align 8                                ; load; *envptr11620
  %envptr11621 = inttoptr i64 %env11422 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11622 = getelementptr inbounds i64, i64* %envptr11621, i64 1                ; &envptr11621[1]
  %cont7235 = load i64, i64* %envptr11622, align 8                                   ; load; *envptr11622
  %_957236 = call i64 @prim_car(i64 %rvp8772)                                        ; call prim_car
  %rvp8770 = call i64 @prim_cdr(i64 %rvp8772)                                        ; call prim_cdr
  %a7074 = call i64 @prim_car(i64 %rvp8770)                                          ; call prim_car
  %na8765 = call i64 @prim_cdr(i64 %rvp8770)                                         ; call prim_cdr
  %a7075 = call i64 @prim__45(i64 %a7074, i64 %oIG$n)                                ; call prim__45
  %rva8769 = add i64 0, 0                                                            ; quoted ()
  %rva8768 = call i64 @prim_cons(i64 %a7075, i64 %rva8769)                           ; call prim_cons
  %rva8767 = call i64 @prim_cons(i64 %gbC$lst, i64 %rva8768)                         ; call prim_cons
  %rva8766 = call i64 @prim_cons(i64 %cont7235, i64 %rva8767)                        ; call prim_cons
  %cloptr11623 = inttoptr i64 %ocq$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11623)                                        ; assert function application
  %i0ptr11624 = getelementptr inbounds i64, i64* %cloptr11623, i64 0                 ; &cloptr11623[0]
  %f11626 = load i64, i64* %i0ptr11624, align 8                                      ; load; *i0ptr11624
  %fptr11625 = inttoptr i64 %f11626 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11625(i64 %ocq$_37take, i64 %rva8766)               ; tail call
  ret void
}


define void @lam11417(i64 %env11418, i64 %rvp10148) {
  %envptr11627 = inttoptr i64 %env11418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11628 = getelementptr inbounds i64, i64* %envptr11627, i64 6                ; &envptr11627[6]
  %B59$_37foldl1 = load i64, i64* %envptr11628, align 8                              ; load; *envptr11628
  %envptr11629 = inttoptr i64 %env11418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11630 = getelementptr inbounds i64, i64* %envptr11629, i64 5                ; &envptr11629[5]
  %pI8$Ycmb = load i64, i64* %envptr11630, align 8                                   ; load; *envptr11630
  %envptr11631 = inttoptr i64 %env11418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11632 = getelementptr inbounds i64, i64* %envptr11631, i64 4                ; &envptr11631[4]
  %s70$_37length = load i64, i64* %envptr11632, align 8                              ; load; *envptr11632
  %envptr11633 = inttoptr i64 %env11418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11634 = getelementptr inbounds i64, i64* %envptr11633, i64 3                ; &envptr11633[3]
  %DJj$_37drop_45right = load i64, i64* %envptr11634, align 8                        ; load; *envptr11634
  %envptr11635 = inttoptr i64 %env11418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11636 = getelementptr inbounds i64, i64* %envptr11635, i64 2                ; &envptr11635[2]
  %X9D$_37last = load i64, i64* %envptr11636, align 8                                ; load; *envptr11636
  %envptr11637 = inttoptr i64 %env11418 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11638 = getelementptr inbounds i64, i64* %envptr11637, i64 1                ; &envptr11637[1]
  %kPq$_37foldr1 = load i64, i64* %envptr11638, align 8                              ; load; *envptr11638
  %_957237 = call i64 @prim_car(i64 %rvp10148)                                       ; call prim_car
  %rvp10146 = call i64 @prim_cdr(i64 %rvp10148)                                      ; call prim_cdr
  %hte$_37foldr = call i64 @prim_car(i64 %rvp10146)                                  ; call prim_car
  %na8784 = call i64 @prim_cdr(i64 %rvp10146)                                        ; call prim_cdr
  %cloptr11639 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11641 = getelementptr inbounds i64, i64* %cloptr11639, i64 1                  ; &eptr11641[1]
  store i64 %kPq$_37foldr1, i64* %eptr11641                                          ; *eptr11641 = %kPq$_37foldr1
  %eptr11640 = getelementptr inbounds i64, i64* %cloptr11639, i64 0                  ; &cloptr11639[0]
  %f11642 = ptrtoint void(i64,i64)* @lam11415 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11642, i64* %eptr11640                                                 ; store fptr
  %Epc$_37map1 = ptrtoint i64* %cloptr11639 to i64                                   ; closure cast; i64* -> i64
  %cloptr11643 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11645 = getelementptr inbounds i64, i64* %cloptr11643, i64 1                  ; &eptr11645[1]
  %eptr11646 = getelementptr inbounds i64, i64* %cloptr11643, i64 2                  ; &eptr11646[2]
  %eptr11647 = getelementptr inbounds i64, i64* %cloptr11643, i64 3                  ; &eptr11647[3]
  store i64 %hte$_37foldr, i64* %eptr11645                                           ; *eptr11645 = %hte$_37foldr
  store i64 %X9D$_37last, i64* %eptr11646                                            ; *eptr11646 = %X9D$_37last
  store i64 %DJj$_37drop_45right, i64* %eptr11647                                    ; *eptr11647 = %DJj$_37drop_45right
  %eptr11644 = getelementptr inbounds i64, i64* %cloptr11643, i64 0                  ; &cloptr11643[0]
  %f11648 = ptrtoint void(i64,i64)* @lam11404 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11648, i64* %eptr11644                                                 ; store fptr
  %uRR$_37map = ptrtoint i64* %cloptr11643 to i64                                    ; closure cast; i64* -> i64
  %cloptr11649 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11651 = getelementptr inbounds i64, i64* %cloptr11649, i64 1                  ; &eptr11651[1]
  %eptr11652 = getelementptr inbounds i64, i64* %cloptr11649, i64 2                  ; &eptr11652[2]
  store i64 %s70$_37length, i64* %eptr11651                                          ; *eptr11651 = %s70$_37length
  store i64 %B59$_37foldl1, i64* %eptr11652                                          ; *eptr11652 = %B59$_37foldl1
  %eptr11650 = getelementptr inbounds i64, i64* %cloptr11649, i64 0                  ; &cloptr11649[0]
  %f11653 = ptrtoint void(i64,i64)* @lam11388 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11653, i64* %eptr11650                                                 ; store fptr
  %arg7576 = ptrtoint i64* %cloptr11649 to i64                                       ; closure cast; i64* -> i64
  %cloptr11654 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11656 = getelementptr inbounds i64, i64* %cloptr11654, i64 1                  ; &eptr11656[1]
  %eptr11657 = getelementptr inbounds i64, i64* %cloptr11654, i64 2                  ; &eptr11657[2]
  %eptr11658 = getelementptr inbounds i64, i64* %cloptr11654, i64 3                  ; &eptr11658[3]
  store i64 %kPq$_37foldr1, i64* %eptr11656                                          ; *eptr11656 = %kPq$_37foldr1
  store i64 %Epc$_37map1, i64* %eptr11657                                            ; *eptr11657 = %Epc$_37map1
  store i64 %hte$_37foldr, i64* %eptr11658                                           ; *eptr11658 = %hte$_37foldr
  %eptr11655 = getelementptr inbounds i64, i64* %cloptr11654, i64 0                  ; &cloptr11654[0]
  %f11659 = ptrtoint void(i64,i64)* @lam10730 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11659, i64* %eptr11655                                                 ; store fptr
  %arg7575 = ptrtoint i64* %cloptr11654 to i64                                       ; closure cast; i64* -> i64
  %rva10145 = add i64 0, 0                                                           ; quoted ()
  %rva10144 = call i64 @prim_cons(i64 %arg7575, i64 %rva10145)                       ; call prim_cons
  %rva10143 = call i64 @prim_cons(i64 %arg7576, i64 %rva10144)                       ; call prim_cons
  %cloptr11660 = inttoptr i64 %pI8$Ycmb to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11660)                                        ; assert function application
  %i0ptr11661 = getelementptr inbounds i64, i64* %cloptr11660, i64 0                 ; &cloptr11660[0]
  %f11663 = load i64, i64* %i0ptr11661, align 8                                      ; load; *i0ptr11661
  %fptr11662 = inttoptr i64 %f11663 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11662(i64 %pI8$Ycmb, i64 %rva10143)                 ; tail call
  ret void
}


define void @lam11415(i64 %env11416, i64 %rvp8816) {
  %envptr11664 = inttoptr i64 %env11416 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11665 = getelementptr inbounds i64, i64* %envptr11664, i64 1                ; &envptr11664[1]
  %kPq$_37foldr1 = load i64, i64* %envptr11665, align 8                              ; load; *envptr11665
  %cont7238 = call i64 @prim_car(i64 %rvp8816)                                       ; call prim_car
  %rvp8814 = call i64 @prim_cdr(i64 %rvp8816)                                        ; call prim_cdr
  %eE2$f = call i64 @prim_car(i64 %rvp8814)                                          ; call prim_car
  %rvp8812 = call i64 @prim_cdr(i64 %rvp8814)                                        ; call prim_cdr
  %CBe$lst = call i64 @prim_car(i64 %rvp8812)                                        ; call prim_car
  %na8786 = call i64 @prim_cdr(i64 %rvp8812)                                         ; call prim_cdr
  %cloptr11666 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11668 = getelementptr inbounds i64, i64* %cloptr11666, i64 1                  ; &eptr11668[1]
  store i64 %eE2$f, i64* %eptr11668                                                  ; *eptr11668 = %eE2$f
  %eptr11667 = getelementptr inbounds i64, i64* %cloptr11666, i64 0                  ; &cloptr11666[0]
  %f11669 = ptrtoint void(i64,i64)* @lam11413 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11669, i64* %eptr11667                                                 ; store fptr
  %arg7538 = ptrtoint i64* %cloptr11666 to i64                                       ; closure cast; i64* -> i64
  %arg7537 = add i64 0, 0                                                            ; quoted ()
  %rva8811 = add i64 0, 0                                                            ; quoted ()
  %rva8810 = call i64 @prim_cons(i64 %CBe$lst, i64 %rva8811)                         ; call prim_cons
  %rva8809 = call i64 @prim_cons(i64 %arg7537, i64 %rva8810)                         ; call prim_cons
  %rva8808 = call i64 @prim_cons(i64 %arg7538, i64 %rva8809)                         ; call prim_cons
  %rva8807 = call i64 @prim_cons(i64 %cont7238, i64 %rva8808)                        ; call prim_cons
  %cloptr11670 = inttoptr i64 %kPq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11670)                                        ; assert function application
  %i0ptr11671 = getelementptr inbounds i64, i64* %cloptr11670, i64 0                 ; &cloptr11670[0]
  %f11673 = load i64, i64* %i0ptr11671, align 8                                      ; load; *i0ptr11671
  %fptr11672 = inttoptr i64 %f11673 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11672(i64 %kPq$_37foldr1, i64 %rva8807)             ; tail call
  ret void
}


define void @lam11413(i64 %env11414, i64 %rvp8805) {
  %envptr11674 = inttoptr i64 %env11414 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11675 = getelementptr inbounds i64, i64* %envptr11674, i64 1                ; &envptr11674[1]
  %eE2$f = load i64, i64* %envptr11675, align 8                                      ; load; *envptr11675
  %cont7239 = call i64 @prim_car(i64 %rvp8805)                                       ; call prim_car
  %rvp8803 = call i64 @prim_cdr(i64 %rvp8805)                                        ; call prim_cdr
  %cVH$v = call i64 @prim_car(i64 %rvp8803)                                          ; call prim_car
  %rvp8801 = call i64 @prim_cdr(i64 %rvp8803)                                        ; call prim_cdr
  %SuW$r = call i64 @prim_car(i64 %rvp8801)                                          ; call prim_car
  %na8788 = call i64 @prim_cdr(i64 %rvp8801)                                         ; call prim_cdr
  %cloptr11676 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11678 = getelementptr inbounds i64, i64* %cloptr11676, i64 1                  ; &eptr11678[1]
  %eptr11679 = getelementptr inbounds i64, i64* %cloptr11676, i64 2                  ; &eptr11679[2]
  store i64 %SuW$r, i64* %eptr11678                                                  ; *eptr11678 = %SuW$r
  store i64 %cont7239, i64* %eptr11679                                               ; *eptr11679 = %cont7239
  %eptr11677 = getelementptr inbounds i64, i64* %cloptr11676, i64 0                  ; &cloptr11676[0]
  %f11680 = ptrtoint void(i64,i64)* @lam11411 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11680, i64* %eptr11677                                                 ; store fptr
  %arg7542 = ptrtoint i64* %cloptr11676 to i64                                       ; closure cast; i64* -> i64
  %rva8800 = add i64 0, 0                                                            ; quoted ()
  %rva8799 = call i64 @prim_cons(i64 %cVH$v, i64 %rva8800)                           ; call prim_cons
  %rva8798 = call i64 @prim_cons(i64 %arg7542, i64 %rva8799)                         ; call prim_cons
  %cloptr11681 = inttoptr i64 %eE2$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11681)                                        ; assert function application
  %i0ptr11682 = getelementptr inbounds i64, i64* %cloptr11681, i64 0                 ; &cloptr11681[0]
  %f11684 = load i64, i64* %i0ptr11682, align 8                                      ; load; *i0ptr11682
  %fptr11683 = inttoptr i64 %f11684 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11683(i64 %eE2$f, i64 %rva8798)                     ; tail call
  ret void
}


define void @lam11411(i64 %env11412, i64 %rvp8796) {
  %envptr11685 = inttoptr i64 %env11412 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11686 = getelementptr inbounds i64, i64* %envptr11685, i64 2                ; &envptr11685[2]
  %cont7239 = load i64, i64* %envptr11686, align 8                                   ; load; *envptr11686
  %envptr11687 = inttoptr i64 %env11412 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11688 = getelementptr inbounds i64, i64* %envptr11687, i64 1                ; &envptr11687[1]
  %SuW$r = load i64, i64* %envptr11688, align 8                                      ; load; *envptr11688
  %_957240 = call i64 @prim_car(i64 %rvp8796)                                        ; call prim_car
  %rvp8794 = call i64 @prim_cdr(i64 %rvp8796)                                        ; call prim_cdr
  %a7084 = call i64 @prim_car(i64 %rvp8794)                                          ; call prim_car
  %na8790 = call i64 @prim_cdr(i64 %rvp8794)                                         ; call prim_cdr
  %retprim7241 = call i64 @prim_cons(i64 %a7084, i64 %SuW$r)                         ; call prim_cons
  %arg7547 = add i64 0, 0                                                            ; quoted ()
  %rva8793 = add i64 0, 0                                                            ; quoted ()
  %rva8792 = call i64 @prim_cons(i64 %retprim7241, i64 %rva8793)                     ; call prim_cons
  %rva8791 = call i64 @prim_cons(i64 %arg7547, i64 %rva8792)                         ; call prim_cons
  %cloptr11689 = inttoptr i64 %cont7239 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11689)                                        ; assert function application
  %i0ptr11690 = getelementptr inbounds i64, i64* %cloptr11689, i64 0                 ; &cloptr11689[0]
  %f11692 = load i64, i64* %i0ptr11690, align 8                                      ; load; *i0ptr11690
  %fptr11691 = inttoptr i64 %f11692 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11691(i64 %cont7239, i64 %rva8791)                  ; tail call
  ret void
}


define void @lam11404(i64 %env11405, i64 %tOQ$args7243) {
  %envptr11693 = inttoptr i64 %env11405 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11694 = getelementptr inbounds i64, i64* %envptr11693, i64 3                ; &envptr11693[3]
  %DJj$_37drop_45right = load i64, i64* %envptr11694, align 8                        ; load; *envptr11694
  %envptr11695 = inttoptr i64 %env11405 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11696 = getelementptr inbounds i64, i64* %envptr11695, i64 2                ; &envptr11695[2]
  %X9D$_37last = load i64, i64* %envptr11696, align 8                                ; load; *envptr11696
  %envptr11697 = inttoptr i64 %env11405 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11698 = getelementptr inbounds i64, i64* %envptr11697, i64 1                ; &envptr11697[1]
  %hte$_37foldr = load i64, i64* %envptr11698, align 8                               ; load; *envptr11698
  %cont7242 = call i64 @prim_car(i64 %tOQ$args7243)                                  ; call prim_car
  %tOQ$args = call i64 @prim_cdr(i64 %tOQ$args7243)                                  ; call prim_cdr
  %h0Y$f = call i64 @prim_car(i64 %tOQ$args)                                         ; call prim_car
  %dHA$lsts = call i64 @prim_cdr(i64 %tOQ$args)                                      ; call prim_cdr
  %arg7554 = add i64 0, 0                                                            ; quoted ()
  %a7088 = call i64 @prim_cons(i64 %arg7554, i64 %dHA$lsts)                          ; call prim_cons
  %cloptr11699 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11701 = getelementptr inbounds i64, i64* %cloptr11699, i64 1                  ; &eptr11701[1]
  %eptr11702 = getelementptr inbounds i64, i64* %cloptr11699, i64 2                  ; &eptr11702[2]
  %eptr11703 = getelementptr inbounds i64, i64* %cloptr11699, i64 3                  ; &eptr11703[3]
  store i64 %X9D$_37last, i64* %eptr11701                                            ; *eptr11701 = %X9D$_37last
  store i64 %h0Y$f, i64* %eptr11702                                                  ; *eptr11702 = %h0Y$f
  store i64 %DJj$_37drop_45right, i64* %eptr11703                                    ; *eptr11703 = %DJj$_37drop_45right
  %eptr11700 = getelementptr inbounds i64, i64* %cloptr11699, i64 0                  ; &cloptr11699[0]
  %f11704 = ptrtoint void(i64,i64)* @lam11401 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11704, i64* %eptr11700                                                 ; store fptr
  %arg7556 = ptrtoint i64* %cloptr11699 to i64                                       ; closure cast; i64* -> i64
  %a7089 = call i64 @prim_cons(i64 %arg7556, i64 %a7088)                             ; call prim_cons
  %cps_45lst7251 = call i64 @prim_cons(i64 %cont7242, i64 %a7089)                    ; call prim_cons
  %cloptr11705 = inttoptr i64 %hte$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11705)                                        ; assert function application
  %i0ptr11706 = getelementptr inbounds i64, i64* %cloptr11705, i64 0                 ; &cloptr11705[0]
  %f11708 = load i64, i64* %i0ptr11706, align 8                                      ; load; *i0ptr11706
  %fptr11707 = inttoptr i64 %f11708 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11707(i64 %hte$_37foldr, i64 %cps_45lst7251)        ; tail call
  ret void
}


define void @lam11401(i64 %env11402, i64 %MwS$fargs7245) {
  %envptr11709 = inttoptr i64 %env11402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11710 = getelementptr inbounds i64, i64* %envptr11709, i64 3                ; &envptr11709[3]
  %DJj$_37drop_45right = load i64, i64* %envptr11710, align 8                        ; load; *envptr11710
  %envptr11711 = inttoptr i64 %env11402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11712 = getelementptr inbounds i64, i64* %envptr11711, i64 2                ; &envptr11711[2]
  %h0Y$f = load i64, i64* %envptr11712, align 8                                      ; load; *envptr11712
  %envptr11713 = inttoptr i64 %env11402 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11714 = getelementptr inbounds i64, i64* %envptr11713, i64 1                ; &envptr11713[1]
  %X9D$_37last = load i64, i64* %envptr11714, align 8                                ; load; *envptr11714
  %cont7244 = call i64 @prim_car(i64 %MwS$fargs7245)                                 ; call prim_car
  %MwS$fargs = call i64 @prim_cdr(i64 %MwS$fargs7245)                                ; call prim_cdr
  %cloptr11715 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr11717 = getelementptr inbounds i64, i64* %cloptr11715, i64 1                  ; &eptr11717[1]
  %eptr11718 = getelementptr inbounds i64, i64* %cloptr11715, i64 2                  ; &eptr11718[2]
  %eptr11719 = getelementptr inbounds i64, i64* %cloptr11715, i64 3                  ; &eptr11719[3]
  %eptr11720 = getelementptr inbounds i64, i64* %cloptr11715, i64 4                  ; &eptr11720[4]
  store i64 %cont7244, i64* %eptr11717                                               ; *eptr11717 = %cont7244
  store i64 %X9D$_37last, i64* %eptr11718                                            ; *eptr11718 = %X9D$_37last
  store i64 %h0Y$f, i64* %eptr11719                                                  ; *eptr11719 = %h0Y$f
  store i64 %MwS$fargs, i64* %eptr11720                                              ; *eptr11720 = %MwS$fargs
  %eptr11716 = getelementptr inbounds i64, i64* %cloptr11715, i64 0                  ; &cloptr11715[0]
  %f11721 = ptrtoint void(i64,i64)* @lam11399 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11721, i64* %eptr11716                                                 ; store fptr
  %arg7561 = ptrtoint i64* %cloptr11715 to i64                                       ; closure cast; i64* -> i64
  %arg7559 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %rva8845 = add i64 0, 0                                                            ; quoted ()
  %rva8844 = call i64 @prim_cons(i64 %arg7559, i64 %rva8845)                         ; call prim_cons
  %rva8843 = call i64 @prim_cons(i64 %MwS$fargs, i64 %rva8844)                       ; call prim_cons
  %rva8842 = call i64 @prim_cons(i64 %arg7561, i64 %rva8843)                         ; call prim_cons
  %cloptr11722 = inttoptr i64 %DJj$_37drop_45right to i64*                           ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11722)                                        ; assert function application
  %i0ptr11723 = getelementptr inbounds i64, i64* %cloptr11722, i64 0                 ; &cloptr11722[0]
  %f11725 = load i64, i64* %i0ptr11723, align 8                                      ; load; *i0ptr11723
  %fptr11724 = inttoptr i64 %f11725 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11724(i64 %DJj$_37drop_45right, i64 %rva8842)       ; tail call
  ret void
}


define void @lam11399(i64 %env11400, i64 %rvp8840) {
  %envptr11726 = inttoptr i64 %env11400 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11727 = getelementptr inbounds i64, i64* %envptr11726, i64 4                ; &envptr11726[4]
  %MwS$fargs = load i64, i64* %envptr11727, align 8                                  ; load; *envptr11727
  %envptr11728 = inttoptr i64 %env11400 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11729 = getelementptr inbounds i64, i64* %envptr11728, i64 3                ; &envptr11728[3]
  %h0Y$f = load i64, i64* %envptr11729, align 8                                      ; load; *envptr11729
  %envptr11730 = inttoptr i64 %env11400 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11731 = getelementptr inbounds i64, i64* %envptr11730, i64 2                ; &envptr11730[2]
  %X9D$_37last = load i64, i64* %envptr11731, align 8                                ; load; *envptr11731
  %envptr11732 = inttoptr i64 %env11400 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11733 = getelementptr inbounds i64, i64* %envptr11732, i64 1                ; &envptr11732[1]
  %cont7244 = load i64, i64* %envptr11733, align 8                                   ; load; *envptr11733
  %_957246 = call i64 @prim_car(i64 %rvp8840)                                        ; call prim_car
  %rvp8838 = call i64 @prim_cdr(i64 %rvp8840)                                        ; call prim_cdr
  %a7085 = call i64 @prim_car(i64 %rvp8838)                                          ; call prim_car
  %na8819 = call i64 @prim_cdr(i64 %rvp8838)                                         ; call prim_cdr
  %cloptr11734 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11736 = getelementptr inbounds i64, i64* %cloptr11734, i64 1                  ; &eptr11736[1]
  %eptr11737 = getelementptr inbounds i64, i64* %cloptr11734, i64 2                  ; &eptr11737[2]
  %eptr11738 = getelementptr inbounds i64, i64* %cloptr11734, i64 3                  ; &eptr11738[3]
  store i64 %cont7244, i64* %eptr11736                                               ; *eptr11736 = %cont7244
  store i64 %X9D$_37last, i64* %eptr11737                                            ; *eptr11737 = %X9D$_37last
  store i64 %MwS$fargs, i64* %eptr11738                                              ; *eptr11738 = %MwS$fargs
  %eptr11735 = getelementptr inbounds i64, i64* %cloptr11734, i64 0                  ; &cloptr11734[0]
  %f11739 = ptrtoint void(i64,i64)* @lam11397 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11739, i64* %eptr11735                                                 ; store fptr
  %arg7564 = ptrtoint i64* %cloptr11734 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7250 = call i64 @prim_cons(i64 %arg7564, i64 %a7085)                     ; call prim_cons
  %cloptr11740 = inttoptr i64 %h0Y$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11740)                                        ; assert function application
  %i0ptr11741 = getelementptr inbounds i64, i64* %cloptr11740, i64 0                 ; &cloptr11740[0]
  %f11743 = load i64, i64* %i0ptr11741, align 8                                      ; load; *i0ptr11741
  %fptr11742 = inttoptr i64 %f11743 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11742(i64 %h0Y$f, i64 %cps_45lst7250)               ; tail call
  ret void
}


define void @lam11397(i64 %env11398, i64 %rvp8836) {
  %envptr11744 = inttoptr i64 %env11398 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11745 = getelementptr inbounds i64, i64* %envptr11744, i64 3                ; &envptr11744[3]
  %MwS$fargs = load i64, i64* %envptr11745, align 8                                  ; load; *envptr11745
  %envptr11746 = inttoptr i64 %env11398 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11747 = getelementptr inbounds i64, i64* %envptr11746, i64 2                ; &envptr11746[2]
  %X9D$_37last = load i64, i64* %envptr11747, align 8                                ; load; *envptr11747
  %envptr11748 = inttoptr i64 %env11398 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11749 = getelementptr inbounds i64, i64* %envptr11748, i64 1                ; &envptr11748[1]
  %cont7244 = load i64, i64* %envptr11749, align 8                                   ; load; *envptr11749
  %_957247 = call i64 @prim_car(i64 %rvp8836)                                        ; call prim_car
  %rvp8834 = call i64 @prim_cdr(i64 %rvp8836)                                        ; call prim_cdr
  %a7086 = call i64 @prim_car(i64 %rvp8834)                                          ; call prim_car
  %na8821 = call i64 @prim_cdr(i64 %rvp8834)                                         ; call prim_cdr
  %cloptr11750 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11752 = getelementptr inbounds i64, i64* %cloptr11750, i64 1                  ; &eptr11752[1]
  %eptr11753 = getelementptr inbounds i64, i64* %cloptr11750, i64 2                  ; &eptr11753[2]
  store i64 %cont7244, i64* %eptr11752                                               ; *eptr11752 = %cont7244
  store i64 %a7086, i64* %eptr11753                                                  ; *eptr11753 = %a7086
  %eptr11751 = getelementptr inbounds i64, i64* %cloptr11750, i64 0                  ; &cloptr11750[0]
  %f11754 = ptrtoint void(i64,i64)* @lam11395 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11754, i64* %eptr11751                                                 ; store fptr
  %arg7566 = ptrtoint i64* %cloptr11750 to i64                                       ; closure cast; i64* -> i64
  %rva8833 = add i64 0, 0                                                            ; quoted ()
  %rva8832 = call i64 @prim_cons(i64 %MwS$fargs, i64 %rva8833)                       ; call prim_cons
  %rva8831 = call i64 @prim_cons(i64 %arg7566, i64 %rva8832)                         ; call prim_cons
  %cloptr11755 = inttoptr i64 %X9D$_37last to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11755)                                        ; assert function application
  %i0ptr11756 = getelementptr inbounds i64, i64* %cloptr11755, i64 0                 ; &cloptr11755[0]
  %f11758 = load i64, i64* %i0ptr11756, align 8                                      ; load; *i0ptr11756
  %fptr11757 = inttoptr i64 %f11758 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11757(i64 %X9D$_37last, i64 %rva8831)               ; tail call
  ret void
}


define void @lam11395(i64 %env11396, i64 %rvp8829) {
  %envptr11759 = inttoptr i64 %env11396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11760 = getelementptr inbounds i64, i64* %envptr11759, i64 2                ; &envptr11759[2]
  %a7086 = load i64, i64* %envptr11760, align 8                                      ; load; *envptr11760
  %envptr11761 = inttoptr i64 %env11396 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11762 = getelementptr inbounds i64, i64* %envptr11761, i64 1                ; &envptr11761[1]
  %cont7244 = load i64, i64* %envptr11762, align 8                                   ; load; *envptr11762
  %_957248 = call i64 @prim_car(i64 %rvp8829)                                        ; call prim_car
  %rvp8827 = call i64 @prim_cdr(i64 %rvp8829)                                        ; call prim_cdr
  %a7087 = call i64 @prim_car(i64 %rvp8827)                                          ; call prim_car
  %na8823 = call i64 @prim_cdr(i64 %rvp8827)                                         ; call prim_cdr
  %retprim7249 = call i64 @prim_cons(i64 %a7086, i64 %a7087)                         ; call prim_cons
  %arg7571 = add i64 0, 0                                                            ; quoted ()
  %rva8826 = add i64 0, 0                                                            ; quoted ()
  %rva8825 = call i64 @prim_cons(i64 %retprim7249, i64 %rva8826)                     ; call prim_cons
  %rva8824 = call i64 @prim_cons(i64 %arg7571, i64 %rva8825)                         ; call prim_cons
  %cloptr11763 = inttoptr i64 %cont7244 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11763)                                        ; assert function application
  %i0ptr11764 = getelementptr inbounds i64, i64* %cloptr11763, i64 0                 ; &cloptr11763[0]
  %f11766 = load i64, i64* %i0ptr11764, align 8                                      ; load; *i0ptr11764
  %fptr11765 = inttoptr i64 %f11766 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11765(i64 %cont7244, i64 %rva8824)                  ; tail call
  ret void
}


define void @lam11388(i64 %env11389, i64 %rvp10020) {
  %envptr11767 = inttoptr i64 %env11389 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11768 = getelementptr inbounds i64, i64* %envptr11767, i64 2                ; &envptr11767[2]
  %B59$_37foldl1 = load i64, i64* %envptr11768, align 8                              ; load; *envptr11768
  %envptr11769 = inttoptr i64 %env11389 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11770 = getelementptr inbounds i64, i64* %envptr11769, i64 1                ; &envptr11769[1]
  %s70$_37length = load i64, i64* %envptr11770, align 8                              ; load; *envptr11770
  %_957252 = call i64 @prim_car(i64 %rvp10020)                                       ; call prim_car
  %rvp10018 = call i64 @prim_cdr(i64 %rvp10020)                                      ; call prim_cdr
  %ZNh$_37foldl = call i64 @prim_car(i64 %rvp10018)                                  ; call prim_car
  %na8847 = call i64 @prim_cdr(i64 %rvp10018)                                        ; call prim_cdr
  %cloptr11771 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11772 = getelementptr inbounds i64, i64* %cloptr11771, i64 0                  ; &cloptr11771[0]
  %f11773 = ptrtoint void(i64,i64)* @lam11386 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11773, i64* %eptr11772                                                 ; store fptr
  %Akm$_37_62 = ptrtoint i64* %cloptr11771 to i64                                    ; closure cast; i64* -> i64
  %cloptr11774 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11775 = getelementptr inbounds i64, i64* %cloptr11774, i64 0                  ; &cloptr11774[0]
  %f11776 = ptrtoint void(i64,i64)* @lam11382 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11776, i64* %eptr11775                                                 ; store fptr
  %XFr$_37_62_61 = ptrtoint i64* %cloptr11774 to i64                                 ; closure cast; i64* -> i64
  %arg7591 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %arg7590 = add i64 0, 0                                                            ; quoted ()
  %vZM$_37append = call i64 @prim_make_45vector(i64 %arg7591, i64 %arg7590)          ; call prim_make_45vector
  %arg7593 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr11777 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11779 = getelementptr inbounds i64, i64* %cloptr11777, i64 1                  ; &eptr11779[1]
  store i64 %vZM$_37append, i64* %eptr11779                                          ; *eptr11779 = %vZM$_37append
  %eptr11778 = getelementptr inbounds i64, i64* %cloptr11777, i64 0                  ; &cloptr11777[0]
  %f11780 = ptrtoint void(i64,i64)* @lam11375 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11780, i64* %eptr11778                                                 ; store fptr
  %arg7592 = ptrtoint i64* %cloptr11777 to i64                                       ; closure cast; i64* -> i64
  %IZq$_950 = call i64 @prim_vector_45set_33(i64 %vZM$_37append, i64 %arg7593, i64 %arg7592); call prim_vector_45set_33
  %arg7612 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7423 = call i64 @prim_vector_45ref(i64 %vZM$_37append, i64 %arg7612)       ; call prim_vector_45ref
  %cloptr11781 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11783 = getelementptr inbounds i64, i64* %cloptr11781, i64 1                  ; &eptr11783[1]
  %eptr11784 = getelementptr inbounds i64, i64* %cloptr11781, i64 2                  ; &eptr11784[2]
  %eptr11785 = getelementptr inbounds i64, i64* %cloptr11781, i64 3                  ; &eptr11785[3]
  store i64 %s70$_37length, i64* %eptr11783                                          ; *eptr11783 = %s70$_37length
  store i64 %B59$_37foldl1, i64* %eptr11784                                          ; *eptr11784 = %B59$_37foldl1
  store i64 %Akm$_37_62, i64* %eptr11785                                             ; *eptr11785 = %Akm$_37_62
  %eptr11782 = getelementptr inbounds i64, i64* %cloptr11781, i64 0                  ; &cloptr11781[0]
  %f11786 = ptrtoint void(i64,i64)* @lam11364 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11786, i64* %eptr11782                                                 ; store fptr
  %arg7616 = ptrtoint i64* %cloptr11781 to i64                                       ; closure cast; i64* -> i64
  %arg7615 = add i64 0, 0                                                            ; quoted ()
  %rva10017 = add i64 0, 0                                                           ; quoted ()
  %rva10016 = call i64 @prim_cons(i64 %retprim7423, i64 %rva10017)                   ; call prim_cons
  %rva10015 = call i64 @prim_cons(i64 %arg7615, i64 %rva10016)                       ; call prim_cons
  %cloptr11787 = inttoptr i64 %arg7616 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11787)                                        ; assert function application
  %i0ptr11788 = getelementptr inbounds i64, i64* %cloptr11787, i64 0                 ; &cloptr11787[0]
  %f11790 = load i64, i64* %i0ptr11788, align 8                                      ; load; *i0ptr11788
  %fptr11789 = inttoptr i64 %f11790 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11789(i64 %arg7616, i64 %rva10015)                  ; tail call
  ret void
}


define void @lam11386(i64 %env11387, i64 %rvp8857) {
  %cont7253 = call i64 @prim_car(i64 %rvp8857)                                       ; call prim_car
  %rvp8855 = call i64 @prim_cdr(i64 %rvp8857)                                        ; call prim_cdr
  %Vlg$a = call i64 @prim_car(i64 %rvp8855)                                          ; call prim_car
  %rvp8853 = call i64 @prim_cdr(i64 %rvp8855)                                        ; call prim_cdr
  %R3I$b = call i64 @prim_car(i64 %rvp8853)                                          ; call prim_car
  %na8849 = call i64 @prim_cdr(i64 %rvp8853)                                         ; call prim_cdr
  %a7097 = call i64 @prim__60_61(i64 %Vlg$a, i64 %R3I$b)                             ; call prim__60_61
  %retprim7254 = call i64 @prim_not(i64 %a7097)                                      ; call prim_not
  %arg7582 = add i64 0, 0                                                            ; quoted ()
  %rva8852 = add i64 0, 0                                                            ; quoted ()
  %rva8851 = call i64 @prim_cons(i64 %retprim7254, i64 %rva8852)                     ; call prim_cons
  %rva8850 = call i64 @prim_cons(i64 %arg7582, i64 %rva8851)                         ; call prim_cons
  %cloptr11791 = inttoptr i64 %cont7253 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11791)                                        ; assert function application
  %i0ptr11792 = getelementptr inbounds i64, i64* %cloptr11791, i64 0                 ; &cloptr11791[0]
  %f11794 = load i64, i64* %i0ptr11792, align 8                                      ; load; *i0ptr11792
  %fptr11793 = inttoptr i64 %f11794 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11793(i64 %cont7253, i64 %rva8850)                  ; tail call
  ret void
}


define void @lam11382(i64 %env11383, i64 %rvp8868) {
  %cont7255 = call i64 @prim_car(i64 %rvp8868)                                       ; call prim_car
  %rvp8866 = call i64 @prim_cdr(i64 %rvp8868)                                        ; call prim_cdr
  %JWE$a = call i64 @prim_car(i64 %rvp8866)                                          ; call prim_car
  %rvp8864 = call i64 @prim_cdr(i64 %rvp8866)                                        ; call prim_cdr
  %m3a$b = call i64 @prim_car(i64 %rvp8864)                                          ; call prim_car
  %na8860 = call i64 @prim_cdr(i64 %rvp8864)                                         ; call prim_cdr
  %a7098 = call i64 @prim__60(i64 %JWE$a, i64 %m3a$b)                                ; call prim__60
  %retprim7256 = call i64 @prim_not(i64 %a7098)                                      ; call prim_not
  %arg7588 = add i64 0, 0                                                            ; quoted ()
  %rva8863 = add i64 0, 0                                                            ; quoted ()
  %rva8862 = call i64 @prim_cons(i64 %retprim7256, i64 %rva8863)                     ; call prim_cons
  %rva8861 = call i64 @prim_cons(i64 %arg7588, i64 %rva8862)                         ; call prim_cons
  %cloptr11795 = inttoptr i64 %cont7255 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11795)                                        ; assert function application
  %i0ptr11796 = getelementptr inbounds i64, i64* %cloptr11795, i64 0                 ; &cloptr11795[0]
  %f11798 = load i64, i64* %i0ptr11796, align 8                                      ; load; *i0ptr11796
  %fptr11797 = inttoptr i64 %f11798 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11797(i64 %cont7255, i64 %rva8861)                  ; tail call
  ret void
}


define void @lam11375(i64 %env11376, i64 %rvp8892) {
  %envptr11799 = inttoptr i64 %env11376 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11800 = getelementptr inbounds i64, i64* %envptr11799, i64 1                ; &envptr11799[1]
  %vZM$_37append = load i64, i64* %envptr11800, align 8                              ; load; *envptr11800
  %cont7420 = call i64 @prim_car(i64 %rvp8892)                                       ; call prim_car
  %rvp8890 = call i64 @prim_cdr(i64 %rvp8892)                                        ; call prim_cdr
  %cxJ$ls0 = call i64 @prim_car(i64 %rvp8890)                                        ; call prim_car
  %rvp8888 = call i64 @prim_cdr(i64 %rvp8890)                                        ; call prim_cdr
  %QBd$ls1 = call i64 @prim_car(i64 %rvp8888)                                        ; call prim_car
  %na8871 = call i64 @prim_cdr(i64 %rvp8888)                                         ; call prim_cdr
  %a7099 = call i64 @prim_null_63(i64 %cxJ$ls0)                                      ; call prim_null_63
  %cmp11801 = icmp eq i64 %a7099, 15                                                 ; false?
  br i1 %cmp11801, label %else11803, label %then11802                                ; if

then11802:
  %arg7597 = add i64 0, 0                                                            ; quoted ()
  %rva8874 = add i64 0, 0                                                            ; quoted ()
  %rva8873 = call i64 @prim_cons(i64 %QBd$ls1, i64 %rva8874)                         ; call prim_cons
  %rva8872 = call i64 @prim_cons(i64 %arg7597, i64 %rva8873)                         ; call prim_cons
  %cloptr11804 = inttoptr i64 %cont7420 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11804)                                        ; assert function application
  %i0ptr11805 = getelementptr inbounds i64, i64* %cloptr11804, i64 0                 ; &cloptr11804[0]
  %f11807 = load i64, i64* %i0ptr11805, align 8                                      ; load; *i0ptr11805
  %fptr11806 = inttoptr i64 %f11807 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11806(i64 %cont7420, i64 %rva8872)                  ; tail call
  ret void

else11803:
  %a7100 = call i64 @prim_car(i64 %cxJ$ls0)                                          ; call prim_car
  %arg7600 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7101 = call i64 @prim_vector_45ref(i64 %vZM$_37append, i64 %arg7600)             ; call prim_vector_45ref
  %a7102 = call i64 @prim_cdr(i64 %cxJ$ls0)                                          ; call prim_cdr
  %cloptr11808 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11810 = getelementptr inbounds i64, i64* %cloptr11808, i64 1                  ; &eptr11810[1]
  %eptr11811 = getelementptr inbounds i64, i64* %cloptr11808, i64 2                  ; &eptr11811[2]
  store i64 %a7100, i64* %eptr11810                                                  ; *eptr11810 = %a7100
  store i64 %cont7420, i64* %eptr11811                                               ; *eptr11811 = %cont7420
  %eptr11809 = getelementptr inbounds i64, i64* %cloptr11808, i64 0                  ; &cloptr11808[0]
  %f11812 = ptrtoint void(i64,i64)* @lam11372 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11812, i64* %eptr11809                                                 ; store fptr
  %arg7605 = ptrtoint i64* %cloptr11808 to i64                                       ; closure cast; i64* -> i64
  %rva8887 = add i64 0, 0                                                            ; quoted ()
  %rva8886 = call i64 @prim_cons(i64 %QBd$ls1, i64 %rva8887)                         ; call prim_cons
  %rva8885 = call i64 @prim_cons(i64 %a7102, i64 %rva8886)                           ; call prim_cons
  %rva8884 = call i64 @prim_cons(i64 %arg7605, i64 %rva8885)                         ; call prim_cons
  %cloptr11813 = inttoptr i64 %a7101 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11813)                                        ; assert function application
  %i0ptr11814 = getelementptr inbounds i64, i64* %cloptr11813, i64 0                 ; &cloptr11813[0]
  %f11816 = load i64, i64* %i0ptr11814, align 8                                      ; load; *i0ptr11814
  %fptr11815 = inttoptr i64 %f11816 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11815(i64 %a7101, i64 %rva8884)                     ; tail call
  ret void
}


define void @lam11372(i64 %env11373, i64 %rvp8882) {
  %envptr11817 = inttoptr i64 %env11373 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11818 = getelementptr inbounds i64, i64* %envptr11817, i64 2                ; &envptr11817[2]
  %cont7420 = load i64, i64* %envptr11818, align 8                                   ; load; *envptr11818
  %envptr11819 = inttoptr i64 %env11373 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11820 = getelementptr inbounds i64, i64* %envptr11819, i64 1                ; &envptr11819[1]
  %a7100 = load i64, i64* %envptr11820, align 8                                      ; load; *envptr11820
  %_957421 = call i64 @prim_car(i64 %rvp8882)                                        ; call prim_car
  %rvp8880 = call i64 @prim_cdr(i64 %rvp8882)                                        ; call prim_cdr
  %a7103 = call i64 @prim_car(i64 %rvp8880)                                          ; call prim_car
  %na8876 = call i64 @prim_cdr(i64 %rvp8880)                                         ; call prim_cdr
  %retprim7422 = call i64 @prim_cons(i64 %a7100, i64 %a7103)                         ; call prim_cons
  %arg7610 = add i64 0, 0                                                            ; quoted ()
  %rva8879 = add i64 0, 0                                                            ; quoted ()
  %rva8878 = call i64 @prim_cons(i64 %retprim7422, i64 %rva8879)                     ; call prim_cons
  %rva8877 = call i64 @prim_cons(i64 %arg7610, i64 %rva8878)                         ; call prim_cons
  %cloptr11821 = inttoptr i64 %cont7420 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11821)                                        ; assert function application
  %i0ptr11822 = getelementptr inbounds i64, i64* %cloptr11821, i64 0                 ; &cloptr11821[0]
  %f11824 = load i64, i64* %i0ptr11822, align 8                                      ; load; *i0ptr11822
  %fptr11823 = inttoptr i64 %f11824 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11823(i64 %cont7420, i64 %rva8877)                  ; tail call
  ret void
}


define void @lam11364(i64 %env11365, i64 %rvp10013) {
  %envptr11825 = inttoptr i64 %env11365 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11826 = getelementptr inbounds i64, i64* %envptr11825, i64 3                ; &envptr11825[3]
  %Akm$_37_62 = load i64, i64* %envptr11826, align 8                                 ; load; *envptr11826
  %envptr11827 = inttoptr i64 %env11365 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11828 = getelementptr inbounds i64, i64* %envptr11827, i64 2                ; &envptr11827[2]
  %B59$_37foldl1 = load i64, i64* %envptr11828, align 8                              ; load; *envptr11828
  %envptr11829 = inttoptr i64 %env11365 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11830 = getelementptr inbounds i64, i64* %envptr11829, i64 1                ; &envptr11829[1]
  %s70$_37length = load i64, i64* %envptr11830, align 8                              ; load; *envptr11830
  %_957257 = call i64 @prim_car(i64 %rvp10013)                                       ; call prim_car
  %rvp10011 = call i64 @prim_cdr(i64 %rvp10013)                                      ; call prim_cdr
  %aNK$_37append = call i64 @prim_car(i64 %rvp10011)                                 ; call prim_car
  %na8895 = call i64 @prim_cdr(i64 %rvp10011)                                        ; call prim_cdr
  %cloptr11831 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11832 = getelementptr inbounds i64, i64* %cloptr11831, i64 0                  ; &cloptr11831[0]
  %f11833 = ptrtoint void(i64,i64)* @lam11362 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11833, i64* %eptr11832                                                 ; store fptr
  %ZMs$_37list_63 = ptrtoint i64* %cloptr11831 to i64                                ; closure cast; i64* -> i64
  %cloptr11834 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11835 = getelementptr inbounds i64, i64* %cloptr11834, i64 0                  ; &cloptr11834[0]
  %f11836 = ptrtoint void(i64,i64)* @lam11310 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11836, i64* %eptr11835                                                 ; store fptr
  %ein$_37drop = ptrtoint i64* %cloptr11834 to i64                                   ; closure cast; i64* -> i64
  %cloptr11837 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11838 = getelementptr inbounds i64, i64* %cloptr11837, i64 0                  ; &cloptr11837[0]
  %f11839 = ptrtoint void(i64,i64)* @lam11260 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11839, i64* %eptr11838                                                 ; store fptr
  %STh$_37memv = ptrtoint i64* %cloptr11837 to i64                                   ; closure cast; i64* -> i64
  %cloptr11840 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr11842 = getelementptr inbounds i64, i64* %cloptr11840, i64 1                  ; &eptr11842[1]
  store i64 %B59$_37foldl1, i64* %eptr11842                                          ; *eptr11842 = %B59$_37foldl1
  %eptr11841 = getelementptr inbounds i64, i64* %cloptr11840, i64 0                  ; &cloptr11840[0]
  %f11843 = ptrtoint void(i64,i64)* @lam11219 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11843, i64* %eptr11841                                                 ; store fptr
  %ZrG$_37_47 = ptrtoint i64* %cloptr11840 to i64                                    ; closure cast; i64* -> i64
  %cloptr11844 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11845 = getelementptr inbounds i64, i64* %cloptr11844, i64 0                  ; &cloptr11844[0]
  %f11846 = ptrtoint void(i64,i64)* @lam11207 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11846, i64* %eptr11845                                                 ; store fptr
  %L8y$_37first = ptrtoint i64* %cloptr11844 to i64                                  ; closure cast; i64* -> i64
  %cloptr11847 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11848 = getelementptr inbounds i64, i64* %cloptr11847, i64 0                  ; &cloptr11847[0]
  %f11849 = ptrtoint void(i64,i64)* @lam11203 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11849, i64* %eptr11848                                                 ; store fptr
  %T5w$_37second = ptrtoint i64* %cloptr11847 to i64                                 ; closure cast; i64* -> i64
  %cloptr11850 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11851 = getelementptr inbounds i64, i64* %cloptr11850, i64 0                  ; &cloptr11850[0]
  %f11852 = ptrtoint void(i64,i64)* @lam11199 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11852, i64* %eptr11851                                                 ; store fptr
  %Qx3$_37third = ptrtoint i64* %cloptr11850 to i64                                  ; closure cast; i64* -> i64
  %cloptr11853 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11854 = getelementptr inbounds i64, i64* %cloptr11853, i64 0                  ; &cloptr11853[0]
  %f11855 = ptrtoint void(i64,i64)* @lam11195 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11855, i64* %eptr11854                                                 ; store fptr
  %WsV$_37fourth = ptrtoint i64* %cloptr11853 to i64                                 ; closure cast; i64* -> i64
  %cloptr11856 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11857 = getelementptr inbounds i64, i64* %cloptr11856, i64 0                  ; &cloptr11856[0]
  %f11858 = ptrtoint void(i64,i64)* @lam11191 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11858, i64* %eptr11857                                                 ; store fptr
  %Hif$promise_63 = ptrtoint i64* %cloptr11856 to i64                                ; closure cast; i64* -> i64
  %cloptr11859 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11860 = getelementptr inbounds i64, i64* %cloptr11859, i64 0                  ; &cloptr11859[0]
  %f11861 = ptrtoint void(i64,i64)* @lam11183 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11861, i64* %eptr11860                                                 ; store fptr
  %arg7878 = ptrtoint i64* %cloptr11859 to i64                                       ; closure cast; i64* -> i64
  %cloptr11862 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11864 = getelementptr inbounds i64, i64* %cloptr11862, i64 1                  ; &eptr11864[1]
  %eptr11865 = getelementptr inbounds i64, i64* %cloptr11862, i64 2                  ; &eptr11865[2]
  %eptr11866 = getelementptr inbounds i64, i64* %cloptr11862, i64 3                  ; &eptr11866[3]
  store i64 %ein$_37drop, i64* %eptr11864                                            ; *eptr11864 = %ein$_37drop
  store i64 %s70$_37length, i64* %eptr11865                                          ; *eptr11865 = %s70$_37length
  store i64 %Akm$_37_62, i64* %eptr11866                                             ; *eptr11866 = %Akm$_37_62
  %eptr11863 = getelementptr inbounds i64, i64* %cloptr11862, i64 0                  ; &cloptr11862[0]
  %f11867 = ptrtoint void(i64,i64)* @lam11179 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11867, i64* %eptr11863                                                 ; store fptr
  %arg7877 = ptrtoint i64* %cloptr11862 to i64                                       ; closure cast; i64* -> i64
  %rva10010 = add i64 0, 0                                                           ; quoted ()
  %rva10009 = call i64 @prim_cons(i64 %arg7877, i64 %rva10010)                       ; call prim_cons
  %cloptr11868 = inttoptr i64 %arg7878 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11868)                                        ; assert function application
  %i0ptr11869 = getelementptr inbounds i64, i64* %cloptr11868, i64 0                 ; &cloptr11868[0]
  %f11871 = load i64, i64* %i0ptr11869, align 8                                      ; load; *i0ptr11869
  %fptr11870 = inttoptr i64 %f11871 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11870(i64 %arg7878, i64 %rva10009)                  ; tail call
  ret void
}


define void @lam11362(i64 %env11363, i64 %rvp8978) {
  %cont7258 = call i64 @prim_car(i64 %rvp8978)                                       ; call prim_car
  %rvp8976 = call i64 @prim_cdr(i64 %rvp8978)                                        ; call prim_cdr
  %TQL$a = call i64 @prim_car(i64 %rvp8976)                                          ; call prim_car
  %na8897 = call i64 @prim_cdr(i64 %rvp8976)                                         ; call prim_cdr
  %arg7618 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %H3P$a = call i64 @prim_make_45vector(i64 %arg7618, i64 %TQL$a)                    ; call prim_make_45vector
  %cloptr11872 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11873 = getelementptr inbounds i64, i64* %cloptr11872, i64 0                  ; &cloptr11872[0]
  %f11874 = ptrtoint void(i64,i64)* @lam11359 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11874, i64* %eptr11873                                                 ; store fptr
  %arg7621 = ptrtoint i64* %cloptr11872 to i64                                       ; closure cast; i64* -> i64
  %cloptr11875 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11877 = getelementptr inbounds i64, i64* %cloptr11875, i64 1                  ; &eptr11877[1]
  %eptr11878 = getelementptr inbounds i64, i64* %cloptr11875, i64 2                  ; &eptr11878[2]
  store i64 %H3P$a, i64* %eptr11877                                                  ; *eptr11877 = %H3P$a
  store i64 %cont7258, i64* %eptr11878                                               ; *eptr11878 = %cont7258
  %eptr11876 = getelementptr inbounds i64, i64* %cloptr11875, i64 0                  ; &cloptr11875[0]
  %f11879 = ptrtoint void(i64,i64)* @lam11355 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11879, i64* %eptr11876                                                 ; store fptr
  %arg7620 = ptrtoint i64* %cloptr11875 to i64                                       ; closure cast; i64* -> i64
  %cloptr11880 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11882 = getelementptr inbounds i64, i64* %cloptr11880, i64 1                  ; &eptr11882[1]
  %eptr11883 = getelementptr inbounds i64, i64* %cloptr11880, i64 2                  ; &eptr11883[2]
  store i64 %H3P$a, i64* %eptr11882                                                  ; *eptr11882 = %H3P$a
  store i64 %cont7258, i64* %eptr11883                                               ; *eptr11883 = %cont7258
  %eptr11881 = getelementptr inbounds i64, i64* %cloptr11880, i64 0                  ; &cloptr11880[0]
  %f11884 = ptrtoint void(i64,i64)* @lam11333 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11884, i64* %eptr11881                                                 ; store fptr
  %arg7619 = ptrtoint i64* %cloptr11880 to i64                                       ; closure cast; i64* -> i64
  %rva8975 = add i64 0, 0                                                            ; quoted ()
  %rva8974 = call i64 @prim_cons(i64 %arg7619, i64 %rva8975)                         ; call prim_cons
  %rva8973 = call i64 @prim_cons(i64 %arg7620, i64 %rva8974)                         ; call prim_cons
  %cloptr11885 = inttoptr i64 %arg7621 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11885)                                        ; assert function application
  %i0ptr11886 = getelementptr inbounds i64, i64* %cloptr11885, i64 0                 ; &cloptr11885[0]
  %f11888 = load i64, i64* %i0ptr11886, align 8                                      ; load; *i0ptr11886
  %fptr11887 = inttoptr i64 %f11888 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11887(i64 %arg7621, i64 %rva8973)                   ; tail call
  ret void
}


define void @lam11359(i64 %env11360, i64 %rvp8905) {
  %cont7264 = call i64 @prim_car(i64 %rvp8905)                                       ; call prim_car
  %rvp8903 = call i64 @prim_cdr(i64 %rvp8905)                                        ; call prim_cdr
  %Xg1$k = call i64 @prim_car(i64 %rvp8903)                                          ; call prim_car
  %na8899 = call i64 @prim_cdr(i64 %rvp8903)                                         ; call prim_cdr
  %arg7623 = add i64 0, 0                                                            ; quoted ()
  %rva8902 = add i64 0, 0                                                            ; quoted ()
  %rva8901 = call i64 @prim_cons(i64 %Xg1$k, i64 %rva8902)                           ; call prim_cons
  %rva8900 = call i64 @prim_cons(i64 %arg7623, i64 %rva8901)                         ; call prim_cons
  %cloptr11889 = inttoptr i64 %cont7264 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11889)                                        ; assert function application
  %i0ptr11890 = getelementptr inbounds i64, i64* %cloptr11889, i64 0                 ; &cloptr11889[0]
  %f11892 = load i64, i64* %i0ptr11890, align 8                                      ; load; *i0ptr11890
  %fptr11891 = inttoptr i64 %f11892 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11891(i64 %cont7264, i64 %rva8900)                  ; tail call
  ret void
}


define void @lam11355(i64 %env11356, i64 %rvp8938) {
  %envptr11893 = inttoptr i64 %env11356 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11894 = getelementptr inbounds i64, i64* %envptr11893, i64 2                ; &envptr11893[2]
  %cont7258 = load i64, i64* %envptr11894, align 8                                   ; load; *envptr11894
  %envptr11895 = inttoptr i64 %env11356 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11896 = getelementptr inbounds i64, i64* %envptr11895, i64 1                ; &envptr11895[1]
  %H3P$a = load i64, i64* %envptr11896, align 8                                      ; load; *envptr11896
  %_957259 = call i64 @prim_car(i64 %rvp8938)                                        ; call prim_car
  %rvp8936 = call i64 @prim_cdr(i64 %rvp8938)                                        ; call prim_cdr
  %j8R$cc = call i64 @prim_car(i64 %rvp8936)                                         ; call prim_car
  %na8908 = call i64 @prim_cdr(i64 %rvp8936)                                         ; call prim_cdr
  %arg7625 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7104 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7625)                     ; call prim_vector_45ref
  %a7105 = call i64 @prim_null_63(i64 %a7104)                                        ; call prim_null_63
  %cmp11897 = icmp eq i64 %a7105, 15                                                 ; false?
  br i1 %cmp11897, label %else11899, label %then11898                                ; if

then11898:
  %arg7629 = add i64 0, 0                                                            ; quoted ()
  %arg7628 = call i64 @const_init_true()                                             ; quoted #t
  %rva8911 = add i64 0, 0                                                            ; quoted ()
  %rva8910 = call i64 @prim_cons(i64 %arg7628, i64 %rva8911)                         ; call prim_cons
  %rva8909 = call i64 @prim_cons(i64 %arg7629, i64 %rva8910)                         ; call prim_cons
  %cloptr11900 = inttoptr i64 %cont7258 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11900)                                        ; assert function application
  %i0ptr11901 = getelementptr inbounds i64, i64* %cloptr11900, i64 0                 ; &cloptr11900[0]
  %f11903 = load i64, i64* %i0ptr11901, align 8                                      ; load; *i0ptr11901
  %fptr11902 = inttoptr i64 %f11903 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11902(i64 %cont7258, i64 %rva8909)                  ; tail call
  ret void

else11899:
  %arg7631 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7106 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7631)                     ; call prim_vector_45ref
  %a7107 = call i64 @prim_cons_63(i64 %a7106)                                        ; call prim_cons_63
  %cmp11904 = icmp eq i64 %a7107, 15                                                 ; false?
  br i1 %cmp11904, label %else11906, label %then11905                                ; if

then11905:
  %arg7634 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7108 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7634)                     ; call prim_vector_45ref
  %retprim7263 = call i64 @prim_cdr(i64 %a7108)                                      ; call prim_cdr
  %cloptr11907 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11909 = getelementptr inbounds i64, i64* %cloptr11907, i64 1                  ; &eptr11909[1]
  %eptr11910 = getelementptr inbounds i64, i64* %cloptr11907, i64 2                  ; &eptr11910[2]
  %eptr11911 = getelementptr inbounds i64, i64* %cloptr11907, i64 3                  ; &eptr11911[3]
  store i64 %j8R$cc, i64* %eptr11909                                                 ; *eptr11909 = %j8R$cc
  store i64 %H3P$a, i64* %eptr11910                                                  ; *eptr11910 = %H3P$a
  store i64 %cont7258, i64* %eptr11911                                               ; *eptr11911 = %cont7258
  %eptr11908 = getelementptr inbounds i64, i64* %cloptr11907, i64 0                  ; &cloptr11907[0]
  %f11912 = ptrtoint void(i64,i64)* @lam11347 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11912, i64* %eptr11908                                                 ; store fptr
  %arg7639 = ptrtoint i64* %cloptr11907 to i64                                       ; closure cast; i64* -> i64
  %arg7638 = add i64 0, 0                                                            ; quoted ()
  %rva8932 = add i64 0, 0                                                            ; quoted ()
  %rva8931 = call i64 @prim_cons(i64 %retprim7263, i64 %rva8932)                     ; call prim_cons
  %rva8930 = call i64 @prim_cons(i64 %arg7638, i64 %rva8931)                         ; call prim_cons
  %cloptr11913 = inttoptr i64 %arg7639 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11913)                                        ; assert function application
  %i0ptr11914 = getelementptr inbounds i64, i64* %cloptr11913, i64 0                 ; &cloptr11913[0]
  %f11916 = load i64, i64* %i0ptr11914, align 8                                      ; load; *i0ptr11914
  %fptr11915 = inttoptr i64 %f11916 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11915(i64 %arg7639, i64 %rva8930)                   ; tail call
  ret void

else11906:
  %arg7653 = add i64 0, 0                                                            ; quoted ()
  %arg7652 = call i64 @const_init_false()                                            ; quoted #f
  %rva8935 = add i64 0, 0                                                            ; quoted ()
  %rva8934 = call i64 @prim_cons(i64 %arg7652, i64 %rva8935)                         ; call prim_cons
  %rva8933 = call i64 @prim_cons(i64 %arg7653, i64 %rva8934)                         ; call prim_cons
  %cloptr11917 = inttoptr i64 %cont7258 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11917)                                        ; assert function application
  %i0ptr11918 = getelementptr inbounds i64, i64* %cloptr11917, i64 0                 ; &cloptr11917[0]
  %f11920 = load i64, i64* %i0ptr11918, align 8                                      ; load; *i0ptr11918
  %fptr11919 = inttoptr i64 %f11920 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11919(i64 %cont7258, i64 %rva8933)                  ; tail call
  ret void
}


define void @lam11347(i64 %env11348, i64 %rvp8928) {
  %envptr11921 = inttoptr i64 %env11348 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11922 = getelementptr inbounds i64, i64* %envptr11921, i64 3                ; &envptr11921[3]
  %cont7258 = load i64, i64* %envptr11922, align 8                                   ; load; *envptr11922
  %envptr11923 = inttoptr i64 %env11348 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11924 = getelementptr inbounds i64, i64* %envptr11923, i64 2                ; &envptr11923[2]
  %H3P$a = load i64, i64* %envptr11924, align 8                                      ; load; *envptr11924
  %envptr11925 = inttoptr i64 %env11348 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11926 = getelementptr inbounds i64, i64* %envptr11925, i64 1                ; &envptr11925[1]
  %j8R$cc = load i64, i64* %envptr11926, align 8                                     ; load; *envptr11926
  %_957260 = call i64 @prim_car(i64 %rvp8928)                                        ; call prim_car
  %rvp8926 = call i64 @prim_cdr(i64 %rvp8928)                                        ; call prim_cdr
  %lRK$b = call i64 @prim_car(i64 %rvp8926)                                          ; call prim_car
  %na8913 = call i64 @prim_cdr(i64 %rvp8926)                                         ; call prim_cdr
  %arg7640 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7109 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7640)                     ; call prim_vector_45ref
  %a7110 = call i64 @prim_cdr(i64 %a7109)                                            ; call prim_cdr
  %arg7644 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7262 = call i64 @prim_vector_45set_33(i64 %H3P$a, i64 %arg7644, i64 %a7110); call prim_vector_45set_33
  %cloptr11927 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11929 = getelementptr inbounds i64, i64* %cloptr11927, i64 1                  ; &eptr11929[1]
  %eptr11930 = getelementptr inbounds i64, i64* %cloptr11927, i64 2                  ; &eptr11930[2]
  store i64 %j8R$cc, i64* %eptr11929                                                 ; *eptr11929 = %j8R$cc
  store i64 %cont7258, i64* %eptr11930                                               ; *eptr11930 = %cont7258
  %eptr11928 = getelementptr inbounds i64, i64* %cloptr11927, i64 0                  ; &cloptr11927[0]
  %f11931 = ptrtoint void(i64,i64)* @lam11343 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11931, i64* %eptr11928                                                 ; store fptr
  %arg7648 = ptrtoint i64* %cloptr11927 to i64                                       ; closure cast; i64* -> i64
  %arg7647 = add i64 0, 0                                                            ; quoted ()
  %rva8925 = add i64 0, 0                                                            ; quoted ()
  %rva8924 = call i64 @prim_cons(i64 %retprim7262, i64 %rva8925)                     ; call prim_cons
  %rva8923 = call i64 @prim_cons(i64 %arg7647, i64 %rva8924)                         ; call prim_cons
  %cloptr11932 = inttoptr i64 %arg7648 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11932)                                        ; assert function application
  %i0ptr11933 = getelementptr inbounds i64, i64* %cloptr11932, i64 0                 ; &cloptr11932[0]
  %f11935 = load i64, i64* %i0ptr11933, align 8                                      ; load; *i0ptr11933
  %fptr11934 = inttoptr i64 %f11935 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11934(i64 %arg7648, i64 %rva8923)                   ; tail call
  ret void
}


define void @lam11343(i64 %env11344, i64 %rvp8921) {
  %envptr11936 = inttoptr i64 %env11344 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11937 = getelementptr inbounds i64, i64* %envptr11936, i64 2                ; &envptr11936[2]
  %cont7258 = load i64, i64* %envptr11937, align 8                                   ; load; *envptr11937
  %envptr11938 = inttoptr i64 %env11344 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11939 = getelementptr inbounds i64, i64* %envptr11938, i64 1                ; &envptr11938[1]
  %j8R$cc = load i64, i64* %envptr11939, align 8                                     ; load; *envptr11939
  %_957261 = call i64 @prim_car(i64 %rvp8921)                                        ; call prim_car
  %rvp8919 = call i64 @prim_cdr(i64 %rvp8921)                                        ; call prim_cdr
  %pO3$_950 = call i64 @prim_car(i64 %rvp8919)                                       ; call prim_car
  %na8915 = call i64 @prim_cdr(i64 %rvp8919)                                         ; call prim_cdr
  %rva8918 = add i64 0, 0                                                            ; quoted ()
  %rva8917 = call i64 @prim_cons(i64 %j8R$cc, i64 %rva8918)                          ; call prim_cons
  %rva8916 = call i64 @prim_cons(i64 %cont7258, i64 %rva8917)                        ; call prim_cons
  %cloptr11940 = inttoptr i64 %j8R$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11940)                                        ; assert function application
  %i0ptr11941 = getelementptr inbounds i64, i64* %cloptr11940, i64 0                 ; &cloptr11940[0]
  %f11943 = load i64, i64* %i0ptr11941, align 8                                      ; load; *i0ptr11941
  %fptr11942 = inttoptr i64 %f11943 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11942(i64 %j8R$cc, i64 %rva8916)                    ; tail call
  ret void
}


define void @lam11333(i64 %env11334, i64 %rvp8971) {
  %envptr11944 = inttoptr i64 %env11334 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11945 = getelementptr inbounds i64, i64* %envptr11944, i64 2                ; &envptr11944[2]
  %cont7258 = load i64, i64* %envptr11945, align 8                                   ; load; *envptr11945
  %envptr11946 = inttoptr i64 %env11334 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11947 = getelementptr inbounds i64, i64* %envptr11946, i64 1                ; &envptr11946[1]
  %H3P$a = load i64, i64* %envptr11947, align 8                                      ; load; *envptr11947
  %_957259 = call i64 @prim_car(i64 %rvp8971)                                        ; call prim_car
  %rvp8969 = call i64 @prim_cdr(i64 %rvp8971)                                        ; call prim_cdr
  %j8R$cc = call i64 @prim_car(i64 %rvp8969)                                         ; call prim_car
  %na8941 = call i64 @prim_cdr(i64 %rvp8969)                                         ; call prim_cdr
  %arg7655 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7104 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7655)                     ; call prim_vector_45ref
  %a7105 = call i64 @prim_null_63(i64 %a7104)                                        ; call prim_null_63
  %cmp11948 = icmp eq i64 %a7105, 15                                                 ; false?
  br i1 %cmp11948, label %else11950, label %then11949                                ; if

then11949:
  %arg7659 = add i64 0, 0                                                            ; quoted ()
  %arg7658 = call i64 @const_init_true()                                             ; quoted #t
  %rva8944 = add i64 0, 0                                                            ; quoted ()
  %rva8943 = call i64 @prim_cons(i64 %arg7658, i64 %rva8944)                         ; call prim_cons
  %rva8942 = call i64 @prim_cons(i64 %arg7659, i64 %rva8943)                         ; call prim_cons
  %cloptr11951 = inttoptr i64 %cont7258 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11951)                                        ; assert function application
  %i0ptr11952 = getelementptr inbounds i64, i64* %cloptr11951, i64 0                 ; &cloptr11951[0]
  %f11954 = load i64, i64* %i0ptr11952, align 8                                      ; load; *i0ptr11952
  %fptr11953 = inttoptr i64 %f11954 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11953(i64 %cont7258, i64 %rva8942)                  ; tail call
  ret void

else11950:
  %arg7661 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7106 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7661)                     ; call prim_vector_45ref
  %a7107 = call i64 @prim_cons_63(i64 %a7106)                                        ; call prim_cons_63
  %cmp11955 = icmp eq i64 %a7107, 15                                                 ; false?
  br i1 %cmp11955, label %else11957, label %then11956                                ; if

then11956:
  %arg7664 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7108 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7664)                     ; call prim_vector_45ref
  %retprim7263 = call i64 @prim_cdr(i64 %a7108)                                      ; call prim_cdr
  %cloptr11958 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr11960 = getelementptr inbounds i64, i64* %cloptr11958, i64 1                  ; &eptr11960[1]
  %eptr11961 = getelementptr inbounds i64, i64* %cloptr11958, i64 2                  ; &eptr11961[2]
  %eptr11962 = getelementptr inbounds i64, i64* %cloptr11958, i64 3                  ; &eptr11962[3]
  store i64 %j8R$cc, i64* %eptr11960                                                 ; *eptr11960 = %j8R$cc
  store i64 %H3P$a, i64* %eptr11961                                                  ; *eptr11961 = %H3P$a
  store i64 %cont7258, i64* %eptr11962                                               ; *eptr11962 = %cont7258
  %eptr11959 = getelementptr inbounds i64, i64* %cloptr11958, i64 0                  ; &cloptr11958[0]
  %f11963 = ptrtoint void(i64,i64)* @lam11325 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11963, i64* %eptr11959                                                 ; store fptr
  %arg7669 = ptrtoint i64* %cloptr11958 to i64                                       ; closure cast; i64* -> i64
  %arg7668 = add i64 0, 0                                                            ; quoted ()
  %rva8965 = add i64 0, 0                                                            ; quoted ()
  %rva8964 = call i64 @prim_cons(i64 %retprim7263, i64 %rva8965)                     ; call prim_cons
  %rva8963 = call i64 @prim_cons(i64 %arg7668, i64 %rva8964)                         ; call prim_cons
  %cloptr11964 = inttoptr i64 %arg7669 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11964)                                        ; assert function application
  %i0ptr11965 = getelementptr inbounds i64, i64* %cloptr11964, i64 0                 ; &cloptr11964[0]
  %f11967 = load i64, i64* %i0ptr11965, align 8                                      ; load; *i0ptr11965
  %fptr11966 = inttoptr i64 %f11967 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11966(i64 %arg7669, i64 %rva8963)                   ; tail call
  ret void

else11957:
  %arg7683 = add i64 0, 0                                                            ; quoted ()
  %arg7682 = call i64 @const_init_false()                                            ; quoted #f
  %rva8968 = add i64 0, 0                                                            ; quoted ()
  %rva8967 = call i64 @prim_cons(i64 %arg7682, i64 %rva8968)                         ; call prim_cons
  %rva8966 = call i64 @prim_cons(i64 %arg7683, i64 %rva8967)                         ; call prim_cons
  %cloptr11968 = inttoptr i64 %cont7258 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11968)                                        ; assert function application
  %i0ptr11969 = getelementptr inbounds i64, i64* %cloptr11968, i64 0                 ; &cloptr11968[0]
  %f11971 = load i64, i64* %i0ptr11969, align 8                                      ; load; *i0ptr11969
  %fptr11970 = inttoptr i64 %f11971 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11970(i64 %cont7258, i64 %rva8966)                  ; tail call
  ret void
}


define void @lam11325(i64 %env11326, i64 %rvp8961) {
  %envptr11972 = inttoptr i64 %env11326 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11973 = getelementptr inbounds i64, i64* %envptr11972, i64 3                ; &envptr11972[3]
  %cont7258 = load i64, i64* %envptr11973, align 8                                   ; load; *envptr11973
  %envptr11974 = inttoptr i64 %env11326 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11975 = getelementptr inbounds i64, i64* %envptr11974, i64 2                ; &envptr11974[2]
  %H3P$a = load i64, i64* %envptr11975, align 8                                      ; load; *envptr11975
  %envptr11976 = inttoptr i64 %env11326 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11977 = getelementptr inbounds i64, i64* %envptr11976, i64 1                ; &envptr11976[1]
  %j8R$cc = load i64, i64* %envptr11977, align 8                                     ; load; *envptr11977
  %_957260 = call i64 @prim_car(i64 %rvp8961)                                        ; call prim_car
  %rvp8959 = call i64 @prim_cdr(i64 %rvp8961)                                        ; call prim_cdr
  %lRK$b = call i64 @prim_car(i64 %rvp8959)                                          ; call prim_car
  %na8946 = call i64 @prim_cdr(i64 %rvp8959)                                         ; call prim_cdr
  %arg7670 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7109 = call i64 @prim_vector_45ref(i64 %H3P$a, i64 %arg7670)                     ; call prim_vector_45ref
  %a7110 = call i64 @prim_cdr(i64 %a7109)                                            ; call prim_cdr
  %arg7674 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7262 = call i64 @prim_vector_45set_33(i64 %H3P$a, i64 %arg7674, i64 %a7110); call prim_vector_45set_33
  %cloptr11978 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr11980 = getelementptr inbounds i64, i64* %cloptr11978, i64 1                  ; &eptr11980[1]
  %eptr11981 = getelementptr inbounds i64, i64* %cloptr11978, i64 2                  ; &eptr11981[2]
  store i64 %j8R$cc, i64* %eptr11980                                                 ; *eptr11980 = %j8R$cc
  store i64 %cont7258, i64* %eptr11981                                               ; *eptr11981 = %cont7258
  %eptr11979 = getelementptr inbounds i64, i64* %cloptr11978, i64 0                  ; &cloptr11978[0]
  %f11982 = ptrtoint void(i64,i64)* @lam11321 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11982, i64* %eptr11979                                                 ; store fptr
  %arg7678 = ptrtoint i64* %cloptr11978 to i64                                       ; closure cast; i64* -> i64
  %arg7677 = add i64 0, 0                                                            ; quoted ()
  %rva8958 = add i64 0, 0                                                            ; quoted ()
  %rva8957 = call i64 @prim_cons(i64 %retprim7262, i64 %rva8958)                     ; call prim_cons
  %rva8956 = call i64 @prim_cons(i64 %arg7677, i64 %rva8957)                         ; call prim_cons
  %cloptr11983 = inttoptr i64 %arg7678 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11983)                                        ; assert function application
  %i0ptr11984 = getelementptr inbounds i64, i64* %cloptr11983, i64 0                 ; &cloptr11983[0]
  %f11986 = load i64, i64* %i0ptr11984, align 8                                      ; load; *i0ptr11984
  %fptr11985 = inttoptr i64 %f11986 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11985(i64 %arg7678, i64 %rva8956)                   ; tail call
  ret void
}


define void @lam11321(i64 %env11322, i64 %rvp8954) {
  %envptr11987 = inttoptr i64 %env11322 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11988 = getelementptr inbounds i64, i64* %envptr11987, i64 2                ; &envptr11987[2]
  %cont7258 = load i64, i64* %envptr11988, align 8                                   ; load; *envptr11988
  %envptr11989 = inttoptr i64 %env11322 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr11990 = getelementptr inbounds i64, i64* %envptr11989, i64 1                ; &envptr11989[1]
  %j8R$cc = load i64, i64* %envptr11990, align 8                                     ; load; *envptr11990
  %_957261 = call i64 @prim_car(i64 %rvp8954)                                        ; call prim_car
  %rvp8952 = call i64 @prim_cdr(i64 %rvp8954)                                        ; call prim_cdr
  %pO3$_950 = call i64 @prim_car(i64 %rvp8952)                                       ; call prim_car
  %na8948 = call i64 @prim_cdr(i64 %rvp8952)                                         ; call prim_cdr
  %rva8951 = add i64 0, 0                                                            ; quoted ()
  %rva8950 = call i64 @prim_cons(i64 %j8R$cc, i64 %rva8951)                          ; call prim_cons
  %rva8949 = call i64 @prim_cons(i64 %cont7258, i64 %rva8950)                        ; call prim_cons
  %cloptr11991 = inttoptr i64 %j8R$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr11991)                                        ; assert function application
  %i0ptr11992 = getelementptr inbounds i64, i64* %cloptr11991, i64 0                 ; &cloptr11991[0]
  %f11994 = load i64, i64* %i0ptr11992, align 8                                      ; load; *i0ptr11992
  %fptr11993 = inttoptr i64 %f11994 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr11993(i64 %j8R$cc, i64 %rva8949)                    ; tail call
  ret void
}


define void @lam11310(i64 %env11311, i64 %rvp9058) {
  %cont7265 = call i64 @prim_car(i64 %rvp9058)                                       ; call prim_car
  %rvp9056 = call i64 @prim_cdr(i64 %rvp9058)                                        ; call prim_cdr
  %PAS$lst = call i64 @prim_car(i64 %rvp9056)                                        ; call prim_car
  %rvp9054 = call i64 @prim_cdr(i64 %rvp9056)                                        ; call prim_cdr
  %DRE$n = call i64 @prim_car(i64 %rvp9054)                                          ; call prim_car
  %na8981 = call i64 @prim_cdr(i64 %rvp9054)                                         ; call prim_cdr
  %arg7686 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %VqL$lst = call i64 @prim_make_45vector(i64 %arg7686, i64 %PAS$lst)                ; call prim_make_45vector
  %arg7688 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %z1E$n = call i64 @prim_make_45vector(i64 %arg7688, i64 %DRE$n)                    ; call prim_make_45vector
  %cloptr11995 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr11996 = getelementptr inbounds i64, i64* %cloptr11995, i64 0                  ; &cloptr11995[0]
  %f11997 = ptrtoint void(i64,i64)* @lam11306 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f11997, i64* %eptr11996                                                 ; store fptr
  %arg7691 = ptrtoint i64* %cloptr11995 to i64                                       ; closure cast; i64* -> i64
  %cloptr11998 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12000 = getelementptr inbounds i64, i64* %cloptr11998, i64 1                  ; &eptr12000[1]
  %eptr12001 = getelementptr inbounds i64, i64* %cloptr11998, i64 2                  ; &eptr12001[2]
  %eptr12002 = getelementptr inbounds i64, i64* %cloptr11998, i64 3                  ; &eptr12002[3]
  store i64 %cont7265, i64* %eptr12000                                               ; *eptr12000 = %cont7265
  store i64 %z1E$n, i64* %eptr12001                                                  ; *eptr12001 = %z1E$n
  store i64 %VqL$lst, i64* %eptr12002                                                ; *eptr12002 = %VqL$lst
  %eptr11999 = getelementptr inbounds i64, i64* %cloptr11998, i64 0                  ; &cloptr11998[0]
  %f12003 = ptrtoint void(i64,i64)* @lam11303 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12003, i64* %eptr11999                                                 ; store fptr
  %arg7690 = ptrtoint i64* %cloptr11998 to i64                                       ; closure cast; i64* -> i64
  %cloptr12004 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12006 = getelementptr inbounds i64, i64* %cloptr12004, i64 1                  ; &eptr12006[1]
  %eptr12007 = getelementptr inbounds i64, i64* %cloptr12004, i64 2                  ; &eptr12007[2]
  %eptr12008 = getelementptr inbounds i64, i64* %cloptr12004, i64 3                  ; &eptr12008[3]
  store i64 %cont7265, i64* %eptr12006                                               ; *eptr12006 = %cont7265
  store i64 %z1E$n, i64* %eptr12007                                                  ; *eptr12007 = %z1E$n
  store i64 %VqL$lst, i64* %eptr12008                                                ; *eptr12008 = %VqL$lst
  %eptr12005 = getelementptr inbounds i64, i64* %cloptr12004, i64 0                  ; &cloptr12004[0]
  %f12009 = ptrtoint void(i64,i64)* @lam11282 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12009, i64* %eptr12005                                                 ; store fptr
  %arg7689 = ptrtoint i64* %cloptr12004 to i64                                       ; closure cast; i64* -> i64
  %rva9053 = add i64 0, 0                                                            ; quoted ()
  %rva9052 = call i64 @prim_cons(i64 %arg7689, i64 %rva9053)                         ; call prim_cons
  %rva9051 = call i64 @prim_cons(i64 %arg7690, i64 %rva9052)                         ; call prim_cons
  %cloptr12010 = inttoptr i64 %arg7691 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12010)                                        ; assert function application
  %i0ptr12011 = getelementptr inbounds i64, i64* %cloptr12010, i64 0                 ; &cloptr12010[0]
  %f12013 = load i64, i64* %i0ptr12011, align 8                                      ; load; *i0ptr12011
  %fptr12012 = inttoptr i64 %f12013 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12012(i64 %arg7691, i64 %rva9051)                   ; tail call
  ret void
}


define void @lam11306(i64 %env11307, i64 %rvp8989) {
  %cont7272 = call i64 @prim_car(i64 %rvp8989)                                       ; call prim_car
  %rvp8987 = call i64 @prim_cdr(i64 %rvp8989)                                        ; call prim_cdr
  %rZX$u = call i64 @prim_car(i64 %rvp8987)                                          ; call prim_car
  %na8983 = call i64 @prim_cdr(i64 %rvp8987)                                         ; call prim_cdr
  %rva8986 = add i64 0, 0                                                            ; quoted ()
  %rva8985 = call i64 @prim_cons(i64 %rZX$u, i64 %rva8986)                           ; call prim_cons
  %rva8984 = call i64 @prim_cons(i64 %cont7272, i64 %rva8985)                        ; call prim_cons
  %cloptr12014 = inttoptr i64 %rZX$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12014)                                        ; assert function application
  %i0ptr12015 = getelementptr inbounds i64, i64* %cloptr12014, i64 0                 ; &cloptr12014[0]
  %f12017 = load i64, i64* %i0ptr12015, align 8                                      ; load; *i0ptr12015
  %fptr12016 = inttoptr i64 %f12017 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12016(i64 %rZX$u, i64 %rva8984)                     ; tail call
  ret void
}


define void @lam11303(i64 %env11304, i64 %rvp9019) {
  %envptr12018 = inttoptr i64 %env11304 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12019 = getelementptr inbounds i64, i64* %envptr12018, i64 3                ; &envptr12018[3]
  %VqL$lst = load i64, i64* %envptr12019, align 8                                    ; load; *envptr12019
  %envptr12020 = inttoptr i64 %env11304 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12021 = getelementptr inbounds i64, i64* %envptr12020, i64 2                ; &envptr12020[2]
  %z1E$n = load i64, i64* %envptr12021, align 8                                      ; load; *envptr12021
  %envptr12022 = inttoptr i64 %env11304 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12023 = getelementptr inbounds i64, i64* %envptr12022, i64 1                ; &envptr12022[1]
  %cont7265 = load i64, i64* %envptr12023, align 8                                   ; load; *envptr12023
  %_957266 = call i64 @prim_car(i64 %rvp9019)                                        ; call prim_car
  %rvp9017 = call i64 @prim_cdr(i64 %rvp9019)                                        ; call prim_cdr
  %b36$cc = call i64 @prim_car(i64 %rvp9017)                                         ; call prim_car
  %na8992 = call i64 @prim_cdr(i64 %rvp9017)                                         ; call prim_cdr
  %arg7695 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7111 = call i64 @prim_vector_45ref(i64 %z1E$n, i64 %arg7695)                     ; call prim_vector_45ref
  %arg7698 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7112 = call i64 @prim__61(i64 %arg7698, i64 %a7111)                              ; call prim__61
  %cmp12024 = icmp eq i64 %a7112, 15                                                 ; false?
  br i1 %cmp12024, label %else12026, label %then12025                                ; if

then12025:
  %arg7699 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7267 = call i64 @prim_vector_45ref(i64 %VqL$lst, i64 %arg7699)             ; call prim_vector_45ref
  %arg7702 = add i64 0, 0                                                            ; quoted ()
  %rva8995 = add i64 0, 0                                                            ; quoted ()
  %rva8994 = call i64 @prim_cons(i64 %retprim7267, i64 %rva8995)                     ; call prim_cons
  %rva8993 = call i64 @prim_cons(i64 %arg7702, i64 %rva8994)                         ; call prim_cons
  %cloptr12027 = inttoptr i64 %cont7265 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12027)                                        ; assert function application
  %i0ptr12028 = getelementptr inbounds i64, i64* %cloptr12027, i64 0                 ; &cloptr12027[0]
  %f12030 = load i64, i64* %i0ptr12028, align 8                                      ; load; *i0ptr12028
  %fptr12029 = inttoptr i64 %f12030 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12029(i64 %cont7265, i64 %rva8993)                  ; tail call
  ret void

else12026:
  %arg7704 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7113 = call i64 @prim_vector_45ref(i64 %VqL$lst, i64 %arg7704)                   ; call prim_vector_45ref
  %a7114 = call i64 @prim_cdr(i64 %a7113)                                            ; call prim_cdr
  %arg7708 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7271 = call i64 @prim_vector_45set_33(i64 %VqL$lst, i64 %arg7708, i64 %a7114); call prim_vector_45set_33
  %cloptr12031 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12033 = getelementptr inbounds i64, i64* %cloptr12031, i64 1                  ; &eptr12033[1]
  %eptr12034 = getelementptr inbounds i64, i64* %cloptr12031, i64 2                  ; &eptr12034[2]
  %eptr12035 = getelementptr inbounds i64, i64* %cloptr12031, i64 3                  ; &eptr12035[3]
  store i64 %cont7265, i64* %eptr12033                                               ; *eptr12033 = %cont7265
  store i64 %b36$cc, i64* %eptr12034                                                 ; *eptr12034 = %b36$cc
  store i64 %z1E$n, i64* %eptr12035                                                  ; *eptr12035 = %z1E$n
  %eptr12032 = getelementptr inbounds i64, i64* %cloptr12031, i64 0                  ; &cloptr12031[0]
  %f12036 = ptrtoint void(i64,i64)* @lam11297 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12036, i64* %eptr12032                                                 ; store fptr
  %arg7712 = ptrtoint i64* %cloptr12031 to i64                                       ; closure cast; i64* -> i64
  %arg7711 = add i64 0, 0                                                            ; quoted ()
  %rva9016 = add i64 0, 0                                                            ; quoted ()
  %rva9015 = call i64 @prim_cons(i64 %retprim7271, i64 %rva9016)                     ; call prim_cons
  %rva9014 = call i64 @prim_cons(i64 %arg7711, i64 %rva9015)                         ; call prim_cons
  %cloptr12037 = inttoptr i64 %arg7712 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12037)                                        ; assert function application
  %i0ptr12038 = getelementptr inbounds i64, i64* %cloptr12037, i64 0                 ; &cloptr12037[0]
  %f12040 = load i64, i64* %i0ptr12038, align 8                                      ; load; *i0ptr12038
  %fptr12039 = inttoptr i64 %f12040 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12039(i64 %arg7712, i64 %rva9014)                   ; tail call
  ret void
}


define void @lam11297(i64 %env11298, i64 %rvp9012) {
  %envptr12041 = inttoptr i64 %env11298 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12042 = getelementptr inbounds i64, i64* %envptr12041, i64 3                ; &envptr12041[3]
  %z1E$n = load i64, i64* %envptr12042, align 8                                      ; load; *envptr12042
  %envptr12043 = inttoptr i64 %env11298 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12044 = getelementptr inbounds i64, i64* %envptr12043, i64 2                ; &envptr12043[2]
  %b36$cc = load i64, i64* %envptr12044, align 8                                     ; load; *envptr12044
  %envptr12045 = inttoptr i64 %env11298 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12046 = getelementptr inbounds i64, i64* %envptr12045, i64 1                ; &envptr12045[1]
  %cont7265 = load i64, i64* %envptr12046, align 8                                   ; load; *envptr12046
  %_957268 = call i64 @prim_car(i64 %rvp9012)                                        ; call prim_car
  %rvp9010 = call i64 @prim_cdr(i64 %rvp9012)                                        ; call prim_cdr
  %uWx$_950 = call i64 @prim_car(i64 %rvp9010)                                       ; call prim_car
  %na8997 = call i64 @prim_cdr(i64 %rvp9010)                                         ; call prim_cdr
  %arg7713 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7115 = call i64 @prim_vector_45ref(i64 %z1E$n, i64 %arg7713)                     ; call prim_vector_45ref
  %arg7715 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7116 = call i64 @prim__45(i64 %a7115, i64 %arg7715)                              ; call prim__45
  %arg7718 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7270 = call i64 @prim_vector_45set_33(i64 %z1E$n, i64 %arg7718, i64 %a7116); call prim_vector_45set_33
  %cloptr12047 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12049 = getelementptr inbounds i64, i64* %cloptr12047, i64 1                  ; &eptr12049[1]
  %eptr12050 = getelementptr inbounds i64, i64* %cloptr12047, i64 2                  ; &eptr12050[2]
  store i64 %cont7265, i64* %eptr12049                                               ; *eptr12049 = %cont7265
  store i64 %b36$cc, i64* %eptr12050                                                 ; *eptr12050 = %b36$cc
  %eptr12048 = getelementptr inbounds i64, i64* %cloptr12047, i64 0                  ; &cloptr12047[0]
  %f12051 = ptrtoint void(i64,i64)* @lam11292 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12051, i64* %eptr12048                                                 ; store fptr
  %arg7722 = ptrtoint i64* %cloptr12047 to i64                                       ; closure cast; i64* -> i64
  %arg7721 = add i64 0, 0                                                            ; quoted ()
  %rva9009 = add i64 0, 0                                                            ; quoted ()
  %rva9008 = call i64 @prim_cons(i64 %retprim7270, i64 %rva9009)                     ; call prim_cons
  %rva9007 = call i64 @prim_cons(i64 %arg7721, i64 %rva9008)                         ; call prim_cons
  %cloptr12052 = inttoptr i64 %arg7722 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12052)                                        ; assert function application
  %i0ptr12053 = getelementptr inbounds i64, i64* %cloptr12052, i64 0                 ; &cloptr12052[0]
  %f12055 = load i64, i64* %i0ptr12053, align 8                                      ; load; *i0ptr12053
  %fptr12054 = inttoptr i64 %f12055 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12054(i64 %arg7722, i64 %rva9007)                   ; tail call
  ret void
}


define void @lam11292(i64 %env11293, i64 %rvp9005) {
  %envptr12056 = inttoptr i64 %env11293 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12057 = getelementptr inbounds i64, i64* %envptr12056, i64 2                ; &envptr12056[2]
  %b36$cc = load i64, i64* %envptr12057, align 8                                     ; load; *envptr12057
  %envptr12058 = inttoptr i64 %env11293 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12059 = getelementptr inbounds i64, i64* %envptr12058, i64 1                ; &envptr12058[1]
  %cont7265 = load i64, i64* %envptr12059, align 8                                   ; load; *envptr12059
  %_957269 = call i64 @prim_car(i64 %rvp9005)                                        ; call prim_car
  %rvp9003 = call i64 @prim_cdr(i64 %rvp9005)                                        ; call prim_cdr
  %aBb$_951 = call i64 @prim_car(i64 %rvp9003)                                       ; call prim_car
  %na8999 = call i64 @prim_cdr(i64 %rvp9003)                                         ; call prim_cdr
  %rva9002 = add i64 0, 0                                                            ; quoted ()
  %rva9001 = call i64 @prim_cons(i64 %b36$cc, i64 %rva9002)                          ; call prim_cons
  %rva9000 = call i64 @prim_cons(i64 %cont7265, i64 %rva9001)                        ; call prim_cons
  %cloptr12060 = inttoptr i64 %b36$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12060)                                        ; assert function application
  %i0ptr12061 = getelementptr inbounds i64, i64* %cloptr12060, i64 0                 ; &cloptr12060[0]
  %f12063 = load i64, i64* %i0ptr12061, align 8                                      ; load; *i0ptr12061
  %fptr12062 = inttoptr i64 %f12063 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12062(i64 %b36$cc, i64 %rva9000)                    ; tail call
  ret void
}


define void @lam11282(i64 %env11283, i64 %rvp9049) {
  %envptr12064 = inttoptr i64 %env11283 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12065 = getelementptr inbounds i64, i64* %envptr12064, i64 3                ; &envptr12064[3]
  %VqL$lst = load i64, i64* %envptr12065, align 8                                    ; load; *envptr12065
  %envptr12066 = inttoptr i64 %env11283 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12067 = getelementptr inbounds i64, i64* %envptr12066, i64 2                ; &envptr12066[2]
  %z1E$n = load i64, i64* %envptr12067, align 8                                      ; load; *envptr12067
  %envptr12068 = inttoptr i64 %env11283 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12069 = getelementptr inbounds i64, i64* %envptr12068, i64 1                ; &envptr12068[1]
  %cont7265 = load i64, i64* %envptr12069, align 8                                   ; load; *envptr12069
  %_957266 = call i64 @prim_car(i64 %rvp9049)                                        ; call prim_car
  %rvp9047 = call i64 @prim_cdr(i64 %rvp9049)                                        ; call prim_cdr
  %b36$cc = call i64 @prim_car(i64 %rvp9047)                                         ; call prim_car
  %na9022 = call i64 @prim_cdr(i64 %rvp9047)                                         ; call prim_cdr
  %arg7726 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7111 = call i64 @prim_vector_45ref(i64 %z1E$n, i64 %arg7726)                     ; call prim_vector_45ref
  %arg7729 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7112 = call i64 @prim__61(i64 %arg7729, i64 %a7111)                              ; call prim__61
  %cmp12070 = icmp eq i64 %a7112, 15                                                 ; false?
  br i1 %cmp12070, label %else12072, label %then12071                                ; if

then12071:
  %arg7730 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7267 = call i64 @prim_vector_45ref(i64 %VqL$lst, i64 %arg7730)             ; call prim_vector_45ref
  %arg7733 = add i64 0, 0                                                            ; quoted ()
  %rva9025 = add i64 0, 0                                                            ; quoted ()
  %rva9024 = call i64 @prim_cons(i64 %retprim7267, i64 %rva9025)                     ; call prim_cons
  %rva9023 = call i64 @prim_cons(i64 %arg7733, i64 %rva9024)                         ; call prim_cons
  %cloptr12073 = inttoptr i64 %cont7265 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12073)                                        ; assert function application
  %i0ptr12074 = getelementptr inbounds i64, i64* %cloptr12073, i64 0                 ; &cloptr12073[0]
  %f12076 = load i64, i64* %i0ptr12074, align 8                                      ; load; *i0ptr12074
  %fptr12075 = inttoptr i64 %f12076 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12075(i64 %cont7265, i64 %rva9023)                  ; tail call
  ret void

else12072:
  %arg7735 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7113 = call i64 @prim_vector_45ref(i64 %VqL$lst, i64 %arg7735)                   ; call prim_vector_45ref
  %a7114 = call i64 @prim_cdr(i64 %a7113)                                            ; call prim_cdr
  %arg7739 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7271 = call i64 @prim_vector_45set_33(i64 %VqL$lst, i64 %arg7739, i64 %a7114); call prim_vector_45set_33
  %cloptr12077 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12079 = getelementptr inbounds i64, i64* %cloptr12077, i64 1                  ; &eptr12079[1]
  %eptr12080 = getelementptr inbounds i64, i64* %cloptr12077, i64 2                  ; &eptr12080[2]
  %eptr12081 = getelementptr inbounds i64, i64* %cloptr12077, i64 3                  ; &eptr12081[3]
  store i64 %cont7265, i64* %eptr12079                                               ; *eptr12079 = %cont7265
  store i64 %b36$cc, i64* %eptr12080                                                 ; *eptr12080 = %b36$cc
  store i64 %z1E$n, i64* %eptr12081                                                  ; *eptr12081 = %z1E$n
  %eptr12078 = getelementptr inbounds i64, i64* %cloptr12077, i64 0                  ; &cloptr12077[0]
  %f12082 = ptrtoint void(i64,i64)* @lam11276 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12082, i64* %eptr12078                                                 ; store fptr
  %arg7743 = ptrtoint i64* %cloptr12077 to i64                                       ; closure cast; i64* -> i64
  %arg7742 = add i64 0, 0                                                            ; quoted ()
  %rva9046 = add i64 0, 0                                                            ; quoted ()
  %rva9045 = call i64 @prim_cons(i64 %retprim7271, i64 %rva9046)                     ; call prim_cons
  %rva9044 = call i64 @prim_cons(i64 %arg7742, i64 %rva9045)                         ; call prim_cons
  %cloptr12083 = inttoptr i64 %arg7743 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12083)                                        ; assert function application
  %i0ptr12084 = getelementptr inbounds i64, i64* %cloptr12083, i64 0                 ; &cloptr12083[0]
  %f12086 = load i64, i64* %i0ptr12084, align 8                                      ; load; *i0ptr12084
  %fptr12085 = inttoptr i64 %f12086 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12085(i64 %arg7743, i64 %rva9044)                   ; tail call
  ret void
}


define void @lam11276(i64 %env11277, i64 %rvp9042) {
  %envptr12087 = inttoptr i64 %env11277 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12088 = getelementptr inbounds i64, i64* %envptr12087, i64 3                ; &envptr12087[3]
  %z1E$n = load i64, i64* %envptr12088, align 8                                      ; load; *envptr12088
  %envptr12089 = inttoptr i64 %env11277 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12090 = getelementptr inbounds i64, i64* %envptr12089, i64 2                ; &envptr12089[2]
  %b36$cc = load i64, i64* %envptr12090, align 8                                     ; load; *envptr12090
  %envptr12091 = inttoptr i64 %env11277 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12092 = getelementptr inbounds i64, i64* %envptr12091, i64 1                ; &envptr12091[1]
  %cont7265 = load i64, i64* %envptr12092, align 8                                   ; load; *envptr12092
  %_957268 = call i64 @prim_car(i64 %rvp9042)                                        ; call prim_car
  %rvp9040 = call i64 @prim_cdr(i64 %rvp9042)                                        ; call prim_cdr
  %uWx$_950 = call i64 @prim_car(i64 %rvp9040)                                       ; call prim_car
  %na9027 = call i64 @prim_cdr(i64 %rvp9040)                                         ; call prim_cdr
  %arg7744 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7115 = call i64 @prim_vector_45ref(i64 %z1E$n, i64 %arg7744)                     ; call prim_vector_45ref
  %arg7746 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7116 = call i64 @prim__45(i64 %a7115, i64 %arg7746)                              ; call prim__45
  %arg7749 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7270 = call i64 @prim_vector_45set_33(i64 %z1E$n, i64 %arg7749, i64 %a7116); call prim_vector_45set_33
  %cloptr12093 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12095 = getelementptr inbounds i64, i64* %cloptr12093, i64 1                  ; &eptr12095[1]
  %eptr12096 = getelementptr inbounds i64, i64* %cloptr12093, i64 2                  ; &eptr12096[2]
  store i64 %cont7265, i64* %eptr12095                                               ; *eptr12095 = %cont7265
  store i64 %b36$cc, i64* %eptr12096                                                 ; *eptr12096 = %b36$cc
  %eptr12094 = getelementptr inbounds i64, i64* %cloptr12093, i64 0                  ; &cloptr12093[0]
  %f12097 = ptrtoint void(i64,i64)* @lam11271 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12097, i64* %eptr12094                                                 ; store fptr
  %arg7753 = ptrtoint i64* %cloptr12093 to i64                                       ; closure cast; i64* -> i64
  %arg7752 = add i64 0, 0                                                            ; quoted ()
  %rva9039 = add i64 0, 0                                                            ; quoted ()
  %rva9038 = call i64 @prim_cons(i64 %retprim7270, i64 %rva9039)                     ; call prim_cons
  %rva9037 = call i64 @prim_cons(i64 %arg7752, i64 %rva9038)                         ; call prim_cons
  %cloptr12098 = inttoptr i64 %arg7753 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12098)                                        ; assert function application
  %i0ptr12099 = getelementptr inbounds i64, i64* %cloptr12098, i64 0                 ; &cloptr12098[0]
  %f12101 = load i64, i64* %i0ptr12099, align 8                                      ; load; *i0ptr12099
  %fptr12100 = inttoptr i64 %f12101 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12100(i64 %arg7753, i64 %rva9037)                   ; tail call
  ret void
}


define void @lam11271(i64 %env11272, i64 %rvp9035) {
  %envptr12102 = inttoptr i64 %env11272 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12103 = getelementptr inbounds i64, i64* %envptr12102, i64 2                ; &envptr12102[2]
  %b36$cc = load i64, i64* %envptr12103, align 8                                     ; load; *envptr12103
  %envptr12104 = inttoptr i64 %env11272 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12105 = getelementptr inbounds i64, i64* %envptr12104, i64 1                ; &envptr12104[1]
  %cont7265 = load i64, i64* %envptr12105, align 8                                   ; load; *envptr12105
  %_957269 = call i64 @prim_car(i64 %rvp9035)                                        ; call prim_car
  %rvp9033 = call i64 @prim_cdr(i64 %rvp9035)                                        ; call prim_cdr
  %aBb$_951 = call i64 @prim_car(i64 %rvp9033)                                       ; call prim_car
  %na9029 = call i64 @prim_cdr(i64 %rvp9033)                                         ; call prim_cdr
  %rva9032 = add i64 0, 0                                                            ; quoted ()
  %rva9031 = call i64 @prim_cons(i64 %b36$cc, i64 %rva9032)                          ; call prim_cons
  %rva9030 = call i64 @prim_cons(i64 %cont7265, i64 %rva9031)                        ; call prim_cons
  %cloptr12106 = inttoptr i64 %b36$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12106)                                        ; assert function application
  %i0ptr12107 = getelementptr inbounds i64, i64* %cloptr12106, i64 0                 ; &cloptr12106[0]
  %f12109 = load i64, i64* %i0ptr12107, align 8                                      ; load; *i0ptr12107
  %fptr12108 = inttoptr i64 %f12109 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12108(i64 %b36$cc, i64 %rva9030)                    ; tail call
  ret void
}


define void @lam11260(i64 %env11261, i64 %rvp9126) {
  %cont7273 = call i64 @prim_car(i64 %rvp9126)                                       ; call prim_car
  %rvp9124 = call i64 @prim_cdr(i64 %rvp9126)                                        ; call prim_cdr
  %xUk$v = call i64 @prim_car(i64 %rvp9124)                                          ; call prim_car
  %rvp9122 = call i64 @prim_cdr(i64 %rvp9124)                                        ; call prim_cdr
  %PUV$lst = call i64 @prim_car(i64 %rvp9122)                                        ; call prim_car
  %na9061 = call i64 @prim_cdr(i64 %rvp9122)                                         ; call prim_cdr
  %arg7758 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %EgC$lst = call i64 @prim_make_45vector(i64 %arg7758, i64 %PUV$lst)                ; call prim_make_45vector
  %cloptr12110 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12111 = getelementptr inbounds i64, i64* %cloptr12110, i64 0                  ; &cloptr12110[0]
  %f12112 = ptrtoint void(i64,i64)* @lam11257 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12112, i64* %eptr12111                                                 ; store fptr
  %arg7761 = ptrtoint i64* %cloptr12110 to i64                                       ; closure cast; i64* -> i64
  %cloptr12113 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12115 = getelementptr inbounds i64, i64* %cloptr12113, i64 1                  ; &eptr12115[1]
  %eptr12116 = getelementptr inbounds i64, i64* %cloptr12113, i64 2                  ; &eptr12116[2]
  %eptr12117 = getelementptr inbounds i64, i64* %cloptr12113, i64 3                  ; &eptr12117[3]
  store i64 %xUk$v, i64* %eptr12115                                                  ; *eptr12115 = %xUk$v
  store i64 %EgC$lst, i64* %eptr12116                                                ; *eptr12116 = %EgC$lst
  store i64 %cont7273, i64* %eptr12117                                               ; *eptr12117 = %cont7273
  %eptr12114 = getelementptr inbounds i64, i64* %cloptr12113, i64 0                  ; &cloptr12113[0]
  %f12118 = ptrtoint void(i64,i64)* @lam11254 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12118, i64* %eptr12114                                                 ; store fptr
  %arg7760 = ptrtoint i64* %cloptr12113 to i64                                       ; closure cast; i64* -> i64
  %cloptr12119 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12121 = getelementptr inbounds i64, i64* %cloptr12119, i64 1                  ; &eptr12121[1]
  %eptr12122 = getelementptr inbounds i64, i64* %cloptr12119, i64 2                  ; &eptr12122[2]
  %eptr12123 = getelementptr inbounds i64, i64* %cloptr12119, i64 3                  ; &eptr12123[3]
  store i64 %xUk$v, i64* %eptr12121                                                  ; *eptr12121 = %xUk$v
  store i64 %EgC$lst, i64* %eptr12122                                                ; *eptr12122 = %EgC$lst
  store i64 %cont7273, i64* %eptr12123                                               ; *eptr12123 = %cont7273
  %eptr12120 = getelementptr inbounds i64, i64* %cloptr12119, i64 0                  ; &cloptr12119[0]
  %f12124 = ptrtoint void(i64,i64)* @lam11237 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12124, i64* %eptr12120                                                 ; store fptr
  %arg7759 = ptrtoint i64* %cloptr12119 to i64                                       ; closure cast; i64* -> i64
  %rva9121 = add i64 0, 0                                                            ; quoted ()
  %rva9120 = call i64 @prim_cons(i64 %arg7759, i64 %rva9121)                         ; call prim_cons
  %rva9119 = call i64 @prim_cons(i64 %arg7760, i64 %rva9120)                         ; call prim_cons
  %cloptr12125 = inttoptr i64 %arg7761 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12125)                                        ; assert function application
  %i0ptr12126 = getelementptr inbounds i64, i64* %cloptr12125, i64 0                 ; &cloptr12125[0]
  %f12128 = load i64, i64* %i0ptr12126, align 8                                      ; load; *i0ptr12126
  %fptr12127 = inttoptr i64 %f12128 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12127(i64 %arg7761, i64 %rva9119)                   ; tail call
  ret void
}


define void @lam11257(i64 %env11258, i64 %rvp9069) {
  %cont7278 = call i64 @prim_car(i64 %rvp9069)                                       ; call prim_car
  %rvp9067 = call i64 @prim_cdr(i64 %rvp9069)                                        ; call prim_cdr
  %k6N$u = call i64 @prim_car(i64 %rvp9067)                                          ; call prim_car
  %na9063 = call i64 @prim_cdr(i64 %rvp9067)                                         ; call prim_cdr
  %rva9066 = add i64 0, 0                                                            ; quoted ()
  %rva9065 = call i64 @prim_cons(i64 %k6N$u, i64 %rva9066)                           ; call prim_cons
  %rva9064 = call i64 @prim_cons(i64 %cont7278, i64 %rva9065)                        ; call prim_cons
  %cloptr12129 = inttoptr i64 %k6N$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12129)                                        ; assert function application
  %i0ptr12130 = getelementptr inbounds i64, i64* %cloptr12129, i64 0                 ; &cloptr12129[0]
  %f12132 = load i64, i64* %i0ptr12130, align 8                                      ; load; *i0ptr12130
  %fptr12131 = inttoptr i64 %f12132 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12131(i64 %k6N$u, i64 %rva9064)                     ; tail call
  ret void
}


define void @lam11254(i64 %env11255, i64 %rvp9093) {
  %envptr12133 = inttoptr i64 %env11255 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12134 = getelementptr inbounds i64, i64* %envptr12133, i64 3                ; &envptr12133[3]
  %cont7273 = load i64, i64* %envptr12134, align 8                                   ; load; *envptr12134
  %envptr12135 = inttoptr i64 %env11255 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12136 = getelementptr inbounds i64, i64* %envptr12135, i64 2                ; &envptr12135[2]
  %EgC$lst = load i64, i64* %envptr12136, align 8                                    ; load; *envptr12136
  %envptr12137 = inttoptr i64 %env11255 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12138 = getelementptr inbounds i64, i64* %envptr12137, i64 1                ; &envptr12137[1]
  %xUk$v = load i64, i64* %envptr12138, align 8                                      ; load; *envptr12138
  %_957274 = call i64 @prim_car(i64 %rvp9093)                                        ; call prim_car
  %rvp9091 = call i64 @prim_cdr(i64 %rvp9093)                                        ; call prim_cdr
  %CX2$cc = call i64 @prim_car(i64 %rvp9091)                                         ; call prim_car
  %na9072 = call i64 @prim_cdr(i64 %rvp9091)                                         ; call prim_cdr
  %arg7765 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7117 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7765)                   ; call prim_vector_45ref
  %a7118 = call i64 @prim_null_63(i64 %a7117)                                        ; call prim_null_63
  %cmp12139 = icmp eq i64 %a7118, 15                                                 ; false?
  br i1 %cmp12139, label %else12141, label %then12140                                ; if

then12140:
  %arg7769 = add i64 0, 0                                                            ; quoted ()
  %arg7768 = call i64 @const_init_false()                                            ; quoted #f
  %rva9075 = add i64 0, 0                                                            ; quoted ()
  %rva9074 = call i64 @prim_cons(i64 %arg7768, i64 %rva9075)                         ; call prim_cons
  %rva9073 = call i64 @prim_cons(i64 %arg7769, i64 %rva9074)                         ; call prim_cons
  %cloptr12142 = inttoptr i64 %cont7273 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12142)                                        ; assert function application
  %i0ptr12143 = getelementptr inbounds i64, i64* %cloptr12142, i64 0                 ; &cloptr12142[0]
  %f12145 = load i64, i64* %i0ptr12143, align 8                                      ; load; *i0ptr12143
  %fptr12144 = inttoptr i64 %f12145 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12144(i64 %cont7273, i64 %rva9073)                  ; tail call
  ret void

else12141:
  %arg7771 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7119 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7771)                   ; call prim_vector_45ref
  %a7120 = call i64 @prim_car(i64 %a7119)                                            ; call prim_car
  %a7121 = call i64 @prim_eqv_63(i64 %a7120, i64 %xUk$v)                             ; call prim_eqv_63
  %cmp12146 = icmp eq i64 %a7121, 15                                                 ; false?
  br i1 %cmp12146, label %else12148, label %then12147                                ; if

then12147:
  %arg7776 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7275 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7776)             ; call prim_vector_45ref
  %arg7779 = add i64 0, 0                                                            ; quoted ()
  %rva9078 = add i64 0, 0                                                            ; quoted ()
  %rva9077 = call i64 @prim_cons(i64 %retprim7275, i64 %rva9078)                     ; call prim_cons
  %rva9076 = call i64 @prim_cons(i64 %arg7779, i64 %rva9077)                         ; call prim_cons
  %cloptr12149 = inttoptr i64 %cont7273 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12149)                                        ; assert function application
  %i0ptr12150 = getelementptr inbounds i64, i64* %cloptr12149, i64 0                 ; &cloptr12149[0]
  %f12152 = load i64, i64* %i0ptr12150, align 8                                      ; load; *i0ptr12150
  %fptr12151 = inttoptr i64 %f12152 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12151(i64 %cont7273, i64 %rva9076)                  ; tail call
  ret void

else12148:
  %arg7781 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7122 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7781)                   ; call prim_vector_45ref
  %a7123 = call i64 @prim_cdr(i64 %a7122)                                            ; call prim_cdr
  %arg7785 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7277 = call i64 @prim_vector_45set_33(i64 %EgC$lst, i64 %arg7785, i64 %a7123); call prim_vector_45set_33
  %cloptr12153 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12155 = getelementptr inbounds i64, i64* %cloptr12153, i64 1                  ; &eptr12155[1]
  %eptr12156 = getelementptr inbounds i64, i64* %cloptr12153, i64 2                  ; &eptr12156[2]
  store i64 %CX2$cc, i64* %eptr12155                                                 ; *eptr12155 = %CX2$cc
  store i64 %cont7273, i64* %eptr12156                                               ; *eptr12156 = %cont7273
  %eptr12154 = getelementptr inbounds i64, i64* %cloptr12153, i64 0                  ; &cloptr12153[0]
  %f12157 = ptrtoint void(i64,i64)* @lam11248 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12157, i64* %eptr12154                                                 ; store fptr
  %arg7789 = ptrtoint i64* %cloptr12153 to i64                                       ; closure cast; i64* -> i64
  %arg7788 = add i64 0, 0                                                            ; quoted ()
  %rva9090 = add i64 0, 0                                                            ; quoted ()
  %rva9089 = call i64 @prim_cons(i64 %retprim7277, i64 %rva9090)                     ; call prim_cons
  %rva9088 = call i64 @prim_cons(i64 %arg7788, i64 %rva9089)                         ; call prim_cons
  %cloptr12158 = inttoptr i64 %arg7789 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12158)                                        ; assert function application
  %i0ptr12159 = getelementptr inbounds i64, i64* %cloptr12158, i64 0                 ; &cloptr12158[0]
  %f12161 = load i64, i64* %i0ptr12159, align 8                                      ; load; *i0ptr12159
  %fptr12160 = inttoptr i64 %f12161 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12160(i64 %arg7789, i64 %rva9088)                   ; tail call
  ret void
}


define void @lam11248(i64 %env11249, i64 %rvp9086) {
  %envptr12162 = inttoptr i64 %env11249 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12163 = getelementptr inbounds i64, i64* %envptr12162, i64 2                ; &envptr12162[2]
  %cont7273 = load i64, i64* %envptr12163, align 8                                   ; load; *envptr12163
  %envptr12164 = inttoptr i64 %env11249 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12165 = getelementptr inbounds i64, i64* %envptr12164, i64 1                ; &envptr12164[1]
  %CX2$cc = load i64, i64* %envptr12165, align 8                                     ; load; *envptr12165
  %_957276 = call i64 @prim_car(i64 %rvp9086)                                        ; call prim_car
  %rvp9084 = call i64 @prim_cdr(i64 %rvp9086)                                        ; call prim_cdr
  %WEv$_950 = call i64 @prim_car(i64 %rvp9084)                                       ; call prim_car
  %na9080 = call i64 @prim_cdr(i64 %rvp9084)                                         ; call prim_cdr
  %rva9083 = add i64 0, 0                                                            ; quoted ()
  %rva9082 = call i64 @prim_cons(i64 %CX2$cc, i64 %rva9083)                          ; call prim_cons
  %rva9081 = call i64 @prim_cons(i64 %cont7273, i64 %rva9082)                        ; call prim_cons
  %cloptr12166 = inttoptr i64 %CX2$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12166)                                        ; assert function application
  %i0ptr12167 = getelementptr inbounds i64, i64* %cloptr12166, i64 0                 ; &cloptr12166[0]
  %f12169 = load i64, i64* %i0ptr12167, align 8                                      ; load; *i0ptr12167
  %fptr12168 = inttoptr i64 %f12169 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12168(i64 %CX2$cc, i64 %rva9081)                    ; tail call
  ret void
}


define void @lam11237(i64 %env11238, i64 %rvp9117) {
  %envptr12170 = inttoptr i64 %env11238 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12171 = getelementptr inbounds i64, i64* %envptr12170, i64 3                ; &envptr12170[3]
  %cont7273 = load i64, i64* %envptr12171, align 8                                   ; load; *envptr12171
  %envptr12172 = inttoptr i64 %env11238 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12173 = getelementptr inbounds i64, i64* %envptr12172, i64 2                ; &envptr12172[2]
  %EgC$lst = load i64, i64* %envptr12173, align 8                                    ; load; *envptr12173
  %envptr12174 = inttoptr i64 %env11238 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12175 = getelementptr inbounds i64, i64* %envptr12174, i64 1                ; &envptr12174[1]
  %xUk$v = load i64, i64* %envptr12175, align 8                                      ; load; *envptr12175
  %_957274 = call i64 @prim_car(i64 %rvp9117)                                        ; call prim_car
  %rvp9115 = call i64 @prim_cdr(i64 %rvp9117)                                        ; call prim_cdr
  %CX2$cc = call i64 @prim_car(i64 %rvp9115)                                         ; call prim_car
  %na9096 = call i64 @prim_cdr(i64 %rvp9115)                                         ; call prim_cdr
  %arg7793 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7117 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7793)                   ; call prim_vector_45ref
  %a7118 = call i64 @prim_null_63(i64 %a7117)                                        ; call prim_null_63
  %cmp12176 = icmp eq i64 %a7118, 15                                                 ; false?
  br i1 %cmp12176, label %else12178, label %then12177                                ; if

then12177:
  %arg7797 = add i64 0, 0                                                            ; quoted ()
  %arg7796 = call i64 @const_init_false()                                            ; quoted #f
  %rva9099 = add i64 0, 0                                                            ; quoted ()
  %rva9098 = call i64 @prim_cons(i64 %arg7796, i64 %rva9099)                         ; call prim_cons
  %rva9097 = call i64 @prim_cons(i64 %arg7797, i64 %rva9098)                         ; call prim_cons
  %cloptr12179 = inttoptr i64 %cont7273 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12179)                                        ; assert function application
  %i0ptr12180 = getelementptr inbounds i64, i64* %cloptr12179, i64 0                 ; &cloptr12179[0]
  %f12182 = load i64, i64* %i0ptr12180, align 8                                      ; load; *i0ptr12180
  %fptr12181 = inttoptr i64 %f12182 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12181(i64 %cont7273, i64 %rva9097)                  ; tail call
  ret void

else12178:
  %arg7799 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7119 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7799)                   ; call prim_vector_45ref
  %a7120 = call i64 @prim_car(i64 %a7119)                                            ; call prim_car
  %a7121 = call i64 @prim_eqv_63(i64 %a7120, i64 %xUk$v)                             ; call prim_eqv_63
  %cmp12183 = icmp eq i64 %a7121, 15                                                 ; false?
  br i1 %cmp12183, label %else12185, label %then12184                                ; if

then12184:
  %arg7804 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7275 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7804)             ; call prim_vector_45ref
  %arg7807 = add i64 0, 0                                                            ; quoted ()
  %rva9102 = add i64 0, 0                                                            ; quoted ()
  %rva9101 = call i64 @prim_cons(i64 %retprim7275, i64 %rva9102)                     ; call prim_cons
  %rva9100 = call i64 @prim_cons(i64 %arg7807, i64 %rva9101)                         ; call prim_cons
  %cloptr12186 = inttoptr i64 %cont7273 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12186)                                        ; assert function application
  %i0ptr12187 = getelementptr inbounds i64, i64* %cloptr12186, i64 0                 ; &cloptr12186[0]
  %f12189 = load i64, i64* %i0ptr12187, align 8                                      ; load; *i0ptr12187
  %fptr12188 = inttoptr i64 %f12189 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12188(i64 %cont7273, i64 %rva9100)                  ; tail call
  ret void

else12185:
  %arg7809 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7122 = call i64 @prim_vector_45ref(i64 %EgC$lst, i64 %arg7809)                   ; call prim_vector_45ref
  %a7123 = call i64 @prim_cdr(i64 %a7122)                                            ; call prim_cdr
  %arg7813 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7277 = call i64 @prim_vector_45set_33(i64 %EgC$lst, i64 %arg7813, i64 %a7123); call prim_vector_45set_33
  %cloptr12190 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12192 = getelementptr inbounds i64, i64* %cloptr12190, i64 1                  ; &eptr12192[1]
  %eptr12193 = getelementptr inbounds i64, i64* %cloptr12190, i64 2                  ; &eptr12193[2]
  store i64 %CX2$cc, i64* %eptr12192                                                 ; *eptr12192 = %CX2$cc
  store i64 %cont7273, i64* %eptr12193                                               ; *eptr12193 = %cont7273
  %eptr12191 = getelementptr inbounds i64, i64* %cloptr12190, i64 0                  ; &cloptr12190[0]
  %f12194 = ptrtoint void(i64,i64)* @lam11231 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12194, i64* %eptr12191                                                 ; store fptr
  %arg7817 = ptrtoint i64* %cloptr12190 to i64                                       ; closure cast; i64* -> i64
  %arg7816 = add i64 0, 0                                                            ; quoted ()
  %rva9114 = add i64 0, 0                                                            ; quoted ()
  %rva9113 = call i64 @prim_cons(i64 %retprim7277, i64 %rva9114)                     ; call prim_cons
  %rva9112 = call i64 @prim_cons(i64 %arg7816, i64 %rva9113)                         ; call prim_cons
  %cloptr12195 = inttoptr i64 %arg7817 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12195)                                        ; assert function application
  %i0ptr12196 = getelementptr inbounds i64, i64* %cloptr12195, i64 0                 ; &cloptr12195[0]
  %f12198 = load i64, i64* %i0ptr12196, align 8                                      ; load; *i0ptr12196
  %fptr12197 = inttoptr i64 %f12198 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12197(i64 %arg7817, i64 %rva9112)                   ; tail call
  ret void
}


define void @lam11231(i64 %env11232, i64 %rvp9110) {
  %envptr12199 = inttoptr i64 %env11232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12200 = getelementptr inbounds i64, i64* %envptr12199, i64 2                ; &envptr12199[2]
  %cont7273 = load i64, i64* %envptr12200, align 8                                   ; load; *envptr12200
  %envptr12201 = inttoptr i64 %env11232 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12202 = getelementptr inbounds i64, i64* %envptr12201, i64 1                ; &envptr12201[1]
  %CX2$cc = load i64, i64* %envptr12202, align 8                                     ; load; *envptr12202
  %_957276 = call i64 @prim_car(i64 %rvp9110)                                        ; call prim_car
  %rvp9108 = call i64 @prim_cdr(i64 %rvp9110)                                        ; call prim_cdr
  %WEv$_950 = call i64 @prim_car(i64 %rvp9108)                                       ; call prim_car
  %na9104 = call i64 @prim_cdr(i64 %rvp9108)                                         ; call prim_cdr
  %rva9107 = add i64 0, 0                                                            ; quoted ()
  %rva9106 = call i64 @prim_cons(i64 %CX2$cc, i64 %rva9107)                          ; call prim_cons
  %rva9105 = call i64 @prim_cons(i64 %cont7273, i64 %rva9106)                        ; call prim_cons
  %cloptr12203 = inttoptr i64 %CX2$cc to i64*                                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12203)                                        ; assert function application
  %i0ptr12204 = getelementptr inbounds i64, i64* %cloptr12203, i64 0                 ; &cloptr12203[0]
  %f12206 = load i64, i64* %i0ptr12204, align 8                                      ; load; *i0ptr12204
  %fptr12205 = inttoptr i64 %f12206 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12205(i64 %CX2$cc, i64 %rva9105)                    ; tail call
  ret void
}


define void @lam11219(i64 %env11220, i64 %sr2$args7280) {
  %envptr12207 = inttoptr i64 %env11220 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12208 = getelementptr inbounds i64, i64* %envptr12207, i64 1                ; &envptr12207[1]
  %B59$_37foldl1 = load i64, i64* %envptr12208, align 8                              ; load; *envptr12208
  %cont7279 = call i64 @prim_car(i64 %sr2$args7280)                                  ; call prim_car
  %sr2$args = call i64 @prim_cdr(i64 %sr2$args7280)                                  ; call prim_cdr
  %a7124 = call i64 @prim_null_63(i64 %sr2$args)                                     ; call prim_null_63
  %cmp12209 = icmp eq i64 %a7124, 15                                                 ; false?
  br i1 %cmp12209, label %else12211, label %then12210                                ; if

then12210:
  %arg7825 = add i64 0, 0                                                            ; quoted ()
  %arg7824 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %rva9130 = add i64 0, 0                                                            ; quoted ()
  %rva9129 = call i64 @prim_cons(i64 %arg7824, i64 %rva9130)                         ; call prim_cons
  %rva9128 = call i64 @prim_cons(i64 %arg7825, i64 %rva9129)                         ; call prim_cons
  %cloptr12212 = inttoptr i64 %cont7279 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12212)                                        ; assert function application
  %i0ptr12213 = getelementptr inbounds i64, i64* %cloptr12212, i64 0                 ; &cloptr12212[0]
  %f12215 = load i64, i64* %i0ptr12213, align 8                                      ; load; *i0ptr12213
  %fptr12214 = inttoptr i64 %f12215 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12214(i64 %cont7279, i64 %rva9128)                  ; tail call
  ret void

else12211:
  %a7125 = call i64 @prim_cdr(i64 %sr2$args)                                         ; call prim_cdr
  %a7126 = call i64 @prim_null_63(i64 %a7125)                                        ; call prim_null_63
  %cmp12216 = icmp eq i64 %a7126, 15                                                 ; false?
  br i1 %cmp12216, label %else12218, label %then12217                                ; if

then12217:
  %retprim7281 = call i64 @prim_car(i64 %sr2$args)                                   ; call prim_car
  %arg7831 = add i64 0, 0                                                            ; quoted ()
  %rva9133 = add i64 0, 0                                                            ; quoted ()
  %rva9132 = call i64 @prim_cons(i64 %retprim7281, i64 %rva9133)                     ; call prim_cons
  %rva9131 = call i64 @prim_cons(i64 %arg7831, i64 %rva9132)                         ; call prim_cons
  %cloptr12219 = inttoptr i64 %cont7279 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12219)                                        ; assert function application
  %i0ptr12220 = getelementptr inbounds i64, i64* %cloptr12219, i64 0                 ; &cloptr12219[0]
  %f12222 = load i64, i64* %i0ptr12220, align 8                                      ; load; *i0ptr12220
  %fptr12221 = inttoptr i64 %f12222 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12221(i64 %cont7279, i64 %rva9131)                  ; tail call
  ret void

else12218:
  %a7127 = call i64 @prim_car(i64 %sr2$args)                                         ; call prim_car
  %a7128 = call i64 @prim_cdr(i64 %sr2$args)                                         ; call prim_cdr
  %cloptr12223 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12224 = getelementptr inbounds i64, i64* %cloptr12223, i64 0                  ; &cloptr12223[0]
  %f12225 = ptrtoint void(i64,i64)* @lam11217 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12225, i64* %eptr12224                                                 ; store fptr
  %arg7837 = ptrtoint i64* %cloptr12223 to i64                                       ; closure cast; i64* -> i64
  %rva9149 = add i64 0, 0                                                            ; quoted ()
  %rva9148 = call i64 @prim_cons(i64 %a7128, i64 %rva9149)                           ; call prim_cons
  %rva9147 = call i64 @prim_cons(i64 %a7127, i64 %rva9148)                           ; call prim_cons
  %rva9146 = call i64 @prim_cons(i64 %arg7837, i64 %rva9147)                         ; call prim_cons
  %rva9145 = call i64 @prim_cons(i64 %cont7279, i64 %rva9146)                        ; call prim_cons
  %cloptr12226 = inttoptr i64 %B59$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12226)                                        ; assert function application
  %i0ptr12227 = getelementptr inbounds i64, i64* %cloptr12226, i64 0                 ; &cloptr12226[0]
  %f12229 = load i64, i64* %i0ptr12227, align 8                                      ; load; *i0ptr12227
  %fptr12228 = inttoptr i64 %f12229 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12228(i64 %B59$_37foldl1, i64 %rva9145)             ; tail call
  ret void
}


define void @lam11217(i64 %env11218, i64 %rvp9143) {
  %cont7282 = call i64 @prim_car(i64 %rvp9143)                                       ; call prim_car
  %rvp9141 = call i64 @prim_cdr(i64 %rvp9143)                                        ; call prim_cdr
  %fXq$n = call i64 @prim_car(i64 %rvp9141)                                          ; call prim_car
  %rvp9139 = call i64 @prim_cdr(i64 %rvp9141)                                        ; call prim_cdr
  %peT$v = call i64 @prim_car(i64 %rvp9139)                                          ; call prim_car
  %na9135 = call i64 @prim_cdr(i64 %rvp9139)                                         ; call prim_cdr
  %retprim7283 = call i64 @prim__47(i64 %peT$v, i64 %fXq$n)                          ; call prim__47
  %arg7843 = add i64 0, 0                                                            ; quoted ()
  %rva9138 = add i64 0, 0                                                            ; quoted ()
  %rva9137 = call i64 @prim_cons(i64 %retprim7283, i64 %rva9138)                     ; call prim_cons
  %rva9136 = call i64 @prim_cons(i64 %arg7843, i64 %rva9137)                         ; call prim_cons
  %cloptr12230 = inttoptr i64 %cont7282 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12230)                                        ; assert function application
  %i0ptr12231 = getelementptr inbounds i64, i64* %cloptr12230, i64 0                 ; &cloptr12230[0]
  %f12233 = load i64, i64* %i0ptr12231, align 8                                      ; load; *i0ptr12231
  %fptr12232 = inttoptr i64 %f12233 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12232(i64 %cont7282, i64 %rva9136)                  ; tail call
  ret void
}


define void @lam11207(i64 %env11208, i64 %rvp9157) {
  %cont7284 = call i64 @prim_car(i64 %rvp9157)                                       ; call prim_car
  %rvp9155 = call i64 @prim_cdr(i64 %rvp9157)                                        ; call prim_cdr
  %itv$x = call i64 @prim_car(i64 %rvp9155)                                          ; call prim_car
  %na9151 = call i64 @prim_cdr(i64 %rvp9155)                                         ; call prim_cdr
  %retprim7285 = call i64 @prim_car(i64 %itv$x)                                      ; call prim_car
  %arg7847 = add i64 0, 0                                                            ; quoted ()
  %rva9154 = add i64 0, 0                                                            ; quoted ()
  %rva9153 = call i64 @prim_cons(i64 %retprim7285, i64 %rva9154)                     ; call prim_cons
  %rva9152 = call i64 @prim_cons(i64 %arg7847, i64 %rva9153)                         ; call prim_cons
  %cloptr12234 = inttoptr i64 %cont7284 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12234)                                        ; assert function application
  %i0ptr12235 = getelementptr inbounds i64, i64* %cloptr12234, i64 0                 ; &cloptr12234[0]
  %f12237 = load i64, i64* %i0ptr12235, align 8                                      ; load; *i0ptr12235
  %fptr12236 = inttoptr i64 %f12237 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12236(i64 %cont7284, i64 %rva9152)                  ; tail call
  ret void
}


define void @lam11203(i64 %env11204, i64 %rvp9166) {
  %cont7286 = call i64 @prim_car(i64 %rvp9166)                                       ; call prim_car
  %rvp9164 = call i64 @prim_cdr(i64 %rvp9166)                                        ; call prim_cdr
  %d3y$x = call i64 @prim_car(i64 %rvp9164)                                          ; call prim_car
  %na9160 = call i64 @prim_cdr(i64 %rvp9164)                                         ; call prim_cdr
  %a7129 = call i64 @prim_cdr(i64 %d3y$x)                                            ; call prim_cdr
  %retprim7287 = call i64 @prim_car(i64 %a7129)                                      ; call prim_car
  %arg7852 = add i64 0, 0                                                            ; quoted ()
  %rva9163 = add i64 0, 0                                                            ; quoted ()
  %rva9162 = call i64 @prim_cons(i64 %retprim7287, i64 %rva9163)                     ; call prim_cons
  %rva9161 = call i64 @prim_cons(i64 %arg7852, i64 %rva9162)                         ; call prim_cons
  %cloptr12238 = inttoptr i64 %cont7286 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12238)                                        ; assert function application
  %i0ptr12239 = getelementptr inbounds i64, i64* %cloptr12238, i64 0                 ; &cloptr12238[0]
  %f12241 = load i64, i64* %i0ptr12239, align 8                                      ; load; *i0ptr12239
  %fptr12240 = inttoptr i64 %f12241 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12240(i64 %cont7286, i64 %rva9161)                  ; tail call
  ret void
}


define void @lam11199(i64 %env11200, i64 %rvp9175) {
  %cont7288 = call i64 @prim_car(i64 %rvp9175)                                       ; call prim_car
  %rvp9173 = call i64 @prim_cdr(i64 %rvp9175)                                        ; call prim_cdr
  %I9w$x = call i64 @prim_car(i64 %rvp9173)                                          ; call prim_car
  %na9169 = call i64 @prim_cdr(i64 %rvp9173)                                         ; call prim_cdr
  %a7130 = call i64 @prim_cdr(i64 %I9w$x)                                            ; call prim_cdr
  %a7131 = call i64 @prim_cdr(i64 %a7130)                                            ; call prim_cdr
  %retprim7289 = call i64 @prim_car(i64 %a7131)                                      ; call prim_car
  %arg7858 = add i64 0, 0                                                            ; quoted ()
  %rva9172 = add i64 0, 0                                                            ; quoted ()
  %rva9171 = call i64 @prim_cons(i64 %retprim7289, i64 %rva9172)                     ; call prim_cons
  %rva9170 = call i64 @prim_cons(i64 %arg7858, i64 %rva9171)                         ; call prim_cons
  %cloptr12242 = inttoptr i64 %cont7288 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12242)                                        ; assert function application
  %i0ptr12243 = getelementptr inbounds i64, i64* %cloptr12242, i64 0                 ; &cloptr12242[0]
  %f12245 = load i64, i64* %i0ptr12243, align 8                                      ; load; *i0ptr12243
  %fptr12244 = inttoptr i64 %f12245 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12244(i64 %cont7288, i64 %rva9170)                  ; tail call
  ret void
}


define void @lam11195(i64 %env11196, i64 %rvp9184) {
  %cont7290 = call i64 @prim_car(i64 %rvp9184)                                       ; call prim_car
  %rvp9182 = call i64 @prim_cdr(i64 %rvp9184)                                        ; call prim_cdr
  %al3$x = call i64 @prim_car(i64 %rvp9182)                                          ; call prim_car
  %na9178 = call i64 @prim_cdr(i64 %rvp9182)                                         ; call prim_cdr
  %a7132 = call i64 @prim_cdr(i64 %al3$x)                                            ; call prim_cdr
  %a7133 = call i64 @prim_cdr(i64 %a7132)                                            ; call prim_cdr
  %a7134 = call i64 @prim_cdr(i64 %a7133)                                            ; call prim_cdr
  %retprim7291 = call i64 @prim_car(i64 %a7134)                                      ; call prim_car
  %arg7865 = add i64 0, 0                                                            ; quoted ()
  %rva9181 = add i64 0, 0                                                            ; quoted ()
  %rva9180 = call i64 @prim_cons(i64 %retprim7291, i64 %rva9181)                     ; call prim_cons
  %rva9179 = call i64 @prim_cons(i64 %arg7865, i64 %rva9180)                         ; call prim_cons
  %cloptr12246 = inttoptr i64 %cont7290 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12246)                                        ; assert function application
  %i0ptr12247 = getelementptr inbounds i64, i64* %cloptr12246, i64 0                 ; &cloptr12246[0]
  %f12249 = load i64, i64* %i0ptr12247, align 8                                      ; load; *i0ptr12247
  %fptr12248 = inttoptr i64 %f12249 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12248(i64 %cont7290, i64 %rva9179)                  ; tail call
  ret void
}


define void @lam11191(i64 %env11192, i64 %rvp9196) {
  %cont7292 = call i64 @prim_car(i64 %rvp9196)                                       ; call prim_car
  %rvp9194 = call i64 @prim_cdr(i64 %rvp9196)                                        ; call prim_cdr
  %Uei$p = call i64 @prim_car(i64 %rvp9194)                                          ; call prim_car
  %na9187 = call i64 @prim_cdr(i64 %rvp9194)                                         ; call prim_cdr
  %a7135 = call i64 @prim_cons_63(i64 %Uei$p)                                        ; call prim_cons_63
  %cmp12250 = icmp eq i64 %a7135, 15                                                 ; false?
  br i1 %cmp12250, label %else12252, label %then12251                                ; if

then12251:
  %a7136 = call i64 @prim_car(i64 %Uei$p)                                            ; call prim_car
  %arg7869 = call i64 @const_init_symbol(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @sym12253, i32 0, i32 0)); quoted string
  %retprim7293 = call i64 @prim_eq_63(i64 %a7136, i64 %arg7869)                      ; call prim_eq_63
  %arg7872 = add i64 0, 0                                                            ; quoted ()
  %rva9190 = add i64 0, 0                                                            ; quoted ()
  %rva9189 = call i64 @prim_cons(i64 %retprim7293, i64 %rva9190)                     ; call prim_cons
  %rva9188 = call i64 @prim_cons(i64 %arg7872, i64 %rva9189)                         ; call prim_cons
  %cloptr12254 = inttoptr i64 %cont7292 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12254)                                        ; assert function application
  %i0ptr12255 = getelementptr inbounds i64, i64* %cloptr12254, i64 0                 ; &cloptr12254[0]
  %f12257 = load i64, i64* %i0ptr12255, align 8                                      ; load; *i0ptr12255
  %fptr12256 = inttoptr i64 %f12257 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12256(i64 %cont7292, i64 %rva9188)                  ; tail call
  ret void

else12252:
  %arg7875 = add i64 0, 0                                                            ; quoted ()
  %arg7874 = call i64 @const_init_false()                                            ; quoted #f
  %rva9193 = add i64 0, 0                                                            ; quoted ()
  %rva9192 = call i64 @prim_cons(i64 %arg7874, i64 %rva9193)                         ; call prim_cons
  %rva9191 = call i64 @prim_cons(i64 %arg7875, i64 %rva9192)                         ; call prim_cons
  %cloptr12258 = inttoptr i64 %cont7292 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12258)                                        ; assert function application
  %i0ptr12259 = getelementptr inbounds i64, i64* %cloptr12258, i64 0                 ; &cloptr12258[0]
  %f12261 = load i64, i64* %i0ptr12259, align 8                                      ; load; *i0ptr12259
  %fptr12260 = inttoptr i64 %f12261 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12260(i64 %cont7292, i64 %rva9191)                  ; tail call
  ret void
}


define void @lam11183(i64 %env11184, i64 %ykC$lst7419) {
  %cont7418 = call i64 @prim_car(i64 %ykC$lst7419)                                   ; call prim_car
  %ykC$lst = call i64 @prim_cdr(i64 %ykC$lst7419)                                    ; call prim_cdr
  %arg7882 = add i64 0, 0                                                            ; quoted ()
  %rva9200 = add i64 0, 0                                                            ; quoted ()
  %rva9199 = call i64 @prim_cons(i64 %ykC$lst, i64 %rva9200)                         ; call prim_cons
  %rva9198 = call i64 @prim_cons(i64 %arg7882, i64 %rva9199)                         ; call prim_cons
  %cloptr12262 = inttoptr i64 %cont7418 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12262)                                        ; assert function application
  %i0ptr12263 = getelementptr inbounds i64, i64* %cloptr12262, i64 0                 ; &cloptr12262[0]
  %f12265 = load i64, i64* %i0ptr12263, align 8                                      ; load; *i0ptr12263
  %fptr12264 = inttoptr i64 %f12265 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12264(i64 %cont7418, i64 %rva9198)                  ; tail call
  ret void
}


define void @lam11179(i64 %env11180, i64 %rvp10007) {
  %envptr12266 = inttoptr i64 %env11180 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12267 = getelementptr inbounds i64, i64* %envptr12266, i64 3                ; &envptr12266[3]
  %Akm$_37_62 = load i64, i64* %envptr12267, align 8                                 ; load; *envptr12267
  %envptr12268 = inttoptr i64 %env11180 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12269 = getelementptr inbounds i64, i64* %envptr12268, i64 2                ; &envptr12268[2]
  %s70$_37length = load i64, i64* %envptr12269, align 8                              ; load; *envptr12269
  %envptr12270 = inttoptr i64 %env11180 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12271 = getelementptr inbounds i64, i64* %envptr12270, i64 1                ; &envptr12270[1]
  %ein$_37drop = load i64, i64* %envptr12271, align 8                                ; load; *envptr12271
  %_957294 = call i64 @prim_car(i64 %rvp10007)                                       ; call prim_car
  %rvp10005 = call i64 @prim_cdr(i64 %rvp10007)                                      ; call prim_cdr
  %CIs$_37raise_45handler = call i64 @prim_car(i64 %rvp10005)                        ; call prim_car
  %na9202 = call i64 @prim_cdr(i64 %rvp10005)                                        ; call prim_cdr
  %cloptr12272 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12273 = getelementptr inbounds i64, i64* %cloptr12272, i64 0                  ; &cloptr12272[0]
  %f12274 = ptrtoint void(i64,i64)* @lam11177 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12274, i64* %eptr12273                                                 ; store fptr
  %arg7885 = ptrtoint i64* %cloptr12272 to i64                                       ; closure cast; i64* -> i64
  %cloptr12275 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12277 = getelementptr inbounds i64, i64* %cloptr12275, i64 1                  ; &eptr12277[1]
  %eptr12278 = getelementptr inbounds i64, i64* %cloptr12275, i64 2                  ; &eptr12278[2]
  %eptr12279 = getelementptr inbounds i64, i64* %cloptr12275, i64 3                  ; &eptr12279[3]
  %eptr12280 = getelementptr inbounds i64, i64* %cloptr12275, i64 4                  ; &eptr12280[4]
  store i64 %ein$_37drop, i64* %eptr12277                                            ; *eptr12277 = %ein$_37drop
  store i64 %CIs$_37raise_45handler, i64* %eptr12278                                 ; *eptr12278 = %CIs$_37raise_45handler
  store i64 %s70$_37length, i64* %eptr12279                                          ; *eptr12279 = %s70$_37length
  store i64 %Akm$_37_62, i64* %eptr12280                                             ; *eptr12280 = %Akm$_37_62
  %eptr12276 = getelementptr inbounds i64, i64* %cloptr12275, i64 0                  ; &cloptr12275[0]
  %f12281 = ptrtoint void(i64,i64)* @lam11173 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12281, i64* %eptr12276                                                 ; store fptr
  %arg7884 = ptrtoint i64* %cloptr12275 to i64                                       ; closure cast; i64* -> i64
  %rva10004 = add i64 0, 0                                                           ; quoted ()
  %rva10003 = call i64 @prim_cons(i64 %arg7884, i64 %rva10004)                       ; call prim_cons
  %cloptr12282 = inttoptr i64 %arg7885 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12282)                                        ; assert function application
  %i0ptr12283 = getelementptr inbounds i64, i64* %cloptr12282, i64 0                 ; &cloptr12282[0]
  %f12285 = load i64, i64* %i0ptr12283, align 8                                      ; load; *i0ptr12283
  %fptr12284 = inttoptr i64 %f12285 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12284(i64 %arg7885, i64 %rva10003)                  ; tail call
  ret void
}


define void @lam11177(i64 %env11178, i64 %nIR$lst7417) {
  %cont7416 = call i64 @prim_car(i64 %nIR$lst7417)                                   ; call prim_car
  %nIR$lst = call i64 @prim_cdr(i64 %nIR$lst7417)                                    ; call prim_cdr
  %arg7889 = add i64 0, 0                                                            ; quoted ()
  %rva9205 = add i64 0, 0                                                            ; quoted ()
  %rva9204 = call i64 @prim_cons(i64 %nIR$lst, i64 %rva9205)                         ; call prim_cons
  %rva9203 = call i64 @prim_cons(i64 %arg7889, i64 %rva9204)                         ; call prim_cons
  %cloptr12286 = inttoptr i64 %cont7416 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12286)                                        ; assert function application
  %i0ptr12287 = getelementptr inbounds i64, i64* %cloptr12286, i64 0                 ; &cloptr12286[0]
  %f12289 = load i64, i64* %i0ptr12287, align 8                                      ; load; *i0ptr12287
  %fptr12288 = inttoptr i64 %f12289 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12288(i64 %cont7416, i64 %rva9203)                  ; tail call
  ret void
}


define void @lam11173(i64 %env11174, i64 %rvp10001) {
  %envptr12290 = inttoptr i64 %env11174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12291 = getelementptr inbounds i64, i64* %envptr12290, i64 4                ; &envptr12290[4]
  %Akm$_37_62 = load i64, i64* %envptr12291, align 8                                 ; load; *envptr12291
  %envptr12292 = inttoptr i64 %env11174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12293 = getelementptr inbounds i64, i64* %envptr12292, i64 3                ; &envptr12292[3]
  %s70$_37length = load i64, i64* %envptr12293, align 8                              ; load; *envptr12293
  %envptr12294 = inttoptr i64 %env11174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12295 = getelementptr inbounds i64, i64* %envptr12294, i64 2                ; &envptr12294[2]
  %CIs$_37raise_45handler = load i64, i64* %envptr12295, align 8                     ; load; *envptr12295
  %envptr12296 = inttoptr i64 %env11174 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12297 = getelementptr inbounds i64, i64* %envptr12296, i64 1                ; &envptr12296[1]
  %ein$_37drop = load i64, i64* %envptr12297, align 8                                ; load; *envptr12297
  %_957414 = call i64 @prim_car(i64 %rvp10001)                                       ; call prim_car
  %rvp9999 = call i64 @prim_cdr(i64 %rvp10001)                                       ; call prim_cdr
  %a7137 = call i64 @prim_car(i64 %rvp9999)                                          ; call prim_car
  %na9207 = call i64 @prim_cdr(i64 %rvp9999)                                         ; call prim_cdr
  %arg7892 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7415 = call i64 @prim_make_45vector(i64 %arg7892, i64 %a7137)              ; call prim_make_45vector
  %cloptr12298 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12300 = getelementptr inbounds i64, i64* %cloptr12298, i64 1                  ; &eptr12300[1]
  %eptr12301 = getelementptr inbounds i64, i64* %cloptr12298, i64 2                  ; &eptr12301[2]
  %eptr12302 = getelementptr inbounds i64, i64* %cloptr12298, i64 3                  ; &eptr12302[3]
  %eptr12303 = getelementptr inbounds i64, i64* %cloptr12298, i64 4                  ; &eptr12303[4]
  store i64 %ein$_37drop, i64* %eptr12300                                            ; *eptr12300 = %ein$_37drop
  store i64 %CIs$_37raise_45handler, i64* %eptr12301                                 ; *eptr12301 = %CIs$_37raise_45handler
  store i64 %s70$_37length, i64* %eptr12302                                          ; *eptr12302 = %s70$_37length
  store i64 %Akm$_37_62, i64* %eptr12303                                             ; *eptr12303 = %Akm$_37_62
  %eptr12299 = getelementptr inbounds i64, i64* %cloptr12298, i64 0                  ; &cloptr12298[0]
  %f12304 = ptrtoint void(i64,i64)* @lam11170 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12304, i64* %eptr12299                                                 ; store fptr
  %arg7895 = ptrtoint i64* %cloptr12298 to i64                                       ; closure cast; i64* -> i64
  %arg7894 = add i64 0, 0                                                            ; quoted ()
  %rva9998 = add i64 0, 0                                                            ; quoted ()
  %rva9997 = call i64 @prim_cons(i64 %retprim7415, i64 %rva9998)                     ; call prim_cons
  %rva9996 = call i64 @prim_cons(i64 %arg7894, i64 %rva9997)                         ; call prim_cons
  %cloptr12305 = inttoptr i64 %arg7895 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12305)                                        ; assert function application
  %i0ptr12306 = getelementptr inbounds i64, i64* %cloptr12305, i64 0                 ; &cloptr12305[0]
  %f12308 = load i64, i64* %i0ptr12306, align 8                                      ; load; *i0ptr12306
  %fptr12307 = inttoptr i64 %f12308 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12307(i64 %arg7895, i64 %rva9996)                   ; tail call
  ret void
}


define void @lam11170(i64 %env11171, i64 %rvp9994) {
  %envptr12309 = inttoptr i64 %env11171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12310 = getelementptr inbounds i64, i64* %envptr12309, i64 4                ; &envptr12309[4]
  %Akm$_37_62 = load i64, i64* %envptr12310, align 8                                 ; load; *envptr12310
  %envptr12311 = inttoptr i64 %env11171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12312 = getelementptr inbounds i64, i64* %envptr12311, i64 3                ; &envptr12311[3]
  %s70$_37length = load i64, i64* %envptr12312, align 8                              ; load; *envptr12312
  %envptr12313 = inttoptr i64 %env11171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12314 = getelementptr inbounds i64, i64* %envptr12313, i64 2                ; &envptr12313[2]
  %CIs$_37raise_45handler = load i64, i64* %envptr12314, align 8                     ; load; *envptr12314
  %envptr12315 = inttoptr i64 %env11171 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12316 = getelementptr inbounds i64, i64* %envptr12315, i64 1                ; &envptr12315[1]
  %ein$_37drop = load i64, i64* %envptr12316, align 8                                ; load; *envptr12316
  %_957295 = call i64 @prim_car(i64 %rvp9994)                                        ; call prim_car
  %rvp9992 = call i64 @prim_cdr(i64 %rvp9994)                                        ; call prim_cdr
  %a62$_37wind_45stack = call i64 @prim_car(i64 %rvp9992)                            ; call prim_car
  %na9209 = call i64 @prim_cdr(i64 %rvp9992)                                         ; call prim_cdr
  %cloptr12317 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12319 = getelementptr inbounds i64, i64* %cloptr12317, i64 1                  ; &eptr12319[1]
  %eptr12320 = getelementptr inbounds i64, i64* %cloptr12317, i64 2                  ; &eptr12320[2]
  %eptr12321 = getelementptr inbounds i64, i64* %cloptr12317, i64 3                  ; &eptr12321[3]
  store i64 %ein$_37drop, i64* %eptr12319                                            ; *eptr12319 = %ein$_37drop
  store i64 %s70$_37length, i64* %eptr12320                                          ; *eptr12320 = %s70$_37length
  store i64 %Akm$_37_62, i64* %eptr12321                                             ; *eptr12321 = %Akm$_37_62
  %eptr12318 = getelementptr inbounds i64, i64* %cloptr12317, i64 0                  ; &cloptr12317[0]
  %f12322 = ptrtoint void(i64,i64)* @lam11168 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12322, i64* %eptr12318                                                 ; store fptr
  %Yw2$_37common_45tail = ptrtoint i64* %cloptr12317 to i64                          ; closure cast; i64* -> i64
  %cloptr12323 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr12325 = getelementptr inbounds i64, i64* %cloptr12323, i64 1                  ; &eptr12325[1]
  %eptr12326 = getelementptr inbounds i64, i64* %cloptr12323, i64 2                  ; &eptr12326[2]
  store i64 %Yw2$_37common_45tail, i64* %eptr12325                                   ; *eptr12325 = %Yw2$_37common_45tail
  store i64 %a62$_37wind_45stack, i64* %eptr12326                                    ; *eptr12326 = %a62$_37wind_45stack
  %eptr12324 = getelementptr inbounds i64, i64* %cloptr12323, i64 0                  ; &cloptr12323[0]
  %f12327 = ptrtoint void(i64,i64)* @lam11106 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12327, i64* %eptr12324                                                 ; store fptr
  %ZqL$_37do_45wind = ptrtoint i64* %cloptr12323 to i64                              ; closure cast; i64* -> i64
  %cloptr12328 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12329 = getelementptr inbounds i64, i64* %cloptr12328, i64 0                  ; &cloptr12328[0]
  %f12330 = ptrtoint void(i64,i64)* @lam11039 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12330, i64* %eptr12329                                                 ; store fptr
  %arg8081 = ptrtoint i64* %cloptr12328 to i64                                       ; closure cast; i64* -> i64
  %cloptr12331 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12333 = getelementptr inbounds i64, i64* %cloptr12331, i64 1                  ; &eptr12333[1]
  %eptr12334 = getelementptr inbounds i64, i64* %cloptr12331, i64 2                  ; &eptr12334[2]
  %eptr12335 = getelementptr inbounds i64, i64* %cloptr12331, i64 3                  ; &eptr12335[3]
  store i64 %ZqL$_37do_45wind, i64* %eptr12333                                       ; *eptr12333 = %ZqL$_37do_45wind
  store i64 %CIs$_37raise_45handler, i64* %eptr12334                                 ; *eptr12334 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr12335                                    ; *eptr12335 = %a62$_37wind_45stack
  %eptr12332 = getelementptr inbounds i64, i64* %cloptr12331, i64 0                  ; &cloptr12331[0]
  %f12336 = ptrtoint void(i64,i64)* @lam11035 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12336, i64* %eptr12332                                                 ; store fptr
  %arg8080 = ptrtoint i64* %cloptr12331 to i64                                       ; closure cast; i64* -> i64
  %rva9991 = add i64 0, 0                                                            ; quoted ()
  %rva9990 = call i64 @prim_cons(i64 %arg8080, i64 %rva9991)                         ; call prim_cons
  %cloptr12337 = inttoptr i64 %arg8081 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12337)                                        ; assert function application
  %i0ptr12338 = getelementptr inbounds i64, i64* %cloptr12337, i64 0                 ; &cloptr12337[0]
  %f12340 = load i64, i64* %i0ptr12338, align 8                                      ; load; *i0ptr12338
  %fptr12339 = inttoptr i64 %f12340 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12339(i64 %arg8081, i64 %rva9990)                   ; tail call
  ret void
}


define void @lam11168(i64 %env11169, i64 %rvp9372) {
  %envptr12341 = inttoptr i64 %env11169 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12342 = getelementptr inbounds i64, i64* %envptr12341, i64 3                ; &envptr12341[3]
  %Akm$_37_62 = load i64, i64* %envptr12342, align 8                                 ; load; *envptr12342
  %envptr12343 = inttoptr i64 %env11169 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12344 = getelementptr inbounds i64, i64* %envptr12343, i64 2                ; &envptr12343[2]
  %s70$_37length = load i64, i64* %envptr12344, align 8                              ; load; *envptr12344
  %envptr12345 = inttoptr i64 %env11169 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12346 = getelementptr inbounds i64, i64* %envptr12345, i64 1                ; &envptr12345[1]
  %ein$_37drop = load i64, i64* %envptr12346, align 8                                ; load; *envptr12346
  %cont7296 = call i64 @prim_car(i64 %rvp9372)                                       ; call prim_car
  %rvp9370 = call i64 @prim_cdr(i64 %rvp9372)                                        ; call prim_cdr
  %p1o$x = call i64 @prim_car(i64 %rvp9370)                                          ; call prim_car
  %rvp9368 = call i64 @prim_cdr(i64 %rvp9370)                                        ; call prim_cdr
  %AuT$y = call i64 @prim_car(i64 %rvp9368)                                          ; call prim_car
  %na9211 = call i64 @prim_cdr(i64 %rvp9368)                                         ; call prim_cdr
  %cloptr12347 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr12349 = getelementptr inbounds i64, i64* %cloptr12347, i64 1                  ; &eptr12349[1]
  %eptr12350 = getelementptr inbounds i64, i64* %cloptr12347, i64 2                  ; &eptr12350[2]
  %eptr12351 = getelementptr inbounds i64, i64* %cloptr12347, i64 3                  ; &eptr12351[3]
  %eptr12352 = getelementptr inbounds i64, i64* %cloptr12347, i64 4                  ; &eptr12352[4]
  %eptr12353 = getelementptr inbounds i64, i64* %cloptr12347, i64 5                  ; &eptr12353[5]
  %eptr12354 = getelementptr inbounds i64, i64* %cloptr12347, i64 6                  ; &eptr12354[6]
  store i64 %ein$_37drop, i64* %eptr12349                                            ; *eptr12349 = %ein$_37drop
  store i64 %cont7296, i64* %eptr12350                                               ; *eptr12350 = %cont7296
  store i64 %AuT$y, i64* %eptr12351                                                  ; *eptr12351 = %AuT$y
  store i64 %p1o$x, i64* %eptr12352                                                  ; *eptr12352 = %p1o$x
  store i64 %s70$_37length, i64* %eptr12353                                          ; *eptr12353 = %s70$_37length
  store i64 %Akm$_37_62, i64* %eptr12354                                             ; *eptr12354 = %Akm$_37_62
  %eptr12348 = getelementptr inbounds i64, i64* %cloptr12347, i64 0                  ; &cloptr12347[0]
  %f12355 = ptrtoint void(i64,i64)* @lam11166 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12355, i64* %eptr12348                                                 ; store fptr
  %arg7897 = ptrtoint i64* %cloptr12347 to i64                                       ; closure cast; i64* -> i64
  %rva9367 = add i64 0, 0                                                            ; quoted ()
  %rva9366 = call i64 @prim_cons(i64 %p1o$x, i64 %rva9367)                           ; call prim_cons
  %rva9365 = call i64 @prim_cons(i64 %arg7897, i64 %rva9366)                         ; call prim_cons
  %cloptr12356 = inttoptr i64 %s70$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12356)                                        ; assert function application
  %i0ptr12357 = getelementptr inbounds i64, i64* %cloptr12356, i64 0                 ; &cloptr12356[0]
  %f12359 = load i64, i64* %i0ptr12357, align 8                                      ; load; *i0ptr12357
  %fptr12358 = inttoptr i64 %f12359 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12358(i64 %s70$_37length, i64 %rva9365)             ; tail call
  ret void
}


define void @lam11166(i64 %env11167, i64 %rvp9363) {
  %envptr12360 = inttoptr i64 %env11167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12361 = getelementptr inbounds i64, i64* %envptr12360, i64 6                ; &envptr12360[6]
  %Akm$_37_62 = load i64, i64* %envptr12361, align 8                                 ; load; *envptr12361
  %envptr12362 = inttoptr i64 %env11167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12363 = getelementptr inbounds i64, i64* %envptr12362, i64 5                ; &envptr12362[5]
  %s70$_37length = load i64, i64* %envptr12363, align 8                              ; load; *envptr12363
  %envptr12364 = inttoptr i64 %env11167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12365 = getelementptr inbounds i64, i64* %envptr12364, i64 4                ; &envptr12364[4]
  %p1o$x = load i64, i64* %envptr12365, align 8                                      ; load; *envptr12365
  %envptr12366 = inttoptr i64 %env11167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12367 = getelementptr inbounds i64, i64* %envptr12366, i64 3                ; &envptr12366[3]
  %AuT$y = load i64, i64* %envptr12367, align 8                                      ; load; *envptr12367
  %envptr12368 = inttoptr i64 %env11167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12369 = getelementptr inbounds i64, i64* %envptr12368, i64 2                ; &envptr12368[2]
  %cont7296 = load i64, i64* %envptr12369, align 8                                   ; load; *envptr12369
  %envptr12370 = inttoptr i64 %env11167 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12371 = getelementptr inbounds i64, i64* %envptr12370, i64 1                ; &envptr12370[1]
  %ein$_37drop = load i64, i64* %envptr12371, align 8                                ; load; *envptr12371
  %_957297 = call i64 @prim_car(i64 %rvp9363)                                        ; call prim_car
  %rvp9361 = call i64 @prim_cdr(i64 %rvp9363)                                        ; call prim_cdr
  %xgE$lx = call i64 @prim_car(i64 %rvp9361)                                         ; call prim_car
  %na9213 = call i64 @prim_cdr(i64 %rvp9361)                                         ; call prim_cdr
  %cloptr12372 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr12374 = getelementptr inbounds i64, i64* %cloptr12372, i64 1                  ; &eptr12374[1]
  %eptr12375 = getelementptr inbounds i64, i64* %cloptr12372, i64 2                  ; &eptr12375[2]
  %eptr12376 = getelementptr inbounds i64, i64* %cloptr12372, i64 3                  ; &eptr12376[3]
  %eptr12377 = getelementptr inbounds i64, i64* %cloptr12372, i64 4                  ; &eptr12377[4]
  %eptr12378 = getelementptr inbounds i64, i64* %cloptr12372, i64 5                  ; &eptr12378[5]
  %eptr12379 = getelementptr inbounds i64, i64* %cloptr12372, i64 6                  ; &eptr12379[6]
  store i64 %ein$_37drop, i64* %eptr12374                                            ; *eptr12374 = %ein$_37drop
  store i64 %xgE$lx, i64* %eptr12375                                                 ; *eptr12375 = %xgE$lx
  store i64 %cont7296, i64* %eptr12376                                               ; *eptr12376 = %cont7296
  store i64 %AuT$y, i64* %eptr12377                                                  ; *eptr12377 = %AuT$y
  store i64 %p1o$x, i64* %eptr12378                                                  ; *eptr12378 = %p1o$x
  store i64 %Akm$_37_62, i64* %eptr12379                                             ; *eptr12379 = %Akm$_37_62
  %eptr12373 = getelementptr inbounds i64, i64* %cloptr12372, i64 0                  ; &cloptr12372[0]
  %f12380 = ptrtoint void(i64,i64)* @lam11164 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12380, i64* %eptr12373                                                 ; store fptr
  %arg7900 = ptrtoint i64* %cloptr12372 to i64                                       ; closure cast; i64* -> i64
  %rva9360 = add i64 0, 0                                                            ; quoted ()
  %rva9359 = call i64 @prim_cons(i64 %AuT$y, i64 %rva9360)                           ; call prim_cons
  %rva9358 = call i64 @prim_cons(i64 %arg7900, i64 %rva9359)                         ; call prim_cons
  %cloptr12381 = inttoptr i64 %s70$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12381)                                        ; assert function application
  %i0ptr12382 = getelementptr inbounds i64, i64* %cloptr12381, i64 0                 ; &cloptr12381[0]
  %f12384 = load i64, i64* %i0ptr12382, align 8                                      ; load; *i0ptr12382
  %fptr12383 = inttoptr i64 %f12384 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12383(i64 %s70$_37length, i64 %rva9358)             ; tail call
  ret void
}


define void @lam11164(i64 %env11165, i64 %rvp9356) {
  %envptr12385 = inttoptr i64 %env11165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12386 = getelementptr inbounds i64, i64* %envptr12385, i64 6                ; &envptr12385[6]
  %Akm$_37_62 = load i64, i64* %envptr12386, align 8                                 ; load; *envptr12386
  %envptr12387 = inttoptr i64 %env11165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12388 = getelementptr inbounds i64, i64* %envptr12387, i64 5                ; &envptr12387[5]
  %p1o$x = load i64, i64* %envptr12388, align 8                                      ; load; *envptr12388
  %envptr12389 = inttoptr i64 %env11165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12390 = getelementptr inbounds i64, i64* %envptr12389, i64 4                ; &envptr12389[4]
  %AuT$y = load i64, i64* %envptr12390, align 8                                      ; load; *envptr12390
  %envptr12391 = inttoptr i64 %env11165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12392 = getelementptr inbounds i64, i64* %envptr12391, i64 3                ; &envptr12391[3]
  %cont7296 = load i64, i64* %envptr12392, align 8                                   ; load; *envptr12392
  %envptr12393 = inttoptr i64 %env11165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12394 = getelementptr inbounds i64, i64* %envptr12393, i64 2                ; &envptr12393[2]
  %xgE$lx = load i64, i64* %envptr12394, align 8                                     ; load; *envptr12394
  %envptr12395 = inttoptr i64 %env11165 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12396 = getelementptr inbounds i64, i64* %envptr12395, i64 1                ; &envptr12395[1]
  %ein$_37drop = load i64, i64* %envptr12396, align 8                                ; load; *envptr12396
  %_957298 = call i64 @prim_car(i64 %rvp9356)                                        ; call prim_car
  %rvp9354 = call i64 @prim_cdr(i64 %rvp9356)                                        ; call prim_cdr
  %ROF$ly = call i64 @prim_car(i64 %rvp9354)                                         ; call prim_car
  %na9215 = call i64 @prim_cdr(i64 %rvp9354)                                         ; call prim_cdr
  %cloptr12397 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12398 = getelementptr inbounds i64, i64* %cloptr12397, i64 0                  ; &cloptr12397[0]
  %f12399 = ptrtoint void(i64,i64)* @lam11162 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12399, i64* %eptr12398                                                 ; store fptr
  %arg7903 = ptrtoint i64* %cloptr12397 to i64                                       ; closure cast; i64* -> i64
  %cloptr12400 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr12402 = getelementptr inbounds i64, i64* %cloptr12400, i64 1                  ; &eptr12402[1]
  %eptr12403 = getelementptr inbounds i64, i64* %cloptr12400, i64 2                  ; &eptr12403[2]
  %eptr12404 = getelementptr inbounds i64, i64* %cloptr12400, i64 3                  ; &eptr12404[3]
  %eptr12405 = getelementptr inbounds i64, i64* %cloptr12400, i64 4                  ; &eptr12405[4]
  %eptr12406 = getelementptr inbounds i64, i64* %cloptr12400, i64 5                  ; &eptr12406[5]
  %eptr12407 = getelementptr inbounds i64, i64* %cloptr12400, i64 6                  ; &eptr12407[6]
  %eptr12408 = getelementptr inbounds i64, i64* %cloptr12400, i64 7                  ; &eptr12408[7]
  store i64 %ein$_37drop, i64* %eptr12402                                            ; *eptr12402 = %ein$_37drop
  store i64 %ROF$ly, i64* %eptr12403                                                 ; *eptr12403 = %ROF$ly
  store i64 %xgE$lx, i64* %eptr12404                                                 ; *eptr12404 = %xgE$lx
  store i64 %cont7296, i64* %eptr12405                                               ; *eptr12405 = %cont7296
  store i64 %AuT$y, i64* %eptr12406                                                  ; *eptr12406 = %AuT$y
  store i64 %p1o$x, i64* %eptr12407                                                  ; *eptr12407 = %p1o$x
  store i64 %Akm$_37_62, i64* %eptr12408                                             ; *eptr12408 = %Akm$_37_62
  %eptr12401 = getelementptr inbounds i64, i64* %cloptr12400, i64 0                  ; &cloptr12400[0]
  %f12409 = ptrtoint void(i64,i64)* @lam11158 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12409, i64* %eptr12401                                                 ; store fptr
  %arg7902 = ptrtoint i64* %cloptr12400 to i64                                       ; closure cast; i64* -> i64
  %rva9353 = add i64 0, 0                                                            ; quoted ()
  %rva9352 = call i64 @prim_cons(i64 %arg7902, i64 %rva9353)                         ; call prim_cons
  %cloptr12410 = inttoptr i64 %arg7903 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12410)                                        ; assert function application
  %i0ptr12411 = getelementptr inbounds i64, i64* %cloptr12410, i64 0                 ; &cloptr12410[0]
  %f12413 = load i64, i64* %i0ptr12411, align 8                                      ; load; *i0ptr12411
  %fptr12412 = inttoptr i64 %f12413 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12412(i64 %arg7903, i64 %rva9352)                   ; tail call
  ret void
}


define void @lam11162(i64 %env11163, i64 %mO7$lst7308) {
  %cont7307 = call i64 @prim_car(i64 %mO7$lst7308)                                   ; call prim_car
  %mO7$lst = call i64 @prim_cdr(i64 %mO7$lst7308)                                    ; call prim_cdr
  %arg7907 = add i64 0, 0                                                            ; quoted ()
  %rva9218 = add i64 0, 0                                                            ; quoted ()
  %rva9217 = call i64 @prim_cons(i64 %mO7$lst, i64 %rva9218)                         ; call prim_cons
  %rva9216 = call i64 @prim_cons(i64 %arg7907, i64 %rva9217)                         ; call prim_cons
  %cloptr12414 = inttoptr i64 %cont7307 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12414)                                        ; assert function application
  %i0ptr12415 = getelementptr inbounds i64, i64* %cloptr12414, i64 0                 ; &cloptr12414[0]
  %f12417 = load i64, i64* %i0ptr12415, align 8                                      ; load; *i0ptr12415
  %fptr12416 = inttoptr i64 %f12417 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12416(i64 %cont7307, i64 %rva9216)                  ; tail call
  ret void
}


define void @lam11158(i64 %env11159, i64 %rvp9350) {
  %envptr12418 = inttoptr i64 %env11159 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12419 = getelementptr inbounds i64, i64* %envptr12418, i64 7                ; &envptr12418[7]
  %Akm$_37_62 = load i64, i64* %envptr12419, align 8                                 ; load; *envptr12419
  %envptr12420 = inttoptr i64 %env11159 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12421 = getelementptr inbounds i64, i64* %envptr12420, i64 6                ; &envptr12420[6]
  %p1o$x = load i64, i64* %envptr12421, align 8                                      ; load; *envptr12421
  %envptr12422 = inttoptr i64 %env11159 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12423 = getelementptr inbounds i64, i64* %envptr12422, i64 5                ; &envptr12422[5]
  %AuT$y = load i64, i64* %envptr12423, align 8                                      ; load; *envptr12423
  %envptr12424 = inttoptr i64 %env11159 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12425 = getelementptr inbounds i64, i64* %envptr12424, i64 4                ; &envptr12424[4]
  %cont7296 = load i64, i64* %envptr12425, align 8                                   ; load; *envptr12425
  %envptr12426 = inttoptr i64 %env11159 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12427 = getelementptr inbounds i64, i64* %envptr12426, i64 3                ; &envptr12426[3]
  %xgE$lx = load i64, i64* %envptr12427, align 8                                     ; load; *envptr12427
  %envptr12428 = inttoptr i64 %env11159 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12429 = getelementptr inbounds i64, i64* %envptr12428, i64 2                ; &envptr12428[2]
  %ROF$ly = load i64, i64* %envptr12429, align 8                                     ; load; *envptr12429
  %envptr12430 = inttoptr i64 %env11159 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12431 = getelementptr inbounds i64, i64* %envptr12430, i64 1                ; &envptr12430[1]
  %ein$_37drop = load i64, i64* %envptr12431, align 8                                ; load; *envptr12431
  %_957305 = call i64 @prim_car(i64 %rvp9350)                                        ; call prim_car
  %rvp9348 = call i64 @prim_cdr(i64 %rvp9350)                                        ; call prim_cdr
  %a7138 = call i64 @prim_car(i64 %rvp9348)                                          ; call prim_car
  %na9220 = call i64 @prim_cdr(i64 %rvp9348)                                         ; call prim_cdr
  %arg7910 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7306 = call i64 @prim_make_45vector(i64 %arg7910, i64 %a7138)              ; call prim_make_45vector
  %cloptr12432 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr12434 = getelementptr inbounds i64, i64* %cloptr12432, i64 1                  ; &eptr12434[1]
  %eptr12435 = getelementptr inbounds i64, i64* %cloptr12432, i64 2                  ; &eptr12435[2]
  %eptr12436 = getelementptr inbounds i64, i64* %cloptr12432, i64 3                  ; &eptr12436[3]
  %eptr12437 = getelementptr inbounds i64, i64* %cloptr12432, i64 4                  ; &eptr12437[4]
  %eptr12438 = getelementptr inbounds i64, i64* %cloptr12432, i64 5                  ; &eptr12438[5]
  %eptr12439 = getelementptr inbounds i64, i64* %cloptr12432, i64 6                  ; &eptr12439[6]
  %eptr12440 = getelementptr inbounds i64, i64* %cloptr12432, i64 7                  ; &eptr12440[7]
  store i64 %ein$_37drop, i64* %eptr12434                                            ; *eptr12434 = %ein$_37drop
  store i64 %ROF$ly, i64* %eptr12435                                                 ; *eptr12435 = %ROF$ly
  store i64 %xgE$lx, i64* %eptr12436                                                 ; *eptr12436 = %xgE$lx
  store i64 %cont7296, i64* %eptr12437                                               ; *eptr12437 = %cont7296
  store i64 %AuT$y, i64* %eptr12438                                                  ; *eptr12438 = %AuT$y
  store i64 %p1o$x, i64* %eptr12439                                                  ; *eptr12439 = %p1o$x
  store i64 %Akm$_37_62, i64* %eptr12440                                             ; *eptr12440 = %Akm$_37_62
  %eptr12433 = getelementptr inbounds i64, i64* %cloptr12432, i64 0                  ; &cloptr12432[0]
  %f12441 = ptrtoint void(i64,i64)* @lam11155 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12441, i64* %eptr12433                                                 ; store fptr
  %arg7913 = ptrtoint i64* %cloptr12432 to i64                                       ; closure cast; i64* -> i64
  %arg7912 = add i64 0, 0                                                            ; quoted ()
  %rva9347 = add i64 0, 0                                                            ; quoted ()
  %rva9346 = call i64 @prim_cons(i64 %retprim7306, i64 %rva9347)                     ; call prim_cons
  %rva9345 = call i64 @prim_cons(i64 %arg7912, i64 %rva9346)                         ; call prim_cons
  %cloptr12442 = inttoptr i64 %arg7913 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12442)                                        ; assert function application
  %i0ptr12443 = getelementptr inbounds i64, i64* %cloptr12442, i64 0                 ; &cloptr12442[0]
  %f12445 = load i64, i64* %i0ptr12443, align 8                                      ; load; *i0ptr12443
  %fptr12444 = inttoptr i64 %f12445 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12444(i64 %arg7913, i64 %rva9345)                   ; tail call
  ret void
}


define void @lam11155(i64 %env11156, i64 %rvp9343) {
  %envptr12446 = inttoptr i64 %env11156 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12447 = getelementptr inbounds i64, i64* %envptr12446, i64 7                ; &envptr12446[7]
  %Akm$_37_62 = load i64, i64* %envptr12447, align 8                                 ; load; *envptr12447
  %envptr12448 = inttoptr i64 %env11156 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12449 = getelementptr inbounds i64, i64* %envptr12448, i64 6                ; &envptr12448[6]
  %p1o$x = load i64, i64* %envptr12449, align 8                                      ; load; *envptr12449
  %envptr12450 = inttoptr i64 %env11156 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12451 = getelementptr inbounds i64, i64* %envptr12450, i64 5                ; &envptr12450[5]
  %AuT$y = load i64, i64* %envptr12451, align 8                                      ; load; *envptr12451
  %envptr12452 = inttoptr i64 %env11156 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12453 = getelementptr inbounds i64, i64* %envptr12452, i64 4                ; &envptr12452[4]
  %cont7296 = load i64, i64* %envptr12453, align 8                                   ; load; *envptr12453
  %envptr12454 = inttoptr i64 %env11156 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12455 = getelementptr inbounds i64, i64* %envptr12454, i64 3                ; &envptr12454[3]
  %xgE$lx = load i64, i64* %envptr12455, align 8                                     ; load; *envptr12455
  %envptr12456 = inttoptr i64 %env11156 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12457 = getelementptr inbounds i64, i64* %envptr12456, i64 2                ; &envptr12456[2]
  %ROF$ly = load i64, i64* %envptr12457, align 8                                     ; load; *envptr12457
  %envptr12458 = inttoptr i64 %env11156 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12459 = getelementptr inbounds i64, i64* %envptr12458, i64 1                ; &envptr12458[1]
  %ein$_37drop = load i64, i64* %envptr12459, align 8                                ; load; *envptr12459
  %_957299 = call i64 @prim_car(i64 %rvp9343)                                        ; call prim_car
  %rvp9341 = call i64 @prim_cdr(i64 %rvp9343)                                        ; call prim_cdr
  %I7Z$loop = call i64 @prim_car(i64 %rvp9341)                                       ; call prim_car
  %na9222 = call i64 @prim_cdr(i64 %rvp9341)                                         ; call prim_cdr
  %arg7915 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr12460 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr12462 = getelementptr inbounds i64, i64* %cloptr12460, i64 1                  ; &eptr12462[1]
  store i64 %I7Z$loop, i64* %eptr12462                                               ; *eptr12462 = %I7Z$loop
  %eptr12461 = getelementptr inbounds i64, i64* %cloptr12460, i64 0                  ; &cloptr12460[0]
  %f12463 = ptrtoint void(i64,i64)* @lam11152 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12463, i64* %eptr12461                                                 ; store fptr
  %arg7914 = ptrtoint i64* %cloptr12460 to i64                                       ; closure cast; i64* -> i64
  %ibY$_957029 = call i64 @prim_vector_45set_33(i64 %I7Z$loop, i64 %arg7915, i64 %arg7914); call prim_vector_45set_33
  %arg7930 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7143 = call i64 @prim_vector_45ref(i64 %I7Z$loop, i64 %arg7930)                  ; call prim_vector_45ref
  %cloptr12464 = call i64* @alloc(i64 72)                                            ; malloc
  %eptr12466 = getelementptr inbounds i64, i64* %cloptr12464, i64 1                  ; &eptr12466[1]
  %eptr12467 = getelementptr inbounds i64, i64* %cloptr12464, i64 2                  ; &eptr12467[2]
  %eptr12468 = getelementptr inbounds i64, i64* %cloptr12464, i64 3                  ; &eptr12468[3]
  %eptr12469 = getelementptr inbounds i64, i64* %cloptr12464, i64 4                  ; &eptr12469[4]
  %eptr12470 = getelementptr inbounds i64, i64* %cloptr12464, i64 5                  ; &eptr12470[5]
  %eptr12471 = getelementptr inbounds i64, i64* %cloptr12464, i64 6                  ; &eptr12471[6]
  %eptr12472 = getelementptr inbounds i64, i64* %cloptr12464, i64 7                  ; &eptr12472[7]
  %eptr12473 = getelementptr inbounds i64, i64* %cloptr12464, i64 8                  ; &eptr12473[8]
  store i64 %ein$_37drop, i64* %eptr12466                                            ; *eptr12466 = %ein$_37drop
  store i64 %ROF$ly, i64* %eptr12467                                                 ; *eptr12467 = %ROF$ly
  store i64 %xgE$lx, i64* %eptr12468                                                 ; *eptr12468 = %xgE$lx
  store i64 %cont7296, i64* %eptr12469                                               ; *eptr12469 = %cont7296
  store i64 %AuT$y, i64* %eptr12470                                                  ; *eptr12470 = %AuT$y
  store i64 %p1o$x, i64* %eptr12471                                                  ; *eptr12471 = %p1o$x
  store i64 %a7143, i64* %eptr12472                                                  ; *eptr12472 = %a7143
  store i64 %Akm$_37_62, i64* %eptr12473                                             ; *eptr12473 = %Akm$_37_62
  %eptr12465 = getelementptr inbounds i64, i64* %cloptr12464, i64 0                  ; &cloptr12464[0]
  %f12474 = ptrtoint void(i64,i64)* @lam11145 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12474, i64* %eptr12465                                                 ; store fptr
  %arg7934 = ptrtoint i64* %cloptr12464 to i64                                       ; closure cast; i64* -> i64
  %rva9340 = add i64 0, 0                                                            ; quoted ()
  %rva9339 = call i64 @prim_cons(i64 %ROF$ly, i64 %rva9340)                          ; call prim_cons
  %rva9338 = call i64 @prim_cons(i64 %xgE$lx, i64 %rva9339)                          ; call prim_cons
  %rva9337 = call i64 @prim_cons(i64 %arg7934, i64 %rva9338)                         ; call prim_cons
  %cloptr12475 = inttoptr i64 %Akm$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12475)                                        ; assert function application
  %i0ptr12476 = getelementptr inbounds i64, i64* %cloptr12475, i64 0                 ; &cloptr12475[0]
  %f12478 = load i64, i64* %i0ptr12476, align 8                                      ; load; *i0ptr12476
  %fptr12477 = inttoptr i64 %f12478 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12477(i64 %Akm$_37_62, i64 %rva9337)                ; tail call
  ret void
}


define void @lam11152(i64 %env11153, i64 %rvp9236) {
  %envptr12479 = inttoptr i64 %env11153 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12480 = getelementptr inbounds i64, i64* %envptr12479, i64 1                ; &envptr12479[1]
  %I7Z$loop = load i64, i64* %envptr12480, align 8                                   ; load; *envptr12480
  %cont7300 = call i64 @prim_car(i64 %rvp9236)                                       ; call prim_car
  %rvp9234 = call i64 @prim_cdr(i64 %rvp9236)                                        ; call prim_cdr
  %bGK$x = call i64 @prim_car(i64 %rvp9234)                                          ; call prim_car
  %rvp9232 = call i64 @prim_cdr(i64 %rvp9234)                                        ; call prim_cdr
  %oxm$y = call i64 @prim_car(i64 %rvp9232)                                          ; call prim_car
  %na9224 = call i64 @prim_cdr(i64 %rvp9232)                                         ; call prim_cdr
  %a7139 = call i64 @prim_eq_63(i64 %bGK$x, i64 %oxm$y)                              ; call prim_eq_63
  %cmp12481 = icmp eq i64 %a7139, 15                                                 ; false?
  br i1 %cmp12481, label %else12483, label %then12482                                ; if

then12482:
  %arg7920 = add i64 0, 0                                                            ; quoted ()
  %rva9227 = add i64 0, 0                                                            ; quoted ()
  %rva9226 = call i64 @prim_cons(i64 %bGK$x, i64 %rva9227)                           ; call prim_cons
  %rva9225 = call i64 @prim_cons(i64 %arg7920, i64 %rva9226)                         ; call prim_cons
  %cloptr12484 = inttoptr i64 %cont7300 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12484)                                        ; assert function application
  %i0ptr12485 = getelementptr inbounds i64, i64* %cloptr12484, i64 0                 ; &cloptr12484[0]
  %f12487 = load i64, i64* %i0ptr12485, align 8                                      ; load; *i0ptr12485
  %fptr12486 = inttoptr i64 %f12487 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12486(i64 %cont7300, i64 %rva9225)                  ; tail call
  ret void

else12483:
  %arg7922 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7140 = call i64 @prim_vector_45ref(i64 %I7Z$loop, i64 %arg7922)                  ; call prim_vector_45ref
  %a7141 = call i64 @prim_cdr(i64 %bGK$x)                                            ; call prim_cdr
  %a7142 = call i64 @prim_cdr(i64 %oxm$y)                                            ; call prim_cdr
  %rva9231 = add i64 0, 0                                                            ; quoted ()
  %rva9230 = call i64 @prim_cons(i64 %a7142, i64 %rva9231)                           ; call prim_cons
  %rva9229 = call i64 @prim_cons(i64 %a7141, i64 %rva9230)                           ; call prim_cons
  %rva9228 = call i64 @prim_cons(i64 %cont7300, i64 %rva9229)                        ; call prim_cons
  %cloptr12488 = inttoptr i64 %a7140 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12488)                                        ; assert function application
  %i0ptr12489 = getelementptr inbounds i64, i64* %cloptr12488, i64 0                 ; &cloptr12488[0]
  %f12491 = load i64, i64* %i0ptr12489, align 8                                      ; load; *i0ptr12489
  %fptr12490 = inttoptr i64 %f12491 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12490(i64 %a7140, i64 %rva9228)                     ; tail call
  ret void
}


define void @lam11145(i64 %env11146, i64 %rvp9335) {
  %envptr12492 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12493 = getelementptr inbounds i64, i64* %envptr12492, i64 8                ; &envptr12492[8]
  %Akm$_37_62 = load i64, i64* %envptr12493, align 8                                 ; load; *envptr12493
  %envptr12494 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12495 = getelementptr inbounds i64, i64* %envptr12494, i64 7                ; &envptr12494[7]
  %a7143 = load i64, i64* %envptr12495, align 8                                      ; load; *envptr12495
  %envptr12496 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12497 = getelementptr inbounds i64, i64* %envptr12496, i64 6                ; &envptr12496[6]
  %p1o$x = load i64, i64* %envptr12497, align 8                                      ; load; *envptr12497
  %envptr12498 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12499 = getelementptr inbounds i64, i64* %envptr12498, i64 5                ; &envptr12498[5]
  %AuT$y = load i64, i64* %envptr12499, align 8                                      ; load; *envptr12499
  %envptr12500 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12501 = getelementptr inbounds i64, i64* %envptr12500, i64 4                ; &envptr12500[4]
  %cont7296 = load i64, i64* %envptr12501, align 8                                   ; load; *envptr12501
  %envptr12502 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12503 = getelementptr inbounds i64, i64* %envptr12502, i64 3                ; &envptr12502[3]
  %xgE$lx = load i64, i64* %envptr12503, align 8                                     ; load; *envptr12503
  %envptr12504 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12505 = getelementptr inbounds i64, i64* %envptr12504, i64 2                ; &envptr12504[2]
  %ROF$ly = load i64, i64* %envptr12505, align 8                                     ; load; *envptr12505
  %envptr12506 = inttoptr i64 %env11146 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12507 = getelementptr inbounds i64, i64* %envptr12506, i64 1                ; &envptr12506[1]
  %ein$_37drop = load i64, i64* %envptr12507, align 8                                ; load; *envptr12507
  %_957301 = call i64 @prim_car(i64 %rvp9335)                                        ; call prim_car
  %rvp9333 = call i64 @prim_cdr(i64 %rvp9335)                                        ; call prim_cdr
  %a7144 = call i64 @prim_car(i64 %rvp9333)                                          ; call prim_car
  %na9239 = call i64 @prim_cdr(i64 %rvp9333)                                         ; call prim_cdr
  %cmp12508 = icmp eq i64 %a7144, 15                                                 ; false?
  br i1 %cmp12508, label %else12510, label %then12509                                ; if

then12509:
  %a7145 = call i64 @prim__45(i64 %xgE$lx, i64 %ROF$ly)                              ; call prim__45
  %cloptr12511 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr12513 = getelementptr inbounds i64, i64* %cloptr12511, i64 1                  ; &eptr12513[1]
  %eptr12514 = getelementptr inbounds i64, i64* %cloptr12511, i64 2                  ; &eptr12514[2]
  %eptr12515 = getelementptr inbounds i64, i64* %cloptr12511, i64 3                  ; &eptr12515[3]
  %eptr12516 = getelementptr inbounds i64, i64* %cloptr12511, i64 4                  ; &eptr12516[4]
  %eptr12517 = getelementptr inbounds i64, i64* %cloptr12511, i64 5                  ; &eptr12517[5]
  %eptr12518 = getelementptr inbounds i64, i64* %cloptr12511, i64 6                  ; &eptr12518[6]
  %eptr12519 = getelementptr inbounds i64, i64* %cloptr12511, i64 7                  ; &eptr12519[7]
  store i64 %ein$_37drop, i64* %eptr12513                                            ; *eptr12513 = %ein$_37drop
  store i64 %ROF$ly, i64* %eptr12514                                                 ; *eptr12514 = %ROF$ly
  store i64 %xgE$lx, i64* %eptr12515                                                 ; *eptr12515 = %xgE$lx
  store i64 %cont7296, i64* %eptr12516                                               ; *eptr12516 = %cont7296
  store i64 %AuT$y, i64* %eptr12517                                                  ; *eptr12517 = %AuT$y
  store i64 %a7143, i64* %eptr12518                                                  ; *eptr12518 = %a7143
  store i64 %Akm$_37_62, i64* %eptr12519                                             ; *eptr12519 = %Akm$_37_62
  %eptr12512 = getelementptr inbounds i64, i64* %cloptr12511, i64 0                  ; &cloptr12511[0]
  %f12520 = ptrtoint void(i64,i64)* @lam11127 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12520, i64* %eptr12512                                                 ; store fptr
  %arg7940 = ptrtoint i64* %cloptr12511 to i64                                       ; closure cast; i64* -> i64
  %rva9286 = add i64 0, 0                                                            ; quoted ()
  %rva9285 = call i64 @prim_cons(i64 %a7145, i64 %rva9286)                           ; call prim_cons
  %rva9284 = call i64 @prim_cons(i64 %p1o$x, i64 %rva9285)                           ; call prim_cons
  %rva9283 = call i64 @prim_cons(i64 %arg7940, i64 %rva9284)                         ; call prim_cons
  %cloptr12521 = inttoptr i64 %ein$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12521)                                        ; assert function application
  %i0ptr12522 = getelementptr inbounds i64, i64* %cloptr12521, i64 0                 ; &cloptr12521[0]
  %f12524 = load i64, i64* %i0ptr12522, align 8                                      ; load; *i0ptr12522
  %fptr12523 = inttoptr i64 %f12524 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12523(i64 %ein$_37drop, i64 %rva9283)               ; tail call
  ret void

else12510:
  %cloptr12525 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr12527 = getelementptr inbounds i64, i64* %cloptr12525, i64 1                  ; &eptr12527[1]
  %eptr12528 = getelementptr inbounds i64, i64* %cloptr12525, i64 2                  ; &eptr12528[2]
  %eptr12529 = getelementptr inbounds i64, i64* %cloptr12525, i64 3                  ; &eptr12529[3]
  %eptr12530 = getelementptr inbounds i64, i64* %cloptr12525, i64 4                  ; &eptr12530[4]
  %eptr12531 = getelementptr inbounds i64, i64* %cloptr12525, i64 5                  ; &eptr12531[5]
  %eptr12532 = getelementptr inbounds i64, i64* %cloptr12525, i64 6                  ; &eptr12532[6]
  %eptr12533 = getelementptr inbounds i64, i64* %cloptr12525, i64 7                  ; &eptr12533[7]
  store i64 %ein$_37drop, i64* %eptr12527                                            ; *eptr12527 = %ein$_37drop
  store i64 %ROF$ly, i64* %eptr12528                                                 ; *eptr12528 = %ROF$ly
  store i64 %xgE$lx, i64* %eptr12529                                                 ; *eptr12529 = %xgE$lx
  store i64 %cont7296, i64* %eptr12530                                               ; *eptr12530 = %cont7296
  store i64 %AuT$y, i64* %eptr12531                                                  ; *eptr12531 = %AuT$y
  store i64 %a7143, i64* %eptr12532                                                  ; *eptr12532 = %a7143
  store i64 %Akm$_37_62, i64* %eptr12533                                             ; *eptr12533 = %Akm$_37_62
  %eptr12526 = getelementptr inbounds i64, i64* %cloptr12525, i64 0                  ; &cloptr12525[0]
  %f12534 = ptrtoint void(i64,i64)* @lam11143 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12534, i64* %eptr12526                                                 ; store fptr
  %arg7965 = ptrtoint i64* %cloptr12525 to i64                                       ; closure cast; i64* -> i64
  %arg7964 = add i64 0, 0                                                            ; quoted ()
  %rva9332 = add i64 0, 0                                                            ; quoted ()
  %rva9331 = call i64 @prim_cons(i64 %p1o$x, i64 %rva9332)                           ; call prim_cons
  %rva9330 = call i64 @prim_cons(i64 %arg7964, i64 %rva9331)                         ; call prim_cons
  %cloptr12535 = inttoptr i64 %arg7965 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12535)                                        ; assert function application
  %i0ptr12536 = getelementptr inbounds i64, i64* %cloptr12535, i64 0                 ; &cloptr12535[0]
  %f12538 = load i64, i64* %i0ptr12536, align 8                                      ; load; *i0ptr12536
  %fptr12537 = inttoptr i64 %f12538 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12537(i64 %arg7965, i64 %rva9330)                   ; tail call
  ret void
}


define void @lam11143(i64 %env11144, i64 %rvp9328) {
  %envptr12539 = inttoptr i64 %env11144 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12540 = getelementptr inbounds i64, i64* %envptr12539, i64 7                ; &envptr12539[7]
  %Akm$_37_62 = load i64, i64* %envptr12540, align 8                                 ; load; *envptr12540
  %envptr12541 = inttoptr i64 %env11144 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12542 = getelementptr inbounds i64, i64* %envptr12541, i64 6                ; &envptr12541[6]
  %a7143 = load i64, i64* %envptr12542, align 8                                      ; load; *envptr12542
  %envptr12543 = inttoptr i64 %env11144 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12544 = getelementptr inbounds i64, i64* %envptr12543, i64 5                ; &envptr12543[5]
  %AuT$y = load i64, i64* %envptr12544, align 8                                      ; load; *envptr12544
  %envptr12545 = inttoptr i64 %env11144 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12546 = getelementptr inbounds i64, i64* %envptr12545, i64 4                ; &envptr12545[4]
  %cont7296 = load i64, i64* %envptr12546, align 8                                   ; load; *envptr12546
  %envptr12547 = inttoptr i64 %env11144 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12548 = getelementptr inbounds i64, i64* %envptr12547, i64 3                ; &envptr12547[3]
  %xgE$lx = load i64, i64* %envptr12548, align 8                                     ; load; *envptr12548
  %envptr12549 = inttoptr i64 %env11144 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12550 = getelementptr inbounds i64, i64* %envptr12549, i64 2                ; &envptr12549[2]
  %ROF$ly = load i64, i64* %envptr12550, align 8                                     ; load; *envptr12550
  %envptr12551 = inttoptr i64 %env11144 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12552 = getelementptr inbounds i64, i64* %envptr12551, i64 1                ; &envptr12551[1]
  %ein$_37drop = load i64, i64* %envptr12552, align 8                                ; load; *envptr12552
  %_957302 = call i64 @prim_car(i64 %rvp9328)                                        ; call prim_car
  %rvp9326 = call i64 @prim_cdr(i64 %rvp9328)                                        ; call prim_cdr
  %a7146 = call i64 @prim_car(i64 %rvp9326)                                          ; call prim_car
  %na9288 = call i64 @prim_cdr(i64 %rvp9326)                                         ; call prim_cdr
  %cloptr12553 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr12555 = getelementptr inbounds i64, i64* %cloptr12553, i64 1                  ; &eptr12555[1]
  %eptr12556 = getelementptr inbounds i64, i64* %cloptr12553, i64 2                  ; &eptr12556[2]
  %eptr12557 = getelementptr inbounds i64, i64* %cloptr12553, i64 3                  ; &eptr12557[3]
  %eptr12558 = getelementptr inbounds i64, i64* %cloptr12553, i64 4                  ; &eptr12558[4]
  %eptr12559 = getelementptr inbounds i64, i64* %cloptr12553, i64 5                  ; &eptr12559[5]
  %eptr12560 = getelementptr inbounds i64, i64* %cloptr12553, i64 6                  ; &eptr12560[6]
  %eptr12561 = getelementptr inbounds i64, i64* %cloptr12553, i64 7                  ; &eptr12561[7]
  store i64 %ein$_37drop, i64* %eptr12555                                            ; *eptr12555 = %ein$_37drop
  store i64 %ROF$ly, i64* %eptr12556                                                 ; *eptr12556 = %ROF$ly
  store i64 %xgE$lx, i64* %eptr12557                                                 ; *eptr12557 = %xgE$lx
  store i64 %cont7296, i64* %eptr12558                                               ; *eptr12558 = %cont7296
  store i64 %AuT$y, i64* %eptr12559                                                  ; *eptr12559 = %AuT$y
  store i64 %a7146, i64* %eptr12560                                                  ; *eptr12560 = %a7146
  store i64 %a7143, i64* %eptr12561                                                  ; *eptr12561 = %a7143
  %eptr12554 = getelementptr inbounds i64, i64* %cloptr12553, i64 0                  ; &cloptr12553[0]
  %f12562 = ptrtoint void(i64,i64)* @lam11141 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12562, i64* %eptr12554                                                 ; store fptr
  %arg7968 = ptrtoint i64* %cloptr12553 to i64                                       ; closure cast; i64* -> i64
  %rva9325 = add i64 0, 0                                                            ; quoted ()
  %rva9324 = call i64 @prim_cons(i64 %xgE$lx, i64 %rva9325)                          ; call prim_cons
  %rva9323 = call i64 @prim_cons(i64 %ROF$ly, i64 %rva9324)                          ; call prim_cons
  %rva9322 = call i64 @prim_cons(i64 %arg7968, i64 %rva9323)                         ; call prim_cons
  %cloptr12563 = inttoptr i64 %Akm$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12563)                                        ; assert function application
  %i0ptr12564 = getelementptr inbounds i64, i64* %cloptr12563, i64 0                 ; &cloptr12563[0]
  %f12566 = load i64, i64* %i0ptr12564, align 8                                      ; load; *i0ptr12564
  %fptr12565 = inttoptr i64 %f12566 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12565(i64 %Akm$_37_62, i64 %rva9322)                ; tail call
  ret void
}


define void @lam11141(i64 %env11142, i64 %rvp9320) {
  %envptr12567 = inttoptr i64 %env11142 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12568 = getelementptr inbounds i64, i64* %envptr12567, i64 7                ; &envptr12567[7]
  %a7143 = load i64, i64* %envptr12568, align 8                                      ; load; *envptr12568
  %envptr12569 = inttoptr i64 %env11142 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12570 = getelementptr inbounds i64, i64* %envptr12569, i64 6                ; &envptr12569[6]
  %a7146 = load i64, i64* %envptr12570, align 8                                      ; load; *envptr12570
  %envptr12571 = inttoptr i64 %env11142 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12572 = getelementptr inbounds i64, i64* %envptr12571, i64 5                ; &envptr12571[5]
  %AuT$y = load i64, i64* %envptr12572, align 8                                      ; load; *envptr12572
  %envptr12573 = inttoptr i64 %env11142 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12574 = getelementptr inbounds i64, i64* %envptr12573, i64 4                ; &envptr12573[4]
  %cont7296 = load i64, i64* %envptr12574, align 8                                   ; load; *envptr12574
  %envptr12575 = inttoptr i64 %env11142 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12576 = getelementptr inbounds i64, i64* %envptr12575, i64 3                ; &envptr12575[3]
  %xgE$lx = load i64, i64* %envptr12576, align 8                                     ; load; *envptr12576
  %envptr12577 = inttoptr i64 %env11142 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12578 = getelementptr inbounds i64, i64* %envptr12577, i64 2                ; &envptr12577[2]
  %ROF$ly = load i64, i64* %envptr12578, align 8                                     ; load; *envptr12578
  %envptr12579 = inttoptr i64 %env11142 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12580 = getelementptr inbounds i64, i64* %envptr12579, i64 1                ; &envptr12579[1]
  %ein$_37drop = load i64, i64* %envptr12580, align 8                                ; load; *envptr12580
  %_957303 = call i64 @prim_car(i64 %rvp9320)                                        ; call prim_car
  %rvp9318 = call i64 @prim_cdr(i64 %rvp9320)                                        ; call prim_cdr
  %a7147 = call i64 @prim_car(i64 %rvp9318)                                          ; call prim_car
  %na9290 = call i64 @prim_cdr(i64 %rvp9318)                                         ; call prim_cdr
  %cmp12581 = icmp eq i64 %a7147, 15                                                 ; false?
  br i1 %cmp12581, label %else12583, label %then12582                                ; if

then12582:
  %a7148 = call i64 @prim__45(i64 %ROF$ly, i64 %xgE$lx)                              ; call prim__45
  %cloptr12584 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12586 = getelementptr inbounds i64, i64* %cloptr12584, i64 1                  ; &eptr12586[1]
  %eptr12587 = getelementptr inbounds i64, i64* %cloptr12584, i64 2                  ; &eptr12587[2]
  %eptr12588 = getelementptr inbounds i64, i64* %cloptr12584, i64 3                  ; &eptr12588[3]
  store i64 %cont7296, i64* %eptr12586                                               ; *eptr12586 = %cont7296
  store i64 %a7146, i64* %eptr12587                                                  ; *eptr12587 = %a7146
  store i64 %a7143, i64* %eptr12588                                                  ; *eptr12588 = %a7143
  %eptr12585 = getelementptr inbounds i64, i64* %cloptr12584, i64 0                  ; &cloptr12584[0]
  %f12589 = ptrtoint void(i64,i64)* @lam11134 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12589, i64* %eptr12585                                                 ; store fptr
  %arg7974 = ptrtoint i64* %cloptr12584 to i64                                       ; closure cast; i64* -> i64
  %rva9304 = add i64 0, 0                                                            ; quoted ()
  %rva9303 = call i64 @prim_cons(i64 %a7148, i64 %rva9304)                           ; call prim_cons
  %rva9302 = call i64 @prim_cons(i64 %AuT$y, i64 %rva9303)                           ; call prim_cons
  %rva9301 = call i64 @prim_cons(i64 %arg7974, i64 %rva9302)                         ; call prim_cons
  %cloptr12590 = inttoptr i64 %ein$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12590)                                        ; assert function application
  %i0ptr12591 = getelementptr inbounds i64, i64* %cloptr12590, i64 0                 ; &cloptr12590[0]
  %f12593 = load i64, i64* %i0ptr12591, align 8                                      ; load; *i0ptr12591
  %fptr12592 = inttoptr i64 %f12593 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12592(i64 %ein$_37drop, i64 %rva9301)               ; tail call
  ret void

else12583:
  %cloptr12594 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12596 = getelementptr inbounds i64, i64* %cloptr12594, i64 1                  ; &eptr12596[1]
  %eptr12597 = getelementptr inbounds i64, i64* %cloptr12594, i64 2                  ; &eptr12597[2]
  %eptr12598 = getelementptr inbounds i64, i64* %cloptr12594, i64 3                  ; &eptr12598[3]
  store i64 %cont7296, i64* %eptr12596                                               ; *eptr12596 = %cont7296
  store i64 %a7146, i64* %eptr12597                                                  ; *eptr12597 = %a7146
  store i64 %a7143, i64* %eptr12598                                                  ; *eptr12598 = %a7143
  %eptr12595 = getelementptr inbounds i64, i64* %cloptr12594, i64 0                  ; &cloptr12594[0]
  %f12599 = ptrtoint void(i64,i64)* @lam11139 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12599, i64* %eptr12595                                                 ; store fptr
  %arg7982 = ptrtoint i64* %cloptr12594 to i64                                       ; closure cast; i64* -> i64
  %arg7981 = add i64 0, 0                                                            ; quoted ()
  %rva9317 = add i64 0, 0                                                            ; quoted ()
  %rva9316 = call i64 @prim_cons(i64 %AuT$y, i64 %rva9317)                           ; call prim_cons
  %rva9315 = call i64 @prim_cons(i64 %arg7981, i64 %rva9316)                         ; call prim_cons
  %cloptr12600 = inttoptr i64 %arg7982 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12600)                                        ; assert function application
  %i0ptr12601 = getelementptr inbounds i64, i64* %cloptr12600, i64 0                 ; &cloptr12600[0]
  %f12603 = load i64, i64* %i0ptr12601, align 8                                      ; load; *i0ptr12601
  %fptr12602 = inttoptr i64 %f12603 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12602(i64 %arg7982, i64 %rva9315)                   ; tail call
  ret void
}


define void @lam11139(i64 %env11140, i64 %rvp9313) {
  %envptr12604 = inttoptr i64 %env11140 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12605 = getelementptr inbounds i64, i64* %envptr12604, i64 3                ; &envptr12604[3]
  %a7143 = load i64, i64* %envptr12605, align 8                                      ; load; *envptr12605
  %envptr12606 = inttoptr i64 %env11140 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12607 = getelementptr inbounds i64, i64* %envptr12606, i64 2                ; &envptr12606[2]
  %a7146 = load i64, i64* %envptr12607, align 8                                      ; load; *envptr12607
  %envptr12608 = inttoptr i64 %env11140 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12609 = getelementptr inbounds i64, i64* %envptr12608, i64 1                ; &envptr12608[1]
  %cont7296 = load i64, i64* %envptr12609, align 8                                   ; load; *envptr12609
  %_957304 = call i64 @prim_car(i64 %rvp9313)                                        ; call prim_car
  %rvp9311 = call i64 @prim_cdr(i64 %rvp9313)                                        ; call prim_cdr
  %a7149 = call i64 @prim_car(i64 %rvp9311)                                          ; call prim_car
  %na9306 = call i64 @prim_cdr(i64 %rvp9311)                                         ; call prim_cdr
  %rva9310 = add i64 0, 0                                                            ; quoted ()
  %rva9309 = call i64 @prim_cons(i64 %a7149, i64 %rva9310)                           ; call prim_cons
  %rva9308 = call i64 @prim_cons(i64 %a7146, i64 %rva9309)                           ; call prim_cons
  %rva9307 = call i64 @prim_cons(i64 %cont7296, i64 %rva9308)                        ; call prim_cons
  %cloptr12610 = inttoptr i64 %a7143 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12610)                                        ; assert function application
  %i0ptr12611 = getelementptr inbounds i64, i64* %cloptr12610, i64 0                 ; &cloptr12610[0]
  %f12613 = load i64, i64* %i0ptr12611, align 8                                      ; load; *i0ptr12611
  %fptr12612 = inttoptr i64 %f12613 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12612(i64 %a7143, i64 %rva9307)                     ; tail call
  ret void
}


define void @lam11134(i64 %env11135, i64 %rvp9299) {
  %envptr12614 = inttoptr i64 %env11135 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12615 = getelementptr inbounds i64, i64* %envptr12614, i64 3                ; &envptr12614[3]
  %a7143 = load i64, i64* %envptr12615, align 8                                      ; load; *envptr12615
  %envptr12616 = inttoptr i64 %env11135 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12617 = getelementptr inbounds i64, i64* %envptr12616, i64 2                ; &envptr12616[2]
  %a7146 = load i64, i64* %envptr12617, align 8                                      ; load; *envptr12617
  %envptr12618 = inttoptr i64 %env11135 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12619 = getelementptr inbounds i64, i64* %envptr12618, i64 1                ; &envptr12618[1]
  %cont7296 = load i64, i64* %envptr12619, align 8                                   ; load; *envptr12619
  %_957304 = call i64 @prim_car(i64 %rvp9299)                                        ; call prim_car
  %rvp9297 = call i64 @prim_cdr(i64 %rvp9299)                                        ; call prim_cdr
  %a7149 = call i64 @prim_car(i64 %rvp9297)                                          ; call prim_car
  %na9292 = call i64 @prim_cdr(i64 %rvp9297)                                         ; call prim_cdr
  %rva9296 = add i64 0, 0                                                            ; quoted ()
  %rva9295 = call i64 @prim_cons(i64 %a7149, i64 %rva9296)                           ; call prim_cons
  %rva9294 = call i64 @prim_cons(i64 %a7146, i64 %rva9295)                           ; call prim_cons
  %rva9293 = call i64 @prim_cons(i64 %cont7296, i64 %rva9294)                        ; call prim_cons
  %cloptr12620 = inttoptr i64 %a7143 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12620)                                        ; assert function application
  %i0ptr12621 = getelementptr inbounds i64, i64* %cloptr12620, i64 0                 ; &cloptr12620[0]
  %f12623 = load i64, i64* %i0ptr12621, align 8                                      ; load; *i0ptr12621
  %fptr12622 = inttoptr i64 %f12623 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12622(i64 %a7143, i64 %rva9293)                     ; tail call
  ret void
}


define void @lam11127(i64 %env11128, i64 %rvp9281) {
  %envptr12624 = inttoptr i64 %env11128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12625 = getelementptr inbounds i64, i64* %envptr12624, i64 7                ; &envptr12624[7]
  %Akm$_37_62 = load i64, i64* %envptr12625, align 8                                 ; load; *envptr12625
  %envptr12626 = inttoptr i64 %env11128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12627 = getelementptr inbounds i64, i64* %envptr12626, i64 6                ; &envptr12626[6]
  %a7143 = load i64, i64* %envptr12627, align 8                                      ; load; *envptr12627
  %envptr12628 = inttoptr i64 %env11128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12629 = getelementptr inbounds i64, i64* %envptr12628, i64 5                ; &envptr12628[5]
  %AuT$y = load i64, i64* %envptr12629, align 8                                      ; load; *envptr12629
  %envptr12630 = inttoptr i64 %env11128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12631 = getelementptr inbounds i64, i64* %envptr12630, i64 4                ; &envptr12630[4]
  %cont7296 = load i64, i64* %envptr12631, align 8                                   ; load; *envptr12631
  %envptr12632 = inttoptr i64 %env11128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12633 = getelementptr inbounds i64, i64* %envptr12632, i64 3                ; &envptr12632[3]
  %xgE$lx = load i64, i64* %envptr12633, align 8                                     ; load; *envptr12633
  %envptr12634 = inttoptr i64 %env11128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12635 = getelementptr inbounds i64, i64* %envptr12634, i64 2                ; &envptr12634[2]
  %ROF$ly = load i64, i64* %envptr12635, align 8                                     ; load; *envptr12635
  %envptr12636 = inttoptr i64 %env11128 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12637 = getelementptr inbounds i64, i64* %envptr12636, i64 1                ; &envptr12636[1]
  %ein$_37drop = load i64, i64* %envptr12637, align 8                                ; load; *envptr12637
  %_957302 = call i64 @prim_car(i64 %rvp9281)                                        ; call prim_car
  %rvp9279 = call i64 @prim_cdr(i64 %rvp9281)                                        ; call prim_cdr
  %a7146 = call i64 @prim_car(i64 %rvp9279)                                          ; call prim_car
  %na9241 = call i64 @prim_cdr(i64 %rvp9279)                                         ; call prim_cdr
  %cloptr12638 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr12640 = getelementptr inbounds i64, i64* %cloptr12638, i64 1                  ; &eptr12640[1]
  %eptr12641 = getelementptr inbounds i64, i64* %cloptr12638, i64 2                  ; &eptr12641[2]
  %eptr12642 = getelementptr inbounds i64, i64* %cloptr12638, i64 3                  ; &eptr12642[3]
  %eptr12643 = getelementptr inbounds i64, i64* %cloptr12638, i64 4                  ; &eptr12643[4]
  %eptr12644 = getelementptr inbounds i64, i64* %cloptr12638, i64 5                  ; &eptr12644[5]
  %eptr12645 = getelementptr inbounds i64, i64* %cloptr12638, i64 6                  ; &eptr12645[6]
  %eptr12646 = getelementptr inbounds i64, i64* %cloptr12638, i64 7                  ; &eptr12646[7]
  store i64 %ein$_37drop, i64* %eptr12640                                            ; *eptr12640 = %ein$_37drop
  store i64 %ROF$ly, i64* %eptr12641                                                 ; *eptr12641 = %ROF$ly
  store i64 %xgE$lx, i64* %eptr12642                                                 ; *eptr12642 = %xgE$lx
  store i64 %cont7296, i64* %eptr12643                                               ; *eptr12643 = %cont7296
  store i64 %AuT$y, i64* %eptr12644                                                  ; *eptr12644 = %AuT$y
  store i64 %a7146, i64* %eptr12645                                                  ; *eptr12645 = %a7146
  store i64 %a7143, i64* %eptr12646                                                  ; *eptr12646 = %a7143
  %eptr12639 = getelementptr inbounds i64, i64* %cloptr12638, i64 0                  ; &cloptr12638[0]
  %f12647 = ptrtoint void(i64,i64)* @lam11125 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12647, i64* %eptr12639                                                 ; store fptr
  %arg7944 = ptrtoint i64* %cloptr12638 to i64                                       ; closure cast; i64* -> i64
  %rva9278 = add i64 0, 0                                                            ; quoted ()
  %rva9277 = call i64 @prim_cons(i64 %xgE$lx, i64 %rva9278)                          ; call prim_cons
  %rva9276 = call i64 @prim_cons(i64 %ROF$ly, i64 %rva9277)                          ; call prim_cons
  %rva9275 = call i64 @prim_cons(i64 %arg7944, i64 %rva9276)                         ; call prim_cons
  %cloptr12648 = inttoptr i64 %Akm$_37_62 to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12648)                                        ; assert function application
  %i0ptr12649 = getelementptr inbounds i64, i64* %cloptr12648, i64 0                 ; &cloptr12648[0]
  %f12651 = load i64, i64* %i0ptr12649, align 8                                      ; load; *i0ptr12649
  %fptr12650 = inttoptr i64 %f12651 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12650(i64 %Akm$_37_62, i64 %rva9275)                ; tail call
  ret void
}


define void @lam11125(i64 %env11126, i64 %rvp9273) {
  %envptr12652 = inttoptr i64 %env11126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12653 = getelementptr inbounds i64, i64* %envptr12652, i64 7                ; &envptr12652[7]
  %a7143 = load i64, i64* %envptr12653, align 8                                      ; load; *envptr12653
  %envptr12654 = inttoptr i64 %env11126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12655 = getelementptr inbounds i64, i64* %envptr12654, i64 6                ; &envptr12654[6]
  %a7146 = load i64, i64* %envptr12655, align 8                                      ; load; *envptr12655
  %envptr12656 = inttoptr i64 %env11126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12657 = getelementptr inbounds i64, i64* %envptr12656, i64 5                ; &envptr12656[5]
  %AuT$y = load i64, i64* %envptr12657, align 8                                      ; load; *envptr12657
  %envptr12658 = inttoptr i64 %env11126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12659 = getelementptr inbounds i64, i64* %envptr12658, i64 4                ; &envptr12658[4]
  %cont7296 = load i64, i64* %envptr12659, align 8                                   ; load; *envptr12659
  %envptr12660 = inttoptr i64 %env11126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12661 = getelementptr inbounds i64, i64* %envptr12660, i64 3                ; &envptr12660[3]
  %xgE$lx = load i64, i64* %envptr12661, align 8                                     ; load; *envptr12661
  %envptr12662 = inttoptr i64 %env11126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12663 = getelementptr inbounds i64, i64* %envptr12662, i64 2                ; &envptr12662[2]
  %ROF$ly = load i64, i64* %envptr12663, align 8                                     ; load; *envptr12663
  %envptr12664 = inttoptr i64 %env11126 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12665 = getelementptr inbounds i64, i64* %envptr12664, i64 1                ; &envptr12664[1]
  %ein$_37drop = load i64, i64* %envptr12665, align 8                                ; load; *envptr12665
  %_957303 = call i64 @prim_car(i64 %rvp9273)                                        ; call prim_car
  %rvp9271 = call i64 @prim_cdr(i64 %rvp9273)                                        ; call prim_cdr
  %a7147 = call i64 @prim_car(i64 %rvp9271)                                          ; call prim_car
  %na9243 = call i64 @prim_cdr(i64 %rvp9271)                                         ; call prim_cdr
  %cmp12666 = icmp eq i64 %a7147, 15                                                 ; false?
  br i1 %cmp12666, label %else12668, label %then12667                                ; if

then12667:
  %a7148 = call i64 @prim__45(i64 %ROF$ly, i64 %xgE$lx)                              ; call prim__45
  %cloptr12669 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12671 = getelementptr inbounds i64, i64* %cloptr12669, i64 1                  ; &eptr12671[1]
  %eptr12672 = getelementptr inbounds i64, i64* %cloptr12669, i64 2                  ; &eptr12672[2]
  %eptr12673 = getelementptr inbounds i64, i64* %cloptr12669, i64 3                  ; &eptr12673[3]
  store i64 %cont7296, i64* %eptr12671                                               ; *eptr12671 = %cont7296
  store i64 %a7146, i64* %eptr12672                                                  ; *eptr12672 = %a7146
  store i64 %a7143, i64* %eptr12673                                                  ; *eptr12673 = %a7143
  %eptr12670 = getelementptr inbounds i64, i64* %cloptr12669, i64 0                  ; &cloptr12669[0]
  %f12674 = ptrtoint void(i64,i64)* @lam11118 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12674, i64* %eptr12670                                                 ; store fptr
  %arg7950 = ptrtoint i64* %cloptr12669 to i64                                       ; closure cast; i64* -> i64
  %rva9257 = add i64 0, 0                                                            ; quoted ()
  %rva9256 = call i64 @prim_cons(i64 %a7148, i64 %rva9257)                           ; call prim_cons
  %rva9255 = call i64 @prim_cons(i64 %AuT$y, i64 %rva9256)                           ; call prim_cons
  %rva9254 = call i64 @prim_cons(i64 %arg7950, i64 %rva9255)                         ; call prim_cons
  %cloptr12675 = inttoptr i64 %ein$_37drop to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12675)                                        ; assert function application
  %i0ptr12676 = getelementptr inbounds i64, i64* %cloptr12675, i64 0                 ; &cloptr12675[0]
  %f12678 = load i64, i64* %i0ptr12676, align 8                                      ; load; *i0ptr12676
  %fptr12677 = inttoptr i64 %f12678 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12677(i64 %ein$_37drop, i64 %rva9254)               ; tail call
  ret void

else12668:
  %cloptr12679 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12681 = getelementptr inbounds i64, i64* %cloptr12679, i64 1                  ; &eptr12681[1]
  %eptr12682 = getelementptr inbounds i64, i64* %cloptr12679, i64 2                  ; &eptr12682[2]
  %eptr12683 = getelementptr inbounds i64, i64* %cloptr12679, i64 3                  ; &eptr12683[3]
  store i64 %cont7296, i64* %eptr12681                                               ; *eptr12681 = %cont7296
  store i64 %a7146, i64* %eptr12682                                                  ; *eptr12682 = %a7146
  store i64 %a7143, i64* %eptr12683                                                  ; *eptr12683 = %a7143
  %eptr12680 = getelementptr inbounds i64, i64* %cloptr12679, i64 0                  ; &cloptr12679[0]
  %f12684 = ptrtoint void(i64,i64)* @lam11123 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12684, i64* %eptr12680                                                 ; store fptr
  %arg7958 = ptrtoint i64* %cloptr12679 to i64                                       ; closure cast; i64* -> i64
  %arg7957 = add i64 0, 0                                                            ; quoted ()
  %rva9270 = add i64 0, 0                                                            ; quoted ()
  %rva9269 = call i64 @prim_cons(i64 %AuT$y, i64 %rva9270)                           ; call prim_cons
  %rva9268 = call i64 @prim_cons(i64 %arg7957, i64 %rva9269)                         ; call prim_cons
  %cloptr12685 = inttoptr i64 %arg7958 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12685)                                        ; assert function application
  %i0ptr12686 = getelementptr inbounds i64, i64* %cloptr12685, i64 0                 ; &cloptr12685[0]
  %f12688 = load i64, i64* %i0ptr12686, align 8                                      ; load; *i0ptr12686
  %fptr12687 = inttoptr i64 %f12688 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12687(i64 %arg7958, i64 %rva9268)                   ; tail call
  ret void
}


define void @lam11123(i64 %env11124, i64 %rvp9266) {
  %envptr12689 = inttoptr i64 %env11124 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12690 = getelementptr inbounds i64, i64* %envptr12689, i64 3                ; &envptr12689[3]
  %a7143 = load i64, i64* %envptr12690, align 8                                      ; load; *envptr12690
  %envptr12691 = inttoptr i64 %env11124 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12692 = getelementptr inbounds i64, i64* %envptr12691, i64 2                ; &envptr12691[2]
  %a7146 = load i64, i64* %envptr12692, align 8                                      ; load; *envptr12692
  %envptr12693 = inttoptr i64 %env11124 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12694 = getelementptr inbounds i64, i64* %envptr12693, i64 1                ; &envptr12693[1]
  %cont7296 = load i64, i64* %envptr12694, align 8                                   ; load; *envptr12694
  %_957304 = call i64 @prim_car(i64 %rvp9266)                                        ; call prim_car
  %rvp9264 = call i64 @prim_cdr(i64 %rvp9266)                                        ; call prim_cdr
  %a7149 = call i64 @prim_car(i64 %rvp9264)                                          ; call prim_car
  %na9259 = call i64 @prim_cdr(i64 %rvp9264)                                         ; call prim_cdr
  %rva9263 = add i64 0, 0                                                            ; quoted ()
  %rva9262 = call i64 @prim_cons(i64 %a7149, i64 %rva9263)                           ; call prim_cons
  %rva9261 = call i64 @prim_cons(i64 %a7146, i64 %rva9262)                           ; call prim_cons
  %rva9260 = call i64 @prim_cons(i64 %cont7296, i64 %rva9261)                        ; call prim_cons
  %cloptr12695 = inttoptr i64 %a7143 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12695)                                        ; assert function application
  %i0ptr12696 = getelementptr inbounds i64, i64* %cloptr12695, i64 0                 ; &cloptr12695[0]
  %f12698 = load i64, i64* %i0ptr12696, align 8                                      ; load; *i0ptr12696
  %fptr12697 = inttoptr i64 %f12698 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12697(i64 %a7143, i64 %rva9260)                     ; tail call
  ret void
}


define void @lam11118(i64 %env11119, i64 %rvp9252) {
  %envptr12699 = inttoptr i64 %env11119 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12700 = getelementptr inbounds i64, i64* %envptr12699, i64 3                ; &envptr12699[3]
  %a7143 = load i64, i64* %envptr12700, align 8                                      ; load; *envptr12700
  %envptr12701 = inttoptr i64 %env11119 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12702 = getelementptr inbounds i64, i64* %envptr12701, i64 2                ; &envptr12701[2]
  %a7146 = load i64, i64* %envptr12702, align 8                                      ; load; *envptr12702
  %envptr12703 = inttoptr i64 %env11119 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12704 = getelementptr inbounds i64, i64* %envptr12703, i64 1                ; &envptr12703[1]
  %cont7296 = load i64, i64* %envptr12704, align 8                                   ; load; *envptr12704
  %_957304 = call i64 @prim_car(i64 %rvp9252)                                        ; call prim_car
  %rvp9250 = call i64 @prim_cdr(i64 %rvp9252)                                        ; call prim_cdr
  %a7149 = call i64 @prim_car(i64 %rvp9250)                                          ; call prim_car
  %na9245 = call i64 @prim_cdr(i64 %rvp9250)                                         ; call prim_cdr
  %rva9249 = add i64 0, 0                                                            ; quoted ()
  %rva9248 = call i64 @prim_cons(i64 %a7149, i64 %rva9249)                           ; call prim_cons
  %rva9247 = call i64 @prim_cons(i64 %a7146, i64 %rva9248)                           ; call prim_cons
  %rva9246 = call i64 @prim_cons(i64 %cont7296, i64 %rva9247)                        ; call prim_cons
  %cloptr12705 = inttoptr i64 %a7143 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12705)                                        ; assert function application
  %i0ptr12706 = getelementptr inbounds i64, i64* %cloptr12705, i64 0                 ; &cloptr12705[0]
  %f12708 = load i64, i64* %i0ptr12706, align 8                                      ; load; *i0ptr12706
  %fptr12707 = inttoptr i64 %f12708 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12707(i64 %a7143, i64 %rva9246)                     ; tail call
  ret void
}


define void @lam11106(i64 %env11107, i64 %rvp9498) {
  %envptr12709 = inttoptr i64 %env11107 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12710 = getelementptr inbounds i64, i64* %envptr12709, i64 2                ; &envptr12709[2]
  %a62$_37wind_45stack = load i64, i64* %envptr12710, align 8                        ; load; *envptr12710
  %envptr12711 = inttoptr i64 %env11107 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12712 = getelementptr inbounds i64, i64* %envptr12711, i64 1                ; &envptr12711[1]
  %Yw2$_37common_45tail = load i64, i64* %envptr12712, align 8                       ; load; *envptr12712
  %cont7309 = call i64 @prim_car(i64 %rvp9498)                                       ; call prim_car
  %rvp9496 = call i64 @prim_cdr(i64 %rvp9498)                                        ; call prim_cdr
  %FVc$new = call i64 @prim_car(i64 %rvp9496)                                        ; call prim_car
  %na9375 = call i64 @prim_cdr(i64 %rvp9496)                                         ; call prim_cdr
  %arg7987 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7150 = call i64 @prim_vector_45ref(i64 %a62$_37wind_45stack, i64 %arg7987)       ; call prim_vector_45ref
  %cloptr12713 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12715 = getelementptr inbounds i64, i64* %cloptr12713, i64 1                  ; &eptr12715[1]
  %eptr12716 = getelementptr inbounds i64, i64* %cloptr12713, i64 2                  ; &eptr12716[2]
  %eptr12717 = getelementptr inbounds i64, i64* %cloptr12713, i64 3                  ; &eptr12717[3]
  store i64 %cont7309, i64* %eptr12715                                               ; *eptr12715 = %cont7309
  store i64 %FVc$new, i64* %eptr12716                                                ; *eptr12716 = %FVc$new
  store i64 %a62$_37wind_45stack, i64* %eptr12717                                    ; *eptr12717 = %a62$_37wind_45stack
  %eptr12714 = getelementptr inbounds i64, i64* %cloptr12713, i64 0                  ; &cloptr12713[0]
  %f12718 = ptrtoint void(i64,i64)* @lam11103 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12718, i64* %eptr12714                                                 ; store fptr
  %arg7991 = ptrtoint i64* %cloptr12713 to i64                                       ; closure cast; i64* -> i64
  %rva9495 = add i64 0, 0                                                            ; quoted ()
  %rva9494 = call i64 @prim_cons(i64 %a7150, i64 %rva9495)                           ; call prim_cons
  %rva9493 = call i64 @prim_cons(i64 %FVc$new, i64 %rva9494)                         ; call prim_cons
  %rva9492 = call i64 @prim_cons(i64 %arg7991, i64 %rva9493)                         ; call prim_cons
  %cloptr12719 = inttoptr i64 %Yw2$_37common_45tail to i64*                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12719)                                        ; assert function application
  %i0ptr12720 = getelementptr inbounds i64, i64* %cloptr12719, i64 0                 ; &cloptr12719[0]
  %f12722 = load i64, i64* %i0ptr12720, align 8                                      ; load; *i0ptr12720
  %fptr12721 = inttoptr i64 %f12722 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12721(i64 %Yw2$_37common_45tail, i64 %rva9492)      ; tail call
  ret void
}


define void @lam11103(i64 %env11104, i64 %rvp9490) {
  %envptr12723 = inttoptr i64 %env11104 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12724 = getelementptr inbounds i64, i64* %envptr12723, i64 3                ; &envptr12723[3]
  %a62$_37wind_45stack = load i64, i64* %envptr12724, align 8                        ; load; *envptr12724
  %envptr12725 = inttoptr i64 %env11104 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12726 = getelementptr inbounds i64, i64* %envptr12725, i64 2                ; &envptr12725[2]
  %FVc$new = load i64, i64* %envptr12726, align 8                                    ; load; *envptr12726
  %envptr12727 = inttoptr i64 %env11104 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12728 = getelementptr inbounds i64, i64* %envptr12727, i64 1                ; &envptr12727[1]
  %cont7309 = load i64, i64* %envptr12728, align 8                                   ; load; *envptr12728
  %_957310 = call i64 @prim_car(i64 %rvp9490)                                        ; call prim_car
  %rvp9488 = call i64 @prim_cdr(i64 %rvp9490)                                        ; call prim_cdr
  %MgG$tail = call i64 @prim_car(i64 %rvp9488)                                       ; call prim_car
  %na9377 = call i64 @prim_cdr(i64 %rvp9488)                                         ; call prim_cdr
  %cloptr12729 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12730 = getelementptr inbounds i64, i64* %cloptr12729, i64 0                  ; &cloptr12729[0]
  %f12731 = ptrtoint void(i64,i64)* @lam11101 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12731, i64* %eptr12730                                                 ; store fptr
  %arg7994 = ptrtoint i64* %cloptr12729 to i64                                       ; closure cast; i64* -> i64
  %cloptr12732 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12734 = getelementptr inbounds i64, i64* %cloptr12732, i64 1                  ; &eptr12734[1]
  %eptr12735 = getelementptr inbounds i64, i64* %cloptr12732, i64 2                  ; &eptr12735[2]
  %eptr12736 = getelementptr inbounds i64, i64* %cloptr12732, i64 3                  ; &eptr12736[3]
  %eptr12737 = getelementptr inbounds i64, i64* %cloptr12732, i64 4                  ; &eptr12737[4]
  store i64 %cont7309, i64* %eptr12734                                               ; *eptr12734 = %cont7309
  store i64 %MgG$tail, i64* %eptr12735                                               ; *eptr12735 = %MgG$tail
  store i64 %FVc$new, i64* %eptr12736                                                ; *eptr12736 = %FVc$new
  store i64 %a62$_37wind_45stack, i64* %eptr12737                                    ; *eptr12737 = %a62$_37wind_45stack
  %eptr12733 = getelementptr inbounds i64, i64* %cloptr12732, i64 0                  ; &cloptr12732[0]
  %f12738 = ptrtoint void(i64,i64)* @lam11097 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12738, i64* %eptr12733                                                 ; store fptr
  %arg7993 = ptrtoint i64* %cloptr12732 to i64                                       ; closure cast; i64* -> i64
  %rva9487 = add i64 0, 0                                                            ; quoted ()
  %rva9486 = call i64 @prim_cons(i64 %arg7993, i64 %rva9487)                         ; call prim_cons
  %cloptr12739 = inttoptr i64 %arg7994 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12739)                                        ; assert function application
  %i0ptr12740 = getelementptr inbounds i64, i64* %cloptr12739, i64 0                 ; &cloptr12739[0]
  %f12742 = load i64, i64* %i0ptr12740, align 8                                      ; load; *i0ptr12740
  %fptr12741 = inttoptr i64 %f12742 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12741(i64 %arg7994, i64 %rva9486)                   ; tail call
  ret void
}


define void @lam11101(i64 %env11102, i64 %L6g$lst7331) {
  %cont7330 = call i64 @prim_car(i64 %L6g$lst7331)                                   ; call prim_car
  %L6g$lst = call i64 @prim_cdr(i64 %L6g$lst7331)                                    ; call prim_cdr
  %arg7998 = add i64 0, 0                                                            ; quoted ()
  %rva9380 = add i64 0, 0                                                            ; quoted ()
  %rva9379 = call i64 @prim_cons(i64 %L6g$lst, i64 %rva9380)                         ; call prim_cons
  %rva9378 = call i64 @prim_cons(i64 %arg7998, i64 %rva9379)                         ; call prim_cons
  %cloptr12743 = inttoptr i64 %cont7330 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12743)                                        ; assert function application
  %i0ptr12744 = getelementptr inbounds i64, i64* %cloptr12743, i64 0                 ; &cloptr12743[0]
  %f12746 = load i64, i64* %i0ptr12744, align 8                                      ; load; *i0ptr12744
  %fptr12745 = inttoptr i64 %f12746 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12745(i64 %cont7330, i64 %rva9378)                  ; tail call
  ret void
}


define void @lam11097(i64 %env11098, i64 %rvp9484) {
  %envptr12747 = inttoptr i64 %env11098 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12748 = getelementptr inbounds i64, i64* %envptr12747, i64 4                ; &envptr12747[4]
  %a62$_37wind_45stack = load i64, i64* %envptr12748, align 8                        ; load; *envptr12748
  %envptr12749 = inttoptr i64 %env11098 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12750 = getelementptr inbounds i64, i64* %envptr12749, i64 3                ; &envptr12749[3]
  %FVc$new = load i64, i64* %envptr12750, align 8                                    ; load; *envptr12750
  %envptr12751 = inttoptr i64 %env11098 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12752 = getelementptr inbounds i64, i64* %envptr12751, i64 2                ; &envptr12751[2]
  %MgG$tail = load i64, i64* %envptr12752, align 8                                   ; load; *envptr12752
  %envptr12753 = inttoptr i64 %env11098 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12754 = getelementptr inbounds i64, i64* %envptr12753, i64 1                ; &envptr12753[1]
  %cont7309 = load i64, i64* %envptr12754, align 8                                   ; load; *envptr12754
  %_957328 = call i64 @prim_car(i64 %rvp9484)                                        ; call prim_car
  %rvp9482 = call i64 @prim_cdr(i64 %rvp9484)                                        ; call prim_cdr
  %a7151 = call i64 @prim_car(i64 %rvp9482)                                          ; call prim_car
  %na9382 = call i64 @prim_cdr(i64 %rvp9482)                                         ; call prim_cdr
  %arg8001 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7329 = call i64 @prim_make_45vector(i64 %arg8001, i64 %a7151)              ; call prim_make_45vector
  %cloptr12755 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12757 = getelementptr inbounds i64, i64* %cloptr12755, i64 1                  ; &eptr12757[1]
  %eptr12758 = getelementptr inbounds i64, i64* %cloptr12755, i64 2                  ; &eptr12758[2]
  %eptr12759 = getelementptr inbounds i64, i64* %cloptr12755, i64 3                  ; &eptr12759[3]
  %eptr12760 = getelementptr inbounds i64, i64* %cloptr12755, i64 4                  ; &eptr12760[4]
  store i64 %cont7309, i64* %eptr12757                                               ; *eptr12757 = %cont7309
  store i64 %MgG$tail, i64* %eptr12758                                               ; *eptr12758 = %MgG$tail
  store i64 %FVc$new, i64* %eptr12759                                                ; *eptr12759 = %FVc$new
  store i64 %a62$_37wind_45stack, i64* %eptr12760                                    ; *eptr12760 = %a62$_37wind_45stack
  %eptr12756 = getelementptr inbounds i64, i64* %cloptr12755, i64 0                  ; &cloptr12755[0]
  %f12761 = ptrtoint void(i64,i64)* @lam11094 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12761, i64* %eptr12756                                                 ; store fptr
  %arg8004 = ptrtoint i64* %cloptr12755 to i64                                       ; closure cast; i64* -> i64
  %arg8003 = add i64 0, 0                                                            ; quoted ()
  %rva9481 = add i64 0, 0                                                            ; quoted ()
  %rva9480 = call i64 @prim_cons(i64 %retprim7329, i64 %rva9481)                     ; call prim_cons
  %rva9479 = call i64 @prim_cons(i64 %arg8003, i64 %rva9480)                         ; call prim_cons
  %cloptr12762 = inttoptr i64 %arg8004 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12762)                                        ; assert function application
  %i0ptr12763 = getelementptr inbounds i64, i64* %cloptr12762, i64 0                 ; &cloptr12762[0]
  %f12765 = load i64, i64* %i0ptr12763, align 8                                      ; load; *i0ptr12763
  %fptr12764 = inttoptr i64 %f12765 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12764(i64 %arg8004, i64 %rva9479)                   ; tail call
  ret void
}


define void @lam11094(i64 %env11095, i64 %rvp9477) {
  %envptr12766 = inttoptr i64 %env11095 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12767 = getelementptr inbounds i64, i64* %envptr12766, i64 4                ; &envptr12766[4]
  %a62$_37wind_45stack = load i64, i64* %envptr12767, align 8                        ; load; *envptr12767
  %envptr12768 = inttoptr i64 %env11095 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12769 = getelementptr inbounds i64, i64* %envptr12768, i64 3                ; &envptr12768[3]
  %FVc$new = load i64, i64* %envptr12769, align 8                                    ; load; *envptr12769
  %envptr12770 = inttoptr i64 %env11095 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12771 = getelementptr inbounds i64, i64* %envptr12770, i64 2                ; &envptr12770[2]
  %MgG$tail = load i64, i64* %envptr12771, align 8                                   ; load; *envptr12771
  %envptr12772 = inttoptr i64 %env11095 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12773 = getelementptr inbounds i64, i64* %envptr12772, i64 1                ; &envptr12772[1]
  %cont7309 = load i64, i64* %envptr12773, align 8                                   ; load; *envptr12773
  %_957322 = call i64 @prim_car(i64 %rvp9477)                                        ; call prim_car
  %rvp9475 = call i64 @prim_cdr(i64 %rvp9477)                                        ; call prim_cdr
  %p2G$f = call i64 @prim_car(i64 %rvp9475)                                          ; call prim_car
  %na9384 = call i64 @prim_cdr(i64 %rvp9475)                                         ; call prim_cdr
  %arg8006 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr12774 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12776 = getelementptr inbounds i64, i64* %cloptr12774, i64 1                  ; &eptr12776[1]
  %eptr12777 = getelementptr inbounds i64, i64* %cloptr12774, i64 2                  ; &eptr12777[2]
  %eptr12778 = getelementptr inbounds i64, i64* %cloptr12774, i64 3                  ; &eptr12778[3]
  store i64 %MgG$tail, i64* %eptr12776                                               ; *eptr12776 = %MgG$tail
  store i64 %p2G$f, i64* %eptr12777                                                  ; *eptr12777 = %p2G$f
  store i64 %a62$_37wind_45stack, i64* %eptr12778                                    ; *eptr12778 = %a62$_37wind_45stack
  %eptr12775 = getelementptr inbounds i64, i64* %cloptr12774, i64 0                  ; &cloptr12774[0]
  %f12779 = ptrtoint void(i64,i64)* @lam11091 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12779, i64* %eptr12775                                                 ; store fptr
  %arg8005 = ptrtoint i64* %cloptr12774 to i64                                       ; closure cast; i64* -> i64
  %oEK$_957031 = call i64 @prim_vector_45set_33(i64 %p2G$f, i64 %arg8006, i64 %arg8005); call prim_vector_45set_33
  %arg8031 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7159 = call i64 @prim_vector_45ref(i64 %p2G$f, i64 %arg8031)                     ; call prim_vector_45ref
  %arg8033 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7160 = call i64 @prim_vector_45ref(i64 %a62$_37wind_45stack, i64 %arg8033)       ; call prim_vector_45ref
  %cloptr12780 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12782 = getelementptr inbounds i64, i64* %cloptr12780, i64 1                  ; &eptr12782[1]
  %eptr12783 = getelementptr inbounds i64, i64* %cloptr12780, i64 2                  ; &eptr12783[2]
  %eptr12784 = getelementptr inbounds i64, i64* %cloptr12780, i64 3                  ; &eptr12784[3]
  %eptr12785 = getelementptr inbounds i64, i64* %cloptr12780, i64 4                  ; &eptr12785[4]
  store i64 %cont7309, i64* %eptr12782                                               ; *eptr12782 = %cont7309
  store i64 %MgG$tail, i64* %eptr12783                                               ; *eptr12783 = %MgG$tail
  store i64 %FVc$new, i64* %eptr12784                                                ; *eptr12784 = %FVc$new
  store i64 %a62$_37wind_45stack, i64* %eptr12785                                    ; *eptr12785 = %a62$_37wind_45stack
  %eptr12781 = getelementptr inbounds i64, i64* %cloptr12780, i64 0                  ; &cloptr12780[0]
  %f12786 = ptrtoint void(i64,i64)* @lam11075 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12786, i64* %eptr12781                                                 ; store fptr
  %arg8036 = ptrtoint i64* %cloptr12780 to i64                                       ; closure cast; i64* -> i64
  %rva9474 = add i64 0, 0                                                            ; quoted ()
  %rva9473 = call i64 @prim_cons(i64 %a7160, i64 %rva9474)                           ; call prim_cons
  %rva9472 = call i64 @prim_cons(i64 %arg8036, i64 %rva9473)                         ; call prim_cons
  %cloptr12787 = inttoptr i64 %a7159 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12787)                                        ; assert function application
  %i0ptr12788 = getelementptr inbounds i64, i64* %cloptr12787, i64 0                 ; &cloptr12787[0]
  %f12790 = load i64, i64* %i0ptr12788, align 8                                      ; load; *i0ptr12788
  %fptr12789 = inttoptr i64 %f12790 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12789(i64 %a7159, i64 %rva9472)                     ; tail call
  ret void
}


define void @lam11091(i64 %env11092, i64 %rvp9412) {
  %envptr12791 = inttoptr i64 %env11092 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12792 = getelementptr inbounds i64, i64* %envptr12791, i64 3                ; &envptr12791[3]
  %a62$_37wind_45stack = load i64, i64* %envptr12792, align 8                        ; load; *envptr12792
  %envptr12793 = inttoptr i64 %env11092 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12794 = getelementptr inbounds i64, i64* %envptr12793, i64 2                ; &envptr12793[2]
  %p2G$f = load i64, i64* %envptr12794, align 8                                      ; load; *envptr12794
  %envptr12795 = inttoptr i64 %env11092 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12796 = getelementptr inbounds i64, i64* %envptr12795, i64 1                ; &envptr12795[1]
  %MgG$tail = load i64, i64* %envptr12796, align 8                                   ; load; *envptr12796
  %cont7323 = call i64 @prim_car(i64 %rvp9412)                                       ; call prim_car
  %rvp9410 = call i64 @prim_cdr(i64 %rvp9412)                                        ; call prim_cdr
  %Fak$l = call i64 @prim_car(i64 %rvp9410)                                          ; call prim_car
  %na9386 = call i64 @prim_cdr(i64 %rvp9410)                                         ; call prim_cdr
  %a7152 = call i64 @prim_eq_63(i64 %Fak$l, i64 %MgG$tail)                           ; call prim_eq_63
  %a7153 = call i64 @prim_not(i64 %a7152)                                            ; call prim_not
  %cmp12797 = icmp eq i64 %a7153, 15                                                 ; false?
  br i1 %cmp12797, label %else12799, label %then12798                                ; if

then12798:
  %a7154 = call i64 @prim_cdr(i64 %Fak$l)                                            ; call prim_cdr
  %arg8013 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7326 = call i64 @prim_vector_45set_33(i64 %a62$_37wind_45stack, i64 %arg8013, i64 %a7154); call prim_vector_45set_33
  %cloptr12800 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12802 = getelementptr inbounds i64, i64* %cloptr12800, i64 1                  ; &eptr12802[1]
  %eptr12803 = getelementptr inbounds i64, i64* %cloptr12800, i64 2                  ; &eptr12803[2]
  %eptr12804 = getelementptr inbounds i64, i64* %cloptr12800, i64 3                  ; &eptr12804[3]
  store i64 %p2G$f, i64* %eptr12802                                                  ; *eptr12802 = %p2G$f
  store i64 %cont7323, i64* %eptr12803                                               ; *eptr12803 = %cont7323
  store i64 %Fak$l, i64* %eptr12804                                                  ; *eptr12804 = %Fak$l
  %eptr12801 = getelementptr inbounds i64, i64* %cloptr12800, i64 0                  ; &cloptr12800[0]
  %f12805 = ptrtoint void(i64,i64)* @lam11086 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12805, i64* %eptr12801                                                 ; store fptr
  %arg8017 = ptrtoint i64* %cloptr12800 to i64                                       ; closure cast; i64* -> i64
  %arg8016 = add i64 0, 0                                                            ; quoted ()
  %rva9406 = add i64 0, 0                                                            ; quoted ()
  %rva9405 = call i64 @prim_cons(i64 %retprim7326, i64 %rva9406)                     ; call prim_cons
  %rva9404 = call i64 @prim_cons(i64 %arg8016, i64 %rva9405)                         ; call prim_cons
  %cloptr12806 = inttoptr i64 %arg8017 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12806)                                        ; assert function application
  %i0ptr12807 = getelementptr inbounds i64, i64* %cloptr12806, i64 0                 ; &cloptr12806[0]
  %f12809 = load i64, i64* %i0ptr12807, align 8                                      ; load; *i0ptr12807
  %fptr12808 = inttoptr i64 %f12809 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12808(i64 %arg8017, i64 %rva9404)                   ; tail call
  ret void

else12799:
  %retprim7327 = call i64 @prim_void()                                               ; call prim_void
  %arg8029 = add i64 0, 0                                                            ; quoted ()
  %rva9409 = add i64 0, 0                                                            ; quoted ()
  %rva9408 = call i64 @prim_cons(i64 %retprim7327, i64 %rva9409)                     ; call prim_cons
  %rva9407 = call i64 @prim_cons(i64 %arg8029, i64 %rva9408)                         ; call prim_cons
  %cloptr12810 = inttoptr i64 %cont7323 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12810)                                        ; assert function application
  %i0ptr12811 = getelementptr inbounds i64, i64* %cloptr12810, i64 0                 ; &cloptr12810[0]
  %f12813 = load i64, i64* %i0ptr12811, align 8                                      ; load; *i0ptr12811
  %fptr12812 = inttoptr i64 %f12813 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12812(i64 %cont7323, i64 %rva9407)                  ; tail call
  ret void
}


define void @lam11086(i64 %env11087, i64 %rvp9402) {
  %envptr12814 = inttoptr i64 %env11087 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12815 = getelementptr inbounds i64, i64* %envptr12814, i64 3                ; &envptr12814[3]
  %Fak$l = load i64, i64* %envptr12815, align 8                                      ; load; *envptr12815
  %envptr12816 = inttoptr i64 %env11087 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12817 = getelementptr inbounds i64, i64* %envptr12816, i64 2                ; &envptr12816[2]
  %cont7323 = load i64, i64* %envptr12817, align 8                                   ; load; *envptr12817
  %envptr12818 = inttoptr i64 %env11087 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12819 = getelementptr inbounds i64, i64* %envptr12818, i64 1                ; &envptr12818[1]
  %p2G$f = load i64, i64* %envptr12819, align 8                                      ; load; *envptr12819
  %_957324 = call i64 @prim_car(i64 %rvp9402)                                        ; call prim_car
  %rvp9400 = call i64 @prim_cdr(i64 %rvp9402)                                        ; call prim_cdr
  %vWH$_957032 = call i64 @prim_car(i64 %rvp9400)                                    ; call prim_car
  %na9388 = call i64 @prim_cdr(i64 %rvp9400)                                         ; call prim_cdr
  %a7155 = call i64 @prim_car(i64 %Fak$l)                                            ; call prim_car
  %a7156 = call i64 @prim_cdr(i64 %a7155)                                            ; call prim_cdr
  %cloptr12820 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12822 = getelementptr inbounds i64, i64* %cloptr12820, i64 1                  ; &eptr12822[1]
  %eptr12823 = getelementptr inbounds i64, i64* %cloptr12820, i64 2                  ; &eptr12823[2]
  %eptr12824 = getelementptr inbounds i64, i64* %cloptr12820, i64 3                  ; &eptr12824[3]
  store i64 %p2G$f, i64* %eptr12822                                                  ; *eptr12822 = %p2G$f
  store i64 %cont7323, i64* %eptr12823                                               ; *eptr12823 = %cont7323
  store i64 %Fak$l, i64* %eptr12824                                                  ; *eptr12824 = %Fak$l
  %eptr12821 = getelementptr inbounds i64, i64* %cloptr12820, i64 0                  ; &cloptr12820[0]
  %f12825 = ptrtoint void(i64,i64)* @lam11084 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12825, i64* %eptr12821                                                 ; store fptr
  %arg8020 = ptrtoint i64* %cloptr12820 to i64                                       ; closure cast; i64* -> i64
  %rva9399 = add i64 0, 0                                                            ; quoted ()
  %rva9398 = call i64 @prim_cons(i64 %arg8020, i64 %rva9399)                         ; call prim_cons
  %cloptr12826 = inttoptr i64 %a7156 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12826)                                        ; assert function application
  %i0ptr12827 = getelementptr inbounds i64, i64* %cloptr12826, i64 0                 ; &cloptr12826[0]
  %f12829 = load i64, i64* %i0ptr12827, align 8                                      ; load; *i0ptr12827
  %fptr12828 = inttoptr i64 %f12829 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12828(i64 %a7156, i64 %rva9398)                     ; tail call
  ret void
}


define void @lam11084(i64 %env11085, i64 %rvp9396) {
  %envptr12830 = inttoptr i64 %env11085 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12831 = getelementptr inbounds i64, i64* %envptr12830, i64 3                ; &envptr12830[3]
  %Fak$l = load i64, i64* %envptr12831, align 8                                      ; load; *envptr12831
  %envptr12832 = inttoptr i64 %env11085 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12833 = getelementptr inbounds i64, i64* %envptr12832, i64 2                ; &envptr12832[2]
  %cont7323 = load i64, i64* %envptr12833, align 8                                   ; load; *envptr12833
  %envptr12834 = inttoptr i64 %env11085 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12835 = getelementptr inbounds i64, i64* %envptr12834, i64 1                ; &envptr12834[1]
  %p2G$f = load i64, i64* %envptr12835, align 8                                      ; load; *envptr12835
  %_957325 = call i64 @prim_car(i64 %rvp9396)                                        ; call prim_car
  %rvp9394 = call i64 @prim_cdr(i64 %rvp9396)                                        ; call prim_cdr
  %VrL$_957033 = call i64 @prim_car(i64 %rvp9394)                                    ; call prim_car
  %na9390 = call i64 @prim_cdr(i64 %rvp9394)                                         ; call prim_cdr
  %arg8022 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7157 = call i64 @prim_vector_45ref(i64 %p2G$f, i64 %arg8022)                     ; call prim_vector_45ref
  %a7158 = call i64 @prim_cdr(i64 %Fak$l)                                            ; call prim_cdr
  %rva9393 = add i64 0, 0                                                            ; quoted ()
  %rva9392 = call i64 @prim_cons(i64 %a7158, i64 %rva9393)                           ; call prim_cons
  %rva9391 = call i64 @prim_cons(i64 %cont7323, i64 %rva9392)                        ; call prim_cons
  %cloptr12836 = inttoptr i64 %a7157 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12836)                                        ; assert function application
  %i0ptr12837 = getelementptr inbounds i64, i64* %cloptr12836, i64 0                 ; &cloptr12836[0]
  %f12839 = load i64, i64* %i0ptr12837, align 8                                      ; load; *i0ptr12837
  %fptr12838 = inttoptr i64 %f12839 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12838(i64 %a7157, i64 %rva9391)                     ; tail call
  ret void
}


define void @lam11075(i64 %env11076, i64 %rvp9470) {
  %envptr12840 = inttoptr i64 %env11076 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12841 = getelementptr inbounds i64, i64* %envptr12840, i64 4                ; &envptr12840[4]
  %a62$_37wind_45stack = load i64, i64* %envptr12841, align 8                        ; load; *envptr12841
  %envptr12842 = inttoptr i64 %env11076 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12843 = getelementptr inbounds i64, i64* %envptr12842, i64 3                ; &envptr12842[3]
  %FVc$new = load i64, i64* %envptr12843, align 8                                    ; load; *envptr12843
  %envptr12844 = inttoptr i64 %env11076 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12845 = getelementptr inbounds i64, i64* %envptr12844, i64 2                ; &envptr12844[2]
  %MgG$tail = load i64, i64* %envptr12845, align 8                                   ; load; *envptr12845
  %envptr12846 = inttoptr i64 %env11076 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12847 = getelementptr inbounds i64, i64* %envptr12846, i64 1                ; &envptr12846[1]
  %cont7309 = load i64, i64* %envptr12847, align 8                                   ; load; *envptr12847
  %_957311 = call i64 @prim_car(i64 %rvp9470)                                        ; call prim_car
  %rvp9468 = call i64 @prim_cdr(i64 %rvp9470)                                        ; call prim_cdr
  %DCy$_957030 = call i64 @prim_car(i64 %rvp9468)                                    ; call prim_car
  %na9415 = call i64 @prim_cdr(i64 %rvp9468)                                         ; call prim_cdr
  %cloptr12848 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12849 = getelementptr inbounds i64, i64* %cloptr12848, i64 0                  ; &cloptr12848[0]
  %f12850 = ptrtoint void(i64,i64)* @lam11073 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12850, i64* %eptr12849                                                 ; store fptr
  %arg8039 = ptrtoint i64* %cloptr12848 to i64                                       ; closure cast; i64* -> i64
  %cloptr12851 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12853 = getelementptr inbounds i64, i64* %cloptr12851, i64 1                  ; &eptr12853[1]
  %eptr12854 = getelementptr inbounds i64, i64* %cloptr12851, i64 2                  ; &eptr12854[2]
  %eptr12855 = getelementptr inbounds i64, i64* %cloptr12851, i64 3                  ; &eptr12855[3]
  %eptr12856 = getelementptr inbounds i64, i64* %cloptr12851, i64 4                  ; &eptr12856[4]
  store i64 %cont7309, i64* %eptr12853                                               ; *eptr12853 = %cont7309
  store i64 %MgG$tail, i64* %eptr12854                                               ; *eptr12854 = %MgG$tail
  store i64 %FVc$new, i64* %eptr12855                                                ; *eptr12855 = %FVc$new
  store i64 %a62$_37wind_45stack, i64* %eptr12856                                    ; *eptr12856 = %a62$_37wind_45stack
  %eptr12852 = getelementptr inbounds i64, i64* %cloptr12851, i64 0                  ; &cloptr12851[0]
  %f12857 = ptrtoint void(i64,i64)* @lam11069 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12857, i64* %eptr12852                                                 ; store fptr
  %arg8038 = ptrtoint i64* %cloptr12851 to i64                                       ; closure cast; i64* -> i64
  %rva9467 = add i64 0, 0                                                            ; quoted ()
  %rva9466 = call i64 @prim_cons(i64 %arg8038, i64 %rva9467)                         ; call prim_cons
  %cloptr12858 = inttoptr i64 %arg8039 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12858)                                        ; assert function application
  %i0ptr12859 = getelementptr inbounds i64, i64* %cloptr12858, i64 0                 ; &cloptr12858[0]
  %f12861 = load i64, i64* %i0ptr12859, align 8                                      ; load; *i0ptr12859
  %fptr12860 = inttoptr i64 %f12861 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12860(i64 %arg8039, i64 %rva9466)                   ; tail call
  ret void
}


define void @lam11073(i64 %env11074, i64 %S09$lst7321) {
  %cont7320 = call i64 @prim_car(i64 %S09$lst7321)                                   ; call prim_car
  %S09$lst = call i64 @prim_cdr(i64 %S09$lst7321)                                    ; call prim_cdr
  %arg8043 = add i64 0, 0                                                            ; quoted ()
  %rva9418 = add i64 0, 0                                                            ; quoted ()
  %rva9417 = call i64 @prim_cons(i64 %S09$lst, i64 %rva9418)                         ; call prim_cons
  %rva9416 = call i64 @prim_cons(i64 %arg8043, i64 %rva9417)                         ; call prim_cons
  %cloptr12862 = inttoptr i64 %cont7320 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12862)                                        ; assert function application
  %i0ptr12863 = getelementptr inbounds i64, i64* %cloptr12862, i64 0                 ; &cloptr12862[0]
  %f12865 = load i64, i64* %i0ptr12863, align 8                                      ; load; *i0ptr12863
  %fptr12864 = inttoptr i64 %f12865 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12864(i64 %cont7320, i64 %rva9416)                  ; tail call
  ret void
}


define void @lam11069(i64 %env11070, i64 %rvp9464) {
  %envptr12866 = inttoptr i64 %env11070 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12867 = getelementptr inbounds i64, i64* %envptr12866, i64 4                ; &envptr12866[4]
  %a62$_37wind_45stack = load i64, i64* %envptr12867, align 8                        ; load; *envptr12867
  %envptr12868 = inttoptr i64 %env11070 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12869 = getelementptr inbounds i64, i64* %envptr12868, i64 3                ; &envptr12868[3]
  %FVc$new = load i64, i64* %envptr12869, align 8                                    ; load; *envptr12869
  %envptr12870 = inttoptr i64 %env11070 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12871 = getelementptr inbounds i64, i64* %envptr12870, i64 2                ; &envptr12870[2]
  %MgG$tail = load i64, i64* %envptr12871, align 8                                   ; load; *envptr12871
  %envptr12872 = inttoptr i64 %env11070 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12873 = getelementptr inbounds i64, i64* %envptr12872, i64 1                ; &envptr12872[1]
  %cont7309 = load i64, i64* %envptr12873, align 8                                   ; load; *envptr12873
  %_957318 = call i64 @prim_car(i64 %rvp9464)                                        ; call prim_car
  %rvp9462 = call i64 @prim_cdr(i64 %rvp9464)                                        ; call prim_cdr
  %a7161 = call i64 @prim_car(i64 %rvp9462)                                          ; call prim_car
  %na9420 = call i64 @prim_cdr(i64 %rvp9462)                                         ; call prim_cdr
  %arg8046 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7319 = call i64 @prim_make_45vector(i64 %arg8046, i64 %a7161)              ; call prim_make_45vector
  %cloptr12874 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12876 = getelementptr inbounds i64, i64* %cloptr12874, i64 1                  ; &eptr12876[1]
  %eptr12877 = getelementptr inbounds i64, i64* %cloptr12874, i64 2                  ; &eptr12877[2]
  %eptr12878 = getelementptr inbounds i64, i64* %cloptr12874, i64 3                  ; &eptr12878[3]
  %eptr12879 = getelementptr inbounds i64, i64* %cloptr12874, i64 4                  ; &eptr12879[4]
  store i64 %cont7309, i64* %eptr12876                                               ; *eptr12876 = %cont7309
  store i64 %MgG$tail, i64* %eptr12877                                               ; *eptr12877 = %MgG$tail
  store i64 %FVc$new, i64* %eptr12878                                                ; *eptr12878 = %FVc$new
  store i64 %a62$_37wind_45stack, i64* %eptr12879                                    ; *eptr12879 = %a62$_37wind_45stack
  %eptr12875 = getelementptr inbounds i64, i64* %cloptr12874, i64 0                  ; &cloptr12874[0]
  %f12880 = ptrtoint void(i64,i64)* @lam11066 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12880, i64* %eptr12875                                                 ; store fptr
  %arg8049 = ptrtoint i64* %cloptr12874 to i64                                       ; closure cast; i64* -> i64
  %arg8048 = add i64 0, 0                                                            ; quoted ()
  %rva9461 = add i64 0, 0                                                            ; quoted ()
  %rva9460 = call i64 @prim_cons(i64 %retprim7319, i64 %rva9461)                     ; call prim_cons
  %rva9459 = call i64 @prim_cons(i64 %arg8048, i64 %rva9460)                         ; call prim_cons
  %cloptr12881 = inttoptr i64 %arg8049 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12881)                                        ; assert function application
  %i0ptr12882 = getelementptr inbounds i64, i64* %cloptr12881, i64 0                 ; &cloptr12881[0]
  %f12884 = load i64, i64* %i0ptr12882, align 8                                      ; load; *i0ptr12882
  %fptr12883 = inttoptr i64 %f12884 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12883(i64 %arg8049, i64 %rva9459)                   ; tail call
  ret void
}


define void @lam11066(i64 %env11067, i64 %rvp9457) {
  %envptr12885 = inttoptr i64 %env11067 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12886 = getelementptr inbounds i64, i64* %envptr12885, i64 4                ; &envptr12885[4]
  %a62$_37wind_45stack = load i64, i64* %envptr12886, align 8                        ; load; *envptr12886
  %envptr12887 = inttoptr i64 %env11067 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12888 = getelementptr inbounds i64, i64* %envptr12887, i64 3                ; &envptr12887[3]
  %FVc$new = load i64, i64* %envptr12888, align 8                                    ; load; *envptr12888
  %envptr12889 = inttoptr i64 %env11067 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12890 = getelementptr inbounds i64, i64* %envptr12889, i64 2                ; &envptr12889[2]
  %MgG$tail = load i64, i64* %envptr12890, align 8                                   ; load; *envptr12890
  %envptr12891 = inttoptr i64 %env11067 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12892 = getelementptr inbounds i64, i64* %envptr12891, i64 1                ; &envptr12891[1]
  %cont7309 = load i64, i64* %envptr12892, align 8                                   ; load; *envptr12892
  %_957312 = call i64 @prim_car(i64 %rvp9457)                                        ; call prim_car
  %rvp9455 = call i64 @prim_cdr(i64 %rvp9457)                                        ; call prim_cdr
  %L5V$f = call i64 @prim_car(i64 %rvp9455)                                          ; call prim_car
  %na9422 = call i64 @prim_cdr(i64 %rvp9455)                                         ; call prim_cdr
  %arg8051 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %cloptr12893 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12895 = getelementptr inbounds i64, i64* %cloptr12893, i64 1                  ; &eptr12895[1]
  %eptr12896 = getelementptr inbounds i64, i64* %cloptr12893, i64 2                  ; &eptr12896[2]
  %eptr12897 = getelementptr inbounds i64, i64* %cloptr12893, i64 3                  ; &eptr12897[3]
  store i64 %L5V$f, i64* %eptr12895                                                  ; *eptr12895 = %L5V$f
  store i64 %MgG$tail, i64* %eptr12896                                               ; *eptr12896 = %MgG$tail
  store i64 %a62$_37wind_45stack, i64* %eptr12897                                    ; *eptr12897 = %a62$_37wind_45stack
  %eptr12894 = getelementptr inbounds i64, i64* %cloptr12893, i64 0                  ; &cloptr12893[0]
  %f12898 = ptrtoint void(i64,i64)* @lam11063 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12898, i64* %eptr12894                                                 ; store fptr
  %arg8050 = ptrtoint i64* %cloptr12893 to i64                                       ; closure cast; i64* -> i64
  %nzL$_957034 = call i64 @prim_vector_45set_33(i64 %L5V$f, i64 %arg8051, i64 %arg8050); call prim_vector_45set_33
  %arg8075 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7168 = call i64 @prim_vector_45ref(i64 %L5V$f, i64 %arg8075)                     ; call prim_vector_45ref
  %rva9454 = add i64 0, 0                                                            ; quoted ()
  %rva9453 = call i64 @prim_cons(i64 %FVc$new, i64 %rva9454)                         ; call prim_cons
  %rva9452 = call i64 @prim_cons(i64 %cont7309, i64 %rva9453)                        ; call prim_cons
  %cloptr12899 = inttoptr i64 %a7168 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12899)                                        ; assert function application
  %i0ptr12900 = getelementptr inbounds i64, i64* %cloptr12899, i64 0                 ; &cloptr12899[0]
  %f12902 = load i64, i64* %i0ptr12900, align 8                                      ; load; *i0ptr12900
  %fptr12901 = inttoptr i64 %f12902 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12901(i64 %a7168, i64 %rva9452)                     ; tail call
  ret void
}


define void @lam11063(i64 %env11064, i64 %rvp9450) {
  %envptr12903 = inttoptr i64 %env11064 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12904 = getelementptr inbounds i64, i64* %envptr12903, i64 3                ; &envptr12903[3]
  %a62$_37wind_45stack = load i64, i64* %envptr12904, align 8                        ; load; *envptr12904
  %envptr12905 = inttoptr i64 %env11064 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12906 = getelementptr inbounds i64, i64* %envptr12905, i64 2                ; &envptr12905[2]
  %MgG$tail = load i64, i64* %envptr12906, align 8                                   ; load; *envptr12906
  %envptr12907 = inttoptr i64 %env11064 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12908 = getelementptr inbounds i64, i64* %envptr12907, i64 1                ; &envptr12907[1]
  %L5V$f = load i64, i64* %envptr12908, align 8                                      ; load; *envptr12908
  %cont7313 = call i64 @prim_car(i64 %rvp9450)                                       ; call prim_car
  %rvp9448 = call i64 @prim_cdr(i64 %rvp9450)                                        ; call prim_cdr
  %hLm$l = call i64 @prim_car(i64 %rvp9448)                                          ; call prim_car
  %na9424 = call i64 @prim_cdr(i64 %rvp9448)                                         ; call prim_cdr
  %a7162 = call i64 @prim_eq_63(i64 %hLm$l, i64 %MgG$tail)                           ; call prim_eq_63
  %a7163 = call i64 @prim_not(i64 %a7162)                                            ; call prim_not
  %cmp12909 = icmp eq i64 %a7163, 15                                                 ; false?
  br i1 %cmp12909, label %else12911, label %then12910                                ; if

then12910:
  %arg8056 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7164 = call i64 @prim_vector_45ref(i64 %L5V$f, i64 %arg8056)                     ; call prim_vector_45ref
  %a7165 = call i64 @prim_cdr(i64 %hLm$l)                                            ; call prim_cdr
  %cloptr12912 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12914 = getelementptr inbounds i64, i64* %cloptr12912, i64 1                  ; &eptr12914[1]
  %eptr12915 = getelementptr inbounds i64, i64* %cloptr12912, i64 2                  ; &eptr12915[2]
  %eptr12916 = getelementptr inbounds i64, i64* %cloptr12912, i64 3                  ; &eptr12916[3]
  store i64 %hLm$l, i64* %eptr12914                                                  ; *eptr12914 = %hLm$l
  store i64 %cont7313, i64* %eptr12915                                               ; *eptr12915 = %cont7313
  store i64 %a62$_37wind_45stack, i64* %eptr12916                                    ; *eptr12916 = %a62$_37wind_45stack
  %eptr12913 = getelementptr inbounds i64, i64* %cloptr12912, i64 0                  ; &cloptr12912[0]
  %f12917 = ptrtoint void(i64,i64)* @lam11058 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12917, i64* %eptr12913                                                 ; store fptr
  %arg8060 = ptrtoint i64* %cloptr12912 to i64                                       ; closure cast; i64* -> i64
  %rva9444 = add i64 0, 0                                                            ; quoted ()
  %rva9443 = call i64 @prim_cons(i64 %a7165, i64 %rva9444)                           ; call prim_cons
  %rva9442 = call i64 @prim_cons(i64 %arg8060, i64 %rva9443)                         ; call prim_cons
  %cloptr12918 = inttoptr i64 %a7164 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12918)                                        ; assert function application
  %i0ptr12919 = getelementptr inbounds i64, i64* %cloptr12918, i64 0                 ; &cloptr12918[0]
  %f12921 = load i64, i64* %i0ptr12919, align 8                                      ; load; *i0ptr12919
  %fptr12920 = inttoptr i64 %f12921 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12920(i64 %a7164, i64 %rva9442)                     ; tail call
  ret void

else12911:
  %retprim7317 = call i64 @prim_void()                                               ; call prim_void
  %arg8073 = add i64 0, 0                                                            ; quoted ()
  %rva9447 = add i64 0, 0                                                            ; quoted ()
  %rva9446 = call i64 @prim_cons(i64 %retprim7317, i64 %rva9447)                     ; call prim_cons
  %rva9445 = call i64 @prim_cons(i64 %arg8073, i64 %rva9446)                         ; call prim_cons
  %cloptr12922 = inttoptr i64 %cont7313 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12922)                                        ; assert function application
  %i0ptr12923 = getelementptr inbounds i64, i64* %cloptr12922, i64 0                 ; &cloptr12922[0]
  %f12925 = load i64, i64* %i0ptr12923, align 8                                      ; load; *i0ptr12923
  %fptr12924 = inttoptr i64 %f12925 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12924(i64 %cont7313, i64 %rva9445)                  ; tail call
  ret void
}


define void @lam11058(i64 %env11059, i64 %rvp9440) {
  %envptr12926 = inttoptr i64 %env11059 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12927 = getelementptr inbounds i64, i64* %envptr12926, i64 3                ; &envptr12926[3]
  %a62$_37wind_45stack = load i64, i64* %envptr12927, align 8                        ; load; *envptr12927
  %envptr12928 = inttoptr i64 %env11059 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12929 = getelementptr inbounds i64, i64* %envptr12928, i64 2                ; &envptr12928[2]
  %cont7313 = load i64, i64* %envptr12929, align 8                                   ; load; *envptr12929
  %envptr12930 = inttoptr i64 %env11059 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12931 = getelementptr inbounds i64, i64* %envptr12930, i64 1                ; &envptr12930[1]
  %hLm$l = load i64, i64* %envptr12931, align 8                                      ; load; *envptr12931
  %_957314 = call i64 @prim_car(i64 %rvp9440)                                        ; call prim_car
  %rvp9438 = call i64 @prim_cdr(i64 %rvp9440)                                        ; call prim_cdr
  %U7E$_957035 = call i64 @prim_car(i64 %rvp9438)                                    ; call prim_car
  %na9426 = call i64 @prim_cdr(i64 %rvp9438)                                         ; call prim_cdr
  %a7166 = call i64 @prim_car(i64 %hLm$l)                                            ; call prim_car
  %a7167 = call i64 @prim_car(i64 %a7166)                                            ; call prim_car
  %cloptr12932 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12934 = getelementptr inbounds i64, i64* %cloptr12932, i64 1                  ; &eptr12934[1]
  %eptr12935 = getelementptr inbounds i64, i64* %cloptr12932, i64 2                  ; &eptr12935[2]
  %eptr12936 = getelementptr inbounds i64, i64* %cloptr12932, i64 3                  ; &eptr12936[3]
  store i64 %hLm$l, i64* %eptr12934                                                  ; *eptr12934 = %hLm$l
  store i64 %cont7313, i64* %eptr12935                                               ; *eptr12935 = %cont7313
  store i64 %a62$_37wind_45stack, i64* %eptr12936                                    ; *eptr12936 = %a62$_37wind_45stack
  %eptr12933 = getelementptr inbounds i64, i64* %cloptr12932, i64 0                  ; &cloptr12932[0]
  %f12937 = ptrtoint void(i64,i64)* @lam11056 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12937, i64* %eptr12933                                                 ; store fptr
  %arg8064 = ptrtoint i64* %cloptr12932 to i64                                       ; closure cast; i64* -> i64
  %rva9437 = add i64 0, 0                                                            ; quoted ()
  %rva9436 = call i64 @prim_cons(i64 %arg8064, i64 %rva9437)                         ; call prim_cons
  %cloptr12938 = inttoptr i64 %a7167 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12938)                                        ; assert function application
  %i0ptr12939 = getelementptr inbounds i64, i64* %cloptr12938, i64 0                 ; &cloptr12938[0]
  %f12941 = load i64, i64* %i0ptr12939, align 8                                      ; load; *i0ptr12939
  %fptr12940 = inttoptr i64 %f12941 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12940(i64 %a7167, i64 %rva9436)                     ; tail call
  ret void
}


define void @lam11056(i64 %env11057, i64 %rvp9434) {
  %envptr12942 = inttoptr i64 %env11057 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12943 = getelementptr inbounds i64, i64* %envptr12942, i64 3                ; &envptr12942[3]
  %a62$_37wind_45stack = load i64, i64* %envptr12943, align 8                        ; load; *envptr12943
  %envptr12944 = inttoptr i64 %env11057 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12945 = getelementptr inbounds i64, i64* %envptr12944, i64 2                ; &envptr12944[2]
  %cont7313 = load i64, i64* %envptr12945, align 8                                   ; load; *envptr12945
  %envptr12946 = inttoptr i64 %env11057 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12947 = getelementptr inbounds i64, i64* %envptr12946, i64 1                ; &envptr12946[1]
  %hLm$l = load i64, i64* %envptr12947, align 8                                      ; load; *envptr12947
  %_957315 = call i64 @prim_car(i64 %rvp9434)                                        ; call prim_car
  %rvp9432 = call i64 @prim_cdr(i64 %rvp9434)                                        ; call prim_cdr
  %ed5$_957036 = call i64 @prim_car(i64 %rvp9432)                                    ; call prim_car
  %na9428 = call i64 @prim_cdr(i64 %rvp9432)                                         ; call prim_cdr
  %arg8067 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7316 = call i64 @prim_vector_45set_33(i64 %a62$_37wind_45stack, i64 %arg8067, i64 %hLm$l); call prim_vector_45set_33
  %arg8070 = add i64 0, 0                                                            ; quoted ()
  %rva9431 = add i64 0, 0                                                            ; quoted ()
  %rva9430 = call i64 @prim_cons(i64 %retprim7316, i64 %rva9431)                     ; call prim_cons
  %rva9429 = call i64 @prim_cons(i64 %arg8070, i64 %rva9430)                         ; call prim_cons
  %cloptr12948 = inttoptr i64 %cont7313 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12948)                                        ; assert function application
  %i0ptr12949 = getelementptr inbounds i64, i64* %cloptr12948, i64 0                 ; &cloptr12948[0]
  %f12951 = load i64, i64* %i0ptr12949, align 8                                      ; load; *i0ptr12949
  %fptr12950 = inttoptr i64 %f12951 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12950(i64 %cont7313, i64 %rva9429)                  ; tail call
  ret void
}


define void @lam11039(i64 %env11040, i64 %ARo$lst7413) {
  %cont7412 = call i64 @prim_car(i64 %ARo$lst7413)                                   ; call prim_car
  %ARo$lst = call i64 @prim_cdr(i64 %ARo$lst7413)                                    ; call prim_cdr
  %arg8085 = add i64 0, 0                                                            ; quoted ()
  %rva9502 = add i64 0, 0                                                            ; quoted ()
  %rva9501 = call i64 @prim_cons(i64 %ARo$lst, i64 %rva9502)                         ; call prim_cons
  %rva9500 = call i64 @prim_cons(i64 %arg8085, i64 %rva9501)                         ; call prim_cons
  %cloptr12952 = inttoptr i64 %cont7412 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12952)                                        ; assert function application
  %i0ptr12953 = getelementptr inbounds i64, i64* %cloptr12952, i64 0                 ; &cloptr12952[0]
  %f12955 = load i64, i64* %i0ptr12953, align 8                                      ; load; *i0ptr12953
  %fptr12954 = inttoptr i64 %f12955 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12954(i64 %cont7412, i64 %rva9500)                  ; tail call
  ret void
}


define void @lam11035(i64 %env11036, i64 %rvp9988) {
  %envptr12956 = inttoptr i64 %env11036 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12957 = getelementptr inbounds i64, i64* %envptr12956, i64 3                ; &envptr12956[3]
  %a62$_37wind_45stack = load i64, i64* %envptr12957, align 8                        ; load; *envptr12957
  %envptr12958 = inttoptr i64 %env11036 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12959 = getelementptr inbounds i64, i64* %envptr12958, i64 2                ; &envptr12958[2]
  %CIs$_37raise_45handler = load i64, i64* %envptr12959, align 8                     ; load; *envptr12959
  %envptr12960 = inttoptr i64 %env11036 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12961 = getelementptr inbounds i64, i64* %envptr12960, i64 1                ; &envptr12960[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr12961, align 8                           ; load; *envptr12961
  %_957410 = call i64 @prim_car(i64 %rvp9988)                                        ; call prim_car
  %rvp9986 = call i64 @prim_cdr(i64 %rvp9988)                                        ; call prim_cdr
  %a7169 = call i64 @prim_car(i64 %rvp9986)                                          ; call prim_car
  %na9504 = call i64 @prim_cdr(i64 %rvp9986)                                         ; call prim_cdr
  %arg8088 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7411 = call i64 @prim_make_45vector(i64 %arg8088, i64 %a7169)              ; call prim_make_45vector
  %cloptr12962 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr12964 = getelementptr inbounds i64, i64* %cloptr12962, i64 1                  ; &eptr12964[1]
  %eptr12965 = getelementptr inbounds i64, i64* %cloptr12962, i64 2                  ; &eptr12965[2]
  %eptr12966 = getelementptr inbounds i64, i64* %cloptr12962, i64 3                  ; &eptr12966[3]
  store i64 %ZqL$_37do_45wind, i64* %eptr12964                                       ; *eptr12964 = %ZqL$_37do_45wind
  store i64 %CIs$_37raise_45handler, i64* %eptr12965                                 ; *eptr12965 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr12966                                    ; *eptr12966 = %a62$_37wind_45stack
  %eptr12963 = getelementptr inbounds i64, i64* %cloptr12962, i64 0                  ; &cloptr12962[0]
  %f12967 = ptrtoint void(i64,i64)* @lam11032 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12967, i64* %eptr12963                                                 ; store fptr
  %arg8091 = ptrtoint i64* %cloptr12962 to i64                                       ; closure cast; i64* -> i64
  %arg8090 = add i64 0, 0                                                            ; quoted ()
  %rva9985 = add i64 0, 0                                                            ; quoted ()
  %rva9984 = call i64 @prim_cons(i64 %retprim7411, i64 %rva9985)                     ; call prim_cons
  %rva9983 = call i64 @prim_cons(i64 %arg8090, i64 %rva9984)                         ; call prim_cons
  %cloptr12968 = inttoptr i64 %arg8091 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12968)                                        ; assert function application
  %i0ptr12969 = getelementptr inbounds i64, i64* %cloptr12968, i64 0                 ; &cloptr12968[0]
  %f12971 = load i64, i64* %i0ptr12969, align 8                                      ; load; *i0ptr12969
  %fptr12970 = inttoptr i64 %f12971 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12970(i64 %arg8091, i64 %rva9983)                   ; tail call
  ret void
}


define void @lam11032(i64 %env11033, i64 %rvp9981) {
  %envptr12972 = inttoptr i64 %env11033 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12973 = getelementptr inbounds i64, i64* %envptr12972, i64 3                ; &envptr12972[3]
  %a62$_37wind_45stack = load i64, i64* %envptr12973, align 8                        ; load; *envptr12973
  %envptr12974 = inttoptr i64 %env11033 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12975 = getelementptr inbounds i64, i64* %envptr12974, i64 2                ; &envptr12974[2]
  %CIs$_37raise_45handler = load i64, i64* %envptr12975, align 8                     ; load; *envptr12975
  %envptr12976 = inttoptr i64 %env11033 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12977 = getelementptr inbounds i64, i64* %envptr12976, i64 1                ; &envptr12976[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr12977, align 8                           ; load; *envptr12977
  %_957332 = call i64 @prim_car(i64 %rvp9981)                                        ; call prim_car
  %rvp9979 = call i64 @prim_cdr(i64 %rvp9981)                                        ; call prim_cdr
  %vqr$ccstack = call i64 @prim_car(i64 %rvp9979)                                    ; call prim_car
  %na9506 = call i64 @prim_cdr(i64 %rvp9979)                                         ; call prim_cdr
  %cloptr12978 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr12979 = getelementptr inbounds i64, i64* %cloptr12978, i64 0                  ; &cloptr12978[0]
  %f12980 = ptrtoint void(i64,i64)* @lam11030 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12980, i64* %eptr12979                                                 ; store fptr
  %arg8093 = ptrtoint i64* %cloptr12978 to i64                                       ; closure cast; i64* -> i64
  %cloptr12981 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr12983 = getelementptr inbounds i64, i64* %cloptr12981, i64 1                  ; &eptr12983[1]
  %eptr12984 = getelementptr inbounds i64, i64* %cloptr12981, i64 2                  ; &eptr12984[2]
  %eptr12985 = getelementptr inbounds i64, i64* %cloptr12981, i64 3                  ; &eptr12985[3]
  %eptr12986 = getelementptr inbounds i64, i64* %cloptr12981, i64 4                  ; &eptr12986[4]
  store i64 %ZqL$_37do_45wind, i64* %eptr12983                                       ; *eptr12983 = %ZqL$_37do_45wind
  store i64 %vqr$ccstack, i64* %eptr12984                                            ; *eptr12984 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr12985                                 ; *eptr12985 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr12986                                    ; *eptr12986 = %a62$_37wind_45stack
  %eptr12982 = getelementptr inbounds i64, i64* %cloptr12981, i64 0                  ; &cloptr12981[0]
  %f12987 = ptrtoint void(i64,i64)* @lam11026 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f12987, i64* %eptr12982                                                 ; store fptr
  %arg8092 = ptrtoint i64* %cloptr12981 to i64                                       ; closure cast; i64* -> i64
  %rva9978 = add i64 0, 0                                                            ; quoted ()
  %rva9977 = call i64 @prim_cons(i64 %arg8092, i64 %rva9978)                         ; call prim_cons
  %cloptr12988 = inttoptr i64 %arg8093 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12988)                                        ; assert function application
  %i0ptr12989 = getelementptr inbounds i64, i64* %cloptr12988, i64 0                 ; &cloptr12988[0]
  %f12991 = load i64, i64* %i0ptr12989, align 8                                      ; load; *i0ptr12989
  %fptr12990 = inttoptr i64 %f12991 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12990(i64 %arg8093, i64 %rva9977)                   ; tail call
  ret void
}


define void @lam11030(i64 %env11031, i64 %DHH$lst7409) {
  %cont7408 = call i64 @prim_car(i64 %DHH$lst7409)                                   ; call prim_car
  %DHH$lst = call i64 @prim_cdr(i64 %DHH$lst7409)                                    ; call prim_cdr
  %arg8097 = add i64 0, 0                                                            ; quoted ()
  %rva9509 = add i64 0, 0                                                            ; quoted ()
  %rva9508 = call i64 @prim_cons(i64 %DHH$lst, i64 %rva9509)                         ; call prim_cons
  %rva9507 = call i64 @prim_cons(i64 %arg8097, i64 %rva9508)                         ; call prim_cons
  %cloptr12992 = inttoptr i64 %cont7408 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr12992)                                        ; assert function application
  %i0ptr12993 = getelementptr inbounds i64, i64* %cloptr12992, i64 0                 ; &cloptr12992[0]
  %f12995 = load i64, i64* %i0ptr12993, align 8                                      ; load; *i0ptr12993
  %fptr12994 = inttoptr i64 %f12995 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr12994(i64 %cont7408, i64 %rva9507)                  ; tail call
  ret void
}


define void @lam11026(i64 %env11027, i64 %rvp9975) {
  %envptr12996 = inttoptr i64 %env11027 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12997 = getelementptr inbounds i64, i64* %envptr12996, i64 4                ; &envptr12996[4]
  %a62$_37wind_45stack = load i64, i64* %envptr12997, align 8                        ; load; *envptr12997
  %envptr12998 = inttoptr i64 %env11027 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr12999 = getelementptr inbounds i64, i64* %envptr12998, i64 3                ; &envptr12998[3]
  %CIs$_37raise_45handler = load i64, i64* %envptr12999, align 8                     ; load; *envptr12999
  %envptr13000 = inttoptr i64 %env11027 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13001 = getelementptr inbounds i64, i64* %envptr13000, i64 2                ; &envptr13000[2]
  %vqr$ccstack = load i64, i64* %envptr13001, align 8                                ; load; *envptr13001
  %envptr13002 = inttoptr i64 %env11027 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13003 = getelementptr inbounds i64, i64* %envptr13002, i64 1                ; &envptr13002[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13003, align 8                           ; load; *envptr13003
  %_957406 = call i64 @prim_car(i64 %rvp9975)                                        ; call prim_car
  %rvp9973 = call i64 @prim_cdr(i64 %rvp9975)                                        ; call prim_cdr
  %a7170 = call i64 @prim_car(i64 %rvp9973)                                          ; call prim_car
  %na9511 = call i64 @prim_cdr(i64 %rvp9973)                                         ; call prim_cdr
  %arg8100 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7407 = call i64 @prim_make_45vector(i64 %arg8100, i64 %a7170)              ; call prim_make_45vector
  %cloptr13004 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13006 = getelementptr inbounds i64, i64* %cloptr13004, i64 1                  ; &eptr13006[1]
  %eptr13007 = getelementptr inbounds i64, i64* %cloptr13004, i64 2                  ; &eptr13007[2]
  %eptr13008 = getelementptr inbounds i64, i64* %cloptr13004, i64 3                  ; &eptr13008[3]
  %eptr13009 = getelementptr inbounds i64, i64* %cloptr13004, i64 4                  ; &eptr13009[4]
  store i64 %ZqL$_37do_45wind, i64* %eptr13006                                       ; *eptr13006 = %ZqL$_37do_45wind
  store i64 %vqr$ccstack, i64* %eptr13007                                            ; *eptr13007 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr13008                                 ; *eptr13008 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr13009                                    ; *eptr13009 = %a62$_37wind_45stack
  %eptr13005 = getelementptr inbounds i64, i64* %cloptr13004, i64 0                  ; &cloptr13004[0]
  %f13010 = ptrtoint void(i64,i64)* @lam11023 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13010, i64* %eptr13005                                                 ; store fptr
  %arg8103 = ptrtoint i64* %cloptr13004 to i64                                       ; closure cast; i64* -> i64
  %arg8102 = add i64 0, 0                                                            ; quoted ()
  %rva9972 = add i64 0, 0                                                            ; quoted ()
  %rva9971 = call i64 @prim_cons(i64 %retprim7407, i64 %rva9972)                     ; call prim_cons
  %rva9970 = call i64 @prim_cons(i64 %arg8102, i64 %rva9971)                         ; call prim_cons
  %cloptr13011 = inttoptr i64 %arg8103 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13011)                                        ; assert function application
  %i0ptr13012 = getelementptr inbounds i64, i64* %cloptr13011, i64 0                 ; &cloptr13011[0]
  %f13014 = load i64, i64* %i0ptr13012, align 8                                      ; load; *i0ptr13012
  %fptr13013 = inttoptr i64 %f13014 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13013(i64 %arg8103, i64 %rva9970)                   ; tail call
  ret void
}


define void @lam11023(i64 %env11024, i64 %rvp9968) {
  %envptr13015 = inttoptr i64 %env11024 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13016 = getelementptr inbounds i64, i64* %envptr13015, i64 4                ; &envptr13015[4]
  %a62$_37wind_45stack = load i64, i64* %envptr13016, align 8                        ; load; *envptr13016
  %envptr13017 = inttoptr i64 %env11024 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13018 = getelementptr inbounds i64, i64* %envptr13017, i64 3                ; &envptr13017[3]
  %CIs$_37raise_45handler = load i64, i64* %envptr13018, align 8                     ; load; *envptr13018
  %envptr13019 = inttoptr i64 %env11024 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13020 = getelementptr inbounds i64, i64* %envptr13019, i64 2                ; &envptr13019[2]
  %vqr$ccstack = load i64, i64* %envptr13020, align 8                                ; load; *envptr13020
  %envptr13021 = inttoptr i64 %env11024 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13022 = getelementptr inbounds i64, i64* %envptr13021, i64 1                ; &envptr13021[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13022, align 8                           ; load; *envptr13022
  %_957333 = call i64 @prim_car(i64 %rvp9968)                                        ; call prim_car
  %rvp9966 = call i64 @prim_cdr(i64 %rvp9968)                                        ; call prim_cdr
  %m0H$fail = call i64 @prim_car(i64 %rvp9966)                                       ; call prim_car
  %na9513 = call i64 @prim_cdr(i64 %rvp9966)                                         ; call prim_cdr
  %cloptr13023 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13024 = getelementptr inbounds i64, i64* %cloptr13023, i64 0                  ; &cloptr13023[0]
  %f13025 = ptrtoint void(i64,i64)* @lam11021 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13025, i64* %eptr13024                                                 ; store fptr
  %arg8105 = ptrtoint i64* %cloptr13023 to i64                                       ; closure cast; i64* -> i64
  %cloptr13026 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13028 = getelementptr inbounds i64, i64* %cloptr13026, i64 1                  ; &eptr13028[1]
  %eptr13029 = getelementptr inbounds i64, i64* %cloptr13026, i64 2                  ; &eptr13029[2]
  %eptr13030 = getelementptr inbounds i64, i64* %cloptr13026, i64 3                  ; &eptr13030[3]
  %eptr13031 = getelementptr inbounds i64, i64* %cloptr13026, i64 4                  ; &eptr13031[4]
  %eptr13032 = getelementptr inbounds i64, i64* %cloptr13026, i64 5                  ; &eptr13032[5]
  store i64 %ZqL$_37do_45wind, i64* %eptr13028                                       ; *eptr13028 = %ZqL$_37do_45wind
  store i64 %m0H$fail, i64* %eptr13029                                               ; *eptr13029 = %m0H$fail
  store i64 %vqr$ccstack, i64* %eptr13030                                            ; *eptr13030 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr13031                                 ; *eptr13031 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr13032                                    ; *eptr13032 = %a62$_37wind_45stack
  %eptr13027 = getelementptr inbounds i64, i64* %cloptr13026, i64 0                  ; &cloptr13026[0]
  %f13033 = ptrtoint void(i64,i64)* @lam11017 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13033, i64* %eptr13027                                                 ; store fptr
  %arg8104 = ptrtoint i64* %cloptr13026 to i64                                       ; closure cast; i64* -> i64
  %rva9965 = add i64 0, 0                                                            ; quoted ()
  %rva9964 = call i64 @prim_cons(i64 %arg8104, i64 %rva9965)                         ; call prim_cons
  %cloptr13034 = inttoptr i64 %arg8105 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13034)                                        ; assert function application
  %i0ptr13035 = getelementptr inbounds i64, i64* %cloptr13034, i64 0                 ; &cloptr13034[0]
  %f13037 = load i64, i64* %i0ptr13035, align 8                                      ; load; *i0ptr13035
  %fptr13036 = inttoptr i64 %f13037 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13036(i64 %arg8105, i64 %rva9964)                   ; tail call
  ret void
}


define void @lam11021(i64 %env11022, i64 %sAq$lst7405) {
  %cont7404 = call i64 @prim_car(i64 %sAq$lst7405)                                   ; call prim_car
  %sAq$lst = call i64 @prim_cdr(i64 %sAq$lst7405)                                    ; call prim_cdr
  %arg8109 = add i64 0, 0                                                            ; quoted ()
  %rva9516 = add i64 0, 0                                                            ; quoted ()
  %rva9515 = call i64 @prim_cons(i64 %sAq$lst, i64 %rva9516)                         ; call prim_cons
  %rva9514 = call i64 @prim_cons(i64 %arg8109, i64 %rva9515)                         ; call prim_cons
  %cloptr13038 = inttoptr i64 %cont7404 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13038)                                        ; assert function application
  %i0ptr13039 = getelementptr inbounds i64, i64* %cloptr13038, i64 0                 ; &cloptr13038[0]
  %f13041 = load i64, i64* %i0ptr13039, align 8                                      ; load; *i0ptr13039
  %fptr13040 = inttoptr i64 %f13041 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13040(i64 %cont7404, i64 %rva9514)                  ; tail call
  ret void
}


define void @lam11017(i64 %env11018, i64 %rvp9962) {
  %envptr13042 = inttoptr i64 %env11018 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13043 = getelementptr inbounds i64, i64* %envptr13042, i64 5                ; &envptr13042[5]
  %a62$_37wind_45stack = load i64, i64* %envptr13043, align 8                        ; load; *envptr13043
  %envptr13044 = inttoptr i64 %env11018 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13045 = getelementptr inbounds i64, i64* %envptr13044, i64 4                ; &envptr13044[4]
  %CIs$_37raise_45handler = load i64, i64* %envptr13045, align 8                     ; load; *envptr13045
  %envptr13046 = inttoptr i64 %env11018 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13047 = getelementptr inbounds i64, i64* %envptr13046, i64 3                ; &envptr13046[3]
  %vqr$ccstack = load i64, i64* %envptr13047, align 8                                ; load; *envptr13047
  %envptr13048 = inttoptr i64 %env11018 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13049 = getelementptr inbounds i64, i64* %envptr13048, i64 2                ; &envptr13048[2]
  %m0H$fail = load i64, i64* %envptr13049, align 8                                   ; load; *envptr13049
  %envptr13050 = inttoptr i64 %env11018 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13051 = getelementptr inbounds i64, i64* %envptr13050, i64 1                ; &envptr13050[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13051, align 8                           ; load; *envptr13051
  %_957402 = call i64 @prim_car(i64 %rvp9962)                                        ; call prim_car
  %rvp9960 = call i64 @prim_cdr(i64 %rvp9962)                                        ; call prim_cdr
  %a7171 = call i64 @prim_car(i64 %rvp9960)                                          ; call prim_car
  %na9518 = call i64 @prim_cdr(i64 %rvp9960)                                         ; call prim_cdr
  %arg8112 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7403 = call i64 @prim_make_45vector(i64 %arg8112, i64 %a7171)              ; call prim_make_45vector
  %cloptr13052 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13054 = getelementptr inbounds i64, i64* %cloptr13052, i64 1                  ; &eptr13054[1]
  %eptr13055 = getelementptr inbounds i64, i64* %cloptr13052, i64 2                  ; &eptr13055[2]
  %eptr13056 = getelementptr inbounds i64, i64* %cloptr13052, i64 3                  ; &eptr13056[3]
  %eptr13057 = getelementptr inbounds i64, i64* %cloptr13052, i64 4                  ; &eptr13057[4]
  %eptr13058 = getelementptr inbounds i64, i64* %cloptr13052, i64 5                  ; &eptr13058[5]
  store i64 %ZqL$_37do_45wind, i64* %eptr13054                                       ; *eptr13054 = %ZqL$_37do_45wind
  store i64 %m0H$fail, i64* %eptr13055                                               ; *eptr13055 = %m0H$fail
  store i64 %vqr$ccstack, i64* %eptr13056                                            ; *eptr13056 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr13057                                 ; *eptr13057 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr13058                                    ; *eptr13058 = %a62$_37wind_45stack
  %eptr13053 = getelementptr inbounds i64, i64* %cloptr13052, i64 0                  ; &cloptr13052[0]
  %f13059 = ptrtoint void(i64,i64)* @lam11014 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13059, i64* %eptr13053                                                 ; store fptr
  %arg8115 = ptrtoint i64* %cloptr13052 to i64                                       ; closure cast; i64* -> i64
  %arg8114 = add i64 0, 0                                                            ; quoted ()
  %rva9959 = add i64 0, 0                                                            ; quoted ()
  %rva9958 = call i64 @prim_cons(i64 %retprim7403, i64 %rva9959)                     ; call prim_cons
  %rva9957 = call i64 @prim_cons(i64 %arg8114, i64 %rva9958)                         ; call prim_cons
  %cloptr13060 = inttoptr i64 %arg8115 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13060)                                        ; assert function application
  %i0ptr13061 = getelementptr inbounds i64, i64* %cloptr13060, i64 0                 ; &cloptr13060[0]
  %f13063 = load i64, i64* %i0ptr13061, align 8                                      ; load; *i0ptr13061
  %fptr13062 = inttoptr i64 %f13063 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13062(i64 %arg8115, i64 %rva9957)                   ; tail call
  ret void
}


define void @lam11014(i64 %env11015, i64 %rvp9955) {
  %envptr13064 = inttoptr i64 %env11015 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13065 = getelementptr inbounds i64, i64* %envptr13064, i64 5                ; &envptr13064[5]
  %a62$_37wind_45stack = load i64, i64* %envptr13065, align 8                        ; load; *envptr13065
  %envptr13066 = inttoptr i64 %env11015 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13067 = getelementptr inbounds i64, i64* %envptr13066, i64 4                ; &envptr13066[4]
  %CIs$_37raise_45handler = load i64, i64* %envptr13067, align 8                     ; load; *envptr13067
  %envptr13068 = inttoptr i64 %env11015 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13069 = getelementptr inbounds i64, i64* %envptr13068, i64 3                ; &envptr13068[3]
  %vqr$ccstack = load i64, i64* %envptr13069, align 8                                ; load; *envptr13069
  %envptr13070 = inttoptr i64 %env11015 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13071 = getelementptr inbounds i64, i64* %envptr13070, i64 2                ; &envptr13070[2]
  %m0H$fail = load i64, i64* %envptr13071, align 8                                   ; load; *envptr13071
  %envptr13072 = inttoptr i64 %env11015 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13073 = getelementptr inbounds i64, i64* %envptr13072, i64 1                ; &envptr13072[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13073, align 8                           ; load; *envptr13073
  %_957334 = call i64 @prim_car(i64 %rvp9955)                                        ; call prim_car
  %rvp9953 = call i64 @prim_cdr(i64 %rvp9955)                                        ; call prim_cdr
  %FmR$assert = call i64 @prim_car(i64 %rvp9953)                                     ; call prim_car
  %na9520 = call i64 @prim_cdr(i64 %rvp9953)                                         ; call prim_cdr
  %cloptr13074 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13075 = getelementptr inbounds i64, i64* %cloptr13074, i64 0                  ; &cloptr13074[0]
  %f13076 = ptrtoint void(i64,i64)* @lam11012 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13076, i64* %eptr13075                                                 ; store fptr
  %arg8117 = ptrtoint i64* %cloptr13074 to i64                                       ; closure cast; i64* -> i64
  %cloptr13077 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr13079 = getelementptr inbounds i64, i64* %cloptr13077, i64 1                  ; &eptr13079[1]
  %eptr13080 = getelementptr inbounds i64, i64* %cloptr13077, i64 2                  ; &eptr13080[2]
  %eptr13081 = getelementptr inbounds i64, i64* %cloptr13077, i64 3                  ; &eptr13081[3]
  %eptr13082 = getelementptr inbounds i64, i64* %cloptr13077, i64 4                  ; &eptr13082[4]
  %eptr13083 = getelementptr inbounds i64, i64* %cloptr13077, i64 5                  ; &eptr13083[5]
  %eptr13084 = getelementptr inbounds i64, i64* %cloptr13077, i64 6                  ; &eptr13084[6]
  store i64 %ZqL$_37do_45wind, i64* %eptr13079                                       ; *eptr13079 = %ZqL$_37do_45wind
  store i64 %FmR$assert, i64* %eptr13080                                             ; *eptr13080 = %FmR$assert
  store i64 %m0H$fail, i64* %eptr13081                                               ; *eptr13081 = %m0H$fail
  store i64 %vqr$ccstack, i64* %eptr13082                                            ; *eptr13082 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr13083                                 ; *eptr13083 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr13084                                    ; *eptr13084 = %a62$_37wind_45stack
  %eptr13078 = getelementptr inbounds i64, i64* %cloptr13077, i64 0                  ; &cloptr13077[0]
  %f13085 = ptrtoint void(i64,i64)* @lam11008 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13085, i64* %eptr13078                                                 ; store fptr
  %arg8116 = ptrtoint i64* %cloptr13077 to i64                                       ; closure cast; i64* -> i64
  %rva9952 = add i64 0, 0                                                            ; quoted ()
  %rva9951 = call i64 @prim_cons(i64 %arg8116, i64 %rva9952)                         ; call prim_cons
  %cloptr13086 = inttoptr i64 %arg8117 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13086)                                        ; assert function application
  %i0ptr13087 = getelementptr inbounds i64, i64* %cloptr13086, i64 0                 ; &cloptr13086[0]
  %f13089 = load i64, i64* %i0ptr13087, align 8                                      ; load; *i0ptr13087
  %fptr13088 = inttoptr i64 %f13089 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13088(i64 %arg8117, i64 %rva9951)                   ; tail call
  ret void
}


define void @lam11012(i64 %env11013, i64 %Yzf$lst7401) {
  %cont7400 = call i64 @prim_car(i64 %Yzf$lst7401)                                   ; call prim_car
  %Yzf$lst = call i64 @prim_cdr(i64 %Yzf$lst7401)                                    ; call prim_cdr
  %arg8121 = add i64 0, 0                                                            ; quoted ()
  %rva9523 = add i64 0, 0                                                            ; quoted ()
  %rva9522 = call i64 @prim_cons(i64 %Yzf$lst, i64 %rva9523)                         ; call prim_cons
  %rva9521 = call i64 @prim_cons(i64 %arg8121, i64 %rva9522)                         ; call prim_cons
  %cloptr13090 = inttoptr i64 %cont7400 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13090)                                        ; assert function application
  %i0ptr13091 = getelementptr inbounds i64, i64* %cloptr13090, i64 0                 ; &cloptr13090[0]
  %f13093 = load i64, i64* %i0ptr13091, align 8                                      ; load; *i0ptr13091
  %fptr13092 = inttoptr i64 %f13093 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13092(i64 %cont7400, i64 %rva9521)                  ; tail call
  ret void
}


define void @lam11008(i64 %env11009, i64 %rvp9949) {
  %envptr13094 = inttoptr i64 %env11009 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13095 = getelementptr inbounds i64, i64* %envptr13094, i64 6                ; &envptr13094[6]
  %a62$_37wind_45stack = load i64, i64* %envptr13095, align 8                        ; load; *envptr13095
  %envptr13096 = inttoptr i64 %env11009 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13097 = getelementptr inbounds i64, i64* %envptr13096, i64 5                ; &envptr13096[5]
  %CIs$_37raise_45handler = load i64, i64* %envptr13097, align 8                     ; load; *envptr13097
  %envptr13098 = inttoptr i64 %env11009 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13099 = getelementptr inbounds i64, i64* %envptr13098, i64 4                ; &envptr13098[4]
  %vqr$ccstack = load i64, i64* %envptr13099, align 8                                ; load; *envptr13099
  %envptr13100 = inttoptr i64 %env11009 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13101 = getelementptr inbounds i64, i64* %envptr13100, i64 3                ; &envptr13100[3]
  %m0H$fail = load i64, i64* %envptr13101, align 8                                   ; load; *envptr13101
  %envptr13102 = inttoptr i64 %env11009 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13103 = getelementptr inbounds i64, i64* %envptr13102, i64 2                ; &envptr13102[2]
  %FmR$assert = load i64, i64* %envptr13103, align 8                                 ; load; *envptr13103
  %envptr13104 = inttoptr i64 %env11009 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13105 = getelementptr inbounds i64, i64* %envptr13104, i64 1                ; &envptr13104[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13105, align 8                           ; load; *envptr13105
  %_957398 = call i64 @prim_car(i64 %rvp9949)                                        ; call prim_car
  %rvp9947 = call i64 @prim_cdr(i64 %rvp9949)                                        ; call prim_cdr
  %a7172 = call i64 @prim_car(i64 %rvp9947)                                          ; call prim_car
  %na9525 = call i64 @prim_cdr(i64 %rvp9947)                                         ; call prim_cdr
  %arg8124 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7399 = call i64 @prim_make_45vector(i64 %arg8124, i64 %a7172)              ; call prim_make_45vector
  %cloptr13106 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr13108 = getelementptr inbounds i64, i64* %cloptr13106, i64 1                  ; &eptr13108[1]
  %eptr13109 = getelementptr inbounds i64, i64* %cloptr13106, i64 2                  ; &eptr13109[2]
  %eptr13110 = getelementptr inbounds i64, i64* %cloptr13106, i64 3                  ; &eptr13110[3]
  %eptr13111 = getelementptr inbounds i64, i64* %cloptr13106, i64 4                  ; &eptr13111[4]
  %eptr13112 = getelementptr inbounds i64, i64* %cloptr13106, i64 5                  ; &eptr13112[5]
  %eptr13113 = getelementptr inbounds i64, i64* %cloptr13106, i64 6                  ; &eptr13113[6]
  store i64 %ZqL$_37do_45wind, i64* %eptr13108                                       ; *eptr13108 = %ZqL$_37do_45wind
  store i64 %FmR$assert, i64* %eptr13109                                             ; *eptr13109 = %FmR$assert
  store i64 %m0H$fail, i64* %eptr13110                                               ; *eptr13110 = %m0H$fail
  store i64 %vqr$ccstack, i64* %eptr13111                                            ; *eptr13111 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr13112                                 ; *eptr13112 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr13113                                    ; *eptr13113 = %a62$_37wind_45stack
  %eptr13107 = getelementptr inbounds i64, i64* %cloptr13106, i64 0                  ; &cloptr13106[0]
  %f13114 = ptrtoint void(i64,i64)* @lam11005 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13114, i64* %eptr13107                                                 ; store fptr
  %arg8127 = ptrtoint i64* %cloptr13106 to i64                                       ; closure cast; i64* -> i64
  %arg8126 = add i64 0, 0                                                            ; quoted ()
  %rva9946 = add i64 0, 0                                                            ; quoted ()
  %rva9945 = call i64 @prim_cons(i64 %retprim7399, i64 %rva9946)                     ; call prim_cons
  %rva9944 = call i64 @prim_cons(i64 %arg8126, i64 %rva9945)                         ; call prim_cons
  %cloptr13115 = inttoptr i64 %arg8127 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13115)                                        ; assert function application
  %i0ptr13116 = getelementptr inbounds i64, i64* %cloptr13115, i64 0                 ; &cloptr13115[0]
  %f13118 = load i64, i64* %i0ptr13116, align 8                                      ; load; *i0ptr13116
  %fptr13117 = inttoptr i64 %f13118 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13117(i64 %arg8127, i64 %rva9944)                   ; tail call
  ret void
}


define void @lam11005(i64 %env11006, i64 %rvp9942) {
  %envptr13119 = inttoptr i64 %env11006 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13120 = getelementptr inbounds i64, i64* %envptr13119, i64 6                ; &envptr13119[6]
  %a62$_37wind_45stack = load i64, i64* %envptr13120, align 8                        ; load; *envptr13120
  %envptr13121 = inttoptr i64 %env11006 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13122 = getelementptr inbounds i64, i64* %envptr13121, i64 5                ; &envptr13121[5]
  %CIs$_37raise_45handler = load i64, i64* %envptr13122, align 8                     ; load; *envptr13122
  %envptr13123 = inttoptr i64 %env11006 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13124 = getelementptr inbounds i64, i64* %envptr13123, i64 4                ; &envptr13123[4]
  %vqr$ccstack = load i64, i64* %envptr13124, align 8                                ; load; *envptr13124
  %envptr13125 = inttoptr i64 %env11006 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13126 = getelementptr inbounds i64, i64* %envptr13125, i64 3                ; &envptr13125[3]
  %m0H$fail = load i64, i64* %envptr13126, align 8                                   ; load; *envptr13126
  %envptr13127 = inttoptr i64 %env11006 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13128 = getelementptr inbounds i64, i64* %envptr13127, i64 2                ; &envptr13127[2]
  %FmR$assert = load i64, i64* %envptr13128, align 8                                 ; load; *envptr13128
  %envptr13129 = inttoptr i64 %env11006 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13130 = getelementptr inbounds i64, i64* %envptr13129, i64 1                ; &envptr13129[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13130, align 8                           ; load; *envptr13130
  %_957335 = call i64 @prim_car(i64 %rvp9942)                                        ; call prim_car
  %rvp9940 = call i64 @prim_cdr(i64 %rvp9942)                                        ; call prim_cdr
  %QJM$amb = call i64 @prim_car(i64 %rvp9940)                                        ; call prim_car
  %na9527 = call i64 @prim_cdr(i64 %rvp9940)                                         ; call prim_cdr
  %cloptr13131 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13132 = getelementptr inbounds i64, i64* %cloptr13131, i64 0                  ; &cloptr13131[0]
  %f13133 = ptrtoint void(i64,i64)* @lam11003 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13133, i64* %eptr13132                                                 ; store fptr
  %arg8129 = ptrtoint i64* %cloptr13131 to i64                                       ; closure cast; i64* -> i64
  %cloptr13134 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr13136 = getelementptr inbounds i64, i64* %cloptr13134, i64 1                  ; &eptr13136[1]
  %eptr13137 = getelementptr inbounds i64, i64* %cloptr13134, i64 2                  ; &eptr13137[2]
  %eptr13138 = getelementptr inbounds i64, i64* %cloptr13134, i64 3                  ; &eptr13138[3]
  %eptr13139 = getelementptr inbounds i64, i64* %cloptr13134, i64 4                  ; &eptr13139[4]
  %eptr13140 = getelementptr inbounds i64, i64* %cloptr13134, i64 5                  ; &eptr13140[5]
  %eptr13141 = getelementptr inbounds i64, i64* %cloptr13134, i64 6                  ; &eptr13141[6]
  %eptr13142 = getelementptr inbounds i64, i64* %cloptr13134, i64 7                  ; &eptr13142[7]
  store i64 %ZqL$_37do_45wind, i64* %eptr13136                                       ; *eptr13136 = %ZqL$_37do_45wind
  store i64 %QJM$amb, i64* %eptr13137                                                ; *eptr13137 = %QJM$amb
  store i64 %FmR$assert, i64* %eptr13138                                             ; *eptr13138 = %FmR$assert
  store i64 %m0H$fail, i64* %eptr13139                                               ; *eptr13139 = %m0H$fail
  store i64 %vqr$ccstack, i64* %eptr13140                                            ; *eptr13140 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr13141                                 ; *eptr13141 = %CIs$_37raise_45handler
  store i64 %a62$_37wind_45stack, i64* %eptr13142                                    ; *eptr13142 = %a62$_37wind_45stack
  %eptr13135 = getelementptr inbounds i64, i64* %cloptr13134, i64 0                  ; &cloptr13134[0]
  %f13143 = ptrtoint void(i64,i64)* @lam10999 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13143, i64* %eptr13135                                                 ; store fptr
  %arg8128 = ptrtoint i64* %cloptr13134 to i64                                       ; closure cast; i64* -> i64
  %rva9939 = add i64 0, 0                                                            ; quoted ()
  %rva9938 = call i64 @prim_cons(i64 %arg8128, i64 %rva9939)                         ; call prim_cons
  %cloptr13144 = inttoptr i64 %arg8129 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13144)                                        ; assert function application
  %i0ptr13145 = getelementptr inbounds i64, i64* %cloptr13144, i64 0                 ; &cloptr13144[0]
  %f13147 = load i64, i64* %i0ptr13145, align 8                                      ; load; *i0ptr13145
  %fptr13146 = inttoptr i64 %f13147 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13146(i64 %arg8129, i64 %rva9938)                   ; tail call
  ret void
}


define void @lam11003(i64 %env11004, i64 %ifH$lst7397) {
  %cont7396 = call i64 @prim_car(i64 %ifH$lst7397)                                   ; call prim_car
  %ifH$lst = call i64 @prim_cdr(i64 %ifH$lst7397)                                    ; call prim_cdr
  %arg8133 = add i64 0, 0                                                            ; quoted ()
  %rva9530 = add i64 0, 0                                                            ; quoted ()
  %rva9529 = call i64 @prim_cons(i64 %ifH$lst, i64 %rva9530)                         ; call prim_cons
  %rva9528 = call i64 @prim_cons(i64 %arg8133, i64 %rva9529)                         ; call prim_cons
  %cloptr13148 = inttoptr i64 %cont7396 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13148)                                        ; assert function application
  %i0ptr13149 = getelementptr inbounds i64, i64* %cloptr13148, i64 0                 ; &cloptr13148[0]
  %f13151 = load i64, i64* %i0ptr13149, align 8                                      ; load; *i0ptr13149
  %fptr13150 = inttoptr i64 %f13151 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13150(i64 %cont7396, i64 %rva9528)                  ; tail call
  ret void
}


define void @lam10999(i64 %env11000, i64 %rvp9936) {
  %envptr13152 = inttoptr i64 %env11000 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13153 = getelementptr inbounds i64, i64* %envptr13152, i64 7                ; &envptr13152[7]
  %a62$_37wind_45stack = load i64, i64* %envptr13153, align 8                        ; load; *envptr13153
  %envptr13154 = inttoptr i64 %env11000 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13155 = getelementptr inbounds i64, i64* %envptr13154, i64 6                ; &envptr13154[6]
  %CIs$_37raise_45handler = load i64, i64* %envptr13155, align 8                     ; load; *envptr13155
  %envptr13156 = inttoptr i64 %env11000 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13157 = getelementptr inbounds i64, i64* %envptr13156, i64 5                ; &envptr13156[5]
  %vqr$ccstack = load i64, i64* %envptr13157, align 8                                ; load; *envptr13157
  %envptr13158 = inttoptr i64 %env11000 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13159 = getelementptr inbounds i64, i64* %envptr13158, i64 4                ; &envptr13158[4]
  %m0H$fail = load i64, i64* %envptr13159, align 8                                   ; load; *envptr13159
  %envptr13160 = inttoptr i64 %env11000 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13161 = getelementptr inbounds i64, i64* %envptr13160, i64 3                ; &envptr13160[3]
  %FmR$assert = load i64, i64* %envptr13161, align 8                                 ; load; *envptr13161
  %envptr13162 = inttoptr i64 %env11000 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13163 = getelementptr inbounds i64, i64* %envptr13162, i64 2                ; &envptr13162[2]
  %QJM$amb = load i64, i64* %envptr13163, align 8                                    ; load; *envptr13163
  %envptr13164 = inttoptr i64 %env11000 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13165 = getelementptr inbounds i64, i64* %envptr13164, i64 1                ; &envptr13164[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13165, align 8                           ; load; *envptr13165
  %_957336 = call i64 @prim_car(i64 %rvp9936)                                        ; call prim_car
  %rvp9934 = call i64 @prim_cdr(i64 %rvp9936)                                        ; call prim_cdr
  %GOC$letrec7037 = call i64 @prim_car(i64 %rvp9934)                                 ; call prim_car
  %na9532 = call i64 @prim_cdr(i64 %rvp9934)                                         ; call prim_cdr
  %cloptr13166 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr13168 = getelementptr inbounds i64, i64* %cloptr13166, i64 1                  ; &eptr13168[1]
  %eptr13169 = getelementptr inbounds i64, i64* %cloptr13166, i64 2                  ; &eptr13169[2]
  store i64 %vqr$ccstack, i64* %eptr13168                                            ; *eptr13168 = %vqr$ccstack
  store i64 %CIs$_37raise_45handler, i64* %eptr13169                                 ; *eptr13169 = %CIs$_37raise_45handler
  %eptr13167 = getelementptr inbounds i64, i64* %cloptr13166, i64 0                  ; &cloptr13166[0]
  %f13170 = ptrtoint void(i64,i64)* @lam10997 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13170, i64* %eptr13167                                                 ; store fptr
  %cXK$letrec7038 = ptrtoint i64* %cloptr13166 to i64                                ; closure cast; i64* -> i64
  %cloptr13171 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr13173 = getelementptr inbounds i64, i64* %cloptr13171, i64 1                  ; &eptr13173[1]
  store i64 %m0H$fail, i64* %eptr13173                                               ; *eptr13173 = %m0H$fail
  %eptr13172 = getelementptr inbounds i64, i64* %cloptr13171, i64 0                  ; &cloptr13171[0]
  %f13174 = ptrtoint void(i64,i64)* @lam10967 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13174, i64* %eptr13172                                                 ; store fptr
  %qCV$letrec7039 = ptrtoint i64* %cloptr13171 to i64                                ; closure cast; i64* -> i64
  %cloptr13175 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13177 = getelementptr inbounds i64, i64* %cloptr13175, i64 1                  ; &eptr13177[1]
  %eptr13178 = getelementptr inbounds i64, i64* %cloptr13175, i64 2                  ; &eptr13178[2]
  %eptr13179 = getelementptr inbounds i64, i64* %cloptr13175, i64 3                  ; &eptr13179[3]
  %eptr13180 = getelementptr inbounds i64, i64* %cloptr13175, i64 4                  ; &eptr13180[4]
  store i64 %ZqL$_37do_45wind, i64* %eptr13177                                       ; *eptr13177 = %ZqL$_37do_45wind
  store i64 %m0H$fail, i64* %eptr13178                                               ; *eptr13178 = %m0H$fail
  store i64 %vqr$ccstack, i64* %eptr13179                                            ; *eptr13179 = %vqr$ccstack
  store i64 %a62$_37wind_45stack, i64* %eptr13180                                    ; *eptr13180 = %a62$_37wind_45stack
  %eptr13176 = getelementptr inbounds i64, i64* %cloptr13175, i64 0                  ; &cloptr13175[0]
  %f13181 = ptrtoint void(i64,i64)* @lam10960 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13181, i64* %eptr13176                                                 ; store fptr
  %D8a$letrec7040 = ptrtoint i64* %cloptr13175 to i64                                ; closure cast; i64* -> i64
  %arg8344 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %VvS$_957045 = call i64 @prim_vector_45set_33(i64 %vqr$ccstack, i64 %arg8344, i64 %GOC$letrec7037); call prim_vector_45set_33
  %arg8347 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %xzK$_957046 = call i64 @prim_vector_45set_33(i64 %m0H$fail, i64 %arg8347, i64 %cXK$letrec7038); call prim_vector_45set_33
  %arg8350 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %Tac$_957047 = call i64 @prim_vector_45set_33(i64 %FmR$assert, i64 %arg8350, i64 %qCV$letrec7039); call prim_vector_45set_33
  %arg8353 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %O7D$_957048 = call i64 @prim_vector_45set_33(i64 %QJM$amb, i64 %arg8353, i64 %D8a$letrec7040); call prim_vector_45set_33
  %arg8355 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7196 = call i64 @prim_vector_45ref(i64 %QJM$amb, i64 %arg8355)                   ; call prim_vector_45ref
  %cloptr13182 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13183 = getelementptr inbounds i64, i64* %cloptr13182, i64 0                  ; &cloptr13182[0]
  %f13184 = ptrtoint void(i64,i64)* @lam10828 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13184, i64* %eptr13183                                                 ; store fptr
  %arg8358 = ptrtoint i64* %cloptr13182 to i64                                       ; closure cast; i64* -> i64
  %cloptr13185 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13187 = getelementptr inbounds i64, i64* %cloptr13185, i64 1                  ; &eptr13187[1]
  %eptr13188 = getelementptr inbounds i64, i64* %cloptr13185, i64 2                  ; &eptr13188[2]
  %eptr13189 = getelementptr inbounds i64, i64* %cloptr13185, i64 3                  ; &eptr13189[3]
  store i64 %QJM$amb, i64* %eptr13187                                                ; *eptr13187 = %QJM$amb
  store i64 %FmR$assert, i64* %eptr13188                                             ; *eptr13188 = %FmR$assert
  store i64 %a7196, i64* %eptr13189                                                  ; *eptr13189 = %a7196
  %eptr13186 = getelementptr inbounds i64, i64* %cloptr13185, i64 0                  ; &cloptr13185[0]
  %f13190 = ptrtoint void(i64,i64)* @lam10824 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13190, i64* %eptr13186                                                 ; store fptr
  %arg8357 = ptrtoint i64* %cloptr13185 to i64                                       ; closure cast; i64* -> i64
  %rva9933 = add i64 0, 0                                                            ; quoted ()
  %rva9932 = call i64 @prim_cons(i64 %arg8357, i64 %rva9933)                         ; call prim_cons
  %cloptr13191 = inttoptr i64 %arg8358 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13191)                                        ; assert function application
  %i0ptr13192 = getelementptr inbounds i64, i64* %cloptr13191, i64 0                 ; &cloptr13191[0]
  %f13194 = load i64, i64* %i0ptr13192, align 8                                      ; load; *i0ptr13192
  %fptr13193 = inttoptr i64 %f13194 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13193(i64 %arg8358, i64 %rva9932)                   ; tail call
  ret void
}


define void @lam10997(i64 %env10998, i64 %rvp9579) {
  %envptr13195 = inttoptr i64 %env10998 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13196 = getelementptr inbounds i64, i64* %envptr13195, i64 2                ; &envptr13195[2]
  %CIs$_37raise_45handler = load i64, i64* %envptr13196, align 8                     ; load; *envptr13196
  %envptr13197 = inttoptr i64 %env10998 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13198 = getelementptr inbounds i64, i64* %envptr13197, i64 1                ; &envptr13197[1]
  %vqr$ccstack = load i64, i64* %envptr13198, align 8                                ; load; *envptr13198
  %cont7337 = call i64 @prim_car(i64 %rvp9579)                                       ; call prim_car
  %na9534 = call i64 @prim_cdr(i64 %rvp9579)                                         ; call prim_cdr
  %arg8135 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7173 = call i64 @prim_vector_45ref(i64 %vqr$ccstack, i64 %arg8135)               ; call prim_vector_45ref
  %a7174 = call i64 @prim_null_63(i64 %a7173)                                        ; call prim_null_63
  %cmp13199 = icmp eq i64 %a7174, 15                                                 ; false?
  br i1 %cmp13199, label %else13201, label %then13200                                ; if

then13200:
  %arg8138 = call i64 @const_init_symbol(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @sym13202, i32 0, i32 0)); quoted string
  %rva9537 = add i64 0, 0                                                            ; quoted ()
  %rva9536 = call i64 @prim_cons(i64 %arg8138, i64 %rva9537)                         ; call prim_cons
  %rva9535 = call i64 @prim_cons(i64 %cont7337, i64 %rva9536)                        ; call prim_cons
  %cloptr13203 = inttoptr i64 %CIs$_37raise_45handler to i64*                        ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13203)                                        ; assert function application
  %i0ptr13204 = getelementptr inbounds i64, i64* %cloptr13203, i64 0                 ; &cloptr13203[0]
  %f13206 = load i64, i64* %i0ptr13204, align 8                                      ; load; *i0ptr13204
  %fptr13205 = inttoptr i64 %f13206 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13205(i64 %CIs$_37raise_45handler, i64 %rva9535)    ; tail call
  ret void

else13201:
  %arg8141 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7175 = call i64 @prim_vector_45ref(i64 %vqr$ccstack, i64 %arg8141)               ; call prim_vector_45ref
  %retprim7346 = call i64 @prim_car(i64 %a7175)                                      ; call prim_car
  %cloptr13207 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr13209 = getelementptr inbounds i64, i64* %cloptr13207, i64 1                  ; &eptr13209[1]
  %eptr13210 = getelementptr inbounds i64, i64* %cloptr13207, i64 2                  ; &eptr13210[2]
  store i64 %vqr$ccstack, i64* %eptr13209                                            ; *eptr13209 = %vqr$ccstack
  store i64 %cont7337, i64* %eptr13210                                               ; *eptr13210 = %cont7337
  %eptr13208 = getelementptr inbounds i64, i64* %cloptr13207, i64 0                  ; &cloptr13207[0]
  %f13211 = ptrtoint void(i64,i64)* @lam10993 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13211, i64* %eptr13208                                                 ; store fptr
  %arg8146 = ptrtoint i64* %cloptr13207 to i64                                       ; closure cast; i64* -> i64
  %arg8145 = add i64 0, 0                                                            ; quoted ()
  %rva9578 = add i64 0, 0                                                            ; quoted ()
  %rva9577 = call i64 @prim_cons(i64 %retprim7346, i64 %rva9578)                     ; call prim_cons
  %rva9576 = call i64 @prim_cons(i64 %arg8145, i64 %rva9577)                         ; call prim_cons
  %cloptr13212 = inttoptr i64 %arg8146 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13212)                                        ; assert function application
  %i0ptr13213 = getelementptr inbounds i64, i64* %cloptr13212, i64 0                 ; &cloptr13212[0]
  %f13215 = load i64, i64* %i0ptr13213, align 8                                      ; load; *i0ptr13213
  %fptr13214 = inttoptr i64 %f13215 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13214(i64 %arg8146, i64 %rva9576)                   ; tail call
  ret void
}


define void @lam10993(i64 %env10994, i64 %rvp9574) {
  %envptr13216 = inttoptr i64 %env10994 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13217 = getelementptr inbounds i64, i64* %envptr13216, i64 2                ; &envptr13216[2]
  %cont7337 = load i64, i64* %envptr13217, align 8                                   ; load; *envptr13217
  %envptr13218 = inttoptr i64 %env10994 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13219 = getelementptr inbounds i64, i64* %envptr13218, i64 1                ; &envptr13218[1]
  %vqr$ccstack = load i64, i64* %envptr13219, align 8                                ; load; *envptr13219
  %_957338 = call i64 @prim_car(i64 %rvp9574)                                        ; call prim_car
  %rvp9572 = call i64 @prim_cdr(i64 %rvp9574)                                        ; call prim_cdr
  %K6i$next_45cc = call i64 @prim_car(i64 %rvp9572)                                  ; call prim_car
  %na9539 = call i64 @prim_cdr(i64 %rvp9572)                                         ; call prim_cdr
  %cloptr13220 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13221 = getelementptr inbounds i64, i64* %cloptr13220, i64 0                  ; &cloptr13220[0]
  %f13222 = ptrtoint void(i64,i64)* @lam10991 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13222, i64* %eptr13221                                                 ; store fptr
  %arg8148 = ptrtoint i64* %cloptr13220 to i64                                       ; closure cast; i64* -> i64
  %cloptr13223 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13225 = getelementptr inbounds i64, i64* %cloptr13223, i64 1                  ; &eptr13225[1]
  %eptr13226 = getelementptr inbounds i64, i64* %cloptr13223, i64 2                  ; &eptr13226[2]
  %eptr13227 = getelementptr inbounds i64, i64* %cloptr13223, i64 3                  ; &eptr13227[3]
  store i64 %K6i$next_45cc, i64* %eptr13225                                          ; *eptr13225 = %K6i$next_45cc
  store i64 %vqr$ccstack, i64* %eptr13226                                            ; *eptr13226 = %vqr$ccstack
  store i64 %cont7337, i64* %eptr13227                                               ; *eptr13227 = %cont7337
  %eptr13224 = getelementptr inbounds i64, i64* %cloptr13223, i64 0                  ; &cloptr13223[0]
  %f13228 = ptrtoint void(i64,i64)* @lam10987 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13228, i64* %eptr13224                                                 ; store fptr
  %arg8147 = ptrtoint i64* %cloptr13223 to i64                                       ; closure cast; i64* -> i64
  %rva9571 = add i64 0, 0                                                            ; quoted ()
  %rva9570 = call i64 @prim_cons(i64 %arg8147, i64 %rva9571)                         ; call prim_cons
  %cloptr13229 = inttoptr i64 %arg8148 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13229)                                        ; assert function application
  %i0ptr13230 = getelementptr inbounds i64, i64* %cloptr13229, i64 0                 ; &cloptr13229[0]
  %f13232 = load i64, i64* %i0ptr13230, align 8                                      ; load; *i0ptr13230
  %fptr13231 = inttoptr i64 %f13232 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13231(i64 %arg8148, i64 %rva9570)                   ; tail call
  ret void
}


define void @lam10991(i64 %env10992, i64 %JT3$lst7345) {
  %cont7344 = call i64 @prim_car(i64 %JT3$lst7345)                                   ; call prim_car
  %JT3$lst = call i64 @prim_cdr(i64 %JT3$lst7345)                                    ; call prim_cdr
  %arg8152 = add i64 0, 0                                                            ; quoted ()
  %rva9542 = add i64 0, 0                                                            ; quoted ()
  %rva9541 = call i64 @prim_cons(i64 %JT3$lst, i64 %rva9542)                         ; call prim_cons
  %rva9540 = call i64 @prim_cons(i64 %arg8152, i64 %rva9541)                         ; call prim_cons
  %cloptr13233 = inttoptr i64 %cont7344 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13233)                                        ; assert function application
  %i0ptr13234 = getelementptr inbounds i64, i64* %cloptr13233, i64 0                 ; &cloptr13233[0]
  %f13236 = load i64, i64* %i0ptr13234, align 8                                      ; load; *i0ptr13234
  %fptr13235 = inttoptr i64 %f13236 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13235(i64 %cont7344, i64 %rva9540)                  ; tail call
  ret void
}


define void @lam10987(i64 %env10988, i64 %rvp9568) {
  %envptr13237 = inttoptr i64 %env10988 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13238 = getelementptr inbounds i64, i64* %envptr13237, i64 3                ; &envptr13237[3]
  %cont7337 = load i64, i64* %envptr13238, align 8                                   ; load; *envptr13238
  %envptr13239 = inttoptr i64 %env10988 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13240 = getelementptr inbounds i64, i64* %envptr13239, i64 2                ; &envptr13239[2]
  %vqr$ccstack = load i64, i64* %envptr13240, align 8                                ; load; *envptr13240
  %envptr13241 = inttoptr i64 %env10988 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13242 = getelementptr inbounds i64, i64* %envptr13241, i64 1                ; &envptr13241[1]
  %K6i$next_45cc = load i64, i64* %envptr13242, align 8                              ; load; *envptr13242
  %_957342 = call i64 @prim_car(i64 %rvp9568)                                        ; call prim_car
  %rvp9566 = call i64 @prim_cdr(i64 %rvp9568)                                        ; call prim_cdr
  %a7176 = call i64 @prim_car(i64 %rvp9566)                                          ; call prim_car
  %na9544 = call i64 @prim_cdr(i64 %rvp9566)                                         ; call prim_cdr
  %arg8155 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7343 = call i64 @prim_make_45vector(i64 %arg8155, i64 %a7176)              ; call prim_make_45vector
  %cloptr13243 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13245 = getelementptr inbounds i64, i64* %cloptr13243, i64 1                  ; &eptr13245[1]
  %eptr13246 = getelementptr inbounds i64, i64* %cloptr13243, i64 2                  ; &eptr13246[2]
  %eptr13247 = getelementptr inbounds i64, i64* %cloptr13243, i64 3                  ; &eptr13247[3]
  store i64 %K6i$next_45cc, i64* %eptr13245                                          ; *eptr13245 = %K6i$next_45cc
  store i64 %vqr$ccstack, i64* %eptr13246                                            ; *eptr13246 = %vqr$ccstack
  store i64 %cont7337, i64* %eptr13247                                               ; *eptr13247 = %cont7337
  %eptr13244 = getelementptr inbounds i64, i64* %cloptr13243, i64 0                  ; &cloptr13243[0]
  %f13248 = ptrtoint void(i64,i64)* @lam10984 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13248, i64* %eptr13244                                                 ; store fptr
  %arg8158 = ptrtoint i64* %cloptr13243 to i64                                       ; closure cast; i64* -> i64
  %arg8157 = add i64 0, 0                                                            ; quoted ()
  %rva9565 = add i64 0, 0                                                            ; quoted ()
  %rva9564 = call i64 @prim_cons(i64 %retprim7343, i64 %rva9565)                     ; call prim_cons
  %rva9563 = call i64 @prim_cons(i64 %arg8157, i64 %rva9564)                         ; call prim_cons
  %cloptr13249 = inttoptr i64 %arg8158 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13249)                                        ; assert function application
  %i0ptr13250 = getelementptr inbounds i64, i64* %cloptr13249, i64 0                 ; &cloptr13249[0]
  %f13252 = load i64, i64* %i0ptr13250, align 8                                      ; load; *i0ptr13250
  %fptr13251 = inttoptr i64 %f13252 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13251(i64 %arg8158, i64 %rva9563)                   ; tail call
  ret void
}


define void @lam10984(i64 %env10985, i64 %rvp9561) {
  %envptr13253 = inttoptr i64 %env10985 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13254 = getelementptr inbounds i64, i64* %envptr13253, i64 3                ; &envptr13253[3]
  %cont7337 = load i64, i64* %envptr13254, align 8                                   ; load; *envptr13254
  %envptr13255 = inttoptr i64 %env10985 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13256 = getelementptr inbounds i64, i64* %envptr13255, i64 2                ; &envptr13255[2]
  %vqr$ccstack = load i64, i64* %envptr13256, align 8                                ; load; *envptr13256
  %envptr13257 = inttoptr i64 %env10985 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13258 = getelementptr inbounds i64, i64* %envptr13257, i64 1                ; &envptr13257[1]
  %K6i$next_45cc = load i64, i64* %envptr13258, align 8                              ; load; *envptr13258
  %_957339 = call i64 @prim_car(i64 %rvp9561)                                        ; call prim_car
  %rvp9559 = call i64 @prim_cdr(i64 %rvp9561)                                        ; call prim_cdr
  %QVc$tmp7021 = call i64 @prim_car(i64 %rvp9559)                                    ; call prim_car
  %na9546 = call i64 @prim_cdr(i64 %rvp9559)                                         ; call prim_cdr
  %arg8159 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7177 = call i64 @prim_vector_45ref(i64 %vqr$ccstack, i64 %arg8159)               ; call prim_vector_45ref
  %a7178 = call i64 @prim_cdr(i64 %a7177)                                            ; call prim_cdr
  %arg8163 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7179 = call i64 @prim_vector_45set_33(i64 %vqr$ccstack, i64 %arg8163, i64 %a7178); call prim_vector_45set_33
  %arg8166 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7341 = call i64 @prim_vector_45set_33(i64 %QVc$tmp7021, i64 %arg8166, i64 %a7179); call prim_vector_45set_33
  %cloptr13259 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr13261 = getelementptr inbounds i64, i64* %cloptr13259, i64 1                  ; &eptr13261[1]
  %eptr13262 = getelementptr inbounds i64, i64* %cloptr13259, i64 2                  ; &eptr13262[2]
  store i64 %K6i$next_45cc, i64* %eptr13261                                          ; *eptr13261 = %K6i$next_45cc
  store i64 %cont7337, i64* %eptr13262                                               ; *eptr13262 = %cont7337
  %eptr13260 = getelementptr inbounds i64, i64* %cloptr13259, i64 0                  ; &cloptr13259[0]
  %f13263 = ptrtoint void(i64,i64)* @lam10979 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13263, i64* %eptr13260                                                 ; store fptr
  %arg8170 = ptrtoint i64* %cloptr13259 to i64                                       ; closure cast; i64* -> i64
  %arg8169 = add i64 0, 0                                                            ; quoted ()
  %rva9558 = add i64 0, 0                                                            ; quoted ()
  %rva9557 = call i64 @prim_cons(i64 %retprim7341, i64 %rva9558)                     ; call prim_cons
  %rva9556 = call i64 @prim_cons(i64 %arg8169, i64 %rva9557)                         ; call prim_cons
  %cloptr13264 = inttoptr i64 %arg8170 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13264)                                        ; assert function application
  %i0ptr13265 = getelementptr inbounds i64, i64* %cloptr13264, i64 0                 ; &cloptr13264[0]
  %f13267 = load i64, i64* %i0ptr13265, align 8                                      ; load; *i0ptr13265
  %fptr13266 = inttoptr i64 %f13267 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13266(i64 %arg8170, i64 %rva9556)                   ; tail call
  ret void
}


define void @lam10979(i64 %env10980, i64 %rvp9554) {
  %envptr13268 = inttoptr i64 %env10980 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13269 = getelementptr inbounds i64, i64* %envptr13268, i64 2                ; &envptr13268[2]
  %cont7337 = load i64, i64* %envptr13269, align 8                                   ; load; *envptr13269
  %envptr13270 = inttoptr i64 %env10980 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13271 = getelementptr inbounds i64, i64* %envptr13270, i64 1                ; &envptr13270[1]
  %K6i$next_45cc = load i64, i64* %envptr13271, align 8                              ; load; *envptr13271
  %_957340 = call i64 @prim_car(i64 %rvp9554)                                        ; call prim_car
  %rvp9552 = call i64 @prim_cdr(i64 %rvp9554)                                        ; call prim_cdr
  %Ppi$_957041 = call i64 @prim_car(i64 %rvp9552)                                    ; call prim_car
  %na9548 = call i64 @prim_cdr(i64 %rvp9552)                                         ; call prim_cdr
  %rva9551 = add i64 0, 0                                                            ; quoted ()
  %rva9550 = call i64 @prim_cons(i64 %K6i$next_45cc, i64 %rva9551)                   ; call prim_cons
  %rva9549 = call i64 @prim_cons(i64 %cont7337, i64 %rva9550)                        ; call prim_cons
  %cloptr13272 = inttoptr i64 %K6i$next_45cc to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13272)                                        ; assert function application
  %i0ptr13273 = getelementptr inbounds i64, i64* %cloptr13272, i64 0                 ; &cloptr13272[0]
  %f13275 = load i64, i64* %i0ptr13273, align 8                                      ; load; *i0ptr13273
  %fptr13274 = inttoptr i64 %f13275 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13274(i64 %K6i$next_45cc, i64 %rva9549)             ; tail call
  ret void
}


define void @lam10967(i64 %env10968, i64 %rvp9590) {
  %envptr13276 = inttoptr i64 %env10968 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13277 = getelementptr inbounds i64, i64* %envptr13276, i64 1                ; &envptr13276[1]
  %m0H$fail = load i64, i64* %envptr13277, align 8                                   ; load; *envptr13277
  %cont7347 = call i64 @prim_car(i64 %rvp9590)                                       ; call prim_car
  %rvp9588 = call i64 @prim_cdr(i64 %rvp9590)                                        ; call prim_cdr
  %loe$b = call i64 @prim_car(i64 %rvp9588)                                          ; call prim_car
  %na9582 = call i64 @prim_cdr(i64 %rvp9588)                                         ; call prim_cdr
  %cmp13278 = icmp eq i64 %loe$b, 15                                                 ; false?
  br i1 %cmp13278, label %else13280, label %then13279                                ; if

then13279:
  %arg8175 = add i64 0, 0                                                            ; quoted ()
  %arg8174 = call i64 @const_init_true()                                             ; quoted #t
  %rva9585 = add i64 0, 0                                                            ; quoted ()
  %rva9584 = call i64 @prim_cons(i64 %arg8174, i64 %rva9585)                         ; call prim_cons
  %rva9583 = call i64 @prim_cons(i64 %arg8175, i64 %rva9584)                         ; call prim_cons
  %cloptr13281 = inttoptr i64 %cont7347 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13281)                                        ; assert function application
  %i0ptr13282 = getelementptr inbounds i64, i64* %cloptr13281, i64 0                 ; &cloptr13281[0]
  %f13284 = load i64, i64* %i0ptr13282, align 8                                      ; load; *i0ptr13282
  %fptr13283 = inttoptr i64 %f13284 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13283(i64 %cont7347, i64 %rva9583)                  ; tail call
  ret void

else13280:
  %arg8177 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7180 = call i64 @prim_vector_45ref(i64 %m0H$fail, i64 %arg8177)                  ; call prim_vector_45ref
  %rva9587 = add i64 0, 0                                                            ; quoted ()
  %rva9586 = call i64 @prim_cons(i64 %cont7347, i64 %rva9587)                        ; call prim_cons
  %cloptr13285 = inttoptr i64 %a7180 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13285)                                        ; assert function application
  %i0ptr13286 = getelementptr inbounds i64, i64* %cloptr13285, i64 0                 ; &cloptr13285[0]
  %f13288 = load i64, i64* %i0ptr13286, align 8                                      ; load; *i0ptr13286
  %fptr13287 = inttoptr i64 %f13288 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13287(i64 %a7180, i64 %rva9586)                     ; tail call
  ret void
}


define void @lam10960(i64 %env10961, i64 %rvp9812) {
  %envptr13289 = inttoptr i64 %env10961 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13290 = getelementptr inbounds i64, i64* %envptr13289, i64 4                ; &envptr13289[4]
  %a62$_37wind_45stack = load i64, i64* %envptr13290, align 8                        ; load; *envptr13290
  %envptr13291 = inttoptr i64 %env10961 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13292 = getelementptr inbounds i64, i64* %envptr13291, i64 3                ; &envptr13291[3]
  %vqr$ccstack = load i64, i64* %envptr13292, align 8                                ; load; *envptr13292
  %envptr13293 = inttoptr i64 %env10961 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13294 = getelementptr inbounds i64, i64* %envptr13293, i64 2                ; &envptr13293[2]
  %m0H$fail = load i64, i64* %envptr13294, align 8                                   ; load; *envptr13294
  %envptr13295 = inttoptr i64 %env10961 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13296 = getelementptr inbounds i64, i64* %envptr13295, i64 1                ; &envptr13295[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13296, align 8                           ; load; *envptr13296
  %cont7348 = call i64 @prim_car(i64 %rvp9812)                                       ; call prim_car
  %rvp9810 = call i64 @prim_cdr(i64 %rvp9812)                                        ; call prim_cdr
  %tZp$lst = call i64 @prim_car(i64 %rvp9810)                                        ; call prim_car
  %na9593 = call i64 @prim_cdr(i64 %rvp9810)                                         ; call prim_cdr
  %arg8182 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %iRM$lst = call i64 @prim_make_45vector(i64 %arg8182, i64 %tZp$lst)                ; call prim_make_45vector
  %cloptr13297 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr13299 = getelementptr inbounds i64, i64* %cloptr13297, i64 1                  ; &eptr13299[1]
  %eptr13300 = getelementptr inbounds i64, i64* %cloptr13297, i64 2                  ; &eptr13300[2]
  store i64 %ZqL$_37do_45wind, i64* %eptr13299                                       ; *eptr13299 = %ZqL$_37do_45wind
  store i64 %a62$_37wind_45stack, i64* %eptr13300                                    ; *eptr13300 = %a62$_37wind_45stack
  %eptr13298 = getelementptr inbounds i64, i64* %cloptr13297, i64 0                  ; &cloptr13297[0]
  %f13301 = ptrtoint void(i64,i64)* @lam10957 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13301, i64* %eptr13298                                                 ; store fptr
  %arg8185 = ptrtoint i64* %cloptr13297 to i64                                       ; closure cast; i64* -> i64
  %cloptr13302 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13304 = getelementptr inbounds i64, i64* %cloptr13302, i64 1                  ; &eptr13304[1]
  %eptr13305 = getelementptr inbounds i64, i64* %cloptr13302, i64 2                  ; &eptr13305[2]
  %eptr13306 = getelementptr inbounds i64, i64* %cloptr13302, i64 3                  ; &eptr13306[3]
  %eptr13307 = getelementptr inbounds i64, i64* %cloptr13302, i64 4                  ; &eptr13307[4]
  store i64 %m0H$fail, i64* %eptr13304                                               ; *eptr13304 = %m0H$fail
  store i64 %cont7348, i64* %eptr13305                                               ; *eptr13305 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13306                                            ; *eptr13306 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13307                                                ; *eptr13307 = %iRM$lst
  %eptr13303 = getelementptr inbounds i64, i64* %cloptr13302, i64 0                  ; &cloptr13302[0]
  %f13308 = ptrtoint void(i64,i64)* @lam10934 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13308, i64* %eptr13303                                                 ; store fptr
  %arg8184 = ptrtoint i64* %cloptr13302 to i64                                       ; closure cast; i64* -> i64
  %cloptr13309 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13311 = getelementptr inbounds i64, i64* %cloptr13309, i64 1                  ; &eptr13311[1]
  %eptr13312 = getelementptr inbounds i64, i64* %cloptr13309, i64 2                  ; &eptr13312[2]
  %eptr13313 = getelementptr inbounds i64, i64* %cloptr13309, i64 3                  ; &eptr13313[3]
  %eptr13314 = getelementptr inbounds i64, i64* %cloptr13309, i64 4                  ; &eptr13314[4]
  store i64 %m0H$fail, i64* %eptr13311                                               ; *eptr13311 = %m0H$fail
  store i64 %cont7348, i64* %eptr13312                                               ; *eptr13312 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13313                                            ; *eptr13313 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13314                                                ; *eptr13314 = %iRM$lst
  %eptr13310 = getelementptr inbounds i64, i64* %cloptr13309, i64 0                  ; &cloptr13309[0]
  %f13315 = ptrtoint void(i64,i64)* @lam10884 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13315, i64* %eptr13310                                                 ; store fptr
  %arg8183 = ptrtoint i64* %cloptr13309 to i64                                       ; closure cast; i64* -> i64
  %rva9809 = add i64 0, 0                                                            ; quoted ()
  %rva9808 = call i64 @prim_cons(i64 %arg8183, i64 %rva9809)                         ; call prim_cons
  %rva9807 = call i64 @prim_cons(i64 %arg8184, i64 %rva9808)                         ; call prim_cons
  %cloptr13316 = inttoptr i64 %arg8185 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13316)                                        ; assert function application
  %i0ptr13317 = getelementptr inbounds i64, i64* %cloptr13316, i64 0                 ; &cloptr13316[0]
  %f13319 = load i64, i64* %i0ptr13317, align 8                                      ; load; *i0ptr13317
  %fptr13318 = inttoptr i64 %f13319 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13318(i64 %arg8185, i64 %rva9807)                   ; tail call
  ret void
}


define void @lam10957(i64 %env10958, i64 %rvp9649) {
  %envptr13320 = inttoptr i64 %env10958 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13321 = getelementptr inbounds i64, i64* %envptr13320, i64 2                ; &envptr13320[2]
  %a62$_37wind_45stack = load i64, i64* %envptr13321, align 8                        ; load; *envptr13321
  %envptr13322 = inttoptr i64 %env10958 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13323 = getelementptr inbounds i64, i64* %envptr13322, i64 1                ; &envptr13322[1]
  %ZqL$_37do_45wind = load i64, i64* %envptr13323, align 8                           ; load; *envptr13323
  %cont7366 = call i64 @prim_car(i64 %rvp9649)                                       ; call prim_car
  %rvp9647 = call i64 @prim_cdr(i64 %rvp9649)                                        ; call prim_cdr
  %FEX$_37k = call i64 @prim_car(i64 %rvp9647)                                       ; call prim_car
  %na9595 = call i64 @prim_cdr(i64 %rvp9647)                                         ; call prim_cdr
  %arg8186 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %EFz$_37saved_45stack = call i64 @prim_vector_45ref(i64 %a62$_37wind_45stack, i64 %arg8186); call prim_vector_45ref
  %cloptr13324 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr13326 = getelementptr inbounds i64, i64* %cloptr13324, i64 1                  ; &eptr13326[1]
  store i64 %cont7366, i64* %eptr13326                                               ; *eptr13326 = %cont7366
  %eptr13325 = getelementptr inbounds i64, i64* %cloptr13324, i64 0                  ; &cloptr13324[0]
  %f13327 = ptrtoint void(i64,i64)* @lam10954 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13327, i64* %eptr13325                                                 ; store fptr
  %arg8190 = ptrtoint i64* %cloptr13324 to i64                                       ; closure cast; i64* -> i64
  %arg8189 = add i64 0, 0                                                            ; quoted ()
  %cloptr13328 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13330 = getelementptr inbounds i64, i64* %cloptr13328, i64 1                  ; &eptr13330[1]
  %eptr13331 = getelementptr inbounds i64, i64* %cloptr13328, i64 2                  ; &eptr13331[2]
  %eptr13332 = getelementptr inbounds i64, i64* %cloptr13328, i64 3                  ; &eptr13332[3]
  %eptr13333 = getelementptr inbounds i64, i64* %cloptr13328, i64 4                  ; &eptr13333[4]
  store i64 %EFz$_37saved_45stack, i64* %eptr13330                                   ; *eptr13330 = %EFz$_37saved_45stack
  store i64 %ZqL$_37do_45wind, i64* %eptr13331                                       ; *eptr13331 = %ZqL$_37do_45wind
  store i64 %a62$_37wind_45stack, i64* %eptr13332                                    ; *eptr13332 = %a62$_37wind_45stack
  store i64 %FEX$_37k, i64* %eptr13333                                               ; *eptr13333 = %FEX$_37k
  %eptr13329 = getelementptr inbounds i64, i64* %cloptr13328, i64 0                  ; &cloptr13328[0]
  %f13334 = ptrtoint void(i64,i64)* @lam10947 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13334, i64* %eptr13329                                                 ; store fptr
  %arg8188 = ptrtoint i64* %cloptr13328 to i64                                       ; closure cast; i64* -> i64
  %rva9646 = add i64 0, 0                                                            ; quoted ()
  %rva9645 = call i64 @prim_cons(i64 %arg8188, i64 %rva9646)                         ; call prim_cons
  %rva9644 = call i64 @prim_cons(i64 %arg8189, i64 %rva9645)                         ; call prim_cons
  %cloptr13335 = inttoptr i64 %arg8190 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13335)                                        ; assert function application
  %i0ptr13336 = getelementptr inbounds i64, i64* %cloptr13335, i64 0                 ; &cloptr13335[0]
  %f13338 = load i64, i64* %i0ptr13336, align 8                                      ; load; *i0ptr13336
  %fptr13337 = inttoptr i64 %f13338 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13337(i64 %arg8190, i64 %rva9644)                   ; tail call
  ret void
}


define void @lam10954(i64 %env10955, i64 %rvp9612) {
  %envptr13339 = inttoptr i64 %env10955 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13340 = getelementptr inbounds i64, i64* %envptr13339, i64 1                ; &envptr13339[1]
  %cont7366 = load i64, i64* %envptr13340, align 8                                   ; load; *envptr13340
  %_957367 = call i64 @prim_car(i64 %rvp9612)                                        ; call prim_car
  %rvp9610 = call i64 @prim_cdr(i64 %rvp9612)                                        ; call prim_cdr
  %a7183 = call i64 @prim_car(i64 %rvp9610)                                          ; call prim_car
  %na9597 = call i64 @prim_cdr(i64 %rvp9610)                                         ; call prim_cdr
  %cloptr13341 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13342 = getelementptr inbounds i64, i64* %cloptr13341, i64 0                  ; &cloptr13341[0]
  %f13343 = ptrtoint void(i64,i64)* @lam10952 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13343, i64* %eptr13342                                                 ; store fptr
  %arg8193 = ptrtoint i64* %cloptr13341 to i64                                       ; closure cast; i64* -> i64
  %rva9609 = add i64 0, 0                                                            ; quoted ()
  %rva9608 = call i64 @prim_cons(i64 %a7183, i64 %rva9609)                           ; call prim_cons
  %rva9607 = call i64 @prim_cons(i64 %cont7366, i64 %rva9608)                        ; call prim_cons
  %cloptr13344 = inttoptr i64 %arg8193 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13344)                                        ; assert function application
  %i0ptr13345 = getelementptr inbounds i64, i64* %cloptr13344, i64 0                 ; &cloptr13344[0]
  %f13347 = load i64, i64* %i0ptr13345, align 8                                      ; load; *i0ptr13345
  %fptr13346 = inttoptr i64 %f13347 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13346(i64 %arg8193, i64 %rva9607)                   ; tail call
  ret void
}


define void @lam10952(i64 %env10953, i64 %rvp9605) {
  %cont7368 = call i64 @prim_car(i64 %rvp9605)                                       ; call prim_car
  %rvp9603 = call i64 @prim_cdr(i64 %rvp9605)                                        ; call prim_cdr
  %xpD$u = call i64 @prim_car(i64 %rvp9603)                                          ; call prim_car
  %na9599 = call i64 @prim_cdr(i64 %rvp9603)                                         ; call prim_cdr
  %rva9602 = add i64 0, 0                                                            ; quoted ()
  %rva9601 = call i64 @prim_cons(i64 %xpD$u, i64 %rva9602)                           ; call prim_cons
  %rva9600 = call i64 @prim_cons(i64 %cont7368, i64 %rva9601)                        ; call prim_cons
  %cloptr13348 = inttoptr i64 %xpD$u to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13348)                                        ; assert function application
  %i0ptr13349 = getelementptr inbounds i64, i64* %cloptr13348, i64 0                 ; &cloptr13348[0]
  %f13351 = load i64, i64* %i0ptr13349, align 8                                      ; load; *i0ptr13349
  %fptr13350 = inttoptr i64 %f13351 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13350(i64 %xpD$u, i64 %rva9600)                     ; tail call
  ret void
}


define void @lam10947(i64 %env10948, i64 %rvp9642) {
  %envptr13352 = inttoptr i64 %env10948 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13353 = getelementptr inbounds i64, i64* %envptr13352, i64 4                ; &envptr13352[4]
  %FEX$_37k = load i64, i64* %envptr13353, align 8                                   ; load; *envptr13353
  %envptr13354 = inttoptr i64 %env10948 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13355 = getelementptr inbounds i64, i64* %envptr13354, i64 3                ; &envptr13354[3]
  %a62$_37wind_45stack = load i64, i64* %envptr13355, align 8                        ; load; *envptr13355
  %envptr13356 = inttoptr i64 %env10948 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13357 = getelementptr inbounds i64, i64* %envptr13356, i64 2                ; &envptr13356[2]
  %ZqL$_37do_45wind = load i64, i64* %envptr13357, align 8                           ; load; *envptr13357
  %envptr13358 = inttoptr i64 %env10948 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13359 = getelementptr inbounds i64, i64* %envptr13358, i64 1                ; &envptr13358[1]
  %EFz$_37saved_45stack = load i64, i64* %envptr13359, align 8                       ; load; *envptr13359
  %cont7369 = call i64 @prim_car(i64 %rvp9642)                                       ; call prim_car
  %rvp9640 = call i64 @prim_cdr(i64 %rvp9642)                                        ; call prim_cdr
  %EQd$_37x = call i64 @prim_car(i64 %rvp9640)                                       ; call prim_car
  %na9615 = call i64 @prim_cdr(i64 %rvp9640)                                         ; call prim_cdr
  %arg8197 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7181 = call i64 @prim_vector_45ref(i64 %a62$_37wind_45stack, i64 %arg8197)       ; call prim_vector_45ref
  %a7182 = call i64 @prim_eq_63(i64 %EFz$_37saved_45stack, i64 %a7181)               ; call prim_eq_63
  %cmp13360 = icmp eq i64 %a7182, 15                                                 ; false?
  br i1 %cmp13360, label %else13362, label %then13361                                ; if

then13361:
  %retprim7371 = call i64 @prim_void()                                               ; call prim_void
  %cloptr13363 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13365 = getelementptr inbounds i64, i64* %cloptr13363, i64 1                  ; &eptr13365[1]
  %eptr13366 = getelementptr inbounds i64, i64* %cloptr13363, i64 2                  ; &eptr13366[2]
  %eptr13367 = getelementptr inbounds i64, i64* %cloptr13363, i64 3                  ; &eptr13367[3]
  store i64 %cont7369, i64* %eptr13365                                               ; *eptr13365 = %cont7369
  store i64 %EQd$_37x, i64* %eptr13366                                               ; *eptr13366 = %EQd$_37x
  store i64 %FEX$_37k, i64* %eptr13367                                               ; *eptr13367 = %FEX$_37k
  %eptr13364 = getelementptr inbounds i64, i64* %cloptr13363, i64 0                  ; &cloptr13363[0]
  %f13368 = ptrtoint void(i64,i64)* @lam10940 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13368, i64* %eptr13364                                                 ; store fptr
  %arg8203 = ptrtoint i64* %cloptr13363 to i64                                       ; closure cast; i64* -> i64
  %arg8202 = add i64 0, 0                                                            ; quoted ()
  %rva9627 = add i64 0, 0                                                            ; quoted ()
  %rva9626 = call i64 @prim_cons(i64 %retprim7371, i64 %rva9627)                     ; call prim_cons
  %rva9625 = call i64 @prim_cons(i64 %arg8202, i64 %rva9626)                         ; call prim_cons
  %cloptr13369 = inttoptr i64 %arg8203 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13369)                                        ; assert function application
  %i0ptr13370 = getelementptr inbounds i64, i64* %cloptr13369, i64 0                 ; &cloptr13369[0]
  %f13372 = load i64, i64* %i0ptr13370, align 8                                      ; load; *i0ptr13370
  %fptr13371 = inttoptr i64 %f13372 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13371(i64 %arg8203, i64 %rva9625)                   ; tail call
  ret void

else13362:
  %cloptr13373 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13375 = getelementptr inbounds i64, i64* %cloptr13373, i64 1                  ; &eptr13375[1]
  %eptr13376 = getelementptr inbounds i64, i64* %cloptr13373, i64 2                  ; &eptr13376[2]
  %eptr13377 = getelementptr inbounds i64, i64* %cloptr13373, i64 3                  ; &eptr13377[3]
  store i64 %cont7369, i64* %eptr13375                                               ; *eptr13375 = %cont7369
  store i64 %EQd$_37x, i64* %eptr13376                                               ; *eptr13376 = %EQd$_37x
  store i64 %FEX$_37k, i64* %eptr13377                                               ; *eptr13377 = %FEX$_37k
  %eptr13374 = getelementptr inbounds i64, i64* %cloptr13373, i64 0                  ; &cloptr13373[0]
  %f13378 = ptrtoint void(i64,i64)* @lam10944 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13378, i64* %eptr13374                                                 ; store fptr
  %arg8208 = ptrtoint i64* %cloptr13373 to i64                                       ; closure cast; i64* -> i64
  %rva9639 = add i64 0, 0                                                            ; quoted ()
  %rva9638 = call i64 @prim_cons(i64 %EFz$_37saved_45stack, i64 %rva9639)            ; call prim_cons
  %rva9637 = call i64 @prim_cons(i64 %arg8208, i64 %rva9638)                         ; call prim_cons
  %cloptr13379 = inttoptr i64 %ZqL$_37do_45wind to i64*                              ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13379)                                        ; assert function application
  %i0ptr13380 = getelementptr inbounds i64, i64* %cloptr13379, i64 0                 ; &cloptr13379[0]
  %f13382 = load i64, i64* %i0ptr13380, align 8                                      ; load; *i0ptr13380
  %fptr13381 = inttoptr i64 %f13382 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13381(i64 %ZqL$_37do_45wind, i64 %rva9637)          ; tail call
  ret void
}


define void @lam10944(i64 %env10945, i64 %rvp9635) {
  %envptr13383 = inttoptr i64 %env10945 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13384 = getelementptr inbounds i64, i64* %envptr13383, i64 3                ; &envptr13383[3]
  %FEX$_37k = load i64, i64* %envptr13384, align 8                                   ; load; *envptr13384
  %envptr13385 = inttoptr i64 %env10945 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13386 = getelementptr inbounds i64, i64* %envptr13385, i64 2                ; &envptr13385[2]
  %EQd$_37x = load i64, i64* %envptr13386, align 8                                   ; load; *envptr13386
  %envptr13387 = inttoptr i64 %env10945 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13388 = getelementptr inbounds i64, i64* %envptr13387, i64 1                ; &envptr13387[1]
  %cont7369 = load i64, i64* %envptr13388, align 8                                   ; load; *envptr13388
  %_957370 = call i64 @prim_car(i64 %rvp9635)                                        ; call prim_car
  %rvp9633 = call i64 @prim_cdr(i64 %rvp9635)                                        ; call prim_cdr
  %om6$_957042 = call i64 @prim_car(i64 %rvp9633)                                    ; call prim_car
  %na9629 = call i64 @prim_cdr(i64 %rvp9633)                                         ; call prim_cdr
  %rva9632 = add i64 0, 0                                                            ; quoted ()
  %rva9631 = call i64 @prim_cons(i64 %EQd$_37x, i64 %rva9632)                        ; call prim_cons
  %rva9630 = call i64 @prim_cons(i64 %cont7369, i64 %rva9631)                        ; call prim_cons
  %cloptr13389 = inttoptr i64 %FEX$_37k to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13389)                                        ; assert function application
  %i0ptr13390 = getelementptr inbounds i64, i64* %cloptr13389, i64 0                 ; &cloptr13389[0]
  %f13392 = load i64, i64* %i0ptr13390, align 8                                      ; load; *i0ptr13390
  %fptr13391 = inttoptr i64 %f13392 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13391(i64 %FEX$_37k, i64 %rva9630)                  ; tail call
  ret void
}


define void @lam10940(i64 %env10941, i64 %rvp9623) {
  %envptr13393 = inttoptr i64 %env10941 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13394 = getelementptr inbounds i64, i64* %envptr13393, i64 3                ; &envptr13393[3]
  %FEX$_37k = load i64, i64* %envptr13394, align 8                                   ; load; *envptr13394
  %envptr13395 = inttoptr i64 %env10941 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13396 = getelementptr inbounds i64, i64* %envptr13395, i64 2                ; &envptr13395[2]
  %EQd$_37x = load i64, i64* %envptr13396, align 8                                   ; load; *envptr13396
  %envptr13397 = inttoptr i64 %env10941 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13398 = getelementptr inbounds i64, i64* %envptr13397, i64 1                ; &envptr13397[1]
  %cont7369 = load i64, i64* %envptr13398, align 8                                   ; load; *envptr13398
  %_957370 = call i64 @prim_car(i64 %rvp9623)                                        ; call prim_car
  %rvp9621 = call i64 @prim_cdr(i64 %rvp9623)                                        ; call prim_cdr
  %om6$_957042 = call i64 @prim_car(i64 %rvp9621)                                    ; call prim_car
  %na9617 = call i64 @prim_cdr(i64 %rvp9621)                                         ; call prim_cdr
  %rva9620 = add i64 0, 0                                                            ; quoted ()
  %rva9619 = call i64 @prim_cons(i64 %EQd$_37x, i64 %rva9620)                        ; call prim_cons
  %rva9618 = call i64 @prim_cons(i64 %cont7369, i64 %rva9619)                        ; call prim_cons
  %cloptr13399 = inttoptr i64 %FEX$_37k to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13399)                                        ; assert function application
  %i0ptr13400 = getelementptr inbounds i64, i64* %cloptr13399, i64 0                 ; &cloptr13399[0]
  %f13402 = load i64, i64* %i0ptr13400, align 8                                      ; load; *i0ptr13400
  %fptr13401 = inttoptr i64 %f13402 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13401(i64 %FEX$_37k, i64 %rva9618)                  ; tail call
  ret void
}


define void @lam10934(i64 %env10935, i64 %rvp9727) {
  %envptr13403 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13404 = getelementptr inbounds i64, i64* %envptr13403, i64 4                ; &envptr13403[4]
  %iRM$lst = load i64, i64* %envptr13404, align 8                                    ; load; *envptr13404
  %envptr13405 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13406 = getelementptr inbounds i64, i64* %envptr13405, i64 3                ; &envptr13405[3]
  %vqr$ccstack = load i64, i64* %envptr13406, align 8                                ; load; *envptr13406
  %envptr13407 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13408 = getelementptr inbounds i64, i64* %envptr13407, i64 2                ; &envptr13407[2]
  %cont7348 = load i64, i64* %envptr13408, align 8                                   ; load; *envptr13408
  %envptr13409 = inttoptr i64 %env10935 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13410 = getelementptr inbounds i64, i64* %envptr13409, i64 1                ; &envptr13409[1]
  %m0H$fail = load i64, i64* %envptr13410, align 8                                   ; load; *envptr13410
  %_957349 = call i64 @prim_car(i64 %rvp9727)                                        ; call prim_car
  %rvp9725 = call i64 @prim_cdr(i64 %rvp9727)                                        ; call prim_cdr
  %Dtx$cc = call i64 @prim_car(i64 %rvp9725)                                         ; call prim_car
  %na9652 = call i64 @prim_cdr(i64 %rvp9725)                                         ; call prim_cdr
  %arg8213 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7184 = call i64 @prim_vector_45ref(i64 %iRM$lst, i64 %arg8213)                   ; call prim_vector_45ref
  %a7185 = call i64 @prim_null_63(i64 %a7184)                                        ; call prim_null_63
  %cmp13411 = icmp eq i64 %a7185, 15                                                 ; false?
  br i1 %cmp13411, label %else13413, label %then13412                                ; if

then13412:
  %arg8216 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7186 = call i64 @prim_vector_45ref(i64 %m0H$fail, i64 %arg8216)                  ; call prim_vector_45ref
  %rva9654 = add i64 0, 0                                                            ; quoted ()
  %rva9653 = call i64 @prim_cons(i64 %cont7348, i64 %rva9654)                        ; call prim_cons
  %cloptr13414 = inttoptr i64 %a7186 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13414)                                        ; assert function application
  %i0ptr13415 = getelementptr inbounds i64, i64* %cloptr13414, i64 0                 ; &cloptr13414[0]
  %f13417 = load i64, i64* %i0ptr13415, align 8                                      ; load; *i0ptr13415
  %fptr13416 = inttoptr i64 %f13417 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13416(i64 %a7186, i64 %rva9653)                     ; tail call
  ret void

else13413:
  %arg8220 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7187 = call i64 @prim_vector_45ref(i64 %iRM$lst, i64 %arg8220)                   ; call prim_vector_45ref
  %retprim7365 = call i64 @prim_car(i64 %a7187)                                      ; call prim_car
  %cloptr13418 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13420 = getelementptr inbounds i64, i64* %cloptr13418, i64 1                  ; &eptr13420[1]
  %eptr13421 = getelementptr inbounds i64, i64* %cloptr13418, i64 2                  ; &eptr13421[2]
  %eptr13422 = getelementptr inbounds i64, i64* %cloptr13418, i64 3                  ; &eptr13422[3]
  %eptr13423 = getelementptr inbounds i64, i64* %cloptr13418, i64 4                  ; &eptr13423[4]
  store i64 %Dtx$cc, i64* %eptr13420                                                 ; *eptr13420 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13421                                               ; *eptr13421 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13422                                            ; *eptr13422 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13423                                                ; *eptr13423 = %iRM$lst
  %eptr13419 = getelementptr inbounds i64, i64* %cloptr13418, i64 0                  ; &cloptr13418[0]
  %f13424 = ptrtoint void(i64,i64)* @lam10930 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13424, i64* %eptr13419                                                 ; store fptr
  %arg8225 = ptrtoint i64* %cloptr13418 to i64                                       ; closure cast; i64* -> i64
  %arg8224 = add i64 0, 0                                                            ; quoted ()
  %rva9724 = add i64 0, 0                                                            ; quoted ()
  %rva9723 = call i64 @prim_cons(i64 %retprim7365, i64 %rva9724)                     ; call prim_cons
  %rva9722 = call i64 @prim_cons(i64 %arg8224, i64 %rva9723)                         ; call prim_cons
  %cloptr13425 = inttoptr i64 %arg8225 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13425)                                        ; assert function application
  %i0ptr13426 = getelementptr inbounds i64, i64* %cloptr13425, i64 0                 ; &cloptr13425[0]
  %f13428 = load i64, i64* %i0ptr13426, align 8                                      ; load; *i0ptr13426
  %fptr13427 = inttoptr i64 %f13428 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13427(i64 %arg8225, i64 %rva9722)                   ; tail call
  ret void
}


define void @lam10930(i64 %env10931, i64 %rvp9720) {
  %envptr13429 = inttoptr i64 %env10931 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13430 = getelementptr inbounds i64, i64* %envptr13429, i64 4                ; &envptr13429[4]
  %iRM$lst = load i64, i64* %envptr13430, align 8                                    ; load; *envptr13430
  %envptr13431 = inttoptr i64 %env10931 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13432 = getelementptr inbounds i64, i64* %envptr13431, i64 3                ; &envptr13431[3]
  %vqr$ccstack = load i64, i64* %envptr13432, align 8                                ; load; *envptr13432
  %envptr13433 = inttoptr i64 %env10931 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13434 = getelementptr inbounds i64, i64* %envptr13433, i64 2                ; &envptr13433[2]
  %cont7348 = load i64, i64* %envptr13434, align 8                                   ; load; *envptr13434
  %envptr13435 = inttoptr i64 %env10931 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13436 = getelementptr inbounds i64, i64* %envptr13435, i64 1                ; &envptr13435[1]
  %Dtx$cc = load i64, i64* %envptr13436, align 8                                     ; load; *envptr13436
  %_957350 = call i64 @prim_car(i64 %rvp9720)                                        ; call prim_car
  %rvp9718 = call i64 @prim_cdr(i64 %rvp9720)                                        ; call prim_cdr
  %X2C$head = call i64 @prim_car(i64 %rvp9718)                                       ; call prim_car
  %na9656 = call i64 @prim_cdr(i64 %rvp9718)                                         ; call prim_cdr
  %cloptr13437 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13438 = getelementptr inbounds i64, i64* %cloptr13437, i64 0                  ; &cloptr13437[0]
  %f13439 = ptrtoint void(i64,i64)* @lam10928 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13439, i64* %eptr13438                                                 ; store fptr
  %arg8227 = ptrtoint i64* %cloptr13437 to i64                                       ; closure cast; i64* -> i64
  %cloptr13440 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13442 = getelementptr inbounds i64, i64* %cloptr13440, i64 1                  ; &eptr13442[1]
  %eptr13443 = getelementptr inbounds i64, i64* %cloptr13440, i64 2                  ; &eptr13443[2]
  %eptr13444 = getelementptr inbounds i64, i64* %cloptr13440, i64 3                  ; &eptr13444[3]
  %eptr13445 = getelementptr inbounds i64, i64* %cloptr13440, i64 4                  ; &eptr13445[4]
  %eptr13446 = getelementptr inbounds i64, i64* %cloptr13440, i64 5                  ; &eptr13446[5]
  store i64 %X2C$head, i64* %eptr13442                                               ; *eptr13442 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13443                                                 ; *eptr13443 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13444                                               ; *eptr13444 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13445                                            ; *eptr13445 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13446                                                ; *eptr13446 = %iRM$lst
  %eptr13441 = getelementptr inbounds i64, i64* %cloptr13440, i64 0                  ; &cloptr13440[0]
  %f13447 = ptrtoint void(i64,i64)* @lam10924 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13447, i64* %eptr13441                                                 ; store fptr
  %arg8226 = ptrtoint i64* %cloptr13440 to i64                                       ; closure cast; i64* -> i64
  %rva9717 = add i64 0, 0                                                            ; quoted ()
  %rva9716 = call i64 @prim_cons(i64 %arg8226, i64 %rva9717)                         ; call prim_cons
  %cloptr13448 = inttoptr i64 %arg8227 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13448)                                        ; assert function application
  %i0ptr13449 = getelementptr inbounds i64, i64* %cloptr13448, i64 0                 ; &cloptr13448[0]
  %f13451 = load i64, i64* %i0ptr13449, align 8                                      ; load; *i0ptr13449
  %fptr13450 = inttoptr i64 %f13451 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13450(i64 %arg8227, i64 %rva9716)                   ; tail call
  ret void
}


define void @lam10928(i64 %env10929, i64 %v1X$lst7364) {
  %cont7363 = call i64 @prim_car(i64 %v1X$lst7364)                                   ; call prim_car
  %v1X$lst = call i64 @prim_cdr(i64 %v1X$lst7364)                                    ; call prim_cdr
  %arg8231 = add i64 0, 0                                                            ; quoted ()
  %rva9659 = add i64 0, 0                                                            ; quoted ()
  %rva9658 = call i64 @prim_cons(i64 %v1X$lst, i64 %rva9659)                         ; call prim_cons
  %rva9657 = call i64 @prim_cons(i64 %arg8231, i64 %rva9658)                         ; call prim_cons
  %cloptr13452 = inttoptr i64 %cont7363 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13452)                                        ; assert function application
  %i0ptr13453 = getelementptr inbounds i64, i64* %cloptr13452, i64 0                 ; &cloptr13452[0]
  %f13455 = load i64, i64* %i0ptr13453, align 8                                      ; load; *i0ptr13453
  %fptr13454 = inttoptr i64 %f13455 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13454(i64 %cont7363, i64 %rva9657)                  ; tail call
  ret void
}


define void @lam10924(i64 %env10925, i64 %rvp9714) {
  %envptr13456 = inttoptr i64 %env10925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13457 = getelementptr inbounds i64, i64* %envptr13456, i64 5                ; &envptr13456[5]
  %iRM$lst = load i64, i64* %envptr13457, align 8                                    ; load; *envptr13457
  %envptr13458 = inttoptr i64 %env10925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13459 = getelementptr inbounds i64, i64* %envptr13458, i64 4                ; &envptr13458[4]
  %vqr$ccstack = load i64, i64* %envptr13459, align 8                                ; load; *envptr13459
  %envptr13460 = inttoptr i64 %env10925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13461 = getelementptr inbounds i64, i64* %envptr13460, i64 3                ; &envptr13460[3]
  %cont7348 = load i64, i64* %envptr13461, align 8                                   ; load; *envptr13461
  %envptr13462 = inttoptr i64 %env10925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13463 = getelementptr inbounds i64, i64* %envptr13462, i64 2                ; &envptr13462[2]
  %Dtx$cc = load i64, i64* %envptr13463, align 8                                     ; load; *envptr13463
  %envptr13464 = inttoptr i64 %env10925 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13465 = getelementptr inbounds i64, i64* %envptr13464, i64 1                ; &envptr13464[1]
  %X2C$head = load i64, i64* %envptr13465, align 8                                   ; load; *envptr13465
  %_957361 = call i64 @prim_car(i64 %rvp9714)                                        ; call prim_car
  %rvp9712 = call i64 @prim_cdr(i64 %rvp9714)                                        ; call prim_cdr
  %a7188 = call i64 @prim_car(i64 %rvp9712)                                          ; call prim_car
  %na9661 = call i64 @prim_cdr(i64 %rvp9712)                                         ; call prim_cdr
  %arg8234 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7362 = call i64 @prim_make_45vector(i64 %arg8234, i64 %a7188)              ; call prim_make_45vector
  %cloptr13466 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13468 = getelementptr inbounds i64, i64* %cloptr13466, i64 1                  ; &eptr13468[1]
  %eptr13469 = getelementptr inbounds i64, i64* %cloptr13466, i64 2                  ; &eptr13469[2]
  %eptr13470 = getelementptr inbounds i64, i64* %cloptr13466, i64 3                  ; &eptr13470[3]
  %eptr13471 = getelementptr inbounds i64, i64* %cloptr13466, i64 4                  ; &eptr13471[4]
  %eptr13472 = getelementptr inbounds i64, i64* %cloptr13466, i64 5                  ; &eptr13472[5]
  store i64 %X2C$head, i64* %eptr13468                                               ; *eptr13468 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13469                                                 ; *eptr13469 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13470                                               ; *eptr13470 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13471                                            ; *eptr13471 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13472                                                ; *eptr13472 = %iRM$lst
  %eptr13467 = getelementptr inbounds i64, i64* %cloptr13466, i64 0                  ; &cloptr13466[0]
  %f13473 = ptrtoint void(i64,i64)* @lam10921 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13473, i64* %eptr13467                                                 ; store fptr
  %arg8237 = ptrtoint i64* %cloptr13466 to i64                                       ; closure cast; i64* -> i64
  %arg8236 = add i64 0, 0                                                            ; quoted ()
  %rva9711 = add i64 0, 0                                                            ; quoted ()
  %rva9710 = call i64 @prim_cons(i64 %retprim7362, i64 %rva9711)                     ; call prim_cons
  %rva9709 = call i64 @prim_cons(i64 %arg8236, i64 %rva9710)                         ; call prim_cons
  %cloptr13474 = inttoptr i64 %arg8237 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13474)                                        ; assert function application
  %i0ptr13475 = getelementptr inbounds i64, i64* %cloptr13474, i64 0                 ; &cloptr13474[0]
  %f13477 = load i64, i64* %i0ptr13475, align 8                                      ; load; *i0ptr13475
  %fptr13476 = inttoptr i64 %f13477 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13476(i64 %arg8237, i64 %rva9709)                   ; tail call
  ret void
}


define void @lam10921(i64 %env10922, i64 %rvp9707) {
  %envptr13478 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13479 = getelementptr inbounds i64, i64* %envptr13478, i64 5                ; &envptr13478[5]
  %iRM$lst = load i64, i64* %envptr13479, align 8                                    ; load; *envptr13479
  %envptr13480 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13481 = getelementptr inbounds i64, i64* %envptr13480, i64 4                ; &envptr13480[4]
  %vqr$ccstack = load i64, i64* %envptr13481, align 8                                ; load; *envptr13481
  %envptr13482 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13483 = getelementptr inbounds i64, i64* %envptr13482, i64 3                ; &envptr13482[3]
  %cont7348 = load i64, i64* %envptr13483, align 8                                   ; load; *envptr13483
  %envptr13484 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13485 = getelementptr inbounds i64, i64* %envptr13484, i64 2                ; &envptr13484[2]
  %Dtx$cc = load i64, i64* %envptr13485, align 8                                     ; load; *envptr13485
  %envptr13486 = inttoptr i64 %env10922 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13487 = getelementptr inbounds i64, i64* %envptr13486, i64 1                ; &envptr13486[1]
  %X2C$head = load i64, i64* %envptr13487, align 8                                   ; load; *envptr13487
  %_957351 = call i64 @prim_car(i64 %rvp9707)                                        ; call prim_car
  %rvp9705 = call i64 @prim_cdr(i64 %rvp9707)                                        ; call prim_cdr
  %jg3$tmp7026 = call i64 @prim_car(i64 %rvp9705)                                    ; call prim_car
  %na9663 = call i64 @prim_cdr(i64 %rvp9705)                                         ; call prim_cdr
  %cloptr13488 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13489 = getelementptr inbounds i64, i64* %cloptr13488, i64 0                  ; &cloptr13488[0]
  %f13490 = ptrtoint void(i64,i64)* @lam10919 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13490, i64* %eptr13489                                                 ; store fptr
  %arg8239 = ptrtoint i64* %cloptr13488 to i64                                       ; closure cast; i64* -> i64
  %cloptr13491 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr13493 = getelementptr inbounds i64, i64* %cloptr13491, i64 1                  ; &eptr13493[1]
  %eptr13494 = getelementptr inbounds i64, i64* %cloptr13491, i64 2                  ; &eptr13494[2]
  %eptr13495 = getelementptr inbounds i64, i64* %cloptr13491, i64 3                  ; &eptr13495[3]
  %eptr13496 = getelementptr inbounds i64, i64* %cloptr13491, i64 4                  ; &eptr13496[4]
  %eptr13497 = getelementptr inbounds i64, i64* %cloptr13491, i64 5                  ; &eptr13497[5]
  %eptr13498 = getelementptr inbounds i64, i64* %cloptr13491, i64 6                  ; &eptr13498[6]
  store i64 %X2C$head, i64* %eptr13493                                               ; *eptr13493 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13494                                                 ; *eptr13494 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13495                                               ; *eptr13495 = %cont7348
  store i64 %jg3$tmp7026, i64* %eptr13496                                            ; *eptr13496 = %jg3$tmp7026
  store i64 %vqr$ccstack, i64* %eptr13497                                            ; *eptr13497 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13498                                                ; *eptr13498 = %iRM$lst
  %eptr13492 = getelementptr inbounds i64, i64* %cloptr13491, i64 0                  ; &cloptr13491[0]
  %f13499 = ptrtoint void(i64,i64)* @lam10915 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13499, i64* %eptr13492                                                 ; store fptr
  %arg8238 = ptrtoint i64* %cloptr13491 to i64                                       ; closure cast; i64* -> i64
  %rva9704 = add i64 0, 0                                                            ; quoted ()
  %rva9703 = call i64 @prim_cons(i64 %arg8238, i64 %rva9704)                         ; call prim_cons
  %cloptr13500 = inttoptr i64 %arg8239 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13500)                                        ; assert function application
  %i0ptr13501 = getelementptr inbounds i64, i64* %cloptr13500, i64 0                 ; &cloptr13500[0]
  %f13503 = load i64, i64* %i0ptr13501, align 8                                      ; load; *i0ptr13501
  %fptr13502 = inttoptr i64 %f13503 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13502(i64 %arg8239, i64 %rva9703)                   ; tail call
  ret void
}


define void @lam10919(i64 %env10920, i64 %i6Y$lst7360) {
  %cont7359 = call i64 @prim_car(i64 %i6Y$lst7360)                                   ; call prim_car
  %i6Y$lst = call i64 @prim_cdr(i64 %i6Y$lst7360)                                    ; call prim_cdr
  %arg8243 = add i64 0, 0                                                            ; quoted ()
  %rva9666 = add i64 0, 0                                                            ; quoted ()
  %rva9665 = call i64 @prim_cons(i64 %i6Y$lst, i64 %rva9666)                         ; call prim_cons
  %rva9664 = call i64 @prim_cons(i64 %arg8243, i64 %rva9665)                         ; call prim_cons
  %cloptr13504 = inttoptr i64 %cont7359 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13504)                                        ; assert function application
  %i0ptr13505 = getelementptr inbounds i64, i64* %cloptr13504, i64 0                 ; &cloptr13504[0]
  %f13507 = load i64, i64* %i0ptr13505, align 8                                      ; load; *i0ptr13505
  %fptr13506 = inttoptr i64 %f13507 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13506(i64 %cont7359, i64 %rva9664)                  ; tail call
  ret void
}


define void @lam10915(i64 %env10916, i64 %rvp9701) {
  %envptr13508 = inttoptr i64 %env10916 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13509 = getelementptr inbounds i64, i64* %envptr13508, i64 6                ; &envptr13508[6]
  %iRM$lst = load i64, i64* %envptr13509, align 8                                    ; load; *envptr13509
  %envptr13510 = inttoptr i64 %env10916 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13511 = getelementptr inbounds i64, i64* %envptr13510, i64 5                ; &envptr13510[5]
  %vqr$ccstack = load i64, i64* %envptr13511, align 8                                ; load; *envptr13511
  %envptr13512 = inttoptr i64 %env10916 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13513 = getelementptr inbounds i64, i64* %envptr13512, i64 4                ; &envptr13512[4]
  %jg3$tmp7026 = load i64, i64* %envptr13513, align 8                                ; load; *envptr13513
  %envptr13514 = inttoptr i64 %env10916 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13515 = getelementptr inbounds i64, i64* %envptr13514, i64 3                ; &envptr13514[3]
  %cont7348 = load i64, i64* %envptr13515, align 8                                   ; load; *envptr13515
  %envptr13516 = inttoptr i64 %env10916 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13517 = getelementptr inbounds i64, i64* %envptr13516, i64 2                ; &envptr13516[2]
  %Dtx$cc = load i64, i64* %envptr13517, align 8                                     ; load; *envptr13517
  %envptr13518 = inttoptr i64 %env10916 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13519 = getelementptr inbounds i64, i64* %envptr13518, i64 1                ; &envptr13518[1]
  %X2C$head = load i64, i64* %envptr13519, align 8                                   ; load; *envptr13519
  %_957357 = call i64 @prim_car(i64 %rvp9701)                                        ; call prim_car
  %rvp9699 = call i64 @prim_cdr(i64 %rvp9701)                                        ; call prim_cdr
  %a7189 = call i64 @prim_car(i64 %rvp9699)                                          ; call prim_car
  %na9668 = call i64 @prim_cdr(i64 %rvp9699)                                         ; call prim_cdr
  %arg8246 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7358 = call i64 @prim_make_45vector(i64 %arg8246, i64 %a7189)              ; call prim_make_45vector
  %cloptr13520 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr13522 = getelementptr inbounds i64, i64* %cloptr13520, i64 1                  ; &eptr13522[1]
  %eptr13523 = getelementptr inbounds i64, i64* %cloptr13520, i64 2                  ; &eptr13523[2]
  %eptr13524 = getelementptr inbounds i64, i64* %cloptr13520, i64 3                  ; &eptr13524[3]
  %eptr13525 = getelementptr inbounds i64, i64* %cloptr13520, i64 4                  ; &eptr13525[4]
  %eptr13526 = getelementptr inbounds i64, i64* %cloptr13520, i64 5                  ; &eptr13526[5]
  %eptr13527 = getelementptr inbounds i64, i64* %cloptr13520, i64 6                  ; &eptr13527[6]
  store i64 %X2C$head, i64* %eptr13522                                               ; *eptr13522 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13523                                                 ; *eptr13523 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13524                                               ; *eptr13524 = %cont7348
  store i64 %jg3$tmp7026, i64* %eptr13525                                            ; *eptr13525 = %jg3$tmp7026
  store i64 %vqr$ccstack, i64* %eptr13526                                            ; *eptr13526 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13527                                                ; *eptr13527 = %iRM$lst
  %eptr13521 = getelementptr inbounds i64, i64* %cloptr13520, i64 0                  ; &cloptr13520[0]
  %f13528 = ptrtoint void(i64,i64)* @lam10912 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13528, i64* %eptr13521                                                 ; store fptr
  %arg8249 = ptrtoint i64* %cloptr13520 to i64                                       ; closure cast; i64* -> i64
  %arg8248 = add i64 0, 0                                                            ; quoted ()
  %rva9698 = add i64 0, 0                                                            ; quoted ()
  %rva9697 = call i64 @prim_cons(i64 %retprim7358, i64 %rva9698)                     ; call prim_cons
  %rva9696 = call i64 @prim_cons(i64 %arg8248, i64 %rva9697)                         ; call prim_cons
  %cloptr13529 = inttoptr i64 %arg8249 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13529)                                        ; assert function application
  %i0ptr13530 = getelementptr inbounds i64, i64* %cloptr13529, i64 0                 ; &cloptr13529[0]
  %f13532 = load i64, i64* %i0ptr13530, align 8                                      ; load; *i0ptr13530
  %fptr13531 = inttoptr i64 %f13532 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13531(i64 %arg8249, i64 %rva9696)                   ; tail call
  ret void
}


define void @lam10912(i64 %env10913, i64 %rvp9694) {
  %envptr13533 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13534 = getelementptr inbounds i64, i64* %envptr13533, i64 6                ; &envptr13533[6]
  %iRM$lst = load i64, i64* %envptr13534, align 8                                    ; load; *envptr13534
  %envptr13535 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13536 = getelementptr inbounds i64, i64* %envptr13535, i64 5                ; &envptr13535[5]
  %vqr$ccstack = load i64, i64* %envptr13536, align 8                                ; load; *envptr13536
  %envptr13537 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13538 = getelementptr inbounds i64, i64* %envptr13537, i64 4                ; &envptr13537[4]
  %jg3$tmp7026 = load i64, i64* %envptr13538, align 8                                ; load; *envptr13538
  %envptr13539 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13540 = getelementptr inbounds i64, i64* %envptr13539, i64 3                ; &envptr13539[3]
  %cont7348 = load i64, i64* %envptr13540, align 8                                   ; load; *envptr13540
  %envptr13541 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13542 = getelementptr inbounds i64, i64* %envptr13541, i64 2                ; &envptr13541[2]
  %Dtx$cc = load i64, i64* %envptr13542, align 8                                     ; load; *envptr13542
  %envptr13543 = inttoptr i64 %env10913 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13544 = getelementptr inbounds i64, i64* %envptr13543, i64 1                ; &envptr13543[1]
  %X2C$head = load i64, i64* %envptr13544, align 8                                   ; load; *envptr13544
  %_957352 = call i64 @prim_car(i64 %rvp9694)                                        ; call prim_car
  %rvp9692 = call i64 @prim_cdr(i64 %rvp9694)                                        ; call prim_cdr
  %yWi$tmp7025 = call i64 @prim_car(i64 %rvp9692)                                    ; call prim_car
  %na9670 = call i64 @prim_cdr(i64 %rvp9692)                                         ; call prim_cdr
  %arg8250 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7190 = call i64 @prim_vector_45ref(i64 %iRM$lst, i64 %arg8250)                   ; call prim_vector_45ref
  %a7191 = call i64 @prim_cdr(i64 %a7190)                                            ; call prim_cdr
  %arg8254 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7192 = call i64 @prim_vector_45set_33(i64 %iRM$lst, i64 %arg8254, i64 %a7191)    ; call prim_vector_45set_33
  %arg8257 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7356 = call i64 @prim_vector_45set_33(i64 %jg3$tmp7026, i64 %arg8257, i64 %a7192); call prim_vector_45set_33
  %cloptr13545 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13547 = getelementptr inbounds i64, i64* %cloptr13545, i64 1                  ; &eptr13547[1]
  %eptr13548 = getelementptr inbounds i64, i64* %cloptr13545, i64 2                  ; &eptr13548[2]
  %eptr13549 = getelementptr inbounds i64, i64* %cloptr13545, i64 3                  ; &eptr13549[3]
  %eptr13550 = getelementptr inbounds i64, i64* %cloptr13545, i64 4                  ; &eptr13550[4]
  %eptr13551 = getelementptr inbounds i64, i64* %cloptr13545, i64 5                  ; &eptr13551[5]
  store i64 %X2C$head, i64* %eptr13547                                               ; *eptr13547 = %X2C$head
  store i64 %yWi$tmp7025, i64* %eptr13548                                            ; *eptr13548 = %yWi$tmp7025
  store i64 %Dtx$cc, i64* %eptr13549                                                 ; *eptr13549 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13550                                               ; *eptr13550 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13551                                            ; *eptr13551 = %vqr$ccstack
  %eptr13546 = getelementptr inbounds i64, i64* %cloptr13545, i64 0                  ; &cloptr13545[0]
  %f13552 = ptrtoint void(i64,i64)* @lam10907 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13552, i64* %eptr13546                                                 ; store fptr
  %arg8261 = ptrtoint i64* %cloptr13545 to i64                                       ; closure cast; i64* -> i64
  %arg8260 = add i64 0, 0                                                            ; quoted ()
  %rva9691 = add i64 0, 0                                                            ; quoted ()
  %rva9690 = call i64 @prim_cons(i64 %retprim7356, i64 %rva9691)                     ; call prim_cons
  %rva9689 = call i64 @prim_cons(i64 %arg8260, i64 %rva9690)                         ; call prim_cons
  %cloptr13553 = inttoptr i64 %arg8261 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13553)                                        ; assert function application
  %i0ptr13554 = getelementptr inbounds i64, i64* %cloptr13553, i64 0                 ; &cloptr13553[0]
  %f13556 = load i64, i64* %i0ptr13554, align 8                                      ; load; *i0ptr13554
  %fptr13555 = inttoptr i64 %f13556 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13555(i64 %arg8261, i64 %rva9689)                   ; tail call
  ret void
}


define void @lam10907(i64 %env10908, i64 %rvp9687) {
  %envptr13557 = inttoptr i64 %env10908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13558 = getelementptr inbounds i64, i64* %envptr13557, i64 5                ; &envptr13557[5]
  %vqr$ccstack = load i64, i64* %envptr13558, align 8                                ; load; *envptr13558
  %envptr13559 = inttoptr i64 %env10908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13560 = getelementptr inbounds i64, i64* %envptr13559, i64 4                ; &envptr13559[4]
  %cont7348 = load i64, i64* %envptr13560, align 8                                   ; load; *envptr13560
  %envptr13561 = inttoptr i64 %env10908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13562 = getelementptr inbounds i64, i64* %envptr13561, i64 3                ; &envptr13561[3]
  %Dtx$cc = load i64, i64* %envptr13562, align 8                                     ; load; *envptr13562
  %envptr13563 = inttoptr i64 %env10908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13564 = getelementptr inbounds i64, i64* %envptr13563, i64 2                ; &envptr13563[2]
  %yWi$tmp7025 = load i64, i64* %envptr13564, align 8                                ; load; *envptr13564
  %envptr13565 = inttoptr i64 %env10908 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13566 = getelementptr inbounds i64, i64* %envptr13565, i64 1                ; &envptr13565[1]
  %X2C$head = load i64, i64* %envptr13566, align 8                                   ; load; *envptr13566
  %_957353 = call i64 @prim_car(i64 %rvp9687)                                        ; call prim_car
  %rvp9685 = call i64 @prim_cdr(i64 %rvp9687)                                        ; call prim_cdr
  %QSy$_957043 = call i64 @prim_car(i64 %rvp9685)                                    ; call prim_car
  %na9672 = call i64 @prim_cdr(i64 %rvp9685)                                         ; call prim_cdr
  %arg8262 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7193 = call i64 @prim_vector_45ref(i64 %vqr$ccstack, i64 %arg8262)               ; call prim_vector_45ref
  %a7194 = call i64 @prim_cons(i64 %Dtx$cc, i64 %a7193)                              ; call prim_cons
  %arg8267 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7195 = call i64 @prim_vector_45set_33(i64 %vqr$ccstack, i64 %arg8267, i64 %a7194); call prim_vector_45set_33
  %arg8270 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7355 = call i64 @prim_vector_45set_33(i64 %yWi$tmp7025, i64 %arg8270, i64 %a7195); call prim_vector_45set_33
  %cloptr13567 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr13569 = getelementptr inbounds i64, i64* %cloptr13567, i64 1                  ; &eptr13569[1]
  %eptr13570 = getelementptr inbounds i64, i64* %cloptr13567, i64 2                  ; &eptr13570[2]
  store i64 %X2C$head, i64* %eptr13569                                               ; *eptr13569 = %X2C$head
  store i64 %cont7348, i64* %eptr13570                                               ; *eptr13570 = %cont7348
  %eptr13568 = getelementptr inbounds i64, i64* %cloptr13567, i64 0                  ; &cloptr13567[0]
  %f13571 = ptrtoint void(i64,i64)* @lam10902 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13571, i64* %eptr13568                                                 ; store fptr
  %arg8274 = ptrtoint i64* %cloptr13567 to i64                                       ; closure cast; i64* -> i64
  %arg8273 = add i64 0, 0                                                            ; quoted ()
  %rva9684 = add i64 0, 0                                                            ; quoted ()
  %rva9683 = call i64 @prim_cons(i64 %retprim7355, i64 %rva9684)                     ; call prim_cons
  %rva9682 = call i64 @prim_cons(i64 %arg8273, i64 %rva9683)                         ; call prim_cons
  %cloptr13572 = inttoptr i64 %arg8274 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13572)                                        ; assert function application
  %i0ptr13573 = getelementptr inbounds i64, i64* %cloptr13572, i64 0                 ; &cloptr13572[0]
  %f13575 = load i64, i64* %i0ptr13573, align 8                                      ; load; *i0ptr13573
  %fptr13574 = inttoptr i64 %f13575 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13574(i64 %arg8274, i64 %rva9682)                   ; tail call
  ret void
}


define void @lam10902(i64 %env10903, i64 %rvp9680) {
  %envptr13576 = inttoptr i64 %env10903 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13577 = getelementptr inbounds i64, i64* %envptr13576, i64 2                ; &envptr13576[2]
  %cont7348 = load i64, i64* %envptr13577, align 8                                   ; load; *envptr13577
  %envptr13578 = inttoptr i64 %env10903 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13579 = getelementptr inbounds i64, i64* %envptr13578, i64 1                ; &envptr13578[1]
  %X2C$head = load i64, i64* %envptr13579, align 8                                   ; load; *envptr13579
  %_957354 = call i64 @prim_car(i64 %rvp9680)                                        ; call prim_car
  %rvp9678 = call i64 @prim_cdr(i64 %rvp9680)                                        ; call prim_cdr
  %rMH$_957044 = call i64 @prim_car(i64 %rvp9678)                                    ; call prim_car
  %na9674 = call i64 @prim_cdr(i64 %rvp9678)                                         ; call prim_cdr
  %arg8276 = add i64 0, 0                                                            ; quoted ()
  %rva9677 = add i64 0, 0                                                            ; quoted ()
  %rva9676 = call i64 @prim_cons(i64 %X2C$head, i64 %rva9677)                        ; call prim_cons
  %rva9675 = call i64 @prim_cons(i64 %arg8276, i64 %rva9676)                         ; call prim_cons
  %cloptr13580 = inttoptr i64 %cont7348 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13580)                                        ; assert function application
  %i0ptr13581 = getelementptr inbounds i64, i64* %cloptr13580, i64 0                 ; &cloptr13580[0]
  %f13583 = load i64, i64* %i0ptr13581, align 8                                      ; load; *i0ptr13581
  %fptr13582 = inttoptr i64 %f13583 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13582(i64 %cont7348, i64 %rva9675)                  ; tail call
  ret void
}


define void @lam10884(i64 %env10885, i64 %rvp9805) {
  %envptr13584 = inttoptr i64 %env10885 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13585 = getelementptr inbounds i64, i64* %envptr13584, i64 4                ; &envptr13584[4]
  %iRM$lst = load i64, i64* %envptr13585, align 8                                    ; load; *envptr13585
  %envptr13586 = inttoptr i64 %env10885 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13587 = getelementptr inbounds i64, i64* %envptr13586, i64 3                ; &envptr13586[3]
  %vqr$ccstack = load i64, i64* %envptr13587, align 8                                ; load; *envptr13587
  %envptr13588 = inttoptr i64 %env10885 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13589 = getelementptr inbounds i64, i64* %envptr13588, i64 2                ; &envptr13588[2]
  %cont7348 = load i64, i64* %envptr13589, align 8                                   ; load; *envptr13589
  %envptr13590 = inttoptr i64 %env10885 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13591 = getelementptr inbounds i64, i64* %envptr13590, i64 1                ; &envptr13590[1]
  %m0H$fail = load i64, i64* %envptr13591, align 8                                   ; load; *envptr13591
  %_957349 = call i64 @prim_car(i64 %rvp9805)                                        ; call prim_car
  %rvp9803 = call i64 @prim_cdr(i64 %rvp9805)                                        ; call prim_cdr
  %Dtx$cc = call i64 @prim_car(i64 %rvp9803)                                         ; call prim_car
  %na9730 = call i64 @prim_cdr(i64 %rvp9803)                                         ; call prim_cdr
  %arg8278 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7184 = call i64 @prim_vector_45ref(i64 %iRM$lst, i64 %arg8278)                   ; call prim_vector_45ref
  %a7185 = call i64 @prim_null_63(i64 %a7184)                                        ; call prim_null_63
  %cmp13592 = icmp eq i64 %a7185, 15                                                 ; false?
  br i1 %cmp13592, label %else13594, label %then13593                                ; if

then13593:
  %arg8281 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7186 = call i64 @prim_vector_45ref(i64 %m0H$fail, i64 %arg8281)                  ; call prim_vector_45ref
  %rva9732 = add i64 0, 0                                                            ; quoted ()
  %rva9731 = call i64 @prim_cons(i64 %cont7348, i64 %rva9732)                        ; call prim_cons
  %cloptr13595 = inttoptr i64 %a7186 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13595)                                        ; assert function application
  %i0ptr13596 = getelementptr inbounds i64, i64* %cloptr13595, i64 0                 ; &cloptr13595[0]
  %f13598 = load i64, i64* %i0ptr13596, align 8                                      ; load; *i0ptr13596
  %fptr13597 = inttoptr i64 %f13598 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13597(i64 %a7186, i64 %rva9731)                     ; tail call
  ret void

else13594:
  %arg8285 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7187 = call i64 @prim_vector_45ref(i64 %iRM$lst, i64 %arg8285)                   ; call prim_vector_45ref
  %retprim7365 = call i64 @prim_car(i64 %a7187)                                      ; call prim_car
  %cloptr13599 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13601 = getelementptr inbounds i64, i64* %cloptr13599, i64 1                  ; &eptr13601[1]
  %eptr13602 = getelementptr inbounds i64, i64* %cloptr13599, i64 2                  ; &eptr13602[2]
  %eptr13603 = getelementptr inbounds i64, i64* %cloptr13599, i64 3                  ; &eptr13603[3]
  %eptr13604 = getelementptr inbounds i64, i64* %cloptr13599, i64 4                  ; &eptr13604[4]
  store i64 %Dtx$cc, i64* %eptr13601                                                 ; *eptr13601 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13602                                               ; *eptr13602 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13603                                            ; *eptr13603 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13604                                                ; *eptr13604 = %iRM$lst
  %eptr13600 = getelementptr inbounds i64, i64* %cloptr13599, i64 0                  ; &cloptr13599[0]
  %f13605 = ptrtoint void(i64,i64)* @lam10880 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13605, i64* %eptr13600                                                 ; store fptr
  %arg8290 = ptrtoint i64* %cloptr13599 to i64                                       ; closure cast; i64* -> i64
  %arg8289 = add i64 0, 0                                                            ; quoted ()
  %rva9802 = add i64 0, 0                                                            ; quoted ()
  %rva9801 = call i64 @prim_cons(i64 %retprim7365, i64 %rva9802)                     ; call prim_cons
  %rva9800 = call i64 @prim_cons(i64 %arg8289, i64 %rva9801)                         ; call prim_cons
  %cloptr13606 = inttoptr i64 %arg8290 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13606)                                        ; assert function application
  %i0ptr13607 = getelementptr inbounds i64, i64* %cloptr13606, i64 0                 ; &cloptr13606[0]
  %f13609 = load i64, i64* %i0ptr13607, align 8                                      ; load; *i0ptr13607
  %fptr13608 = inttoptr i64 %f13609 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13608(i64 %arg8290, i64 %rva9800)                   ; tail call
  ret void
}


define void @lam10880(i64 %env10881, i64 %rvp9798) {
  %envptr13610 = inttoptr i64 %env10881 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13611 = getelementptr inbounds i64, i64* %envptr13610, i64 4                ; &envptr13610[4]
  %iRM$lst = load i64, i64* %envptr13611, align 8                                    ; load; *envptr13611
  %envptr13612 = inttoptr i64 %env10881 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13613 = getelementptr inbounds i64, i64* %envptr13612, i64 3                ; &envptr13612[3]
  %vqr$ccstack = load i64, i64* %envptr13613, align 8                                ; load; *envptr13613
  %envptr13614 = inttoptr i64 %env10881 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13615 = getelementptr inbounds i64, i64* %envptr13614, i64 2                ; &envptr13614[2]
  %cont7348 = load i64, i64* %envptr13615, align 8                                   ; load; *envptr13615
  %envptr13616 = inttoptr i64 %env10881 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13617 = getelementptr inbounds i64, i64* %envptr13616, i64 1                ; &envptr13616[1]
  %Dtx$cc = load i64, i64* %envptr13617, align 8                                     ; load; *envptr13617
  %_957350 = call i64 @prim_car(i64 %rvp9798)                                        ; call prim_car
  %rvp9796 = call i64 @prim_cdr(i64 %rvp9798)                                        ; call prim_cdr
  %X2C$head = call i64 @prim_car(i64 %rvp9796)                                       ; call prim_car
  %na9734 = call i64 @prim_cdr(i64 %rvp9796)                                         ; call prim_cdr
  %cloptr13618 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13619 = getelementptr inbounds i64, i64* %cloptr13618, i64 0                  ; &cloptr13618[0]
  %f13620 = ptrtoint void(i64,i64)* @lam10878 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13620, i64* %eptr13619                                                 ; store fptr
  %arg8292 = ptrtoint i64* %cloptr13618 to i64                                       ; closure cast; i64* -> i64
  %cloptr13621 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13623 = getelementptr inbounds i64, i64* %cloptr13621, i64 1                  ; &eptr13623[1]
  %eptr13624 = getelementptr inbounds i64, i64* %cloptr13621, i64 2                  ; &eptr13624[2]
  %eptr13625 = getelementptr inbounds i64, i64* %cloptr13621, i64 3                  ; &eptr13625[3]
  %eptr13626 = getelementptr inbounds i64, i64* %cloptr13621, i64 4                  ; &eptr13626[4]
  %eptr13627 = getelementptr inbounds i64, i64* %cloptr13621, i64 5                  ; &eptr13627[5]
  store i64 %X2C$head, i64* %eptr13623                                               ; *eptr13623 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13624                                                 ; *eptr13624 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13625                                               ; *eptr13625 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13626                                            ; *eptr13626 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13627                                                ; *eptr13627 = %iRM$lst
  %eptr13622 = getelementptr inbounds i64, i64* %cloptr13621, i64 0                  ; &cloptr13621[0]
  %f13628 = ptrtoint void(i64,i64)* @lam10874 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13628, i64* %eptr13622                                                 ; store fptr
  %arg8291 = ptrtoint i64* %cloptr13621 to i64                                       ; closure cast; i64* -> i64
  %rva9795 = add i64 0, 0                                                            ; quoted ()
  %rva9794 = call i64 @prim_cons(i64 %arg8291, i64 %rva9795)                         ; call prim_cons
  %cloptr13629 = inttoptr i64 %arg8292 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13629)                                        ; assert function application
  %i0ptr13630 = getelementptr inbounds i64, i64* %cloptr13629, i64 0                 ; &cloptr13629[0]
  %f13632 = load i64, i64* %i0ptr13630, align 8                                      ; load; *i0ptr13630
  %fptr13631 = inttoptr i64 %f13632 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13631(i64 %arg8292, i64 %rva9794)                   ; tail call
  ret void
}


define void @lam10878(i64 %env10879, i64 %v1X$lst7364) {
  %cont7363 = call i64 @prim_car(i64 %v1X$lst7364)                                   ; call prim_car
  %v1X$lst = call i64 @prim_cdr(i64 %v1X$lst7364)                                    ; call prim_cdr
  %arg8296 = add i64 0, 0                                                            ; quoted ()
  %rva9737 = add i64 0, 0                                                            ; quoted ()
  %rva9736 = call i64 @prim_cons(i64 %v1X$lst, i64 %rva9737)                         ; call prim_cons
  %rva9735 = call i64 @prim_cons(i64 %arg8296, i64 %rva9736)                         ; call prim_cons
  %cloptr13633 = inttoptr i64 %cont7363 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13633)                                        ; assert function application
  %i0ptr13634 = getelementptr inbounds i64, i64* %cloptr13633, i64 0                 ; &cloptr13633[0]
  %f13636 = load i64, i64* %i0ptr13634, align 8                                      ; load; *i0ptr13634
  %fptr13635 = inttoptr i64 %f13636 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13635(i64 %cont7363, i64 %rva9735)                  ; tail call
  ret void
}


define void @lam10874(i64 %env10875, i64 %rvp9792) {
  %envptr13637 = inttoptr i64 %env10875 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13638 = getelementptr inbounds i64, i64* %envptr13637, i64 5                ; &envptr13637[5]
  %iRM$lst = load i64, i64* %envptr13638, align 8                                    ; load; *envptr13638
  %envptr13639 = inttoptr i64 %env10875 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13640 = getelementptr inbounds i64, i64* %envptr13639, i64 4                ; &envptr13639[4]
  %vqr$ccstack = load i64, i64* %envptr13640, align 8                                ; load; *envptr13640
  %envptr13641 = inttoptr i64 %env10875 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13642 = getelementptr inbounds i64, i64* %envptr13641, i64 3                ; &envptr13641[3]
  %cont7348 = load i64, i64* %envptr13642, align 8                                   ; load; *envptr13642
  %envptr13643 = inttoptr i64 %env10875 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13644 = getelementptr inbounds i64, i64* %envptr13643, i64 2                ; &envptr13643[2]
  %Dtx$cc = load i64, i64* %envptr13644, align 8                                     ; load; *envptr13644
  %envptr13645 = inttoptr i64 %env10875 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13646 = getelementptr inbounds i64, i64* %envptr13645, i64 1                ; &envptr13645[1]
  %X2C$head = load i64, i64* %envptr13646, align 8                                   ; load; *envptr13646
  %_957361 = call i64 @prim_car(i64 %rvp9792)                                        ; call prim_car
  %rvp9790 = call i64 @prim_cdr(i64 %rvp9792)                                        ; call prim_cdr
  %a7188 = call i64 @prim_car(i64 %rvp9790)                                          ; call prim_car
  %na9739 = call i64 @prim_cdr(i64 %rvp9790)                                         ; call prim_cdr
  %arg8299 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7362 = call i64 @prim_make_45vector(i64 %arg8299, i64 %a7188)              ; call prim_make_45vector
  %cloptr13647 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13649 = getelementptr inbounds i64, i64* %cloptr13647, i64 1                  ; &eptr13649[1]
  %eptr13650 = getelementptr inbounds i64, i64* %cloptr13647, i64 2                  ; &eptr13650[2]
  %eptr13651 = getelementptr inbounds i64, i64* %cloptr13647, i64 3                  ; &eptr13651[3]
  %eptr13652 = getelementptr inbounds i64, i64* %cloptr13647, i64 4                  ; &eptr13652[4]
  %eptr13653 = getelementptr inbounds i64, i64* %cloptr13647, i64 5                  ; &eptr13653[5]
  store i64 %X2C$head, i64* %eptr13649                                               ; *eptr13649 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13650                                                 ; *eptr13650 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13651                                               ; *eptr13651 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13652                                            ; *eptr13652 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13653                                                ; *eptr13653 = %iRM$lst
  %eptr13648 = getelementptr inbounds i64, i64* %cloptr13647, i64 0                  ; &cloptr13647[0]
  %f13654 = ptrtoint void(i64,i64)* @lam10871 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13654, i64* %eptr13648                                                 ; store fptr
  %arg8302 = ptrtoint i64* %cloptr13647 to i64                                       ; closure cast; i64* -> i64
  %arg8301 = add i64 0, 0                                                            ; quoted ()
  %rva9789 = add i64 0, 0                                                            ; quoted ()
  %rva9788 = call i64 @prim_cons(i64 %retprim7362, i64 %rva9789)                     ; call prim_cons
  %rva9787 = call i64 @prim_cons(i64 %arg8301, i64 %rva9788)                         ; call prim_cons
  %cloptr13655 = inttoptr i64 %arg8302 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13655)                                        ; assert function application
  %i0ptr13656 = getelementptr inbounds i64, i64* %cloptr13655, i64 0                 ; &cloptr13655[0]
  %f13658 = load i64, i64* %i0ptr13656, align 8                                      ; load; *i0ptr13656
  %fptr13657 = inttoptr i64 %f13658 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13657(i64 %arg8302, i64 %rva9787)                   ; tail call
  ret void
}


define void @lam10871(i64 %env10872, i64 %rvp9785) {
  %envptr13659 = inttoptr i64 %env10872 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13660 = getelementptr inbounds i64, i64* %envptr13659, i64 5                ; &envptr13659[5]
  %iRM$lst = load i64, i64* %envptr13660, align 8                                    ; load; *envptr13660
  %envptr13661 = inttoptr i64 %env10872 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13662 = getelementptr inbounds i64, i64* %envptr13661, i64 4                ; &envptr13661[4]
  %vqr$ccstack = load i64, i64* %envptr13662, align 8                                ; load; *envptr13662
  %envptr13663 = inttoptr i64 %env10872 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13664 = getelementptr inbounds i64, i64* %envptr13663, i64 3                ; &envptr13663[3]
  %cont7348 = load i64, i64* %envptr13664, align 8                                   ; load; *envptr13664
  %envptr13665 = inttoptr i64 %env10872 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13666 = getelementptr inbounds i64, i64* %envptr13665, i64 2                ; &envptr13665[2]
  %Dtx$cc = load i64, i64* %envptr13666, align 8                                     ; load; *envptr13666
  %envptr13667 = inttoptr i64 %env10872 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13668 = getelementptr inbounds i64, i64* %envptr13667, i64 1                ; &envptr13667[1]
  %X2C$head = load i64, i64* %envptr13668, align 8                                   ; load; *envptr13668
  %_957351 = call i64 @prim_car(i64 %rvp9785)                                        ; call prim_car
  %rvp9783 = call i64 @prim_cdr(i64 %rvp9785)                                        ; call prim_cdr
  %jg3$tmp7026 = call i64 @prim_car(i64 %rvp9783)                                    ; call prim_car
  %na9741 = call i64 @prim_cdr(i64 %rvp9783)                                         ; call prim_cdr
  %cloptr13669 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13670 = getelementptr inbounds i64, i64* %cloptr13669, i64 0                  ; &cloptr13669[0]
  %f13671 = ptrtoint void(i64,i64)* @lam10869 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13671, i64* %eptr13670                                                 ; store fptr
  %arg8304 = ptrtoint i64* %cloptr13669 to i64                                       ; closure cast; i64* -> i64
  %cloptr13672 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr13674 = getelementptr inbounds i64, i64* %cloptr13672, i64 1                  ; &eptr13674[1]
  %eptr13675 = getelementptr inbounds i64, i64* %cloptr13672, i64 2                  ; &eptr13675[2]
  %eptr13676 = getelementptr inbounds i64, i64* %cloptr13672, i64 3                  ; &eptr13676[3]
  %eptr13677 = getelementptr inbounds i64, i64* %cloptr13672, i64 4                  ; &eptr13677[4]
  %eptr13678 = getelementptr inbounds i64, i64* %cloptr13672, i64 5                  ; &eptr13678[5]
  %eptr13679 = getelementptr inbounds i64, i64* %cloptr13672, i64 6                  ; &eptr13679[6]
  store i64 %X2C$head, i64* %eptr13674                                               ; *eptr13674 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13675                                                 ; *eptr13675 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13676                                               ; *eptr13676 = %cont7348
  store i64 %jg3$tmp7026, i64* %eptr13677                                            ; *eptr13677 = %jg3$tmp7026
  store i64 %vqr$ccstack, i64* %eptr13678                                            ; *eptr13678 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13679                                                ; *eptr13679 = %iRM$lst
  %eptr13673 = getelementptr inbounds i64, i64* %cloptr13672, i64 0                  ; &cloptr13672[0]
  %f13680 = ptrtoint void(i64,i64)* @lam10865 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13680, i64* %eptr13673                                                 ; store fptr
  %arg8303 = ptrtoint i64* %cloptr13672 to i64                                       ; closure cast; i64* -> i64
  %rva9782 = add i64 0, 0                                                            ; quoted ()
  %rva9781 = call i64 @prim_cons(i64 %arg8303, i64 %rva9782)                         ; call prim_cons
  %cloptr13681 = inttoptr i64 %arg8304 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13681)                                        ; assert function application
  %i0ptr13682 = getelementptr inbounds i64, i64* %cloptr13681, i64 0                 ; &cloptr13681[0]
  %f13684 = load i64, i64* %i0ptr13682, align 8                                      ; load; *i0ptr13682
  %fptr13683 = inttoptr i64 %f13684 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13683(i64 %arg8304, i64 %rva9781)                   ; tail call
  ret void
}


define void @lam10869(i64 %env10870, i64 %i6Y$lst7360) {
  %cont7359 = call i64 @prim_car(i64 %i6Y$lst7360)                                   ; call prim_car
  %i6Y$lst = call i64 @prim_cdr(i64 %i6Y$lst7360)                                    ; call prim_cdr
  %arg8308 = add i64 0, 0                                                            ; quoted ()
  %rva9744 = add i64 0, 0                                                            ; quoted ()
  %rva9743 = call i64 @prim_cons(i64 %i6Y$lst, i64 %rva9744)                         ; call prim_cons
  %rva9742 = call i64 @prim_cons(i64 %arg8308, i64 %rva9743)                         ; call prim_cons
  %cloptr13685 = inttoptr i64 %cont7359 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13685)                                        ; assert function application
  %i0ptr13686 = getelementptr inbounds i64, i64* %cloptr13685, i64 0                 ; &cloptr13685[0]
  %f13688 = load i64, i64* %i0ptr13686, align 8                                      ; load; *i0ptr13686
  %fptr13687 = inttoptr i64 %f13688 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13687(i64 %cont7359, i64 %rva9742)                  ; tail call
  ret void
}


define void @lam10865(i64 %env10866, i64 %rvp9779) {
  %envptr13689 = inttoptr i64 %env10866 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13690 = getelementptr inbounds i64, i64* %envptr13689, i64 6                ; &envptr13689[6]
  %iRM$lst = load i64, i64* %envptr13690, align 8                                    ; load; *envptr13690
  %envptr13691 = inttoptr i64 %env10866 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13692 = getelementptr inbounds i64, i64* %envptr13691, i64 5                ; &envptr13691[5]
  %vqr$ccstack = load i64, i64* %envptr13692, align 8                                ; load; *envptr13692
  %envptr13693 = inttoptr i64 %env10866 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13694 = getelementptr inbounds i64, i64* %envptr13693, i64 4                ; &envptr13693[4]
  %jg3$tmp7026 = load i64, i64* %envptr13694, align 8                                ; load; *envptr13694
  %envptr13695 = inttoptr i64 %env10866 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13696 = getelementptr inbounds i64, i64* %envptr13695, i64 3                ; &envptr13695[3]
  %cont7348 = load i64, i64* %envptr13696, align 8                                   ; load; *envptr13696
  %envptr13697 = inttoptr i64 %env10866 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13698 = getelementptr inbounds i64, i64* %envptr13697, i64 2                ; &envptr13697[2]
  %Dtx$cc = load i64, i64* %envptr13698, align 8                                     ; load; *envptr13698
  %envptr13699 = inttoptr i64 %env10866 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13700 = getelementptr inbounds i64, i64* %envptr13699, i64 1                ; &envptr13699[1]
  %X2C$head = load i64, i64* %envptr13700, align 8                                   ; load; *envptr13700
  %_957357 = call i64 @prim_car(i64 %rvp9779)                                        ; call prim_car
  %rvp9777 = call i64 @prim_cdr(i64 %rvp9779)                                        ; call prim_cdr
  %a7189 = call i64 @prim_car(i64 %rvp9777)                                          ; call prim_car
  %na9746 = call i64 @prim_cdr(i64 %rvp9777)                                         ; call prim_cdr
  %arg8311 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7358 = call i64 @prim_make_45vector(i64 %arg8311, i64 %a7189)              ; call prim_make_45vector
  %cloptr13701 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr13703 = getelementptr inbounds i64, i64* %cloptr13701, i64 1                  ; &eptr13703[1]
  %eptr13704 = getelementptr inbounds i64, i64* %cloptr13701, i64 2                  ; &eptr13704[2]
  %eptr13705 = getelementptr inbounds i64, i64* %cloptr13701, i64 3                  ; &eptr13705[3]
  %eptr13706 = getelementptr inbounds i64, i64* %cloptr13701, i64 4                  ; &eptr13706[4]
  %eptr13707 = getelementptr inbounds i64, i64* %cloptr13701, i64 5                  ; &eptr13707[5]
  %eptr13708 = getelementptr inbounds i64, i64* %cloptr13701, i64 6                  ; &eptr13708[6]
  store i64 %X2C$head, i64* %eptr13703                                               ; *eptr13703 = %X2C$head
  store i64 %Dtx$cc, i64* %eptr13704                                                 ; *eptr13704 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13705                                               ; *eptr13705 = %cont7348
  store i64 %jg3$tmp7026, i64* %eptr13706                                            ; *eptr13706 = %jg3$tmp7026
  store i64 %vqr$ccstack, i64* %eptr13707                                            ; *eptr13707 = %vqr$ccstack
  store i64 %iRM$lst, i64* %eptr13708                                                ; *eptr13708 = %iRM$lst
  %eptr13702 = getelementptr inbounds i64, i64* %cloptr13701, i64 0                  ; &cloptr13701[0]
  %f13709 = ptrtoint void(i64,i64)* @lam10862 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13709, i64* %eptr13702                                                 ; store fptr
  %arg8314 = ptrtoint i64* %cloptr13701 to i64                                       ; closure cast; i64* -> i64
  %arg8313 = add i64 0, 0                                                            ; quoted ()
  %rva9776 = add i64 0, 0                                                            ; quoted ()
  %rva9775 = call i64 @prim_cons(i64 %retprim7358, i64 %rva9776)                     ; call prim_cons
  %rva9774 = call i64 @prim_cons(i64 %arg8313, i64 %rva9775)                         ; call prim_cons
  %cloptr13710 = inttoptr i64 %arg8314 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13710)                                        ; assert function application
  %i0ptr13711 = getelementptr inbounds i64, i64* %cloptr13710, i64 0                 ; &cloptr13710[0]
  %f13713 = load i64, i64* %i0ptr13711, align 8                                      ; load; *i0ptr13711
  %fptr13712 = inttoptr i64 %f13713 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13712(i64 %arg8314, i64 %rva9774)                   ; tail call
  ret void
}


define void @lam10862(i64 %env10863, i64 %rvp9772) {
  %envptr13714 = inttoptr i64 %env10863 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13715 = getelementptr inbounds i64, i64* %envptr13714, i64 6                ; &envptr13714[6]
  %iRM$lst = load i64, i64* %envptr13715, align 8                                    ; load; *envptr13715
  %envptr13716 = inttoptr i64 %env10863 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13717 = getelementptr inbounds i64, i64* %envptr13716, i64 5                ; &envptr13716[5]
  %vqr$ccstack = load i64, i64* %envptr13717, align 8                                ; load; *envptr13717
  %envptr13718 = inttoptr i64 %env10863 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13719 = getelementptr inbounds i64, i64* %envptr13718, i64 4                ; &envptr13718[4]
  %jg3$tmp7026 = load i64, i64* %envptr13719, align 8                                ; load; *envptr13719
  %envptr13720 = inttoptr i64 %env10863 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13721 = getelementptr inbounds i64, i64* %envptr13720, i64 3                ; &envptr13720[3]
  %cont7348 = load i64, i64* %envptr13721, align 8                                   ; load; *envptr13721
  %envptr13722 = inttoptr i64 %env10863 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13723 = getelementptr inbounds i64, i64* %envptr13722, i64 2                ; &envptr13722[2]
  %Dtx$cc = load i64, i64* %envptr13723, align 8                                     ; load; *envptr13723
  %envptr13724 = inttoptr i64 %env10863 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13725 = getelementptr inbounds i64, i64* %envptr13724, i64 1                ; &envptr13724[1]
  %X2C$head = load i64, i64* %envptr13725, align 8                                   ; load; *envptr13725
  %_957352 = call i64 @prim_car(i64 %rvp9772)                                        ; call prim_car
  %rvp9770 = call i64 @prim_cdr(i64 %rvp9772)                                        ; call prim_cdr
  %yWi$tmp7025 = call i64 @prim_car(i64 %rvp9770)                                    ; call prim_car
  %na9748 = call i64 @prim_cdr(i64 %rvp9770)                                         ; call prim_cdr
  %arg8315 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7190 = call i64 @prim_vector_45ref(i64 %iRM$lst, i64 %arg8315)                   ; call prim_vector_45ref
  %a7191 = call i64 @prim_cdr(i64 %a7190)                                            ; call prim_cdr
  %arg8319 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7192 = call i64 @prim_vector_45set_33(i64 %iRM$lst, i64 %arg8319, i64 %a7191)    ; call prim_vector_45set_33
  %arg8322 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7356 = call i64 @prim_vector_45set_33(i64 %jg3$tmp7026, i64 %arg8322, i64 %a7192); call prim_vector_45set_33
  %cloptr13726 = call i64* @alloc(i64 48)                                            ; malloc
  %eptr13728 = getelementptr inbounds i64, i64* %cloptr13726, i64 1                  ; &eptr13728[1]
  %eptr13729 = getelementptr inbounds i64, i64* %cloptr13726, i64 2                  ; &eptr13729[2]
  %eptr13730 = getelementptr inbounds i64, i64* %cloptr13726, i64 3                  ; &eptr13730[3]
  %eptr13731 = getelementptr inbounds i64, i64* %cloptr13726, i64 4                  ; &eptr13731[4]
  %eptr13732 = getelementptr inbounds i64, i64* %cloptr13726, i64 5                  ; &eptr13732[5]
  store i64 %X2C$head, i64* %eptr13728                                               ; *eptr13728 = %X2C$head
  store i64 %yWi$tmp7025, i64* %eptr13729                                            ; *eptr13729 = %yWi$tmp7025
  store i64 %Dtx$cc, i64* %eptr13730                                                 ; *eptr13730 = %Dtx$cc
  store i64 %cont7348, i64* %eptr13731                                               ; *eptr13731 = %cont7348
  store i64 %vqr$ccstack, i64* %eptr13732                                            ; *eptr13732 = %vqr$ccstack
  %eptr13727 = getelementptr inbounds i64, i64* %cloptr13726, i64 0                  ; &cloptr13726[0]
  %f13733 = ptrtoint void(i64,i64)* @lam10857 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13733, i64* %eptr13727                                                 ; store fptr
  %arg8326 = ptrtoint i64* %cloptr13726 to i64                                       ; closure cast; i64* -> i64
  %arg8325 = add i64 0, 0                                                            ; quoted ()
  %rva9769 = add i64 0, 0                                                            ; quoted ()
  %rva9768 = call i64 @prim_cons(i64 %retprim7356, i64 %rva9769)                     ; call prim_cons
  %rva9767 = call i64 @prim_cons(i64 %arg8325, i64 %rva9768)                         ; call prim_cons
  %cloptr13734 = inttoptr i64 %arg8326 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13734)                                        ; assert function application
  %i0ptr13735 = getelementptr inbounds i64, i64* %cloptr13734, i64 0                 ; &cloptr13734[0]
  %f13737 = load i64, i64* %i0ptr13735, align 8                                      ; load; *i0ptr13735
  %fptr13736 = inttoptr i64 %f13737 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13736(i64 %arg8326, i64 %rva9767)                   ; tail call
  ret void
}


define void @lam10857(i64 %env10858, i64 %rvp9765) {
  %envptr13738 = inttoptr i64 %env10858 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13739 = getelementptr inbounds i64, i64* %envptr13738, i64 5                ; &envptr13738[5]
  %vqr$ccstack = load i64, i64* %envptr13739, align 8                                ; load; *envptr13739
  %envptr13740 = inttoptr i64 %env10858 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13741 = getelementptr inbounds i64, i64* %envptr13740, i64 4                ; &envptr13740[4]
  %cont7348 = load i64, i64* %envptr13741, align 8                                   ; load; *envptr13741
  %envptr13742 = inttoptr i64 %env10858 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13743 = getelementptr inbounds i64, i64* %envptr13742, i64 3                ; &envptr13742[3]
  %Dtx$cc = load i64, i64* %envptr13743, align 8                                     ; load; *envptr13743
  %envptr13744 = inttoptr i64 %env10858 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13745 = getelementptr inbounds i64, i64* %envptr13744, i64 2                ; &envptr13744[2]
  %yWi$tmp7025 = load i64, i64* %envptr13745, align 8                                ; load; *envptr13745
  %envptr13746 = inttoptr i64 %env10858 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13747 = getelementptr inbounds i64, i64* %envptr13746, i64 1                ; &envptr13746[1]
  %X2C$head = load i64, i64* %envptr13747, align 8                                   ; load; *envptr13747
  %_957353 = call i64 @prim_car(i64 %rvp9765)                                        ; call prim_car
  %rvp9763 = call i64 @prim_cdr(i64 %rvp9765)                                        ; call prim_cdr
  %QSy$_957043 = call i64 @prim_car(i64 %rvp9763)                                    ; call prim_car
  %na9750 = call i64 @prim_cdr(i64 %rvp9763)                                         ; call prim_cdr
  %arg8327 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7193 = call i64 @prim_vector_45ref(i64 %vqr$ccstack, i64 %arg8327)               ; call prim_vector_45ref
  %a7194 = call i64 @prim_cons(i64 %Dtx$cc, i64 %a7193)                              ; call prim_cons
  %arg8332 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7195 = call i64 @prim_vector_45set_33(i64 %vqr$ccstack, i64 %arg8332, i64 %a7194); call prim_vector_45set_33
  %arg8335 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7355 = call i64 @prim_vector_45set_33(i64 %yWi$tmp7025, i64 %arg8335, i64 %a7195); call prim_vector_45set_33
  %cloptr13748 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr13750 = getelementptr inbounds i64, i64* %cloptr13748, i64 1                  ; &eptr13750[1]
  %eptr13751 = getelementptr inbounds i64, i64* %cloptr13748, i64 2                  ; &eptr13751[2]
  store i64 %X2C$head, i64* %eptr13750                                               ; *eptr13750 = %X2C$head
  store i64 %cont7348, i64* %eptr13751                                               ; *eptr13751 = %cont7348
  %eptr13749 = getelementptr inbounds i64, i64* %cloptr13748, i64 0                  ; &cloptr13748[0]
  %f13752 = ptrtoint void(i64,i64)* @lam10852 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13752, i64* %eptr13749                                                 ; store fptr
  %arg8339 = ptrtoint i64* %cloptr13748 to i64                                       ; closure cast; i64* -> i64
  %arg8338 = add i64 0, 0                                                            ; quoted ()
  %rva9762 = add i64 0, 0                                                            ; quoted ()
  %rva9761 = call i64 @prim_cons(i64 %retprim7355, i64 %rva9762)                     ; call prim_cons
  %rva9760 = call i64 @prim_cons(i64 %arg8338, i64 %rva9761)                         ; call prim_cons
  %cloptr13753 = inttoptr i64 %arg8339 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13753)                                        ; assert function application
  %i0ptr13754 = getelementptr inbounds i64, i64* %cloptr13753, i64 0                 ; &cloptr13753[0]
  %f13756 = load i64, i64* %i0ptr13754, align 8                                      ; load; *i0ptr13754
  %fptr13755 = inttoptr i64 %f13756 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13755(i64 %arg8339, i64 %rva9760)                   ; tail call
  ret void
}


define void @lam10852(i64 %env10853, i64 %rvp9758) {
  %envptr13757 = inttoptr i64 %env10853 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13758 = getelementptr inbounds i64, i64* %envptr13757, i64 2                ; &envptr13757[2]
  %cont7348 = load i64, i64* %envptr13758, align 8                                   ; load; *envptr13758
  %envptr13759 = inttoptr i64 %env10853 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13760 = getelementptr inbounds i64, i64* %envptr13759, i64 1                ; &envptr13759[1]
  %X2C$head = load i64, i64* %envptr13760, align 8                                   ; load; *envptr13760
  %_957354 = call i64 @prim_car(i64 %rvp9758)                                        ; call prim_car
  %rvp9756 = call i64 @prim_cdr(i64 %rvp9758)                                        ; call prim_cdr
  %rMH$_957044 = call i64 @prim_car(i64 %rvp9756)                                    ; call prim_car
  %na9752 = call i64 @prim_cdr(i64 %rvp9756)                                         ; call prim_cdr
  %arg8341 = add i64 0, 0                                                            ; quoted ()
  %rva9755 = add i64 0, 0                                                            ; quoted ()
  %rva9754 = call i64 @prim_cons(i64 %X2C$head, i64 %rva9755)                        ; call prim_cons
  %rva9753 = call i64 @prim_cons(i64 %arg8341, i64 %rva9754)                         ; call prim_cons
  %cloptr13761 = inttoptr i64 %cont7348 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13761)                                        ; assert function application
  %i0ptr13762 = getelementptr inbounds i64, i64* %cloptr13761, i64 0                 ; &cloptr13761[0]
  %f13764 = load i64, i64* %i0ptr13762, align 8                                      ; load; *i0ptr13762
  %fptr13763 = inttoptr i64 %f13764 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13763(i64 %cont7348, i64 %rva9753)                  ; tail call
  ret void
}


define void @lam10828(i64 %env10829, i64 %Aon$lst7395) {
  %cont7394 = call i64 @prim_car(i64 %Aon$lst7395)                                   ; call prim_car
  %Aon$lst = call i64 @prim_cdr(i64 %Aon$lst7395)                                    ; call prim_cdr
  %arg8362 = add i64 0, 0                                                            ; quoted ()
  %rva9816 = add i64 0, 0                                                            ; quoted ()
  %rva9815 = call i64 @prim_cons(i64 %Aon$lst, i64 %rva9816)                         ; call prim_cons
  %rva9814 = call i64 @prim_cons(i64 %arg8362, i64 %rva9815)                         ; call prim_cons
  %cloptr13765 = inttoptr i64 %cont7394 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13765)                                        ; assert function application
  %i0ptr13766 = getelementptr inbounds i64, i64* %cloptr13765, i64 0                 ; &cloptr13765[0]
  %f13768 = load i64, i64* %i0ptr13766, align 8                                      ; load; *i0ptr13766
  %fptr13767 = inttoptr i64 %f13768 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13767(i64 %cont7394, i64 %rva9814)                  ; tail call
  ret void
}


define void @lam10824(i64 %env10825, i64 %rvp9930) {
  %envptr13769 = inttoptr i64 %env10825 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13770 = getelementptr inbounds i64, i64* %envptr13769, i64 3                ; &envptr13769[3]
  %a7196 = load i64, i64* %envptr13770, align 8                                      ; load; *envptr13770
  %envptr13771 = inttoptr i64 %env10825 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13772 = getelementptr inbounds i64, i64* %envptr13771, i64 2                ; &envptr13771[2]
  %FmR$assert = load i64, i64* %envptr13772, align 8                                 ; load; *envptr13772
  %envptr13773 = inttoptr i64 %env10825 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13774 = getelementptr inbounds i64, i64* %envptr13773, i64 1                ; &envptr13773[1]
  %QJM$amb = load i64, i64* %envptr13774, align 8                                    ; load; *envptr13774
  %_957393 = call i64 @prim_car(i64 %rvp9930)                                        ; call prim_car
  %rvp9928 = call i64 @prim_cdr(i64 %rvp9930)                                        ; call prim_cdr
  %a7197 = call i64 @prim_car(i64 %rvp9928)                                          ; call prim_car
  %na9818 = call i64 @prim_cdr(i64 %rvp9928)                                         ; call prim_cdr
  %arg8365 = call i64 @const_init_int(i64 5)                                         ; quoted int
  %a7198 = call i64 @prim_cons(i64 %arg8365, i64 %a7197)                             ; call prim_cons
  %arg8367 = call i64 @const_init_int(i64 4)                                         ; quoted int
  %a7199 = call i64 @prim_cons(i64 %arg8367, i64 %a7198)                             ; call prim_cons
  %arg8369 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %a7200 = call i64 @prim_cons(i64 %arg8369, i64 %a7199)                             ; call prim_cons
  %arg8371 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7201 = call i64 @prim_cons(i64 %arg8371, i64 %a7200)                             ; call prim_cons
  %cloptr13775 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr13777 = getelementptr inbounds i64, i64* %cloptr13775, i64 1                  ; &eptr13777[1]
  %eptr13778 = getelementptr inbounds i64, i64* %cloptr13775, i64 2                  ; &eptr13778[2]
  store i64 %QJM$amb, i64* %eptr13777                                                ; *eptr13777 = %QJM$amb
  store i64 %FmR$assert, i64* %eptr13778                                             ; *eptr13778 = %FmR$assert
  %eptr13776 = getelementptr inbounds i64, i64* %cloptr13775, i64 0                  ; &cloptr13775[0]
  %f13779 = ptrtoint void(i64,i64)* @lam10818 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13779, i64* %eptr13776                                                 ; store fptr
  %arg8373 = ptrtoint i64* %cloptr13775 to i64                                       ; closure cast; i64* -> i64
  %rva9927 = add i64 0, 0                                                            ; quoted ()
  %rva9926 = call i64 @prim_cons(i64 %a7201, i64 %rva9927)                           ; call prim_cons
  %rva9925 = call i64 @prim_cons(i64 %arg8373, i64 %rva9926)                         ; call prim_cons
  %cloptr13780 = inttoptr i64 %a7196 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13780)                                        ; assert function application
  %i0ptr13781 = getelementptr inbounds i64, i64* %cloptr13780, i64 0                 ; &cloptr13780[0]
  %f13783 = load i64, i64* %i0ptr13781, align 8                                      ; load; *i0ptr13781
  %fptr13782 = inttoptr i64 %f13783 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13782(i64 %a7196, i64 %rva9925)                     ; tail call
  ret void
}


define void @lam10818(i64 %env10819, i64 %rvp9923) {
  %envptr13784 = inttoptr i64 %env10819 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13785 = getelementptr inbounds i64, i64* %envptr13784, i64 2                ; &envptr13784[2]
  %FmR$assert = load i64, i64* %envptr13785, align 8                                 ; load; *envptr13785
  %envptr13786 = inttoptr i64 %env10819 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13787 = getelementptr inbounds i64, i64* %envptr13786, i64 1                ; &envptr13786[1]
  %QJM$amb = load i64, i64* %envptr13787, align 8                                    ; load; *envptr13787
  %_957372 = call i64 @prim_car(i64 %rvp9923)                                        ; call prim_car
  %rvp9921 = call i64 @prim_cdr(i64 %rvp9923)                                        ; call prim_cdr
  %EWS$a = call i64 @prim_car(i64 %rvp9921)                                          ; call prim_car
  %na9820 = call i64 @prim_cdr(i64 %rvp9921)                                         ; call prim_cdr
  %arg8375 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7202 = call i64 @prim_vector_45ref(i64 %QJM$amb, i64 %arg8375)                   ; call prim_vector_45ref
  %cloptr13788 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13789 = getelementptr inbounds i64, i64* %cloptr13788, i64 0                  ; &cloptr13788[0]
  %f13790 = ptrtoint void(i64,i64)* @lam10815 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13790, i64* %eptr13789                                                 ; store fptr
  %arg8378 = ptrtoint i64* %cloptr13788 to i64                                       ; closure cast; i64* -> i64
  %cloptr13791 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13793 = getelementptr inbounds i64, i64* %cloptr13791, i64 1                  ; &eptr13793[1]
  %eptr13794 = getelementptr inbounds i64, i64* %cloptr13791, i64 2                  ; &eptr13794[2]
  %eptr13795 = getelementptr inbounds i64, i64* %cloptr13791, i64 3                  ; &eptr13795[3]
  %eptr13796 = getelementptr inbounds i64, i64* %cloptr13791, i64 4                  ; &eptr13796[4]
  store i64 %QJM$amb, i64* %eptr13793                                                ; *eptr13793 = %QJM$amb
  store i64 %FmR$assert, i64* %eptr13794                                             ; *eptr13794 = %FmR$assert
  store i64 %EWS$a, i64* %eptr13795                                                  ; *eptr13795 = %EWS$a
  store i64 %a7202, i64* %eptr13796                                                  ; *eptr13796 = %a7202
  %eptr13792 = getelementptr inbounds i64, i64* %cloptr13791, i64 0                  ; &cloptr13791[0]
  %f13797 = ptrtoint void(i64,i64)* @lam10811 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13797, i64* %eptr13792                                                 ; store fptr
  %arg8377 = ptrtoint i64* %cloptr13791 to i64                                       ; closure cast; i64* -> i64
  %rva9920 = add i64 0, 0                                                            ; quoted ()
  %rva9919 = call i64 @prim_cons(i64 %arg8377, i64 %rva9920)                         ; call prim_cons
  %cloptr13798 = inttoptr i64 %arg8378 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13798)                                        ; assert function application
  %i0ptr13799 = getelementptr inbounds i64, i64* %cloptr13798, i64 0                 ; &cloptr13798[0]
  %f13801 = load i64, i64* %i0ptr13799, align 8                                      ; load; *i0ptr13799
  %fptr13800 = inttoptr i64 %f13801 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13800(i64 %arg8378, i64 %rva9919)                   ; tail call
  ret void
}


define void @lam10815(i64 %env10816, i64 %aGY$lst7392) {
  %cont7391 = call i64 @prim_car(i64 %aGY$lst7392)                                   ; call prim_car
  %aGY$lst = call i64 @prim_cdr(i64 %aGY$lst7392)                                    ; call prim_cdr
  %arg8382 = add i64 0, 0                                                            ; quoted ()
  %rva9823 = add i64 0, 0                                                            ; quoted ()
  %rva9822 = call i64 @prim_cons(i64 %aGY$lst, i64 %rva9823)                         ; call prim_cons
  %rva9821 = call i64 @prim_cons(i64 %arg8382, i64 %rva9822)                         ; call prim_cons
  %cloptr13802 = inttoptr i64 %cont7391 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13802)                                        ; assert function application
  %i0ptr13803 = getelementptr inbounds i64, i64* %cloptr13802, i64 0                 ; &cloptr13802[0]
  %f13805 = load i64, i64* %i0ptr13803, align 8                                      ; load; *i0ptr13803
  %fptr13804 = inttoptr i64 %f13805 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13804(i64 %cont7391, i64 %rva9821)                  ; tail call
  ret void
}


define void @lam10811(i64 %env10812, i64 %rvp9917) {
  %envptr13806 = inttoptr i64 %env10812 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13807 = getelementptr inbounds i64, i64* %envptr13806, i64 4                ; &envptr13806[4]
  %a7202 = load i64, i64* %envptr13807, align 8                                      ; load; *envptr13807
  %envptr13808 = inttoptr i64 %env10812 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13809 = getelementptr inbounds i64, i64* %envptr13808, i64 3                ; &envptr13808[3]
  %EWS$a = load i64, i64* %envptr13809, align 8                                      ; load; *envptr13809
  %envptr13810 = inttoptr i64 %env10812 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13811 = getelementptr inbounds i64, i64* %envptr13810, i64 2                ; &envptr13810[2]
  %FmR$assert = load i64, i64* %envptr13811, align 8                                 ; load; *envptr13811
  %envptr13812 = inttoptr i64 %env10812 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13813 = getelementptr inbounds i64, i64* %envptr13812, i64 1                ; &envptr13812[1]
  %QJM$amb = load i64, i64* %envptr13813, align 8                                    ; load; *envptr13813
  %_957390 = call i64 @prim_car(i64 %rvp9917)                                        ; call prim_car
  %rvp9915 = call i64 @prim_cdr(i64 %rvp9917)                                        ; call prim_cdr
  %a7203 = call i64 @prim_car(i64 %rvp9915)                                          ; call prim_car
  %na9825 = call i64 @prim_cdr(i64 %rvp9915)                                         ; call prim_cdr
  %arg8385 = call i64 @const_init_int(i64 6)                                         ; quoted int
  %a7204 = call i64 @prim_cons(i64 %arg8385, i64 %a7203)                             ; call prim_cons
  %arg8387 = call i64 @const_init_int(i64 5)                                         ; quoted int
  %a7205 = call i64 @prim_cons(i64 %arg8387, i64 %a7204)                             ; call prim_cons
  %arg8389 = call i64 @const_init_int(i64 4)                                         ; quoted int
  %a7206 = call i64 @prim_cons(i64 %arg8389, i64 %a7205)                             ; call prim_cons
  %arg8391 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %a7207 = call i64 @prim_cons(i64 %arg8391, i64 %a7206)                             ; call prim_cons
  %arg8393 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7208 = call i64 @prim_cons(i64 %arg8393, i64 %a7207)                             ; call prim_cons
  %cloptr13814 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13816 = getelementptr inbounds i64, i64* %cloptr13814, i64 1                  ; &eptr13816[1]
  %eptr13817 = getelementptr inbounds i64, i64* %cloptr13814, i64 2                  ; &eptr13817[2]
  %eptr13818 = getelementptr inbounds i64, i64* %cloptr13814, i64 3                  ; &eptr13818[3]
  store i64 %QJM$amb, i64* %eptr13816                                                ; *eptr13816 = %QJM$amb
  store i64 %FmR$assert, i64* %eptr13817                                             ; *eptr13817 = %FmR$assert
  store i64 %EWS$a, i64* %eptr13818                                                  ; *eptr13818 = %EWS$a
  %eptr13815 = getelementptr inbounds i64, i64* %cloptr13814, i64 0                  ; &cloptr13814[0]
  %f13819 = ptrtoint void(i64,i64)* @lam10804 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13819, i64* %eptr13815                                                 ; store fptr
  %arg8395 = ptrtoint i64* %cloptr13814 to i64                                       ; closure cast; i64* -> i64
  %rva9914 = add i64 0, 0                                                            ; quoted ()
  %rva9913 = call i64 @prim_cons(i64 %a7208, i64 %rva9914)                           ; call prim_cons
  %rva9912 = call i64 @prim_cons(i64 %arg8395, i64 %rva9913)                         ; call prim_cons
  %cloptr13820 = inttoptr i64 %a7202 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13820)                                        ; assert function application
  %i0ptr13821 = getelementptr inbounds i64, i64* %cloptr13820, i64 0                 ; &cloptr13820[0]
  %f13823 = load i64, i64* %i0ptr13821, align 8                                      ; load; *i0ptr13821
  %fptr13822 = inttoptr i64 %f13823 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13822(i64 %a7202, i64 %rva9912)                     ; tail call
  ret void
}


define void @lam10804(i64 %env10805, i64 %rvp9910) {
  %envptr13824 = inttoptr i64 %env10805 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13825 = getelementptr inbounds i64, i64* %envptr13824, i64 3                ; &envptr13824[3]
  %EWS$a = load i64, i64* %envptr13825, align 8                                      ; load; *envptr13825
  %envptr13826 = inttoptr i64 %env10805 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13827 = getelementptr inbounds i64, i64* %envptr13826, i64 2                ; &envptr13826[2]
  %FmR$assert = load i64, i64* %envptr13827, align 8                                 ; load; *envptr13827
  %envptr13828 = inttoptr i64 %env10805 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13829 = getelementptr inbounds i64, i64* %envptr13828, i64 1                ; &envptr13828[1]
  %QJM$amb = load i64, i64* %envptr13829, align 8                                    ; load; *envptr13829
  %_957373 = call i64 @prim_car(i64 %rvp9910)                                        ; call prim_car
  %rvp9908 = call i64 @prim_cdr(i64 %rvp9910)                                        ; call prim_cdr
  %NXl$b = call i64 @prim_car(i64 %rvp9908)                                          ; call prim_car
  %na9827 = call i64 @prim_cdr(i64 %rvp9908)                                         ; call prim_cdr
  %arg8397 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7209 = call i64 @prim_vector_45ref(i64 %QJM$amb, i64 %arg8397)                   ; call prim_vector_45ref
  %cloptr13830 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13831 = getelementptr inbounds i64, i64* %cloptr13830, i64 0                  ; &cloptr13830[0]
  %f13832 = ptrtoint void(i64,i64)* @lam10801 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13832, i64* %eptr13831                                                 ; store fptr
  %arg8400 = ptrtoint i64* %cloptr13830 to i64                                       ; closure cast; i64* -> i64
  %cloptr13833 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13835 = getelementptr inbounds i64, i64* %cloptr13833, i64 1                  ; &eptr13835[1]
  %eptr13836 = getelementptr inbounds i64, i64* %cloptr13833, i64 2                  ; &eptr13836[2]
  %eptr13837 = getelementptr inbounds i64, i64* %cloptr13833, i64 3                  ; &eptr13837[3]
  %eptr13838 = getelementptr inbounds i64, i64* %cloptr13833, i64 4                  ; &eptr13838[4]
  store i64 %FmR$assert, i64* %eptr13835                                             ; *eptr13835 = %FmR$assert
  store i64 %NXl$b, i64* %eptr13836                                                  ; *eptr13836 = %NXl$b
  store i64 %EWS$a, i64* %eptr13837                                                  ; *eptr13837 = %EWS$a
  store i64 %a7209, i64* %eptr13838                                                  ; *eptr13838 = %a7209
  %eptr13834 = getelementptr inbounds i64, i64* %cloptr13833, i64 0                  ; &cloptr13833[0]
  %f13839 = ptrtoint void(i64,i64)* @lam10797 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13839, i64* %eptr13834                                                 ; store fptr
  %arg8399 = ptrtoint i64* %cloptr13833 to i64                                       ; closure cast; i64* -> i64
  %rva9907 = add i64 0, 0                                                            ; quoted ()
  %rva9906 = call i64 @prim_cons(i64 %arg8399, i64 %rva9907)                         ; call prim_cons
  %cloptr13840 = inttoptr i64 %arg8400 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13840)                                        ; assert function application
  %i0ptr13841 = getelementptr inbounds i64, i64* %cloptr13840, i64 0                 ; &cloptr13840[0]
  %f13843 = load i64, i64* %i0ptr13841, align 8                                      ; load; *i0ptr13841
  %fptr13842 = inttoptr i64 %f13843 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13842(i64 %arg8400, i64 %rva9906)                   ; tail call
  ret void
}


define void @lam10801(i64 %env10802, i64 %qTU$lst7389) {
  %cont7388 = call i64 @prim_car(i64 %qTU$lst7389)                                   ; call prim_car
  %qTU$lst = call i64 @prim_cdr(i64 %qTU$lst7389)                                    ; call prim_cdr
  %arg8404 = add i64 0, 0                                                            ; quoted ()
  %rva9830 = add i64 0, 0                                                            ; quoted ()
  %rva9829 = call i64 @prim_cons(i64 %qTU$lst, i64 %rva9830)                         ; call prim_cons
  %rva9828 = call i64 @prim_cons(i64 %arg8404, i64 %rva9829)                         ; call prim_cons
  %cloptr13844 = inttoptr i64 %cont7388 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13844)                                        ; assert function application
  %i0ptr13845 = getelementptr inbounds i64, i64* %cloptr13844, i64 0                 ; &cloptr13844[0]
  %f13847 = load i64, i64* %i0ptr13845, align 8                                      ; load; *i0ptr13845
  %fptr13846 = inttoptr i64 %f13847 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13846(i64 %cont7388, i64 %rva9828)                  ; tail call
  ret void
}


define void @lam10797(i64 %env10798, i64 %rvp9904) {
  %envptr13848 = inttoptr i64 %env10798 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13849 = getelementptr inbounds i64, i64* %envptr13848, i64 4                ; &envptr13848[4]
  %a7209 = load i64, i64* %envptr13849, align 8                                      ; load; *envptr13849
  %envptr13850 = inttoptr i64 %env10798 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13851 = getelementptr inbounds i64, i64* %envptr13850, i64 3                ; &envptr13850[3]
  %EWS$a = load i64, i64* %envptr13851, align 8                                      ; load; *envptr13851
  %envptr13852 = inttoptr i64 %env10798 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13853 = getelementptr inbounds i64, i64* %envptr13852, i64 2                ; &envptr13852[2]
  %NXl$b = load i64, i64* %envptr13853, align 8                                      ; load; *envptr13853
  %envptr13854 = inttoptr i64 %env10798 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13855 = getelementptr inbounds i64, i64* %envptr13854, i64 1                ; &envptr13854[1]
  %FmR$assert = load i64, i64* %envptr13855, align 8                                 ; load; *envptr13855
  %_957387 = call i64 @prim_car(i64 %rvp9904)                                        ; call prim_car
  %rvp9902 = call i64 @prim_cdr(i64 %rvp9904)                                        ; call prim_cdr
  %a7210 = call i64 @prim_car(i64 %rvp9902)                                          ; call prim_car
  %na9832 = call i64 @prim_cdr(i64 %rvp9902)                                         ; call prim_cdr
  %arg8407 = call i64 @const_init_int(i64 5)                                         ; quoted int
  %a7211 = call i64 @prim_cons(i64 %arg8407, i64 %a7210)                             ; call prim_cons
  %arg8409 = call i64 @const_init_int(i64 4)                                         ; quoted int
  %a7212 = call i64 @prim_cons(i64 %arg8409, i64 %a7211)                             ; call prim_cons
  %arg8411 = call i64 @const_init_int(i64 3)                                         ; quoted int
  %a7213 = call i64 @prim_cons(i64 %arg8411, i64 %a7212)                             ; call prim_cons
  %arg8413 = call i64 @const_init_int(i64 2)                                         ; quoted int
  %a7214 = call i64 @prim_cons(i64 %arg8413, i64 %a7213)                             ; call prim_cons
  %cloptr13856 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13858 = getelementptr inbounds i64, i64* %cloptr13856, i64 1                  ; &eptr13858[1]
  %eptr13859 = getelementptr inbounds i64, i64* %cloptr13856, i64 2                  ; &eptr13859[2]
  %eptr13860 = getelementptr inbounds i64, i64* %cloptr13856, i64 3                  ; &eptr13860[3]
  store i64 %FmR$assert, i64* %eptr13858                                             ; *eptr13858 = %FmR$assert
  store i64 %NXl$b, i64* %eptr13859                                                  ; *eptr13859 = %NXl$b
  store i64 %EWS$a, i64* %eptr13860                                                  ; *eptr13860 = %EWS$a
  %eptr13857 = getelementptr inbounds i64, i64* %cloptr13856, i64 0                  ; &cloptr13856[0]
  %f13861 = ptrtoint void(i64,i64)* @lam10791 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13861, i64* %eptr13857                                                 ; store fptr
  %arg8415 = ptrtoint i64* %cloptr13856 to i64                                       ; closure cast; i64* -> i64
  %rva9901 = add i64 0, 0                                                            ; quoted ()
  %rva9900 = call i64 @prim_cons(i64 %a7214, i64 %rva9901)                           ; call prim_cons
  %rva9899 = call i64 @prim_cons(i64 %arg8415, i64 %rva9900)                         ; call prim_cons
  %cloptr13862 = inttoptr i64 %a7209 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13862)                                        ; assert function application
  %i0ptr13863 = getelementptr inbounds i64, i64* %cloptr13862, i64 0                 ; &cloptr13862[0]
  %f13865 = load i64, i64* %i0ptr13863, align 8                                      ; load; *i0ptr13863
  %fptr13864 = inttoptr i64 %f13865 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13864(i64 %a7209, i64 %rva9899)                     ; tail call
  ret void
}


define void @lam10791(i64 %env10792, i64 %rvp9897) {
  %envptr13866 = inttoptr i64 %env10792 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13867 = getelementptr inbounds i64, i64* %envptr13866, i64 3                ; &envptr13866[3]
  %EWS$a = load i64, i64* %envptr13867, align 8                                      ; load; *envptr13867
  %envptr13868 = inttoptr i64 %env10792 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13869 = getelementptr inbounds i64, i64* %envptr13868, i64 2                ; &envptr13868[2]
  %NXl$b = load i64, i64* %envptr13869, align 8                                      ; load; *envptr13869
  %envptr13870 = inttoptr i64 %env10792 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13871 = getelementptr inbounds i64, i64* %envptr13870, i64 1                ; &envptr13870[1]
  %FmR$assert = load i64, i64* %envptr13871, align 8                                 ; load; *envptr13871
  %_957374 = call i64 @prim_car(i64 %rvp9897)                                        ; call prim_car
  %rvp9895 = call i64 @prim_cdr(i64 %rvp9897)                                        ; call prim_cdr
  %ttx$c = call i64 @prim_car(i64 %rvp9895)                                          ; call prim_car
  %na9834 = call i64 @prim_cdr(i64 %rvp9895)                                         ; call prim_cdr
  %cloptr13872 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13873 = getelementptr inbounds i64, i64* %cloptr13872, i64 0                  ; &cloptr13872[0]
  %f13874 = ptrtoint void(i64,i64)* @lam10789 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13874, i64* %eptr13873                                                 ; store fptr
  %arg8418 = ptrtoint i64* %cloptr13872 to i64                                       ; closure cast; i64* -> i64
  %cloptr13875 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13877 = getelementptr inbounds i64, i64* %cloptr13875, i64 1                  ; &eptr13877[1]
  %eptr13878 = getelementptr inbounds i64, i64* %cloptr13875, i64 2                  ; &eptr13878[2]
  %eptr13879 = getelementptr inbounds i64, i64* %cloptr13875, i64 3                  ; &eptr13879[3]
  %eptr13880 = getelementptr inbounds i64, i64* %cloptr13875, i64 4                  ; &eptr13880[4]
  store i64 %ttx$c, i64* %eptr13877                                                  ; *eptr13877 = %ttx$c
  store i64 %FmR$assert, i64* %eptr13878                                             ; *eptr13878 = %FmR$assert
  store i64 %NXl$b, i64* %eptr13879                                                  ; *eptr13879 = %NXl$b
  store i64 %EWS$a, i64* %eptr13880                                                  ; *eptr13880 = %EWS$a
  %eptr13876 = getelementptr inbounds i64, i64* %cloptr13875, i64 0                  ; &cloptr13875[0]
  %f13881 = ptrtoint void(i64,i64)* @lam10785 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13881, i64* %eptr13876                                                 ; store fptr
  %arg8417 = ptrtoint i64* %cloptr13875 to i64                                       ; closure cast; i64* -> i64
  %rva9894 = add i64 0, 0                                                            ; quoted ()
  %rva9893 = call i64 @prim_cons(i64 %arg8417, i64 %rva9894)                         ; call prim_cons
  %cloptr13882 = inttoptr i64 %arg8418 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13882)                                        ; assert function application
  %i0ptr13883 = getelementptr inbounds i64, i64* %cloptr13882, i64 0                 ; &cloptr13882[0]
  %f13885 = load i64, i64* %i0ptr13883, align 8                                      ; load; *i0ptr13883
  %fptr13884 = inttoptr i64 %f13885 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13884(i64 %arg8418, i64 %rva9893)                   ; tail call
  ret void
}


define void @lam10789(i64 %env10790, i64 %XqH$lst7386) {
  %cont7385 = call i64 @prim_car(i64 %XqH$lst7386)                                   ; call prim_car
  %XqH$lst = call i64 @prim_cdr(i64 %XqH$lst7386)                                    ; call prim_cdr
  %arg8422 = add i64 0, 0                                                            ; quoted ()
  %rva9837 = add i64 0, 0                                                            ; quoted ()
  %rva9836 = call i64 @prim_cons(i64 %XqH$lst, i64 %rva9837)                         ; call prim_cons
  %rva9835 = call i64 @prim_cons(i64 %arg8422, i64 %rva9836)                         ; call prim_cons
  %cloptr13886 = inttoptr i64 %cont7385 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13886)                                        ; assert function application
  %i0ptr13887 = getelementptr inbounds i64, i64* %cloptr13886, i64 0                 ; &cloptr13886[0]
  %f13889 = load i64, i64* %i0ptr13887, align 8                                      ; load; *i0ptr13887
  %fptr13888 = inttoptr i64 %f13889 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13888(i64 %cont7385, i64 %rva9835)                  ; tail call
  ret void
}


define void @lam10785(i64 %env10786, i64 %rvp9891) {
  %envptr13890 = inttoptr i64 %env10786 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13891 = getelementptr inbounds i64, i64* %envptr13890, i64 4                ; &envptr13890[4]
  %EWS$a = load i64, i64* %envptr13891, align 8                                      ; load; *envptr13891
  %envptr13892 = inttoptr i64 %env10786 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13893 = getelementptr inbounds i64, i64* %envptr13892, i64 3                ; &envptr13892[3]
  %NXl$b = load i64, i64* %envptr13893, align 8                                      ; load; *envptr13893
  %envptr13894 = inttoptr i64 %env10786 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13895 = getelementptr inbounds i64, i64* %envptr13894, i64 2                ; &envptr13894[2]
  %FmR$assert = load i64, i64* %envptr13895, align 8                                 ; load; *envptr13895
  %envptr13896 = inttoptr i64 %env10786 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13897 = getelementptr inbounds i64, i64* %envptr13896, i64 1                ; &envptr13896[1]
  %ttx$c = load i64, i64* %envptr13897, align 8                                      ; load; *envptr13897
  %_957383 = call i64 @prim_car(i64 %rvp9891)                                        ; call prim_car
  %rvp9889 = call i64 @prim_cdr(i64 %rvp9891)                                        ; call prim_cdr
  %a7215 = call i64 @prim_car(i64 %rvp9889)                                          ; call prim_car
  %na9839 = call i64 @prim_cdr(i64 %rvp9889)                                         ; call prim_cdr
  %arg8425 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7384 = call i64 @prim_make_45vector(i64 %arg8425, i64 %a7215)              ; call prim_make_45vector
  %cloptr13898 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13900 = getelementptr inbounds i64, i64* %cloptr13898, i64 1                  ; &eptr13900[1]
  %eptr13901 = getelementptr inbounds i64, i64* %cloptr13898, i64 2                  ; &eptr13901[2]
  %eptr13902 = getelementptr inbounds i64, i64* %cloptr13898, i64 3                  ; &eptr13902[3]
  %eptr13903 = getelementptr inbounds i64, i64* %cloptr13898, i64 4                  ; &eptr13903[4]
  store i64 %ttx$c, i64* %eptr13900                                                  ; *eptr13900 = %ttx$c
  store i64 %FmR$assert, i64* %eptr13901                                             ; *eptr13901 = %FmR$assert
  store i64 %NXl$b, i64* %eptr13902                                                  ; *eptr13902 = %NXl$b
  store i64 %EWS$a, i64* %eptr13903                                                  ; *eptr13903 = %EWS$a
  %eptr13899 = getelementptr inbounds i64, i64* %cloptr13898, i64 0                  ; &cloptr13898[0]
  %f13904 = ptrtoint void(i64,i64)* @lam10782 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13904, i64* %eptr13899                                                 ; store fptr
  %arg8428 = ptrtoint i64* %cloptr13898 to i64                                       ; closure cast; i64* -> i64
  %arg8427 = add i64 0, 0                                                            ; quoted ()
  %rva9888 = add i64 0, 0                                                            ; quoted ()
  %rva9887 = call i64 @prim_cons(i64 %retprim7384, i64 %rva9888)                     ; call prim_cons
  %rva9886 = call i64 @prim_cons(i64 %arg8427, i64 %rva9887)                         ; call prim_cons
  %cloptr13905 = inttoptr i64 %arg8428 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13905)                                        ; assert function application
  %i0ptr13906 = getelementptr inbounds i64, i64* %cloptr13905, i64 0                 ; &cloptr13905[0]
  %f13908 = load i64, i64* %i0ptr13906, align 8                                      ; load; *i0ptr13906
  %fptr13907 = inttoptr i64 %f13908 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13907(i64 %arg8428, i64 %rva9886)                   ; tail call
  ret void
}


define void @lam10782(i64 %env10783, i64 %rvp9884) {
  %envptr13909 = inttoptr i64 %env10783 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13910 = getelementptr inbounds i64, i64* %envptr13909, i64 4                ; &envptr13909[4]
  %EWS$a = load i64, i64* %envptr13910, align 8                                      ; load; *envptr13910
  %envptr13911 = inttoptr i64 %env10783 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13912 = getelementptr inbounds i64, i64* %envptr13911, i64 3                ; &envptr13911[3]
  %NXl$b = load i64, i64* %envptr13912, align 8                                      ; load; *envptr13912
  %envptr13913 = inttoptr i64 %env10783 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13914 = getelementptr inbounds i64, i64* %envptr13913, i64 2                ; &envptr13913[2]
  %FmR$assert = load i64, i64* %envptr13914, align 8                                 ; load; *envptr13914
  %envptr13915 = inttoptr i64 %env10783 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13916 = getelementptr inbounds i64, i64* %envptr13915, i64 1                ; &envptr13915[1]
  %ttx$c = load i64, i64* %envptr13916, align 8                                      ; load; *envptr13916
  %_957375 = call i64 @prim_car(i64 %rvp9884)                                        ; call prim_car
  %rvp9882 = call i64 @prim_cdr(i64 %rvp9884)                                        ; call prim_cdr
  %Gvm$tmp7028 = call i64 @prim_car(i64 %rvp9882)                                    ; call prim_car
  %na9841 = call i64 @prim_cdr(i64 %rvp9882)                                         ; call prim_cdr
  %arg8429 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7216 = call i64 @prim_vector_45ref(i64 %FmR$assert, i64 %arg8429)                ; call prim_vector_45ref
  %a7217 = call i64 @prim__42(i64 %EWS$a, i64 %EWS$a)                                ; call prim__42
  %a7218 = call i64 @prim__42(i64 %NXl$b, i64 %NXl$b)                                ; call prim__42
  %a7219 = call i64 @prim__43(i64 %a7217, i64 %a7218)                                ; call prim__43
  %a7220 = call i64 @prim__42(i64 %ttx$c, i64 %ttx$c)                                ; call prim__42
  %a7221 = call i64 @prim__61(i64 %a7219, i64 %a7220)                                ; call prim__61
  %cloptr13917 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13919 = getelementptr inbounds i64, i64* %cloptr13917, i64 1                  ; &eptr13919[1]
  %eptr13920 = getelementptr inbounds i64, i64* %cloptr13917, i64 2                  ; &eptr13920[2]
  %eptr13921 = getelementptr inbounds i64, i64* %cloptr13917, i64 3                  ; &eptr13921[3]
  %eptr13922 = getelementptr inbounds i64, i64* %cloptr13917, i64 4                  ; &eptr13922[4]
  store i64 %Gvm$tmp7028, i64* %eptr13919                                            ; *eptr13919 = %Gvm$tmp7028
  store i64 %ttx$c, i64* %eptr13920                                                  ; *eptr13920 = %ttx$c
  store i64 %NXl$b, i64* %eptr13921                                                  ; *eptr13921 = %NXl$b
  store i64 %EWS$a, i64* %eptr13922                                                  ; *eptr13922 = %EWS$a
  %eptr13918 = getelementptr inbounds i64, i64* %cloptr13917, i64 0                  ; &cloptr13917[0]
  %f13923 = ptrtoint void(i64,i64)* @lam10779 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13923, i64* %eptr13918                                                 ; store fptr
  %arg8442 = ptrtoint i64* %cloptr13917 to i64                                       ; closure cast; i64* -> i64
  %rva9881 = add i64 0, 0                                                            ; quoted ()
  %rva9880 = call i64 @prim_cons(i64 %a7221, i64 %rva9881)                           ; call prim_cons
  %rva9879 = call i64 @prim_cons(i64 %arg8442, i64 %rva9880)                         ; call prim_cons
  %cloptr13924 = inttoptr i64 %a7216 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13924)                                        ; assert function application
  %i0ptr13925 = getelementptr inbounds i64, i64* %cloptr13924, i64 0                 ; &cloptr13924[0]
  %f13927 = load i64, i64* %i0ptr13925, align 8                                      ; load; *i0ptr13925
  %fptr13926 = inttoptr i64 %f13927 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13926(i64 %a7216, i64 %rva9879)                     ; tail call
  ret void
}


define void @lam10779(i64 %env10780, i64 %rvp9877) {
  %envptr13928 = inttoptr i64 %env10780 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13929 = getelementptr inbounds i64, i64* %envptr13928, i64 4                ; &envptr13928[4]
  %EWS$a = load i64, i64* %envptr13929, align 8                                      ; load; *envptr13929
  %envptr13930 = inttoptr i64 %env10780 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13931 = getelementptr inbounds i64, i64* %envptr13930, i64 3                ; &envptr13930[3]
  %NXl$b = load i64, i64* %envptr13931, align 8                                      ; load; *envptr13931
  %envptr13932 = inttoptr i64 %env10780 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13933 = getelementptr inbounds i64, i64* %envptr13932, i64 2                ; &envptr13932[2]
  %ttx$c = load i64, i64* %envptr13933, align 8                                      ; load; *envptr13933
  %envptr13934 = inttoptr i64 %env10780 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13935 = getelementptr inbounds i64, i64* %envptr13934, i64 1                ; &envptr13934[1]
  %Gvm$tmp7028 = load i64, i64* %envptr13935, align 8                                ; load; *envptr13935
  %_957381 = call i64 @prim_car(i64 %rvp9877)                                        ; call prim_car
  %rvp9875 = call i64 @prim_cdr(i64 %rvp9877)                                        ; call prim_cdr
  %a7222 = call i64 @prim_car(i64 %rvp9875)                                          ; call prim_car
  %na9843 = call i64 @prim_cdr(i64 %rvp9875)                                         ; call prim_cdr
  %arg8445 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %retprim7382 = call i64 @prim_vector_45set_33(i64 %Gvm$tmp7028, i64 %arg8445, i64 %a7222); call prim_vector_45set_33
  %cloptr13936 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13938 = getelementptr inbounds i64, i64* %cloptr13936, i64 1                  ; &eptr13938[1]
  %eptr13939 = getelementptr inbounds i64, i64* %cloptr13936, i64 2                  ; &eptr13939[2]
  %eptr13940 = getelementptr inbounds i64, i64* %cloptr13936, i64 3                  ; &eptr13940[3]
  store i64 %ttx$c, i64* %eptr13938                                                  ; *eptr13938 = %ttx$c
  store i64 %NXl$b, i64* %eptr13939                                                  ; *eptr13939 = %NXl$b
  store i64 %EWS$a, i64* %eptr13940                                                  ; *eptr13940 = %EWS$a
  %eptr13937 = getelementptr inbounds i64, i64* %cloptr13936, i64 0                  ; &cloptr13936[0]
  %f13941 = ptrtoint void(i64,i64)* @lam10776 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13941, i64* %eptr13937                                                 ; store fptr
  %arg8449 = ptrtoint i64* %cloptr13936 to i64                                       ; closure cast; i64* -> i64
  %arg8448 = add i64 0, 0                                                            ; quoted ()
  %rva9874 = add i64 0, 0                                                            ; quoted ()
  %rva9873 = call i64 @prim_cons(i64 %retprim7382, i64 %rva9874)                     ; call prim_cons
  %rva9872 = call i64 @prim_cons(i64 %arg8448, i64 %rva9873)                         ; call prim_cons
  %cloptr13942 = inttoptr i64 %arg8449 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13942)                                        ; assert function application
  %i0ptr13943 = getelementptr inbounds i64, i64* %cloptr13942, i64 0                 ; &cloptr13942[0]
  %f13945 = load i64, i64* %i0ptr13943, align 8                                      ; load; *i0ptr13943
  %fptr13944 = inttoptr i64 %f13945 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13944(i64 %arg8449, i64 %rva9872)                   ; tail call
  ret void
}


define void @lam10776(i64 %env10777, i64 %rvp9870) {
  %envptr13946 = inttoptr i64 %env10777 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13947 = getelementptr inbounds i64, i64* %envptr13946, i64 3                ; &envptr13946[3]
  %EWS$a = load i64, i64* %envptr13947, align 8                                      ; load; *envptr13947
  %envptr13948 = inttoptr i64 %env10777 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13949 = getelementptr inbounds i64, i64* %envptr13948, i64 2                ; &envptr13948[2]
  %NXl$b = load i64, i64* %envptr13949, align 8                                      ; load; *envptr13949
  %envptr13950 = inttoptr i64 %env10777 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13951 = getelementptr inbounds i64, i64* %envptr13950, i64 1                ; &envptr13950[1]
  %ttx$c = load i64, i64* %envptr13951, align 8                                      ; load; *envptr13951
  %_957376 = call i64 @prim_car(i64 %rvp9870)                                        ; call prim_car
  %rvp9868 = call i64 @prim_cdr(i64 %rvp9870)                                        ; call prim_cdr
  %kho$_957049 = call i64 @prim_car(i64 %rvp9868)                                    ; call prim_car
  %na9845 = call i64 @prim_cdr(i64 %rvp9868)                                         ; call prim_cdr
  %cloptr13952 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13953 = getelementptr inbounds i64, i64* %cloptr13952, i64 0                  ; &cloptr13952[0]
  %f13954 = ptrtoint void(i64,i64)* @lam10774 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13954, i64* %eptr13953                                                 ; store fptr
  %arg8451 = ptrtoint i64* %cloptr13952 to i64                                       ; closure cast; i64* -> i64
  %cloptr13955 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr13957 = getelementptr inbounds i64, i64* %cloptr13955, i64 1                  ; &eptr13957[1]
  %eptr13958 = getelementptr inbounds i64, i64* %cloptr13955, i64 2                  ; &eptr13958[2]
  %eptr13959 = getelementptr inbounds i64, i64* %cloptr13955, i64 3                  ; &eptr13959[3]
  store i64 %ttx$c, i64* %eptr13957                                                  ; *eptr13957 = %ttx$c
  store i64 %NXl$b, i64* %eptr13958                                                  ; *eptr13958 = %NXl$b
  store i64 %EWS$a, i64* %eptr13959                                                  ; *eptr13959 = %EWS$a
  %eptr13956 = getelementptr inbounds i64, i64* %cloptr13955, i64 0                  ; &cloptr13955[0]
  %f13960 = ptrtoint void(i64,i64)* @lam10770 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13960, i64* %eptr13956                                                 ; store fptr
  %arg8450 = ptrtoint i64* %cloptr13955 to i64                                       ; closure cast; i64* -> i64
  %rva9867 = add i64 0, 0                                                            ; quoted ()
  %rva9866 = call i64 @prim_cons(i64 %arg8450, i64 %rva9867)                         ; call prim_cons
  %cloptr13961 = inttoptr i64 %arg8451 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13961)                                        ; assert function application
  %i0ptr13962 = getelementptr inbounds i64, i64* %cloptr13961, i64 0                 ; &cloptr13961[0]
  %f13964 = load i64, i64* %i0ptr13962, align 8                                      ; load; *i0ptr13962
  %fptr13963 = inttoptr i64 %f13964 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13963(i64 %arg8451, i64 %rva9866)                   ; tail call
  ret void
}


define void @lam10774(i64 %env10775, i64 %aNa$lst7380) {
  %cont7379 = call i64 @prim_car(i64 %aNa$lst7380)                                   ; call prim_car
  %aNa$lst = call i64 @prim_cdr(i64 %aNa$lst7380)                                    ; call prim_cdr
  %arg8455 = add i64 0, 0                                                            ; quoted ()
  %rva9848 = add i64 0, 0                                                            ; quoted ()
  %rva9847 = call i64 @prim_cons(i64 %aNa$lst, i64 %rva9848)                         ; call prim_cons
  %rva9846 = call i64 @prim_cons(i64 %arg8455, i64 %rva9847)                         ; call prim_cons
  %cloptr13965 = inttoptr i64 %cont7379 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13965)                                        ; assert function application
  %i0ptr13966 = getelementptr inbounds i64, i64* %cloptr13965, i64 0                 ; &cloptr13965[0]
  %f13968 = load i64, i64* %i0ptr13966, align 8                                      ; load; *i0ptr13966
  %fptr13967 = inttoptr i64 %f13968 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13967(i64 %cont7379, i64 %rva9846)                  ; tail call
  ret void
}


define void @lam10770(i64 %env10771, i64 %rvp9864) {
  %envptr13969 = inttoptr i64 %env10771 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13970 = getelementptr inbounds i64, i64* %envptr13969, i64 3                ; &envptr13969[3]
  %EWS$a = load i64, i64* %envptr13970, align 8                                      ; load; *envptr13970
  %envptr13971 = inttoptr i64 %env10771 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13972 = getelementptr inbounds i64, i64* %envptr13971, i64 2                ; &envptr13971[2]
  %NXl$b = load i64, i64* %envptr13972, align 8                                      ; load; *envptr13972
  %envptr13973 = inttoptr i64 %env10771 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13974 = getelementptr inbounds i64, i64* %envptr13973, i64 1                ; &envptr13973[1]
  %ttx$c = load i64, i64* %envptr13974, align 8                                      ; load; *envptr13974
  %_957377 = call i64 @prim_car(i64 %rvp9864)                                        ; call prim_car
  %rvp9862 = call i64 @prim_cdr(i64 %rvp9864)                                        ; call prim_cdr
  %a7223 = call i64 @prim_car(i64 %rvp9862)                                          ; call prim_car
  %na9850 = call i64 @prim_cdr(i64 %rvp9862)                                         ; call prim_cdr
  %a7224 = call i64 @prim_cons(i64 %ttx$c, i64 %a7223)                               ; call prim_cons
  %a7225 = call i64 @prim_cons(i64 %NXl$b, i64 %a7224)                               ; call prim_cons
  %a7226 = call i64 @prim_cons(i64 %EWS$a, i64 %a7225)                               ; call prim_cons
  %arg8464 = call i64 @const_init_symbol(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @sym13975, i32 0, i32 0)); quoted string
  %retprim7378 = call i64 @prim_cons(i64 %arg8464, i64 %a7226)                       ; call prim_cons
  %cloptr13976 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr13977 = getelementptr inbounds i64, i64* %cloptr13976, i64 0                  ; &cloptr13976[0]
  %f13978 = ptrtoint void(i64,i64)* @lam10767 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13978, i64* %eptr13977                                                 ; store fptr
  %arg8467 = ptrtoint i64* %cloptr13976 to i64                                       ; closure cast; i64* -> i64
  %arg8466 = add i64 0, 0                                                            ; quoted ()
  %rva9861 = add i64 0, 0                                                            ; quoted ()
  %rva9860 = call i64 @prim_cons(i64 %retprim7378, i64 %rva9861)                     ; call prim_cons
  %rva9859 = call i64 @prim_cons(i64 %arg8466, i64 %rva9860)                         ; call prim_cons
  %cloptr13979 = inttoptr i64 %arg8467 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13979)                                        ; assert function application
  %i0ptr13980 = getelementptr inbounds i64, i64* %cloptr13979, i64 0                 ; &cloptr13979[0]
  %f13982 = load i64, i64* %i0ptr13980, align 8                                      ; load; *i0ptr13980
  %fptr13981 = inttoptr i64 %f13982 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13981(i64 %arg8467, i64 %rva9859)                   ; tail call
  ret void
}


define void @lam10767(i64 %env10768, i64 %rvp9857) {
  %_950 = call i64 @prim_car(i64 %rvp9857)                                           ; call prim_car
  %rvp9855 = call i64 @prim_cdr(i64 %rvp9857)                                        ; call prim_cdr
  %x = call i64 @prim_car(i64 %rvp9855)                                              ; call prim_car
  %na9852 = call i64 @prim_cdr(i64 %rvp9855)                                         ; call prim_cdr
  %_951 = call i64 @prim_halt(i64 %x)                                                ; call prim_halt
  %rva9854 = add i64 0, 0                                                            ; quoted ()
  %rva9853 = call i64 @prim_cons(i64 %_951, i64 %rva9854)                            ; call prim_cons
  %cloptr13983 = inttoptr i64 %_951 to i64*                                          ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr13983)                                        ; assert function application
  %i0ptr13984 = getelementptr inbounds i64, i64* %cloptr13983, i64 0                 ; &cloptr13983[0]
  %f13986 = load i64, i64* %i0ptr13984, align 8                                      ; load; *i0ptr13984
  %fptr13985 = inttoptr i64 %f13986 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr13985(i64 %_951, i64 %rva9853)                      ; tail call
  ret void
}


define void @lam10730(i64 %env10731, i64 %rvp10141) {
  %envptr13987 = inttoptr i64 %env10731 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13988 = getelementptr inbounds i64, i64* %envptr13987, i64 3                ; &envptr13987[3]
  %hte$_37foldr = load i64, i64* %envptr13988, align 8                               ; load; *envptr13988
  %envptr13989 = inttoptr i64 %env10731 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13990 = getelementptr inbounds i64, i64* %envptr13989, i64 2                ; &envptr13989[2]
  %Epc$_37map1 = load i64, i64* %envptr13990, align 8                                ; load; *envptr13990
  %envptr13991 = inttoptr i64 %env10731 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr13992 = getelementptr inbounds i64, i64* %envptr13991, i64 1                ; &envptr13991[1]
  %kPq$_37foldr1 = load i64, i64* %envptr13992, align 8                              ; load; *envptr13992
  %cont7424 = call i64 @prim_car(i64 %rvp10141)                                      ; call prim_car
  %rvp10139 = call i64 @prim_cdr(i64 %rvp10141)                                      ; call prim_cdr
  %g6s$_37foldl = call i64 @prim_car(i64 %rvp10139)                                  ; call prim_car
  %na10023 = call i64 @prim_cdr(i64 %rvp10139)                                       ; call prim_cdr
  %arg8472 = add i64 0, 0                                                            ; quoted ()
  %cloptr13993 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr13995 = getelementptr inbounds i64, i64* %cloptr13993, i64 1                  ; &eptr13995[1]
  %eptr13996 = getelementptr inbounds i64, i64* %cloptr13993, i64 2                  ; &eptr13996[2]
  %eptr13997 = getelementptr inbounds i64, i64* %cloptr13993, i64 3                  ; &eptr13997[3]
  %eptr13998 = getelementptr inbounds i64, i64* %cloptr13993, i64 4                  ; &eptr13998[4]
  store i64 %kPq$_37foldr1, i64* %eptr13995                                          ; *eptr13995 = %kPq$_37foldr1
  store i64 %Epc$_37map1, i64* %eptr13996                                            ; *eptr13996 = %Epc$_37map1
  store i64 %hte$_37foldr, i64* %eptr13997                                           ; *eptr13997 = %hte$_37foldr
  store i64 %g6s$_37foldl, i64* %eptr13998                                           ; *eptr13998 = %g6s$_37foldl
  %eptr13994 = getelementptr inbounds i64, i64* %cloptr13993, i64 0                  ; &cloptr13993[0]
  %f13999 = ptrtoint void(i64,i64)* @lam10727 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f13999, i64* %eptr13994                                                 ; store fptr
  %arg8471 = ptrtoint i64* %cloptr13993 to i64                                       ; closure cast; i64* -> i64
  %rva10138 = add i64 0, 0                                                           ; quoted ()
  %rva10137 = call i64 @prim_cons(i64 %arg8471, i64 %rva10138)                       ; call prim_cons
  %rva10136 = call i64 @prim_cons(i64 %arg8472, i64 %rva10137)                       ; call prim_cons
  %cloptr14000 = inttoptr i64 %cont7424 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14000)                                        ; assert function application
  %i0ptr14001 = getelementptr inbounds i64, i64* %cloptr14000, i64 0                 ; &cloptr14000[0]
  %f14003 = load i64, i64* %i0ptr14001, align 8                                      ; load; *i0ptr14001
  %fptr14002 = inttoptr i64 %f14003 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14002(i64 %cont7424, i64 %rva10136)                 ; tail call
  ret void
}


define void @lam10727(i64 %env10728, i64 %iAw$args7426) {
  %envptr14004 = inttoptr i64 %env10728 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14005 = getelementptr inbounds i64, i64* %envptr14004, i64 4                ; &envptr14004[4]
  %g6s$_37foldl = load i64, i64* %envptr14005, align 8                               ; load; *envptr14005
  %envptr14006 = inttoptr i64 %env10728 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14007 = getelementptr inbounds i64, i64* %envptr14006, i64 3                ; &envptr14006[3]
  %hte$_37foldr = load i64, i64* %envptr14007, align 8                               ; load; *envptr14007
  %envptr14008 = inttoptr i64 %env10728 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14009 = getelementptr inbounds i64, i64* %envptr14008, i64 2                ; &envptr14008[2]
  %Epc$_37map1 = load i64, i64* %envptr14009, align 8                                ; load; *envptr14009
  %envptr14010 = inttoptr i64 %env10728 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14011 = getelementptr inbounds i64, i64* %envptr14010, i64 1                ; &envptr14010[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14011, align 8                              ; load; *envptr14011
  %cont7425 = call i64 @prim_car(i64 %iAw$args7426)                                  ; call prim_car
  %iAw$args = call i64 @prim_cdr(i64 %iAw$args7426)                                  ; call prim_cdr
  %pr5$f = call i64 @prim_car(i64 %iAw$args)                                         ; call prim_car
  %a7090 = call i64 @prim_cdr(i64 %iAw$args)                                         ; call prim_cdr
  %retprim7445 = call i64 @prim_car(i64 %a7090)                                      ; call prim_car
  %cloptr14012 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr14014 = getelementptr inbounds i64, i64* %cloptr14012, i64 1                  ; &eptr14014[1]
  %eptr14015 = getelementptr inbounds i64, i64* %cloptr14012, i64 2                  ; &eptr14015[2]
  %eptr14016 = getelementptr inbounds i64, i64* %cloptr14012, i64 3                  ; &eptr14016[3]
  %eptr14017 = getelementptr inbounds i64, i64* %cloptr14012, i64 4                  ; &eptr14017[4]
  %eptr14018 = getelementptr inbounds i64, i64* %cloptr14012, i64 5                  ; &eptr14018[5]
  %eptr14019 = getelementptr inbounds i64, i64* %cloptr14012, i64 6                  ; &eptr14019[6]
  %eptr14020 = getelementptr inbounds i64, i64* %cloptr14012, i64 7                  ; &eptr14020[7]
  store i64 %kPq$_37foldr1, i64* %eptr14014                                          ; *eptr14014 = %kPq$_37foldr1
  store i64 %Epc$_37map1, i64* %eptr14015                                            ; *eptr14015 = %Epc$_37map1
  store i64 %iAw$args, i64* %eptr14016                                               ; *eptr14016 = %iAw$args
  store i64 %hte$_37foldr, i64* %eptr14017                                           ; *eptr14017 = %hte$_37foldr
  store i64 %cont7425, i64* %eptr14018                                               ; *eptr14018 = %cont7425
  store i64 %g6s$_37foldl, i64* %eptr14019                                           ; *eptr14019 = %g6s$_37foldl
  store i64 %pr5$f, i64* %eptr14020                                                  ; *eptr14020 = %pr5$f
  %eptr14013 = getelementptr inbounds i64, i64* %cloptr14012, i64 0                  ; &cloptr14012[0]
  %f14021 = ptrtoint void(i64,i64)* @lam10725 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14021, i64* %eptr14013                                                 ; store fptr
  %arg8481 = ptrtoint i64* %cloptr14012 to i64                                       ; closure cast; i64* -> i64
  %arg8480 = add i64 0, 0                                                            ; quoted ()
  %rva10135 = add i64 0, 0                                                           ; quoted ()
  %rva10134 = call i64 @prim_cons(i64 %retprim7445, i64 %rva10135)                   ; call prim_cons
  %rva10133 = call i64 @prim_cons(i64 %arg8480, i64 %rva10134)                       ; call prim_cons
  %cloptr14022 = inttoptr i64 %arg8481 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14022)                                        ; assert function application
  %i0ptr14023 = getelementptr inbounds i64, i64* %cloptr14022, i64 0                 ; &cloptr14022[0]
  %f14025 = load i64, i64* %i0ptr14023, align 8                                      ; load; *i0ptr14023
  %fptr14024 = inttoptr i64 %f14025 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14024(i64 %arg8481, i64 %rva10133)                  ; tail call
  ret void
}


define void @lam10725(i64 %env10726, i64 %rvp10131) {
  %envptr14026 = inttoptr i64 %env10726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14027 = getelementptr inbounds i64, i64* %envptr14026, i64 7                ; &envptr14026[7]
  %pr5$f = load i64, i64* %envptr14027, align 8                                      ; load; *envptr14027
  %envptr14028 = inttoptr i64 %env10726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14029 = getelementptr inbounds i64, i64* %envptr14028, i64 6                ; &envptr14028[6]
  %g6s$_37foldl = load i64, i64* %envptr14029, align 8                               ; load; *envptr14029
  %envptr14030 = inttoptr i64 %env10726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14031 = getelementptr inbounds i64, i64* %envptr14030, i64 5                ; &envptr14030[5]
  %cont7425 = load i64, i64* %envptr14031, align 8                                   ; load; *envptr14031
  %envptr14032 = inttoptr i64 %env10726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14033 = getelementptr inbounds i64, i64* %envptr14032, i64 4                ; &envptr14032[4]
  %hte$_37foldr = load i64, i64* %envptr14033, align 8                               ; load; *envptr14033
  %envptr14034 = inttoptr i64 %env10726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14035 = getelementptr inbounds i64, i64* %envptr14034, i64 3                ; &envptr14034[3]
  %iAw$args = load i64, i64* %envptr14035, align 8                                   ; load; *envptr14035
  %envptr14036 = inttoptr i64 %env10726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14037 = getelementptr inbounds i64, i64* %envptr14036, i64 2                ; &envptr14036[2]
  %Epc$_37map1 = load i64, i64* %envptr14037, align 8                                ; load; *envptr14037
  %envptr14038 = inttoptr i64 %env10726 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14039 = getelementptr inbounds i64, i64* %envptr14038, i64 1                ; &envptr14038[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14039, align 8                              ; load; *envptr14039
  %_957427 = call i64 @prim_car(i64 %rvp10131)                                       ; call prim_car
  %rvp10129 = call i64 @prim_cdr(i64 %rvp10131)                                      ; call prim_cdr
  %vw2$acc = call i64 @prim_car(i64 %rvp10129)                                       ; call prim_car
  %na10025 = call i64 @prim_cdr(i64 %rvp10129)                                       ; call prim_cdr
  %a7091 = call i64 @prim_cdr(i64 %iAw$args)                                         ; call prim_cdr
  %retprim7444 = call i64 @prim_cdr(i64 %a7091)                                      ; call prim_cdr
  %cloptr14040 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr14042 = getelementptr inbounds i64, i64* %cloptr14040, i64 1                  ; &eptr14042[1]
  %eptr14043 = getelementptr inbounds i64, i64* %cloptr14040, i64 2                  ; &eptr14043[2]
  %eptr14044 = getelementptr inbounds i64, i64* %cloptr14040, i64 3                  ; &eptr14044[3]
  %eptr14045 = getelementptr inbounds i64, i64* %cloptr14040, i64 4                  ; &eptr14045[4]
  %eptr14046 = getelementptr inbounds i64, i64* %cloptr14040, i64 5                  ; &eptr14046[5]
  %eptr14047 = getelementptr inbounds i64, i64* %cloptr14040, i64 6                  ; &eptr14047[6]
  %eptr14048 = getelementptr inbounds i64, i64* %cloptr14040, i64 7                  ; &eptr14048[7]
  store i64 %kPq$_37foldr1, i64* %eptr14042                                          ; *eptr14042 = %kPq$_37foldr1
  store i64 %Epc$_37map1, i64* %eptr14043                                            ; *eptr14043 = %Epc$_37map1
  store i64 %vw2$acc, i64* %eptr14044                                                ; *eptr14044 = %vw2$acc
  store i64 %hte$_37foldr, i64* %eptr14045                                           ; *eptr14045 = %hte$_37foldr
  store i64 %cont7425, i64* %eptr14046                                               ; *eptr14046 = %cont7425
  store i64 %g6s$_37foldl, i64* %eptr14047                                           ; *eptr14047 = %g6s$_37foldl
  store i64 %pr5$f, i64* %eptr14048                                                  ; *eptr14048 = %pr5$f
  %eptr14041 = getelementptr inbounds i64, i64* %cloptr14040, i64 0                  ; &cloptr14040[0]
  %f14049 = ptrtoint void(i64,i64)* @lam10723 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14049, i64* %eptr14041                                                 ; store fptr
  %arg8486 = ptrtoint i64* %cloptr14040 to i64                                       ; closure cast; i64* -> i64
  %arg8485 = add i64 0, 0                                                            ; quoted ()
  %rva10128 = add i64 0, 0                                                           ; quoted ()
  %rva10127 = call i64 @prim_cons(i64 %retprim7444, i64 %rva10128)                   ; call prim_cons
  %rva10126 = call i64 @prim_cons(i64 %arg8485, i64 %rva10127)                       ; call prim_cons
  %cloptr14050 = inttoptr i64 %arg8486 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14050)                                        ; assert function application
  %i0ptr14051 = getelementptr inbounds i64, i64* %cloptr14050, i64 0                 ; &cloptr14050[0]
  %f14053 = load i64, i64* %i0ptr14051, align 8                                      ; load; *i0ptr14051
  %fptr14052 = inttoptr i64 %f14053 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14052(i64 %arg8486, i64 %rva10126)                  ; tail call
  ret void
}


define void @lam10723(i64 %env10724, i64 %rvp10124) {
  %envptr14054 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14055 = getelementptr inbounds i64, i64* %envptr14054, i64 7                ; &envptr14054[7]
  %pr5$f = load i64, i64* %envptr14055, align 8                                      ; load; *envptr14055
  %envptr14056 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14057 = getelementptr inbounds i64, i64* %envptr14056, i64 6                ; &envptr14056[6]
  %g6s$_37foldl = load i64, i64* %envptr14057, align 8                               ; load; *envptr14057
  %envptr14058 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14059 = getelementptr inbounds i64, i64* %envptr14058, i64 5                ; &envptr14058[5]
  %cont7425 = load i64, i64* %envptr14059, align 8                                   ; load; *envptr14059
  %envptr14060 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14061 = getelementptr inbounds i64, i64* %envptr14060, i64 4                ; &envptr14060[4]
  %hte$_37foldr = load i64, i64* %envptr14061, align 8                               ; load; *envptr14061
  %envptr14062 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14063 = getelementptr inbounds i64, i64* %envptr14062, i64 3                ; &envptr14062[3]
  %vw2$acc = load i64, i64* %envptr14063, align 8                                    ; load; *envptr14063
  %envptr14064 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14065 = getelementptr inbounds i64, i64* %envptr14064, i64 2                ; &envptr14064[2]
  %Epc$_37map1 = load i64, i64* %envptr14065, align 8                                ; load; *envptr14065
  %envptr14066 = inttoptr i64 %env10724 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14067 = getelementptr inbounds i64, i64* %envptr14066, i64 1                ; &envptr14066[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14067, align 8                              ; load; *envptr14067
  %_957428 = call i64 @prim_car(i64 %rvp10124)                                       ; call prim_car
  %rvp10122 = call i64 @prim_cdr(i64 %rvp10124)                                      ; call prim_cdr
  %zyW$lsts = call i64 @prim_car(i64 %rvp10122)                                      ; call prim_car
  %na10027 = call i64 @prim_cdr(i64 %rvp10122)                                       ; call prim_cdr
  %cloptr14068 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr14070 = getelementptr inbounds i64, i64* %cloptr14068, i64 1                  ; &eptr14070[1]
  %eptr14071 = getelementptr inbounds i64, i64* %cloptr14068, i64 2                  ; &eptr14071[2]
  %eptr14072 = getelementptr inbounds i64, i64* %cloptr14068, i64 3                  ; &eptr14072[3]
  %eptr14073 = getelementptr inbounds i64, i64* %cloptr14068, i64 4                  ; &eptr14073[4]
  %eptr14074 = getelementptr inbounds i64, i64* %cloptr14068, i64 5                  ; &eptr14074[5]
  %eptr14075 = getelementptr inbounds i64, i64* %cloptr14068, i64 6                  ; &eptr14075[6]
  %eptr14076 = getelementptr inbounds i64, i64* %cloptr14068, i64 7                  ; &eptr14076[7]
  store i64 %zyW$lsts, i64* %eptr14070                                               ; *eptr14070 = %zyW$lsts
  store i64 %Epc$_37map1, i64* %eptr14071                                            ; *eptr14071 = %Epc$_37map1
  store i64 %vw2$acc, i64* %eptr14072                                                ; *eptr14072 = %vw2$acc
  store i64 %hte$_37foldr, i64* %eptr14073                                           ; *eptr14073 = %hte$_37foldr
  store i64 %cont7425, i64* %eptr14074                                               ; *eptr14074 = %cont7425
  store i64 %g6s$_37foldl, i64* %eptr14075                                           ; *eptr14075 = %g6s$_37foldl
  store i64 %pr5$f, i64* %eptr14076                                                  ; *eptr14076 = %pr5$f
  %eptr14069 = getelementptr inbounds i64, i64* %cloptr14068, i64 0                  ; &cloptr14068[0]
  %f14077 = ptrtoint void(i64,i64)* @lam10721 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14077, i64* %eptr14069                                                 ; store fptr
  %arg8490 = ptrtoint i64* %cloptr14068 to i64                                       ; closure cast; i64* -> i64
  %cloptr14078 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14079 = getelementptr inbounds i64, i64* %cloptr14078, i64 0                  ; &cloptr14078[0]
  %f14080 = ptrtoint void(i64,i64)* @lam10693 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14080, i64* %eptr14079                                                 ; store fptr
  %arg8489 = ptrtoint i64* %cloptr14078 to i64                                       ; closure cast; i64* -> i64
  %arg8488 = call i64 @const_init_false()                                            ; quoted #f
  %rva10121 = add i64 0, 0                                                           ; quoted ()
  %rva10120 = call i64 @prim_cons(i64 %zyW$lsts, i64 %rva10121)                      ; call prim_cons
  %rva10119 = call i64 @prim_cons(i64 %arg8488, i64 %rva10120)                       ; call prim_cons
  %rva10118 = call i64 @prim_cons(i64 %arg8489, i64 %rva10119)                       ; call prim_cons
  %rva10117 = call i64 @prim_cons(i64 %arg8490, i64 %rva10118)                       ; call prim_cons
  %cloptr14081 = inttoptr i64 %kPq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14081)                                        ; assert function application
  %i0ptr14082 = getelementptr inbounds i64, i64* %cloptr14081, i64 0                 ; &cloptr14081[0]
  %f14084 = load i64, i64* %i0ptr14082, align 8                                      ; load; *i0ptr14082
  %fptr14083 = inttoptr i64 %f14084 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14083(i64 %kPq$_37foldr1, i64 %rva10117)            ; tail call
  ret void
}


define void @lam10721(i64 %env10722, i64 %rvp10101) {
  %envptr14085 = inttoptr i64 %env10722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14086 = getelementptr inbounds i64, i64* %envptr14085, i64 7                ; &envptr14085[7]
  %pr5$f = load i64, i64* %envptr14086, align 8                                      ; load; *envptr14086
  %envptr14087 = inttoptr i64 %env10722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14088 = getelementptr inbounds i64, i64* %envptr14087, i64 6                ; &envptr14087[6]
  %g6s$_37foldl = load i64, i64* %envptr14088, align 8                               ; load; *envptr14088
  %envptr14089 = inttoptr i64 %env10722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14090 = getelementptr inbounds i64, i64* %envptr14089, i64 5                ; &envptr14089[5]
  %cont7425 = load i64, i64* %envptr14090, align 8                                   ; load; *envptr14090
  %envptr14091 = inttoptr i64 %env10722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14092 = getelementptr inbounds i64, i64* %envptr14091, i64 4                ; &envptr14091[4]
  %hte$_37foldr = load i64, i64* %envptr14092, align 8                               ; load; *envptr14092
  %envptr14093 = inttoptr i64 %env10722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14094 = getelementptr inbounds i64, i64* %envptr14093, i64 3                ; &envptr14093[3]
  %vw2$acc = load i64, i64* %envptr14094, align 8                                    ; load; *envptr14094
  %envptr14095 = inttoptr i64 %env10722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14096 = getelementptr inbounds i64, i64* %envptr14095, i64 2                ; &envptr14095[2]
  %Epc$_37map1 = load i64, i64* %envptr14096, align 8                                ; load; *envptr14096
  %envptr14097 = inttoptr i64 %env10722 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14098 = getelementptr inbounds i64, i64* %envptr14097, i64 1                ; &envptr14097[1]
  %zyW$lsts = load i64, i64* %envptr14098, align 8                                   ; load; *envptr14098
  %_957429 = call i64 @prim_car(i64 %rvp10101)                                       ; call prim_car
  %rvp10099 = call i64 @prim_cdr(i64 %rvp10101)                                      ; call prim_cdr
  %a7092 = call i64 @prim_car(i64 %rvp10099)                                         ; call prim_car
  %na10029 = call i64 @prim_cdr(i64 %rvp10099)                                       ; call prim_cdr
  %cmp14099 = icmp eq i64 %a7092, 15                                                 ; false?
  br i1 %cmp14099, label %else14101, label %then14100                                ; if

then14100:
  %arg8493 = add i64 0, 0                                                            ; quoted ()
  %rva10032 = add i64 0, 0                                                           ; quoted ()
  %rva10031 = call i64 @prim_cons(i64 %vw2$acc, i64 %rva10032)                       ; call prim_cons
  %rva10030 = call i64 @prim_cons(i64 %arg8493, i64 %rva10031)                       ; call prim_cons
  %cloptr14102 = inttoptr i64 %cont7425 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14102)                                        ; assert function application
  %i0ptr14103 = getelementptr inbounds i64, i64* %cloptr14102, i64 0                 ; &cloptr14102[0]
  %f14105 = load i64, i64* %i0ptr14103, align 8                                      ; load; *i0ptr14103
  %fptr14104 = inttoptr i64 %f14105 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14104(i64 %cont7425, i64 %rva10030)                 ; tail call
  ret void

else14101:
  %cloptr14106 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr14108 = getelementptr inbounds i64, i64* %cloptr14106, i64 1                  ; &eptr14108[1]
  %eptr14109 = getelementptr inbounds i64, i64* %cloptr14106, i64 2                  ; &eptr14109[2]
  %eptr14110 = getelementptr inbounds i64, i64* %cloptr14106, i64 3                  ; &eptr14110[3]
  %eptr14111 = getelementptr inbounds i64, i64* %cloptr14106, i64 4                  ; &eptr14111[4]
  %eptr14112 = getelementptr inbounds i64, i64* %cloptr14106, i64 5                  ; &eptr14112[5]
  %eptr14113 = getelementptr inbounds i64, i64* %cloptr14106, i64 6                  ; &eptr14113[6]
  %eptr14114 = getelementptr inbounds i64, i64* %cloptr14106, i64 7                  ; &eptr14114[7]
  store i64 %zyW$lsts, i64* %eptr14108                                               ; *eptr14108 = %zyW$lsts
  store i64 %Epc$_37map1, i64* %eptr14109                                            ; *eptr14109 = %Epc$_37map1
  store i64 %vw2$acc, i64* %eptr14110                                                ; *eptr14110 = %vw2$acc
  store i64 %hte$_37foldr, i64* %eptr14111                                           ; *eptr14111 = %hte$_37foldr
  store i64 %cont7425, i64* %eptr14112                                               ; *eptr14112 = %cont7425
  store i64 %g6s$_37foldl, i64* %eptr14113                                           ; *eptr14113 = %g6s$_37foldl
  store i64 %pr5$f, i64* %eptr14114                                                  ; *eptr14114 = %pr5$f
  %eptr14107 = getelementptr inbounds i64, i64* %cloptr14106, i64 0                  ; &cloptr14106[0]
  %f14115 = ptrtoint void(i64,i64)* @lam10719 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14115, i64* %eptr14107                                                 ; store fptr
  %arg8497 = ptrtoint i64* %cloptr14106 to i64                                       ; closure cast; i64* -> i64
  %cloptr14116 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14117 = getelementptr inbounds i64, i64* %cloptr14116, i64 0                  ; &cloptr14116[0]
  %f14118 = ptrtoint void(i64,i64)* @lam10700 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14118, i64* %eptr14117                                                 ; store fptr
  %arg8496 = ptrtoint i64* %cloptr14116 to i64                                       ; closure cast; i64* -> i64
  %rva10098 = add i64 0, 0                                                           ; quoted ()
  %rva10097 = call i64 @prim_cons(i64 %zyW$lsts, i64 %rva10098)                      ; call prim_cons
  %rva10096 = call i64 @prim_cons(i64 %arg8496, i64 %rva10097)                       ; call prim_cons
  %rva10095 = call i64 @prim_cons(i64 %arg8497, i64 %rva10096)                       ; call prim_cons
  %cloptr14119 = inttoptr i64 %Epc$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14119)                                        ; assert function application
  %i0ptr14120 = getelementptr inbounds i64, i64* %cloptr14119, i64 0                 ; &cloptr14119[0]
  %f14122 = load i64, i64* %i0ptr14120, align 8                                      ; load; *i0ptr14120
  %fptr14121 = inttoptr i64 %f14122 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14121(i64 %Epc$_37map1, i64 %rva10095)              ; tail call
  ret void
}


define void @lam10719(i64 %env10720, i64 %rvp10084) {
  %envptr14123 = inttoptr i64 %env10720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14124 = getelementptr inbounds i64, i64* %envptr14123, i64 7                ; &envptr14123[7]
  %pr5$f = load i64, i64* %envptr14124, align 8                                      ; load; *envptr14124
  %envptr14125 = inttoptr i64 %env10720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14126 = getelementptr inbounds i64, i64* %envptr14125, i64 6                ; &envptr14125[6]
  %g6s$_37foldl = load i64, i64* %envptr14126, align 8                               ; load; *envptr14126
  %envptr14127 = inttoptr i64 %env10720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14128 = getelementptr inbounds i64, i64* %envptr14127, i64 5                ; &envptr14127[5]
  %cont7425 = load i64, i64* %envptr14128, align 8                                   ; load; *envptr14128
  %envptr14129 = inttoptr i64 %env10720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14130 = getelementptr inbounds i64, i64* %envptr14129, i64 4                ; &envptr14129[4]
  %hte$_37foldr = load i64, i64* %envptr14130, align 8                               ; load; *envptr14130
  %envptr14131 = inttoptr i64 %env10720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14132 = getelementptr inbounds i64, i64* %envptr14131, i64 3                ; &envptr14131[3]
  %vw2$acc = load i64, i64* %envptr14132, align 8                                    ; load; *envptr14132
  %envptr14133 = inttoptr i64 %env10720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14134 = getelementptr inbounds i64, i64* %envptr14133, i64 2                ; &envptr14133[2]
  %Epc$_37map1 = load i64, i64* %envptr14134, align 8                                ; load; *envptr14134
  %envptr14135 = inttoptr i64 %env10720 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14136 = getelementptr inbounds i64, i64* %envptr14135, i64 1                ; &envptr14135[1]
  %zyW$lsts = load i64, i64* %envptr14136, align 8                                   ; load; *envptr14136
  %_957430 = call i64 @prim_car(i64 %rvp10084)                                       ; call prim_car
  %rvp10082 = call i64 @prim_cdr(i64 %rvp10084)                                      ; call prim_cdr
  %DKu$lsts_43 = call i64 @prim_car(i64 %rvp10082)                                   ; call prim_car
  %na10034 = call i64 @prim_cdr(i64 %rvp10082)                                       ; call prim_cdr
  %cloptr14137 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr14139 = getelementptr inbounds i64, i64* %cloptr14137, i64 1                  ; &eptr14139[1]
  %eptr14140 = getelementptr inbounds i64, i64* %cloptr14137, i64 2                  ; &eptr14140[2]
  %eptr14141 = getelementptr inbounds i64, i64* %cloptr14137, i64 3                  ; &eptr14141[3]
  %eptr14142 = getelementptr inbounds i64, i64* %cloptr14137, i64 4                  ; &eptr14142[4]
  %eptr14143 = getelementptr inbounds i64, i64* %cloptr14137, i64 5                  ; &eptr14143[5]
  %eptr14144 = getelementptr inbounds i64, i64* %cloptr14137, i64 6                  ; &eptr14144[6]
  store i64 %vw2$acc, i64* %eptr14139                                                ; *eptr14139 = %vw2$acc
  store i64 %hte$_37foldr, i64* %eptr14140                                           ; *eptr14140 = %hte$_37foldr
  store i64 %cont7425, i64* %eptr14141                                               ; *eptr14141 = %cont7425
  store i64 %g6s$_37foldl, i64* %eptr14142                                           ; *eptr14142 = %g6s$_37foldl
  store i64 %DKu$lsts_43, i64* %eptr14143                                            ; *eptr14143 = %DKu$lsts_43
  store i64 %pr5$f, i64* %eptr14144                                                  ; *eptr14144 = %pr5$f
  %eptr14138 = getelementptr inbounds i64, i64* %cloptr14137, i64 0                  ; &cloptr14137[0]
  %f14145 = ptrtoint void(i64,i64)* @lam10717 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14145, i64* %eptr14138                                                 ; store fptr
  %arg8501 = ptrtoint i64* %cloptr14137 to i64                                       ; closure cast; i64* -> i64
  %cloptr14146 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14147 = getelementptr inbounds i64, i64* %cloptr14146, i64 0                  ; &cloptr14146[0]
  %f14148 = ptrtoint void(i64,i64)* @lam10705 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14148, i64* %eptr14147                                                 ; store fptr
  %arg8500 = ptrtoint i64* %cloptr14146 to i64                                       ; closure cast; i64* -> i64
  %rva10081 = add i64 0, 0                                                           ; quoted ()
  %rva10080 = call i64 @prim_cons(i64 %zyW$lsts, i64 %rva10081)                      ; call prim_cons
  %rva10079 = call i64 @prim_cons(i64 %arg8500, i64 %rva10080)                       ; call prim_cons
  %rva10078 = call i64 @prim_cons(i64 %arg8501, i64 %rva10079)                       ; call prim_cons
  %cloptr14149 = inttoptr i64 %Epc$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14149)                                        ; assert function application
  %i0ptr14150 = getelementptr inbounds i64, i64* %cloptr14149, i64 0                 ; &cloptr14149[0]
  %f14152 = load i64, i64* %i0ptr14150, align 8                                      ; load; *i0ptr14150
  %fptr14151 = inttoptr i64 %f14152 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14151(i64 %Epc$_37map1, i64 %rva10078)              ; tail call
  ret void
}


define void @lam10717(i64 %env10718, i64 %rvp10067) {
  %envptr14153 = inttoptr i64 %env10718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14154 = getelementptr inbounds i64, i64* %envptr14153, i64 6                ; &envptr14153[6]
  %pr5$f = load i64, i64* %envptr14154, align 8                                      ; load; *envptr14154
  %envptr14155 = inttoptr i64 %env10718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14156 = getelementptr inbounds i64, i64* %envptr14155, i64 5                ; &envptr14155[5]
  %DKu$lsts_43 = load i64, i64* %envptr14156, align 8                                ; load; *envptr14156
  %envptr14157 = inttoptr i64 %env10718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14158 = getelementptr inbounds i64, i64* %envptr14157, i64 4                ; &envptr14157[4]
  %g6s$_37foldl = load i64, i64* %envptr14158, align 8                               ; load; *envptr14158
  %envptr14159 = inttoptr i64 %env10718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14160 = getelementptr inbounds i64, i64* %envptr14159, i64 3                ; &envptr14159[3]
  %cont7425 = load i64, i64* %envptr14160, align 8                                   ; load; *envptr14160
  %envptr14161 = inttoptr i64 %env10718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14162 = getelementptr inbounds i64, i64* %envptr14161, i64 2                ; &envptr14161[2]
  %hte$_37foldr = load i64, i64* %envptr14162, align 8                               ; load; *envptr14162
  %envptr14163 = inttoptr i64 %env10718 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14164 = getelementptr inbounds i64, i64* %envptr14163, i64 1                ; &envptr14163[1]
  %vw2$acc = load i64, i64* %envptr14164, align 8                                    ; load; *envptr14164
  %_957431 = call i64 @prim_car(i64 %rvp10067)                                       ; call prim_car
  %rvp10065 = call i64 @prim_cdr(i64 %rvp10067)                                      ; call prim_cdr
  %wtE$vs = call i64 @prim_car(i64 %rvp10065)                                        ; call prim_car
  %na10036 = call i64 @prim_cdr(i64 %rvp10065)                                       ; call prim_cdr
  %arg8503 = add i64 0, 0                                                            ; quoted ()
  %a7093 = call i64 @prim_cons(i64 %vw2$acc, i64 %arg8503)                           ; call prim_cons
  %cloptr14165 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr14167 = getelementptr inbounds i64, i64* %cloptr14165, i64 1                  ; &eptr14167[1]
  %eptr14168 = getelementptr inbounds i64, i64* %cloptr14165, i64 2                  ; &eptr14168[2]
  %eptr14169 = getelementptr inbounds i64, i64* %cloptr14165, i64 3                  ; &eptr14169[3]
  %eptr14170 = getelementptr inbounds i64, i64* %cloptr14165, i64 4                  ; &eptr14170[4]
  store i64 %cont7425, i64* %eptr14167                                               ; *eptr14167 = %cont7425
  store i64 %g6s$_37foldl, i64* %eptr14168                                           ; *eptr14168 = %g6s$_37foldl
  store i64 %DKu$lsts_43, i64* %eptr14169                                            ; *eptr14169 = %DKu$lsts_43
  store i64 %pr5$f, i64* %eptr14170                                                  ; *eptr14170 = %pr5$f
  %eptr14166 = getelementptr inbounds i64, i64* %cloptr14165, i64 0                  ; &cloptr14165[0]
  %f14171 = ptrtoint void(i64,i64)* @lam10714 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14171, i64* %eptr14166                                                 ; store fptr
  %arg8508 = ptrtoint i64* %cloptr14165 to i64                                       ; closure cast; i64* -> i64
  %cloptr14172 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14173 = getelementptr inbounds i64, i64* %cloptr14172, i64 0                  ; &cloptr14172[0]
  %f14174 = ptrtoint void(i64,i64)* @lam10710 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14174, i64* %eptr14173                                                 ; store fptr
  %arg8507 = ptrtoint i64* %cloptr14172 to i64                                       ; closure cast; i64* -> i64
  %rva10064 = add i64 0, 0                                                           ; quoted ()
  %rva10063 = call i64 @prim_cons(i64 %wtE$vs, i64 %rva10064)                        ; call prim_cons
  %rva10062 = call i64 @prim_cons(i64 %a7093, i64 %rva10063)                         ; call prim_cons
  %rva10061 = call i64 @prim_cons(i64 %arg8507, i64 %rva10062)                       ; call prim_cons
  %rva10060 = call i64 @prim_cons(i64 %arg8508, i64 %rva10061)                       ; call prim_cons
  %cloptr14175 = inttoptr i64 %hte$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14175)                                        ; assert function application
  %i0ptr14176 = getelementptr inbounds i64, i64* %cloptr14175, i64 0                 ; &cloptr14175[0]
  %f14178 = load i64, i64* %i0ptr14176, align 8                                      ; load; *i0ptr14176
  %fptr14177 = inttoptr i64 %f14178 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14177(i64 %hte$_37foldr, i64 %rva10060)             ; tail call
  ret void
}


define void @lam10714(i64 %env10715, i64 %rvp10047) {
  %envptr14179 = inttoptr i64 %env10715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14180 = getelementptr inbounds i64, i64* %envptr14179, i64 4                ; &envptr14179[4]
  %pr5$f = load i64, i64* %envptr14180, align 8                                      ; load; *envptr14180
  %envptr14181 = inttoptr i64 %env10715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14182 = getelementptr inbounds i64, i64* %envptr14181, i64 3                ; &envptr14181[3]
  %DKu$lsts_43 = load i64, i64* %envptr14182, align 8                                ; load; *envptr14182
  %envptr14183 = inttoptr i64 %env10715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14184 = getelementptr inbounds i64, i64* %envptr14183, i64 2                ; &envptr14183[2]
  %g6s$_37foldl = load i64, i64* %envptr14184, align 8                               ; load; *envptr14184
  %envptr14185 = inttoptr i64 %env10715 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14186 = getelementptr inbounds i64, i64* %envptr14185, i64 1                ; &envptr14185[1]
  %cont7425 = load i64, i64* %envptr14186, align 8                                   ; load; *envptr14186
  %_957434 = call i64 @prim_car(i64 %rvp10047)                                       ; call prim_car
  %rvp10045 = call i64 @prim_cdr(i64 %rvp10047)                                      ; call prim_cdr
  %a7094 = call i64 @prim_car(i64 %rvp10045)                                         ; call prim_car
  %na10038 = call i64 @prim_cdr(i64 %rvp10045)                                       ; call prim_cdr
  %cloptr14187 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr14189 = getelementptr inbounds i64, i64* %cloptr14187, i64 1                  ; &eptr14189[1]
  %eptr14190 = getelementptr inbounds i64, i64* %cloptr14187, i64 2                  ; &eptr14190[2]
  %eptr14191 = getelementptr inbounds i64, i64* %cloptr14187, i64 3                  ; &eptr14191[3]
  %eptr14192 = getelementptr inbounds i64, i64* %cloptr14187, i64 4                  ; &eptr14192[4]
  store i64 %cont7425, i64* %eptr14189                                               ; *eptr14189 = %cont7425
  store i64 %g6s$_37foldl, i64* %eptr14190                                           ; *eptr14190 = %g6s$_37foldl
  store i64 %DKu$lsts_43, i64* %eptr14191                                            ; *eptr14191 = %DKu$lsts_43
  store i64 %pr5$f, i64* %eptr14192                                                  ; *eptr14192 = %pr5$f
  %eptr14188 = getelementptr inbounds i64, i64* %cloptr14187, i64 0                  ; &cloptr14187[0]
  %f14193 = ptrtoint void(i64,i64)* @lam10712 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14193, i64* %eptr14188                                                 ; store fptr
  %arg8511 = ptrtoint i64* %cloptr14187 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7435 = call i64 @prim_cons(i64 %arg8511, i64 %a7094)                     ; call prim_cons
  %cloptr14194 = inttoptr i64 %pr5$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14194)                                        ; assert function application
  %i0ptr14195 = getelementptr inbounds i64, i64* %cloptr14194, i64 0                 ; &cloptr14194[0]
  %f14197 = load i64, i64* %i0ptr14195, align 8                                      ; load; *i0ptr14195
  %fptr14196 = inttoptr i64 %f14197 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14196(i64 %pr5$f, i64 %cps_45lst7435)               ; tail call
  ret void
}


define void @lam10712(i64 %env10713, i64 %rvp10043) {
  %envptr14198 = inttoptr i64 %env10713 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14199 = getelementptr inbounds i64, i64* %envptr14198, i64 4                ; &envptr14198[4]
  %pr5$f = load i64, i64* %envptr14199, align 8                                      ; load; *envptr14199
  %envptr14200 = inttoptr i64 %env10713 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14201 = getelementptr inbounds i64, i64* %envptr14200, i64 3                ; &envptr14200[3]
  %DKu$lsts_43 = load i64, i64* %envptr14201, align 8                                ; load; *envptr14201
  %envptr14202 = inttoptr i64 %env10713 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14203 = getelementptr inbounds i64, i64* %envptr14202, i64 2                ; &envptr14202[2]
  %g6s$_37foldl = load i64, i64* %envptr14203, align 8                               ; load; *envptr14203
  %envptr14204 = inttoptr i64 %env10713 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14205 = getelementptr inbounds i64, i64* %envptr14204, i64 1                ; &envptr14204[1]
  %cont7425 = load i64, i64* %envptr14205, align 8                                   ; load; *envptr14205
  %_957432 = call i64 @prim_car(i64 %rvp10043)                                       ; call prim_car
  %rvp10041 = call i64 @prim_cdr(i64 %rvp10043)                                      ; call prim_cdr
  %lUe$acc_43 = call i64 @prim_car(i64 %rvp10041)                                    ; call prim_car
  %na10040 = call i64 @prim_cdr(i64 %rvp10041)                                       ; call prim_cdr
  %a7095 = call i64 @prim_cons(i64 %lUe$acc_43, i64 %DKu$lsts_43)                    ; call prim_cons
  %a7096 = call i64 @prim_cons(i64 %pr5$f, i64 %a7095)                               ; call prim_cons
  %cps_45lst7433 = call i64 @prim_cons(i64 %cont7425, i64 %a7096)                    ; call prim_cons
  %cloptr14206 = inttoptr i64 %g6s$_37foldl to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14206)                                        ; assert function application
  %i0ptr14207 = getelementptr inbounds i64, i64* %cloptr14206, i64 0                 ; &cloptr14206[0]
  %f14209 = load i64, i64* %i0ptr14207, align 8                                      ; load; *i0ptr14207
  %fptr14208 = inttoptr i64 %f14209 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14208(i64 %g6s$_37foldl, i64 %cps_45lst7433)        ; tail call
  ret void
}


define void @lam10710(i64 %env10711, i64 %rvp10058) {
  %cont7436 = call i64 @prim_car(i64 %rvp10058)                                      ; call prim_car
  %rvp10056 = call i64 @prim_cdr(i64 %rvp10058)                                      ; call prim_cdr
  %bk1$a = call i64 @prim_car(i64 %rvp10056)                                         ; call prim_car
  %rvp10054 = call i64 @prim_cdr(i64 %rvp10056)                                      ; call prim_cdr
  %szi$b = call i64 @prim_car(i64 %rvp10054)                                         ; call prim_car
  %na10050 = call i64 @prim_cdr(i64 %rvp10054)                                       ; call prim_cdr
  %retprim7437 = call i64 @prim_cons(i64 %bk1$a, i64 %szi$b)                         ; call prim_cons
  %arg8521 = add i64 0, 0                                                            ; quoted ()
  %rva10053 = add i64 0, 0                                                           ; quoted ()
  %rva10052 = call i64 @prim_cons(i64 %retprim7437, i64 %rva10053)                   ; call prim_cons
  %rva10051 = call i64 @prim_cons(i64 %arg8521, i64 %rva10052)                       ; call prim_cons
  %cloptr14210 = inttoptr i64 %cont7436 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14210)                                        ; assert function application
  %i0ptr14211 = getelementptr inbounds i64, i64* %cloptr14210, i64 0                 ; &cloptr14210[0]
  %f14213 = load i64, i64* %i0ptr14211, align 8                                      ; load; *i0ptr14211
  %fptr14212 = inttoptr i64 %f14213 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14212(i64 %cont7436, i64 %rva10051)                 ; tail call
  ret void
}


define void @lam10705(i64 %env10706, i64 %rvp10076) {
  %cont7438 = call i64 @prim_car(i64 %rvp10076)                                      ; call prim_car
  %rvp10074 = call i64 @prim_cdr(i64 %rvp10076)                                      ; call prim_cdr
  %OdE$x = call i64 @prim_car(i64 %rvp10074)                                         ; call prim_car
  %na10070 = call i64 @prim_cdr(i64 %rvp10074)                                       ; call prim_cdr
  %retprim7439 = call i64 @prim_car(i64 %OdE$x)                                      ; call prim_car
  %arg8525 = add i64 0, 0                                                            ; quoted ()
  %rva10073 = add i64 0, 0                                                           ; quoted ()
  %rva10072 = call i64 @prim_cons(i64 %retprim7439, i64 %rva10073)                   ; call prim_cons
  %rva10071 = call i64 @prim_cons(i64 %arg8525, i64 %rva10072)                       ; call prim_cons
  %cloptr14214 = inttoptr i64 %cont7438 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14214)                                        ; assert function application
  %i0ptr14215 = getelementptr inbounds i64, i64* %cloptr14214, i64 0                 ; &cloptr14214[0]
  %f14217 = load i64, i64* %i0ptr14215, align 8                                      ; load; *i0ptr14215
  %fptr14216 = inttoptr i64 %f14217 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14216(i64 %cont7438, i64 %rva10071)                 ; tail call
  ret void
}


define void @lam10700(i64 %env10701, i64 %rvp10093) {
  %cont7440 = call i64 @prim_car(i64 %rvp10093)                                      ; call prim_car
  %rvp10091 = call i64 @prim_cdr(i64 %rvp10093)                                      ; call prim_cdr
  %eb6$x = call i64 @prim_car(i64 %rvp10091)                                         ; call prim_car
  %na10087 = call i64 @prim_cdr(i64 %rvp10091)                                       ; call prim_cdr
  %retprim7441 = call i64 @prim_cdr(i64 %eb6$x)                                      ; call prim_cdr
  %arg8529 = add i64 0, 0                                                            ; quoted ()
  %rva10090 = add i64 0, 0                                                           ; quoted ()
  %rva10089 = call i64 @prim_cons(i64 %retprim7441, i64 %rva10090)                   ; call prim_cons
  %rva10088 = call i64 @prim_cons(i64 %arg8529, i64 %rva10089)                       ; call prim_cons
  %cloptr14218 = inttoptr i64 %cont7440 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14218)                                        ; assert function application
  %i0ptr14219 = getelementptr inbounds i64, i64* %cloptr14218, i64 0                 ; &cloptr14218[0]
  %f14221 = load i64, i64* %i0ptr14219, align 8                                      ; load; *i0ptr14219
  %fptr14220 = inttoptr i64 %f14221 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14220(i64 %cont7440, i64 %rva10088)                 ; tail call
  ret void
}


define void @lam10693(i64 %env10694, i64 %rvp10115) {
  %cont7442 = call i64 @prim_car(i64 %rvp10115)                                      ; call prim_car
  %rvp10113 = call i64 @prim_cdr(i64 %rvp10115)                                      ; call prim_cdr
  %G6J$lst = call i64 @prim_car(i64 %rvp10113)                                       ; call prim_car
  %rvp10111 = call i64 @prim_cdr(i64 %rvp10113)                                      ; call prim_cdr
  %TVY$b = call i64 @prim_car(i64 %rvp10111)                                         ; call prim_car
  %na10104 = call i64 @prim_cdr(i64 %rvp10111)                                       ; call prim_cdr
  %cmp14222 = icmp eq i64 %TVY$b, 15                                                 ; false?
  br i1 %cmp14222, label %else14224, label %then14223                                ; if

then14223:
  %arg8532 = add i64 0, 0                                                            ; quoted ()
  %rva10107 = add i64 0, 0                                                           ; quoted ()
  %rva10106 = call i64 @prim_cons(i64 %TVY$b, i64 %rva10107)                         ; call prim_cons
  %rva10105 = call i64 @prim_cons(i64 %arg8532, i64 %rva10106)                       ; call prim_cons
  %cloptr14225 = inttoptr i64 %cont7442 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14225)                                        ; assert function application
  %i0ptr14226 = getelementptr inbounds i64, i64* %cloptr14225, i64 0                 ; &cloptr14225[0]
  %f14228 = load i64, i64* %i0ptr14226, align 8                                      ; load; *i0ptr14226
  %fptr14227 = inttoptr i64 %f14228 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14227(i64 %cont7442, i64 %rva10105)                 ; tail call
  ret void

else14224:
  %retprim7443 = call i64 @prim_null_63(i64 %G6J$lst)                                ; call prim_null_63
  %arg8536 = add i64 0, 0                                                            ; quoted ()
  %rva10110 = add i64 0, 0                                                           ; quoted ()
  %rva10109 = call i64 @prim_cons(i64 %retprim7443, i64 %rva10110)                   ; call prim_cons
  %rva10108 = call i64 @prim_cons(i64 %arg8536, i64 %rva10109)                       ; call prim_cons
  %cloptr14229 = inttoptr i64 %cont7442 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14229)                                        ; assert function application
  %i0ptr14230 = getelementptr inbounds i64, i64* %cloptr14229, i64 0                 ; &cloptr14229[0]
  %f14232 = load i64, i64* %i0ptr14230, align 8                                      ; load; *i0ptr14230
  %fptr14231 = inttoptr i64 %f14232 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14231(i64 %cont7442, i64 %rva10108)                 ; tail call
  ret void
}


define void @lam10679(i64 %env10680, i64 %rvp10269) {
  %envptr14233 = inttoptr i64 %env10680 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14234 = getelementptr inbounds i64, i64* %envptr14233, i64 2                ; &envptr14233[2]
  %Khi$_37map1 = load i64, i64* %envptr14234, align 8                                ; load; *envptr14234
  %envptr14235 = inttoptr i64 %env10680 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14236 = getelementptr inbounds i64, i64* %envptr14235, i64 1                ; &envptr14235[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14236, align 8                              ; load; *envptr14236
  %cont7446 = call i64 @prim_car(i64 %rvp10269)                                      ; call prim_car
  %rvp10267 = call i64 @prim_cdr(i64 %rvp10269)                                      ; call prim_cdr
  %wMf$_37foldr = call i64 @prim_car(i64 %rvp10267)                                  ; call prim_car
  %na10151 = call i64 @prim_cdr(i64 %rvp10267)                                       ; call prim_cdr
  %arg8539 = add i64 0, 0                                                            ; quoted ()
  %cloptr14237 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr14239 = getelementptr inbounds i64, i64* %cloptr14237, i64 1                  ; &eptr14239[1]
  %eptr14240 = getelementptr inbounds i64, i64* %cloptr14237, i64 2                  ; &eptr14240[2]
  %eptr14241 = getelementptr inbounds i64, i64* %cloptr14237, i64 3                  ; &eptr14241[3]
  store i64 %kPq$_37foldr1, i64* %eptr14239                                          ; *eptr14239 = %kPq$_37foldr1
  store i64 %wMf$_37foldr, i64* %eptr14240                                           ; *eptr14240 = %wMf$_37foldr
  store i64 %Khi$_37map1, i64* %eptr14241                                            ; *eptr14241 = %Khi$_37map1
  %eptr14238 = getelementptr inbounds i64, i64* %cloptr14237, i64 0                  ; &cloptr14237[0]
  %f14242 = ptrtoint void(i64,i64)* @lam10676 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14242, i64* %eptr14238                                                 ; store fptr
  %arg8538 = ptrtoint i64* %cloptr14237 to i64                                       ; closure cast; i64* -> i64
  %rva10266 = add i64 0, 0                                                           ; quoted ()
  %rva10265 = call i64 @prim_cons(i64 %arg8538, i64 %rva10266)                       ; call prim_cons
  %rva10264 = call i64 @prim_cons(i64 %arg8539, i64 %rva10265)                       ; call prim_cons
  %cloptr14243 = inttoptr i64 %cont7446 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14243)                                        ; assert function application
  %i0ptr14244 = getelementptr inbounds i64, i64* %cloptr14243, i64 0                 ; &cloptr14243[0]
  %f14246 = load i64, i64* %i0ptr14244, align 8                                      ; load; *i0ptr14244
  %fptr14245 = inttoptr i64 %f14246 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14245(i64 %cont7446, i64 %rva10264)                 ; tail call
  ret void
}


define void @lam10676(i64 %env10677, i64 %VpM$args7448) {
  %envptr14247 = inttoptr i64 %env10677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14248 = getelementptr inbounds i64, i64* %envptr14247, i64 3                ; &envptr14247[3]
  %Khi$_37map1 = load i64, i64* %envptr14248, align 8                                ; load; *envptr14248
  %envptr14249 = inttoptr i64 %env10677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14250 = getelementptr inbounds i64, i64* %envptr14249, i64 2                ; &envptr14249[2]
  %wMf$_37foldr = load i64, i64* %envptr14250, align 8                               ; load; *envptr14250
  %envptr14251 = inttoptr i64 %env10677 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14252 = getelementptr inbounds i64, i64* %envptr14251, i64 1                ; &envptr14251[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14252, align 8                              ; load; *envptr14252
  %cont7447 = call i64 @prim_car(i64 %VpM$args7448)                                  ; call prim_car
  %VpM$args = call i64 @prim_cdr(i64 %VpM$args7448)                                  ; call prim_cdr
  %qMe$f = call i64 @prim_car(i64 %VpM$args)                                         ; call prim_car
  %a7076 = call i64 @prim_cdr(i64 %VpM$args)                                         ; call prim_cdr
  %retprim7467 = call i64 @prim_car(i64 %a7076)                                      ; call prim_car
  %cloptr14253 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr14255 = getelementptr inbounds i64, i64* %cloptr14253, i64 1                  ; &eptr14255[1]
  %eptr14256 = getelementptr inbounds i64, i64* %cloptr14253, i64 2                  ; &eptr14256[2]
  %eptr14257 = getelementptr inbounds i64, i64* %cloptr14253, i64 3                  ; &eptr14257[3]
  %eptr14258 = getelementptr inbounds i64, i64* %cloptr14253, i64 4                  ; &eptr14258[4]
  %eptr14259 = getelementptr inbounds i64, i64* %cloptr14253, i64 5                  ; &eptr14259[5]
  %eptr14260 = getelementptr inbounds i64, i64* %cloptr14253, i64 6                  ; &eptr14260[6]
  store i64 %kPq$_37foldr1, i64* %eptr14255                                          ; *eptr14255 = %kPq$_37foldr1
  store i64 %wMf$_37foldr, i64* %eptr14256                                           ; *eptr14256 = %wMf$_37foldr
  store i64 %cont7447, i64* %eptr14257                                               ; *eptr14257 = %cont7447
  store i64 %qMe$f, i64* %eptr14258                                                  ; *eptr14258 = %qMe$f
  store i64 %Khi$_37map1, i64* %eptr14259                                            ; *eptr14259 = %Khi$_37map1
  store i64 %VpM$args, i64* %eptr14260                                               ; *eptr14260 = %VpM$args
  %eptr14254 = getelementptr inbounds i64, i64* %cloptr14253, i64 0                  ; &cloptr14253[0]
  %f14261 = ptrtoint void(i64,i64)* @lam10674 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14261, i64* %eptr14254                                                 ; store fptr
  %arg8548 = ptrtoint i64* %cloptr14253 to i64                                       ; closure cast; i64* -> i64
  %arg8547 = add i64 0, 0                                                            ; quoted ()
  %rva10263 = add i64 0, 0                                                           ; quoted ()
  %rva10262 = call i64 @prim_cons(i64 %retprim7467, i64 %rva10263)                   ; call prim_cons
  %rva10261 = call i64 @prim_cons(i64 %arg8547, i64 %rva10262)                       ; call prim_cons
  %cloptr14262 = inttoptr i64 %arg8548 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14262)                                        ; assert function application
  %i0ptr14263 = getelementptr inbounds i64, i64* %cloptr14262, i64 0                 ; &cloptr14262[0]
  %f14265 = load i64, i64* %i0ptr14263, align 8                                      ; load; *i0ptr14263
  %fptr14264 = inttoptr i64 %f14265 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14264(i64 %arg8548, i64 %rva10261)                  ; tail call
  ret void
}


define void @lam10674(i64 %env10675, i64 %rvp10259) {
  %envptr14266 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14267 = getelementptr inbounds i64, i64* %envptr14266, i64 6                ; &envptr14266[6]
  %VpM$args = load i64, i64* %envptr14267, align 8                                   ; load; *envptr14267
  %envptr14268 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14269 = getelementptr inbounds i64, i64* %envptr14268, i64 5                ; &envptr14268[5]
  %Khi$_37map1 = load i64, i64* %envptr14269, align 8                                ; load; *envptr14269
  %envptr14270 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14271 = getelementptr inbounds i64, i64* %envptr14270, i64 4                ; &envptr14270[4]
  %qMe$f = load i64, i64* %envptr14271, align 8                                      ; load; *envptr14271
  %envptr14272 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14273 = getelementptr inbounds i64, i64* %envptr14272, i64 3                ; &envptr14272[3]
  %cont7447 = load i64, i64* %envptr14273, align 8                                   ; load; *envptr14273
  %envptr14274 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14275 = getelementptr inbounds i64, i64* %envptr14274, i64 2                ; &envptr14274[2]
  %wMf$_37foldr = load i64, i64* %envptr14275, align 8                               ; load; *envptr14275
  %envptr14276 = inttoptr i64 %env10675 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14277 = getelementptr inbounds i64, i64* %envptr14276, i64 1                ; &envptr14276[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14277, align 8                              ; load; *envptr14277
  %_957449 = call i64 @prim_car(i64 %rvp10259)                                       ; call prim_car
  %rvp10257 = call i64 @prim_cdr(i64 %rvp10259)                                      ; call prim_cdr
  %vIN$acc = call i64 @prim_car(i64 %rvp10257)                                       ; call prim_car
  %na10153 = call i64 @prim_cdr(i64 %rvp10257)                                       ; call prim_cdr
  %a7077 = call i64 @prim_cdr(i64 %VpM$args)                                         ; call prim_cdr
  %retprim7466 = call i64 @prim_cdr(i64 %a7077)                                      ; call prim_cdr
  %cloptr14278 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr14280 = getelementptr inbounds i64, i64* %cloptr14278, i64 1                  ; &eptr14280[1]
  %eptr14281 = getelementptr inbounds i64, i64* %cloptr14278, i64 2                  ; &eptr14281[2]
  %eptr14282 = getelementptr inbounds i64, i64* %cloptr14278, i64 3                  ; &eptr14282[3]
  %eptr14283 = getelementptr inbounds i64, i64* %cloptr14278, i64 4                  ; &eptr14283[4]
  %eptr14284 = getelementptr inbounds i64, i64* %cloptr14278, i64 5                  ; &eptr14284[5]
  %eptr14285 = getelementptr inbounds i64, i64* %cloptr14278, i64 6                  ; &eptr14285[6]
  store i64 %kPq$_37foldr1, i64* %eptr14280                                          ; *eptr14280 = %kPq$_37foldr1
  store i64 %wMf$_37foldr, i64* %eptr14281                                           ; *eptr14281 = %wMf$_37foldr
  store i64 %cont7447, i64* %eptr14282                                               ; *eptr14282 = %cont7447
  store i64 %qMe$f, i64* %eptr14283                                                  ; *eptr14283 = %qMe$f
  store i64 %Khi$_37map1, i64* %eptr14284                                            ; *eptr14284 = %Khi$_37map1
  store i64 %vIN$acc, i64* %eptr14285                                                ; *eptr14285 = %vIN$acc
  %eptr14279 = getelementptr inbounds i64, i64* %cloptr14278, i64 0                  ; &cloptr14278[0]
  %f14286 = ptrtoint void(i64,i64)* @lam10672 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14286, i64* %eptr14279                                                 ; store fptr
  %arg8553 = ptrtoint i64* %cloptr14278 to i64                                       ; closure cast; i64* -> i64
  %arg8552 = add i64 0, 0                                                            ; quoted ()
  %rva10256 = add i64 0, 0                                                           ; quoted ()
  %rva10255 = call i64 @prim_cons(i64 %retprim7466, i64 %rva10256)                   ; call prim_cons
  %rva10254 = call i64 @prim_cons(i64 %arg8552, i64 %rva10255)                       ; call prim_cons
  %cloptr14287 = inttoptr i64 %arg8553 to i64*                                       ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14287)                                        ; assert function application
  %i0ptr14288 = getelementptr inbounds i64, i64* %cloptr14287, i64 0                 ; &cloptr14287[0]
  %f14290 = load i64, i64* %i0ptr14288, align 8                                      ; load; *i0ptr14288
  %fptr14289 = inttoptr i64 %f14290 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14289(i64 %arg8553, i64 %rva10254)                  ; tail call
  ret void
}


define void @lam10672(i64 %env10673, i64 %rvp10252) {
  %envptr14291 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14292 = getelementptr inbounds i64, i64* %envptr14291, i64 6                ; &envptr14291[6]
  %vIN$acc = load i64, i64* %envptr14292, align 8                                    ; load; *envptr14292
  %envptr14293 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14294 = getelementptr inbounds i64, i64* %envptr14293, i64 5                ; &envptr14293[5]
  %Khi$_37map1 = load i64, i64* %envptr14294, align 8                                ; load; *envptr14294
  %envptr14295 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14296 = getelementptr inbounds i64, i64* %envptr14295, i64 4                ; &envptr14295[4]
  %qMe$f = load i64, i64* %envptr14296, align 8                                      ; load; *envptr14296
  %envptr14297 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14298 = getelementptr inbounds i64, i64* %envptr14297, i64 3                ; &envptr14297[3]
  %cont7447 = load i64, i64* %envptr14298, align 8                                   ; load; *envptr14298
  %envptr14299 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14300 = getelementptr inbounds i64, i64* %envptr14299, i64 2                ; &envptr14299[2]
  %wMf$_37foldr = load i64, i64* %envptr14300, align 8                               ; load; *envptr14300
  %envptr14301 = inttoptr i64 %env10673 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14302 = getelementptr inbounds i64, i64* %envptr14301, i64 1                ; &envptr14301[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14302, align 8                              ; load; *envptr14302
  %_957450 = call i64 @prim_car(i64 %rvp10252)                                       ; call prim_car
  %rvp10250 = call i64 @prim_cdr(i64 %rvp10252)                                      ; call prim_cdr
  %F3K$lsts = call i64 @prim_car(i64 %rvp10250)                                      ; call prim_car
  %na10155 = call i64 @prim_cdr(i64 %rvp10250)                                       ; call prim_cdr
  %cloptr14303 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr14305 = getelementptr inbounds i64, i64* %cloptr14303, i64 1                  ; &eptr14305[1]
  %eptr14306 = getelementptr inbounds i64, i64* %cloptr14303, i64 2                  ; &eptr14306[2]
  %eptr14307 = getelementptr inbounds i64, i64* %cloptr14303, i64 3                  ; &eptr14307[3]
  %eptr14308 = getelementptr inbounds i64, i64* %cloptr14303, i64 4                  ; &eptr14308[4]
  %eptr14309 = getelementptr inbounds i64, i64* %cloptr14303, i64 5                  ; &eptr14309[5]
  %eptr14310 = getelementptr inbounds i64, i64* %cloptr14303, i64 6                  ; &eptr14310[6]
  %eptr14311 = getelementptr inbounds i64, i64* %cloptr14303, i64 7                  ; &eptr14311[7]
  store i64 %kPq$_37foldr1, i64* %eptr14305                                          ; *eptr14305 = %kPq$_37foldr1
  store i64 %wMf$_37foldr, i64* %eptr14306                                           ; *eptr14306 = %wMf$_37foldr
  store i64 %cont7447, i64* %eptr14307                                               ; *eptr14307 = %cont7447
  store i64 %qMe$f, i64* %eptr14308                                                  ; *eptr14308 = %qMe$f
  store i64 %F3K$lsts, i64* %eptr14309                                               ; *eptr14309 = %F3K$lsts
  store i64 %Khi$_37map1, i64* %eptr14310                                            ; *eptr14310 = %Khi$_37map1
  store i64 %vIN$acc, i64* %eptr14311                                                ; *eptr14311 = %vIN$acc
  %eptr14304 = getelementptr inbounds i64, i64* %cloptr14303, i64 0                  ; &cloptr14303[0]
  %f14312 = ptrtoint void(i64,i64)* @lam10670 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14312, i64* %eptr14304                                                 ; store fptr
  %arg8557 = ptrtoint i64* %cloptr14303 to i64                                       ; closure cast; i64* -> i64
  %cloptr14313 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14314 = getelementptr inbounds i64, i64* %cloptr14313, i64 0                  ; &cloptr14313[0]
  %f14315 = ptrtoint void(i64,i64)* @lam10642 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14315, i64* %eptr14314                                                 ; store fptr
  %arg8556 = ptrtoint i64* %cloptr14313 to i64                                       ; closure cast; i64* -> i64
  %arg8555 = call i64 @const_init_false()                                            ; quoted #f
  %rva10249 = add i64 0, 0                                                           ; quoted ()
  %rva10248 = call i64 @prim_cons(i64 %F3K$lsts, i64 %rva10249)                      ; call prim_cons
  %rva10247 = call i64 @prim_cons(i64 %arg8555, i64 %rva10248)                       ; call prim_cons
  %rva10246 = call i64 @prim_cons(i64 %arg8556, i64 %rva10247)                       ; call prim_cons
  %rva10245 = call i64 @prim_cons(i64 %arg8557, i64 %rva10246)                       ; call prim_cons
  %cloptr14316 = inttoptr i64 %kPq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14316)                                        ; assert function application
  %i0ptr14317 = getelementptr inbounds i64, i64* %cloptr14316, i64 0                 ; &cloptr14316[0]
  %f14319 = load i64, i64* %i0ptr14317, align 8                                      ; load; *i0ptr14317
  %fptr14318 = inttoptr i64 %f14319 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14318(i64 %kPq$_37foldr1, i64 %rva10245)            ; tail call
  ret void
}


define void @lam10670(i64 %env10671, i64 %rvp10229) {
  %envptr14320 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14321 = getelementptr inbounds i64, i64* %envptr14320, i64 7                ; &envptr14320[7]
  %vIN$acc = load i64, i64* %envptr14321, align 8                                    ; load; *envptr14321
  %envptr14322 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14323 = getelementptr inbounds i64, i64* %envptr14322, i64 6                ; &envptr14322[6]
  %Khi$_37map1 = load i64, i64* %envptr14323, align 8                                ; load; *envptr14323
  %envptr14324 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14325 = getelementptr inbounds i64, i64* %envptr14324, i64 5                ; &envptr14324[5]
  %F3K$lsts = load i64, i64* %envptr14325, align 8                                   ; load; *envptr14325
  %envptr14326 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14327 = getelementptr inbounds i64, i64* %envptr14326, i64 4                ; &envptr14326[4]
  %qMe$f = load i64, i64* %envptr14327, align 8                                      ; load; *envptr14327
  %envptr14328 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14329 = getelementptr inbounds i64, i64* %envptr14328, i64 3                ; &envptr14328[3]
  %cont7447 = load i64, i64* %envptr14329, align 8                                   ; load; *envptr14329
  %envptr14330 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14331 = getelementptr inbounds i64, i64* %envptr14330, i64 2                ; &envptr14330[2]
  %wMf$_37foldr = load i64, i64* %envptr14331, align 8                               ; load; *envptr14331
  %envptr14332 = inttoptr i64 %env10671 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14333 = getelementptr inbounds i64, i64* %envptr14332, i64 1                ; &envptr14332[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14333, align 8                              ; load; *envptr14333
  %_957451 = call i64 @prim_car(i64 %rvp10229)                                       ; call prim_car
  %rvp10227 = call i64 @prim_cdr(i64 %rvp10229)                                      ; call prim_cdr
  %a7078 = call i64 @prim_car(i64 %rvp10227)                                         ; call prim_car
  %na10157 = call i64 @prim_cdr(i64 %rvp10227)                                       ; call prim_cdr
  %cmp14334 = icmp eq i64 %a7078, 15                                                 ; false?
  br i1 %cmp14334, label %else14336, label %then14335                                ; if

then14335:
  %arg8560 = add i64 0, 0                                                            ; quoted ()
  %rva10160 = add i64 0, 0                                                           ; quoted ()
  %rva10159 = call i64 @prim_cons(i64 %vIN$acc, i64 %rva10160)                       ; call prim_cons
  %rva10158 = call i64 @prim_cons(i64 %arg8560, i64 %rva10159)                       ; call prim_cons
  %cloptr14337 = inttoptr i64 %cont7447 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14337)                                        ; assert function application
  %i0ptr14338 = getelementptr inbounds i64, i64* %cloptr14337, i64 0                 ; &cloptr14337[0]
  %f14340 = load i64, i64* %i0ptr14338, align 8                                      ; load; *i0ptr14338
  %fptr14339 = inttoptr i64 %f14340 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14339(i64 %cont7447, i64 %rva10158)                 ; tail call
  ret void

else14336:
  %cloptr14341 = call i64* @alloc(i64 64)                                            ; malloc
  %eptr14343 = getelementptr inbounds i64, i64* %cloptr14341, i64 1                  ; &eptr14343[1]
  %eptr14344 = getelementptr inbounds i64, i64* %cloptr14341, i64 2                  ; &eptr14344[2]
  %eptr14345 = getelementptr inbounds i64, i64* %cloptr14341, i64 3                  ; &eptr14345[3]
  %eptr14346 = getelementptr inbounds i64, i64* %cloptr14341, i64 4                  ; &eptr14346[4]
  %eptr14347 = getelementptr inbounds i64, i64* %cloptr14341, i64 5                  ; &eptr14347[5]
  %eptr14348 = getelementptr inbounds i64, i64* %cloptr14341, i64 6                  ; &eptr14348[6]
  %eptr14349 = getelementptr inbounds i64, i64* %cloptr14341, i64 7                  ; &eptr14349[7]
  store i64 %kPq$_37foldr1, i64* %eptr14343                                          ; *eptr14343 = %kPq$_37foldr1
  store i64 %wMf$_37foldr, i64* %eptr14344                                           ; *eptr14344 = %wMf$_37foldr
  store i64 %cont7447, i64* %eptr14345                                               ; *eptr14345 = %cont7447
  store i64 %qMe$f, i64* %eptr14346                                                  ; *eptr14346 = %qMe$f
  store i64 %F3K$lsts, i64* %eptr14347                                               ; *eptr14347 = %F3K$lsts
  store i64 %Khi$_37map1, i64* %eptr14348                                            ; *eptr14348 = %Khi$_37map1
  store i64 %vIN$acc, i64* %eptr14349                                                ; *eptr14349 = %vIN$acc
  %eptr14342 = getelementptr inbounds i64, i64* %cloptr14341, i64 0                  ; &cloptr14341[0]
  %f14350 = ptrtoint void(i64,i64)* @lam10668 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14350, i64* %eptr14342                                                 ; store fptr
  %arg8564 = ptrtoint i64* %cloptr14341 to i64                                       ; closure cast; i64* -> i64
  %cloptr14351 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14352 = getelementptr inbounds i64, i64* %cloptr14351, i64 0                  ; &cloptr14351[0]
  %f14353 = ptrtoint void(i64,i64)* @lam10649 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14353, i64* %eptr14352                                                 ; store fptr
  %arg8563 = ptrtoint i64* %cloptr14351 to i64                                       ; closure cast; i64* -> i64
  %rva10226 = add i64 0, 0                                                           ; quoted ()
  %rva10225 = call i64 @prim_cons(i64 %F3K$lsts, i64 %rva10226)                      ; call prim_cons
  %rva10224 = call i64 @prim_cons(i64 %arg8563, i64 %rva10225)                       ; call prim_cons
  %rva10223 = call i64 @prim_cons(i64 %arg8564, i64 %rva10224)                       ; call prim_cons
  %cloptr14354 = inttoptr i64 %Khi$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14354)                                        ; assert function application
  %i0ptr14355 = getelementptr inbounds i64, i64* %cloptr14354, i64 0                 ; &cloptr14354[0]
  %f14357 = load i64, i64* %i0ptr14355, align 8                                      ; load; *i0ptr14355
  %fptr14356 = inttoptr i64 %f14357 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14356(i64 %Khi$_37map1, i64 %rva10223)              ; tail call
  ret void
}


define void @lam10668(i64 %env10669, i64 %rvp10212) {
  %envptr14358 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14359 = getelementptr inbounds i64, i64* %envptr14358, i64 7                ; &envptr14358[7]
  %vIN$acc = load i64, i64* %envptr14359, align 8                                    ; load; *envptr14359
  %envptr14360 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14361 = getelementptr inbounds i64, i64* %envptr14360, i64 6                ; &envptr14360[6]
  %Khi$_37map1 = load i64, i64* %envptr14361, align 8                                ; load; *envptr14361
  %envptr14362 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14363 = getelementptr inbounds i64, i64* %envptr14362, i64 5                ; &envptr14362[5]
  %F3K$lsts = load i64, i64* %envptr14363, align 8                                   ; load; *envptr14363
  %envptr14364 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14365 = getelementptr inbounds i64, i64* %envptr14364, i64 4                ; &envptr14364[4]
  %qMe$f = load i64, i64* %envptr14365, align 8                                      ; load; *envptr14365
  %envptr14366 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14367 = getelementptr inbounds i64, i64* %envptr14366, i64 3                ; &envptr14366[3]
  %cont7447 = load i64, i64* %envptr14367, align 8                                   ; load; *envptr14367
  %envptr14368 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14369 = getelementptr inbounds i64, i64* %envptr14368, i64 2                ; &envptr14368[2]
  %wMf$_37foldr = load i64, i64* %envptr14369, align 8                               ; load; *envptr14369
  %envptr14370 = inttoptr i64 %env10669 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14371 = getelementptr inbounds i64, i64* %envptr14370, i64 1                ; &envptr14370[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14371, align 8                              ; load; *envptr14371
  %_957452 = call i64 @prim_car(i64 %rvp10212)                                       ; call prim_car
  %rvp10210 = call i64 @prim_cdr(i64 %rvp10212)                                      ; call prim_cdr
  %iHX$lsts_43 = call i64 @prim_car(i64 %rvp10210)                                   ; call prim_car
  %na10162 = call i64 @prim_cdr(i64 %rvp10210)                                       ; call prim_cdr
  %cloptr14372 = call i64* @alloc(i64 56)                                            ; malloc
  %eptr14374 = getelementptr inbounds i64, i64* %cloptr14372, i64 1                  ; &eptr14374[1]
  %eptr14375 = getelementptr inbounds i64, i64* %cloptr14372, i64 2                  ; &eptr14375[2]
  %eptr14376 = getelementptr inbounds i64, i64* %cloptr14372, i64 3                  ; &eptr14376[3]
  %eptr14377 = getelementptr inbounds i64, i64* %cloptr14372, i64 4                  ; &eptr14377[4]
  %eptr14378 = getelementptr inbounds i64, i64* %cloptr14372, i64 5                  ; &eptr14378[5]
  %eptr14379 = getelementptr inbounds i64, i64* %cloptr14372, i64 6                  ; &eptr14379[6]
  store i64 %kPq$_37foldr1, i64* %eptr14374                                          ; *eptr14374 = %kPq$_37foldr1
  store i64 %wMf$_37foldr, i64* %eptr14375                                           ; *eptr14375 = %wMf$_37foldr
  store i64 %cont7447, i64* %eptr14376                                               ; *eptr14376 = %cont7447
  store i64 %qMe$f, i64* %eptr14377                                                  ; *eptr14377 = %qMe$f
  store i64 %iHX$lsts_43, i64* %eptr14378                                            ; *eptr14378 = %iHX$lsts_43
  store i64 %vIN$acc, i64* %eptr14379                                                ; *eptr14379 = %vIN$acc
  %eptr14373 = getelementptr inbounds i64, i64* %cloptr14372, i64 0                  ; &cloptr14372[0]
  %f14380 = ptrtoint void(i64,i64)* @lam10666 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14380, i64* %eptr14373                                                 ; store fptr
  %arg8568 = ptrtoint i64* %cloptr14372 to i64                                       ; closure cast; i64* -> i64
  %cloptr14381 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14382 = getelementptr inbounds i64, i64* %cloptr14381, i64 0                  ; &cloptr14381[0]
  %f14383 = ptrtoint void(i64,i64)* @lam10654 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14383, i64* %eptr14382                                                 ; store fptr
  %arg8567 = ptrtoint i64* %cloptr14381 to i64                                       ; closure cast; i64* -> i64
  %rva10209 = add i64 0, 0                                                           ; quoted ()
  %rva10208 = call i64 @prim_cons(i64 %F3K$lsts, i64 %rva10209)                      ; call prim_cons
  %rva10207 = call i64 @prim_cons(i64 %arg8567, i64 %rva10208)                       ; call prim_cons
  %rva10206 = call i64 @prim_cons(i64 %arg8568, i64 %rva10207)                       ; call prim_cons
  %cloptr14384 = inttoptr i64 %Khi$_37map1 to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14384)                                        ; assert function application
  %i0ptr14385 = getelementptr inbounds i64, i64* %cloptr14384, i64 0                 ; &cloptr14384[0]
  %f14387 = load i64, i64* %i0ptr14385, align 8                                      ; load; *i0ptr14385
  %fptr14386 = inttoptr i64 %f14387 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14386(i64 %Khi$_37map1, i64 %rva10206)              ; tail call
  ret void
}


define void @lam10666(i64 %env10667, i64 %rvp10195) {
  %envptr14388 = inttoptr i64 %env10667 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14389 = getelementptr inbounds i64, i64* %envptr14388, i64 6                ; &envptr14388[6]
  %vIN$acc = load i64, i64* %envptr14389, align 8                                    ; load; *envptr14389
  %envptr14390 = inttoptr i64 %env10667 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14391 = getelementptr inbounds i64, i64* %envptr14390, i64 5                ; &envptr14390[5]
  %iHX$lsts_43 = load i64, i64* %envptr14391, align 8                                ; load; *envptr14391
  %envptr14392 = inttoptr i64 %env10667 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14393 = getelementptr inbounds i64, i64* %envptr14392, i64 4                ; &envptr14392[4]
  %qMe$f = load i64, i64* %envptr14393, align 8                                      ; load; *envptr14393
  %envptr14394 = inttoptr i64 %env10667 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14395 = getelementptr inbounds i64, i64* %envptr14394, i64 3                ; &envptr14394[3]
  %cont7447 = load i64, i64* %envptr14395, align 8                                   ; load; *envptr14395
  %envptr14396 = inttoptr i64 %env10667 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14397 = getelementptr inbounds i64, i64* %envptr14396, i64 2                ; &envptr14396[2]
  %wMf$_37foldr = load i64, i64* %envptr14397, align 8                               ; load; *envptr14397
  %envptr14398 = inttoptr i64 %env10667 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14399 = getelementptr inbounds i64, i64* %envptr14398, i64 1                ; &envptr14398[1]
  %kPq$_37foldr1 = load i64, i64* %envptr14399, align 8                              ; load; *envptr14399
  %_957453 = call i64 @prim_car(i64 %rvp10195)                                       ; call prim_car
  %rvp10193 = call i64 @prim_cdr(i64 %rvp10195)                                      ; call prim_cdr
  %qKw$vs = call i64 @prim_car(i64 %rvp10193)                                        ; call prim_car
  %na10164 = call i64 @prim_cdr(i64 %rvp10193)                                       ; call prim_cdr
  %a7079 = call i64 @prim_cons(i64 %vIN$acc, i64 %iHX$lsts_43)                       ; call prim_cons
  %a7080 = call i64 @prim_cons(i64 %qMe$f, i64 %a7079)                               ; call prim_cons
  %cloptr14400 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr14402 = getelementptr inbounds i64, i64* %cloptr14400, i64 1                  ; &eptr14402[1]
  %eptr14403 = getelementptr inbounds i64, i64* %cloptr14400, i64 2                  ; &eptr14403[2]
  %eptr14404 = getelementptr inbounds i64, i64* %cloptr14400, i64 3                  ; &eptr14404[3]
  %eptr14405 = getelementptr inbounds i64, i64* %cloptr14400, i64 4                  ; &eptr14405[4]
  store i64 %qKw$vs, i64* %eptr14402                                                 ; *eptr14402 = %qKw$vs
  store i64 %kPq$_37foldr1, i64* %eptr14403                                          ; *eptr14403 = %kPq$_37foldr1
  store i64 %cont7447, i64* %eptr14404                                               ; *eptr14404 = %cont7447
  store i64 %qMe$f, i64* %eptr14405                                                  ; *eptr14405 = %qMe$f
  %eptr14401 = getelementptr inbounds i64, i64* %cloptr14400, i64 0                  ; &cloptr14400[0]
  %f14406 = ptrtoint void(i64,i64)* @lam10664 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14406, i64* %eptr14401                                                 ; store fptr
  %arg8575 = ptrtoint i64* %cloptr14400 to i64                                       ; closure cast; i64* -> i64
  %cps_45lst7459 = call i64 @prim_cons(i64 %arg8575, i64 %a7080)                     ; call prim_cons
  %cloptr14407 = inttoptr i64 %wMf$_37foldr to i64*                                  ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14407)                                        ; assert function application
  %i0ptr14408 = getelementptr inbounds i64, i64* %cloptr14407, i64 0                 ; &cloptr14407[0]
  %f14410 = load i64, i64* %i0ptr14408, align 8                                      ; load; *i0ptr14408
  %fptr14409 = inttoptr i64 %f14410 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14409(i64 %wMf$_37foldr, i64 %cps_45lst7459)        ; tail call
  ret void
}


define void @lam10664(i64 %env10665, i64 %rvp10191) {
  %envptr14411 = inttoptr i64 %env10665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14412 = getelementptr inbounds i64, i64* %envptr14411, i64 4                ; &envptr14411[4]
  %qMe$f = load i64, i64* %envptr14412, align 8                                      ; load; *envptr14412
  %envptr14413 = inttoptr i64 %env10665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14414 = getelementptr inbounds i64, i64* %envptr14413, i64 3                ; &envptr14413[3]
  %cont7447 = load i64, i64* %envptr14414, align 8                                   ; load; *envptr14414
  %envptr14415 = inttoptr i64 %env10665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14416 = getelementptr inbounds i64, i64* %envptr14415, i64 2                ; &envptr14415[2]
  %kPq$_37foldr1 = load i64, i64* %envptr14416, align 8                              ; load; *envptr14416
  %envptr14417 = inttoptr i64 %env10665 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14418 = getelementptr inbounds i64, i64* %envptr14417, i64 1                ; &envptr14417[1]
  %qKw$vs = load i64, i64* %envptr14418, align 8                                     ; load; *envptr14418
  %_957454 = call i64 @prim_car(i64 %rvp10191)                                       ; call prim_car
  %rvp10189 = call i64 @prim_cdr(i64 %rvp10191)                                      ; call prim_cdr
  %a7081 = call i64 @prim_car(i64 %rvp10189)                                         ; call prim_car
  %na10166 = call i64 @prim_cdr(i64 %rvp10189)                                       ; call prim_cdr
  %arg8576 = add i64 0, 0                                                            ; quoted ()
  %a7082 = call i64 @prim_cons(i64 %a7081, i64 %arg8576)                             ; call prim_cons
  %cloptr14419 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr14421 = getelementptr inbounds i64, i64* %cloptr14419, i64 1                  ; &eptr14421[1]
  %eptr14422 = getelementptr inbounds i64, i64* %cloptr14419, i64 2                  ; &eptr14422[2]
  store i64 %cont7447, i64* %eptr14421                                               ; *eptr14421 = %cont7447
  store i64 %qMe$f, i64* %eptr14422                                                  ; *eptr14422 = %qMe$f
  %eptr14420 = getelementptr inbounds i64, i64* %cloptr14419, i64 0                  ; &cloptr14419[0]
  %f14423 = ptrtoint void(i64,i64)* @lam10661 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14423, i64* %eptr14420                                                 ; store fptr
  %arg8581 = ptrtoint i64* %cloptr14419 to i64                                       ; closure cast; i64* -> i64
  %cloptr14424 = call i64* @alloc(i64 8)                                             ; malloc
  %eptr14425 = getelementptr inbounds i64, i64* %cloptr14424, i64 0                  ; &cloptr14424[0]
  %f14426 = ptrtoint void(i64,i64)* @lam10659 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14426, i64* %eptr14425                                                 ; store fptr
  %arg8580 = ptrtoint i64* %cloptr14424 to i64                                       ; closure cast; i64* -> i64
  %rva10188 = add i64 0, 0                                                           ; quoted ()
  %rva10187 = call i64 @prim_cons(i64 %qKw$vs, i64 %rva10188)                        ; call prim_cons
  %rva10186 = call i64 @prim_cons(i64 %a7082, i64 %rva10187)                         ; call prim_cons
  %rva10185 = call i64 @prim_cons(i64 %arg8580, i64 %rva10186)                       ; call prim_cons
  %rva10184 = call i64 @prim_cons(i64 %arg8581, i64 %rva10185)                       ; call prim_cons
  %cloptr14427 = inttoptr i64 %kPq$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14427)                                        ; assert function application
  %i0ptr14428 = getelementptr inbounds i64, i64* %cloptr14427, i64 0                 ; &cloptr14427[0]
  %f14430 = load i64, i64* %i0ptr14428, align 8                                      ; load; *i0ptr14428
  %fptr14429 = inttoptr i64 %f14430 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14429(i64 %kPq$_37foldr1, i64 %rva10184)            ; tail call
  ret void
}


define void @lam10661(i64 %env10662, i64 %rvp10171) {
  %envptr14431 = inttoptr i64 %env10662 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14432 = getelementptr inbounds i64, i64* %envptr14431, i64 2                ; &envptr14431[2]
  %qMe$f = load i64, i64* %envptr14432, align 8                                      ; load; *envptr14432
  %envptr14433 = inttoptr i64 %env10662 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14434 = getelementptr inbounds i64, i64* %envptr14433, i64 1                ; &envptr14433[1]
  %cont7447 = load i64, i64* %envptr14434, align 8                                   ; load; *envptr14434
  %_957455 = call i64 @prim_car(i64 %rvp10171)                                       ; call prim_car
  %rvp10169 = call i64 @prim_cdr(i64 %rvp10171)                                      ; call prim_cdr
  %a7083 = call i64 @prim_car(i64 %rvp10169)                                         ; call prim_car
  %na10168 = call i64 @prim_cdr(i64 %rvp10169)                                       ; call prim_cdr
  %cps_45lst7456 = call i64 @prim_cons(i64 %cont7447, i64 %a7083)                    ; call prim_cons
  %cloptr14435 = inttoptr i64 %qMe$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14435)                                        ; assert function application
  %i0ptr14436 = getelementptr inbounds i64, i64* %cloptr14435, i64 0                 ; &cloptr14435[0]
  %f14438 = load i64, i64* %i0ptr14436, align 8                                      ; load; *i0ptr14436
  %fptr14437 = inttoptr i64 %f14438 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14437(i64 %qMe$f, i64 %cps_45lst7456)               ; tail call
  ret void
}


define void @lam10659(i64 %env10660, i64 %rvp10182) {
  %cont7457 = call i64 @prim_car(i64 %rvp10182)                                      ; call prim_car
  %rvp10180 = call i64 @prim_cdr(i64 %rvp10182)                                      ; call prim_cdr
  %Sbt$a = call i64 @prim_car(i64 %rvp10180)                                         ; call prim_car
  %rvp10178 = call i64 @prim_cdr(i64 %rvp10180)                                      ; call prim_cdr
  %XSL$b = call i64 @prim_car(i64 %rvp10178)                                         ; call prim_car
  %na10174 = call i64 @prim_cdr(i64 %rvp10178)                                       ; call prim_cdr
  %retprim7458 = call i64 @prim_cons(i64 %Sbt$a, i64 %XSL$b)                         ; call prim_cons
  %arg8588 = add i64 0, 0                                                            ; quoted ()
  %rva10177 = add i64 0, 0                                                           ; quoted ()
  %rva10176 = call i64 @prim_cons(i64 %retprim7458, i64 %rva10177)                   ; call prim_cons
  %rva10175 = call i64 @prim_cons(i64 %arg8588, i64 %rva10176)                       ; call prim_cons
  %cloptr14439 = inttoptr i64 %cont7457 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14439)                                        ; assert function application
  %i0ptr14440 = getelementptr inbounds i64, i64* %cloptr14439, i64 0                 ; &cloptr14439[0]
  %f14442 = load i64, i64* %i0ptr14440, align 8                                      ; load; *i0ptr14440
  %fptr14441 = inttoptr i64 %f14442 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14441(i64 %cont7457, i64 %rva10175)                 ; tail call
  ret void
}


define void @lam10654(i64 %env10655, i64 %rvp10204) {
  %cont7460 = call i64 @prim_car(i64 %rvp10204)                                      ; call prim_car
  %rvp10202 = call i64 @prim_cdr(i64 %rvp10204)                                      ; call prim_cdr
  %DGf$x = call i64 @prim_car(i64 %rvp10202)                                         ; call prim_car
  %na10198 = call i64 @prim_cdr(i64 %rvp10202)                                       ; call prim_cdr
  %retprim7461 = call i64 @prim_car(i64 %DGf$x)                                      ; call prim_car
  %arg8592 = add i64 0, 0                                                            ; quoted ()
  %rva10201 = add i64 0, 0                                                           ; quoted ()
  %rva10200 = call i64 @prim_cons(i64 %retprim7461, i64 %rva10201)                   ; call prim_cons
  %rva10199 = call i64 @prim_cons(i64 %arg8592, i64 %rva10200)                       ; call prim_cons
  %cloptr14443 = inttoptr i64 %cont7460 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14443)                                        ; assert function application
  %i0ptr14444 = getelementptr inbounds i64, i64* %cloptr14443, i64 0                 ; &cloptr14443[0]
  %f14446 = load i64, i64* %i0ptr14444, align 8                                      ; load; *i0ptr14444
  %fptr14445 = inttoptr i64 %f14446 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14445(i64 %cont7460, i64 %rva10199)                 ; tail call
  ret void
}


define void @lam10649(i64 %env10650, i64 %rvp10221) {
  %cont7462 = call i64 @prim_car(i64 %rvp10221)                                      ; call prim_car
  %rvp10219 = call i64 @prim_cdr(i64 %rvp10221)                                      ; call prim_cdr
  %JC6$x = call i64 @prim_car(i64 %rvp10219)                                         ; call prim_car
  %na10215 = call i64 @prim_cdr(i64 %rvp10219)                                       ; call prim_cdr
  %retprim7463 = call i64 @prim_cdr(i64 %JC6$x)                                      ; call prim_cdr
  %arg8596 = add i64 0, 0                                                            ; quoted ()
  %rva10218 = add i64 0, 0                                                           ; quoted ()
  %rva10217 = call i64 @prim_cons(i64 %retprim7463, i64 %rva10218)                   ; call prim_cons
  %rva10216 = call i64 @prim_cons(i64 %arg8596, i64 %rva10217)                       ; call prim_cons
  %cloptr14447 = inttoptr i64 %cont7462 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14447)                                        ; assert function application
  %i0ptr14448 = getelementptr inbounds i64, i64* %cloptr14447, i64 0                 ; &cloptr14447[0]
  %f14450 = load i64, i64* %i0ptr14448, align 8                                      ; load; *i0ptr14448
  %fptr14449 = inttoptr i64 %f14450 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14449(i64 %cont7462, i64 %rva10216)                 ; tail call
  ret void
}


define void @lam10642(i64 %env10643, i64 %rvp10243) {
  %cont7464 = call i64 @prim_car(i64 %rvp10243)                                      ; call prim_car
  %rvp10241 = call i64 @prim_cdr(i64 %rvp10243)                                      ; call prim_cdr
  %Gcv$lst = call i64 @prim_car(i64 %rvp10241)                                       ; call prim_car
  %rvp10239 = call i64 @prim_cdr(i64 %rvp10241)                                      ; call prim_cdr
  %aEo$b = call i64 @prim_car(i64 %rvp10239)                                         ; call prim_car
  %na10232 = call i64 @prim_cdr(i64 %rvp10239)                                       ; call prim_cdr
  %cmp14451 = icmp eq i64 %aEo$b, 15                                                 ; false?
  br i1 %cmp14451, label %else14453, label %then14452                                ; if

then14452:
  %arg8599 = add i64 0, 0                                                            ; quoted ()
  %rva10235 = add i64 0, 0                                                           ; quoted ()
  %rva10234 = call i64 @prim_cons(i64 %aEo$b, i64 %rva10235)                         ; call prim_cons
  %rva10233 = call i64 @prim_cons(i64 %arg8599, i64 %rva10234)                       ; call prim_cons
  %cloptr14454 = inttoptr i64 %cont7464 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14454)                                        ; assert function application
  %i0ptr14455 = getelementptr inbounds i64, i64* %cloptr14454, i64 0                 ; &cloptr14454[0]
  %f14457 = load i64, i64* %i0ptr14455, align 8                                      ; load; *i0ptr14455
  %fptr14456 = inttoptr i64 %f14457 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14456(i64 %cont7464, i64 %rva10233)                 ; tail call
  ret void

else14453:
  %retprim7465 = call i64 @prim_null_63(i64 %Gcv$lst)                                ; call prim_null_63
  %arg8603 = add i64 0, 0                                                            ; quoted ()
  %rva10238 = add i64 0, 0                                                           ; quoted ()
  %rva10237 = call i64 @prim_cons(i64 %retprim7465, i64 %rva10238)                   ; call prim_cons
  %rva10236 = call i64 @prim_cons(i64 %arg8603, i64 %rva10237)                       ; call prim_cons
  %cloptr14458 = inttoptr i64 %cont7464 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14458)                                        ; assert function application
  %i0ptr14459 = getelementptr inbounds i64, i64* %cloptr14458, i64 0                 ; &cloptr14458[0]
  %f14461 = load i64, i64* %i0ptr14459, align 8                                      ; load; *i0ptr14459
  %fptr14460 = inttoptr i64 %f14461 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14460(i64 %cont7464, i64 %rva10236)                 ; tail call
  ret void
}


define void @lam10628(i64 %env10629, i64 %rvp10313) {
  %cont7468 = call i64 @prim_car(i64 %rvp10313)                                      ; call prim_car
  %rvp10311 = call i64 @prim_cdr(i64 %rvp10313)                                      ; call prim_cdr
  %nKT$_37foldl1 = call i64 @prim_car(i64 %rvp10311)                                 ; call prim_car
  %na10279 = call i64 @prim_cdr(i64 %rvp10311)                                       ; call prim_cdr
  %arg8606 = add i64 0, 0                                                            ; quoted ()
  %cloptr14462 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr14464 = getelementptr inbounds i64, i64* %cloptr14462, i64 1                  ; &eptr14464[1]
  store i64 %nKT$_37foldl1, i64* %eptr14464                                          ; *eptr14464 = %nKT$_37foldl1
  %eptr14463 = getelementptr inbounds i64, i64* %cloptr14462, i64 0                  ; &cloptr14462[0]
  %f14465 = ptrtoint void(i64,i64)* @lam10625 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14465, i64* %eptr14463                                                 ; store fptr
  %arg8605 = ptrtoint i64* %cloptr14462 to i64                                       ; closure cast; i64* -> i64
  %rva10310 = add i64 0, 0                                                           ; quoted ()
  %rva10309 = call i64 @prim_cons(i64 %arg8605, i64 %rva10310)                       ; call prim_cons
  %rva10308 = call i64 @prim_cons(i64 %arg8606, i64 %rva10309)                       ; call prim_cons
  %cloptr14466 = inttoptr i64 %cont7468 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14466)                                        ; assert function application
  %i0ptr14467 = getelementptr inbounds i64, i64* %cloptr14466, i64 0                 ; &cloptr14466[0]
  %f14469 = load i64, i64* %i0ptr14467, align 8                                      ; load; *i0ptr14467
  %fptr14468 = inttoptr i64 %f14469 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14468(i64 %cont7468, i64 %rva10308)                 ; tail call
  ret void
}


define void @lam10625(i64 %env10626, i64 %rvp10306) {
  %envptr14470 = inttoptr i64 %env10626 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14471 = getelementptr inbounds i64, i64* %envptr14470, i64 1                ; &envptr14470[1]
  %nKT$_37foldl1 = load i64, i64* %envptr14471, align 8                              ; load; *envptr14471
  %cont7469 = call i64 @prim_car(i64 %rvp10306)                                      ; call prim_car
  %rvp10304 = call i64 @prim_cdr(i64 %rvp10306)                                      ; call prim_cdr
  %tG5$f = call i64 @prim_car(i64 %rvp10304)                                         ; call prim_car
  %rvp10302 = call i64 @prim_cdr(i64 %rvp10304)                                      ; call prim_cdr
  %iBp$acc = call i64 @prim_car(i64 %rvp10302)                                       ; call prim_car
  %rvp10300 = call i64 @prim_cdr(i64 %rvp10302)                                      ; call prim_cdr
  %p5O$lst = call i64 @prim_car(i64 %rvp10300)                                       ; call prim_car
  %na10281 = call i64 @prim_cdr(i64 %rvp10300)                                       ; call prim_cdr
  %a7070 = call i64 @prim_null_63(i64 %p5O$lst)                                      ; call prim_null_63
  %cmp14472 = icmp eq i64 %a7070, 15                                                 ; false?
  br i1 %cmp14472, label %else14474, label %then14473                                ; if

then14473:
  %arg8610 = add i64 0, 0                                                            ; quoted ()
  %rva10284 = add i64 0, 0                                                           ; quoted ()
  %rva10283 = call i64 @prim_cons(i64 %iBp$acc, i64 %rva10284)                       ; call prim_cons
  %rva10282 = call i64 @prim_cons(i64 %arg8610, i64 %rva10283)                       ; call prim_cons
  %cloptr14475 = inttoptr i64 %cont7469 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14475)                                        ; assert function application
  %i0ptr14476 = getelementptr inbounds i64, i64* %cloptr14475, i64 0                 ; &cloptr14475[0]
  %f14478 = load i64, i64* %i0ptr14476, align 8                                      ; load; *i0ptr14476
  %fptr14477 = inttoptr i64 %f14478 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14477(i64 %cont7469, i64 %rva10282)                 ; tail call
  ret void

else14474:
  %a7071 = call i64 @prim_car(i64 %p5O$lst)                                          ; call prim_car
  %cloptr14479 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr14481 = getelementptr inbounds i64, i64* %cloptr14479, i64 1                  ; &eptr14481[1]
  %eptr14482 = getelementptr inbounds i64, i64* %cloptr14479, i64 2                  ; &eptr14482[2]
  %eptr14483 = getelementptr inbounds i64, i64* %cloptr14479, i64 3                  ; &eptr14483[3]
  %eptr14484 = getelementptr inbounds i64, i64* %cloptr14479, i64 4                  ; &eptr14484[4]
  store i64 %nKT$_37foldl1, i64* %eptr14481                                          ; *eptr14481 = %nKT$_37foldl1
  store i64 %tG5$f, i64* %eptr14482                                                  ; *eptr14482 = %tG5$f
  store i64 %p5O$lst, i64* %eptr14483                                                ; *eptr14483 = %p5O$lst
  store i64 %cont7469, i64* %eptr14484                                               ; *eptr14484 = %cont7469
  %eptr14480 = getelementptr inbounds i64, i64* %cloptr14479, i64 0                  ; &cloptr14479[0]
  %f14485 = ptrtoint void(i64,i64)* @lam10623 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14485, i64* %eptr14480                                                 ; store fptr
  %arg8615 = ptrtoint i64* %cloptr14479 to i64                                       ; closure cast; i64* -> i64
  %rva10299 = add i64 0, 0                                                           ; quoted ()
  %rva10298 = call i64 @prim_cons(i64 %iBp$acc, i64 %rva10299)                       ; call prim_cons
  %rva10297 = call i64 @prim_cons(i64 %a7071, i64 %rva10298)                         ; call prim_cons
  %rva10296 = call i64 @prim_cons(i64 %arg8615, i64 %rva10297)                       ; call prim_cons
  %cloptr14486 = inttoptr i64 %tG5$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14486)                                        ; assert function application
  %i0ptr14487 = getelementptr inbounds i64, i64* %cloptr14486, i64 0                 ; &cloptr14486[0]
  %f14489 = load i64, i64* %i0ptr14487, align 8                                      ; load; *i0ptr14487
  %fptr14488 = inttoptr i64 %f14489 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14488(i64 %tG5$f, i64 %rva10296)                    ; tail call
  ret void
}


define void @lam10623(i64 %env10624, i64 %rvp10294) {
  %envptr14490 = inttoptr i64 %env10624 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14491 = getelementptr inbounds i64, i64* %envptr14490, i64 4                ; &envptr14490[4]
  %cont7469 = load i64, i64* %envptr14491, align 8                                   ; load; *envptr14491
  %envptr14492 = inttoptr i64 %env10624 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14493 = getelementptr inbounds i64, i64* %envptr14492, i64 3                ; &envptr14492[3]
  %p5O$lst = load i64, i64* %envptr14493, align 8                                    ; load; *envptr14493
  %envptr14494 = inttoptr i64 %env10624 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14495 = getelementptr inbounds i64, i64* %envptr14494, i64 2                ; &envptr14494[2]
  %tG5$f = load i64, i64* %envptr14495, align 8                                      ; load; *envptr14495
  %envptr14496 = inttoptr i64 %env10624 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14497 = getelementptr inbounds i64, i64* %envptr14496, i64 1                ; &envptr14496[1]
  %nKT$_37foldl1 = load i64, i64* %envptr14497, align 8                              ; load; *envptr14497
  %_957470 = call i64 @prim_car(i64 %rvp10294)                                       ; call prim_car
  %rvp10292 = call i64 @prim_cdr(i64 %rvp10294)                                      ; call prim_cdr
  %a7072 = call i64 @prim_car(i64 %rvp10292)                                         ; call prim_car
  %na10286 = call i64 @prim_cdr(i64 %rvp10292)                                       ; call prim_cdr
  %a7073 = call i64 @prim_cdr(i64 %p5O$lst)                                          ; call prim_cdr
  %rva10291 = add i64 0, 0                                                           ; quoted ()
  %rva10290 = call i64 @prim_cons(i64 %a7073, i64 %rva10291)                         ; call prim_cons
  %rva10289 = call i64 @prim_cons(i64 %a7072, i64 %rva10290)                         ; call prim_cons
  %rva10288 = call i64 @prim_cons(i64 %tG5$f, i64 %rva10289)                         ; call prim_cons
  %rva10287 = call i64 @prim_cons(i64 %cont7469, i64 %rva10288)                      ; call prim_cons
  %cloptr14498 = inttoptr i64 %nKT$_37foldl1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14498)                                        ; assert function application
  %i0ptr14499 = getelementptr inbounds i64, i64* %cloptr14498, i64 0                 ; &cloptr14498[0]
  %f14501 = load i64, i64* %i0ptr14499, align 8                                      ; load; *i0ptr14499
  %fptr14500 = inttoptr i64 %f14501 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14500(i64 %nKT$_37foldl1, i64 %rva10287)            ; tail call
  ret void
}


define void @lam10615(i64 %env10616, i64 %rvp10350) {
  %cont7471 = call i64 @prim_car(i64 %rvp10350)                                      ; call prim_car
  %rvp10348 = call i64 @prim_cdr(i64 %rvp10350)                                      ; call prim_cdr
  %Ily$_37length = call i64 @prim_car(i64 %rvp10348)                                 ; call prim_car
  %na10323 = call i64 @prim_cdr(i64 %rvp10348)                                       ; call prim_cdr
  %arg8624 = add i64 0, 0                                                            ; quoted ()
  %cloptr14502 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr14504 = getelementptr inbounds i64, i64* %cloptr14502, i64 1                  ; &eptr14504[1]
  store i64 %Ily$_37length, i64* %eptr14504                                          ; *eptr14504 = %Ily$_37length
  %eptr14503 = getelementptr inbounds i64, i64* %cloptr14502, i64 0                  ; &cloptr14502[0]
  %f14505 = ptrtoint void(i64,i64)* @lam10612 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14505, i64* %eptr14503                                                 ; store fptr
  %arg8623 = ptrtoint i64* %cloptr14502 to i64                                       ; closure cast; i64* -> i64
  %rva10347 = add i64 0, 0                                                           ; quoted ()
  %rva10346 = call i64 @prim_cons(i64 %arg8623, i64 %rva10347)                       ; call prim_cons
  %rva10345 = call i64 @prim_cons(i64 %arg8624, i64 %rva10346)                       ; call prim_cons
  %cloptr14506 = inttoptr i64 %cont7471 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14506)                                        ; assert function application
  %i0ptr14507 = getelementptr inbounds i64, i64* %cloptr14506, i64 0                 ; &cloptr14506[0]
  %f14509 = load i64, i64* %i0ptr14507, align 8                                      ; load; *i0ptr14507
  %fptr14508 = inttoptr i64 %f14509 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14508(i64 %cont7471, i64 %rva10345)                 ; tail call
  ret void
}


define void @lam10612(i64 %env10613, i64 %rvp10343) {
  %envptr14510 = inttoptr i64 %env10613 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14511 = getelementptr inbounds i64, i64* %envptr14510, i64 1                ; &envptr14510[1]
  %Ily$_37length = load i64, i64* %envptr14511, align 8                              ; load; *envptr14511
  %cont7472 = call i64 @prim_car(i64 %rvp10343)                                      ; call prim_car
  %rvp10341 = call i64 @prim_cdr(i64 %rvp10343)                                      ; call prim_cdr
  %KZD$lst = call i64 @prim_car(i64 %rvp10341)                                       ; call prim_car
  %na10325 = call i64 @prim_cdr(i64 %rvp10341)                                       ; call prim_cdr
  %a7067 = call i64 @prim_null_63(i64 %KZD$lst)                                      ; call prim_null_63
  %cmp14512 = icmp eq i64 %a7067, 15                                                 ; false?
  br i1 %cmp14512, label %else14514, label %then14513                                ; if

then14513:
  %arg8628 = add i64 0, 0                                                            ; quoted ()
  %arg8627 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %rva10328 = add i64 0, 0                                                           ; quoted ()
  %rva10327 = call i64 @prim_cons(i64 %arg8627, i64 %rva10328)                       ; call prim_cons
  %rva10326 = call i64 @prim_cons(i64 %arg8628, i64 %rva10327)                       ; call prim_cons
  %cloptr14515 = inttoptr i64 %cont7472 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14515)                                        ; assert function application
  %i0ptr14516 = getelementptr inbounds i64, i64* %cloptr14515, i64 0                 ; &cloptr14515[0]
  %f14518 = load i64, i64* %i0ptr14516, align 8                                      ; load; *i0ptr14516
  %fptr14517 = inttoptr i64 %f14518 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14517(i64 %cont7472, i64 %rva10326)                 ; tail call
  ret void

else14514:
  %a7068 = call i64 @prim_cdr(i64 %KZD$lst)                                          ; call prim_cdr
  %cloptr14519 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr14521 = getelementptr inbounds i64, i64* %cloptr14519, i64 1                  ; &eptr14521[1]
  store i64 %cont7472, i64* %eptr14521                                               ; *eptr14521 = %cont7472
  %eptr14520 = getelementptr inbounds i64, i64* %cloptr14519, i64 0                  ; &cloptr14519[0]
  %f14522 = ptrtoint void(i64,i64)* @lam10610 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14522, i64* %eptr14520                                                 ; store fptr
  %arg8632 = ptrtoint i64* %cloptr14519 to i64                                       ; closure cast; i64* -> i64
  %rva10340 = add i64 0, 0                                                           ; quoted ()
  %rva10339 = call i64 @prim_cons(i64 %a7068, i64 %rva10340)                         ; call prim_cons
  %rva10338 = call i64 @prim_cons(i64 %arg8632, i64 %rva10339)                       ; call prim_cons
  %cloptr14523 = inttoptr i64 %Ily$_37length to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14523)                                        ; assert function application
  %i0ptr14524 = getelementptr inbounds i64, i64* %cloptr14523, i64 0                 ; &cloptr14523[0]
  %f14526 = load i64, i64* %i0ptr14524, align 8                                      ; load; *i0ptr14524
  %fptr14525 = inttoptr i64 %f14526 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14525(i64 %Ily$_37length, i64 %rva10338)            ; tail call
  ret void
}


define void @lam10610(i64 %env10611, i64 %rvp10336) {
  %envptr14527 = inttoptr i64 %env10611 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14528 = getelementptr inbounds i64, i64* %envptr14527, i64 1                ; &envptr14527[1]
  %cont7472 = load i64, i64* %envptr14528, align 8                                   ; load; *envptr14528
  %_957473 = call i64 @prim_car(i64 %rvp10336)                                       ; call prim_car
  %rvp10334 = call i64 @prim_cdr(i64 %rvp10336)                                      ; call prim_cdr
  %a7069 = call i64 @prim_car(i64 %rvp10334)                                         ; call prim_car
  %na10330 = call i64 @prim_cdr(i64 %rvp10334)                                       ; call prim_cdr
  %arg8635 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %retprim7474 = call i64 @prim__43(i64 %arg8635, i64 %a7069)                        ; call prim__43
  %arg8637 = add i64 0, 0                                                            ; quoted ()
  %rva10333 = add i64 0, 0                                                           ; quoted ()
  %rva10332 = call i64 @prim_cons(i64 %retprim7474, i64 %rva10333)                   ; call prim_cons
  %rva10331 = call i64 @prim_cons(i64 %arg8637, i64 %rva10332)                       ; call prim_cons
  %cloptr14529 = inttoptr i64 %cont7472 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14529)                                        ; assert function application
  %i0ptr14530 = getelementptr inbounds i64, i64* %cloptr14529, i64 0                 ; &cloptr14529[0]
  %f14532 = load i64, i64* %i0ptr14530, align 8                                      ; load; *i0ptr14530
  %fptr14531 = inttoptr i64 %f14532 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14531(i64 %cont7472, i64 %rva10331)                 ; tail call
  ret void
}


define void @lam10599(i64 %env10600, i64 %rvp10393) {
  %cont7475 = call i64 @prim_car(i64 %rvp10393)                                      ; call prim_car
  %rvp10391 = call i64 @prim_cdr(i64 %rvp10393)                                      ; call prim_cdr
  %ReW$_37take = call i64 @prim_car(i64 %rvp10391)                                   ; call prim_car
  %na10360 = call i64 @prim_cdr(i64 %rvp10391)                                       ; call prim_cdr
  %arg8640 = add i64 0, 0                                                            ; quoted ()
  %cloptr14533 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr14535 = getelementptr inbounds i64, i64* %cloptr14533, i64 1                  ; &eptr14535[1]
  store i64 %ReW$_37take, i64* %eptr14535                                            ; *eptr14535 = %ReW$_37take
  %eptr14534 = getelementptr inbounds i64, i64* %cloptr14533, i64 0                  ; &cloptr14533[0]
  %f14536 = ptrtoint void(i64,i64)* @lam10596 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14536, i64* %eptr14534                                                 ; store fptr
  %arg8639 = ptrtoint i64* %cloptr14533 to i64                                       ; closure cast; i64* -> i64
  %rva10390 = add i64 0, 0                                                           ; quoted ()
  %rva10389 = call i64 @prim_cons(i64 %arg8639, i64 %rva10390)                       ; call prim_cons
  %rva10388 = call i64 @prim_cons(i64 %arg8640, i64 %rva10389)                       ; call prim_cons
  %cloptr14537 = inttoptr i64 %cont7475 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14537)                                        ; assert function application
  %i0ptr14538 = getelementptr inbounds i64, i64* %cloptr14537, i64 0                 ; &cloptr14537[0]
  %f14540 = load i64, i64* %i0ptr14538, align 8                                      ; load; *i0ptr14538
  %fptr14539 = inttoptr i64 %f14540 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14539(i64 %cont7475, i64 %rva10388)                 ; tail call
  ret void
}


define void @lam10596(i64 %env10597, i64 %rvp10386) {
  %envptr14541 = inttoptr i64 %env10597 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14542 = getelementptr inbounds i64, i64* %envptr14541, i64 1                ; &envptr14541[1]
  %ReW$_37take = load i64, i64* %envptr14542, align 8                                ; load; *envptr14542
  %cont7476 = call i64 @prim_car(i64 %rvp10386)                                      ; call prim_car
  %rvp10384 = call i64 @prim_cdr(i64 %rvp10386)                                      ; call prim_cdr
  %B5i$lst = call i64 @prim_car(i64 %rvp10384)                                       ; call prim_car
  %rvp10382 = call i64 @prim_cdr(i64 %rvp10384)                                      ; call prim_cdr
  %X06$n = call i64 @prim_car(i64 %rvp10382)                                         ; call prim_car
  %na10362 = call i64 @prim_cdr(i64 %rvp10382)                                       ; call prim_cdr
  %arg8642 = call i64 @const_init_int(i64 0)                                         ; quoted int
  %a7061 = call i64 @prim__61(i64 %X06$n, i64 %arg8642)                              ; call prim__61
  %cmp14543 = icmp eq i64 %a7061, 15                                                 ; false?
  br i1 %cmp14543, label %else14545, label %then14544                                ; if

then14544:
  %arg8645 = add i64 0, 0                                                            ; quoted ()
  %arg8644 = add i64 0, 0                                                            ; quoted ()
  %rva10365 = add i64 0, 0                                                           ; quoted ()
  %rva10364 = call i64 @prim_cons(i64 %arg8644, i64 %rva10365)                       ; call prim_cons
  %rva10363 = call i64 @prim_cons(i64 %arg8645, i64 %rva10364)                       ; call prim_cons
  %cloptr14546 = inttoptr i64 %cont7476 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14546)                                        ; assert function application
  %i0ptr14547 = getelementptr inbounds i64, i64* %cloptr14546, i64 0                 ; &cloptr14546[0]
  %f14549 = load i64, i64* %i0ptr14547, align 8                                      ; load; *i0ptr14547
  %fptr14548 = inttoptr i64 %f14549 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14548(i64 %cont7476, i64 %rva10363)                 ; tail call
  ret void

else14545:
  %a7062 = call i64 @prim_null_63(i64 %B5i$lst)                                      ; call prim_null_63
  %cmp14550 = icmp eq i64 %a7062, 15                                                 ; false?
  br i1 %cmp14550, label %else14552, label %then14551                                ; if

then14551:
  %arg8649 = add i64 0, 0                                                            ; quoted ()
  %arg8648 = add i64 0, 0                                                            ; quoted ()
  %rva10368 = add i64 0, 0                                                           ; quoted ()
  %rva10367 = call i64 @prim_cons(i64 %arg8648, i64 %rva10368)                       ; call prim_cons
  %rva10366 = call i64 @prim_cons(i64 %arg8649, i64 %rva10367)                       ; call prim_cons
  %cloptr14553 = inttoptr i64 %cont7476 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14553)                                        ; assert function application
  %i0ptr14554 = getelementptr inbounds i64, i64* %cloptr14553, i64 0                 ; &cloptr14553[0]
  %f14556 = load i64, i64* %i0ptr14554, align 8                                      ; load; *i0ptr14554
  %fptr14555 = inttoptr i64 %f14556 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14555(i64 %cont7476, i64 %rva10366)                 ; tail call
  ret void

else14552:
  %a7063 = call i64 @prim_car(i64 %B5i$lst)                                          ; call prim_car
  %a7064 = call i64 @prim_cdr(i64 %B5i$lst)                                          ; call prim_cdr
  %arg8653 = call i64 @const_init_int(i64 1)                                         ; quoted int
  %a7065 = call i64 @prim__45(i64 %X06$n, i64 %arg8653)                              ; call prim__45
  %cloptr14557 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr14559 = getelementptr inbounds i64, i64* %cloptr14557, i64 1                  ; &eptr14559[1]
  %eptr14560 = getelementptr inbounds i64, i64* %cloptr14557, i64 2                  ; &eptr14560[2]
  store i64 %cont7476, i64* %eptr14559                                               ; *eptr14559 = %cont7476
  store i64 %a7063, i64* %eptr14560                                                  ; *eptr14560 = %a7063
  %eptr14558 = getelementptr inbounds i64, i64* %cloptr14557, i64 0                  ; &cloptr14557[0]
  %f14561 = ptrtoint void(i64,i64)* @lam10592 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14561, i64* %eptr14558                                                 ; store fptr
  %arg8657 = ptrtoint i64* %cloptr14557 to i64                                       ; closure cast; i64* -> i64
  %rva10381 = add i64 0, 0                                                           ; quoted ()
  %rva10380 = call i64 @prim_cons(i64 %a7065, i64 %rva10381)                         ; call prim_cons
  %rva10379 = call i64 @prim_cons(i64 %a7064, i64 %rva10380)                         ; call prim_cons
  %rva10378 = call i64 @prim_cons(i64 %arg8657, i64 %rva10379)                       ; call prim_cons
  %cloptr14562 = inttoptr i64 %ReW$_37take to i64*                                   ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14562)                                        ; assert function application
  %i0ptr14563 = getelementptr inbounds i64, i64* %cloptr14562, i64 0                 ; &cloptr14562[0]
  %f14565 = load i64, i64* %i0ptr14563, align 8                                      ; load; *i0ptr14563
  %fptr14564 = inttoptr i64 %f14565 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14564(i64 %ReW$_37take, i64 %rva10378)              ; tail call
  ret void
}


define void @lam10592(i64 %env10593, i64 %rvp10376) {
  %envptr14566 = inttoptr i64 %env10593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14567 = getelementptr inbounds i64, i64* %envptr14566, i64 2                ; &envptr14566[2]
  %a7063 = load i64, i64* %envptr14567, align 8                                      ; load; *envptr14567
  %envptr14568 = inttoptr i64 %env10593 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14569 = getelementptr inbounds i64, i64* %envptr14568, i64 1                ; &envptr14568[1]
  %cont7476 = load i64, i64* %envptr14569, align 8                                   ; load; *envptr14569
  %_957477 = call i64 @prim_car(i64 %rvp10376)                                       ; call prim_car
  %rvp10374 = call i64 @prim_cdr(i64 %rvp10376)                                      ; call prim_cdr
  %a7066 = call i64 @prim_car(i64 %rvp10374)                                         ; call prim_car
  %na10370 = call i64 @prim_cdr(i64 %rvp10374)                                       ; call prim_cdr
  %retprim7478 = call i64 @prim_cons(i64 %a7063, i64 %a7066)                         ; call prim_cons
  %arg8662 = add i64 0, 0                                                            ; quoted ()
  %rva10373 = add i64 0, 0                                                           ; quoted ()
  %rva10372 = call i64 @prim_cons(i64 %retprim7478, i64 %rva10373)                   ; call prim_cons
  %rva10371 = call i64 @prim_cons(i64 %arg8662, i64 %rva10372)                       ; call prim_cons
  %cloptr14570 = inttoptr i64 %cont7476 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14570)                                        ; assert function application
  %i0ptr14571 = getelementptr inbounds i64, i64* %cloptr14570, i64 0                 ; &cloptr14570[0]
  %f14573 = load i64, i64* %i0ptr14571, align 8                                      ; load; *i0ptr14571
  %fptr14572 = inttoptr i64 %f14573 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14572(i64 %cont7476, i64 %rva10371)                 ; tail call
  ret void
}


define void @lam10579(i64 %env10580, i64 %rvp10442) {
  %cont7479 = call i64 @prim_car(i64 %rvp10442)                                      ; call prim_car
  %rvp10440 = call i64 @prim_cdr(i64 %rvp10442)                                      ; call prim_cdr
  %C26$_37map = call i64 @prim_car(i64 %rvp10440)                                    ; call prim_car
  %na10403 = call i64 @prim_cdr(i64 %rvp10440)                                       ; call prim_cdr
  %arg8665 = add i64 0, 0                                                            ; quoted ()
  %cloptr14574 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr14576 = getelementptr inbounds i64, i64* %cloptr14574, i64 1                  ; &eptr14576[1]
  store i64 %C26$_37map, i64* %eptr14576                                             ; *eptr14576 = %C26$_37map
  %eptr14575 = getelementptr inbounds i64, i64* %cloptr14574, i64 0                  ; &cloptr14574[0]
  %f14577 = ptrtoint void(i64,i64)* @lam10576 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14577, i64* %eptr14575                                                 ; store fptr
  %arg8664 = ptrtoint i64* %cloptr14574 to i64                                       ; closure cast; i64* -> i64
  %rva10439 = add i64 0, 0                                                           ; quoted ()
  %rva10438 = call i64 @prim_cons(i64 %arg8664, i64 %rva10439)                       ; call prim_cons
  %rva10437 = call i64 @prim_cons(i64 %arg8665, i64 %rva10438)                       ; call prim_cons
  %cloptr14578 = inttoptr i64 %cont7479 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14578)                                        ; assert function application
  %i0ptr14579 = getelementptr inbounds i64, i64* %cloptr14578, i64 0                 ; &cloptr14578[0]
  %f14581 = load i64, i64* %i0ptr14579, align 8                                      ; load; *i0ptr14579
  %fptr14580 = inttoptr i64 %f14581 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14580(i64 %cont7479, i64 %rva10437)                 ; tail call
  ret void
}


define void @lam10576(i64 %env10577, i64 %rvp10435) {
  %envptr14582 = inttoptr i64 %env10577 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14583 = getelementptr inbounds i64, i64* %envptr14582, i64 1                ; &envptr14582[1]
  %C26$_37map = load i64, i64* %envptr14583, align 8                                 ; load; *envptr14583
  %cont7480 = call i64 @prim_car(i64 %rvp10435)                                      ; call prim_car
  %rvp10433 = call i64 @prim_cdr(i64 %rvp10435)                                      ; call prim_cdr
  %vgj$f = call i64 @prim_car(i64 %rvp10433)                                         ; call prim_car
  %rvp10431 = call i64 @prim_cdr(i64 %rvp10433)                                      ; call prim_cdr
  %Noo$lst = call i64 @prim_car(i64 %rvp10431)                                       ; call prim_car
  %na10405 = call i64 @prim_cdr(i64 %rvp10431)                                       ; call prim_cdr
  %a7056 = call i64 @prim_null_63(i64 %Noo$lst)                                      ; call prim_null_63
  %cmp14584 = icmp eq i64 %a7056, 15                                                 ; false?
  br i1 %cmp14584, label %else14586, label %then14585                                ; if

then14585:
  %arg8669 = add i64 0, 0                                                            ; quoted ()
  %arg8668 = add i64 0, 0                                                            ; quoted ()
  %rva10408 = add i64 0, 0                                                           ; quoted ()
  %rva10407 = call i64 @prim_cons(i64 %arg8668, i64 %rva10408)                       ; call prim_cons
  %rva10406 = call i64 @prim_cons(i64 %arg8669, i64 %rva10407)                       ; call prim_cons
  %cloptr14587 = inttoptr i64 %cont7480 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14587)                                        ; assert function application
  %i0ptr14588 = getelementptr inbounds i64, i64* %cloptr14587, i64 0                 ; &cloptr14587[0]
  %f14590 = load i64, i64* %i0ptr14588, align 8                                      ; load; *i0ptr14588
  %fptr14589 = inttoptr i64 %f14590 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14589(i64 %cont7480, i64 %rva10406)                 ; tail call
  ret void

else14586:
  %a7057 = call i64 @prim_car(i64 %Noo$lst)                                          ; call prim_car
  %cloptr14591 = call i64* @alloc(i64 40)                                            ; malloc
  %eptr14593 = getelementptr inbounds i64, i64* %cloptr14591, i64 1                  ; &eptr14593[1]
  %eptr14594 = getelementptr inbounds i64, i64* %cloptr14591, i64 2                  ; &eptr14594[2]
  %eptr14595 = getelementptr inbounds i64, i64* %cloptr14591, i64 3                  ; &eptr14595[3]
  %eptr14596 = getelementptr inbounds i64, i64* %cloptr14591, i64 4                  ; &eptr14596[4]
  store i64 %cont7480, i64* %eptr14593                                               ; *eptr14593 = %cont7480
  store i64 %C26$_37map, i64* %eptr14594                                             ; *eptr14594 = %C26$_37map
  store i64 %vgj$f, i64* %eptr14595                                                  ; *eptr14595 = %vgj$f
  store i64 %Noo$lst, i64* %eptr14596                                                ; *eptr14596 = %Noo$lst
  %eptr14592 = getelementptr inbounds i64, i64* %cloptr14591, i64 0                  ; &cloptr14591[0]
  %f14597 = ptrtoint void(i64,i64)* @lam10574 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14597, i64* %eptr14592                                                 ; store fptr
  %arg8673 = ptrtoint i64* %cloptr14591 to i64                                       ; closure cast; i64* -> i64
  %rva10430 = add i64 0, 0                                                           ; quoted ()
  %rva10429 = call i64 @prim_cons(i64 %a7057, i64 %rva10430)                         ; call prim_cons
  %rva10428 = call i64 @prim_cons(i64 %arg8673, i64 %rva10429)                       ; call prim_cons
  %cloptr14598 = inttoptr i64 %vgj$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14598)                                        ; assert function application
  %i0ptr14599 = getelementptr inbounds i64, i64* %cloptr14598, i64 0                 ; &cloptr14598[0]
  %f14601 = load i64, i64* %i0ptr14599, align 8                                      ; load; *i0ptr14599
  %fptr14600 = inttoptr i64 %f14601 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14600(i64 %vgj$f, i64 %rva10428)                    ; tail call
  ret void
}


define void @lam10574(i64 %env10575, i64 %rvp10426) {
  %envptr14602 = inttoptr i64 %env10575 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14603 = getelementptr inbounds i64, i64* %envptr14602, i64 4                ; &envptr14602[4]
  %Noo$lst = load i64, i64* %envptr14603, align 8                                    ; load; *envptr14603
  %envptr14604 = inttoptr i64 %env10575 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14605 = getelementptr inbounds i64, i64* %envptr14604, i64 3                ; &envptr14604[3]
  %vgj$f = load i64, i64* %envptr14605, align 8                                      ; load; *envptr14605
  %envptr14606 = inttoptr i64 %env10575 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14607 = getelementptr inbounds i64, i64* %envptr14606, i64 2                ; &envptr14606[2]
  %C26$_37map = load i64, i64* %envptr14607, align 8                                 ; load; *envptr14607
  %envptr14608 = inttoptr i64 %env10575 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14609 = getelementptr inbounds i64, i64* %envptr14608, i64 1                ; &envptr14608[1]
  %cont7480 = load i64, i64* %envptr14609, align 8                                   ; load; *envptr14609
  %_957481 = call i64 @prim_car(i64 %rvp10426)                                       ; call prim_car
  %rvp10424 = call i64 @prim_cdr(i64 %rvp10426)                                      ; call prim_cdr
  %a7058 = call i64 @prim_car(i64 %rvp10424)                                         ; call prim_car
  %na10410 = call i64 @prim_cdr(i64 %rvp10424)                                       ; call prim_cdr
  %a7059 = call i64 @prim_cdr(i64 %Noo$lst)                                          ; call prim_cdr
  %cloptr14610 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr14612 = getelementptr inbounds i64, i64* %cloptr14610, i64 1                  ; &eptr14612[1]
  %eptr14613 = getelementptr inbounds i64, i64* %cloptr14610, i64 2                  ; &eptr14613[2]
  store i64 %a7058, i64* %eptr14612                                                  ; *eptr14612 = %a7058
  store i64 %cont7480, i64* %eptr14613                                               ; *eptr14613 = %cont7480
  %eptr14611 = getelementptr inbounds i64, i64* %cloptr14610, i64 0                  ; &cloptr14610[0]
  %f14614 = ptrtoint void(i64,i64)* @lam10572 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14614, i64* %eptr14611                                                 ; store fptr
  %arg8678 = ptrtoint i64* %cloptr14610 to i64                                       ; closure cast; i64* -> i64
  %rva10423 = add i64 0, 0                                                           ; quoted ()
  %rva10422 = call i64 @prim_cons(i64 %a7059, i64 %rva10423)                         ; call prim_cons
  %rva10421 = call i64 @prim_cons(i64 %vgj$f, i64 %rva10422)                         ; call prim_cons
  %rva10420 = call i64 @prim_cons(i64 %arg8678, i64 %rva10421)                       ; call prim_cons
  %cloptr14615 = inttoptr i64 %C26$_37map to i64*                                    ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14615)                                        ; assert function application
  %i0ptr14616 = getelementptr inbounds i64, i64* %cloptr14615, i64 0                 ; &cloptr14615[0]
  %f14618 = load i64, i64* %i0ptr14616, align 8                                      ; load; *i0ptr14616
  %fptr14617 = inttoptr i64 %f14618 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14617(i64 %C26$_37map, i64 %rva10420)               ; tail call
  ret void
}


define void @lam10572(i64 %env10573, i64 %rvp10418) {
  %envptr14619 = inttoptr i64 %env10573 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14620 = getelementptr inbounds i64, i64* %envptr14619, i64 2                ; &envptr14619[2]
  %cont7480 = load i64, i64* %envptr14620, align 8                                   ; load; *envptr14620
  %envptr14621 = inttoptr i64 %env10573 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14622 = getelementptr inbounds i64, i64* %envptr14621, i64 1                ; &envptr14621[1]
  %a7058 = load i64, i64* %envptr14622, align 8                                      ; load; *envptr14622
  %_957482 = call i64 @prim_car(i64 %rvp10418)                                       ; call prim_car
  %rvp10416 = call i64 @prim_cdr(i64 %rvp10418)                                      ; call prim_cdr
  %a7060 = call i64 @prim_car(i64 %rvp10416)                                         ; call prim_car
  %na10412 = call i64 @prim_cdr(i64 %rvp10416)                                       ; call prim_cdr
  %retprim7483 = call i64 @prim_cons(i64 %a7058, i64 %a7060)                         ; call prim_cons
  %arg8683 = add i64 0, 0                                                            ; quoted ()
  %rva10415 = add i64 0, 0                                                           ; quoted ()
  %rva10414 = call i64 @prim_cons(i64 %retprim7483, i64 %rva10415)                   ; call prim_cons
  %rva10413 = call i64 @prim_cons(i64 %arg8683, i64 %rva10414)                       ; call prim_cons
  %cloptr14623 = inttoptr i64 %cont7480 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14623)                                        ; assert function application
  %i0ptr14624 = getelementptr inbounds i64, i64* %cloptr14623, i64 0                 ; &cloptr14623[0]
  %f14626 = load i64, i64* %i0ptr14624, align 8                                      ; load; *i0ptr14624
  %fptr14625 = inttoptr i64 %f14626 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14625(i64 %cont7480, i64 %rva10413)                 ; tail call
  ret void
}


define void @lam10561(i64 %env10562, i64 %rvp10486) {
  %cont7484 = call i64 @prim_car(i64 %rvp10486)                                      ; call prim_car
  %rvp10484 = call i64 @prim_cdr(i64 %rvp10486)                                      ; call prim_cdr
  %DAO$_37foldr1 = call i64 @prim_car(i64 %rvp10484)                                 ; call prim_car
  %na10452 = call i64 @prim_cdr(i64 %rvp10484)                                       ; call prim_cdr
  %arg8686 = add i64 0, 0                                                            ; quoted ()
  %cloptr14627 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr14629 = getelementptr inbounds i64, i64* %cloptr14627, i64 1                  ; &eptr14629[1]
  store i64 %DAO$_37foldr1, i64* %eptr14629                                          ; *eptr14629 = %DAO$_37foldr1
  %eptr14628 = getelementptr inbounds i64, i64* %cloptr14627, i64 0                  ; &cloptr14627[0]
  %f14630 = ptrtoint void(i64,i64)* @lam10558 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14630, i64* %eptr14628                                                 ; store fptr
  %arg8685 = ptrtoint i64* %cloptr14627 to i64                                       ; closure cast; i64* -> i64
  %rva10483 = add i64 0, 0                                                           ; quoted ()
  %rva10482 = call i64 @prim_cons(i64 %arg8685, i64 %rva10483)                       ; call prim_cons
  %rva10481 = call i64 @prim_cons(i64 %arg8686, i64 %rva10482)                       ; call prim_cons
  %cloptr14631 = inttoptr i64 %cont7484 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14631)                                        ; assert function application
  %i0ptr14632 = getelementptr inbounds i64, i64* %cloptr14631, i64 0                 ; &cloptr14631[0]
  %f14634 = load i64, i64* %i0ptr14632, align 8                                      ; load; *i0ptr14632
  %fptr14633 = inttoptr i64 %f14634 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14633(i64 %cont7484, i64 %rva10481)                 ; tail call
  ret void
}


define void @lam10558(i64 %env10559, i64 %rvp10479) {
  %envptr14635 = inttoptr i64 %env10559 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14636 = getelementptr inbounds i64, i64* %envptr14635, i64 1                ; &envptr14635[1]
  %DAO$_37foldr1 = load i64, i64* %envptr14636, align 8                              ; load; *envptr14636
  %cont7485 = call i64 @prim_car(i64 %rvp10479)                                      ; call prim_car
  %rvp10477 = call i64 @prim_cdr(i64 %rvp10479)                                      ; call prim_cdr
  %EGN$f = call i64 @prim_car(i64 %rvp10477)                                         ; call prim_car
  %rvp10475 = call i64 @prim_cdr(i64 %rvp10477)                                      ; call prim_cdr
  %cTy$acc = call i64 @prim_car(i64 %rvp10475)                                       ; call prim_car
  %rvp10473 = call i64 @prim_cdr(i64 %rvp10475)                                      ; call prim_cdr
  %qUU$lst = call i64 @prim_car(i64 %rvp10473)                                       ; call prim_car
  %na10454 = call i64 @prim_cdr(i64 %rvp10473)                                       ; call prim_cdr
  %a7052 = call i64 @prim_null_63(i64 %qUU$lst)                                      ; call prim_null_63
  %cmp14637 = icmp eq i64 %a7052, 15                                                 ; false?
  br i1 %cmp14637, label %else14639, label %then14638                                ; if

then14638:
  %arg8690 = add i64 0, 0                                                            ; quoted ()
  %rva10457 = add i64 0, 0                                                           ; quoted ()
  %rva10456 = call i64 @prim_cons(i64 %cTy$acc, i64 %rva10457)                       ; call prim_cons
  %rva10455 = call i64 @prim_cons(i64 %arg8690, i64 %rva10456)                       ; call prim_cons
  %cloptr14640 = inttoptr i64 %cont7485 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14640)                                        ; assert function application
  %i0ptr14641 = getelementptr inbounds i64, i64* %cloptr14640, i64 0                 ; &cloptr14640[0]
  %f14643 = load i64, i64* %i0ptr14641, align 8                                      ; load; *i0ptr14641
  %fptr14642 = inttoptr i64 %f14643 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14642(i64 %cont7485, i64 %rva10455)                 ; tail call
  ret void

else14639:
  %a7053 = call i64 @prim_car(i64 %qUU$lst)                                          ; call prim_car
  %a7054 = call i64 @prim_cdr(i64 %qUU$lst)                                          ; call prim_cdr
  %cloptr14644 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr14646 = getelementptr inbounds i64, i64* %cloptr14644, i64 1                  ; &eptr14646[1]
  %eptr14647 = getelementptr inbounds i64, i64* %cloptr14644, i64 2                  ; &eptr14647[2]
  %eptr14648 = getelementptr inbounds i64, i64* %cloptr14644, i64 3                  ; &eptr14648[3]
  store i64 %a7053, i64* %eptr14646                                                  ; *eptr14646 = %a7053
  store i64 %EGN$f, i64* %eptr14647                                                  ; *eptr14647 = %EGN$f
  store i64 %cont7485, i64* %eptr14648                                               ; *eptr14648 = %cont7485
  %eptr14645 = getelementptr inbounds i64, i64* %cloptr14644, i64 0                  ; &cloptr14644[0]
  %f14649 = ptrtoint void(i64,i64)* @lam10556 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14649, i64* %eptr14645                                                 ; store fptr
  %arg8697 = ptrtoint i64* %cloptr14644 to i64                                       ; closure cast; i64* -> i64
  %rva10472 = add i64 0, 0                                                           ; quoted ()
  %rva10471 = call i64 @prim_cons(i64 %a7054, i64 %rva10472)                         ; call prim_cons
  %rva10470 = call i64 @prim_cons(i64 %cTy$acc, i64 %rva10471)                       ; call prim_cons
  %rva10469 = call i64 @prim_cons(i64 %EGN$f, i64 %rva10470)                         ; call prim_cons
  %rva10468 = call i64 @prim_cons(i64 %arg8697, i64 %rva10469)                       ; call prim_cons
  %cloptr14650 = inttoptr i64 %DAO$_37foldr1 to i64*                                 ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14650)                                        ; assert function application
  %i0ptr14651 = getelementptr inbounds i64, i64* %cloptr14650, i64 0                 ; &cloptr14650[0]
  %f14653 = load i64, i64* %i0ptr14651, align 8                                      ; load; *i0ptr14651
  %fptr14652 = inttoptr i64 %f14653 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14652(i64 %DAO$_37foldr1, i64 %rva10468)            ; tail call
  ret void
}


define void @lam10556(i64 %env10557, i64 %rvp10466) {
  %envptr14654 = inttoptr i64 %env10557 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14655 = getelementptr inbounds i64, i64* %envptr14654, i64 3                ; &envptr14654[3]
  %cont7485 = load i64, i64* %envptr14655, align 8                                   ; load; *envptr14655
  %envptr14656 = inttoptr i64 %env10557 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14657 = getelementptr inbounds i64, i64* %envptr14656, i64 2                ; &envptr14656[2]
  %EGN$f = load i64, i64* %envptr14657, align 8                                      ; load; *envptr14657
  %envptr14658 = inttoptr i64 %env10557 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14659 = getelementptr inbounds i64, i64* %envptr14658, i64 1                ; &envptr14658[1]
  %a7053 = load i64, i64* %envptr14659, align 8                                      ; load; *envptr14659
  %_957486 = call i64 @prim_car(i64 %rvp10466)                                       ; call prim_car
  %rvp10464 = call i64 @prim_cdr(i64 %rvp10466)                                      ; call prim_cdr
  %a7055 = call i64 @prim_car(i64 %rvp10464)                                         ; call prim_car
  %na10459 = call i64 @prim_cdr(i64 %rvp10464)                                       ; call prim_cdr
  %rva10463 = add i64 0, 0                                                           ; quoted ()
  %rva10462 = call i64 @prim_cons(i64 %a7055, i64 %rva10463)                         ; call prim_cons
  %rva10461 = call i64 @prim_cons(i64 %a7053, i64 %rva10462)                         ; call prim_cons
  %rva10460 = call i64 @prim_cons(i64 %cont7485, i64 %rva10461)                      ; call prim_cons
  %cloptr14660 = inttoptr i64 %EGN$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14660)                                        ; assert function application
  %i0ptr14661 = getelementptr inbounds i64, i64* %cloptr14660, i64 0                 ; &cloptr14660[0]
  %f14663 = load i64, i64* %i0ptr14661, align 8                                      ; load; *i0ptr14661
  %fptr14662 = inttoptr i64 %f14663 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14662(i64 %EGN$f, i64 %rva10460)                    ; tail call
  ret void
}


define void @lam10548(i64 %env10549, i64 %rvp10529) {
  %cont7488 = call i64 @prim_car(i64 %rvp10529)                                      ; call prim_car
  %rvp10527 = call i64 @prim_cdr(i64 %rvp10529)                                      ; call prim_cdr
  %vC5$y = call i64 @prim_car(i64 %rvp10527)                                         ; call prim_car
  %na10496 = call i64 @prim_cdr(i64 %rvp10527)                                       ; call prim_cdr
  %arg8704 = add i64 0, 0                                                            ; quoted ()
  %cloptr14664 = call i64* @alloc(i64 16)                                            ; malloc
  %eptr14666 = getelementptr inbounds i64, i64* %cloptr14664, i64 1                  ; &eptr14666[1]
  store i64 %vC5$y, i64* %eptr14666                                                  ; *eptr14666 = %vC5$y
  %eptr14665 = getelementptr inbounds i64, i64* %cloptr14664, i64 0                  ; &cloptr14664[0]
  %f14667 = ptrtoint void(i64,i64)* @lam10545 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14667, i64* %eptr14665                                                 ; store fptr
  %arg8703 = ptrtoint i64* %cloptr14664 to i64                                       ; closure cast; i64* -> i64
  %rva10526 = add i64 0, 0                                                           ; quoted ()
  %rva10525 = call i64 @prim_cons(i64 %arg8703, i64 %rva10526)                       ; call prim_cons
  %rva10524 = call i64 @prim_cons(i64 %arg8704, i64 %rva10525)                       ; call prim_cons
  %cloptr14668 = inttoptr i64 %cont7488 to i64*                                      ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14668)                                        ; assert function application
  %i0ptr14669 = getelementptr inbounds i64, i64* %cloptr14668, i64 0                 ; &cloptr14668[0]
  %f14671 = load i64, i64* %i0ptr14669, align 8                                      ; load; *i0ptr14669
  %fptr14670 = inttoptr i64 %f14671 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14670(i64 %cont7488, i64 %rva10524)                 ; tail call
  ret void
}


define void @lam10545(i64 %env10546, i64 %rvp10522) {
  %envptr14672 = inttoptr i64 %env10546 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14673 = getelementptr inbounds i64, i64* %envptr14672, i64 1                ; &envptr14672[1]
  %vC5$y = load i64, i64* %envptr14673, align 8                                      ; load; *envptr14673
  %cont7489 = call i64 @prim_car(i64 %rvp10522)                                      ; call prim_car
  %rvp10520 = call i64 @prim_cdr(i64 %rvp10522)                                      ; call prim_cdr
  %Olu$f = call i64 @prim_car(i64 %rvp10520)                                         ; call prim_car
  %na10498 = call i64 @prim_cdr(i64 %rvp10520)                                       ; call prim_cdr
  %cloptr14674 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr14676 = getelementptr inbounds i64, i64* %cloptr14674, i64 1                  ; &eptr14676[1]
  %eptr14677 = getelementptr inbounds i64, i64* %cloptr14674, i64 2                  ; &eptr14677[2]
  store i64 %Olu$f, i64* %eptr14676                                                  ; *eptr14676 = %Olu$f
  store i64 %vC5$y, i64* %eptr14677                                                  ; *eptr14677 = %vC5$y
  %eptr14675 = getelementptr inbounds i64, i64* %cloptr14674, i64 0                  ; &cloptr14674[0]
  %f14678 = ptrtoint void(i64,i64)* @lam10543 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14678, i64* %eptr14675                                                 ; store fptr
  %arg8706 = ptrtoint i64* %cloptr14674 to i64                                       ; closure cast; i64* -> i64
  %rva10519 = add i64 0, 0                                                           ; quoted ()
  %rva10518 = call i64 @prim_cons(i64 %arg8706, i64 %rva10519)                       ; call prim_cons
  %rva10517 = call i64 @prim_cons(i64 %cont7489, i64 %rva10518)                      ; call prim_cons
  %cloptr14679 = inttoptr i64 %Olu$f to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14679)                                        ; assert function application
  %i0ptr14680 = getelementptr inbounds i64, i64* %cloptr14679, i64 0                 ; &cloptr14679[0]
  %f14682 = load i64, i64* %i0ptr14680, align 8                                      ; load; *i0ptr14680
  %fptr14681 = inttoptr i64 %f14682 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14681(i64 %Olu$f, i64 %rva10517)                    ; tail call
  ret void
}


define void @lam10543(i64 %env10544, i64 %CGr$args7491) {
  %envptr14683 = inttoptr i64 %env10544 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14684 = getelementptr inbounds i64, i64* %envptr14683, i64 2                ; &envptr14683[2]
  %vC5$y = load i64, i64* %envptr14684, align 8                                      ; load; *envptr14684
  %envptr14685 = inttoptr i64 %env10544 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14686 = getelementptr inbounds i64, i64* %envptr14685, i64 1                ; &envptr14685[1]
  %Olu$f = load i64, i64* %envptr14686, align 8                                      ; load; *envptr14686
  %cont7490 = call i64 @prim_car(i64 %CGr$args7491)                                  ; call prim_car
  %CGr$args = call i64 @prim_cdr(i64 %CGr$args7491)                                  ; call prim_cdr
  %cloptr14687 = call i64* @alloc(i64 32)                                            ; malloc
  %eptr14689 = getelementptr inbounds i64, i64* %cloptr14687, i64 1                  ; &eptr14689[1]
  %eptr14690 = getelementptr inbounds i64, i64* %cloptr14687, i64 2                  ; &eptr14690[2]
  %eptr14691 = getelementptr inbounds i64, i64* %cloptr14687, i64 3                  ; &eptr14691[3]
  store i64 %cont7490, i64* %eptr14689                                               ; *eptr14689 = %cont7490
  store i64 %CGr$args, i64* %eptr14690                                               ; *eptr14690 = %CGr$args
  store i64 %Olu$f, i64* %eptr14691                                                  ; *eptr14691 = %Olu$f
  %eptr14688 = getelementptr inbounds i64, i64* %cloptr14687, i64 0                  ; &cloptr14687[0]
  %f14692 = ptrtoint void(i64,i64)* @lam10541 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14692, i64* %eptr14688                                                 ; store fptr
  %arg8712 = ptrtoint i64* %cloptr14687 to i64                                       ; closure cast; i64* -> i64
  %rva10516 = add i64 0, 0                                                           ; quoted ()
  %rva10515 = call i64 @prim_cons(i64 %vC5$y, i64 %rva10516)                         ; call prim_cons
  %rva10514 = call i64 @prim_cons(i64 %arg8712, i64 %rva10515)                       ; call prim_cons
  %cloptr14693 = inttoptr i64 %vC5$y to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14693)                                        ; assert function application
  %i0ptr14694 = getelementptr inbounds i64, i64* %cloptr14693, i64 0                 ; &cloptr14693[0]
  %f14696 = load i64, i64* %i0ptr14694, align 8                                      ; load; *i0ptr14694
  %fptr14695 = inttoptr i64 %f14696 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14695(i64 %vC5$y, i64 %rva10514)                    ; tail call
  ret void
}


define void @lam10541(i64 %env10542, i64 %rvp10512) {
  %envptr14697 = inttoptr i64 %env10542 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14698 = getelementptr inbounds i64, i64* %envptr14697, i64 3                ; &envptr14697[3]
  %Olu$f = load i64, i64* %envptr14698, align 8                                      ; load; *envptr14698
  %envptr14699 = inttoptr i64 %env10542 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14700 = getelementptr inbounds i64, i64* %envptr14699, i64 2                ; &envptr14699[2]
  %CGr$args = load i64, i64* %envptr14700, align 8                                   ; load; *envptr14700
  %envptr14701 = inttoptr i64 %env10542 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14702 = getelementptr inbounds i64, i64* %envptr14701, i64 1                ; &envptr14701[1]
  %cont7490 = load i64, i64* %envptr14702, align 8                                   ; load; *envptr14702
  %_957492 = call i64 @prim_car(i64 %rvp10512)                                       ; call prim_car
  %rvp10510 = call i64 @prim_cdr(i64 %rvp10512)                                      ; call prim_cdr
  %a7050 = call i64 @prim_car(i64 %rvp10510)                                         ; call prim_car
  %na10500 = call i64 @prim_cdr(i64 %rvp10510)                                       ; call prim_cdr
  %cloptr14703 = call i64* @alloc(i64 24)                                            ; malloc
  %eptr14705 = getelementptr inbounds i64, i64* %cloptr14703, i64 1                  ; &eptr14705[1]
  %eptr14706 = getelementptr inbounds i64, i64* %cloptr14703, i64 2                  ; &eptr14706[2]
  store i64 %cont7490, i64* %eptr14705                                               ; *eptr14705 = %cont7490
  store i64 %CGr$args, i64* %eptr14706                                               ; *eptr14706 = %CGr$args
  %eptr14704 = getelementptr inbounds i64, i64* %cloptr14703, i64 0                  ; &cloptr14703[0]
  %f14707 = ptrtoint void(i64,i64)* @lam10539 to i64                                 ; fptr cast; i64(...)* -> i64
  store i64 %f14707, i64* %eptr14704                                                 ; store fptr
  %arg8715 = ptrtoint i64* %cloptr14703 to i64                                       ; closure cast; i64* -> i64
  %rva10509 = add i64 0, 0                                                           ; quoted ()
  %rva10508 = call i64 @prim_cons(i64 %Olu$f, i64 %rva10509)                         ; call prim_cons
  %rva10507 = call i64 @prim_cons(i64 %arg8715, i64 %rva10508)                       ; call prim_cons
  %cloptr14708 = inttoptr i64 %a7050 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14708)                                        ; assert function application
  %i0ptr14709 = getelementptr inbounds i64, i64* %cloptr14708, i64 0                 ; &cloptr14708[0]
  %f14711 = load i64, i64* %i0ptr14709, align 8                                      ; load; *i0ptr14709
  %fptr14710 = inttoptr i64 %f14711 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14710(i64 %a7050, i64 %rva10507)                    ; tail call
  ret void
}


define void @lam10539(i64 %env10540, i64 %rvp10505) {
  %envptr14712 = inttoptr i64 %env10540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14713 = getelementptr inbounds i64, i64* %envptr14712, i64 2                ; &envptr14712[2]
  %CGr$args = load i64, i64* %envptr14713, align 8                                   ; load; *envptr14713
  %envptr14714 = inttoptr i64 %env10540 to i64*                                      ; closure/env cast; i64 -> i64*
  %envptr14715 = getelementptr inbounds i64, i64* %envptr14714, i64 1                ; &envptr14714[1]
  %cont7490 = load i64, i64* %envptr14715, align 8                                   ; load; *envptr14715
  %_957493 = call i64 @prim_car(i64 %rvp10505)                                       ; call prim_car
  %rvp10503 = call i64 @prim_cdr(i64 %rvp10505)                                      ; call prim_cdr
  %a7051 = call i64 @prim_car(i64 %rvp10503)                                         ; call prim_car
  %na10502 = call i64 @prim_cdr(i64 %rvp10503)                                       ; call prim_cdr
  %cps_45lst7494 = call i64 @prim_cons(i64 %cont7490, i64 %CGr$args)                 ; call prim_cons
  %cloptr14716 = inttoptr i64 %a7051 to i64*                                         ; closure/env cast; i64 -> i64*
  call i64 @expect_closure(i64* %cloptr14716)                                        ; assert function application
  %i0ptr14717 = getelementptr inbounds i64, i64* %cloptr14716, i64 0                 ; &cloptr14716[0]
  %f14719 = load i64, i64* %i0ptr14717, align 8                                      ; load; *i0ptr14717
  %fptr14718 = inttoptr i64 %f14719 to void (i64,i64)*                               ; cast fptr; i64 -> void(...)*
  musttail call fastcc void %fptr14718(i64 %a7051, i64 %cps_45lst7494)               ; tail call
  ret void
}





@sym12253 = private unnamed_addr constant [10 x i8] c"%%promise\00", align 8
@sym13202 = private unnamed_addr constant [12 x i8] c"no-solution\00", align 8
@sym13975 = private unnamed_addr constant [9 x i8] c"solution\00", align 8
